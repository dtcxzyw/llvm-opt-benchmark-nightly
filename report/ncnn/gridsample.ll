Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample?download=true
inline.NumInlined: 78
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  invoke void %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef %i.mp)
          to label %_ZN4ncnn3MatD2Ev.exit290 unwind label %bb.p, !inline_history !77

bb.n:                                             ; preds = %bb.l
  %.not.i423 = icmp eq ptr %i.mp, null
  br i1 %.not.i423, label %_ZN4ncnn3MatD2Ev.exit290, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.mp) #7
  br label %_ZN4ncnn3MatD2Ev.exit290

bb.p:                                             ; preds = %bb.m
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit290:                         ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.bu

bb.q:                                             ; preds = %bb.e
  %i.mv = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.r, label %_ZN4ncnn3MatD2Ev.exit289

bb.r:                                             ; preds = %bb.q
  %i.mx = load ptr, ptr %i.ak, align 8, !tbaa !117 ; 3 uses
  %.not3.i341 = icmp eq ptr %i.mx, null
  %i.my = load ptr, ptr %4, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i341, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !46
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.mx, ptr noundef %i.my)
          to label %_ZN4ncnn3MatD2Ev.exit289 unwind label %bb.v, !inline_history !77

bb.t:                                             ; preds = %bb.r
  %.not.i421 = icmp eq ptr %i.my, null
  br i1 %.not.i421, label %_ZN4ncnn3MatD2Ev.exit289, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.my) #7
  br label %_ZN4ncnn3MatD2Ev.exit289

bb.v:                                             ; preds = %bb.s
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit289:                         ; preds = %bb.q, %bb.e, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.cc

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !30
  %i.ng = icmp eq i32 %i.nf, 0                    ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.j, i64 116
  %.in238 = select i1 %i.ng, ptr %i.nh, ptr %i.ni
  %i.nj = load i32, ptr %.in238, align 4, !tbaa !36 ; 7 uses
  store i32 %i.nj, ptr %i.f, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.nk = getelementptr inbounds nuw i8, ptr %i.j, i64 124 ; 2 uses
  %.in239 = select i1 %i.ng, ptr %i.nk, ptr %i.nh
  %i.nl = load i32, ptr %.in239, align 4, !tbaa !36 ; 7 uses
  store i32 %i.nl, ptr %i.g, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.nm = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %.in240 = select i1 %i.ng, ptr %i.nm, ptr %i.nk
  %i.nn = load i32, ptr %.in240, align 4, !tbaa !36 ; 6 uses
  store i32 %i.nn, ptr %i.h, align 4, !tbaa !36
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !98
  tail call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i32 noundef %i.nj, i32 noundef %i.nl, i32 noundef %i.nn, i32 noundef %i.t, i64 noundef %i.x, ptr noundef %i.np)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.nq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.nu = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.nu, align 8, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ns, i8 0, i64 28, i1 false)
  %i.nv = load i32, ptr %i.nm, align 8, !tbaa !95
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !99
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.nj, i32 noundef %i.nl, i32 noundef %i.nn, i32 noundef %i.nv, i64 noundef %i.x, ptr noundef %i.nx)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ny = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZNK4ncnn3Mat5emptyEv.exit256.thread, label %_ZNK4ncnn3Mat5emptyEv.exit256

_ZNK4ncnn3Mat5emptyEv.exit256:                    ; preds = %bb.x
  %i.oa = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !40
  %i.oc = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !95
  %i.oe = sext i32 %i.od to i64
  %i.of = mul i64 %i.ob, %i.oe
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %_ZNK4ncnn3Mat5emptyEv.exit256.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit256
  %i.oh = load ptr, ptr %5, align 8, !tbaa !41    ; 7 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %_ZNK4ncnn3Mat5emptyEv.exit256.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.y
  %i.oj = load i64, ptr %i.nu, align 8, !tbaa !40 ; 5 uses
  %i.ok = load i32, ptr %i.nt, align 8, !tbaa !95
  %i.ol = sext i32 %i.ok to i64
  %i.om = mul i64 %i.oj, %i.ol
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %_ZNK4ncnn3Mat5emptyEv.exit256.thread, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.oo = landingpad { ptr, i32 }
          cleanup
  %i.op = load ptr, ptr %i.nq, align 8, !tbaa !100 ; 2 uses
  %.not.i388 = icmp eq ptr %i.op, null
  br i1 %.not.i388, label %_ZN4ncnn3MatD2Ev.exit277, label %bb.bo

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.oq = load i32, ptr %i.ne, align 4, !tbaa !30
  %i.or = icmp eq i32 %i.oq, 0
  %i.os = icmp sgt i32 %i.nn, 0                   ; 2 uses
  br i1 %i.or, label %.noexc267, label %.noexc301

.noexc267:                                        ; preds = %bb.aa
  br i1 %i.os, label %.noexc303.lr.ph, label %.loopexit

.noexc303.lr.ph:                                  ; preds = %.noexc267
  %i.ot = load ptr, ptr %i.k, align 8, !tbaa !41, !noalias !118
  %i.ou = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !40, !noalias !118
  %i.ow = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !39, !noalias !118
  %factor.op.mul898 = mul i64 %i.ov, %i.ox
  %i.oy = icmp sgt i32 %i.nl, 0
  %i.oz = icmp sgt i32 %i.nj, 0
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.pc = add nsw i32 %i.r, -1
  %i.pd = sitofp fast i32 %i.pc to float          ; 5 uses
  %i.pe = sitofp fast i32 %i.r to float           ; 3 uses
  %i.pf = fmul fast float %i.pe, 5.000000e-01
  %i.pg = fadd fast float %i.pe, -5.000000e-01
  br i1 %i.oy, label %.noexc303.preheader, label %.loopexit

.noexc303.preheader:                              ; preds = %.noexc303.lr.ph
  %i.ph = load i64, ptr %i.nr, align 8, !tbaa !39, !noalias !119 ; 2 uses
  %i.pi = mul i64 %i.ph, %i.oj
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.pi
  %i.pk = shl i64 %i.oj, 1
  %i.pl = mul i64 %i.pk, %i.ph
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.pl
  %wide.trip.count = zext nneg i32 %i.nn to i64
  br label %.noexc303

.noexc303:                                        ; preds = %.noexc303.preheader, %._crit_edge886
  %indvars.iv = phi i64 [ 0, %.noexc303.preheader ], [ %indvars.iv.next, %._crit_edge886 ] ; 2 uses
  %.0175896 = phi ptr [ %i.pm, %.noexc303.preheader ], [ %.us-phi893, %._crit_edge886 ] ; 2 uses
  %.0178895 = phi ptr [ %i.pj, %.noexc303.preheader ], [ %.us-phi892, %._crit_edge886 ] ; 2 uses
  %.0181894 = phi ptr [ %i.oh, %.noexc303.preheader ], [ %.us-phi891, %._crit_edge886 ] ; 2 uses
  %i.pn = load i32, ptr %i.a, align 4             ; 2 uses
  %i.po = add nsw i32 %i.pn, -1
  %i.pp = sitofp fast i32 %i.po to float          ; 5 uses
  %i.pq = sitofp fast i32 %i.pn to float          ; 3 uses
  %factor.op.fmul879 = fmul fast float %i.pq, 5.000000e-01
  %i.pr = fadd fast float %i.pq, -5.000000e-01
  br i1 %i.oz, label %.preheader.lr.ph.split.us, label %._crit_edge886

.preheader.lr.ph.split.us:                        ; preds = %.noexc303
  %.reass899 = mul i64 %factor.op.mul898, %indvars.iv
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.reass899
  %i.pt = load i32, ptr %i.pa, align 8, !tbaa !29
  %.not.i446.us = icmp eq i32 %i.pt, 0            ; 6 uses
  %i.pu = load i32, ptr %i.pb, align 4, !tbaa !28 ; 3 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us890, %.preheader.lr.ph.split.us
  %.0171885.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %i.sj, %._crit_edge.us890 ]
  %.0172884.us = phi ptr [ %i.ps, %.preheader.lr.ph.split.us ], [ %i.se, %._crit_edge.us890 ]
  %.1176883.us = phi ptr [ %.0175896, %.preheader.lr.ph.split.us ], [ %i.sh, %._crit_edge.us890 ]
  %.1179882.us = phi ptr [ %.0178895, %.preheader.lr.ph.split.us ], [ %i.sg, %._crit_edge.us890 ]
  %.1182881.us = phi ptr [ %.0181894, %.preheader.lr.ph.split.us ], [ %i.sf, %._crit_edge.us890 ]
  %i.pv = load i32, ptr %i.b, align 4             ; 6 uses
  %i.pw = add nsw i32 %i.pv, -1
  %i.px = sitofp fast i32 %i.pw to float
  %i.py = sitofp fast i32 %i.pv to float
  %i.pz = add nsw i32 %i.pv, -1
  %i.qa = sitofp fast i32 %i.pz to float          ; 2 uses
  %i.qb = sitofp fast i32 %i.pv to float          ; 2 uses
  %i.qc = fadd fast float %i.qb, -5.000000e-01
  %6 = add nsw i32 %i.pv, -1
  %7 = sitofp fast i32 %6 to float
  %8 = add nsw i32 %i.pv, -1
  %9 = sitofp fast i32 %8 to float
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader.us, %_ZN4ncnnL13compute_coordEfiii.exit466.us
  %.0170874.us = phi i32 [ 0, %.preheader.us ], [ %i.si, %_ZN4ncnnL13compute_coordEfiii.exit466.us ]
  %.1173873.us = phi ptr [ %.0172884.us, %.preheader.us ], [ %i.se, %_ZN4ncnnL13compute_coordEfiii.exit466.us ] ; 4 uses
  %.2177872.us = phi ptr [ %.1176883.us, %.preheader.us ], [ %i.sh, %_ZN4ncnnL13compute_coordEfiii.exit466.us ] ; 2 uses
  %.2180871.us = phi ptr [ %.1179882.us, %.preheader.us ], [ %i.sg, %_ZN4ncnnL13compute_coordEfiii.exit466.us ] ; 2 uses
  %.2183870.us = phi ptr [ %.1182881.us, %.preheader.us ], [ %i.sf, %_ZN4ncnnL13compute_coordEfiii.exit466.us ] ; 2 uses
  %i.qd = load float, ptr %.1173873.us, align 4, !tbaa !43 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.1173873.us, i64 4
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !43 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.1173873.us, i64 8
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !43 ; 2 uses
  br i1 %.not.i446.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qi = fmul fast float %i.qd, 5.000000e-01
  %i.qj = fadd fast float %i.qi, 5.000000e-01
  %i.qk = fmul fast float %i.qj, %i.pp
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit447.us

