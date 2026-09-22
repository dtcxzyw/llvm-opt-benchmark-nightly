Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rasterfile?download=true
inline.NumInlined: 32
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@process:bb.a
  br i1 %i.nj, label %.loopexit.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.prol.loopexit, %.lr.ph.split.us.i.i
  %.0153193.us.i.i = phi i64 [ %i.ov, %.lr.ph.split.us.i.i ], [ %.0153193.us.i.i.unr, %.lr.ph.split.us.i.i.prol.loopexit ] ; 4 uses
  %i.nk = mul i64 %.0153193.us.i.i, 6
  %i.nl = getelementptr i8, ptr %i.ej, i64 %i.nk
  %i.nm = getelementptr i8, ptr %i.nl, i64 2
  %i.nn = load <4 x i8>, ptr %i.nm, align 1, !tbaa !56
  %i.no = uitofp <4 x i8> %i.nn to <4 x float>    ; 2 uses
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.nq = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.np, splat (float 2.560000e+02)
  %i.nr = shufflevector <4 x float> %i.no, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ns = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.nq, %i.nr ; 2 uses
  %i.nt = extractelement <2 x float> %i.ns, i64 0
  %i.nu = fmul reassoc nnan nsz arcp contract afn float %i.nt, f0x37800080
  %i.nv = extractelement <2 x float> %i.ns, i64 1
  %i.nw = fmul reassoc nnan nsz arcp contract afn float %i.nv, f0x37800080 ; 2 uses
  %.1151.us.i.i = select nsz i1 %.not184.i.i, float 0.000000e+00, float %i.nu ; 2 uses
  %i.nx = fcmp reassoc nsz arcp contract afn ogt float %.1151.us.i.i, %i.nw
  %i.ny = select i1 %.not185.i.i, i1 true, i1 %i.nx
  %.2152.us.i.i = select nsz i1 %i.ny, float %.1151.us.i.i, float %i.nw ; 2 uses
  %i.nz = fcmp reassoc nsz arcp contract afn ole float %.2152.us.i.i, 1.000000e+00
  %i.oa = select reassoc nsz arcp contract afn i1 %i.nz, float %.2152.us.i.i, float 1.000000e+00
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0153193.us.i.i
  store float %i.oa, ptr %i.ob, align 4, !tbaa !13
  %i.oc = add nuw i64 %.0153193.us.i.i, 1         ; 2 uses
  %i.od = mul i64 %i.oc, 6
  %i.oe = getelementptr i8, ptr %i.ej, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 2
  %i.og = load <4 x i8>, ptr %i.of, align 1, !tbaa !56
  %i.oh = uitofp <4 x i8> %i.og to <4 x float>    ; 2 uses
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.oj = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.oi, splat (float 2.560000e+02)
  %i.ok = shufflevector <4 x float> %i.oh, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ol = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.oj, %i.ok ; 2 uses
  %i.om = extractelement <2 x float> %i.ol, i64 0
  %i.on = fmul reassoc nnan nsz arcp contract afn float %i.om, f0x37800080
  %i.oo = extractelement <2 x float> %i.ol, i64 1
  %i.op = fmul reassoc nnan nsz arcp contract afn float %i.oo, f0x37800080 ; 2 uses
  %.1151.us.i.i.1 = select nsz i1 %.not184.i.i, float 0.000000e+00, float %i.on ; 2 uses
  %i.oq = fcmp reassoc nsz arcp contract afn ogt float %.1151.us.i.i.1, %i.op
  %i.or = select i1 %.not185.i.i, i1 true, i1 %i.oq
  %.2152.us.i.i.1 = select nsz i1 %i.or, float %.1151.us.i.i.1, float %i.op ; 2 uses
  %i.os = fcmp reassoc nsz arcp contract afn ole float %.2152.us.i.i.1, 1.000000e+00
  %i.ot = select reassoc nsz arcp contract afn i1 %i.os, float %.2152.us.i.i.1, float 1.000000e+00
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.oc
  store float %i.ot, ptr %i.ou, align 4, !tbaa !13
  %i.ov = add nuw i64 %.0153193.us.i.i, 2         ; 2 uses
  %exitcond212.not.i.i.1 = icmp eq i64 %i.ov, %i.ev
  br i1 %exitcond212.not.i.i.1, label %.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !122

