Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/convex_manifold?download=true
inline.NumInlined: 430
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildFaceAContact:bb.a
  br i1 %exitcond624.not.i.2, label %._crit_edge553.i, label %.lr.ph552.split.split.i.3

.lr.ph552.split.split.i.3:                        ; preds = %bb.by
  %i.nj = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 72 ; 2 uses
  %i.nl = ptrtoint ptr %i.nj to i64, !nosanitize !9 ; 2 uses
  %i.nm = add i64 %i.nl, 72, !nosanitize !9       ; 2 uses
  %i.nn = icmp ne ptr %i.nj, null, !nosanitize !9 ; 2 uses
  %i.no = icmp ne i64 %i.nm, 0
  %i.np = icmp ult ptr %i.nj, inttoptr (i64 -72 to ptr)
  %i.nq = and i1 %i.no, %i.np
  %i.nr = and i1 %i.nq, %i.nn
  br i1 %i.nr, label %bb.bz, label %bb.br, !prof !10, !nosanitize !9

bb.bz:                                            ; preds = %.lr.ph552.split.split.i.3
  %i.ns = ptrtoint ptr %i.nk to i64, !nosanitize !9 ; 2 uses
  %i.nt = and i64 %i.ns, 3, !nosanitize !9
  %i.nu = icmp eq i64 %i.nt, 0, !nosanitize !9
  %i.nv = and i1 %i.nn, %i.nu
  br i1 %i.nv, label %bb.ca, label %bb.bs, !prof !10, !nosanitize !9

bb.ca:                                            ; preds = %bb.bz
  %i.nw = add i64 %i.ks, 72, !nosanitize !9
  %.not461.i.3 = icmp ugt ptr %7, inttoptr (i64 -73 to ptr)
  br i1 %.not461.i.3, label %bb.bt, label %bb.cb, !prof !31, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %i.nx, i64 24, i1 false), !tbaa.struct !80
  br label %._crit_edge553.i

._crit_edge553.i:                                 ; preds = %bb.cb, %bb.by
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ko, ptr %i.ny, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

bb.cc:                                            ; preds = %bb.bq
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8 ; 10 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx30, align 8, !tbaa !12 ; 8 uses
  %i.nz = call float @b3GetLengthUnitsPerMeter() #11
  %i.oa = fmul float %i.nz, 5.000000e-03
  %i.ob = fmul float %i.oa, 4.000000e+00          ; 3 uses
  %i.oc = fmul float %i.ob, %i.ob                 ; 3 uses
  %i.od = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.036.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 4 uses
  %i.oe = call float @llvm.fabs.f32(float %.sroa.036.0.vec.extract.i.i)
  %or.cond.i.i = fcmp ogt float %i.oe, 5.000000e-01
  br i1 %or.cond.i.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.of = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1
  %i.og = fmul float %i.of, 6.700000e-01
  %i.oh = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.oi = fsub float %i.og, %i.oh
  %.sroa.033.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.oj = fmul nnan float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %.sroa.033.i.i.4.vec.insert = insertelement <2 x float> %.sroa.033.i.i.0.vec.insert, float %i.oj, i64 1
  %i.ok = fmul nnan float %.sroa.036.0.vec.extract.i.i, 4.200000e-01
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.ol = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %i.om = call float @llvm.fabs.f32(float %i.ol)
  %or.cond28.i.i = fcmp ogt float %i.om, 5.000000e-01
  br i1 %or.cond28.i.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.on = fmul nnan float %i.ol, 6.700000e-01
  %.sroa.030.i.i.0.vec.insert = insertelement <2 x float> poison, float %i.on, i64 0
  %i.oo = fmul float %.sroa.036.0.vec.extract.i.i, -6.700000e-01
  %i.op = fmul float %.sroa.10.0.copyload.i, 4.200000e-01
  %i.oq = fsub float %i.oo, %i.op
  %.sroa.030.i.i.4.vec.insert = insertelement <2 x float> %.sroa.030.i.i.0.vec.insert, float %i.oq, i64 1
  %i.or = fmul nnan float %i.ol, 4.200000e-01
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.os = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.ot = shufflevector <2 x float> %i.os, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ou = fmul <2 x float> %i.ot, <float 6.700000e-01, float -4.200000e-01>
  %i.ov = fmul <2 x float> %.sroa.0244.0.copyload.i, <float 6.700000e-01, float 4.200000e-01> ; 2 uses
  %shift114 = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop115 = fsub <2 x float> %shift114, %i.ov
  %i.ow = extractelement <2 x float> %foldExtExtBinop115, i64 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd
  %.sroa.016.0.in.i.i.sroa.speculated = phi <2 x float> [ %.sroa.033.i.i.4.vec.insert, %bb.cd ], [ %.sroa.030.i.i.4.vec.insert, %bb.cf ], [ %i.ou, %bb.cg ] ; 3 uses
  %.sroa.6.0.i.i = phi float [ %i.ok, %bb.cd ], [ %i.or, %bb.cf ], [ %i.ow, %bb.cg ] ; 3 uses
  %i.ox = fmul <2 x float> %.sroa.016.0.in.i.i.sroa.speculated, %.sroa.016.0.in.i.i.sroa.speculated ; 2 uses
  %shift117 = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop118 = fadd <2 x float> %i.ox, %shift117
  %i.oy = extractelement <2 x float> %foldExtExtBinop118, i64 0
  %i.oz = fmul float %.sroa.6.0.i.i, %.sroa.6.0.i.i
  %i.pa = fadd float %i.oz, %i.oy                 ; 2 uses
  %i.pb = fcmp ogt float %i.pa, f0x057A0000
  br i1 %i.pb, label %bb.ci, label %.lr.ph.i