bb.ad:                                            ; preds = %bb.ab
  %i.ql = fadd fast float %i.qd, 1.000000e+00
  %.reass880.us = fmul fast float %i.ql, %factor.op.fmul879
  %i.qm = fadd fast float %.reass880.us, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit447.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit447.us: ; preds = %bb.ad, %bb.ac
  %i.qn = phi fast float [ %i.qk, %bb.ac ], [ %i.qm, %bb.ad ] ; 4 uses
  switch i32 %i.pu, label %_ZN4ncnnL13compute_coordEfiii.exit.us [
    i32 2, label %bb.af
    i32 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit447.us
  br i1 %.not.i446.us, label %_ZN4ncnnL13compute_coordEfiii.exit.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit.thread758.us

_ZN4ncnnL13compute_coordEfiii.exit.thread758.us:  ; preds = %bb.ae
  %i.qo = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qn)
  %i.qp = fsub fast float %i.qo, %i.pp
  %i.qq = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qp)
  %i.qr = fsub fast float %i.pp, %i.qq
  br label %bb.ag

_ZN4ncnnL13compute_coordEfiii.exit.thread.us:     ; preds = %bb.ae
  %i.qs = fadd fast float %i.qn, 5.000000e-01
  %i.qt = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qs)
  %i.qu = fsub fast float %i.qt, %i.pq
  %i.qv = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qu)
  %i.qw = fsub fast float %i.pr, %i.qv
  %.sroa.speculated4.i12.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.qw, float 0.000000e+00)
  %.sroa.speculated.i13.i.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i.us, float %i.pp)
  br label %bb.ah

bb.af:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit447.us
  %.sroa.speculated4.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.qn, float 0.000000e+00)
  %.sroa.speculated.i.i.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i.us, float %i.pp)
  br label %_ZN4ncnnL13compute_coordEfiii.exit.us

_ZN4ncnnL13compute_coordEfiii.exit.us:            ; preds = %bb.af, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit447.us
  %.0.i.us = phi nsz float [ %.sroa.speculated.i.i.us, %bb.af ], [ %i.qn, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit447.us ] ; 2 uses
  br i1 %.not.i446.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit.us, %_ZN4ncnnL13compute_coordEfiii.exit.thread758.us
  %.0.i760.us = phi float [ %i.qr, %_ZN4ncnnL13compute_coordEfiii.exit.thread758.us ], [ %.0.i.us, %_ZN4ncnnL13compute_coordEfiii.exit.us ]
  %i.qx = fmul fast float %i.qf, 5.000000e-01
  %i.qy = fadd fast float %i.qx, 5.000000e-01
  %i.qz = fmul fast float %i.qy, %i.px
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit450.us

bb.ah:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit.us, %_ZN4ncnnL13compute_coordEfiii.exit.thread.us
  %.0.i757.us = phi float [ %.sroa.speculated.i13.i.us, %_ZN4ncnnL13compute_coordEfiii.exit.thread.us ], [ %.0.i.us, %_ZN4ncnnL13compute_coordEfiii.exit.us ]
  %i.ra = fmul fast float %i.qf, 5.000000e-01
  %i.rb = fadd fast float %i.ra, 5.000000e-01
  %i.rc = fmul fast float %i.rb, %i.py
  %i.rd = fadd fast float %i.rc, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit450.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit450.us: ; preds = %bb.ah, %bb.ag
  %.0.i756.us = phi float [ %.0.i760.us, %bb.ag ], [ %.0.i757.us, %bb.ah ]
  %i.re = phi fast float [ %i.qz, %bb.ag ], [ %i.rd, %bb.ah ] ; 4 uses
  switch i32 %i.pu, label %_ZN4ncnnL13compute_coordEfiii.exit457.us [
    i32 2, label %bb.aj
    i32 3, label %bb.ai
  ]

bb.ai:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit450.us
  br i1 %.not.i446.us, label %_ZN4ncnnL13compute_coordEfiii.exit457.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit457.thread764.us

_ZN4ncnnL13compute_coordEfiii.exit457.thread764.us: ; preds = %bb.ai
  %i.rf = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.re)
  %i.rg = fsub fast float %i.rf, %i.qa
  %i.rh = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rg)
  %i.ri = fsub fast float %i.qa, %i.rh
  br label %bb.ak

_ZN4ncnnL13compute_coordEfiii.exit457.thread.us:  ; preds = %bb.ai
  %i.rj = fadd fast float %i.re, 5.000000e-01
  %i.rk = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rj)
  %i.rl = fsub fast float %i.rk, %i.qb
  %i.rm = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rl)
  %i.rn = fsub fast float %i.qc, %i.rm
  %.sroa.speculated4.i12.i453.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.rn, float 0.000000e+00)
  %.sroa.speculated.i13.i454.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i453.us, float %7)
  br label %bb.al

bb.aj:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit450.us
  %.sroa.speculated4.i.i455.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.re, float 0.000000e+00)
  %.sroa.speculated.i.i456.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i455.us, float %9)
  br label %_ZN4ncnnL13compute_coordEfiii.exit457.us

_ZN4ncnnL13compute_coordEfiii.exit457.us:         ; preds = %bb.aj, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit450.us
  %.0.i452.us = phi nsz float [ %.sroa.speculated.i.i456.us, %bb.aj ], [ %i.re, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit450.us ] ; 2 uses
  br i1 %.not.i446.us, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit457.us, %_ZN4ncnnL13compute_coordEfiii.exit457.thread764.us
  %.0.i452766.us = phi float [ %i.ri, %_ZN4ncnnL13compute_coordEfiii.exit457.thread764.us ], [ %.0.i452.us, %_ZN4ncnnL13compute_coordEfiii.exit457.us ]
  %i.ro = fmul fast float %i.qh, 5.000000e-01
  %i.rp = fadd fast float %i.ro, 5.000000e-01
  %i.rq = fmul fast float %i.rp, %i.pd
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit459.us

bb.al:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit457.us, %_ZN4ncnnL13compute_coordEfiii.exit457.thread.us
  %.0.i452763.us = phi float [ %.sroa.speculated.i13.i454.us, %_ZN4ncnnL13compute_coordEfiii.exit457.thread.us ], [ %.0.i452.us, %_ZN4ncnnL13compute_coordEfiii.exit457.us ]
  %i.rr = fadd fast float %i.qh, 1.000000e+00
  %i.rs = fmul fast float %i.pf, %i.rr
  %i.rt = fadd fast float %i.rs, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit459.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit459.us: ; preds = %bb.al, %bb.ak
  %.0.i452762.us = phi float [ %.0.i452766.us, %bb.ak ], [ %.0.i452763.us, %bb.al ]
  %i.ru = phi fast float [ %i.rq, %bb.ak ], [ %i.rt, %bb.al ] ; 4 uses
  switch i32 %i.pu, label %_ZN4ncnnL13compute_coordEfiii.exit466.us [
    i32 2, label %bb.ap
    i32 3, label %bb.am
  ]

bb.am:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit459.us
  br i1 %.not.i446.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rv = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ru)
  %i.rw = fsub fast float %i.rv, %i.pd
  %i.rx = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rw)
  %i.ry = fsub fast float %i.pd, %i.rx
  br label %_ZN4ncnnL13compute_coordEfiii.exit466.us

bb.ao:                                            ; preds = %bb.am
  %i.rz = fadd fast float %i.ru, 5.000000e-01
  %i.sa = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rz)
  %i.sb = fsub fast float %i.sa, %i.pe
  %i.sc = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.sb)
  %i.sd = fsub fast float %i.pg, %i.sc
  %.sroa.speculated4.i12.i462.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.sd, float 0.000000e+00)
  %.sroa.speculated.i13.i463.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i462.us, float %i.pd)
  br label %_ZN4ncnnL13compute_coordEfiii.exit466.us

bb.ap:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit459.us
  %.sroa.speculated4.i.i464.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.ru, float 0.000000e+00)
  %.sroa.speculated.i.i465.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i464.us, float %i.pd)
  br label %_ZN4ncnnL13compute_coordEfiii.exit466.us

_ZN4ncnnL13compute_coordEfiii.exit466.us:         ; preds = %bb.ap, %bb.ao, %bb.an, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit459.us
  %.0.i461.us = phi nsz float [ %.sroa.speculated.i.i465.us, %bb.ap ], [ %i.ry, %bb.an ], [ %.sroa.speculated.i13.i463.us, %bb.ao ], [ %i.ru, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit459.us ]
  store float %.0.i756.us, ptr %.2183870.us, align 4, !tbaa !43
  store float %.0.i452762.us, ptr %.2180871.us, align 4, !tbaa !43
  store float %.0.i461.us, ptr %.2177872.us, align 4, !tbaa !43
  %i.se = getelementptr inbounds nuw i8, ptr %.1173873.us, i64 12 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.2183870.us, i64 4 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.2180871.us, i64 4 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.2177872.us, i64 4 ; 3 uses
  %i.si = add nuw nsw i32 %.0170874.us, 1         ; 2 uses
  %exitcond929.not = icmp eq i32 %i.si, %i.nj
  br i1 %exitcond929.not, label %._crit_edge.us890, label %bb.ab, !llvm.loop !82

._crit_edge.us890:                                ; preds = %_ZN4ncnnL13compute_coordEfiii.exit466.us
  %i.sj = add nuw nsw i32 %.0171885.us, 1         ; 2 uses
  %exitcond930.not = icmp eq i32 %i.sj, %i.nl
  br i1 %exitcond930.not, label %._crit_edge886, label %.preheader.us, !llvm.loop !83

