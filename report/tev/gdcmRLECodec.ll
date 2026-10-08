Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmRLECodec?download=true
inline.NumInlined: 816
inline.NumDeleted: 407
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4gdcm8RLECodec4CodeERKNS_11DataElementERS1_:_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit
  %i.ib = or i1 %found.conflict731, %stride.check732
  %min.iters.check737 = icmp ult i64 %i.gh, 68
  %i.ic = and i64 %umax734, 15                    ; 2 uses
  %i.id = icmp eq i64 %i.ic, 0
  %i.ie = select i1 %i.id, i64 16, i64 %i.ic      ; 2 uses
  %n.vec739 = sub nsw i64 %umax734, %i.ie         ; 3 uses
  %min.epilog.iters.check748 = icmp samesign ult i64 %i.ie, 9
  %i.if = and i64 %umax734, 7                     ; 2 uses
  %i.ig = icmp eq i64 %i.if, 0
  %i.ih = select i1 %i.ig, i64 8, i64 %i.if
  %n.vec750 = sub nsw i64 %umax734, %i.ih         ; 2 uses
  br label %.preheader448

bb.bu:                                            ; preds = %bb.bs
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body393

.preheader448:                                    ; preds = %.preheader448.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader448.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ij = mul i64 %i.gh, %indvars.iv              ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0224, i64 %i.ij ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0218433, i64 %i.ij ; 100 uses
  br i1 %.not603, label %._crit_edge, label %iter.check845

iter.check845:                                    ; preds = %.preheader448
  %brmerge = select i1 %min.iters.check835, i1 true, i1 %i.gx
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check836

vector.main.loop.iter.check836:                   ; preds = %iter.check845
  br i1 %min.iters.check837, label %vec.epilog.ph849, label %vector.body840

vector.body840:                                   ; preds = %vector.main.loop.iter.check836, %vector.body840
  %index841 = phi i64 [ %index.next842, %vector.body840 ], [ 0, %vector.main.loop.iter.check836 ] ; 18 uses
  %i.im = shl nuw i64 %index841, 2
  %i.in = shl i64 %index841, 2
  %i.io = shl i64 %index841, 2
  %i.ip = shl i64 %index841, 2
  %i.iq = shl i64 %index841, 2
  %i.ir = shl i64 %index841, 2
  %i.is = shl i64 %index841, 2
  %i.it = shl i64 %index841, 2
  %i.iu = shl i64 %index841, 2
  %i.iv = shl i64 %index841, 2
  %i.iw = shl i64 %index841, 2
  %i.ix = shl i64 %index841, 2
  %i.iy = shl i64 %index841, 2
  %i.iz = shl i64 %index841, 2
  %i.ja = shl i64 %index841, 2
  %i.jb = shl i64 %index841, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.im
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.in
  %i.je = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.io
  %i.jf = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ip
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iq
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ir
  %i.ji = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.is
  %i.jj = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.it
  %i.jk = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iu
  %i.jl = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iv
  %i.jm = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iw
  %i.jn = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ix
  %i.jo = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iy
  %i.jp = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iz
  %i.jq = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ja
  %i.jr = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jb
  %i.js = getelementptr inbounds nuw i8, ptr %i.jc, i64 3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jd, i64 7
  %i.ju = getelementptr inbounds nuw i8, ptr %i.je, i64 11
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jf, i64 15
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 19
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 23
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 27
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jj, i64 31
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jk, i64 35
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 39
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jm, i64 43
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jn, i64 47
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 51
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jp, i64 55
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jq, i64 59
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 63
  %i.ki = load i8, ptr %i.js, align 1, !tbaa !47, !alias.scope !180
  %i.kj = load i8, ptr %i.jt, align 1, !tbaa !47, !alias.scope !180
  %i.kk = load i8, ptr %i.ju, align 1, !tbaa !47, !alias.scope !180
  %i.kl = load i8, ptr %i.jv, align 1, !tbaa !47, !alias.scope !180
  %i.km = load i8, ptr %i.jw, align 1, !tbaa !47, !alias.scope !180
  %i.kn = load i8, ptr %i.jx, align 1, !tbaa !47, !alias.scope !180
  %i.ko = load i8, ptr %i.jy, align 1, !tbaa !47, !alias.scope !180
  %i.kp = load i8, ptr %i.jz, align 1, !tbaa !47, !alias.scope !180
  %i.kq = load i8, ptr %i.ka, align 1, !tbaa !47, !alias.scope !180
  %i.kr = load i8, ptr %i.kb, align 1, !tbaa !47, !alias.scope !180
  %i.ks = load i8, ptr %i.kc, align 1, !tbaa !47, !alias.scope !180
  %i.kt = load i8, ptr %i.kd, align 1, !tbaa !47, !alias.scope !180
  %i.ku = load i8, ptr %i.ke, align 1, !tbaa !47, !alias.scope !180
  %i.kv = load i8, ptr %i.kf, align 1, !tbaa !47, !alias.scope !180
  %i.kw = load i8, ptr %i.kg, align 1, !tbaa !47, !alias.scope !180
  %i.kx = load i8, ptr %i.kh, align 1, !tbaa !47, !alias.scope !180
  %i.ky = insertelement <16 x i8> poison, i8 %i.ki, i64 0
  %i.kz = insertelement <16 x i8> %i.ky, i8 %i.kj, i64 1
  %i.la = insertelement <16 x i8> %i.kz, i8 %i.kk, i64 2
  %i.lb = insertelement <16 x i8> %i.la, i8 %i.kl, i64 3
  %i.lc = insertelement <16 x i8> %i.lb, i8 %i.km, i64 4
  %i.ld = insertelement <16 x i8> %i.lc, i8 %i.kn, i64 5
  %i.le = insertelement <16 x i8> %i.ld, i8 %i.ko, i64 6
  %i.lf = insertelement <16 x i8> %i.le, i8 %i.kp, i64 7
  %i.lg = insertelement <16 x i8> %i.lf, i8 %i.kq, i64 8
  %i.lh = insertelement <16 x i8> %i.lg, i8 %i.kr, i64 9
  %i.li = insertelement <16 x i8> %i.lh, i8 %i.ks, i64 10
  %i.lj = insertelement <16 x i8> %i.li, i8 %i.kt, i64 11
  %i.lk = insertelement <16 x i8> %i.lj, i8 %i.ku, i64 12
  %i.ll = insertelement <16 x i8> %i.lk, i8 %i.kv, i64 13
  %i.lm = insertelement <16 x i8> %i.ll, i8 %i.kw, i64 14
  %i.ln = insertelement <16 x i8> %i.lm, i8 %i.kx, i64 15
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index841
  store <16 x i8> %i.ln, ptr %i.lo, align 1, !tbaa !47, !alias.scope !181, !noalias !180
  %index.next842 = add nuw i64 %index841, 16      ; 2 uses
  %i.lp = icmp eq i64 %index.next842, %n.vec839
  br i1 %i.lp, label %vec.epilog.iter.check847, label %vector.body840, !llvm.loop !120

vec.epilog.iter.check847:                         ; preds = %vector.body840
  br i1 %min.epilog.iters.check848, label %.lr.ph.preheader, label %vec.epilog.ph849, !prof !182

.lr.ph.preheader:                                 ; preds = %vec.epilog.vector.body851, %iter.check845, %vec.epilog.iter.check847
  %.0216564.ph = phi i64 [ 0, %iter.check845 ], [ %n.vec839, %vec.epilog.iter.check847 ], [ %n.vec850, %vec.epilog.vector.body851 ]
  br label %.lr.ph

vec.epilog.ph849:                                 ; preds = %vector.main.loop.iter.check836, %vec.epilog.iter.check847
  %vec.epilog.resume.val844 = phi i64 [ %n.vec839, %vec.epilog.iter.check847 ], [ 0, %vector.main.loop.iter.check836 ]
  br label %vec.epilog.vector.body851

