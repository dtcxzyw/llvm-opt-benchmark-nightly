inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@zend_optimize_func_calls:bb.a
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !57
  %i.bz = load ptr, ptr %i.af, align 8, !tbaa !58 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 12 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !57
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 9
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !57
  %.not.i224 = icmp eq i8 %i.cf, 0
  br i1 %.not.i224, label %zval_ptr_dtor_nogc.exit226, label %bb.q

bb.q:                                             ; preds = %zend_vm_calc_used_stack.exit219
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !57 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !59 ; 2 uses
  %i.ci = icmp ne i32 %i.ch, 0
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !59
  %.not3.i225 = icmp eq i32 %i.cj, 0
  br i1 %.not3.i225, label %bb.r, label %zval_ptr_dtor_nogc.exit226

bb.r:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !57
  call void @rc_dtor_func(ptr noundef %i.ck) #11
  %.pre334 = load ptr, ptr %i.af, align 8, !tbaa !58
  br label %zval_ptr_dtor_nogc.exit226

zval_ptr_dtor_nogc.exit226:                       ; preds = %zend_vm_calc_used_stack.exit219, %bb.q, %bb.r
  %i.cl = phi ptr [ %i.bz, %zend_vm_calc_used_stack.exit219 ], [ %i.bz, %bb.q ], [ %.pre334, %bb.r ]
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !57
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 1, ptr %i.cp, align 8, !tbaa !57
  %i.cq = load i32, ptr %i.ca, align 4, !tbaa !57
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.ca, align 4, !tbaa !57
  br label %bb.y

bb.s:                                             ; preds = %bb.n
  store i8 61, ptr %i.bi, align 4, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !56 ; 2 uses
  %i.cu = add i32 %i.ct, 5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !57
  %i.cx = add i32 %i.cu, %i.cw                    ; 2 uses
  %i.cy = load i8, ptr %i.bf, align 8, !tbaa !57
  %.not.i = icmp eq i8 %i.cy, 1
  br i1 %.not.i, label %zend_vm_calc_used_stack.exit, label %bb.t, !prof !41

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bf, i64 92
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !57
  %..i = call i32 @llvm.umin.i32(i32 %i.dc, i32 %i.ct)
  %i.dd = add i32 %i.da, %i.cx
  %i.de = sub i32 %i.dd, %..i
  br label %zend_vm_calc_used_stack.exit

zend_vm_calc_used_stack.exit:                     ; preds = %bb.s, %bb.t
  %.0.i = phi i32 [ %i.de, %bb.t ], [ %i.cx, %bb.s ]
  %i.df = shl i32 %.0.i, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !57
  %i.dh = load ptr, ptr %i.af, align 8, !tbaa !58 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bh, i64 12 ; 6 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !57
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dk ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 9
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !57
  %.not.i221 = icmp eq i8 %i.dn, 0
  br i1 %.not.i221, label %zval_ptr_dtor_nogc.exit223, label %bb.u

bb.u:                                             ; preds = %zend_vm_calc_used_stack.exit
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !57 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !59 ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 0
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !59
  %.not3.i222 = icmp eq i32 %i.dr, 0
  br i1 %.not3.i222, label %bb.v, label %zval_ptr_dtor_nogc.exit223

bb.v:                                             ; preds = %bb.u
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !57
  call void @rc_dtor_func(ptr noundef %i.ds) #11
  %.pre332 = load ptr, ptr %i.af, align 8, !tbaa !58
  br label %zval_ptr_dtor_nogc.exit223

zval_ptr_dtor_nogc.exit223:                       ; preds = %zend_vm_calc_used_stack.exit, %bb.u, %bb.v
  %i.dt = phi ptr [ %i.dh, %zend_vm_calc_used_stack.exit ], [ %i.dh, %bb.u ], [ %.pre332, %bb.v ]
  %i.du = load i32, ptr %i.di, align 4, !tbaa !57
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 1, ptr %i.dx, align 8, !tbaa !57
  %i.dy = load ptr, ptr %i.af, align 8, !tbaa !58 ; 3 uses
  %i.dz = load i32, ptr %i.di, align 4, !tbaa !57
  %i.ea = add i32 %i.dz, 2
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.eb ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !57
  %.not.i220 = icmp eq i8 %i.ee, 0
  br i1 %.not.i220, label %zval_ptr_dtor_nogc.exit, label %bb.w

