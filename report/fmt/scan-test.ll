Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/scan-test?download=true
inline.NumInlined: 4258
inline.NumDeleted: 1323
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.mn = phi i64 [ 1, %bb.ap ], [ %i.mm, %.noexc279 ]
  store i64 %i.mn, ptr %i.r, align 8, !tbaa !876
  store i32 0, ptr %i.t, align 8, !tbaa !868
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

_ZN3fmt3v126detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.y, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.k, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit, %bb.ao
  %.off0 = phi i32 [ %extract.t816, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %extract.t818, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t816, %bb.ao ], [ %extract.t820, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t818, %bb.k ], [ %extract.t818, %._crit_edge.i161 ], [ %extract.t820, %bb.y ], [ %extract.t820, %.lr.ph.i222 ]
  %.2 = phi ptr [ %8, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %.079, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.ao ], [ %.1, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %.079, %bb.k ], [ %.079, %._crit_edge.i161 ], [ %.1, %bb.y ], [ %.1, %.lr.ph.i222 ] ; 16 uses
  %i.mo = and i32 %.off0, 1                       ; 2 uses
  %i.mp = xor i32 %i.mo, 1                        ; 2 uses
  %.not97 = icmp eq ptr %.2, null                 ; 7 uses
  %spec.store.select = select i1 %.not97, ptr %7, ptr %.2 ; 2 uses
  %i.mq = icmp slt i32 %2, 0                      ; 2 uses
  %i.mr = and i32 %1, 2
  %.not98 = icmp eq i32 %i.mr, 0
  br i1 %.not98, label %bb.br, label %bb.ar

bb.ar:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit168
  %i.ms = load i64, ptr %i.c, align 8, !tbaa !876 ; 8 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = load i32, ptr %i.e, align 8, !tbaa !868 ; 3 uses
  %i.mv = add nsw i32 %i.mu, %i.mt                ; 2 uses
  %.2.sroa.gep = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep
  %i.mw = load i64, ptr %spec.store.select.sroa.sel, align 8, !tbaa !876
  %i.mx = trunc i64 %i.mw to i32
  %.2.sroa.gep501 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel502 = select i1 %.not97, ptr %i.o, ptr %.2.sroa.gep501
  %i.my = load i32, ptr %spec.store.select.sroa.sel502, align 8, !tbaa !868 ; 3 uses
  %i.mz = add nsw i32 %i.my, %i.mx                ; 2 uses
  %i.na = call noundef i32 @llvm.smax.i32(i32 %i.mv, i32 %i.mz) ; 2 uses
  %i.nb = load i64, ptr %i.h, align 8, !tbaa !876 ; 2 uses
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = load i32, ptr %i.j, align 8, !tbaa !868 ; 3 uses
  %i.ne = add nsw i32 %i.nd, %i.nc                ; 4 uses
  %i.nf = add nsw i32 %i.na, 1
  %i.ng = icmp slt i32 %i.nf, %i.ne
  br i1 %i.ng, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nh = icmp sgt i32 %i.na, %i.ne
  br i1 %i.nh, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ni = call noundef i32 @llvm.smin.i32(i32 %i.mu, i32 %i.my)
  %i.nj = call noundef i32 @llvm.smin.i32(i32 %i.ni, i32 %i.nd) ; 2 uses
  %.not.not.not53.i = icmp sgt i32 %i.ne, %i.nj
  br i1 %.not.not.not53.i, label %.lr.ph.i280, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit

.lr.ph.i280:                                      ; preds = %bb.at
  %i.nk = load ptr, ptr %5, align 8
  %i.nl = load ptr, ptr %spec.store.select, align 8
  %i.nm = load ptr, ptr %6, align 8
  %i.nn = sext i32 %i.nd to i64                   ; 3 uses
  %sext.i = shl i64 %i.nb, 32
  %i.no = ashr exact i64 %sext.i, 32
  %i.np = add nsw i64 %i.no, %i.nn
  %i.nq = sext i32 %i.ne to i64
  %i.nr = sext i32 %i.mz to i64
  %i.ns = sext i32 %i.my to i64                   ; 2 uses
  %i.nt = sext i32 %i.mv to i64
  %i.nu = sext i32 %i.mu to i64                   ; 2 uses
  %i.nv = sext i32 %i.nj to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.az, %.lr.ph.i280
  %indvars.iv.i = phi i64 [ %i.np, %.lr.ph.i280 ], [ %indvars.iv.next.i, %bb.az ] ; 7 uses
  %.03254.i = phi i64 [ 0, %.lr.ph.i280 ], [ %i.ot, %bb.az ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 5 uses
  %.not.i.i281 = icmp sgt i64 %indvars.iv.i, %i.nu
  %i.nw = icmp sle i64 %indvars.iv.i, %i.nt
  %or.cond.i = and i1 %.not.i.i281, %i.nw
  br i1 %or.cond.i, label %bb.av, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i

bb.av:                                            ; preds = %bb.au
  %i.nx = sub nsw i64 %indvars.iv.next.i, %i.nu
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !59
  %i.oa = zext i32 %i.nz to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i:    ; preds = %bb.av, %bb.au
  %i.ob = phi i64 [ %i.oa, %bb.av ], [ 0, %bb.au ]
  %.not.i43.i = icmp sgt i64 %indvars.iv.i, %i.ns
  %i.oc = icmp sle i64 %indvars.iv.i, %i.nr
  %or.cond50.i = and i1 %.not.i43.i, %i.oc
  br i1 %or.cond50.i, label %bb.aw, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i

bb.aw:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i
  %i.od = sub nsw i64 %indvars.iv.next.i, %i.ns
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !59
  %i.og = zext i32 %i.of to i64
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i:  ; preds = %bb.aw, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i
  %i.oh = phi i64 [ %i.og, %bb.aw ], [ 0, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit.i ]
  %i.oi = add nuw nsw i64 %i.oh, %i.ob            ; 3 uses
  %.not.i45.i = icmp sgt i64 %indvars.iv.i, %i.nn
  %i.oj = icmp sle i64 %indvars.iv.i, %i.nq
  %or.cond51.i = and i1 %.not.i45.i, %i.oj
  br i1 %or.cond51.i, label %bb.ax, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i

bb.ax:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i
  %i.ok = sub nsw i64 %indvars.iv.next.i, %i.nn
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !59
  %i.on = zext i32 %i.om to i64
  %i.oo = or disjoint i64 %.03254.i, %i.on
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i:  ; preds = %bb.ax, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i
  %i.op = phi i64 [ %i.oo, %bb.ax ], [ %.03254.i, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i ] ; 3 uses
  %i.oq = icmp ugt i64 %i.oi, %i.op
  br i1 %i.oq, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i
  %i.or = sub nuw nsw i64 %i.op, %i.oi            ; 2 uses
  %i.os = icmp ugt i64 %i.or, 1
  br i1 %i.os, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ot = shl nuw nsw i64 %i.or, 32
  %.not.not.not.i = icmp sgt i64 %indvars.iv.next.i, %i.nv
  br i1 %.not.not.not.i, label %bb.au, label %.thread.loopexit.i, !llvm.loop !900

.thread.loopexit.i:                               ; preds = %bb.az
  %i.ou = icmp ne i64 %i.op, %i.oi
  %i.ov = sext i1 %i.ou to i32
  br label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit: ; preds = %bb.ay, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i, %.thread.loopexit.i, %bb.at, %bb.as, %bb.ar
  %.4.i = phi i32 [ 1, %bb.as ], [ -1, %bb.ar ], [ 0, %bb.at ], [ %i.ov, %.thread.loopexit.i ], [ -1, %bb.ay ], [ 1, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i ]
  %i.ow = add nsw i32 %.4.i, %i.mp
  %i.ox = icmp slt i32 %i.ow, 1
  br i1 %i.ox, label %bb.ba, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.ba:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.oy = load i32, ptr %4, align 4, !tbaa !59
  %i.oz = add nsw i32 %i.oy, -1
  store i32 %i.oz, ptr %4, align 4, !tbaa !59
  %.not14.i.i = icmp eq i64 %i.ms, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i282

.lr.ph.i.i282:                                    ; preds = %bb.ba
  %i.pa = load ptr, ptr %5, align 8, !tbaa !866   ; 4 uses
  %xtraiter = and i64 %i.ms, 1
  %i.pb = icmp eq i64 %i.ms, 1
  br i1 %i.pb, label %.epil.preheader, label %.lr.ph.i.i282.new

.lr.ph.i.i282.new:                                ; preds = %.lr.ph.i.i282
  %unroll_iter = and i64 %i.ms, -2
  br label %bb.bb

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.bb
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i282
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.pz, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i282 ], [ %i.py, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod1848 = trunc i64 %i.ms to i1
  call void @llvm.assume(i1 %lcmp.mod1848)
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %.013.i.i.epil.init ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !59
  %i.pe = zext i32 %i.pd to i64
  %i.pf = mul nuw nsw i64 %i.pe, 10
  %i.pg = add nuw nsw i64 %i.pf, %.01112.i.i.epil.init ; 2 uses
  %i.ph = trunc i64 %i.pg to i32
  store i32 %i.ph, ptr %i.pc, align 4, !tbaa !59
  %i.pi = lshr i64 %i.pg, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa1824 = phi i64 [ %i.py, %._crit_edge.i.i.unr-lcssa ], [ %i.pi, %.epil.preheader ] ; 2 uses
  %i.pj = trunc nuw nsw i64 %.lcssa1824 to i32
  %.not.i.i284 = icmp eq i64 %.lcssa1824, 0
  br i1 %.not.i.i284, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.bc

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i.i282.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.pz, %bb.bb ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %i.py, %bb.bb ]
  %niter = phi i64 [ 0, %.lr.ph.i.i282.new ], [ %niter.next.1, %bb.bb ]
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %.013.i.i ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !59
  %i.pm = zext i32 %i.pl to i64
  %i.pn = mul nuw nsw i64 %i.pm, 10
  %i.po = add nuw nsw i64 %i.pn, %.01112.i.i      ; 2 uses
  %i.pp = trunc i64 %i.po to i32
  store i32 %i.pp, ptr %i.pk, align 4, !tbaa !59
  %i.pq = lshr i64 %i.po, 32
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %.013.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 4 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !59
  %i.pu = zext i32 %i.pt to i64
  %i.pv = mul nuw nsw i64 %i.pu, 10
  %i.pw = add nuw nsw i64 %i.pv, %i.pq            ; 2 uses
  %i.px = trunc i64 %i.pw to i32
  store i32 %i.px, ptr %i.ps, align 4, !tbaa !59
  %i.py = lshr i64 %i.pw, 32                      ; 3 uses
  %i.pz = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.bb, !llvm.loop !901

bb.bc:                                            ; preds = %._crit_edge.i.i
  %i.qa = add i64 %i.ms, 1                        ; 3 uses
  %i.qb = load i64, ptr %i.a, align 8, !tbaa !867
  %i.qc = icmp ugt i64 %i.qa, %i.qb
  br i1 %i.qc, label %bb.bd, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285

bb.bd:                                            ; preds = %bb.bc
  %i.qd = load ptr, ptr %i.b, align 8, !tbaa !864
  invoke void %i.qd(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.qa)
          to label %.noexc290 unwind label %bb.bm, !inline_history !902

.noexc290:                                        ; preds = %bb.bd
  %.pre.i.i.i287 = load i64, ptr %i.c, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i288 = add i64 %.pre.i.i.i287, 1
  %.pre.i289 = load ptr, ptr %5, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285: ; preds = %.noexc290, %bb.bc
  %i.qe = phi ptr [ %i.pa, %bb.bc ], [ %.pre.i289, %.noexc290 ]
  %.pre-phi.i.i.i286 = phi i64 [ %i.qa, %bb.bc ], [ %.pre2.i.i.i288, %.noexc290 ]
  %i.qf = phi i64 [ %i.ms, %bb.bc ], [ %.pre.i.i.i287, %.noexc290 ]
  store i64 %.pre-phi.i.i.i286, ptr %i.c, align 8, !tbaa !876
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qf
  store i32 %i.pj, ptr %i.qg, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i285, %._crit_edge.i.i, %bb.ba
  br i1 %i.mq, label %bb.be, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.be:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %i.qh = load i64, ptr %i.m, align 8, !tbaa !876 ; 7 uses
  %.not14.i.i291 = icmp eq i64 %i.qh, 0
  br i1 %.not14.i.i291, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, label %.lr.ph.i.i292

.lr.ph.i.i292:                                    ; preds = %bb.be
  %i.qi = load ptr, ptr %7, align 8, !tbaa !866   ; 4 uses
  %xtraiter1850 = and i64 %i.qh, 1
  %i.qj = icmp eq i64 %i.qh, 1
  br i1 %i.qj, label %.epil.preheader1849, label %.lr.ph.i.i292.new

.lr.ph.i.i292.new:                                ; preds = %.lr.ph.i.i292
  %unroll_iter1854 = and i64 %i.qh, -2
  br label %bb.bf

._crit_edge.i.i296.unr-lcssa:                     ; preds = %bb.bf
  %lcmp.mod1851.not = icmp eq i64 %xtraiter1850, 0
  br i1 %lcmp.mod1851.not, label %._crit_edge.i.i296, label %.epil.preheader1849