vec.epilog.vector.body851:                        ; preds = %vec.epilog.vector.body851, %vec.epilog.ph849
  %index852 = phi i64 [ %vec.epilog.resume.val844, %vec.epilog.ph849 ], [ %index.next853, %vec.epilog.vector.body851 ] ; 10 uses
  %i.lq = shl nuw i64 %index852, 2
  %i.lr = shl i64 %index852, 2
  %i.ls = shl i64 %index852, 2
  %i.lt = shl i64 %index852, 2
  %i.lu = shl i64 %index852, 2
  %i.lv = shl i64 %index852, 2
  %i.lw = shl i64 %index852, 2
  %i.lx = shl i64 %index852, 2
  %i.ly = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.lq
  %i.lz = getelementptr i8, ptr %i.il, i64 %i.lr
  %i.ma = getelementptr i8, ptr %i.il, i64 %i.ls
  %i.mb = getelementptr i8, ptr %i.il, i64 %i.lt
  %i.mc = getelementptr i8, ptr %i.il, i64 %i.lu
  %i.md = getelementptr i8, ptr %i.il, i64 %i.lv
  %i.me = getelementptr i8, ptr %i.il, i64 %i.lw
  %i.mf = getelementptr i8, ptr %i.il, i64 %i.lx
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 3
  %i.mh = getelementptr i8, ptr %i.lz, i64 7
  %i.mi = getelementptr i8, ptr %i.ma, i64 11
  %i.mj = getelementptr i8, ptr %i.mb, i64 15
  %i.mk = getelementptr i8, ptr %i.mc, i64 19
  %i.ml = getelementptr i8, ptr %i.md, i64 23
  %i.mm = getelementptr i8, ptr %i.me, i64 27
  %i.mn = getelementptr i8, ptr %i.mf, i64 31
  %i.mo = load i8, ptr %i.mg, align 1, !tbaa !47, !alias.scope !180
  %i.mp = load i8, ptr %i.mh, align 1, !tbaa !47, !alias.scope !180
  %i.mq = load i8, ptr %i.mi, align 1, !tbaa !47, !alias.scope !180
  %i.mr = load i8, ptr %i.mj, align 1, !tbaa !47, !alias.scope !180
  %i.ms = load i8, ptr %i.mk, align 1, !tbaa !47, !alias.scope !180
  %i.mt = load i8, ptr %i.ml, align 1, !tbaa !47, !alias.scope !180
  %i.mu = load i8, ptr %i.mm, align 1, !tbaa !47, !alias.scope !180
  %i.mv = load i8, ptr %i.mn, align 1, !tbaa !47, !alias.scope !180
  %i.mw = insertelement <8 x i8> poison, i8 %i.mo, i64 0
  %i.mx = insertelement <8 x i8> %i.mw, i8 %i.mp, i64 1
  %i.my = insertelement <8 x i8> %i.mx, i8 %i.mq, i64 2
  %i.mz = insertelement <8 x i8> %i.my, i8 %i.mr, i64 3
  %i.na = insertelement <8 x i8> %i.mz, i8 %i.ms, i64 4
  %i.nb = insertelement <8 x i8> %i.na, i8 %i.mt, i64 5
  %i.nc = insertelement <8 x i8> %i.nb, i8 %i.mu, i64 6
  %i.nd = insertelement <8 x i8> %i.nc, i8 %i.mv, i64 7
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ik, i64 %index852
  store <8 x i8> %i.nd, ptr %i.ne, align 1, !tbaa !47, !alias.scope !181, !noalias !180
  %index.next853 = add nuw i64 %index852, 8       ; 2 uses
  %i.nf = icmp eq i64 %index.next853, %n.vec850
  br i1 %i.nf, label %.lr.ph.preheader, label %vec.epilog.vector.body851, !llvm.loop !121

bb.bv:                                            ; preds = %.lr.ph577
  %i.ng = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ng, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 489, ptr noundef nonnull @.str.2)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @__cxa_throw(ptr nonnull %i.ng, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.hl unwind label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ng) #25
  br label %.body393

bb.by:                                            ; preds = %bb.bw
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body393

iter.check813:                                    ; preds = %.lr.ph
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.gk ; 3 uses
  %brmerge874 = select i1 %min.iters.check803, i1 true, i1 %i.hh
  br i1 %brmerge874, label %.lr.ph566.preheader, label %vector.main.loop.iter.check804

vector.main.loop.iter.check804:                   ; preds = %iter.check813
  br i1 %min.iters.check805, label %vec.epilog.ph817, label %vector.body808

vector.body808:                                   ; preds = %vector.main.loop.iter.check804, %vector.body808
  %index809 = phi i64 [ %index.next810, %vector.body808 ], [ 0, %vector.main.loop.iter.check804 ] ; 18 uses
  %i.nj = shl nuw i64 %index809, 2
  %i.nk = shl i64 %index809, 2
  %i.nl = shl i64 %index809, 2
  %i.nm = shl i64 %index809, 2
  %i.nn = shl i64 %index809, 2
  %i.no = shl i64 %index809, 2
  %i.np = shl i64 %index809, 2
  %i.nq = shl i64 %index809, 2
  %i.nr = shl i64 %index809, 2
  %i.ns = shl i64 %index809, 2
  %i.nt = shl i64 %index809, 2
  %i.nu = shl i64 %index809, 2
  %i.nv = shl i64 %index809, 2
  %i.nw = shl i64 %index809, 2
  %i.nx = shl i64 %index809, 2
  %i.ny = shl i64 %index809, 2
  %i.nz = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nj
  %i.oa = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nk
  %i.ob = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nl
  %i.oc = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nm
  %i.od = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nn
  %i.oe = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.no
  %i.of = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.np
  %i.og = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nq
  %i.oh = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nr
  %i.oi = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ns
  %i.oj = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nt
  %i.ok = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nu
  %i.ol = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nv
  %i.om = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nw
  %i.on = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.nx
  %i.oo = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ny
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oa, i64 6
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 10
  %i.os = getelementptr inbounds nuw i8, ptr %i.oc, i64 14
  %i.ot = getelementptr inbounds nuw i8, ptr %i.od, i64 18
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oe, i64 22
  %i.ov = getelementptr inbounds nuw i8, ptr %i.of, i64 26
  %i.ow = getelementptr inbounds nuw i8, ptr %i.og, i64 30
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oh, i64 34
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oi, i64 38
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oj, i64 42
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ok, i64 46
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ol, i64 50
  %i.pc = getelementptr inbounds nuw i8, ptr %i.om, i64 54
  %i.pd = getelementptr inbounds nuw i8, ptr %i.on, i64 58
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oo, i64 62
  %i.pf = load i8, ptr %i.op, align 1, !tbaa !47, !alias.scope !183
  %i.pg = load i8, ptr %i.oq, align 1, !tbaa !47, !alias.scope !183
  %i.ph = load i8, ptr %i.or, align 1, !tbaa !47, !alias.scope !183
  %i.pi = load i8, ptr %i.os, align 1, !tbaa !47, !alias.scope !183
  %i.pj = load i8, ptr %i.ot, align 1, !tbaa !47, !alias.scope !183
  %i.pk = load i8, ptr %i.ou, align 1, !tbaa !47, !alias.scope !183
  %i.pl = load i8, ptr %i.ov, align 1, !tbaa !47, !alias.scope !183
  %i.pm = load i8, ptr %i.ow, align 1, !tbaa !47, !alias.scope !183
  %i.pn = load i8, ptr %i.ox, align 1, !tbaa !47, !alias.scope !183
  %i.po = load i8, ptr %i.oy, align 1, !tbaa !47, !alias.scope !183
  %i.pp = load i8, ptr %i.oz, align 1, !tbaa !47, !alias.scope !183
  %i.pq = load i8, ptr %i.pa, align 1, !tbaa !47, !alias.scope !183
  %i.pr = load i8, ptr %i.pb, align 1, !tbaa !47, !alias.scope !183
  %i.ps = load i8, ptr %i.pc, align 1, !tbaa !47, !alias.scope !183
  %i.pt = load i8, ptr %i.pd, align 1, !tbaa !47, !alias.scope !183
  %i.pu = load i8, ptr %i.pe, align 1, !tbaa !47, !alias.scope !183
  %i.pv = insertelement <16 x i8> poison, i8 %i.pf, i64 0
  %i.pw = insertelement <16 x i8> %i.pv, i8 %i.pg, i64 1
  %i.px = insertelement <16 x i8> %i.pw, i8 %i.ph, i64 2
  %i.py = insertelement <16 x i8> %i.px, i8 %i.pi, i64 3
  %i.pz = insertelement <16 x i8> %i.py, i8 %i.pj, i64 4
  %i.qa = insertelement <16 x i8> %i.pz, i8 %i.pk, i64 5
  %i.qb = insertelement <16 x i8> %i.qa, i8 %i.pl, i64 6
  %i.qc = insertelement <16 x i8> %i.qb, i8 %i.pm, i64 7
  %i.qd = insertelement <16 x i8> %i.qc, i8 %i.pn, i64 8
  %i.qe = insertelement <16 x i8> %i.qd, i8 %i.po, i64 9
  %i.qf = insertelement <16 x i8> %i.qe, i8 %i.pp, i64 10
  %i.qg = insertelement <16 x i8> %i.qf, i8 %i.pq, i64 11
  %i.qh = insertelement <16 x i8> %i.qg, i8 %i.pr, i64 12
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 13
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 14
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 15
  %i.ql = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index809
  store <16 x i8> %i.qk, ptr %i.ql, align 1, !tbaa !47, !alias.scope !184, !noalias !183
  %index.next810 = add nuw i64 %index809, 16      ; 2 uses
  %i.qm = icmp eq i64 %index.next810, %n.vec807
  br i1 %i.qm, label %vec.epilog.iter.check815, label %vector.body808, !llvm.loop !125

vec.epilog.iter.check815:                         ; preds = %vector.body808
  br i1 %min.epilog.iters.check816, label %.lr.ph566.preheader, label %vec.epilog.ph817, !prof !182

.lr.ph566.preheader:                              ; preds = %vec.epilog.vector.body819, %iter.check813, %vec.epilog.iter.check815
  %.0215565.ph = phi i64 [ 0, %iter.check813 ], [ %n.vec807, %vec.epilog.iter.check815 ], [ %n.vec818, %vec.epilog.vector.body819 ]
  br label %.lr.ph566

vec.epilog.ph817:                                 ; preds = %vector.main.loop.iter.check804, %vec.epilog.iter.check815
  %vec.epilog.resume.val812 = phi i64 [ %n.vec807, %vec.epilog.iter.check815 ], [ 0, %vector.main.loop.iter.check804 ]
  br label %vec.epilog.vector.body819