bb.w:                                             ; preds = %zval_ptr_dtor_nogc.exit223
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !57 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !59 ; 2 uses
  %i.eh = icmp ne i32 %i.eg, 0
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add i32 %i.eg, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !59
  %.not3.i = icmp eq i32 %i.ei, 0
  br i1 %.not3.i, label %bb.x, label %zval_ptr_dtor_nogc.exit

bb.x:                                             ; preds = %bb.w
  %i.ej = load ptr, ptr %i.ec, align 8, !tbaa !57
  call void @rc_dtor_func(ptr noundef %i.ej) #11
  %.pre333 = load ptr, ptr %i.af, align 8, !tbaa !58
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %zval_ptr_dtor_nogc.exit223, %bb.w, %bb.x
  %i.ek = phi ptr [ %i.dy, %zval_ptr_dtor_nogc.exit223 ], [ %i.dy, %bb.w ], [ %.pre333, %bb.x ]
  %i.el = load i32, ptr %i.di, align 4, !tbaa !57
  %i.em = add i32 %i.el, 2
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 1, ptr %i.ep, align 8, !tbaa !57
  %i.eq = load i32, ptr %i.di, align 4, !tbaa !57
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.di, align 4, !tbaa !57
  br label %bb.y

.unreachabledefault:                              ; preds = %bb.n
  unreachable

bb.y:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %zval_ptr_dtor_nogc.exit226, %zval_ptr_dtor_nogc.exit
  %i.es = load i8, ptr %i.aj, align 4, !tbaa !44
  %.not212 = icmp eq i8 %i.es, -54
  br i1 %.not212, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.et = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.eu = getelementptr inbounds nuw i8, ptr %.0199313, i64 31
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !61
  %i.ew = icmp ne i8 %i.ev, 0
  %i.ex = call zeroext i8 @zend_get_call_op(ptr noundef nonnull %i.bh, ptr noundef %i.et, i1 noundef zeroext %i.ew) #11 ; 2 uses
  store i8 %i.ex, ptr %i.aj, align 4, !tbaa !44
  %i.ey = icmp eq i8 %i.ex, -54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not214 = phi i1 [ %i.ey, %bb.z ], [ true, %bb.y ]
  %i.ez = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.fa = and i64 %i.ez, 32768
  %.not213 = icmp eq i64 %i.fa, 0
  br i1 %.not213, label %zend_try_inline_call.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = getelementptr inbounds nuw i8, ptr %i.be, i64 25
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !53, !range !51, !noundef !52
  %i.fd = trunc nuw i8 %i.fc to i1
  %.not370 = xor i1 %i.fd, true
  %brmerge = select i1 %.not370, i1 true, i1 %.not214
  br i1 %brmerge, label %zend_try_inline_call.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fe = load ptr, ptr %i.be, align 8, !tbaa !47 ; 8 uses
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !57
  %i.fg = icmp eq i8 %i.ff, 2
  br i1 %i.fg, label %bb.ad, label %zend_try_inline_call.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fh = getelementptr inbounds nuw i8, ptr %.0199313, i64 31
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !61
  %.not.i252 = icmp eq i8 %i.fi, 0                ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !57 ; 5 uses
  %i.fl = select i1 %.not.i252, i32 537921856, i32 1050944
  %i.fm = and i32 %i.fl, %i.fk
  %or.cond.i253 = icmp eq i32 %i.fm, 0
  br i1 %or.cond.i253, label %bb.ae, label %zend_try_inline_call.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !56 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !57
  %.not73.i = icmp ult i32 %i.fo, %i.fq
  br i1 %.not73.i, label %zend_try_inline_call.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !57 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !57 ; 5 uses
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fv ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  %i.fy = load i8, ptr %i.fx, align 4, !tbaa !44
  %i.fz = icmp eq i8 %i.fy, 62
  br i1 %i.fz, label %bb.ag, label %zend_try_inline_call.exit

