Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/convex_manifold?download=true
inline.NumInlined: 430
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3BuildFaceAContact:bb.a
bb.bk:                                            ; preds = %bb.bm
  %i.kt = call float @b3GetLengthUnitsPerMeter() #11
  %i.ku = fmul float %i.kt, 5.000000e-03
  %i.kv = fmul float %i.ku, 4.000000e+00
  %i.kw = fcmp ult float %i.lt, %i.kv             ; 2 uses
  br i1 %i.kw, label %bb.bq, label %bb.bn

.split351.split:                                  ; preds = %.split351.split.preheader, %bb.bm
  %indvars.iv = phi i64 [ 0, %.split351.split.preheader ], [ %indvars.iv.next, %bb.bm ] ; 5 uses
  %.0110352 = phi float [ f0x7F7FFFFF, %.split351.split.preheader ], [ %i.lt, %bb.bm ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [20 x i8], ptr %.0, i64 %indvars.iv ; 4 uses
  %i.ky = mul nuw nsw i64 %indvars.iv, 20
  %i.kz = add i64 %i.ky, %i.kn, !nosanitize !9    ; 2 uses
  %.not378 = icmp ult i64 %i.kz, %i.kn, !nosanitize !9
  br i1 %.not378, label %.split355.us, label %bb.bl, !prof !32, !nosanitize !9

.split355.us:                                     ; preds = %.split351.split
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @294, i64 %i.kn, i64 %i.kz) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bl:                                            ; preds = %.split351.split
  %i.la = mul nuw nsw i64 %indvars.iv, 24
  %i.lb = add i64 %i.la, %i.ks, !nosanitize !9    ; 2 uses
  %.not139 = icmp ult i64 %i.lb, %i.ks, !nosanitize !9
  br i1 %.not139, label %.split358.us, label %bb.bm, !prof !32, !nosanitize !9

.split358.us:                                     ; preds = %bb.bl
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @295, i64 %i.ks, i64 %i.lb) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, i8 0, i64 24, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 12 ; 3 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !50
  %i.lf = fmul float %i.le, 5.000000e-01          ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.kx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4
  %i.lg = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %.sroa.09.0.copyload, %i.lh
  %i.lj = fsub <2 x float> %.sroa.03.0.copyload, %i.li
  %i.lk = fmul float %.sroa.9.8.vec.extract, %i.lf
  %i.ll = fsub float %.sroa.24.0.copyload, %i.lk
  store <2 x float> %i.lj, ptr %i.lc, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store float %i.ll, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  %i.ln = load float, ptr %i.ld, align 4, !tbaa !50
  store float %i.ln, ptr %i.lm, align 4, !tbaa !23
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !24
  store i32 %i.lq, ptr %i.lo, align 8, !tbaa !24
  %i.lr = load float, ptr %i.ld, align 4, !tbaa !50 ; 2 uses
  %i.ls = fcmp olt float %.0110352, %i.lr
  %i.lt = select i1 %i.ls, float %.0110352, float %i.lr ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bk, label %.split351.split, !llvm.loop !137

bb.bn:                                            ; preds = %bb.bk
  %i.lu = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.lv = and i64 %i.lu, 3, !nosanitize !9
  %i.lw = icmp eq i64 %i.lv, 0, !nosanitize !9
  br i1 %i.lw, label %bb.bp, label %bb.bo, !prof !10, !nosanitize !9

bb.bo:                                            ; preds = %bb.bn
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @296, i64 %i.lu) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bp:                                            ; preds = %bb.bn
  store i32 0, ptr %4, align 4
  %.sroa_idx1 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa_idx1, align 4
  br label %bb.ei

bb.bq:                                            ; preds = %bb.bk
  %i.lx = icmp ult i32 %i.kh, 5
  br i1 %i.lx, label %.lr.ph552.split.i, label %bb.cc

.lr.ph552.split.i:                                ; preds = %bb.bq
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 3 uses
  %i.ma = icmp ne ptr %i.lz, null, !nosanitize !9
  %i.mb = ptrtoint ptr %i.lz to i64, !nosanitize !9 ; 2 uses
  %i.mc = and i64 %i.mb, 3, !nosanitize !9
  %i.md = icmp eq i64 %i.mc, 0, !nosanitize !9
  %i.me = and i1 %i.ma, %i.md
  br i1 %i.me, label %.lr.ph552.split.split.i.1, label %bb.bs, !prof !10, !nosanitize !9

