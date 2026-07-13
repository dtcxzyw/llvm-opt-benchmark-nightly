inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@ChooseLeaf:bb.a
  br i1 %.not45.i, label %cellContains.exit.thread97, label %.lr.ph40.i

cellContains.exit.thread97:                       ; preds = %.preheader.i
  %i.dy = load i8, ptr %i.k, align 4, !tbaa !7982
  br label %bb.n

bb.f:                                             ; preds = %.critedge.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next50.i, %i.ar
  br i1 %i.dz, label %.lr.ph40.i, label %cellContains.exit, !llvm.loop !8040

.lr.ph40.i:                                       ; preds = %.preheader.i, %bb.f
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.f ], [ 0, %.preheader.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv49.i ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv49.i ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !227
  %i.ed = load i32, ptr %i.ea, align 8, !tbaa !227
  %i.ee = icmp slt i32 %i.ec, %i.ed
  br i1 %i.ee, label %cellContains.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph40.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !227
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !227
  %i.ej = icmp sgt i32 %i.eg, %i.ei
  br i1 %i.ej, label %cellContains.exit.thread, label %bb.f

bb.g:                                             ; preds = %.critedge31.i
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 2 ; 2 uses
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i65, %i.ar
  br i1 %i.ek, label %.lr.ph.i, label %cellContains.exit, !llvm.loop !8041

.lr.ph.i:                                         ; preds = %.preheader32.i, %bb.g
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i65, %bb.g ], [ 0, %.preheader32.i ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i64 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i64 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !227
  %i.eo = load float, ptr %i.el, align 8, !tbaa !227
  %i.ep = fcmp olt float %i.en, %i.eo
  br i1 %i.ep, label %cellContains.exit.thread, label %.critedge31.i

.critedge31.i:                                    ; preds = %.lr.ph.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !227
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.et = load float, ptr %i.es, align 4, !tbaa !227
  %i.eu = fcmp ogt float %i.er, %i.et
  br i1 %i.eu, label %cellContains.exit.thread, label %bb.g

cellContains.exit:                                ; preds = %bb.g, %bb.f, %.preheader32.i
  %i.ev = load i8, ptr %i.k, align 4, !tbaa !7982 ; 2 uses
  br i1 %i.au, label %bb.h, label %bb.n

bb.h:                                             ; preds = %cellContains.exit
  switch i8 %i.ev, label %bb.m [
    i8 5, label %bb.i
    i8 4, label %bb.j
    i8 3, label %bb.k
    i8 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.ew = load float, ptr %i.l, align 4, !tbaa !227
  %i.ex = load float, ptr %i.m, align 8, !tbaa !227
  %i.ey = fsub float %i.ew, %i.ex
  %i.ez = fpext float %i.ey to double
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi double [ %i.ez, %bb.i ], [ 1.000000e+00, %bb.h ]
  %i.fa = load float, ptr %i.n, align 4, !tbaa !227
  %i.fb = load float, ptr %i.o, align 8, !tbaa !227
  %i.fc = fsub float %i.fa, %i.fb
  %i.fd = fpext float %i.fc to double
  %i.fe = fmul double %.0.i, %i.fd
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.1.i = phi double [ %i.fe, %bb.j ], [ 1.000000e+00, %bb.h ]
  %i.ff = load float, ptr %i.p, align 4, !tbaa !227
  %i.fg = load float, ptr %i.q, align 8, !tbaa !227
  %i.fh = fsub float %i.ff, %i.fg
  %i.fi = fpext float %i.fh to double
  %i.fj = fmul double %.1.i, %i.fi
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.2.i = phi double [ %i.fj, %bb.k ], [ 1.000000e+00, %bb.h ]
  %i.fk = load float, ptr %i.r, align 4, !tbaa !227
  %i.fl = load float, ptr %i.s, align 8, !tbaa !227
  %i.fm = fsub float %i.fk, %i.fl
  %i.fn = fpext float %i.fm to double
  %i.fo = fmul double %.2.i, %i.fn
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.3.i = phi double [ 1.000000e+00, %bb.h ], [ %i.fo, %bb.l ]
  %i.fp = load float, ptr %i.t, align 4, !tbaa !227
  %i.fq = load float, ptr %i.g, align 8, !tbaa !227
  %i.fr = fsub float %i.fp, %i.fq
  %i.fs = fpext float %i.fr to double
  %i.ft = fmul double %.3.i, %i.fs
  br label %cellArea.exit

bb.n:                                             ; preds = %cellContains.exit.thread97, %cellContains.exit
  %i.fu = phi i8 [ %i.dy, %cellContains.exit.thread97 ], [ %i.ev, %cellContains.exit ]
  switch i8 %i.fu, label %bb.s [
    i8 5, label %bb.o
    i8 4, label %bb.p
    i8 3, label %bb.q
    i8 2, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.fv = load i32, ptr %i.l, align 4, !tbaa !227
  %i.fw = sext i32 %i.fv to i64
  %i.fx = load i32, ptr %i.m, align 8, !tbaa !227
  %i.fy = sext i32 %i.fx to i64
  %i.fz = sub nsw i64 %i.fw, %i.fy
  %i.ga = sitofp i64 %i.fz to double
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.4.i66 = phi double [ %i.ga, %bb.o ], [ 1.000000e+00, %bb.n ]
  %i.gb = load i32, ptr %i.n, align 4, !tbaa !227
  %i.gc = sext i32 %i.gb to i64
  %i.gd = load i32, ptr %i.o, align 8, !tbaa !227
  %i.ge = sext i32 %i.gd to i64
  %i.gf = sub nsw i64 %i.gc, %i.ge
  %i.gg = sitofp i64 %i.gf to double
  %i.gh = fmul nnan double %.4.i66, %i.gg
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.5.i = phi double [ %i.gh, %bb.p ], [ 1.000000e+00, %bb.n ]
  %i.gi = load i32, ptr %i.p, align 4, !tbaa !227
  %i.gj = sext i32 %i.gi to i64
  %i.gk = load i32, ptr %i.q, align 8, !tbaa !227
  %i.gl = sext i32 %i.gk to i64
  %i.gm = sub nsw i64 %i.gj, %i.gl
  %i.gn = sitofp i64 %i.gm to double
  %i.go = fmul double %.5.i, %i.gn
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.6.i = phi double [ %i.go, %bb.q ], [ 1.000000e+00, %bb.n ]
  %i.gp = load i32, ptr %i.r, align 4, !tbaa !227
  %i.gq = sext i32 %i.gp to i64
  %i.gr = load i32, ptr %i.s, align 8, !tbaa !227
  %i.gs = sext i32 %i.gr to i64
  %i.gt = sub nsw i64 %i.gq, %i.gs
  %i.gu = sitofp i64 %i.gt to double
  %i.gv = fmul double %.6.i, %i.gu
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.7.i = phi double [ 1.000000e+00, %bb.n ], [ %i.gv, %bb.r ]
  %i.gw = load i32, ptr %i.t, align 4, !tbaa !227
  %i.gx = sext i32 %i.gw to i64
  %i.gy = load i32, ptr %i.g, align 8, !tbaa !227
  %i.gz = sext i32 %i.gy to i64
  %i.ha = sub nsw i64 %i.gx, %i.gz
  %i.hb = sitofp i64 %i.ha to double
  %i.hc = fmul double %.7.i, %i.hb
  br label %cellArea.exit

cellArea.exit:                                    ; preds = %bb.m, %bb.s
  %.8.i = phi double [ %i.ft, %bb.m ], [ %i.hc, %bb.s ] ; 2 uses
  %i.hd = icmp eq i32 %.053103, 0
  %i.he = fcmp olt double %.8.i, %.046106
  %or.cond = select i1 %i.hd, i1 true, i1 %i.he   ; 2 uses
  %.147 = select i1 %or.cond, double %.8.i, double %.046106
  %.145 = select i1 %or.cond, i64 %i.cj, i64 %.044109
  br label %cellContains.exit.thread

cellContains.exit.thread:                         ; preds = %.critedge31.i, %.lr.ph.i, %.lr.ph40.i, %.critedge.i, %cellArea.exit
  %.255 = phi i32 [ 1, %cellArea.exit ], [ %.053103, %.lr.ph40.i ], [ %.053103, %.critedge.i ], [ %.053103, %.lr.ph.i ], [ %.053103, %.critedge31.i ] ; 2 uses
  %.248 = phi double [ %.147, %cellArea.exit ], [ %.046106, %.lr.ph40.i ], [ %.046106, %.critedge.i ], [ %.046106, %.lr.ph.i ], [ %.046106, %.critedge31.i ] ; 2 uses
  %.2 = phi i64 [ %.145, %cellArea.exit ], [ %.044109, %.lr.ph40.i ], [ %.044109, %.critedge.i ], [ %.044109, %.lr.ph.i ], [ %.044109, %.critedge31.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !8042

._crit_edge:                                      ; preds = %cellContains.exit.thread
  %i.hf = icmp eq i32 %.255, 0
  br i1 %i.hf, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %._crit_edge
  %.val.i67 = load i8, ptr %i.f, align 1, !tbaa !7936
  %i.hg = load i8, ptr %i.h, align 1, !tbaa !7913 ; 2 uses
  %i.hh = zext i8 %i.hg to i64                    ; 5 uses
  %i.hi = load i8, ptr %i.i, align 2, !tbaa !7964
  %i.hj = icmp eq i8 %i.hi, 0
  %i.hk = load i8, ptr %i.k, align 4, !tbaa !7982 ; 4 uses
  %i.hl = zext i8 %.val.i67 to i64
  %wide.trip.count138 = zext nneg i32 %i.ap to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hh, i64 2)
  %i.hm = add nsw i64 %umax, -1
  %i.hn = lshr i64 %i.hm, 1
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.hh, i64 2)
  %6 = add nsw i64 %umax160, -1
  %7 = lshr i64 %6, 1                             ; 2 uses
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check162 = icmp eq i64 %7, 0
  %n.vec165 = and i64 %8, 9223372036854775806     ; 3 uses
  %9 = shl nuw i64 %n.vec165, 1
  %cmp.n177 = icmp eq i64 %8, %n.vec165
  %min.iters.check = icmp ult i8 %i.hg, 7
  %n.vec = and i64 %i.ho, 9223372036854775804     ; 3 uses
  %i.hp = shl nuw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ho, %n.vec
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph119, %bb.ar
  %indvars.iv135 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next136, %bb.ar ] ; 3 uses
  %.3117 = phi i64 [ %.2, %.lr.ph119 ], [ %.4, %bb.ar ]
  %.349116 = phi double [ %.248, %.lr.ph119 ], [ %.450, %bb.ar ] ; 2 uses
  %.051115 = phi double [ 0.000000e+00, %.lr.ph119 ], [ %.152, %bb.ar ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.hq = mul nuw nsw i64 %indvars.iv135, %i.hl
  %i.hr = getelementptr i8, ptr %i.aj, i64 %i.hq  ; 9 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !227
  %i.hu = zext i8 %i.ht to i64
  %i.hv = shl nuw i64 %i.hu, 56
  %i.hw = getelementptr i8, ptr %i.hr, i64 5
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !227
  %i.hy = zext i8 %i.hx to i64
  %i.hz = shl nuw nsw i64 %i.hy, 48
  %i.ia = or disjoint i64 %i.hz, %i.hv
  %i.ib = getelementptr i8, ptr %i.hr, i64 6
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !227
  %i.id = zext i8 %i.ic to i64
  %i.ie = shl nuw nsw i64 %i.id, 40
  %i.if = or disjoint i64 %i.ia, %i.ie
  %i.ig = getelementptr i8, ptr %i.hr, i64 7
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !227
  %i.ii = zext i8 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 32
  %i.ik = or disjoint i64 %i.if, %i.ij
  %i.il = getelementptr i8, ptr %i.hr, i64 8
  %i.im = load i8, ptr %i.il, align 1, !tbaa !227
  %i.in = zext i8 %i.im to i64
  %i.io = shl nuw nsw i64 %i.in, 24
  %i.ip = or disjoint i64 %i.ik, %i.io
  %i.iq = getelementptr i8, ptr %i.hr, i64 9
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !227
  %i.is = zext i8 %i.ir to i64
  %i.it = shl nuw nsw i64 %i.is, 16
  %i.iu = or disjoint i64 %i.ip, %i.it
  %i.iv = getelementptr i8, ptr %i.hr, i64 10
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !227
  %i.ix = zext i8 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 8
  %i.iz = or disjoint i64 %i.iu, %i.iy
  %i.ja = getelementptr i8, ptr %i.hr, i64 11
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !227
  %i.jc = zext i8 %i.jb to i64
  %i.jd = add nuw i64 %i.iz, %i.jc                ; 2 uses
  store i64 %i.jd, ptr %5, align 8, !tbaa !7969
  %i.je = getelementptr i8, ptr %i.hr, i64 12
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i70, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %.017.i69 = phi ptr [ %i.kq, %bb.u ], [ %i.je, %bb.t ] ; 9 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i68 ; 2 uses
  %i.jg = load i8, ptr %.017.i69, align 1, !tbaa !227
  %i.jh = zext i8 %i.jg to i32
  %i.ji = shl nuw i32 %i.jh, 24
  %i.jj = getelementptr inbounds nuw i8, ptr %.017.i69, i64 1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !227
  %i.jl = zext i8 %i.jk to i32
  %i.jm = shl nuw nsw i32 %i.jl, 16
  %i.jn = or disjoint i32 %i.jm, %i.ji
  %i.jo = getelementptr inbounds nuw i8, ptr %.017.i69, i64 2
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !227
  %i.jq = zext i8 %i.jp to i32
  %i.jr = shl nuw nsw i32 %i.jq, 8
  %i.js = or disjoint i32 %i.jn, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %.017.i69, i64 3
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !227
  %i.jv = zext i8 %i.ju to i32
  %i.jw = or disjoint i32 %i.js, %i.jv
  store i32 %i.jw, ptr %i.jf, align 8, !tbaa !227
  %i.jx = getelementptr inbounds nuw i8, ptr %.017.i69, i64 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jz = load i8, ptr %i.jx, align 1, !tbaa !227
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl nuw i32 %i.ka, 24
  %i.kc = getelementptr inbounds nuw i8, ptr %.017.i69, i64 5
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !227
  %i.ke = zext i8 %i.kd to i32
  %i.kf = shl nuw nsw i32 %i.ke, 16
  %i.kg = or disjoint i32 %i.kf, %i.kb
  %i.kh = getelementptr inbounds nuw i8, ptr %.017.i69, i64 6
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !227
  %i.kj = zext i8 %i.ki to i32
  %i.kk = shl nuw nsw i32 %i.kj, 8
  %i.kl = or disjoint i32 %i.kg, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %.017.i69, i64 7
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !227
  %i.ko = zext i8 %i.kn to i32
  %i.kp = or disjoint i32 %i.kl, %i.ko
  store i32 %i.kp, ptr %i.jy, align 4, !tbaa !227
  %i.kq = getelementptr inbounds nuw i8, ptr %.017.i69, i64 8
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i68, 2 ; 2 uses
  %i.kr = icmp samesign ult i64 %indvars.iv.next.i70, %i.hh
  br i1 %i.kr, label %bb.u, label %nodeGetCell.exit71, !llvm.loop !7881

nodeGetCell.exit71:                               ; preds = %bb.u
  br i1 %i.hj, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %nodeGetCell.exit71
  switch i8 %i.hk, label %.preheader.i84.preheader [
    i8 5, label %bb.w
    i8 4, label %bb.x
    i8 3, label %bb.y
    i8 2, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.ks = load float, ptr %i.v, align 4, !tbaa !227
  %i.kt = load float, ptr %i.w, align 8, !tbaa !227
  %i.ku = fsub float %i.ks, %i.kt
  %i.kv = fpext float %i.ku to double
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i80 = phi double [ %i.kv, %bb.w ], [ 1.000000e+00, %bb.v ]
  %i.kw = load float, ptr %i.x, align 4, !tbaa !227
  %i.kx = load float, ptr %i.y, align 8, !tbaa !227
  %i.ky = fsub float %i.kw, %i.kx
  %i.kz = fpext float %i.ky to double
  %i.la = fmul double %.0.i80, %i.kz
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.1.i79 = phi double [ %i.la, %bb.x ], [ 1.000000e+00, %bb.v ]
  %i.lb = load float, ptr %i.z, align 4, !tbaa !227
  %i.lc = load float, ptr %i.aa, align 8, !tbaa !227
  %i.ld = fsub float %i.lb, %i.lc
  %i.le = fpext float %i.ld to double
  %i.lf = fmul double %.1.i79, %i.le
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.2.i77 = phi double [ %i.lf, %bb.y ], [ 1.000000e+00, %bb.v ]
  %i.lg = load float, ptr %i.ab, align 4, !tbaa !227
  %i.lh = load float, ptr %i.ac, align 8, !tbaa !227
  %i.li = fsub float %i.lg, %i.lh
  %i.lj = fpext float %i.li to double
  %i.lk = fmul double %.2.i77, %i.lj
  br label %.preheader.i84.preheader

bb.aa:                                            ; preds = %nodeGetCell.exit71
  switch i8 %i.hk, label %.preheader57.i.preheader [
    i8 5, label %bb.ab
    i8 4, label %bb.ac
    i8 3, label %bb.ad
    i8 2, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ll = load i32, ptr %i.v, align 4, !tbaa !227
  %i.lm = sext i32 %i.ll to i64
  %i.ln = load i32, ptr %i.w, align 8, !tbaa !227
  %i.lo = sext i32 %i.ln to i64
  %i.lp = sub nsw i64 %i.lm, %i.lo
  %i.lq = sitofp i64 %i.lp to double
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.4.i76 = phi double [ %i.lq, %bb.ab ], [ 1.000000e+00, %bb.aa ]
  %i.lr = load i32, ptr %i.x, align 4, !tbaa !227
  %i.ls = sext i32 %i.lr to i64
  %i.lt = load i32, ptr %i.y, align 8, !tbaa !227
  %i.lu = sext i32 %i.lt to i64
  %i.lv = sub nsw i64 %i.ls, %i.lu
  %i.lw = sitofp i64 %i.lv to double
  %i.lx = fmul nnan double %.4.i76, %i.lw
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.5.i75 = phi double [ %i.lx, %bb.ac ], [ 1.000000e+00, %bb.aa ]
  %i.ly = load i32, ptr %i.z, align 4, !tbaa !227
  %i.lz = sext i32 %i.ly to i64
  %i.ma = load i32, ptr %i.aa, align 8, !tbaa !227
  %i.mb = sext i32 %i.ma to i64
  %i.mc = sub nsw i64 %i.lz, %i.mb
  %i.md = sitofp i64 %i.mc to double
  %i.me = fmul double %.5.i75, %i.md
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.6.i72 = phi double [ %i.me, %bb.ad ], [ 1.000000e+00, %bb.aa ]
  %i.mf = load i32, ptr %i.ab, align 4, !tbaa !227
  %i.mg = sext i32 %i.mf to i64
  %i.mh = load i32, ptr %i.ac, align 8, !tbaa !227
  %i.mi = sext i32 %i.mh to i64
  %i.mj = sub nsw i64 %i.mg, %i.mi
  %i.mk = sitofp i64 %i.mj to double
  %i.ml = fmul double %.6.i72, %i.mk
  br label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %bb.ae, %bb.aa
  %.7.i73 = phi double [ 1.000000e+00, %bb.aa ], [ %i.ml, %bb.ae ]
  %i.mm = load i32, ptr %i.ad, align 4, !tbaa !227
  %i.mn = sext i32 %i.mm to i64
  %i.mo = load i32, ptr %i.u, align 8, !tbaa !227
  %i.mp = sext i32 %i.mo to i64
  %i.mq = sub nsw i64 %i.mn, %i.mp
  %i.mr = sitofp i64 %i.mq to double
  %i.ms = fmul double %.7.i73, %i.mr
  br i1 %min.iters.check162, label %.preheader57.i.preheader181, label %vector.body166

vector.body166:                                   ; preds = %.preheader57.i.preheader, %vector.body166
  %index167 = phi i64 [ %index.next175, %vector.body166 ], [ 0, %.preheader57.i.preheader ] ; 2 uses
  %i.mt = shl i64 %index167, 1                    ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.mt ; 2 uses
  %wide.vec168 = load <4 x i32>, ptr %i.mu, align 8, !tbaa !227 ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.mt
  %wide.vec171 = load <4 x i32>, ptr %i.mv, align 4, !tbaa !227 ; 2 uses
  %i.mw = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec168, <4 x i32> %wide.vec171)
  %i.mx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec168, <4 x i32> %wide.vec171)
  %interleaved.vec174 = shufflevector <4 x i32> %i.mw, <4 x i32> %i.mx, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec174, ptr %i.mu, align 8, !tbaa !227
  %index.next175 = add nuw i64 %index167, 2       ; 2 uses
  %i.my = icmp eq i64 %index.next175, %n.vec165
  br i1 %i.my, label %middle.block176, label %vector.body166, !llvm.loop !8043

middle.block176:                                  ; preds = %vector.body166
  br i1 %cmp.n177, label %cellUnion.exit, label %.preheader57.i.preheader181

.preheader57.i.preheader181:                      ; preds = %.preheader57.i.preheader, %middle.block176
  %indvars.iv.i82.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %9, %middle.block176 ]
  br label %.preheader57.i

.preheader.i84.preheader:                         ; preds = %bb.v, %bb.z
  %.3.i78 = phi double [ 1.000000e+00, %bb.v ], [ %i.lk, %bb.z ]
  %i.mz = load float, ptr %i.ad, align 4, !tbaa !227
  %i.na = load float, ptr %i.u, align 8, !tbaa !227
  %i.nb = fsub float %i.mz, %i.na
  %i.nc = fpext float %i.nb to double
  %i.nd = fmul double %.3.i78, %i.nc
  br i1 %min.iters.check, label %.preheader.i84.preheader180, label %vector.body

vector.body:                                      ; preds = %.preheader.i84.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i84.preheader ] ; 2 uses
  %i.ne = shl i64 %index, 1                       ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ne ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.nf, align 8, !tbaa !227 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec156 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ne
  %wide.vec157 = load <8 x float>, ptr %i.ng, align 4, !tbaa !227 ; 2 uses
  %strided.vec158 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec159 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.nh = fcmp olt <4 x float> %strided.vec, %strided.vec158
  %i.ni = select <4 x i1> %i.nh, <4 x float> %strided.vec, <4 x float> %strided.vec158
  %i.nj = fcmp ogt <4 x float> %strided.vec156, %strided.vec159
  %i.nk = select <4 x i1> %i.nj, <4 x float> %strided.vec156, <4 x float> %strided.vec159
  %interleaved.vec = shufflevector <4 x float> %i.ni, <4 x float> %i.nk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.nf, align 8, !tbaa !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nl = icmp eq i64 %index.next, %n.vec
  br i1 %i.nl, label %middle.block, label %vector.body, !llvm.loop !8044

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit179, label %.preheader.i84.preheader180

