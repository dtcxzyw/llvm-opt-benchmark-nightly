Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@commit_params:bb.a
  %i.kt = fadd reassoc nsz arcp contract afn float %i.ks, %i.kr
  store float %i.kt, ptr %i.kq, align 4, !tbaa !12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.kv = load float, ptr %i.km, align 4, !tbaa !162
  %i.kw = fadd reassoc nsz arcp contract afn float %i.kh, f0x3ED79122
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kw, %i.kv
  store float %i.kx, ptr %i.ku, align 8, !tbaa !12
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.kz = load float, ptr %i.km, align 4, !tbaa !162
  %i.la = fadd reassoc nsz arcp contract afn float %i.kk, 1.000000e+00
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.kz
  store float %i.lb, ptr %i.ky, align 4, !tbaa !12
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !17
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, 2.000000e+00
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, 2.000000e+00 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store float %i.lf, ptr %i.lg, align 16, !tbaa !133
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.li = load float, ptr %i.lh, align 4, !tbaa !163 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !164
  %i.ll = fmul reassoc nsz arcp contract afn float %i.lk, f0x3C8EFA36
  %i.lm = fadd reassoc nsz arcp contract afn float %i.ll, f0xBF060A93
  %sincos.i200 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.lm) ; 2 uses
  %sin.i201 = extractvalue { float, float } %sincos.i200, 0
  %cos.i202 = extractvalue { float, float } %sincos.i200, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.lo = fmul reassoc nsz arcp contract afn float %cos.i202, %i.li
  %i.lp = fmul reassoc nsz arcp contract afn float %sin.i201, %i.li
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, 5.437140e-01 ; 3 uses
  %i.lr = fadd reassoc nsz arcp contract afn float %i.lo, f0x3E604727 ; 3 uses
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lq, %i.lr ; 2 uses
  %i.lt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ls ; 3 uses
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lq, 3.800000e-01
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lr, f0x3F733333
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lr, 5.000000e-02
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lq, 6.200000e-01
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lu, %i.lv
  %i.lz = fmul reassoc nsz arcp contract afn float %i.lt, 0.000000e+00
  %i.ma = fadd reassoc nsz arcp contract afn float %i.lx, %i.lw
  %i.mb = fmul reassoc nsz arcp contract afn float %i.lt, 3.000000e-02
  %i.mc = fadd reassoc nsz arcp contract afn float %i.ma, %i.mb ; 2 uses
  %i.md = fadd reassoc nsz arcp contract afn float %i.ly, %i.lz ; 2 uses
  %i.me = fmul reassoc nsz arcp contract afn float %i.md, f0x3F309D77
  %i.mf = fmul reassoc nsz arcp contract afn float %i.mc, f0x3EB2573F
  %i.mg = fadd reassoc nsz arcp contract afn float %i.me, %i.mf ; 2 uses
  %i.mh = fcmp reassoc nsz arcp contract afn oeq float %i.mg, 0.000000e+00
  %i.mi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mg
  %i.mj = select reassoc nsz arcp contract afn i1 %i.mh, float 0.000000e+00, float %i.mi ; 3 uses
  %i.mk = fmul reassoc nsz arcp contract afn float %i.lt, 9.700000e-01
  %i.ml = fmul reassoc nsz arcp contract afn float %i.ls, 0.000000e+00
  %i.mm = fmul reassoc nsz arcp contract afn float %i.mj, %i.mc ; 3 uses
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mj, %i.md ; 3 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, f0xBDB3A62D
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mm, f0xBF2AAAAB
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mm, f0x3FD55555
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mn, f0x3F8B3A63
  %i.ms = fadd reassoc nsz arcp contract afn float %i.mq, %i.mo
  %i.mt = fadd reassoc nsz arcp contract afn float %i.mp, %i.mr
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mk, %i.ml
  %i.mv = fadd reassoc nsz arcp contract afn float %i.mm, %i.mn ; 2 uses
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mj, %i.mu ; 4 uses
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, f0x3F83F572
  %i.my = fadd reassoc nsz arcp contract afn float %i.mv, %i.mw
  %i.mz = fmul reassoc nsz arcp contract afn float %i.mv, 0.000000e+00
  %i.na = fmul reassoc nsz arcp contract afn float %i.mw, f0xBD53224F
  %i.nb = fmul reassoc nsz arcp contract afn float %i.mw, f0x3CA8E841
  %i.nc = fmul reassoc nsz arcp contract afn float %i.my, 0.000000e+00
  %i.nd = fadd reassoc nsz arcp contract afn float %i.mz, %i.mx
  %i.ne = fadd reassoc nsz arcp contract afn float %i.ms, %i.na
  %i.nf = fadd reassoc nsz arcp contract afn float %i.mt, %i.nb
  %i.ng = insertelement <4 x float> poison, float %i.nf, i64 0
  %i.nh = insertelement <4 x float> %i.ng, float %i.ne, i64 1
  %i.ni = insertelement <4 x float> %i.nh, float %i.nd, i64 2
  %i.nj = insertelement <4 x float> %i.ni, float %i.nc, i64 3
  %i.nk = fadd reassoc nsz arcp contract afn <4 x float> %i.nj, <float 4.655460e-01, float f0xBEA74DD4, float f0x3ED79122, float 1.000000e+00>
  %i.nl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.nk
  store <4 x float> %i.nl, ptr %i.ln, align 16, !tbaa !12
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !165
  %i.no = fadd reassoc nsz arcp contract afn float %i.nn, 1.000000e+00
  %i.np = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store float %i.np, ptr %i.nq, align 16, !tbaa !138
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !166
  %i.nt = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ns)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  store float %i.nt, ptr %i.nu, align 4, !tbaa !130
  %i.nv = load float, ptr %i.ij, align 4, !tbaa !132 ; 2 uses
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nv, %i.nv ; 2 uses
  %i.nx = fmul reassoc nsz arcp contract afn float %i.lf, %i.lf ; 2 uses
  %i.ny = fmul reassoc nsz arcp contract afn float %i.nx, %i.nw
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nx, %i.nw
  %i.oa = fdiv reassoc nsz arcp contract afn float %i.ny, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  store float %i.oa, ptr %i.ob, align 4, !tbaa !134
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.od = load float, ptr %i.oc, align 4, !tbaa !18
  %i.oe = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.od, float f0x3ED1FB53)
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store float %i.oe, ptr %i.of, align 8, !tbaa !135
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !20 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 16, !tbaa !141
  %.not = icmp eq i32 %i.oh, %i.oj
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ok = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i32 0, ptr %i.ok, align 16, !tbaa !167
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 %i.oh, ptr %i.oi, align 16, !tbaa !141
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !53
  %i.on = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %i.om) #19 ; 8 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !168
  %.not192 = icmp eq ptr %i.on, %i.oq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  br i1 %.not192, label %bb.y, label %.thread

