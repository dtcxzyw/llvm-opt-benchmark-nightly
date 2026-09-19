Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@demosaic_ppg:bb.a
  br i1 %i.mq, label %bb.bq, label %.lr.ph98.6.i.i

bb.bq:                                            ; preds = %bb.bp
  store float %i.mp, ptr %i.id, align 16, !tbaa !12
  store float %.sink129260.i.i, ptr %i.ia, align 4, !tbaa !12
  br label %.lr.ph98.6.i.i

.lr.ph98.6.i.i:                                   ; preds = %bb.bq, %bb.bp
  %.sink129261.i.i = phi float [ %i.mp, %bb.bq ], [ %.sink129260.i.i, %bb.bp ] ; 3 uses
  %i.mr = fcmp reassoc nsz arcp contract afn ogt float %.sink127248.i.i, %.sink128254.i.i
  br i1 %i.mr, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph98.6.i.i
  store float %.sink127248.i.i, ptr %i.ic, align 4, !tbaa !12
  store float %.sink128254.i.i, ptr %i.ib, align 8, !tbaa !12
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph98.6.i.i
  %.sink128255.i.i = phi float [ %.sink127248.i.i, %bb.br ], [ %.sink128254.i.i, %.lr.ph98.6.i.i ] ; 2 uses
  %i.ms = phi float [ %.sink128254.i.i, %bb.br ], [ %.sink127248.i.i, %.lr.ph98.6.i.i ] ; 3 uses
  %i.mt = fcmp reassoc nsz arcp contract afn ogt float %i.ms, %.sink129261.i.i
  br i1 %i.mt, label %bb.bt, label %.lr.ph98.7.i.i

bb.bt:                                            ; preds = %bb.bs
  store float %i.ms, ptr %i.id, align 16, !tbaa !12
  store float %.sink129261.i.i, ptr %i.ib, align 8, !tbaa !12
  br label %.lr.ph98.7.i.i

.lr.ph98.7.i.i:                                   ; preds = %bb.bt, %bb.bs
  %.sink129262.i.i = phi float [ %i.ms, %bb.bt ], [ %.sink129261.i.i, %bb.bs ] ; 2 uses
  %i.mu = fcmp reassoc nsz arcp contract afn ogt float %.sink128255.i.i, %.sink129262.i.i
  br i1 %i.mu, label %bb.bu, label %.loopexit.7.i.i

bb.bu:                                            ; preds = %.lr.ph98.7.i.i
  store float %.sink128255.i.i, ptr %i.id, align 16, !tbaa !12
  store float %.sink129262.i.i, ptr %i.ic, align 4, !tbaa !12
  br label %.loopexit.7.i.i

.loopexit.7.i.i:                                  ; preds = %bb.bu, %.lr.ph98.7.i.i
  %i.mv = icmp eq i32 %.274.4.i.i, 1
  br i1 %i.mv, label %bb.ck, label %bb.cl

bb.bv:                                            ; preds = %.lr.ph.i.i
  store float %i.kr, ptr %i.hw, align 4, !tbaa !12
  store float %i.ks, ptr %i.a, align 16, !tbaa !12
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %.sink232.i.i = phi float [ %i.ks, %.lr.ph.i.i ], [ %i.kr, %bb.bv ] ; 4 uses
  %i.mw = phi float [ %i.kr, %.lr.ph.i.i ], [ %i.ks, %bb.bv ] ; 4 uses
  %i.mx = extractelement <8 x float> %i.kg, i64 2 ; 4 uses
  %i.my = fcmp reassoc nsz arcp contract afn ogt float %i.mw, %i.mx
  br i1 %i.my, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store float %i.mw, ptr %i.hy, align 8, !tbaa !12
  store float %i.mx, ptr %i.a, align 16, !tbaa !12
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink123233.i.i = phi float [ %i.mw, %bb.bx ], [ %i.mx, %bb.bw ] ; 4 uses
  %i.mz = phi float [ %i.mx, %bb.bx ], [ %i.mw, %bb.bw ] ; 4 uses
  %i.na = extractelement <8 x float> %i.kg, i64 3 ; 4 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ogt float %i.mz, %i.na
  br i1 %i.nb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store float %i.mz, ptr %i.hz, align 4, !tbaa !12
  store float %i.na, ptr %i.a, align 16, !tbaa !12
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink124235.i.i = phi float [ %i.mz, %bb.bz ], [ %i.na, %bb.by ] ; 4 uses
  %i.nc = phi float [ %i.na, %bb.bz ], [ %i.mz, %bb.by ] ; 4 uses
  %i.nd = extractelement <8 x float> %i.kg, i64 4 ; 4 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt float %i.nc, %i.nd
  br i1 %i.ne, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store float %i.nc, ptr %i.ht, align 16, !tbaa !12
  store float %i.nd, ptr %i.a, align 16, !tbaa !12
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.nf = phi float [ %i.nc, %bb.cb ], [ %i.nd, %bb.ca ] ; 4 uses
  %i.ng = phi float [ %i.nd, %bb.cb ], [ %i.nc, %bb.ca ] ; 4 uses
  %i.nh = extractelement <8 x float> %i.kg, i64 5 ; 4 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt float %i.ng, %i.nh
  br i1 %i.ni, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store float %i.ng, ptr %i.ia, align 4, !tbaa !12
  store float %i.nh, ptr %i.a, align 16, !tbaa !12
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sink126238.i.i = phi float [ %i.ng, %bb.cd ], [ %i.nh, %bb.cc ] ; 4 uses
  %i.nj = phi float [ %i.nh, %bb.cd ], [ %i.ng, %bb.cc ] ; 4 uses
  %i.nk = extractelement <8 x float> %i.kg, i64 6 ; 4 uses
  %i.nl = fcmp reassoc nsz arcp contract afn ogt float %i.nj, %i.nk
  br i1 %i.nl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store float %i.nj, ptr %i.ib, align 8, !tbaa !12
  store float %i.nk, ptr %i.a, align 16, !tbaa !12
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.sink127243.i.i = phi float [ %i.nj, %bb.cf ], [ %i.nk, %bb.ce ] ; 4 uses
  %i.nm = phi float [ %i.nk, %bb.cf ], [ %i.nj, %bb.ce ] ; 4 uses
  %i.nn = extractelement <8 x float> %i.kg, i64 7 ; 4 uses
  %i.no = fcmp reassoc nsz arcp contract afn ogt float %i.nm, %i.nn
  br i1 %i.no, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store float %i.nm, ptr %i.ic, align 4, !tbaa !12
  store float %i.nn, ptr %i.a, align 16, !tbaa !12
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sink128249.i.i = phi float [ %i.nm, %bb.ch ], [ %i.nn, %bb.cg ] ; 4 uses
  %i.np = phi float [ %i.nn, %bb.ch ], [ %i.nm, %bb.cg ] ; 3 uses
  %i.nq = fcmp reassoc nsz arcp contract afn ogt float %i.np, %.sink129.i.i
  br i1 %i.nq, label %bb.cj, label %.lr.ph98.1.i.i