.preheader.i84.preheader180:                      ; preds = %.preheader.i84.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i84.preheader ], [ %i.hp, %middle.block ]
  br label %.preheader.i84

.preheader.i84:                                   ; preds = %.preheader.i84.preheader180, %.preheader.i84
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i84 ], [ %indvars.iv61.i.ph, %.preheader.i84.preheader180 ] ; 3 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv61.i ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv61.i
  %i.no = load <2 x float>, ptr %i.nm, align 8, !tbaa !227 ; 3 uses
  %i.np = load <2 x float>, ptr %i.nn, align 4, !tbaa !227 ; 3 uses
  %i.nq = shufflevector <2 x float> %i.no, <2 x float> %i.np, <2 x i32> <i32 0, i32 3>
  %i.nr = shufflevector <2 x float> %i.np, <2 x float> %i.no, <2 x i32> <i32 0, i32 3>
  %i.ns = fcmp olt <2 x float> %i.nq, %i.nr
  %i.nt = select <2 x i1> %i.ns, <2 x float> %i.no, <2 x float> %i.np
  store <2 x float> %i.nt, ptr %i.nm, align 8, !tbaa !227
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.nu = icmp samesign ult i64 %indvars.iv.next62.i, %i.hh
  br i1 %i.nu, label %.preheader.i84, label %.loopexit179, !llvm.loop !8045

