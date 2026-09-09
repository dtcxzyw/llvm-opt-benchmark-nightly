Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/solver?download=true
inline.NumInlined: 196
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@b3FinalizeBodiesTask:bb.a
  %i.mh = icmp uge i64 %i.me, %i.bj, !nosanitize !9
  %i.mi = icmp slt i32 %i.ma, 0
  %i.mj = xor i1 %i.mi, %i.mh
  %i.mk = and i1 %i.mg, %i.mj, !nosanitize !9
  br i1 %i.mk, label %bb.ac, label %bb.ab, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %b3NormalizeQuat.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @342, i64 %i.bj, i64 %i.me) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %b3NormalizeQuat.exit
  %i.ml = ptrtoint ptr %i.mc to i64, !nosanitize !9 ; 2 uses
  %i.mm = and i64 %i.ml, 7, !nosanitize !9
  %i.mn = icmp eq i64 %i.mm, 0, !nosanitize !9
  %i.mo = and i1 %i.bk, %i.mn
  br i1 %i.mo, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @343, i64 %i.ml) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mc, i64 104
  %i.mq = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.mq, ptr %i.mp, align 8, !tbaa !341
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 60
  store float %i.kq, ptr %i.mr, align 4, !tbaa !342
  %i.ms = load ptr, ptr %i.mc, align 8, !tbaa !343
  %i.mt = getelementptr inbounds [48 x i8], ptr %i.ah, i64 %indvars.iv ; 5 uses
  %i.mu = mul nsw i64 %indvars.iv, 48
  %i.mv = add i64 %i.mu, %i.bm, !nosanitize !9    ; 3 uses
  %i.mw = icmp eq i64 %i.mv, 0
  %i.mx = xor i1 %i.bn, %i.mw
  %i.my = icmp uge i64 %i.mv, %i.bm, !nosanitize !9
  %i.mz = xor i1 %i.cw, %i.my
  %i.na = and i1 %i.mx, %i.mz, !nosanitize !9
  br i1 %i.na, label %bb.ag, label %bb.af, !prof !10, !nosanitize !9

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @344, i64 %i.bm, i64 %i.mv) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ag:                                            ; preds = %bb.ae
  %i.nb = ptrtoint ptr %i.mt to i64, !nosanitize !9 ; 2 uses
  %i.nc = and i64 %i.nb, 7, !nosanitize !9
  %i.nd = icmp eq i64 %i.nc, 0, !nosanitize !9
  %i.ne = and i1 %i.bn, %i.nd
  br i1 %i.ne, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @346, i64 %i.nb) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %bb.ag
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !346
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.nf, ptr noundef nonnull align 4 dereferenceable(28) %i.cz, i64 28, i1 false), !tbaa.struct !166
  %i.ng = load i32, ptr %i.lz, align 4, !tbaa !151 ; 2 uses
  %i.nh = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ng, i32 1), !nosanitize !9 ; 2 uses
  %i.ni = extractvalue { i32, i1 } %i.nh, 1, !nosanitize !9
  br i1 %i.ni, label %bb.aj, label %bb.ak, !prof !97, !nosanitize !9