bb.cj:                                            ; preds = %bb.ci
  store float %i.np, ptr %i.id, align 16, !tbaa !12
  store float %.sink129.i.i, ptr %i.a, align 16, !tbaa !12
  br label %.lr.ph98.1.i.i

bb.ck:                                            ; preds = %.loopexit.7.i.i
  %i.nr = fadd reassoc nsz arcp contract afn float %i.ml, -6.400000e+01
  br label %bb.cm

bb.cl:                                            ; preds = %.loopexit.7.i.i
  %i.ns = trunc nuw nsw i32 %.274.4.i.i to i8
  %.lhs.trunc.i.i = add nsw i8 %i.ns, -1
  %i.nt = sdiv i8 %.lhs.trunc.i.i, 2
  %.sext.i.i = zext nneg i8 %i.nt to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sext.i.i
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !12
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.nw = phi reassoc nsz arcp contract afn float [ %i.nr, %bb.ck ], [ %i.nv, %bb.cl ]
  store float %i.nw, ptr %.076101.i.i, align 4, !tbaa !12
  %i.nx = getelementptr inbounds nuw i8, ptr %.076101.i.i, i64 8
  %i.ny = add nuw nsw i32 %.178100.i.i, 2         ; 2 uses
  %i.nz = icmp slt i32 %i.ny, %i.hs
  br i1 %i.nz, label %.lr.ph.i.i, label %._crit_edge103.i.i

._crit_edge103.i.i:                               ; preds = %bb.cm, %.preheader86.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pre_median.exit, label %.preheader86.i.i

pre_median.exit:                                  ; preds = %._crit_edge103.i.i, %._crit_edge411.split
  %.0333 = phi ptr [ %1, %._crit_edge411.split ], [ %i.hq, %._crit_edge103.i.i ] ; 4 uses
  %i.oa = add nuw nsw i32 %6, 3                   ; 4 uses
  %i.ob = add nsw i32 %3, -3
  %i.oc = icmp sgt i32 %3, 6
  br i1 %i.oc, label %.lr.ph420, label %.preheader

.lr.ph420:                                        ; preds = %pre_median.exit
  %i.od = sext i32 %2 to i64                      ; 3 uses
  %i.oe = shl nsw i64 %i.od, 2
  %i.of = add nsw i32 %2, -3
  %i.og = icmp sgt i32 %2, 6
  %i.oh = sub nsw i32 %2, %i.oa                   ; 3 uses
  %i.oi = shl nsw i32 %i.oh, 2
  %i.oj = sext i32 %i.oi to i64
  %i.ok = sext i32 %i.oh to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ok
  %i.ol = sub nsw i32 0, %2                       ; 2 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = shl nsw i32 %i.ol, 1
  %i.oo = sext i32 %i.on to i64
  %i.op = mul i32 %2, -3
  %i.oq = sext i32 %i.op to i64
  %i.or = shl nsw i32 %2, 1
  %i.os = sext i32 %i.or to i64
  %i.ot = mul nsw i32 %2, 3
  %i.ou = sext i32 %i.ot to i64
  br i1 %i.og, label %.lr.ph.preheader, label %.lr.ph430

.lr.ph.preheader:                                 ; preds = %.lr.ph420
  %i.ov = sub nsw i32 %3, %i.oa
  %i.ow = sext i32 %i.ov to i64
  %i.ox = zext nneg i32 %i.oa to i64
  %wide.trip.count458 = zext nneg i32 %i.ob to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph

.preheader:                                       ; preds = %._crit_edge417, %bb.x, %pre_median.exit
  %.0333550 = phi ptr [ %i.hq, %bb.x ], [ %.0333, %pre_median.exit ], [ %.0333, %._crit_edge417 ] ; 2 uses
  br i1 %i.d, label %.lr.ph430, label %._crit_edge431.split

.lr.ph430:                                        ; preds = %.lr.ph420, %.preheader
  %.0333550553 = phi ptr [ %.0333550, %.preheader ], [ %.0333, %.lr.ph420 ] ; 2 uses
  %i.oz = sext i32 %2 to i64                      ; 2 uses
  %i.pa = shl nsw i64 %i.oz, 2
  %i.pb = icmp sgt i32 %2, 0
  %i.pc = sub nsw i32 %2, %6                      ; 3 uses
  %i.pd = add nsw i32 %2, -1
  %i.pe = shl nuw nsw i32 %2, 2
  %i.pf = zext nneg i32 %i.pe to i64              ; 4 uses
  %i.pg = sub nsw i64 0, %i.pf                    ; 3 uses
  br i1 %i.pb, label %.lr.ph425.preheader, label %._crit_edge431.split