.preheader189.i.i:                                ; preds = %bb.u
  br i1 %.not203.i.i, label %.loopexit.i.i, label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %.preheader189.i.i
  %i.ow = and i32 %i.dt, 1
  %.not186.i.i = icmp eq i32 %i.ow, 0             ; 8 uses
  %i.ox = and i32 %i.dt, 2
  %.not187.i.i = icmp eq i32 %i.ox, 0
  %i.oy = and i32 %i.dt, 4
  %.not188.i.i = icmp eq i32 %i.oy, 0             ; 2 uses
  br i1 %.not187.i.i, label %.lr.ph195.split.us.i.i, label %.lr.ph195.split.i.i

.lr.ph195.split.us.i.i:                           ; preds = %.lr.ph195.i.i
  br i1 %.not188.i.i, label %.lr.ph195.split.us.split.us.i.i, label %.lr.ph195.split.us.split.i.i.preheader

.lr.ph195.split.us.split.i.i.preheader:           ; preds = %.lr.ph195.split.us.i.i
  %xtraiter440 = and i64 %i.ev, 1
  %i.oz = icmp eq i64 %i.ev, 1
  br i1 %i.oz, label %.lr.ph195.split.us.split.i.i.epil.preheader, label %.lr.ph195.split.us.split.i.i.preheader.new

.lr.ph195.split.us.split.i.i.preheader.new:       ; preds = %.lr.ph195.split.us.split.i.i.preheader
  %unroll_iter444 = and i64 %i.ev, -2
  br label %.lr.ph195.split.us.split.i.i

.lr.ph195.split.us.split.us.i.i:                  ; preds = %.lr.ph195.split.us.i.i
  br i1 %.not186.i.i, label %.lr.ph195.split.us.split.us.split.us.preheader.i.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph195.split.us.split.us.i.i
  %min.iters.check248 = icmp ult i64 %i.ev, 5
  br i1 %min.iters.check248, label %.lr.ph195.split.us.split.us.split.i.i.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %iter.check
  %i.pa = mul nsw i64 %i.et, %i.eu                ; 2 uses
  %i.pb = shl i64 %i.pa, 2
  %scevgep242 = getelementptr i8, ptr %i.ex, i64 %i.pb
  %i.pc = mul i64 %i.pa, 3
  %i.pd = getelementptr i8, ptr %i.ej, i64 %i.pc
  %scevgep243 = getelementptr i8, ptr %i.pd, i64 -2
  %bound0244 = icmp ult ptr %i.ex, %scevgep243
  %bound1245 = icmp ult ptr %i.ej, %scevgep242
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %.lr.ph195.split.us.split.us.split.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck241
  %min.iters.check249 = icmp ult i64 %i.ev, 33
  br i1 %min.iters.check249, label %vec.epilog.ph, label %vector.ph250

