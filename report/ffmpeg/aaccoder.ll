Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aaccoder?download=true
inline.NumInlined: 68
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 46
begin_hunk_0_@search_for_quantizers_twoloop:bb.a
._crit_edge2456:                                  ; preds = %bb.ap
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ne, i64 %indvars.iv2384
  %.pre2457 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !73
  %.pre2492 = zext i8 %.pre2457 to i32
  br label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.nk = zext nneg i8 %i.ni to i32
  %i.nl = uitofp nsz nneg i32 %.22091 to float
  %i.nm = fdiv nsz float %i.nl, %i.ms             ; 2 uses
  %i.nn = fcmp nsz ogt float %i.nm, 1.000000e+00
  %i.no = select nsz i1 %i.nn, float %i.nm, float 1.000000e+00 ; 2 uses
  %i.np = fcmp nsz ogt float %i.no, 2.000000e+00
  %..i1781 = select nsz i1 %i.np, float 2.000000e+00, float %i.no ; 2 uses
  %i.nq = fmul nsz float %..i1781, %..i1781
  %i.nr = load i8, ptr %i.nc, align 1, !tbaa !73  ; 7 uses
  %i.ns = zext i8 %i.nr to i32                    ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ne, i64 %indvars.iv2384
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !73  ; 10 uses
  %i.nv = zext i8 %i.nu to i32                    ; 2 uses
  %i.nw = add nuw nsw i64 %indvars.iv2384, %i.nf  ; 2 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.nw ; 2 uses
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !80 ; 2 uses
  %i.nz = load i8, ptr %i.ng, align 1, !tbaa !73
  %i.oa = zext i8 %i.nz to i32
  %i.ob = mul nuw nsw i32 %i.oa, %i.nk
  %i.oc = uitofp nneg i32 %i.ob to float          ; 2 uses
  %i.od = fdiv nsz float %i.ny, %i.oc             ; 6 uses
  %i.oe = zext nneg i32 %.22091 to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.oe ; 2 uses
  %i.og = fmul nsz float %i.nq, 1.500000e+00      ; 2 uses
  %i.oh = uitofp i8 %i.nu to float
  %i.oi = fdiv nsz float 1.000000e+00, %i.oh      ; 6 uses
  %i.oj = add nsw i32 %i.nv, -1
  %i.ok = sitofp nsz i32 %i.oj to float
  %i.ol = fdiv nnan nsz float 1.000000e+00, %i.ok ; 4 uses
  %.not.i1784 = icmp eq i8 %i.nr, 0               ; 2 uses
  br i1 %.not.i1784, label %find_form_factor.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.aq
  %.not142.i = icmp eq i8 %i.nu, 0
  %i.om = fcmp nsz oeq float %i.og, 2.000000e+00
  br i1 %.not142.i, label %.preheader.lr.ph.split.i, label %.preheader.us.preheader.i1785

.preheader.us.preheader.i1785:                    ; preds = %.preheader.lr.ph.i
  %wide.trip.count173.i = zext i8 %i.nr to i64
  %wide.trip.count.i1786 = zext i8 %i.nu to i64   ; 4 uses
  %xtraiter2964 = and i64 %wide.trip.count.i1786, 1
  %i.on = icmp eq i8 %i.nu, 1
  %unroll_iter2969 = and i64 %wide.trip.count.i1786, 254
  %lcmp.mod2966.not = icmp eq i64 %xtraiter2964, 0
  %lcmp.mod2968 = trunc i8 %i.nu to i1
  br label %.preheader.us.i1787

.preheader.us.i1787:                              ; preds = %bb.at, %.preheader.us.preheader.i1785
  %indvars.iv170.i = phi i64 [ 0, %.preheader.us.preheader.i1785 ], [ %indvars.iv.next171.i, %bb.at ] ; 2 uses
  %.077104.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i1785 ], [ %.178.us.i, %bb.at ] ; 2 uses
  %.079103.us.i = phi float [ 0.000000e+00, %.preheader.us.preheader.i1785 ], [ %.180.us.i, %bb.at ] ; 2 uses
  %invariant.gep201.i.idx = shl nuw nsw i64 %indvars.iv170.i, 9
  %invariant.gep201.i = getelementptr inbounds nuw i8, ptr %i.of, i64 %invariant.gep201.i.idx ; 5 uses
  br i1 %i.om, label %.lr.ph.split.us.us.i, label %.lr.ph.split.us110.i

