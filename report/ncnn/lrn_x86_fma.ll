Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lrn_x86_fma?download=true
inline.NumInlined: 35
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1:bb.a
  %.171263.ph = phi ptr [ %.070.lcssa, %iter.check ], [ %.070.lcssa, %vector.memcheck359 ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ] ; 2 uses
  %i.db = sub i32 %.lcssa, %.167265.ph
  %xtraiter = and i32 %i.db, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph266.prol.loopexit, label %.lr.ph266.prol

.lr.ph266.prol:                                   ; preds = %.lr.ph266.preheader, %.lr.ph266.prol
  %.167265.prol = phi i32 [ %i.dh, %.lr.ph266.prol ], [ %.167265.ph, %.lr.ph266.preheader ]
  %.169264.prol = phi ptr [ %i.dg, %.lr.ph266.prol ], [ %.169264.ph, %.lr.ph266.preheader ] ; 3 uses
  %.171263.prol = phi ptr [ %i.df, %.lr.ph266.prol ], [ %.171263.ph, %.lr.ph266.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph266.prol ], [ 0, %.lr.ph266.preheader ]
  %i.dc = load float, ptr %.171263.prol, align 4, !tbaa !35
  %i.dd = load float, ptr %.169264.prol, align 4, !tbaa !35
  %i.de = fadd fast float %i.dd, %i.dc
  store float %i.de, ptr %.169264.prol, align 4, !tbaa !35
  %i.df = getelementptr inbounds nuw i8, ptr %.171263.prol, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.169264.prol, i64 4 ; 2 uses
  %i.dh = add nuw nsw i32 %.167265.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph266.prol.loopexit, label %.lr.ph266.prol, !llvm.loop !102

.lr.ph266.prol.loopexit:                          ; preds = %.lr.ph266.prol, %.lr.ph266.preheader
  %.167265.unr = phi i32 [ %.167265.ph, %.lr.ph266.preheader ], [ %i.dh, %.lr.ph266.prol ]
  %.169264.unr = phi ptr [ %.169264.ph, %.lr.ph266.preheader ], [ %i.dg, %.lr.ph266.prol ]
  %.171263.unr = phi ptr [ %.171263.ph, %.lr.ph266.preheader ], [ %i.df, %.lr.ph266.prol ]
  %i.di = sub i32 %.167265.ph, %.lcssa
  %i.dj = icmp ugt i32 %i.di, -4
  br i1 %i.dj, label %.loopexit, label %.lr.ph266

.lr.ph:                                           ; preds = %.noexc79, %.lr.ph
  %.066259 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %.noexc79 ]
  %.068258 = phi ptr [ %i.do, %.lr.ph ], [ %i.bm, %.noexc79 ] ; 3 uses
  %.070257 = phi ptr [ %i.dn, %.lr.ph ], [ %i.bg, %.noexc79 ] ; 2 uses
  %i.dk = load <8 x float>, ptr %.070257, align 1, !tbaa !37
  %i.dl = load <8 x float>, ptr %.068258, align 1, !tbaa !37
  %i.dm = fadd fast <8 x float> %i.dl, %i.dk
  store <8 x float> %i.dm, ptr %.068258, align 1, !tbaa !37
  %i.dn = getelementptr inbounds nuw i8, ptr %.070257, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.068258, i64 32 ; 2 uses
  %i.dp = add nuw nsw i32 %.066259, 8             ; 3 uses
  %i.dq = or disjoint i32 %i.dp, 7
  %i.dr = load i32, ptr %6, align 4, !tbaa !15    ; 2 uses
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.preheader, !llvm.loop !103