vec.epilog.vector.body819:                        ; preds = %vec.epilog.vector.body819, %vec.epilog.ph817
  %index820 = phi i64 [ %vec.epilog.resume.val812, %vec.epilog.ph817 ], [ %index.next821, %vec.epilog.vector.body819 ] ; 10 uses
  %i.qn = shl nuw i64 %index820, 2
  %i.qo = shl i64 %index820, 2
  %i.qp = shl i64 %index820, 2
  %i.qq = shl i64 %index820, 2
  %i.qr = shl i64 %index820, 2
  %i.qs = shl i64 %index820, 2
  %i.qt = shl i64 %index820, 2
  %i.qu = shl i64 %index820, 2
  %i.qv = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.qn
  %i.qw = getelementptr i8, ptr %i.il, i64 %i.qo
  %i.qx = getelementptr i8, ptr %i.il, i64 %i.qp
  %i.qy = getelementptr i8, ptr %i.il, i64 %i.qq
  %i.qz = getelementptr i8, ptr %i.il, i64 %i.qr
  %i.ra = getelementptr i8, ptr %i.il, i64 %i.qs
  %i.rb = getelementptr i8, ptr %i.il, i64 %i.qt
  %i.rc = getelementptr i8, ptr %i.il, i64 %i.qu
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qv, i64 2
  %i.re = getelementptr i8, ptr %i.qw, i64 6
  %i.rf = getelementptr i8, ptr %i.qx, i64 10
  %i.rg = getelementptr i8, ptr %i.qy, i64 14
  %i.rh = getelementptr i8, ptr %i.qz, i64 18
  %i.ri = getelementptr i8, ptr %i.ra, i64 22
  %i.rj = getelementptr i8, ptr %i.rb, i64 26
  %i.rk = getelementptr i8, ptr %i.rc, i64 30
  %i.rl = load i8, ptr %i.rd, align 1, !tbaa !47, !alias.scope !183
  %i.rm = load i8, ptr %i.re, align 1, !tbaa !47, !alias.scope !183
  %i.rn = load i8, ptr %i.rf, align 1, !tbaa !47, !alias.scope !183
  %i.ro = load i8, ptr %i.rg, align 1, !tbaa !47, !alias.scope !183
  %i.rp = load i8, ptr %i.rh, align 1, !tbaa !47, !alias.scope !183
  %i.rq = load i8, ptr %i.ri, align 1, !tbaa !47, !alias.scope !183
  %i.rr = load i8, ptr %i.rj, align 1, !tbaa !47, !alias.scope !183
  %i.rs = load i8, ptr %i.rk, align 1, !tbaa !47, !alias.scope !183
  %i.rt = insertelement <8 x i8> poison, i8 %i.rl, i64 0
  %i.ru = insertelement <8 x i8> %i.rt, i8 %i.rm, i64 1
  %i.rv = insertelement <8 x i8> %i.ru, i8 %i.rn, i64 2
  %i.rw = insertelement <8 x i8> %i.rv, i8 %i.ro, i64 3
  %i.rx = insertelement <8 x i8> %i.rw, i8 %i.rp, i64 4
  %i.ry = insertelement <8 x i8> %i.rx, i8 %i.rq, i64 5
  %i.rz = insertelement <8 x i8> %i.ry, i8 %i.rr, i64 6
  %i.sa = insertelement <8 x i8> %i.rz, i8 %i.rs, i64 7
  %i.sb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index820
  store <8 x i8> %i.sa, ptr %i.sb, align 1, !tbaa !47, !alias.scope !184, !noalias !183
  %index.next821 = add nuw i64 %index820, 8       ; 2 uses
  %i.sc = icmp eq i64 %index.next821, %n.vec818
  br i1 %i.sc, label %.lr.ph566.preheader, label %vec.epilog.vector.body819, !llvm.loop !126

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0216564 = phi i64 [ %i.si, %.lr.ph ], [ %.0216564.ph, %.lr.ph.preheader ] ; 3 uses
  %i.sd = shl nuw i64 %.0216564, 2
  %i.se = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 3
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !47
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0216564
  store i8 %i.sg, ptr %i.sh, align 1, !tbaa !47
  %i.si = add nuw nsw i64 %.0216564, 1            ; 2 uses
  %i.sj = icmp samesign ult i64 %i.si, %i.gk
  br i1 %i.sj, label %.lr.ph, label %iter.check813, !llvm.loop !127

iter.check779:                                    ; preds = %.lr.ph566
  %invariant.gep569 = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.gm ; 3 uses
  %brmerge875 = select i1 %min.iters.check769, i1 true, i1 %i.hr
  br i1 %brmerge875, label %vec.epilog.scalar.ph780.preheader, label %vector.main.loop.iter.check770

vector.main.loop.iter.check770:                   ; preds = %iter.check779
  br i1 %min.iters.check771, label %vec.epilog.ph783, label %vector.body774

vector.body774:                                   ; preds = %vector.main.loop.iter.check770, %vector.body774
  %index775 = phi i64 [ %index.next776, %vector.body774 ], [ 0, %vector.main.loop.iter.check770 ] ; 18 uses
  %i.sk = shl nuw i64 %index775, 2
  %i.sl = shl i64 %index775, 2
  %i.sm = shl i64 %index775, 2
  %i.sn = shl i64 %index775, 2
  %i.so = shl i64 %index775, 2
  %i.sp = shl i64 %index775, 2
  %i.sq = shl i64 %index775, 2
  %i.sr = shl i64 %index775, 2
  %i.ss = shl i64 %index775, 2
  %i.st = shl i64 %index775, 2
  %i.su = shl i64 %index775, 2
  %i.sv = shl i64 %index775, 2
  %i.sw = shl i64 %index775, 2
  %i.sx = shl i64 %index775, 2
  %i.sy = shl i64 %index775, 2
  %i.sz = shl i64 %index775, 2
  %i.ta = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sk
  %i.tb = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sl
  %i.tc = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sm
  %i.td = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sn
  %i.te = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.so
  %i.tf = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sp
  %i.tg = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sq
  %i.th = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sr
  %i.ti = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ss
  %i.tj = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.st
  %i.tk = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.su
  %i.tl = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sv
  %i.tm = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sw
  %i.tn = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sx
  %i.to = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sy
  %i.tp = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.sz
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ta, i64 1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tb, i64 5
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tc, i64 9
  %i.tt = getelementptr inbounds nuw i8, ptr %i.td, i64 13
  %i.tu = getelementptr inbounds nuw i8, ptr %i.te, i64 17
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tf, i64 21
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tg, i64 25
  %i.tx = getelementptr inbounds nuw i8, ptr %i.th, i64 29
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ti, i64 33
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tj, i64 37
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tk, i64 41
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tl, i64 45
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tm, i64 49
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tn, i64 53
  %i.ue = getelementptr inbounds nuw i8, ptr %i.to, i64 57
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tp, i64 61
  %i.ug = load i8, ptr %i.tq, align 1, !tbaa !47, !alias.scope !185
  %i.uh = load i8, ptr %i.tr, align 1, !tbaa !47, !alias.scope !185
  %i.ui = load i8, ptr %i.ts, align 1, !tbaa !47, !alias.scope !185
  %i.uj = load i8, ptr %i.tt, align 1, !tbaa !47, !alias.scope !185
  %i.uk = load i8, ptr %i.tu, align 1, !tbaa !47, !alias.scope !185
  %i.ul = load i8, ptr %i.tv, align 1, !tbaa !47, !alias.scope !185
  %i.um = load i8, ptr %i.tw, align 1, !tbaa !47, !alias.scope !185
  %i.un = load i8, ptr %i.tx, align 1, !tbaa !47, !alias.scope !185
  %i.uo = load i8, ptr %i.ty, align 1, !tbaa !47, !alias.scope !185
  %i.up = load i8, ptr %i.tz, align 1, !tbaa !47, !alias.scope !185
  %i.uq = load i8, ptr %i.ua, align 1, !tbaa !47, !alias.scope !185
  %i.ur = load i8, ptr %i.ub, align 1, !tbaa !47, !alias.scope !185
  %i.us = load i8, ptr %i.uc, align 1, !tbaa !47, !alias.scope !185
  %i.ut = load i8, ptr %i.ud, align 1, !tbaa !47, !alias.scope !185
  %i.uu = load i8, ptr %i.ue, align 1, !tbaa !47, !alias.scope !185
  %i.uv = load i8, ptr %i.uf, align 1, !tbaa !47, !alias.scope !185
  %i.uw = insertelement <16 x i8> poison, i8 %i.ug, i64 0
  %i.ux = insertelement <16 x i8> %i.uw, i8 %i.uh, i64 1
  %i.uy = insertelement <16 x i8> %i.ux, i8 %i.ui, i64 2
  %i.uz = insertelement <16 x i8> %i.uy, i8 %i.uj, i64 3
  %i.va = insertelement <16 x i8> %i.uz, i8 %i.uk, i64 4
  %i.vb = insertelement <16 x i8> %i.va, i8 %i.ul, i64 5
  %i.vc = insertelement <16 x i8> %i.vb, i8 %i.um, i64 6
  %i.vd = insertelement <16 x i8> %i.vc, i8 %i.un, i64 7
  %i.ve = insertelement <16 x i8> %i.vd, i8 %i.uo, i64 8
  %i.vf = insertelement <16 x i8> %i.ve, i8 %i.up, i64 9
  %i.vg = insertelement <16 x i8> %i.vf, i8 %i.uq, i64 10
  %i.vh = insertelement <16 x i8> %i.vg, i8 %i.ur, i64 11
  %i.vi = insertelement <16 x i8> %i.vh, i8 %i.us, i64 12
  %i.vj = insertelement <16 x i8> %i.vi, i8 %i.ut, i64 13
  %i.vk = insertelement <16 x i8> %i.vj, i8 %i.uu, i64 14
  %i.vl = insertelement <16 x i8> %i.vk, i8 %i.uv, i64 15
  %i.vm = getelementptr inbounds nuw i8, ptr %invariant.gep569, i64 %index775
  store <16 x i8> %i.vl, ptr %i.vm, align 1, !tbaa !47, !alias.scope !186, !noalias !185
  %index.next776 = add nuw i64 %index775, 16      ; 2 uses
  %i.vn = icmp eq i64 %index.next776, %n.vec773
  br i1 %i.vn, label %vec.epilog.iter.check781, label %vector.body774, !llvm.loop !131