.lr.ph425.preheader:                              ; preds = %.lr.ph430
  %i.ph = add nsw i32 %3, -1
  %i.pi = sub nsw i32 %3, %6
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = sext i32 %i.pi to i64
  %i.pl = zext nneg i32 %6 to i64
  %7 = sext i32 %i.pc to i64
  %wide.trip.count465 = zext nneg i32 %3 to i64
  br label %.lr.ph425

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge417
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next456, %._crit_edge417 ] ; 6 uses
  %i.pm = mul nuw i64 %i.oe, %indvars.iv
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pm ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 48
  %i.pp = mul nuw nsw i64 %indvars.iv, %i.od      ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0333, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %.not347 = icmp samesign uge i64 %indvars.iv, %i.ox
  %i.ps = icmp slt i64 %indvars.iv, %i.ow
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.oj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.pp
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.pu = shl nuw i32 %indvars.iv.tr, 1
  %i.pv = and i32 %i.pu, 14
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cs
  %.0325415 = phi i32 [ 3, %.lr.ph ], [ %i.tp, %bb.cs ] ; 2 uses
  %.0327414 = phi ptr [ %i.pr, %.lr.ph ], [ %i.to, %bb.cs ]
  %.0329413 = phi ptr [ %i.po, %.lr.ph ], [ %i.tn, %bb.cs ]
  %i.pw = icmp eq i32 %.0325415, %i.oa
  %or.cond355.not372 = select i1 %i.pw, i1 %.not347, i1 false
  %or.cond357 = select i1 %or.cond355.not372, i1 %i.ps, i1 false ; 3 uses
  %.1330 = select i1 %or.cond357, ptr %i.pt, ptr %.0329413 ; 4 uses
  %.1328 = select i1 %or.cond357, ptr %gep, ptr %.0327414 ; 13 uses
  %.1326 = select i1 %or.cond357, i32 %i.oh, i32 %.0325415 ; 3 uses
  %i.px = icmp eq i32 %.1326, %2
  br i1 %i.px, label %._crit_edge417, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.py = and i32 %.1326, 1
  %.tr.i366 = or disjoint i32 %i.py, %i.pv
  %i.pz = shl nuw nsw i32 %.tr.i366, 1
  %i.qa = lshr i32 %4, %i.pz                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.qb = load float, ptr %.1328, align 4, !tbaa !12 ; 8 uses
  %i.qc = and i32 %i.qa, 1
  %or.cond5 = icmp eq i32 %i.qc, 0
  br i1 %or.cond5, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.qd = and i32 %i.qa, 2
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qe
  store float %i.qb, ptr %i.qf, align 8, !tbaa !12
  %i.qg = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.om
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !12 ; 5 uses
  %i.qi = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oo
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !12 ; 2 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oq
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !12
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.od
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !12 ; 5 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.os
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !12 ; 2 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.ou
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !12
  %i.qs = getelementptr inbounds i8, ptr %.1328, i64 -8
  %i.qt = getelementptr inbounds i8, ptr %.1328, i64 -12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !12
  %i.qv = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !12 ; 5 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.1328, i64 8
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !12 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.1328, i64 12
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !12
  %i.rb = fsub reassoc nsz arcp contract afn float %i.qy, %i.qb
  %i.rc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rb)
  %i.rd = load <2 x float>, ptr %i.qs, align 4, !tbaa !12 ; 3 uses
  %i.re = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.rf = insertelement <2 x float> %i.re, float %i.qw, i64 1
  %i.rg = fsub reassoc nsz arcp contract afn <2 x float> %i.rd, %i.rf
  %i.rh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.rg)
  %i.ri = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.rc, <2 x float> %i.rh)
  %i.rj = fmul reassoc nsz arcp contract afn float %i.ri, 3.000000e+00
  %i.rk = fsub reassoc nsz arcp contract afn float %i.ra, %i.qw
  %i.rl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rk)
  %i.rm = extractelement <2 x float> %i.rd, i64 1 ; 4 uses
  %i.rn = fsub reassoc nsz arcp contract afn float %i.qu, %i.rm
  %i.ro = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rn)
  %i.rp = fadd reassoc nsz arcp contract afn float %i.rl, %i.ro
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, 2.000000e+00
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rj, %i.rq
  %i.rs = fsub reassoc nsz arcp contract afn float %i.qj, %i.qb
  %i.rt = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rs)
  %i.ru = fsub reassoc nsz arcp contract afn float %i.qp, %i.qb
  %i.rv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ru)
  %i.rw = fsub reassoc nsz arcp contract afn float %i.qh, %i.qn
  %i.rx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rw)
  %i.ry = fadd reassoc nsz arcp contract afn float %i.rx, %i.rt
  %i.rz = fadd reassoc nsz arcp contract afn float %i.ry, %i.rv
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, 3.000000e+00
  %i.sb = fsub reassoc nsz arcp contract afn float %i.qr, %i.qn
  %i.sc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sb)
  %i.sd = fsub reassoc nsz arcp contract afn float %i.ql, %i.qh
  %i.se = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sd)
  %i.sf = fadd reassoc nsz arcp contract afn float %i.sc, %i.se
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, 2.000000e+00
  %i.sh = fadd reassoc nsz arcp contract afn float %i.sa, %i.sg
  %i.si = fcmp reassoc nsz arcp contract afn ogt float %i.rr, %i.sh
  br i1 %i.si, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.sj = fadd reassoc nsz arcp contract afn float %i.qh, %i.qb
  %i.sk = fadd reassoc nsz arcp contract afn float %i.sj, %i.qn
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sk, 2.000000e+00
  %i.sm = fadd reassoc nsz arcp contract afn float %i.qj, %i.qp
  %i.sn = fsub reassoc nsz arcp contract afn float %i.sl, %i.sm
  %i.so = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qh, float %i.qn)
  %i.sp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qh, float %i.qn)
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sn, 2.500000e-01
  %i.sr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sq, float %i.sp)
  %i.ss = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sr, float %i.so)
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.st = fadd reassoc nsz arcp contract afn float %i.rm, %i.qb
  %i.su = fadd reassoc nsz arcp contract afn float %i.st, %i.qw
  %i.sv = fmul reassoc nsz arcp contract afn float %i.su, 2.000000e+00
  %i.sw = extractelement <2 x float> %i.rd, i64 0
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sw, %i.qy
  %i.sy = fsub reassoc nsz arcp contract afn float %i.sv, %i.sx
  %i.sz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rm, float %i.qw)
  %i.ta = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rm, float %i.qw)
  %i.tb = fmul reassoc nsz arcp contract afn float %i.sy, 2.500000e-01
  %i.tc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tb, float %i.ta)
  %i.td = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tc, float %i.sz)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cq, %bb.cr
  %i.te = phi float [ %i.ss, %bb.cq ], [ %i.td, %bb.cr ], [ %i.qb, %bb.co ]
  %i.tf = load <4 x float>, ptr %i.c, align 16
  %i.tg = shufflevector <4 x float> %i.tf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.th = insertelement <2 x float> %i.tg, float %i.te, i64 1
  %i.ti = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.th, <2 x float> zeroinitializer)
  store <2 x float> %i.ti, ptr %.1330, align 4, !tbaa !12
  %i.tj = load float, ptr %i.oy, align 8, !tbaa !12
  %i.tk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tj, float 0.000000e+00)
  %i.tl = getelementptr inbounds nuw i8, ptr %.1330, i64 8
  store float %i.tk, ptr %i.tl, align 4, !tbaa !12
  %i.tm = getelementptr inbounds nuw i8, ptr %.1330, i64 12
  store float 0.000000e+00, ptr %i.tm, align 4, !tbaa !12
  %i.tn = getelementptr inbounds nuw i8, ptr %.1330, i64 16
  %i.to = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.tp = add nsw i32 %.1326, 1                   ; 2 uses
  %i.tq = icmp slt i32 %i.tp, %i.of
  br i1 %i.tq, label %bb.cn, label %._crit_edge417

._crit_edge417:                                   ; preds = %bb.cs, %bb.cn
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.preheader, label %.lr.ph

._crit_edge431.split:                             ; preds = %._crit_edge426, %.lr.ph430, %.preheader
  %.0333550552 = phi ptr [ %.0333550, %.preheader ], [ %.0333550553, %.lr.ph430 ], [ %.0333550553, %._crit_edge426 ]
  br i1 %i.al, label %bb.dj, label %bb.dk