.preheader57.i:                                   ; preds = %.preheader57.i.preheader181, %.preheader57.i
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i83, %.preheader57.i ], [ %indvars.iv.i82.ph, %.preheader57.i.preheader181 ] ; 4 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i82 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !227
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i82
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !227
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.nw, i32 %i.ny)
  store i32 %.56.i, ptr %i.nv, align 8, !tbaa !227
  %i.nz = or disjoint i64 %indvars.iv.i82, 1      ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.nz ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !227
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.nz
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !227
  %i.oe = tail call i32 @llvm.smax.i32(i32 %i.ob, i32 %i.od)
  store i32 %i.oe, ptr %i.oa, align 4, !tbaa !227
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 2 ; 2 uses
  %i.of = icmp samesign ult i64 %indvars.iv.next.i83, %i.hh
  br i1 %i.of, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !8046

.loopexit179:                                     ; preds = %.preheader.i84, %middle.block
  switch i8 %i.hk, label %bb.aj [
    i8 5, label %bb.af
    i8 4, label %bb.ag
    i8 3, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.af:                                            ; preds = %.loopexit179
  %i.og = load float, ptr %i.v, align 4, !tbaa !227
  %i.oh = load float, ptr %i.w, align 8, !tbaa !227
  %i.oi = fsub float %i.og, %i.oh
  %i.oj = fpext float %i.oi to double
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit179
  %.0.i93 = phi double [ %i.oj, %bb.af ], [ 1.000000e+00, %.loopexit179 ]
  %i.ok = load float, ptr %i.x, align 4, !tbaa !227
  %i.ol = load float, ptr %i.y, align 8, !tbaa !227
  %i.om = fsub float %i.ok, %i.ol
  %i.on = fpext float %i.om to double
  %i.oo = fmul double %.0.i93, %i.on
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit179
  %.1.i92 = phi double [ %i.oo, %bb.ag ], [ 1.000000e+00, %.loopexit179 ]
  %i.op = load float, ptr %i.z, align 4, !tbaa !227
  %i.oq = load float, ptr %i.aa, align 8, !tbaa !227
  %i.or = fsub float %i.op, %i.oq
  %i.os = fpext float %i.or to double
  %i.ot = fmul double %.1.i92, %i.os
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit179
  %.2.i90 = phi double [ %i.ot, %bb.ah ], [ 1.000000e+00, %.loopexit179 ]
  %i.ou = load float, ptr %i.ab, align 4, !tbaa !227
  %i.ov = load float, ptr %i.ac, align 8, !tbaa !227
  %i.ow = fsub float %i.ou, %i.ov
  %i.ox = fpext float %i.ow to double
  %i.oy = fmul double %.2.i90, %i.ox
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit179
  %.3.i91 = phi double [ 1.000000e+00, %.loopexit179 ], [ %i.oy, %bb.ai ]
  %i.oz = load float, ptr %i.ad, align 4, !tbaa !227
  %i.pa = load float, ptr %i.u, align 8, !tbaa !227
  %i.pb = fsub float %i.oz, %i.pa
  %i.pc = fpext float %i.pb to double
  %i.pd = fmul double %.3.i91, %i.pc
  br label %cellArea.exit94

cellUnion.exit:                                   ; preds = %.preheader57.i, %middle.block176
  switch i8 %i.hk, label %bb.ao [
    i8 5, label %bb.ak
    i8 4, label %bb.al
    i8 3, label %bb.am
    i8 2, label %bb.an
  ]

bb.ak:                                            ; preds = %cellUnion.exit
  %i.pe = load i32, ptr %i.v, align 4, !tbaa !227
  %i.pf = sext i32 %i.pe to i64
  %i.pg = load i32, ptr %i.w, align 8, !tbaa !227
  %i.ph = sext i32 %i.pg to i64
  %i.pi = sub nsw i64 %i.pf, %i.ph
  %i.pj = sitofp i64 %i.pi to double
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %cellUnion.exit
  %.4.i89 = phi double [ %i.pj, %bb.ak ], [ 1.000000e+00, %cellUnion.exit ]
  %i.pk = load i32, ptr %i.x, align 4, !tbaa !227
  %i.pl = sext i32 %i.pk to i64
  %i.pm = load i32, ptr %i.y, align 8, !tbaa !227
  %i.pn = sext i32 %i.pm to i64
  %i.po = sub nsw i64 %i.pl, %i.pn
  %i.pp = sitofp i64 %i.po to double
  %i.pq = fmul nnan double %.4.i89, %i.pp
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %cellUnion.exit
  %.5.i88 = phi double [ %i.pq, %bb.al ], [ 1.000000e+00, %cellUnion.exit ]
  %i.pr = load i32, ptr %i.z, align 4, !tbaa !227
  %i.ps = sext i32 %i.pr to i64
  %i.pt = load i32, ptr %i.aa, align 8, !tbaa !227
  %i.pu = sext i32 %i.pt to i64
  %i.pv = sub nsw i64 %i.ps, %i.pu
  %i.pw = sitofp i64 %i.pv to double
  %i.px = fmul double %.5.i88, %i.pw
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %cellUnion.exit
  %.6.i85 = phi double [ %i.px, %bb.am ], [ 1.000000e+00, %cellUnion.exit ]
  %i.py = load i32, ptr %i.ab, align 4, !tbaa !227
  %i.pz = sext i32 %i.py to i64
  %i.qa = load i32, ptr %i.ac, align 8, !tbaa !227
  %i.qb = sext i32 %i.qa to i64
  %i.qc = sub nsw i64 %i.pz, %i.qb
  %i.qd = sitofp i64 %i.qc to double
  %i.qe = fmul double %.6.i85, %i.qd
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %cellUnion.exit
  %.7.i86 = phi double [ 1.000000e+00, %cellUnion.exit ], [ %i.qe, %bb.an ]
  %i.qf = load i32, ptr %i.ad, align 4, !tbaa !227
  %i.qg = sext i32 %i.qf to i64
  %i.qh = load i32, ptr %i.u, align 8, !tbaa !227
  %i.qi = sext i32 %i.qh to i64
  %i.qj = sub nsw i64 %i.qg, %i.qi
  %i.qk = sitofp i64 %i.qj to double
  %i.ql = fmul double %.7.i86, %i.qk
  br label %cellArea.exit94

cellArea.exit94:                                  ; preds = %bb.aj, %bb.ao
  %.8.i74150 = phi double [ %i.nd, %bb.aj ], [ %i.ms, %bb.ao ] ; 3 uses
  %.8.i87 = phi double [ %i.pd, %bb.aj ], [ %i.ql, %bb.ao ]
  %i.qm = fsub double %.8.i87, %.8.i74150         ; 3 uses
  %i.qn = icmp eq i64 %indvars.iv135, 0
  %i.qo = fcmp olt double %i.qm, %.051115
  %or.cond59 = select i1 %i.qn, i1 true, i1 %i.qo
  br i1 %or.cond59, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %cellArea.exit94
  %i.qp = fcmp oeq double %i.qm, %.051115
  %i.qq = fcmp olt double %.8.i74150, %.349116
  %or.cond60 = select i1 %i.qp, i1 %i.qq, i1 false
  br i1 %or.cond60, label %bb.aq, label %bb.ar

end_hunk_0
begin_hunk_1_@rtreeInsertCell:bb.a
  %i.hi = tail call i32 @sqlite3_initialize(), !inline_history !8052
  %.not.i.i51 = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i51, label %sqlite3_malloc64.exit.i53, label %nodeNew.exit56

sqlite3_malloc64.exit.i53:                        ; preds = %nodeNew.exit62
  %i.hj = sext i32 %i.hh to i64
  %i.hk = add nsw i64 %i.hj, 40
  %i.hl = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.hk), !inline_history !8052 ; 8 uses
  %.not.i54 = icmp eq ptr %i.hl, null
  br i1 %.not.i54, label %nodeNew.exit56, label %bb.m