vec.epilog.iter.check781:                         ; preds = %vector.body774
  br i1 %min.epilog.iters.check782, label %vec.epilog.scalar.ph780.preheader, label %vec.epilog.ph783, !prof !182

vec.epilog.scalar.ph780.preheader:                ; preds = %vec.epilog.vector.body785, %iter.check779, %vec.epilog.iter.check781
  %.0214567.ph = phi i64 [ 0, %iter.check779 ], [ %n.vec773, %vec.epilog.iter.check781 ], [ %n.vec784, %vec.epilog.vector.body785 ]
  br label %vec.epilog.scalar.ph780

vec.epilog.ph783:                                 ; preds = %vector.main.loop.iter.check770, %vec.epilog.iter.check781
  %vec.epilog.resume.val778 = phi i64 [ %n.vec773, %vec.epilog.iter.check781 ], [ 0, %vector.main.loop.iter.check770 ]
  br label %vec.epilog.vector.body785

vec.epilog.vector.body785:                        ; preds = %vec.epilog.vector.body785, %vec.epilog.ph783
  %index786 = phi i64 [ %vec.epilog.resume.val778, %vec.epilog.ph783 ], [ %index.next787, %vec.epilog.vector.body785 ] ; 10 uses
  %i.vo = shl nuw i64 %index786, 2
  %i.vp = shl i64 %index786, 2
  %i.vq = shl i64 %index786, 2
  %i.vr = shl i64 %index786, 2
  %i.vs = shl i64 %index786, 2
  %i.vt = shl i64 %index786, 2
  %i.vu = shl i64 %index786, 2
  %i.vv = shl i64 %index786, 2
  %i.vw = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.vo
  %i.vx = getelementptr i8, ptr %i.il, i64 %i.vp
  %i.vy = getelementptr i8, ptr %i.il, i64 %i.vq
  %i.vz = getelementptr i8, ptr %i.il, i64 %i.vr
  %i.wa = getelementptr i8, ptr %i.il, i64 %i.vs
  %i.wb = getelementptr i8, ptr %i.il, i64 %i.vt
  %i.wc = getelementptr i8, ptr %i.il, i64 %i.vu
  %i.wd = getelementptr i8, ptr %i.il, i64 %i.vv
  %i.we = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  %i.wf = getelementptr i8, ptr %i.vx, i64 5
  %i.wg = getelementptr i8, ptr %i.vy, i64 9
  %i.wh = getelementptr i8, ptr %i.vz, i64 13
  %i.wi = getelementptr i8, ptr %i.wa, i64 17
  %i.wj = getelementptr i8, ptr %i.wb, i64 21
  %i.wk = getelementptr i8, ptr %i.wc, i64 25
  %i.wl = getelementptr i8, ptr %i.wd, i64 29
  %i.wm = load i8, ptr %i.we, align 1, !tbaa !47, !alias.scope !185
  %i.wn = load i8, ptr %i.wf, align 1, !tbaa !47, !alias.scope !185
  %i.wo = load i8, ptr %i.wg, align 1, !tbaa !47, !alias.scope !185
  %i.wp = load i8, ptr %i.wh, align 1, !tbaa !47, !alias.scope !185
  %i.wq = load i8, ptr %i.wi, align 1, !tbaa !47, !alias.scope !185
  %i.wr = load i8, ptr %i.wj, align 1, !tbaa !47, !alias.scope !185
  %i.ws = load i8, ptr %i.wk, align 1, !tbaa !47, !alias.scope !185
  %i.wt = load i8, ptr %i.wl, align 1, !tbaa !47, !alias.scope !185
  %i.wu = insertelement <8 x i8> poison, i8 %i.wm, i64 0
  %i.wv = insertelement <8 x i8> %i.wu, i8 %i.wn, i64 1
  %i.ww = insertelement <8 x i8> %i.wv, i8 %i.wo, i64 2
  %i.wx = insertelement <8 x i8> %i.ww, i8 %i.wp, i64 3
  %i.wy = insertelement <8 x i8> %i.wx, i8 %i.wq, i64 4
  %i.wz = insertelement <8 x i8> %i.wy, i8 %i.wr, i64 5
  %i.xa = insertelement <8 x i8> %i.wz, i8 %i.ws, i64 6
  %i.xb = insertelement <8 x i8> %i.xa, i8 %i.wt, i64 7
  %i.xc = getelementptr inbounds nuw i8, ptr %invariant.gep569, i64 %index786
  store <8 x i8> %i.xb, ptr %i.xc, align 1, !tbaa !47, !alias.scope !186, !noalias !185
  %index.next787 = add nuw i64 %index786, 8       ; 2 uses
  %i.xd = icmp eq i64 %index.next787, %n.vec784
  br i1 %i.xd, label %vec.epilog.scalar.ph780.preheader, label %vec.epilog.vector.body785, !llvm.loop !132

.lr.ph566:                                        ; preds = %.lr.ph566.preheader, %.lr.ph566
  %.0215565 = phi i64 [ %i.xi, %.lr.ph566 ], [ %.0215565.ph, %.lr.ph566.preheader ] ; 3 uses
  %i.xe = shl nuw i64 %.0215565, 2
  %i.xf = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 2
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !47
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.0215565
  store i8 %i.xh, ptr %gep, align 1, !tbaa !47
  %i.xi = add nuw nsw i64 %.0215565, 1            ; 2 uses
  %i.xj = icmp samesign ult i64 %i.xi, %i.gk
  br i1 %i.xj, label %.lr.ph566, label %iter.check779, !llvm.loop !133

iter.check745:                                    ; preds = %vec.epilog.scalar.ph780
  %invariant.gep573 = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.go ; 3 uses
  %brmerge876 = select i1 %min.iters.check735, i1 true, i1 %i.ib
  br i1 %brmerge876, label %vec.epilog.scalar.ph746.preheader, label %vector.main.loop.iter.check736

vector.main.loop.iter.check736:                   ; preds = %iter.check745
  br i1 %min.iters.check737, label %vec.epilog.ph749, label %vector.body740

vector.body740:                                   ; preds = %vector.main.loop.iter.check736, %vector.body740
  %index741 = phi i64 [ %index.next742, %vector.body740 ], [ 0, %vector.main.loop.iter.check736 ] ; 18 uses
  %i.xk = shl nuw i64 %index741, 2
  %i.xl = shl i64 %index741, 2
  %i.xm = shl i64 %index741, 2
  %i.xn = shl i64 %index741, 2
  %i.xo = shl i64 %index741, 2
  %i.xp = shl i64 %index741, 2
  %i.xq = shl i64 %index741, 2
  %i.xr = shl i64 %index741, 2
  %i.xs = shl i64 %index741, 2
  %i.xt = shl i64 %index741, 2
  %i.xu = shl i64 %index741, 2
  %i.xv = shl i64 %index741, 2
  %i.xw = shl i64 %index741, 2
  %i.xx = shl i64 %index741, 2
  %i.xy = shl i64 %index741, 2
  %i.xz = shl i64 %index741, 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xk
  %i.yb = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xl
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  %i.yd = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xm
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xn
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 12
  %i.yh = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xo
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yj = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xp
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 20
  %i.yl = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xq
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yn = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xr
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 28
  %i.yp = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xs
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 32
  %i.yr = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xt
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 36
  %i.yt = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xu
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 40
  %i.yv = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xv
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 44
  %i.yx = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 48
  %i.yz = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xx
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 52
  %i.zb = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xy
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 56
  %i.zd = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.xz
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 60
  %i.zf = load i8, ptr %i.ya, align 1, !tbaa !47, !alias.scope !187
  %i.zg = load i8, ptr %i.yc, align 1, !tbaa !47, !alias.scope !187
  %i.zh = load i8, ptr %i.ye, align 1, !tbaa !47, !alias.scope !187
  %i.zi = load i8, ptr %i.yg, align 1, !tbaa !47, !alias.scope !187
  %i.zj = load i8, ptr %i.yi, align 1, !tbaa !47, !alias.scope !187
  %i.zk = load i8, ptr %i.yk, align 1, !tbaa !47, !alias.scope !187
  %i.zl = load i8, ptr %i.ym, align 1, !tbaa !47, !alias.scope !187
  %i.zm = load i8, ptr %i.yo, align 1, !tbaa !47, !alias.scope !187
  %i.zn = load i8, ptr %i.yq, align 1, !tbaa !47, !alias.scope !187
  %i.zo = load i8, ptr %i.ys, align 1, !tbaa !47, !alias.scope !187
  %i.zp = load i8, ptr %i.yu, align 1, !tbaa !47, !alias.scope !187
  %i.zq = load i8, ptr %i.yw, align 1, !tbaa !47, !alias.scope !187
  %i.zr = load i8, ptr %i.yy, align 1, !tbaa !47, !alias.scope !187
  %i.zs = load i8, ptr %i.za, align 1, !tbaa !47, !alias.scope !187
  %i.zt = load i8, ptr %i.zc, align 1, !tbaa !47, !alias.scope !187
  %i.zu = load i8, ptr %i.ze, align 1, !tbaa !47, !alias.scope !187
  %i.zv = insertelement <16 x i8> poison, i8 %i.zf, i64 0
  %i.zw = insertelement <16 x i8> %i.zv, i8 %i.zg, i64 1
  %i.zx = insertelement <16 x i8> %i.zw, i8 %i.zh, i64 2
  %i.zy = insertelement <16 x i8> %i.zx, i8 %i.zi, i64 3
  %i.zz = insertelement <16 x i8> %i.zy, i8 %i.zj, i64 4
  %i.aaa = insertelement <16 x i8> %i.zz, i8 %i.zk, i64 5
  %i.aab = insertelement <16 x i8> %i.aaa, i8 %i.zl, i64 6
  %i.aac = insertelement <16 x i8> %i.aab, i8 %i.zm, i64 7
  %i.aad = insertelement <16 x i8> %i.aac, i8 %i.zn, i64 8
  %i.aae = insertelement <16 x i8> %i.aad, i8 %i.zo, i64 9
  %i.aaf = insertelement <16 x i8> %i.aae, i8 %i.zp, i64 10
  %i.aag = insertelement <16 x i8> %i.aaf, i8 %i.zq, i64 11
  %i.aah = insertelement <16 x i8> %i.aag, i8 %i.zr, i64 12
  %i.aai = insertelement <16 x i8> %i.aah, i8 %i.zs, i64 13
  %i.aaj = insertelement <16 x i8> %i.aai, i8 %i.zt, i64 14
  %i.aak = insertelement <16 x i8> %i.aaj, i8 %i.zu, i64 15
  %i.aal = getelementptr inbounds nuw i8, ptr %invariant.gep573, i64 %index741
  store <16 x i8> %i.aak, ptr %i.aal, align 1, !tbaa !47, !alias.scope !188, !noalias !187
  %index.next742 = add nuw i64 %index741, 16      ; 2 uses
  %i.aam = icmp eq i64 %index.next742, %n.vec739
  br i1 %i.aam, label %vec.epilog.iter.check747, label %vector.body740, !llvm.loop !137