.lr.ph425:                                        ; preds = %.lr.ph425.preheader, %._crit_edge426
  %indvars.iv462 = phi i64 [ 0, %.lr.ph425.preheader ], [ %indvars.iv.next463, %._crit_edge426 ] ; 8 uses
  %i.tr = mul nuw i64 %i.pa, %indvars.iv462
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.tr ; 2 uses
  %.not = icmp samesign uge i64 %indvars.iv462, %i.pl ; 2 uses
  %i.tt = icmp slt i64 %indvars.iv462, %i.pk      ; 2 uses
  %i.tu = mul nuw nsw i64 %indvars.iv462, %i.oz
  %i.tv = add nsw i64 %i.tu, %7
  %.idx = shl nsw i64 %i.tv, 4
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.tx = icmp ne i64 %indvars.iv462, 0
  %i.ty = icmp samesign ult i64 %indvars.iv462, %i.pj
  %indvars.iv462.tr = trunc i64 %indvars.iv462 to i32
  %i.tz = shl i32 %indvars.iv462.tr, 1
  %i.ua = and i32 %i.tz, 14
  %.fr427 = freeze i1 %i.ty
  %i.ub = and i1 %.fr427, %i.tx
  br i1 %i.ub, label %.lr.ph425.split, label %.lr.ph425.split.us

.lr.ph425.split.us:                               ; preds = %.lr.ph425, %.lr.ph425.split.us
  %.0316423.us = phi i32 [ %i.ug, %.lr.ph425.split.us ], [ 0, %.lr.ph425 ] ; 2 uses
  %.0317422.us = phi ptr [ %i.uf, %.lr.ph425.split.us ], [ %i.ts, %.lr.ph425 ]
  %i.uc = icmp eq i32 %.0316423.us, %6
  %or.cond358.not370.us = select i1 %i.uc, i1 %.not, i1 false
  %or.cond360.us = select i1 %or.cond358.not370.us, i1 %i.tt, i1 false ; 2 uses
  %spec.select432 = select i1 %or.cond360.us, ptr %i.tw, ptr %.0317422.us ; 3 uses
  %i.ud = load <4 x float>, ptr %spec.select432, align 4, !tbaa !12
  %i.ue = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ud, <4 x float> zeroinitializer)
  store <4 x float> %i.ue, ptr %spec.select432, align 4, !tbaa !12
  %spec.select433 = select i1 %or.cond360.us, i32 %i.pc, i32 %.0316423.us
  %i.uf = getelementptr inbounds nuw i8, ptr %spec.select432, i64 16
  %i.ug = add nsw i32 %spec.select433, 1          ; 2 uses
  %i.uh = icmp slt i32 %i.ug, %2
  br i1 %i.uh, label %.lr.ph425.split.us, label %._crit_edge426

._crit_edge426:                                   ; preds = %.lr.ph425.split.us, %bb.di
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge431.split, label %.lr.ph425

.lr.ph425.split:                                  ; preds = %.lr.ph425, %bb.di
  %.0316423 = phi i32 [ %i.aav, %bb.di ], [ 0, %.lr.ph425 ] ; 2 uses
  %.0317422 = phi ptr [ %i.aau, %bb.di ], [ %i.ts, %.lr.ph425 ]
  %i.ui = icmp eq i32 %.0316423, %6
  %or.cond358.not370 = select i1 %i.ui, i1 %.not, i1 false
  %or.cond360 = select i1 %or.cond358.not370, i1 %i.tt, i1 false ; 2 uses
  %spec.select434 = select i1 %or.cond360, ptr %i.tw, ptr %.0317422 ; 18 uses
  %spec.select435 = select i1 %or.cond360, i32 %i.pc, i32 %.0316423 ; 4 uses
  %i.uj = load float, ptr %spec.select434, align 4, !tbaa !12 ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %spec.select434, i64 4
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !12 ; 9 uses
  %i.um = getelementptr inbounds nuw i8, ptr %spec.select434, i64 8
  %i.un = load float, ptr %i.um, align 4, !tbaa !12 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %spec.select434, i64 12
  %i.up = load float, ptr %i.uo, align 4, !tbaa !12
  %i.uq = icmp sgt i32 %spec.select435, 0
  %i.ur = icmp slt i32 %spec.select435, %i.pd
  %or.cond362 = select i1 %i.uq, i1 %i.ur, i1 false
  br i1 %or.cond362, label %bb.ct, label %bb.di

bb.ct:                                            ; preds = %.lr.ph425.split
  %i.us = and i32 %spec.select435, 1
  %.tr.i367 = or disjoint i32 %i.us, %i.ua
  %i.ut = shl nuw nsw i32 %.tr.i367, 1            ; 2 uses
  %i.uu = lshr i32 %4, %i.ut                      ; 2 uses
  %i.uv = and i32 %i.uu, 1
  %.not346 = icmp eq i32 %i.uv, 0
  br i1 %.not346, label %bb.cx, label %bb.cu, !prof !628

bb.cu:                                            ; preds = %bb.ct
  %i.uw = getelementptr inbounds [4 x i8], ptr %spec.select434, i64 %i.pg ; 4 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %spec.select434, i64 %i.pf ; 4 uses
  %i.uy = xor i32 %i.ut, 2
  %i.uz = shl nuw i32 3, %i.uy
  %i.va = and i32 %i.uz, %4
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.vc = getelementptr inbounds nuw i8, ptr %spec.select434, i64 16
  %i.vd = getelementptr inbounds i8, ptr %spec.select434, i64 -16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !12
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !12
  %i.vi = fmul reassoc nsz arcp contract afn float %i.ul, 2.000000e+00 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !12
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !12
  %.neg380 = fadd reassoc nsz arcp contract afn float %i.vf, %i.vi
  %i.vn = fadd reassoc nsz arcp contract afn float %.neg380, %i.vh
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vk, %i.vm
  %i.vp = fsub reassoc nsz arcp contract afn float %i.vn, %i.vo
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vp, 5.000000e-01
  %i.vr = load float, ptr %i.vd, align 4, !tbaa !12
  %i.vs = load float, ptr %i.vc, align 4, !tbaa !12
  %i.vt = getelementptr inbounds i8, ptr %spec.select434, i64 -12
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !12
  %i.vv = getelementptr inbounds nuw i8, ptr %spec.select434, i64 20
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !12
  %.neg383 = fadd reassoc nsz arcp contract afn float %i.vr, %i.vi
  %i.vx = fadd reassoc nsz arcp contract afn float %.neg383, %i.vs
  %i.vy = fadd reassoc nsz arcp contract afn float %i.vu, %i.vw
  %i.vz = fsub reassoc nsz arcp contract afn float %i.vx, %i.vy
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vz, 5.000000e-01
  br label %bb.di

