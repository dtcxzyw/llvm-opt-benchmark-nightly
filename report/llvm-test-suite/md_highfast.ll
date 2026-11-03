Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/md_highfast?download=true
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@encode_one_macroblock_highfast:bb.a

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.kn = phi i32 [ 9, %bb.bh ], [ %i.km, %bb.bi ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.pre570, i64 2120
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !59
  %.not452 = icmp eq i32 %i.kp, 0
  br i1 %.not452, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kh, i64 14410
  store i16 0, ptr %i.kq, align 2, !tbaa !50
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 15536
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !87
  %i.kt = icmp ne i32 %i.ks, 0
  %i.ku = icmp ne i32 %i.kn, 5
  %or.cond26 = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %or.cond26, label %bb.bm, label %.lr.ph.preheader

bb.bm:                                            ; preds = %bb.bl
  call void @IntraChromaPrediction(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #5
  %i.kv = load ptr, ptr @input, align 8, !tbaa !14
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 4176
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !88
  %.not453 = icmp eq i32 %i.kx, 0
  br i1 %.not453, label %.lr.ph.preheader, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @IntraChromaRDDecision(ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0) #5
  %i.ky = load i32, ptr %i.bi, align 8, !tbaa !57
  %sext454 = shl i32 %i.ky, 16
  %i.kz = ashr exact i32 %sext454, 16             ; 2 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bn, %bb.bm, %bb.bl
  %.0376 = phi i32 [ %i.kz, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %.0374 = phi i32 [ %i.kz, %bb.bn ], [ 3, %bb.bm ], [ 0, %bb.bl ]
  store i32 %.0376, ptr %i.bi, align 8, !tbaa !57
  %.pre597.a = load ptr, ptr @img, align 8, !tbaa !14 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit502
  %.pre573 = phi ptr [ %.pre573598, %.loopexit502 ], [ %.pre597.a, %.lr.ph.preheader ] ; 7 uses
  %i.la = phi ptr [ %i.tw, %.loopexit502 ], [ %.pre597.a, %.lr.ph.preheader ] ; 5 uses
  %storemerge522 = phi i32 [ %i.ty, %.loopexit502 ], [ %.0376, %.lr.ph.preheader ] ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 15536
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !87
  %.not470 = icmp eq i32 %i.lc, 0
  br i1 %.not470, label %.thread489.preheader, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph
  %.pre571 = load ptr, ptr @input, align 8, !tbaa !14 ; 2 uses
  br i1 %i.bk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ld = getelementptr inbounds nuw i8, ptr %.pre571, i64 4048
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !89
  %.not471 = icmp eq i32 %i.le, 0
  br i1 %.not471, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.lf = getelementptr inbounds nuw i8, ptr %.pre571, i64 4072
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !90
  %i.lh = icmp eq i32 %i.lg, 1
  br i1 %i.lh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.not472 = icmp eq i32 %storemerge522, 0
  br i1 %.not472, label %.thread489.preheader, label %.loopexit502

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %i.li = icmp ne i32 %storemerge522, 2
  %i.lj = load i32, ptr %i.m, align 4
  %i.lk = icmp ne i32 %i.lj, 0                    ; 2 uses
  %or.cond28 = select i1 %i.li, i1 true, i1 %i.lk
  br i1 %or.cond28, label %bb.bt, label %.loopexit502

bb.bt:                                            ; preds = %bb.bs
  %i.ll = icmp ne i32 %storemerge522, 1
  %i.lm = load i32, ptr %i.n, align 4
  %i.ln = icmp ne i32 %i.lm, 0                    ; 2 uses
  %or.cond30 = select i1 %i.ll, i1 true, i1 %i.ln
  br i1 %or.cond30, label %bb.bu, label %.loopexit502

bb.bu:                                            ; preds = %bb.bt
  %i.lo = icmp eq i32 %storemerge522, 3
  br i1 %i.lo, label %bb.bv, label %.thread489.preheader

bb.bv:                                            ; preds = %bb.bu
  %or.cond32 = select i1 %i.ln, i1 %i.lk, i1 false
  %i.lp = load i32, ptr %i.o, align 4
  %i.lq = icmp ne i32 %i.lp, 0
  %or.cond34 = select i1 %or.cond32, i1 %i.lq, i1 false
  br i1 %or.cond34, label %.thread489.preheader, label %.loopexit502

.thread489.preheader:                             ; preds = %bb.br, %bb.bv, %bb.bu, %.lr.ph
  br label %.thread489

.thread489:                                       ; preds = %.thread489.preheader, %.critedge484.thread
  %.pre573601 = phi ptr [ %.pre573599, %.critedge484.thread ], [ %.pre573, %.thread489.preheader ] ; 6 uses
  %i.lr = phi ptr [ %i.ts, %.critedge484.thread ], [ %.pre573, %.thread489.preheader ] ; 6 uses
  %i.ls = phi ptr [ %i.tt, %.critedge484.thread ], [ %.pre573, %.thread489.preheader ] ; 9 uses
  %.3391520 = phi i32 [ %.6394, %.critedge484.thread ], [ 0, %.thread489.preheader ] ; 5 uses
  %.9406519 = phi i32 [ %i.tu, %.critedge484.thread ], [ 0, %.thread489.preheader ] ; 4 uses
  %i.lt = sext i32 %.9406519 to i64
  %i.lu = getelementptr inbounds [4 x i8], ptr @mb_mode_table, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !7  ; 8 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 15536
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !87
  %.not473 = icmp eq i32 %i.lx, 0
  br i1 %.not473, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.thread489
  %i.ly = icmp ne i32 %i.lv, 0
  %or.cond36 = select i1 %not., i1 true, i1 %i.ly
  %i.lz = icmp ne i32 %i.lv, 1
  %or.cond38.not = select i1 %i.s, i1 true, i1 %i.lz
  %or.cond480 = select i1 %or.cond36, i1 %or.cond38.not, i1 false
  br i1 %or.cond480, label %bb.bx, label %.critedge484.thread

bb.bx:                                            ; preds = %bb.bw, %.thread489
  %i.ma = icmp eq i32 %i.lv, 1                    ; 3 uses
  %or.cond41 = and i1 %i.t, %i.ma
  %.pre574 = load ptr, ptr @input, align 8, !tbaa !14 ; 4 uses
  br i1 %or.cond41, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.mb = trunc i32 %.3391520 to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %.pre574, i64 2120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 4), i8 %i.mb, i64 4, i1 false)
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !59
  %i.me = icmp ne i32 %i.md, 0
  %i.mf = icmp eq i32 %.3391520, 2
  %or.cond43 = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond43, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ls, i64 14410
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !50
  %i.mi = icmp slt i16 %i.mh, 2
  %spec.select481 = select i1 %i.mi, i32 1, i32 2
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.4392 = phi i32 [ %.3391520, %bb.by ], [ %spec.select481, %bb.bz ] ; 2 uses
  %i.mj = icmp slt i32 %.4392, 2
  %i.mk = sext i1 %i.mj to i32
  %spec.select482 = add nsw i32 %.9406519, %i.mk
  %i.ml = add nsw i32 %.4392, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %.11408 = phi i32 [ %spec.select482, %bb.ca ], [ %.9406519, %bb.bx ] ; 7 uses
  %.5393 = phi i32 [ %i.ml, %bb.ca ], [ %.3391520, %bb.bx ] ; 5 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.pre574, i64 2960
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !91
  %i.mo = icmp eq i32 %i.mn, 0
  %or.cond47 = or i1 %i.bk, %i.mo
  %or.cond47.not = xor i1 %or.cond47, true
  %i.mp = icmp sgt i32 %i.lv, 9
  %or.cond49 = select i1 %or.cond47.not, i1 %i.mp, i1 false
  %i.mq = load i16, ptr @best_mode, align 2
  %i.mr = icmp slt i16 %i.mq, 4
  %or.cond52 = select i1 %or.cond49, i1 %i.mr, i1 false
  br i1 %or.cond52, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ms = load i32, ptr %i.bs, align 4, !tbaa !63
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %.critedge484.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %i.t, label %bb.ce, label %.critedge484

bb.ce:                                            ; preds = %bb.cd
  %i.mu = load ptr, ptr @active_pps, align 8, !tbaa !14
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 196
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !93
  %i.mx = icmp eq i32 %i.mw, 1
  %i.my = icmp slt i32 %i.lv, 8
  %or.cond54 = select i1 %i.mx, i1 %i.my, i1 false
  br i1 %or.cond54, label %.preheader500, label %.critedge484

.preheader500:                                    ; preds = %bb.ce
  %i.mz = sext i32 %i.lv to i64                   ; 4 uses
  %i.na = getelementptr inbounds [4 x i8], ptr @best8x8pdir, i64 %i.mz ; 4 uses
  %i.nb = load ptr, ptr @active_sps, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 32 ; 4 uses
  %i.nd = load ptr, ptr @wbp_weight, align 8      ; 5 uses
  %i.ne = getelementptr inbounds [4 x i8], ptr @best8x8fwref, i64 %i.mz ; 4 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr @best8x8bwref, i64 %i.mz ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 4 uses
  %i.nh = load i8, ptr %i.na, align 4, !tbaa !60
  %i.ni = icmp eq i8 %i.nh, 2
  br i1 %i.ni, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.preheader500
  %i.nj = load i32, ptr %i.nc, align 4, !tbaa !97
  %.not647 = icmp eq i32 %i.nj, 0
  %i.nk = load ptr, ptr %i.nd, align 8, !tbaa !80
  %i.nl = load i8, ptr %i.ne, align 4, !tbaa !60
  %i.nm = sext i8 %i.nl to i64                    ; 2 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nk, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !99
  %i.np = load i8, ptr %i.nf, align 4, !tbaa !60
  %i.nq = sext i8 %i.np to i64                    ; 2 uses
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !100 ; 3 uses
  %i.nt = load ptr, ptr %i.ng, align 8, !tbaa !80
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.nm
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !99
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %i.nq
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !100 ; 3 uses
  %i.ny = load i32, ptr %i.ns, align 4, !tbaa !7
  %i.nz = load i32, ptr %i.nx, align 4, !tbaa !7
  %i.oa = add i32 %i.ny, -128
  %i.ob = add i32 %i.oa, %i.nz
  %or.cond56 = icmp ult i32 %i.ob, -256
  br i1 %or.cond56, label %.loopexit556, label %bb.cf

bb.cf:                                            ; preds = %.preheader
  br i1 %.not647, label %.critedge, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !7
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !7
  %i.og = add i32 %i.od, -128
  %i.oh = add i32 %i.og, %i.of
  %or.cond56.1642 = icmp ult i32 %i.oh, -256
  br i1 %or.cond56.1642, label %.loopexit556, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !7
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !7
  %i.om = add i32 %i.oj, -128
  %i.on = add i32 %i.om, %i.ol
  %or.cond56.2645 = icmp ult i32 %i.on, -256
  br i1 %or.cond56.2645, label %.loopexit556, label %.critedge

.critedge:                                        ; preds = %bb.cf, %bb.ch, %.preheader500
  %i.oo = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !60
  %i.oq = icmp eq i8 %i.op, 2
  br i1 %i.oq, label %.preheader.1, label %.critedge.1

.preheader.1:                                     ; preds = %.critedge
  %i.or = load i32, ptr %i.nc, align 4, !tbaa !97
  %.not648 = icmp eq i32 %i.or, 0
  %i.os = load ptr, ptr %i.nd, align 8, !tbaa !80
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !60
  %i.ov = sext i8 %i.ou to i64                    ; 2 uses
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.ov
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !99
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !60
  %i.pa = sext i8 %i.oz to i64                    ; 2 uses
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !100 ; 3 uses
  %i.pd = load ptr, ptr %i.ng, align 8, !tbaa !80
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.pd, i64 %i.ov
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !99
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.pa
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !100 ; 3 uses
  %i.pi = load i32, ptr %i.pc, align 4, !tbaa !7
  %i.pj = load i32, ptr %i.ph, align 4, !tbaa !7
  %i.pk = add i32 %i.pi, -128
  %i.pl = add i32 %i.pk, %i.pj
  %or.cond56.1 = icmp ult i32 %i.pl, -256
  br i1 %or.cond56.1, label %.loopexit556, label %bb.ci

bb.ci:                                            ; preds = %.preheader.1
  br i1 %.not648, label %.critedge.1, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !7
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !7
  %i.pq = add i32 %i.pn, -128
  %i.pr = add i32 %i.pq, %i.pp
  %or.cond56.1.1 = icmp ult i32 %i.pr, -256
  br i1 %or.cond56.1.1, label %.loopexit556, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !7
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !7
  %i.pw = add i32 %i.pt, -128
  %i.px = add i32 %i.pw, %i.pv
  %or.cond56.1.2 = icmp ult i32 %i.px, -256
  br i1 %or.cond56.1.2, label %.loopexit556, label %.critedge.1

.critedge.1:                                      ; preds = %bb.ci, %bb.ck, %.critedge
  %i.py = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  %i.pz = load i8, ptr %i.py, align 2, !tbaa !60
  %i.qa = icmp eq i8 %i.pz, 2
  br i1 %i.qa, label %.preheader.2, label %.critedge.2

.preheader.2:                                     ; preds = %.critedge.1
  %i.qb = load i32, ptr %i.nc, align 4, !tbaa !97
  %.not649 = icmp eq i32 %i.qb, 0
  %i.qc = load ptr, ptr %i.nd, align 8, !tbaa !80
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ne, i64 2
  %i.qe = load i8, ptr %i.qd, align 2, !tbaa !60
  %i.qf = sext i8 %i.qe to i64                    ; 2 uses
  %i.qg = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %i.qf
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !99
  %i.qi = getelementptr inbounds nuw i8, ptr %i.nf, i64 2
  %i.qj = load i8, ptr %i.qi, align 2, !tbaa !60
  %i.qk = sext i8 %i.qj to i64                    ; 2 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.qh, i64 %i.qk
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !100 ; 3 uses
  %i.qn = load ptr, ptr %i.ng, align 8, !tbaa !80
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.qf
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !99
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.qk
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !100 ; 3 uses
  %i.qs = load i32, ptr %i.qm, align 4, !tbaa !7
  %i.qt = load i32, ptr %i.qr, align 4, !tbaa !7
  %i.qu = add i32 %i.qs, -128
  %i.qv = add i32 %i.qu, %i.qt
  %or.cond56.2 = icmp ult i32 %i.qv, -256
  br i1 %or.cond56.2, label %.loopexit556, label %bb.cl

bb.cl:                                            ; preds = %.preheader.2
  br i1 %.not649, label %.critedge.2, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !7
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !7
  %i.ra = add i32 %i.qx, -128
  %i.rb = add i32 %i.ra, %i.qz
  %or.cond56.2.1 = icmp ult i32 %i.rb, -256
  br i1 %or.cond56.2.1, label %.loopexit556, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !7
  %i.re = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !7
  %i.rg = add i32 %i.rd, -128
  %i.rh = add i32 %i.rg, %i.rf
  %or.cond56.2.2 = icmp ult i32 %i.rh, -256
  br i1 %or.cond56.2.2, label %.loopexit556, label %.critedge.2

.critedge.2:                                      ; preds = %bb.cl, %bb.cn, %.critedge.1
  %i.ri = getelementptr inbounds nuw i8, ptr %i.na, i64 3
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !60
  %i.rk = icmp eq i8 %i.rj, 2
  br i1 %i.rk, label %.preheader.3, label %.critedge484

.preheader.3:                                     ; preds = %.critedge.2
  %i.rl = load i32, ptr %i.nc, align 4, !tbaa !97
  %.not650 = icmp eq i32 %i.rl, 0
  %i.rm = load ptr, ptr %i.nd, align 8, !tbaa !80
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ne, i64 3
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !60
  %i.rp = sext i8 %i.ro to i64                    ; 2 uses
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.rm, i64 %i.rp
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !99
  %i.rs = getelementptr inbounds nuw i8, ptr %i.nf, i64 3
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !60
  %i.ru = sext i8 %i.rt to i64                    ; 2 uses
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.ru
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !100 ; 3 uses
  %i.rx = load ptr, ptr %i.ng, align 8, !tbaa !80
  %i.ry = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.rp
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !99
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.rz, i64 %i.ru
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !100 ; 3 uses
  %i.sc = load i32, ptr %i.rw, align 4, !tbaa !7
  %i.sd = load i32, ptr %i.sb, align 4, !tbaa !7
  %i.se = add i32 %i.sc, -128
  %i.sf = add i32 %i.se, %i.sd
  %or.cond56.3 = icmp ult i32 %i.sf, -256
  br i1 %or.cond56.3, label %.loopexit556, label %bb.co

bb.co:                                            ; preds = %.preheader.3
  br i1 %.not650, label %.critedge484, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !7
  %i.si = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !7
  %i.sk = add i32 %i.sh, -128
  %i.sl = add i32 %i.sk, %i.sj
  %or.cond56.3.1 = icmp ult i32 %i.sl, -256
  br i1 %or.cond56.3.1, label %.loopexit556, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !7
  %i.so = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !7
  %i.sq = add i32 %i.sn, -128
  %i.sr = add i32 %i.sq, %i.sp
  %or.cond56.3.2 = icmp ult i32 %i.sr, -256
  br i1 %or.cond56.3.2, label %.loopexit556, label %.critedge484

.loopexit556:                                     ; preds = %.preheader, %bb.cg, %bb.ch, %.preheader.1, %bb.cj, %bb.ck, %.preheader.2, %bb.cm, %bb.cn, %.preheader.3, %bb.cp, %bb.cq
  %i.ss = getelementptr inbounds nuw i8, ptr %.pre574, i64 2120
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !59
  %i.su = icmp ne i32 %i.st, 0
  %i.sv = icmp eq i32 %.5393, 2
  %or.cond58 = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %or.cond58, label %bb.cr, label %.critedge484.thread

bb.cr:                                            ; preds = %.loopexit556
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ls, i64 14408
  %i.sx = getelementptr inbounds [2 x i8], ptr %i.sw, i64 %i.mz ; 2 uses
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !50 ; 2 uses
  %i.sz = icmp slt i16 %i.sy, 2
  %or.cond60 = and i1 %i.ma, %i.sz
  br i1 %or.cond60, label %bb.cs, label %.critedge484.thread

bb.cs:                                            ; preds = %bb.cr
  %i.ta = add nsw i16 %i.sy, 1
  store i16 %i.ta, ptr %i.sx, align 2, !tbaa !50
  br label %.critedge484.thread

.critedge484:                                     ; preds = %bb.co, %bb.cq, %.critedge.2, %bb.ce, %bb.cd
  %i.tb = sext i32 %i.lv to i64                   ; 2 uses
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.tb
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !50
  %.not475 = icmp eq i16 %i.td, 0
  br i1 %.not475, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.critedge484
  call void @compute_mode_RD_cost(i32 noundef %i.lv, ptr noundef %i.aj, ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, i32 noundef 0, i16 noundef signext %i.u, ptr noundef nonnull %i.j) #5
  %.pre572 = load ptr, ptr @img, align 8, !tbaa !14 ; 3 uses
  %.pre575 = load ptr, ptr @input, align 8, !tbaa !14
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.critedge484
  %.pre573600 = phi ptr [ %.pre572, %bb.ct ], [ %.pre573601, %.critedge484 ] ; 3 uses
  %i.te = phi ptr [ %.pre572, %bb.ct ], [ %i.lr, %.critedge484 ] ; 6 uses
  %i.tf = phi ptr [ %.pre575, %bb.ct ], [ %.pre574, %.critedge484 ]
  %i.tg = phi ptr [ %.pre572, %bb.ct ], [ %i.ls, %.critedge484 ]
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 2120
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !59
  %i.tj = icmp ne i32 %i.ti, 0
  %or.cond63 = and i1 %i.t, %i.tj
  %i.tk = icmp eq i32 %.5393, 2
  %or.cond65 = select i1 %or.cond63, i1 %i.tk, i1 false
  br i1 %or.cond65, label %bb.cv, label %.critedge484.thread

bb.cv:                                            ; preds = %bb.cu
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 14408
  %i.tm = getelementptr inbounds [2 x i8], ptr %i.tl, i64 %i.tb ; 2 uses
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !50 ; 2 uses
  %i.to = icmp slt i16 %i.tn, 2
  %or.cond67 = and i1 %i.ma, %i.to
  %i.tp = load i8, ptr getelementptr inbounds nuw (i8, ptr @best8x8pdir, i64 4), align 4
  %i.tq = icmp eq i8 %i.tp, 2
  %or.cond70 = select i1 %or.cond67, i1 %i.tq, i1 false
  br i1 %or.cond70, label %bb.cw, label %.critedge484.thread

bb.cw:                                            ; preds = %bb.cv
  %i.tr = add nsw i16 %i.tn, 1
  store i16 %i.tr, ptr %i.tm, align 2, !tbaa !50
  br label %.critedge484.thread

.critedge484.thread:                              ; preds = %bb.cr, %bb.cs, %.loopexit556, %bb.cu, %bb.cv, %bb.cw, %bb.cc, %bb.bw
  %.pre573599 = phi ptr [ %.pre573601, %bb.bw ], [ %.pre573600, %bb.cu ], [ %.pre573601, %bb.cc ], [ %.pre573600, %bb.cw ], [ %.pre573600, %bb.cv ], [ %.pre573601, %.loopexit556 ], [ %.pre573601, %bb.cs ], [ %.pre573601, %bb.cr ] ; 2 uses
  %i.ts = phi ptr [ %i.lr, %bb.bw ], [ %i.te, %bb.cu ], [ %i.lr, %bb.cc ], [ %i.te, %bb.cw ], [ %i.te, %bb.cv ], [ %i.lr, %.loopexit556 ], [ %i.lr, %bb.cs ], [ %i.lr, %bb.cr ] ; 2 uses
  %i.tt = phi ptr [ %i.ls, %bb.bw ], [ %i.tg, %bb.cu ], [ %i.ls, %bb.cc ], [ %i.te, %bb.cw ], [ %i.te, %bb.cv ], [ %i.ls, %.loopexit556 ], [ %i.ls, %bb.cs ], [ %i.ls, %bb.cr ]
  %.12409 = phi i32 [ %.9406519, %bb.bw ], [ %.11408, %bb.cu ], [ %.11408, %bb.cc ], [ %.11408, %bb.cw ], [ %.11408, %bb.cv ], [ %.11408, %.loopexit556 ], [ %.11408, %bb.cs ], [ %.11408, %bb.cr ]
  %.6394 = phi i32 [ %.3391520, %bb.bw ], [ %.5393, %bb.cu ], [ %.5393, %bb.cc ], [ 2, %bb.cw ], [ 2, %bb.cv ], [ %.5393, %.loopexit556 ], [ 2, %bb.cs ], [ 2, %bb.cr ]
  %i.tu = add nsw i32 %.12409, 1                  ; 2 uses
  %i.tv = icmp slt i32 %i.tu, %i.kn
  br i1 %i.tv, label %.thread489, label %.loopexit502.loopexit, !llvm.loop !10

.loopexit502.loopexit:                            ; preds = %.critedge484.thread
  %.pre576 = load i32, ptr %i.bi, align 8, !tbaa !57
  br label %.loopexit502

.loopexit502:                                     ; preds = %.loopexit502.loopexit, %bb.br, %bb.bv, %bb.bs, %bb.bt
  %.pre573598 = phi ptr [ %.pre573599, %.loopexit502.loopexit ], [ %.pre573, %bb.br ], [ %.pre573, %bb.bv ], [ %.pre573, %bb.bs ], [ %.pre573, %bb.bt ]
  %i.tw = phi ptr [ %i.ts, %.loopexit502.loopexit ], [ %i.la, %bb.br ], [ %i.la, %bb.bv ], [ %i.la, %bb.bs ], [ %i.la, %bb.bt ] ; 2 uses
  %i.tx = phi i32 [ %.pre576, %.loopexit502.loopexit ], [ %storemerge522, %bb.br ], [ 3, %bb.bv ], [ 2, %bb.bs ], [ 1, %bb.bt ] ; 2 uses
  %i.ty = add nsw i32 %i.tx, 1                    ; 2 uses
  store i32 %i.ty, ptr %i.bi, align 8, !tbaa !57
  %.not455.not = icmp slt i32 %i.tx, %.0374
  br i1 %.not455.not, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.loopexit502
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 20
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !33
  %.not456 = icmp eq i32 %i.ua, 2
  br i1 %.not456, label %.loopexit503, label %bb.cx

bb.cx:                                            ; preds = %._crit_edge
  %i.ub = load ptr, ptr @input, align 8, !tbaa !14 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 5748
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !86
  %.not457 = icmp eq i32 %i.ud, 0
  br i1 %.not457, label %.loopexit503, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ue = load i32, ptr %i.ub, align 8, !tbaa !101
  %i.uf = icmp slt i32 %i.ue, 100
  br i1 %i.uf, label %bb.cz, label %.loopexit503

bb.cz:                                            ; preds = %bb.cy
  %i.ug = load double, ptr %i.l, align 8, !tbaa !51
  call void @fast_mode_intra_decision(ptr noundef nonnull %i.k, double noundef %i.ug) #5
  %i.uh = load i16, ptr %i.k, align 2, !tbaa !50
  %.not458 = icmp eq i16 %i.uh, 0
  br i1 %.not458, label %bb.da, label %.loopexit503

bb.da:                                            ; preds = %bb.cz
  %i.ui = load ptr, ptr @img, align 8, !tbaa !14
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 15536
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !87
  %.not459 = icmp eq i32 %i.uk, 0
  br i1 %.not459, label %.lr.ph529.preheader, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @IntraChromaPrediction(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) #5
  %i.ul = load ptr, ptr @input, align 8, !tbaa !14
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 4176
  %i.un = load i32, ptr %i.um, align 8, !tbaa !88
  %.not460 = icmp eq i32 %i.un, 0
  br i1 %.not460, label %.lr.ph529.preheader, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @IntraChromaRDDecision(ptr noundef nonnull byval(%struct.RD_PARAMS) align 8 %0) #5
  %i.uo = load i32, ptr %i.bi, align 8, !tbaa !57
  %sext461 = shl i32 %i.uo, 16
  %i.up = ashr exact i32 %sext461, 16             ; 2 uses
  br label %.lr.ph529.preheader

.lr.ph529.preheader:                              ; preds = %bb.dc, %bb.db, %bb.da
  %.1377 = phi i32 [ %i.up, %bb.dc ], [ 0, %bb.db ], [ 0, %bb.da ] ; 2 uses
  %.1375 = phi i32 [ %i.up, %bb.dc ], [ 3, %bb.db ], [ 0, %bb.da ]
  store i32 %.1377, ptr %i.bi, align 8, !tbaa !57
  %.pre579.pre603 = load ptr, ptr @input, align 8, !tbaa !14
  %i.uq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mb_mode_table, i64 20), align 4 ; 5 uses
  %i.ur = icmp sgt i32 %i.uq, 9
  %i.us = icmp ne i32 %i.uq, 0
  %or.cond87 = select i1 %not., i1 true, i1 %i.us
  %i.ut = icmp ne i32 %i.uq, 1
  %or.cond89.not = select i1 %i.s, i1 true, i1 %i.ut
  %or.cond485 = select i1 %or.cond87, i1 %or.cond89.not, i1 false ; 2 uses
  %i.uu = sext i32 %i.uq to i64
  %i.uv = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.uu
  %i.uw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mb_mode_table, i64 24), align 8 ; 5 uses
  %i.ux = icmp sgt i32 %i.uw, 9
  %i.uy = icmp ne i32 %i.uw, 0
  %or.cond87.1 = select i1 %not., i1 true, i1 %i.uy
  %i.uz = icmp ne i32 %i.uw, 1
  %or.cond89.not.1 = select i1 %i.s, i1 true, i1 %i.uz
  %or.cond485.1 = select i1 %or.cond87.1, i1 %or.cond89.not.1, i1 false
  %i.va = sext i32 %i.uw to i64
  %i.vb = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.va
  %i.vc = load i32, ptr getelementptr inbounds nuw (i8, ptr @mb_mode_table, i64 28), align 4 ; 5 uses
  %i.vd = icmp sgt i32 %i.vc, 9
  %i.ve = icmp ne i32 %i.vc, 0
  %or.cond87.2 = select i1 %not., i1 true, i1 %i.ve
  %i.vf = icmp ne i32 %i.vc, 1
  %or.cond89.not.2 = select i1 %i.s, i1 true, i1 %i.vf
  %or.cond485.2 = select i1 %or.cond87.2, i1 %or.cond89.not.2, i1 false
  %i.vg = sext i32 %i.vc to i64
  %i.vh = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.vg
  %i.vi = load i32, ptr getelementptr inbounds nuw (i8, ptr @mb_mode_table, i64 32), align 16 ; 5 uses
  %i.vj = icmp sgt i32 %i.vi, 9
  %i.vk = icmp ne i32 %i.vi, 0
  %or.cond87.3 = select i1 %not., i1 true, i1 %i.vk
  %i.vl = icmp ne i32 %i.vi, 1
  %or.cond89.not.3 = select i1 %i.s, i1 true, i1 %i.vl
  %or.cond485.3 = select i1 %or.cond87.3, i1 %or.cond89.not.3, i1 false
  %i.vm = sext i32 %i.vi to i64
  %i.vn = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.vm
  br label %.lr.ph529