.lr.ph.split.us110.i:                             ; preds = %.preheader.us.i1787, %bb.as
  %indvars.iv.i1788 = phi i64 [ %indvars.iv.next.i1790, %bb.as ], [ 0, %.preheader.us.i1787 ] ; 2 uses
  %.06990.us111.i = phi float [ %i.pc, %bb.as ], [ 0.000000e+00, %.preheader.us.i1787 ]
  %.07089.us112.i = phi float [ %i.os, %bb.as ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %i.oo = phi <2 x float> [ %i.ow, %bb.as ], [ zeroinitializer, %.preheader.us.i1787 ]
  %gep.i1789 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv.i1788
  %i.op = load float, ptr %gep.i1789, align 4, !tbaa !80 ; 3 uses
  %i.oq = tail call nsz float @llvm.fabs.f32(float %i.op) ; 3 uses
  %i.or = fcmp nsz ogt float %.07089.us112.i, %i.oq
  %i.os = select nsz i1 %i.or, float %.07089.us112.i, float %i.oq ; 2 uses
  %i.ot = fmul nsz float %i.op, %i.op             ; 3 uses
  %i.ou = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.ov = insertelement <2 x float> %i.ou, float %i.ot, i64 1
  %i.ow = fadd nsz <2 x float> %i.oo, %i.ov       ; 2 uses
  %i.ox = fcmp nsz ult float %i.ot, %i.od
  br i1 %i.ox, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split.us110.i
  %i.oy = fdiv nsz float %i.ot, %i.od
  %i.oz = tail call nsz float @llvm.log.f32(float %i.oy)
  %i.pa = fmul nsz float %i.og, %i.oz
  %i.pb = tail call nsz float @llvm.exp.f32(float %i.pa)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split.us110.i
  %.sink.i = phi float [ %i.pb, %bb.ar ], [ 1.000000e+00, %.lr.ph.split.us110.i ]
  %i.pc = fadd nsz float %.06990.us111.i, %.sink.i ; 2 uses
  %indvars.iv.next.i1790 = add nuw nsw i64 %indvars.iv.i1788, 1 ; 2 uses
  %exitcond.not.i1791 = icmp eq i64 %indvars.iv.next.i1790, %wide.trip.count.i1786
  br i1 %exitcond.not.i1791, label %._crit_edge.us.i1792, label %.lr.ph.split.us110.i, !llvm.loop !120

.lr.ph.split.us.us.i:                             ; preds = %.preheader.us.i1787, %.lr.ph.split.us.us.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %.lr.ph.split.us.us.i ], [ 0, %.preheader.us.i1787 ] ; 2 uses
  %.06990.us.us.i = phi float [ %.1.us.us.i, %.lr.ph.split.us.us.i ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %.07089.us.us.i = phi float [ %i.ph, %.lr.ph.split.us.us.i ], [ 0.000000e+00, %.preheader.us.i1787 ] ; 2 uses
  %i.pd = phi <2 x float> [ %i.pl, %.lr.ph.split.us.us.i ], [ zeroinitializer, %.preheader.us.i1787 ]
  %gep202.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv160.i
  %i.pe = load float, ptr %gep202.i, align 4, !tbaa !80 ; 3 uses
  %i.pf = tail call nsz float @llvm.fabs.f32(float %i.pe) ; 3 uses
  %i.pg = fcmp nsz ogt float %.07089.us.us.i, %i.pf
  %i.ph = select nsz i1 %i.pg, float %.07089.us.us.i, float %i.pf ; 2 uses
  %i.pi = fmul nsz float %i.pe, %i.pe             ; 3 uses
  %i.pj = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pk = insertelement <2 x float> %i.pj, float %i.pi, i64 1
  %i.pl = fadd nsz <2 x float> %i.pd, %i.pk       ; 2 uses
  %i.pm = fcmp nsz ult float %i.pi, %i.od
  %i.pn = fadd nsz float %.06990.us.us.i, 1.000000e+00
  %i.po = fdiv nsz float %i.pi, %i.od             ; 2 uses
  %i.pp = tail call nsz float @llvm.fmuladd.f32(float %i.po, float %i.po, float %.06990.us.us.i)
  %.1.us.us.i = select nsz i1 %i.pm, float %i.pp, float %i.pn ; 2 uses
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count.i1786
  br i1 %exitcond164.not.i, label %._crit_edge.us.i1792, label %.lr.ph.split.us.us.i, !llvm.loop !120

._crit_edge.us.i1792:                             ; preds = %bb.as, %.lr.ph.split.us.us.i
  %.us-phi95.us.i = phi float [ %i.ph, %.lr.ph.split.us.us.i ], [ %i.os, %bb.as ] ; 2 uses
  %.us-phi96.us.i = phi float [ %.1.us.us.i, %.lr.ph.split.us.us.i ], [ %i.pc, %bb.as ] ; 2 uses
  %i.pq = phi <2 x float> [ %i.pl, %.lr.ph.split.us.us.i ], [ %i.ow, %bb.as ] ; 2 uses
  %i.pr = extractelement <2 x float> %i.pq, i64 1 ; 2 uses
  %i.ps = fcmp nsz ogt float %i.pr, %i.od
  br i1 %i.ps, label %.lr.ph100.us.i, label %bb.at

.lr.ph100.us.i.new:                               ; preds = %.lr.ph100.us.i, %.lr.ph100.us.i.new
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i.1, %.lr.ph100.us.i.new ], [ 0, %.lr.ph100.us.i ] ; 3 uses
  %.07198.us.i = phi float [ %i.qb, %.lr.ph100.us.i.new ], [ 0.000000e+00, %.lr.ph100.us.i ]
  %niter2970 = phi i64 [ %niter2970.next.1, %.lr.ph100.us.i.new ], [ 0, %.lr.ph100.us.i ]
  %gep204.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i
  %i.pt = load float, ptr %gep204.i, align 4, !tbaa !80
  %i.pu = tail call nsz float @llvm.fabs.f32(float %i.pt)
  %i.pv = fsub nsz float %i.pu, %i.qu             ; 2 uses
  %i.pw = tail call nsz float @llvm.fmuladd.f32(float %i.pv, float %i.pv, float %.07198.us.i)
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i
  %gep204.i.1 = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  %i.py = load float, ptr %gep204.i.1, align 4, !tbaa !80
  %i.pz = tail call nsz float @llvm.fabs.f32(float %i.py)
  %i.qa = fsub nsz float %i.pz, %i.qu             ; 2 uses
  %i.qb = tail call nsz float @llvm.fmuladd.f32(float %i.qa, float %i.qa, float %i.pw) ; 3 uses
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %niter2970.next.1 = add i64 %niter2970, 2       ; 2 uses
  %niter2970.ncmp.1 = icmp eq i64 %niter2970.next.1, %unroll_iter2969
  br i1 %niter2970.ncmp.1, label %._crit_edge101.us.i.unr-lcssa, label %.lr.ph100.us.i.new, !llvm.loop !121

._crit_edge101.us.i.unr-lcssa:                    ; preds = %.lr.ph100.us.i.new
  br i1 %lcmp.mod2966.not, label %._crit_edge101.us.i, label %.epil.preheader2963

.epil.preheader2963:                              ; preds = %._crit_edge101.us.i.unr-lcssa, %.lr.ph100.us.i
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.lr.ph100.us.i ], [ %indvars.iv.next166.i.1, %._crit_edge101.us.i.unr-lcssa ]
  %.07198.us.i.epil.init = phi float [ 0.000000e+00, %.lr.ph100.us.i ], [ %i.qb, %._crit_edge101.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2968)
  %gep204.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i, i64 %indvars.iv165.i.epil.init
  %i.qc = load float, ptr %gep204.i.epil, align 4, !tbaa !80
  %i.qd = tail call nsz float @llvm.fabs.f32(float %i.qc)
  %i.qe = fsub nsz float %i.qd, %i.qu             ; 2 uses
  %i.qf = tail call nsz float @llvm.fmuladd.f32(float %i.qe, float %i.qe, float %.07198.us.i.epil.init)
  br label %._crit_edge101.us.i

