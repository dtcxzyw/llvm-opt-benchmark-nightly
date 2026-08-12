inline.NumInlined: 78
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  switch i32 %i.me, label %bb.j [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.g:                                             ; preds = %.loopexit786
  %i.mf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !95
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.mg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.l, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.b)
  br label %bb.j

bb.h:                                             ; preds = %.loopexit786
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !95
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.mi)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.l, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %.loopexit786
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !95
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.mk)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.l, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %.loopexit786
  %i.ml = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %.not.i335 = icmp eq ptr %i.ml, null
  br i1 %.not.i335, label %_ZN4ncnn3MatD2Ev.exit289, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.mm = atomicrmw add ptr %i.ml, i32 -1 acq_rel, align 4
  %i.mn = icmp eq i32 %i.mm, 1
  br i1 %i.mn, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit289

bb.l:                                             ; preds = %bb.k
  %i.mo = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 3 uses
  %.not3.i336 = icmp eq ptr %i.mo, null
  %i.mp = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i336, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !97
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8
  invoke void %i.ms(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef %i.mp)
          to label %_ZN4ncnn3MatD2Ev.exit289 unwind label %bb.p, !inline_history !99

bb.n:                                             ; preds = %bb.l
  %.not.i422 = icmp eq ptr %i.mp, null
  br i1 %.not.i422, label %_ZN4ncnn3MatD2Ev.exit289, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.mp) #7
  br label %_ZN4ncnn3MatD2Ev.exit289

bb.p:                                             ; preds = %bb.m
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit289:                         ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.bu

bb.q:                                             ; preds = %bb.e
  %i.mv = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.r, label %_ZN4ncnn3MatD2Ev.exit288

bb.r:                                             ; preds = %bb.q
  %i.mx = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 3 uses
  %.not3.i340 = icmp eq ptr %i.mx, null
  %i.my = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i340, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !97
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load ptr, ptr %i.na, align 8
  invoke void %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.mx, ptr noundef %i.my)
          to label %_ZN4ncnn3MatD2Ev.exit288 unwind label %bb.v, !inline_history !99

bb.t:                                             ; preds = %bb.r
  %.not.i420 = icmp eq ptr %i.my, null
  br i1 %.not.i420, label %_ZN4ncnn3MatD2Ev.exit288, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.my) #7
  br label %_ZN4ncnn3MatD2Ev.exit288

bb.v:                                             ; preds = %bb.s
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit288:                         ; preds = %bb.q, %bb.e, %bb.s, %bb.t, %bb.u
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
  %i.nj = load i32, ptr %.in238, align 4, !tbaa !37 ; 7 uses
  store i32 %i.nj, ptr %i.f, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.nk = getelementptr inbounds nuw i8, ptr %i.j, i64 124 ; 2 uses
  %.in239 = select i1 %i.ng, ptr %i.nk, ptr %i.nh
  %i.nl = load i32, ptr %.in239, align 4, !tbaa !37 ; 7 uses
  store i32 %i.nl, ptr %i.g, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.nm = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %.in240 = select i1 %i.ng, ptr %i.nm, ptr %i.nk
  %i.nn = load i32, ptr %.in240, align 4, !tbaa !37 ; 6 uses
  store i32 %i.nn, ptr %i.h, align 4, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !43
  tail call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.l, i32 noundef %i.nj, i32 noundef %i.nl, i32 noundef %i.nn, i32 noundef %i.t, i64 noundef %i.x, ptr noundef %i.np)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.nq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.nu = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store i64 0, ptr %i.nu, align 8, !tbaa !45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ns, i8 0, i64 28, i1 false)
  %i.nv = load i32, ptr %i.nm, align 8, !tbaa !40
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !46
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.nj, i32 noundef %i.nl, i32 noundef %i.nn, i32 noundef %i.nv, i64 noundef %i.x, ptr noundef %i.nx)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ny = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZNK4ncnn3Mat5emptyEv.exit255.thread, label %_ZNK4ncnn3Mat5emptyEv.exit255

_ZNK4ncnn3Mat5emptyEv.exit255:                    ; preds = %bb.x
  %i.oa = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !45
  %i.oc = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !40
  %i.oe = sext i32 %i.od to i64
  %i.of = mul i64 %i.ob, %i.oe
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %_ZNK4ncnn3Mat5emptyEv.exit255.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit255
  %i.oh = load ptr, ptr %5, align 8, !tbaa !47    ; 7 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %_ZNK4ncnn3Mat5emptyEv.exit255.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.y
  %i.oj = load i64, ptr %i.nu, align 8, !tbaa !45 ; 5 uses
  %i.ok = load i32, ptr %i.nt, align 8, !tbaa !40
  %i.ol = sext i32 %i.ok to i64
  %i.om = mul i64 %i.oj, %i.ol
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %_ZNK4ncnn3Mat5emptyEv.exit255.thread, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.oo = landingpad { ptr, i32 }
          cleanup
  %i.op = load ptr, ptr %i.nq, align 8, !tbaa !48 ; 2 uses
  %.not.i387 = icmp eq ptr %i.op, null
  br i1 %.not.i387, label %_ZN4ncnn3MatD2Ev.exit276, label %bb.bo

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.oq = load i32, ptr %i.ne, align 4, !tbaa !30
  %i.or = icmp eq i32 %i.oq, 0
  %i.os = icmp sgt i32 %i.nn, 0                   ; 2 uses
  br i1 %i.or, label %.noexc266, label %.noexc300

.noexc266:                                        ; preds = %bb.aa
  br i1 %i.os, label %.noexc302.lr.ph, label %.loopexit

.noexc302.lr.ph:                                  ; preds = %.noexc266
  %i.ot = load ptr, ptr %i.k, align 8, !tbaa !47, !noalias !100
  %i.ou = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !45, !noalias !100
  %i.ow = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !42, !noalias !100
  %factor.op.mul897 = mul i64 %i.ov, %i.ox
  %i.oy = icmp sgt i32 %i.nl, 0
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.pb = add nsw i32 %i.r, -1
  %i.pc = sitofp fast i32 %i.pb to float          ; 5 uses
  %i.pd = sitofp fast i32 %i.r to float           ; 3 uses
  %i.pe = fmul fast float %i.pd, 5.000000e-01
  %i.pf = fadd fast float %i.pd, -5.000000e-01
  br i1 %i.oy, label %.noexc302.preheader, label %.loopexit

.noexc302.preheader:                              ; preds = %.noexc302.lr.ph
  %6 = icmp sgt i32 %i.nj, 0
  %wide.trip.count = zext nneg i32 %i.nn to i64
  br i1 %6, label %.noexc302.preheader.a, label %.loopexit