.lr.ph266:                                        ; preds = %.lr.ph266.prol.loopexit, %.lr.ph266
  %.167265 = phi i32 [ %i.en, %.lr.ph266 ], [ %.167265.unr, %.lr.ph266.prol.loopexit ]
  %.169264 = phi ptr [ %i.em, %.lr.ph266 ], [ %.169264.unr, %.lr.ph266.prol.loopexit ] ; 6 uses
  %.171263 = phi ptr [ %i.el, %.lr.ph266 ], [ %.171263.unr, %.lr.ph266.prol.loopexit ] ; 5 uses
  %i.dt = load float, ptr %.171263, align 4, !tbaa !35
  %i.du = load float, ptr %.169264, align 4, !tbaa !35
  %i.dv = fadd fast float %i.du, %i.dt
  store float %i.dv, ptr %.169264, align 4, !tbaa !35
  %i.dw = getelementptr inbounds nuw i8, ptr %.171263, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.169264, i64 4 ; 2 uses
  %i.dy = load float, ptr %i.dw, align 4, !tbaa !35
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !35
  %i.ea = fadd fast float %i.dz, %i.dy
  store float %i.ea, ptr %i.dx, align 4, !tbaa !35
  %i.eb = getelementptr inbounds nuw i8, ptr %.171263, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.169264, i64 8 ; 2 uses
  %i.ed = load float, ptr %i.eb, align 4, !tbaa !35
  %i.ee = load float, ptr %i.ec, align 4, !tbaa !35
  %i.ef = fadd fast float %i.ee, %i.ed
  store float %i.ef, ptr %i.ec, align 4, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %.171263, i64 12
  %i.eh = getelementptr inbounds nuw i8, ptr %.169264, i64 12 ; 2 uses
  %i.ei = load float, ptr %i.eg, align 4, !tbaa !35
  %i.ej = load float, ptr %i.eh, align 4, !tbaa !35
  %i.ek = fadd fast float %i.ej, %i.ei
  store float %i.ek, ptr %i.eh, align 4, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %.171263, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.169264, i64 16
  %i.en = add nuw nsw i32 %.167265, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.en, %.lcssa
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph266, !llvm.loop !104

.loopexit:                                        ; preds = %.lr.ph266.prol.loopexit, %.lr.ph266, %middle.block379, %vec.epilog.middle.block, %.preheader, %.lr.ph269, %bb.d
  %i.eo = add nsw i32 %.072268, 1
  %i.ep = load i32, ptr %i.l, align 4, !tbaa !36
  %i.eq = sdiv i32 %i.ep, 2
  %i.er = add nsw i32 %i.eq, %indvars296
  %.not73.not = icmp slt i32 %.072268, %i.er
  br i1 %.not73.not, label %.lr.ph269, label %.noexc75, !llvm.loop !105

.preheader255:                                    ; preds = %.lr.ph273, %.noexc75
  %.063.lcssa = phi ptr [ %i.af, %.noexc75 ], [ %i.ip, %.lr.ph273 ] ; 8 uses
  %.061.lcssa = phi ptr [ %i.al, %.noexc75 ], [ %i.io, %.lr.ph273 ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.noexc75 ], [ %i.iq, %.lr.ph273 ] ; 5 uses
  %.lcssa256 = phi i32 [ %i.aw, %.noexc75 ], [ %i.is, %.lr.ph273 ] ; 5 uses
  %i.es = icmp slt i32 %.0.lcssa, %.lcssa256
  br i1 %i.es, label %.lr.ph281.preheader, label %._crit_edge