bb.br:                                            ; preds = %.lr.ph552.split.split.i.3, %.lr.ph552.split.split.i.2, %.lr.ph552.split.split.i.1
  %.lcssa147 = phi i64 [ %i.nl, %.lr.ph552.split.split.i.3 ], [ %i.mh, %.lr.ph552.split.split.i.1 ], [ %i.mw, %.lr.ph552.split.split.i.2 ]
  %.lcssa = phi i64 [ %i.nm, %.lr.ph552.split.split.i.3 ], [ %i.mi, %.lr.ph552.split.split.i.1 ], [ %i.mx, %.lr.ph552.split.split.i.2 ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @305, i64 %.lcssa147, i64 %.lcssa) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bs:                                            ; preds = %bb.bz, %bb.bw, %bb.bu, %.lr.ph552.split.i
  %.lcssa151 = phi i64 [ %i.mb, %.lr.ph552.split.i ], [ %i.mo, %bb.bu ], [ %i.nd, %bb.bw ], [ %i.ns, %bb.bz ]
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @306, i64 %.lcssa151) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.bt:                                            ; preds = %bb.ca, %bb.bx, %bb.bv
  %.lcssa154 = phi i64 [ %i.nw, %bb.ca ], [ %i.ms, %bb.bv ], [ %i.nh, %bb.bx ]
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @307, i64 %i.ks, i64 %.lcssa154) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph552.split.split.i.1:                        ; preds = %.lr.ph552.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.lz, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !78
  %i.mf = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24 ; 2 uses
  %i.mh = ptrtoint ptr %i.mf to i64, !nosanitize !9 ; 2 uses
  %i.mi = add i64 %i.mh, 24, !nosanitize !9       ; 2 uses
  %i.mj = icmp ne ptr %i.mf, null, !nosanitize !9 ; 2 uses
  %i.mk = icmp ne i64 %i.mi, 0
  %i.ml = icmp ult ptr %i.mf, inttoptr (i64 -24 to ptr)
  %i.mm = and i1 %i.mk, %i.ml
  %i.mn = and i1 %i.mm, %i.mj
  br i1 %i.mn, label %bb.bu, label %bb.br, !prof !10, !nosanitize !9

bb.bu:                                            ; preds = %.lr.ph552.split.split.i.1
  %i.mo = ptrtoint ptr %i.mg to i64, !nosanitize !9 ; 2 uses
  %i.mp = and i64 %i.mo, 3, !nosanitize !9
  %i.mq = icmp eq i64 %i.mp, 0, !nosanitize !9
  %i.mr = and i1 %i.mj, %i.mq
  br i1 %i.mr, label %bb.bv, label %bb.bs, !prof !10, !nosanitize !9

bb.bv:                                            ; preds = %bb.bu
  %i.ms = add i64 %i.ks, 24, !nosanitize !9
  %.not461.i.1 = icmp ugt ptr %7, inttoptr (i64 -25 to ptr)
  br i1 %.not461.i.1, label %bb.bt, label %.lr.ph552.split.split.i.2, !prof !32, !nosanitize !9

.lr.ph552.split.split.i.2:                        ; preds = %bb.bv
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.mg, ptr noundef nonnull align 8 dereferenceable(24) %i.mt, i64 24, i1 false), !tbaa.struct !78
  %i.mu = load ptr, ptr %i.ly, align 8, !tbaa !20 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 48 ; 2 uses
  %i.mw = ptrtoint ptr %i.mu to i64, !nosanitize !9 ; 2 uses
  %i.mx = add i64 %i.mw, 48, !nosanitize !9       ; 2 uses
  %i.my = icmp ne ptr %i.mu, null, !nosanitize !9 ; 2 uses
  %i.mz = icmp ne i64 %i.mx, 0
  %i.na = icmp ult ptr %i.mu, inttoptr (i64 -48 to ptr)
  %i.nb = and i1 %i.mz, %i.na
  %i.nc = and i1 %i.nb, %i.my
  br i1 %i.nc, label %bb.bw, label %bb.br, !prof !10, !nosanitize !9

bb.bw:                                            ; preds = %.lr.ph552.split.split.i.2
  %i.nd = ptrtoint ptr %i.mv to i64, !nosanitize !9 ; 2 uses
  %i.ne = and i64 %i.nd, 3, !nosanitize !9
  %i.nf = icmp eq i64 %i.ne, 0, !nosanitize !9
  %i.ng = and i1 %i.my, %i.nf
  br i1 %i.ng, label %bb.bx, label %bb.bs, !prof !10, !nosanitize !9

bb.bx:                                            ; preds = %bb.bw
  %i.nh = add i64 %i.ks, 48, !nosanitize !9
  %.not461.i.2 = icmp ugt ptr %7, inttoptr (i64 -49 to ptr)
  br i1 %.not461.i.2, label %bb.bt, label %bb.by, !prof !32, !nosanitize !9

