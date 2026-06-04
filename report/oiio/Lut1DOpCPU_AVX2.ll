inline.NumInlined: 91
inline.NumDeleted: 17
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_2EEEvPKfS4_S4_iPKvPvl:bb.a
  %i.dg = bitcast <32 x i8> %i.df to <4 x i64>
  %i.dh = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.di = bitcast <32 x i8> %i.df to <4 x i64>
  %i.dj = shufflevector <4 x i64> %i.di, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.dk = or <2 x i64> %i.dh, %i.dj
  %i.dl = shufflevector <2 x i64> %i.dd, <2 x i64> %i.dk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = getelementptr inbounds nuw i8, ptr %.05090, i64 32
  store <4 x i64> %i.dl, ptr %i.dm, align 1, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %.04991, i64 128 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05090, i64 64 ; 2 uses
  %i.dp = add nuw nsw i32 %.04892, 8              ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.h
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !32

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.dr = shl nsw i32 %i.j, 2                     ; 2 uses
  %i.ds = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.ds, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %bb.b
  %i.dt = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 4) ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.du, 28
  br i1 %min.iters.check, label %.lr.ph97.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader
  %i.dx = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 4)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.dz
  %scevgep112 = getelementptr i8, ptr %.049.lcssa, i64 %i.dz
  %bound0 = icmp ult ptr %i.a, %scevgep112
  %bound1 = icmp ult ptr %.049.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph97.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dw, 1073741820              ; 4 uses
  %i.ea = shl nuw nsw i64 %n.vec, 2
  %i.eb = shl nuw nsw i64 %n.vec, 4
  %i.ec = getelementptr i8, ptr %.049.lcssa, i64 %i.eb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.049.lcssa, i64 %i.ed
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !33
  %.idx = shl i64 %index, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  store <16 x float> %wide.vec, ptr %i.ee, align 16, !tbaa !12, !alias.scope !36, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %._crit_edge98, label %.lr.ph97.preheader147

.lr.ph97.preheader147:                            ; preds = %vector.memcheck, %.lr.ph97.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph97.preheader ], [ %i.ea, %middle.block ]
  %.194.ph = phi ptr [ %.049.lcssa, %vector.memcheck ], [ %.049.lcssa, %.lr.ph97.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph97

._crit_edge98:                                    ; preds = %.lr.ph97, %middle.block, %bb.b
  %i.eg = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.a, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ei = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.eh, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ek = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ej, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.em = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.el, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.en = fmul <8 x float> %i.f, %i.eg
  %i.eo = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.en, <8 x float> zeroinitializer)
  %i.ep = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.eo, <8 x float> %i.f) ; 2 uses
  %i.eq = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ep, i32 1) ; 3 uses
  %i.er = fsub <8 x float> %i.ep, %i.eq
  %i.es = fadd <8 x float> %i.eq, splat (float 1.000000e+00)
  %i.et = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.es, <8 x float> %i.f)
  %i.eu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.eq)
  %i.ev = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.et)
  %i.ew = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.eu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ex = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.ev, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ey = fsub <8 x float> %i.ex, %i.ew
  %i.ez = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ey, <8 x float> %i.er, <8 x float> %i.ew) ; 2 uses
  %i.fa = fmul <8 x float> %i.f, %i.ei
  %i.fb = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fa, <8 x float> zeroinitializer)
  %i.fc = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fb, <8 x float> %i.f) ; 2 uses
  %i.fd = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fc, i32 1) ; 3 uses
  %i.fe = fsub <8 x float> %i.fc, %i.fd
  %i.ff = fadd <8 x float> %i.fd, splat (float 1.000000e+00)
  %i.fg = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ff, <8 x float> %i.f)
  %i.fh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fd)
  %i.fi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fg)
  %i.fj = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fk = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fi, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fl = fsub <8 x float> %i.fk, %i.fj
  %i.fm = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fl, <8 x float> %i.fe, <8 x float> %i.fj) ; 2 uses
  %i.fn = fmul <8 x float> %i.f, %i.ek
  %i.fo = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fn, <8 x float> zeroinitializer)
  %i.fp = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fo, <8 x float> %i.f) ; 2 uses
  %i.fq = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fp, i32 1) ; 3 uses
  %i.fr = fsub <8 x float> %i.fp, %i.fq
  %i.fs = fadd <8 x float> %i.fq, splat (float 1.000000e+00)
  %i.ft = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fs, <8 x float> %i.f)
  %i.fu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fq)
  %i.fv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ft)
  %i.fw = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fx = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fy = fsub <8 x float> %i.fx, %i.fw
  %i.fz = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fy, <8 x float> %i.fr, <8 x float> %i.fw) ; 2 uses
  %i.ga = fmul <8 x float> %i.em, splat (float 1.023000e+03) ; 2 uses
  %i.gb = shufflevector <8 x float> %i.ez, <8 x float> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gc = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gd = shufflevector <8 x float> %i.ez, <8 x float> %i.fm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ge = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.gf = bitcast <8 x float> %i.gb to <4 x double> ; 2 uses
  %i.gg = bitcast <8 x float> %i.gc to <4 x double> ; 2 uses
  %i.gh = shufflevector <4 x double> %i.gf, <4 x double> %i.gg, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gi = shufflevector <4 x double> %i.gf, <4 x double> %i.gg, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gj = bitcast <8 x float> %i.gd to <4 x double> ; 2 uses
  %i.gk = bitcast <8 x float> %i.ge to <4 x double> ; 2 uses
  %i.gl = shufflevector <4 x double> %i.gj, <4 x double> %i.gk, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gm = shufflevector <4 x double> %i.gj, <4 x double> %i.gk, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gn = bitcast <4 x double> %i.gh to <8 x float>
  %i.go = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gn, <8 x float> zeroinitializer)
  %i.gp = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.go, <8 x float> splat (float 1.023000e+03))
  %i.gq = bitcast <4 x double> %i.gi to <8 x float>
  %i.gr = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gq, <8 x float> zeroinitializer)
  %i.gs = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gr, <8 x float> splat (float 1.023000e+03))
  %i.gt = bitcast <4 x double> %i.gl to <8 x float>
  %i.gu = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gt, <8 x float> zeroinitializer)
  %i.gv = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gu, <8 x float> splat (float 1.023000e+03))
  %i.gw = bitcast <4 x double> %i.gm to <8 x float>
  %i.gx = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gw, <8 x float> zeroinitializer)
  %i.gy = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gx, <8 x float> splat (float 1.023000e+03))
  %i.gz = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gp)
  %i.ha = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gs)
  %i.hb = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gv)
  %i.hc = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gy)
  %i.hd = bitcast <8 x i32> %i.gz to <32 x i8>
  %i.he = shufflevector <32 x i8> %i.hd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hf = bitcast <32 x i8> %i.he to <4 x i64>
  %i.hg = shufflevector <4 x i64> %i.hf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hh = bitcast <32 x i8> %i.he to <4 x i64>
  %i.hi = shufflevector <4 x i64> %i.hh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hj = or <2 x i64> %i.hg, %i.hi
  %i.hk = bitcast <8 x i32> %i.ha to <32 x i8>
  %i.hl = shufflevector <32 x i8> %i.hk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hm = bitcast <32 x i8> %i.hl to <4 x i64>
  %i.hn = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ho = bitcast <32 x i8> %i.hl to <4 x i64>
  %i.hp = shufflevector <4 x i64> %i.ho, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hq = or <2 x i64> %i.hn, %i.hp
  %i.hr = shufflevector <2 x i64> %i.hj, <2 x i64> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.hr, ptr %i.b, align 16, !tbaa !9
  %i.hs = bitcast <8 x i32> %i.hb to <32 x i8>
  %i.ht = shufflevector <32 x i8> %i.hs, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hu = bitcast <32 x i8> %i.ht to <4 x i64>
  %i.hv = shufflevector <4 x i64> %i.hu, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hw = bitcast <32 x i8> %i.ht to <4 x i64>
  %i.hx = shufflevector <4 x i64> %i.hw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hy = or <2 x i64> %i.hv, %i.hx
  %i.hz = bitcast <8 x i32> %i.hc to <32 x i8>
  %i.ia = shufflevector <32 x i8> %i.hz, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.ib = bitcast <32 x i8> %i.ia to <4 x i64>
  %i.ic = shufflevector <4 x i64> %i.ib, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.id = bitcast <32 x i8> %i.ia to <4 x i64>
  %i.ie = shufflevector <4 x i64> %i.id, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.if = or <2 x i64> %i.ic, %i.ie
  %i.ig = shufflevector <2 x i64> %i.hy, <2 x i64> %i.if, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i64> %i.ig, ptr %i.ih, align 16, !tbaa !9
  br i1 %i.ds, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %._crit_edge98
  %i.ii = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.ij = call i64 @llvm.usub.sat.i64(i64 %i.ii, i64 4) ; 2 uses
  %i.ik = lshr exact i64 %i.ij, 2
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check127 = icmp samesign ult i64 %i.ij, 28
  br i1 %min.iters.check127, label %.lr.ph103.preheader146, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph103.preheader
  %i.im = call i64 @llvm.usub.sat.i64(i64 %i.ii, i64 4)
  %i.in = shl nuw nsw i64 %i.im, 1
  %i.io = add nuw nsw i64 %i.in, 8                ; 2 uses
  %scevgep120 = getelementptr i8, ptr %.050.lcssa, i64 %i.io
  %scevgep121 = getelementptr i8, ptr %i.b, i64 %i.io
  %bound0122 = icmp ult ptr %.050.lcssa, %scevgep121
  %bound1123 = icmp ult ptr %i.b, %scevgep120
  %found.conflict124 = and i1 %bound0122, %bound1123
  br i1 %found.conflict124, label %.lr.ph103.preheader146, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck118
  %n.vec130 = and i64 %i.il, 1073741816           ; 4 uses
  %i.ip = shl nuw nsw i64 %n.vec130, 2
  %i.iq = shl nuw nsw i64 %n.vec130, 3
  %i.ir = getelementptr i8, ptr %.050.lcssa, i64 %i.iq
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next140, %vector.body131 ] ; 3 uses
  %i.is = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %.050.lcssa, i64 %i.is
  %.idx145 = shl i64 %index132, 3
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx145
  %wide.vec134 = load <32 x i16>, ptr %i.it, align 16, !tbaa !39, !alias.scope !41
  store <32 x i16> %wide.vec134, ptr %next.gep133, align 2, !tbaa !39, !alias.scope !44, !noalias !41
  %index.next140 = add nuw i64 %index132, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next140, %n.vec130
  br i1 %i.iu, label %middle.block141, label %vector.body131, !llvm.loop !46