.lr.ph281.preheader:                              ; preds = %.preheader255
  %i.et = xor i32 %.0.lcssa, -1
  %i.eu = add i32 %.lcssa256, %i.et               ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.eu, 7
  br i1 %min.iters.check, label %.lr.ph281.preheader392, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph281.preheader
  %i.ex = shl nuw nsw i64 %i.ev, 2
  %i.ey = add nuw nsw i64 %i.ex, 4                ; 2 uses
  %i.ez = getelementptr i8, ptr %.063.lcssa, i64 %i.ey ; 3 uses
  %i.fa = getelementptr i8, ptr %.061.lcssa, i64 %i.ey
  %bound0 = icmp ult ptr %.063.lcssa, %scevgep333
  %bound1 = icmp ult ptr %i.t, %i.ez
  %found.conflict = and i1 %bound0, %bound1
  %bound0334 = icmp ult ptr %.063.lcssa, %scevgep
  %bound1335 = icmp ult ptr %8, %i.ez
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx = or i1 %found.conflict, %found.conflict336
  %bound0337 = icmp ult ptr %.063.lcssa, %i.fa
  %bound1338 = icmp ult ptr %.061.lcssa, %i.ez
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %conflict.rdx, %found.conflict339
  br i1 %conflict.rdx340, label %.lr.ph281.preheader392, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ew, 8589934584              ; 4 uses
  %i.fb = trunc i64 %n.vec to i32
  %i.fc = add i32 %.0.lcssa, %i.fb
  %i.fd = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.fe = getelementptr i8, ptr %.061.lcssa, i64 %i.fd
  %i.ff = getelementptr i8, ptr %.063.lcssa, i64 %i.fd
  %i.fg = load float, ptr %i.s, align 8, !tbaa !47, !alias.scope !120
  %broadcast.splatinsert345 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat346 = shufflevector <8 x float> %broadcast.splatinsert345, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fh = load float, ptr %8, align 4, !tbaa !35, !alias.scope !121
  %broadcast.splatinsert343 = insertelement <8 x float> poison, float %i.fh, i64 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fi = load float, ptr %i.t, align 4, !tbaa !48, !alias.scope !120
  %.scalar = fneg fast float %i.fi
  %i.fj = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.fk = shufflevector <8 x float> %i.fj, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.061.lcssa, i64 %i.fl
  %next.gep341 = getelementptr i8, ptr %.063.lcssa, i64 %i.fl ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep341, align 4, !tbaa !35, !alias.scope !122, !noalias !123
  %wide.load342 = load <8 x float>, ptr %next.gep, align 4, !tbaa !35, !alias.scope !124
  %i.fm = fmul fast <8 x float> %wide.load342, %broadcast.splat344
  %i.fn = fadd fast <8 x float> %i.fm, %broadcast.splat346
  %i.fo = call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.fn, <8 x float> %i.fk)
  %i.fp = fmul fast <8 x float> %i.fo, %wide.load
  store <8 x float> %i.fp, ptr %next.gep341, align 4, !tbaa !35, !alias.scope !122, !noalias !123
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph281.preheader392

.lr.ph281.preheader392:                           ; preds = %vector.memcheck, %.lr.ph281.preheader, %middle.block
  %.1280.ph = phi i32 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph281.preheader ], [ %i.fc, %middle.block ] ; 4 uses
  %.162279.ph = phi ptr [ %.061.lcssa, %vector.memcheck ], [ %.061.lcssa, %.lr.ph281.preheader ], [ %i.fe, %middle.block ] ; 3 uses
  %.164278.ph = phi ptr [ %.063.lcssa, %vector.memcheck ], [ %.063.lcssa, %.lr.ph281.preheader ], [ %i.ff, %middle.block ] ; 4 uses
  %i.fr = sub i32 %.lcssa256, %.1280.ph
  %.neg404 = add i32 %.1280.ph, 1
  %xtraiter401 = and i32 %i.fr, 1
  %lcmp.mod402.not = icmp eq i32 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %.lr.ph281.prol.loopexit, label %.lr.ph281.prol

.lr.ph281.prol:                                   ; preds = %.lr.ph281.preheader392
  %i.fs = load float, ptr %.164278.ph, align 4, !tbaa !35
  %i.ft = load float, ptr %i.s, align 8, !tbaa !47
  %i.fu = load float, ptr %8, align 4, !tbaa !35
  %i.fv = load float, ptr %.162279.ph, align 4, !tbaa !35
  %i.fw = fmul fast float %i.fv, %i.fu
  %i.fx = fadd fast float %i.fw, %i.ft
  %i.fy = load float, ptr %i.t, align 4, !tbaa !48
  %i.fz = fneg fast float %i.fy
  %i.ga = call fast float @llvm.pow.f32(float %i.fx, float %i.fz)
  %i.gb = fmul fast float %i.ga, %i.fs
  store float %i.gb, ptr %.164278.ph, align 4, !tbaa !35
  %i.gc = getelementptr inbounds nuw i8, ptr %.162279.ph, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.164278.ph, i64 4
  %i.ge = add nuw nsw i32 %.1280.ph, 1
  br label %.lr.ph281.prol.loopexit