bb.cw:                                            ; preds = %bb.cu
  %i.wb = load float, ptr %i.uw, align 4, !tbaa !12
  %i.wc = load float, ptr %i.ux, align 4, !tbaa !12
  %i.wd = fmul reassoc nsz arcp contract afn float %i.ul, 2.000000e+00 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.wf = load float, ptr %i.we, align 4, !tbaa !12
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !12
  %.neg374 = fadd reassoc nsz arcp contract afn float %i.wb, %i.wd
  %i.wi = fadd reassoc nsz arcp contract afn float %.neg374, %i.wc
  %i.wj = fadd reassoc nsz arcp contract afn float %i.wf, %i.wh
  %i.wk = fsub reassoc nsz arcp contract afn float %i.wi, %i.wj
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wk, 5.000000e-01
  %i.wm = getelementptr inbounds i8, ptr %spec.select434, i64 -8
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !12
  %i.wo = getelementptr inbounds nuw i8, ptr %spec.select434, i64 24
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !12
  %i.wq = getelementptr inbounds i8, ptr %spec.select434, i64 -12
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !12
  %i.ws = getelementptr inbounds nuw i8, ptr %spec.select434, i64 20
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !12
  %.neg377 = fadd reassoc nsz arcp contract afn float %i.wn, %i.wd
  %i.wu = fadd reassoc nsz arcp contract afn float %.neg377, %i.wp
  %i.wv = fadd reassoc nsz arcp contract afn float %i.wr, %i.wt
  %i.ww = fsub reassoc nsz arcp contract afn float %i.wu, %i.wv
  %i.wx = fmul reassoc nsz arcp contract afn float %i.ww, 5.000000e-01
  br label %bb.di

bb.cx:                                            ; preds = %bb.ct
  %i.wy = and i32 %i.uu, 2
  %i.wz = getelementptr inbounds i8, ptr %spec.select434, i64 -16 ; 2 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.pg ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %spec.select434, i64 16 ; 2 uses
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.pg ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.pf ; 3 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.pf ; 4 uses
  %i.xf = icmp eq i32 %i.wy, 0
  br i1 %i.xf, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !12 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %i.xj = load <2 x float>, ptr %i.xi, align 4, !tbaa !12 ; 3 uses
  %i.xk = insertelement <2 x float> poison, float %i.ul, i64 0 ; 3 uses
  %i.xl = insertelement <2 x float> %i.xk, float %i.xh, i64 1
  %i.xm = fsub reassoc nsz arcp contract afn <2 x float> %i.xj, %i.xl
  %i.xn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xm) ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !12 ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %i.ul, 2.000000e+00 ; 2 uses
  %i.xr = extractelement <2 x float> %i.xj, i64 1
  %.neg392 = fadd reassoc nsz arcp contract afn float %i.xr, %i.xq
  %i.xs = fadd reassoc nsz arcp contract afn float %.neg392, %i.xh
  %i.xt = extractelement <2 x float> %i.xj, i64 0
  %i.xu = fadd reassoc nsz arcp contract afn float %i.xt, %i.xp
  %i.xv = fsub reassoc nsz arcp contract afn float %i.xs, %i.xu ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !12 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %i.xz = load <2 x float>, ptr %i.xy, align 4, !tbaa !12 ; 3 uses
  %i.ya = insertelement <2 x float> %i.xk, float %i.xx, i64 1
  %i.yb = fsub reassoc nsz arcp contract afn <2 x float> %i.xz, %i.ya
  %i.yc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yb) ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !12 ; 2 uses
  %i.yf = shufflevector <2 x float> %i.xn, <2 x float> %i.yc, <2 x i32> <i32 0, i32 2>
  %i.yg = shufflevector <2 x float> %i.xn, <2 x float> %i.yc, <2 x i32> <i32 1, i32 3>
  %i.yh = fadd reassoc nsz arcp contract afn <2 x float> %i.yf, %i.yg
  %i.yi = insertelement <2 x float> poison, float %i.xp, i64 0
  %i.yj = insertelement <2 x float> %i.yi, float %i.ye, i64 1
  %i.yk = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yl = fsub reassoc nsz arcp contract afn <2 x float> %i.yj, %i.yk
  %i.ym = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yl)
  %i.yn = fadd reassoc nsz arcp contract afn <2 x float> %i.yh, %i.ym ; 2 uses
  %i.yo = extractelement <2 x float> %i.xz, i64 1
  %.neg395 = fadd reassoc nsz arcp contract afn float %i.yo, %i.xq
  %i.yp = fadd reassoc nsz arcp contract afn float %.neg395, %i.xx
  %i.yq = extractelement <2 x float> %i.xz, i64 0
  %i.yr = fadd reassoc nsz arcp contract afn float %i.yq, %i.ye
  %i.ys = fsub reassoc nsz arcp contract afn float %i.yp, %i.yr ; 2 uses
  %i.yt = extractelement <2 x float> %i.yn, i64 0 ; 2 uses
  %i.yu = extractelement <2 x float> %i.yn, i64 1 ; 2 uses
  %i.yv = fcmp reassoc nsz arcp contract afn ogt float %i.yt, %i.yu
  br i1 %i.yv, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.yw = fmul reassoc nsz arcp contract afn float %i.ys, 5.000000e-01
  br label %bb.di

bb.da:                                            ; preds = %bb.cy
  %i.yx = fcmp reassoc nsz arcp contract afn olt float %i.yt, %i.yu
  br i1 %i.yx, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.yy = fmul reassoc nsz arcp contract afn float %i.xv, 5.000000e-01
  br label %bb.di

bb.dc:                                            ; preds = %bb.da
  %i.yz = fadd reassoc nsz arcp contract afn float %i.ys, %i.xv
  %i.za = fmul reassoc nsz arcp contract afn float %i.yz, 2.500000e-01
end_hunk_0
begin_hunk_1_@_vng_lininterpolate:bb.a

.split.split.us.2:                                ; preds = %fcol.exit224.us.1, %.split.split.us.1
  %i.ks = or i64 %indvars.iv.next293.1, %indvars.iv296
  %or.cond3.us.2 = icmp sgt i64 %i.ks, -1
  %or.cond218.us.2 = and i1 %i.hp, %or.cond3.us.2
  br i1 %or.cond218.us.2, label %fcol.exit224.us.2, label %.split239.us.thread406

fcol.exit224.us.2:                                ; preds = %.split.split.us.2
  %i.kt = getelementptr inbounds i8, ptr %i.jr, i64 %i.hs
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !133
  %i.kv = getelementptr [4 x i8], ptr %i.ht, i64 %i.js
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !12
  %i.kx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kw, float 0.000000e+00)
  %i.ky = zext i8 %i.ku to i64                    ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ky ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !12
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.kx
  store float %i.lb, ptr %i.kz, align 4, !tbaa !12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ky ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !133
  %i.le = add i8 %i.ld, 1
  store i8 %i.le, ptr %i.lc, align 1, !tbaa !133
  br label %.split239.us.thread406