middle.block141:                                  ; preds = %vector.body131
  %cmp.n142 = icmp eq i64 %i.il, %n.vec130
  br i1 %cmp.n142, label %._crit_edge104, label %.lr.ph103.preheader146

.lr.ph103.preheader146:                           ; preds = %vector.memcheck118, %.lr.ph103.preheader, %middle.block141
  %indvars.iv107.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph103.preheader ], [ %i.ip, %middle.block141 ]
  %.151100.ph = phi ptr [ %.050.lcssa, %vector.memcheck118 ], [ %.050.lcssa, %.lr.ph103.preheader ], [ %i.ir, %middle.block141 ]
  br label %.lr.ph103

.lr.ph97:                                         ; preds = %.lr.ph97.preheader147, %.lr.ph97
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph97 ], [ %indvars.iv.ph, %.lr.ph97.preheader147 ] ; 2 uses
  %.194 = phi ptr [ %i.jg, %.lr.ph97 ], [ %.194.ph, %.lr.ph97.preheader147 ] ; 5 uses
  %i.iv = load float, ptr %.194, align 4, !tbaa !12
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store float %i.iv, ptr %i.iw, align 16, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %.194, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store float %i.iy, ptr %i.iz, align 4, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.194, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store float %i.jb, ptr %i.jc, align 8, !tbaa !12
  %i.jd = getelementptr inbounds nuw i8, ptr %.194, i64 12
  %i.je = load float, ptr %i.jd, align 4, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store float %i.je, ptr %i.jf, align 4, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.194, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next, %i.dt
  br i1 %i.jh, label %.lr.ph97, label %._crit_edge98, !llvm.loop !47

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block141, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

.lr.ph103:                                        ; preds = %.lr.ph103.preheader146, %.lr.ph103
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph103 ], [ %indvars.iv107.ph, %.lr.ph103.preheader146 ] ; 2 uses
  %.151100 = phi ptr [ %i.jt, %.lr.ph103 ], [ %.151100.ph, %.lr.ph103.preheader146 ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv107 ; 4 uses
  %i.jj = load i16, ptr %i.ji, align 8, !tbaa !39
  store i16 %i.jj, ptr %.151100, align 2, !tbaa !39
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !39
  %i.jm = getelementptr inbounds nuw i8, ptr %.151100, i64 2
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !39
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !39
  %i.jp = getelementptr inbounds nuw i8, ptr %.151100, i64 4
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !39
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 6
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !39
  %i.js = getelementptr inbounds nuw i8, ptr %.151100, i64 6
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %.151100, i64 8
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %i.ju = icmp samesign ult i64 %indvars.iv.next108, %i.ii
  br i1 %i.ju, label %.lr.ph103, label %._crit_edge104, !llvm.loop !48

bb.c:                                             ; preds = %._crit_edge104, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_3EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  %i.b = alloca [32 x i16], align 16              ; 8 uses
  %i.c = sitofp i32 %3 to float
  %i.d = fadd float %i.c, -1.000000e+00
  %i.e = insertelement <8 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer ; 18 uses
  %i.g = sdiv i64 %6, 8
  %.tr = trunc i64 %i.g to i32
  %i.h = shl i32 %.tr, 3                          ; 4 uses
  %i.i = trunc i64 %6 to i32                      ; 2 uses
  %i.j = sub i32 %i.i, %i.h                       ; 2 uses
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.050.lcssa = phi ptr [ %5, %bb.a ], [ %i.do, %.lr.ph ] ; 6 uses
  %.049.lcssa = phi ptr [ %4, %bb.a ], [ %i.dn, %.lr.ph ] ; 6 uses
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04892 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %bb.a ]
  %.04991 = phi ptr [ %i.dn, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %.05090 = phi ptr [ %i.do, %.lr.ph ], [ %5, %bb.a ] ; 3 uses
  %i.l = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.04991, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.m = getelementptr inbounds nuw i8, ptr %.04991, i64 4
  %i.n = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.m, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.o = getelementptr inbounds nuw i8, ptr %.04991, i64 8
  %i.p = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.o, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.q = getelementptr inbounds nuw i8, ptr %.04991, i64 12
  %i.r = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.q, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.s = fmul <8 x float> %i.f, %i.l
  %i.t = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.s, <8 x float> zeroinitializer)
  %i.u = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.t, <8 x float> %i.f) ; 2 uses
  %i.v = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.u, i32 1) ; 3 uses
  %i.w = fsub <8 x float> %i.u, %i.v
  %i.x = fadd <8 x float> %i.v, splat (float 1.000000e+00)
  %i.y = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.x, <8 x float> %i.f)
  %i.z = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.v)
  %i.aa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.y)
  %i.ab = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.z, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ac = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.aa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ad = fsub <8 x float> %i.ac, %i.ab
  %i.ae = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ad, <8 x float> %i.w, <8 x float> %i.ab) ; 2 uses
  %i.af = fmul <8 x float> %i.f, %i.n
  %i.ag = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.af, <8 x float> zeroinitializer)
  %i.ah = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ag, <8 x float> %i.f) ; 2 uses
  %i.ai = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 3 uses
  %i.aj = fsub <8 x float> %i.ah, %i.ai
  %i.ak = fadd <8 x float> %i.ai, splat (float 1.000000e+00)
  %i.al = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ak, <8 x float> %i.f)
  %i.am = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ai)
  %i.an = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.al)
  %i.ao = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.am, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ap = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.an, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aq = fsub <8 x float> %i.ap, %i.ao
  %i.ar = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aq, <8 x float> %i.aj, <8 x float> %i.ao) ; 2 uses
  %i.as = fmul <8 x float> %i.f, %i.p
  %i.at = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.as, <8 x float> zeroinitializer)
  %i.au = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.at, <8 x float> %i.f) ; 2 uses
  %i.av = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 3 uses
  %i.aw = fsub <8 x float> %i.au, %i.av
  %i.ax = fadd <8 x float> %i.av, splat (float 1.000000e+00)
  %i.ay = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ax, <8 x float> %i.f)
  %i.az = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.av)
  %i.ba = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ay)
  %i.bb = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.az, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bc = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ba, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bd = fsub <8 x float> %i.bc, %i.bb
  %i.be = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> %i.aw, <8 x float> %i.bb) ; 2 uses
  %i.bf = fmul <8 x float> %i.r, splat (float 4.095000e+03) ; 2 uses
  %i.bg = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bh = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bi = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bj = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bk = bitcast <8 x float> %i.bg to <4 x double> ; 2 uses
  %i.bl = bitcast <8 x float> %i.bh to <4 x double> ; 2 uses
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bn = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bo = bitcast <8 x float> %i.bi to <4 x double> ; 2 uses
  %i.bp = bitcast <8 x float> %i.bj to <4 x double> ; 2 uses
  %i.bq = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.br = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bs = bitcast <4 x double> %i.bm to <8 x float>
  %i.bt = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.bs, <8 x float> zeroinitializer)
  %i.bu = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bt, <8 x float> splat (float 4.095000e+03))
  %i.bv = bitcast <4 x double> %i.bn to <8 x float>
  %i.bw = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.bv, <8 x float> zeroinitializer)
  %i.bx = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bw, <8 x float> splat (float 4.095000e+03))
  %i.by = bitcast <4 x double> %i.bq to <8 x float>
  %i.bz = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.by, <8 x float> zeroinitializer)
  %i.ca = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bz, <8 x float> splat (float 4.095000e+03))
  %i.cb = bitcast <4 x double> %i.br to <8 x float>
  %i.cc = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.cb, <8 x float> zeroinitializer)
  %i.cd = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.cc, <8 x float> splat (float 4.095000e+03))
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.bu)
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.bx)
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.ca)
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.cd)
  %i.ci = bitcast <8 x i32> %i.ce to <32 x i8>
  %i.cj = shufflevector <32 x i8> %i.ci, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.ck = bitcast <32 x i8> %i.cj to <4 x i64>
  %i.cl = shufflevector <4 x i64> %i.ck, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = bitcast <32 x i8> %i.cj to <4 x i64>
  %i.cn = shufflevector <4 x i64> %i.cm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.co = or <2 x i64> %i.cl, %i.cn
  %i.cp = bitcast <8 x i32> %i.cf to <32 x i8>
  %i.cq = shufflevector <32 x i8> %i.cp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.cr = bitcast <32 x i8> %i.cq to <4 x i64>
  %i.cs = shufflevector <4 x i64> %i.cr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ct = bitcast <32 x i8> %i.cq to <4 x i64>
  %i.cu = shufflevector <4 x i64> %i.ct, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.cv = or <2 x i64> %i.cs, %i.cu
  %i.cw = shufflevector <2 x i64> %i.co, <2 x i64> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.cw, ptr %.05090, align 1, !tbaa !9
  %i.cx = bitcast <8 x i32> %i.cg to <32 x i8>
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.cz = bitcast <32 x i8> %i.cy to <4 x i64>
  %i.da = shufflevector <4 x i64> %i.cz, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.db = bitcast <32 x i8> %i.cy to <4 x i64>
  %i.dc = shufflevector <4 x i64> %i.db, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.dd = or <2 x i64> %i.da, %i.dc
  %i.de = bitcast <8 x i32> %i.ch to <32 x i8>
  %i.df = shufflevector <32 x i8> %i.de, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.dg = bitcast <32 x i8> %i.df to <4 x i64>
  %i.dh = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.di = bitcast <32 x i8> %i.df to <4 x i64>
  %i.dj = shufflevector <4 x i64> %i.di, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.dk = or <2 x i64> %i.dh, %i.dj
  %i.dl = shufflevector <2 x i64> %i.dd, <2 x i64> %i.dk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = getelementptr inbounds nuw i8, ptr %.05090, i64 32
  store <4 x i64> %i.dl, ptr %i.dm, align 1, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %.04991, i64 128 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05090, i64 64 ; 2 uses
  %i.dp = add nuw nsw i32 %.04892, 8              ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.h
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !49

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.dr = shl nsw i32 %i.j, 2                     ; 2 uses
  %i.ds = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.ds, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %bb.b
  %i.dt = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 4) ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.du, 28
  br i1 %min.iters.check, label %.lr.ph97.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader
  %i.dx = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 4)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.dz
  %scevgep112 = getelementptr i8, ptr %.049.lcssa, i64 %i.dz
  %bound0 = icmp ult ptr %i.a, %scevgep112
  %bound1 = icmp ult ptr %.049.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph97.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dw, 1073741820              ; 4 uses
  %i.ea = shl nuw nsw i64 %n.vec, 2
  %i.eb = shl nuw nsw i64 %n.vec, 4
  %i.ec = getelementptr i8, ptr %.049.lcssa, i64 %i.eb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.049.lcssa, i64 %i.ed
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !50
  %.idx = shl i64 %index, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  store <16 x float> %wide.vec, ptr %i.ee, align 16, !tbaa !12, !alias.scope !53, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %._crit_edge98, label %.lr.ph97.preheader147