.epil.preheader1849:                              ; preds = %._crit_edge.i.i296.unr-lcssa, %.lr.ph.i.i292
  %.013.i.i293.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.rh, %._crit_edge.i.i296.unr-lcssa ]
  %.01112.i.i294.epil.init = phi i64 [ 0, %.lr.ph.i.i292 ], [ %i.rg, %._crit_edge.i.i296.unr-lcssa ]
  %lcmp.mod1853 = trunc i64 %i.qh to i1
  call void @llvm.assume(i1 %lcmp.mod1853)
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.013.i.i293.epil.init ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !59
  %i.qm = zext i32 %i.ql to i64
  %i.qn = mul nuw nsw i64 %i.qm, 10
  %i.qo = add nuw nsw i64 %i.qn, %.01112.i.i294.epil.init ; 2 uses
  %i.qp = trunc i64 %i.qo to i32
  store i32 %i.qp, ptr %i.qk, align 4, !tbaa !59
  %i.qq = lshr i64 %i.qo, 32
  br label %._crit_edge.i.i296

._crit_edge.i.i296:                               ; preds = %._crit_edge.i.i296.unr-lcssa, %.epil.preheader1849
  %.lcssa1823 = phi i64 [ %i.rg, %._crit_edge.i.i296.unr-lcssa ], [ %i.qq, %.epil.preheader1849 ] ; 2 uses
  %i.qr = trunc nuw nsw i64 %.lcssa1823 to i32
  %.not.i.i297 = icmp eq i64 %.lcssa1823, 0
  br i1 %.not.i.i297, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, label %bb.bg

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i.i292.new
  %.013.i.i293 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.rh, %bb.bf ] ; 3 uses
  %.01112.i.i294 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %i.rg, %bb.bf ]
  %niter1855 = phi i64 [ 0, %.lr.ph.i.i292.new ], [ %niter1855.next.1, %bb.bf ]
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.013.i.i293 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !59
  %i.qu = zext i32 %i.qt to i64
  %i.qv = mul nuw nsw i64 %i.qu, 10
  %i.qw = add nuw nsw i64 %i.qv, %.01112.i.i294   ; 2 uses
  %i.qx = trunc i64 %i.qw to i32
  store i32 %i.qx, ptr %i.qs, align 4, !tbaa !59
  %i.qy = lshr i64 %i.qw, 32
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.013.i.i293
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !59
  %i.rc = zext i32 %i.rb to i64
  %i.rd = mul nuw nsw i64 %i.rc, 10
  %i.re = add nuw nsw i64 %i.rd, %i.qy            ; 2 uses
  %i.rf = trunc i64 %i.re to i32
  store i32 %i.rf, ptr %i.ra, align 4, !tbaa !59
  %i.rg = lshr i64 %i.re, 32                      ; 3 uses
  %i.rh = add nuw i64 %.013.i.i293, 2             ; 2 uses
  %niter1855.next.1 = add nuw i64 %niter1855, 2   ; 2 uses
  %niter1855.ncmp.1 = icmp eq i64 %niter1855.next.1, %unroll_iter1854
  br i1 %niter1855.ncmp.1, label %._crit_edge.i.i296.unr-lcssa, label %bb.bf, !llvm.loop !901

bb.bg:                                            ; preds = %._crit_edge.i.i296
  %i.ri = add i64 %i.qh, 1                        ; 3 uses
  %i.rj = load i64, ptr %i.k, align 8, !tbaa !867
  %i.rk = icmp ugt i64 %i.ri, %i.rj
  br i1 %i.rk, label %bb.bh, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298

bb.bh:                                            ; preds = %bb.bg
  %i.rl = load ptr, ptr %i.l, align 8, !tbaa !864
  invoke void %i.rl(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ri)
          to label %.noexc303 unwind label %bb.bm, !inline_history !902

.noexc303:                                        ; preds = %bb.bh
  %.pre.i.i.i300 = load i64, ptr %i.m, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i301 = add i64 %.pre.i.i.i300, 1
  %.pre.i302 = load ptr, ptr %7, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298: ; preds = %.noexc303, %bb.bg
  %i.rm = phi ptr [ %i.qi, %bb.bg ], [ %.pre.i302, %.noexc303 ]
  %.pre-phi.i.i.i299 = phi i64 [ %i.ri, %bb.bg ], [ %.pre2.i.i.i301, %.noexc303 ]
  %i.rn = phi i64 [ %i.qh, %bb.bg ], [ %.pre.i.i.i300, %.noexc303 ]
  store i64 %.pre-phi.i.i.i299, ptr %i.m, align 8, !tbaa !876
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.rn
  store i32 %i.qr, ptr %i.ro, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i298, %._crit_edge.i.i296, %bb.be
  br i1 %.not97, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, label %bb.bi

bb.bi:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304
  %i.rp = load i64, ptr %.2.sroa.gep, align 8, !tbaa !876 ; 7 uses
  %.not14.i.i305 = icmp eq i64 %i.rp, 0
  br i1 %.not14.i.i305, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, label %.lr.ph.i.i306

.lr.ph.i.i306:                                    ; preds = %bb.bi
  %i.rq = load ptr, ptr %.2, align 8, !tbaa !866  ; 4 uses
  %xtraiter1857 = and i64 %i.rp, 1
  %i.rr = icmp eq i64 %i.rp, 1
  br i1 %i.rr, label %.epil.preheader1856, label %.lr.ph.i.i306.new

.lr.ph.i.i306.new:                                ; preds = %.lr.ph.i.i306
  %unroll_iter1861 = and i64 %i.rp, -2
  br label %bb.bj

._crit_edge.i.i310.unr-lcssa:                     ; preds = %bb.bj
  %lcmp.mod1858.not = icmp eq i64 %xtraiter1857, 0
  br i1 %lcmp.mod1858.not, label %._crit_edge.i.i310, label %.epil.preheader1856

.epil.preheader1856:                              ; preds = %._crit_edge.i.i310.unr-lcssa, %.lr.ph.i.i306
  %.013.i.i307.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.sp, %._crit_edge.i.i310.unr-lcssa ]
  %.01112.i.i308.epil.init = phi i64 [ 0, %.lr.ph.i.i306 ], [ %i.so, %._crit_edge.i.i310.unr-lcssa ]
  %lcmp.mod1860 = trunc i64 %i.rp to i1
  call void @llvm.assume(i1 %lcmp.mod1860)
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %.013.i.i307.epil.init ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !59
  %i.ru = zext i32 %i.rt to i64
  %i.rv = mul nuw nsw i64 %i.ru, 10
  %i.rw = add nuw nsw i64 %i.rv, %.01112.i.i308.epil.init ; 2 uses
  %i.rx = trunc i64 %i.rw to i32
  store i32 %i.rx, ptr %i.rs, align 4, !tbaa !59
  %i.ry = lshr i64 %i.rw, 32
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %._crit_edge.i.i310.unr-lcssa, %.epil.preheader1856
  %.lcssa1822 = phi i64 [ %i.so, %._crit_edge.i.i310.unr-lcssa ], [ %i.ry, %.epil.preheader1856 ] ; 2 uses
  %i.rz = trunc nuw nsw i64 %.lcssa1822 to i32
  %.not.i.i311 = icmp eq i64 %.lcssa1822, 0
  br i1 %.not.i.i311, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, label %bb.bk

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i306.new
  %.013.i.i307 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.sp, %bb.bj ] ; 3 uses
  %.01112.i.i308 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %i.so, %bb.bj ]
  %niter1862 = phi i64 [ 0, %.lr.ph.i.i306.new ], [ %niter1862.next.1, %bb.bj ]
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %.013.i.i307 ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !59
  %i.sc = zext i32 %i.sb to i64
  %i.sd = mul nuw nsw i64 %i.sc, 10
  %i.se = add nuw nsw i64 %i.sd, %.01112.i.i308   ; 2 uses
  %i.sf = trunc i64 %i.se to i32
  store i32 %i.sf, ptr %i.sa, align 4, !tbaa !59
  %i.sg = lshr i64 %i.se, 32
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %.013.i.i307
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 4 ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !59
  %i.sk = zext i32 %i.sj to i64
  %i.sl = mul nuw nsw i64 %i.sk, 10
  %i.sm = add nuw nsw i64 %i.sl, %i.sg            ; 2 uses
  %i.sn = trunc i64 %i.sm to i32
  store i32 %i.sn, ptr %i.si, align 4, !tbaa !59
  %i.so = lshr i64 %i.sm, 32                      ; 3 uses
  %i.sp = add nuw i64 %.013.i.i307, 2             ; 2 uses
  %niter1862.next.1 = add nuw i64 %niter1862, 2   ; 2 uses
  %niter1862.ncmp.1 = icmp eq i64 %niter1862.next.1, %unroll_iter1861
  br i1 %niter1862.ncmp.1, label %._crit_edge.i.i310.unr-lcssa, label %bb.bj, !llvm.loop !901

bb.bk:                                            ; preds = %._crit_edge.i.i310
  %i.sq = add i64 %i.rp, 1                        ; 3 uses
  %.2.sroa.gep507 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.sr = load i64, ptr %.2.sroa.gep507, align 8, !tbaa !867
  %i.ss = icmp ugt i64 %i.sq, %i.sr
  br i1 %i.ss, label %bb.bl, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312

bb.bl:                                            ; preds = %bb.bk
  %.2.sroa.gep510 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.st = load ptr, ptr %.2.sroa.gep510, align 8, !tbaa !864
  invoke void %i.st(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.sq)
          to label %.noexc317 unwind label %bb.bm, !inline_history !902

.noexc317:                                        ; preds = %bb.bl
  %.pre.i.i.i314 = load i64, ptr %.2.sroa.gep, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i315 = add i64 %.pre.i.i.i314, 1
  %.pre.i316 = load ptr, ptr %.2, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312: ; preds = %.noexc317, %bb.bk
  %i.su = phi ptr [ %i.rq, %bb.bk ], [ %.pre.i316, %.noexc317 ]
  %.pre-phi.i.i.i313 = phi i64 [ %i.sq, %bb.bk ], [ %.pre2.i.i.i315, %.noexc317 ]
  %i.sv = phi i64 [ %i.rp, %bb.bk ], [ %.pre.i.i.i314, %.noexc317 ]
  store i64 %.pre-phi.i.i.i313, ptr %.2.sroa.gep, align 8, !tbaa !876
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %i.sv
  store i32 %i.rz, ptr %i.sw, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318

bb.bm:                                            ; preds = %bb.dt, %bb.bp, %bb.bl, %bb.bh, %bb.bd
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i312, %._crit_edge.i.i310, %bb.bi, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit304, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit
  %i.sy = and i32 %1, 4
  %.not99 = icmp eq i32 %i.sy, 0
  br i1 %.not99, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318
  %i.sz = load i32, ptr %4, align 4, !tbaa !59    ; 3 uses
  %i.ta = icmp sgt i32 %i.sz, -1
  %i.tb = sub nsw i32 2147483646, %i.sz
  %i.tc = icmp sgt i32 %2, %i.tb
  %or.cond.i320 = select i1 %i.ta, i1 %i.tc, i1 false
  br i1 %or.cond.i320, label %bb.bo, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.bo:                                            ; preds = %bb.bn
  %i.td = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.td, ptr noundef nonnull @.str.24)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_errorE, i64 16), ptr %i.td, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.td, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %.noexc321 unwind label %bb.bm

.noexc321:                                        ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.td) #34
  br label %.body

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.bn
  %i.tf = add i32 %2, 1
  %i.tg = add i32 %i.tf, %i.sz
  br label %bb.br

bb.br:                                            ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318, %_ZN3fmt3v126detail6bigintlSEi.exit168
  %.0542 = phi i32 [ %2, %_ZN3fmt3v126detail6bigintlSEi.exit168 ], [ %2, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit318 ], [ %i.tg, %_ZN3fmt3v126detail16adjust_precisionERii.exit ] ; 5 uses
  br i1 %i.mq, label %bb.bs, label %bb.dd

bb.bs:                                            ; preds = %bb.br
  %i.th = load ptr, ptr %3, align 8, !tbaa !604   ; 3 uses
  %.2.sroa.gep513 = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %spec.store.select.sroa.sel514 = select i1 %.not97, ptr %i.m, ptr %.2.sroa.gep513
  %.2.sroa.gep516 = getelementptr inbounds nuw i8, ptr %.2, i64 168
  %spec.store.select.sroa.sel517 = select i1 %.not97, ptr %i.o, ptr %.2.sroa.gep516
  %i.ti = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.tk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.2.sroa.gep522 = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %.2.sroa.gep525 = getelementptr inbounds nuw i8, ptr %.2, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.bs
  %indvars.iv673 = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next674, %.backedge.backedge ] ; 7 uses
  %i.tl = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.bt unwind label %bb.ch     ; 3 uses