.noexc302.preheader.a:                            ; preds = %.noexc302.preheader
  %7 = shl i64 %i.oj, 1
  %i.pg = load i64, ptr %i.nr, align 8, !tbaa !42, !noalias !103 ; 2 uses
  %i.ph = mul i64 %7, %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ph
  %8 = mul i64 %i.pg, %i.oj
  %9 = getelementptr inbounds nuw i8, ptr %i.oh, i64 %8
  %10 = load i32, ptr %i.oz, align 8, !tbaa !29
  %.not.i445.us = icmp eq i32 %10, 0              ; 6 uses
  %11 = load i32, ptr %i.pa, align 4, !tbaa !28   ; 3 uses
  br label %.noexc302

.noexc302:                                        ; preds = %.noexc302.preheader.a, %._crit_edge885
  %indvars.iv = phi i64 [ 0, %.noexc302.preheader.a ], [ %indvars.iv.next, %._crit_edge885 ] ; 2 uses
  %.0175895 = phi ptr [ %i.pi, %.noexc302.preheader.a ], [ %i.se, %._crit_edge885 ]
  %.0178894 = phi ptr [ %9, %.noexc302.preheader.a ], [ %i.sd, %._crit_edge885 ]
  %.0181893 = phi ptr [ %i.oh, %.noexc302.preheader.a ], [ %i.sc, %._crit_edge885 ]
  %i.pj = load i32, ptr %i.a, align 4             ; 2 uses
  %i.pk = add nsw i32 %i.pj, -1
  %i.pl = sitofp fast i32 %i.pk to float          ; 5 uses
  %i.pm = sitofp fast i32 %i.pj to float          ; 3 uses
  %factor.op.fmul878 = fmul fast float %i.pm, 5.000000e-01
  %i.pn = fadd fast float %i.pm, -5.000000e-01
  %.reass898 = mul i64 %factor.op.mul897, %indvars.iv
  %12 = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.reass898
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us889, %.noexc302
  %.0171884.us = phi i32 [ 0, %.noexc302 ], [ %i.sg, %._crit_edge.us889 ]
  %.0172883.us = phi ptr [ %12, %.noexc302 ], [ %i.sb, %._crit_edge.us889 ]
  %.1176882.us = phi ptr [ %.0175895, %.noexc302 ], [ %i.se, %._crit_edge.us889 ]
  %.1179881.us = phi ptr [ %.0178894, %.noexc302 ], [ %i.sd, %._crit_edge.us889 ]
  %.1182880.us = phi ptr [ %.0181893, %.noexc302 ], [ %i.sc, %._crit_edge.us889 ]
  %i.po = load i32, ptr %i.b, align 4             ; 6 uses
  %i.pp = add nsw i32 %i.po, -1
  %i.pq = sitofp fast i32 %i.pp to float
  %i.pr = sitofp fast i32 %i.po to float
  %i.ps = add nsw i32 %i.po, -1
  %i.pt = sitofp fast i32 %i.ps to float          ; 2 uses
  %i.pu = sitofp fast i32 %i.po to float          ; 2 uses
  %i.pv = fadd fast float %i.pu, -5.000000e-01
  %i.pw = add nsw i32 %i.po, -1
  %i.px = sitofp fast i32 %i.pw to float
  %i.py = add nsw i32 %i.po, -1
  %i.pz = sitofp fast i32 %i.py to float
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader.us, %_ZN4ncnnL13compute_coordEfiii.exit465.us
  %.0170873.us = phi i32 [ 0, %.preheader.us ], [ %i.sf, %_ZN4ncnnL13compute_coordEfiii.exit465.us ]
  %.1173872.us = phi ptr [ %.0172883.us, %.preheader.us ], [ %i.sb, %_ZN4ncnnL13compute_coordEfiii.exit465.us ] ; 4 uses
  %.2177871.us = phi ptr [ %.1176882.us, %.preheader.us ], [ %i.se, %_ZN4ncnnL13compute_coordEfiii.exit465.us ] ; 2 uses
  %.2180870.us = phi ptr [ %.1179881.us, %.preheader.us ], [ %i.sd, %_ZN4ncnnL13compute_coordEfiii.exit465.us ] ; 2 uses
  %.2183869.us = phi ptr [ %.1182880.us, %.preheader.us ], [ %i.sc, %_ZN4ncnnL13compute_coordEfiii.exit465.us ] ; 2 uses
  %i.qa = load float, ptr %.1173872.us, align 4, !tbaa !55 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.1173872.us, i64 4
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !55 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.1173872.us, i64 8
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !55 ; 2 uses
  br i1 %.not.i445.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.qf = fmul fast float %i.qa, 5.000000e-01
  %i.qg = fadd fast float %i.qf, 5.000000e-01
  %i.qh = fmul fast float %i.qg, %i.pl
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit446.us

bb.ad:                                            ; preds = %bb.ab
  %i.qi = fadd fast float %i.qa, 1.000000e+00
  %.reass879.us = fmul fast float %i.qi, %factor.op.fmul878
  %i.qj = fadd fast float %.reass879.us, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit446.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit446.us: ; preds = %bb.ad, %bb.ac
  %i.qk = phi fast float [ %i.qh, %bb.ac ], [ %i.qj, %bb.ad ] ; 4 uses
  switch i32 %11, label %_ZN4ncnnL13compute_coordEfiii.exit.us [
    i32 2, label %bb.af
    i32 3, label %bb.ae
  ]

bb.ae:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit446.us
  br i1 %.not.i445.us, label %_ZN4ncnnL13compute_coordEfiii.exit.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit.thread757.us

_ZN4ncnnL13compute_coordEfiii.exit.thread757.us:  ; preds = %bb.ae
  %i.ql = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qk)
  %i.qm = fsub fast float %i.ql, %i.pl
  %i.qn = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qm)
  %i.qo = fsub fast float %i.pl, %i.qn
  br label %bb.ag

_ZN4ncnnL13compute_coordEfiii.exit.thread.us:     ; preds = %bb.ae
  %i.qp = fadd fast float %i.qk, 5.000000e-01
  %i.qq = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qp)
  %i.qr = fsub fast float %i.qq, %i.pm
  %i.qs = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.qr)
  %i.qt = fsub fast float %i.pn, %i.qs
  %.sroa.speculated4.i12.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.qt, float 0.000000e+00)
  %.sroa.speculated.i13.i.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i.us, float %i.pl)
  br label %bb.ah

bb.af:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit446.us
  %.sroa.speculated4.i.i.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.qk, float 0.000000e+00)
  %.sroa.speculated.i.i.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i.us, float %i.pl)
  br label %_ZN4ncnnL13compute_coordEfiii.exit.us

