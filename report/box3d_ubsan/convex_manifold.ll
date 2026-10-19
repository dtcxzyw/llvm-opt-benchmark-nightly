Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/convex_manifold?download=true
inline.NumInlined: 430
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildFaceAContact:bb.a
  br i1 %exitcond624.not.i.2, label %._crit_edge553.i, label %.lr.ph552.split.split.i.3

.lr.ph552.split.split.i.3:                        ; preds = %bb.by
  %i.nk = load ptr, ptr %i.lz, align 8, !tbaa !20 ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 72 ; 2 uses
  %i.nm = ptrtoint ptr %i.nk to i64, !nosanitize !9 ; 2 uses
  %i.nn = add i64 %i.nm, 72, !nosanitize !9       ; 2 uses
  %i.no = icmp ne ptr %i.nk, null, !nosanitize !9 ; 2 uses
  %i.np = icmp ne i64 %i.nn, 0
  %i.nq = icmp ult ptr %i.nk, inttoptr (i64 -72 to ptr)
  %i.nr = and i1 %i.np, %i.nq
  %i.ns = and i1 %i.nr, %i.no
  br i1 %i.ns, label %bb.bz, label %bb.br, !prof !10, !nosanitize !9

bb.bz:                                            ; preds = %.lr.ph552.split.split.i.3
  %i.nt = ptrtoint ptr %i.nl to i64, !nosanitize !9 ; 2 uses
  %i.nu = and i64 %i.nt, 3, !nosanitize !9
  %i.nv = icmp eq i64 %i.nu, 0, !nosanitize !9
  %i.nw = and i1 %i.no, %i.nv
  br i1 %i.nw, label %bb.ca, label %bb.bs, !prof !10, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.nx = add i64 %i.kt, 72, !nosanitize !9
  %.not461.i.3 = icmp ugt ptr %7, inttoptr (i64 -73 to ptr)
  br i1 %.not461.i.3, label %bb.bt, label %bb.cb, !prof !32, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  %i.ny = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.nl, ptr noundef nonnull align 8 dereferenceable(24) %i.ny, i64 24, i1 false), !tbaa.struct !78
  br label %._crit_edge553.i

._crit_edge553.i:                                 ; preds = %bb.cb, %bb.by
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.kp, ptr %i.nz, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