.lr.ph97.preheader147:                            ; preds = %vector.memcheck, %.lr.ph97.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph97.preheader ], [ %i.ea, %middle.block ]
  %.194.ph = phi ptr [ %.049.lcssa, %vector.memcheck ], [ %.049.lcssa, %.lr.ph97.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph97

._crit_edge98:                                    ; preds = %.lr.ph97, %middle.block, %bb.b
  %i.eg = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.a, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ei = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.eh, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ek = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ej, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.em = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.el, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.en = fmul <8 x float> %i.f, %i.eg
  %i.eo = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.en, <8 x float> zeroinitializer)
  %i.ep = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.eo, <8 x float> %i.f) ; 2 uses
  %i.eq = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ep, i32 1) ; 3 uses
  %i.er = fsub <8 x float> %i.ep, %i.eq
  %i.es = fadd <8 x float> %i.eq, splat (float 1.000000e+00)
  %i.et = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.es, <8 x float> %i.f)
  %i.eu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.eq)
  %i.ev = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.et)
  %i.ew = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.eu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ex = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.ev, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ey = fsub <8 x float> %i.ex, %i.ew
  %i.ez = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ey, <8 x float> %i.er, <8 x float> %i.ew) ; 2 uses
  %i.fa = fmul <8 x float> %i.f, %i.ei
  %i.fb = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fa, <8 x float> zeroinitializer)
  %i.fc = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fb, <8 x float> %i.f) ; 2 uses
  %i.fd = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fc, i32 1) ; 3 uses
  %i.fe = fsub <8 x float> %i.fc, %i.fd
  %i.ff = fadd <8 x float> %i.fd, splat (float 1.000000e+00)
  %i.fg = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ff, <8 x float> %i.f)
  %i.fh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fd)
  %i.fi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fg)
  %i.fj = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fk = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fi, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fl = fsub <8 x float> %i.fk, %i.fj
  %i.fm = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fl, <8 x float> %i.fe, <8 x float> %i.fj) ; 2 uses
  %i.fn = fmul <8 x float> %i.f, %i.ek
  %i.fo = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fn, <8 x float> zeroinitializer)
  %i.fp = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fo, <8 x float> %i.f) ; 2 uses
  %i.fq = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fp, i32 1) ; 3 uses
  %i.fr = fsub <8 x float> %i.fp, %i.fq
  %i.fs = fadd <8 x float> %i.fq, splat (float 1.000000e+00)
  %i.ft = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fs, <8 x float> %i.f)
  %i.fu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fq)
  %i.fv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ft)
  %i.fw = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fx = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fy = fsub <8 x float> %i.fx, %i.fw
  %i.fz = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fy, <8 x float> %i.fr, <8 x float> %i.fw) ; 2 uses
  %i.ga = fmul <8 x float> %i.em, splat (float 4.095000e+03) ; 2 uses
  %i.gb = shufflevector <8 x float> %i.ez, <8 x float> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gc = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gd = shufflevector <8 x float> %i.ez, <8 x float> %i.fm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ge = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.gf = bitcast <8 x float> %i.gb to <4 x double> ; 2 uses
  %i.gg = bitcast <8 x float> %i.gc to <4 x double> ; 2 uses
  %i.gh = shufflevector <4 x double> %i.gf, <4 x double> %i.gg, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gi = shufflevector <4 x double> %i.gf, <4 x double> %i.gg, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gj = bitcast <8 x float> %i.gd to <4 x double> ; 2 uses
  %i.gk = bitcast <8 x float> %i.ge to <4 x double> ; 2 uses
  %i.gl = shufflevector <4 x double> %i.gj, <4 x double> %i.gk, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gm = shufflevector <4 x double> %i.gj, <4 x double> %i.gk, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gn = bitcast <4 x double> %i.gh to <8 x float>
  %i.go = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gn, <8 x float> zeroinitializer)
  %i.gp = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.go, <8 x float> splat (float 4.095000e+03))
  %i.gq = bitcast <4 x double> %i.gi to <8 x float>
  %i.gr = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gq, <8 x float> zeroinitializer)
  %i.gs = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gr, <8 x float> splat (float 4.095000e+03))
  %i.gt = bitcast <4 x double> %i.gl to <8 x float>
  %i.gu = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gt, <8 x float> zeroinitializer)
  %i.gv = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gu, <8 x float> splat (float 4.095000e+03))
  %i.gw = bitcast <4 x double> %i.gm to <8 x float>
  %i.gx = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gw, <8 x float> zeroinitializer)
  %i.gy = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gx, <8 x float> splat (float 4.095000e+03))
  %i.gz = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gp)
  %i.ha = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gs)
  %i.hb = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gv)
  %i.hc = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gy)
  %i.hd = bitcast <8 x i32> %i.gz to <32 x i8>
  %i.he = shufflevector <32 x i8> %i.hd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hf = bitcast <32 x i8> %i.he to <4 x i64>
  %i.hg = shufflevector <4 x i64> %i.hf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hh = bitcast <32 x i8> %i.he to <4 x i64>
  %i.hi = shufflevector <4 x i64> %i.hh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hj = or <2 x i64> %i.hg, %i.hi
  %i.hk = bitcast <8 x i32> %i.ha to <32 x i8>
  %i.hl = shufflevector <32 x i8> %i.hk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hm = bitcast <32 x i8> %i.hl to <4 x i64>
  %i.hn = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ho = bitcast <32 x i8> %i.hl to <4 x i64>
  %i.hp = shufflevector <4 x i64> %i.ho, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hq = or <2 x i64> %i.hn, %i.hp
  %i.hr = shufflevector <2 x i64> %i.hj, <2 x i64> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.hr, ptr %i.b, align 16, !tbaa !9
  %i.hs = bitcast <8 x i32> %i.hb to <32 x i8>
  %i.ht = shufflevector <32 x i8> %i.hs, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hu = bitcast <32 x i8> %i.ht to <4 x i64>
  %i.hv = shufflevector <4 x i64> %i.hu, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hw = bitcast <32 x i8> %i.ht to <4 x i64>
  %i.hx = shufflevector <4 x i64> %i.hw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hy = or <2 x i64> %i.hv, %i.hx
  %i.hz = bitcast <8 x i32> %i.hc to <32 x i8>
  %i.ia = shufflevector <32 x i8> %i.hz, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.ib = bitcast <32 x i8> %i.ia to <4 x i64>
  %i.ic = shufflevector <4 x i64> %i.ib, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.id = bitcast <32 x i8> %i.ia to <4 x i64>
  %i.ie = shufflevector <4 x i64> %i.id, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.if = or <2 x i64> %i.ic, %i.ie
  %i.ig = shufflevector <2 x i64> %i.hy, <2 x i64> %i.if, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i64> %i.ig, ptr %i.ih, align 16, !tbaa !9
  br i1 %i.ds, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %._crit_edge98
  %i.ii = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.ij = call i64 @llvm.usub.sat.i64(i64 %i.ii, i64 4) ; 2 uses
  %i.ik = lshr exact i64 %i.ij, 2
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check127 = icmp samesign ult i64 %i.ij, 28
  br i1 %min.iters.check127, label %.lr.ph103.preheader146, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph103.preheader
  %i.im = call i64 @llvm.usub.sat.i64(i64 %i.ii, i64 4)
  %i.in = shl nuw nsw i64 %i.im, 1
  %i.io = add nuw nsw i64 %i.in, 8                ; 2 uses
  %scevgep120 = getelementptr i8, ptr %.050.lcssa, i64 %i.io
  %scevgep121 = getelementptr i8, ptr %i.b, i64 %i.io
  %bound0122 = icmp ult ptr %.050.lcssa, %scevgep121
  %bound1123 = icmp ult ptr %i.b, %scevgep120
  %found.conflict124 = and i1 %bound0122, %bound1123
  br i1 %found.conflict124, label %.lr.ph103.preheader146, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck118
  %n.vec130 = and i64 %i.il, 1073741816           ; 4 uses
  %i.ip = shl nuw nsw i64 %n.vec130, 2
  %i.iq = shl nuw nsw i64 %n.vec130, 3
  %i.ir = getelementptr i8, ptr %.050.lcssa, i64 %i.iq
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next140, %vector.body131 ] ; 3 uses
  %i.is = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %.050.lcssa, i64 %i.is
  %.idx145 = shl i64 %index132, 3
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx145
  %wide.vec134 = load <32 x i16>, ptr %i.it, align 16, !tbaa !39, !alias.scope !56
  store <32 x i16> %wide.vec134, ptr %next.gep133, align 2, !tbaa !39, !alias.scope !59, !noalias !56
  %index.next140 = add nuw i64 %index132, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next140, %n.vec130
  br i1 %i.iu, label %middle.block141, label %vector.body131, !llvm.loop !61