.split239.us:                                     ; preds = %.backedge
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next297, %indvars.iv306
  br i1 %exitcond, label %bb.w, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.split239.us, %.split239.us.thread, %.split239.us.thread406
  %indvars.iv296.be = phi i64 [ %indvars.iv.next297, %.split239.us ], [ %indvars.iv.next297404, %.split239.us.thread ], [ %indvars.iv.next297407, %.split239.us.thread406 ]
  br label %.backedge

.split239.us.thread406:                           ; preds = %.split.split.us.2, %fcol.exit224.us.2
  %indvars.iv.next297407 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond408 = icmp eq i64 %indvars.iv.next297407, %indvars.iv306
  br i1 %exitcond408, label %.thread409, label %.backedge.backedge

.split239.us.thread:                              ; preds = %.split.split.2, %fcol.exit224.2
  %indvars.iv.next297404 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond405 = icmp eq i64 %indvars.iv.next297404, %indvars.iv306
  br i1 %exitcond405, label %.thread, label %.backedge.backedge

fcol.exit224:                                     ; preds = %.split.split.preheader
  %.tr.i.i222 = or disjoint i32 %i.gx, %i.jm
  %i.lf = shl nuw nsw i32 %.tr.i.i222, 1
  %i.lg = lshr i32 %4, %i.lf
  %i.lh = and i32 %i.lg, 3
  %gep414 = getelementptr [4 x i8], ptr %invariant.gep413, i64 %i.js
  %i.li = load float, ptr %gep414, align 4, !tbaa !12
  %i.lj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.li, float 0.000000e+00)
  %i.lk = zext nneg i32 %i.lh to i64              ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lk ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !12
  %i.ln = fadd reassoc nsz arcp contract afn float %i.lm, %i.lj
  store float %i.ln, ptr %i.ll, align 4, !tbaa !12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lk ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !133
  %i.lq = add i8 %i.lp, 1
  store i8 %i.lq, ptr %i.lo, align 1, !tbaa !133
  br label %.split.split.1

.split.split.1:                                   ; preds = %.split.split.preheader, %fcol.exit224
  %i.lr = or i32 %i.gy, %i.jk
  %or.cond3.1 = icmp sgt i32 %i.lr, -1
  %or.cond218.1 = and i1 %i.gz, %or.cond3.1
  br i1 %or.cond218.1, label %fcol.exit224.1, label %.split.split.2

fcol.exit224.1:                                   ; preds = %.split.split.1
  %.tr.i.i222.1 = or disjoint i32 %i.ha, %i.jm
  %i.ls = shl nuw nsw i32 %.tr.i.i222.1, 1
  %i.lt = lshr i32 %4, %i.ls
  %i.lu = and i32 %i.lt, 3
  %i.lv = getelementptr [4 x i8], ptr %i.hb, i64 %i.js
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !12
  %i.lx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lw, float 0.000000e+00)
  %i.ly = zext nneg i32 %i.lu to i64              ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ly ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !12
  %i.mb = fadd reassoc nsz arcp contract afn float %i.ma, %i.lx
  store float %i.mb, ptr %i.lz, align 4, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ly ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !133
  %i.me = add i8 %i.md, 1
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !133
  br label %.split.split.2

.split.split.2:                                   ; preds = %fcol.exit224.1, %.split.split.1
  %i.mf = or i32 %i.hc, %i.jk
  %or.cond3.2 = icmp sgt i32 %i.mf, -1
  %or.cond218.2 = and i1 %i.hd, %or.cond3.2
  br i1 %or.cond218.2, label %fcol.exit224.2, label %.split239.us.thread

fcol.exit224.2:                                   ; preds = %.split.split.2
  %.tr.i.i222.2 = or disjoint i32 %i.he, %i.jm
  %i.mg = shl nuw nsw i32 %.tr.i.i222.2, 1
  %i.mh = lshr i32 %4, %i.mg
  %i.mi = and i32 %i.mh, 3
  %i.mj = getelementptr [4 x i8], ptr %i.hf, i64 %i.js
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !12
  %i.ml = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mk, float 0.000000e+00)
  %i.mm = zext nneg i32 %i.mi to i64              ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mm ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !12
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, %i.ml
  store float %i.mp, ptr %i.mn, align 4, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mm ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !133
  %i.ms = add i8 %i.mr, 1
  store i8 %i.ms, ptr %i.mq, align 1, !tbaa !133
  br label %.split239.us.thread

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ag, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.mt = add nsw i32 %.1198, 1                   ; 2 uses
  %i.mu = icmp slt i32 %i.mt, %2
  br i1 %i.mu, label %bb.v, label %._crit_edge

scalar.ph:                                        ; preds = %bb.ag, %scalar.ph.preheader.new
  %indvars.iv301 = phi i64 [ %indvars.iv301.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next302.1, %bb.ag ] ; 6 uses
  %.not214 = icmp eq i64 %indvars.iv301, %i.ij
  br i1 %.not214, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %scalar.ph
  %i.mv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv301
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !133 ; 2 uses
  %.not215 = icmp eq i8 %i.mw, 0
  br i1 %.not215, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  %i.my = load float, ptr %i.mx, align 4, !tbaa !12
  %i.mz = uitofp i8 %i.mw to float
  %i.na = fdiv reassoc nsz arcp contract afn float %i.my, %i.mz
  br label %scalar.ph.1

bb.ac:                                            ; preds = %bb.aa, %scalar.ph
  %i.nb = load float, ptr %i.ih, align 4, !tbaa !12
  %i.nc = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nb, float 0.000000e+00)
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ab, %bb.ac
  %.sink = phi float [ %i.na, %bb.ab ], [ %i.nc, %bb.ac ]
  %gep418 = getelementptr [4 x i8], ptr %invariant.gep417.sink, i64 %indvars.iv301
  store float %.sink, ptr %gep418, align 4, !tbaa !12
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 4 uses
  %.not214.1 = icmp eq i64 %indvars.iv.next302, %i.ij
  br i1 %.not214.1, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph.1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next302
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !133 ; 2 uses
  %.not215.1 = icmp eq i8 %i.ne, 0
  br i1 %.not215.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next302
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !12
  %i.nh = uitofp i8 %i.ne to float
  %i.ni = fdiv reassoc nsz arcp contract afn float %i.ng, %i.nh
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %scalar.ph.1
  %i.nj = load float, ptr %i.ih, align 4, !tbaa !12
  %i.nk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nj, float 0.000000e+00)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.1 = phi float [ %i.ni, %bb.ae ], [ %i.nk, %bb.af ]
  %gep418.1 = getelementptr [4 x i8], ptr %invariant.gep417.sink.1, i64 %indvars.iv.next302
  store float %.sink.1, ptr %gep418.1, align 4, !tbaa !12
  %indvars.iv.next302.1 = add nuw nsw i64 %indvars.iv301, 2 ; 2 uses
  %exitcond305.not.1 = icmp eq i64 %indvars.iv.next302.1, %wide.trip.count304
  br i1 %exitcond305.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !724