bb.bt:                                            ; preds = %.backedge
  %i.tm = load i64, ptr %i.c, align 8, !tbaa !876 ; 2 uses
  %i.tn = trunc i64 %i.tm to i32                  ; 2 uses
  %i.to = load i32, ptr %i.e, align 8, !tbaa !868 ; 3 uses
  %i.tp = add nsw i32 %i.to, %i.tn                ; 4 uses
  %i.tq = load i64, ptr %i.m, align 8, !tbaa !876 ; 2 uses
  %i.tr = trunc i64 %i.tq to i32                  ; 2 uses
  %i.ts = load i32, ptr %i.o, align 8, !tbaa !868
  %i.tt = add nsw i32 %i.ts, %i.tr                ; 2 uses
  %.not.i322 = icmp eq i32 %i.tp, %i.tt
  br i1 %.not.i322, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.tu = icmp sgt i32 %i.tp, %i.tt
  %i.tv = select i1 %i.tu, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.tw = sub nsw i32 %i.tn, %i.tr
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.tw, i32 0)
  %i.tx = load ptr, ptr %5, align 8
  %i.ty = load ptr, ptr %7, align 8
  %sext.i323 = shl i64 %i.tm, 32
  %i.tz = ashr exact i64 %sext.i323, 32           ; 3 uses
  %i.ua = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.tq, 32
  %i.ub = ashr exact i64 %sext55.i, 32            ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.tz, i64 %i.ua) ; 2 uses
  %.not35.not.i1638 = icmp sgt i64 %i.tz, %i.ua
  br i1 %.not35.not.i1638, label %.lr.ph1642, label %._crit_edge1643

bb.bw:                                            ; preds = %.lr.ph1642
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i325, %i.ua
  br i1 %.not35.not.i, label %.lr.ph1642, label %._crit_edge1643, !llvm.loop !903

.lr.ph1642:                                       ; preds = %bb.bv, %bb.bw
  %indvars.iv.i3241640 = phi i64 [ %indvars.iv.next.i325, %bb.bw ], [ %i.tz, %bb.bv ]
  %indvars.iv45.i1639 = phi i64 [ %indvars.iv.next46.i, %bb.bw ], [ %i.ub, %bb.bv ]
  %indvars.iv.next.i325 = add nsw i64 %indvars.iv.i3241640, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i1639, -1 ; 3 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.next.i325
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !59 ; 2 uses
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %indvars.iv.next46.i
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !59 ; 2 uses
  %.not37.i = icmp eq i32 %i.ud, %i.uf
  br i1 %.not37.i, label %bb.bw, label %.loopexit.i, !llvm.loop !903

._crit_edge1643:                                  ; preds = %bb.bw, %bb.bv
  %indvars.iv45.i.lcssa = phi i64 [ %i.ub, %bb.bv ], [ %indvars.iv.next46.i, %bb.bw ] ; 2 uses
  %.not36.i = icmp eq i64 %smin, %indvars.iv45.i.lcssa
  br i1 %.not36.i, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge1643
  %i.ug = icmp sgt i64 %smin, %indvars.iv45.i.lcssa
  %i.uh = select i1 %i.ug, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

.loopexit.i:                                      ; preds = %.lr.ph1642
  %i.ui = icmp ugt i32 %i.ud, %i.uf
  %i.uj = select i1 %i.ui, i32 1, i32 -1
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %bb.bu, %._crit_edge1643, %bb.bx, %.loopexit.i
  %.3.i = phi i32 [ %i.tv, %bb.bu ], [ 0, %._crit_edge1643 ], [ %i.uh, %bb.bx ], [ %i.uj, %.loopexit.i ]
  %i.uk = icmp sge i32 %.3.i, %i.mp               ; 3 uses
  %i.ul = load i64, ptr %spec.store.select.sroa.sel514, align 8, !tbaa !876
  %i.um = trunc i64 %i.ul to i32
  %i.un = load i32, ptr %spec.store.select.sroa.sel517, align 8, !tbaa !868 ; 3 uses
  %i.uo = add nsw i32 %i.un, %i.um                ; 2 uses
  %i.up = call noundef i32 @llvm.smax.i32(i32 %i.tp, i32 %i.uo) ; 2 uses
  %i.uq = load i64, ptr %i.h, align 8, !tbaa !876 ; 2 uses
  %i.ur = trunc i64 %i.uq to i32
  %i.us = load i32, ptr %i.j, align 8, !tbaa !868 ; 3 uses
  %i.ut = add nsw i32 %i.us, %i.ur                ; 4 uses
  %i.uu = add nsw i32 %i.up, 1
  %i.uv = icmp slt i32 %i.uu, %i.ut
  br i1 %i.uv, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344, label %bb.by

bb.by:                                            ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit
  %i.uw = icmp sgt i32 %i.up, %i.ut
  br i1 %i.uw, label %.thread835, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ux = call noundef i32 @llvm.smin.i32(i32 %i.to, i32 %i.un)
  %i.uy = call noundef i32 @llvm.smin.i32(i32 %i.ux, i32 %i.us) ; 2 uses
  %.not.not.not53.i326 = icmp sgt i32 %i.ut, %i.uy
  br i1 %.not.not.not53.i326, label %.lr.ph.i328, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344

.lr.ph.i328:                                      ; preds = %bb.bz
  %i.uz = load ptr, ptr %5, align 8
  %i.va = load ptr, ptr %spec.store.select, align 8
  %i.vb = load ptr, ptr %6, align 8
  %i.vc = sext i32 %i.us to i64                   ; 3 uses
  %sext.i329 = shl i64 %i.uq, 32
  %i.vd = ashr exact i64 %sext.i329, 32
  %i.ve = add nsw i64 %i.vd, %i.vc
  %i.vf = sext i32 %i.ut to i64
  %i.vg = sext i32 %i.uo to i64
  %i.vh = sext i32 %i.un to i64                   ; 2 uses
  %i.vi = sext i32 %i.tp to i64
  %i.vj = sext i32 %i.to to i64                   ; 2 uses
  %i.vk = sext i32 %i.uy to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cf, %.lr.ph.i328
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
          cleanup
  br label %.body

.loopexit.split-lp905:                            ; preds = %bb.cr
  %lpad.loopexit.split-lp907 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %bb.cg
  br i1 %i.wl, label %.thread547, label %.thread844

.thread844:                                       ; preds = %.thread835, %bb.ci
  %indvars.iv.next674832842847 = phi i64 [ %indvars.iv.next674, %bb.ci ], [ %indvars.iv.next674829, %.thread835 ] ; 6 uses
  %i.wt = phi i8 [ %i.wm, %bb.ci ], [ %i.wp, %.thread835 ] ; 3 uses
  %i.wu = load i64, ptr %i.c, align 8, !tbaa !876
  %i.wv = trunc i64 %i.wu to i32
  %i.ww = load i32, ptr %i.e, align 8, !tbaa !868 ; 3 uses
  %i.wx = add nsw i32 %i.ww, %i.wv                ; 3 uses
  %i.wy = load i64, ptr %i.h, align 8, !tbaa !876 ; 2 uses
  %i.wz = trunc i64 %i.wy to i32
  %i.xa = load i32, ptr %i.j, align 8, !tbaa !868 ; 3 uses
  %i.xb = add nsw i32 %i.xa, %i.wz                ; 4 uses
  %i.xc = add nsw i32 %i.wx, 1
  %i.xd = icmp slt i32 %i.xc, %i.xb
  br i1 %i.xd, label %.thread547, label %bb.cj

bb.cj:                                            ; preds = %.thread844
  %i.xe = icmp sgt i32 %i.wx, %i.xb
  br i1 %i.xe, label %.thread547.sink.split, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.xf = call noundef i32 @llvm.smin.i32(i32 %i.ww, i32 %i.xa) ; 2 uses
  %.not.not.not53.i345 = icmp sgt i32 %i.xb, %i.xf
  br i1 %.not.not.not53.i345, label %.lr.ph.i347, label %bb.cq

.lr.ph.i347:                                      ; preds = %bb.ck
  %i.xg = load ptr, ptr %5, align 8
  %i.xh = load ptr, ptr %6, align 8
  %i.xi = sext i32 %i.xa to i64                   ; 3 uses
  %sext.i348 = shl i64 %i.wy, 32
  %i.xj = ashr exact i64 %sext.i348, 32
  %i.xk = add nsw i64 %i.xj, %i.xi
  %i.xl = sext i32 %i.xb to i64
  %i.xm = sext i32 %i.wx to i64
  %i.xn = sext i32 %i.ww to i64                   ; 2 uses
  %i.xo = sext i32 %i.xf to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cp, %.lr.ph.i347
  %indvars.iv.i349 = phi i64 [ %i.xk, %.lr.ph.i347 ], [ %indvars.iv.next.i351, %bb.cp ] ; 5 uses
  %.03254.i350 = phi i64 [ 0, %.lr.ph.i347 ], [ %i.yg, %bb.cp ] ; 2 uses
  %indvars.iv.next.i351 = add nsw i64 %indvars.iv.i349, -1 ; 4 uses
  %.not.i.i352 = icmp sgt i64 %indvars.iv.i349, %i.xn
  %i.xp = icmp sle i64 %indvars.iv.i349, %i.xm
  %or.cond.i353 = and i1 %.not.i.i352, %i.xp
  br i1 %or.cond.i353, label %bb.cm, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357

bb.cm:                                            ; preds = %bb.cl
  %i.xq = sub nsw i64 %indvars.iv.next.i351, %i.xn
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.xq
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !59
  %i.xt = zext i32 %i.xs to i64
  %i.xu = shl nuw nsw i64 %i.xt, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357: ; preds = %bb.cl, %bb.cm
  %i.xv = phi i64 [ %i.xu, %bb.cm ], [ 0, %bb.cl ] ; 3 uses
  %.not.i45.i358 = icmp sgt i64 %indvars.iv.i349, %i.xi
  %i.xw = icmp sle i64 %indvars.iv.i349, %i.xl
  %or.cond51.i359 = and i1 %.not.i45.i358, %i.xw
  br i1 %or.cond51.i359, label %bb.cn, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360

bb.cn:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357
  %i.xx = sub nsw i64 %indvars.iv.next.i351, %i.xi
  %i.xy = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !59
  %i.ya = zext i32 %i.xz to i64
  %i.yb = or disjoint i64 %.03254.i350, %i.ya
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360: ; preds = %bb.cn, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357
  %i.yc = phi i64 [ %i.yb, %bb.cn ], [ %.03254.i350, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i357 ] ; 3 uses
  %i.yd = icmp ugt i64 %i.xv, %i.yc
  br i1 %i.yd, label %.thread547.sink.split, label %bb.co

bb.co:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360
  %i.ye = sub nuw nsw i64 %i.yc, %i.xv            ; 2 uses
  %i.yf = icmp ugt i64 %i.ye, 1
  br i1 %i.yf, label %.thread547, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yg = shl nuw nsw i64 %i.ye, 32
  %.not.not.not.i361 = icmp sgt i64 %indvars.iv.next.i351, %i.xo
  br i1 %.not.not.not.i361, label %bb.cl, label %.thread.loopexit.i362, !llvm.loop !900

.thread.loopexit.i362:                            ; preds = %bb.cp
  %i.yh = icmp ne i64 %i.yc, %i.xv
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ck, %.thread.loopexit.i362
  %.4.i346.ph = phi i1 [ false, %bb.ck ], [ %i.yh, %.thread.loopexit.i362 ]
  %i.yi = and i32 %i.tl, 1
  %.not104 = icmp eq i32 %i.yi, 0
  %or.cond = or i1 %.not104, %.4.i346.ph
  br i1 %or.cond, label %.thread547, label %.thread547.sink.split

.thread547.sink.split:                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360, %bb.cq, %bb.cj, %bb.cg, %.thread835
  %.sink892 = phi i8 [ %i.wm, %bb.cg ], [ %i.wp, %.thread835 ], [ %i.wt, %bb.cq ], [ %i.wt, %bb.cj ], [ %i.wt, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360 ]
  %indvars.iv.next674832841.ph = phi i64 [ %indvars.iv.next674, %bb.cg ], [ %indvars.iv.next674829, %.thread835 ], [ %indvars.iv.next674832842847, %bb.cq ], [ %indvars.iv.next674832842847, %bb.cj ], [ %indvars.iv.next674832842847, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i360 ]
  %i.yj = getelementptr i8, ptr %i.th, i64 %indvars.iv673
  %i.yk = add i8 %.sink892, 49
  store i8 %i.yk, ptr %i.yj, align 1, !tbaa !10
  br label %.thread547

.thread547:                                       ; preds = %bb.co, %.thread547.sink.split, %.thread844, %bb.cq, %bb.ci
  %indvars.iv.next674832841 = phi i64 [ %indvars.iv.next674, %bb.ci ], [ %indvars.iv.next674832842847, %.thread844 ], [ %indvars.iv.next674832842847, %bb.cq ], [ %indvars.iv.next674832841.ph, %.thread547.sink.split ], [ %indvars.iv.next674832842847, %bb.co ] ; 2 uses
  %i.yl = load i64, ptr %i.ti, align 8, !tbaa !605 ; 2 uses
  %.not822 = icmp ugt i64 %i.yl, %indvars.iv673
  br i1 %.not822, label %.split, label %bb.cr

bb.cr:                                            ; preds = %.thread547
  %i.ym = load ptr, ptr %i.tj, align 8, !tbaa !602
  invoke void %i.ym(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %indvars.iv.next674832841)
          to label %.noexc365 unwind label %.loopexit.split-lp905, !inline_history !904

.noexc365:                                        ; preds = %bb.cr
  %.pre.i364 = load i64, ptr %i.ti, align 8, !tbaa !605
  br label %.split