bb.cc:                                            ; preds = %bb.bq
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8, !tbaa !12 ; 10 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx15, align 8, !tbaa !12 ; 8 uses
  %i.oa = call float @b3GetLengthUnitsPerMeter() #12
  %i.ob = fmul float %i.oa, 5.000000e-03
  %i.oc = fmul float %i.ob, 4.000000e+00          ; 3 uses
  %i.od = fmul float %i.oc, %i.oc                 ; 3 uses
  %i.oe = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.036.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 5 uses
  %i.of = call float @llvm.fabs.f32(float %.sroa.036.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.of, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.og = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.oh = fmul float %i.og, 6.700000e-01
  %i.oi = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.oj = fsub float %i.oh, %i.oi
  %.sroa.033.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.ok = fmul nnan float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %.sroa.033.i.i.4.vec.insert = insertelement <2 x float> %.sroa.033.i.i.0.vec.insert, float %i.ok, i64 1
  %i.ol = fmul nnan float %.sroa.036.0.vec.extract.i.i, 4.200000e-01
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.om = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.on = call float @llvm.fabs.f32(float %i.om)
  %or.cond28.i.i = fcmp ogt float %i.on, 5.000000e-01
  br i1 %or.cond28.i.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.oo = fmul nnan float %i.om, 6.700000e-01
  %.sroa.030.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.op = fmul float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %i.oq = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.or = fsub float %i.op, %i.oq
  %.sroa.030.i.i.4.vec.insert = insertelement <2 x float> %.sroa.030.i.i.0.vec.insert, float %i.or, i64 1
  %i.os = fmul nnan float %i.om, 4.200000e-01
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ot = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ov = fmul <2 x float> %i.ou, <float 6.700000e-01, float -4.200000e-01>
  %i.ow = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift114 = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fsub <2 x float> %shift114, %i.ow
  %i.ox = extractelement <2 x float> %foldExtExtBinop115, i64 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  %.sroa.016.0.in.i.i.sroa.speculated = phi <2 x float> [ %.sroa.033.i.i.4.vec.insert, %bb.cd ], [ %.sroa.030.i.i.4.vec.insert, %bb.cf ], [ %i.ov, %bb.cg ] ; 3 uses
  %.sroa.6.0.i.i = phi float [ %i.ol, %bb.cd ], [ %i.os, %bb.cf ], [ %i.ox, %bb.cg ] ; 3 uses
  %i.oy = fmul <2 x float> %.sroa.016.0.in.i.i.sroa.speculated, %.sroa.016.0.in.i.i.sroa.speculated ; 2 uses
  %shift117 = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fadd <2 x float> %i.oy, %shift117
  %i.oz = extractelement <2 x float> %foldExtExtBinop118, i64 0
  %i.pa = fmul float %.sroa.6.0.i.i, %.sroa.6.0.i.i
  %i.pb = fadd float %i.pa, %i.oz                 ; 2 uses
  %i.pc = fcmp ogt float %i.pb, f0x057A0000
  br i1 %i.pc, label %bb.ci, label %.lr.ph.i

bb.ci:                                            ; preds = %bb.ch
  %i.pd = call float @sqrtf(float noundef %i.pb) #12
  %i.pe = fdiv float 1.000000e+00, %i.pd          ; 2 uses
  %i.pf = insertelement <2 x float> poison, float %i.pe, i64 0
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = fmul <2 x float> %.sroa.016.0.in.i.i.sroa.speculated, %i.pg
  %i.pi = fmul float %.sroa.6.0.i.i, %i.pe
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ci, %bb.ch
  %.sroa.07.0.i.i.i = phi <2 x float> [ %i.ph, %bb.ci ], [ zeroinitializer, %bb.ch ]
  %.sroa.5.0.i.i.i = phi float [ %i.pi, %bb.ci ], [ 0.000000e+00, %bb.ch ]
  br label %bb.cj

._crit_edge.i:                                    ; preds = %bb.cn
  %i.pj = icmp eq i32 %.2.i, -1
  br i1 %i.pj, label %bb.co, label %bb.cp

bb.cj:                                            ; preds = %bb.cn, %.lr.ph.i
  %indvars.iv.i163 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i166, %bb.cn ] ; 4 uses
  %.0301526.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.i, %bb.cn ] ; 2 uses
  %.0302525.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.2304.i, %bb.cn ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv.i163 ; 3 uses
  %i.pl = mul nuw nsw i64 %indvars.iv.i163, 24
  %i.pm = add i64 %i.pl, %i.kt, !nosanitize !9    ; 2 uses
  %.not554.i = icmp ult i64 %i.pm, %i.kt, !nosanitize !9
  br i1 %.not554.i, label %bb.ck, label %bb.cl, !prof !32, !nosanitize !9

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @310, i64 %i.kt, i64 %i.pm) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cl:                                            ; preds = %bb.cj
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  %i.po = load float, ptr %i.pn, align 4, !tbaa !23 ; 2 uses
  %i.pp = fcmp ogt float %i.po, %i.oc
  br i1 %i.pp, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.0198.0.copyload.i = load <2 x float>, ptr %i.pk, align 8
  %.sroa.2199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %.sroa.2199.0.copyload.i = load float, ptr %.sroa.2199.0..sroa_idx.i, align 8
  %i.pq = fmul <2 x float> %.sroa.07.0.i.i.i, %.sroa.0198.0.copyload.i ; 2 uses
  %shift120 = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop121 = fadd <2 x float> %i.pq, %shift120
  %i.pr = extractelement <2 x float> %foldExtExtBinop121, i64 0
  %i.ps = fmul float %.sroa.5.0.i.i.i, %.sroa.2199.0.copyload.i
  %i.pt = fadd float %i.ps, %i.pr
  %i.pu = fsub float %i.pt, %i.po                 ; 2 uses
  %i.pv = fmul float %i.pu, f0x3F733333
  %i.pw = fcmp ogt float %i.pv, %.0302525.i       ; 2 uses
  %.1303.i = select i1 %i.pw, float %i.pu, float %.0302525.i
  %i.px = trunc nuw nsw i64 %indvars.iv.i163 to i32
  %.1.i = select i1 %i.pw, i32 %i.px, i32 %.0301526.i
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.2304.i = phi float [ %.1303.i, %bb.cm ], [ %.0302525.i, %bb.cl ]
  %.2.i = phi i32 [ %.1.i, %bb.cm ], [ %.0301526.i, %bb.cl ] ; 4 uses
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i166, %wide.trip.count
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cj, !llvm.loop !140