bb.aj:                                            ; preds = %bb.ai
  %i.nj = zext nneg i32 %i.ng to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @347, i64 %i.nj, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ak:                                            ; preds = %bb.ai
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mt, i64 36
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mc, i64 124
  %i.nm = extractvalue { i32, i1 } %i.nh, 0, !nosanitize !9
  %i.nn = load i16, ptr %i.nl, align 4, !tbaa !347
  %.sroa.3466.0.insert.ext = zext i16 %i.nn to i64
  %.sroa.3466.0.insert.shift = shl nuw i64 %.sroa.3466.0.insert.ext, 48
  %.sroa.0464.0.insert.ext = zext i32 %i.nm to i64
  %.sroa.2465.0.insert.insert = or disjoint i64 %.sroa.2465.0.insert.shift, %.sroa.0464.0.insert.ext
  %.sroa.0464.0.insert.insert = or disjoint i64 %.sroa.2465.0.insert.insert, %.sroa.3466.0.insert.shift
  store i64 %.sroa.0464.0.insert.insert, ptr %i.nk, align 4
  %i.no = getelementptr inbounds nuw i8, ptr %i.mt, i64 44
  store i8 0, ptr %i.no, align 4, !tbaa !348
  %i.np = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.np, i8 0, i64 12, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.cz, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nq, i8 0, i64 12, i1 false)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mc, i64 112 ; 4 uses
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !349 ; 2 uses
  %i.nt = and i32 %i.ns, -833                     ; 2 uses
  store i32 %i.nt, ptr %i.nr, align 8, !tbaa !349
  %i.nu = getelementptr inbounds nuw i8, ptr %i.cz, i64 212 ; 4 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !154 ; 3 uses
  %i.nw = and i32 %i.nv, 768
  %i.nx = or disjoint i32 %i.nw, %i.nt            ; 2 uses
  store i32 %i.nx, ptr %i.nr, align 8, !tbaa !349
  %i.ny = getelementptr inbounds nuw i8, ptr %i.cr, i64 52 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !168 ; 2 uses
  %i.oa = and i32 %i.nz, 768
  %i.ob = or i32 %i.oa, %i.nx
  store i32 %i.ob, ptr %i.nr, align 8, !tbaa !349
  %i.oc = and i32 %i.nv, -833                     ; 2 uses
  store i32 %i.oc, ptr %i.nu, align 4, !tbaa !154
  %i.od = and i32 %i.nz, -833
  store i32 %i.od, ptr %i.ny, align 4, !tbaa !168
  %i.oe = and i32 %i.ns, 8192
  %i.of = icmp eq i32 %i.oe, 0
  %or.cond = select i1 %i.bo, i1 true, i1 %i.of
  br i1 %or.cond, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.og = getelementptr inbounds nuw i8, ptr %i.mc, i64 52
  %i.oh = load float, ptr %i.og, align 4, !tbaa !350
  %i.oi = fcmp ogt float %i.kq, %i.oh
  br i1 %i.oi, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mc, i64 56
  store float 0.000000e+00, ptr %i.oj, align 8, !tbaa !351
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mc, i64 120
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !352
  %i.om = icmp eq i32 %i.ol, 2
  %brmerge.not = and i1 %i.om, %i.aa
  br i1 %brmerge.not, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.on = fmul float %i.ab, %i.jl                 ; 2 uses
  %i.oo = fcmp ogt float %i.kn, %i.on
  %i.op = select i1 %i.oo, float %i.kn, float %i.on
  %i.oq = getelementptr inbounds nuw i8, ptr %i.cz, i64 180
  %i.or = load float, ptr %i.oq, align 4, !tbaa !353
  %i.os = fmul float %i.or, 5.000000e-01
  %i.ot = fcmp ogt float %i.op, %i.os
  br i1 %i.ot, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ou = or disjoint i32 %i.oc, 64
  store i32 %i.ou, ptr %i.nu, align 4, !tbaa !154
  %i.ov = and i32 %i.nv, 128
  %.not298 = icmp eq i32 %i.ov, 0
  br i1 %.not298, label %bb.at, label %b3AtomicFetchAddInt.exit

b3AtomicFetchAddInt.exit:                         ; preds = %bb.ao
  %i.ow = atomicrmw add ptr %i.bp, i32 1 seq_cst, align 4 ; 2 uses
  %i.ox = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 3 uses
  %i.oy = sext i32 %i.ow to i64                   ; 2 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ox, i64 %i.oy ; 2 uses
  %i.pa = shl nsw i64 %i.oy, 2
  %i.pb = ptrtoint ptr %i.ox to i64, !nosanitize !9 ; 3 uses
  %i.pc = add i64 %i.pa, %i.pb, !nosanitize !9    ; 3 uses
  %i.pd = icmp ne ptr %i.ox, null, !nosanitize !9 ; 2 uses
  %i.pe = icmp eq i64 %i.pc, 0
  %i.pf = xor i1 %i.pd, %i.pe
  %i.pg = icmp uge i64 %i.pc, %i.pb, !nosanitize !9
  %i.ph = icmp slt i32 %i.ow, 0
  %i.pi = xor i1 %i.ph, %i.pg
  %i.pj = and i1 %i.pf, %i.pi, !nosanitize !9
  br i1 %i.pj, label %bb.aq, label %bb.ap, !prof !10, !nosanitize !9