vec.epilog.iter.check747:                         ; preds = %vector.body740
  br i1 %min.epilog.iters.check748, label %vec.epilog.scalar.ph746.preheader, label %vec.epilog.ph749, !prof !182

vec.epilog.scalar.ph746.preheader:                ; preds = %vec.epilog.vector.body751, %iter.check745, %vec.epilog.iter.check747
  %.0213571.ph = phi i64 [ 0, %iter.check745 ], [ %n.vec739, %vec.epilog.iter.check747 ], [ %n.vec750, %vec.epilog.vector.body751 ]
  br label %vec.epilog.scalar.ph746

vec.epilog.ph749:                                 ; preds = %vector.main.loop.iter.check736, %vec.epilog.iter.check747
  %vec.epilog.resume.val744 = phi i64 [ %n.vec739, %vec.epilog.iter.check747 ], [ 0, %vector.main.loop.iter.check736 ]
  br label %vec.epilog.vector.body751

vec.epilog.vector.body751:                        ; preds = %vec.epilog.vector.body751, %vec.epilog.ph749
  %index752 = phi i64 [ %vec.epilog.resume.val744, %vec.epilog.ph749 ], [ %index.next753, %vec.epilog.vector.body751 ] ; 10 uses
  %i.aan = shl nuw i64 %index752, 2
  %i.aao = shl i64 %index752, 2
  %i.aap = shl i64 %index752, 2
  %i.aaq = shl i64 %index752, 2
  %i.aar = shl i64 %index752, 2
  %i.aas = shl i64 %index752, 2
  %i.aat = shl i64 %index752, 2
  %i.aau = shl i64 %index752, 2
  %i.aav = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.aan
  %i.aaw = getelementptr i8, ptr %i.il, i64 %i.aao
  %i.aax = getelementptr i8, ptr %i.aaw, i64 4
  %i.aay = getelementptr i8, ptr %i.il, i64 %i.aap
  %i.aaz = getelementptr i8, ptr %i.aay, i64 8
  %i.aba = getelementptr i8, ptr %i.il, i64 %i.aaq
  %i.abb = getelementptr i8, ptr %i.aba, i64 12
  %i.abc = getelementptr i8, ptr %i.il, i64 %i.aar
  %i.abd = getelementptr i8, ptr %i.abc, i64 16
  %i.abe = getelementptr i8, ptr %i.il, i64 %i.aas
  %i.abf = getelementptr i8, ptr %i.abe, i64 20
  %i.abg = getelementptr i8, ptr %i.il, i64 %i.aat
  %i.abh = getelementptr i8, ptr %i.abg, i64 24
  %i.abi = getelementptr i8, ptr %i.il, i64 %i.aau
  %i.abj = getelementptr i8, ptr %i.abi, i64 28
  %i.abk = load i8, ptr %i.aav, align 1, !tbaa !47, !alias.scope !187
  %i.abl = load i8, ptr %i.aax, align 1, !tbaa !47, !alias.scope !187
  %i.abm = load i8, ptr %i.aaz, align 1, !tbaa !47, !alias.scope !187
  %i.abn = load i8, ptr %i.abb, align 1, !tbaa !47, !alias.scope !187
  %i.abo = load i8, ptr %i.abd, align 1, !tbaa !47, !alias.scope !187
  %i.abp = load i8, ptr %i.abf, align 1, !tbaa !47, !alias.scope !187
  %i.abq = load i8, ptr %i.abh, align 1, !tbaa !47, !alias.scope !187
  %i.abr = load i8, ptr %i.abj, align 1, !tbaa !47, !alias.scope !187
  %i.abs = insertelement <8 x i8> poison, i8 %i.abk, i64 0
  %i.abt = insertelement <8 x i8> %i.abs, i8 %i.abl, i64 1
  %i.abu = insertelement <8 x i8> %i.abt, i8 %i.abm, i64 2
  %i.abv = insertelement <8 x i8> %i.abu, i8 %i.abn, i64 3
  %i.abw = insertelement <8 x i8> %i.abv, i8 %i.abo, i64 4
  %i.abx = insertelement <8 x i8> %i.abw, i8 %i.abp, i64 5
  %i.aby = insertelement <8 x i8> %i.abx, i8 %i.abq, i64 6
  %i.abz = insertelement <8 x i8> %i.aby, i8 %i.abr, i64 7
  %i.aca = getelementptr inbounds nuw i8, ptr %invariant.gep573, i64 %index752
  store <8 x i8> %i.abz, ptr %i.aca, align 1, !tbaa !47, !alias.scope !188, !noalias !187
  %index.next753 = add nuw i64 %index752, 8       ; 2 uses
  %i.acb = icmp eq i64 %index.next753, %n.vec750
  br i1 %i.acb, label %vec.epilog.scalar.ph746.preheader, label %vec.epilog.vector.body751, !llvm.loop !138

vec.epilog.scalar.ph780:                          ; preds = %vec.epilog.scalar.ph780.preheader, %vec.epilog.scalar.ph780
  %.0214567 = phi i64 [ %i.acg, %vec.epilog.scalar.ph780 ], [ %.0214567.ph, %vec.epilog.scalar.ph780.preheader ] ; 3 uses
  %i.acc = shl nuw i64 %.0214567, 2
  %i.acd = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 1
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !47
  %gep570 = getelementptr inbounds nuw i8, ptr %invariant.gep569, i64 %.0214567
  store i8 %i.acf, ptr %gep570, align 1, !tbaa !47
  %i.acg = add nuw nsw i64 %.0214567, 1           ; 2 uses
  %i.ach = icmp samesign ult i64 %i.acg, %i.gk
  br i1 %i.ach, label %vec.epilog.scalar.ph780, label %iter.check745, !llvm.loop !139

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph746, %.preheader448
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread428.thread440, label %.preheader448, !llvm.loop !140

vec.epilog.scalar.ph746:                          ; preds = %vec.epilog.scalar.ph746.preheader, %vec.epilog.scalar.ph746
  %.0213571 = phi i64 [ %i.acl, %vec.epilog.scalar.ph746 ], [ %.0213571.ph, %vec.epilog.scalar.ph746.preheader ] ; 3 uses
  %i.aci = shl nuw i64 %.0213571, 2
  %i.acj = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.aci
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !47
  %gep574 = getelementptr inbounds nuw i8, ptr %invariant.gep573, i64 %.0213571
  store i8 %i.ack, ptr %gep574, align 1, !tbaa !47
  %i.acl = add nuw nsw i64 %.0213571, 1           ; 2 uses
  %i.acm = icmp samesign ult i64 %i.acl, %i.gk
  br i1 %i.acm, label %vec.epilog.scalar.ph746, label %._crit_edge, !llvm.loop !141

.thread428:                                       ; preds = %bb.bp
  br i1 %i.cp, label %.thread428.thread, label %.thread428.thread440

.thread428.thread:                                ; preds = %bb.bk, %.thread428
  %.0218430439 = phi ptr [ %i.fs, %.thread428 ], [ %.0223, %bb.bk ] ; 5 uses
  br i1 %.not295, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %.thread428.thread
  %i.acn = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.acn, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 527, ptr noundef nonnull @.str.2)
          to label %.invoke668 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.aco = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4gdcm8RLECodec4CodeERKNS_11DataElementERS1_:_ZN4gdcm12SmartPointerINS_19SequenceOfFragmentsEEC2EPS1_.exit
  %i.adf = select i1 %i.ade, i64 8, i64 %i.add
  %n.vec717 = sub nsw i64 %umax701, %i.adf        ; 2 uses
  %umax686 = call i64 @llvm.umax.i64(i64 %i.acu, i64 1) ; 4 uses
  %min.iters.check = icmp ult i64 %i.acr, 18
  %i.adg = mul i64 %i.acr, %i.acq
  %scevgep682 = getelementptr i8, ptr %.0224, i64 %i.adg
  %i.adh = mul i64 %i.acr, %i.acq
  %scevgep684 = getelementptr i8, ptr %scevgep683, i64 %i.adh
  %bound0 = icmp ult ptr %scevgep, %scevgep684
  %bound1 = icmp ult ptr %.0218430439, %scevgep682
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.acr, 0
  %i.adi = or i1 %found.conflict, %stride.check
  %min.iters.check687 = icmp ult i64 %i.acr, 34
  %i.adj = and i64 %umax686, 15                   ; 2 uses
  %i.adk = icmp eq i64 %i.adj, 0
  %i.adl = select i1 %i.adk, i64 16, i64 %i.adj   ; 2 uses
  %n.vec = sub nsw i64 %umax686, %i.adl           ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.adl, 9
  %i.adm = and i64 %umax686, 7                    ; 2 uses
  %i.adn = icmp eq i64 %i.adm, 0
  %i.ado = select i1 %i.adn, i64 8, i64 %i.adm
  %n.vec688 = sub nsw i64 %umax686, %i.ado        ; 2 uses
  br label %iter.check712