.split:                                           ; preds = %.noexc365, %.thread547
  %i.yn = phi i64 [ %i.yl, %.thread547 ], [ %.pre.i364, %.noexc365 ]
  %i.yo = call noundef i64 @llvm.umin.i64(i64 %indvars.iv.next674832841, i64 %i.yn)
  store i64 %i.yo, ptr %i.tk, align 8, !tbaa !609
  %i.yp = load i32, ptr %4, align 4, !tbaa !59
  %i.yq = trunc nuw nsw i64 %indvars.iv673 to i32
  %i.yr = sub nsw i32 %i.yp, %i.yq
  store i32 %i.yr, ptr %4, align 4, !tbaa !59
  br label %.loopexit

bb.cs:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit344
  %i.ys = load i64, ptr %i.c, align 8, !tbaa !876 ; 7 uses
  %.not14.i.i366 = icmp eq i64 %i.ys, 0
  br i1 %.not14.i.i366, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379, label %.lr.ph.i.i367

.lr.ph.i.i367:                                    ; preds = %bb.cs
  %i.yt = load ptr, ptr %5, align 8, !tbaa !866   ; 4 uses
  %xtraiter1878 = and i64 %i.ys, 1
  %i.yu = icmp eq i64 %i.ys, 1
  br i1 %i.yu, label %.epil.preheader1877, label %.lr.ph.i.i367.new

.lr.ph.i.i367.new:                                ; preds = %.lr.ph.i.i367
  %unroll_iter1882 = and i64 %i.ys, -2
  br label %bb.ct

._crit_edge.i.i371.unr-lcssa:                     ; preds = %bb.ct
  %lcmp.mod1879.not = icmp eq i64 %xtraiter1878, 0
  br i1 %lcmp.mod1879.not, label %._crit_edge.i.i371, label %.epil.preheader1877

.epil.preheader1877:                              ; preds = %._crit_edge.i.i371.unr-lcssa, %.lr.ph.i.i367
  %.013.i.i368.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.zs, %._crit_edge.i.i371.unr-lcssa ]
  %.01112.i.i369.epil.init = phi i64 [ 0, %.lr.ph.i.i367 ], [ %i.zr, %._crit_edge.i.i371.unr-lcssa ]
  %lcmp.mod1881 = trunc i64 %i.ys to i1
  call void @llvm.assume(i1 %lcmp.mod1881)
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %.013.i.i368.epil.init ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !59
  %i.yx = zext i32 %i.yw to i64
  %i.yy = mul nuw nsw i64 %i.yx, 10
  %i.yz = add nuw nsw i64 %i.yy, %.01112.i.i369.epil.init ; 2 uses
  %i.za = trunc i64 %i.yz to i32
  store i32 %i.za, ptr %i.yv, align 4, !tbaa !59
  %i.zb = lshr i64 %i.yz, 32
  br label %._crit_edge.i.i371

._crit_edge.i.i371:                               ; preds = %._crit_edge.i.i371.unr-lcssa, %.epil.preheader1877
  %.lcssa1790 = phi i64 [ %i.zr, %._crit_edge.i.i371.unr-lcssa ], [ %i.zb, %.epil.preheader1877 ] ; 2 uses
  %i.zc = trunc nuw nsw i64 %.lcssa1790 to i32
  %.not.i.i372 = icmp eq i64 %.lcssa1790, 0
  br i1 %.not.i.i372, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379, label %bb.cu

bb.ct:                                            ; preds = %bb.ct, %.lr.ph.i.i367.new
  %.013.i.i368 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.zs, %bb.ct ] ; 3 uses
  %.01112.i.i369 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %i.zr, %bb.ct ]
  %niter1883 = phi i64 [ 0, %.lr.ph.i.i367.new ], [ %niter1883.next.1, %bb.ct ]
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %.013.i.i368 ; 2 uses
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !59
  %i.zf = zext i32 %i.ze to i64
  %i.zg = mul nuw nsw i64 %i.zf, 10
  %i.zh = add nuw nsw i64 %i.zg, %.01112.i.i369   ; 2 uses
  %i.zi = trunc i64 %i.zh to i32
  store i32 %i.zi, ptr %i.zd, align 4, !tbaa !59
  %i.zj = lshr i64 %i.zh, 32
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %.013.i.i368
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 4 ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !59
  %i.zn = zext i32 %i.zm to i64
  %i.zo = mul nuw nsw i64 %i.zn, 10
  %i.zp = add nuw nsw i64 %i.zo, %i.zj            ; 2 uses
  %i.zq = trunc i64 %i.zp to i32
  store i32 %i.zq, ptr %i.zl, align 4, !tbaa !59
  %i.zr = lshr i64 %i.zp, 32                      ; 3 uses
  %i.zs = add nuw i64 %.013.i.i368, 2             ; 2 uses
  %niter1883.next.1 = add nuw i64 %niter1883, 2   ; 2 uses
  %niter1883.ncmp.1 = icmp eq i64 %niter1883.next.1, %unroll_iter1882
  br i1 %niter1883.ncmp.1, label %._crit_edge.i.i371.unr-lcssa, label %bb.ct, !llvm.loop !901

bb.cu:                                            ; preds = %._crit_edge.i.i371
  %i.zt = add i64 %i.ys, 1                        ; 3 uses
  %i.zu = load i64, ptr %i.a, align 8, !tbaa !867
  %i.zv = icmp ugt i64 %i.zt, %i.zu
  br i1 %i.zv, label %bb.cv, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373

bb.cv:                                            ; preds = %bb.cu
  %i.zw = load ptr, ptr %i.b, align 8, !tbaa !864
  invoke void %i.zw(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.zt)
          to label %.noexc378 unwind label %.loopexit904, !inline_history !902

.noexc378:                                        ; preds = %bb.cv
  %.pre.i.i.i375 = load i64, ptr %i.c, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i376 = add i64 %.pre.i.i.i375, 1
  %.pre.i377 = load ptr, ptr %5, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373: ; preds = %.noexc378, %bb.cu
  %i.zx = phi ptr [ %i.yt, %bb.cu ], [ %.pre.i377, %.noexc378 ]
  %.pre-phi.i.i.i374 = phi i64 [ %i.zt, %bb.cu ], [ %.pre2.i.i.i376, %.noexc378 ]
  %i.zy = phi i64 [ %i.ys, %bb.cu ], [ %.pre.i.i.i375, %.noexc378 ]
  store i64 %.pre-phi.i.i.i374, ptr %i.c, align 8, !tbaa !876
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %i.zy
  store i32 %i.zc, ptr %i.zz, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i373, %._crit_edge.i.i371, %bb.cs
  %i.aaa = load i64, ptr %i.m, align 8, !tbaa !876 ; 7 uses
  %.not14.i.i380 = icmp eq i64 %i.aaa, 0
  br i1 %.not14.i.i380, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit393, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379
  %i.aab = load ptr, ptr %7, align 8, !tbaa !866  ; 4 uses
  %xtraiter1885 = and i64 %i.aaa, 1
  %i.aac = icmp eq i64 %i.aaa, 1
  br i1 %i.aac, label %.epil.preheader1884, label %.lr.ph.i.i381.new

.lr.ph.i.i381.new:                                ; preds = %.lr.ph.i.i381
  %unroll_iter1889 = and i64 %i.aaa, -2
  br label %bb.cw

._crit_edge.i.i385.unr-lcssa:                     ; preds = %bb.cw
  %lcmp.mod1886.not = icmp eq i64 %xtraiter1885, 0
  br i1 %lcmp.mod1886.not, label %._crit_edge.i.i385, label %.epil.preheader1884

.epil.preheader1884:                              ; preds = %._crit_edge.i.i385.unr-lcssa, %.lr.ph.i.i381
  %.013.i.i382.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.aba, %._crit_edge.i.i385.unr-lcssa ]
  %.01112.i.i383.epil.init = phi i64 [ 0, %.lr.ph.i.i381 ], [ %i.aaz, %._crit_edge.i.i385.unr-lcssa ]
  %lcmp.mod1888 = trunc i64 %i.aaa to i1
  call void @llvm.assume(i1 %lcmp.mod1888)
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %.013.i.i382.epil.init ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !59
  %i.aaf = zext i32 %i.aae to i64
  %i.aag = mul nuw nsw i64 %i.aaf, 10
  %i.aah = add nuw nsw i64 %i.aag, %.01112.i.i383.epil.init ; 2 uses
  %i.aai = trunc i64 %i.aah to i32
  store i32 %i.aai, ptr %i.aad, align 4, !tbaa !59
  %i.aaj = lshr i64 %i.aah, 32
  br label %._crit_edge.i.i385

._crit_edge.i.i385:                               ; preds = %._crit_edge.i.i385.unr-lcssa, %.epil.preheader1884
  %.lcssa1791 = phi i64 [ %i.aaz, %._crit_edge.i.i385.unr-lcssa ], [ %i.aaj, %.epil.preheader1884 ] ; 2 uses
  %i.aak = trunc nuw nsw i64 %.lcssa1791 to i32
  %.not.i.i386 = icmp eq i64 %.lcssa1791, 0
  br i1 %.not.i.i386, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit393, label %bb.cx

bb.cw:                                            ; preds = %bb.cw, %.lr.ph.i.i381.new
  %.013.i.i382 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %i.aba, %bb.cw ] ; 3 uses
  %.01112.i.i383 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %i.aaz, %bb.cw ]
  %niter1890 = phi i64 [ 0, %.lr.ph.i.i381.new ], [ %niter1890.next.1, %bb.cw ]
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %.013.i.i382 ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !59
  %i.aan = zext i32 %i.aam to i64
  %i.aao = mul nuw nsw i64 %i.aan, 10
  %i.aap = add nuw nsw i64 %i.aao, %.01112.i.i383 ; 2 uses
  %i.aaq = trunc i64 %i.aap to i32
  store i32 %i.aaq, ptr %i.aal, align 4, !tbaa !59
  %i.aar = lshr i64 %i.aap, 32
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %.013.i.i382
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 4 ; 2 uses
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !59
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = mul nuw nsw i64 %i.aav, 10
  %i.aax = add nuw nsw i64 %i.aaw, %i.aar         ; 2 uses
  %i.aay = trunc i64 %i.aax to i32
  store i32 %i.aay, ptr %i.aat, align 4, !tbaa !59
  %i.aaz = lshr i64 %i.aax, 32                    ; 3 uses
  %i.aba = add nuw i64 %.013.i.i382, 2            ; 2 uses
  %niter1890.next.1 = add nuw i64 %niter1890, 2   ; 2 uses
  %niter1890.ncmp.1 = icmp eq i64 %niter1890.next.1, %unroll_iter1889
  br i1 %niter1890.ncmp.1, label %._crit_edge.i.i385.unr-lcssa, label %bb.cw, !llvm.loop !901

bb.cx:                                            ; preds = %._crit_edge.i.i385
  %i.abb = add i64 %i.aaa, 1                      ; 3 uses
  %i.abc = load i64, ptr %i.k, align 8, !tbaa !867
  %i.abd = icmp ugt i64 %i.abb, %i.abc
  br i1 %i.abd, label %bb.cy, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i387

bb.cy:                                            ; preds = %bb.cx
  %i.abe = load ptr, ptr %i.l, align 8, !tbaa !864
  invoke void %i.abe(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.abb)
          to label %.noexc392 unwind label %.loopexit904, !inline_history !902

.noexc392:                                        ; preds = %bb.cy
  %.pre.i.i.i389 = load i64, ptr %i.m, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i390 = add i64 %.pre.i.i.i389, 1
  %.pre.i391 = load ptr, ptr %7, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i387

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i387: ; preds = %.noexc392, %bb.cx
  %i.abf = phi ptr [ %i.aab, %bb.cx ], [ %.pre.i391, %.noexc392 ]
  %.pre-phi.i.i.i388 = phi i64 [ %i.abb, %bb.cx ], [ %.pre2.i.i.i390, %.noexc392 ]
  %i.abg = phi i64 [ %i.aaa, %bb.cx ], [ %.pre.i.i.i389, %.noexc392 ]
  store i64 %.pre-phi.i.i.i388, ptr %i.m, align 8, !tbaa !876
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.abf, i64 %i.abg
  store i32 %i.aak, ptr %i.abh, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit393

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit393:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i387, %._crit_edge.i.i385, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit379
  br i1 %.not97, label %.backedge.backedge, label %bb.cz

.backedge.backedge:                               ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit393, %bb.cz, %._crit_edge.i.i399, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i401
  br label %.backedge, !llvm.loop !905

bb.cz:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit393
  %i.abi = load i64, ptr %.2.sroa.gep513, align 8, !tbaa !876 ; 7 uses
  %.not14.i.i394 = icmp eq i64 %i.abi, 0
  br i1 %.not14.i.i394, label %.backedge.backedge, label %.lr.ph.i.i395

.lr.ph.i.i395:                                    ; preds = %bb.cz
  %i.abj = load ptr, ptr %.2, align 8, !tbaa !866 ; 4 uses
  %xtraiter1892 = and i64 %i.abi, 1
  %i.abk = icmp eq i64 %i.abi, 1
  br i1 %i.abk, label %.epil.preheader1891, label %.lr.ph.i.i395.new