._crit_edge886:                                   ; preds = %._crit_edge.us890, %.noexc303
  %.us-phi891 = phi ptr [ %.0181894, %.noexc303 ], [ %i.sf, %._crit_edge.us890 ]
  %.us-phi892 = phi ptr [ %.0178895, %.noexc303 ], [ %i.sg, %._crit_edge.us890 ]
  %.us-phi893 = phi ptr [ %.0175896, %.noexc303 ], [ %i.sh, %._crit_edge.us890 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond932.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond932.not, label %.loopexit, label %.noexc303, !llvm.loop !84

.noexc301:                                        ; preds = %bb.aa
  br i1 %i.os, label %.preheader785.lr.ph, label %.loopexit

.preheader785.lr.ph:                              ; preds = %.noexc301
  %i.sk = icmp sgt i32 %i.nl, 0
  %i.sl = icmp sgt i32 %i.nj, 0
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.so = add nsw i32 %i.r, -1
  %i.sp = sitofp fast i32 %i.so to float          ; 5 uses
  %i.sq = sitofp fast i32 %i.r to float           ; 3 uses
  %i.sr = fmul fast float %i.sq, 5.000000e-01
  %i.ss = fadd fast float %i.sq, -5.000000e-01
  br i1 %i.sk, label %.preheader785.preheader, label %.loopexit

.preheader785.preheader:                          ; preds = %.preheader785.lr.ph
  %i.st = load ptr, ptr %i.k, align 8, !tbaa !41, !noalias !120 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !39, !noalias !121 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !40, !noalias !121 ; 2 uses
  %i.sy = mul i64 %i.sv, %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sy
  %i.ta = shl i64 %i.sx, 1
  %i.tb = mul i64 %i.ta, %i.sv
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.tb
  %i.td = load i64, ptr %i.nr, align 8, !tbaa !39, !noalias !122 ; 2 uses
  %i.te = mul i64 %i.td, %i.oj
  %i.tf = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.te
  %i.tg = shl i64 %i.oj, 1
  %i.th = mul i64 %i.tg, %i.td
  %i.ti = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.th
  br label %.preheader785

.preheader785:                                    ; preds = %.preheader785.preheader, %._crit_edge851
  %.0153869 = phi i32 [ %i.wf, %._crit_edge851 ], [ 0, %.preheader785.preheader ]
  %.0154868 = phi ptr [ %.us-phi862, %._crit_edge851 ], [ %i.ti, %.preheader785.preheader ] ; 2 uses
  %.0155867 = phi ptr [ %.us-phi861, %._crit_edge851 ], [ %i.tf, %.preheader785.preheader ] ; 2 uses
  %.0158866 = phi ptr [ %.us-phi860, %._crit_edge851 ], [ %i.oh, %.preheader785.preheader ] ; 2 uses
  %.0161865 = phi ptr [ %.us-phi859, %._crit_edge851 ], [ %i.tc, %.preheader785.preheader ] ; 2 uses
  %.0164864 = phi ptr [ %.us-phi858, %._crit_edge851 ], [ %i.sz, %.preheader785.preheader ] ; 2 uses
  %.0167863 = phi ptr [ %.us-phi, %._crit_edge851 ], [ %i.st, %.preheader785.preheader ] ; 2 uses
  %i.tj = load i32, ptr %i.a, align 4             ; 2 uses
  %i.tk = add nsw i32 %i.tj, -1
  %i.tl = sitofp fast i32 %i.tk to float          ; 5 uses
  %i.tm = sitofp fast i32 %i.tj to float          ; 3 uses
  %factor.op.fmul842 = fmul fast float %i.tm, 5.000000e-01
  %i.tn = fadd fast float %i.tm, -5.000000e-01
  br i1 %i.sl, label %.preheader784.lr.ph.split.us, label %._crit_edge851

.preheader784.lr.ph.split.us:                     ; preds = %.preheader785
  %i.to = load i32, ptr %i.sm, align 8, !tbaa !29
  %.not.i467.us = icmp eq i32 %i.to, 0            ; 6 uses
  %i.tp = load i32, ptr %i.sn, align 4, !tbaa !28 ; 3 uses
  br label %.preheader784.us

.preheader784.us:                                 ; preds = %._crit_edge.us, %.preheader784.lr.ph.split.us
  %.0152850.us = phi i32 [ 0, %.preheader784.lr.ph.split.us ], [ %i.we, %._crit_edge.us ]
  %.1849.us = phi ptr [ %.0154868, %.preheader784.lr.ph.split.us ], [ %i.wc, %._crit_edge.us ]
  %.1156848.us = phi ptr [ %.0155867, %.preheader784.lr.ph.split.us ], [ %i.wb, %._crit_edge.us ]
  %.1159847.us = phi ptr [ %.0158866, %.preheader784.lr.ph.split.us ], [ %i.wa, %._crit_edge.us ]
  %.1162846.us = phi ptr [ %.0161865, %.preheader784.lr.ph.split.us ], [ %i.vz, %._crit_edge.us ]
  %.1165845.us = phi ptr [ %.0164864, %.preheader784.lr.ph.split.us ], [ %i.vy, %._crit_edge.us ]
  %.1168844.us = phi ptr [ %.0167863, %.preheader784.lr.ph.split.us ], [ %i.vx, %._crit_edge.us ]
  %i.tq = load i32, ptr %i.b, align 4             ; 6 uses
  %i.tr = add nsw i32 %i.tq, -1
  %i.ts = sitofp fast i32 %i.tr to float
  %i.tt = sitofp fast i32 %i.tq to float
  %i.tu = add nsw i32 %i.tq, -1
  %i.tv = sitofp fast i32 %i.tu to float          ; 2 uses
  %i.tw = sitofp fast i32 %i.tq to float          ; 2 uses
  %i.tx = fadd fast float %i.tw, -5.000000e-01
  %10 = add nsw i32 %i.tq, -1
  %11 = sitofp fast i32 %10 to float
  %12 = add nsw i32 %i.tq, -1
  %13 = sitofp fast i32 %12 to float
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader784.us, %_ZN4ncnnL13compute_coordEfiii.exit493.us
  %.0835.us = phi i32 [ 0, %.preheader784.us ], [ %i.wd, %_ZN4ncnnL13compute_coordEfiii.exit493.us ]
  %.2834.us = phi ptr [ %.1849.us, %.preheader784.us ], [ %i.wc, %_ZN4ncnnL13compute_coordEfiii.exit493.us ] ; 2 uses
  %.2157833.us = phi ptr [ %.1156848.us, %.preheader784.us ], [ %i.wb, %_ZN4ncnnL13compute_coordEfiii.exit493.us ] ; 2 uses
  %.2160832.us = phi ptr [ %.1159847.us, %.preheader784.us ], [ %i.wa, %_ZN4ncnnL13compute_coordEfiii.exit493.us ] ; 2 uses
  %.2163831.us = phi ptr [ %.1162846.us, %.preheader784.us ], [ %i.vz, %_ZN4ncnnL13compute_coordEfiii.exit493.us ] ; 2 uses
  %.2166830.us = phi ptr [ %.1165845.us, %.preheader784.us ], [ %i.vy, %_ZN4ncnnL13compute_coordEfiii.exit493.us ] ; 2 uses
  %.2169829.us = phi ptr [ %.1168844.us, %.preheader784.us ], [ %i.vx, %_ZN4ncnnL13compute_coordEfiii.exit493.us ] ; 2 uses
  %i.ty = load float, ptr %.2169829.us, align 4, !tbaa !43 ; 2 uses
  %i.tz = load float, ptr %.2166830.us, align 4, !tbaa !43 ; 2 uses
  %i.ua = load float, ptr %.2163831.us, align 4, !tbaa !43 ; 2 uses
  br i1 %.not.i467.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ub = fmul fast float %i.ty, 5.000000e-01
  %i.uc = fadd fast float %i.ub, 5.000000e-01
  %i.ud = fmul fast float %i.uc, %i.tl
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit468.us

bb.as:                                            ; preds = %bb.aq
  %i.ue = fadd fast float %i.ty, 1.000000e+00
  %.reass843.us = fmul fast float %i.ue, %factor.op.fmul842
  %i.uf = fadd fast float %.reass843.us, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit468.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit468.us: ; preds = %bb.as, %bb.ar
  %i.ug = phi fast float [ %i.ud, %bb.ar ], [ %i.uf, %bb.as ] ; 4 uses
  switch i32 %i.tp, label %_ZN4ncnnL13compute_coordEfiii.exit475.us [
    i32 2, label %bb.au
    i32 3, label %bb.at
  ]

bb.at:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit468.us
  br i1 %.not.i467.us, label %_ZN4ncnnL13compute_coordEfiii.exit475.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit475.thread770.us

_ZN4ncnnL13compute_coordEfiii.exit475.thread770.us: ; preds = %bb.at
  %i.uh = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ug)
  %i.ui = fsub fast float %i.uh, %i.tl
  %i.uj = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ui)
  %i.uk = fsub fast float %i.tl, %i.uj
  br label %bb.av

_ZN4ncnnL13compute_coordEfiii.exit475.thread.us:  ; preds = %bb.at
  %i.ul = fadd fast float %i.ug, 5.000000e-01
  %i.um = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ul)
  %i.un = fsub fast float %i.um, %i.tm
  %i.uo = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.un)
  %i.up = fsub fast float %i.tn, %i.uo
  %.sroa.speculated4.i12.i471.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.up, float 0.000000e+00)
  %.sroa.speculated.i13.i472.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i471.us, float %i.tl)
  br label %bb.aw

bb.au:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit468.us
  %.sroa.speculated4.i.i473.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.ug, float 0.000000e+00)
  %.sroa.speculated.i.i474.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i473.us, float %i.tl)
  br label %_ZN4ncnnL13compute_coordEfiii.exit475.us