.preheader235:                                    ; preds = %.preheader235.preheader, %.split264
  %indvars.iv327 = phi i64 [ %i.nr, %.split264 ], [ 0, %.preheader235.preheader ] ; 4 uses
  %i.nl = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %indvars.iv327
  %indvars.iv327.tr = trunc nuw nsw i64 %indvars.iv327 to i32
  %i.nm = shl nuw nsw i32 %indvars.iv327.tr, 1
  %i.nn = and i32 %i.nm, 14                       ; 3 uses
  %indvars.iv327.tr403 = trunc i64 %indvars.iv327 to i32
  %i.no = shl i32 %indvars.iv327.tr403, 1
  %i.np = add i32 %i.no, 14
  %i.nq = and i32 %i.np, 14                       ; 3 uses
  %i.nr = add nuw nsw i64 %indvars.iv327, 1       ; 3 uses
  %.tr = trunc nuw nsw i64 %i.nr to i32
  %i.ns = shl nuw nsw i32 %.tr, 1
  %i.nt = and i32 %i.ns, 14                       ; 3 uses
  br label %fcol.exit227

.preheader233:                                    ; preds = %.split264, %.split264.us.us
  %i.nu = add nsw i32 %3, -1
  %i.nv = icmp sgt i32 %3, 2
  br i1 %i.nv, label %.lr.ph284, label %._crit_edge285.split

.lr.ph284:                                        ; preds = %.preheader233
  %i.nw = add nsw i32 %2, -1
  %i.nx = icmp sgt i32 %2, 2
  %i.ny = sub nsw i32 %2, %6                      ; 3 uses
  %i.nz = sext i32 %2 to i64                      ; 2 uses
  %i.oa = shl nsw i64 %i.nz, 2
  %i.ob = shl nuw nsw i32 %i.ny, 2
  %i.oc = zext nneg i32 %i.ob to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.oc
  %i.od = sext i32 %i.ny to i64
  %invariant.gep286 = getelementptr [4 x i8], ptr %1, i64 %i.od
  %i.oe = add nsw i32 %i.f, -1
  br i1 %i.nx, label %.lr.ph280.preheader, label %._crit_edge285.split

.lr.ph280.preheader:                              ; preds = %.lr.ph284
  %i.of = sub nsw i32 %3, %6
  %i.og = shl nsw i32 %2, 2
  %i.oh = sext i32 %i.of to i64
  %i.oi = zext nneg i32 %6 to i64
  %i.oj = zext nneg i32 %i.og to i64
  %i.ok = zext nneg i32 %2 to i64
  %wide.trip.count370 = zext nneg i32 %i.nu to i64
  br label %.lr.ph280

.split264:                                        ; preds = %.epilog-lcssa
  %exitcond331.not = icmp eq i64 %i.nr, 16
  br i1 %exitcond331.not, label %.preheader233, label %.preheader235

