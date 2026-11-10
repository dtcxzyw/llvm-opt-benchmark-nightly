Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@mdct_forward:bb.a
  %found.conflict259 = and i1 %bound0257, %bound1258
  %bound0260 = icmp ult ptr %i.ja, %i.jp
  %bound1261 = icmp ult ptr %i.jn, %i.jg
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %found.conflict259, %found.conflict262
  %bound0264 = icmp ult ptr %i.ja, %.1112.lcssa
  %bound1265 = icmp ult ptr %i.jr, %i.jg
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  br i1 %conflict.rdx267, label %.lr.ph147.preheader321, label %vector.ph268

vector.ph268:                                     ; preds = %vector.memcheck256
  %i.js = and i64 %i.iw, 3                        ; 2 uses
  %i.jt = icmp eq i64 %i.js, 0
  %i.ju = select i1 %i.jt, i64 4, i64 %i.js
  %n.vec269 = sub i64 %i.iw, %i.ju                ; 5 uses
  %i.jv = shl i64 %n.vec269, 1
  %i.jw = add i64 %i.jv, %i.iq
  %i.jx = mul i64 %n.vec269, -8
  %i.jy = getelementptr i8, ptr %.1112.lcssa, i64 %i.jx
  %i.jz = shl i64 %n.vec269, 4
  %i.ka = getelementptr i8, ptr %.1116.lcssa, i64 %i.jz
  %i.kb = mul i64 %n.vec269, -16
  %i.kc = getelementptr i8, ptr %i.ip, i64 %i.kb
  %invariant.gep330 = getelementptr [4 x i8], ptr %i.i, i64 %i.iq
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph268
  %index271 = phi i64 [ 0, %vector.ph268 ], [ %index.next292, %vector.body270 ] ; 5 uses
  %i.kd = mul i64 %index271, -8
  %next.gep272 = getelementptr i8, ptr %.1112.lcssa, i64 %i.kd
  %i.ke = shl i64 %index271, 4                    ; 4 uses
  %next.gep273 = getelementptr i8, ptr %.1116.lcssa, i64 %i.ke ; 2 uses
  %i.kf = getelementptr i8, ptr %.1116.lcssa, i64 %i.ke ; 2 uses
  %next.gep274 = getelementptr i8, ptr %i.kf, i64 16
  %i.kg = getelementptr i8, ptr %.1116.lcssa, i64 %i.ke ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.kg, i64 32
  %i.kh = getelementptr i8, ptr %.1116.lcssa, i64 %i.ke ; 2 uses
  %next.gep276 = getelementptr i8, ptr %i.kh, i64 48
  %i.ki = mul i64 %index271, -16                  ; 4 uses
  %next.gep277 = getelementptr i8, ptr %i.ip, i64 %i.ki ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ip, i64 %i.ki  ; 2 uses
  %i.kk = getelementptr i8, ptr %i.ip, i64 %i.ki  ; 2 uses
  %i.kl = getelementptr i8, ptr %i.ip, i64 %i.ki  ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %next.gep277, i64 -16
  %i.kn = getelementptr i8, ptr %i.kj, i64 -32
  %i.ko = getelementptr i8, ptr %i.kk, i64 -48
  %i.kp = getelementptr i8, ptr %i.kl, i64 -64
  %i.kq = getelementptr inbounds i8, ptr %next.gep277, i64 -8
  %i.kr = getelementptr i8, ptr %i.kj, i64 -24
  %i.ks = getelementptr i8, ptr %i.kk, i64 -40
  %i.kt = getelementptr i8, ptr %i.kl, i64 -56
  %i.ku = load float, ptr %i.kq, align 4, !alias.scope !3938
  %i.kv = load float, ptr %i.kr, align 4, !alias.scope !3938
  %i.kw = load float, ptr %i.ks, align 4, !alias.scope !3938
  %i.kx = load float, ptr %i.kt, align 4, !alias.scope !3938
  %i.ky = insertelement <4 x float> poison, float %i.ku, i64 0
  %i.kz = insertelement <4 x float> %i.ky, float %i.kv, i64 1
  %i.la = insertelement <4 x float> %i.kz, float %i.kw, i64 2
  %i.lb = insertelement <4 x float> %i.la, float %i.kx, i64 3
  %i.lc = fneg <4 x float> %i.lb
  %i.ld = load float, ptr %next.gep273, align 4, !alias.scope !3939
  %i.le = load float, ptr %next.gep274, align 4, !alias.scope !3939
  %i.lf = load float, ptr %next.gep275, align 4, !alias.scope !3939
  %i.lg = load float, ptr %next.gep276, align 4, !alias.scope !3939
  %i.lh = insertelement <4 x float> poison, float %i.ld, i64 0
  %i.li = insertelement <4 x float> %i.lh, float %i.le, i64 1
  %i.lj = insertelement <4 x float> %i.li, float %i.lf, i64 2
  %i.lk = insertelement <4 x float> %i.lj, float %i.lg, i64 3
  %i.ll = fsub <4 x float> %i.lc, %i.lk           ; 2 uses
  %i.lm = load float, ptr %i.km, align 4, !alias.scope !3938
  %i.ln = load float, ptr %i.kn, align 4, !alias.scope !3938
  %i.lo = load float, ptr %i.ko, align 4, !alias.scope !3938
  %i.lp = load float, ptr %i.kp, align 4, !alias.scope !3938
  %i.lq = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.lr = insertelement <4 x float> %i.lq, float %i.ln, i64 1
  %i.ls = insertelement <4 x float> %i.lr, float %i.lo, i64 2
  %i.lt = insertelement <4 x float> %i.ls, float %i.lp, i64 3
  %i.lu = fneg <4 x float> %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %next.gep273, i64 8
  %i.lw = getelementptr i8, ptr %i.kf, i64 24
  %i.lx = getelementptr i8, ptr %i.kg, i64 40
  %i.ly = getelementptr i8, ptr %i.kh, i64 56
  %i.lz = load float, ptr %i.lv, align 4, !alias.scope !3939
  %i.ma = load float, ptr %i.lw, align 4, !alias.scope !3939
  %i.mb = load float, ptr %i.lx, align 4, !alias.scope !3939
  %i.mc = load float, ptr %i.ly, align 4, !alias.scope !3939
  %i.md = insertelement <4 x float> poison, float %i.lz, i64 0
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 1
  %i.mf = insertelement <4 x float> %i.me, float %i.mb, i64 2
  %i.mg = insertelement <4 x float> %i.mf, float %i.mc, i64 3
  %i.mh = fsub <4 x float> %i.lu, %i.mg           ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %next.gep272, i64 -32 ; 2 uses
  %wide.vec281 = load <8 x float>, ptr %i.mi, align 4, !alias.scope !3940 ; 2 uses
  %reverse283 = shufflevector <8 x float> %wide.vec281, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse285 = shufflevector <8 x float> %wide.vec281, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.mj = fmul <4 x float> %i.mh, %reverse285
  %i.mk = fmul <4 x float> %i.ll, %reverse283
  %i.ml = fadd <4 x float> %i.mj, %i.mk
  %.idx299 = shl nuw i64 %index271, 3
  %gep331 = getelementptr i8, ptr %invariant.gep330, i64 %.idx299
  %wide.vec286 = load <8 x float>, ptr %i.mi, align 4, !alias.scope !3940 ; 2 uses
  %reverse288 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse290 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.mm = fmul <4 x float> %i.mh, %reverse288
  %i.mn = fmul <4 x float> %i.ll, %reverse290
  %i.mo = fsub <4 x float> %i.mm, %i.mn
  %interleaved.vec291 = shufflevector <4 x float> %i.ml, <4 x float> %i.mo, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec291, ptr %gep331, align 4, !alias.scope !3941, !noalias !3942
  %index.next292 = add nuw i64 %index271, 4       ; 2 uses
  %i.mp = icmp eq i64 %index.next292, %n.vec269
  br i1 %i.mp, label %.lr.ph147.preheader321, label %vector.body270, !llvm.loop !3929