.lr.ph529:                                        ; preds = %.lr.ph529.preheader, %.loopexit
  %.pre579 = phi ptr [ %.pre579604, %.loopexit ], [ %.pre579.pre603, %.lr.ph529.preheader ] ; 10 uses
  %storemerge462526 = phi i32 [ %i.xs, %.loopexit ], [ %.1377, %.lr.ph529.preheader ] ; 5 uses
  %i.vo = load ptr, ptr @img, align 8, !tbaa !14
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 15536
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !87
  %.not464 = icmp eq i32 %i.vq, 0                 ; 3 uses
  br i1 %.not464, label %.thread495, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph529
  br i1 %i.bk, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.vr = getelementptr inbounds nuw i8, ptr %.pre579, i64 4048
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !89
  %.not465 = icmp eq i32 %i.vs, 0
  br i1 %.not465, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.vt = getelementptr inbounds nuw i8, ptr %.pre579, i64 4072
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !90
  %i.vv = icmp eq i32 %i.vu, 1
  br i1 %i.vv, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %.not466 = icmp eq i32 %storemerge462526, 0
  br i1 %.not466, label %.thread495, label %.loopexit

bb.dh:                                            ; preds = %bb.df, %bb.de
  %i.vw = icmp ne i32 %storemerge462526, 2
  %i.vx = load i32, ptr %i.m, align 4
  %i.vy = icmp ne i32 %i.vx, 0                    ; 2 uses
  %or.cond72 = select i1 %i.vw, i1 true, i1 %i.vy
  br i1 %or.cond72, label %bb.di, label %.loopexit

bb.di:                                            ; preds = %bb.dh
  %i.vz = icmp ne i32 %storemerge462526, 1
  %i.wa = load i32, ptr %i.n, align 4
  %i.wb = icmp ne i32 %i.wa, 0                    ; 2 uses
  %or.cond74 = select i1 %i.vz, i1 true, i1 %i.wb
  br i1 %or.cond74, label %bb.dj, label %.loopexit

bb.dj:                                            ; preds = %bb.di
  %i.wc = icmp eq i32 %storemerge462526, 3
  br i1 %i.wc, label %bb.dk, label %.thread495

end_hunk_0