bb.m:                                             ; preds = %sqlite3_malloc64.exit.i53
  %i.hm = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.hn = sext i32 %i.hm to i64
  %i.ho = add nsw i64 %i.hn, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hl, i8 0, i64 %i.ho, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !7934
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i32 1, ptr %i.hr, align 8, !tbaa !8009
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7966
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !7966
  store ptr %1, ptr %i.hl, align 8, !tbaa !8011
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  store i32 1, ptr %i.hv, align 4, !tbaa !8014
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !8009
  %i.hy = add nsw i32 %i.hx, 1
  store i32 %i.hy, ptr %i.hw, align 8, !tbaa !8009
  br label %nodeNew.exit56

nodeNew.exit56:                                   ; preds = %nodeNew.exit62, %sqlite3_malloc64.exit.i53, %bb.m
  %.0.i16.i52 = phi ptr [ %i.hl, %bb.m ], [ null, %sqlite3_malloc64.exit.i53 ], [ null, %nodeNew.exit62 ]
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !7942
  %i.ib = add nsw i32 %i.ia, 1                    ; 3 uses
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !7942
  store i32 1, ptr %i.gj, align 4, !tbaa !8014
  %i.ic = load ptr, ptr %i.x, align 8, !tbaa !7934 ; 2 uses
  %i.id = lshr i32 %i.ib, 8
  %i.ie = trunc i32 %i.id to i8
  store i8 %i.ie, ptr %i.ic, align 1, !tbaa !227
  %i.if = trunc i32 %i.ib to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !227
  br label %bb.q

bb.n:                                             ; preds = %._crit_edge
  %i.ih = load ptr, ptr %1, align 8, !tbaa !8011  ; 3 uses
  %i.ii = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.ij = tail call i32 @sqlite3_initialize(), !inline_history !8052
  %.not.i.i48 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i48, label %sqlite3_malloc64.exit.i49, label %nodeNew.exit

sqlite3_malloc64.exit.i49:                        ; preds = %bb.n
  %i.ik = sext i32 %i.ii to i64
  %i.il = add nsw i64 %i.ik, 40
  %i.im = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.il), !inline_history !8052 ; 9 uses
  %.not.i50 = icmp eq ptr %i.im, null
  br i1 %.not.i50, label %nodeNew.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3_malloc64.exit.i49
  %i.in = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.io = sext i32 %i.in to i64
  %i.ip = add nsw i64 %i.io, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.im, i8 0, i64 %i.ip, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !7934
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i32 1, ptr %i.is, align 8, !tbaa !8009
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !7966
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !7966
  store ptr %i.ih, ptr %i.im, align 8, !tbaa !8011
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 20
  store i32 1, ptr %i.iw, align 4, !tbaa !8014
  %.not.i13.i = icmp eq ptr %i.ih, null
  br i1 %.not.i13.i, label %nodeNew.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !8009
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 8, !tbaa !8009
  br label %nodeNew.exit

nodeNew.exit:                                     ; preds = %bb.n, %sqlite3_malloc64.exit.i49, %bb.o, %bb.p
  %.0.i16.i = phi ptr [ %i.im, %bb.p ], [ null, %sqlite3_malloc64.exit.i49 ], [ %i.im, %bb.o ], [ null, %bb.n ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !8009
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 8, !tbaa !8009
  br label %bb.q

bb.q:                                             ; preds = %nodeNew.exit, %nodeNew.exit56
  %.0125.i = phi ptr [ %.0.i16.i52, %nodeNew.exit56 ], [ %1, %nodeNew.exit ] ; 24 uses
  %.0122.i = phi ptr [ %.0.i16.i58, %nodeNew.exit56 ], [ %.0.i16.i, %nodeNew.exit ] ; 23 uses
  %i.jd = icmp ne ptr %.0125.i, null
  %i.je = icmp ne ptr %.0122.i, null
  %or.cond.i = and i1 %i.jd, %i.je
  br i1 %or.cond.i, label %bb.r, label %SplitNode.exit

bb.r:                                             ; preds = %bb.q
  %i.jf = getelementptr inbounds nuw i8, ptr %.0125.i, i64 24 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !7934
  %i.jh = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.ji = sext i32 %i.jh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jg, i8 0, i64 %i.ji, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %.0122.i, i64 24 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !7934
  %i.jl = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.jm = sext i32 %i.jl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jk, i8 0, i64 %i.jm, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.jo = load i8, ptr %i.jn, align 4, !tbaa !7982
  %i.jp = zext i8 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, 1
  %i.jr = shl nuw nsw i32 %i.cp, 2
  %narrow.i = add nuw nsw i32 %i.jr, 8
  %i.js = zext nneg i32 %narrow.i to i64
  %i.jt = mul nuw nsw i64 %i.jq, %i.js            ; 2 uses
  %i.ju = tail call i32 @sqlite3_initialize(), !inline_history !8053
  %.not.i.i39 = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i39, label %sqlite3_malloc64.exit.i, label %SplitNode.exit

sqlite3_malloc64.exit.i:                          ; preds = %bb.r
  %i.jv = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.jt), !inline_history !8053 ; 10 uses
  %.not.i41 = icmp eq ptr %i.jv, null
  br i1 %.not.i41, label %SplitNode.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_malloc64.exit.i
  %i.jw = load i8, ptr %i.jn, align 4, !tbaa !7982 ; 2 uses
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jx
  %i.jz = zext i8 %i.jw to i32
  %i.ka = mul nuw nsw i32 %i.cp, %i.jz
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jv, i8 0, i64 %i.jt, i1 false)
  %i.kd = load i8, ptr %i.jn, align 4, !tbaa !7982 ; 2 uses
  %.not234.i = icmp eq i8 %i.kd, 0
  br i1 %.not234.i, label %._crit_edge229.i, label %.lr.ph.i42.preheader

.lr.ph.i42.preheader:                             ; preds = %bb.s
  %i.ke = or disjoint i32 %i.cm, %i.cn            ; 2 uses
  %i.kf = add nuw nsw i32 %i.ke, 1
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ke, 7
  %n.vec = and i64 %i.kg, 131064                  ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.kg
  br label %.lr.ph.i42

.preheader.i:                                     ; preds = %.loopexit
  %.not235.i = icmp eq i8 %i.ml, 0
  br i1 %.not235.i, label %._crit_edge229.i, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %.preheader.i
  %i.kh = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.ki = add nsw i32 %i.kh, -4
  %i.kj = load i8, ptr %i.t, align 1, !tbaa !7936
  %i.kk = zext i8 %i.kj to i32
  %i.kl = sdiv i32 %i.ki, %i.kk                   ; 2 uses
  %i.km = sdiv i32 %i.kl, 3                       ; 2 uses
  %.neg.i = sdiv i32 %i.kl, -3
  %i.kn = add nsw i32 %.neg.i, %i.cp              ; 2 uses
  %.not141213.i = icmp sgt i32 %i.km, %i.kn
  %i.ko = icmp samesign ugt i32 %i.co, 1
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br i1 %.not141213.i, label %._crit_edge229.i, label %.lr.ph228.split.i

.lr.ph228.split.i:                                ; preds = %.lr.ph228.i
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.ll = load i8, ptr %i.lj, align 1, !tbaa !7913 ; 4 uses
  %i.lm = load i8, ptr %i.lk, align 2, !tbaa !7964 ; 4 uses
  %i.ln = icmp eq i8 %i.lm, 0                     ; 3 uses
  %i.lo = zext i8 %i.ll to i64                    ; 14 uses
  %.not.i165.i = icmp eq i8 %i.ll, 0              ; 2 uses
  %i.lp = sext i32 %i.km to i64                   ; 2 uses
  %i.lq = add nsw i32 %i.kn, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %i.lr = add nsw i64 %umax, -1
  %i.ls = lshr i64 %i.lr, 1
  %i.lt = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %umax249 = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %8 = add nsw i64 %umax249, -1
  %9 = lshr i64 %8, 1                             ; 2 uses
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %umax268 = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %11 = add nsw i64 %umax268, -1
  %12 = lshr i64 %11, 1
  %13 = add nuw nsw i64 %12, 1                    ; 2 uses
  %umax287 = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %i.lu = add nsw i64 %umax287, -1
  %i.lv = lshr i64 %i.lu, 1                       ; 2 uses
  %i.lw = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %min.iters.check289 = icmp eq i64 %i.lv, 0
  %n.vec292 = and i64 %i.lw, 9223372036854775806  ; 3 uses
  %14 = shl nuw i64 %n.vec292, 1
  %cmp.n304 = icmp eq i64 %i.lw, %n.vec292
  %min.iters.check270 = icmp ult i8 %i.ll, 7
  %n.vec273 = and i64 %13, 9223372036854775804    ; 3 uses
  %15 = shl nuw i64 %n.vec273, 1
  %cmp.n285 = icmp eq i64 %13, %n.vec273
  %min.iters.check251 = icmp eq i64 %9, 0
  %n.vec254 = and i64 %10, 9223372036854775806    ; 3 uses
  %i.lx = shl nuw i64 %n.vec254, 1
  %cmp.n266 = icmp eq i64 %10, %n.vec254
  %min.iters.check235 = icmp ult i8 %i.ll, 7
  %n.vec238 = and i64 %i.lt, 9223372036854775804  ; 3 uses
  %i.ly = shl nuw i64 %n.vec238, 1
  %cmp.n247 = icmp eq i64 %i.lt, %n.vec238
  br label %.lr.ph220.i

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader, %.loopexit
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i, %.loopexit ], [ 0, %.lr.ph.i42.preheader ] ; 4 uses
  %i.lz = phi i8 [ %i.ml, %.loopexit ], [ %i.kd, %.lr.ph.i42.preheader ]
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.ma
  %i.mc = mul nuw nsw i64 %indvars.iv250.i, %i.cq
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mc ; 4 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv250.i
  store ptr %i.md, ptr %i.me, align 8, !tbaa !348
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i42, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i42 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i42 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %index ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store <4 x i32> %vec.ind, ptr %i.mf, align 4, !tbaa !5
  store <4 x i32> %step.add, ptr %i.mg, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.mh = icmp eq i64 %index.next, %n.vec
  br i1 %i.mh, label %middle.block, label %vector.body, !llvm.loop !8054

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i42, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i42 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.i
  %i.mj = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.mj, ptr %i.mi, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cq
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !8055

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.mk = trunc nuw nsw i64 %indvars.iv250.i to i32
  tail call fastcc void @SortByDimension(ptr noundef nonnull %0, ptr noundef nonnull %i.md, i32 noundef range(i32 1, 65537) %i.cp, i32 noundef %i.mk, ptr noundef nonnull %i.ct, ptr noundef %i.kc), !inline_history !8056
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %i.ml = load i8, ptr %i.jn, align 4, !tbaa !7982 ; 7 uses
  %i.mm = zext i8 %i.ml to i64                    ; 2 uses
  %i.mn = icmp samesign ult i64 %indvars.iv.next251.i, %i.mm
  br i1 %i.mn, label %.lr.ph.i42, label %.preheader.i, !llvm.loop !8057