bb.ag:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 29
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !63
  %i.gc = icmp eq i8 %i.gb, 1
  br i1 %i.gc, label %bb.ah, label %zend_try_inline_call.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gd = lshr i32 %i.fk, 14
  %.lobit.i = and i32 %i.gd, 1
  %i.ge = add i32 %i.fu, %.lobit.i                ; 2 uses
  %i.gf = load i8, ptr %i.bi, align 4, !tbaa !44
  %i.gg = icmp eq i8 %i.gf, 113
  %i.gh = and i32 %i.fk, 16
  %.not74.i = icmp eq i32 %i.gh, 0
  %or.cond80.i = and i1 %.not74.i, %i.gg
  br i1 %or.cond80.i, label %zend_try_inline_call.exit, label %.preheader82.i

.preheader82.i:                                   ; preds = %bb.ah
  %.not85.i = icmp eq i32 %i.ge, 0
  br i1 %.not85.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader82.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !57
  %wide.trip.count.i = zext i32 %i.ge to i64
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !64

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ai ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gj, i64 %indvars.iv.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !66
  %i.gn = and i32 %i.gm, 100663296
  %.not79.i = icmp eq i32 %i.gn, 0
  br i1 %.not79.i, label %bb.ai, label %zend_try_inline_call.exit