bb.ap:                                            ; preds = %b3AtomicFetchAddInt.exit
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @348, i64 %i.pb, i64 %i.pc) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aq:                                            ; preds = %b3AtomicFetchAddInt.exit
  %i.pk = ptrtoint ptr %i.oz to i64, !nosanitize !9 ; 2 uses
  %i.pl = and i64 %i.pk, 3, !nosanitize !9
  %i.pm = icmp eq i64 %i.pl, 0, !nosanitize !9
  %i.pn = and i1 %i.pd, %i.pm
  br i1 %i.pn, label %bb.as, label %bb.ar, !prof !10, !nosanitize !9

bb.ar:                                            ; preds = %bb.aq
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @349, i64 %i.pk) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.as:                                            ; preds = %bb.aq
  store i32 %i.mq, ptr %i.oz, align 4, !tbaa !103
  br label %bb.aw

bb.at:                                            ; preds = %bb.ao
  call fastcc void @b3SolveContinuous(ptr noundef nonnull %i.g, i32 noundef %i.mq, ptr noundef nonnull %i.al)
  br label %bb.aw

bb.au:                                            ; preds = %bb.am, %bb.an
  %i.po = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.po, ptr noundef nonnull align 4 dereferenceable(12) %i.gn, i64 12, i1 false), !tbaa.struct !169
  %i.pp = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pp, ptr noundef nonnull align 4 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !165
  br label %bb.aw