_ZN4ncnnL13compute_coordEfiii.exit.us:            ; preds = %bb.af, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit446.us
  %.0.i.us = phi nsz float [ %.sroa.speculated.i.i.us, %bb.af ], [ %i.qk, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit446.us ] ; 2 uses
  br i1 %.not.i445.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit.us, %_ZN4ncnnL13compute_coordEfiii.exit.thread757.us
  %.0.i759.us = phi float [ %i.qo, %_ZN4ncnnL13compute_coordEfiii.exit.thread757.us ], [ %.0.i.us, %_ZN4ncnnL13compute_coordEfiii.exit.us ]
  %i.qu = fmul fast float %i.qc, 5.000000e-01
  %i.qv = fadd fast float %i.qu, 5.000000e-01
  %i.qw = fmul fast float %i.qv, %i.pq
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit449.us

bb.ah:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit.us, %_ZN4ncnnL13compute_coordEfiii.exit.thread.us
  %.0.i756.us = phi float [ %.sroa.speculated.i13.i.us, %_ZN4ncnnL13compute_coordEfiii.exit.thread.us ], [ %.0.i.us, %_ZN4ncnnL13compute_coordEfiii.exit.us ]
  %i.qx = fmul fast float %i.qc, 5.000000e-01
  %i.qy = fadd fast float %i.qx, 5.000000e-01
  %i.qz = fmul fast float %i.qy, %i.pr
  %i.ra = fadd fast float %i.qz, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit449.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit449.us: ; preds = %bb.ah, %bb.ag
  %.0.i755.us = phi float [ %.0.i759.us, %bb.ag ], [ %.0.i756.us, %bb.ah ]
  %i.rb = phi fast float [ %i.qw, %bb.ag ], [ %i.ra, %bb.ah ] ; 4 uses
  switch i32 %11, label %_ZN4ncnnL13compute_coordEfiii.exit456.us [
    i32 2, label %bb.aj
    i32 3, label %bb.ai
  ]

bb.ai:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit449.us
  br i1 %.not.i445.us, label %_ZN4ncnnL13compute_coordEfiii.exit456.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit456.thread763.us

_ZN4ncnnL13compute_coordEfiii.exit456.thread763.us: ; preds = %bb.ai
  %i.rc = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rb)
  %i.rd = fsub fast float %i.rc, %i.pt
  %i.re = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rd)
  %i.rf = fsub fast float %i.pt, %i.re
  br label %bb.ak

_ZN4ncnnL13compute_coordEfiii.exit456.thread.us:  ; preds = %bb.ai
  %i.rg = fadd fast float %i.rb, 5.000000e-01
  %i.rh = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rg)
  %i.ri = fsub fast float %i.rh, %i.pu
  %i.rj = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ri)
  %i.rk = fsub fast float %i.pv, %i.rj
  %.sroa.speculated4.i12.i452.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.rk, float 0.000000e+00)
  %.sroa.speculated.i13.i453.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i452.us, float %i.px)
  br label %bb.al

bb.aj:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit449.us
  %.sroa.speculated4.i.i454.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.rb, float 0.000000e+00)
  %.sroa.speculated.i.i455.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i454.us, float %i.pz)
  br label %_ZN4ncnnL13compute_coordEfiii.exit456.us

_ZN4ncnnL13compute_coordEfiii.exit456.us:         ; preds = %bb.aj, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit449.us
  %.0.i451.us = phi nsz float [ %.sroa.speculated.i.i455.us, %bb.aj ], [ %i.rb, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit449.us ] ; 2 uses
  br i1 %.not.i445.us, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit456.us, %_ZN4ncnnL13compute_coordEfiii.exit456.thread763.us
  %.0.i451765.us = phi float [ %i.rf, %_ZN4ncnnL13compute_coordEfiii.exit456.thread763.us ], [ %.0.i451.us, %_ZN4ncnnL13compute_coordEfiii.exit456.us ]
  %i.rl = fmul fast float %i.qe, 5.000000e-01
  %i.rm = fadd fast float %i.rl, 5.000000e-01
  %i.rn = fmul fast float %i.rm, %i.pc
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit458.us

bb.al:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit456.us, %_ZN4ncnnL13compute_coordEfiii.exit456.thread.us
  %.0.i451762.us = phi float [ %.sroa.speculated.i13.i453.us, %_ZN4ncnnL13compute_coordEfiii.exit456.thread.us ], [ %.0.i451.us, %_ZN4ncnnL13compute_coordEfiii.exit456.us ]
  %i.ro = fadd fast float %i.qe, 1.000000e+00
  %i.rp = fmul fast float %i.pe, %i.ro
  %i.rq = fadd fast float %i.rp, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit458.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit458.us: ; preds = %bb.al, %bb.ak
  %.0.i451761.us = phi float [ %.0.i451765.us, %bb.ak ], [ %.0.i451762.us, %bb.al ]
  %i.rr = phi fast float [ %i.rn, %bb.ak ], [ %i.rq, %bb.al ] ; 4 uses
  switch i32 %11, label %_ZN4ncnnL13compute_coordEfiii.exit465.us [
    i32 2, label %bb.ap
    i32 3, label %bb.am
  ]

bb.am:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit458.us
  br i1 %.not.i445.us, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rs = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rr)
  %i.rt = fsub fast float %i.rs, %i.pc
  %i.ru = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rt)
  %i.rv = fsub fast float %i.pc, %i.ru
  br label %_ZN4ncnnL13compute_coordEfiii.exit465.us

bb.ao:                                            ; preds = %bb.am
  %i.rw = fadd fast float %i.rr, 5.000000e-01
  %i.rx = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.rw)
  %i.ry = fsub fast float %i.rx, %i.pd
  %i.rz = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ry)
  %i.sa = fsub fast float %i.pf, %i.rz
  %.sroa.speculated4.i12.i461.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.sa, float 0.000000e+00)
  %.sroa.speculated.i13.i462.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i461.us, float %i.pc)
  br label %_ZN4ncnnL13compute_coordEfiii.exit465.us

bb.ap:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit458.us
  %.sroa.speculated4.i.i463.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.rr, float 0.000000e+00)
  %.sroa.speculated.i.i464.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i463.us, float %i.pc)
  br label %_ZN4ncnnL13compute_coordEfiii.exit465.us