bb.by:                                            ; preds = %bb.bx
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.mv, ptr noundef nonnull align 16 dereferenceable(24) %i.ni, i64 24, i1 false), !tbaa.struct !78
  %exitcond621.not.i.2 = icmp eq i32 %i.kh, 3
  br i1 %exitcond621.not.i.2, label %._crit_edge553.i, label %.lr.ph552.split.split.i.3

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
  br i1 %.not461.i.3, label %bb.bt, label %bb.cb, !prof !32, !nosanitize !9

bb.cb:                                            ; preds = %bb.ca
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %i.nx, i64 24, i1 false), !tbaa.struct !78
  br label %._crit_edge553.i

._crit_edge553.i:                                 ; preds = %bb.cb, %bb.by
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ko, ptr %i.ny, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

bb.cc:                                            ; preds = %bb.bq
  %.sroa.0244.0.copyload.i = load <2 x float>, ptr %0, align 8, !tbaa !12 ; 8 uses
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx15, align 8, !tbaa !12 ; 7 uses
  %i.nz = call float @b3GetLengthUnitsPerMeter() #11
  %i.oa = fmul float %i.nz, 5.000000e-03
  %i.ob = fmul float %i.oa, 4.000000e+00          ; 3 uses
  %i.oc = fmul float %i.ob, %i.ob                 ; 3 uses
  %i.od = shufflevector <2 x float> %.sroa.0244.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %.sroa.036.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 0 ; 5 uses
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
  br i1 %.not554.i, label %bb.ck, label %bb.cl, !prof !32, !nosanitize !9

bb.ck:                                            ; preds = %bb.cj
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @308, i64 %i.ks, i64 %i.pk) #10, !nosanitize !9
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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.cj, !llvm.loop !138

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
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @309, i64 %i.qa) #10, !nosanitize !9
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
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @310, i64 %i.ks, i64 %i.qh) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.py, ptr noundef nonnull align 8 dereferenceable(24) %i.qf, i64 24, i1 false), !tbaa.struct !78
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 1, ptr %i.qn, align 8, !tbaa !19
  %i.qo = add nsw i32 %i.ko, -1
  %i.qp = zext nneg i32 %i.qo to i64              ; 3 uses
  %i.qq = mul nuw nsw i64 %i.qp, 24
  %i.qr = add i64 %i.qq, %i.ks, !nosanitize !9    ; 2 uses
  %.not.i167 = icmp ult i64 %i.qr, %i.ks, !nosanitize !9
  br i1 %.not.i167, label %bb.cu, label %bb.cv, !prof !32, !nosanitize !9

bb.cu:                                            ; preds = %bb.ct
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @311, i64 %i.ks, i64 %i.qr) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cv:                                            ; preds = %bb.ct
  %i.qs = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.qp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qf, ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i64 24, i1 false), !tbaa.struct !78
  %i.qt = load ptr, ptr %i.px, align 8, !tbaa !20 ; 6 uses
  %i.qu = icmp ne ptr %i.qt, null, !nosanitize !9
  %i.qv = ptrtoint ptr %i.qt to i64, !nosanitize !9 ; 4 uses
  %i.qw = and i64 %i.qv, 3, !nosanitize !9
  %i.qx = icmp eq i64 %i.qw, 0, !nosanitize !9
  %i.qy = and i1 %i.qu, %i.qx, !nosanitize !9
  br i1 %i.qy, label %.lr.ph531.i, label %bb.cw, !prof !10, !nosanitize !9

bb.cw:                                            ; preds = %bb.cv
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @312, i64 %i.qv) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph531.i:                                      ; preds = %bb.cv
  %.sroa.0193.0.copyload.i = load <2 x float>, ptr %i.qt, align 4, !tbaa !12 ; 6 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !12 ; 5 uses
  %8 = extractelement <2 x float> %.sroa.0244.0.copyload.i, i64 1 ; 3 uses
  %9 = shufflevector <2 x float> %.sroa.0193.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %10 = insertelement <2 x float> %9, float %.sroa.8.0.copyload.i, i64 0
  %11 = insertelement <2 x float> %i.od, float %.sroa.10.0.copyload.i, i64 0 ; 2 uses
  br label %bb.cx

._crit_edge532.i:                                 ; preds = %bb.cz
  %i.qz = fcmp olt float %.4306.i, %i.oc
  br i1 %i.qz, label %b3ReduceManifoldPoints.exit, label %bb.da