middle.block141:                                  ; preds = %vector.body131
  %cmp.n142 = icmp eq i64 %i.il, %n.vec130
  br i1 %cmp.n142, label %._crit_edge104, label %.lr.ph103.preheader146

.lr.ph103.preheader146:                           ; preds = %vector.memcheck118, %.lr.ph103.preheader, %middle.block141
  %indvars.iv107.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph103.preheader ], [ %i.ip, %middle.block141 ]
  %.151100.ph = phi ptr [ %.050.lcssa, %vector.memcheck118 ], [ %.050.lcssa, %.lr.ph103.preheader ], [ %i.ir, %middle.block141 ]
  br label %.lr.ph103

.lr.ph97:                                         ; preds = %.lr.ph97.preheader147, %.lr.ph97
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph97 ], [ %indvars.iv.ph, %.lr.ph97.preheader147 ] ; 2 uses
  %.194 = phi ptr [ %i.jg, %.lr.ph97 ], [ %.194.ph, %.lr.ph97.preheader147 ] ; 5 uses
  %i.iv = load float, ptr %.194, align 4, !tbaa !12
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store float %i.iv, ptr %i.iw, align 16, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %.194, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store float %i.iy, ptr %i.iz, align 4, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.194, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store float %i.jb, ptr %i.jc, align 8, !tbaa !12
  %i.jd = getelementptr inbounds nuw i8, ptr %.194, i64 12
  %i.je = load float, ptr %i.jd, align 4, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store float %i.je, ptr %i.jf, align 4, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.194, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next, %i.dt
  br i1 %i.jh, label %.lr.ph97, label %._crit_edge98, !llvm.loop !62

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block141, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

.lr.ph103:                                        ; preds = %.lr.ph103.preheader146, %.lr.ph103
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph103 ], [ %indvars.iv107.ph, %.lr.ph103.preheader146 ] ; 2 uses
  %.151100 = phi ptr [ %i.jt, %.lr.ph103 ], [ %.151100.ph, %.lr.ph103.preheader146 ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv107 ; 4 uses
  %i.jj = load i16, ptr %i.ji, align 8, !tbaa !39
  store i16 %i.jj, ptr %.151100, align 2, !tbaa !39
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !39
  %i.jm = getelementptr inbounds nuw i8, ptr %.151100, i64 2
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !39
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !39
  %i.jp = getelementptr inbounds nuw i8, ptr %.151100, i64 4
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !39
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 6
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !39
  %i.js = getelementptr inbounds nuw i8, ptr %.151100, i64 6
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %.151100, i64 8
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %i.ju = icmp samesign ult i64 %indvars.iv.next108, %i.ii
  br i1 %i.ju, label %.lr.ph103, label %._crit_edge104, !llvm.loop !63

bb.c:                                             ; preds = %._crit_edge104, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_5EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  %i.b = alloca [32 x i16], align 16              ; 8 uses
  %i.c = sitofp i32 %3 to float
  %i.d = fadd float %i.c, -1.000000e+00
  %i.e = insertelement <8 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer ; 18 uses
  %i.g = sdiv i64 %6, 8
  %.tr = trunc i64 %i.g to i32
  %i.h = shl i32 %.tr, 3                          ; 4 uses
  %i.i = trunc i64 %6 to i32                      ; 2 uses
  %i.j = sub i32 %i.i, %i.h                       ; 2 uses
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.050.lcssa = phi ptr [ %5, %bb.a ], [ %i.do, %.lr.ph ] ; 6 uses
  %.049.lcssa = phi ptr [ %4, %bb.a ], [ %i.dn, %.lr.ph ] ; 6 uses
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04892 = phi i32 [ %i.dp, %.lr.ph ], [ 0, %bb.a ]
  %.04991 = phi ptr [ %i.dn, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %.05090 = phi ptr [ %i.do, %.lr.ph ], [ %5, %bb.a ] ; 3 uses
  %i.l = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.04991, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.m = getelementptr inbounds nuw i8, ptr %.04991, i64 4
  %i.n = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.m, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.o = getelementptr inbounds nuw i8, ptr %.04991, i64 8
  %i.p = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.o, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.q = getelementptr inbounds nuw i8, ptr %.04991, i64 12
  %i.r = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.q, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.s = fmul <8 x float> %i.f, %i.l
  %i.t = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.s, <8 x float> zeroinitializer)
  %i.u = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.t, <8 x float> %i.f) ; 2 uses
  %i.v = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.u, i32 1) ; 3 uses
  %i.w = fsub <8 x float> %i.u, %i.v
  %i.x = fadd <8 x float> %i.v, splat (float 1.000000e+00)
  %i.y = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.x, <8 x float> %i.f)
  %i.z = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.v)
  %i.aa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.y)
  %i.ab = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.z, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ac = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.aa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ad = fsub <8 x float> %i.ac, %i.ab
  %i.ae = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ad, <8 x float> %i.w, <8 x float> %i.ab) ; 2 uses
  %i.af = fmul <8 x float> %i.f, %i.n
  %i.ag = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.af, <8 x float> zeroinitializer)
  %i.ah = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ag, <8 x float> %i.f) ; 2 uses
  %i.ai = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 3 uses
  %i.aj = fsub <8 x float> %i.ah, %i.ai
  %i.ak = fadd <8 x float> %i.ai, splat (float 1.000000e+00)
  %i.al = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ak, <8 x float> %i.f)
  %i.am = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ai)
  %i.an = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.al)
  %i.ao = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.am, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ap = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.an, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aq = fsub <8 x float> %i.ap, %i.ao
  %i.ar = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aq, <8 x float> %i.aj, <8 x float> %i.ao) ; 2 uses
  %i.as = fmul <8 x float> %i.f, %i.p
  %i.at = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.as, <8 x float> zeroinitializer)
  %i.au = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.at, <8 x float> %i.f) ; 2 uses
  %i.av = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 3 uses
  %i.aw = fsub <8 x float> %i.au, %i.av
  %i.ax = fadd <8 x float> %i.av, splat (float 1.000000e+00)
  %i.ay = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ax, <8 x float> %i.f)
  %i.az = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.av)
  %i.ba = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ay)
  %i.bb = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.az, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bc = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ba, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bd = fsub <8 x float> %i.bc, %i.bb
  %i.be = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> %i.aw, <8 x float> %i.bb) ; 2 uses
  %i.bf = fmul <8 x float> %i.r, splat (float 6.553500e+04) ; 2 uses
  %i.bg = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bh = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bi = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bj = shufflevector <8 x float> %i.be, <8 x float> %i.bf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bk = bitcast <8 x float> %i.bg to <4 x double> ; 2 uses
  %i.bl = bitcast <8 x float> %i.bh to <4 x double> ; 2 uses
  %i.bm = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bn = shufflevector <4 x double> %i.bk, <4 x double> %i.bl, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bo = bitcast <8 x float> %i.bi to <4 x double> ; 2 uses
  %i.bp = bitcast <8 x float> %i.bj to <4 x double> ; 2 uses
  %i.bq = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.br = shufflevector <4 x double> %i.bo, <4 x double> %i.bp, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bs = bitcast <4 x double> %i.bm to <8 x float>
  %i.bt = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.bs, <8 x float> zeroinitializer)
  %i.bu = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bt, <8 x float> splat (float 6.553500e+04))
  %i.bv = bitcast <4 x double> %i.bn to <8 x float>
  %i.bw = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.bv, <8 x float> zeroinitializer)
  %i.bx = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bw, <8 x float> splat (float 6.553500e+04))
  %i.by = bitcast <4 x double> %i.bq to <8 x float>
  %i.bz = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.by, <8 x float> zeroinitializer)
  %i.ca = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bz, <8 x float> splat (float 6.553500e+04))
  %i.cb = bitcast <4 x double> %i.br to <8 x float>
  %i.cc = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.cb, <8 x float> zeroinitializer)
  %i.cd = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.cc, <8 x float> splat (float 6.553500e+04))
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.bu)
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.bx)
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.ca)
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.cd)
  %i.ci = bitcast <8 x i32> %i.ce to <32 x i8>
  %i.cj = shufflevector <32 x i8> %i.ci, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.ck = bitcast <32 x i8> %i.cj to <4 x i64>
  %i.cl = shufflevector <4 x i64> %i.ck, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = bitcast <32 x i8> %i.cj to <4 x i64>
  %i.cn = shufflevector <4 x i64> %i.cm, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.co = or <2 x i64> %i.cl, %i.cn
  %i.cp = bitcast <8 x i32> %i.cf to <32 x i8>
  %i.cq = shufflevector <32 x i8> %i.cp, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.cr = bitcast <32 x i8> %i.cq to <4 x i64>
  %i.cs = shufflevector <4 x i64> %i.cr, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ct = bitcast <32 x i8> %i.cq to <4 x i64>
  %i.cu = shufflevector <4 x i64> %i.ct, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.cv = or <2 x i64> %i.cs, %i.cu
  %i.cw = shufflevector <2 x i64> %i.co, <2 x i64> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.cw, ptr %.05090, align 1, !tbaa !9
  %i.cx = bitcast <8 x i32> %i.cg to <32 x i8>
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.cz = bitcast <32 x i8> %i.cy to <4 x i64>
  %i.da = shufflevector <4 x i64> %i.cz, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.db = bitcast <32 x i8> %i.cy to <4 x i64>
  %i.dc = shufflevector <4 x i64> %i.db, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.dd = or <2 x i64> %i.da, %i.dc
  %i.de = bitcast <8 x i32> %i.ch to <32 x i8>
  %i.df = shufflevector <32 x i8> %i.de, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.dg = bitcast <32 x i8> %i.df to <4 x i64>
  %i.dh = shufflevector <4 x i64> %i.dg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.di = bitcast <32 x i8> %i.df to <4 x i64>
  %i.dj = shufflevector <4 x i64> %i.di, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.dk = or <2 x i64> %i.dh, %i.dj
  %i.dl = shufflevector <2 x i64> %i.dd, <2 x i64> %i.dk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = getelementptr inbounds nuw i8, ptr %.05090, i64 32
  store <4 x i64> %i.dl, ptr %i.dm, align 1, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %.04991, i64 128 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05090, i64 64 ; 2 uses
  %i.dp = add nuw nsw i32 %.04892, 8              ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.h
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !64

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.dr = shl nsw i32 %i.j, 2                     ; 2 uses
  %i.ds = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.ds, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %bb.b
  %i.dt = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.du = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 4) ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.du, 28
  br i1 %min.iters.check, label %.lr.ph97.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader
  %i.dx = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 4)
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.dz
  %scevgep112 = getelementptr i8, ptr %.049.lcssa, i64 %i.dz
  %bound0 = icmp ult ptr %i.a, %scevgep112
  %bound1 = icmp ult ptr %.049.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph97.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dw, 1073741820              ; 4 uses
  %i.ea = shl nuw nsw i64 %n.vec, 2
  %i.eb = shl nuw nsw i64 %n.vec, 4
  %i.ec = getelementptr i8, ptr %.049.lcssa, i64 %i.eb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.049.lcssa, i64 %i.ed
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !65
  %.idx = shl i64 %index, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  store <16 x float> %wide.vec, ptr %i.ee, align 16, !tbaa !12, !alias.scope !68, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %._crit_edge98, label %.lr.ph97.preheader147