_ZN4ncnnL13compute_coordEfiii.exit475.us:         ; preds = %bb.au, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit468.us
  %.0.i470.us = phi nsz float [ %.sroa.speculated.i.i474.us, %bb.au ], [ %i.ug, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit468.us ] ; 2 uses
  br i1 %.not.i467.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit475.us, %_ZN4ncnnL13compute_coordEfiii.exit475.thread770.us
  %.0.i470772.us = phi float [ %i.uk, %_ZN4ncnnL13compute_coordEfiii.exit475.thread770.us ], [ %.0.i470.us, %_ZN4ncnnL13compute_coordEfiii.exit475.us ]
  %i.uq = fmul fast float %i.tz, 5.000000e-01
  %i.ur = fadd fast float %i.uq, 5.000000e-01
  %i.us = fmul fast float %i.ur, %i.ts
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit477.us

bb.aw:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit475.us, %_ZN4ncnnL13compute_coordEfiii.exit475.thread.us
  %.0.i470769.us = phi float [ %.sroa.speculated.i13.i472.us, %_ZN4ncnnL13compute_coordEfiii.exit475.thread.us ], [ %.0.i470.us, %_ZN4ncnnL13compute_coordEfiii.exit475.us ]
  %i.ut = fmul fast float %i.tz, 5.000000e-01
  %i.uu = fadd fast float %i.ut, 5.000000e-01
  %i.uv = fmul fast float %i.uu, %i.tt
  %i.uw = fadd fast float %i.uv, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit477.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit477.us: ; preds = %bb.aw, %bb.av
  %.0.i470768.us = phi float [ %.0.i470772.us, %bb.av ], [ %.0.i470769.us, %bb.aw ]
  %i.ux = phi fast float [ %i.us, %bb.av ], [ %i.uw, %bb.aw ] ; 4 uses
  switch i32 %i.tp, label %_ZN4ncnnL13compute_coordEfiii.exit484.us [
    i32 2, label %bb.ay
    i32 3, label %bb.ax
  ]

bb.ax:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit477.us
  br i1 %.not.i467.us, label %_ZN4ncnnL13compute_coordEfiii.exit484.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit484.thread776.us

_ZN4ncnnL13compute_coordEfiii.exit484.thread776.us: ; preds = %bb.ax
  %i.uy = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ux)
  %i.uz = fsub fast float %i.uy, %i.tv
  %i.va = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.uz)
  %i.vb = fsub fast float %i.tv, %i.va
  br label %bb.az

_ZN4ncnnL13compute_coordEfiii.exit484.thread.us:  ; preds = %bb.ax
  %i.vc = fadd fast float %i.ux, 5.000000e-01
  %i.vd = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vc)
  %i.ve = fsub fast float %i.vd, %i.tw
  %i.vf = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ve)
  %i.vg = fsub fast float %i.tx, %i.vf
  %.sroa.speculated4.i12.i480.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.vg, float 0.000000e+00)
  %.sroa.speculated.i13.i481.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i480.us, float %11)
  br label %bb.ba

bb.ay:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit477.us
  %.sroa.speculated4.i.i482.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.ux, float 0.000000e+00)
  %.sroa.speculated.i.i483.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i482.us, float %13)
  br label %_ZN4ncnnL13compute_coordEfiii.exit484.us

_ZN4ncnnL13compute_coordEfiii.exit484.us:         ; preds = %bb.ay, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit477.us
  %.0.i479.us = phi nsz float [ %.sroa.speculated.i.i483.us, %bb.ay ], [ %i.ux, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit477.us ] ; 2 uses
  br i1 %.not.i467.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit484.us, %_ZN4ncnnL13compute_coordEfiii.exit484.thread776.us
  %.0.i479778.us = phi float [ %i.vb, %_ZN4ncnnL13compute_coordEfiii.exit484.thread776.us ], [ %.0.i479.us, %_ZN4ncnnL13compute_coordEfiii.exit484.us ]
  %i.vh = fmul fast float %i.ua, 5.000000e-01
  %i.vi = fadd fast float %i.vh, 5.000000e-01
  %i.vj = fmul fast float %i.vi, %i.sp
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit486.us

bb.ba:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit484.us, %_ZN4ncnnL13compute_coordEfiii.exit484.thread.us
  %.0.i479775.us = phi float [ %.sroa.speculated.i13.i481.us, %_ZN4ncnnL13compute_coordEfiii.exit484.thread.us ], [ %.0.i479.us, %_ZN4ncnnL13compute_coordEfiii.exit484.us ]
  %i.vk = fadd fast float %i.ua, 1.000000e+00
  %i.vl = fmul fast float %i.sr, %i.vk
  %i.vm = fadd fast float %i.vl, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit486.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit486.us: ; preds = %bb.ba, %bb.az
  %.0.i479774.us = phi float [ %.0.i479778.us, %bb.az ], [ %.0.i479775.us, %bb.ba ]
  %i.vn = phi fast float [ %i.vj, %bb.az ], [ %i.vm, %bb.ba ] ; 4 uses
  switch i32 %i.tp, label %_ZN4ncnnL13compute_coordEfiii.exit493.us [
    i32 2, label %bb.be
    i32 3, label %bb.bb
  ]

bb.bb:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit486.us
  br i1 %.not.i467.us, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vo = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vn)
  %i.vp = fsub fast float %i.vo, %i.sp
  %i.vq = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vp)
  %i.vr = fsub fast float %i.sp, %i.vq
  br label %_ZN4ncnnL13compute_coordEfiii.exit493.us

bb.bd:                                            ; preds = %bb.bb
  %i.vs = fadd fast float %i.vn, 5.000000e-01
  %i.vt = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vs)
  %i.vu = fsub fast float %i.vt, %i.sq
  %i.vv = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vu)
  %i.vw = fsub fast float %i.ss, %i.vv
  %.sroa.speculated4.i12.i489.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.vw, float 0.000000e+00)
  %.sroa.speculated.i13.i490.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i489.us, float %i.sp)
  br label %_ZN4ncnnL13compute_coordEfiii.exit493.us

bb.be:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit486.us
  %.sroa.speculated4.i.i491.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.vn, float 0.000000e+00)
  %.sroa.speculated.i.i492.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i491.us, float %i.sp)
  br label %_ZN4ncnnL13compute_coordEfiii.exit493.us

_ZN4ncnnL13compute_coordEfiii.exit493.us:         ; preds = %bb.be, %bb.bd, %bb.bc, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit486.us
  %.0.i488.us = phi nsz float [ %.sroa.speculated.i.i492.us, %bb.be ], [ %i.vr, %bb.bc ], [ %.sroa.speculated.i13.i490.us, %bb.bd ], [ %i.vn, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit486.us ]
  store float %.0.i470768.us, ptr %.2160832.us, align 4, !tbaa !43
  store float %.0.i479774.us, ptr %.2157833.us, align 4, !tbaa !43
  store float %.0.i488.us, ptr %.2834.us, align 4, !tbaa !43
  %i.vx = getelementptr inbounds nuw i8, ptr %.2169829.us, i64 4 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.2166830.us, i64 4 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.2163831.us, i64 4 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.2160832.us, i64 4 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.2157833.us, i64 4 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.2834.us, i64 4 ; 3 uses
  %i.wd = add nuw nsw i32 %.0835.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.wd, %i.nj
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.aq, !llvm.loop !91

._crit_edge.us:                                   ; preds = %_ZN4ncnnL13compute_coordEfiii.exit493.us
  %i.we = add nuw nsw i32 %.0152850.us, 1         ; 2 uses
  %exitcond927.not = icmp eq i32 %i.we, %i.nl
  br i1 %exitcond927.not, label %._crit_edge851, label %.preheader784.us, !llvm.loop !92

._crit_edge851:                                   ; preds = %._crit_edge.us, %.preheader785
  %.us-phi = phi ptr [ %.0167863, %.preheader785 ], [ %i.vx, %._crit_edge.us ]
  %.us-phi858 = phi ptr [ %.0164864, %.preheader785 ], [ %i.vy, %._crit_edge.us ]
  %.us-phi859 = phi ptr [ %.0161865, %.preheader785 ], [ %i.vz, %._crit_edge.us ]
  %.us-phi860 = phi ptr [ %.0158866, %.preheader785 ], [ %i.wa, %._crit_edge.us ]
  %.us-phi861 = phi ptr [ %.0155867, %.preheader785 ], [ %i.wb, %._crit_edge.us ]
  %.us-phi862 = phi ptr [ %.0154868, %.preheader785 ], [ %i.wc, %._crit_edge.us ]
  %i.wf = add nuw nsw i32 %.0153869, 1            ; 2 uses
  %exitcond928.not = icmp eq i32 %i.wf, %i.nn
  br i1 %exitcond928.not, label %.loopexit, label %.preheader785, !llvm.loop !93

.loopexit:                                        ; preds = %._crit_edge851, %._crit_edge886, %.noexc301, %.preheader785.lr.ph, %.noexc267, %.noexc303.lr.ph
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !27
  switch i32 %i.wh, label %_ZNK4ncnn3Mat5emptyEv.exit256.thread [
    i32 1, label %bb.bf
    i32 2, label %bb.bg
    i32 3, label %bb.bh
  ]

bb.bf:                                            ; preds = %.loopexit
  %i.wi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !116
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.wj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.l, ptr nonnull %5, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %i.f)
  br label %_ZNK4ncnn3Mat5emptyEv.exit256.thread

bb.bg:                                            ; preds = %.loopexit
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !116
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.wl)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.l, ptr nonnull %5, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %i.f)
  br label %_ZNK4ncnn3Mat5emptyEv.exit256.thread

bb.bh:                                            ; preds = %.loopexit
  %i.wm = load ptr, ptr @stderr, align 8, !tbaa !32
  %fwrite = call i64 @fwrite(ptr nonnull @.str.7, i64 34, i64 1, ptr %i.wm) #18 ; 0 uses
  %i.wn = load ptr, ptr @stderr, align 8, !tbaa !32
  %fputc = call i32 @fputc(i32 10, ptr %i.wn)     ; 0 uses
  br label %_ZNK4ncnn3Mat5emptyEv.exit256.thread