.lr.ph147.preheader321:                           ; preds = %vector.body270, %vector.memcheck256, %.lr.ph147.preheader
  %indvars.iv164.ph = phi i64 [ %i.iq, %vector.memcheck256 ], [ %i.iq, %.lr.ph147.preheader ], [ %i.jw, %vector.body270 ]
  %.2113144.ph = phi ptr [ %.1112.lcssa, %vector.memcheck256 ], [ %.1112.lcssa, %.lr.ph147.preheader ], [ %i.jy, %vector.body270 ]
  %.2117143.ph = phi ptr [ %.1116.lcssa, %vector.memcheck256 ], [ %.1116.lcssa, %.lr.ph147.preheader ], [ %i.ka, %vector.body270 ]
  %.2120142.ph = phi ptr [ %i.ip, %vector.memcheck256 ], [ %i.ip, %.lr.ph147.preheader ], [ %i.kc, %vector.body270 ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader321, %.lr.ph147
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.lr.ph147 ], [ %indvars.iv164.ph, %.lr.ph147.preheader321 ] ; 2 uses
  %.2113144 = phi ptr [ %i.mq, %.lr.ph147 ], [ %.2113144.ph, %.lr.ph147.preheader321 ] ; 2 uses
  %.2117143 = phi ptr [ %i.np, %.lr.ph147 ], [ %.2117143.ph, %.lr.ph147.preheader321 ] ; 3 uses
  %.2120142 = phi ptr [ %i.mr, %.lr.ph147 ], [ %.2120142.ph, %.lr.ph147.preheader321 ] ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %.2113144, i64 -8 ; 3 uses
  %i.mr = getelementptr inbounds i8, ptr %.2120142, i64 -16 ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %.2120142, i64 -8
  %i.mt = load float, ptr %i.ms, align 4
  %i.mu = fneg float %i.mt
  %i.mv = load float, ptr %.2117143, align 4
  %i.mw = fsub float %i.mu, %i.mv                 ; 2 uses
  %i.mx = load float, ptr %i.mr, align 4
  %i.my = fneg float %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %.2117143, i64 8
  %i.na = load float, ptr %i.mz, align 4
  %i.nb = fsub float %i.my, %i.na                 ; 2 uses
  %i.nc = getelementptr inbounds i8, ptr %.2113144, i64 -4 ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4
  %i.ne = fmul float %i.nb, %i.nd
  %i.nf = load float, ptr %i.mq, align 4
  %i.ng = fmul float %i.mw, %i.nf
  %i.nh = fadd float %i.ne, %i.ng
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv164 ; 2 uses
  store float %i.nh, ptr %i.ni, align 4
  %i.nj = load float, ptr %i.mq, align 4
  %i.nk = fmul float %i.nb, %i.nj
  %i.nl = load float, ptr %i.nc, align 4
  %i.nm = fmul float %i.mw, %i.nl
  %i.nn = fsub float %i.nk, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store float %i.nn, ptr %i.no, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %.2117143, i64 16
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %i.nq = icmp slt i64 %indvars.iv.next165, %i.h
  br i1 %i.nq, label %.lr.ph147, label %._crit_edge148, !llvm.loop !3930