bb.av:                                            ; preds = %bb.al
  %i.pq = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pq, ptr noundef nonnull align 4 dereferenceable(12) %i.gn, i64 12, i1 false), !tbaa.struct !169
  %i.pr = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.pr, ptr noundef nonnull align 4 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !165
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mc, i64 56 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 8, !tbaa !351
  %i.pu = fadd float %i.ab, %i.pt
  store float %i.pu, ptr %i.ps, align 8, !tbaa !351
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as, %bb.at, %bb.au
  %i.pv = getelementptr inbounds nuw i8, ptr %i.cz, i64 144
  %i.pw = load <2 x float>, ptr %i.dn, align 4    ; 6 uses
  %i.px = load <2 x float>, ptr %i.dp, align 4    ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.cz, i64 108
  %.sroa.0481.0.copyload = load <2 x float>, ptr %i.py, align 4 ; 6 uses
  %.sroa.4482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 116
  %.sroa.4482.0.copyload = load float, ptr %.sroa.4482.0..sroa_idx, align 4, !tbaa !148 ; 3 uses
  %.sroa.5483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 120
  %.sroa.5483.0.copyload = load <2 x float>, ptr %.sroa.5483.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  %.sroa.6484.0.copyload = load float, ptr %.sroa.6484.0..sroa_idx, align 4, !tbaa !148 ; 3 uses
  %.sroa.7485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 132
  %.sroa.7485.0.copyload = load <2 x float>, ptr %.sroa.7485.0..sroa_idx, align 4 ; 4 uses
  %.sroa.8486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 140
  %.sroa.8486.0.copyload = load float, ptr %.sroa.8486.0..sroa_idx, align 4, !tbaa !148 ; 2 uses
  %i.pz = fmul <2 x float> %i.pw, %i.pw           ; 3 uses
  %i.qa = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qb = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qc = fmul <2 x float> %i.qa, %i.qb           ; 2 uses
  %i.qd = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qe = fmul <2 x float> %i.pw, %i.qd           ; 2 uses
  %i.qf = fadd <2 x float> %i.qc, %i.qe           ; 2 uses
  %i.qg = fsub <2 x float> %i.qc, %i.qe           ; 2 uses
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> %i.qf, <2 x i32> <i32 0, i32 3>
  %i.qi = fmul <2 x float> %i.qh, splat (float 2.000000e+00) ; 7 uses
  %6 = shufflevector <2 x float> %i.pw, <2 x float> %i.px, <3 x i32> <i32 0, i32 3, i32 2>
  %7 = shufflevector <2 x float> %i.pw, <2 x float> %i.px, <3 x i32> <i32 1, i32 2, i32 2>
  %8 = fmul <3 x float> %6, %7                    ; 3 uses
  %9 = shufflevector <2 x float> %i.qf, <2 x float> %i.qg, <2 x i32> <i32 3, i32 0>
  %i.qj = fmul <2 x float> %9, splat (float 2.000000e+00) ; 8 uses
  %10 = extractelement <3 x float> %8, i64 0      ; 2 uses
  %11 = extractelement <3 x float> %8, i64 1      ; 2 uses
  %12 = fadd float %10, %11
  %13 = fsub float %10, %11
  %14 = insertelement <2 x float> poison, float %12, i64 0
  %15 = insertelement <2 x float> %14, float %13, i64 1
  %i.qk = fmul <2 x float> %15, splat (float 2.000000e+00) ; 8 uses
  %16 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ql = fadd <2 x float> %i.pz, %16
  %i.qm = fmul <2 x float> %i.ql, splat (float 2.000000e+00)
  %i.qn = fsub <2 x float> splat (float 1.000000e+00), %i.qm ; 8 uses
  %i.qo = shufflevector <2 x float> %.sroa.0481.0.copyload, <2 x float> %.sroa.5483.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.qp = fmul <2 x float> %i.qo, %i.qn
  %i.qq = shufflevector <2 x float> %.sroa.0481.0.copyload, <2 x float> %.sroa.5483.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.qr = fmul <2 x float> %i.qk, %i.qq
  %i.qs = fadd <2 x float> %i.qr, %i.qp
  %i.qt = insertelement <2 x float> poison, float %.sroa.4482.0.copyload, i64 0
  %i.qu = insertelement <2 x float> %i.qt, float %.sroa.6484.0.copyload, i64 1
  %i.qv = fmul <2 x float> %i.qi, %i.qu
  %i.qw = fadd <2 x float> %i.qv, %i.qs           ; 3 uses
  %i.qx = shufflevector <2 x float> %.sroa.5483.0.copyload, <2 x float> %.sroa.0481.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.qy = fmul <2 x float> %i.qx, %i.qk
  %i.qz = shufflevector <2 x float> %.sroa.5483.0.copyload, <2 x float> %.sroa.0481.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ra = fmul <2 x float> %i.qz, %i.qn
  %i.rb = fadd <2 x float> %i.qy, %i.ra
  %i.rc = insertelement <2 x float> poison, float %.sroa.6484.0.copyload, i64 0
  %i.rd = insertelement <2 x float> %i.rc, float %.sroa.4482.0.copyload, i64 1
  %i.re = fmul <2 x float> %i.rd, %i.qi
  %i.rf = fadd <2 x float> %i.re, %i.rb           ; 3 uses
  %i.rg = fmul <2 x float> %i.qk, %.sroa.7485.0.copyload
  %i.rh = shufflevector <2 x float> %.sroa.7485.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ri = fmul <2 x float> %i.qn, %i.rh
  %i.rj = fadd <2 x float> %i.rg, %i.ri
  %i.rk = insertelement <2 x float> poison, float %.sroa.8486.0.copyload, i64 0
  %i.rl = shufflevector <2 x float> %i.rk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rm = fmul <2 x float> %i.qi, %i.rl
  %i.rn = fadd <2 x float> %i.rm, %i.rj           ; 3 uses
  %i.ro = extractelement <2 x float> %i.qi, i64 1
  %i.rp = shufflevector <2 x float> %i.qn, <2 x float> %i.qk, <2 x i32> <i32 1, i32 3>
  %i.rq = fmul <2 x float> %i.rp, %i.qw
  %i.rr = shufflevector <2 x float> %i.qk, <2 x float> %i.qn, <2 x i32> <i32 1, i32 3>
  %i.rs = fmul <2 x float> %i.rr, %i.rf
  %i.rt = fadd <2 x float> %i.rq, %i.rs
  %i.ru = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rv = fmul <2 x float> %i.ru, %i.rn
  %i.rw = fadd <2 x float> %i.rt, %i.rv
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ry = extractelement <2 x float> %i.qi, i64 0
  %i.rz = shufflevector <2 x float> %i.qk, <2 x float> %i.qn, <2 x i32> <i32 0, i32 2>
  %i.sa = fmul <2 x float> %i.rz, %i.qw
  %i.sb = shufflevector <2 x float> %i.qn, <2 x float> %i.qk, <2 x i32> <i32 0, i32 2>
  %i.sc = fmul <2 x float> %i.sb, %i.rf
  %i.sd = fadd <2 x float> %i.sa, %i.sc
  %i.se = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sf = fmul <2 x float> %i.se, %i.rn
  %i.sg = fadd <2 x float> %i.sf, %i.sd
  %i.sh = shufflevector <2 x float> %i.sg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %shift7301 = shufflevector <2 x float> %i.pz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop7302 = fadd <2 x float> %i.pz, %shift7301
  %i.si = extractelement <2 x float> %foldExtExtBinop7302, i64 0
  %i.sj = fmul float %i.si, 2.000000e+00
  %i.sk = fsub float 1.000000e+00, %i.sj          ; 4 uses
  %foldExtExtBinop7304.a = fmul <2 x float> %i.qj, %.sroa.5483.0.copyload
  %i.sl = shufflevector <2 x float> %foldExtExtBinop7304.a, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop7306 = fmul <2 x float> %.sroa.0481.0.copyload, %i.qj
  %i.sm = shufflevector <2 x float> %foldExtExtBinop7306, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sn = shufflevector <2 x float> %.sroa.0481.0.copyload, <2 x float> %i.qj, <4 x i32> <i32 poison, i32 1, i32 3, i32 1>
  %i.so = insertelement <4 x float> %i.sn, float -0.000000e+00, i64 0
  %i.sp = shufflevector <2 x float> %i.qj, <2 x float> %.sroa.5483.0.copyload, <4 x i32> <i32 poison, i32 1, i32 3, i32 1>
  %i.sq = insertelement <4 x float> %i.sp, float 1.000000e+00, i64 0
  %i.sr = fmul <4 x float> %i.so, %i.sq
  %i.ss = shufflevector <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.sm, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.su = shufflevector <4 x float> %i.st, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.sv = fadd <4 x float> %i.su, %i.sr
  %i.sw = shufflevector <2 x float> %.sroa.7485.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sx = insertelement <4 x float> %i.sw, float %.sroa.4482.0.copyload, i64 1
  %i.sy = insertelement <4 x float> %i.sx, float %.sroa.6484.0.copyload, i64 2
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ta = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.sk, i64 1
  %i.tb = shufflevector <4 x float> %i.ta, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.tc = fmul <4 x float> %i.sz, %i.tb
  %i.td = fadd <4 x float> %i.tc, %i.sv           ; 2 uses
  %i.te = fmul float %i.sk, %.sroa.8486.0.copyload
  %i.tf = shufflevector <2 x float> %i.qj, <2 x float> %i.qn, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.tg = fmul <4 x float> %i.tf, %i.td
  %i.th = shufflevector <2 x float> %i.qj, <2 x float> %i.qk, <4 x i32> <i32 1, i32 3, i32 2, i32 1>
  %i.ti = shufflevector <2 x float> %.sroa.7485.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.tj = shufflevector <4 x float> %i.ti, <4 x float> %i.td, <4 x i32> <i32 0, i32 6, i32 5, i32 6>
  %i.tk = fmul <4 x float> %i.th, %i.tj
  %i.tl = fadd <4 x float> %i.tg, %i.tk           ; 4 uses
  %i.tm = extractelement <4 x float> %i.tl, i64 0
  %i.tn = fadd float %i.te, %i.tm                 ; 3 uses
  %i.to = fmul float %i.ro, %i.tn
  %i.tp = extractelement <4 x float> %i.tl, i64 1
  %i.tq = fadd float %i.tp, %i.to
  %i.tr = fmul float %i.ry, %i.tn
  %i.ts = extractelement <4 x float> %i.tl, i64 2
  %i.tt = fadd float %i.ts, %i.tr
  %i.tu = fmul <2 x float> %i.qj, %i.qw
  %i.tv = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tw = fmul <2 x float> %i.tv, %i.rf
  %i.tx = fadd <2 x float> %i.tu, %i.tw
  %i.ty = insertelement <2 x float> poison, float %i.sk, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ua = fmul <2 x float> %i.tz, %i.rn
  %i.ub = fadd <2 x float> %i.ua, %i.tx
  %i.uc = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ud = fmul float %i.sk, %i.tn
  %i.ue = extractelement <4 x float> %i.tl, i64 3
  %i.uf = fadd float %i.ue, %i.ud
  store <2 x float> %i.rx, ptr %i.pv, align 4
  %.sroa.4436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 152
  store float %i.tq, ptr %.sroa.4436.0..sroa_idx, align 4, !tbaa !148
  %.sroa.5437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 156
  store <2 x float> %i.sh, ptr %.sroa.5437.0..sroa_idx, align 4
  %.sroa.6438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 164
  store float %i.tt, ptr %.sroa.6438.0..sroa_idx, align 4, !tbaa !148
  %.sroa.7439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 168
  store <2 x float> %i.uc, ptr %.sroa.7439.0..sroa_idx, align 4
  %.sroa.8440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 176
  store float %i.uf, ptr %.sroa.8440.0..sroa_idx, align 4, !tbaa !148
  %i.ug = getelementptr inbounds nuw i8, ptr %i.mc, i64 44
  %i.uh = load ptr, ptr %i.br, align 8, !tbaa !354 ; 3 uses
  %i.ui = load i32, ptr %i.ug, align 4, !tbaa !355 ; 4 uses
  %i.uj = sext i32 %i.ui to i64                   ; 2 uses
  %i.uk = getelementptr inbounds [64 x i8], ptr %i.uh, i64 %i.uj ; 3 uses
  %i.ul = shl nsw i64 %i.uj, 6
  %i.um = ptrtoint ptr %i.uh to i64, !nosanitize !9 ; 3 uses
  %i.un = add i64 %i.ul, %i.um, !nosanitize !9    ; 3 uses
  %i.uo = icmp ne ptr %i.uh, null, !nosanitize !9 ; 2 uses
  %i.up = icmp eq i64 %i.un, 0
  %i.uq = xor i1 %i.uo, %i.up
  %i.ur = icmp uge i64 %i.un, %i.um, !nosanitize !9
  %i.us = icmp slt i32 %i.ui, 0
  %i.ut = xor i1 %i.us, %i.ur
  %i.uu = and i1 %i.uq, %i.ut, !nosanitize !9
  br i1 %i.uu, label %bb.ay, label %bb.ax, !prof !10, !nosanitize !9