.lr.ph97.preheader147:                            ; preds = %vector.memcheck, %.lr.ph97.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph97.preheader ], [ %i.ea, %middle.block ]
  %.194.ph = phi ptr [ %.049.lcssa, %vector.memcheck ], [ %.049.lcssa, %.lr.ph97.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph97

._crit_edge98:                                    ; preds = %.lr.ph97, %middle.block, %bb.b
  %i.eg = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.a, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ei = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.eh, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ek = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ej, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.em = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.el, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.en = fmul <8 x float> %i.f, %i.eg
  %i.eo = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.en, <8 x float> zeroinitializer)
  %i.ep = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.eo, <8 x float> %i.f) ; 2 uses
  %i.eq = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ep, i32 1) ; 3 uses
  %i.er = fsub <8 x float> %i.ep, %i.eq
  %i.es = fadd <8 x float> %i.eq, splat (float 1.000000e+00)
  %i.et = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.es, <8 x float> %i.f)
  %i.eu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.eq)
  %i.ev = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.et)
  %i.ew = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.eu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ex = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.ev, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ey = fsub <8 x float> %i.ex, %i.ew
  %i.ez = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ey, <8 x float> %i.er, <8 x float> %i.ew) ; 2 uses
  %i.fa = fmul <8 x float> %i.f, %i.ei
  %i.fb = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fa, <8 x float> zeroinitializer)
  %i.fc = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fb, <8 x float> %i.f) ; 2 uses
  %i.fd = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fc, i32 1) ; 3 uses
  %i.fe = fsub <8 x float> %i.fc, %i.fd
  %i.ff = fadd <8 x float> %i.fd, splat (float 1.000000e+00)
  %i.fg = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ff, <8 x float> %i.f)
  %i.fh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fd)
  %i.fi = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fg)
  %i.fj = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fk = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.fi, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fl = fsub <8 x float> %i.fk, %i.fj
  %i.fm = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fl, <8 x float> %i.fe, <8 x float> %i.fj) ; 2 uses
  %i.fn = fmul <8 x float> %i.f, %i.ek
  %i.fo = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.fn, <8 x float> zeroinitializer)
  %i.fp = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fo, <8 x float> %i.f) ; 2 uses
  %i.fq = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fp, i32 1) ; 3 uses
  %i.fr = fsub <8 x float> %i.fp, %i.fq
  %i.fs = fadd <8 x float> %i.fq, splat (float 1.000000e+00)
  %i.ft = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.fs, <8 x float> %i.f)
  %i.fu = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.fq)
  %i.fv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ft)
  %i.fw = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fu, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.fx = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.fv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.fy = fsub <8 x float> %i.fx, %i.fw
  %i.fz = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fy, <8 x float> %i.fr, <8 x float> %i.fw) ; 2 uses
  %i.ga = fmul <8 x float> %i.em, splat (float 6.553500e+04) ; 2 uses
  %i.gb = shufflevector <8 x float> %i.ez, <8 x float> %i.fm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gc = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gd = shufflevector <8 x float> %i.ez, <8 x float> %i.fm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ge = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.gf = bitcast <8 x float> %i.gb to <4 x double> ; 2 uses
  %i.gg = bitcast <8 x float> %i.gc to <4 x double> ; 2 uses
  %i.gh = shufflevector <4 x double> %i.gf, <4 x double> %i.gg, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gi = shufflevector <4 x double> %i.gf, <4 x double> %i.gg, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gj = bitcast <8 x float> %i.gd to <4 x double> ; 2 uses
  %i.gk = bitcast <8 x float> %i.ge to <4 x double> ; 2 uses
  %i.gl = shufflevector <4 x double> %i.gj, <4 x double> %i.gk, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gm = shufflevector <4 x double> %i.gj, <4 x double> %i.gk, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.gn = bitcast <4 x double> %i.gh to <8 x float>
  %i.go = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gn, <8 x float> zeroinitializer)
  %i.gp = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.go, <8 x float> splat (float 6.553500e+04))
  %i.gq = bitcast <4 x double> %i.gi to <8 x float>
  %i.gr = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gq, <8 x float> zeroinitializer)
  %i.gs = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gr, <8 x float> splat (float 6.553500e+04))
  %i.gt = bitcast <4 x double> %i.gl to <8 x float>
  %i.gu = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gt, <8 x float> zeroinitializer)
  %i.gv = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gu, <8 x float> splat (float 6.553500e+04))
  %i.gw = bitcast <4 x double> %i.gm to <8 x float>
  %i.gx = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.gw, <8 x float> zeroinitializer)
  %i.gy = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.gx, <8 x float> splat (float 6.553500e+04))
  %i.gz = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gp)
  %i.ha = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gs)
  %i.hb = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gv)
  %i.hc = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.gy)
  %i.hd = bitcast <8 x i32> %i.gz to <32 x i8>
  %i.he = shufflevector <32 x i8> %i.hd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hf = bitcast <32 x i8> %i.he to <4 x i64>
  %i.hg = shufflevector <4 x i64> %i.hf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hh = bitcast <32 x i8> %i.he to <4 x i64>
  %i.hi = shufflevector <4 x i64> %i.hh, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hj = or <2 x i64> %i.hg, %i.hi
  %i.hk = bitcast <8 x i32> %i.ha to <32 x i8>
  %i.hl = shufflevector <32 x i8> %i.hk, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hm = bitcast <32 x i8> %i.hl to <4 x i64>
  %i.hn = shufflevector <4 x i64> %i.hm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ho = bitcast <32 x i8> %i.hl to <4 x i64>
  %i.hp = shufflevector <4 x i64> %i.ho, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hq = or <2 x i64> %i.hn, %i.hp
  %i.hr = shufflevector <2 x i64> %i.hj, <2 x i64> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.hr, ptr %i.b, align 16, !tbaa !9
  %i.hs = bitcast <8 x i32> %i.hb to <32 x i8>
  %i.ht = shufflevector <32 x i8> %i.hs, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.hu = bitcast <32 x i8> %i.ht to <4 x i64>
  %i.hv = shufflevector <4 x i64> %i.hu, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.hw = bitcast <32 x i8> %i.ht to <4 x i64>
  %i.hx = shufflevector <4 x i64> %i.hw, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.hy = or <2 x i64> %i.hv, %i.hx
  %i.hz = bitcast <8 x i32> %i.hc to <32 x i8>
  %i.ia = shufflevector <32 x i8> %i.hz, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 16, i32 17, i32 20, i32 21, i32 24, i32 25, i32 28, i32 29> ; 2 uses
  %i.ib = bitcast <32 x i8> %i.ia to <4 x i64>
  %i.ic = shufflevector <4 x i64> %i.ib, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.id = bitcast <32 x i8> %i.ia to <4 x i64>
  %i.ie = shufflevector <4 x i64> %i.id, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.if = or <2 x i64> %i.ic, %i.ie
  %i.ig = shufflevector <2 x i64> %i.hy, <2 x i64> %i.if, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x i64> %i.ig, ptr %i.ih, align 16, !tbaa !9
  br i1 %i.ds, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %._crit_edge98
  %i.ii = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.ij = call i64 @llvm.usub.sat.i64(i64 %i.ii, i64 4) ; 2 uses
  %i.ik = lshr exact i64 %i.ij, 2
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check127 = icmp samesign ult i64 %i.ij, 28
  br i1 %min.iters.check127, label %.lr.ph103.preheader146, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph103.preheader
  %i.im = call i64 @llvm.usub.sat.i64(i64 %i.ii, i64 4)
  %i.in = shl nuw nsw i64 %i.im, 1
  %i.io = add nuw nsw i64 %i.in, 8                ; 2 uses
  %scevgep120 = getelementptr i8, ptr %.050.lcssa, i64 %i.io
  %scevgep121 = getelementptr i8, ptr %i.b, i64 %i.io
  %bound0122 = icmp ult ptr %.050.lcssa, %scevgep121
  %bound1123 = icmp ult ptr %i.b, %scevgep120
  %found.conflict124 = and i1 %bound0122, %bound1123
  br i1 %found.conflict124, label %.lr.ph103.preheader146, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck118
  %n.vec130 = and i64 %i.il, 1073741816           ; 4 uses
  %i.ip = shl nuw nsw i64 %n.vec130, 2
  %i.iq = shl nuw nsw i64 %n.vec130, 3
  %i.ir = getelementptr i8, ptr %.050.lcssa, i64 %i.iq
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next140, %vector.body131 ] ; 3 uses
  %i.is = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %.050.lcssa, i64 %i.is
  %.idx145 = shl i64 %index132, 3
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx145
  %wide.vec134 = load <32 x i16>, ptr %i.it, align 16, !tbaa !39, !alias.scope !71
  store <32 x i16> %wide.vec134, ptr %next.gep133, align 2, !tbaa !39, !alias.scope !74, !noalias !71
  %index.next140 = add nuw i64 %index132, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next140, %n.vec130
  br i1 %i.iu, label %middle.block141, label %vector.body131, !llvm.loop !76