bb.co:                                            ; preds = %._crit_edge.i
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.py, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

bb.cp:                                            ; preds = %._crit_edge.i
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !20 ; 3 uses
  %i.qb = icmp ne ptr %i.qa, null, !nosanitize !9
  %i.qc = ptrtoint ptr %i.qa to i64, !nosanitize !9 ; 2 uses
  %i.qd = and i64 %i.qc, 3, !nosanitize !9
  %i.qe = icmp eq i64 %i.qd, 0, !nosanitize !9
  %i.qf = and i1 %i.qb, %i.qe, !nosanitize !9
  br i1 %i.qf, label %bb.cr, label %bb.cq, !prof !10, !nosanitize !9

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @311, i64 %i.qc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cr:                                            ; preds = %bb.cp
  %i.qg = sext i32 %.2.i to i64                   ; 2 uses
  %i.qh = getelementptr inbounds [24 x i8], ptr %7, i64 %i.qg ; 2 uses
  %i.qi = mul nsw i64 %i.qg, 24
  %i.qj = add i64 %i.qi, %i.kt, !nosanitize !9    ; 3 uses
  %i.qk = icmp ne i64 %i.qj, 0, !nosanitize !9
  %i.ql = icmp uge i64 %i.qj, %i.kt, !nosanitize !9
  %i.qm = icmp slt i32 %.2.i, 0
  %i.qn = xor i1 %i.qm, %i.ql
  %i.qo = and i1 %i.qk, %i.qn, !nosanitize !9
  br i1 %i.qo, label %bb.ct, label %bb.cs, !prof !10, !nosanitize !9

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @312, i64 %i.kt, i64 %i.qj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.qa, ptr noundef nonnull align 8 dereferenceable(24) %i.qh, i64 24, i1 false), !tbaa.struct !78
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 1, ptr %i.qp, align 8, !tbaa !19
  %i.qq = add nsw i32 %i.kp, -1                   ; 2 uses
  %i.qr = zext nneg i32 %i.qq to i64              ; 2 uses
  %i.qs = mul nuw nsw i64 %i.qr, 24
  %i.qt = add i64 %i.qs, %i.kt, !nosanitize !9    ; 2 uses
  %.not.i167 = icmp ult i64 %i.qt, %i.kt, !nosanitize !9
  br i1 %.not.i167, label %bb.cu, label %bb.cv, !prof !32, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.kt, i64 %i.qt) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cv:                                            ; preds = %bb.ct
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.qr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qh, ptr noundef nonnull align 8 dereferenceable(24) %i.qu, i64 24, i1 false), !tbaa.struct !78
  %i.qv = load ptr, ptr %i.pz, align 8, !tbaa !20 ; 6 uses
  %i.qw = icmp ne ptr %i.qv, null, !nosanitize !9
  %i.qx = ptrtoint ptr %i.qv to i64, !nosanitize !9 ; 4 uses
  %i.qy = and i64 %i.qx, 3, !nosanitize !9
  %i.qz = icmp eq i64 %i.qy, 0, !nosanitize !9
  %i.ra = and i1 %i.qw, %i.qz, !nosanitize !9
  br i1 %i.ra, label %.lr.ph531.i, label %bb.cw, !prof !10, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.qx) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph531.i:                                      ; preds = %bb.cv
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.qv, align 4, !tbaa !12 ; 5 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12 ; 5 uses
  %smax605.i = call i32 @llvm.smax.i32(i32 %i.qq, i32 1)
  %wide.trip.count606.i = zext nneg i32 %smax605.i to i64
  %i.rb = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rc = insertelement <4 x float> %i.rb, float 0.000000e+00, i64 3
  %i.rd = insertelement <4 x float> %i.rc, float %.sroa.8.0.copyload.i, i64 2
  %i.re = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rf = insertelement <4 x float> %i.re, float 0.000000e+00, i64 3
  %i.rg = insertelement <4 x float> %i.rf, float %.sroa.10.0.copyload.i, i64 2
  br label %bb.cx