_ZNK4ncnn3Mat5emptyEv.exit256.thread:             ; preds = %bb.y, %bb.x, %bb.bf, %bb.bg, %.loopexit, %_ZNK4ncnn3Mat5emptyEv.exit256, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.bh
  %cond = phi i1 [ false, %bb.bh ], [ false, %_ZNK4ncnn3Mat5emptyEv.exit256 ], [ false, %_ZNK4ncnn3Mat5emptyEv.exit ], [ true, %.loopexit ], [ true, %bb.bg ], [ true, %bb.bf ], [ false, %bb.x ], [ false, %bb.y ]
  %.2186 = phi i32 [ -1, %bb.bh ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit256 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %.loopexit ], [ -100, %bb.bg ], [ -100, %bb.bf ], [ -100, %bb.x ], [ -100, %bb.y ]
  %i.wo = load ptr, ptr %i.nq, align 8, !tbaa !100 ; 2 uses
  %.not.i384 = icmp eq ptr %i.wo, null
  br i1 %.not.i384, label %_ZN4ncnn3MatD2Ev.exit278, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit256.thread
  %i.wp = atomicrmw add ptr %i.wo, i32 -1 acq_rel, align 4
  %i.wq = icmp eq i32 %i.wp, 1
  br i1 %i.wq, label %bb.bj, label %_ZN4ncnn3MatD2Ev.exit278

bb.bj:                                            ; preds = %bb.bi
  %i.wr = load ptr, ptr %i.ns, align 8, !tbaa !117 ; 3 uses
  %.not3.i385 = icmp eq ptr %i.wr, null
  %i.ws = load ptr, ptr %5, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i385, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wt = load ptr, ptr %i.wr, align 8, !tbaa !46
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.wv = load ptr, ptr %i.wu, align 8
  invoke void %i.wv(ptr noundef nonnull align 8 dereferenceable(8) %i.wr, ptr noundef %i.ws)
          to label %_ZN4ncnn3MatD2Ev.exit278 unwind label %bb.bn, !inline_history !77

bb.bl:                                            ; preds = %bb.bj
  %.not.i399 = icmp eq ptr %i.ws, null
  br i1 %.not.i399, label %_ZN4ncnn3MatD2Ev.exit278, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.ws) #7
  br label %_ZN4ncnn3MatD2Ev.exit278

bb.bn:                                            ; preds = %bb.bk
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  call void @__clang_call_terminate(ptr %i.wx) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit278:                         ; preds = %bb.bi, %_ZNK4ncnn3Mat5emptyEv.exit256.thread, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br i1 %cond, label %bb.bu, label %bb.cb

bb.bo:                                            ; preds = %bb.z
  %i.wy = atomicrmw add ptr %i.op, i32 -1 acq_rel, align 4
  %i.wz = icmp eq i32 %i.wy, 1
  br i1 %i.wz, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit277

bb.bp:                                            ; preds = %bb.bo
  %i.xa = load ptr, ptr %i.ns, align 8, !tbaa !117 ; 3 uses
  %.not3.i389 = icmp eq ptr %i.xa, null
  %i.xb = load ptr, ptr %5, align 8, !tbaa !41    ; 3 uses
  br i1 %.not3.i389, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.xc = load ptr, ptr %i.xa, align 8, !tbaa !46
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8
  invoke void %i.xe(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, ptr noundef %i.xb)
          to label %_ZN4ncnn3MatD2Ev.exit277 unwind label %bb.bt, !inline_history !77

bb.br:                                            ; preds = %bb.bp
  %.not.i397 = icmp eq ptr %i.xb, null
  br i1 %.not.i397, label %_ZN4ncnn3MatD2Ev.exit277, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.xb) #7
  br label %_ZN4ncnn3MatD2Ev.exit277

bb.bt:                                            ; preds = %bb.bq
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit277:                         ; preds = %bb.bo, %bb.z, %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.cc
end_hunk_0
begin_hunk_1_@_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4:bb.a
  %i.wf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.we, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.bd:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333
  br i1 %.not.i.i, label %bb.bf, label %bb.be

_ZN4ncnnL13compute_coordEfiii.exit.i349:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit333
  %i.wg = sitofp fast i32 %i.bj to float
  %i.wh = insertelement <2 x float> poison, float %i.da, i64 0
  %i.wi = insertelement <2 x float> %i.wh, float %i.wg, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.be:                                            ; preds = %bb.bd
  %i.wj = sitofp fast i32 %i.bj to float
  %i.wk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.wl = insertelement <2 x float> %i.wk, float %i.wj, i64 1
  %i.wm = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wl)
  %i.wn = fsub fast <2 x float> %i.wm, %i.al
  %i.wo = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wn)
  %i.wp = fsub fast <2 x float> %i.al, %i.wo
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

bb.bf:                                            ; preds = %bb.bd
  %i.wq = sitofp fast i32 %i.bj to float
  %i.wr = insertelement <2 x float> poison, float %i.da, i64 0
  %i.ws = insertelement <2 x float> %i.wr, float %i.wq, i64 1
  %i.wt = fadd fast <2 x float> %i.ws, splat (float 5.000000e-01)
  %i.wu = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wt)
  %i.wv = fsub fast <2 x float> %i.wu, %i.am
  %i.ww = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wv)
  %i.wx = fsub fast <2 x float> %i.an, %i.ww
  %i.wy = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wx, <2 x float> zeroinitializer)
  %i.wz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.wy, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i335

_ZN4ncnnL13compute_coordEfiii.exit16.i335:        ; preds = %bb.bf, %bb.be, %_ZN4ncnnL13compute_coordEfiii.exit.i349, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344
  %i.xa = phi <2 x float> [ %i.wf, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i344 ], [ %i.wp, %bb.be ], [ %i.wz, %bb.bf ], [ %i.wi, %_ZN4ncnnL13compute_coordEfiii.exit.i349 ]
  %i.xb = fptosi <2 x float> %i.xa to <2 x i32>   ; 3 uses
  %i.xc = extractelement <2 x i32> %i.xb, i64 0   ; 2 uses
  %i.xd = extractelement <2 x i32> %i.xb, i64 1   ; 2 uses
  %i.xe = or i32 %i.xd, %i.xc
  %or.cond.i.i.i338 = icmp sgt i32 %i.xe, -1
  %i.xf = icmp sgt <2 x i32> %i.ah, %i.xb         ; 2 uses
  %i.xg = extractelement <2 x i1> %i.xf, i64 0
  %or.cond9.i.i.i339 = select i1 %or.cond.i.i.i338, i1 %i.xg, i1 false
  %i.xh = extractelement <2 x i1> %i.xf, i64 1
  %i.xi = select i1 %or.cond9.i.i.i339, i1 %i.xh, i1 false
  br i1 %i.xi, label %bb.bg, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350

bb.bg:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i335
  %i.xj = sext i32 %i.xd to i64
  %i.xk = mul i64 %i.ao, %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.xk
  %i.xm = sext i32 %i.xc to i64
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xm
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350: ; preds = %bb.bg, %_ZN4ncnnL13compute_coordEfiii.exit16.i335
  %i.xp = phi fast float [ %i.xo, %bb.bg ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i335 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i366 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361
    i32 3, label %bb.bh
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  %i.xq = sitofp fast i32 %i.bj to float
  %i.xr = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.xs = insertelement <2 x float> %i.xr, float %i.xq, i64 1
  %i.xt = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.xs, <2 x float> zeroinitializer)
  %i.xu = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.xt, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bh:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  br i1 %.not.i.i, label %bb.bj, label %bb.bi

_ZN4ncnnL13compute_coordEfiii.exit.i366:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit350
  %i.xv = sitofp fast i32 %i.bj to float
  %i.xw = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.xx = insertelement <2 x float> %i.xw, float %i.xv, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bi:                                            ; preds = %bb.bh
  %i.xy = sitofp fast i32 %i.bj to float
  %i.xz = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ya = insertelement <2 x float> %i.xz, float %i.xy, i64 1
  %i.yb = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ya)
  %i.yc = fsub fast <2 x float> %i.yb, %i.al
  %i.yd = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yc)
  %i.ye = fsub fast <2 x float> %i.al, %i.yd
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

bb.bj:                                            ; preds = %bb.bh
  %i.yf = sitofp fast i32 %i.bj to float
  %i.yg = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.yh = insertelement <2 x float> %i.yg, float %i.yf, i64 1
  %i.yi = fadd fast <2 x float> %i.yh, splat (float 5.000000e-01)
  %i.yj = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yi)
  %i.yk = fsub fast <2 x float> %i.yj, %i.am
  %i.yl = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.yk)
  %i.ym = fsub fast <2 x float> %i.an, %i.yl
  %i.yn = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ym, <2 x float> zeroinitializer)
  %i.yo = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.yn, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i352

_ZN4ncnnL13compute_coordEfiii.exit16.i352:        ; preds = %bb.bj, %bb.bi, %_ZN4ncnnL13compute_coordEfiii.exit.i366, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361
  %i.yp = phi <2 x float> [ %i.xu, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i361 ], [ %i.ye, %bb.bi ], [ %i.yo, %bb.bj ], [ %i.xx, %_ZN4ncnnL13compute_coordEfiii.exit.i366 ]
  %i.yq = fptosi <2 x float> %i.yp to <2 x i32>   ; 3 uses
  %i.yr = extractelement <2 x i32> %i.yq, i64 0   ; 2 uses
  %i.ys = extractelement <2 x i32> %i.yq, i64 1   ; 2 uses
  %i.yt = or i32 %i.ys, %i.yr
  %or.cond.i.i.i355 = icmp sgt i32 %i.yt, -1
  %i.yu = icmp sgt <2 x i32> %i.ah, %i.yq         ; 2 uses
  %i.yv = extractelement <2 x i1> %i.yu, i64 0
  %or.cond9.i.i.i356 = select i1 %or.cond.i.i.i355, i1 %i.yv, i1 false
  %i.yw = extractelement <2 x i1> %i.yu, i64 1
  %i.yx = select i1 %or.cond9.i.i.i356, i1 %i.yw, i1 false
  br i1 %i.yx, label %bb.bk, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367