.lr.ph281.prol.loopexit:                          ; preds = %.lr.ph281.prol, %.lr.ph281.preheader392
  %.1280.unr = phi i32 [ %.1280.ph, %.lr.ph281.preheader392 ], [ %i.ge, %.lr.ph281.prol ]
  %.162279.unr = phi ptr [ %.162279.ph, %.lr.ph281.preheader392 ], [ %i.gc, %.lr.ph281.prol ]
  %.164278.unr = phi ptr [ %.164278.ph, %.lr.ph281.preheader392 ], [ %i.gd, %.lr.ph281.prol ]
  %i.gf = icmp eq i32 %.lcssa256, %.neg404
  br i1 %i.gf, label %._crit_edge, label %.lr.ph281

.lr.ph273:                                        ; preds = %.noexc75, %.lr.ph273
  %.0272 = phi i32 [ %i.iq, %.lr.ph273 ], [ 0, %.noexc75 ]
  %.061271 = phi ptr [ %i.io, %.lr.ph273 ], [ %i.al, %.noexc75 ] ; 2 uses
  %.063270 = phi ptr [ %i.ip, %.lr.ph273 ], [ %i.af, %.noexc75 ] ; 3 uses
  %i.gg = load <8 x float>, ptr %.063270, align 1, !tbaa !37
  %i.gh = load <8 x float>, ptr %.061271, align 1, !tbaa !37
  %i.gi = fmul fast <8 x float> %i.gh, %i.ar
  %i.gj = fadd fast <8 x float> %i.gi, %i.ao
  %i.gk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gj, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.gl = bitcast <8 x float> %i.gk to <8 x i32>
  %i.gm = bitcast <8 x float> %i.gk to <8 x i32>
  %i.gn = and <8 x i32> %i.gm, splat (i32 -2139095041)
  %i.go = or disjoint <8 x i32> %i.gn, splat (i32 1056964608)
  %i.gp = bitcast <8 x i32> %i.go to <8 x float>  ; 3 uses
  %i.gq = lshr <8 x i32> %i.gl, splat (i32 23)
  %i.gr = add nsw <8 x i32> %i.gq, splat (i32 -127)
  %i.gs = sitofp fast <8 x i32> %i.gr to <8 x float> ; 2 uses
  %i.gt = fadd fast <8 x float> %i.gs, splat (float 1.000000e+00)
  %i.gu = fcmp fast olt <8 x float> %i.gp, splat (float f0x3F3504F3) ; 2 uses
  %i.gv = select <8 x i1> %i.gu, <8 x float> %i.gp, <8 x float> zeroinitializer
  %i.gw = fadd fast <8 x float> %i.gp, splat (float -1.000000e+00)
  %i.gx = select fast <8 x i1> %i.gu, <8 x float> %i.gs, <8 x float> %i.gt ; 2 uses
  %i.gy = fadd fast <8 x float> %i.gw, %i.gv      ; 12 uses
  %i.gz = fmul fast <8 x float> %i.gy, %i.gy      ; 2 uses
  %i.ha = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gy, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.hb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ha, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0x3DEF251A))
  %i.hc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hb, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0xBDFE5D4F))
  %i.hd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hc, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0x3E11E9BF))
  %i.he = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hd, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0xBE2AAE50))
  %i.hf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.he, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0x3E4CCEAC))
  %i.hg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hf, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0xBE7FFFFC))
  %i.hh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hg, <8 x float> nofpclass(nan inf) %i.gy, <8 x float> splat (float f0x3EAAAAAA))
  %i.hi = fmul fast <8 x float> %i.gz, %i.gy
  %i.hj = fmul fast <8 x float> %i.hi, %i.hh
  %i.hk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hj)
  %i.hl = fneg fast <8 x float> %i.gz
  %i.hm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hl, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.hk)
  %i.hn = fadd fast <8 x float> %i.hm, %i.gy
  %i.ho = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hn)
  %i.hp = fmul fast <8 x float> %i.ho, %i.av
  %i.hq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.hp, <8 x float> splat (float f0x42B0C0A5))
  %i.hr = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.hq, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.hs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hr, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ht = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.hs, i32 1) ; 2 uses
  %i.hu = fcmp fast ogt <8 x float> %i.ht, %i.hs
  %i.hv = select <8 x i1> %i.hu, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.hw = fsub fast <8 x float> %i.ht, %i.hv      ; 2 uses
  %i.hx = fneg fast <8 x float> %i.hw             ; 2 uses
  %i.hy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hx, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.hr)
  %i.hz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.hx, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.hy) ; 8 uses
  %i.ia = fmul fast <8 x float> %i.hz, %i.hz
  %i.ib = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.hz, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.ic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ib, <8 x float> nofpclass(nan inf) %i.hz, <8 x float> splat (float f0x3C088908))
  %i.id = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ic, <8 x float> nofpclass(nan inf) %i.hz, <8 x float> splat (float f0x3D2AA9C1))
  %i.ie = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.id, <8 x float> nofpclass(nan inf) %i.hz, <8 x float> splat (float f0x3E2AAAAA))
  %i.if = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ie, <8 x float> nofpclass(nan inf) %i.hz, <8 x float> splat (float 5.000000e-01))
  %i.ig = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.if, <8 x float> nofpclass(nan inf) %i.ia, <8 x float> nofpclass(nan inf) %i.hz)
  %i.ih = fadd fast <8 x float> %i.ig, splat (float 1.000000e+00)
  %i.ii = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hw)
  %i.ij = shl <8 x i32> %i.ii, splat (i32 23)
  %i.ik = add <8 x i32> %i.ij, splat (i32 1065353216)
  %i.il = bitcast <8 x i32> %i.ik to <8 x float>
  %i.im = fmul fast <8 x float> %i.gg, %i.il
  %i.in = fmul fast <8 x float> %i.im, %i.ih
  store <8 x float> %i.in, ptr %.063270, align 1, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %.061271, i64 32 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.063270, i64 32 ; 2 uses
  %i.iq = add nuw nsw i32 %.0272, 8               ; 3 uses
  %i.ir = or disjoint i32 %i.iq, 7
  %i.is = load i32, ptr %6, align 4, !tbaa !15    ; 2 uses
  %i.it = icmp slt i32 %i.ir, %i.is
  br i1 %i.it, label %.lr.ph273, label %.preheader255, !llvm.loop !112