iter.check712:                                    ; preds = %.preheader444.us.preheader, %._crit_edge584.us
  %indvars.iv612 = phi i64 [ 0, %.preheader444.us.preheader ], [ %indvars.iv.next613, %._crit_edge584.us ] ; 2 uses
  %i.adp = mul i64 %i.acr, %indvars.iv612         ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.0224, i64 %i.adp ; 4 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.0218430439, i64 %i.adp ; 50 uses
  %brmerge877 = select i1 %min.iters.check702, i1 true, i1 %i.acz
  br i1 %brmerge877, label %vec.epilog.scalar.ph713.preheader, label %vector.main.loop.iter.check703

vector.main.loop.iter.check703:                   ; preds = %iter.check712
  br i1 %min.iters.check704, label %vec.epilog.ph716, label %vector.body707

vector.body707:                                   ; preds = %vector.main.loop.iter.check703, %vector.body707
  %index708 = phi i64 [ %index.next709, %vector.body707 ], [ 0, %vector.main.loop.iter.check703 ] ; 18 uses
  %i.ads = shl nuw i64 %index708, 1
  %i.adt = shl i64 %index708, 1
  %i.adu = shl i64 %index708, 1
  %i.adv = shl i64 %index708, 1
  %i.adw = shl i64 %index708, 1
  %i.adx = shl i64 %index708, 1
  %i.ady = shl i64 %index708, 1
  %i.adz = shl i64 %index708, 1
  %i.aea = shl i64 %index708, 1
  %i.aeb = shl i64 %index708, 1
  %i.aec = shl i64 %index708, 1
  %i.aed = shl i64 %index708, 1
  %i.aee = shl i64 %index708, 1
  %i.aef = shl i64 %index708, 1
  %i.aeg = shl i64 %index708, 1
  %i.aeh = shl i64 %index708, 1
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ads
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adt
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adu
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adv
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adw
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adx
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ady
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adz
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aea
  %i.aer = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aeb
  %i.aes = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aec
  %i.aet = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aed
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aee
  %i.aev = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aef
  %i.aew = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aeg
  %i.aex = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aeh
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aei, i64 1
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aej, i64 3
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aek, i64 5
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ael, i64 7
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aem, i64 9
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aen, i64 11
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aeo, i64 13
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aep, i64 15
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aeq, i64 17
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aer, i64 19
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aes, i64 21
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aet, i64 23
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aeu, i64 25
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aev, i64 27
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aew, i64 29
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aex, i64 31
  %i.afo = load i8, ptr %i.aey, align 1, !tbaa !47, !alias.scope !189
  %i.afp = load i8, ptr %i.aez, align 1, !tbaa !47, !alias.scope !189
  %i.afq = load i8, ptr %i.afa, align 1, !tbaa !47, !alias.scope !189
  %i.afr = load i8, ptr %i.afb, align 1, !tbaa !47, !alias.scope !189
  %i.afs = load i8, ptr %i.afc, align 1, !tbaa !47, !alias.scope !189
  %i.aft = load i8, ptr %i.afd, align 1, !tbaa !47, !alias.scope !189
  %i.afu = load i8, ptr %i.afe, align 1, !tbaa !47, !alias.scope !189
  %i.afv = load i8, ptr %i.aff, align 1, !tbaa !47, !alias.scope !189
  %i.afw = load i8, ptr %i.afg, align 1, !tbaa !47, !alias.scope !189
  %i.afx = load i8, ptr %i.afh, align 1, !tbaa !47, !alias.scope !189
  %i.afy = load i8, ptr %i.afi, align 1, !tbaa !47, !alias.scope !189
  %i.afz = load i8, ptr %i.afj, align 1, !tbaa !47, !alias.scope !189
  %i.aga = load i8, ptr %i.afk, align 1, !tbaa !47, !alias.scope !189
  %i.agb = load i8, ptr %i.afl, align 1, !tbaa !47, !alias.scope !189
  %i.agc = load i8, ptr %i.afm, align 1, !tbaa !47, !alias.scope !189
  %i.agd = load i8, ptr %i.afn, align 1, !tbaa !47, !alias.scope !189
  %i.age = insertelement <16 x i8> poison, i8 %i.afo, i64 0
  %i.agf = insertelement <16 x i8> %i.age, i8 %i.afp, i64 1
  %i.agg = insertelement <16 x i8> %i.agf, i8 %i.afq, i64 2
  %i.agh = insertelement <16 x i8> %i.agg, i8 %i.afr, i64 3
  %i.agi = insertelement <16 x i8> %i.agh, i8 %i.afs, i64 4
  %i.agj = insertelement <16 x i8> %i.agi, i8 %i.aft, i64 5
  %i.agk = insertelement <16 x i8> %i.agj, i8 %i.afu, i64 6
  %i.agl = insertelement <16 x i8> %i.agk, i8 %i.afv, i64 7
  %i.agm = insertelement <16 x i8> %i.agl, i8 %i.afw, i64 8
  %i.agn = insertelement <16 x i8> %i.agm, i8 %i.afx, i64 9
  %i.ago = insertelement <16 x i8> %i.agn, i8 %i.afy, i64 10
  %i.agp = insertelement <16 x i8> %i.ago, i8 %i.afz, i64 11
  %i.agq = insertelement <16 x i8> %i.agp, i8 %i.aga, i64 12
  %i.agr = insertelement <16 x i8> %i.agq, i8 %i.agb, i64 13
  %i.ags = insertelement <16 x i8> %i.agr, i8 %i.agc, i64 14
  %i.agt = insertelement <16 x i8> %i.ags, i8 %i.agd, i64 15
  %i.agu = getelementptr inbounds nuw i8, ptr %i.adq, i64 %index708
  store <16 x i8> %i.agt, ptr %i.agu, align 1, !tbaa !47, !alias.scope !190, !noalias !189
  %index.next709 = add nuw i64 %index708, 16      ; 2 uses
  %i.agv = icmp eq i64 %index.next709, %n.vec706
  br i1 %i.agv, label %vec.epilog.iter.check714, label %vector.body707, !llvm.loop !145

vec.epilog.iter.check714:                         ; preds = %vector.body707
  br i1 %min.epilog.iters.check715, label %vec.epilog.scalar.ph713.preheader, label %vec.epilog.ph716, !prof !182

vec.epilog.ph716:                                 ; preds = %vector.main.loop.iter.check703, %vec.epilog.iter.check714
  %vec.epilog.resume.val711 = phi i64 [ %n.vec706, %vec.epilog.iter.check714 ], [ 0, %vector.main.loop.iter.check703 ]
  br label %vec.epilog.vector.body718

vec.epilog.vector.body718:                        ; preds = %vec.epilog.vector.body718, %vec.epilog.ph716
  %index719 = phi i64 [ %vec.epilog.resume.val711, %vec.epilog.ph716 ], [ %index.next720, %vec.epilog.vector.body718 ] ; 10 uses
  %i.agw = shl nuw i64 %index719, 1
  %i.agx = shl i64 %index719, 1
  %i.agy = shl i64 %index719, 1
  %i.agz = shl i64 %index719, 1
  %i.aha = shl i64 %index719, 1
  %i.ahb = shl i64 %index719, 1
  %i.ahc = shl i64 %index719, 1
  %i.ahd = shl i64 %index719, 1
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.agw
  %i.ahf = getelementptr i8, ptr %i.adr, i64 %i.agx
  %i.ahg = getelementptr i8, ptr %i.adr, i64 %i.agy
  %i.ahh = getelementptr i8, ptr %i.adr, i64 %i.agz
  %i.ahi = getelementptr i8, ptr %i.adr, i64 %i.aha
  %i.ahj = getelementptr i8, ptr %i.adr, i64 %i.ahb
  %i.ahk = getelementptr i8, ptr %i.adr, i64 %i.ahc
  %i.ahl = getelementptr i8, ptr %i.adr, i64 %i.ahd
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahe, i64 1
  %i.ahn = getelementptr i8, ptr %i.ahf, i64 3
  %i.aho = getelementptr i8, ptr %i.ahg, i64 5
  %i.ahp = getelementptr i8, ptr %i.ahh, i64 7
  %i.ahq = getelementptr i8, ptr %i.ahi, i64 9
  %i.ahr = getelementptr i8, ptr %i.ahj, i64 11
  %i.ahs = getelementptr i8, ptr %i.ahk, i64 13
  %i.aht = getelementptr i8, ptr %i.ahl, i64 15
  %i.ahu = load i8, ptr %i.ahm, align 1, !tbaa !47, !alias.scope !189
  %i.ahv = load i8, ptr %i.ahn, align 1, !tbaa !47, !alias.scope !189
  %i.ahw = load i8, ptr %i.aho, align 1, !tbaa !47, !alias.scope !189
  %i.ahx = load i8, ptr %i.ahp, align 1, !tbaa !47, !alias.scope !189
  %i.ahy = load i8, ptr %i.ahq, align 1, !tbaa !47, !alias.scope !189
  %i.ahz = load i8, ptr %i.ahr, align 1, !tbaa !47, !alias.scope !189
  %i.aia = load i8, ptr %i.ahs, align 1, !tbaa !47, !alias.scope !189
  %i.aib = load i8, ptr %i.aht, align 1, !tbaa !47, !alias.scope !189
  %i.aic = insertelement <8 x i8> poison, i8 %i.ahu, i64 0
  %i.aid = insertelement <8 x i8> %i.aic, i8 %i.ahv, i64 1
  %i.aie = insertelement <8 x i8> %i.aid, i8 %i.ahw, i64 2
  %i.aif = insertelement <8 x i8> %i.aie, i8 %i.ahx, i64 3
  %i.aig = insertelement <8 x i8> %i.aif, i8 %i.ahy, i64 4
  %i.aih = insertelement <8 x i8> %i.aig, i8 %i.ahz, i64 5
  %i.aii = insertelement <8 x i8> %i.aih, i8 %i.aia, i64 6
  %i.aij = insertelement <8 x i8> %i.aii, i8 %i.aib, i64 7
  %i.aik = getelementptr inbounds nuw i8, ptr %i.adq, i64 %index719
  store <8 x i8> %i.aij, ptr %i.aik, align 1, !tbaa !47, !alias.scope !190, !noalias !189
  %index.next720 = add nuw i64 %index719, 8       ; 2 uses
  %i.ail = icmp eq i64 %index.next720, %n.vec717
  br i1 %i.ail, label %vec.epilog.scalar.ph713.preheader, label %vec.epilog.vector.body718, !llvm.loop !146