.lr.ph220.i:                                      ; preds = %._crit_edge221.i, %.lr.ph228.split.i
  %i.mo = phi i8 [ %i.lm, %.lr.ph228.split.i ], [ %i.pz, %._crit_edge221.i ]
  %indvars.iv261.i = phi i64 [ 0, %.lr.ph228.split.i ], [ %indvars.iv.next262.i, %._crit_edge221.i ] ; 4 uses
  %.0122226.i = phi i32 [ 0, %.lr.ph228.split.i ], [ %.1123.i44, %._crit_edge221.i ]
  %.0124225.i = phi i32 [ 0, %.lr.ph228.split.i ], [ %.1125.i, %._crit_edge221.i ]
  %.0126224.i = phi double [ 0.000000e+00, %.lr.ph228.split.i ], [ %.1127.i, %._crit_edge221.i ] ; 2 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv261.i
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !348 ; 3 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !5
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.ms
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.gk
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !5
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.mw
  br label %bb.t

bb.t:                                             ; preds = %bb.au, %.lr.ph220.i
  %i.my = phi i8 [ %i.mo, %.lr.ph220.i ], [ %i.pz, %bb.au ] ; 2 uses
  %indvars.iv257.i = phi i64 [ %i.lp, %.lr.ph220.i ], [ %indvars.iv.next258.i, %bb.au ] ; 4 uses
  %.0130217.i = phi i32 [ 0, %.lr.ph220.i ], [ %.1131.i, %bb.au ]
  %.0132216.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %.1133.i, %bb.au ] ; 2 uses
  %.0134215.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %.1135.i, %bb.au ] ; 3 uses
  %.0136214.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %i.xc, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.mt, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.mx, i64 48, i1 false)
  br i1 %i.ko, label %.lr.ph212.i, label %._crit_edge.i

.lr.ph212.i:                                      ; preds = %bb.t, %cellUnion.exit.i
  %i.mz = phi i8 [ %i.py, %cellUnion.exit.i ], [ %i.my, %bb.t ] ; 3 uses
  %indvars.iv252.i = phi i64 [ %indvars.iv.next253.i, %cellUnion.exit.i ], [ 1, %bb.t ] ; 3 uses
  %i.na = icmp slt i64 %indvars.iv252.i, %indvars.iv257.i
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv252.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !5
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.nd ; 2 uses
  br i1 %i.na, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph212.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 5 uses
  br i1 %i.ln, label %.preheader.i.i.preheader, label %.preheader57.i.i.preheader

.preheader57.i.i.preheader:                       ; preds = %bb.u
  br i1 %min.iters.check251, label %.preheader57.i.i.preheader363, label %vector.body255

vector.body255:                                   ; preds = %.preheader57.i.i.preheader, %vector.body255
  %index256 = phi i64 [ %index.next264, %vector.body255 ], [ 0, %.preheader57.i.i.preheader ] ; 2 uses
  %i.ng = shl i64 %index256, 1                    ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ng ; 2 uses
  %wide.vec257 = load <4 x i32>, ptr %i.nh, align 8, !tbaa !227 ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.ng
  %wide.vec260 = load <4 x i32>, ptr %i.ni, align 4, !tbaa !227 ; 2 uses
  %i.nj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec257, <4 x i32> %wide.vec260)
  %i.nk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec257, <4 x i32> %wide.vec260)
  %interleaved.vec263 = shufflevector <4 x i32> %i.nj, <4 x i32> %i.nk, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec263, ptr %i.nh, align 8, !tbaa !227
  %index.next264 = add nuw i64 %index256, 2       ; 2 uses
  %i.nl = icmp eq i64 %index.next264, %n.vec254
  br i1 %i.nl, label %middle.block265, label %vector.body255, !llvm.loop !8058

middle.block265:                                  ; preds = %vector.body255
  br i1 %cmp.n266, label %cellUnion.exit.i, label %.preheader57.i.i.preheader363

.preheader57.i.i.preheader363:                    ; preds = %.preheader57.i.i.preheader, %middle.block265
  %indvars.iv.i.i46.ph = phi i64 [ 0, %.preheader57.i.i.preheader ], [ %i.lx, %middle.block265 ]
  br label %.preheader57.i.i

.preheader.i.i.preheader:                         ; preds = %bb.u
  br i1 %min.iters.check235, label %.preheader.i.i.preheader362, label %vector.body239

vector.body239:                                   ; preds = %.preheader.i.i.preheader, %vector.body239
  %index240 = phi i64 [ %index.next245, %vector.body239 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.nm = shl i64 %index240, 1                    ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.nm ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.nn, align 8, !tbaa !227 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec241 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nm
  %wide.vec242 = load <8 x float>, ptr %i.no, align 4, !tbaa !227 ; 2 uses
  %strided.vec243 = shufflevector <8 x float> %wide.vec242, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec244 = shufflevector <8 x float> %wide.vec242, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.np = fcmp olt <4 x float> %strided.vec, %strided.vec243
  %i.nq = select <4 x i1> %i.np, <4 x float> %strided.vec, <4 x float> %strided.vec243
  %i.nr = fcmp ogt <4 x float> %strided.vec241, %strided.vec244
  %i.ns = select <4 x i1> %i.nr, <4 x float> %strided.vec241, <4 x float> %strided.vec244
  %interleaved.vec = shufflevector <4 x float> %i.nq, <4 x float> %i.ns, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.nn, align 8, !tbaa !227
  %index.next245 = add nuw i64 %index240, 4       ; 2 uses
  %i.nt = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.nt, label %middle.block246, label %vector.body239, !llvm.loop !8059

middle.block246:                                  ; preds = %vector.body239
  br i1 %cmp.n247, label %cellUnion.exit.i, label %.preheader.i.i.preheader362

.preheader.i.i.preheader362:                      ; preds = %.preheader.i.i.preheader, %middle.block246
  %indvars.iv61.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ly, %middle.block246 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader362, %.preheader.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.preheader.i.i ], [ %indvars.iv61.i.i.ph, %.preheader.i.i.preheader362 ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv61.i.i ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv61.i.i
  %i.nw = load <2 x float>, ptr %i.nu, align 8, !tbaa !227 ; 3 uses
  %i.nx = load <2 x float>, ptr %i.nv, align 4, !tbaa !227 ; 3 uses
  %i.ny = shufflevector <2 x float> %i.nw, <2 x float> %i.nx, <2 x i32> <i32 0, i32 3>
  %i.nz = shufflevector <2 x float> %i.nx, <2 x float> %i.nw, <2 x i32> <i32 0, i32 3>
  %i.oa = fcmp olt <2 x float> %i.ny, %i.nz
  %i.ob = select <2 x i1> %i.oa, <2 x float> %i.nw, <2 x float> %i.nx
  store <2 x float> %i.ob, ptr %i.nu, align 8, !tbaa !227
  %indvars.iv.next62.i.i = add nuw nsw i64 %indvars.iv61.i.i, 2 ; 2 uses
  %i.oc = icmp samesign ult i64 %indvars.iv.next62.i.i, %i.lo
  br i1 %i.oc, label %.preheader.i.i, label %cellUnion.exit.i, !llvm.loop !8060

.preheader57.i.i:                                 ; preds = %.preheader57.i.i.preheader363, %.preheader57.i.i
  %indvars.iv.i.i46 = phi i64 [ %indvars.iv.next.i.i47, %.preheader57.i.i ], [ %indvars.iv.i.i46.ph, %.preheader57.i.i.preheader363 ] ; 4 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i.i46 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !227
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv.i.i46
  %i.og = load i32, ptr %i.of, align 4, !tbaa !227
  %.56.i.i = tail call i32 @llvm.smin.i32(i32 %i.oe, i32 %i.og)
  store i32 %.56.i.i, ptr %i.od, align 8, !tbaa !227
  %i.oh = or disjoint i64 %indvars.iv.i.i46, 1    ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.oh ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !227
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.oh
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !227
  %i.om = tail call i32 @llvm.smax.i32(i32 %i.oj, i32 %i.ol)
  store i32 %i.om, ptr %i.oi, align 4, !tbaa !227
  %indvars.iv.next.i.i47 = add nuw nsw i64 %indvars.iv.i.i46, 2 ; 2 uses
  %i.on = icmp samesign ult i64 %indvars.iv.next.i.i47, %i.lo
  br i1 %i.on, label %.preheader57.i.i, label %cellUnion.exit.i, !llvm.loop !8061

bb.v:                                             ; preds = %.lr.ph212.i
  %i.oo = icmp eq i8 %i.mz, 0
  %i.op = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 5 uses
  br i1 %i.oo, label %.preheader.i148.i.preheader, label %.preheader57.i144.i.preheader

.preheader57.i144.i.preheader:                    ; preds = %bb.v
  br i1 %min.iters.check289, label %.preheader57.i144.i.preheader367, label %vector.body293

vector.body293:                                   ; preds = %.preheader57.i144.i.preheader, %vector.body293
  %index294 = phi i64 [ %index.next302, %vector.body293 ], [ 0, %.preheader57.i144.i.preheader ] ; 2 uses
  %i.oq = shl i64 %index294, 1                    ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.oq ; 2 uses
  %wide.vec295.a = load <4 x i32>, ptr %i.or, align 8, !tbaa !227 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.oq
  %wide.vec298 = load <4 x i32>, ptr %i.os, align 4, !tbaa !227 ; 2 uses
  %i.ot = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec295.a, <4 x i32> %wide.vec298)
  %i.ou = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec295.a, <4 x i32> %wide.vec298)
  %interleaved.vec301 = shufflevector <4 x i32> %i.ot, <4 x i32> %i.ou, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec301, ptr %i.or, align 8, !tbaa !227
  %index.next302 = add nuw i64 %index294, 2       ; 2 uses
  %i.ov = icmp eq i64 %index.next302, %n.vec292
  br i1 %i.ov, label %middle.block303, label %vector.body293, !llvm.loop !8062

middle.block303:                                  ; preds = %vector.body293
  br i1 %cmp.n304, label %cellUnion.exit.i, label %.preheader57.i144.i.preheader367

.preheader57.i144.i.preheader367:                 ; preds = %.preheader57.i144.i.preheader, %middle.block303
  %indvars.iv.i145.i.ph = phi i64 [ 0, %.preheader57.i144.i.preheader ], [ %14, %middle.block303 ]
  br label %.preheader57.i144.i

.preheader.i148.i.preheader:                      ; preds = %bb.v
  br i1 %min.iters.check270, label %.preheader.i148.i.preheader365, label %vector.body274