bb.ci:                                            ; preds = %bb.ch
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.pa)
  %i.pc = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.pd = insertelement <2 x float> poison, float %i.pc, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = fmul <2 x float> %.sroa.016.0.in.i.i.sroa.speculated, %i.pe
  %i.pg = fmul float %.sroa.6.0.i.i, %i.pc
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ci, %bb.ch
  %.sroa.07.0.i.i.i = phi <2 x float> [ %i.pf, %bb.ci ], [ zeroinitializer, %bb.ch ]
  %.sroa.5.0.i.i.i = phi float [ %i.pg, %bb.ci ], [ 0.000000e+00, %bb.ch ]
  br label %bb.cj

._crit_edge.i:                                    ; preds = %bb.cn
  %i.ph = icmp eq i32 %.2.i, -1
  br i1 %i.ph, label %bb.co, label %bb.cp

bb.cj:                                            ; preds = %bb.cn, %.lr.ph.i
  %indvars.iv.i163 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i166, %bb.cn ] ; 4 uses
  %.0301526.i = phi i32 [ -1, %.lr.ph.i ], [ %.2.i, %bb.cn ] ; 2 uses
  %.0302525.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.2304.i, %bb.cn ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv.i163 ; 3 uses
  %i.pj = mul nuw nsw i64 %indvars.iv.i163, 24
  %i.pk = add i64 %i.pj, %i.ks, !nosanitize !9    ; 2 uses
  %.not554.i = icmp ult i64 %i.pk, %i.ks, !nosanitize !9
  br i1 %.not554.i, label %bb.ck, label %bb.cl, !prof !31, !nosanitize !9

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @310, i64 %i.ks, i64 %i.pk) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cl:                                            ; preds = %bb.cj
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !23 ; 2 uses
  %i.pn = fcmp ogt float %i.pm, %i.ob
  br i1 %i.pn, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.sroa.0198.0.copyload.i = load <2 x float>, ptr %i.pi, align 8
  %.sroa.2199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %.sroa.2199.0.copyload.i = load float, ptr %.sroa.2199.0..sroa_idx.i, align 8
  %i.po = fmul <2 x float> %.sroa.07.0.i.i.i, %.sroa.0198.0.copyload.i ; 2 uses
  %shift120 = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop121 = fadd <2 x float> %i.po, %shift120
  %i.pp = extractelement <2 x float> %foldExtExtBinop121, i64 0
  %i.pq = fmul float %.sroa.5.0.i.i.i, %.sroa.2199.0.copyload.i
  %i.pr = fadd float %i.pq, %i.pp
  %i.ps = fsub float %i.pr, %i.pm                 ; 2 uses
  %i.pt = fmul float %i.ps, f0x3F733333
  %i.pu = fcmp ogt float %i.pt, %.0302525.i       ; 2 uses
  %.1303.i = select i1 %i.pu, float %i.ps, float %.0302525.i
  %i.pv = trunc nuw nsw i64 %indvars.iv.i163 to i32
  %.1.i = select i1 %i.pu, i32 %i.pv, i32 %.0301526.i
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.2304.i = phi float [ %.1303.i, %bb.cm ], [ %.0302525.i, %bb.cl ]
  %.2.i = phi i32 [ %.1.i, %bb.cm ], [ %.0301526.i, %bb.cl ] ; 4 uses
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i166, %wide.trip.count
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cj, !llvm.loop !142