vector.ph250:                                     ; preds = %vector.main.loop.iter.check
  %i.pe = and i64 %i.ev, 31                       ; 2 uses
  %i.pf = icmp eq i64 %i.pe, 0
  %i.pg = select i1 %i.pf, i64 32, i64 %i.pe      ; 2 uses
  %n.vec251 = sub i64 %i.ev, %i.pg                ; 3 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next262, %vector.body252 ] ; 6 uses
  %i.ph = mul i64 %index253, 3
  %i.pi = mul i64 %index253, 3
  %i.pj = mul i64 %index253, 3
  %i.pk = mul i64 %index253, 3
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ph
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.pi
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = getelementptr i8, ptr %i.ej, i64 %i.pj
  %i.pp = getelementptr i8, ptr %i.po, i64 48
  %i.pq = getelementptr i8, ptr %i.ej, i64 %i.pk
  %i.pr = getelementptr i8, ptr %i.pq, i64 72
  %wide.vec254 = load <24 x i8>, ptr %i.pl, align 1, !tbaa !56, !alias.scope !192
  %strided.vec255 = shufflevector <24 x i8> %wide.vec254, <24 x i8> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec256 = load <24 x i8>, ptr %i.pn, align 1, !tbaa !56, !alias.scope !192
  %strided.vec257 = shufflevector <24 x i8> %wide.vec256, <24 x i8> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec258 = load <24 x i8>, ptr %i.pp, align 1, !tbaa !56, !alias.scope !192
  %strided.vec259 = shufflevector <24 x i8> %wide.vec258, <24 x i8> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %wide.vec260 = load <24 x i8>, ptr %i.pr, align 1, !tbaa !56, !alias.scope !192
  %strided.vec261 = shufflevector <24 x i8> %wide.vec260, <24 x i8> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.ps = uitofp <8 x i8> %strided.vec255 to <8 x float>
  %i.pt = uitofp <8 x i8> %strided.vec257 to <8 x float>
  %i.pu = uitofp <8 x i8> %strided.vec259 to <8 x float>
  %i.pv = uitofp <8 x i8> %strided.vec261 to <8 x float>
  %i.pw = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ps, splat (float f0x3B808081) ; 2 uses
  %i.px = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.pt, splat (float f0x3B808081) ; 2 uses
  %i.py = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.pu, splat (float f0x3B808081) ; 2 uses
  %i.pz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.pv, splat (float f0x3B808081) ; 2 uses
  %i.qa = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.pw, splat (float 1.000000e+00)
  %i.qb = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.px, splat (float 1.000000e+00)
  %i.qc = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.py, splat (float 1.000000e+00)
  %i.qd = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.pz, splat (float 1.000000e+00)
  %i.qe = select reassoc nsz arcp contract afn <8 x i1> %i.qa, <8 x float> %i.pw, <8 x float> splat (float 1.000000e+00)
  %i.qf = select reassoc nsz arcp contract afn <8 x i1> %i.qb, <8 x float> %i.px, <8 x float> splat (float 1.000000e+00)
  %i.qg = select reassoc nsz arcp contract afn <8 x i1> %i.qc, <8 x float> %i.py, <8 x float> splat (float 1.000000e+00)
  %i.qh = select reassoc nsz arcp contract afn <8 x i1> %i.qd, <8 x float> %i.pz, <8 x float> splat (float 1.000000e+00)
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index253 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 96
  store <8 x float> %i.qe, ptr %i.qi, align 64, !tbaa !13, !alias.scope !193, !noalias !192
  store <8 x float> %i.qf, ptr %i.qj, align 32, !tbaa !13, !alias.scope !193, !noalias !192
  store <8 x float> %i.qg, ptr %i.qk, align 64, !tbaa !13, !alias.scope !193, !noalias !192
  store <8 x float> %i.qh, ptr %i.ql, align 32, !tbaa !13, !alias.scope !193, !noalias !192
  %index.next262 = add nuw i64 %index253, 32      ; 2 uses
  %i.qm = icmp eq i64 %index.next262, %n.vec251
  br i1 %i.qm, label %vec.epilog.iter.check, label %vector.body252, !llvm.loop !126

vec.epilog.iter.check:                            ; preds = %vector.body252
  %min.epilog.iters.check = icmp samesign ult i64 %i.pg, 5
  br i1 %min.epilog.iters.check, label %.lr.ph195.split.us.split.us.split.i.i.preheader, label %vec.epilog.ph, !prof !194