bb.cx:                                            ; preds = %bb.cz, %.lr.ph531.i
  %indvars.iv602.i = phi i64 [ 0, %.lr.ph531.i ], [ %indvars.iv.next603.i, %bb.cz ] ; 4 uses
  %.3529.i = phi i32 [ -1, %.lr.ph531.i ], [ %.4.i, %bb.cz ]
  %.3305528.i = phi float [ 0.000000e+00, %.lr.ph531.i ], [ %.4306.i, %bb.cz ] ; 2 uses
  %i.ra = mul nuw nsw i64 %indvars.iv602.i, 24
  %i.rb = add i64 %i.ra, %i.ks, !nosanitize !9    ; 2 uses
  %.not460.i = icmp ult i64 %i.rb, %i.ks, !nosanitize !9
  br i1 %.not460.i, label %bb.cy, label %bb.cz, !prof !32, !nosanitize !9

bb.cy:                                            ; preds = %bb.cx
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.ks, i64 %i.rb) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.cz:                                            ; preds = %bb.cx
  %i.rc = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv602.i ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.sroa.4187.0.copyload.i = load float, ptr %.sroa.4187.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.0186.0.copyload.i = load <2 x float>, ptr %i.rc, align 8, !tbaa !12 ; 2 uses
  %foldExtExtBinop123 = fsub <2 x float> %.sroa.0186.0.copyload.i, %.sroa.0193.0.copyload.i
  %12 = extractelement <2 x float> %foldExtExtBinop123, i64 1 ; 2 uses
  %13 = fmul float %8, %12
  %14 = shufflevector <2 x float> %.sroa.0186.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %15 = insertelement <2 x float> %14, float %.sroa.4187.0.copyload.i, i64 0
  %16 = fsub <2 x float> %15, %10                 ; 2 uses
  %17 = fmul <2 x float> %11, %16                 ; 2 uses
  %18 = extractelement <2 x float> %17, i64 1
  %19 = fadd float %18, %13
  %20 = extractelement <2 x float> %17, i64 0
  %21 = fadd float %20, %19                       ; 2 uses
  %22 = insertelement <2 x float> poison, float %21, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %11, %23
  %25 = fsub <2 x float> %16, %24                 ; 2 uses
  %26 = fmul <2 x float> %25, %25                 ; 2 uses
  %27 = fmul float %8, %21
  %28 = fsub float %12, %27                       ; 2 uses
  %29 = fmul float %28, %28
  %30 = extractelement <2 x float> %26, i64 1
  %31 = fadd float %30, %29
  %32 = extractelement <2 x float> %26, i64 0
  %33 = fadd float %32, %31
  %34 = load float, ptr %i.rd, align 4, !tbaa !23 ; 2 uses
  %35 = fneg float %34
  %36 = fcmp ogt float %34, 0.000000e+00
  %37 = select i1 %36, float 0.000000e+00, float %35 ; 2 uses
  %38 = fmul float %37, 4.000000e+00
  %39 = fmul float %37, %38
  %40 = fadd float %39, %33                       ; 2 uses
  %i.re = fmul float %40, f0x3F733333
  %i.rf = fcmp ogt float %i.re, %.3305528.i       ; 2 uses
  %.4306.i = select i1 %i.rf, float %40, float %.3305528.i ; 2 uses
  %i.rg = trunc nuw nsw i64 %indvars.iv602.i to i32
  %.4.i = select i1 %i.rf, i32 %i.rg, i32 %.3529.i ; 3 uses
  %indvars.iv.next603.i = add nuw nsw i64 %indvars.iv602.i, 1 ; 2 uses
  %exitcond606.not.i = icmp eq i64 %indvars.iv.next603.i, %i.qp
  br i1 %exitcond606.not.i, label %._crit_edge532.i, label %bb.cx, !llvm.loop !139

bb.da:                                            ; preds = %._crit_edge532.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.ri = add i64 %i.qv, 24, !nosanitize !9       ; 2 uses
  %i.rj = icmp ne i64 %i.ri, 0
  %i.rk = icmp ult ptr %i.qt, inttoptr (i64 -24 to ptr)
  %i.rl = and i1 %i.rk, %i.rj, !nosanitize !9
  br i1 %i.rl, label %bb.dc, label %bb.db, !prof !10, !nosanitize !9

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @314, i64 %i.qv, i64 %i.ri) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dc:                                            ; preds = %bb.da
  %i.rm = sext i32 %.4.i to i64                   ; 2 uses
  %i.rn = getelementptr inbounds [24 x i8], ptr %7, i64 %i.rm ; 2 uses
  %i.ro = mul nsw i64 %i.rm, 24
  %i.rp = add i64 %i.ro, %i.ks, !nosanitize !9    ; 3 uses
  %i.rq = icmp ne i64 %i.rp, 0, !nosanitize !9
  %i.rr = icmp uge i64 %i.rp, %i.ks, !nosanitize !9
  %i.rs = icmp slt i32 %.4.i, 0
  %i.rt = xor i1 %i.rs, %i.rr
  %i.ru = and i1 %i.rq, %i.rt, !nosanitize !9
  br i1 %i.ru, label %bb.de, label %bb.dd, !prof !10, !nosanitize !9