vec.epilog.scalar.ph713.preheader:                ; preds = %vec.epilog.vector.body718, %iter.check712, %vec.epilog.iter.check714
  %.0211578.us.ph = phi i64 [ 0, %iter.check712 ], [ %n.vec706, %vec.epilog.iter.check714 ], [ %n.vec717, %vec.epilog.vector.body718 ]
  br label %vec.epilog.scalar.ph713

vec.epilog.scalar.ph713:                          ; preds = %vec.epilog.scalar.ph713.preheader, %vec.epilog.scalar.ph713
  %.0211578.us = phi i64 [ %i.air, %vec.epilog.scalar.ph713 ], [ %.0211578.us.ph, %vec.epilog.scalar.ph713.preheader ] ; 3 uses
  %i.aim = shl nuw i64 %.0211578.us, 1
  %i.ain = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 1
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !47
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.adq, i64 %.0211578.us
  store i8 %i.aip, ptr %i.aiq, align 1, !tbaa !47
  %i.air = add nuw nsw i64 %.0211578.us, 1        ; 2 uses
  %i.ais = icmp samesign ult i64 %i.air, %i.acu
  br i1 %i.ais, label %vec.epilog.scalar.ph713, label %iter.check, !llvm.loop !147

.lr.ph583.us:                                     ; preds = %.lr.ph583.us.preheader, %.lr.ph583.us
  %.0210582.us = phi i64 [ %i.aiw, %.lr.ph583.us ], [ %.0210582.us.ph, %.lr.ph583.us.preheader ] ; 3 uses
  %i.ait = shl nuw i64 %.0210582.us, 1
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ait
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !47
  %gep581.us = getelementptr inbounds nuw i8, ptr %invariant.gep580.us, i64 %.0210582.us
  store i8 %i.aiv, ptr %gep581.us, align 1, !tbaa !47
  %i.aiw = add nuw nsw i64 %.0210582.us, 1        ; 2 uses
  %i.aix = icmp samesign ult i64 %i.aiw, %i.acu
  br i1 %i.aix, label %.lr.ph583.us, label %._crit_edge584.us, !llvm.loop !148

._crit_edge584.us:                                ; preds = %.lr.ph583.us
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %exitcond616.not = icmp eq i64 %indvars.iv.next613, %wide.trip.count615
  br i1 %exitcond616.not, label %.thread428.thread440, label %iter.check712, !llvm.loop !149

iter.check:                                       ; preds = %vec.epilog.scalar.ph713
  %invariant.gep580.us = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.acu ; 3 uses
  %brmerge878 = select i1 %min.iters.check, i1 true, i1 %i.adi
  br i1 %brmerge878, label %.lr.ph583.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check687, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.aiy = shl nuw i64 %index, 1
  %i.aiz = shl i64 %index, 1
  %i.aja = shl i64 %index, 1
  %i.ajb = shl i64 %index, 1
  %i.ajc = shl i64 %index, 1
  %i.ajd = shl i64 %index, 1
  %i.aje = shl i64 %index, 1
  %i.ajf = shl i64 %index, 1
  %i.ajg = shl i64 %index, 1
  %i.ajh = shl i64 %index, 1
  %i.aji = shl i64 %index, 1
  %i.ajj = shl i64 %index, 1
  %i.ajk = shl i64 %index, 1
  %i.ajl = shl i64 %index, 1
  %i.ajm = shl i64 %index, 1
  %i.ajn = shl i64 %index, 1
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aiy
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aiz
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 2
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aja
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajb
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 6
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajc
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajd
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 10
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aje
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 12
  %i.akb = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajf
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 14
  %i.akd = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajg
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 16
  %i.akf = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajh
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 18
  %i.akh = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.aji
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 20
  %i.akj = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajj
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 22
  %i.akl = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 24
  %i.akn = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajl
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 26
  %i.akp = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajm
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 28
  %i.akr = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.ajn
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 30
  %i.akt = load i8, ptr %i.ajo, align 1, !tbaa !47, !alias.scope !191
  %i.aku = load i8, ptr %i.ajq, align 1, !tbaa !47, !alias.scope !191
  %i.akv = load i8, ptr %i.ajs, align 1, !tbaa !47, !alias.scope !191
  %i.akw = load i8, ptr %i.aju, align 1, !tbaa !47, !alias.scope !191
  %i.akx = load i8, ptr %i.ajw, align 1, !tbaa !47, !alias.scope !191
  %i.aky = load i8, ptr %i.ajy, align 1, !tbaa !47, !alias.scope !191
  %i.akz = load i8, ptr %i.aka, align 1, !tbaa !47, !alias.scope !191
  %i.ala = load i8, ptr %i.akc, align 1, !tbaa !47, !alias.scope !191
  %i.alb = load i8, ptr %i.ake, align 1, !tbaa !47, !alias.scope !191
  %i.alc = load i8, ptr %i.akg, align 1, !tbaa !47, !alias.scope !191
  %i.ald = load i8, ptr %i.aki, align 1, !tbaa !47, !alias.scope !191
  %i.ale = load i8, ptr %i.akk, align 1, !tbaa !47, !alias.scope !191
  %i.alf = load i8, ptr %i.akm, align 1, !tbaa !47, !alias.scope !191
  %i.alg = load i8, ptr %i.ako, align 1, !tbaa !47, !alias.scope !191
  %i.alh = load i8, ptr %i.akq, align 1, !tbaa !47, !alias.scope !191
  %i.ali = load i8, ptr %i.aks, align 1, !tbaa !47, !alias.scope !191
  %i.alj = insertelement <16 x i8> poison, i8 %i.akt, i64 0
  %i.alk = insertelement <16 x i8> %i.alj, i8 %i.aku, i64 1
  %i.all = insertelement <16 x i8> %i.alk, i8 %i.akv, i64 2
  %i.alm = insertelement <16 x i8> %i.all, i8 %i.akw, i64 3
  %i.aln = insertelement <16 x i8> %i.alm, i8 %i.akx, i64 4
  %i.alo = insertelement <16 x i8> %i.aln, i8 %i.aky, i64 5
  %i.alp = insertelement <16 x i8> %i.alo, i8 %i.akz, i64 6
  %i.alq = insertelement <16 x i8> %i.alp, i8 %i.ala, i64 7
  %i.alr = insertelement <16 x i8> %i.alq, i8 %i.alb, i64 8
  %i.als = insertelement <16 x i8> %i.alr, i8 %i.alc, i64 9
  %i.alt = insertelement <16 x i8> %i.als, i8 %i.ald, i64 10
  %i.alu = insertelement <16 x i8> %i.alt, i8 %i.ale, i64 11
  %i.alv = insertelement <16 x i8> %i.alu, i8 %i.alf, i64 12
  %i.alw = insertelement <16 x i8> %i.alv, i8 %i.alg, i64 13
  %i.alx = insertelement <16 x i8> %i.alw, i8 %i.alh, i64 14
  %i.aly = insertelement <16 x i8> %i.alx, i8 %i.ali, i64 15
  %i.alz = getelementptr inbounds nuw i8, ptr %invariant.gep580.us, i64 %index
  store <16 x i8> %i.aly, ptr %i.alz, align 1, !tbaa !47, !alias.scope !192, !noalias !191
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ama = icmp eq i64 %index.next, %n.vec
  br i1 %i.ama, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !153

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %.lr.ph583.us.preheader, label %vec.epilog.ph, !prof !182