._crit_edge101.us.i:                              ; preds = %._crit_edge101.us.i.unr-lcssa, %.epil.preheader2963
  %.lcssa2936 = phi float [ %i.qb, %._crit_edge101.us.i.unr-lcssa ], [ %i.qf, %.epil.preheader2963 ]
  %i.qg = fmul nsz float %i.ol, %.lcssa2936
  %i.qh = tail call nsz float @llvm.sqrt.f32(float %i.qg)
  %i.qi = fmul nsz float %i.oi, %i.pr             ; 2 uses
  %i.qj = tail call nsz float @llvm.fmuladd.f32(float %i.qh, float 4.000000e+00, float %i.qu) ; 2 uses
  %i.qk = fcmp nsz ogt float %i.qj, %.us-phi95.us.i
  %.070..us.i = select nsz i1 %i.qk, float %.us-phi95.us.i, float %i.qj
  %i.ql = fdiv nsz float %i.qu, %.070..us.i
  %i.qm = tail call nsz float @llvm.sqrt.f32(float %i.ql)
  %i.qn = fmul nsz float %i.qi, %i.qm
  %i.qo = fcmp nsz olt float %.us-phi96.us.i, 5.000000e-01
  %i.qp = select nsz i1 %i.qo, float 5.000000e-01, float %.us-phi96.us.i
  %i.qq = fdiv nsz float %i.qn, %i.qp
  %i.qr = fadd nsz float %.079103.us.i, %i.qq
  %i.qs = fadd nsz float %.077104.us.i, %i.qi
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge101.us.i, %._crit_edge.us.i1792
  %.180.us.i = phi nsz float [ %i.qr, %._crit_edge101.us.i ], [ %.079103.us.i, %._crit_edge.us.i1792 ] ; 2 uses
  %.178.us.i = phi nsz float [ %i.qs, %._crit_edge101.us.i ], [ %.077104.us.i, %._crit_edge.us.i1792 ] ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count173.i
  br i1 %exitcond174.not.i, label %find_form_factor.exit, label %.preheader.us.i1787, !llvm.loop !122

.lr.ph100.us.i:                                   ; preds = %._crit_edge.us.i1792
  %i.qt = extractelement <2 x float> %i.pq, i64 0
  %i.qu = fmul nsz float %i.oi, %i.qt             ; 5 uses
  br i1 %i.on, label %.epil.preheader2963, label %.lr.ph100.us.i.new

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.qv = fcmp nsz olt float %i.od, 0.000000e+00
  br i1 %i.qv, label %.preheader.lr.ph.split.split.us.split.i, label %find_form_factor.exit

.preheader.lr.ph.split.split.us.split.i:          ; preds = %.preheader.lr.ph.split.i
  %i.qw = fmul nsz float %i.oi, 0.000000e+00      ; 4 uses
  %i.qx = fmul nsz float %i.ol, 0.000000e+00
  %i.qy = tail call nsz float @llvm.sqrt.f32(float %i.qx)
  %i.qz = tail call nsz float @llvm.fmuladd.f32(float %i.qy, float 4.000000e+00, float %i.qw) ; 2 uses
  %i.ra = fcmp nsz ogt float %i.qz, 0.000000e+00
  %.070..us134.i = select nsz i1 %i.ra, float 0.000000e+00, float %i.qz
  %i.rb = fdiv nsz float %i.qw, %.070..us134.i
  %i.rc = tail call ninf nsz float @llvm.sqrt.f32(float %i.rb)
  %i.rd = fmul ninf nsz float %i.qw, %i.rc
  %i.re = fmul ninf nsz float %i.rd, 2.000000e+00
  %i.rf = insertelement <2 x float> poison, float %i.qw, i64 0
  %i.rg = insertelement <2 x float> %i.rf, float %i.re, i64 1 ; 9 uses
  %xtraiter2971 = and i32 %i.ns, 7                ; 3 uses
  %i.rh = icmp ult i8 %i.nr, 8
  br i1 %i.rh, label %.preheader.us124.i.epil.preheader, label %.preheader.lr.ph.split.split.us.split.i.new

.preheader.lr.ph.split.split.us.split.i.new:      ; preds = %.preheader.lr.ph.split.split.us.split.i
  %unroll_iter2977 = and i32 %i.ns, 248
  br label %.preheader.us124.i

.preheader.us124.i:                               ; preds = %.preheader.us124.i, %.preheader.lr.ph.split.split.us.split.i.new
  %i.ri = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.split.us.split.i.new ], [ %i.rq, %.preheader.us124.i ]
  %niter2978 = phi i32 [ 0, %.preheader.lr.ph.split.split.us.split.i.new ], [ %niter2978.next.7, %.preheader.us124.i ]
  %i.rj = fadd nsz <2 x float> %i.rg, %i.ri
  %i.rk = fadd nsz <2 x float> %i.rg, %i.rj
  %i.rl = fadd nsz <2 x float> %i.rg, %i.rk
  %i.rm = fadd nsz <2 x float> %i.rg, %i.rl
  %i.rn = fadd nsz <2 x float> %i.rg, %i.rm
  %i.ro = fadd nsz <2 x float> %i.rg, %i.rn
  %i.rp = fadd nsz <2 x float> %i.rg, %i.ro
  %i.rq = fadd nsz <2 x float> %i.rg, %i.rp       ; 4 uses
  %niter2978.next.7 = add i32 %niter2978, 8       ; 2 uses
  %niter2978.ncmp.7 = icmp eq i32 %niter2978.next.7, %unroll_iter2977
  br i1 %niter2978.ncmp.7, label %find_form_factor.exit.loopexit.unr-lcssa, label %.preheader.us124.i, !llvm.loop !122

find_form_factor.exit.loopexit.unr-lcssa:         ; preds = %.preheader.us124.i
  %i.rr = extractelement <2 x float> %i.rq, i64 1
  %i.rs = extractelement <2 x float> %i.rq, i64 0
  %lcmp.mod2973.not = icmp eq i32 %xtraiter2971, 0
  br i1 %lcmp.mod2973.not, label %find_form_factor.exit, label %.preheader.us124.i.epil.preheader