.thread:                                          ; preds = %bb.x
  store i32 0, ptr %.phi.trans.insert, align 16, !tbaa !167
  store ptr %i.on, ptr %i.op, align 8, !tbaa !168
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %.pre = load i32, ptr %.phi.trans.insert, align 16, !tbaa !167
  %i.os = icmp eq i32 %.pre, 0
  br i1 %i.os, label %bb.z, label %bb.ap

bb.z:                                             ; preds = %.thread, %bb.y
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 576
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 608
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 584
  %i.ou = load float, ptr %invariant.gep.2.i, align 4, !tbaa !12 ; 2 uses
  %gep.1.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 600
  %i.ov = load float, ptr %gep.1.2.i, align 4, !tbaa !12 ; 2 uses
  %gep.2.2.i = getelementptr inbounds nuw i8, ptr %i.on, i64 616
  %i.ow = load float, ptr %gep.2.2.i, align 4, !tbaa !12
  %i.ox = tail call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %i.ot, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison), !tbaa !12 ; 2 uses
  %i.oy = load <2 x float>, ptr %gep.2.i, align 4, !tbaa !12
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1>
  %i.pa = shufflevector <6 x float> %i.ox, <6 x float> poison, <6 x i32> <i32 1, i32 5, i32 1, i32 4, i32 0, i32 0>
  %i.pb = fmul reassoc nsz arcp contract afn <6 x float> %i.pa, <float 4.039210e-04, float f0x3D23F6FB, float f0x3BB11DFF, float f0x3D23F6FB, float f0x3BB11DFF, float 4.039210e-04>
  %i.pc = shufflevector <6 x float> %i.ox, <6 x float> poison, <6 x i32> <i32 5, i32 1, i32 5, i32 0, i32 4, i32 4>
  %i.pd = fmul reassoc nsz arcp contract afn <6 x float> %i.pc, <float f0x3C7704B2, float f0x3F7D4DA9, float f0x3F80DA42, float f0x3F7D4DA9, float f0x3F80DA42, float f0x3C7704B2>
  %i.pe = fsub reassoc nsz arcp contract afn <6 x float> %i.pd, %i.pb
  %i.pf = shufflevector <6 x float> %i.pe, <6 x float> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 1, i32 2, i32 0, i32 3, i32 2>
  %i.pg = fmul reassoc nsz arcp contract afn <8 x float> %i.oz, <float f0x3D3470F4, float f0xBAE61976, float f0x3FA6AB48, float f0x3D3470F4, float f0xBAE61976, float f0x3FA6AB48, float f0x3D3470F4, float f0xBAE61976>
  %i.ph = fadd reassoc nsz arcp contract afn <8 x float> %i.pf, %i.pg ; 8 uses
  %i.pi = insertelement <4 x float> poison, float %i.ou, i64 0
  %i.pj = insertelement <4 x float> %i.pi, float %i.ov, i64 1
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.pl = fmul reassoc nsz arcp contract afn <4 x float> %i.pk, <float f0x3BB11DFF, float 4.039210e-04, float f0x3D23F6FB, float f0x3BB11DFF>
  %i.pm = insertelement <4 x float> poison, float %i.ov, i64 0
  %i.pn = insertelement <4 x float> %i.pm, float %i.ou, i64 1
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.pp = fmul reassoc nsz arcp contract afn <4 x float> %i.po, <float f0x3F80DA42, float f0x3C7704B2, float f0x3F7D4DA9, float f0x3F80DA42>
  %i.pq = fsub reassoc nsz arcp contract afn <4 x float> %i.pp, %i.pl
  %i.pr = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.ps = shufflevector <4 x float> %i.pr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pt = fmul reassoc nsz arcp contract afn <4 x float> %i.ps, <float f0xBAE61976, float f0x3FA6AB48, float f0x3D3470F4, float f0xBAE61976>
  %i.pu = fadd reassoc nsz arcp contract afn <4 x float> %i.pq, %i.pt ; 6 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !56 ; 9 uses
  %i.px = load i32, ptr %i.og, align 4, !tbaa !20
  switch i32 %i.px, label %bb.ao [
    i32 0, label %bb.aa
    i32 1, label %bb.af
  ]