.lr.ph.i.i395.new:                                ; preds = %.lr.ph.i.i395
  %unroll_iter1896 = and i64 %i.abi, -2
  br label %bb.da

._crit_edge.i.i399.unr-lcssa:                     ; preds = %bb.da
  %lcmp.mod1893.not = icmp eq i64 %xtraiter1892, 0
  br i1 %lcmp.mod1893.not, label %._crit_edge.i.i399, label %.epil.preheader1891

.epil.preheader1891:                              ; preds = %._crit_edge.i.i399.unr-lcssa, %.lr.ph.i.i395
  %.013.i.i396.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.aci, %._crit_edge.i.i399.unr-lcssa ]
  %.01112.i.i397.epil.init = phi i64 [ 0, %.lr.ph.i.i395 ], [ %i.ach, %._crit_edge.i.i399.unr-lcssa ]
  %lcmp.mod1895 = trunc i64 %i.abi to i1
  call void @llvm.assume(i1 %lcmp.mod1895)
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %.013.i.i396.epil.init ; 2 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !59
  %i.abn = zext i32 %i.abm to i64
  %i.abo = mul nuw nsw i64 %i.abn, 10
  %i.abp = add nuw nsw i64 %i.abo, %.01112.i.i397.epil.init ; 2 uses
  %i.abq = trunc i64 %i.abp to i32
  store i32 %i.abq, ptr %i.abl, align 4, !tbaa !59
  %i.abr = lshr i64 %i.abp, 32
  br label %._crit_edge.i.i399

._crit_edge.i.i399:                               ; preds = %._crit_edge.i.i399.unr-lcssa, %.epil.preheader1891
  %.lcssa1792 = phi i64 [ %i.ach, %._crit_edge.i.i399.unr-lcssa ], [ %i.abr, %.epil.preheader1891 ] ; 2 uses
  %i.abs = trunc nuw nsw i64 %.lcssa1792 to i32
  %.not.i.i400 = icmp eq i64 %.lcssa1792, 0
  br i1 %.not.i.i400, label %.backedge.backedge, label %bb.db

bb.da:                                            ; preds = %bb.da, %.lr.ph.i.i395.new
  %.013.i.i396 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.aci, %bb.da ] ; 3 uses
  %.01112.i.i397 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %i.ach, %bb.da ]
  %niter1897 = phi i64 [ 0, %.lr.ph.i.i395.new ], [ %niter1897.next.1, %bb.da ]
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %.013.i.i396 ; 2 uses
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !59
  %i.abv = zext i32 %i.abu to i64
  %i.abw = mul nuw nsw i64 %i.abv, 10
  %i.abx = add nuw nsw i64 %i.abw, %.01112.i.i397 ; 2 uses
  %i.aby = trunc i64 %i.abx to i32
  store i32 %i.aby, ptr %i.abt, align 4, !tbaa !59
  %i.abz = lshr i64 %i.abx, 32
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %.013.i.i396
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 4 ; 2 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !59
  %i.acd = zext i32 %i.acc to i64
  %i.ace = mul nuw nsw i64 %i.acd, 10
  %i.acf = add nuw nsw i64 %i.ace, %i.abz         ; 2 uses
  %i.acg = trunc i64 %i.acf to i32
  store i32 %i.acg, ptr %i.acb, align 4, !tbaa !59
  %i.ach = lshr i64 %i.acf, 32                    ; 3 uses
  %i.aci = add nuw i64 %.013.i.i396, 2            ; 2 uses
  %niter1897.next.1 = add nuw i64 %niter1897, 2   ; 2 uses
  %niter1897.ncmp.1 = icmp eq i64 %niter1897.next.1, %unroll_iter1896
  br i1 %niter1897.ncmp.1, label %._crit_edge.i.i399.unr-lcssa, label %bb.da, !llvm.loop !901

bb.db:                                            ; preds = %._crit_edge.i.i399
  %i.acj = add i64 %i.abi, 1                      ; 3 uses
  %i.ack = load i64, ptr %.2.sroa.gep522, align 8, !tbaa !867
  %i.acl = icmp ugt i64 %i.acj, %i.ack
  br i1 %i.acl, label %bb.dc, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i401

bb.dc:                                            ; preds = %bb.db
  %i.acm = load ptr, ptr %.2.sroa.gep525, align 8, !tbaa !864
  invoke void %i.acm(ptr noundef nonnull align 8 dereferenceable(172) %.2, i64 noundef %i.acj)
          to label %.noexc406 unwind label %.loopexit904, !inline_history !902

.noexc406:                                        ; preds = %bb.dc
  %.pre.i.i.i403 = load i64, ptr %.2.sroa.gep513, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i404 = add i64 %.pre.i.i.i403, 1
  %.pre.i405 = load ptr, ptr %.2, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i401

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i401: ; preds = %.noexc406, %bb.db
  %i.acn = phi ptr [ %i.abj, %bb.db ], [ %.pre.i405, %.noexc406 ]
  %.pre-phi.i.i.i402 = phi i64 [ %i.acj, %bb.db ], [ %.pre2.i.i.i404, %.noexc406 ]
  %i.aco = phi i64 [ %i.abi, %bb.db ], [ %.pre.i.i.i403, %.noexc406 ]
  store i64 %.pre-phi.i.i.i402, ptr %.2.sroa.gep513, align 8, !tbaa !876
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.aco
  store i32 %i.abs, ptr %i.acp, align 4, !tbaa !59
  br label %.backedge.backedge

bb.dd:                                            ; preds = %bb.br
  %i.acq = add i32 %.0542, -1                     ; 4 uses
  %i.acr = load i32, ptr %4, align 4, !tbaa !59
  %i.acs = sub nsw i32 %i.acr, %i.acq
  store i32 %i.acs, ptr %4, align 4, !tbaa !59
  %i.act = icmp slt i32 %.0542, 1
  br i1 %i.act, label %bb.de, label %bb.ds

bb.de:                                            ; preds = %bb.dd
  %i.acu = icmp eq i32 %.0542, 0
  br i1 %i.acu, label %bb.df, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440

bb.df:                                            ; preds = %bb.de
  %i.acv = load i64, ptr %i.h, align 8, !tbaa !876 ; 8 uses
  %.not14.i.i408 = icmp eq i64 %i.acv, 0
  br i1 %.not14.i.i408, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421, label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %bb.df
  %i.acw = load ptr, ptr %6, align 8, !tbaa !866  ; 4 uses
  %xtraiter1871 = and i64 %i.acv, 1
  %i.acx = icmp eq i64 %i.acv, 1
  br i1 %i.acx, label %.epil.preheader1870, label %.lr.ph.i.i409.new

.lr.ph.i.i409.new:                                ; preds = %.lr.ph.i.i409
  %unroll_iter1875 = and i64 %i.acv, -2
  br label %bb.dg

._crit_edge.i.i413.unr-lcssa:                     ; preds = %bb.dg
  %lcmp.mod1872.not = icmp eq i64 %xtraiter1871, 0
  br i1 %lcmp.mod1872.not, label %._crit_edge.i.i413, label %.epil.preheader1870

.epil.preheader1870:                              ; preds = %._crit_edge.i.i413.unr-lcssa, %.lr.ph.i.i409
  %.013.i.i410.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.adv, %._crit_edge.i.i413.unr-lcssa ]
  %.01112.i.i411.epil.init = phi i64 [ 0, %.lr.ph.i.i409 ], [ %i.adu, %._crit_edge.i.i413.unr-lcssa ]
  %lcmp.mod1874 = trunc i64 %i.acv to i1
  call void @llvm.assume(i1 %lcmp.mod1874)
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %.013.i.i410.epil.init ; 2 uses
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !59
  %i.ada = zext i32 %i.acz to i64
  %i.adb = mul nuw nsw i64 %i.ada, 10
  %i.adc = add nuw nsw i64 %i.adb, %.01112.i.i411.epil.init ; 2 uses
  %i.add = trunc i64 %i.adc to i32
  store i32 %i.add, ptr %i.acy, align 4, !tbaa !59
  %i.ade = lshr i64 %i.adc, 32
  br label %._crit_edge.i.i413

._crit_edge.i.i413:                               ; preds = %._crit_edge.i.i413.unr-lcssa, %.epil.preheader1870
  %.lcssa1814 = phi i64 [ %i.adu, %._crit_edge.i.i413.unr-lcssa ], [ %i.ade, %.epil.preheader1870 ] ; 2 uses
  %i.adf = trunc nuw nsw i64 %.lcssa1814 to i32
  %.not.i.i414 = icmp eq i64 %.lcssa1814, 0
  br i1 %.not.i.i414, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421, label %bb.dh

bb.dg:                                            ; preds = %bb.dg, %.lr.ph.i.i409.new
  %.013.i.i410 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.adv, %bb.dg ] ; 3 uses
  %.01112.i.i411 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %i.adu, %bb.dg ]
  %niter1876 = phi i64 [ 0, %.lr.ph.i.i409.new ], [ %niter1876.next.1, %bb.dg ]
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %.013.i.i410 ; 2 uses
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !59
  %i.adi = zext i32 %i.adh to i64
  %i.adj = mul nuw nsw i64 %i.adi, 10
  %i.adk = add nuw nsw i64 %i.adj, %.01112.i.i411 ; 2 uses
  %i.adl = trunc i64 %i.adk to i32
  store i32 %i.adl, ptr %i.adg, align 4, !tbaa !59
  %i.adm = lshr i64 %i.adk, 32
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %.013.i.i410
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 4 ; 2 uses
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !59
  %i.adq = zext i32 %i.adp to i64
  %i.adr = mul nuw nsw i64 %i.adq, 10
  %i.ads = add nuw nsw i64 %i.adr, %i.adm         ; 2 uses
  %i.adt = trunc i64 %i.ads to i32
  store i32 %i.adt, ptr %i.ado, align 4, !tbaa !59
  %i.adu = lshr i64 %i.ads, 32                    ; 3 uses
  %i.adv = add nuw i64 %.013.i.i410, 2            ; 2 uses
  %niter1876.next.1 = add nuw i64 %niter1876, 2   ; 2 uses
  %niter1876.ncmp.1 = icmp eq i64 %niter1876.next.1, %unroll_iter1875
  br i1 %niter1876.ncmp.1, label %._crit_edge.i.i413.unr-lcssa, label %bb.dg, !llvm.loop !901

bb.dh:                                            ; preds = %._crit_edge.i.i413
  %i.adw = add i64 %i.acv, 1                      ; 3 uses
  %i.adx = load i64, ptr %i.f, align 8, !tbaa !867
  %i.ady = icmp ugt i64 %i.adw, %i.adx
  br i1 %i.ady, label %bb.di, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415

bb.di:                                            ; preds = %bb.dh
  %i.adz = load ptr, ptr %i.g, align 8, !tbaa !864
  invoke void %i.adz(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.adw)
          to label %.noexc420 unwind label %bb.dp, !inline_history !902

.noexc420:                                        ; preds = %bb.di
  %.pre.i.i.i417 = load i64, ptr %i.h, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i418 = add i64 %.pre.i.i.i417, 1
  %.pre.i419 = load ptr, ptr %6, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415: ; preds = %.noexc420, %bb.dh
  %i.aea = phi ptr [ %i.acw, %bb.dh ], [ %.pre.i419, %.noexc420 ]
  %.pre-phi.i.i.i416 = phi i64 [ %i.adw, %bb.dh ], [ %.pre2.i.i.i418, %.noexc420 ] ; 2 uses
  %i.aeb = phi i64 [ %i.acv, %bb.dh ], [ %.pre.i.i.i417, %.noexc420 ]
  store i64 %.pre-phi.i.i.i416, ptr %i.h, align 8, !tbaa !876
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.aea, i64 %i.aeb
  store i32 %i.adf, ptr %i.aec, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415, %._crit_edge.i.i413, %bb.df
  %i.aed = phi i64 [ %.pre-phi.i.i.i416, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i415 ], [ %i.acv, %._crit_edge.i.i413 ], [ 0, %bb.df ] ; 2 uses
  %i.aee = load i64, ptr %i.c, align 8, !tbaa !876
  %i.aef = trunc i64 %i.aee to i32
  %i.aeg = load i32, ptr %i.e, align 8, !tbaa !868 ; 3 uses
  %i.aeh = add nsw i32 %i.aeg, %i.aef             ; 3 uses
  %i.aei = trunc i64 %i.aed to i32
  %i.aej = load i32, ptr %i.j, align 8, !tbaa !868 ; 3 uses
  %i.aek = add nsw i32 %i.aej, %i.aei             ; 4 uses
  %i.ael = add nsw i32 %i.aeh, 1
  %i.aem = icmp slt i32 %i.ael, %i.aek
  br i1 %i.aem, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dj

bb.dj:                                            ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421
  %i.aen = icmp sgt i32 %i.aeh, %i.aek
  br i1 %i.aen, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.aeo = call noundef i32 @llvm.smin.i32(i32 %i.aeg, i32 %i.aej) ; 2 uses
  %.not.not.not53.i422 = icmp sgt i32 %i.aek, %i.aeo
  br i1 %.not.not.not53.i422, label %.lr.ph.i424, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440