bb.co:                                            ; preds = %._crit_edge.i
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.pw, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

bb.cp:                                            ; preds = %._crit_edge.i
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !20 ; 3 uses
  %i.pz = icmp ne ptr %i.py, null, !nosanitize !9
  %i.qa = ptrtoint ptr %i.py to i64, !nosanitize !9 ; 2 uses
  %i.qb = and i64 %i.qa, 3, !nosanitize !9
  %i.qc = icmp eq i64 %i.qb, 0, !nosanitize !9
  %i.qd = and i1 %i.pz, %i.qc, !nosanitize !9
  br i1 %i.qd, label %bb.cr, label %bb.cq, !prof !10, !nosanitize !9

bb.cq:                                            ; preds = %bb.cp
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @311, i64 %i.qa) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cr:                                            ; preds = %bb.cp
  %i.qe = sext i32 %.2.i to i64                   ; 2 uses
  %i.qf = getelementptr inbounds [24 x i8], ptr %7, i64 %i.qe ; 2 uses
  %i.qg = mul nsw i64 %i.qe, 24
  %i.qh = add i64 %i.qg, %i.ks, !nosanitize !9    ; 3 uses
  %i.qi = icmp ne i64 %i.qh, 0, !nosanitize !9
  %i.qj = icmp uge i64 %i.qh, %i.ks, !nosanitize !9
  %i.qk = icmp slt i32 %.2.i, 0
  %i.ql = xor i1 %i.qk, %i.qj
  %i.qm = and i1 %i.qi, %i.ql, !nosanitize !9
  br i1 %i.qm, label %bb.ct, label %bb.cs, !prof !10, !nosanitize !9

bb.cs:                                            ; preds = %bb.cr
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @312, i64 %i.ks, i64 %i.qh) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.py, ptr noundef nonnull align 8 dereferenceable(24) %i.qf, i64 24, i1 false), !tbaa.struct !80
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 1, ptr %i.qn, align 8, !tbaa !19
  %i.qo = add nsw i32 %i.ko, -1
  %i.qp = zext nneg i32 %i.qo to i64              ; 3 uses
  %i.qq = mul nuw nsw i64 %i.qp, 24
  %i.qr = add i64 %i.qq, %i.ks, !nosanitize !9    ; 2 uses
  %.not.i167 = icmp ult i64 %i.qr, %i.ks, !nosanitize !9
  br i1 %.not.i167, label %bb.cu, label %bb.cv, !prof !31, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.ks, i64 %i.qr) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cv:                                            ; preds = %bb.ct
  %i.qs = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.qp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qf, ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i64 24, i1 false), !tbaa.struct !80
  %i.qt = load ptr, ptr %i.px, align 8, !tbaa !20 ; 6 uses
  %i.qu = icmp ne ptr %i.qt, null, !nosanitize !9
  %i.qv = ptrtoint ptr %i.qt to i64, !nosanitize !9 ; 4 uses
  %i.qw = and i64 %i.qv, 3, !nosanitize !9
  %i.qx = icmp eq i64 %i.qw, 0, !nosanitize !9
  %i.qy = and i1 %i.qu, %i.qx, !nosanitize !9
  br i1 %i.qy, label %.lr.ph531.i, label %bb.cw, !prof !10, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.qv) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph531.i:                                      ; preds = %bb.cv
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.qt, align 4 ; 7 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12 ; 5 uses
  %i.qz = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ra = insertelement <4 x float> %i.qz, float 0.000000e+00, i64 3
  %i.rb = insertelement <4 x float> %i.ra, float %.sroa.8.0.copyload.i, i64 2
  %i.rc = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rd = insertelement <4 x float> %i.rc, float 0.000000e+00, i64 3
  %i.re = insertelement <4 x float> %i.rd, float %.sroa.10.0.copyload.i, i64 2
  br label %bb.cx