bb.aa:                                            ; preds = %bb.z
  %i.py = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 39 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.py, i64 64) ]
  %.not.i = icmp eq ptr %i.py, null
  br i1 %.not.i, label %.preheader253.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %i.py, i8 0, i64 2048, i1 false)
  br label %.preheader253.preheader

.preheader253.preheader:                          ; preds = %bb.aa, %bb.ab
  %i.pz = extractelement <8 x float> %i.ph, i64 0
  %i.qa = extractelement <8 x float> %i.ph, i64 1
  %i.qb = extractelement <8 x float> %i.ph, i64 2
  %i.qc = extractelement <8 x float> %i.ph, i64 3
  %i.qd = extractelement <8 x float> %i.ph, i64 4
  %i.qe = extractelement <8 x float> %i.ph, i64 5
  %i.qf = extractelement <4 x float> %i.pu, i64 0
  %i.qg = extractelement <4 x float> %i.pu, i64 1
  %4 = extractelement <4 x float> %i.pu, i64 2
  br label %.preheader253

.preheader253:                                    ; preds = %.preheader253.preheader, %bb.ac
  %.0189268 = phi i64 [ %i.tx, %bb.ac ], [ 0, %.preheader253.preheader ] ; 2 uses
  %i.qh = uitofp reassoc nsz arcp contract afn nneg i64 %.0189268 to float
  %i.qi = fmul reassoc nnan nsz arcp contract afn float %i.qh, f0x3C340B41 ; 3 uses
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, %i.pz
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qi, %i.qa
  %i.ql = fmul reassoc nsz arcp contract afn float %i.qi, %i.qb
  br label %.preheader252