_ZN4ncnnL13compute_coordEfiii.exit465.us:         ; preds = %bb.ap, %bb.ao, %bb.an, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit458.us
  %.0.i460.us = phi nsz float [ %.sroa.speculated.i.i464.us, %bb.ap ], [ %i.rv, %bb.an ], [ %.sroa.speculated.i13.i462.us, %bb.ao ], [ %i.rr, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit458.us ]
  store float %.0.i755.us, ptr %.2183869.us, align 4, !tbaa !55
  store float %.0.i451761.us, ptr %.2180870.us, align 4, !tbaa !55
  store float %.0.i460.us, ptr %.2177871.us, align 4, !tbaa !55
  %i.sb = getelementptr inbounds nuw i8, ptr %.1173872.us, i64 12 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.2183869.us, i64 4 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.2180870.us, i64 4 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.2177871.us, i64 4 ; 3 uses
  %i.sf = add nuw nsw i32 %.0170873.us, 1         ; 2 uses
  %exitcond928.not = icmp eq i32 %i.sf, %i.nj
  br i1 %exitcond928.not, label %._crit_edge.us889, label %bb.ab, !llvm.loop !106

._crit_edge.us889:                                ; preds = %_ZN4ncnnL13compute_coordEfiii.exit465.us
  %i.sg = add nuw nsw i32 %.0171884.us, 1         ; 2 uses
  %exitcond929.not = icmp eq i32 %i.sg, %i.nl
  br i1 %exitcond929.not, label %._crit_edge885, label %.preheader.us, !llvm.loop !107

._crit_edge885:                                   ; preds = %._crit_edge.us889
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond931.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond931.not, label %.loopexit, label %.noexc302, !llvm.loop !108

.noexc300:                                        ; preds = %bb.aa
  br i1 %i.os, label %.preheader784.lr.ph, label %.loopexit

.preheader784.lr.ph:                              ; preds = %.noexc300
  %i.sh = icmp sgt i32 %i.nl, 0
  %i.si = add nsw i32 %i.r, -1
  %i.sj = sitofp fast i32 %i.si to float          ; 5 uses
  %i.sk = sitofp fast i32 %i.r to float           ; 3 uses
  %i.sl = fmul fast float %i.sk, 5.000000e-01
  %i.sm = fadd fast float %i.sk, -5.000000e-01
  %13 = icmp sgt i32 %i.nj, 0
  %or.cond = and i1 %i.sh, %13
  br i1 %or.cond, label %.preheader784.preheader, label %.loopexit

.preheader784.preheader:                          ; preds = %.preheader784.lr.ph
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %15 = shl i64 %i.oj, 1
  %i.so = load i64, ptr %i.nr, align 8, !tbaa !42, !noalias !109 ; 2 uses
  %16 = mul i64 %15, %i.so
  %17 = getelementptr inbounds nuw i8, ptr %i.oh, i64 %16
  %18 = mul i64 %i.so, %i.oj
  %19 = getelementptr inbounds nuw i8, ptr %i.oh, i64 %18
  %20 = load ptr, ptr %i.k, align 8, !tbaa !47, !noalias !112 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !45, !noalias !115 ; 2 uses
  %21 = shl i64 %i.sq, 1
  %i.sr = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %22 = load i64, ptr %i.sr, align 8, !tbaa !42, !noalias !115 ; 2 uses
  %i.ss = mul i64 %21, %22
  %i.st = getelementptr inbounds nuw i8, ptr %20, i64 %i.ss
  %i.su = mul i64 %22, %i.sq
  %i.sv = getelementptr inbounds nuw i8, ptr %20, i64 %i.su
  %23 = load i32, ptr %i.sn, align 8, !tbaa !29
  %.not.i466.us = icmp eq i32 %23, 0              ; 6 uses
  %24 = load i32, ptr %14, align 4, !tbaa !28     ; 3 uses
  br label %.preheader784

.preheader784:                                    ; preds = %.preheader784.preheader, %._crit_edge850
  %.0153868 = phi i32 [ %i.vu, %._crit_edge850 ], [ 0, %.preheader784.preheader ]
  %.0154867 = phi ptr [ %i.vr, %._crit_edge850 ], [ %17, %.preheader784.preheader ]
  %.0155866 = phi ptr [ %i.vq, %._crit_edge850 ], [ %19, %.preheader784.preheader ]
  %.0158865 = phi ptr [ %i.vp, %._crit_edge850 ], [ %i.oh, %.preheader784.preheader ]
  %.0161864 = phi ptr [ %i.vo, %._crit_edge850 ], [ %i.st, %.preheader784.preheader ]
  %.0164863 = phi ptr [ %i.vn, %._crit_edge850 ], [ %i.sv, %.preheader784.preheader ]
  %.0167862 = phi ptr [ %i.vm, %._crit_edge850 ], [ %20, %.preheader784.preheader ]
  %i.sw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.sx = add nsw i32 %i.sw, -1
  %i.sy = sitofp fast i32 %i.sx to float          ; 5 uses
  %i.sz = sitofp fast i32 %i.sw to float          ; 3 uses
  %factor.op.fmul841 = fmul fast float %i.sz, 5.000000e-01
  %i.ta = fadd fast float %i.sz, -5.000000e-01
  br label %.preheader783.us