.preheader.us124.i.epil.preheader:                ; preds = %find_form_factor.exit.loopexit.unr-lcssa, %.preheader.lr.ph.split.split.us.split.i
  %.epil.init = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.split.us.split.i ], [ %i.rq, %find_form_factor.exit.loopexit.unr-lcssa ]
  %lcmp.mod2976 = icmp ne i32 %xtraiter2971, 0
  tail call void @llvm.assume(i1 %lcmp.mod2976)
  br label %.preheader.us124.i.epil

.preheader.us124.i.epil:                          ; preds = %.preheader.us124.i.epil, %.preheader.us124.i.epil.preheader
  %i.rt = phi <2 x float> [ %.epil.init, %.preheader.us124.i.epil.preheader ], [ %i.ru, %.preheader.us124.i.epil ]
  %epil.iter2972 = phi i32 [ 0, %.preheader.us124.i.epil.preheader ], [ %epil.iter2972.next, %.preheader.us124.i.epil ]
  %i.ru = fadd nsz <2 x float> %i.rg, %i.rt       ; 3 uses
  %epil.iter2972.next = add i32 %epil.iter2972, 1 ; 2 uses
  %epil.iter2972.cmp.not = icmp eq i32 %epil.iter2972.next, %xtraiter2971
  br i1 %epil.iter2972.cmp.not, label %find_form_factor.exit.loopexit.epilog-lcssa, label %.preheader.us124.i.epil, !llvm.loop !123

find_form_factor.exit.loopexit.epilog-lcssa:      ; preds = %.preheader.us124.i.epil
  %i.rv = extractelement <2 x float> %i.ru, i64 1
  %i.rw = extractelement <2 x float> %i.ru, i64 0
  br label %find_form_factor.exit

find_form_factor.exit:                            ; preds = %bb.at, %find_form_factor.exit.loopexit.epilog-lcssa, %find_form_factor.exit.loopexit.unr-lcssa, %bb.aq, %.preheader.lr.ph.split.i
  %.079.lcssa.i = phi float [ 0.000000e+00, %bb.aq ], [ 0.000000e+00, %.preheader.lr.ph.split.i ], [ %i.rv, %find_form_factor.exit.loopexit.epilog-lcssa ], [ %i.rr, %find_form_factor.exit.loopexit.unr-lcssa ], [ %.180.us.i, %bb.at ]
  %.077.lcssa.i = phi float [ 0.000000e+00, %bb.aq ], [ 0.000000e+00, %.preheader.lr.ph.split.i ], [ %i.rw, %find_form_factor.exit.loopexit.epilog-lcssa ], [ %i.rs, %find_form_factor.exit.loopexit.unr-lcssa ], [ %.178.us.i, %bb.at ] ; 2 uses
  %i.rx = fcmp nsz ogt float %.077.lcssa.i, 0.000000e+00
  %i.ry = fdiv nsz float %.079.lcssa.i, %.077.lcssa.i
  %.0.i1793 = select nsz i1 %i.rx, float %i.ry, float 1.000000e+00
  %i.rz = fmul nsz float %i.mz, %.0.i1793         ; 2 uses
  %i.sa = load i32, ptr %i.t, align 8, !tbaa !40
  %i.sb = and i32 %i.sa, 2
  %.not1691 = icmp eq i32 %i.sb, 0                ; 2 uses
  %i.sc = tail call nsz float @llvm.sqrt.f32(float %i.rz)
  %.01375 = select nsz i1 %.not1691, float %i.sc, float %i.rz ; 2 uses
  %i.sd = fcmp nsz olt float %.01375, 1.000000e+00
  %i.se = select nsz i1 %i.sd, float %.01375, float 1.000000e+00 ; 2 uses
  %i.sf = fcmp nsz olt float %i.se, 1.562500e-02
  %i.sg = select nsz i1 %i.sf, float 1.562500e-02, float %i.se
  %i.sh = fmul nsz float %.014461908, %i.sg       ; 2 uses
  %i.si = fcmp nsz ogt float %i.sh, 3.125000e-02
  %i.sj = select nsz i1 %i.si, float %i.sh, float 3.125000e-02 ; 2 uses
  %i.sk = fcmp nsz ogt float %i.sj, 1.000000e+00
  %..i1780 = select nsz i1 %i.sk, float 1.000000e+00, float %i.sj
  %i.sl = uitofp i8 %i.nr to float                ; 2 uses
  %i.sm = fmul nsz float %..i1780, %i.sl
  %i.sn = fmul nsz float %i.ny, %i.sm             ; 2 uses
  store float %i.sn, ptr %i.nx, align 4, !tbaa !80
  %i.so = fdiv nsz float %i.sn, %i.oc             ; 4 uses
  br i1 %.not.i1784, label %find_form_factor.exit1846, label %.preheader.lr.ph.i1795

.preheader.lr.ph.i1795:                           ; preds = %find_form_factor.exit
  %.not142.i1796 = icmp eq i8 %i.nu, 0
  br i1 %.not142.i1796, label %.preheader.lr.ph.split.i1838, label %.preheader.us.preheader.i1797

.preheader.us.preheader.i1797:                    ; preds = %.preheader.lr.ph.i1795
  %wide.trip.count173.i1798 = zext i8 %i.nr to i64
  %wide.trip.count163.i1800 = zext i8 %i.nu to i64 ; 3 uses
  %xtraiter2980 = and i64 %wide.trip.count163.i1800, 1
  %i.sp = icmp eq i8 %i.nu, 1
  %unroll_iter2985 = and i64 %wide.trip.count163.i1800, 254
  %lcmp.mod2982.not = icmp eq i64 %xtraiter2980, 0
  %lcmp.mod2984 = trunc i8 %i.nu to i1
  br label %.preheader.us.i1802