iter.check:                                       ; preds = %bb.ac
  %i.qm = load ptr, ptr %i.pv, align 8, !tbaa !56 ; 14 uses
  %scevgep300 = getelementptr nuw i8, ptr %i.qm, i64 8
  %scevgep301 = getelementptr i8, ptr %i.qm, i64 2040
  %scevgep302 = getelementptr i8, ptr %i.py, i64 2048
  %bound0303 = icmp ult ptr %scevgep300, %scevgep302
  %bound1304 = icmp ult ptr %i.py, %scevgep301
  %found.conflict305 = and i1 %bound0303, %bound1304
  br i1 %found.conflict305, label %vec.epilog.scalar.ph.preheader.new, label %vector.body308

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.vector.body, %iter.check
  %.0269.ph = phi i64 [ 2, %iter.check ], [ 506, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vector.body308:                                   ; preds = %iter.check, %vector.body308
  %index309 = phi i64 [ %index.next330, %vector.body308 ], [ 0, %iter.check ] ; 3 uses
  %i.qn = or disjoint i64 %index309, 2            ; 2 uses
  %i.qo = getelementptr [4 x i8], ptr %i.py, i64 %i.qn ; 16 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 -8
  %i.qq = getelementptr i8, ptr %i.qo, i64 24
  %i.qr = getelementptr i8, ptr %i.qo, i64 56
  %i.qs = getelementptr i8, ptr %i.qo, i64 88
  %wide.load310 = load <8 x float>, ptr %i.qp, align 64, !tbaa !12, !alias.scope !256
  %wide.load311 = load <8 x float>, ptr %i.qq, align 32, !tbaa !12, !alias.scope !256
  %wide.load312 = load <8 x float>, ptr %i.qr, align 64, !tbaa !12, !alias.scope !256
  %wide.load313 = load <8 x float>, ptr %i.qs, align 32, !tbaa !12, !alias.scope !256
  %i.qt = getelementptr i8, ptr %i.qo, i64 -4
  %i.qu = getelementptr i8, ptr %i.qo, i64 28
  %i.qv = getelementptr i8, ptr %i.qo, i64 60
  %i.qw = getelementptr i8, ptr %i.qo, i64 92
  %wide.load314 = load <8 x float>, ptr %i.qt, align 4, !tbaa !12, !alias.scope !256
  %wide.load315 = load <8 x float>, ptr %i.qu, align 4, !tbaa !12, !alias.scope !256
  %wide.load316 = load <8 x float>, ptr %i.qv, align 4, !tbaa !12, !alias.scope !256
  %wide.load317 = load <8 x float>, ptr %i.qw, align 4, !tbaa !12, !alias.scope !256
  %i.qx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load314, %wide.load310
  %i.qy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load315, %wide.load311
  %i.qz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load316, %wide.load312
  %i.ra = fadd reassoc nsz arcp contract afn <8 x float> %wide.load317, %wide.load313
  %i.rb = getelementptr i8, ptr %i.qo, i64 32
  %i.rc = getelementptr i8, ptr %i.qo, i64 64
  %i.rd = getelementptr i8, ptr %i.qo, i64 96
  %wide.load318 = load <8 x float>, ptr %i.qo, align 8, !tbaa !12, !alias.scope !256
  %wide.load319 = load <8 x float>, ptr %i.rb, align 8, !tbaa !12, !alias.scope !256
  %wide.load320 = load <8 x float>, ptr %i.rc, align 8, !tbaa !12, !alias.scope !256
  %wide.load321 = load <8 x float>, ptr %i.rd, align 8, !tbaa !12, !alias.scope !256
  %i.re = fadd reassoc nsz arcp contract afn <8 x float> %i.qx, %wide.load318
  %i.rf = fadd reassoc nsz arcp contract afn <8 x float> %i.qy, %wide.load319
  %i.rg = fadd reassoc nsz arcp contract afn <8 x float> %i.qz, %wide.load320
  %i.rh = fadd reassoc nsz arcp contract afn <8 x float> %i.ra, %wide.load321
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %index309 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 12
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 44
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 76
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 108
  %wide.load322 = load <8 x float>, ptr %i.rj, align 4, !tbaa !12, !alias.scope !256
  %wide.load323 = load <8 x float>, ptr %i.rk, align 4, !tbaa !12, !alias.scope !256
  %wide.load324 = load <8 x float>, ptr %i.rl, align 4, !tbaa !12, !alias.scope !256
  %wide.load325 = load <8 x float>, ptr %i.rm, align 4, !tbaa !12, !alias.scope !256
  %i.rn = fadd reassoc nsz arcp contract afn <8 x float> %i.re, %wide.load322
  %i.ro = fadd reassoc nsz arcp contract afn <8 x float> %i.rf, %wide.load323
  %i.rp = fadd reassoc nsz arcp contract afn <8 x float> %i.rg, %wide.load324
  %i.rq = fadd reassoc nsz arcp contract afn <8 x float> %i.rh, %wide.load325
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qo, i64 40
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qo, i64 72
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qo, i64 104
  %wide.load326 = load <8 x float>, ptr %i.rr, align 16, !tbaa !12, !alias.scope !256
  %wide.load327 = load <8 x float>, ptr %i.rs, align 16, !tbaa !12, !alias.scope !256
  %wide.load328 = load <8 x float>, ptr %i.rt, align 16, !tbaa !12, !alias.scope !256
  %wide.load329 = load <8 x float>, ptr %i.ru, align 16, !tbaa !12, !alias.scope !256
  %i.rv = fadd reassoc nsz arcp contract afn <8 x float> %i.rn, %wide.load326
  %i.rw = fadd reassoc nsz arcp contract afn <8 x float> %i.ro, %wide.load327
  %i.rx = fadd reassoc nsz arcp contract afn <8 x float> %i.rp, %wide.load328
  %i.ry = fadd reassoc nsz arcp contract afn <8 x float> %i.rq, %wide.load329
  %i.rz = fmul reassoc nsz arcp contract afn <8 x float> %i.rv, splat (float 2.000000e-01)
  %i.sa = fmul reassoc nsz arcp contract afn <8 x float> %i.rw, splat (float 2.000000e-01)
  %i.sb = fmul reassoc nsz arcp contract afn <8 x float> %i.rx, splat (float 2.000000e-01)
  %i.sc = fmul reassoc nsz arcp contract afn <8 x float> %i.ry, splat (float 2.000000e-01)
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.qn ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 32
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 96
  store <8 x float> %i.rz, ptr %i.sd, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  store <8 x float> %i.sa, ptr %i.se, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  store <8 x float> %i.sb, ptr %i.sf, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  store <8 x float> %i.sc, ptr %i.sg, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  %index.next330 = add nuw i64 %index309, 32      ; 2 uses
  %i.sh = icmp eq i64 %index.next330, 480
  br i1 %i.sh, label %vec.epilog.vector.body, label %vector.body308, !llvm.loop !249

vec.epilog.vector.body:                           ; preds = %vector.body308
  %i.si = getelementptr i8, ptr %i.py, i64 1928
  %i.sj = getelementptr i8, ptr %i.py, i64 1920
  %wide.load333 = load <8 x float>, ptr %i.sj, align 64, !tbaa !12, !alias.scope !256
  %i.sk = getelementptr i8, ptr %i.py, i64 1924
  %wide.load334 = load <8 x float>, ptr %i.sk, align 4, !tbaa !12, !alias.scope !256
  %i.sl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load334, %wide.load333
  %wide.load335 = load <8 x float>, ptr %i.si, align 8, !tbaa !12, !alias.scope !256
  %i.sm = fadd reassoc nsz arcp contract afn <8 x float> %i.sl, %wide.load335
  %i.sn = getelementptr inbounds nuw i8, ptr %i.py, i64 1932
  %wide.load336 = load <8 x float>, ptr %i.sn, align 4, !tbaa !12, !alias.scope !256
  %i.so = fadd reassoc nsz arcp contract afn <8 x float> %i.sm, %wide.load336
  %i.sp = getelementptr i8, ptr %i.py, i64 1936
  %wide.load337 = load <8 x float>, ptr %i.sp, align 16, !tbaa !12, !alias.scope !256
  %i.sq = fadd reassoc nsz arcp contract afn <8 x float> %i.so, %wide.load337
  %i.sr = fmul reassoc nsz arcp contract afn <8 x float> %i.sq, splat (float 2.000000e-01)
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qm, i64 1928
  store <8 x float> %i.sr, ptr %i.ss, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  %i.st = getelementptr i8, ptr %i.py, i64 1960
  %i.su = getelementptr i8, ptr %i.py, i64 1952
  %wide.load333.1 = load <8 x float>, ptr %i.su, align 32, !tbaa !12, !alias.scope !256
  %i.sv = getelementptr i8, ptr %i.py, i64 1956
  %wide.load334.1 = load <8 x float>, ptr %i.sv, align 4, !tbaa !12, !alias.scope !256
  %i.sw = fadd reassoc nsz arcp contract afn <8 x float> %wide.load334.1, %wide.load333.1
  %wide.load335.1 = load <8 x float>, ptr %i.st, align 8, !tbaa !12, !alias.scope !256
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %i.sw, %wide.load335.1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.py, i64 1964
  %wide.load336.1 = load <8 x float>, ptr %i.sy, align 4, !tbaa !12, !alias.scope !256
  %i.sz = fadd reassoc nsz arcp contract afn <8 x float> %i.sx, %wide.load336.1
  %i.ta = getelementptr i8, ptr %i.py, i64 1968
  %wide.load337.1 = load <8 x float>, ptr %i.ta, align 16, !tbaa !12, !alias.scope !256
  %i.tb = fadd reassoc nsz arcp contract afn <8 x float> %i.sz, %wide.load337.1
  %i.tc = fmul reassoc nsz arcp contract afn <8 x float> %i.tb, splat (float 2.000000e-01)
  %i.td = getelementptr inbounds nuw i8, ptr %i.qm, i64 1960
  store <8 x float> %i.tc, ptr %i.td, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  %i.te = getelementptr i8, ptr %i.py, i64 1992
  %i.tf = getelementptr i8, ptr %i.py, i64 1984
  %wide.load333.2 = load <8 x float>, ptr %i.tf, align 64, !tbaa !12, !alias.scope !256
  %i.tg = getelementptr i8, ptr %i.py, i64 1988
  %wide.load334.2 = load <8 x float>, ptr %i.tg, align 4, !tbaa !12, !alias.scope !256
  %i.th = fadd reassoc nsz arcp contract afn <8 x float> %wide.load334.2, %wide.load333.2
  %wide.load335.2 = load <8 x float>, ptr %i.te, align 8, !tbaa !12, !alias.scope !256
  %i.ti = fadd reassoc nsz arcp contract afn <8 x float> %i.th, %wide.load335.2
  %i.tj = getelementptr inbounds nuw i8, ptr %i.py, i64 1996
  %wide.load336.2 = load <8 x float>, ptr %i.tj, align 4, !tbaa !12, !alias.scope !256
  %i.tk = fadd reassoc nsz arcp contract afn <8 x float> %i.ti, %wide.load336.2
  %i.tl = getelementptr i8, ptr %i.py, i64 2000
  %wide.load337.2 = load <8 x float>, ptr %i.tl, align 16, !tbaa !12, !alias.scope !256
  %i.tm = fadd reassoc nsz arcp contract afn <8 x float> %i.tk, %wide.load337.2
  %i.tn = fmul reassoc nsz arcp contract afn <8 x float> %i.tm, splat (float 2.000000e-01)
  %i.to = getelementptr inbounds nuw i8, ptr %i.qm, i64 1992
  store <8 x float> %i.tn, ptr %i.to, align 4, !tbaa !12, !alias.scope !257, !noalias !256
  br label %vec.epilog.scalar.ph.preheader.new

.preheader252:                                    ; preds = %.preheader253, %bb.ad
  %.0188267 = phi i64 [ 0, %.preheader253 ], [ %i.ty, %bb.ad ] ; 2 uses
  %i.tp = uitofp reassoc nsz arcp contract afn nneg i64 %.0188267 to float
  %i.tq = fmul reassoc nnan nsz arcp contract afn float %i.tp, f0x3C340B41 ; 3 uses
  %i.tr = fmul reassoc nsz arcp contract afn float %i.tq, %i.qc
  %i.ts = fadd reassoc nsz arcp contract afn float %i.tr, %i.qj
  %i.tt = fmul reassoc nsz arcp contract afn float %i.tq, %i.qd
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tt, %i.qk
  %i.tv = fmul reassoc nsz arcp contract afn float %i.tq, %i.qe
  %i.tw = fadd reassoc nsz arcp contract afn float %i.tv, %i.ql
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ad
  %i.tx = add nuw nsw i64 %.0189268, 1            ; 2 uses
  %exitcond271.not = icmp eq i64 %i.tx, 92
  br i1 %exitcond271.not, label %iter.check, label %.preheader253

bb.ad:                                            ; preds = %bb.ae
  %i.ty = add nuw nsw i64 %.0188267, 1            ; 2 uses
  %exitcond270.not = icmp eq i64 %i.ty, 92
  br i1 %exitcond270.not, label %bb.ac, label %.preheader252

bb.ae:                                            ; preds = %.preheader252, %bb.ae
  %.0187266 = phi i64 [ 0, %.preheader252 ], [ %i.wx, %bb.ae ] ; 2 uses
  %i.tz = uitofp reassoc nsz arcp contract afn nneg i64 %.0187266 to float
  %i.ua = fmul reassoc nnan nsz arcp contract afn float %i.tz, f0x3C340B41 ; 3 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %i.ua, %4
  %i.uc = fadd reassoc nsz arcp contract afn float %i.ts, %i.ub ; 2 uses
  %i.ud = fmul reassoc nsz arcp contract afn float %i.ua, %i.qf
  %i.ue = fadd reassoc nsz arcp contract afn float %i.tu, %i.ud
  %i.uf = fmul reassoc nsz arcp contract afn float %i.uc, 1.150000e+00
  %i.ug = fmul reassoc nsz arcp contract afn float %i.ue, 6.600000e-01
  %5 = fmul reassoc nsz arcp contract afn float %i.uc, f0x3EAE147A
  %6 = fmul reassoc nsz arcp contract afn float %i.ua, %i.qg
  %7 = fadd reassoc nsz arcp contract afn float %i.ug, %5 ; 2 uses
  %8 = fadd reassoc nsz arcp contract afn float %i.tw, %6 ; 3 uses
  %i.uh = fmul reassoc nsz arcp contract afn float %8, f0x3E199998
  %i.ui = fsub reassoc nsz arcp contract afn float %i.uf, %i.uh ; 2 uses
  %.reass259 = fmul reassoc nsz arcp contract afn float %i.ui, f0x382DF9B4
  %.reass = fmul reassoc nsz arcp contract afn float %7, f0x387344EC
  %.reass258 = fmul reassoc nsz arcp contract afn float %8, 1.464800e-06
  %i.uj = fadd reassoc nsz arcp contract afn float %.reass259, %.reass258
  %i.uk = fadd reassoc nsz arcp contract afn float %i.uj, %.reass
  %i.ul = insertelement <2 x float> poison, float %i.ui, i64 0
  %i.um = shufflevector <2 x float> %i.ul, <2 x float> poison, <2 x i32> zeroinitializer
  %i.un = fmul reassoc nsz arcp contract afn <2 x float> %i.um, <float -2.015100e-05, float -1.660080e-06>
  %9 = insertelement <2 x float> poison, float %7, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = fmul reassoc nsz arcp contract afn <2 x float> %10, <float f0x38EB0462, float 2.648000e-05>
  %11 = insertelement <2 x float> poison, float %8, i64 0
  %i.up = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uq = fmul reassoc nsz arcp contract afn <2 x float> %i.up, <float 5.310080e-06, float f0x388C30BE>
  %i.ur = fadd reassoc nsz arcp contract afn <2 x float> %i.un, %i.uq
  %i.us = fadd reassoc nsz arcp contract afn <2 x float> %i.ur, %i.uo
  %i.ut = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uk, float 0.000000e+00)
  %i.uu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ut, float f0x3E232000) ; 2 uses
  %i.uv = fmul reassoc nnan nsz arcp contract afn float %i.uu, f0x4196D000
  %i.uw = fadd reassoc nsz arcp contract afn float %i.uv, f0x3F560000
  %i.ux = fmul reassoc nnan nsz arcp contract afn float %i.uu, 1.868750e+01
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, 1.000000e+00
  %i.uz = fdiv reassoc nsz arcp contract afn float %i.uw, %i.uy
  %i.va = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.uz, float f0x430608CD) ; 3 uses
  %i.vb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.us, <2 x float> zeroinitializer)
  %i.vc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vb, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.vd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.vc, splat (float f0x4196D000)
  %i.ve = fadd reassoc nsz arcp contract afn <2 x float> %i.vd, splat (float f0x3F560000)
  %i.vf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.vc, splat (float 1.868750e+01)
  %i.vg = fadd reassoc nsz arcp contract afn <2 x float> %i.vf, splat (float 1.000000e+00)
  %i.vh = fdiv reassoc nsz arcp contract afn <2 x float> %i.ve, %i.vg
  %i.vi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vh, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.vj = extractelement <2 x float> %i.vi, i64 0 ; 2 uses
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, %i.va
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, 5.000000e-01
  %i.vm = extractelement <2 x float> %i.vi, i64 1 ; 2 uses
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, 0.000000e+00
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vl, %i.vn ; 2 uses
  %i.vp = fmul reassoc nsz arcp contract afn float %i.va, 3.524000e+00
  %i.vq = fmul reassoc nsz arcp contract afn float %i.vj, f0x40822279
  %i.vr = fsub reassoc nsz arcp contract afn float %i.vp, %i.vq
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vm, 5.427080e-01
  %i.vt = fadd reassoc nsz arcp contract afn float %i.vr, %i.vs ; 2 uses
  %i.vu = fmul reassoc nsz arcp contract afn float %i.va, 1.990760e-01
  %i.vv = fmul reassoc nsz arcp contract afn <2 x float> %i.vi, <float f0x3F8C63E9, float f0xBFA5DF3B> ; 2 uses
  %i.vw = extractelement <2 x float> %i.vv, i64 0
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vw, %i.vu
  %i.vy = extractelement <2 x float> %i.vv, i64 1
  %i.vz = fadd reassoc nsz arcp contract afn float %i.vx, %i.vy ; 2 uses
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vo, 4.400000e-01
  %i.wb = fmul reassoc nsz arcp contract afn float %i.vo, 5.600000e-01
  %i.wc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wb
  %i.wd = fdiv reassoc nsz arcp contract afn float %i.wa, %i.wc
  %i.we = fadd reassoc nsz arcp contract afn float %i.wd, -1.629550e-11
  %i.wf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.we, float 0.000000e+00) ; 2 uses
  %i.wg = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.vz, float noundef %i.vt) #25
  %i.wh = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.vz, float %i.vt)
  %i.wi = fcmp reassoc nsz arcp contract afn ogt float %i.wf, 0.000000e+00
  %i.wj = fdiv reassoc nsz arcp contract afn float %i.wg, %i.wf
  %i.wk = select reassoc nsz arcp contract afn i1 %i.wi, float %i.wj, float 0.000000e+00
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wh, f0x42A2A806
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, 2.555000e+02
  %i.wn = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.wm)
  %i.wo = fptosi float %i.wn to i32               ; 2 uses
  %i.wp = lshr i32 %i.wo, 22
  %i.wq = and i32 %i.wp, 512
  %i.wr = add nsw i32 %i.wq, %i.wo                ; 2 uses
  %.inv = icmp slt i32 %i.wr, 512
  %.neg = select i1 %.inv, i32 0, i32 -512
  %i.ws = add i32 %.neg, %i.wr
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.wt ; 2 uses
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !12
  %i.ww = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wv, float %i.wk)
  store float %i.ww, ptr %i.wu, align 4, !tbaa !12
  %i.wx = add nuw nsw i64 %.0187266, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.wx, 92
  br i1 %exitcond.not, label %bb.ad, label %bb.ae