vector.body274:                                   ; preds = %.preheader.i148.i.preheader, %vector.body274
  %index275 = phi i64 [ %index.next283, %vector.body274 ], [ 0, %.preheader.i148.i.preheader ] ; 2 uses
  %i.ow = shl i64 %index275, 1                    ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ow ; 2 uses
  %wide.vec276 = load <8 x float>, ptr %i.ox, align 8, !tbaa !227 ; 2 uses
  %strided.vec277 = shufflevector <8 x float> %wide.vec276, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec278.a = shufflevector <8 x float> %wide.vec276, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.ow
  %wide.vec279 = load <8 x float>, ptr %i.oy, align 4, !tbaa !227 ; 2 uses
  %strided.vec280 = shufflevector <8 x float> %wide.vec279, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec281 = shufflevector <8 x float> %wide.vec279, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.oz = fcmp olt <4 x float> %strided.vec277, %strided.vec280
  %i.pa = select <4 x i1> %i.oz, <4 x float> %strided.vec277, <4 x float> %strided.vec280
  %i.pb = fcmp ogt <4 x float> %strided.vec278.a, %strided.vec281
  %i.pc = select <4 x i1> %i.pb, <4 x float> %strided.vec278.a, <4 x float> %strided.vec281
  %interleaved.vec282 = shufflevector <4 x float> %i.pa, <4 x float> %i.pc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec282, ptr %i.ox, align 8, !tbaa !227
  %index.next283 = add nuw i64 %index275, 4       ; 2 uses
  %i.pd = icmp eq i64 %index.next283, %n.vec273
  br i1 %i.pd, label %middle.block284, label %vector.body274, !llvm.loop !8063

middle.block284:                                  ; preds = %vector.body274
  br i1 %cmp.n285, label %cellUnion.exit.i, label %.preheader.i148.i.preheader365

.preheader.i148.i.preheader365:                   ; preds = %.preheader.i148.i.preheader, %middle.block284
  %indvars.iv61.i149.i.ph = phi i64 [ 0, %.preheader.i148.i.preheader ], [ %15, %middle.block284 ]
  br label %.preheader.i148.i

.preheader.i148.i:                                ; preds = %.preheader.i148.i.preheader365, %.preheader.i148.i
  %indvars.iv61.i149.i = phi i64 [ %indvars.iv.next62.i151.i, %.preheader.i148.i ], [ %indvars.iv61.i149.i.ph, %.preheader.i148.i.preheader365 ] ; 3 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv61.i149.i ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv61.i149.i
  %i.pg = load <2 x float>, ptr %i.pe, align 8, !tbaa !227 ; 3 uses
  %i.ph = load <2 x float>, ptr %i.pf, align 4, !tbaa !227 ; 3 uses
  %i.pi = shufflevector <2 x float> %i.pg, <2 x float> %i.ph, <2 x i32> <i32 0, i32 3>
  %i.pj = shufflevector <2 x float> %i.ph, <2 x float> %i.pg, <2 x i32> <i32 0, i32 3>
  %i.pk = fcmp olt <2 x float> %i.pi, %i.pj
  %i.pl = select <2 x i1> %i.pk, <2 x float> %i.pg, <2 x float> %i.ph
  store <2 x float> %i.pl, ptr %i.pe, align 8, !tbaa !227
  %indvars.iv.next62.i151.i = add nuw nsw i64 %indvars.iv61.i149.i, 2 ; 2 uses
  %i.pm = icmp samesign ult i64 %indvars.iv.next62.i151.i, %i.lo
  br i1 %i.pm, label %.preheader.i148.i, label %cellUnion.exit.i, !llvm.loop !8064

.preheader57.i144.i:                              ; preds = %.preheader57.i144.i.preheader367, %.preheader57.i144.i
  %indvars.iv.i145.i = phi i64 [ %indvars.iv.next.i147.i, %.preheader57.i144.i ], [ %indvars.iv.i145.i.ph, %.preheader57.i144.i.preheader367 ] ; 4 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i145.i ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !227
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.i145.i
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !227
  %.56.i146.i = tail call i32 @llvm.smin.i32(i32 %i.po, i32 %i.pq)
  store i32 %.56.i146.i, ptr %i.pn, align 8, !tbaa !227
  %i.pr = or disjoint i64 %indvars.iv.i145.i, 1   ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pr ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !227
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.pr
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !227
  %i.pw = tail call i32 @llvm.smax.i32(i32 %i.pt, i32 %i.pv)
  store i32 %i.pw, ptr %i.ps, align 4, !tbaa !227
  %indvars.iv.next.i147.i = add nuw nsw i64 %indvars.iv.i145.i, 2 ; 2 uses
  %i.px = icmp samesign ult i64 %indvars.iv.next.i147.i, %i.lo
  br i1 %i.px, label %.preheader57.i144.i, label %cellUnion.exit.i, !llvm.loop !8065

cellUnion.exit.i:                                 ; preds = %.preheader57.i144.i, %.preheader.i148.i, %.preheader57.i.i, %.preheader.i.i, %middle.block303, %middle.block284, %middle.block265, %middle.block246
  %i.py = phi i8 [ %i.lm, %middle.block265 ], [ 0, %middle.block246 ], [ 0, %middle.block284 ], [ %i.mz, %middle.block303 ], [ 0, %.preheader.i148.i ], [ 0, %.preheader.i.i ], [ %i.lm, %.preheader57.i.i ], [ %i.mz, %.preheader57.i144.i ] ; 2 uses
  %indvars.iv.next253.i = add nuw nsw i64 %indvars.iv252.i, 1 ; 2 uses
  %exitcond256.not.i = icmp eq i64 %indvars.iv.next253.i, %i.gk
  br i1 %exitcond256.not.i, label %._crit_edge.i, label %.lr.ph212.i, !llvm.loop !8066