._crit_edge148:                                   ; preds = %.lr.ph147, %._crit_edge138
  %i.nr = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.nr, align 4
  call fastcc void @mdct_butterflies(i32 %.val, ptr %i.n, ptr noundef nonnull %i.i, i32 noundef %i.b)
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge148
  %.078.i = phi ptr [ %i.nu, %._crit_edge148 ], [ %i.qc, %bb.b ] ; 3 uses
  %.077.i = phi ptr [ %i.i, %._crit_edge148 ], [ %i.om, %bb.b ] ; 4 uses
  %.076.i = phi ptr [ %i.g, %._crit_edge148 ], [ %i.qe, %bb.b ] ; 5 uses
  %.0.i = phi ptr [ %i.nt, %._crit_edge148 ], [ %i.qd, %bb.b ] ; 5 uses
  %i.nv = load i32, ptr %.0.i, align 4
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.oa
  %i.oc = load <2 x float>, ptr %i.nx, align 4    ; 4 uses
  %i.od = load <2 x float>, ptr %i.ob, align 4    ; 4 uses
  %i.oe = fadd <2 x float> %i.oc, %i.od
  %i.of = fsub <2 x float> %i.oc, %i.od
  %i.og = shufflevector <2 x float> %i.oe, <2 x float> %i.of, <4 x i32> <i32 0, i32 3, i32 3, i32 0>
  %i.oh = load <2 x float>, ptr %.078.i, align 4
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.oj = fmul <4 x float> %i.og, %i.oi           ; 4 uses
  %shift = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.oj, %shift
  %i.ok = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift301 = shufflevector <4 x float> %i.oj, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop302 = fsub <4 x float> %shift301, %i.oj
  %i.ol = extractelement <4 x float> %foldExtExtBinop302, i64 2 ; 2 uses
  %i.om = getelementptr inbounds i8, ptr %.077.i, i64 -16 ; 3 uses
  %foldExtExtBinop304 = fadd <2 x float> %i.oc, %i.od
  %i.on = extractelement <2 x float> %foldExtExtBinop304, i64 1
  %i.oo = fmul float %i.on, 5.000000e-01          ; 2 uses
  %foldExtExtBinop306 = fsub <2 x float> %i.oc, %i.od
  %i.op = extractelement <2 x float> %foldExtExtBinop306, i64 0
  %i.oq = fmul float %i.op, 5.000000e-01          ; 2 uses
  %i.or = fadd float %i.oo, %i.ok
  store float %i.or, ptr %.076.i, align 16
  %i.os = fsub float %i.oo, %i.ok
  %i.ot = getelementptr inbounds i8, ptr %.077.i, i64 -8
  store float %i.os, ptr %i.ot, align 4
  %i.ou = fadd float %i.oq, %i.ol
  %i.ov = getelementptr inbounds nuw i8, ptr %.076.i, i64 4
  store float %i.ou, ptr %i.ov, align 4
  %i.ow = fsub float %i.ol, %i.oq
  %i.ox = getelementptr inbounds i8, ptr %.077.i, i64 -4
  store float %i.ow, ptr %i.ox, align 4
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.oz = load i32, ptr %i.oy, align 4
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %.078.i, i64 8
  %i.ph = load <2 x float>, ptr %i.pb, align 4    ; 4 uses
  %i.pi = load <2 x float>, ptr %i.pf, align 4    ; 4 uses
  %i.pj = fadd <2 x float> %i.ph, %i.pi
  %i.pk = fsub <2 x float> %i.ph, %i.pi
  %i.pl = shufflevector <2 x float> %i.pj, <2 x float> %i.pk, <4 x i32> <i32 0, i32 3, i32 3, i32 0>
  %i.pm = load <2 x float>, ptr %i.pg, align 4
  %i.pn = shufflevector <2 x float> %i.pm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.po = fmul <4 x float> %i.pl, %i.pn           ; 4 uses
  %shift308 = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop309 = fadd <4 x float> %i.po, %shift308
  %i.pp = extractelement <4 x float> %foldExtExtBinop309, i64 0 ; 2 uses
  %shift311 = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop312 = fsub <4 x float> %shift311, %i.po
  %i.pq = extractelement <4 x float> %foldExtExtBinop312, i64 2 ; 2 uses
  %foldExtExtBinop314 = fadd <2 x float> %i.ph, %i.pi
  %i.pr = extractelement <2 x float> %foldExtExtBinop314, i64 1
  %i.ps = fmul float %i.pr, 5.000000e-01          ; 2 uses
  %foldExtExtBinop316 = fsub <2 x float> %i.ph, %i.pi
  %i.pt = extractelement <2 x float> %foldExtExtBinop316, i64 0
  %i.pu = fmul float %i.pt, 5.000000e-01          ; 2 uses
  %i.pv = fadd float %i.ps, %i.pp
  %i.pw = getelementptr inbounds nuw i8, ptr %.076.i, i64 8
  store float %i.pv, ptr %i.pw, align 8
  %i.px = fsub float %i.ps, %i.pp
  store float %i.px, ptr %i.om, align 4
  %i.py = fadd float %i.pu, %i.pq
  %i.pz = getelementptr inbounds nuw i8, ptr %.076.i, i64 12
  store float %i.py, ptr %i.pz, align 4
  %i.qa = fsub float %i.pq, %i.pu
  %i.qb = getelementptr inbounds i8, ptr %.077.i, i64 -12
  store float %i.qa, ptr %i.qb, align 4
  %i.qc = getelementptr inbounds nuw i8, ptr %.078.i, i64 16
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.qe = getelementptr inbounds nuw i8, ptr %.076.i, i64 16 ; 2 uses
  %i.qf = icmp ult ptr %i.qe, %i.om
  br i1 %i.qf, label %bb.b, label %mdct_bitreverse.exit, !llvm.loop !28