.preheader.us.i1802:                              ; preds = %bb.au, %.preheader.us.preheader.i1797
  %indvars.iv170.i1803 = phi i64 [ 0, %.preheader.us.preheader.i1797 ], [ %indvars.iv.next171.i1824, %bb.au ] ; 2 uses
  %.077104.us.i1804 = phi float [ 0.000000e+00, %.preheader.us.preheader.i1797 ], [ %.178.us.i1823, %bb.au ] ; 2 uses
  %.079103.us.i1805 = phi float [ 0.000000e+00, %.preheader.us.preheader.i1797 ], [ %.180.us.i1822, %bb.au ] ; 2 uses
  %invariant.gep201.i1806.idx = shl nuw nsw i64 %indvars.iv170.i1803, 9
  %invariant.gep201.i1806 = getelementptr inbounds nuw i8, ptr %i.of, i64 %invariant.gep201.i1806.idx ; 4 uses
  br label %.lr.ph.split.us.us.i1807

.lr.ph.split.us.us.i1807:                         ; preds = %.lr.ph.split.us.us.i1807, %.preheader.us.i1802
  %indvars.iv160.i1808 = phi i64 [ %indvars.iv.next161.i1815, %.lr.ph.split.us.us.i1807 ], [ 0, %.preheader.us.i1802 ] ; 2 uses
  %.06990.us.us.i1809 = phi float [ %.1.us.us.i1814, %.lr.ph.split.us.us.i1807 ], [ 0.000000e+00, %.preheader.us.i1802 ] ; 2 uses
  %.07089.us.us.i1810 = phi float [ %i.st, %.lr.ph.split.us.us.i1807 ], [ 0.000000e+00, %.preheader.us.i1802 ] ; 2 uses
  %.07288.us.us.i1811 = phi float [ %i.sw, %.lr.ph.split.us.us.i1807 ], [ 0.000000e+00, %.preheader.us.i1802 ]
  %.07387.us.us.i1812 = phi float [ %i.su, %.lr.ph.split.us.us.i1807 ], [ 0.000000e+00, %.preheader.us.i1802 ]
  %gep202.i1813 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i1806, i64 %indvars.iv160.i1808
  %i.sq = load float, ptr %gep202.i1813, align 4, !tbaa !80 ; 3 uses
  %i.sr = tail call nsz float @llvm.fabs.f32(float %i.sq) ; 3 uses
  %i.ss = fcmp nsz ogt float %.07089.us.us.i1810, %i.sr
  %i.st = select nsz i1 %i.ss, float %.07089.us.us.i1810, float %i.sr ; 3 uses
  %i.su = fadd nsz float %.07387.us.us.i1812, %i.sr ; 2 uses
  %i.sv = fmul nsz float %i.sq, %i.sq             ; 3 uses
  %i.sw = fadd nsz float %.07288.us.us.i1811, %i.sv ; 3 uses
  %i.sx = fcmp nsz ult float %i.sv, %i.so
  %i.sy = fadd nsz float %.06990.us.us.i1809, 1.000000e+00
  %i.sz = fdiv nsz float %i.sv, %i.so             ; 2 uses
  %i.ta = tail call nsz float @llvm.fmuladd.f32(float %i.sz, float %i.sz, float %.06990.us.us.i1809)
  %.1.us.us.i1814 = select nsz i1 %i.sx, float %i.ta, float %i.sy ; 3 uses
  %indvars.iv.next161.i1815 = add nuw nsw i64 %indvars.iv160.i1808, 1 ; 2 uses
  %exitcond164.not.i1816 = icmp eq i64 %indvars.iv.next161.i1815, %wide.trip.count163.i1800
  br i1 %exitcond164.not.i1816, label %._crit_edge.us.i1817, label %.lr.ph.split.us.us.i1807, !llvm.loop !120

._crit_edge.us.i1817:                             ; preds = %.lr.ph.split.us.us.i1807
  %i.tb = fcmp nsz ogt float %i.sw, %i.so
  br i1 %i.tb, label %.lr.ph100.us.i1829, label %bb.au

.lr.ph100.us.i1829.new:                           ; preds = %.lr.ph100.us.i1829, %.lr.ph100.us.i1829.new
  %indvars.iv165.i1831 = phi i64 [ %indvars.iv.next166.i1834.1, %.lr.ph100.us.i1829.new ], [ 0, %.lr.ph100.us.i1829 ] ; 3 uses
  %.07198.us.i1832 = phi float [ %i.tk, %.lr.ph100.us.i1829.new ], [ 0.000000e+00, %.lr.ph100.us.i1829 ]
  %niter2986 = phi i64 [ %niter2986.next.1, %.lr.ph100.us.i1829.new ], [ 0, %.lr.ph100.us.i1829 ]
  %gep204.i1833 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i1806, i64 %indvars.iv165.i1831
  %i.tc = load float, ptr %gep204.i1833, align 4, !tbaa !80
  %i.td = tail call nsz float @llvm.fabs.f32(float %i.tc)
  %i.te = fsub nsz float %i.td, %i.uc             ; 2 uses
  %i.tf = tail call nsz float @llvm.fmuladd.f32(float %i.te, float %i.te, float %.07198.us.i1832)
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i1806, i64 %indvars.iv165.i1831
  %gep204.i1833.1 = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.th = load float, ptr %gep204.i1833.1, align 4, !tbaa !80
  %i.ti = tail call nsz float @llvm.fabs.f32(float %i.th)
  %i.tj = fsub nsz float %i.ti, %i.uc             ; 2 uses
  %i.tk = tail call nsz float @llvm.fmuladd.f32(float %i.tj, float %i.tj, float %i.tf) ; 3 uses
  %indvars.iv.next166.i1834.1 = add nuw nsw i64 %indvars.iv165.i1831, 2 ; 2 uses
  %niter2986.next.1 = add i64 %niter2986, 2       ; 2 uses
  %niter2986.ncmp.1 = icmp eq i64 %niter2986.next.1, %unroll_iter2985
  br i1 %niter2986.ncmp.1, label %._crit_edge101.us.i1836.unr-lcssa, label %.lr.ph100.us.i1829.new, !llvm.loop !121

._crit_edge101.us.i1836.unr-lcssa:                ; preds = %.lr.ph100.us.i1829.new
  br i1 %lcmp.mod2982.not, label %._crit_edge101.us.i1836, label %.epil.preheader2979