bb.dd:                                            ; preds = %bb.dc
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @315, i64 %i.ks, i64 %i.rp) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.de:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.rh, ptr noundef nonnull align 8 dereferenceable(24) %i.rn, i64 24, i1 false), !tbaa.struct !78
  store i32 2, ptr %i.qn, align 8, !tbaa !19
  %i.rv = add nsw i32 %i.ko, -2
  %i.rw = zext nneg i32 %i.rv to i64              ; 3 uses
  %i.rx = mul nuw nsw i64 %i.rw, 24
  %i.ry = add i64 %i.rx, %i.ks, !nosanitize !9    ; 2 uses
  %.not343.i = icmp ult i64 %i.ry, %i.ks, !nosanitize !9
  br i1 %.not343.i, label %bb.df, label %bb.dg, !prof !32, !nosanitize !9

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @316, i64 %i.ks, i64 %i.ry) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dg:                                            ; preds = %bb.de
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rn, ptr noundef nonnull align 8 dereferenceable(24) %i.rz, i64 24, i1 false), !tbaa.struct !78
  %i.sa = load ptr, ptr %i.px, align 8, !tbaa !20 ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24 ; 2 uses
  %i.sc = ptrtoint ptr %i.sa to i64, !nosanitize !9 ; 4 uses
  %i.sd = add i64 %i.sc, 24, !nosanitize !9       ; 2 uses
  %i.se = icmp ne ptr %i.sa, null, !nosanitize !9
  %i.sf = icmp ne i64 %i.sd, 0
  %i.sg = and i1 %i.se, %i.sf
  %i.sh = icmp ult ptr %i.sa, inttoptr (i64 -24 to ptr)
  %i.si = and i1 %i.sh, %i.sg, !nosanitize !9
  br i1 %i.si, label %bb.di, label %bb.dh, !prof !10, !nosanitize !9

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @317, i64 %i.sc, i64 %i.sd) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.di:                                            ; preds = %bb.dg
  %i.sj = ptrtoint ptr %i.sb to i64, !nosanitize !9 ; 2 uses
  %i.sk = and i64 %i.sj, 3, !nosanitize !9
  %i.sl = icmp eq i64 %i.sk, 0, !nosanitize !9
  br i1 %i.sl, label %.lr.ph540.preheader.i, label %bb.dj, !prof !10, !nosanitize !9

bb.dj:                                            ; preds = %bb.di
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @318, i64 %i.sj) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph540.preheader.i:                            ; preds = %bb.di
  %.sroa.0150.0.copyload.i = load <2 x float>, ptr %i.sb, align 4, !tbaa !12 ; 3 uses
  %.sroa.6153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %.sroa.6153.0.copyload.i = load float, ptr %.sroa.6153.0..sroa_idx.i, align 4, !tbaa !12 ; 3 uses
  %i.sm = fsub <2 x float> %.sroa.0150.0.copyload.i, %.sroa.0193.0.copyload.i ; 5 uses
  %i.sn = shufflevector <2 x float> %i.sm, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.so = fsub float %.sroa.6153.0.copyload.i, %.sroa.8.0.copyload.i ; 3 uses
  %i.sp = extractelement <2 x float> %i.sm, i64 0
  %i.sq = extractelement <2 x float> %i.sm, i64 1
  br label %.lr.ph540.i

._crit_edge541.i:                                 ; preds = %bb.dl
  %i.sr = icmp eq i32 %.6.i, -1
  br i1 %i.sr, label %b3ReduceManifoldPoints.exit, label %bb.dm

.lr.ph540.i:                                      ; preds = %bb.dl, %.lr.ph540.preheader.i
  %indvars.iv607.i = phi i64 [ 0, %.lr.ph540.preheader.i ], [ %indvars.iv.next608.i, %bb.dl ] ; 4 uses
  %.5538.i = phi i32 [ -1, %.lr.ph540.preheader.i ], [ %.6.i, %bb.dl ]
  %.5307537.i = phi float [ %i.oc, %.lr.ph540.preheader.i ], [ %.6308.i, %bb.dl ] ; 2 uses
  %.0313536.i = phi float [ 0.000000e+00, %.lr.ph540.preheader.i ], [ %.1314.i, %bb.dl ]
  %i.ss = mul nuw nsw i64 %indvars.iv607.i, 24
  %i.st = add i64 %i.ss, %i.ks, !nosanitize !9    ; 2 uses
  %.not459.i = icmp ult i64 %i.st, %i.ks, !nosanitize !9
  br i1 %.not459.i, label %bb.dk, label %bb.dl, !prof !32, !nosanitize !9