.lr.ph.i424:                                      ; preds = %bb.dk
  %i.aep = load ptr, ptr %5, align 8
  %i.aeq = load ptr, ptr %6, align 8
  %i.aer = sext i32 %i.aej to i64                 ; 3 uses
  %sext.i425 = shl i64 %i.aed, 32
  %i.aes = ashr exact i64 %sext.i425, 32
  %i.aet = add nsw i64 %i.aes, %i.aer
  %i.aeu = sext i32 %i.aek to i64
  %i.aev = sext i32 %i.aeh to i64
  %i.aew = sext i32 %i.aeg to i64                 ; 2 uses
  %i.aex = sext i32 %i.aeo to i64
  br label %bb.dl

bb.dl:                                            ; preds = %bb.do, %.lr.ph.i424
  %indvars.iv.i426 = phi i64 [ %i.aet, %.lr.ph.i424 ], [ %indvars.iv.next.i428, %bb.do ] ; 5 uses
  %.03254.i427 = phi i64 [ 0, %.lr.ph.i424 ], [ %i.afp, %bb.do ] ; 2 uses
  %indvars.iv.next.i428 = add nsw i64 %indvars.iv.i426, -1 ; 4 uses
  %.not.i.i429 = icmp sgt i64 %indvars.iv.i426, %i.aew
  %i.aey = icmp sle i64 %indvars.iv.i426, %i.aev
  %or.cond.i430 = and i1 %.not.i.i429, %i.aey
  br i1 %or.cond.i430, label %bb.dm, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434

bb.dm:                                            ; preds = %bb.dl
  %i.aez = sub nsw i64 %indvars.iv.next.i428, %i.aew
  %i.afa = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.aez
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !59
  %i.afc = zext i32 %i.afb to i64
  %i.afd = shl nuw nsw i64 %i.afc, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434: ; preds = %bb.dl, %bb.dm
  %i.afe = phi i64 [ %i.afd, %bb.dm ], [ 0, %bb.dl ] ; 2 uses
  %.not.i45.i435 = icmp sgt i64 %indvars.iv.i426, %i.aer
  %i.aff = icmp sle i64 %indvars.iv.i426, %i.aeu
  %or.cond51.i436 = and i1 %.not.i45.i435, %i.aff
  br i1 %or.cond51.i436, label %bb.dn, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437

bb.dn:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434
  %i.afg = sub nsw i64 %indvars.iv.next.i428, %i.aer
  %i.afh = getelementptr inbounds [4 x i8], ptr %i.aeq, i64 %i.afg
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !59
  %i.afj = zext i32 %i.afi to i64
  %i.afk = or disjoint i64 %.03254.i427, %i.afj
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437: ; preds = %bb.dn, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434
  %i.afl = phi i64 [ %i.afk, %bb.dn ], [ %.03254.i427, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i434 ] ; 2 uses
  %i.afm = icmp ugt i64 %i.afe, %i.afl
  br i1 %i.afm, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, label %bb.do

bb.do:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437
  %i.afn = sub nuw nsw i64 %i.afl, %i.afe         ; 2 uses
  %i.afo = icmp ult i64 %i.afn, 2
  %i.afp = shl nuw nsw i64 %i.afn, 32
  %.not.not.not.i438 = icmp sgt i64 %indvars.iv.next.i428, %i.aex
  %or.cond564 = select i1 %i.afo, i1 %.not.not.not.i438, i1 false
  br i1 %or.cond564, label %bb.dl, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440, !llvm.loop !900

bb.dp:                                            ; preds = %bb.dq, %bb.di
  %i.afq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440: ; preds = %bb.do, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437, %bb.dk, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421, %bb.dj, %bb.de
  %.0541 = phi i8 [ 48, %bb.de ], [ 48, %bb.dk ], [ 49, %bb.dj ], [ 48, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit421 ], [ 48, %bb.do ], [ 49, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i437 ]
  %i.afr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.afs = load i64, ptr %i.afr, align 8, !tbaa !609 ; 2 uses
  %i.aft = add i64 %i.afs, 1                      ; 3 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !605
  %i.afw = icmp ugt i64 %i.aft, %i.afv
  br i1 %i.afw, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %i.afx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !602
  invoke void %i.afy(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aft)
          to label %.noexc442 unwind label %bb.dp, !inline_history !906

.noexc442:                                        ; preds = %bb.dq
  %.pre.i441 = load i64, ptr %i.afr, align 8, !tbaa !609 ; 2 uses
  %.pre2.i = add i64 %.pre.i441, 1
  br label %bb.dr

bb.dr:                                            ; preds = %.noexc442, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440
  %.pre-phi.i = phi i64 [ %i.aft, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre2.i, %.noexc442 ]
  %i.afz = phi i64 [ %i.afs, %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit440 ], [ %.pre.i441, %.noexc442 ]
  %i.aga = load ptr, ptr %3, align 8, !tbaa !604
  store i64 %.pre-phi.i, ptr %i.afr, align 8, !tbaa !609
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 %i.afz
  store i8 %.0541, ptr %i.agb, align 1, !tbaa !10
  br label %.loopexit

bb.ds:                                            ; preds = %bb.dd
  %i.agc = zext nneg i32 %.0542 to i64            ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.age = load i64, ptr %i.agd, align 8, !tbaa !605 ; 2 uses
  %i.agf = icmp ult i64 %i.age, %i.agc
  br i1 %i.agf, label %bb.dt, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445

bb.dt:                                            ; preds = %bb.ds
  %i.agg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !602
  invoke void %i.agh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.agc)
          to label %.noexc444 unwind label %bb.bm, !inline_history !904

.noexc444:                                        ; preds = %bb.dt
  %.pre.i443 = load i64, ptr %i.agd, align 8, !tbaa !605
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445: ; preds = %bb.ds, %.noexc444
  %i.agi = phi i64 [ %i.age, %bb.ds ], [ %.pre.i443, %.noexc444 ]
  %i.agj = call noundef i64 @llvm.umin.i64(i64 %i.agc, i64 %i.agi)
  %i.agk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.agj, ptr %i.agk, align 8, !tbaa !609
  %.not623 = icmp eq i32 %.0542, 1                ; 2 uses
  br i1 %.not623, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445
  %wide.trip.count = zext nneg i32 %i.acq to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit445
  %i.agl = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.dz unwind label %bb.ej     ; 6 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459 ] ; 2 uses
  %i.agm = invoke noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %5, ptr noundef nonnull align 8 dereferenceable(172) %6)
          to label %bb.du unwind label %bb.dy

bb.du:                                            ; preds = %.lr.ph
  %i.agn = trunc i32 %i.agm to i8
  %i.ago = add i8 %i.agn, 48
  %i.agp = load ptr, ptr %3, align 8, !tbaa !604
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %indvars.iv
  store i8 %i.ago, ptr %i.agq, align 1, !tbaa !10
  %i.agr = load i64, ptr %i.c, align 8, !tbaa !876 ; 7 uses
  %.not14.i.i446 = icmp eq i64 %i.agr, 0
  br i1 %.not14.i.i446, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459, label %.lr.ph.i.i447

.lr.ph.i.i447:                                    ; preds = %bb.du
  %i.ags = load ptr, ptr %5, align 8, !tbaa !866  ; 4 uses
  %xtraiter1864 = and i64 %i.agr, 1
  %i.agt = icmp eq i64 %i.agr, 1
  br i1 %i.agt, label %.epil.preheader1863, label %.lr.ph.i.i447.new

.lr.ph.i.i447.new:                                ; preds = %.lr.ph.i.i447
  %unroll_iter1868 = and i64 %i.agr, -2
  br label %bb.dv

._crit_edge.i.i451.unr-lcssa:                     ; preds = %bb.dv
  %lcmp.mod1865.not = icmp eq i64 %xtraiter1864, 0
  br i1 %lcmp.mod1865.not, label %._crit_edge.i.i451, label %.epil.preheader1863

.epil.preheader1863:                              ; preds = %._crit_edge.i.i451.unr-lcssa, %.lr.ph.i.i447
  %.013.i.i448.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.ahr, %._crit_edge.i.i451.unr-lcssa ]
  %.01112.i.i449.epil.init = phi i64 [ 0, %.lr.ph.i.i447 ], [ %i.ahq, %._crit_edge.i.i451.unr-lcssa ]
  %lcmp.mod1867 = trunc i64 %i.agr to i1
  call void @llvm.assume(i1 %lcmp.mod1867)
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %.013.i.i448.epil.init ; 2 uses
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !59
  %i.agw = zext i32 %i.agv to i64
  %i.agx = mul nuw nsw i64 %i.agw, 10
  %i.agy = add nuw nsw i64 %i.agx, %.01112.i.i449.epil.init ; 2 uses
  %i.agz = trunc i64 %i.agy to i32
  store i32 %i.agz, ptr %i.agu, align 4, !tbaa !59
  %i.aha = lshr i64 %i.agy, 32
  br label %._crit_edge.i.i451

._crit_edge.i.i451:                               ; preds = %._crit_edge.i.i451.unr-lcssa, %.epil.preheader1863
  %.lcssa1821 = phi i64 [ %i.ahq, %._crit_edge.i.i451.unr-lcssa ], [ %i.aha, %.epil.preheader1863 ] ; 2 uses
  %i.ahb = trunc nuw nsw i64 %.lcssa1821 to i32
  %.not.i.i452 = icmp eq i64 %.lcssa1821, 0
  br i1 %.not.i.i452, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459, label %bb.dw

bb.dv:                                            ; preds = %bb.dv, %.lr.ph.i.i447.new
  %.013.i.i448 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.ahr, %bb.dv ] ; 3 uses
  %.01112.i.i449 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %i.ahq, %bb.dv ]
  %niter1869 = phi i64 [ 0, %.lr.ph.i.i447.new ], [ %niter1869.next.1, %bb.dv ]
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %.013.i.i448 ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !59
  %i.ahe = zext i32 %i.ahd to i64
  %i.ahf = mul nuw nsw i64 %i.ahe, 10
  %i.ahg = add nuw nsw i64 %i.ahf, %.01112.i.i449 ; 2 uses
  %i.ahh = trunc i64 %i.ahg to i32
  store i32 %i.ahh, ptr %i.ahc, align 4, !tbaa !59
  %i.ahi = lshr i64 %i.ahg, 32
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %.013.i.i448
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 4 ; 2 uses
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !59
  %i.ahm = zext i32 %i.ahl to i64
  %i.ahn = mul nuw nsw i64 %i.ahm, 10
  %i.aho = add nuw nsw i64 %i.ahn, %i.ahi         ; 2 uses
  %i.ahp = trunc i64 %i.aho to i32
  store i32 %i.ahp, ptr %i.ahk, align 4, !tbaa !59
  %i.ahq = lshr i64 %i.aho, 32                    ; 3 uses
  %i.ahr = add nuw i64 %.013.i.i448, 2            ; 2 uses
  %niter1869.next.1 = add nuw i64 %niter1869, 2   ; 2 uses
  %niter1869.ncmp.1 = icmp eq i64 %niter1869.next.1, %unroll_iter1868
  br i1 %niter1869.ncmp.1, label %._crit_edge.i.i451.unr-lcssa, label %bb.dv, !llvm.loop !901

bb.dw:                                            ; preds = %._crit_edge.i.i451
  %i.ahs = add i64 %i.agr, 1                      ; 3 uses
  %i.aht = load i64, ptr %i.a, align 8, !tbaa !867
  %i.ahu = icmp ugt i64 %i.ahs, %i.aht
  br i1 %i.ahu, label %bb.dx, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453

bb.dx:                                            ; preds = %bb.dw
  %i.ahv = load ptr, ptr %i.b, align 8, !tbaa !864
  invoke void %i.ahv(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ahs)
          to label %.noexc458 unwind label %bb.dy, !inline_history !902

.noexc458:                                        ; preds = %bb.dx
  %.pre.i.i.i455 = load i64, ptr %i.c, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i456 = add i64 %.pre.i.i.i455, 1
  %.pre.i457 = load ptr, ptr %5, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453: ; preds = %.noexc458, %bb.dw
  %i.ahw = phi ptr [ %i.ags, %bb.dw ], [ %.pre.i457, %.noexc458 ]
  %.pre-phi.i.i.i454 = phi i64 [ %i.ahs, %bb.dw ], [ %.pre2.i.i.i456, %.noexc458 ]
  %i.ahx = phi i64 [ %i.agr, %bb.dw ], [ %.pre.i.i.i455, %.noexc458 ]
  store i64 %.pre-phi.i.i.i454, ptr %i.c, align 8, !tbaa !876
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.ahx
  store i32 %i.ahb, ptr %i.ahy, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit459:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i453, %._crit_edge.i.i451, %bb.du
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !907

bb.dy:                                            ; preds = %bb.dx, %.lr.ph
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dz:                                            ; preds = %._crit_edge
  %i.aia = load i64, ptr %i.c, align 8, !tbaa !876
  %i.aib = trunc i64 %i.aia to i32
  %i.aic = load i32, ptr %i.e, align 8, !tbaa !868 ; 3 uses
  %i.aid = add nsw i32 %i.aic, %i.aib             ; 3 uses
  %i.aie = load i64, ptr %i.h, align 8, !tbaa !876 ; 2 uses
  %i.aif = trunc i64 %i.aie to i32
  %i.aig = load i32, ptr %i.j, align 8, !tbaa !868 ; 3 uses
  %i.aih = add nsw i32 %i.aig, %i.aif             ; 4 uses
  %i.aii = add nsw i32 %i.aid, 1
  %i.aij = icmp slt i32 %i.aii, %i.aih
  br i1 %i.aij, label %.thread556, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aik = icmp sgt i32 %i.aid, %i.aih
  br i1 %i.aik, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ail = call noundef i32 @llvm.smin.i32(i32 %i.aic, i32 %i.aig) ; 2 uses
  %.not.not.not53.i460 = icmp sgt i32 %i.aih, %i.ail
  br i1 %.not.not.not53.i460, label %.lr.ph.i462, label %bb.eh