._crit_edge532.i:                                 ; preds = %bb.cz
  %i.rf = fcmp olt float %.4306.i, %i.oc
  br i1 %i.rf, label %b3ReduceManifoldPoints.exit, label %bb.da

bb.cx:                                            ; preds = %bb.cz, %.lr.ph531.i
  %indvars.iv602.i = phi i64 [ 0, %.lr.ph531.i ], [ %indvars.iv.next603.i, %bb.cz ] ; 4 uses
  %.3529.i = phi i32 [ -1, %.lr.ph531.i ], [ %.4.i, %bb.cz ]
  %.3305528.i = phi float [ 0.000000e+00, %.lr.ph531.i ], [ %.4306.i, %bb.cz ] ; 2 uses
  %i.rg = mul nuw nsw i64 %indvars.iv602.i, 24
  %i.rh = add i64 %i.rg, %i.ks, !nosanitize !9    ; 2 uses
  %.not460.i = icmp ult i64 %i.rh, %i.ks, !nosanitize !9
  br i1 %.not460.i, label %bb.cy, label %bb.cz, !prof !31, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @315, i64 %i.ks, i64 %i.rh) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cz:                                            ; preds = %bb.cx
  %i.ri = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv602.i ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 12
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %.sroa.4187.0.copyload.i = load float, ptr %.sroa.4187.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.0186.0.copyload.i = load <2 x float>, ptr %i.ri, align 8
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !23 ; 2 uses
  %i.rl = fneg float %i.rk
  %i.rm = fcmp ogt float %i.rk, 0.000000e+00
  %i.rn = select i1 %i.rm, float 0.000000e+00, float %i.rl ; 2 uses
  %i.ro = fmul float %i.rn, 4.000000e+00
  %i.rp = shufflevector <2 x float> %.sroa.0186.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rq = insertelement <4 x float> %i.rp, float %.sroa.4187.0.copyload.i, i64 2
  %i.rr = insertelement <4 x float> %i.rq, float %i.rn, i64 3
  %i.rs = fsub <4 x float> %i.rr, %i.rb           ; 3 uses
  %i.rt = extractelement <4 x float> %i.rs, i64 2
  %i.ru = fmul float %.sroa.10.0.copyload.i, %i.rt
  %i.rv = shufflevector <4 x float> %i.rs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.rw = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.rv ; 2 uses
  %shift123 = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop124 = fadd <2 x float> %i.rw, %shift123
  %i.rx = extractelement <2 x float> %foldExtExtBinop124, i64 0
  %i.ry = fadd float %i.ru, %i.rx
  %i.rz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ry, i64 0
  %i.sa = shufflevector <4 x float> %i.rz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sb = fmul <4 x float> %i.re, %i.sa
  %i.sc = fsub <4 x float> %i.rs, %i.sb           ; 2 uses
  %i.sd = insertelement <4 x float> %i.sc, float %i.ro, i64 3
  %i.se = fmul <4 x float> %i.sc, %i.sd           ; 4 uses
  %shift126 = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop127 = fadd <4 x float> %i.se, %shift126
  %shift129 = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop130 = fadd <4 x float> %shift129, %foldExtExtBinop127
  %shift132 = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop133 = fadd <4 x float> %shift132, %foldExtExtBinop130
  %i.sf = extractelement <4 x float> %foldExtExtBinop133, i64 0 ; 2 uses
  %i.sg = fmul float %i.sf, f0x3F733333
  %i.sh = fcmp ogt float %i.sg, %.3305528.i       ; 2 uses
  %.4306.i = select i1 %i.sh, float %i.sf, float %.3305528.i ; 2 uses
  %i.si = trunc nuw nsw i64 %indvars.iv602.i to i32
  %.4.i = select i1 %i.sh, i32 %i.si, i32 %.3529.i ; 3 uses
  %indvars.iv.next603.i = add nuw nsw i64 %indvars.iv602.i, 1 ; 2 uses
  %exitcond607.not.i = icmp eq i64 %indvars.iv.next603.i, %i.qp
  br i1 %exitcond607.not.i, label %._crit_edge532.i, label %bb.cx, !llvm.loop !143