.epil.preheader2979:                              ; preds = %._crit_edge101.us.i1836.unr-lcssa, %.lr.ph100.us.i1829
  %indvars.iv165.i1831.epil.init = phi i64 [ 0, %.lr.ph100.us.i1829 ], [ %indvars.iv.next166.i1834.1, %._crit_edge101.us.i1836.unr-lcssa ]
  %.07198.us.i1832.epil.init = phi float [ 0.000000e+00, %.lr.ph100.us.i1829 ], [ %i.tk, %._crit_edge101.us.i1836.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2984)
  %gep204.i1833.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep201.i1806, i64 %indvars.iv165.i1831.epil.init
  %i.tl = load float, ptr %gep204.i1833.epil, align 4, !tbaa !80
  %i.tm = tail call nsz float @llvm.fabs.f32(float %i.tl)
  %i.tn = fsub nsz float %i.tm, %i.uc             ; 2 uses
  %i.to = tail call nsz float @llvm.fmuladd.f32(float %i.tn, float %i.tn, float %.07198.us.i1832.epil.init)
  br label %._crit_edge101.us.i1836

._crit_edge101.us.i1836:                          ; preds = %._crit_edge101.us.i1836.unr-lcssa, %.epil.preheader2979
  %.lcssa2942 = phi float [ %i.tk, %._crit_edge101.us.i1836.unr-lcssa ], [ %i.to, %.epil.preheader2979 ]
  %i.tp = fmul nsz float %i.ol, %.lcssa2942
  %i.tq = tail call nsz float @llvm.sqrt.f32(float %i.tp)
  %i.tr = fmul nsz float %i.oi, %i.sw             ; 2 uses
  %i.ts = tail call nsz float @llvm.fmuladd.f32(float %i.tq, float 4.000000e+00, float %i.uc) ; 2 uses
  %i.tt = fcmp nsz ogt float %i.ts, %i.st
  %.070..us.i1837 = select nsz i1 %i.tt, float %i.st, float %i.ts
  %i.tu = fdiv nsz float %i.uc, %.070..us.i1837
  %i.tv = tail call nsz float @llvm.sqrt.f32(float %i.tu)
  %i.tw = fmul nsz float %i.tr, %i.tv
  %i.tx = fcmp nsz olt float %.1.us.us.i1814, 5.000000e-01
  %i.ty = select nsz i1 %i.tx, float 5.000000e-01, float %.1.us.us.i1814
  %i.tz = fdiv nsz float %i.tw, %i.ty
  %i.ua = fadd nsz float %.079103.us.i1805, %i.tz
  %i.ub = fadd nsz float %.077104.us.i1804, %i.tr
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge101.us.i1836, %._crit_edge.us.i1817
  %.180.us.i1822 = phi nsz float [ %i.ua, %._crit_edge101.us.i1836 ], [ %.079103.us.i1805, %._crit_edge.us.i1817 ] ; 2 uses
  %.178.us.i1823 = phi nsz float [ %i.ub, %._crit_edge101.us.i1836 ], [ %.077104.us.i1804, %._crit_edge.us.i1817 ] ; 2 uses
  %indvars.iv.next171.i1824 = add nuw nsw i64 %indvars.iv170.i1803, 1 ; 2 uses
  %exitcond174.not.i1825 = icmp eq i64 %indvars.iv.next171.i1824, %wide.trip.count173.i1798
  br i1 %exitcond174.not.i1825, label %find_form_factor.exit1846, label %.preheader.us.i1802, !llvm.loop !122

.lr.ph100.us.i1829:                               ; preds = %._crit_edge.us.i1817
  %i.uc = fmul nsz float %i.oi, %i.su             ; 5 uses
  br i1 %i.sp, label %.epil.preheader2979, label %.lr.ph100.us.i1829.new

.preheader.lr.ph.split.i1838:                     ; preds = %.preheader.lr.ph.i1795
  %i.ud = fcmp nsz olt float %i.so, 0.000000e+00
  br i1 %i.ud, label %.preheader.lr.ph.split.split.us.split.i1839, label %find_form_factor.exit1846

.preheader.lr.ph.split.split.us.split.i1839:      ; preds = %.preheader.lr.ph.split.i1838
  %i.ue = fmul nsz float %i.oi, 0.000000e+00      ; 4 uses
  %i.uf = fmul nsz float %i.ol, 0.000000e+00
  %i.ug = tail call nsz float @llvm.sqrt.f32(float %i.uf)
  %i.uh = tail call nsz float @llvm.fmuladd.f32(float %i.ug, float 4.000000e+00, float %i.ue) ; 2 uses
  %i.ui = fcmp nsz ogt float %i.uh, 0.000000e+00
  %.070..us134.i1840 = select nsz i1 %i.ui, float 0.000000e+00, float %i.uh
  %i.uj = fdiv nsz float %i.ue, %.070..us134.i1840
  %i.uk = tail call ninf nsz float @llvm.sqrt.f32(float %i.uj)
  %i.ul = fmul ninf nsz float %i.ue, %i.uk
  %i.um = fmul ninf nsz float %i.ul, 2.000000e+00
  %i.un = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.uo = insertelement <2 x float> %i.un, float %i.um, i64 1 ; 9 uses
  %xtraiter2987 = and i32 %i.ns, 7                ; 3 uses
  %i.up = icmp ult i8 %i.nr, 8
  br i1 %i.up, label %.preheader.us124.i1841.epil.preheader, label %.preheader.lr.ph.split.split.us.split.i1839.new

.preheader.lr.ph.split.split.us.split.i1839.new:  ; preds = %.preheader.lr.ph.split.split.us.split.i1839
  %unroll_iter2995 = and i32 %i.ns, 248
  br label %.preheader.us124.i1841