._crit_edge532.i:                                 ; preds = %bb.cz
  %i.rh = fcmp olt float %.4306.i, %i.od
  br i1 %i.rh, label %b3ReduceManifoldPoints.exit, label %bb.da

bb.cx:                                            ; preds = %bb.cz, %.lr.ph531.i
  %indvars.iv602.i = phi i64 [ 0, %.lr.ph531.i ], [ %indvars.iv.next603.i, %bb.cz ] ; 4 uses
  %.3529.i = phi i32 [ -1, %.lr.ph531.i ], [ %.4.i, %bb.cz ]
  %.3305528.i = phi float [ 0.000000e+00, %.lr.ph531.i ], [ %.4306.i, %bb.cz ] ; 2 uses
  %i.ri = mul nuw nsw i64 %indvars.iv602.i, 24
  %i.rj = add i64 %i.ri, %i.kt, !nosanitize !9    ; 2 uses
  %.not460.i = icmp ult i64 %i.rj, %i.kt, !nosanitize !9
  br i1 %.not460.i, label %bb.cy, label %bb.cz, !prof !32, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @315, i64 %i.kt, i64 %i.rj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.cz:                                            ; preds = %bb.cx
  %i.rk = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv602.i ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %.sroa.4187.0.copyload.i = load float, ptr %.sroa.4187.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.0186.0.copyload.i = load <2 x float>, ptr %i.rk, align 8, !tbaa !12
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !23 ; 2 uses
  %i.rn = fneg float %i.rm
  %i.ro = fcmp ogt float %i.rm, 0.000000e+00
  %i.rp = select i1 %i.ro, float 0.000000e+00, float %i.rn ; 2 uses
  %i.rq = shufflevector <2 x float> %.sroa.0186.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rr = insertelement <4 x float> %i.rq, float %.sroa.4187.0.copyload.i, i64 2
  %i.rs = insertelement <4 x float> %i.rr, float %i.rp, i64 3
  %i.rt = fsub <4 x float> %i.rs, %i.rd           ; 3 uses
  %i.ru = extractelement <4 x float> %i.rt, i64 2
  %i.rv = fmul float %.sroa.10.0.copyload.i, %i.ru
  %i.rw = shufflevector <4 x float> %i.rt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.rx = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.rw ; 2 uses
  %shift123 = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop124 = fadd <2 x float> %i.rx, %shift123
  %i.ry = extractelement <2 x float> %foldExtExtBinop124, i64 0
  %i.rz = fadd float %i.rv, %i.ry
  %i.sa = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.rz, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sc = fmul <4 x float> %i.rg, %i.sb
  %i.sd = fsub <4 x float> %i.rt, %i.sc           ; 2 uses
  %i.se = fmul float %i.rp, 4.000000e+00
  %i.sf = insertelement <4 x float> %i.sd, float %i.se, i64 3
  %i.sg = fmul <4 x float> %i.sd, %i.sf           ; 4 uses
  %shift126 = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop127 = fadd <4 x float> %i.sg, %shift126
  %shift129 = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop130 = fadd <4 x float> %shift129, %foldExtExtBinop127
  %shift132 = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop133 = fadd <4 x float> %shift132, %foldExtExtBinop130
  %i.sh = extractelement <4 x float> %foldExtExtBinop133, i64 0 ; 2 uses
  %i.si = fmul float %i.sh, f0x3F733333
  %i.sj = fcmp ogt float %i.si, %.3305528.i       ; 2 uses
  %.4306.i = select i1 %i.sj, float %i.sh, float %.3305528.i ; 2 uses
  %i.sk = trunc nuw nsw i64 %indvars.iv602.i to i32
  %.4.i = select i1 %i.sj, i32 %i.sk, i32 %.3529.i ; 3 uses
  %indvars.iv.next603.i = add nuw nsw i64 %indvars.iv602.i, 1 ; 2 uses
  %exitcond607.not.i = icmp eq i64 %indvars.iv.next603.i, %wide.trip.count606.i
  br i1 %exitcond607.not.i, label %._crit_edge532.i, label %bb.cx, !llvm.loop !141