fcol.exit227:                                     ; preds = %.preheader235, %.epilog-lcssa
  %indvars.iv322 = phi i64 [ 0, %.preheader235 ], [ %indvars.iv.next323, %.epilog-lcssa ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [128 x i8], ptr %i.nl, i64 %indvars.iv322 ; 5 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.on = trunc nuw nsw i64 %indvars.iv322 to i32
  %i.oo = and i32 %i.on, 1                        ; 3 uses
  %.tr.i.i225 = or disjoint i32 %i.oo, %i.nn
  %i.op = shl nuw nsw i32 %.tr.i.i225, 1
  %i.oq = lshr i32 %4, %i.op
  %i.or = and i32 %i.oq, 3                        ; 10 uses
  %i.os = trunc i64 %indvars.iv322 to i32
  %i.ot = and i32 %i.os, 1
  %i.ou = xor i32 %i.ot, 1                        ; 3 uses
  %.tr.i.i228 = or disjoint i32 %i.ou, %i.nq
  %i.ov = shl nuw nsw i32 %.tr.i.i228, 1
  %i.ow = lshr i32 %4, %i.ov
  %i.ox = and i32 %i.ow, 3                        ; 3 uses
  %i.oy = icmp eq i32 %i.ox, %i.or
  br i1 %i.oy, label %fcol.exit230.1, label %bb.ah

bb.ah:                                            ; preds = %fcol.exit227
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store <2 x i32> %i.ad, ptr %i.om, align 4, !tbaa !15
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  store i32 %i.ox, ptr %i.oz, align 4, !tbaa !15
  %i.pb = zext nneg i32 %i.ox to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pb ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !15
  %i.pe = add nsw i32 %i.pd, 1
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !15
  br label %fcol.exit230.1

fcol.exit230.1:                                   ; preds = %fcol.exit227, %bb.ah
  %.2 = phi ptr [ %i.pa, %bb.ah ], [ %i.om, %fcol.exit227 ] ; 4 uses
  %.tr.i.i228.1 = or disjoint i32 %i.oo, %i.nq
  %i.pf = shl nuw nsw i32 %.tr.i.i228.1, 1
  %i.pg = lshr i32 %4, %i.pf
  %i.ph = and i32 %i.pg, 3                        ; 3 uses
  %i.pi = icmp eq i32 %i.ph, %i.or
  br i1 %i.pi, label %fcol.exit230.2, label %bb.ai

bb.ai:                                            ; preds = %fcol.exit230.1
  %i.pj = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store <2 x i32> %i.ab, ptr %.2, align 4, !tbaa !15
  %i.pk = getelementptr inbounds nuw i8, ptr %.2, i64 12
  store i32 %i.ph, ptr %i.pj, align 4, !tbaa !15
  %i.pl = zext nneg i32 %i.ph to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pl ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !15
  %i.po = add nsw i32 %i.pn, 2
  store i32 %i.po, ptr %i.pm, align 4, !tbaa !15
  br label %fcol.exit230.2

fcol.exit230.2:                                   ; preds = %bb.ai, %fcol.exit230.1
  %.2.1 = phi ptr [ %i.pk, %bb.ai ], [ %.2, %fcol.exit230.1 ] ; 4 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 3 uses
  %i.pp = trunc nuw nsw i64 %indvars.iv.next323 to i32
  %i.pq = and i32 %i.pp, 1                        ; 3 uses
  %.tr.i.i228.2 = or disjoint i32 %i.pq, %i.nq
  %i.pr = shl nuw nsw i32 %.tr.i.i228.2, 1
  %i.ps = lshr i32 %4, %i.pr
  %i.pt = and i32 %i.ps, 3                        ; 3 uses
  %i.pu = icmp eq i32 %i.pt, %i.or
  br i1 %i.pu, label %.split252, label %bb.aj

bb.aj:                                            ; preds = %fcol.exit230.2
  %i.pv = getelementptr inbounds nuw i8, ptr %.2.1, i64 8
  store <2 x i32> %i.af, ptr %.2.1, align 4, !tbaa !15
  %i.pw = getelementptr inbounds nuw i8, ptr %.2.1, i64 12
  store i32 %i.pt, ptr %i.pv, align 4, !tbaa !15
  %i.px = zext nneg i32 %i.pt to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.px ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !15
  %i.qa = add nsw i32 %i.pz, 1
  store i32 %i.qa, ptr %i.py, align 4, !tbaa !15
  br label %.split252

.split252:                                        ; preds = %bb.aj, %fcol.exit230.2
  %.2.2 = phi ptr [ %i.pw, %bb.aj ], [ %.2.1, %fcol.exit230.2 ] ; 5 uses
  %.tr.i.i228.1312 = or disjoint i32 %i.ou, %i.nn
  %i.qb = shl nuw nsw i32 %.tr.i.i228.1312, 1
  %i.qc = lshr i32 %4, %i.qb
  %i.qd = and i32 %i.qc, 3                        ; 3 uses
  %i.qe = icmp eq i32 %i.qd, %i.or
  br i1 %i.qe, label %fcol.exit230.2.1, label %bb.ak

bb.ak:                                            ; preds = %.split252
  %i.qf = getelementptr inbounds nuw i8, ptr %.2.2, i64 4
  store i32 -1, ptr %.2.2, align 4, !tbaa !15
  %i.qg = getelementptr inbounds nuw i8, ptr %.2.2, i64 8
  store i32 2, ptr %i.qf, align 4, !tbaa !15
  %i.qh = getelementptr inbounds nuw i8, ptr %.2.2, i64 12
  store i32 %i.qd, ptr %i.qg, align 4, !tbaa !15
  %i.qi = zext nneg i32 %i.qd to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !15
  %i.ql = add nsw i32 %i.qk, 2
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !15
  br label %fcol.exit230.2.1

fcol.exit230.2.1:                                 ; preds = %.split252, %bb.ak
  %.2.1314 = phi ptr [ %i.qh, %bb.ak ], [ %.2.2, %.split252 ] ; 5 uses
  %.tr.i.i228.2.1 = or disjoint i32 %i.pq, %i.nn
  %i.qm = shl nuw nsw i32 %.tr.i.i228.2.1, 1
  %i.qn = lshr i32 %4, %i.qm
  %i.qo = and i32 %i.qn, 3                        ; 3 uses
  %i.qp = icmp eq i32 %i.qo, %i.or
  br i1 %i.qp, label %.split252.1, label %bb.al

bb.al:                                            ; preds = %fcol.exit230.2.1
  %i.qq = getelementptr inbounds nuw i8, ptr %.2.1314, i64 4
  store i32 1, ptr %.2.1314, align 4, !tbaa !15
  %i.qr = getelementptr inbounds nuw i8, ptr %.2.1314, i64 8
  store i32 2, ptr %i.qq, align 4, !tbaa !15
  %i.qs = getelementptr inbounds nuw i8, ptr %.2.1314, i64 12
  store i32 %i.qo, ptr %i.qr, align 4, !tbaa !15
  %i.qt = zext nneg i32 %i.qo to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qt ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !15
  %i.qw = add nsw i32 %i.qv, 2
  store i32 %i.qw, ptr %i.qu, align 4, !tbaa !15
  br label %.split252.1

.split252.1:                                      ; preds = %bb.al, %fcol.exit230.2.1
  %.2.2.1 = phi ptr [ %i.qs, %bb.al ], [ %.2.1314, %fcol.exit230.2.1 ] ; 4 uses
  %.tr.i.i228.2315 = or disjoint i32 %i.ou, %i.nt
  %i.qx = shl nuw nsw i32 %.tr.i.i228.2315, 1
  %i.qy = lshr i32 %4, %i.qx
  %i.qz = and i32 %i.qy, 3                        ; 3 uses
  %i.ra = icmp eq i32 %i.qz, %i.or
  br i1 %i.ra, label %fcol.exit230.1.2, label %bb.am

bb.am:                                            ; preds = %.split252.1
  %i.rb = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 8
  store <2 x i32> %i.ah, ptr %.2.2.1, align 4, !tbaa !15
  %i.rc = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 12
  store i32 %i.qz, ptr %i.rb, align 4, !tbaa !15
  %i.rd = zext nneg i32 %i.qz to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rd ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !15
  %i.rg = add nsw i32 %i.rf, 1
  store i32 %i.rg, ptr %i.re, align 4, !tbaa !15
  br label %fcol.exit230.1.2

fcol.exit230.1.2:                                 ; preds = %bb.am, %.split252.1
  %.2.2317 = phi ptr [ %i.rc, %bb.am ], [ %.2.2.1, %.split252.1 ] ; 4 uses
  %.tr.i.i228.1.2 = or disjoint i32 %i.oo, %i.nt
  %i.rh = shl nuw nsw i32 %.tr.i.i228.1.2, 1
  %i.ri = lshr i32 %4, %i.rh
  %i.rj = and i32 %i.ri, 3                        ; 3 uses
  %i.rk = icmp eq i32 %i.rj, %i.or
  br i1 %i.rk, label %fcol.exit230.2.2, label %bb.an

bb.an:                                            ; preds = %fcol.exit230.1.2
  %i.rl = getelementptr inbounds nuw i8, ptr %.2.2317, i64 8
  store <2 x i32> %i.ak, ptr %.2.2317, align 4, !tbaa !15
  %i.rm = getelementptr inbounds nuw i8, ptr %.2.2317, i64 12
  store i32 %i.rj, ptr %i.rl, align 4, !tbaa !15
  %i.rn = zext nneg i32 %i.rj to i64
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rn ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !15
  %i.rq = add nsw i32 %i.rp, 2
  store i32 %i.rq, ptr %i.ro, align 4, !tbaa !15
  br label %fcol.exit230.2.2

fcol.exit230.2.2:                                 ; preds = %bb.an, %fcol.exit230.1.2
  %.2.1.2 = phi ptr [ %i.rm, %bb.an ], [ %.2.2317, %fcol.exit230.1.2 ] ; 4 uses
  %.tr.i.i228.2.2 = or disjoint i32 %i.pq, %i.nt
  %i.rr = shl nuw nsw i32 %.tr.i.i228.2.2, 1
  %i.rs = lshr i32 %4, %i.rr
  %i.rt = and i32 %i.rs, 3                        ; 3 uses
  %i.ru = icmp eq i32 %i.rt, %i.or
  br i1 %i.ru, label %.split252.2, label %bb.ao

end_hunk_1