.lr.ph195.split.us.split.us.split.i.i.preheader:  ; preds = %vec.epilog.vector.body, %vector.memcheck241, %iter.check, %vec.epilog.iter.check
  %.0157194.us.us.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck241 ], [ %n.vec251, %vec.epilog.iter.check ], [ %n.vec264, %vec.epilog.vector.body ] ; 4 uses
  %i.qn = sub i64 %i.ev, %.0157194.us.us.i.i.ph
  %xtraiter446 = and i64 %i.qn, 3                 ; 2 uses
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.lr.ph195.split.us.split.us.split.i.i.prol.loopexit, label %.lr.ph195.split.us.split.us.split.i.i.prol

.lr.ph195.split.us.split.us.split.i.i.prol:       ; preds = %.lr.ph195.split.us.split.us.split.i.i.preheader, %.lr.ph195.split.us.split.us.split.i.i.prol
  %.0157194.us.us.i.i.prol = phi i64 [ %i.qw, %.lr.ph195.split.us.split.us.split.i.i.prol ], [ %.0157194.us.us.i.i.ph, %.lr.ph195.split.us.split.us.split.i.i.preheader ] ; 3 uses
  %prol.iter448 = phi i64 [ %prol.iter448.next, %.lr.ph195.split.us.split.us.split.i.i.prol ], [ 0, %.lr.ph195.split.us.split.us.split.i.i.preheader ]
  %i.qo = mul i64 %.0157194.us.us.i.i.prol, 3
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !56
  %i.qr = uitofp i8 %i.qq to float
  %i.qs = fmul reassoc nnan nsz arcp contract afn float %i.qr, f0x3B808081 ; 2 uses
  %i.qt = fcmp reassoc nsz arcp contract afn ole float %i.qs, 1.000000e+00
  %i.qu = select reassoc nsz arcp contract afn i1 %i.qt, float %i.qs, float 1.000000e+00
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0157194.us.us.i.i.prol
  store float %i.qu, ptr %i.qv, align 4, !tbaa !13
  %i.qw = add nuw i64 %.0157194.us.us.i.i.prol, 1 ; 2 uses
  %prol.iter448.next = add i64 %prol.iter448, 1   ; 2 uses
  %prol.iter448.cmp.not = icmp eq i64 %prol.iter448.next, %xtraiter446
  br i1 %prol.iter448.cmp.not, label %.lr.ph195.split.us.split.us.split.i.i.prol.loopexit, label %.lr.ph195.split.us.split.us.split.i.i.prol, !llvm.loop !127

.lr.ph195.split.us.split.us.split.i.i.prol.loopexit: ; preds = %.lr.ph195.split.us.split.us.split.i.i.prol, %.lr.ph195.split.us.split.us.split.i.i.preheader
  %.0157194.us.us.i.i.unr = phi i64 [ %.0157194.us.us.i.i.ph, %.lr.ph195.split.us.split.us.split.i.i.preheader ], [ %i.qw, %.lr.ph195.split.us.split.us.split.i.i.prol ]
  %i.qx = sub i64 %.0157194.us.us.i.i.ph, %i.ev
  %i.qy = icmp ugt i64 %i.qx, -4
  br i1 %i.qy, label %.loopexit.i.i, label %.lr.ph195.split.us.split.us.split.i.i

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec251, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.qz = and i64 %i.ev, 3                        ; 2 uses
  %i.ra = icmp eq i64 %i.qz, 0
  %i.rb = select i1 %i.ra, i64 4, i64 %i.qz
  %n.vec264 = sub i64 %i.ev, %i.rb                ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index265 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next268, %vec.epilog.vector.body ] ; 3 uses
  %i.rc = mul i64 %index265, 3
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.rc
  %7 = load <10 x i8>, ptr %i.rd, align 1, !tbaa !56, !alias.scope !192
  %strided.vec267 = shufflevector <10 x i8> %7, <10 x i8> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.re = uitofp <4 x i8> %strided.vec267 to <4 x float>
  %i.rf = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.re, splat (float f0x3B808081) ; 2 uses
  %i.rg = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.rf, splat (float 1.000000e+00)
  %i.rh = select reassoc nsz arcp contract afn <4 x i1> %i.rg, <4 x float> %i.rf, <4 x float> splat (float 1.000000e+00)
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index265
  store <4 x float> %i.rh, ptr %i.ri, align 4, !tbaa !13, !alias.scope !193, !noalias !192
  %index.next268 = add nuw i64 %index265, 4       ; 2 uses
  %i.rj = icmp eq i64 %index.next268, %n.vec264
  br i1 %i.rj, label %.lr.ph195.split.us.split.us.split.i.i.preheader, label %vec.epilog.vector.body, !llvm.loop !128