bb.da:                                            ; preds = %._crit_edge532.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.sm = add i64 %i.qx, 24, !nosanitize !9       ; 2 uses
  %i.sn = icmp ne i64 %i.sm, 0
  %i.so = icmp ult ptr %i.qv, inttoptr (i64 -24 to ptr)
  %i.sp = and i1 %i.so, %i.sn, !nosanitize !9
  br i1 %i.sp, label %bb.dc, label %bb.db, !prof !10, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @316, i64 %i.qx, i64 %i.sm) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dc:                                            ; preds = %bb.da
  %i.sq = sext i32 %.4.i to i64                   ; 2 uses
  %i.sr = getelementptr inbounds [24 x i8], ptr %7, i64 %i.sq ; 2 uses
  %i.ss = mul nsw i64 %i.sq, 24
  %i.st = add i64 %i.ss, %i.kt, !nosanitize !9    ; 3 uses
  %i.su = icmp ne i64 %i.st, 0, !nosanitize !9
  %i.sv = icmp uge i64 %i.st, %i.kt, !nosanitize !9
  %i.sw = icmp slt i32 %.4.i, 0
  %i.sx = xor i1 %i.sw, %i.sv
  %i.sy = and i1 %i.su, %i.sx, !nosanitize !9
  br i1 %i.sy, label %bb.de, label %bb.dd, !prof !10, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @317, i64 %i.kt, i64 %i.st) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.de:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.sl, ptr noundef nonnull align 8 dereferenceable(24) %i.sr, i64 24, i1 false), !tbaa.struct !78
  store i32 2, ptr %i.qp, align 8, !tbaa !19
  %i.sz = add nsw i32 %i.kp, -2                   ; 2 uses
  %i.ta = zext nneg i32 %i.sz to i64              ; 2 uses
  %i.tb = mul nuw nsw i64 %i.ta, 24
  %i.tc = add i64 %i.tb, %i.kt, !nosanitize !9    ; 2 uses
  %.not343.i = icmp ult i64 %i.tc, %i.kt, !nosanitize !9
  br i1 %.not343.i, label %bb.df, label %bb.dg, !prof !32, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @318, i64 %i.kt, i64 %i.tc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dg:                                            ; preds = %bb.de
  %i.td = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.ta
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sr, ptr noundef nonnull align 8 dereferenceable(24) %i.td, i64 24, i1 false), !tbaa.struct !78
  %i.te = load ptr, ptr %i.pz, align 8, !tbaa !20 ; 7 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24 ; 2 uses
  %i.tg = ptrtoint ptr %i.te to i64, !nosanitize !9 ; 4 uses
  %i.th = add i64 %i.tg, 24, !nosanitize !9       ; 2 uses
  %i.ti = icmp ne ptr %i.te, null, !nosanitize !9
  %i.tj = icmp ne i64 %i.th, 0
  %i.tk = and i1 %i.ti, %i.tj
  %i.tl = icmp ult ptr %i.te, inttoptr (i64 -24 to ptr)
  %i.tm = and i1 %i.tl, %i.tk, !nosanitize !9
  br i1 %i.tm, label %bb.di, label %bb.dh, !prof !10, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @319, i64 %i.tg, i64 %i.th) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.di:                                            ; preds = %bb.dg
  %i.tn = ptrtoint ptr %i.tf to i64, !nosanitize !9 ; 2 uses
  %i.to = and i64 %i.tn, 3, !nosanitize !9
  %i.tp = icmp eq i64 %i.to, 0, !nosanitize !9
  br i1 %i.tp, label %.lr.ph540.preheader.i, label %bb.dj, !prof !10, !nosanitize !9