.preheader783.us:                                 ; preds = %._crit_edge.us, %.preheader784
  %.0152849.us = phi i32 [ 0, %.preheader784 ], [ %i.vt, %._crit_edge.us ]
  %.1848.us = phi ptr [ %.0154867, %.preheader784 ], [ %i.vr, %._crit_edge.us ]
  %.1156847.us = phi ptr [ %.0155866, %.preheader784 ], [ %i.vq, %._crit_edge.us ]
  %.1159846.us = phi ptr [ %.0158865, %.preheader784 ], [ %i.vp, %._crit_edge.us ]
  %.1162845.us = phi ptr [ %.0161864, %.preheader784 ], [ %i.vo, %._crit_edge.us ]
  %.1165844.us = phi ptr [ %.0164863, %.preheader784 ], [ %i.vn, %._crit_edge.us ]
  %.1168843.us = phi ptr [ %.0167862, %.preheader784 ], [ %i.vm, %._crit_edge.us ]
  %i.tb = load i32, ptr %i.b, align 4             ; 6 uses
  %i.tc = add nsw i32 %i.tb, -1
  %i.td = sitofp fast i32 %i.tc to float
  %i.te = sitofp fast i32 %i.tb to float
  %i.tf = add nsw i32 %i.tb, -1
  %i.tg = sitofp fast i32 %i.tf to float          ; 2 uses
  %i.th = sitofp fast i32 %i.tb to float          ; 2 uses
  %i.ti = fadd fast float %i.th, -5.000000e-01
  %i.tj = add nsw i32 %i.tb, -1
  %i.tk = sitofp fast i32 %i.tj to float
  %i.tl = add nsw i32 %i.tb, -1
  %i.tm = sitofp fast i32 %i.tl to float
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader783.us, %_ZN4ncnnL13compute_coordEfiii.exit492.us
  %.0834.us = phi i32 [ 0, %.preheader783.us ], [ %i.vs, %_ZN4ncnnL13compute_coordEfiii.exit492.us ]
  %.2833.us = phi ptr [ %.1848.us, %.preheader783.us ], [ %i.vr, %_ZN4ncnnL13compute_coordEfiii.exit492.us ] ; 2 uses
  %.2157832.us = phi ptr [ %.1156847.us, %.preheader783.us ], [ %i.vq, %_ZN4ncnnL13compute_coordEfiii.exit492.us ] ; 2 uses
  %.2160831.us = phi ptr [ %.1159846.us, %.preheader783.us ], [ %i.vp, %_ZN4ncnnL13compute_coordEfiii.exit492.us ] ; 2 uses
  %.2163830.us = phi ptr [ %.1162845.us, %.preheader783.us ], [ %i.vo, %_ZN4ncnnL13compute_coordEfiii.exit492.us ] ; 2 uses
  %.2166829.us = phi ptr [ %.1165844.us, %.preheader783.us ], [ %i.vn, %_ZN4ncnnL13compute_coordEfiii.exit492.us ] ; 2 uses
  %.2169828.us = phi ptr [ %.1168843.us, %.preheader783.us ], [ %i.vm, %_ZN4ncnnL13compute_coordEfiii.exit492.us ] ; 2 uses
  %i.tn = load float, ptr %.2169828.us, align 4, !tbaa !55 ; 2 uses
  %i.to = load float, ptr %.2166829.us, align 4, !tbaa !55 ; 2 uses
  %i.tp = load float, ptr %.2163830.us, align 4, !tbaa !55 ; 2 uses
  br i1 %.not.i466.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.tq = fmul fast float %i.tn, 5.000000e-01
  %i.tr = fadd fast float %i.tq, 5.000000e-01
  %i.ts = fmul fast float %i.tr, %i.sy
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit467.us

bb.as:                                            ; preds = %bb.aq
  %i.tt = fadd fast float %i.tn, 1.000000e+00
  %.reass842.us = fmul fast float %i.tt, %factor.op.fmul841
  %i.tu = fadd fast float %.reass842.us, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit467.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit467.us: ; preds = %bb.as, %bb.ar
  %i.tv = phi fast float [ %i.ts, %bb.ar ], [ %i.tu, %bb.as ] ; 4 uses
  switch i32 %24, label %_ZN4ncnnL13compute_coordEfiii.exit474.us [
    i32 2, label %bb.au
    i32 3, label %bb.at
  ]

bb.at:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit467.us
  br i1 %.not.i466.us, label %_ZN4ncnnL13compute_coordEfiii.exit474.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit474.thread769.us

_ZN4ncnnL13compute_coordEfiii.exit474.thread769.us: ; preds = %bb.at
  %i.tw = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.tv)
  %i.tx = fsub fast float %i.tw, %i.sy
  %i.ty = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.tx)
  %i.tz = fsub fast float %i.sy, %i.ty
  br label %bb.av

_ZN4ncnnL13compute_coordEfiii.exit474.thread.us:  ; preds = %bb.at
  %i.ua = fadd fast float %i.tv, 5.000000e-01
  %i.ub = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ua)
  %i.uc = fsub fast float %i.ub, %i.sz
  %i.ud = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.uc)
  %i.ue = fsub fast float %i.ta, %i.ud
  %.sroa.speculated4.i12.i470.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ue, float 0.000000e+00)
  %.sroa.speculated.i13.i471.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i470.us, float %i.sy)
  br label %bb.aw

bb.au:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit467.us
  %.sroa.speculated4.i.i472.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.tv, float 0.000000e+00)
  %.sroa.speculated.i.i473.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i472.us, float %i.sy)
  br label %_ZN4ncnnL13compute_coordEfiii.exit474.us

_ZN4ncnnL13compute_coordEfiii.exit474.us:         ; preds = %bb.au, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit467.us
  %.0.i469.us = phi nsz float [ %.sroa.speculated.i.i473.us, %bb.au ], [ %i.tv, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit467.us ] ; 2 uses
  br i1 %.not.i466.us, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit474.us, %_ZN4ncnnL13compute_coordEfiii.exit474.thread769.us
  %.0.i469771.us = phi float [ %i.tz, %_ZN4ncnnL13compute_coordEfiii.exit474.thread769.us ], [ %.0.i469.us, %_ZN4ncnnL13compute_coordEfiii.exit474.us ]
  %i.uf = fmul fast float %i.to, 5.000000e-01
  %i.ug = fadd fast float %i.uf, 5.000000e-01
  %i.uh = fmul fast float %i.ug, %i.td
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit476.us

bb.aw:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit474.us, %_ZN4ncnnL13compute_coordEfiii.exit474.thread.us
  %.0.i469768.us = phi float [ %.sroa.speculated.i13.i471.us, %_ZN4ncnnL13compute_coordEfiii.exit474.thread.us ], [ %.0.i469.us, %_ZN4ncnnL13compute_coordEfiii.exit474.us ]
  %i.ui = fmul fast float %i.to, 5.000000e-01
  %i.uj = fadd fast float %i.ui, 5.000000e-01
  %i.uk = fmul fast float %i.uj, %i.te
  %i.ul = fadd fast float %i.uk, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit476.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit476.us: ; preds = %bb.aw, %bb.av
  %.0.i469767.us = phi float [ %.0.i469771.us, %bb.av ], [ %.0.i469768.us, %bb.aw ]
  %i.um = phi fast float [ %i.uh, %bb.av ], [ %i.ul, %bb.aw ] ; 4 uses
  switch i32 %24, label %_ZN4ncnnL13compute_coordEfiii.exit483.us [
    i32 2, label %bb.ay
    i32 3, label %bb.ax
  ]

bb.ax:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit476.us
  br i1 %.not.i466.us, label %_ZN4ncnnL13compute_coordEfiii.exit483.thread.us, label %_ZN4ncnnL13compute_coordEfiii.exit483.thread775.us

_ZN4ncnnL13compute_coordEfiii.exit483.thread775.us: ; preds = %bb.ax
  %i.un = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.um)
  %i.uo = fsub fast float %i.un, %i.tg
  %i.up = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.uo)
  %i.uq = fsub fast float %i.tg, %i.up
  br label %bb.az

_ZN4ncnnL13compute_coordEfiii.exit483.thread.us:  ; preds = %bb.ax
  %i.ur = fadd fast float %i.um, 5.000000e-01
  %i.us = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ur)
  %i.ut = fsub fast float %i.us, %i.th
  %i.uu = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ut)
  %i.uv = fsub fast float %i.ti, %i.uu
  %.sroa.speculated4.i12.i479.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.uv, float 0.000000e+00)
  %.sroa.speculated.i13.i480.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i479.us, float %i.tk)
  br label %bb.ba