._crit_edge.i:                                    ; preds = %bb.ai, %.preheader82.i
  %i.go = icmp ult i32 %i.fo, %i.fu
  br i1 %i.go, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.gp = and i32 %i.fk, 33554432
  %.not75.i = icmp eq i32 %i.gp, 0
  br i1 %.not75.i, label %.preheader.split.us.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.gq = zext i32 %i.fo to i64
  br label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fe, i64 192
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !57
  %i.gt = zext i32 %i.fo to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.preheader.split.us.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %bb.al ], [ %i.gt, %.preheader.split.us.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %indvars.iv94.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !57
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i8, ptr %i.gz, align 8, !tbaa !57
  %i.hb = icmp eq i8 %i.ha, 11
  br i1 %i.hb, label %zend_try_inline_call.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %lftr.wideiv97.i = trunc i64 %indvars.iv.next95.i to i32
  %exitcond98.not.i = icmp eq i32 %i.fu, %lftr.wideiv97.i
  br i1 %exitcond98.not.i, label %.loopexit.i, label %bb.ak, !llvm.loop !69

.preheader.split.i:                               ; preds = %bb.am, %.preheader.split.preheader.i
  %indvars.iv90.i = phi i64 [ %i.gq, %.preheader.split.preheader.i ], [ %indvars.iv.next91.i, %bb.am ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %indvars.iv90.i ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !57
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !57
  %i.hj = icmp eq i8 %i.hi, 11
  br i1 %i.hj, label %zend_try_inline_call.exit, label %bb.am

bb.am:                                            ; preds = %.preheader.split.i
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next91.i to i32
  %exitcond93.not.i = icmp eq i32 %i.fu, %lftr.wideiv.i
  br i1 %exitcond93.not.i, label %.loopexit.i, label %.preheader.split.i, !llvm.loop !69

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %._crit_edge.i
  br i1 %.not.i252, label %bb.at, label %bb.an

bb.an:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.hk = and i32 %i.fk, 33554432
  %.not77.i = icmp eq i32 %i.hk, 0
  br i1 %.not77.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !57
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %i.fw, i64 %i.hn
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fe, i64 192
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !57
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !57
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.ht
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hv = phi ptr [ %i.ho, %bb.ao ], [ %i.hu, %bb.ap ] ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !57 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !57 ; 2 uses
  store ptr %i.hw, ptr %2, align 8, !tbaa !57
  store i32 %i.hy, ptr %i.ah, align 8, !tbaa !57
  %i.hz = and i32 %i.hy, 65280
  %.not78.i = icmp eq i32 %i.hz, 0
  br i1 %.not78.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = load i32, ptr %i.hw, align 4, !tbaa !59
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hw, align 4, !tbaa !59
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i8 31, ptr %i.aj, align 4, !tbaa !44
  %i.ic = getelementptr inbounds nuw i8, ptr %.0199313, i64 29
  store i8 1, ptr %i.ic, align 1, !tbaa !63
  %i.id = call i32 @zend_optimizer_add_literal(ptr noundef %0, ptr noundef nonnull %2) #11
  %i.ie = getelementptr inbounds nuw i8, ptr %.0199313, i64 8
  store i32 %i.id, ptr %i.ie, align 8, !tbaa !57
  %i.if = getelementptr inbounds nuw i8, ptr %.0199313, i64 30
  store i8 0, ptr %i.if, align 2, !tbaa !70
  %i.ig = getelementptr inbounds nuw i8, ptr %.0199313, i64 12
  store i32 -1, ptr %i.ig, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.au

bb.at:                                            ; preds = %.loopexit.i
  store i8 0, ptr %i.aj, align 4, !tbaa !44
  %i.ih = getelementptr inbounds nuw i8, ptr %.0199313, i64 29
  store i8 0, ptr %i.ih, align 1, !tbaa !63
  %i.ii = getelementptr inbounds nuw i8, ptr %.0199313, i64 8
  store i32 -1, ptr %i.ii, align 8, !tbaa !57
  %i.ij = getelementptr inbounds nuw i8, ptr %.0199313, i64 30
  store i8 0, ptr %i.ij, align 2, !tbaa !70
  %i.ik = getelementptr inbounds nuw i8, ptr %.0199313, i64 12
  store i32 -1, ptr %i.ik, align 4, !tbaa !57
  %i.il = getelementptr inbounds nuw i8, ptr %.0199313, i64 16
  store i32 -1, ptr %i.il, align 8, !tbaa !57
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.im = getelementptr inbounds i8, ptr %.0199313, i64 -32
  call fastcc void @zend_delete_call_instructions(ptr noundef %0, ptr noundef nonnull %i.im)
  br label %zend_try_inline_call.exit

zend_try_inline_call.exit:                        ; preds = %bb.aj, %.preheader.split.i, %bb.ak, %bb.ab, %bb.au, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.m, %bb.l
  %i.in = getelementptr inbounds nuw i8, ptr %i.be, i64 25
  store i8 0, ptr %i.in, align 1, !tbaa !53
  %i.io = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.io, align 4, !tbaa !55
  br label %has_known_send_mode.exit.thread273

bb.av:                                            ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.ip = sext i32 %.0315 to i64
  %i.iq = getelementptr [32 x i8], ptr %.0.i249, i64 %i.ip ; 6 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 -4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !55 ; 3 uses
  %.not = icmp eq i32 %i.is, -1
  br i1 %.not, label %has_known_send_mode.exit.thread273, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.it = getelementptr i8, ptr %i.iq, i64 -32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !47 ; 5 uses
  %.not.i254 = icmp eq ptr %i.iu, null
  br i1 %.not.i254, label %has_known_send_mode.exit.thread273, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iv = getelementptr i8, ptr %i.iq, i64 -8
  %i.iw = load i8, ptr %i.iv, align 8, !tbaa !50, !range !51, !noundef !52
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !57 ; 3 uses
  %.not6.i = icmp ugt i32 %i.is, %i.iz
  %or.cond = select i1 %i.ix, i1 %.not6.i, i1 false
  br i1 %or.cond, label %has_known_send_mode.exit, label %has_known_send_mode.exit.thread

has_known_send_mode.exit:                         ; preds = %bb.ax
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !57
  %i.jc = and i32 %i.jb, 16384
  %.not308 = icmp eq i32 %i.jc, 0
  br i1 %.not308, label %has_known_send_mode.exit.thread273, label %has_known_send_mode.exit.thread

has_known_send_mode.exit.thread:                  ; preds = %bb.ax, %has_known_send_mode.exit
  %i.jd = add i32 %i.is, -1                       ; 2 uses
  %.not.i241 = icmp ult i32 %i.jd, %i.iz
  br i1 %.not.i241, label %zend_check_arg_send_type.exit244, label %bb.ay, !prof !39

bb.ay:                                            ; preds = %has_known_send_mode.exit.thread
  %i.je = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !57
  %i.jg = and i32 %i.jf, 16384
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %zend_check_arg_send_type.exit244.thread, label %zend_check_arg_send_type.exit244, !prof !39

zend_check_arg_send_type.exit244:                 ; preds = %has_known_send_mode.exit.thread, %bb.ay
  %.08.i242 = phi i32 [ %i.jd, %has_known_send_mode.exit.thread ], [ %i.iz, %bb.ay ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !57
  %i.jk = zext i32 %.08.i242 to i64
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !66
  %i.jo = and i32 %i.jn, 100663296
  %.not309 = icmp eq i32 %i.jo, 0
  br i1 %.not309, label %zend_check_arg_send_type.exit244.thread, label %bb.az

bb.az:                                            ; preds = %zend_check_arg_send_type.exit244
  %.off = add i8 %i.ak, -93
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.jp = getelementptr inbounds nuw i8, ptr %.0199313, i64 29
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !63
  %i.jr = icmp eq i8 %i.jq, 2
  br i1 %i.jr, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.js = getelementptr i8, ptr %i.iq, i64 -16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !71
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jv = getelementptr i8, ptr %i.iq, i64 -16
  store ptr null, ptr %i.jv, align 8, !tbaa !71
  br label %has_known_send_mode.exit.thread273

bb.bd:                                            ; preds = %bb.az
  %.not209 = icmp eq i8 %i.ak, -79
  br i1 %.not209, label %bb.be, label %.thread

.thread:                                          ; preds = %bb.bb, %bb.bd
  %i.jw = add i8 %i.ak, -9
  store i8 %i.jw, ptr %i.aj, align 4, !tbaa !44
  br label %has_known_send_mode.exit.thread273

bb.be:                                            ; preds = %bb.bd
  store i8 -82, ptr %i.aj, align 4, !tbaa !44
  br label %has_known_send_mode.exit.thread273

zend_check_arg_send_type.exit244.thread:          ; preds = %bb.ay, %zend_check_arg_send_type.exit244
  switch i8 %i.ak, label %.thread277 [
    i8 93, label %bb.bf
    i8 -79, label %bb.bh
  ]

bb.bf:                                            ; preds = %zend_check_arg_send_type.exit244.thread
  %i.jx = getelementptr inbounds nuw i8, ptr %.0199313, i64 30
  %i.jy = load i8, ptr %i.jx, align 2, !tbaa !70
  %i.jz = icmp eq i8 %i.jy, 0
  br i1 %i.jz, label %bb.bg, label %.thread277

bb.bg:                                            ; preds = %bb.bf
  %i.ka = getelementptr i8, ptr %i.iq, i64 -7
  store i8 0, ptr %i.ka, align 1, !tbaa !53
  br label %has_known_send_mode.exit.thread273

.thread277:                                       ; preds = %zend_check_arg_send_type.exit244.thread, %bb.bf
  %i.kb = add i8 %i.ak, -12
  store i8 %i.kb, ptr %i.aj, align 4, !tbaa !44
  br label %has_known_send_mode.exit.thread273

bb.bh:                                            ; preds = %zend_check_arg_send_type.exit244.thread
  store i8 -83, ptr %i.aj, align 4, !tbaa !44
  br label %has_known_send_mode.exit.thread273
end_hunk_0