bb.dj:                                            ; preds = %bb.di
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @320, i64 %i.tn) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph540.preheader.i:                            ; preds = %bb.di
  %.sroa.0150.0.copyload.i = load <2 x float>, ptr %i.tf, align 4, !tbaa !12 ; 3 uses
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %.sroa.6153.0.copyload.i = load float, ptr %.sroa.6153.0..sroa_idx.i, align 4, !tbaa !12 ; 3 uses
  %i.tq = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i ; 5 uses
  %i.tr = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ts = fsub float %.sroa.6153.0.copyload.i, %.sroa.8.0.copyload.i ; 3 uses
  %smax611.i = call i32 @llvm.smax.i32(i32 %i.sz, i32 1)
  %wide.trip.count612.i = zext nneg i32 %smax611.i to i64
  %i.tt = extractelement <2 x float> %i.tq, i64 0
  %i.tu = extractelement <2 x float> %i.tq, i64 1
  %i.tv = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  br label %.lr.ph540.i

._crit_edge541.i:                                 ; preds = %bb.dl
  %i.tw = icmp eq i32 %.6.i, -1
  br i1 %i.tw, label %b3ReduceManifoldPoints.exit, label %bb.dm

.lr.ph540.i:                                      ; preds = %bb.dl, %.lr.ph540.preheader.i
  %indvars.iv608.i = phi i64 [ 0, %.lr.ph540.preheader.i ], [ %indvars.iv.next609.i, %bb.dl ] ; 4 uses
  %.5538.i = phi i32 [ -1, %.lr.ph540.preheader.i ], [ %.6.i, %bb.dl ]
  %.5307537.i = phi float [ %i.od, %.lr.ph540.preheader.i ], [ %.6308.i, %bb.dl ] ; 2 uses
  %.0313536.i = phi float [ 0.000000e+00, %.lr.ph540.preheader.i ], [ %.1314.i, %bb.dl ]
  %i.tx = mul nuw nsw i64 %indvars.iv608.i, 24
  %i.ty = add i64 %i.tx, %i.kt, !nosanitize !9    ; 2 uses
  %.not459.i = icmp ult i64 %i.ty, %i.kt, !nosanitize !9
  br i1 %.not459.i, label %bb.dk, label %bb.dl, !prof !32, !nosanitize !9

bb.dk:                                            ; preds = %.lr.ph540.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @321, i64 %i.kt, i64 %i.ty) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dl:                                            ; preds = %.lr.ph540.i
  %i.tz = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv608.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.tz, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !12
  %i.ua = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.ub = fmul float %i.tu, %i.ua
  %i.uc = fmul float %i.tt, %i.ua
  %i.ud = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.ue = extractelement <2 x float> %i.ud, i64 1
  %i.uf = fmul float %i.ts, %i.ue
  %i.ug = fsub float %i.ub, %i.uf
  %i.uh = extractelement <2 x float> %i.ud, i64 0
  %i.ui = fmul float %i.ts, %i.uh
  %i.uj = fsub float %i.ui, %i.uc
  %i.uk = fmul <2 x float> %i.tr, %i.ud           ; 2 uses
  %shift135 = shufflevector <2 x float> %i.uk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop136 = fsub <2 x float> %shift135, %i.uk
  %i.ul = extractelement <2 x float> %foldExtExtBinop136, i64 0
  %i.um = fmul float %.sroa.036.0.vec.extract.i.i, %i.ug
  %i.un = fmul float %i.tv, %i.uj
  %i.uo = fadd float %i.um, %i.un
  %i.up = fmul float %.sroa.10.0.copyload.i, %i.ul
  %i.uq = fadd float %i.up, %i.uo                 ; 4 uses
  %i.ur = fcmp olt float %i.uq, 0.000000e+00
  %i.us = fneg float %i.uq
  %i.ut = select i1 %i.ur, float %i.us, float %i.uq ; 2 uses
  %i.uu = fmul float %i.ut, f0x3F733333
  %i.uv = fcmp ult float %i.uu, %.5307537.i       ; 3 uses
  %.1314.i = select i1 %i.uv, float %.0313536.i, float %i.uq ; 2 uses
  %.6308.i = select i1 %i.uv, float %.5307537.i, float %i.ut
  %i.uw = trunc nuw nsw i64 %indvars.iv608.i to i32
  %.6.i = select i1 %i.uv, i32 %.5538.i, i32 %i.uw ; 4 uses
  %indvars.iv.next609.i = add nuw nsw i64 %indvars.iv608.i, 1 ; 2 uses
  %exitcond613.not.i = icmp eq i64 %indvars.iv.next609.i, %wide.trip.count612.i
  br i1 %exitcond613.not.i, label %._crit_edge541.i, label %.lr.ph540.i, !llvm.loop !142