.preheader.us124.i1841:                           ; preds = %.preheader.us124.i1841, %.preheader.lr.ph.split.split.us.split.i1839.new
  %i.uq = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.split.us.split.i1839.new ], [ %i.uy, %.preheader.us124.i1841 ]
  %niter2996 = phi i32 [ 0, %.preheader.lr.ph.split.split.us.split.i1839.new ], [ %niter2996.next.7, %.preheader.us124.i1841 ]
  %i.ur = fadd nsz <2 x float> %i.uo, %i.uq
  %i.us = fadd nsz <2 x float> %i.uo, %i.ur
  %i.ut = fadd nsz <2 x float> %i.uo, %i.us
  %i.uu = fadd nsz <2 x float> %i.uo, %i.ut
  %i.uv = fadd nsz <2 x float> %i.uo, %i.uu
  %i.uw = fadd nsz <2 x float> %i.uo, %i.uv
  %i.ux = fadd nsz <2 x float> %i.uo, %i.uw
  %i.uy = fadd nsz <2 x float> %i.uo, %i.ux       ; 4 uses
  %niter2996.next.7 = add i32 %niter2996, 8       ; 2 uses
  %niter2996.ncmp.7 = icmp eq i32 %niter2996.next.7, %unroll_iter2995
  br i1 %niter2996.ncmp.7, label %find_form_factor.exit1846.loopexit.unr-lcssa, label %.preheader.us124.i1841, !llvm.loop !122

find_form_factor.exit1846.loopexit.unr-lcssa:     ; preds = %.preheader.us124.i1841
  %i.uz = extractelement <2 x float> %i.uy, i64 1
  %i.va = extractelement <2 x float> %i.uy, i64 0
  %lcmp.mod2991.not = icmp eq i32 %xtraiter2987, 0
  br i1 %lcmp.mod2991.not, label %find_form_factor.exit1846, label %.preheader.us124.i1841.epil.preheader

.preheader.us124.i1841.epil.preheader:            ; preds = %find_form_factor.exit1846.loopexit.unr-lcssa, %.preheader.lr.ph.split.split.us.split.i1839
  %.epil.init2990 = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.split.split.us.split.i1839 ], [ %i.uy, %find_form_factor.exit1846.loopexit.unr-lcssa ]
  %lcmp.mod2994 = icmp ne i32 %xtraiter2987, 0
  tail call void @llvm.assume(i1 %lcmp.mod2994)
  br label %.preheader.us124.i1841.epil

.preheader.us124.i1841.epil:                      ; preds = %.preheader.us124.i1841.epil, %.preheader.us124.i1841.epil.preheader
  %i.vb = phi <2 x float> [ %.epil.init2990, %.preheader.us124.i1841.epil.preheader ], [ %i.vc, %.preheader.us124.i1841.epil ]
  %epil.iter2988 = phi i32 [ 0, %.preheader.us124.i1841.epil.preheader ], [ %epil.iter2988.next, %.preheader.us124.i1841.epil ]
  %i.vc = fadd nsz <2 x float> %i.uo, %i.vb       ; 3 uses
  %epil.iter2988.next = add i32 %epil.iter2988, 1 ; 2 uses
  %epil.iter2988.cmp.not = icmp eq i32 %epil.iter2988.next, %xtraiter2987
  br i1 %epil.iter2988.cmp.not, label %find_form_factor.exit1846.loopexit.epilog-lcssa, label %.preheader.us124.i1841.epil, !llvm.loop !124

find_form_factor.exit1846.loopexit.epilog-lcssa:  ; preds = %.preheader.us124.i1841.epil
  %i.vd = extractelement <2 x float> %i.vc, i64 1
  %i.ve = extractelement <2 x float> %i.vc, i64 0
  br label %find_form_factor.exit1846

find_form_factor.exit1846:                        ; preds = %bb.au, %find_form_factor.exit1846.loopexit.epilog-lcssa, %find_form_factor.exit1846.loopexit.unr-lcssa, %find_form_factor.exit, %.preheader.lr.ph.split.i1838
  %.079.lcssa.i1826 = phi float [ 0.000000e+00, %find_form_factor.exit ], [ 0.000000e+00, %.preheader.lr.ph.split.i1838 ], [ %i.vd, %find_form_factor.exit1846.loopexit.epilog-lcssa ], [ %i.uz, %find_form_factor.exit1846.loopexit.unr-lcssa ], [ %.180.us.i1822, %bb.au ]
  %.077.lcssa.i1827 = phi float [ 0.000000e+00, %find_form_factor.exit ], [ 0.000000e+00, %.preheader.lr.ph.split.i1838 ], [ %i.ve, %find_form_factor.exit1846.loopexit.epilog-lcssa ], [ %i.va, %find_form_factor.exit1846.loopexit.unr-lcssa ], [ %.178.us.i1823, %bb.au ] ; 2 uses
  %i.vf = fcmp nsz ogt float %.077.lcssa.i1827, 0.000000e+00
  %i.vg = fdiv nsz float %.079.lcssa.i1826, %.077.lcssa.i1827
  %.0.i1828 = select nsz i1 %i.vf, float %i.vg, float 1.000000e+00
  %i.vh = fmul nsz float %i.mz, %.0.i1828         ; 2 uses
  %i.vi = tail call nsz float @llvm.sqrt.f32(float %i.vh)
  %.11376 = select nsz i1 %.not1691, float %i.vi, float %i.vh ; 2 uses
  %i.vj = fcmp nsz olt float %.11376, 1.000000e+00
  %i.vk = select nsz i1 %i.vj, float %.11376, float 1.000000e+00 ; 2 uses
  %i.vl = fcmp nsz olt float %i.vk, 1.562500e-02
  %i.vm = select nsz i1 %i.vl, float 1.562500e-02, float %i.vk
  %i.vn = fmul nsz float %.014461908, %i.vm
  %i.vo = fmul nsz float %i.vn, %i.sl             ; 2 uses
  %i.vp = fcmp nsz ogt float %i.vo, 5.000000e-01
  %i.vq = select nsz i1 %i.vp, float %i.vo, float 5.000000e-01 ; 2 uses
  %i.vr = fcmp nsz ogt float %i.vq, 1.000000e+00
  %..i1779 = select nsz i1 %i.vr, float 1.000000e+00, float %i.vq
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.nw ; 2 uses
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !80
  %i.vu = fmul nsz float %i.vt, %..i1779
  store float %i.vu, ptr %i.vs, align 4, !tbaa !80
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge2456, %find_form_factor.exit1846
  %.pre-phi = phi i32 [ %.pre2492, %._crit_edge2456 ], [ %i.nv, %find_form_factor.exit1846 ]
  %i.vv = add nuw nsw i32 %.22091, %.pre-phi
  %indvars.iv.next2385 = add nuw nsw i64 %indvars.iv2384, 1 ; 2 uses
  %exitcond2388.not = icmp eq i64 %indvars.iv.next2385, %wide.trip.count2387
  br i1 %exitcond2388.not, label %._crit_edge, label %bb.ap, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.av, %.._crit_edge_crit_edge
  %.pre-phi2496 = phi i64 [ %.pre2495, %.._crit_edge_crit_edge ], [ %i.nb, %bb.av ]
  %i.vw = getelementptr inbounds nuw i8, ptr %i.mn, i64 %.pre-phi2496
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !73
  %i.vy = zext i8 %i.vx to i32
  %i.vz = add nuw nsw i32 %.413502092, %i.vy      ; 2 uses
  %i.wa = icmp slt i32 %i.vz, %i.kl
  br i1 %i.wa, label %bb.am, label %vector.body.preheader, !llvm.loop !126