bb.dk:                                            ; preds = %.lr.ph540.i
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @319, i64 %i.ks, i64 %i.st) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dl:                                            ; preds = %.lr.ph540.i
  %i.su = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv607.i ; 2 uses
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.su, align 8, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !12
  %i.sv = fsub float %.sroa.4.0.copyload.i, %.sroa.8.0.copyload.i ; 2 uses
  %i.sw = fmul float %i.sq, %i.sv
  %i.sx = fmul float %i.sp, %i.sv
  %i.sy = fsub <2 x float> %.sroa.0134.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.sz = extractelement <2 x float> %i.sy, i64 1
  %i.ta = fmul float %i.so, %i.sz
  %i.tb = fsub float %i.sw, %i.ta
  %i.tc = extractelement <2 x float> %i.sy, i64 0
  %i.td = fmul float %i.so, %i.tc
  %i.te = fsub float %i.td, %i.sx
  %i.tf = fmul <2 x float> %i.sn, %i.sy           ; 2 uses
  %shift135 = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop136 = fsub <2 x float> %shift135, %i.tf
  %i.tg = extractelement <2 x float> %foldExtExtBinop136, i64 0
  %i.th = fmul float %.sroa.036.0.vec.extract.i.i, %i.tb
  %i.ti = fmul float %8, %i.te
  %i.tj = fadd float %i.th, %i.ti
  %i.tk = fmul float %.sroa.10.0.copyload.i, %i.tg
  %i.tl = fadd float %i.tk, %i.tj                 ; 4 uses
  %i.tm = fcmp olt float %i.tl, 0.000000e+00
  %i.tn = fneg float %i.tl
  %i.to = select i1 %i.tm, float %i.tn, float %i.tl ; 2 uses
  %i.tp = fmul float %i.to, f0x3F733333
  %i.tq = fcmp ult float %i.tp, %.5307537.i       ; 3 uses
  %.1314.i = select i1 %i.tq, float %.0313536.i, float %i.tl ; 2 uses
  %.6308.i = select i1 %i.tq, float %.5307537.i, float %i.to
  %i.tr = trunc nuw nsw i64 %indvars.iv607.i to i32
  %.6.i = select i1 %i.tq, i32 %.5538.i, i32 %i.tr ; 4 uses
  %indvars.iv.next608.i = add nuw nsw i64 %indvars.iv607.i, 1 ; 2 uses
  %exitcond611.not.i = icmp eq i64 %indvars.iv.next608.i, %i.rw
  br i1 %exitcond611.not.i, label %._crit_edge541.i, label %.lr.ph540.i, !llvm.loop !140