.lr.ph281:                                        ; preds = %.lr.ph281.prol.loopexit, %.lr.ph281
  %.1280 = phi i32 [ %i.js, %.lr.ph281 ], [ %.1280.unr, %.lr.ph281.prol.loopexit ]
  %.162279 = phi ptr [ %i.jq, %.lr.ph281 ], [ %.162279.unr, %.lr.ph281.prol.loopexit ] ; 3 uses
  %.164278 = phi ptr [ %i.jr, %.lr.ph281 ], [ %.164278.unr, %.lr.ph281.prol.loopexit ] ; 4 uses
  %i.iu = load float, ptr %.164278, align 4, !tbaa !35
  %i.iv = load float, ptr %i.s, align 8, !tbaa !47
  %i.iw = load float, ptr %8, align 4, !tbaa !35
  %i.ix = load float, ptr %.162279, align 4, !tbaa !35
  %i.iy = fmul fast float %i.ix, %i.iw
  %i.iz = fadd fast float %i.iy, %i.iv
  %i.ja = load float, ptr %i.t, align 4, !tbaa !48
  %i.jb = fneg fast float %i.ja
  %i.jc = call fast float @llvm.pow.f32(float %i.iz, float %i.jb)
  %i.jd = fmul fast float %i.jc, %i.iu
  store float %i.jd, ptr %.164278, align 4, !tbaa !35
  %i.je = getelementptr inbounds nuw i8, ptr %.162279, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %.164278, i64 4 ; 2 uses
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !35
  %i.jh = load float, ptr %i.s, align 8, !tbaa !47
  %i.ji = load float, ptr %8, align 4, !tbaa !35
  %i.jj = load float, ptr %i.je, align 4, !tbaa !35
  %i.jk = fmul fast float %i.jj, %i.ji
  %i.jl = fadd fast float %i.jk, %i.jh
  %i.jm = load float, ptr %i.t, align 4, !tbaa !48
  %i.jn = fneg fast float %i.jm
  %i.jo = call fast float @llvm.pow.f32(float %i.jl, float %i.jn)
  %i.jp = fmul fast float %i.jo, %i.jg
  store float %i.jp, ptr %i.jf, align 4, !tbaa !35
  %i.jq = getelementptr inbounds nuw i8, ptr %.162279, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %.164278, i64 8
  %i.js = add nuw nsw i32 %.1280, 2               ; 2 uses
  %exitcond295.not.1 = icmp eq i32 %i.js, %.lcssa256
  br i1 %exitcond295.not.1, label %._crit_edge, label %.lr.ph281, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph281.prol.loopexit, %.lr.ph281, %middle.block, %.preheader255
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond297.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond297.not, label %._crit_edge286, label %bb.c