.loopexit:                                        ; preds = %vec.epilog.scalar.ph
  %i.wy = getelementptr inbounds nuw i8, ptr %i.py, i64 2040 ; 3 uses
  %i.wz = load float, ptr %i.wy, align 8, !tbaa !12
  %i.xa = getelementptr inbounds nuw i8, ptr %i.py, i64 2044 ; 4 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !12
  %i.xc = fadd reassoc nsz arcp contract afn float %i.xb, %i.wz
  %i.xd = load float, ptr %i.py, align 64, !tbaa !12
  %i.xe = fadd reassoc nsz arcp contract afn float %i.xc, %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.py, i64 4 ; 3 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !12
  %i.xh = fadd reassoc nsz arcp contract afn float %i.xe, %i.xg
  %i.xi = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.xj = load float, ptr %i.xi, align 8, !tbaa !12
  %i.xk = fadd reassoc nsz arcp contract afn float %i.xh, %i.xj
  %i.xl = fmul reassoc nsz arcp contract afn float %i.xk, 2.000000e-01
  store float %i.xl, ptr %i.qm, align 4, !tbaa !12
  %i.xm = load float, ptr %i.xa, align 4, !tbaa !12
  %i.xn = load float, ptr %i.py, align 64, !tbaa !12
  %i.xo = fadd reassoc nsz arcp contract afn float %i.xn, %i.xm
  %i.xp = load float, ptr %i.xf, align 4, !tbaa !12
  %i.xq = fadd reassoc nsz arcp contract afn float %i.xo, %i.xp
  %i.xr = load float, ptr %i.xi, align 8, !tbaa !12
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xq, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !12
  %i.xv = fadd reassoc nsz arcp contract afn float %i.xs, %i.xu
  %i.xw = fmul reassoc nsz arcp contract afn float %i.xv, 2.000000e-01
  %i.xx = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  store float %i.xw, ptr %i.xx, align 4, !tbaa !12
  %i.xy = getelementptr inbounds nuw i8, ptr %i.py, i64 2036 ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !12
  %i.ya = load float, ptr %i.wy, align 8, !tbaa !12
  %i.yb = fadd reassoc nsz arcp contract afn float %i.ya, %i.xz
  %i.yc = load float, ptr %i.xa, align 4, !tbaa !12
  %i.yd = fadd reassoc nsz arcp contract afn float %i.yb, %i.yc
  %i.ye = load float, ptr %i.py, align 64, !tbaa !12
  %i.yf = fadd reassoc nsz arcp contract afn float %i.yd, %i.ye
  %i.yg = load float, ptr %i.xf, align 4, !tbaa !12
  %i.yh = fadd reassoc nsz arcp contract afn float %i.yf, %i.yg
  %i.yi = fmul reassoc nsz arcp contract afn float %i.yh, 2.000000e-01
  %i.yj = getelementptr inbounds nuw i8, ptr %i.qm, i64 2044
  store float %i.yi, ptr %i.yj, align 4, !tbaa !12
  %i.yk = getelementptr inbounds nuw i8, ptr %i.py, i64 2032
  %i.yl = load float, ptr %i.yk, align 16, !tbaa !12
  %i.ym = load float, ptr %i.xy, align 4, !tbaa !12
  %i.yn = fadd reassoc nsz arcp contract afn float %i.ym, %i.yl
  %i.yo = load float, ptr %i.wy, align 8, !tbaa !12
  %i.yp = fadd reassoc nsz arcp contract afn float %i.yn, %i.yo
  %i.yq = load float, ptr %i.xa, align 4, !tbaa !12
  %i.yr = fadd reassoc nsz arcp contract afn float %i.yp, %i.yq
  %i.ys = load float, ptr %i.py, align 64, !tbaa !12
  %i.yt = fadd reassoc nsz arcp contract afn float %i.yr, %i.ys
  %i.yu = fmul reassoc nsz arcp contract afn float %i.yt, 2.000000e-01
  %i.yv = getelementptr inbounds nuw i8, ptr %i.qm, i64 2040
  store float %i.yu, ptr %i.yv, align 4, !tbaa !12
  br label %.sink.split

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.0269 = phi i64 [ %.0269.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.zw, %vec.epilog.scalar.ph ] ; 6 uses
  %i.yw = getelementptr [4 x i8], ptr %i.py, i64 %.0269 ; 2 uses
  %i.yx = getelementptr i8, ptr %i.yw, i64 -8
  %i.yy = or disjoint i64 %.0269, 1               ; 2 uses
  %i.yz = load <4 x float>, ptr %i.yx, align 4, !tbaa !12
  %i.za = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.zb = load float, ptr %i.za, align 4, !tbaa !12
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zb, <4 x float> %i.yz)
  %i.zc = fmul reassoc nsz arcp contract afn float %op.rdx, 2.000000e-01
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %.0269
  store float %i.zc, ptr %i.zd, align 4, !tbaa !12
  %i.ze = getelementptr [4 x i8], ptr %i.py, i64 %i.yy ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 -8
  %i.zg = add nuw nsw i64 %.0269, 2               ; 2 uses
  %i.zh = load <4 x float>, ptr %i.zf, align 4, !tbaa !12
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !12
  %op.rdx.1 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zj, <4 x float> %i.zh)
  %i.zk = fmul reassoc nsz arcp contract afn float %op.rdx.1, 2.000000e-01
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.yy
  store float %i.zk, ptr %i.zl, align 4, !tbaa !12
  %i.zm = getelementptr [4 x i8], ptr %i.py, i64 %i.zg ; 2 uses
  %i.zn = getelementptr i8, ptr %i.zm, i64 -8
  %i.zo = add nuw nsw i64 %.0269, 3               ; 2 uses
  %i.zp = load <4 x float>, ptr %i.zn, align 4, !tbaa !12
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !12
  %op.rdx.2 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zr, <4 x float> %i.zp)
  %i.zs = fmul reassoc nsz arcp contract afn float %op.rdx.2, 2.000000e-01
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.zg
  store float %i.zs, ptr %i.zt, align 4, !tbaa !12
  %i.zu = getelementptr [4 x i8], ptr %i.py, i64 %i.zo ; 2 uses
  %i.zv = getelementptr i8, ptr %i.zu, i64 -8
  %i.zw = add nuw nsw i64 %.0269, 4               ; 2 uses
  %i.zx = load <4 x float>, ptr %i.zv, align 4, !tbaa !12
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !12
  %op.rdx.3 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zz, <4 x float> %i.zx)
  %i.aaa = fmul reassoc nsz arcp contract afn float %op.rdx.3, 2.000000e-01
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.zo
  store float %i.aaa, ptr %i.aab, align 4, !tbaa !12
  %exitcond272.not.3 = icmp eq i64 %i.zw, 510
  br i1 %exitcond272.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !250