._crit_edge.i:                                    ; preds = %cellUnion.exit.i, %bb.t
  %i.pz = phi i8 [ %i.my, %bb.t ], [ %i.py, %cellUnion.exit.i ] ; 2 uses
  br i1 %i.ln, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %._crit_edge.i, %.split.us.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %.split.us.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.us.i.i = phi double [ %i.qe, %.split.us.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next22.i.i = add nsw i64 %indvars.iv21.i.i, -2
  %i.qa = getelementptr [4 x i8], ptr %4, i64 %indvars.iv21.i.i
  %i.qb = load <2 x float>, ptr %i.qa, align 4, !tbaa !227
  %i.qc = fpext <2 x float> %i.qb to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.qc
  %i.qd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.qe = fadd double %.014.us.i.i, %i.qd         ; 2 uses
  %i.qf = icmp samesign ugt i64 %indvars.iv21.i.i, 3
  br i1 %i.qf, label %.split.us.i.i, label %.split.us.i160.i, !llvm.loop !8067

.split.i.i:                                       ; preds = %._crit_edge.i, %.split.i.i
  %indvars.iv.i153.i = phi i64 [ %indvars.iv.next.i154.i, %.split.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.i.i = phi double [ %i.qk, %.split.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next.i154.i = add nsw i64 %indvars.iv.i153.i, -2
  %i.qg = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i153.i
  %i.qh = load <2 x i32>, ptr %i.qg, align 4, !tbaa !227
  %i.qi = sitofp <2 x i32> %i.qh to <2 x double>  ; 2 uses
  %shift345 = shufflevector <2 x double> %i.qi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop346 = fsub <2 x double> %shift345, %i.qi
  %i.qj = extractelement <2 x double> %foldExtExtBinop346, i64 0
  %i.qk = fadd double %.014.i.i, %i.qj            ; 2 uses
  %i.ql = icmp samesign ugt i64 %indvars.iv.i153.i, 3
  br i1 %i.ql, label %.split.i.i, label %.split.i155.i, !llvm.loop !8067

.split.us.i160.i:                                 ; preds = %.split.us.i.i, %.split.us.i160.i
  %indvars.iv21.i161.i = phi i64 [ %indvars.iv.next22.i163.i, %.split.us.i160.i ], [ %i.lo, %.split.us.i.i ] ; 3 uses
  %.014.us.i162.i = phi double [ %i.qq, %.split.us.i160.i ], [ 0.000000e+00, %.split.us.i.i ]
  %indvars.iv.next22.i163.i = add nsw i64 %indvars.iv21.i161.i, -2
  %i.qm = getelementptr [4 x i8], ptr %5, i64 %indvars.iv21.i161.i
  %i.qn = load <2 x float>, ptr %i.qm, align 4, !tbaa !227
  %i.qo = fpext <2 x float> %i.qn to <2 x double> ; 2 uses
  %shift348 = shufflevector <2 x double> %i.qo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop349 = fsub <2 x double> %shift348, %i.qo
  %i.qp = extractelement <2 x double> %foldExtExtBinop349, i64 0
  %i.qq = fadd double %.014.us.i162.i, %i.qp      ; 2 uses
  %i.qr = icmp samesign ugt i64 %indvars.iv21.i161.i, 3
  br i1 %i.qr, label %.split.us.i160.i, label %cellMargin.exit164.i, !llvm.loop !8067

.split.i155.i:                                    ; preds = %.split.i.i, %.split.i155.i
  %indvars.iv.i156.i = phi i64 [ %indvars.iv.next.i158.i, %.split.i155.i ], [ %i.lo, %.split.i.i ] ; 3 uses
  %.014.i157.i = phi double [ %i.qw, %.split.i155.i ], [ 0.000000e+00, %.split.i.i ]
  %indvars.iv.next.i158.i = add nsw i64 %indvars.iv.i156.i, -2
  %i.qs = getelementptr [4 x i8], ptr %5, i64 %indvars.iv.i156.i
  %i.qt = load <2 x i32>, ptr %i.qs, align 4, !tbaa !227
  %i.qu = sitofp <2 x i32> %i.qt to <2 x double>  ; 2 uses
  %shift351 = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop352 = fsub <2 x double> %shift351, %i.qu
  %i.qv = extractelement <2 x double> %foldExtExtBinop352, i64 0
  %i.qw = fadd double %.014.i157.i, %i.qv         ; 2 uses
  %i.qx = icmp samesign ugt i64 %indvars.iv.i156.i, 3
  br i1 %i.qx, label %.split.i155.i, label %cellMargin.exit164.thread.i, !llvm.loop !8067

cellMargin.exit164.i:                             ; preds = %.split.us.i160.i
  %i.qy = fadd double %.0136214.i, %i.qe
  %i.qz = fadd double %i.qy, %i.qq                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.i.thread, label %.preheader.us.us.i.i

cellMargin.exit164.thread.i:                      ; preds = %.split.i155.i
  %i.ra = fadd double %.0136214.i, %i.qk
  %i.rb = fadd double %i.ra, %i.qw                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.thread.i, label %.thread68.us.i.i

.preheader.us.us.i.i:                             ; preds = %cellMargin.exit164.i, %bb.w
  %indvars.iv94.i.i = phi i64 [ %indvars.iv.next95.i.i, %bb.w ], [ 0, %cellMargin.exit164.i ] ; 5 uses
  %.06477.us.us.us.i.i = phi double [ %i.rs, %bb.w ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv94.i.i
  %i.rd = load float, ptr %i.rc, align 8, !tbaa !227 ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv94.i.i
  %i.rf = load float, ptr %i.re, align 8, !tbaa !227 ; 2 uses
  %i.rg = fcmp ogt float %i.rd, %i.rf
  %i.rh = select i1 %i.rg, float %i.rd, float %i.rf ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv94.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 12
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !227 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv94.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 12
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !227 ; 2 uses
  %i.ro = fcmp olt float %i.rk, %i.rn
  %.in91.i.i = select i1 %i.ro, float %i.rk, float %i.rn ; 2 uses
  %i.rp = fcmp olt float %.in91.i.i, %i.rh
  br i1 %i.rp, label %cellOverlap.exit.i, label %bb.w

bb.w:                                             ; preds = %.preheader.us.us.i.i
  %.ph.us.us.us.i.i = fpext float %i.rh to double
  %i.rq = fpext float %.in91.i.i to double
  %i.rr = fsub double %i.rq, %.ph.us.us.us.i.i
  %i.rs = fmul double %.06477.us.us.us.i.i, %i.rr ; 2 uses
  %indvars.iv.next95.i.i = add nuw nsw i64 %indvars.iv94.i.i, 2 ; 2 uses
  %i.rt = icmp samesign ult i64 %indvars.iv.next95.i.i, %i.lo
  br i1 %i.rt, label %.preheader.us.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8068

.thread68.us.i.i:                                 ; preds = %cellMargin.exit164.thread.i, %bb.x
  %indvars.iv.i167.i = phi i64 [ %indvars.iv.next.i168.i, %bb.x ], [ 0, %cellMargin.exit164.thread.i ] ; 5 uses
  %.06477.us82.i.i = phi double [ %i.sl, %bb.x ], [ 1.000000e+00, %cellMargin.exit164.thread.i ]
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i167.i
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !227
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i167.i
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !227
  %i.ry = tail call i32 @llvm.smax.i32(i32 %i.rv, i32 %i.rx)
  %i.rz = sitofp i32 %i.ry to double              ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i167.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 12
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !227
  %i.sd = sitofp i32 %i.sc to double              ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i167.i
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 12
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !227
  %i.sh = sitofp i32 %i.sg to double              ; 2 uses
  %i.si = fcmp olt double %i.sd, %i.sh
  %.pre-phi.i.i = select i1 %i.si, double %i.sd, double %i.sh ; 2 uses
  %i.sj = fcmp olt double %.pre-phi.i.i, %i.rz
  br i1 %i.sj, label %cellOverlap.exit.i, label %bb.x

bb.x:                                             ; preds = %.thread68.us.i.i
  %i.sk = fsub nnan double %.pre-phi.i.i, %i.rz
  %i.sl = fmul double %.06477.us82.i.i, %i.sk     ; 2 uses
  %indvars.iv.next.i168.i = add nuw nsw i64 %indvars.iv.i167.i, 2 ; 2 uses
  %i.sm = icmp samesign ult i64 %indvars.iv.next.i168.i, %i.lo
  br i1 %i.sm, label %.thread68.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8068

cellOverlap.exit.i:                               ; preds = %.thread68.us.i.i, %bb.x, %.preheader.us.us.i.i, %bb.w
  %i.sn = phi double [ %i.qz, %.preheader.us.us.i.i ], [ %i.qz, %bb.w ], [ %i.rb, %bb.x ], [ %i.rb, %.thread68.us.i.i ] ; 2 uses
  %.us-phi.i169.i.in = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.rs, %bb.w ], [ 0.000000e+00, %.thread68.us.i.i ], [ %i.sl, %bb.x ]
  %.us-phi.i169.i = fadd double %.us-phi.i169.i.in, 0.000000e+00 ; 2 uses
  br i1 %i.ln, label %cellOverlap.exit.i.thread, label %cellOverlap.exit.thread.i

cellOverlap.exit.i.thread:                        ; preds = %cellMargin.exit164.i, %cellOverlap.exit.i
  %.us-phi.i169.i76 = phi double [ %.us-phi.i169.i, %cellOverlap.exit.i ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.so = phi double [ %i.sn, %cellOverlap.exit.i ], [ %i.qz, %cellMargin.exit164.i ]
  switch i8 %i.ml, label %bb.ag [
    i8 5, label %bb.y
    i8 4, label %bb.z
    i8 3, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %cellOverlap.exit.i.thread
  %i.sp = load float, ptr %i.kr, align 4, !tbaa !227
  %i.sq = load float, ptr %i.ks, align 8, !tbaa !227
  %i.sr = fsub float %i.sp, %i.sq
  %i.ss = fpext float %i.sr to double
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %cellOverlap.exit.i.thread
  %.0.i170.i = phi double [ %i.ss, %bb.y ], [ 1.000000e+00, %cellOverlap.exit.i.thread ]
  %i.st = load float, ptr %i.kt, align 4, !tbaa !227
  %i.su = load float, ptr %i.ku, align 8, !tbaa !227
  %i.sv = fsub float %i.st, %i.su
  %i.sw = fpext float %i.sv to double
  %i.sx = fmul double %.0.i170.i, %i.sw
end_hunk_1
begin_hunk_2_@removeNode:bb.a
  %i.ap = shl nuw nsw i64 %i.ao, 16
  %i.aq = or disjoint i64 %i.al, %i.ap
  %i.ar = getelementptr i8, ptr %i.n, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !227
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 8
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = getelementptr i8, ptr %i.n, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  %i.ay = zext i8 %i.ax to i64
  %i.az = add nuw i64 %i.av, %i.ay
  %i.ba = icmp eq i64 %i.az, %i.c
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %nodeParentIndex.exit

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread, label %bb.c, !llvm.loop !7937

.thread:                                          ; preds = %bb.e, %bb.b
  %i.bc = tail call fastcc i32 @nodeRelease(ptr noundef %0, ptr noundef null) ; 0 uses
  br label %bb.t

nodeParentIndex.exit:                             ; preds = %bb.a, %bb.d
  %.047.ph = phi i32 [ -1, %bb.a ], [ %i.bb, %bb.d ]
  store ptr null, ptr %1, align 8, !tbaa !8011
  %i.bd = add nsw i32 %2, 1
  %i.be = tail call fastcc i32 @deleteCell(ptr noundef %0, ptr noundef %i.a, i32 noundef %.047.ph, i32 noundef %i.bd)
  %.fr = freeze i32 %i.be                         ; 2 uses
  %i.bf = tail call fastcc i32 @nodeRelease(ptr noundef %0, ptr noundef %i.a)
  %i.bg = icmp eq i32 %.fr, 0
  %spec.select = select i1 %i.bg, i32 %i.bf, i32 %.fr ; 2 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.f, label %bb.t

bb.f:                                             ; preds = %nodeParentIndex.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8000 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !8010 ; 2 uses
  %i.bl = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.bi, i32 noundef 0)
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %sqlite3_bind_int64.exit

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !171 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 20 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !162
  %i.br = and i16 %i.bq, -28672
  %.not.i.i40 = icmp eq i16 %i.br, 0
  br i1 %.not.i.i40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bo, i64 noundef %i.bk)
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.i:                                             ; preds = %bb.g
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !227
  store i16 4, ptr %i.bp, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.i, %bb.h
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !146
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !23 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.bu, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bv(ptr noundef nonnull %i.bu) #59, !inline_history !855
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.f, %sqlite3VdbeMemSetInt64.exit.i, %bb.j
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !8000
  %i.bx = tail call i32 @sqlite3_step(ptr noundef %i.bw) ; 0 uses
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !8000
  %i.bz = tail call i32 @sqlite3_reset(ptr noundef %i.by) ; 2 uses
  %.not38 = icmp eq i32 %i.bz, 0
  br i1 %.not38, label %bb.k, label %bb.t

bb.k:                                             ; preds = %sqlite3_bind_int64.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8004 ; 3 uses
  %i.cc = load i64, ptr %i.bj, align 8, !tbaa !8010 ; 2 uses
  %i.cd = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.cb, i32 noundef 0)
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %sqlite3_bind_int64.exit44

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !171 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 20 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !162
  %i.cj = and i16 %i.ci, -28672
  %.not.i.i41 = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.cg, i64 noundef %i.cc)
  br label %sqlite3VdbeMemSetInt64.exit.i42

bb.n:                                             ; preds = %bb.l
  store i64 %i.cc, ptr %i.cg, align 8, !tbaa !227
  store i16 4, ptr %i.ch, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit.i42

sqlite3VdbeMemSetInt64.exit.i42:                  ; preds = %bb.n, %bb.m
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !146
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %.not.i8.i43 = icmp eq ptr %i.cm, null
  br i1 %.not.i8.i43, label %sqlite3_bind_int64.exit44, label %bb.o

bb.o:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i42
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.cn(ptr noundef nonnull %i.cm) #59, !inline_history !855
  br label %sqlite3_bind_int64.exit44

sqlite3_bind_int64.exit44:                        ; preds = %bb.k, %sqlite3VdbeMemSetInt64.exit.i42, %bb.o
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !8004
  %i.cp = tail call i32 @sqlite3_step(ptr noundef %i.co) ; 0 uses
  %i.cq = load ptr, ptr %i.ca, align 8, !tbaa !8004
  %i.cr = tail call i32 @sqlite3_reset(ptr noundef %i.cq) ; 2 uses
  %.not39 = icmp eq i32 %i.cr, 0
  br i1 %.not39, label %bb.p, label %bb.t

bb.p:                                             ; preds = %sqlite3_bind_int64.exit44
  %i.cs = load i64, ptr %i.bj, align 8, !tbaa !8010 ; 2 uses
  %.not.i45 = icmp eq i64 %i.cs, 0
  br i1 %.not.i45, label %nodeHashDelete.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = urem i32 %i.cu, 97
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cw
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.0.i46 = phi ptr [ %i.cx, %bb.q ], [ %i.cz, %bb.r ] ; 2 uses
  %i.cy = load ptr, ptr %.0.i46, align 8, !tbaa !7929 ; 2 uses
  %.not12.i = icmp eq ptr %i.cy, %1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  br i1 %.not12.i, label %bb.s, label %bb.r, !llvm.loop !8012

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8013
  store ptr %i.db, ptr %.0.i46, align 8, !tbaa !7929
  br label %nodeHashDelete.exit

nodeHashDelete.exit:                              ; preds = %bb.p, %bb.s
  %i.dc = sext i32 %2 to i64
  store i64 %i.dc, ptr %i.bj, align 8, !tbaa !8010
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8036
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.de, ptr %i.df, align 8, !tbaa !8013
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !8009
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !8009
  store ptr %1, ptr %i.dd, align 8, !tbaa !8036
  br label %bb.t

bb.t:                                             ; preds = %.thread, %sqlite3_bind_int64.exit44, %sqlite3_bind_int64.exit, %nodeParentIndex.exit, %nodeHashDelete.exit
  %.033 = phi i32 [ 0, %nodeHashDelete.exit ], [ %spec.select, %nodeParentIndex.exit ], [ %i.bz, %sqlite3_bind_int64.exit ], [ %i.cr, %sqlite3_bind_int64.exit44 ], [ 267, %.thread ]
  ret i32 %.033
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @fixBoundingBox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #39 {
bb.a:
  %2 = alloca %struct.RtreeCell, align 8          ; 3 uses
  %3 = alloca %struct.RtreeCell, align 8          ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !8011   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7934 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.val = load i8, ptr %i.d, align 1, !tbaa !227
  %i.e = getelementptr i8, ptr %i.c, i64 3
  %.val19 = load i8, ptr %i.e, align 1, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.f = getelementptr i8, ptr %0, i64 39
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !7936 ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7913  ; 2 uses
  %i.k = zext i8 %i.j to i64                      ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.017.i = phi ptr [ %i.aw, %bb.c ], [ %i.g, %bb.b ] ; 9 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.m = load i8, ptr %.017.i, align 1, !tbaa !227
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw i32 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !227
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 16
  %i.t = or disjoint i32 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !227
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !227
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  store i32 %i.ac, ptr %i.l, align 8, !tbaa !227
  %i.ad = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !227
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !227
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !227
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !227
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ar, %i.au
  store i32 %i.av, ptr %i.ae, align 4, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next.i, %i.k
  br i1 %i.ax, label %bb.c, label %nodeGetCell.exit.preheader, !llvm.loop !7881

nodeGetCell.exit.preheader:                       ; preds = %bb.c
  %i.ay = zext i8 %.val to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val19 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %nodeGetCell.exit._crit_edge

.lr.ph:                                           ; preds = %nodeGetCell.exit.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !7964
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = zext i8 %.val.i to i64
  %wide.trip.count = zext nneg i32 %i.bb to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 2)
  %4 = add nsw i64 %umax, -1
  %5 = lshr i64 %4, 1
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %umax58 = tail call i64 @llvm.umax.i64(i64 %i.k, i64 2)
  %i.bi = add nsw i64 %umax58, -1
  %i.bj = lshr i64 %i.bi, 1                       ; 2 uses
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check60 = icmp eq i64 %i.bj, 0
  %n.vec63 = and i64 %i.bk, 9223372036854775806   ; 3 uses
  %i.bl = shl nuw i64 %n.vec63, 1
  %cmp.n75 = icmp eq i64 %i.bk, %n.vec63
  %min.iters.check = icmp ult i8 %i.j, 7
  %n.vec = and i64 %6, 9223372036854775804        ; 3 uses
  %i.bm = shl nuw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %6, %n.vec
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %cellUnion.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %cellUnion.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.bn = mul nuw nsw i64 %indvars.iv, %i.bh
  %i.bo = getelementptr i8, ptr %i.c, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i25, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.017.i24 = phi ptr [ %i.db, %bb.e ], [ %i.bp, %bb.d ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i23 ; 2 uses
  %i.br = load i8, ptr %.017.i24, align 1, !tbaa !227
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %.017.i24, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !227
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = or disjoint i32 %i.bx, %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %.017.i24, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !227
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 8
  %i.cd = or disjoint i32 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.017.i24, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !227
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg
  store i32 %i.ch, ptr %i.bq, align 8, !tbaa !227
  %i.ci = getelementptr inbounds nuw i8, ptr %.017.i24, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !227
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw i32 %i.cl, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %.017.i24, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !227
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 16
  %i.cr = or disjoint i32 %i.cq, %i.cm
  %i.cs = getelementptr inbounds nuw i8, ptr %.017.i24, i64 6
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !227
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = or disjoint i32 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %.017.i24, i64 7
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !227
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz
  store i32 %i.da, ptr %i.cj, align 4, !tbaa !227
  %i.db = getelementptr inbounds nuw i8, ptr %.017.i24, i64 8
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 2 ; 2 uses
  %i.dc = icmp samesign ult i64 %indvars.iv.next.i25, %i.k
  br i1 %i.dc, label %bb.e, label %nodeGetCell.exit26, !llvm.loop !7881

nodeGetCell.exit26:                               ; preds = %bb.e
  br i1 %i.bg, label %.preheader.i.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check60, label %.preheader57.i.preheader79, label %vector.body64

vector.body64:                                    ; preds = %.preheader57.i.preheader, %vector.body64
  %index65 = phi i64 [ %index.next73, %vector.body64 ], [ 0, %.preheader57.i.preheader ] ; 2 uses
  %i.dd = shl i64 %index65, 1                     ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dd ; 2 uses
  %wide.vec66 = load <4 x i32>, ptr %i.de, align 8, !tbaa !227 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dd
  %wide.vec69 = load <4 x i32>, ptr %i.df, align 8, !tbaa !227 ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec66, <4 x i32> %wide.vec69)
  %i.dh = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec66, <4 x i32> %wide.vec69)
  %interleaved.vec72 = shufflevector <4 x i32> %i.dg, <4 x i32> %i.dh, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec72, ptr %i.de, align 8, !tbaa !227
  %index.next73 = add nuw i64 %index65, 2         ; 2 uses
  %i.di = icmp eq i64 %index.next73, %n.vec63
  br i1 %i.di, label %middle.block74, label %vector.body64, !llvm.loop !8094