.lr.ph195.split.us.split.us.split.us.preheader.i.i: ; preds = %.lr.ph195.split.us.split.us.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.ex, i8 0, i64 %i.ew, i1 false), !tbaa !13
  br label %.loopexit.i.i

.lr.ph195.split.us.split.us.split.i.i:            ; preds = %.lr.ph195.split.us.split.us.split.i.i.prol.loopexit, %.lr.ph195.split.us.split.us.split.i.i
  %.0157194.us.us.i.i = phi i64 [ %i.st, %.lr.ph195.split.us.split.us.split.i.i ], [ %.0157194.us.us.i.i.unr, %.lr.ph195.split.us.split.us.split.i.i.prol.loopexit ] ; 6 uses
  %i.rk = mul i64 %.0157194.us.us.i.i, 3
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !56
  %i.rn = uitofp i8 %i.rm to float
  %i.ro = fmul reassoc nnan nsz arcp contract afn float %i.rn, f0x3B808081 ; 2 uses
  %i.rp = fcmp reassoc nsz arcp contract afn ole float %i.ro, 1.000000e+00
  %i.rq = select reassoc nsz arcp contract afn i1 %i.rp, float %i.ro, float 1.000000e+00
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0157194.us.us.i.i
  store float %i.rq, ptr %i.rr, align 4, !tbaa !13
  %i.rs = add nuw i64 %.0157194.us.us.i.i, 1      ; 2 uses
  %i.rt = mul i64 %i.rs, 3
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !56
  %i.rw = uitofp i8 %i.rv to float
  %i.rx = fmul reassoc nnan nsz arcp contract afn float %i.rw, f0x3B808081 ; 2 uses
  %i.ry = fcmp reassoc nsz arcp contract afn ole float %i.rx, 1.000000e+00
  %i.rz = select reassoc nsz arcp contract afn i1 %i.ry, float %i.rx, float 1.000000e+00
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.rs
  store float %i.rz, ptr %i.sa, align 4, !tbaa !13
  %i.sb = add nuw i64 %.0157194.us.us.i.i, 2      ; 2 uses
  %i.sc = mul i64 %i.sb, 3
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !56
  %i.sf = uitofp i8 %i.se to float
  %i.sg = fmul reassoc nnan nsz arcp contract afn float %i.sf, f0x3B808081 ; 2 uses
  %i.sh = fcmp reassoc nsz arcp contract afn ole float %i.sg, 1.000000e+00
  %i.si = select reassoc nsz arcp contract afn i1 %i.sh, float %i.sg, float 1.000000e+00
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.sb
  store float %i.si, ptr %i.sj, align 4, !tbaa !13
  %i.sk = add nuw i64 %.0157194.us.us.i.i, 3      ; 2 uses
  %i.sl = mul i64 %i.sk, 3
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !56
  %i.so = uitofp i8 %i.sn to float
  %i.sp = fmul reassoc nnan nsz arcp contract afn float %i.so, f0x3B808081 ; 2 uses
  %i.sq = fcmp reassoc nsz arcp contract afn ole float %i.sp, 1.000000e+00
  %i.sr = select reassoc nsz arcp contract afn i1 %i.sq, float %i.sp, float 1.000000e+00
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.sk
  store float %i.sr, ptr %i.ss, align 4, !tbaa !13
  %i.st = add nuw i64 %.0157194.us.us.i.i, 4      ; 2 uses
  %exitcond217.not.i.i.3 = icmp eq i64 %i.st, %i.ev
  br i1 %exitcond217.not.i.i.3, label %.loopexit.i.i, label %.lr.ph195.split.us.split.us.split.i.i, !llvm.loop !129