._crit_edge286:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge286, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn16copy_make_borderERKNS_3MatERS0_iiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11LRN_x86_fma15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !15
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !15
  %i.k = load i32, ptr %i.a, align 4, !tbaa !15   ; 3 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !139 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !139 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !139 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14, !noalias !140
  %i.s = load ptr, ptr %4, align 8, !tbaa !19, !noalias !140
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !140
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !16, !noalias !140 ; 2 uses
  %factor.op.mul86 = mul i64 %i.u, %i.w
  %i.x = sext i32 %i.r to i64
  %i.y = load i32, ptr %5, align 4, !tbaa !15     ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.w, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 6 uses
  %i.ac = getelementptr i8, ptr %9, i64 220       ; 7 uses
  br i1 %i.z, label %.noexc45.lr.ph.split, label %._crit_edge.split

.noexc45.lr.ph.split:                             ; preds = %.noexc45.lr.ph
  %i.ad = load i32, ptr %6, align 4, !tbaa !15    ; 6 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.noexc45.lr.ph.split.split, label %._crit_edge.split

.noexc45.lr.ph.split.split:                       ; preds = %.noexc45.lr.ph.split
  %i.ag = load i32, ptr %7, align 4, !tbaa !15    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc45.lr.ph.split.split.split.us, label %.noexc45.preheader

.noexc45.preheader:                               ; preds = %.noexc45.lr.ph.split.split
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  %i.aj = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 9 uses
  %scevgep = getelementptr i8, ptr %9, i64 228
  %i.ak = mul i64 %i.p, %i.n
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = add nsw i32 %i.y, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.af, %i.an
  %i.ap = add nuw i64 %i.ao, %wide.trip.count
  %i.aq = shl i64 %i.ap, 2
  %i.ar = mul i64 %i.p, %i.n
  %i.as = getelementptr i8, ptr %i.l, i64 %i.aq
  %i.at = getelementptr i8, ptr %i.as, i64 %i.al
  %min.iters.check = icmp ult i32 %i.ad, 4
  %min.iters.check128 = icmp ult i32 %i.ad, 32
  %i.au = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec132 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec132, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  br label %.noexc45

.noexc45.lr.ph.split.split.split.us:              ; preds = %.noexc45.lr.ph.split.split
  %i.aw = load ptr, ptr %8, align 8, !tbaa !38    ; 5 uses
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count111 = zext nneg i32 %i.y to i64
  %wide.trip.count106 = zext nneg i32 %i.ad to i64
  %wide.trip.count101 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter141 = and i64 %wide.trip.count101, 3   ; 3 uses
  %i.az = icmp ult i32 %i.ag, 4
  %unroll_iter = and i64 %wide.trip.count101, 2147483644
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  %lcmp.mod144 = icmp ne i64 %xtraiter141, 0
  br label %.noexc45.us

.noexc45.us:                                      ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc45.lr.ph.split.split.split.us
end_hunk_0