.lr.ph.i462:                                      ; preds = %bb.eb
  %i.aim = load ptr, ptr %5, align 8
  %i.ain = load ptr, ptr %6, align 8
  %i.aio = sext i32 %i.aig to i64                 ; 3 uses
  %sext.i463 = shl i64 %i.aie, 32
  %i.aip = ashr exact i64 %sext.i463, 32
  %i.aiq = add nsw i64 %i.aip, %i.aio
  %i.air = sext i32 %i.aih to i64
  %i.ais = sext i32 %i.aid to i64
  %i.ait = sext i32 %i.aic to i64                 ; 2 uses
  %i.aiu = sext i32 %i.ail to i64
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eg, %.lr.ph.i462
  %indvars.iv.i464 = phi i64 [ %i.aiq, %.lr.ph.i462 ], [ %indvars.iv.next.i466, %bb.eg ] ; 5 uses
  %.03254.i465 = phi i64 [ 0, %.lr.ph.i462 ], [ %i.ajm, %bb.eg ] ; 2 uses
  %indvars.iv.next.i466 = add nsw i64 %indvars.iv.i464, -1 ; 4 uses
  %.not.i.i467 = icmp sgt i64 %indvars.iv.i464, %i.ait
  %i.aiv = icmp sle i64 %indvars.iv.i464, %i.ais
  %or.cond.i468 = and i1 %.not.i.i467, %i.aiv
  br i1 %or.cond.i468, label %bb.ed, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472

bb.ed:                                            ; preds = %bb.ec
  %i.aiw = sub nsw i64 %indvars.iv.next.i466, %i.ait
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.aim, i64 %i.aiw
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !59
  %i.aiz = zext i32 %i.aiy to i64
  %i.aja = shl nuw nsw i64 %i.aiz, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472: ; preds = %bb.ec, %bb.ed
  %i.ajb = phi i64 [ %i.aja, %bb.ed ], [ 0, %bb.ec ] ; 3 uses
  %.not.i45.i473 = icmp sgt i64 %indvars.iv.i464, %i.aio
  %i.ajc = icmp sle i64 %indvars.iv.i464, %i.air
  %or.cond51.i474 = and i1 %.not.i45.i473, %i.ajc
  br i1 %or.cond51.i474, label %bb.ee, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475

bb.ee:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472
  %i.ajd = sub nsw i64 %indvars.iv.next.i466, %i.aio
  %i.aje = getelementptr inbounds [4 x i8], ptr %i.ain, i64 %i.ajd
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !59
  %i.ajg = zext i32 %i.ajf to i64
  %i.ajh = or disjoint i64 %.03254.i465, %i.ajg
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475: ; preds = %bb.ee, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472
  %i.aji = phi i64 [ %i.ajh, %bb.ee ], [ %.03254.i465, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i472 ] ; 3 uses
  %i.ajj = icmp ugt i64 %i.ajb, %i.aji
  br i1 %i.ajj, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478, label %bb.ef

bb.ef:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475
  %i.ajk = sub nuw nsw i64 %i.aji, %i.ajb         ; 2 uses
  %i.ajl = icmp ugt i64 %i.ajk, 1
  br i1 %i.ajl, label %.thread556, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ajm = shl nuw nsw i64 %i.ajk, 32
  %.not.not.not.i476 = icmp sgt i64 %indvars.iv.next.i466, %i.aiu
  br i1 %.not.not.not.i476, label %bb.ec, label %.thread.loopexit.i477, !llvm.loop !900

.thread.loopexit.i477:                            ; preds = %bb.eg
  %i.ajn = icmp ne i64 %i.aji, %i.ajb
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eb, %.thread.loopexit.i477
  %.4.i461.ph = phi i1 [ false, %bb.eb ], [ %i.ajn, %.thread.loopexit.i477 ]
  %i.ajo = and i32 %i.agl, 1
  %.not100 = icmp eq i32 %i.ajo, 0
  %or.cond115 = or i1 %.not100, %.4.i461.ph
  br i1 %or.cond115, label %.thread556, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478: ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i475, %bb.ea, %bb.eh
  %i.ajp = icmp eq i32 %i.agl, 9
  br i1 %i.ajp, label %bb.ei, label %bb.er

bb.ei:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit478
  %i.ajq = load ptr, ptr %3, align 8, !tbaa !604
  %i.ajr = sext i32 %i.acq to i64
  %i.ajs = getelementptr inbounds i8, ptr %i.ajq, i64 %i.ajr
  store i8 58, ptr %i.ajs, align 1, !tbaa !10
  br i1 %.not623, label %.critedge, label %.lr.ph621

.lr.ph621:                                        ; preds = %bb.ei, %bb.ek
  %indvars.iv670 = phi i64 [ %indvars.iv.next671, %bb.ek ], [ %i.agc, %bb.ei ] ; 3 uses
  %indvars.iv.next671 = add nsw i64 %indvars.iv670, -1 ; 2 uses
  %i.ajt = load ptr, ptr %3, align 8, !tbaa !604
  %i.aju = and i64 %indvars.iv.next671, 4294967295
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 %i.aju ; 2 uses
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !10
  %i.ajx = icmp eq i8 %i.ajw, 58
  br i1 %i.ajx, label %bb.ek, label %.critedge

.critedge:                                        ; preds = %.lr.ph621, %bb.ek, %bb.ei
  %i.ajy = load ptr, ptr %3, align 8, !tbaa !604  ; 2 uses
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !10
  %i.aka = icmp eq i8 %i.ajz, 58
  br i1 %i.aka, label %bb.el, label %.loopexit

bb.ej:                                            ; preds = %._crit_edge
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ek:                                            ; preds = %.lr.ph621
  store i8 48, ptr %i.ajv, align 1, !tbaa !10
  %i.akc = load ptr, ptr %3, align 8, !tbaa !604
  %i.akd = getelementptr i8, ptr %i.akc, i64 %indvars.iv670
  %i.ake = getelementptr i8, ptr %i.akd, i64 -2   ; 2 uses
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !10
  %i.akg = add i8 %i.akf, 1
  store i8 %i.akg, ptr %i.ake, align 1, !tbaa !10
  %i.akh = trunc nuw i64 %indvars.iv670 to i32
  %i.aki = icmp sgt i32 %i.akh, 2
  br i1 %i.aki, label %.lr.ph621, label %.critedge, !llvm.loop !908

bb.el:                                            ; preds = %.critedge
  store i8 49, ptr %i.ajy, align 1, !tbaa !10
  %i.akj = and i32 %1, 4
  %.not101 = icmp eq i32 %i.akj, 0
  br i1 %.not101, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.akk = load i64, ptr %i.agk, align 8, !tbaa !609 ; 2 uses
  %i.akl = add i64 %i.akk, 1                      ; 3 uses
  %i.akm = load i64, ptr %i.agd, align 8, !tbaa !605
  %i.akn = icmp ugt i64 %i.akl, %i.akm
  br i1 %i.akn, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ako = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !602
  invoke void %i.akp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.akl)
          to label %.noexc482 unwind label %bb.ep, !inline_history !906

.noexc482:                                        ; preds = %bb.en
  %.pre.i480 = load i64, ptr %i.agk, align 8, !tbaa !609 ; 2 uses
  %.pre2.i481 = add i64 %.pre.i480, 1
  br label %bb.eo

end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.ale = load ptr, ptr %6, align 8, !tbaa !866  ; 2 uses
  %.not.i.i.i486 = icmp eq ptr %i.ale, %i.i
  br i1 %.not.i.i.i486, label %_ZN3fmt3v126detail6bigintD2Ev.exit487, label %bb.eu

bb.eu:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit485
  call void @free(ptr noundef %i.ale) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit487

_ZN3fmt3v126detail6bigintD2Ev.exit487:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit485, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.alf = load ptr, ptr %5, align 8, !tbaa !866  ; 2 uses
  %.not.i.i.i488 = icmp eq ptr %i.alf, %i.d
  br i1 %.not.i.i.i488, label %_ZN3fmt3v126detail6bigintD2Ev.exit489, label %bb.ev

bb.ev:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @free(ptr noundef %i.alf) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit489

_ZN3fmt3v126detail6bigintD2Ev.exit489:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

.body:                                            ; preds = %.loopexit904, %.loopexit.split-lp905, %.loopexit570, %.loopexit.split-lp, %bb.bm, %bb.bq, %bb.dp, %bb.dy, %bb.ch, %bb.ep, %bb.ej
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.akt, %bb.ep ], [ %i.sx, %bb.bm ], [ %i.afq, %bb.dp ], [ %i.ahz, %bb.dy ], [ %i.te, %bb.bq ], [ %i.ws, %bb.ch ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.akb, %bb.ej ], [ %lpad.loopexit, %.loopexit570 ], [ %lpad.loopexit906, %.loopexit904 ], [ %lpad.loopexit.split-lp907, %.loopexit.split-lp905 ]
  %i.alg = load ptr, ptr %8, align 8, !tbaa !866  ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.alg, %i.s
  br i1 %.not.i.i.i490, label %_ZN3fmt3v126detail6bigintD2Ev.exit491, label %bb.ew

bb.ew:                                            ; preds = %.body
  call void @free(ptr noundef %i.alg) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit491

_ZN3fmt3v126detail6bigintD2Ev.exit491:            ; preds = %bb.ew, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.alh = load ptr, ptr %7, align 8, !tbaa !866  ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.alh, %i.n
  br i1 %.not.i.i.i492, label %_ZN3fmt3v126detail6bigintD2Ev.exit493, label %bb.ex

bb.ex:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.alh) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit493

_ZN3fmt3v126detail6bigintD2Ev.exit493:            ; preds = %bb.ex, %_ZN3fmt3v126detail6bigintD2Ev.exit491
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.ali = load ptr, ptr %6, align 8, !tbaa !866  ; 2 uses
  %.not.i.i.i494 = icmp eq ptr %i.ali, %i.i
  br i1 %.not.i.i.i494, label %_ZN3fmt3v126detail6bigintD2Ev.exit495, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit493
  call void @free(ptr noundef %i.ali) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit495

_ZN3fmt3v126detail6bigintD2Ev.exit495:            ; preds = %bb.ey, %_ZN3fmt3v126detail6bigintD2Ev.exit493
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.alj = load ptr, ptr %5, align 8, !tbaa !866  ; 2 uses
  %.not.i.i.i496 = icmp eq ptr %i.alj, %i.d
  br i1 %.not.i.i.i496, label %_ZN3fmt3v126detail6bigintD2Ev.exit497, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit495
  call void @free(ptr noundef %i.alj) #34
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit497

_ZN3fmt3v126detail6bigintD2Ev.exit497:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit495, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %.pn105.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !866
  store i32 1, ptr %i.b, align 4, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !867
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !864
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !909
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !867
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !876
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.k, align 8, !tbaa !868
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !866
  store i32 5, ptr %i.n, align 4, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !867
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !864
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef 1), !inline_history !909
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !867
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !876
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !868
  %.019 = ashr i32 %i.m, 1                        ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.021 = phi i32 [ %.019, %.lr.ph ], [ %.0, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit ] ; 2 uses
  tail call void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0)
  %i.y = and i32 %.021, %1
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.v, align 8, !tbaa !876  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !866   ; 4 uses
  %xtraiter = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.z, -2
  br label %bb.h

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i.epil.init ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !59
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa39 = phi i64 [ %i.ay, %._crit_edge.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %.lcssa39 to i32
  %.not.i.i17 = icmp eq i64 %.lcssa39, 0
  br i1 %.not.i.i17, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.new
  %.013.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.az, %bb.h ] ; 3 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ay, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.h ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !59
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, %.01112.i.i      ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !59
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !59
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 5
  %i.aw = add nuw nsw i64 %i.av, %i.aq            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !59
  %i.ay = lshr i64 %i.aw, 32                      ; 3 uses
  %i.az = add nuw i64 %.013.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.h, !llvm.loop !901

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ba = add i64 %i.z, 1                         ; 3 uses
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !867
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !864
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ba), !inline_history !910
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.aa, %bb.i ], [ %.pre.i, %bb.j ]
  %.pre-phi.i.i.i = phi i64 [ %i.ba, %bb.i ], [ %.pre2.i.i.i, %bb.j ]
  %i.bf = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i, %bb.j ]
  store i64 %.pre-phi.i.i.i, ptr %i.v, align 8, !tbaa !876
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store i32 %i.aj, ptr %i.bg, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i, %._crit_edge.i.i, %bb.g, %bb.f
  %.0 = ashr i32 %.021, 1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !911