.lr.ph195.split.us.split.i.i:                     ; preds = %bb.x, %.lr.ph195.split.us.split.i.i.preheader.new
  %.0157194.us.i.i = phi i64 [ 0, %.lr.ph195.split.us.split.i.i.preheader.new ], [ %i.tx, %bb.x ] ; 4 uses
  %niter445 = phi i64 [ 0, %.lr.ph195.split.us.split.i.i.preheader.new ], [ %niter445.next.1, %bb.x ]
  %i.su = mul i64 %.0157194.us.i.i, 3             ; 2 uses
  br i1 %.not186.i.i, label %.lr.ph195.split.us.split.i.i.1, label %bb.v

bb.v:                                             ; preds = %.lr.ph195.split.us.split.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !56
  %i.sx = uitofp i8 %i.sw to float
  %i.sy = fmul reassoc nnan nsz arcp contract afn float %i.sx, f0x3B808081
  br label %.lr.ph195.split.us.split.i.i.1

.lr.ph195.split.us.split.i.i.1:                   ; preds = %bb.v, %.lr.ph195.split.us.split.i.i
  %.0154.us.i.i = phi nsz float [ %i.sy, %bb.v ], [ 0.000000e+00, %.lr.ph195.split.us.split.i.i ] ; 2 uses
  %i.sz = getelementptr i8, ptr %i.ej, i64 %i.su
  %i.ta = getelementptr i8, ptr %i.sz, i64 2
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !56
  %i.tc = uitofp i8 %i.tb to float
  %i.td = fmul reassoc nnan nsz arcp contract afn float %i.tc, f0x3B808081 ; 2 uses
  %i.te = fcmp reassoc nsz arcp contract afn ogt float %.0154.us.i.i, %i.td
  %.1155..us.i.i = select reassoc nsz arcp contract afn i1 %i.te, float %.0154.us.i.i, float %i.td ; 2 uses
  %i.tf = fcmp reassoc nsz arcp contract afn ole float %.1155..us.i.i, 1.000000e+00
  %i.tg = select reassoc nsz arcp contract afn i1 %i.tf, float %.1155..us.i.i, float 1.000000e+00
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.0157194.us.i.i
  store float %i.tg, ptr %i.th, align 8, !tbaa !13
  %i.ti = or disjoint i64 %.0157194.us.i.i, 1     ; 2 uses
  %i.tj = mul i64 %i.ti, 3                        ; 2 uses
  br i1 %.not186.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph195.split.us.split.i.i.1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !56
  %i.tm = uitofp i8 %i.tl to float
  %i.tn = fmul reassoc nnan nsz arcp contract afn float %i.tm, f0x3B808081
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph195.split.us.split.i.i.1
  %.0154.us.i.i.1 = phi nsz float [ %i.tn, %bb.w ], [ 0.000000e+00, %.lr.ph195.split.us.split.i.i.1 ] ; 2 uses
  %i.to = getelementptr i8, ptr %i.ej, i64 %i.tj
  %i.tp = getelementptr i8, ptr %i.to, i64 2
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !56
  %i.tr = uitofp i8 %i.tq to float
  %i.ts = fmul reassoc nnan nsz arcp contract afn float %i.tr, f0x3B808081 ; 2 uses
  %i.tt = fcmp reassoc nsz arcp contract afn ogt float %.0154.us.i.i.1, %i.ts
  %.1155..us.i.i.1 = select reassoc nsz arcp contract afn i1 %i.tt, float %.0154.us.i.i.1, float %i.ts ; 2 uses
  %i.tu = fcmp reassoc nsz arcp contract afn ole float %.1155..us.i.i.1, 1.000000e+00
  %i.tv = select reassoc nsz arcp contract afn i1 %i.tu, float %.1155..us.i.i.1, float 1.000000e+00
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ti
  store float %i.tv, ptr %i.tw, align 4, !tbaa !13
  %i.tx = add nuw i64 %.0157194.us.i.i, 2         ; 2 uses
  %niter445.next.1 = add i64 %niter445, 2         ; 2 uses
  %niter445.ncmp.1 = icmp eq i64 %niter445.next.1, %unroll_iter444
  br i1 %niter445.ncmp.1, label %.loopexit.i.i.loopexit415.unr-lcssa, label %.lr.ph195.split.us.split.i.i