bb.ay:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit476.us
  %.sroa.speculated4.i.i481.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.um, float 0.000000e+00)
  %.sroa.speculated.i.i482.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i481.us, float %i.tm)
  br label %_ZN4ncnnL13compute_coordEfiii.exit483.us

_ZN4ncnnL13compute_coordEfiii.exit483.us:         ; preds = %bb.ay, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit476.us
  %.0.i478.us = phi nsz float [ %.sroa.speculated.i.i482.us, %bb.ay ], [ %i.um, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit476.us ] ; 2 uses
  br i1 %.not.i466.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit483.us, %_ZN4ncnnL13compute_coordEfiii.exit483.thread775.us
  %.0.i478777.us = phi float [ %i.uq, %_ZN4ncnnL13compute_coordEfiii.exit483.thread775.us ], [ %.0.i478.us, %_ZN4ncnnL13compute_coordEfiii.exit483.us ]
  %i.uw = fmul fast float %i.tp, 5.000000e-01
  %i.ux = fadd fast float %i.uw, 5.000000e-01
  %i.uy = fmul fast float %i.ux, %i.sj
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit485.us

bb.ba:                                            ; preds = %_ZN4ncnnL13compute_coordEfiii.exit483.us, %_ZN4ncnnL13compute_coordEfiii.exit483.thread.us
  %.0.i478774.us = phi float [ %.sroa.speculated.i13.i480.us, %_ZN4ncnnL13compute_coordEfiii.exit483.thread.us ], [ %.0.i478.us, %_ZN4ncnnL13compute_coordEfiii.exit483.us ]
  %i.uz = fadd fast float %i.tp, 1.000000e+00
  %i.va = fmul fast float %i.sl, %i.uz
  %i.vb = fadd fast float %i.va, -5.000000e-01
  br label %_ZN4ncnnL22grid_sample_unormalizeEifi.exit485.us

_ZN4ncnnL22grid_sample_unormalizeEifi.exit485.us: ; preds = %bb.ba, %bb.az
  %.0.i478773.us = phi float [ %.0.i478777.us, %bb.az ], [ %.0.i478774.us, %bb.ba ]
  %i.vc = phi fast float [ %i.uy, %bb.az ], [ %i.vb, %bb.ba ] ; 4 uses
  switch i32 %24, label %_ZN4ncnnL13compute_coordEfiii.exit492.us [
    i32 2, label %bb.be
    i32 3, label %bb.bb
  ]

bb.bb:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit485.us
  br i1 %.not.i466.us, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.vd = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vc)
  %i.ve = fsub fast float %i.vd, %i.sj
  %i.vf = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ve)
  %i.vg = fsub fast float %i.sj, %i.vf
  br label %_ZN4ncnnL13compute_coordEfiii.exit492.us

bb.bd:                                            ; preds = %bb.bb
  %i.vh = fadd fast float %i.vc, 5.000000e-01
  %i.vi = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vh)
  %i.vj = fsub fast float %i.vi, %i.sk
  %i.vk = call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.vj)
  %i.vl = fsub fast float %i.sm, %i.vk
  %.sroa.speculated4.i12.i488.us = call nnan ninf nsz float @llvm.maxnum.f32(float %i.vl, float 0.000000e+00)
  %.sroa.speculated.i13.i489.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i12.i488.us, float %i.sj)
  br label %_ZN4ncnnL13compute_coordEfiii.exit492.us

bb.be:                                            ; preds = %_ZN4ncnnL22grid_sample_unormalizeEifi.exit485.us
  %.sroa.speculated4.i.i490.us = call nnan ninf nsz float @llvm.maxnum.f32(float nofpclass(nan inf) %i.vc, float 0.000000e+00)
  %.sroa.speculated.i.i491.us = call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i.i490.us, float %i.sj)
  br label %_ZN4ncnnL13compute_coordEfiii.exit492.us

_ZN4ncnnL13compute_coordEfiii.exit492.us:         ; preds = %bb.be, %bb.bd, %bb.bc, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit485.us
  %.0.i487.us = phi nsz float [ %.sroa.speculated.i.i491.us, %bb.be ], [ %i.vg, %bb.bc ], [ %.sroa.speculated.i13.i489.us, %bb.bd ], [ %i.vc, %_ZN4ncnnL22grid_sample_unormalizeEifi.exit485.us ]
  store float %.0.i469767.us, ptr %.2160831.us, align 4, !tbaa !55
  store float %.0.i478773.us, ptr %.2157832.us, align 4, !tbaa !55
  store float %.0.i487.us, ptr %.2833.us, align 4, !tbaa !55
  %i.vm = getelementptr inbounds nuw i8, ptr %.2169828.us, i64 4 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.2166829.us, i64 4 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.2163830.us, i64 4 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.2160831.us, i64 4 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.2157832.us, i64 4 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.2833.us, i64 4 ; 3 uses
  %i.vs = add nuw nsw i32 %.0834.us, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.vs, %i.nj
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.aq, !llvm.loop !118

._crit_edge.us:                                   ; preds = %_ZN4ncnnL13compute_coordEfiii.exit492.us
  %i.vt = add nuw nsw i32 %.0152849.us, 1         ; 2 uses
  %exitcond926.not = icmp eq i32 %i.vt, %i.nl
  br i1 %exitcond926.not, label %._crit_edge850, label %.preheader783.us, !llvm.loop !119

._crit_edge850:                                   ; preds = %._crit_edge.us
  %i.vu = add nuw nsw i32 %.0153868, 1            ; 2 uses
  %exitcond927.not = icmp eq i32 %i.vu, %i.nn
  br i1 %exitcond927.not, label %.loopexit, label %.preheader784, !llvm.loop !120

.loopexit:                                        ; preds = %._crit_edge850, %._crit_edge885, %.noexc302.preheader, %.noexc300, %.preheader784.lr.ph, %.noexc266, %.noexc302.lr.ph
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !9
  switch i32 %i.vw, label %_ZNK4ncnn3Mat5emptyEv.exit255.thread [
    i32 1, label %bb.bf
    i32 2, label %bb.bg
    i32 3, label %bb.bh
  ]

bb.bf:                                            ; preds = %.loopexit
  %i.vx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !95
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.vy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.l, ptr nonnull %5, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %i.f)
  br label %_ZNK4ncnn3Mat5emptyEv.exit255.thread