bb.dm:                                            ; preds = %._crit_edge541.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sa, i64 48
  %i.tt = add i64 %i.sc, 48, !nosanitize !9       ; 2 uses
  %i.tu = icmp ne i64 %i.tt, 0
  %i.tv = icmp ult ptr %i.sa, inttoptr (i64 -48 to ptr)
  %i.tw = and i1 %i.tv, %i.tu, !nosanitize !9
  br i1 %i.tw, label %bb.do, label %bb.dn, !prof !10, !nosanitize !9

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @320, i64 %i.sc, i64 %i.tt) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.do:                                            ; preds = %bb.dm
  %i.tx = sext i32 %.6.i to i64                   ; 2 uses
  %i.ty = getelementptr inbounds [24 x i8], ptr %7, i64 %i.tx ; 2 uses
  %i.tz = mul nsw i64 %i.tx, 24
  %i.ua = add i64 %i.tz, %i.ks, !nosanitize !9    ; 3 uses
  %i.ub = icmp ne i64 %i.ua, 0, !nosanitize !9
  %i.uc = icmp uge i64 %i.ua, %i.ks, !nosanitize !9
  %i.ud = icmp slt i32 %.6.i, 0
  %i.ue = xor i1 %i.ud, %i.uc
  %i.uf = and i1 %i.ub, %i.ue, !nosanitize !9
  br i1 %i.uf, label %bb.dq, label %bb.dp, !prof !10, !nosanitize !9

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @321, i64 %i.ks, i64 %i.ua) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ts, ptr noundef nonnull align 8 dereferenceable(24) %i.ty, i64 24, i1 false), !tbaa.struct !78
  store i32 3, ptr %i.qn, align 8, !tbaa !19
  %i.ug = add nsw i32 %i.ko, -3
  %i.uh = zext nneg i32 %i.ug to i64              ; 3 uses
  %i.ui = mul nuw nsw i64 %i.uh, 24
  %i.uj = add i64 %i.ui, %i.ks, !nosanitize !9    ; 2 uses
  %.not344.i = icmp ult i64 %i.uj, %i.ks, !nosanitize !9
  br i1 %.not344.i, label %bb.dr, label %bb.ds, !prof !32, !nosanitize !9

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @322, i64 %i.ks, i64 %i.uj) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.ds:                                            ; preds = %bb.dq
  %i.uk = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %i.uh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ty, ptr noundef nonnull align 8 dereferenceable(24) %i.uk, i64 24, i1 false), !tbaa.struct !78
  %i.ul = load ptr, ptr %i.px, align 8, !tbaa !20 ; 7 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 48 ; 2 uses
  %i.un = ptrtoint ptr %i.ul to i64, !nosanitize !9 ; 4 uses
  %i.uo = add i64 %i.un, 48, !nosanitize !9       ; 2 uses
  %i.up = icmp ne ptr %i.ul, null, !nosanitize !9
  %i.uq = icmp ne i64 %i.uo, 0
  %i.ur = and i1 %i.up, %i.uq
  %i.us = icmp ult ptr %i.ul, inttoptr (i64 -48 to ptr)
  %i.ut = and i1 %i.us, %i.ur, !nosanitize !9
  br i1 %i.ut, label %bb.du, label %bb.dt, !prof !10, !nosanitize !9

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @323, i64 %i.un, i64 %i.uo) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.du:                                            ; preds = %bb.ds
  %i.uu = ptrtoint ptr %i.um to i64, !nosanitize !9 ; 2 uses
  %i.uv = and i64 %i.uu, 3, !nosanitize !9
  %i.uw = icmp eq i64 %i.uv, 0, !nosanitize !9
  br i1 %i.uw, label %.lr.ph548.i, label %bb.dv, !prof !10, !nosanitize !9

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @324, i64 %i.uu) #10, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph548.i:                                      ; preds = %bb.du
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ul, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !12 ; 3 uses
  %i.ux = fcmp olt float %.1314.i, 0.000000e+00
  %i.uy = select i1 %i.ux, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.um, align 4, !tbaa !12 ; 3 uses
  %i.uz = fsub <2 x float> %.sroa.0102.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.va = shufflevector <2 x float> %i.uz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vb = fsub float %.sroa.6105.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.vc = fsub <2 x float> %.sroa.0193.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ve = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i
  %i.vf = insertelement <2 x float> poison, float %i.uy, i64 0
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vh = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vj = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vk = insertelement <2 x float> poison, float %i.so, i64 0
  %i.vl = insertelement <2 x float> poison, float %i.ve, i64 1
  br label %bb.dw

._crit_edge549.i:                                 ; preds = %bb.dy
  %.not345.i = icmp eq i32 %.8.i, -1
  br i1 %.not345.i, label %b3ReduceManifoldPoints.exit, label %bb.dz

bb.dw:                                            ; preds = %bb.dy, %.lr.ph548.i
  %indvars.iv612.i = phi i64 [ 0, %.lr.ph548.i ], [ %indvars.iv.next613.i, %bb.dy ] ; 4 uses
  %.7546.i = phi i32 [ -1, %.lr.ph548.i ], [ %.8.i, %bb.dy ]
  %.7309545.i = phi float [ %i.oc, %.lr.ph548.i ], [ %.8310.i, %bb.dy ] ; 2 uses
  %i.vm = mul nuw nsw i64 %indvars.iv612.i, 24
  %i.vn = add i64 %i.vm, %i.ks, !nosanitize !9    ; 2 uses
  %.not458.i = icmp ult i64 %i.vn, %i.ks, !nosanitize !9
  br i1 %.not458.i, label %bb.dx, label %bb.dy, !prof !32, !nosanitize !9

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @325, i64 %i.ks, i64 %i.vn) #10, !nosanitize !9
  unreachable, !nosanitize !9