bb.bk:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i352
  %i.yy = sext i32 %i.ys to i64
  %i.yz = mul i64 %i.ao, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.yz
  %i.zb = sext i32 %i.yr to i64
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.za, i64 %i.zb
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367: ; preds = %bb.bk, %_ZN4ncnnL13compute_coordEfiii.exit16.i352
  %i.ze = phi fast float [ %i.zd, %bb.bk ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i352 ]
  switch i32 %i.ar, label %_ZN4ncnnL13compute_coordEfiii.exit.i383 [
    i32 2, label %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378
    i32 3, label %bb.bl
  ]

_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378: ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  %i.zf = sitofp fast i32 %i.bj to float
  %i.zg = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zh = insertelement <2 x float> %i.zg, float %i.zf, i64 1
  %i.zi = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.zh, <2 x float> zeroinitializer)
  %i.zj = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.zi, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bl:                                            ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  br i1 %.not.i.i, label %bb.bn, label %bb.bm

_ZN4ncnnL13compute_coordEfiii.exit.i383:          ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit367
  %i.zk = sitofp fast i32 %i.bj to float
  %i.zl = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zm = insertelement <2 x float> %i.zl, float %i.zk, i64 1
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bm:                                            ; preds = %bb.bl
  %i.zn = sitofp fast i32 %i.bj to float
  %i.zo = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zp = insertelement <2 x float> %i.zo, float %i.zn, i64 1
  %i.zq = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zp)
  %i.zr = fsub fast <2 x float> %i.zq, %i.al
  %i.zs = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zr)
  %i.zt = fsub fast <2 x float> %i.al, %i.zs
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

bb.bn:                                            ; preds = %bb.bl
  %i.zu = sitofp fast i32 %i.bj to float
  %i.zv = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.zw = insertelement <2 x float> %i.zv, float %i.zu, i64 1
  %i.zx = fadd fast <2 x float> %i.zw, splat (float 5.000000e-01)
  %i.zy = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zx)
  %i.zz = fsub fast <2 x float> %i.zy, %i.am
  %i.aaa = call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.zz)
  %i.aab = fsub fast <2 x float> %i.an, %i.aaa
  %i.aac = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aab, <2 x float> zeroinitializer)
  %i.aad = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.aac, <2 x float> %i.al)
  br label %_ZN4ncnnL13compute_coordEfiii.exit16.i369

_ZN4ncnnL13compute_coordEfiii.exit16.i369:        ; preds = %bb.bn, %bb.bm, %_ZN4ncnnL13compute_coordEfiii.exit.i383, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378
  %i.aae = phi <2 x float> [ %i.zj, %_ZN4ncnnL13compute_coordEfiii.exit.thread18.i378 ], [ %i.zt, %bb.bm ], [ %i.aad, %bb.bn ], [ %i.zm, %_ZN4ncnnL13compute_coordEfiii.exit.i383 ]
  %i.aaf = fptosi <2 x float> %i.aae to <2 x i32> ; 3 uses
  %i.aag = extractelement <2 x i32> %i.aaf, i64 0 ; 2 uses
  %i.aah = extractelement <2 x i32> %i.aaf, i64 1 ; 2 uses
  %i.aai = or i32 %i.aah, %i.aag
  %or.cond.i.i.i372 = icmp sgt i32 %i.aai, -1
  %i.aaj = icmp sgt <2 x i32> %i.ah, %i.aaf       ; 2 uses
  %i.aak = extractelement <2 x i1> %i.aaj, i64 0
  %or.cond9.i.i.i373 = select i1 %or.cond.i.i.i372, i1 %i.aak, i1 false
  %i.aal = extractelement <2 x i1> %i.aaj, i64 1
  %i.aam = select i1 %or.cond9.i.i.i373, i1 %i.aal, i1 false
  br i1 %i.aam, label %bb.bo, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384

bb.bo:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit16.i369
  %i.aan = sext i32 %i.aah to i64
  %i.aao = mul i64 %i.ao, %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aao
  %i.aaq = sext i32 %i.aag to i64
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aap, i64 %i.aaq
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384

_ZN4ncnnL17get_value_boundedERKNS_3MatEiiii.exit384: ; preds = %bb.bo, %_ZN4ncnnL13compute_coordEfiii.exit16.i369
  %i.aat = phi fast float [ %i.aas, %bb.bo ], [ 0.000000e+00, %_ZN4ncnnL13compute_coordEfiii.exit16.i369 ]
  %i.aau = fsub fast float %i.ay, %i.da           ; 5 uses
  %i.aav = fadd fast float %i.aau, 1.000000e+00   ; 3 uses
  %i.aaw = fsub fast float 1.000000e+00, %i.aau   ; 3 uses
  %i.aax = fmul fast float %i.aav, %i.aav
  %i.aay = insertelement <2 x float> poison, float %i.aav, i64 0
  %i.aaz = shufflevector <2 x float> %i.aay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aba = fmul fast <2 x float> %i.aaz, <float 7.500000e-01, float 6.000000e+00>
  %i.abb = fsub fast <2 x float> <float 3.750000e+00, float 3.000000e+00>, %i.aba ; 2 uses
  %i.abc = extractelement <2 x float> %i.abb, i64 0
  %reass.mul.i = fmul fast float %i.aax, %i.abc
  %i.abd = extractelement <2 x float> %i.abb, i64 1
  %i.abe = fadd fast float %reass.mul.i, %i.abd   ; 5 uses
  %i.abf = fmul fast float %i.aau, %i.aau
  %i.abg = fmul fast float %i.aau, 1.250000e+00
  %i.abh = fadd fast float %i.abg, -2.250000e+00
  %i.abi = fmul fast float %i.abf, %i.abh
  %i.abj = fadd fast float %i.abi, 1.000000e+00   ; 5 uses
  %i.abk = fmul fast float %i.aaw, %i.aaw
  %i.abl = fmul fast float %i.aaw, 1.250000e+00
  %i.abm = fadd fast float %i.abl, -2.250000e+00
  %i.abn = fmul fast float %i.abk, %i.abm         ; 2 uses
  %i.abo = fadd fast float %i.abn, 1.000000e+00   ; 4 uses
  %i.abp = fadd fast float %i.abn, %i.abj
  %i.abq = fadd fast float %i.abp, %i.abe         ; 4 uses
  %9 = sitofp fast i32 %i.bd to float
  %i.abr = fsub fast float %i.az, %9              ; 5 uses
  %10 = fadd fast float %i.abr, 1.000000e+00      ; 3 uses
  %11 = fsub fast float 1.000000e+00, %i.abr      ; 3 uses
  %12 = fmul fast float %10, %10
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abs = fmul fast <2 x float> %14, <float 7.500000e-01, float 6.000000e+00>
  %i.abt = fsub fast <2 x float> <float 3.750000e+00, float 3.000000e+00>, %i.abs ; 2 uses
  %15 = extractelement <2 x float> %i.abt, i64 0
  %reass.mul.i385 = fmul fast float %12, %15
  %16 = extractelement <2 x float> %i.abt, i64 1
  %i.abu = fadd fast float %reass.mul.i385, %16   ; 2 uses
  %17 = fmul fast float %i.abr, %i.abr
  %18 = fmul fast float %i.abr, 1.250000e+00
  %19 = fadd fast float %18, -2.250000e+00
  %20 = fmul fast float %17, %19
  %21 = fadd fast float %20, 1.000000e+00         ; 2 uses
  %i.abv = fmul fast float %11, %11
  %i.abw = fmul fast float %11, 1.250000e+00
  %i.abx = fadd fast float %i.abw, -2.250000e+00
  %i.aby = fmul fast float %i.abv, %i.abx         ; 2 uses
  %i.abz = fadd fast float %i.aby, 1.000000e+00
  %i.aca = fadd fast float %i.aby, %21
  %i.acb = fadd fast float %i.aca, %i.abu
  %22 = fmul fast float %i.cz, %i.abe
  %23 = fmul fast float %i.ep, %i.abj
  %24 = fadd fast float %23, %22
  %i.acc = fmul fast float %i.gf, %i.abo
  %25 = fadd fast float %24, %i.acc
  %i.acd = fmul fast float %i.abq, %i.hv
  %i.ace = fsub fast float %25, %i.acd
  %26 = fmul fast float %i.jk, %i.abe
  %27 = fmul fast float %i.kz, %i.abj
  %28 = fadd fast float %27, %26
  %i.acf = fmul fast float %i.mo, %i.abo
  %29 = fadd fast float %28, %i.acf
  %i.acg = fmul fast float %i.abq, %i.od
  %i.ach = fsub fast float %29, %i.acg
  %i.aci = fmul fast float %i.ps, %i.abe
  %i.acj = fmul fast float %i.rh, %i.abj
  %i.ack = fadd fast float %i.acj, %i.aci
  %i.acl = fmul fast float %i.sw, %i.abo
  %i.acm = fadd fast float %i.ack, %i.acl
  %i.acn = fmul fast float %i.abq, %i.ul
  %i.aco = fsub fast float %i.acm, %i.acn
  %i.acp = fmul fast float %i.wa, %i.abe
  %i.acq = fmul fast float %i.xp, %i.abj
  %i.acr = fadd fast float %i.acq, %i.acp
  %i.acs = fmul fast float %i.ze, %i.abo
  %i.act = fadd fast float %i.acr, %i.acs
  %i.acu = fmul fast float %i.abq, %i.aat
  %i.acv = fsub fast float %i.act, %i.acu
  %i.acw = fmul fast float %i.ace, %i.abu
  %i.acx = fmul fast float %i.ach, %21
  %i.acy = fadd fast float %i.acx, %i.acw
  %i.acz = fmul fast float %i.aco, %i.abz
  %i.ada = fadd fast float %i.acy, %i.acz
  %i.adb = fmul fast float %i.acb, %i.acv
  %i.adc = fsub fast float %i.ada, %i.adb
  store float %i.adc, ptr %.1101581, align 4, !tbaa !43
  %i.add = getelementptr inbounds nuw i8, ptr %.1101581, i64 4 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %.199582, i64 4 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.1583, i64 4 ; 2 uses
  %i.adg = add nuw nsw i32 %.095584, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.adg, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !162

._crit_edge593.split:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge, %.noexc109.lr.ph, %.noexc109.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge593.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not313 = icmp sgt i32 %i.k, %i.j
  br i1 %.not313, label %._crit_edge.split, label %.noexc122.lr.ph