bb.bg:                                            ; preds = %.loopexit
  %i.vz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !95
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.wa)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.l, ptr nonnull %5, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %i.f)
  br label %_ZNK4ncnn3Mat5emptyEv.exit255.thread

bb.bh:                                            ; preds = %.loopexit
  %i.wb = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.wc = call i64 @fwrite(ptr nonnull @.str.7, i64 34, i64 1, ptr %i.wb) #18 ; 0 uses
  %i.wd = load ptr, ptr @stderr, align 8, !tbaa !31
  %fputc = call i32 @fputc(i32 10, ptr %i.wd)     ; 0 uses
  br label %_ZNK4ncnn3Mat5emptyEv.exit255.thread

_ZNK4ncnn3Mat5emptyEv.exit255.thread:             ; preds = %bb.y, %bb.x, %bb.bf, %bb.bg, %.loopexit, %_ZNK4ncnn3Mat5emptyEv.exit255, %_ZNK4ncnn3Mat5emptyEv.exit, %bb.bh
  %cond = phi i1 [ false, %bb.bh ], [ false, %_ZNK4ncnn3Mat5emptyEv.exit255 ], [ false, %_ZNK4ncnn3Mat5emptyEv.exit ], [ true, %.loopexit ], [ true, %bb.bg ], [ true, %bb.bf ], [ false, %bb.x ], [ false, %bb.y ]
  %.2186 = phi i32 [ -1, %bb.bh ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit255 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %.loopexit ], [ -100, %bb.bg ], [ -100, %bb.bf ], [ -100, %bb.x ], [ -100, %bb.y ]
  %i.we = load ptr, ptr %i.nq, align 8, !tbaa !48 ; 2 uses
  %.not.i383 = icmp eq ptr %i.we, null
  br i1 %.not.i383, label %_ZN4ncnn3MatD2Ev.exit277, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit255.thread
  %i.wf = atomicrmw add ptr %i.we, i32 -1 acq_rel, align 4
  %i.wg = icmp eq i32 %i.wf, 1
  br i1 %i.wg, label %bb.bj, label %_ZN4ncnn3MatD2Ev.exit277

bb.bj:                                            ; preds = %bb.bi
  %i.wh = load ptr, ptr %i.ns, align 8, !tbaa !96 ; 3 uses
  %.not3.i384 = icmp eq ptr %i.wh, null
  %i.wi = load ptr, ptr %5, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i384, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wj = load ptr, ptr %i.wh, align 8, !tbaa !97
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8
  invoke void %i.wl(ptr noundef nonnull align 8 dereferenceable(8) %i.wh, ptr noundef %i.wi)
          to label %_ZN4ncnn3MatD2Ev.exit277 unwind label %bb.bn, !inline_history !99

bb.bl:                                            ; preds = %bb.bj
  %.not.i398 = icmp eq ptr %i.wi, null
  br i1 %.not.i398, label %_ZN4ncnn3MatD2Ev.exit277, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @free(ptr noundef nonnull %i.wi) #7
  br label %_ZN4ncnn3MatD2Ev.exit277

bb.bn:                                            ; preds = %bb.bk
  %i.wm = landingpad { ptr, i32 }
          catch ptr null
  %i.wn = extractvalue { ptr, i32 } %i.wm, 0
  call void @__clang_call_terminate(ptr %i.wn) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit277:                         ; preds = %bb.bi, %_ZNK4ncnn3Mat5emptyEv.exit255.thread, %bb.bk, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br i1 %cond, label %bb.bu, label %bb.cb

bb.bo:                                            ; preds = %bb.z
  %i.wo = atomicrmw add ptr %i.op, i32 -1 acq_rel, align 4
  %i.wp = icmp eq i32 %i.wo, 1
  br i1 %i.wp, label %bb.bp, label %_ZN4ncnn3MatD2Ev.exit276

bb.bp:                                            ; preds = %bb.bo
  %i.wq = load ptr, ptr %i.ns, align 8, !tbaa !96 ; 3 uses
  %.not3.i388 = icmp eq ptr %i.wq, null
  %i.wr = load ptr, ptr %5, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i388, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ws = load ptr, ptr %i.wq, align 8, !tbaa !97
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  %i.wu = load ptr, ptr %i.wt, align 8
  invoke void %i.wu(ptr noundef nonnull align 8 dereferenceable(8) %i.wq, ptr noundef %i.wr)
          to label %_ZN4ncnn3MatD2Ev.exit276 unwind label %bb.bt, !inline_history !99

bb.br:                                            ; preds = %bb.bp
  %.not.i396 = icmp eq ptr %i.wr, null
  br i1 %.not.i396, label %_ZN4ncnn3MatD2Ev.exit276, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @free(ptr noundef nonnull %i.wr) #7
  br label %_ZN4ncnn3MatD2Ev.exit276

bb.bt:                                            ; preds = %bb.bq
  %i.wv = landingpad { ptr, i32 }
          catch ptr null
  %i.ww = extractvalue { ptr, i32 } %i.wv, 0
  call void @__clang_call_terminate(ptr %i.ww) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit276:                         ; preds = %bb.bo, %bb.z, %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.cc

bb.bu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit289, %bb.a, %_ZN4ncnn3MatD2Ev.exit277
  br label %bb.cb

.critedge:                                        ; preds = %bb.d, %bb.c, %_ZNK4ncnn3Mat5emptyEv.exit256, %_ZNK4ncnn3Mat5emptyEv.exit257
  %i.wx = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %.not.i391 = icmp eq ptr %i.wx, null
  br i1 %.not.i391, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %.critedge
  %i.wy = atomicrmw add ptr %i.wx, i32 -1 acq_rel, align 4
  %i.wz = icmp eq i32 %i.wy, 1
  br i1 %i.wz, label %bb.bw, label %_ZN4ncnn3MatD2Ev.exit

bb.bw:                                            ; preds = %bb.bv
  %i.xa = load ptr, ptr %i.ak, align 8, !tbaa !96 ; 3 uses
  %.not3.i392 = icmp eq ptr %i.xa, null
  %i.xb = load ptr, ptr %4, align 8, !tbaa !47    ; 3 uses
  br i1 %.not3.i392, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.xc = load ptr, ptr %i.xa, align 8, !tbaa !97
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8
  invoke void %i.xe(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, ptr noundef %i.xb)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ca, !inline_history !99