bb.dy:                                            ; preds = %bb.dw
  %i.vo = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv612.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.vo, align 8, !tbaa !12 ; 3 uses
  %.sroa.6.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i168, align 8, !tbaa !12 ; 3 uses
  %i.vp = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i
  %i.vq = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.vr = fmul <2 x float> %i.sn, %i.vq           ; 2 uses
  %shift138 = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop139 = fsub <2 x float> %i.vr, %shift138
  %i.vs = extractelement <2 x float> %foldExtExtBinop139, i64 0
  %i.vt = insertelement <2 x float> %i.vk, float %i.vp, i64 1 ; 2 uses
  %i.vu = shufflevector <2 x float> %i.vq, <2 x float> %i.sm, <2 x i32> <i32 1, i32 2>
  %i.vv = fmul <2 x float> %i.vt, %i.vu
  %i.vw = shufflevector <2 x float> %i.vq, <2 x float> %i.sm, <2 x i32> <i32 3, i32 0>
  %i.vx = shufflevector <2 x float> %i.vt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vy = fmul <2 x float> %i.vw, %i.vx
  %i.vz = fsub <2 x float> %i.vv, %i.vy
  %i.wa = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.vz ; 2 uses
  %shift141 = shufflevector <2 x float> %i.wa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop142 = fadd <2 x float> %i.wa, %shift141
  %i.wb = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.wc = fmul float %.sroa.10.0.copyload.i, %i.vs
  %i.wd = fadd float %i.wc, %i.wb
  %i.we = fmul float %i.uy, %i.wd                 ; 2 uses
  %i.wf = fsub float %.sroa.6.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.wg = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.wh = fmul <2 x float> %i.va, %i.wg           ; 2 uses
  %i.wi = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i
  %i.wj = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.wk = fmul <2 x float> %i.vd, %i.wj           ; 2 uses
  %i.wl = insertelement <2 x float> %i.vj, float %i.wi, i64 1 ; 2 uses
  %i.wm = shufflevector <2 x float> %i.wg, <2 x float> %i.vc, <2 x i32> <i32 0, i32 3>
  %i.wn = fmul <2 x float> %i.wl, %i.wm
  %i.wo = shufflevector <2 x float> %i.wg, <2 x float> %i.vc, <2 x i32> <i32 1, i32 2>
  %i.wp = fmul <2 x float> %i.wl, %i.wo
  %i.wq = shufflevector <2 x float> %i.uz, <2 x float> %i.wj, <2 x i32> <i32 0, i32 3>
  %i.wr = insertelement <2 x float> %i.vl, float %i.wf, i64 0 ; 2 uses
  %i.ws = fmul <2 x float> %i.wq, %i.wr
  %i.wt = fsub <2 x float> %i.ws, %i.wn
  %i.wu = shufflevector <2 x float> %i.uz, <2 x float> %i.wj, <2 x i32> <i32 1, i32 2>
  %i.wv = fmul <2 x float> %i.wu, %i.wr
  %i.ww = fsub <2 x float> %i.wp, %i.wv
  %i.wx = shufflevector <2 x float> %i.wh, <2 x float> %i.wk, <2 x i32> <i32 0, i32 2>
  %i.wy = shufflevector <2 x float> %i.wh, <2 x float> %i.wk, <2 x i32> <i32 1, i32 3>
  %i.wz = fsub <2 x float> %i.wx, %i.wy
  %i.xa = fmul <2 x float> %i.od, %i.wt
  %i.xb = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.ww
  %i.xc = fadd <2 x float> %i.xa, %i.xb
  %i.xd = fmul <2 x float> %i.vi, %i.wz
  %i.xe = fadd <2 x float> %i.xd, %i.xc
  %i.xf = fmul <2 x float> %i.vg, %i.xe           ; 2 uses
  %i.xg = extractelement <2 x float> %i.xf, i64 0 ; 2 uses
  %i.xh = extractelement <2 x float> %i.xf, i64 1 ; 2 uses
  %i.xi = fcmp ogt float %i.xg, %i.xh
  %i.xj = select i1 %i.xi, float %i.xg, float %i.xh ; 2 uses
  %i.xk = fcmp ogt float %i.we, %i.xj
  %i.xl = select i1 %i.xk, float %i.we, float %i.xj ; 2 uses
  %i.xm = fmul float %i.xl, f0x3F733333
  %i.xn = fcmp ogt float %i.xm, %.7309545.i       ; 2 uses
  %.8310.i = select i1 %i.xn, float %i.xl, float %.7309545.i
  %i.xo = trunc nuw nsw i64 %indvars.iv612.i to i32
  %.8.i = select i1 %i.xn, i32 %i.xo, i32 %.7546.i ; 4 uses
  %indvars.iv.next613.i = add nuw nsw i64 %indvars.iv612.i, 1 ; 2 uses
  %exitcond616.not.i = icmp eq i64 %indvars.iv.next613.i, %i.uh
  br i1 %exitcond616.not.i, label %._crit_edge549.i, label %bb.dw, !llvm.loop !141

bb.dz:                                            ; preds = %._crit_edge549.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ul, i64 72
  %.not38 = icmp ugt ptr %i.ul, inttoptr (i64 -73 to ptr)
  br i1 %.not38, label %bb.ea, label %bb.eb, !prof !32, !nosanitize !9

bb.ea:                                            ; preds = %bb.dz
  %i.xq = add i64 %i.un, 72, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @326, i64 %i.un, i64 %i.xq) #10, !nosanitize !9
  unreachable, !nosanitize !9
end_hunk_0