bb.da:                                            ; preds = %._crit_edge532.i
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.sk = add i64 %i.qv, 24, !nosanitize !9       ; 2 uses
  %i.sl = icmp ne i64 %i.sk, 0
  %i.sm = icmp ult ptr %i.qt, inttoptr (i64 -24 to ptr)
  %i.sn = and i1 %i.sm, %i.sl, !nosanitize !9
  br i1 %i.sn, label %bb.dc, label %bb.db, !prof !10, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @316, i64 %i.qv, i64 %i.sk) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dc:                                            ; preds = %bb.da
  %i.so = sext i32 %.4.i to i64                   ; 2 uses
  %i.sp = getelementptr inbounds [24 x i8], ptr %7, i64 %i.so ; 2 uses
  %i.sq = mul nsw i64 %i.so, 24
  %i.sr = add i64 %i.sq, %i.ks, !nosanitize !9    ; 3 uses
  %i.ss = icmp ne i64 %i.sr, 0, !nosanitize !9
  %i.st = icmp uge i64 %i.sr, %i.ks, !nosanitize !9
  %i.su = icmp slt i32 %.4.i, 0
  %i.sv = xor i1 %i.su, %i.st
  %i.sw = and i1 %i.ss, %i.sv, !nosanitize !9
  br i1 %i.sw, label %bb.de, label %bb.dd, !prof !10, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @317, i64 %i.ks, i64 %i.sr) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.de:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.sj, ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i64 24, i1 false), !tbaa.struct !80
  store i32 2, ptr %i.qn, align 8, !tbaa !19
  %i.sx = add nsw i32 %i.ko, -2                   ; 2 uses
  %i.sy = zext nneg i32 %i.sx to i64              ; 2 uses
  %i.sz = mul nuw nsw i64 %i.sy, 24
  %i.ta = add i64 %i.sz, %i.ks, !nosanitize !9    ; 2 uses
  %.not343.i = icmp ult i64 %i.ta, %i.ks, !nosanitize !9
  br i1 %.not343.i, label %bb.df, label %bb.dg, !prof !31, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @318, i64 %i.ks, i64 %i.ta) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dg:                                            ; preds = %bb.de
  %i.tb = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.sy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, ptr noundef nonnull align 8 dereferenceable(24) %i.tb, i64 24, i1 false), !tbaa.struct !80
  %i.tc = load ptr, ptr %i.px, align 8, !tbaa !20 ; 7 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24 ; 2 uses
  %i.te = ptrtoint ptr %i.tc to i64, !nosanitize !9 ; 4 uses
  %i.tf = add i64 %i.te, 24, !nosanitize !9       ; 2 uses
  %i.tg = icmp ne ptr %i.tc, null, !nosanitize !9
  %i.th = icmp ne i64 %i.tf, 0
  %i.ti = and i1 %i.tg, %i.th
  %i.tj = icmp ult ptr %i.tc, inttoptr (i64 -24 to ptr)
  %i.tk = and i1 %i.tj, %i.ti, !nosanitize !9
  br i1 %i.tk, label %bb.di, label %bb.dh, !prof !10, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @319, i64 %i.te, i64 %i.tf) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.di:                                            ; preds = %bb.dg
  %i.tl = ptrtoint ptr %i.td to i64, !nosanitize !9 ; 2 uses
  %i.tm = and i64 %i.tl, 3, !nosanitize !9
  %i.tn = icmp eq i64 %i.tm, 0, !nosanitize !9
  br i1 %i.tn, label %.lr.ph540.preheader.i, label %bb.dj, !prof !10, !nosanitize !9