bb.af:                                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.pw, i8 0, i64 2048, i1 false), !tbaa !12
  %i.aac = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aac, i64 64) ]
  %.not.i.i = icmp eq ptr %i.aac, null
  br i1 %.not.i.i, label %dt_calloc_align_float.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %i.aac, i8 0, i64 2048, i1 false)
  br label %dt_calloc_align_float.exit.i

dt_calloc_align_float.exit.i:                     ; preds = %bb.ag, %bb.af
  %i.aad = extractelement <4 x float> %i.pu, i64 2
  %i.aae = fmul reassoc nsz arcp contract afn float %i.aad, 0.000000e+00 ; 2 uses
  %i.aaf = fmul reassoc nsz arcp contract afn <8 x float> %i.ph, zeroinitializer ; 3 uses
  %i.aag = shufflevector <8 x float> %i.ph, <8 x float> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3, i32 1>
  %i.aah = fmul reassoc nsz arcp contract afn <8 x float> %i.aag, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aai = fadd reassoc nsz arcp contract afn <8 x float> %i.aaf, %i.aah ; 5 uses
  %i.aaj = extractelement <8 x float> %i.aai, i64 3
  %i.aak = fadd reassoc nsz arcp contract afn float %i.aaj, %i.aae
  %.sroa.0116.0.vec.insert.i = insertelement <4 x float> <float poison, float poison, float poison, float undef>, float %i.aak, i64 0
  %i.aal = extractelement <8 x float> %i.aai, i64 4
  %i.aam = extractelement <8 x float> %i.aai, i64 5
  %i.aan = extractelement <8 x float> %i.aai, i64 0
  %i.aao = fadd reassoc nsz arcp contract afn float %i.aan, %i.aae
  %.sroa.0114.0.vec.insert.i = insertelement <4 x float> <float poison, float poison, float poison, float undef>, float %i.aao, i64 0
  %i.aap = fmul reassoc nsz arcp contract afn <4 x float> %i.pu, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 3 uses
  %i.aaq = extractelement <4 x float> %i.aap, i64 0
  %i.aar = fadd reassoc nsz arcp contract afn float %i.aal, %i.aaq
  %.sroa.0116.4.vec.insert.i = insertelement <4 x float> %.sroa.0116.0.vec.insert.i, float %i.aar, i64 1
  %i.aas = extractelement <4 x float> %i.aap, i64 1
  %i.aat = fadd reassoc nsz arcp contract afn float %i.aam, %i.aas
end_hunk_0