mdct_bitreverse.exit:                             ; preds = %bb.b
  %i.qg = icmp sgt i32 %i.c, 0
  br i1 %i.qg, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %mdct_bitreverse.exit
  %i.qh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph153, %bb.c
  %indvars.iv167 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next168, %bb.c ] ; 2 uses
  %.3114151 = phi ptr [ %i.o, %.lr.ph153 ], [ %i.qy, %bb.c ] ; 3 uses
  %.3121150 = phi ptr [ %i.qh, %.lr.ph153 ], [ %i.qj, %bb.c ]
  %.0122149 = phi ptr [ %i.g, %.lr.ph153 ], [ %i.qx, %bb.c ] ; 2 uses
  %i.qj = getelementptr inbounds i8, ptr %.3121150, i64 -4 ; 2 uses
  %i.qk = load <2 x float>, ptr %.0122149, align 8 ; 2 uses
  %i.ql = load <2 x float>, ptr %.3114151, align 4
  %i.qm = fmul <2 x float> %i.qk, %i.ql
  %i.qn = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.qm)
  %i.qo = load float, ptr %i.qi, align 8
  %i.qp = fmul float %i.qo, %i.qn
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv167
  store float %i.qp, ptr %i.qq, align 4
  %i.qr = load <2 x float>, ptr %.3114151, align 4
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qt = fmul <2 x float> %i.qk, %i.qs           ; 2 uses
  %shift318 = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop319 = fsub <2 x float> %i.qt, %shift318
  %i.qu = extractelement <2 x float> %foldExtExtBinop319, i64 0
  %i.qv = load float, ptr %i.qi, align 8
  %i.qw = fmul float %i.qv, %i.qu
  store float %i.qw, ptr %i.qj, align 4
  %i.qx = getelementptr inbounds nuw i8, ptr %.0122149, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %.3114151, i64 8
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge154, label %bb.c, !llvm.loop !3931