._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !868
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !868
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !876 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !866   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !59 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !59 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !59
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !912

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !59 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !59
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !913

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !867
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !864
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg), !inline_history !914
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !876 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !866
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !876
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !59
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !876  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !868  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !876  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !868  ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i91 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i91, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !903

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !59   ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !903

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !59
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !59
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !59
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !59
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !917

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = xor i32 %i.k, -1
  %i.bj = add i32 %i.e, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bm, i1 false), !tbaa !59
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !868
  %i.bo = sub nsw i32 %i.bn, %i.y                 ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !868
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !876
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !59
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !59
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !59
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !59
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !59
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !59
  %i.ce = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !59
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !918

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cg = phi i32 [ %i.e, %select.unfold ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %i.ch = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ck = phi i32 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ex, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cl = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ez, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cm = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ev, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cn = trunc i64 %i.cm to i32
  %.not21.i = icmp eq i64 %i.cl, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.co = load i32, ptr %i.j, align 8, !tbaa !868
  %i.cp = sub i32 %i.co, %i.ck
  %i.cq = load ptr, ptr %1, align 8, !tbaa !866   ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !866   ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %xtraiter121 = and i64 %i.cl, 1
  %i.ct = icmp eq i64 %i.cl, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ea, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !59
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01822.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !59
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %._crit_edge.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cs, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ea, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !59
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !59
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !59
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !59
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !59
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !59
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.ea = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !919

bb.h:                                             ; preds = %._crit_edge.i
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !59
  %i.ed = add i32 %i.ec, -1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !59
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.ee = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 1) ; 2 uses
  %i.ef = trunc i64 %i.cm to i32                  ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %.lr.ph95, label %.critedge.i.i

.lr.ph95:                                         ; preds = %._crit_edge.thread.i
  %i.eh = and i64 %i.cm, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ei = trunc nuw i64 %i.el to i32              ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.j, label %.critedge.i.i, !llvm.loop !920

bb.j:                                             ; preds = %.lr.ph95, %bb.i
  %i.ek = phi i32 [ %i.ef, %.lr.ph95 ], [ %i.ei, %bb.i ]
  %indvars.iv.i14.i94 = phi i64 [ %i.eh, %.lr.ph95 ], [ %i.el, %bb.i ]
  %i.el = add nsw i64 %indvars.iv.i14.i94, -1     ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !59
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !920

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !920

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.ek, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.ep = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.eq = load i64, ptr %i.ci, align 8, !tbaa !867 ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.k, label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.es = load ptr, ptr %i.cj, align 8, !tbaa !864
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ep), !inline_history !921
  %.pre.i.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !867
  br label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.et = phi i64 [ %i.eq, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.eu = tail call noundef i64 @llvm.umin.i64(i64 %i.ep, i64 %i.et) ; 4 uses
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !876
  %i.ev = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.ew = trunc nuw i64 %i.eu to i32              ; 2 uses
  %i.ex = load i32, ptr %i.d, align 8, !tbaa !868 ; 2 uses
  %i.ey = add nsw i32 %i.ex, %i.ew                ; 2 uses
  %i.ez = load i64, ptr %i.g, align 8, !tbaa !876 ; 3 uses
  %i.fa = trunc i64 %i.ez to i32                  ; 2 uses
  %i.fb = load i32, ptr %i.j, align 8, !tbaa !868
  %i.fc = add nsw i32 %i.fb, %i.fa                ; 2 uses
  %.not.i18 = icmp eq i32 %i.ey, %i.fc
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fd = icmp sgt i32 %i.ey, %i.fc
  br i1 %i.fd, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fe = sub nsw i32 %i.ew, %i.fa
  %spec.store.select.i20 = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 0)
  %i.ff = load ptr, ptr %0, align 8
  %i.fg = load ptr, ptr %1, align 8
  %sext.i21 = shl nuw i64 %i.eu, 32
  %i.fh = ashr exact i64 %sext.i21, 32            ; 3 uses
  %i.fi = zext nneg i32 %spec.store.select.i20 to i64 ; 3 uses
  %sext55.i22 = shl i64 %i.ez, 32
  %i.fj = ashr exact i64 %sext55.i22, 32          ; 2 uses
  %smin59 = tail call i64 @llvm.smin.i64(i64 %i.fh, i64 %i.fi)
  %.not35.not.i2599 = icmp sgt i64 %i.fh, %i.fi
  br i1 %.not35.not.i2599, label %.lr.ph103, label %._crit_edge104

bb.n:                                             ; preds = %.lr.ph103
  %.not35.not.i25 = icmp sgt i64 %indvars.iv.next.i27, %i.fi
  br i1 %.not35.not.i25, label %.lr.ph103, label %._crit_edge104, !llvm.loop !903

.lr.ph103:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i24101 = phi i64 [ %indvars.iv.next.i27, %bb.n ], [ %i.fh, %bb.m ]
  %indvars.iv45.i23100 = phi i64 [ %indvars.iv.next46.i28, %bb.n ], [ %i.fj, %bb.m ]
  %indvars.iv.next.i27 = add nsw i64 %indvars.iv.i24101, -1 ; 3 uses
  %indvars.iv.next46.i28 = add nsw i64 %indvars.iv45.i23100, -1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i27
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !59 ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv.next46.i28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !59 ; 2 uses
  %.not37.i29 = icmp eq i32 %i.fl, %i.fn
  br i1 %.not37.i29, label %bb.n, label %.loopexit.i30, !llvm.loop !903

._crit_edge104:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i23.lcssa = phi i64 [ %i.fj, %bb.m ], [ %indvars.iv.next46.i28, %bb.n ]
  %or.cond.not49 = icmp slt i64 %smin59, %indvars.iv45.i23.lcssa
  br i1 %or.cond.not49, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge

.loopexit.i30:                                    ; preds = %.lr.ph103
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  br i1 %i.fo, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge: ; preds = %.loopexit.i30, %bb.l, %._crit_edge104
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31, !llvm.loop !922

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge104, %.loopexit.i30, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.ev, %bb.l ], [ %i.ev, %.loopexit.i30 ], [ %i.ev, %._crit_edge104 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !867  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !866    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #38 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !876  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !866
  store i64 %.0, ptr %i.a, align 8, !tbaa !867
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.133", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !876  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !864
  %i.g = load ptr, ptr %0, align 8, !tbaa !866    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !867  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !866
  store i64 %i.i, ptr %i.e, align 8, !tbaa !867
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !59
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail6bigint6squareEv:bb.a
  %.not.i = icmp eq ptr %i.m, %i.x
  br i1 %.not.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef %i.m) #34
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !867
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !867
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit: ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i
  %i.aa = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre.pre, %bb.i ], [ %i.n, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXoontcvNS1_23is_back_insert_iteratorIT1_St17integral_constantIbLb1EEEE_EntoocvNS1_10has_appendIS6_T0_vEE_EcvNS1_10has_insertIS6_SB_vEE_EEiE4typeELi0EEES6_SB_SB_S6_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !876
  %i.ae = zext i32 %i.d to i64                    ; 3 uses
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !864
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.l, !inline_history !923

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !867
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, %.noexc
  %i.ai = phi i64 [ %i.aa, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !876
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !866   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.m
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.m ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bf, %bb.m ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.am = icmp eq i64 %indvars.iv, 0
  br i1 %i.am, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.m
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bf, %.preheader.loopexit ]
  %i.an = icmp sgt i32 %i.d, %i.c
  br i1 %i.an, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.ap = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.aq = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.aq, %i.ap
  %i.ar = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.ap, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.prol
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.bz, %.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod150)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !59
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add i128 %.147.epil.init, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i128 [ %i.bz, %.unr-lcssa ], [ %i.bc, %.epil.preheader ] ; 2 uses
  %i.bd = trunc i128 %.lcssa147 to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !59
  %i.bf = lshr i128 %.lcssa147, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !924

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.bz, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !59
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !59
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = zext i64 %i.bm to i128
  %i.bo = add i128 %.147, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !59
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !59
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bs
  %i.by = zext i64 %i.bx to i128
  %i.bz = add i128 %i.bo, %i.by                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !925

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.cb = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 1) ; 2 uses
  %i.cc = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph142, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph142
  %i.ce = trunc nuw i64 %i.ch to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph142, label %.critedge.i, !llvm.loop !920

.lr.ph142:                                        ; preds = %._crit_edge59, %bb.o
  %i.cg = phi i32 [ %i.ce, %bb.o ], [ %i.cc, %._crit_edge59 ]
  %indvars.iv.i141 = phi i64 [ %i.ch, %bb.o ], [ %i.aj, %._crit_edge59 ]
  %i.ch = add nsw i64 %indvars.iv.i141, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !59
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !920

..critedge.i_crit_edge:                           ; preds = %.lr.ph142
  br label %.critedge.i, !llvm.loop !920

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cg, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.cl = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cm = icmp ult i64 %i.ai, %i.cl
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !864
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cl)
          to label %.noexc43 unwind label %bb.t, !inline_history !926

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !867
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.dd, %._crit_edge ] ; 3 uses
  %i.cp = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %2 = sext i32 %indvars.iv78 to i64              ; 3 uses
  %i.cq = sub i32 %indvar, %i.c
  %i.cr = and i32 %i.cq, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.cr, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %2, 1
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %2
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !59
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load i32, ptr %i.as, align 4, !tbaa !59
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.cw, %i.cu
  %i.cy = zext i64 %i.cx to i128
  %i.cz = add nsw i128 %.256, %i.cy               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa146.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %i.da = icmp eq i32 %i.ar, %indvar
  br i1 %i.da, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.q
  %.3.lcssa = phi i128 [ %.256, %bb.q ], [ %.lcssa146.unr, %.lr.ph.prol.loopexit ], [ %i.dx, %.lr.ph ] ; 2 uses
  %i.db = trunc i128 %.3.lcssa to i32
  %i.dc = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !59
  %i.dd = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.q, !llvm.loop !927

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dx, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.df = load i32, ptr %i.de, align 4, !tbaa !59
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !59
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw i64 %i.dk, %i.dg
  %i.dm = zext i64 %i.dl to i128
  %i.dn = add i128 %.352, %i.dm
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !59
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !59
  %i.du = zext i32 %i.dt to i64
  %i.dv = mul nuw i64 %i.du, %i.dr
  %i.dw = zext i64 %i.dv to i128
  %i.dx = add i128 %i.dn, %i.dw                   ; 2 uses
  %lftr.wideiv117.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv117.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !928

bb.r:                                             ; preds = %.noexc43, %.critedge.i
  %i.dy = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.dz = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.dy)
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !876
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !868
  %i.ec = shl nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !868
  %i.ed = load ptr, ptr %1, align 8, !tbaa !866   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ed, %i.ee
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ed) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.t:                                             ; preds = %bb.p
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.t ], [ %i.at, %bb.l ]
  %i.eg = load ptr, ptr %1, align 8, !tbaa !866   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.eg) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %7 = alloca %class.anon.137, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !11     ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #34
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #34
  %i.d = load ptr, ptr %6, align 8, !tbaa !661
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !665
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !666  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.f, !inline_history !929

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %i.m

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.pre = load i32, ptr %2, align 4, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.n = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !845  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !846
  %i.t = add nsw i32 %i.s, %i.q                   ; 3 uses
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  %i.v = trunc i32 %i.n to i8
  %i.w = and i8 %i.v, 7
  switch i8 %i.w, label %bb.h [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !431  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %. = select i1 %i.z, i32 %i.y, i32 %4
  %i.aa = icmp sgt i32 %i.t, -4
  %i.ab = icmp sle i32 %i.t, %.
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = ptrtoint ptr %5 to i64
  %i.ae = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, i8 noundef signext %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.ad)
  br label %bb.u

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not51 = icmp ne i32 %3, 0
  %i.af = zext i1 %.not51 to i32
  %i.ag = add nsw i32 %i.q, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = and i32 %i.n, 8192
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !431
  %i.al = sub nsw i32 %i.ak, %i.q
  %i.am = call noundef i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.an, %i.ah
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i32 %i.q, 1
  %spec.select = select i1 %i.ap, i8 0, i8 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.049 = phi i32 [ %i.am, %bb.k ], [ 0, %bb.l ]
  %.048 = phi i64 [ %i.ao, %bb.k ], [ %i.ah, %bb.l ]
  %.0 = phi i8 [ %i.o, %bb.k ], [ %spec.select, %bb.l ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.aq = zext i1 %.not52 to i64
  %i.ar = call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 100
  %i.at = icmp samesign ugt i32 %i.ar, 999
  %i.au = select i1 %i.at, i64 6, i64 5
  %.0.i = select i1 %i.as, i64 4, i64 %i.au
  %i.av = add nsw i64 %.048, %.0.i
  %i.aw = add nsw i64 %i.av, %i.aq                ; 3 uses
  %i.ax = and i32 %i.n, 4096
  %.not54 = icmp eq i32 %i.ax, 0
  %i.ay = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store i32 %3, ptr %7, align 8, !tbaa !930
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !932
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.q, ptr %i.ba, align 8, !tbaa !933
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 %.0, ptr %i.bb, align 4, !tbaa !934
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %.049, ptr %i.bc, align 8, !tbaa !935
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i8 %i.ay, ptr %i.bd, align 4, !tbaa !936
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.u, ptr %i.be, align 8, !tbaa !937
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !673 ; 2 uses
end_hunk_4