bb.dj:                                            ; preds = %bb.di
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @320, i64 %i.tl) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph540.preheader.i:                            ; preds = %bb.di
  %.sroa.0150.0.copyload.i = load <2 x float>, ptr %i.td, align 4 ; 3 uses
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  %.sroa.6153.0.copyload.i = load float, ptr %.sroa.6153.0..sroa_idx.i, align 4, !tbaa !12 ; 3 uses
  %i.to = shufflevector <2 x float> %.sroa.0150.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tp = insertelement <2 x float> %i.to, float %.sroa.6153.0.copyload.i, i64 0
  %i.tq = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tr = insertelement <2 x float> %i.tq, float %.sroa.8.0.copyload.i, i64 0 ; 2 uses
  %i.ts = insertelement <2 x float> %i.to, float %.sroa.6153.0.copyload.i, i64 1
  %i.tt = insertelement <2 x float> %i.tq, float %.sroa.8.0.copyload.i, i64 1 ; 2 uses
  %i.tu = fsub <2 x float> %i.tp, %i.tr           ; 4 uses
  %i.tv = fsub <2 x float> %i.ts, %i.tt           ; 4 uses
  %smax611.i = call i32 @llvm.smax.i32(i32 %i.sx, i32 1)
  %wide.trip.count612.i = zext nneg i32 %smax611.i to i64
  %i.tw = extractelement <2 x float> %i.tu, i64 1 ; 2 uses
  %i.tx = shufflevector <2 x float> %i.tv, <2 x float> %i.tu, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph540.i

._crit_edge541.i:                                 ; preds = %bb.dl
  %i.ty = icmp eq i32 %.6.i, -1
  br i1 %i.ty, label %b3ReduceManifoldPoints.exit, label %bb.dm

.lr.ph540.i:                                      ; preds = %bb.dl, %.lr.ph540.preheader.i
  %indvars.iv608.i = phi i64 [ 0, %.lr.ph540.preheader.i ], [ %indvars.iv.next609.i, %bb.dl ] ; 4 uses
  %.5538.i = phi i32 [ -1, %.lr.ph540.preheader.i ], [ %.6.i, %bb.dl ]
  %.5307537.i = phi float [ %i.oc, %.lr.ph540.preheader.i ], [ %.6308.i, %bb.dl ] ; 2 uses
  %.0313536.i = phi float [ 0.000000e+00, %.lr.ph540.preheader.i ], [ %.1314.i, %bb.dl ]
  %i.tz = mul nuw nsw i64 %indvars.iv608.i, 24
  %i.ua = add i64 %i.tz, %i.ks, !nosanitize !9    ; 2 uses
  %.not459.i = icmp ult i64 %i.ua, %i.ks, !nosanitize !9
  br i1 %.not459.i, label %bb.dk, label %bb.dl, !prof !31, !nosanitize !9

bb.dk:                                            ; preds = %.lr.ph540.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @321, i64 %i.ks, i64 %i.ua) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dl:                                            ; preds = %.lr.ph540.i
  %i.ub = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv608.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.ub, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !12
  %foldExtExtBinop135 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i ; 2 uses
  %i.uc = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %foldExtExtBinop137 = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i
  %i.ud = extractelement <2 x float> %foldExtExtBinop137, i64 1 ; 2 uses
  %i.ue = insertelement <2 x float> poison, float %i.uc, i64 0
  %i.uf = shufflevector <2 x float> %i.ue, <2 x float> %foldExtExtBinop135, <2 x i32> <i32 0, i32 2>
  %i.ug = fmul <2 x float> %i.tx, %i.uf
  %i.uh = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.ui = insertelement <2 x float> %i.uh, float %i.uc, i64 1
  %i.uj = fmul <2 x float> %i.tu, %i.ui
  %i.uk = fsub <2 x float> %i.ug, %i.uj
  %i.ul = fmul float %i.tw, %i.ud
  %foldExtExtBinop139 = fmul <2 x float> %i.tv, %foldExtExtBinop135
  %i.um = extractelement <2 x float> %foldExtExtBinop139, i64 0
  %i.un = fsub float %i.ul, %i.um
  %i.uo = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.uk ; 2 uses
  %shift141 = shufflevector <2 x float> %i.uo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop142 = fadd <2 x float> %i.uo, %shift141
  %i.up = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.uq = fmul float %.sroa.10.0.copyload.i, %i.un
  %i.ur = fadd float %i.uq, %i.up                 ; 4 uses
  %i.us = fcmp olt float %i.ur, 0.000000e+00
  %i.ut = fneg float %i.ur
  %i.uu = select i1 %i.us, float %i.ut, float %i.ur ; 2 uses
  %i.uv = fmul float %i.uu, f0x3F733333
  %i.uw = fcmp ult float %i.uv, %.5307537.i       ; 3 uses
  %.1314.i = select i1 %i.uw, float %.0313536.i, float %i.ur ; 2 uses
  %.6308.i = select i1 %i.uw, float %.5307537.i, float %i.uu
  %i.ux = trunc nuw nsw i64 %indvars.iv608.i to i32
  %.6.i = select i1 %i.uw, i32 %.5538.i, i32 %i.ux ; 4 uses
  %indvars.iv.next609.i = add nuw nsw i64 %indvars.iv608.i, 1 ; 2 uses
  %exitcond613.not.i = icmp eq i64 %indvars.iv.next609.i, %wide.trip.count612.i
  br i1 %exitcond613.not.i, label %._crit_edge541.i, label %.lr.ph540.i, !llvm.loop !144