.lr.ph583.us.preheader:                           ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %.0210582.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec688, %vec.epilog.vector.body ]
  br label %.lr.ph583.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index689 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next690, %vec.epilog.vector.body ] ; 10 uses
  %i.amb = shl nuw i64 %index689, 1
  %i.amc = shl i64 %index689, 1
  %i.amd = shl i64 %index689, 1
  %i.ame = shl i64 %index689, 1
  %i.amf = shl i64 %index689, 1
  %i.amg = shl i64 %index689, 1
  %i.amh = shl i64 %index689, 1
  %i.ami = shl i64 %index689, 1
  %i.amj = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.amb
  %i.amk = getelementptr i8, ptr %i.adr, i64 %i.amc
  %i.aml = getelementptr i8, ptr %i.amk, i64 2
  %i.amm = getelementptr i8, ptr %i.adr, i64 %i.amd
  %i.amn = getelementptr i8, ptr %i.amm, i64 4
  %i.amo = getelementptr i8, ptr %i.adr, i64 %i.ame
  %i.amp = getelementptr i8, ptr %i.amo, i64 6
  %i.amq = getelementptr i8, ptr %i.adr, i64 %i.amf
  %i.amr = getelementptr i8, ptr %i.amq, i64 8
  %i.ams = getelementptr i8, ptr %i.adr, i64 %i.amg
  %i.amt = getelementptr i8, ptr %i.ams, i64 10
  %i.amu = getelementptr i8, ptr %i.adr, i64 %i.amh
  %i.amv = getelementptr i8, ptr %i.amu, i64 12
  %i.amw = getelementptr i8, ptr %i.adr, i64 %i.ami
  %i.amx = getelementptr i8, ptr %i.amw, i64 14
  %i.amy = load i8, ptr %i.amj, align 1, !tbaa !47, !alias.scope !191
  %i.amz = load i8, ptr %i.aml, align 1, !tbaa !47, !alias.scope !191
  %i.ana = load i8, ptr %i.amn, align 1, !tbaa !47, !alias.scope !191
  %i.anb = load i8, ptr %i.amp, align 1, !tbaa !47, !alias.scope !191
  %i.anc = load i8, ptr %i.amr, align 1, !tbaa !47, !alias.scope !191
  %i.and = load i8, ptr %i.amt, align 1, !tbaa !47, !alias.scope !191
  %i.ane = load i8, ptr %i.amv, align 1, !tbaa !47, !alias.scope !191
  %i.anf = load i8, ptr %i.amx, align 1, !tbaa !47, !alias.scope !191
  %i.ang = insertelement <8 x i8> poison, i8 %i.amy, i64 0
  %i.anh = insertelement <8 x i8> %i.ang, i8 %i.amz, i64 1
  %i.ani = insertelement <8 x i8> %i.anh, i8 %i.ana, i64 2
  %i.anj = insertelement <8 x i8> %i.ani, i8 %i.anb, i64 3
  %i.ank = insertelement <8 x i8> %i.anj, i8 %i.anc, i64 4
  %i.anl = insertelement <8 x i8> %i.ank, i8 %i.and, i64 5
  %i.anm = insertelement <8 x i8> %i.anl, i8 %i.ane, i64 6
  %i.ann = insertelement <8 x i8> %i.anm, i8 %i.anf, i64 7
  %i.ano = getelementptr inbounds nuw i8, ptr %invariant.gep580.us, i64 %index689
  store <8 x i8> %i.ann, ptr %i.ano, align 1, !tbaa !47, !alias.scope !192, !noalias !191
  %index.next690 = add nuw i64 %index689, 8       ; 2 uses
  %i.anp = icmp eq i64 %index.next690, %n.vec688
  br i1 %i.anp, label %.lr.ph583.us.preheader, label %vec.epilog.vector.body, !llvm.loop !154

bb.cd:                                            ; preds = %bb.cb
  %i.anq = landingpad { ptr, i32 }
          cleanup
  br label %.body393

bb.ce:                                            ; preds = %.lr.ph587
  %i.anr = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.anr, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 535, ptr noundef nonnull @.str.2)
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @__cxa_throw(ptr nonnull %i.anr, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.hl unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ans = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anr) #25
  br label %.body393

bb.ch:                                            ; preds = %bb.cf
  %i.ant = landingpad { ptr, i32 }
          cleanup
  br label %.body393

.thread428.thread440:                             ; preds = %._crit_edge, %._crit_edge584.us, %.lr.ph587.split, %bb.bt, %bb.cc, %bb.bi, %.thread428
  %.1219 = phi ptr [ %i.fs, %.thread428 ], [ %.0224, %bb.cc ], [ %.0223, %bb.bi ], [ %.0224, %.lr.ph587.split ], [ %.0224, %bb.bt ], [ %.0224, %._crit_edge584.us ], [ %.0224, %._crit_edge ]
  %i.anu = urem i64 %.1232421, %i.dk
  %i.anv = udiv i64 %.1232421, %i.dk              ; 4 uses
  %i.anw = icmp eq i64 %i.anu, 0
  br i1 %i.anw, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.thread428.thread440
  %i.anx = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.anx, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 555, ptr noundef nonnull @.str.2)
          to label %.invoke668 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.any = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anx) #25
  br label %.body393

bb.ck:                                            ; preds = %.thread428.thread440
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.anz = mul i64 %i.anv, %i.dk
  %i.aoa = icmp eq i64 %i.anz, %.1232421
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.fb
  %indvars.iv617 = phi i64 [ 0, %bb.ck ], [ %indvars.iv.next618, %bb.fb ] ; 5 uses
  %i.aob = mul i64 %i.anv, %indvars.iv617         ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.1219, i64 %i.aob
  %i.aod = icmp samesign ult i64 %i.aob, %.1232421
  br i1 %i.aod, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aoe = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aoe, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 562, ptr noundef nonnull @.str.2)
          to label %.invoke670 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aof = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aoe) #25
  br label %bb.gu

bb.co:                                            ; preds = %.invoke670
  %i.aog = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.cp:                                            ; preds = %bb.cl
  %i.aoh = icmp ne i64 %indvars.iv617, %i.fp
  %or.cond336 = select i1 %i.aoh, i1 true, i1 %i.aoa
  br i1 %or.cond336, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aoi = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aoi, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 566, ptr noundef nonnull @.str.2)
          to label %.invoke670 unwind label %bb.cr

.invoke670:                                       ; preds = %bb.cm, %bb.cq
  %i.aoj = phi ptr [ %i.aoi, %bb.cq ], [ %i.aoe, %bb.cm ]
  invoke void @__cxa_throw(ptr nonnull %i.aoj, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.cont671 unwind label %bb.co

.cont671:                                         ; preds = %.invoke670
  unreachable

bb.cr:                                            ; preds = %bb.cq
  %i.aok = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aoi) #25
  br label %bb.gu

bb.cs:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.dm, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.dn, align 8, !tbaa !12
  store ptr %i.dp, ptr %6, align 8, !tbaa !12
  %i.aol = load i64, ptr %i.dr, align 8
  %i.aom = getelementptr inbounds i8, ptr %6, i64 %i.aol
  store ptr %i.dq, ptr %i.aom, align 8, !tbaa !12
  store i64 0, ptr %i.ds, align 8, !tbaa !68
  %i.aon = load ptr, ptr %6, align 8, !tbaa !12
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -24
  %i.aop = load i64, ptr %i.aoo, align 8
  %i.aoq = getelementptr inbounds i8, ptr %6, i64 %i.aop ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.aoq, ptr noundef nonnull %i.do)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 136
  store ptr null, ptr %i.aor, align 8, !tbaa !74
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoq, i64 144
  store i32 -1, ptr %i.aos, align 8, !tbaa !75
  %i.aot = load i64, ptr %i.dv, align 8
  %i.aou = getelementptr inbounds i8, ptr %i.dn, i64 %i.aot
  store ptr %i.du, ptr %i.aou, align 8, !tbaa !12
  %i.aov = load i64, ptr %i.dy, align 8
  %i.aow = getelementptr inbounds i8, ptr %6, i64 %i.aov
  store ptr %i.dx, ptr %i.aow, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %6, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.dm, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.dn, align 8, !tbaa !12
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.do)
          to label %bb.cx unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.aox = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.aoy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #25
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn.i = phi { ptr, i32 } [ %i.aoy, %bb.cv ], [ %i.aox, %bb.cu ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.dm) #25
  br label %.body343

bb.cx:                                            ; preds = %bb.ct
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.do, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i8 0, i64 32, i1 false)
  store i32 24, ptr %i.ea, align 8, !tbaa !84
  %i.aoz = load i32, ptr %i.eb, align 4, !tbaa !59 ; 3 uses
  %i.apa = zext i32 %i.aoz to i64
  %i.apb = urem i64 %i.anv, %i.apa
  %i.apc = icmp eq i64 %i.apb, 0
  br i1 %i.apc, label %.preheader, label %bb.cy

.preheader:                                       ; preds = %bb.cx
  %.not303.not590.not = icmp eq i32 %i.aoz, 0
  br i1 %.not303.not590.not, label %._crit_edge594, label %.lr.ph593

bb.cy:                                            ; preds = %bb.cx
  %i.apd = call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.apd, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 571, ptr noundef nonnull @.str.2)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  invoke void @__cxa_throw(ptr nonnull %i.apd, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %bb.hl unwind label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.ape = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.apd) #25
  br label %bb.fe

bb.db:                                            ; preds = %bb.cz
  %i.apf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

.lr.ph593:                                        ; preds = %.preheader, %bb.do
  %i.apg = phi i32 [ %i.apx, %bb.do ], [ %i.aoz, %.preheader ]
  %.0592 = phi i32 [ %i.apw, %bb.do ], [ 0, %.preheader ] ; 2 uses
  %.0207591 = phi i64 [ %i.apv, %bb.do ], [ 0, %.preheader ]
  %i.aph = load i32, ptr %i.b, align 8, !tbaa !59
  %i.api = mul i32 %i.aph, %.0592
  %i.apj = zext i32 %i.api to i64
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aoc, i64 %i.apj
  %i.apl = zext i32 %i.apg to i64
  %i.apm = udiv i64 %i.anv, %i.apl
  %i.apn = invoke noundef i64 @_ZN4gdcm10rle_encodeEPcmPKcm(ptr noundef nonnull %i.a, i64 noundef 65536, ptr noundef %i.apk, i64 noundef %i.apm)
          to label %bb.dc unwind label %.loopexit ; 4 uses

bb.dc:                                            ; preds = %.lr.ph593
  %i.apo = icmp sgt i64 %i.apn, -1
end_hunk_1