.lr.ph195.split.i.i:                              ; preds = %.lr.ph195.i.i
  br i1 %.not188.i.i, label %.lr.ph195.split.split.us.i.i, label %.lr.ph195.split.split.i.i.preheader

.lr.ph195.split.split.i.i.preheader:              ; preds = %.lr.ph195.split.i.i
  %xtraiter429 = and i64 %i.ev, 1
  %i.ty = icmp eq i64 %i.ev, 1
  br i1 %i.ty, label %.lr.ph195.split.split.i.i.epil.preheader, label %.lr.ph195.split.split.i.i.preheader.new

.lr.ph195.split.split.i.i.preheader.new:          ; preds = %.lr.ph195.split.split.i.i.preheader
  %unroll_iter433 = and i64 %i.ev, -2
  br label %.lr.ph195.split.split.i.i

.lr.ph195.split.split.us.i.i:                     ; preds = %.lr.ph195.split.i.i
  br i1 %.not186.i.i, label %.lr.ph195.split.split.us.split.us.i.i.preheader, label %.lr.ph195.split.split.us.split.i.i.preheader

.lr.ph195.split.split.us.split.i.i.preheader:     ; preds = %.lr.ph195.split.split.us.i.i
  %min.iters.check206 = icmp ult i64 %i.ev, 16
  br i1 %min.iters.check206, label %.lr.ph195.split.split.us.split.i.i.preheader418, label %vector.scevcheck194

vector.scevcheck194:                              ; preds = %.lr.ph195.split.split.us.split.i.i.preheader
  %i.tz = add nsw i64 %i.ev, -1
  %mul195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.tz, i64 3) ; 2 uses
  %mul.result196 = extractvalue { i64, i1 } %mul195, 0 ; 2 uses
  %mul.overflow197 = extractvalue { i64, i1 } %mul195, 1
  %i.ua = getelementptr i8, ptr %i.ej, i64 %mul.result196
  %i.ub = icmp ult ptr %i.ua, %i.ej
  %scevgep198 = getelementptr i8, ptr %i.ej, i64 1 ; 2 uses
  %i.uc = getelementptr i8, ptr %scevgep198, i64 %mul.result196
  %i.ud = icmp ult ptr %i.uc, %scevgep198
  %i.ue = or i1 %i.ud, %mul.overflow197
  %i.uf = or i1 %i.ub, %i.ue
  br i1 %i.uf, label %.lr.ph195.split.split.us.split.i.i.preheader418, label %vector.memcheck199