bb.ax:                                            ; preds = %bb.aw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @350, i64 %i.um, i64 %i.un) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ay:                                            ; preds = %bb.aw
  %i.uv = getelementptr inbounds nuw i8, ptr %i.mc, i64 56
  %i.uw = load float, ptr %i.uv, align 8, !tbaa !351 ; 4 uses
  %i.ux = fcmp olt float %i.uw, 5.000000e-01
  %i.uy = ptrtoint ptr %i.uk to i64, !nosanitize !9 ; 3 uses
  %i.uz = and i64 %i.uy, 7, !nosanitize !9
  %i.va = icmp eq i64 %i.uz, 0, !nosanitize !9
  %i.vb = and i1 %i.uo, %i.va                     ; 2 uses
  br i1 %i.ux, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  br i1 %i.vb, label %bb.bb, label %bb.ba, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @352, i64 %i.uy) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bb:                                            ; preds = %bb.az
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !361 ; 2 uses
  %i.ve = lshr i32 %i.vd, 6
  %i.vf = load ptr, ptr %i.bb, align 8, !tbaa !134 ; 3 uses
  %i.vg = zext nneg i32 %i.ve to i64              ; 2 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.vg ; 3 uses
  %i.vi = shl nuw nsw i64 %i.vg, 3
  %i.vj = ptrtoint ptr %i.vf to i64, !nosanitize !9 ; 3 uses
  %i.vk = add i64 %i.vi, %i.vj, !nosanitize !9    ; 3 uses
  %i.vl = icmp ne ptr %i.vf, null, !nosanitize !9 ; 2 uses
  %i.vm = icmp eq i64 %i.vk, 0
  %i.vn = xor i1 %i.vl, %i.vm
  %i.vo = icmp uge i64 %i.vk, %i.vj, !nosanitize !9
  %i.vp = and i1 %i.vo, %i.vn, !nosanitize !9
  br i1 %i.vp, label %bb.bd, label %bb.bc, !prof !10, !nosanitize !9

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @313, i64 %i.vj, i64 %i.vk) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bd:                                            ; preds = %bb.bb
  %i.vq = ptrtoint ptr %i.vh to i64, !nosanitize !9 ; 2 uses
  %i.vr = and i64 %i.vq, 7, !nosanitize !9
  %i.vs = icmp eq i64 %i.vr, 0, !nosanitize !9
  %i.vt = and i1 %i.vl, %i.vs
  br i1 %i.vt, label %b3SetBit.exit, label %bb.be, !prof !10, !nosanitize !9