middle.block141:                                  ; preds = %vector.body131
  %cmp.n142 = icmp eq i64 %i.il, %n.vec130
  br i1 %cmp.n142, label %._crit_edge104, label %.lr.ph103.preheader146

.lr.ph103.preheader146:                           ; preds = %vector.memcheck118, %.lr.ph103.preheader, %middle.block141
  %indvars.iv107.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph103.preheader ], [ %i.ip, %middle.block141 ]
  %.151100.ph = phi ptr [ %.050.lcssa, %vector.memcheck118 ], [ %.050.lcssa, %.lr.ph103.preheader ], [ %i.ir, %middle.block141 ]
  br label %.lr.ph103

.lr.ph97:                                         ; preds = %.lr.ph97.preheader147, %.lr.ph97
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph97 ], [ %indvars.iv.ph, %.lr.ph97.preheader147 ] ; 2 uses
  %.194 = phi ptr [ %i.jg, %.lr.ph97 ], [ %.194.ph, %.lr.ph97.preheader147 ] ; 5 uses
  %i.iv = load float, ptr %.194, align 4, !tbaa !12
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store float %i.iv, ptr %i.iw, align 16, !tbaa !12
  %i.ix = getelementptr inbounds nuw i8, ptr %.194, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !12
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store float %i.iy, ptr %i.iz, align 4, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %.194, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store float %i.jb, ptr %i.jc, align 8, !tbaa !12
  %i.jd = getelementptr inbounds nuw i8, ptr %.194, i64 12
  %i.je = load float, ptr %i.jd, align 4, !tbaa !12
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store float %i.je, ptr %i.jf, align 4, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %.194, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.jh = icmp samesign ult i64 %indvars.iv.next, %i.dt
  br i1 %i.jh, label %.lr.ph97, label %._crit_edge98, !llvm.loop !77

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block141, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

.lr.ph103:                                        ; preds = %.lr.ph103.preheader146, %.lr.ph103
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph103 ], [ %indvars.iv107.ph, %.lr.ph103.preheader146 ] ; 2 uses
  %.151100 = phi ptr [ %i.jt, %.lr.ph103 ], [ %.151100.ph, %.lr.ph103.preheader146 ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv107 ; 4 uses
  %i.jj = load i16, ptr %i.ji, align 8, !tbaa !39
  store i16 %i.jj, ptr %.151100, align 2, !tbaa !39
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !39
  %i.jm = getelementptr inbounds nuw i8, ptr %.151100, i64 2
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !39
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !39
  %i.jp = getelementptr inbounds nuw i8, ptr %.151100, i64 4
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !39
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 6
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !39
  %i.js = getelementptr inbounds nuw i8, ptr %.151100, i64 6
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %.151100, i64 8
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %i.ju = icmp samesign ult i64 %indvars.iv.next108, %i.ii
  br i1 %i.ju, label %.lr.ph103, label %._crit_edge104, !llvm.loop !78

bb.c:                                             ; preds = %._crit_edge104, %._crit_edge
  ret void
}

declare noundef nonnull align 4 dereferenceable(90) ptr @_ZN16OpenColorIO_v2_57CPUInfo8instanceEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_7EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  %7 = alloca [32 x %"class.Imath_3_1::half"], align 16 ; 8 uses
  %i.b = sitofp i32 %3 to float
  %i.c = fadd float %i.b, -1.000000e+00
  %i.d = insertelement <8 x float> poison, float %i.c, i64 0
  %i.e = shufflevector <8 x float> %i.d, <8 x float> poison, <8 x i32> zeroinitializer ; 18 uses
  %i.f = sdiv i64 %6, 8
  %.tr = trunc i64 %i.f to i32
  %i.g = shl i32 %.tr, 3                          ; 4 uses
  %i.h = trunc i64 %6 to i32                      ; 2 uses
  %i.i = sub i32 %i.h, %i.g                       ; 2 uses
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.050.lcssa = phi ptr [ %5, %bb.a ], [ %i.cc, %.lr.ph ] ; 6 uses
  %.049.lcssa = phi ptr [ %4, %bb.a ], [ %i.cb, %.lr.ph ] ; 6 uses
  %.not = icmp eq i32 %i.g, %i.h
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04892 = phi i32 [ %i.cd, %.lr.ph ], [ 0, %bb.a ]
  %.04991 = phi ptr [ %i.cb, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %.05090 = phi ptr [ %i.cc, %.lr.ph ], [ %5, %bb.a ] ; 3 uses
  %i.k = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.04991, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.l = getelementptr inbounds nuw i8, ptr %.04991, i64 4
  %i.m = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.l, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.n = getelementptr inbounds nuw i8, ptr %.04991, i64 8
  %i.o = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.n, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.p = getelementptr inbounds nuw i8, ptr %.04991, i64 12
  %i.q = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.p, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.r = fmul <8 x float> %i.e, %i.k
  %i.s = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.r, <8 x float> zeroinitializer)
  %i.t = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.s, <8 x float> %i.e) ; 2 uses
  %i.u = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.t, i32 1) ; 3 uses
  %i.v = fsub <8 x float> %i.t, %i.u
  %i.w = fadd <8 x float> %i.u, splat (float 1.000000e+00)
  %i.x = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.w, <8 x float> %i.e)
  %i.y = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.u)
  %i.z = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.x)
  %i.aa = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.y, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ab = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.z, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ac = fsub <8 x float> %i.ab, %i.aa
  %i.ad = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ac, <8 x float> %i.v, <8 x float> %i.aa) ; 2 uses
  %i.ae = fmul <8 x float> %i.e, %i.m
  %i.af = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.ae, <8 x float> zeroinitializer)
  %i.ag = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.af, <8 x float> %i.e) ; 2 uses
  %i.ah = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ag, i32 1) ; 3 uses
  %i.ai = fsub <8 x float> %i.ag, %i.ah
  %i.aj = fadd <8 x float> %i.ah, splat (float 1.000000e+00)
  %i.ak = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.aj, <8 x float> %i.e)
  %i.al = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ah)
  %i.am = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ak)
  %i.an = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.al, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ao = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.am, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ap = fsub <8 x float> %i.ao, %i.an
  %i.aq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ap, <8 x float> %i.ai, <8 x float> %i.an) ; 2 uses
  %i.ar = fmul <8 x float> %i.e, %i.o
  %i.as = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.ar, <8 x float> zeroinitializer)
  %i.at = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.as, <8 x float> %i.e) ; 2 uses
  %i.au = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.at, i32 1) ; 3 uses
  %i.av = fsub <8 x float> %i.at, %i.au
  %i.aw = fadd <8 x float> %i.au, splat (float 1.000000e+00)
  %i.ax = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.aw, <8 x float> %i.e)
  %i.ay = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.au)
  %i.az = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ax)
  %i.ba = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ay, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bb = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.az, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bc = fsub <8 x float> %i.bb, %i.ba
  %i.bd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bc, <8 x float> %i.av, <8 x float> %i.ba) ; 2 uses
  %i.be = shufflevector <8 x float> %i.ad, <8 x float> %i.aq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bf = shufflevector <8 x float> %i.bd, <8 x float> %i.q, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bg = shufflevector <8 x float> %i.ad, <8 x float> %i.aq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bh = shufflevector <8 x float> %i.bd, <8 x float> %i.q, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bi = bitcast <8 x float> %i.be to <4 x double> ; 2 uses
  %i.bj = bitcast <8 x float> %i.bf to <4 x double> ; 2 uses
  %i.bk = shufflevector <4 x double> %i.bi, <4 x double> %i.bj, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bl = shufflevector <4 x double> %i.bi, <4 x double> %i.bj, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bm = bitcast <8 x float> %i.bg to <4 x double> ; 2 uses
  %i.bn = bitcast <8 x float> %i.bh to <4 x double> ; 2 uses
  %i.bo = shufflevector <4 x double> %i.bm, <4 x double> %i.bn, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bp = shufflevector <4 x double> %i.bm, <4 x double> %i.bn, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bq = bitcast <4 x double> %i.bk to <8 x float>
  %i.br = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bq, i32 0)
  %i.bs = bitcast <4 x double> %i.bl to <8 x float>
  %i.bt = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bs, i32 0)
  %i.bu = bitcast <4 x double> %i.bo to <8 x float>
  %i.bv = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bu, i32 0)
  %i.bw = bitcast <4 x double> %i.bp to <8 x float>
  %i.bx = tail call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.bw, i32 0)
  %i.by = shufflevector <8 x i16> %i.br, <8 x i16> %i.bt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i16> %i.by, ptr %.05090, align 1, !tbaa !9
  %i.bz = shufflevector <8 x i16> %i.bv, <8 x i16> %i.bx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = getelementptr inbounds nuw i8, ptr %.05090, i64 32
  store <16 x i16> %i.bz, ptr %i.ca, align 1, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %.04991, i64 128 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.05090, i64 64 ; 2 uses
  %i.cd = add nuw nsw i32 %.04892, 8              ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.g
  br i1 %i.ce, label %.lr.ph, label %._crit_edge, !llvm.loop !79

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.cf = shl nsw i32 %i.i, 2                     ; 2 uses
  %i.cg = icmp sgt i32 %i.i, 0                    ; 2 uses
  br i1 %i.cg, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %bb.b
  %i.ch = zext nneg i32 %i.cf to i64              ; 3 uses
  %i.ci = tail call i64 @llvm.usub.sat.i64(i64 %i.ch, i64 4) ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ci, 28
  br i1 %min.iters.check, label %.lr.ph97.preheader147, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader
  %i.cl = tail call i64 @llvm.usub.sat.i64(i64 %i.ch, i64 4)
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.cn
  %scevgep112 = getelementptr i8, ptr %.049.lcssa, i64 %i.cn
  %bound0 = icmp ult ptr %i.a, %scevgep112
  %bound1 = icmp ult ptr %.049.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph97.preheader147, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, 1073741820              ; 4 uses
  %i.co = shl nuw nsw i64 %n.vec, 2
  %i.cp = shl nuw nsw i64 %n.vec, 4
  %i.cq = getelementptr i8, ptr %.049.lcssa, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cr = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.049.lcssa, i64 %i.cr
  %wide.vec = load <16 x float>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !80
  %.idx = shl i64 %index, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  store <16 x float> %wide.vec, ptr %i.cs, align 16, !tbaa !12, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %._crit_edge98, label %.lr.ph97.preheader147