bb.by:                                            ; preds = %bb.bw
  %.not.i395 = icmp eq ptr %i.xb, null
  br i1 %.not.i395, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @free(ptr noundef nonnull %i.xb) #7
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ca:                                            ; preds = %bb.bx
  %i.xf = landingpad { ptr, i32 }
          catch ptr null
  %i.xg = extractvalue { ptr, i32 } %i.xf, 0
  call void @__clang_call_terminate(ptr %i.xg) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bv, %.critedge, %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit277, %bb.bu
  %.3 = phi i32 [ 0, %bb.bu ], [ %.2186, %_ZN4ncnn3MatD2Ev.exit277 ], [ -100, %_ZN4ncnn3MatD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.3

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit276, %_ZN4ncnn3MatD2Ev.exit288
  %.pn248.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oo, %_ZN4ncnn3MatD2Ev.exit276 ], [ %i.bg, %_ZN4ncnn3MatD2Ev.exit288 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  resume { ptr, i32 } %.pn248.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn10GridSampleC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn10GridSampleE, i64 16), ptr %0, align 8, !tbaa !97
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !122
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
begin_hunk_1_@_ZNK4ncnn10GridSample7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.6:bb.a
  %i.cg = add nuw nsw i32 %.053164.us.us.us, 1    ; 2 uses
  %exitcond195.not = icmp eq i32 %i.cg, %i.ar
  br i1 %exitcond195.not, label %._crit_edge169.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !195

._crit_edge169.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ch = add nuw nsw i32 %.051177.us.us, 1       ; 2 uses
  %exitcond196.not = icmp eq i32 %i.ch, %i.an
  br i1 %exitcond196.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split183.us.us, label %.preheader155.us.us, !llvm.loop !196

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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 208}
!10 = !{!"_ZTSN4ncnn10GridSampleE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!10, !6, i64 212}
!29 = !{!10, !6, i64 216}
!30 = !{!10, !6, i64 220}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!33 = !{!26, !27, i64 0}
!34 = !{!35, !6, i64 44}
!35 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !36, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!36 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!35, !6, i64 48}
!39 = !{!35, !6, i64 52}
!40 = !{!35, !6, i64 56}
!41 = !{!35, !6, i64 40}
!42 = !{!35, !17, i64 16}
!43 = !{!44, !36, i64 8}
!44 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !36, i64 8, !36, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!45 = !{!35, !17, i64 64}
!46 = !{!44, !36, i64 16}
!47 = !{!35, !13, i64 0}
!48 = !{!35, !22, i64 8}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!51 = distinct !{!51, !"_ZN4ncnn3Mat7channelEi"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, !"_ZNK4ncnn3Mat7channelEi"}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !7, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
!60 = !{!61}
!61 = distinct !{!61, !59}
!62 = !{!63, !58}
!63 = distinct !{!63, !59}
!64 = !{!63}
!65 = distinct !{!65, !66, !67, !68}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.isvectorized", i32 1}
!68 = !{!"llvm.loop.unroll.runtime.disable"}
!69 = distinct !{!69, !66, !67}
!70 = distinct !{!70, !66}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = !{!77, !72}
!77 = distinct !{!77, !73}
!78 = !{!77}
!79 = distinct !{!79, !66, !67, !68}
!80 = distinct !{!80, !66, !67}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!83 = distinct !{!83, !"_ZNK4ncnn3Mat7channelEi"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!86 = distinct !{!86, !"_ZNK4ncnn3Mat7channelEi"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!89 = distinct !{!89, !"_ZN4ncnn3Mat7channelEi"}
!90 = distinct !{!90, !66, !67, !68}
!91 = distinct !{!91, !66, !67}
!92 = distinct !{!92, !66}
!93 = distinct !{!93, !66, !67, !68}
!94 = distinct !{!94, !66, !67}
!95 = !{!44, !6, i64 4}
!96 = !{!35, !36, i64 32}
!97 = !{!98, !98, i64 0}
!98 = !{!"vtable pointer", !8, i64 0}
!99 = distinct !{null}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!102 = distinct !{!102, !"_ZNK4ncnn3Mat7channelEi"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!105 = distinct !{!105, !"_ZN4ncnn3Mat7channelEi"}
!106 = distinct !{!106, !66}
!107 = distinct !{!107, !66}
!108 = distinct !{!108, !66}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!111 = distinct !{!111, !"_ZN4ncnn3Mat7channelEi"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!114 = distinct !{!114, !"_ZNK4ncnn3Mat7channelEi"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!117 = distinct !{!117, !"_ZNK4ncnn3Mat7channelEi"}
!118 = distinct !{!118, !66}
!119 = distinct !{!119, !66}
!120 = distinct !{!120, !66}
!121 = !{!11, !12, i64 8}
!122 = !{!11, !12, i64 9}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!125 = distinct !{!125, !"_ZNK4ncnn3Mat7channelEi"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!128 = distinct !{!128, !"_ZN4ncnn3Mat7channelEi"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!131 = distinct !{!131, !"_ZN4ncnn3Mat7channelEi"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!134 = distinct !{!134, !"_ZN4ncnn3Mat7channelEi"}
!135 = distinct !{!135, !66}
!136 = distinct !{!136, !66}
!137 = !{!138}
!138 = !{i64 2, i64 -1, i64 -1, i1 true}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!141 = distinct !{!141, !"_ZNK4ncnn3Mat7channelEi"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!144 = distinct !{!144, !"_ZN4ncnn3Mat7channelEi"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!147 = distinct !{!147, !"_ZN4ncnn3Mat7channelEi"}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!150 = distinct !{!150, !"_ZN4ncnn3Mat7channelEi"}
!151 = distinct !{!151, !66}
!152 = distinct !{!152, !66}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!155 = distinct !{!155, !"_ZNK4ncnn3Mat7channelEi"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!158 = distinct !{!158, !"_ZN4ncnn3Mat7channelEi"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!161 = distinct !{!161, !"_ZN4ncnn3Mat7channelEi"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!164 = distinct !{!164, !"_ZN4ncnn3Mat7channelEi"}
!165 = distinct !{!165, !66}
!166 = distinct !{!166, !66}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!169 = distinct !{!169, !"_ZNK4ncnn3Mat7channelEi"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!172 = distinct !{!172, !"_ZN4ncnn3Mat7channelEi"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!175 = distinct !{!175, !"_ZN4ncnn3Mat7channelEi"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!178 = distinct !{!178, !"_ZN4ncnn3Mat7channelEi"}
!179 = distinct !{!179, !66}
!180 = distinct !{!180, !66}
!181 = distinct !{!181, !66}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!184 = distinct !{!184, !"_ZNK4ncnn3Mat7channelEi"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!187 = distinct !{!187, !"_ZN4ncnn3Mat7channelEi"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!190 = distinct !{!190, !"_ZN4ncnn3Mat7channelEi"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!193 = distinct !{!193, !"_ZN4ncnn3Mat7channelEi"}
!194 = distinct !{!194, !66}
!195 = distinct !{!195, !66}
!196 = distinct !{!196, !66}
end_hunk_1