bb.be:                                            ; preds = %bb.bd
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @314, i64 %i.vq) #11, !nosanitize !9
  unreachable, !nosanitize !9

b3SetBit.exit:                                    ; preds = %bb.bd
  %i.vu = and i32 %i.vd, 63
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = shl nuw i64 1, %i.vv
  %i.vx = load i64, ptr %i.vh, align 8, !tbaa !80
  %i.vy = or i64 %i.vx, %i.vw
  store i64 %i.vy, ptr %i.vh, align 8, !tbaa !80
  br label %.preheader

bb.bf:                                            ; preds = %bb.ay
  br i1 %i.vb, label %bb.bh, label %bb.bg, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %bb.bf
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @353, i64 %i.uy) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %bb.bf
  %i.vz = getelementptr inbounds nuw i8, ptr %i.uk, i64 12
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !362
  %i.wb = icmp sgt i32 %i.wa, 0
  br i1 %i.wb, label %bb.bi, label %.preheader

bb.bi:                                            ; preds = %bb.bh
  %i.wc = load float, ptr %i.bs, align 8, !tbaa !132 ; 2 uses
  %i.wd = fcmp ogt float %i.uw, %i.wc
  br i1 %i.wd, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.we = fcmp oeq float %i.uw, %i.wc
  br i1 %i.we, label %bb.bk, label %.preheader