middle.block74:                                   ; preds = %vector.body64
  br i1 %cmp.n75, label %cellUnion.exit, label %.preheader57.i.preheader79

.preheader57.i.preheader79:                       ; preds = %.preheader57.i.preheader, %middle.block74
  %indvars.iv.i27.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.bl, %middle.block74 ]
  br label %.preheader57.i

.preheader.i.preheader:                           ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check, label %.preheader.i.preheader78, label %vector.body

vector.body:                                      ; preds = %.preheader.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.dj = shl i64 %index, 1                       ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dj ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.dk, align 8, !tbaa !227 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec54 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dj
  %wide.vec55 = load <8 x float>, ptr %i.dl, align 8, !tbaa !227 ; 2 uses
  %strided.vec56 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec57 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dm = fcmp olt <4 x float> %strided.vec, %strided.vec56
  %i.dn = select <4 x i1> %i.dm, <4 x float> %strided.vec, <4 x float> %strided.vec56
  %i.do = fcmp ogt <4 x float> %strided.vec54, %strided.vec57
  %i.dp = select <4 x i1> %i.do, <4 x float> %strided.vec54, <4 x float> %strided.vec57
  %interleaved.vec = shufflevector <4 x float> %i.dn, <4 x float> %i.dp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.dk, align 8, !tbaa !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !8095

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %cellUnion.exit, label %.preheader.i.preheader78

.preheader.i.preheader78:                         ; preds = %.preheader.i.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bm, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader78, %.preheader.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i ], [ %indvars.iv61.i.ph, %.preheader.i.preheader78 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv61.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv61.i
  %i.dt = load <2 x float>, ptr %i.dr, align 8, !tbaa !227 ; 3 uses
  %i.du = load <2 x float>, ptr %i.ds, align 8, !tbaa !227 ; 3 uses
  %i.dv = shufflevector <2 x float> %i.dt, <2 x float> %i.du, <2 x i32> <i32 0, i32 3>
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.dx = fcmp olt <2 x float> %i.dv, %i.dw
  %i.dy = select <2 x i1> %i.dx, <2 x float> %i.dt, <2 x float> %i.du
  store <2 x float> %i.dy, ptr %i.dr, align 8, !tbaa !227
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next62.i, %i.k
  br i1 %i.dz, label %.preheader.i, label %cellUnion.exit, !llvm.loop !8096

.preheader57.i:                                   ; preds = %.preheader57.i.preheader79, %.preheader57.i
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %.preheader57.i ], [ %indvars.iv.i27.ph, %.preheader57.i.preheader79 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i27 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !227
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i27
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !227
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.ed)
  store i32 %.56.i, ptr %i.ea, align 8, !tbaa !227
  %i.ee = or disjoint i64 %indvars.iv.i27, 1      ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !227
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ee
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !227
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 %i.ei)
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !227
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 2 ; 2 uses
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i28, %i.k
  br i1 %i.ek, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !8097

cellUnion.exit:                                   ; preds = %.preheader57.i, %.preheader.i, %middle.block74, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nodeGetCell.exit._crit_edge, label %bb.d, !llvm.loop !8098

nodeGetCell.exit._crit_edge:                      ; preds = %cellUnion.exit, %nodeGetCell.exit.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !8010 ; 9 uses
  %i.en = getelementptr i8, ptr %i.a, i64 24
  %.val.i29 = load ptr, ptr %i.en, align 8, !tbaa !7934 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2
  %.val.i.i = load i8, ptr %i.eo, align 1, !tbaa !227
  %i.ep = getelementptr i8, ptr %.val.i29, i64 3
  %.val11.i.i = load i8, ptr %i.ep, align 1, !tbaa !227
  %i.eq = zext i8 %.val.i.i to i32
  %i.er = shl nuw nsw i32 %i.eq, 8
  %i.es = zext i8 %.val11.i.i to i32
  %i.et = or disjoint i32 %i.er, %i.es            ; 2 uses
  %.not.i.i = icmp eq i32 %i.et, 0
  br i1 %.not.i.i, label %nodeParentIndex.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %nodeGetCell.exit._crit_edge
  %i.eu = zext i8 %.val.i to i64                  ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.et to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 3 uses
  %i.ev = mul nuw nsw i64 %indvars.iv.i.i, %i.eu
  %i.ew = getelementptr i8, ptr %.val.i29, i64 %i.ev ; 8 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !227
  %i.ez = zext i8 %i.ey to i64
  %i.fa = shl nuw i64 %i.ez, 56
  %i.fb = getelementptr i8, ptr %i.ew, i64 5
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !227
  %i.fd = zext i8 %i.fc to i64
  %i.fe = shl nuw nsw i64 %i.fd, 48
  %i.ff = or disjoint i64 %i.fe, %i.fa
  %i.fg = getelementptr i8, ptr %i.ew, i64 6
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !227
  %i.fi = zext i8 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 40
  %i.fk = or disjoint i64 %i.ff, %i.fj
  %i.fl = getelementptr i8, ptr %i.ew, i64 7
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !227
  %i.fn = zext i8 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 32
  %i.fp = or disjoint i64 %i.fk, %i.fo
end_hunk_2