bb.dm:                                            ; preds = %._crit_edge541.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tc, i64 48
  %i.uz = add i64 %i.te, 48, !nosanitize !9       ; 2 uses
  %i.va = icmp ne i64 %i.uz, 0
  %i.vb = icmp ult ptr %i.tc, inttoptr (i64 -48 to ptr)
  %i.vc = and i1 %i.vb, %i.va, !nosanitize !9
  br i1 %i.vc, label %bb.do, label %bb.dn, !prof !10, !nosanitize !9

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @322, i64 %i.te, i64 %i.uz) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.do:                                            ; preds = %bb.dm
  %i.vd = sext i32 %.6.i to i64                   ; 2 uses
  %i.ve = getelementptr inbounds [24 x i8], ptr %7, i64 %i.vd ; 2 uses
  %i.vf = mul nsw i64 %i.vd, 24
  %i.vg = add i64 %i.vf, %i.ks, !nosanitize !9    ; 3 uses
  %i.vh = icmp ne i64 %i.vg, 0, !nosanitize !9
  %i.vi = icmp uge i64 %i.vg, %i.ks, !nosanitize !9
  %i.vj = icmp slt i32 %.6.i, 0
  %i.vk = xor i1 %i.vj, %i.vi
  %i.vl = and i1 %i.vh, %i.vk, !nosanitize !9
  br i1 %i.vl, label %bb.dq, label %bb.dp, !prof !10, !nosanitize !9

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @323, i64 %i.ks, i64 %i.vg) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.uy, ptr noundef nonnull align 8 dereferenceable(24) %i.ve, i64 24, i1 false), !tbaa.struct !80
  store i32 3, ptr %i.qn, align 8, !tbaa !19
  %i.vm = add nsw i32 %i.ko, -3                   ; 2 uses
  %i.vn = zext nneg i32 %i.vm to i64              ; 2 uses
  %i.vo = mul nuw nsw i64 %i.vn, 24
  %i.vp = add i64 %i.vo, %i.ks, !nosanitize !9    ; 2 uses
  %.not344.i = icmp ult i64 %i.vp, %i.ks, !nosanitize !9
  br i1 %.not344.i, label %bb.dr, label %bb.ds, !prof !31, !nosanitize !9

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @324, i64 %i.ks, i64 %i.vp) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ds:                                            ; preds = %bb.dq
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.vn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ve, ptr noundef nonnull align 8 dereferenceable(24) %i.vq, i64 24, i1 false), !tbaa.struct !80
  %i.vr = load ptr, ptr %i.px, align 8, !tbaa !20 ; 7 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 48 ; 2 uses
  %i.vt = ptrtoint ptr %i.vr to i64, !nosanitize !9 ; 4 uses
  %i.vu = add i64 %i.vt, 48, !nosanitize !9       ; 2 uses
  %i.vv = icmp ne ptr %i.vr, null, !nosanitize !9
  %i.vw = icmp ne i64 %i.vu, 0
  %i.vx = and i1 %i.vv, %i.vw
  %i.vy = icmp ult ptr %i.vr, inttoptr (i64 -48 to ptr)
end_hunk_0