bb.dm:                                            ; preds = %._crit_edge541.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.te, i64 48
  %i.uy = add i64 %i.tg, 48, !nosanitize !9       ; 2 uses
  %i.uz = icmp ne i64 %i.uy, 0
  %i.va = icmp ult ptr %i.te, inttoptr (i64 -48 to ptr)
  %i.vb = and i1 %i.va, %i.uz, !nosanitize !9
  br i1 %i.vb, label %bb.do, label %bb.dn, !prof !10, !nosanitize !9

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @322, i64 %i.tg, i64 %i.uy) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.do:                                            ; preds = %bb.dm
  %i.vc = sext i32 %.6.i to i64                   ; 2 uses
  %i.vd = getelementptr inbounds [24 x i8], ptr %7, i64 %i.vc ; 2 uses
  %i.ve = mul nsw i64 %i.vc, 24
  %i.vf = add i64 %i.ve, %i.kt, !nosanitize !9    ; 3 uses
  %i.vg = icmp ne i64 %i.vf, 0, !nosanitize !9
  %i.vh = icmp uge i64 %i.vf, %i.kt, !nosanitize !9
  %i.vi = icmp slt i32 %.6.i, 0
  %i.vj = xor i1 %i.vi, %i.vh
  %i.vk = and i1 %i.vg, %i.vj, !nosanitize !9
  br i1 %i.vk, label %bb.dq, label %bb.dp, !prof !10, !nosanitize !9

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @323, i64 %i.kt, i64 %i.vf) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ux, ptr noundef nonnull align 8 dereferenceable(24) %i.vd, i64 24, i1 false), !tbaa.struct !78
  store i32 3, ptr %i.qp, align 8, !tbaa !19
  %i.vl = add nsw i32 %i.kp, -3                   ; 2 uses
  %i.vm = zext nneg i32 %i.vl to i64              ; 2 uses
  %i.vn = mul nuw nsw i64 %i.vm, 24
  %i.vo = add i64 %i.vn, %i.kt, !nosanitize !9    ; 2 uses
  %.not344.i = icmp ult i64 %i.vo, %i.kt, !nosanitize !9
  br i1 %.not344.i, label %bb.dr, label %bb.ds, !prof !32, !nosanitize !9

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @324, i64 %i.kt, i64 %i.vo) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ds:                                            ; preds = %bb.dq
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.vm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vd, ptr noundef nonnull align 8 dereferenceable(24) %i.vp, i64 24, i1 false), !tbaa.struct !78
  %i.vq = load ptr, ptr %i.pz, align 8, !tbaa !20 ; 7 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 48 ; 2 uses
  %i.vs = ptrtoint ptr %i.vq to i64, !nosanitize !9 ; 4 uses
  %i.vt = add i64 %i.vs, 48, !nosanitize !9       ; 2 uses
  %i.vu = icmp ne ptr %i.vq, null, !nosanitize !9
  %i.vv = icmp ne i64 %i.vt, 0
  %i.vw = and i1 %i.vu, %i.vv
  %i.vx = icmp ult ptr %i.vq, inttoptr (i64 -48 to ptr)
  %i.vy = and i1 %i.vx, %i.vw, !nosanitize !9
  br i1 %i.vy, label %bb.du, label %bb.dt, !prof !10, !nosanitize !9

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @325, i64 %i.vs, i64 %i.vt) #11, !nosanitize !9
  unreachable, !nosanitize !9
end_hunk_0