bb.bk:                                            ; preds = %bb.bj
  %i.wf = load i32, ptr %i.bt, align 4, !tbaa !131
  %i.wg = icmp sgt i32 %i.ui, %i.wf
  br i1 %i.wg, label %.thread, label %.preheader

.thread:                                          ; preds = %bb.bi, %bb.bk
  store i32 %i.ui, ptr %i.bt, align 4, !tbaa !131
  store float %i.uw, ptr %i.bs, align 8, !tbaa !132
  br label %.preheader

.preheader:                                       ; preds = %bb.bh, %.thread, %bb.bk, %bb.bj, %b3SetBit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %i.cz, i64 28, i1 false), !tbaa.struct !166
  %i.wh = load i32, ptr %i.nu, align 4, !tbaa !154
  %.fr2946 = freeze i32 %i.wh
  %i.wi = and i32 %.fr2946, 64
  %.not299 = icmp eq i32 %i.wi, 0
  %i.wj = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.wk = lshr i64 %indvars.iv, 6
  %i.wl = and i64 %i.wk, 67108863                 ; 3 uses
  %i.wm = shl nuw nsw i64 %i.wl, 3                ; 2 uses
  %i.wn = and i64 %indvars.iv, 63
  %i.wo = shl nuw i64 1, %i.wn                    ; 2 uses
  %.0.us.us7278 = load i32, ptr %i.wj, align 8, !tbaa !103 ; 3 uses
  %.not300.us.us7279 = icmp eq i32 %.0.us.us7278, -1 ; 2 uses
  br i1 %.not299, label %.preheader.split.us.split.us.preheader, label %.preheader.split.us.split