vector.memcheck199:                               ; preds = %vector.scevcheck194
  %i.ug = mul nsw i64 %i.et, %i.eu                ; 2 uses
  %i.uh = shl i64 %i.ug, 2
  %scevgep200 = getelementptr i8, ptr %i.ex, i64 %i.uh
  %i.ui = mul i64 %i.ug, 3
  %i.uj = getelementptr i8, ptr %i.ej, i64 %i.ui
  %scevgep201 = getelementptr i8, ptr %i.uj, i64 -1
  %bound0202 = icmp ult ptr %i.ex, %scevgep201
  %bound1203 = icmp ult ptr %i.ej, %scevgep200
  %found.conflict204 = and i1 %bound0202, %bound1203
  br i1 %found.conflict204, label %.lr.ph195.split.split.us.split.i.i.preheader418, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck199
  %n.vec208 = and i64 %i.ev, -8                   ; 3 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next212, %vector.body209 ] ; 2 uses
  %vec.ind211 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph207 ], [ %vec.ind.next213, %vector.body209 ] ; 2 uses
  %i.uk = mul <8 x i64> %vec.ind211, splat (i64 3) ; 8 uses
  %i.ul = extractelement <8 x i64> %i.uk, i64 0
  %i.um = getelementptr i8, ptr %i.ej, i64 %i.ul  ; 2 uses
  %i.un = extractelement <8 x i64> %i.uk, i64 1
  %i.uo = getelementptr i8, ptr %i.ej, i64 %i.un  ; 2 uses
  %i.up = extractelement <8 x i64> %i.uk, i64 2
  %i.uq = getelementptr i8, ptr %i.ej, i64 %i.up  ; 2 uses
  %i.ur = extractelement <8 x i64> %i.uk, i64 3
  %i.us = getelementptr i8, ptr %i.ej, i64 %i.ur  ; 2 uses
  %i.ut = extractelement <8 x i64> %i.uk, i64 4
  %i.uu = getelementptr i8, ptr %i.ej, i64 %i.ut  ; 2 uses
  %i.uv = extractelement <8 x i64> %i.uk, i64 5
  %i.uw = getelementptr i8, ptr %i.ej, i64 %i.uv  ; 2 uses
  %i.ux = extractelement <8 x i64> %i.uk, i64 6
  %i.uy = getelementptr i8, ptr %i.ej, i64 %i.ux  ; 2 uses
  %i.uz = extractelement <8 x i64> %i.uk, i64 7
  %i.va = getelementptr i8, ptr %i.ej, i64 %i.uz  ; 2 uses
  %i.vb = load i8, ptr %i.um, align 1, !tbaa !56, !alias.scope !195
  %i.vc = load i8, ptr %i.uo, align 1, !tbaa !56, !alias.scope !195
  %i.vd = load i8, ptr %i.uq, align 1, !tbaa !56, !alias.scope !195
  %i.ve = load i8, ptr %i.us, align 1, !tbaa !56, !alias.scope !195
  %i.vf = load i8, ptr %i.uu, align 1, !tbaa !56, !alias.scope !195
  %i.vg = load i8, ptr %i.uw, align 1, !tbaa !56, !alias.scope !195
  %i.vh = load i8, ptr %i.uy, align 1, !tbaa !56, !alias.scope !195
  %i.vi = load i8, ptr %i.va, align 1, !tbaa !56, !alias.scope !195
  %i.vj = insertelement <8 x i8> poison, i8 %i.vb, i64 0
  %i.vk = insertelement <8 x i8> %i.vj, i8 %i.vc, i64 1
  %i.vl = insertelement <8 x i8> %i.vk, i8 %i.vd, i64 2
  %i.vm = insertelement <8 x i8> %i.vl, i8 %i.ve, i64 3
  %i.vn = insertelement <8 x i8> %i.vm, i8 %i.vf, i64 4
  %i.vo = insertelement <8 x i8> %i.vn, i8 %i.vg, i64 5
  %i.vp = insertelement <8 x i8> %i.vo, i8 %i.vh, i64 6
  %i.vq = insertelement <8 x i8> %i.vp, i8 %i.vi, i64 7
  %i.vr = uitofp <8 x i8> %i.vq to <8 x float>
end_hunk_0