.noexc122.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !178 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37, !noalias !178 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38, !noalias !178 ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !41, !noalias !178
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !178
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !178 ; 2 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.o to i64
  %i.y = load ptr, ptr %4, align 8, !tbaa !41, !noalias !179
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40, !noalias !179
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39, !noalias !179
  %factor.op.mul315 = mul i64 %i.aa, %i.ac
  %i.ad = load ptr, ptr %5, align 8, !tbaa !41, !noalias !180 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40, !noalias !181 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !39, !noalias !181 ; 2 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = shl i64 %i.ag, 1
  %i.al = mul i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = mul i64 %i.v, %i.w                      ; 9 uses
  %i.aq = mul i64 %i.ap, %i.x                     ; 8 uses
  br i1 %i.ao, label %.noexc122.lr.ph.split, label %._crit_edge.split

.noexc122.lr.ph.split:                            ; preds = %.noexc122.lr.ph
  %i.ar = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.noexc122.lr.ph.split.split, label %._crit_edge.split

.noexc122.lr.ph.split.split:                      ; preds = %.noexc122.lr.ph.split
  %i.at = load i32, ptr %8, align 4, !tbaa !36    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.noexc122.us.preheader, label %._crit_edge.split

.noexc122.us.preheader:                           ; preds = %.noexc122.lr.ph.split.split
  %i.av = sext i32 %i.k to i64
  %i.aw = add nsw i32 %i.j, 1
  br label %.noexc122.us