._crit_edge154:                                   ; preds = %bb.c, %mdct_bitreverse.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @_vi_gpsy_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #18 !guid !3943 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #62
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_vp_psy_init(ptr nofree noundef captures(none) initializes((0, 88)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #27 !guid !3951 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %i.a = load i32, ptr %2, align 4                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.a, ptr %i.b, align 8
  %i.c = sitofp i32 %i.a to float
  %i.d = fmul nnan float %i.c, 8.000000e+00
  %i.e = fpext float %i.d to double
  %i.f = tail call double @log(double noundef %i.e) #62
  %i.g = fdiv double %i.f, f0x3FE62E42FEFA39EF
  %i.h = tail call double @llvm.rint.f64(double %i.g)
  %i.i = fadd double %i.h, -1.000000e+00
  %i.j = fptosi double %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8
  %i.l = sitofp i64 %4 to float
  %i.m = sitofp i32 %3 to double                  ; 5 uses
  %i.n = trunc i64 %i.j to i32
  %i.o = add i32 %i.n, 1
  %i.p = shl nuw i32 1, %i.o
  %i.q = sitofp i32 %i.p to double                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = sitofp i32 %3 to float
  %i.t = fadd nnan float %i.s, 2.500000e-01
  %i.u = insertelement <2 x float> <float 2.500000e-01, float poison>, float %i.t, i64 1
  %i.v = insertelement <2 x float> poison, float %i.l, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = fmul <2 x double> %i.y, splat (double 5.000000e-01)
  %i.aa = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fdiv <2 x double> %i.z, %i.ab           ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = tail call double @log(double noundef %i.ad) #62
  %i.af = fmul double %i.ae, f0x3FF7154760000000
  %i.ag = fadd double %i.af, f0xC017DCF680000000
  %i.ah = fmul double %i.ag, %i.q
  %i.ai = load i32, ptr %2, align 4
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fsub double %i.ah, %i.aj
  %i.al = fptosi double %i.ak to i64              ; 2 uses
  store i64 %i.al, ptr %i.r, align 8
  %i.am = extractelement <2 x double> %i.ac, i64 1
  %i.an = tail call double @log(double noundef %i.am) #62
  %i.ao = fmul double %i.an, f0x3FF7154760000000
  %i.ap = fadd double %i.ao, f0xC017DCF680000000
  %i.aq = fmul double %i.ap, %i.q
  %i.ar = fadd double %i.aq, 5.000000e-01
  %i.as = fptosi double %i.ar to i64
  %i.at = sub nsw i64 %i.as, %i.al
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = sext i32 %3 to i64                      ; 10 uses
  %i.ay = shl nsw i64 %i.ax, 2                    ; 4 uses
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #69
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = shl nsw i64 %i.ax, 3                    ; 2 uses
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.bb) #69
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bb) #69
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %1, ptr %i.bg, align 8
  store i32 %3, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %4, ptr %i.bh, align 8
  %i.bi = sitofp i64 %4 to double                 ; 4 uses
  br label %bb.b

.preheader171:                                    ; preds = %.loopexit
  %i.bj = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.bj, label %.lr.ph190, label %._crit_edge