vector.body.preheader:                            ; preds = %._crit_edge, %._crit_edge2079.thread2663
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x i32> splat (i32 255), ptr %i.c, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wb, align 16, !tbaa !82
  %i.wc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.wd = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x i32> splat (i32 255), ptr %i.wc, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wd, align 16, !tbaa !82
  %i.we = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <4 x i32> splat (i32 255), ptr %i.we, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wf, align 16, !tbaa !82
  %i.wg = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store <4 x i32> splat (i32 255), ptr %i.wg, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wh, align 16, !tbaa !82
  %i.wi = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wj = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store <4 x i32> splat (i32 255), ptr %i.wi, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wj, align 16, !tbaa !82
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store <4 x i32> splat (i32 255), ptr %i.wk, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wl, align 16, !tbaa !82
  %i.wm = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store <4 x i32> splat (i32 255), ptr %i.wm, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wn, align 16, !tbaa !82
  %i.wo = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.wp = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store <4 x i32> splat (i32 255), ptr %i.wo, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wp, align 16, !tbaa !82
  %i.wq = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store <4 x i32> splat (i32 255), ptr %i.wq, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wr, align 16, !tbaa !82
  %i.ws = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.wt = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store <4 x i32> splat (i32 255), ptr %i.ws, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wt, align 16, !tbaa !82
  %i.wu = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.wv = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store <4 x i32> splat (i32 255), ptr %i.wu, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wv, align 16, !tbaa !82
  %i.ww = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store <4 x i32> splat (i32 255), ptr %i.ww, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wx, align 16, !tbaa !82
  %i.wy = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.wz = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store <4 x i32> splat (i32 255), ptr %i.wy, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.wz, align 16, !tbaa !82
  %i.xa = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.xb = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store <4 x i32> splat (i32 255), ptr %i.xa, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xb, align 16, !tbaa !82
  %i.xc = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.xd = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store <4 x i32> splat (i32 255), ptr %i.xc, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xd, align 16, !tbaa !82
  %i.xe = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.xf = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store <4 x i32> splat (i32 255), ptr %i.xe, align 16, !tbaa !82
  store <4 x i32> splat (i32 255), ptr %i.xf, align 16, !tbaa !82
  %i.xg = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 12 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %2, i64 7180 ; 15 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %2, i64 6668 ; 22 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 13 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 10 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 42788 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 42784 ; 8 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 7308 ; 7 uses
  %invariant.op = add nsw i32 %.014541904, 1
  %i.xo = lshr exact i32 %.014221912, 1
  %i.xp = uitofp nneg i32 %.014221912 to float    ; 2 uses
  %i.xq = fmul nsz float %.01450.lcssa2636, 8.000000e+00 ; 2 uses
  %.reass = sub i32 %invariant.op, %i.dt
  %i.xr = sitofp nsz i32 %.reass to float
  %i.xs = add nsw i32 %.014221912, -1
  %i.xt = shl nuw nsw i32 %.014221912, 1          ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %2, i64 5644 ; 10 uses
  %i.xw = udiv i32 %i.xt, 3
  %i.xx = fmul nnan nsz float %i.xp, 2.500000e-01
  %i.xy = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 1)
  %i.xz = uitofp nsz nneg i32 %i.xy to float
  %i.ya = insertelement <2 x float> <float 1.250000e-02, float poison>, float %.01450.lcssa2636, i64 1
  br label %bb.aw

bb.aw:                                            ; preds = %vector.body.preheader, %._crit_edge2268
  %i.yb = phi i32 [ %i.bgy, %._crit_edge2268 ], [ %i.kl, %vector.body.preheader ] ; 3 uses
  %.01423 = phi i32 [ %i.bgz, %._crit_edge2268 ], [ 0, %vector.body.preheader ] ; 7 uses
  %.not1649 = icmp eq i32 %.01423, 0
  %i.yc = select i1 %.not1649, i32 32, i32 1
  br label %bb.ax

bb.ax:                                            ; preds = %select.unfold, %bb.aw
  %i.yd = phi i32 [ %i.yb, %bb.aw ], [ %i.ade, %select.unfold ] ; 3 uses
  %i.ye = phi i32 [ %i.yb, %bb.aw ], [ %i.adf, %select.unfold ] ; 3 uses
  %i.yf = phi i32 [ %i.yb, %bb.aw ], [ %i.adg, %select.unfold ] ; 2 uses
  %.01367 = phi i32 [ %i.yc, %bb.aw ], [ %.11368, %select.unfold ] ; 4 uses
  %i.yg = icmp sgt i32 %i.yf, 0
  br i1 %i.yg, label %.lr.ph2119, label %._crit_edge2120

.lr.ph2119:                                       ; preds = %bb.ax
  %i.yh = load i32, ptr %i.xg, align 8, !tbaa !71 ; 3 uses
  %i.yi = icmp sgt i32 %i.yh, 0
  br i1 %i.yi, label %.lr.ph2119.split, label %._crit_edge2120
end_hunk_0