.lr.ph97.preheader147:                            ; preds = %vector.memcheck, %.lr.ph97.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph97.preheader ], [ %i.co, %middle.block ]
  %.194.ph = phi ptr [ %.049.lcssa, %vector.memcheck ], [ %.049.lcssa, %.lr.ph97.preheader ], [ %i.cq, %middle.block ]
  br label %.lr.ph97

._crit_edge98:                                    ; preds = %.lr.ph97, %middle.block, %bb.b
  %i.cu = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.a, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cw = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.cv, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cy = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.cx, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.da = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.cz, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.db = fmul <8 x float> %i.e, %i.cu
  %i.dc = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.db, <8 x float> zeroinitializer)
  %i.dd = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.dc, <8 x float> %i.e) ; 2 uses
  %i.de = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dd, i32 1) ; 3 uses
  %i.df = fsub <8 x float> %i.dd, %i.de
  %i.dg = fadd <8 x float> %i.de, splat (float 1.000000e+00)
  %i.dh = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.dg, <8 x float> %i.e)
  %i.di = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.de)
  %i.dj = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.dh)
  %i.dk = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.di, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.dl = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.dj, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.dm = fsub <8 x float> %i.dl, %i.dk
  %i.dn = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dm, <8 x float> %i.df, <8 x float> %i.dk) ; 2 uses
  %i.do = fmul <8 x float> %i.e, %i.cw
  %i.dp = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.do, <8 x float> zeroinitializer)
  %i.dq = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.dp, <8 x float> %i.e) ; 2 uses
  %i.dr = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.dq, i32 1) ; 3 uses
  %i.ds = fsub <8 x float> %i.dq, %i.dr
  %i.dt = fadd <8 x float> %i.dr, splat (float 1.000000e+00)
  %i.du = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.dt, <8 x float> %i.e)
  %i.dv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.dr)
  %i.dw = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.du)
  %i.dx = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.dv, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.dy = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.dw, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.dz = fsub <8 x float> %i.dy, %i.dx
  %i.ea = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> %i.ds, <8 x float> %i.dx) ; 2 uses
  %i.eb = fmul <8 x float> %i.e, %i.cy
  %i.ec = call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.eb, <8 x float> zeroinitializer)
  %i.ed = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ec, <8 x float> %i.e) ; 2 uses
  %i.ee = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ed, i32 1) ; 3 uses
  %i.ef = fsub <8 x float> %i.ed, %i.ee
  %i.eg = fadd <8 x float> %i.ee, splat (float 1.000000e+00)
  %i.eh = call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.eg, <8 x float> %i.e)
  %i.ei = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ee)
  %i.ej = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.eh)
  %i.ek = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ei, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.el = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ej, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.em = fsub <8 x float> %i.el, %i.ek
  %i.en = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.em, <8 x float> %i.ef, <8 x float> %i.ek) ; 2 uses
  %i.eo = shufflevector <8 x float> %i.dn, <8 x float> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ep = shufflevector <8 x float> %i.en, <8 x float> %i.da, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.eq = shufflevector <8 x float> %i.dn, <8 x float> %i.ea, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.er = shufflevector <8 x float> %i.en, <8 x float> %i.da, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.es = bitcast <8 x float> %i.eo to <4 x double> ; 2 uses
  %i.et = bitcast <8 x float> %i.ep to <4 x double> ; 2 uses
  %i.eu = shufflevector <4 x double> %i.es, <4 x double> %i.et, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ev = shufflevector <4 x double> %i.es, <4 x double> %i.et, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.ew = bitcast <8 x float> %i.eq to <4 x double> ; 2 uses
  %i.ex = bitcast <8 x float> %i.er to <4 x double> ; 2 uses
  %i.ey = shufflevector <4 x double> %i.ew, <4 x double> %i.ex, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ez = shufflevector <4 x double> %i.ew, <4 x double> %i.ex, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.fa = bitcast <4 x double> %i.eu to <8 x float>
  %i.fb = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.fa, i32 0)
  %i.fc = bitcast <4 x double> %i.ev to <8 x float>
  %i.fd = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.fc, i32 0)
  %i.fe = bitcast <4 x double> %i.ey to <8 x float>
  %i.ff = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.fe, i32 0)
  %i.fg = bitcast <4 x double> %i.ez to <8 x float>
  %i.fh = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %i.fg, i32 0)
  %i.fi = shufflevector <8 x i16> %i.fb, <8 x i16> %i.fd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i16> %i.fi, ptr %7, align 16, !tbaa !9
  %i.fj = shufflevector <8 x i16> %i.ff, <8 x i16> %i.fh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 32
  store <16 x i16> %i.fj, ptr %i.fk, align 16, !tbaa !9
  br i1 %i.cg, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %._crit_edge98
  %i.fl = zext nneg i32 %i.cf to i64              ; 3 uses
  %i.fm = call i64 @llvm.usub.sat.i64(i64 %i.fl, i64 4) ; 2 uses
  %i.fn = lshr exact i64 %i.fm, 2
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check127 = icmp samesign ult i64 %i.fm, 28
  br i1 %min.iters.check127, label %.lr.ph103.preheader146, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph103.preheader
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %i.fl, i64 4)
  %i.fq = shl nuw nsw i64 %i.fp, 1
  %i.fr = add nuw nsw i64 %i.fq, 8                ; 2 uses
  %scevgep120 = getelementptr i8, ptr %.050.lcssa, i64 %i.fr
  %scevgep121 = getelementptr i8, ptr %7, i64 %i.fr
  %bound0122 = icmp ult ptr %.050.lcssa, %scevgep121
  %bound1123 = icmp ult ptr %7, %scevgep120
  %found.conflict124 = and i1 %bound0122, %bound1123
  br i1 %found.conflict124, label %.lr.ph103.preheader146, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck118
  %n.vec130 = and i64 %i.fo, 1073741816           ; 4 uses
  %i.fs = shl nuw nsw i64 %n.vec130, 2
  %i.ft = shl nuw nsw i64 %n.vec130, 3
  %i.fu = getelementptr i8, ptr %.050.lcssa, i64 %i.ft
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next140, %vector.body131 ] ; 3 uses
  %i.fv = shl i64 %index132, 3
  %next.gep133 = getelementptr i8, ptr %.050.lcssa, i64 %i.fv
  %.idx145 = shl i64 %index132, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 %.idx145
  %wide.vec134 = load <32 x i16>, ptr %i.fw, align 16, !tbaa !39, !alias.scope !86
  store <32 x i16> %wide.vec134, ptr %next.gep133, align 2, !tbaa !39, !alias.scope !89, !noalias !86
  %index.next140 = add nuw i64 %index132, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next140, %n.vec130
  br i1 %i.fx, label %middle.block141, label %vector.body131, !llvm.loop !91