.lr.ph190:                                        ; preds = %.preheader171
  %i.bk = shl nuw nsw i32 %3, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = sdiv i64 %4, %i.bl                      ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.br = add nuw nsw i64 %i.ax, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.0161175 = phi i64 [ 0, %bb.a ], [ %.2, %.loopexit ] ; 6 uses
  %.0163174 = phi i64 [ 0, %bb.a ], [ %i.bs, %.loopexit ] ; 2 uses
  %i.bs = add nuw nsw i64 %.0163174, 1            ; 4 uses
  %i.bt = uitofp nneg i64 %i.bs to double
  %i.bu = fmul nnan double %i.bt, 1.250000e-01
  %i.bv = fadd nnan double %i.bu, -2.000000e+00
  %i.bw = fadd nnan double %i.bv, f0x4017DCF680000000
  %i.bx = fmul nnan double %i.bw, f0x3FE62E42A0000000
  %i.by = tail call double @exp(double noundef %i.bx) #62
  %i.bz = fmul double %i.by, 2.000000e+00
  %i.ca = fmul double %i.bz, %i.m
  %i.cb = fdiv double %i.ca, %i.bi
  %i.cc = tail call double @llvm.rint.f64(double %i.cb)
  %i.cd = fptosi double %i.cc to i32
  %i.ce = sext i32 %i.cd to i64                   ; 3 uses
  %i.cf = icmp slt i64 %.0161175, %i.ce
  br i1 %i.cf, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @ATH, i64 %.0163174
  %i.ch = load float, ptr %i.cg, align 4          ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @ATH, i64 %i.bs
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = fsub float %i.cj, %i.ch
  %i.cl = sub nsw i64 %i.ce, %.0161175
  %i.cm = sitofp i64 %i.cl to float
  %i.cn = fdiv float %i.ck, %i.cm
  %invariant.smin = tail call i64 @llvm.smin.i64(i64 %i.ce, i64 %i.ax)
  %i.co = icmp slt i64 %.0161175, %i.ax
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0173 = phi float [ %i.cs, %.lr.ph ], [ %i.ch, %bb.c ] ; 2 uses
  %.1162172 = phi i64 [ %i.ct, %.lr.ph ], [ %.0161175, %bb.c ] ; 2 uses
  %i.cp = fadd float %.0173, 1.000000e+02
  %i.cq = load ptr, ptr %i.ba, align 8
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %.1162172
  store float %i.cp, ptr %i.cr, align 4
  %i.cs = fadd float %i.cn, %.0173
  %i.ct = add nsw i64 %.1162172, 1                ; 3 uses
  %i.cu = icmp slt i64 %i.ct, %invariant.smin
  br i1 %i.cu, label %.lr.ph, label %.loopexit, !llvm.loop !3944

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.2 = phi i64 [ %.0161175, %bb.b ], [ %.0161175, %bb.c ], [ %i.ct, %.lr.ph ]
  %exitcond.not = icmp eq i64 %i.bs, 87
  br i1 %exitcond.not, label %.preheader171, label %bb.b, !llvm.loop !3945

bb.d:                                             ; preds = %.lr.ph190, %.critedge2
  %.0158189 = phi i64 [ 1, %.lr.ph190 ], [ %.1.lcssa, %.critedge2 ] ; 3 uses
  %.0159188 = phi i64 [ -99, %.lr.ph190 ], [ %.1160.lcssa, %.critedge2 ] ; 3 uses
  %.1164187 = phi i64 [ 0, %.lr.ph190 ], [ %i.fu, %.critedge2 ] ; 6 uses
  %i.cv = mul nsw i64 %i.bm, %.1164187            ; 3 uses
  %i.cw = sitofp i64 %i.cv to float               ; 2 uses
  %i.cx = fmul nnan float %i.cw, 7.400000e-04
  %i.cy = fpext float %i.cx to double
  %i.cz = tail call double @atan(double noundef %i.cy) #62
  %i.da = fmul double %i.cz, f0x402A333340000000
  %i.db = mul nsw i64 %i.cv, %i.cv
  %i.dc = uitofp nneg i64 %i.db to float
  %i.dd = fmul nnan float %i.dc, 1.850000e-08
  %i.de = fpext float %i.dd to double
  %i.df = tail call double @atan(double noundef %i.de) #62
  %i.dg = fmul double %i.df, f0x4001EB8520000000
  %i.dh = fadd double %i.da, %i.dg
  %i.di = fmul nnan float %i.cw, f0x38D1B717
  %i.dj = fpext float %i.di to double
end_hunk_0