.preheader.split.us.split.us.preheader:           ; preds = %.preheader
  br i1 %.not300.us.us7279, label %.loopexit, label %.lr.ph7281

.lr.ph7281:                                       ; preds = %.preheader.split.us.split.us.preheader, %.preheader.split.us.split.us
  %.0.us.us7280 = phi i32 [ %.0.us.us, %.preheader.split.us.split.us ], [ %.0.us.us7278, %.preheader.split.us.split.us.preheader ] ; 2 uses
  %i.wp = load ptr, ptr %i.bu, align 8, !tbaa !136 ; 3 uses
  %i.wq = sext i32 %.0.us.us7280 to i64           ; 2 uses
  %i.wr = getelementptr inbounds [232 x i8], ptr %i.wp, i64 %i.wq ; 10 uses
  %i.ws = mul nsw i64 %i.wq, 232
  %i.wt = ptrtoint ptr %i.wp to i64, !nosanitize !9 ; 3 uses
  %i.wu = add i64 %i.ws, %i.wt, !nosanitize !9    ; 3 uses
  %i.wv = icmp ne ptr %i.wp, null, !nosanitize !9 ; 2 uses
  %i.ww = icmp eq i64 %i.wu, 0
  %i.wx = xor i1 %i.wv, %i.ww
  %i.wy = icmp uge i64 %i.wu, %i.wt, !nosanitize !9
  %i.wz = icmp slt i32 %.0.us.us7280, 0
  %i.xa = xor i1 %i.wz, %i.wy
  %i.xb = and i1 %i.wx, %i.xa, !nosanitize !9
  br i1 %i.xb, label %bb.bl, label %.split2808.us, !prof !10, !nosanitize !9

bb.bl:                                            ; preds = %.lr.ph7281
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @b3ComputeFatShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef %i.wr, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.be) #12
  %i.xc = ptrtoint ptr %i.wr to i64, !nosanitize !9 ; 2 uses
  %i.xd = and i64 %i.xc, 7, !nosanitize !9
  %i.xe = icmp eq i64 %i.xd, 0, !nosanitize !9
  %i.xf = and i1 %i.wv, %i.xe
  br i1 %i.xf, label %bb.bm, label %.split2820.us, !prof !10, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wr, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xg, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !170
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wr, i64 64 ; 2 uses
  %.sroa.5512.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.wr, i64 72 ; 2 uses
  %.sroa.5512.0.copyload.us.us = load float, ptr %.sroa.5512.0..sroa_idx.us.us, align 8
  %.sroa.6513.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.wr, i64 76 ; 2 uses
  %.sroa.8515.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.wr, i64 84 ; 2 uses
  %.sroa.8515.0.copyload.us.us = load float, ptr %.sroa.8515.0..sroa_idx.us.us, align 4
  %i.xi = load <2 x float>, ptr %i.xh, align 8
  %i.xj = load <2 x float>, ptr %.sroa.6513.0..sroa_idx.us.us, align 4
  %i.xk = load <2 x float>, ptr %5, align 8
  %i.xl = load <2 x float>, ptr %i.bv, align 4
  %i.xm = shufflevector <2 x float> %i.xi, <2 x float> %i.xl, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xn = shufflevector <2 x float> %i.xk, <2 x float> %i.xj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.xo = fcmp ule <4 x float> %i.xm, %i.xn
  %i.xp = load float, ptr %i.bw, align 8          ; 2 uses
  %i.xq = fcmp ule float %.sroa.5512.0.copyload.us.us, %i.xp
  %i.xr = load float, ptr %i.bx, align 4          ; 2 uses
  %i.xs = fcmp ule float %i.xr, %.sroa.8515.0.copyload.us.us
  %i.xt = freeze <4 x i1> %i.xo
  %i.xu = bitcast <4 x i1> %i.xt to i4
end_hunk_0