.noexc122.us:                                     ; preds = %.noexc122.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us
  %indvars.iv = phi i64 [ %i.av, %.noexc122.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split312.us.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass.us ; 8 uses
  %.reass316.us = mul i64 %factor.op.mul315, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.reass316.us
  br label %.preheader284.us.us

.preheader284.us.us:                              ; preds = %._crit_edge298.split.us.us.us, %.noexc122.us
  %.099310.us.us = phi ptr [ %i.ay, %.noexc122.us ], [ %i.gq, %._crit_edge298.split.us.us.us ]
  %.0100309.us.us = phi ptr [ %i.ad, %.noexc122.us ], [ %i.gr, %._crit_edge298.split.us.us.us ]
  %.0103308.us.us = phi ptr [ %i.aj, %.noexc122.us ], [ %i.gs, %._crit_edge298.split.us.us.us ]
  %.0106307.us.us = phi ptr [ %i.am, %.noexc122.us ], [ %i.gt, %._crit_edge298.split.us.us.us ]
  %.0109306.us.us = phi i32 [ 0, %.noexc122.us ], [ %i.gw, %._crit_edge298.split.us.us.us ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader284.us.us
  %.1297.us.us.us = phi ptr [ %.099310.us.us, %.preheader284.us.us ], [ %i.gq, %._crit_edge.us.us.us ]
  %.1101296.us.us.us = phi ptr [ %.0100309.us.us, %.preheader284.us.us ], [ %i.gr, %._crit_edge.us.us.us ]
  %.1104295.us.us.us = phi ptr [ %.0103308.us.us, %.preheader284.us.us ], [ %i.gs, %._crit_edge.us.us.us ]
  %.1107294.us.us.us = phi ptr [ %.0106307.us.us, %.preheader284.us.us ], [ %i.gt, %._crit_edge.us.us.us ]
  %.0111293.us.us.us = phi i32 [ 0, %.preheader284.us.us ], [ %i.gv, %._crit_edge.us.us.us ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us, %.preheader.us.us.us
  %.2289.us.us.us = phi ptr [ %.1297.us.us.us, %.preheader.us.us.us ], [ %i.gq, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2102288.us.us.us = phi ptr [ %.1101296.us.us.us, %.preheader.us.us.us ], [ %i.gr, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2105287.us.us.us = phi ptr [ %.1104295.us.us.us, %.preheader.us.us.us ], [ %i.gs, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.2108286.us.us.us = phi ptr [ %.1107294.us.us.us, %.preheader.us.us.us ], [ %i.gt, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ] ; 2 uses
  %.0110285.us.us.us = phi i32 [ 0, %.preheader.us.us.us ], [ %i.gu, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit183.us.us.us ]
  %i.az = load float, ptr %.2102288.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.ba = load float, ptr %.2105287.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.bb = load float, ptr %.2108286.us.us.us, align 4, !tbaa !43 ; 2 uses
  %i.bc = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.az)
  %i.bd = fptosi float %i.bc to i32               ; 9 uses
  %i.be = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.ba)
  %i.bf = fptosi float %i.be to i32               ; 9 uses
  %i.bg = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bb)
  %i.bh = fptosi float %i.bg to i32               ; 11 uses
  %i.bi = add nsw i32 %i.bd, 1                    ; 7 uses
  %i.bj = add nsw i32 %i.bf, 1                    ; 7 uses
  %i.bk = add nsw i32 %i.bh, 1                    ; 9 uses
  %i.bl = or i32 %i.bf, %i.bd                     ; 2 uses
  %i.bm = or i32 %i.bl, %i.bh
  %or.cond3.i.i.us.us.us = icmp sgt i32 %i.bm, -1
  %i.bn = icmp sgt i32 %i.m, %i.bd                ; 4 uses
  %or.cond.i.i.us.us.us = select i1 %or.cond3.i.i.us.us.us, i1 %i.bn, i1 false
  %i.bo = icmp sgt i32 %i.o, %i.bf                ; 4 uses
  %or.cond17.i.i.us.us.us = select i1 %or.cond.i.i.us.us.us, i1 %i.bo, i1 false
  %i.bp = icmp sgt i32 %i.q, %i.bh                ; 4 uses
  %i.bq = select i1 %or.cond17.i.i.us.us.us, i1 %i.bp, i1 false
  br i1 %i.bq, label %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnn3MatD2Ev.exit.i.us.us.us:                 ; preds = %bb.c
  %i.br = sext i32 %i.bh to i64
  %i.bs = mul i64 %i.aq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bs
  %i.bu = sext i32 %i.bf to i64
  %i.bv = mul i64 %i.ap, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = sext i32 %i.bd to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, %bb.c
  %i.ca = phi float [ %i.bz, %_ZN4ncnn3MatD2Ev.exit.i.us.us.us ], [ 0.000000e+00, %bb.c ]
  %i.cb = or i32 %i.bi, %i.bf                     ; 2 uses
  %i.cc = or i32 %i.cb, %i.bh
  %or.cond3.i.i149.us.us.us = icmp sgt i32 %i.cc, -1
  %i.cd = icmp slt i32 %i.bi, %i.m                ; 4 uses
  %or.cond.i.i150.us.us.us = select i1 %or.cond3.i.i149.us.us.us, i1 %i.cd, i1 false
  %or.cond17.i.i151.us.us.us = select i1 %or.cond.i.i150.us.us.us, i1 %i.bo, i1 false
  %i.ce = select i1 %or.cond17.i.i151.us.us.us, i1 %i.bp, i1 false
  br i1 %i.ce, label %_ZN4ncnn3MatD2Ev.exit.i152.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us

_ZN4ncnn3MatD2Ev.exit.i152.us.us.us:              ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us
  %i.cf = sext i32 %i.bh to i64
  %i.cg = mul i64 %i.aq, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cg
  %i.ci = sext i32 %i.bf to i64
  %i.cj = mul i64 %i.ap, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj
  %i.cl = sext i32 %i.bi to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit153.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i152.us.us.us, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us
  %i.co = phi float [ %i.cn, %_ZN4ncnn3MatD2Ev.exit.i152.us.us.us ], [ 0.000000e+00, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ]
  %i.cp = or i32 %i.bj, %i.bd                     ; 2 uses
  %i.cq = or i32 %i.cp, %i.bh
end_hunk_1
begin_hunk_2_@_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6:bb.a
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not184 = icmp sgt i32 %i.k, %i.j
  br i1 %.not184, label %._crit_edge.split, label %.noexc64.lr.ph

.noexc64.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !193 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !37, !noalias !193 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38, !noalias !193
  %i.r = load ptr, ptr %3, align 8, !tbaa !41, !noalias !193
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !40, !noalias !193
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39, !noalias !193 ; 2 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.w = sext i32 %i.m to i64
  %i.x = sext i32 %i.o to i64
  %i.y = load ptr, ptr %4, align 8, !tbaa !41, !noalias !194
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40, !noalias !194
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39, !noalias !194
  %factor.op.mul186 = mul i64 %i.aa, %i.ac
  %i.ad = load ptr, ptr %5, align 8, !tbaa !41, !noalias !195 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40, !noalias !196 ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !39, !noalias !196 ; 2 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = shl i64 %i.ag, 1
  %i.al = mul i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %6, align 4, !tbaa !36    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = mul i64 %i.v, %i.w                      ; 2 uses
  %i.aq = mul i64 %i.ap, %i.x
  br i1 %i.ao, label %.noexc64.lr.ph.split, label %._crit_edge.split

.noexc64.lr.ph.split:                             ; preds = %.noexc64.lr.ph
  %i.ar = load i32, ptr %7, align 4, !tbaa !36    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.noexc64.lr.ph.split.split, label %._crit_edge.split

.noexc64.lr.ph.split.split:                       ; preds = %.noexc64.lr.ph.split
  %i.at = load i32, ptr %8, align 4, !tbaa !36    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.noexc64.us.preheader, label %._crit_edge.split

.noexc64.us.preheader:                            ; preds = %.noexc64.lr.ph.split.split
  %i.av = sext i32 %i.k to i64
  %i.aw = add nsw i32 %i.j, 1
  br label %.noexc64.us

.noexc64.us:                                      ; preds = %.noexc64.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us
  %indvars.iv = phi i64 [ %i.av, %.noexc64.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass.us
  %.reass187.us = mul i64 %factor.op.mul186, %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %.reass187.us
  br label %.preheader155.us.us

.preheader155.us.us:                              ; preds = %._crit_edge169.split.us.us.us, %.noexc64.us
  %.042181.us.us = phi i32 [ 0, %.noexc64.us ], [ %i.ch, %._crit_edge169.split.us.us.us ]
  %.043180.us.us = phi ptr [ %i.am, %.noexc64.us ], [ %i.ce, %._crit_edge169.split.us.us.us ]
  %.044179.us.us = phi ptr [ %i.aj, %.noexc64.us ], [ %i.cd, %._crit_edge169.split.us.us.us ]
  %.047178.us.us = phi ptr [ %i.ad, %.noexc64.us ], [ %i.cc, %._crit_edge169.split.us.us.us ]
  %.050177.us.us = phi ptr [ %i.ay, %.noexc64.us ], [ %i.cb, %._crit_edge169.split.us.us.us ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader155.us.us
  %.041168.us.us.us = phi i32 [ 0, %.preheader155.us.us ], [ %i.cg, %._crit_edge.us.us.us ]
  %.1167.us.us.us = phi ptr [ %.043180.us.us, %.preheader155.us.us ], [ %i.ce, %._crit_edge.us.us.us ]
  %.145166.us.us.us = phi ptr [ %.044179.us.us, %.preheader155.us.us ], [ %i.cd, %._crit_edge.us.us.us ]
  %.148165.us.us.us = phi ptr [ %.047178.us.us, %.preheader155.us.us ], [ %i.cc, %._crit_edge.us.us.us ]
  %.151164.us.us.us = phi ptr [ %.050177.us.us, %.preheader155.us.us ], [ %i.cb, %._crit_edge.us.us.us ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us, %.preheader.us.us.us
  %.0160.us.us.us = phi i32 [ 0, %.preheader.us.us.us ], [ %i.cf, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ]
  %.2159.us.us.us = phi ptr [ %.1167.us.us.us, %.preheader.us.us.us ], [ %i.ce, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %.246158.us.us.us = phi ptr [ %.145166.us.us.us, %.preheader.us.us.us ], [ %i.cd, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %.249157.us.us.us = phi ptr [ %.148165.us.us.us, %.preheader.us.us.us ], [ %i.cc, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %.252156.us.us.us = phi ptr [ %.151164.us.us.us, %.preheader.us.us.us ], [ %i.cb, %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us ] ; 2 uses
  %i.az = load float, ptr %.249157.us.us.us, align 4, !tbaa !43
  %i.ba = load float, ptr %.246158.us.us.us, align 4, !tbaa !43
  %i.bb = load float, ptr %.2159.us.us.us, align 4, !tbaa !43
  %i.bc = fadd fast float %i.az, 5.000000e-01
  %i.bd = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bc)
  %i.be = fptosi float %i.bd to i32               ; 3 uses
  %i.bf = fadd fast float %i.ba, 5.000000e-01
  %i.bg = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bf)
  %i.bh = fptosi float %i.bg to i32               ; 3 uses
  %i.bi = fadd fast float %i.bb, 5.000000e-01
  %i.bj = call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bi)
  %i.bk = fptosi float %i.bj to i32               ; 3 uses
  %i.bl = or i32 %i.bh, %i.be
  %i.bm = or i32 %i.bl, %i.bk
  %or.cond3.i.i.us.us.us = icmp sgt i32 %i.bm, -1
  %i.bn = icmp sgt i32 %i.m, %i.be
  %or.cond.i.i.us.us.us = select i1 %or.cond3.i.i.us.us.us, i1 %i.bn, i1 false
  %i.bo = icmp sgt i32 %i.o, %i.bh
  %or.cond17.i.i.us.us.us = select i1 %or.cond.i.i.us.us.us, i1 %i.bo, i1 false
  %i.bp = icmp sgt i32 %i.q, %i.bk
  %i.bq = select i1 %or.cond17.i.i.us.us.us, i1 %i.bp, i1 false
  br i1 %i.bq, label %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnn3MatD2Ev.exit.i.us.us.us:                 ; preds = %bb.c
  %i.br = sext i32 %i.bk to i64
  %i.bs = mul i64 %i.aq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bs
  %i.bu = sext i32 %i.bh to i64
  %i.bv = mul i64 %i.ap, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = sext i32 %i.be to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !43
  br label %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us

_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.us.us, %bb.c
  %i.ca = phi float [ %i.bz, %_ZN4ncnn3MatD2Ev.exit.i.us.us.us ], [ 0.000000e+00, %bb.c ]
  store float %i.ca, ptr %.252156.us.us.us, align 4, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %.252156.us.us.us, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.249157.us.us.us, i64 4 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.246158.us.us.us, i64 4 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.2159.us.us.us, i64 4 ; 3 uses
  %i.cf = add nuw nsw i32 %.0160.us.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %i.at
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.c, !llvm.loop !190

._crit_edge.us.us.us:                             ; preds = %_ZN4ncnnL17get_value_boundedERKNS_3MatEiii.exit.us.us.us
  %i.cg = add nuw nsw i32 %.041168.us.us.us, 1    ; 2 uses
  %exitcond195.not = icmp eq i32 %i.cg, %i.ar
  br i1 %exitcond195.not, label %._crit_edge169.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !191

._crit_edge169.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ch = add nuw nsw i32 %.042181.us.us, 1       ; 2 uses
  %exitcond196.not = icmp eq i32 %i.ch, %i.an
  br i1 %exitcond196.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us, label %.preheader155.us.us, !llvm.loop !192

._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us:  ; preds = %._crit_edge169.split.us.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond198.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond198.not, label %._crit_edge.split, label %.noexc64.us

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us, %.noexc64.lr.ph.split.split, %.noexc64.lr.ph, %.noexc64.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #10

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { builtin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"_ZTSN4ncnn10GridSampleE", !25, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!27 = !{!26, !6, i64 208}
!28 = !{!26, !6, i64 212}
!29 = !{!26, !6, i64 216}
!30 = !{!26, !6, i64 220}
!31 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!34 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !33, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!35 = !{!34, !6, i64 44}
!36 = !{!6, !6, i64 0}
!37 = !{!34, !6, i64 48}
!38 = !{!34, !6, i64 52}
!39 = !{!34, !13, i64 16}
!40 = !{!34, !13, i64 64}
!41 = !{!34, !10, i64 0}
!42 = !{!"float", !5, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"vtable pointer", !4, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{i64 2, i64 -1, i64 -1, i1 true}
!48 = !{!47}
!49 = distinct !{!49, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!50 = distinct !{!50, !49, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!51 = distinct !{!51, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!52 = distinct !{!52, !51, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!53 = distinct !{!53, i1 false, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !44, !107, !108}
!58 = distinct !{!58, !44, !107}
!59 = distinct !{!59, !44}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !44, !107, !108}
!65 = distinct !{!65, !44, !107}
!66 = distinct !{!66, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!67 = distinct !{!67, !66, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!68 = distinct !{!68, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!69 = distinct !{!69, !68, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!70 = distinct !{!70, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!71 = distinct !{!71, !70, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!72 = distinct !{!72, !44, !107, !108}
!73 = distinct !{!73, !44, !107}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44, !107, !108}
!76 = distinct !{!76, !44, !107}
!77 = distinct !{null}
!78 = distinct !{!78, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!79 = distinct !{!79, !78, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !80, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!86 = distinct !{!86, !85, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!87 = distinct !{!87, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!88 = distinct !{!88, !87, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!89 = distinct !{!89, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!90 = distinct !{!90, !89, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !44}
!92 = distinct !{!92, !44}
!93 = distinct !{!93, !44}
!94 = !{!21, !20, i64 0}
!95 = !{!34, !6, i64 56}
!96 = !{!34, !6, i64 40}
!97 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !33, i64 8, !33, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!98 = !{!97, !33, i64 8}
!99 = !{!97, !33, i64 16}
!100 = !{!34, !15, i64 8}
!101 = !{!50}
!102 = !{!52}
!103 = !{!54}
!104 = !{!55}
!105 = !{!56, !54}
!106 = !{!56}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = !{!"llvm.loop.unroll.runtime.disable"}
!109 = !{!61}
!110 = !{!62}
!111 = !{!63, !61}
!112 = !{!63}
!113 = !{!67}
!114 = !{!69}
!115 = !{!71}
!116 = !{!97, !6, i64 4}
!117 = !{!34, !33, i64 32}
!118 = !{!79}
!119 = !{!81}
!120 = !{!86}
!121 = !{!88}
!122 = !{!90}
!123 = !{!25, !9, i64 8}
!124 = !{!25, !9, i64 9}
!125 = distinct !{!125, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!126 = distinct !{!126, !125, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!127 = distinct !{!127, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!128 = distinct !{!128, !127, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!130 = distinct !{!130, !129, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!132 = distinct !{!132, !131, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!133 = distinct !{!133, !44}
!134 = distinct !{!134, !44}
!135 = !{!126}
!136 = !{!128}
!137 = !{!130}
!138 = !{!132}
!139 = distinct !{!139, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!140 = distinct !{!140, !139, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!141 = distinct !{!141, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!142 = distinct !{!142, !141, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!143 = distinct !{!143, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!144 = distinct !{!144, !143, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!145 = distinct !{!145, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!146 = distinct !{!146, !145, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!147 = distinct !{!147, !44}
!148 = distinct !{!148, !44}
!149 = !{!140}
!150 = !{!142}
!151 = !{!144}
!152 = !{!146}
!153 = distinct !{!153, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!154 = distinct !{!154, !153, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!155 = distinct !{!155, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!156 = distinct !{!156, !155, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!157 = distinct !{!157, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!158 = distinct !{!158, !157, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!159 = distinct !{!159, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!160 = distinct !{!160, !159, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!161 = distinct !{!161, !44}
!162 = distinct !{!162, !44}
!163 = !{!154}
!164 = !{!156}
!165 = !{!158}
!166 = !{!160}
!167 = distinct !{!167, i1 false, !"_ZNK4ncnn3Mat7channelEi"}
!168 = distinct !{!168, !167, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!169 = distinct !{!169, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!170 = distinct !{!170, !169, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!171 = distinct !{!171, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!172 = distinct !{!172, !171, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!173 = distinct !{!173, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!174 = distinct !{!174, !173, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!175 = distinct !{!175, !44}
end_hunk_2