middle.block141:                                  ; preds = %vector.body131
  %cmp.n142 = icmp eq i64 %i.fo, %n.vec130
  br i1 %cmp.n142, label %._crit_edge104, label %.lr.ph103.preheader146

.lr.ph103.preheader146:                           ; preds = %vector.memcheck118, %.lr.ph103.preheader, %middle.block141
  %indvars.iv107.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph103.preheader ], [ %i.fs, %middle.block141 ]
  %.151100.ph = phi ptr [ %.050.lcssa, %vector.memcheck118 ], [ %.050.lcssa, %.lr.ph103.preheader ], [ %i.fu, %middle.block141 ]
  br label %.lr.ph103

.lr.ph97:                                         ; preds = %.lr.ph97.preheader147, %.lr.ph97
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph97 ], [ %indvars.iv.ph, %.lr.ph97.preheader147 ] ; 2 uses
  %.194 = phi ptr [ %i.gj, %.lr.ph97 ], [ %.194.ph, %.lr.ph97.preheader147 ] ; 5 uses
  %i.fy = load float, ptr %.194, align 4, !tbaa !12
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  store float %i.fy, ptr %i.fz, align 16, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %.194, i64 4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store float %i.gb, ptr %i.gc, align 4, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %.194, i64 8
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store float %i.ge, ptr %i.gf, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %.194, i64 12
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store float %i.gh, ptr %i.gi, align 4, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %.194, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.gk = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.gk, label %.lr.ph97, label %._crit_edge98, !llvm.loop !92

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block141, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

.lr.ph103:                                        ; preds = %.lr.ph103.preheader146, %.lr.ph103
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph103 ], [ %indvars.iv107.ph, %.lr.ph103.preheader146 ] ; 2 uses
  %.151100 = phi ptr [ %i.gw, %.lr.ph103 ], [ %.151100.ph, %.lr.ph103.preheader146 ] ; 5 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv107 ; 4 uses
  %i.gm = load i16, ptr %i.gl, align 8, !tbaa !39
  store i16 %i.gm, ptr %.151100, align 2, !tbaa !39
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %.151100, i64 2
  %i.gp = load i16, ptr %i.gn, align 2, !tbaa !39
  store i16 %i.gp, ptr %i.go, align 2, !tbaa !39
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.151100, i64 4
  %i.gs = load i16, ptr %i.gq, align 4, !tbaa !39
  store i16 %i.gs, ptr %i.gr, align 2, !tbaa !39
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 6
  %i.gu = getelementptr inbounds nuw i8, ptr %.151100, i64 6
  %i.gv = load i16, ptr %i.gt, align 2, !tbaa !39
  store i16 %i.gv, ptr %i.gu, align 2, !tbaa !39
  %i.gw = getelementptr inbounds nuw i8, ptr %.151100, i64 8
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %i.gx = icmp samesign ult i64 %indvars.iv.next108, %i.fl
  br i1 %i.gx, label %.lr.ph103, label %._crit_edge104, !llvm.loop !93

bb.c:                                             ; preds = %._crit_edge104, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_18linear1DILNS_8BitDepthE8ELS2_8EEEvPKfS4_S4_iPKvPvl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly captures(none) %5, i64 noundef %6) #1 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  %i.b = alloca [32 x float], align 16            ; 10 uses
  %i.c = sitofp i32 %3 to float
  %i.d = fadd float %i.c, -1.000000e+00
  %i.e = insertelement <8 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer ; 18 uses
  %i.g = sdiv i64 %6, 8
  %.tr = trunc i64 %i.g to i32
  %i.h = shl i32 %.tr, 3                          ; 4 uses
  %i.i = trunc i64 %6 to i32                      ; 2 uses
  %i.j = sub i32 %i.i, %i.h                       ; 2 uses
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.048.lcssa = phi ptr [ %5, %bb.a ], [ %i.bv, %.lr.ph ] ; 6 uses
  %.047.lcssa = phi ptr [ %4, %bb.a ], [ %i.bu, %.lr.ph ] ; 6 uses
  %.not = icmp eq i32 %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04688 = phi i32 [ %i.bw, %.lr.ph ], [ 0, %bb.a ]
  %.04787 = phi ptr [ %i.bu, %.lr.ph ], [ %4, %bb.a ] ; 5 uses
  %.04886 = phi ptr [ %i.bv, %.lr.ph ], [ %5, %bb.a ] ; 5 uses
  %i.l = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %.04787, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.m = getelementptr inbounds nuw i8, ptr %.04787, i64 4
  %i.n = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.m, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.o = getelementptr inbounds nuw i8, ptr %.04787, i64 8
  %i.p = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.o, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.q = getelementptr inbounds nuw i8, ptr %.04787, i64 12
  %i.r = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.q, <8 x i32> <i32 0, i32 8, i32 16, i32 24, i32 4, i32 12, i32 20, i32 28>, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.s = fmul <8 x float> %i.f, %i.l
  %i.t = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.s, <8 x float> zeroinitializer)
  %i.u = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.t, <8 x float> %i.f) ; 2 uses
  %i.v = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.u, i32 1) ; 3 uses
  %i.w = fsub <8 x float> %i.u, %i.v
  %i.x = fadd <8 x float> %i.v, splat (float 1.000000e+00)
  %i.y = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.x, <8 x float> %i.f)
  %i.z = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.v)
  %i.aa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.y)
  %i.ab = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.z, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ac = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %0, <8 x i32> %i.aa, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ad = fsub <8 x float> %i.ac, %i.ab
  %i.ae = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ad, <8 x float> %i.w, <8 x float> %i.ab) ; 2 uses
  %i.af = fmul <8 x float> %i.f, %i.n
  %i.ag = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.af, <8 x float> zeroinitializer)
  %i.ah = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ag, <8 x float> %i.f) ; 2 uses
  %i.ai = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 3 uses
  %i.aj = fsub <8 x float> %i.ah, %i.ai
  %i.ak = fadd <8 x float> %i.ai, splat (float 1.000000e+00)
  %i.al = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ak, <8 x float> %i.f)
  %i.am = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ai)
  %i.an = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.al)
  %i.ao = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.am, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ap = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %1, <8 x i32> %i.an, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aq = fsub <8 x float> %i.ap, %i.ao
  %i.ar = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aq, <8 x float> %i.aj, <8 x float> %i.ao) ; 2 uses
  %i.as = fmul <8 x float> %i.f, %i.p
  %i.at = tail call noundef <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %i.as, <8 x float> zeroinitializer)
  %i.au = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.at, <8 x float> %i.f) ; 2 uses
  %i.av = tail call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 3 uses
  %i.aw = fsub <8 x float> %i.au, %i.av
  %i.ax = fadd <8 x float> %i.av, splat (float 1.000000e+00)
  %i.ay = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.ax, <8 x float> %i.f)
  %i.az = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.av)
  %i.ba = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ay)
  %i.bb = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.az, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.bc = tail call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %2, <8 x i32> %i.ba, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bd = fsub <8 x float> %i.bc, %i.bb
  %i.be = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> %i.aw, <8 x float> %i.bb) ; 2 uses
  %i.bf = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bg = shufflevector <8 x float> %i.be, <8 x float> %i.r, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.bh = shufflevector <8 x float> %i.ae, <8 x float> %i.ar, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bi = shufflevector <8 x float> %i.be, <8 x float> %i.r, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.bj = bitcast <8 x float> %i.bf to <4 x double> ; 2 uses
  %i.bk = bitcast <8 x float> %i.bg to <4 x double> ; 2 uses
  %i.bl = shufflevector <4 x double> %i.bj, <4 x double> %i.bk, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bm = shufflevector <4 x double> %i.bj, <4 x double> %i.bk, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bn = bitcast <8 x float> %i.bh to <4 x double> ; 2 uses
  %i.bo = bitcast <8 x float> %i.bi to <4 x double> ; 2 uses
  %i.bp = shufflevector <4 x double> %i.bn, <4 x double> %i.bo, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.bq = shufflevector <4 x double> %i.bn, <4 x double> %i.bo, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  store <4 x double> %i.bl, ptr %.04886, align 1, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %.04886, i64 32
  store <4 x double> %i.bm, ptr %i.br, align 1, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %.04886, i64 64
  store <4 x double> %i.bp, ptr %i.bs, align 1, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %.04886, i64 96
  store <4 x double> %i.bq, ptr %i.bt, align 1, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %.04787, i64 128 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.04886, i64 128 ; 2 uses
  %i.bw = add nuw nsw i32 %.04688, 8              ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.h
  br i1 %i.bx, label %.lr.ph, label %._crit_edge, !llvm.loop !94

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.by = shl nsw i32 %i.j, 2                     ; 2 uses
  %i.bz = icmp sgt i32 %i.j, 0                    ; 2 uses
  br i1 %i.bz, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %bb.b
  %i.ca = zext nneg i32 %i.by to i64              ; 3 uses
  %i.cb = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 4) ; 2 uses
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cb, 28
  br i1 %min.iters.check, label %.lr.ph93.preheader143, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph93.preheader
  %i.ce = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 4)
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.cg
  %scevgep108 = getelementptr i8, ptr %.047.lcssa, i64 %i.cg
  %bound0 = icmp ult ptr %i.a, %scevgep108
  %bound1 = icmp ult ptr %.047.lcssa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph93.preheader143, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cd, 1073741820              ; 4 uses
  %i.ch = shl nuw nsw i64 %n.vec, 2
  %i.ci = shl nuw nsw i64 %n.vec, 4
  %i.cj = getelementptr i8, ptr %.047.lcssa, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
