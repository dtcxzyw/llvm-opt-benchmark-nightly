Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/repack?download=true
inline.NumInlined: 423
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 70
begin_hunk_0_@ggml_gemv_q2_K_8x8_q8_K:bb.a
  %i.ng = shufflevector <8 x i32> %i.nd, <8 x i32> %i.nf, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.nh = bitcast <8 x i32> %i.ng to <32 x i8>
  %i.ni = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.nj = shufflevector <32 x i8> %i.ni, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nk = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nh, <32 x i8> %i.nj)
  %i.nl = shufflevector <8 x i32> %i.nd, <8 x i32> %i.nf, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.nm = bitcast <8 x i32> %i.nl to <32 x i8>
  %i.nn = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.no = shufflevector <32 x i8> %i.nn, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.np = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nm, <32 x i8> %i.no)
  %i.nq = add <16 x i16> %i.np, %i.nk
  %i.nr = bitcast <16 x i16> %i.bx to <8 x i32>
  %i.ns = and <8 x i32> %i.nr, splat (i32 50529027) ; 2 uses
  %i.nt = bitcast <16 x i16> %i.cb to <8 x i32>
  %i.nu = and <8 x i32> %i.nt, splat (i32 50529027) ; 2 uses
  %i.nv = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nu, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.nw = bitcast <8 x i32> %i.nv to <32 x i8>
  %i.nx = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.ny = shufflevector <32 x i8> %i.nx, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.nz = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nw, <32 x i8> %i.ny)
  %i.oa = add <16 x i16> %i.nq, %i.nz
  %i.ob = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nu, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.oc = bitcast <8 x i32> %i.ob to <32 x i8>
  %i.od = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.oe = shufflevector <32 x i8> %i.od, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.of = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oc, <32 x i8> %i.oe)
  %i.og = add <16 x i16> %i.oa, %i.of
  %i.oh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.og, <16 x i16> %i.eq)
  %i.oi = bitcast <16 x i16> %i.cf to <8 x i32>
  %i.oj = and <8 x i32> %i.oi, splat (i32 50529027) ; 2 uses
  %i.ok = bitcast <16 x i16> %i.cj to <8 x i32>
  %i.ol = and <8 x i32> %i.ok, splat (i32 50529027) ; 2 uses
  %i.om = shufflevector <8 x i32> %i.oj, <8 x i32> %i.ol, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.on = bitcast <8 x i32> %i.om to <32 x i8>
  %i.oo = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.op = shufflevector <32 x i8> %i.oo, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oq = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.on, <32 x i8> %i.op)
  %i.or = shufflevector <8 x i32> %i.oj, <8 x i32> %i.ol, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.os = bitcast <8 x i32> %i.or to <32 x i8>
  %i.ot = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.ou = shufflevector <32 x i8> %i.ot, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ov = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.os, <32 x i8> %i.ou)
  %i.ow = add <16 x i16> %i.ov, %i.oq
  %i.ox = bitcast <16 x i16> %i.cn to <8 x i32>
  %i.oy = and <8 x i32> %i.ox, splat (i32 50529027) ; 2 uses
  %i.oz = bitcast <16 x i16> %i.cr to <8 x i32>
  %i.pa = and <8 x i32> %i.oz, splat (i32 50529027) ; 2 uses
  %i.pb = shufflevector <8 x i32> %i.oy, <8 x i32> %i.pa, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.pc = bitcast <8 x i32> %i.pb to <32 x i8>
  %i.pd = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.pe = shufflevector <32 x i8> %i.pd, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.pf = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pc, <32 x i8> %i.pe)
  %i.pg = add <16 x i16> %i.ow, %i.pf
  %i.ph = shufflevector <8 x i32> %i.oy, <8 x i32> %i.pa, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.pi = bitcast <8 x i32> %i.ph to <32 x i8>
  %i.pj = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.pk = shufflevector <32 x i8> %i.pj, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.pl = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pi, <32 x i8> %i.pk)
  %i.pm = add <16 x i16> %i.pg, %i.pl
  %i.pn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pm, <16 x i16> %i.es)
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx
  %i.pp = load <2 x i64>, ptr %i.po, align 1, !tbaa !9
  %i.pq = shufflevector <2 x i64> %i.pp, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pr = bitcast <4 x i64> %i.pq to <8 x i32>    ; 4 uses
  %i.ps = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.pt = bitcast <8 x i32> %i.ps to <16 x i16>
  %i.pu = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pt, <16 x i16> %i.df)
  %i.pv = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.pw = bitcast <8 x i32> %i.pv to <16 x i16>
  %i.px = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pw, <16 x i16> %i.dk)
  %i.py = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.pz = bitcast <8 x i32> %i.py to <16 x i16>
  %i.qa = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pz, <16 x i16> %i.dp)
  %i.qb = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.qc = bitcast <8 x i32> %i.qb to <16 x i16>
  %i.qd = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qc, <16 x i16> %i.du)
  %i.qe = add <8 x i32> %i.gx, %i.at
  %i.qf = add <8 x i32> %i.qe, %i.id
  %i.qg = add <8 x i32> %i.qf, %i.jj
  %i.qh = add <8 x i32> %i.qg, %i.kp
  %i.qi = add <8 x i32> %i.qh, %i.lv
  %i.qj = add <8 x i32> %i.qi, %i.nb
  %i.qk = add <8 x i32> %i.qj, %i.oh
  %i.ql = add <8 x i32> %i.qk, %i.pn              ; 2 uses
  %i.qm = add <8 x i32> %i.pu, %i.au
  %i.qn = add <8 x i32> %i.qm, %i.px
  %i.qo = add <8 x i32> %i.qn, %i.qa
  %i.qp = add <8 x i32> %i.qo, %i.qd              ; 2 uses
  br i1 %i.as, label %bb.c, label %bb.d, !llvm.loop !80

bb.d:                                             ; preds = %bb.c
  %i.qq = insertelement <8 x float> poison, float %i.s, i64 0
  %i.qr = shufflevector <8 x float> %i.qq, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qs = shufflevector <8 x half> %i.u, <8 x half> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qt = fpext <8 x half> %i.qs to <8 x float>
  %i.qu = fpext <8 x half> %i.w to <8 x float>
  %i.qv = sitofp <8 x i32> %i.ql to <8 x float>
  %i.qw = fmul <8 x float> %i.qr, %i.qt
  %i.qx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qv, <8 x float> %i.qw, <8 x float> %.0350361.us.us) ; 2 uses
  %i.qy = sitofp <8 x i32> %i.qp to <8 x float>
  %i.qz = fmul <8 x float> %i.qr, %i.qu
  %i.ra = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qy, <8 x float> %i.qz, <8 x float> %.0351360.us.us) ; 2 uses
  %i.rb = add nuw nsw i64 %.0352359.us.us, 1      ; 2 uses
  %exitcond375.not = icmp eq i64 %i.rb, %i.c
  br i1 %exitcond375.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !81

._crit_edge.us.us:                                ; preds = %bb.d
  %i.rc = shufflevector <8 x float> %i.qx, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %.idx.us.us = shl nuw nsw i64 %.0349363.us.us, 5
  %i.rd = getelementptr i8, ptr %i.o, i64 %.idx.us.us
  %i.re = fsub <8 x float> %i.rc, %i.ra
  store <8 x float> %i.re, ptr %i.rd, align 1, !tbaa !9
  %i.rf = add nuw nsw i64 %.0349363.us.us, 1      ; 2 uses
  %exitcond376.not = icmp eq i64 %i.rf, %i.g
  br i1 %exitcond376.not, label %._crit_edge366.split.us.us, label %.lr.ph.us.us, !llvm.loop !82

._crit_edge366.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.rg = add nuw nsw i64 %.0367.us, 1            ; 2 uses
  %exitcond377.not = icmp eq i64 %i.rg, %i.d
  br i1 %exitcond377.not, label %._crit_edge.split, label %.lr.ph365.us, !llvm.loop !83

._crit_edge.split.loopexit430.unr-lcssa:          ; preds = %.lr.ph365
  %i.rh = and i32 %5, 7
  %lcmp.mod.not = icmp eq i32 %i.rh, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.lr.ph365.epil.preheader

.lr.ph365.epil.preheader:                         ; preds = %._crit_edge.split.loopexit430.unr-lcssa, %.lr.ph365.preheader
  %.0367.epil.init = phi i64 [ 0, %.lr.ph365.preheader ], [ %i.sj, %._crit_edge.split.loopexit430.unr-lcssa ]
  %i.ri = and i32 %5, 7
  %lcmp.mod431 = icmp ne i32 %i.ri, 0
  tail call void @llvm.assume(i1 %lcmp.mod431)
  br label %.lr.ph365.epil

.lr.ph365.epil:                                   ; preds = %.lr.ph365.epil, %.lr.ph365.epil.preheader
  %.0367.epil = phi i64 [ %i.rl, %.lr.ph365.epil ], [ %.0367.epil.init, %.lr.ph365.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph365.epil ], [ 0, %.lr.ph365.epil.preheader ]
  %i.rj = mul nuw nsw i64 %.0367.epil, %i.d
  %i.rk = getelementptr [4 x i8], ptr %1, i64 %i.rj
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rk, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.rl = add nuw nsw i64 %.0367.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.lr.ph365.epil, !llvm.loop !84

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit430.unr-lcssa, %.lr.ph365.epil, %._crit_edge366.split.us.us, %.lr.ph, %bb.a
  ret void

.lr.ph365:                                        ; preds = %.lr.ph365, %.lr.ph365.preheader.new
  %.0367 = phi i64 [ 0, %.lr.ph365.preheader.new ], [ %i.sj, %.lr.ph365 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph365.preheader.new ], [ %niter.next.7, %.lr.ph365 ]
  %i.rm = mul nuw nsw i64 %.0367, %i.d
  %i.rn = getelementptr [4 x i8], ptr %1, i64 %i.rm
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rn, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.ro = or disjoint i64 %.0367, 1
  %i.rp = mul nuw nsw i64 %i.ro, %i.d
  %i.rq = getelementptr [4 x i8], ptr %1, i64 %i.rp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rq, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.rr = or disjoint i64 %.0367, 2
  %i.rs = mul nuw nsw i64 %i.rr, %i.d
  %i.rt = getelementptr [4 x i8], ptr %1, i64 %i.rs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rt, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.ru = or disjoint i64 %.0367, 3
  %i.rv = mul nuw nsw i64 %i.ru, %i.d
  %i.rw = getelementptr [4 x i8], ptr %1, i64 %i.rv
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rw, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.rx = or disjoint i64 %.0367, 4
  %i.ry = mul nuw nsw i64 %i.rx, %i.d
  %i.rz = getelementptr [4 x i8], ptr %1, i64 %i.ry
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rz, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.sa = or disjoint i64 %.0367, 5
  %i.sb = mul nuw nsw i64 %i.sa, %i.d
  %i.sc = getelementptr [4 x i8], ptr %1, i64 %i.sb
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.sc, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.sd = or disjoint i64 %.0367, 6
  %i.se = mul nuw nsw i64 %i.sd, %i.d
  %i.sf = getelementptr [4 x i8], ptr %1, i64 %i.se
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.sf, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.sg = or disjoint i64 %.0367, 7
  %i.sh = mul nuw nsw i64 %i.sg, %i.d
  %i.si = getelementptr [4 x i8], ptr %1, i64 %i.sh
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.si, i8 0, i64 %i.j, i1 false), !tbaa !9
  %i.sj = add nuw nsw i64 %.0367, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit430.unr-lcssa, label %.lr.ph365, !llvm.loop !83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_q4_0_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %7 = srem i32 %5, 16
  %i.g = sub nsw i32 %5, %7                       ; 2 uses
  %8 = srem i32 %6, 16                            ; 2 uses
  %i.h = sub nsw i32 %6, %8                       ; 5 uses
  %i.i = sdiv i32 %i.g, 4
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %.lr.ph1033.i, label %.preheader1019.i

.lr.ph1033.i:                                     ; preds = %bb.a
  %i.l = sdiv i32 %i.h, 8
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp sgt i32 %i.h, 7
  %i.o = icmp sgt i32 %0, 31
  br i1 %i.n, label %.lr.ph1033.split.us.preheader.i, label %.lr.ph1033.split.i.preheader

.lr.ph1033.split.i.preheader:                     ; preds = %.lr.ph1033.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.j, i64 4)
  %i.p = add nsw i64 %smax, -1
  %i.q = and i64 %i.p, -4
  %i.r = add nuw nsw i64 %i.q, 4
  br label %.preheader1019.i

.lr.ph1033.split.us.preheader.i:                  ; preds = %.lr.ph1033.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1223.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1225.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1227.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1229.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1231.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1233.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1235.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1237.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1239.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1241.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1243.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1245.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1247.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1249.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.v = shl i64 %2, 6
  %i.w = shl nuw nsw i64 %i.m, 5
  %i.x = add nsw i64 %i.w, -32
  %i.y = and i64 %i.x, -64
  %i.z = add nsw i64 %i.y, 64                     ; 16 uses
  %i.aa = shl i64 %2, 2
  %i.ab = shl i64 %2, 3
  %i.ac = mul i64 %2, 12
  %i.ad = shl i64 %2, 4
  %i.ae = mul i64 %2, 20
  %i.af = mul i64 %2, 24
  %i.ag = mul i64 %2, 28
  %i.ah = shl i64 %2, 5
  %i.ai = mul i64 %2, 36
  %i.aj = mul i64 %2, 40
  %i.ak = mul i64 %2, 44
  %i.al = mul i64 %2, 48
  %i.am = mul i64 %2, 52
  %i.an = mul i64 %2, 56
  %i.ao = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.j, i64 4)
  %i.ap = add nsw i64 %smax55, -1
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr i8, ptr %1, i64 %i.aa
  %i.as = getelementptr i8, ptr %1, i64 %i.ab
  %i.at = getelementptr i8, ptr %1, i64 %i.ac
  %i.au = getelementptr i8, ptr %1, i64 %i.ad
  %i.av = getelementptr i8, ptr %1, i64 %i.ae
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  br label %.lr.ph1033.split.us.i

.lr.ph1033.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1033.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  %.09861031.us.i = phi i64 [ %i.no, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !108
  %i.bg = mul nsw i64 %.09861031.us.i, %i.f
  %i.bh = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.a, align 16, !tbaa !21, !noalias !108
  %i.bi = getelementptr inbounds [136 x i8], ptr %i.bh, i64 %i.f ; 2 uses
  store ptr %i.bi, ptr %i.s, align 8, !tbaa !21, !noalias !108
  %i.bj = getelementptr inbounds [136 x i8], ptr %i.bi, i64 %i.f ; 2 uses
  store ptr %i.bj, ptr %i.t, align 16, !tbaa !21, !noalias !108
  %i.bk = getelementptr inbounds [136 x i8], ptr %i.bj, i64 %i.f
  store ptr %i.bk, ptr %i.u, align 8, !tbaa !21, !noalias !108
  %i.bl = shl nuw nsw i64 %.09861031.us.i, 2      ; 16 uses
  %i.bm = mul i64 %i.bl, %2
  %i.bn = or disjoint i64 %i.bl, 1
  %i.bo = mul i64 %i.bn, %2
  %i.bp = or disjoint i64 %i.bl, 2
  %i.bq = mul i64 %i.bp, %2
  %i.br = or disjoint i64 %i.bl, 3
  %i.bs = mul i64 %i.br, %2
  %i.bt = or disjoint i64 %i.bl, 4
  %i.bu = mul i64 %i.bt, %2
  %i.bv = or disjoint i64 %i.bl, 5
  %i.bw = mul i64 %i.bv, %2
  %i.bx = or disjoint i64 %i.bl, 6
  %i.by = mul i64 %i.bx, %2
  %i.bz = or disjoint i64 %i.bl, 7
  %i.ca = mul i64 %i.bz, %2
  %i.cb = or disjoint i64 %i.bl, 8
  %i.cc = mul i64 %i.cb, %2
  %i.cd = or disjoint i64 %i.bl, 9
  %i.ce = mul i64 %i.cd, %2
  %i.cf = or disjoint i64 %i.bl, 10
  %i.cg = mul i64 %i.cf, %2
  %i.ch = or disjoint i64 %i.bl, 11
  %i.ci = mul i64 %i.ch, %2
  %i.cj = or disjoint i64 %i.bl, 12
  %i.ck = mul i64 %i.cj, %2
  %i.cl = or disjoint i64 %i.bl, 13
  %i.cm = mul i64 %i.cl, %2
  %i.cn = or disjoint i64 %i.bl, 14
  %i.co = mul i64 %i.cn, %2
  %i.cp = or disjoint i64 %i.bl, 15
  %i.cq = mul i64 %i.cp, %2
  br i1 %i.o, label %.preheader1021.us.i.us, label %.preheader1021.us.i.preheader

.preheader1021.us.i.preheader:                    ; preds = %.lr.ph1033.split.us.i
  %i.cr = mul i64 %i.v, %indvar                   ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cr
  %scevgep40 = getelementptr i8, ptr %i.ar, i64 %i.cr
  %scevgep41 = getelementptr i8, ptr %i.as, i64 %i.cr
  %scevgep42 = getelementptr i8, ptr %i.at, i64 %i.cr
  %scevgep43 = getelementptr i8, ptr %i.au, i64 %i.cr
  %scevgep44 = getelementptr i8, ptr %i.av, i64 %i.cr
  %scevgep45 = getelementptr i8, ptr %i.aw, i64 %i.cr
  %scevgep46 = getelementptr i8, ptr %i.ax, i64 %i.cr
  %scevgep47 = getelementptr i8, ptr %i.ay, i64 %i.cr
  %scevgep48 = getelementptr i8, ptr %i.az, i64 %i.cr
  %scevgep49 = getelementptr i8, ptr %i.ba, i64 %i.cr
  %scevgep50 = getelementptr i8, ptr %i.bb, i64 %i.cr
  %scevgep51 = getelementptr i8, ptr %i.bc, i64 %i.cr
  %scevgep52 = getelementptr i8, ptr %i.bd, i64 %i.cr
  %scevgep53 = getelementptr i8, ptr %i.be, i64 %i.cr
  %scevgep54 = getelementptr i8, ptr %i.bf, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  br label %._crit_edge.us.i

.preheader1021.us.i.us:                           ; preds = %.lr.ph1033.split.us.i, %.preheader1020.us.loopexit.i.us
  %.09891029.us.i.us = phi i64 [ %i.nm, %.preheader1020.us.loopexit.i.us ], [ 0, %.lr.ph1033.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !108
  %i.cs = mul nuw nsw i64 %.09891029.us.i.us, %i.f
  %i.ct = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cs
  %i.cu = or disjoint i64 %.09891029.us.i.us, 1
  %i.cv = mul nuw nsw i64 %i.cu, %i.f
  %i.cw = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cv
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1021.us.i.us, %bb.c
  %.09911027.us.i.us = phi i64 [ %i.nl, %bb.c ], [ 0, %.preheader1021.us.i.us ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [144 x i8], ptr %i.ct, i64 %.09911027.us.i.us ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load <8 x i32>, ptr %i.cy, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.db = load <8 x i32>, ptr %i.da, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.dd = load <8 x i32>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  %i.df = load <8 x i32>, ptr %i.de, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dg = getelementptr inbounds nuw [144 x i8], ptr %i.cw, i64 %.09911027.us.i.us ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load <8 x i32>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dk = load <8 x i32>, ptr %i.dj, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.dm = load <8 x i32>, ptr %i.dl, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.do = load <8 x i32>, ptr %i.dn, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dp = shufflevector <8 x i32> %i.cz, <8 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <16 x i32> %i.dp, <16 x i32> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ds = shufflevector <8 x i32> %i.cz, <8 x i32> %i.db, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <16 x i32> %i.ds, <16 x i32> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dv = shufflevector <8 x i32> %i.dd, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i32> %i.dm, <8 x i32> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@ggml_gemm_q4_0_8x8_q8_0:bb.a
  %i.vv = bitcast <8 x i32> %i.si to <32 x i8>
  %i.vw = shufflevector <32 x i8> %i.vv, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.vx = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vw, i1 false) ; 2 uses
  %i.vy = icmp slt <64 x i8> %i.vw, zeroinitializer ; 2 uses
  %i.vz = shufflevector <64 x i8> %i.rh, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wa = sub <64 x i8> zeroinitializer, %i.vz    ; 2 uses
  %i.wb = select <64 x i1> %i.vy, <64 x i8> %i.wa, <64 x i8> %i.vz
  %i.wc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vu, <64 x i8> %i.vx, <64 x i8> %i.wb)
  %i.wd = bitcast <8 x i32> %i.sg to <32 x i8>
  %i.we = shufflevector <32 x i8> %i.wd, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wf = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.we, i1 false) ; 2 uses
  %i.wg = icmp slt <64 x i8> %i.we, zeroinitializer ; 2 uses
  %i.wh = shufflevector <64 x i8> %i.qz, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wi = sub <64 x i8> zeroinitializer, %i.wh    ; 2 uses
  %i.wj = select <64 x i1> %i.wg, <64 x i8> %i.wi, <64 x i8> %i.wh
  %i.wk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wc, <64 x i8> %i.wf, <64 x i8> %i.wj)
  %i.wl = bitcast <8 x i32> %i.se to <32 x i8>
  %i.wm = shufflevector <32 x i8> %i.wl, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wn = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wm, i1 false) ; 2 uses
  %i.wo = icmp slt <64 x i8> %i.wm, zeroinitializer ; 2 uses
  %i.wp = shufflevector <64 x i8> %i.qt, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wq = sub <64 x i8> zeroinitializer, %i.wp    ; 2 uses
  %i.wr = select <64 x i1> %i.wo, <64 x i8> %i.wq, <64 x i8> %i.wp
  %i.ws = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wk, <64 x i8> %i.wn, <64 x i8> %i.wr)
  %i.wt = shufflevector <64 x i8> %i.rw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wu = sub <64 x i8> zeroinitializer, %i.wt    ; 2 uses
  %i.wv = select <64 x i1> %i.vq, <64 x i8> %i.wu, <64 x i8> %i.wt
  %i.ww = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vp, <64 x i8> %i.wv)
  %i.wx = shufflevector <64 x i8> %i.rm, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wy = sub <64 x i8> zeroinitializer, %i.wx    ; 2 uses
  %i.wz = select <64 x i1> %i.vy, <64 x i8> %i.wy, <64 x i8> %i.wx
  %i.xa = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ww, <64 x i8> %i.vx, <64 x i8> %i.wz)
  %i.xb = shufflevector <64 x i8> %i.rc, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.xc = sub <64 x i8> zeroinitializer, %i.xb    ; 2 uses
  %i.xd = select <64 x i1> %i.wg, <64 x i8> %i.xc, <64 x i8> %i.xb
  %i.xe = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xa, <64 x i8> %i.wf, <64 x i8> %i.xd)
  %i.xf = shufflevector <64 x i8> %i.qw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.xg = sub <64 x i8> zeroinitializer, %i.xf    ; 2 uses
  %i.xh = select <64 x i1> %i.wo, <64 x i8> %i.xg, <64 x i8> %i.xf
  %i.xi = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xe, <64 x i8> %i.wn, <64 x i8> %i.xh)
  %i.xj = bitcast <8 x i32> %i.sk to <32 x i8>
  %i.xk = shufflevector <32 x i8> %i.xj, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xl = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xk, i1 false) ; 2 uses
  %i.xm = icmp slt <64 x i8> %i.xk, zeroinitializer ; 2 uses
  %i.xn = select <64 x i1> %i.xm, <64 x i8> %i.vs, <64 x i8> %i.vr
  %i.xo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.xl, <64 x i8> %i.xn)
  %i.xp = bitcast <8 x i32> %i.si to <32 x i8>
  %i.xq = shufflevector <32 x i8> %i.xp, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xr = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xq, i1 false) ; 2 uses
  %i.xs = icmp slt <64 x i8> %i.xq, zeroinitializer ; 2 uses
  %i.xt = select <64 x i1> %i.xs, <64 x i8> %i.wa, <64 x i8> %i.vz
  %i.xu = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xo, <64 x i8> %i.xr, <64 x i8> %i.xt)
  %i.xv = bitcast <8 x i32> %i.sg to <32 x i8>
  %i.xw = shufflevector <32 x i8> %i.xv, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xx = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xw, i1 false) ; 2 uses
  %i.xy = icmp slt <64 x i8> %i.xw, zeroinitializer ; 2 uses
  %i.xz = select <64 x i1> %i.xy, <64 x i8> %i.wi, <64 x i8> %i.wh
  %i.ya = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xu, <64 x i8> %i.xx, <64 x i8> %i.xz)
  %i.yb = bitcast <8 x i32> %i.se to <32 x i8>
  %i.yc = shufflevector <32 x i8> %i.yb, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.yd = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.yc, i1 false) ; 2 uses
  %i.ye = icmp slt <64 x i8> %i.yc, zeroinitializer ; 2 uses
  %i.yf = select <64 x i1> %i.ye, <64 x i8> %i.wq, <64 x i8> %i.wp
  %i.yg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ya, <64 x i8> %i.yd, <64 x i8> %i.yf)
  %i.yh = select <64 x i1> %i.xm, <64 x i8> %i.wu, <64 x i8> %i.wt
  %i.yi = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.xl, <64 x i8> %i.yh)
  %i.yj = select <64 x i1> %i.xs, <64 x i8> %i.wy, <64 x i8> %i.wx
  %i.yk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.yi, <64 x i8> %i.xr, <64 x i8> %i.yj)
  %i.yl = select <64 x i1> %i.xy, <64 x i8> %i.xc, <64 x i8> %i.xb
  %i.ym = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.yk, <64 x i8> %i.xx, <64 x i8> %i.yl)
  %i.yn = select <64 x i1> %i.ye, <64 x i8> %i.xg, <64 x i8> %i.xf
  %i.yo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ym, <64 x i8> %i.yd, <64 x i8> %i.yn)
  %i.yp = add <16 x i32> %i.ws, %i.tq             ; 2 uses
  %i.yq = add <16 x i32> %i.xi, %i.ug             ; 2 uses
  %i.yr = add <16 x i32> %i.yg, %i.ve             ; 2 uses
  %i.ys = add <16 x i32> %i.yo, %i.vm             ; 2 uses
  %i.yt = shufflevector <16 x i32> %i.yp, <16 x i32> %i.yq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.yu = shufflevector <16 x i32> %i.yp, <16 x i32> %i.yq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.yv = shufflevector <16 x i32> %i.yr, <16 x i32> %i.ys, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.yw = shufflevector <16 x i32> %i.yr, <16 x i32> %i.ys, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.yx = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.sc, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !107, !noalias !111
  %i.yy = bitcast <4 x i32> %i.yx to <8 x half>
  %i.yz = shufflevector <8 x half> %i.yy, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.za = fpext <16 x half> %i.yz to <16 x float> ; 4 uses
  %i.zb = sitofp <16 x i32> %i.yt to <16 x float>
  %i.zc = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.zd = fmul <16 x float> %i.zc, %i.sb
  %i.ze = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zb, <16 x float> %i.zd, <16 x float> %i.pm) ; 2 uses
  %i.zf = sitofp <16 x i32> %i.yu to <16 x float>
  %i.zg = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.zh = fmul <16 x float> %i.zg, %i.sb
  %i.zi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zf, <16 x float> %i.zh, <16 x float> %i.pl) ; 2 uses
  %i.zj = sitofp <16 x i32> %i.yv to <16 x float>
  %i.zk = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.zl = fmul <16 x float> %i.zk, %i.sb
  %i.zm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zj, <16 x float> %i.zl, <16 x float> %i.pk) ; 2 uses
  %i.zn = sitofp <16 x i32> %i.yw to <16 x float>
  %i.zo = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.zp = fmul <16 x float> %i.zo, %i.sb
  %i.zq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zn, <16 x float> %i.zp, <16 x float> %i.pj) ; 2 uses
  %i.zr = add nuw nsw i64 %.09961038.us.us.us.i, 1 ; 2 uses
  %exitcond1148.not.i = icmp eq i64 %i.zr, %i.f
  br i1 %exitcond1148.not.i, label %..preheader1017_crit_edge.us.us.us.i, label %bb.d, !llvm.loop !93

..preheader1017_crit_edge.us.us.us.i:             ; preds = %bb.d
  %.idx1010.us.us.us.i = shl nuw nsw i64 %.09941047.us.us.us.i, 5
  %invariant.gep.us1049.us.us.i = getelementptr i8, ptr %1, i64 %.idx1010.us.us.us.i ; 4 uses
  %gep.us1050.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.ox
  store <16 x float> %i.ze, ptr %gep.us1050.us.us.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1050.us.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.oz
  store <16 x float> %i.zi, ptr %gep.us1050.us.us.1.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1050.us.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.pb
  store <16 x float> %i.zm, ptr %gep.us1050.us.us.2.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1050.us.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.pd
  store <16 x float> %i.zq, ptr %gep.us1050.us.us.3.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %i.zs = add nuw nsw i64 %.09941047.us.us.us.i, 2 ; 2 uses
  %i.zt = icmp slt i64 %i.zs, %i.nt
  br i1 %i.zt, label %.preheader1018.us.us.us.i, label %._crit_edge.split.us.us.us.i, !llvm.loop !94

._crit_edge.split.us.us.us.i:                     ; preds = %..preheader1017_crit_edge.us.us.us.i
  %i.zu = add nuw nsw i64 %.11052.us.us.i, 1      ; 2 uses
  %exitcond1153.not.i = icmp eq i64 %i.zu, %i.nq
  br i1 %exitcond1153.not.i, label %._crit_edge1053.i, label %.lr.ph1048.us.us.i, !llvm.loop !95

.lr.ph1048.us.i:                                  ; preds = %.lr.ph1048.us.i, %.lr.ph1048.us.i.preheader.new
  %indvar56 = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %indvar.next57.3, %.lr.ph1048.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %niter.next.3, %.lr.ph1048.us.i ]
  %i.zv = mul i64 %i.ny, %indvar56                ; 4 uses
  %scevgep61 = getelementptr i8, ptr %i.on, i64 %i.zv
  %scevgep60 = getelementptr i8, ptr %i.oo, i64 %i.zv
  %scevgep59 = getelementptr i8, ptr %i.op, i64 %i.zv
  %scevgep58 = getelementptr i8, ptr %i.oq, i64 %i.zv
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57 = or disjoint i64 %indvar56, 1
  %i.zw = mul i64 %i.ny, %indvar.next57           ; 4 uses
  %scevgep61.1 = getelementptr i8, ptr %i.on, i64 %i.zw
  %scevgep60.1 = getelementptr i8, ptr %i.oo, i64 %i.zw
  %scevgep59.1 = getelementptr i8, ptr %i.op, i64 %i.zw
  %scevgep58.1 = getelementptr i8, ptr %i.oq, i64 %i.zw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.1 = or disjoint i64 %indvar56, 2
  %i.zx = mul i64 %i.ny, %indvar.next57.1         ; 4 uses
  %scevgep61.2 = getelementptr i8, ptr %i.on, i64 %i.zx
  %scevgep60.2 = getelementptr i8, ptr %i.oo, i64 %i.zx
  %scevgep59.2 = getelementptr i8, ptr %i.op, i64 %i.zx
  %scevgep58.2 = getelementptr i8, ptr %i.oq, i64 %i.zx
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.2 = or disjoint i64 %indvar56, 3
  %i.zy = mul i64 %i.ny, %indvar.next57.2         ; 4 uses
  %scevgep61.3 = getelementptr i8, ptr %i.on, i64 %i.zy
  %scevgep60.3 = getelementptr i8, ptr %i.oo, i64 %i.zy
  %scevgep59.3 = getelementptr i8, ptr %i.op, i64 %i.zy
  %scevgep58.3 = getelementptr i8, ptr %i.oq, i64 %i.zy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.3 = add nuw i64 %indvar56, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1053.i.loopexit164.unr-lcssa, label %.lr.ph1048.us.i, !llvm.loop !95

._crit_edge1053.i.loopexit164.unr-lcssa:          ; preds = %.lr.ph1048.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil.preheader

.lr.ph1048.us.i.epil.preheader:                   ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.preheader
  %indvar56.epil.init = phi i64 [ 0, %.lr.ph1048.us.i.preheader ], [ %indvar.next57.3, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph1048.us.i.epil

.lr.ph1048.us.i.epil:                             ; preds = %.lr.ph1048.us.i.epil, %.lr.ph1048.us.i.epil.preheader
  %indvar56.epil = phi i64 [ %indvar56.epil.init, %.lr.ph1048.us.i.epil.preheader ], [ %indvar.next57.epil, %.lr.ph1048.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1048.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph1048.us.i.epil ]
  %i.zz = mul i64 %i.ny, %indvar56.epil           ; 4 uses
  %scevgep61.epil = getelementptr i8, ptr %i.on, i64 %i.zz
  %scevgep60.epil = getelementptr i8, ptr %i.oo, i64 %i.zz
  %scevgep59.epil = getelementptr i8, ptr %i.op, i64 %i.zz
  %scevgep58.epil = getelementptr i8, ptr %i.oq, i64 %i.zz
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.epil = add nuw i64 %indvar56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil, !llvm.loop !96

._crit_edge1053.i:                                ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.epil, %._crit_edge.split.us.us.us.i, %.lr.ph.i, %.preheader1019.i
  %.1.lcssa.i = phi i64 [ %.0986.lcssa.i, %.preheader1019.i ], [ %i.nq, %.lr.ph.i ], [ %i.nq, %._crit_edge.split.us.us.us.i ], [ %i.nq, %.lr.ph1048.us.i.epil ], [ %i.nq, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge1053.i
  %i.aaa = sdiv i32 %i.h, 8
  %i.aab = sext i32 %i.aaa to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge1053.i
  %.0987.i = phi i64 [ %i.aab, %bb.e ], [ 0, %._crit_edge1053.i ] ; 8 uses
  %.2.i = phi i64 [ 0, %bb.e ], [ %.1.lcssa.i, %._crit_edge1053.i ] ; 8 uses
  %i.aac = icmp slt i64 %.2.i, %i.j
  br i1 %i.aac, label %.lr.ph1081.i, label %.preheader1013.i

.lr.ph1081.i:                                     ; preds = %bb.f
  %i.aad = sdiv i32 %6, 8
  %i.aae = sext i32 %i.aad to i64                 ; 3 uses
  %i.aaf = icmp slt i64 %.0987.i, %i.aae
  %i.aag = icmp sgt i32 %0, 31
  br i1 %i.aaf, label %.lr.ph1081.split.us.preheader.i, label %.lr.ph1081.split.i.preheader

.lr.ph1081.split.i.preheader:                     ; preds = %.lr.ph1081.i
  %i.aah = xor i64 %.2.i, -1
  %i.aai = add i64 %i.aah, %i.j
  %i.aaj = and i64 %i.aai, -4
  %i.aak = add i64 %.2.i, %i.aaj
  %i.aal = add i64 %i.aak, 4
  br label %.preheader1013.i

.lr.ph1081.split.us.preheader.i:                  ; preds = %.lr.ph1081.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.aap = mul i64 %.2.i, %2
  %i.aaq = shl i64 %i.aap, 4
  %i.aar = shl nsw i64 %.0987.i, 5                ; 16 uses
  %i.aas = shl i64 %2, 6
  %i.aat = sub nsw i64 %i.aae, %.0987.i
  %i.aau = shl nsw i64 %i.aat, 5                  ; 16 uses
  %i.aav = shl nsw i64 %.2.i, 2                   ; 15 uses
  %i.aaw = or disjoint i64 %i.aav, 1
  %i.aax = mul i64 %2, %i.aaw
  %i.aay = shl i64 %i.aax, 2
  %i.aaz = or disjoint i64 %i.aav, 2
  %i.aba = mul i64 %2, %i.aaz
  %i.abb = shl i64 %i.aba, 2
  %i.abc = or disjoint i64 %i.aav, 3
  %i.abd = mul i64 %2, %i.abc
  %i.abe = shl i64 %i.abd, 2
  %i.abf = add i64 %i.aav, 4
  %i.abg = mul i64 %2, %i.abf
  %i.abh = shl i64 %i.abg, 2
  %i.abi = add i64 %i.aav, 5
  %i.abj = mul i64 %2, %i.abi
  %i.abk = shl i64 %i.abj, 2
  %i.abl = add i64 %i.aav, 6
  %i.abm = mul i64 %2, %i.abl
  %i.abn = shl i64 %i.abm, 2
  %i.abo = add i64 %i.aav, 7
  %i.abp = mul i64 %2, %i.abo
  %i.abq = shl i64 %i.abp, 2
  %i.abr = add i64 %i.aav, 8
  %i.abs = mul i64 %2, %i.abr
  %i.abt = shl i64 %i.abs, 2
  %i.abu = add i64 %i.aav, 9
  %i.abv = mul i64 %2, %i.abu
  %i.abw = shl i64 %i.abv, 2
  %i.abx = add i64 %i.aav, 10
  %i.aby = mul i64 %2, %i.abx
  %i.abz = shl i64 %i.aby, 2
  %i.aca = add i64 %i.aav, 11
  %i.acb = mul i64 %2, %i.aca
  %i.acc = shl i64 %i.acb, 2
  %i.acd = add i64 %i.aav, 12
  %i.ace = mul i64 %2, %i.acd
  %i.acf = shl i64 %i.ace, 2
  %i.acg = add i64 %i.aav, 13
  %i.ach = mul i64 %2, %i.acg
  %i.aci = shl i64 %i.ach, 2
  %i.acj = add i64 %i.aav, 14
  %i.ack = mul i64 %2, %i.acj
  %i.acl = shl i64 %i.ack, 2
  %i.acm = add i64 %i.aav, 15
  %i.acn = mul i64 %2, %i.acm
  %i.aco = shl i64 %i.acn, 2
  %i.acp = xor i64 %.2.i, -1
  %i.acq = add i64 %i.acp, %i.j
  %i.acr = lshr i64 %i.acq, 2
  %i.acs = getelementptr i8, ptr %1, i64 %i.aaq
  %i.act = getelementptr i8, ptr %i.acs, i64 %i.aar
  %i.acu = getelementptr i8, ptr %1, i64 %i.aay
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.aar
  %i.acw = getelementptr i8, ptr %1, i64 %i.abb
  %i.acx = getelementptr i8, ptr %i.acw, i64 %i.aar
  %i.acy = getelementptr i8, ptr %1, i64 %i.abe
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.aar
  %i.ada = getelementptr i8, ptr %1, i64 %i.abh
  %i.adb = getelementptr i8, ptr %i.ada, i64 %i.aar
  %i.adc = getelementptr i8, ptr %1, i64 %i.abk
  %i.add = getelementptr i8, ptr %i.adc, i64 %i.aar
  %i.ade = getelementptr i8, ptr %1, i64 %i.abn
  %i.adf = getelementptr i8, ptr %i.ade, i64 %i.aar
  %i.adg = getelementptr i8, ptr %1, i64 %i.abq
  %i.adh = getelementptr i8, ptr %i.adg, i64 %i.aar
  %i.adi = getelementptr i8, ptr %1, i64 %i.abt
  %i.adj = getelementptr i8, ptr %i.adi, i64 %i.aar
  %i.adk = getelementptr i8, ptr %1, i64 %i.abw
  %i.adl = getelementptr i8, ptr %i.adk, i64 %i.aar
  %i.adm = getelementptr i8, ptr %1, i64 %i.abz
  %i.adn = getelementptr i8, ptr %i.adm, i64 %i.aar
  %i.ado = getelementptr i8, ptr %1, i64 %i.acc
  %i.adp = getelementptr i8, ptr %i.ado, i64 %i.aar
  %i.adq = getelementptr i8, ptr %1, i64 %i.acf
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.aar
  %i.ads = getelementptr i8, ptr %1, i64 %i.aci
  %i.adt = getelementptr i8, ptr %i.ads, i64 %i.aar
  %i.adu = getelementptr i8, ptr %1, i64 %i.acl
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.aar
  %i.adw = getelementptr i8, ptr %1, i64 %i.aco
  %i.adx = getelementptr i8, ptr %i.adw, i64 %i.aar
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.aoc, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !108
  %i.ady = mul nsw i64 %.31079.us.i, %i.f
  %i.adz = getelementptr inbounds [136 x i8], ptr %4, i64 %i.ady ; 2 uses
  store ptr %i.adz, ptr %i.c, align 16, !tbaa !21, !noalias !108
  %i.aea = getelementptr inbounds [136 x i8], ptr %i.adz, i64 %i.f ; 2 uses
  store ptr %i.aea, ptr %i.aam, align 8, !tbaa !21, !noalias !108
  %i.aeb = getelementptr inbounds [136 x i8], ptr %i.aea, i64 %i.f ; 2 uses
  store ptr %i.aeb, ptr %i.aan, align 16, !tbaa !21, !noalias !108
  %i.aec = getelementptr inbounds [136 x i8], ptr %i.aeb, i64 %i.f
  store ptr %i.aec, ptr %i.aao, align 8, !tbaa !21, !noalias !108
  %i.aed = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.aee = mul i64 %i.aed, %2
  %i.aef = or disjoint i64 %i.aed, 1
  %i.aeg = mul i64 %i.aef, %2
  %i.aeh = or disjoint i64 %i.aed, 2
  %i.aei = mul i64 %i.aeh, %2
  %i.aej = or disjoint i64 %i.aed, 3
  %i.aek = mul i64 %i.aej, %2
  %i.ael = add nsw i64 %i.aed, 4
  %i.aem = mul i64 %i.ael, %2
  %i.aen = add nsw i64 %i.aed, 5
  %i.aeo = mul i64 %i.aen, %2
  %i.aep = add nsw i64 %i.aed, 6
  %i.aeq = mul i64 %i.aep, %2
  %i.aer = add nsw i64 %i.aed, 7
  %i.aes = mul i64 %i.aer, %2
  %i.aet = add nsw i64 %i.aed, 8
  %i.aeu = mul i64 %i.aet, %2
  %i.aev = add nsw i64 %i.aed, 9
  %i.aew = mul i64 %i.aev, %2
  %i.aex = add nsw i64 %i.aed, 10
  %i.aey = mul i64 %i.aex, %2
  %i.aez = add nsw i64 %i.aed, 11
  %i.afa = mul i64 %i.aez, %2
  %i.afb = add nsw i64 %i.aed, 12
  %i.afc = mul i64 %i.afb, %2
  %i.afd = add nsw i64 %i.aed, 13
  %i.afe = mul i64 %i.afd, %2
  %i.aff = add nsw i64 %i.aed, 14
  %i.afg = mul i64 %i.aff, %2
  %i.afh = add nsw i64 %i.aed, 15
  %i.afi = mul i64 %i.afh, %2
  br i1 %i.aag, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.afj = mul i64 %i.aas, %indvar62              ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.act, i64 %i.afj
  %scevgep65 = getelementptr i8, ptr %i.acv, i64 %i.afj
  %scevgep66 = getelementptr i8, ptr %i.acx, i64 %i.afj
  %scevgep67 = getelementptr i8, ptr %i.acz, i64 %i.afj
  %scevgep68 = getelementptr i8, ptr %i.adb, i64 %i.afj
  %scevgep69 = getelementptr i8, ptr %i.add, i64 %i.afj
  %scevgep70 = getelementptr i8, ptr %i.adf, i64 %i.afj
  %scevgep71 = getelementptr i8, ptr %i.adh, i64 %i.afj
  %scevgep72 = getelementptr i8, ptr %i.adj, i64 %i.afj
  %scevgep73 = getelementptr i8, ptr %i.adl, i64 %i.afj
  %scevgep74 = getelementptr i8, ptr %i.adn, i64 %i.afj
  %scevgep75 = getelementptr i8, ptr %i.adp, i64 %i.afj
  %scevgep76 = getelementptr i8, ptr %i.adr, i64 %i.afj
  %scevgep77 = getelementptr i8, ptr %i.adt, i64 %i.afj
  %scevgep78 = getelementptr i8, ptr %i.adv, i64 %i.afj
end_hunk_1
begin_hunk_2_@ggml_gemm_q4_0_8x8_q8_0:bb.a
  %i.avg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ava, <32 x i8> %i.avd, <32 x i8> %i.avf)
  %i.avh = bitcast <8 x i32> %i.arw to <32 x i8>
  %i.avi = shufflevector <32 x i8> %i.avh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avi, <32 x i8> %i.avi) ; 2 uses
  %i.avk = shufflevector <32 x i8> %i.aqo, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avk, <32 x i8> %i.avi)
  %i.avm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avg, <32 x i8> %i.avj, <32 x i8> %i.avl)
  %i.avn = shufflevector <32 x i8> %i.arr, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avn, <32 x i8> %i.auq)
  %i.avp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aur, <32 x i8> %i.avo)
  %i.avq = shufflevector <32 x i8> %i.arh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avq, <32 x i8> %i.auw)
  %i.avs = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avp, <32 x i8> %i.aux, <32 x i8> %i.avr)
  %i.avt = shufflevector <32 x i8> %i.aqx, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avt, <32 x i8> %i.avc)
  %i.avv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avs, <32 x i8> %i.avd, <32 x i8> %i.avu)
  %i.avw = shufflevector <32 x i8> %i.aqr, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avw, <32 x i8> %i.avi)
  %i.avy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avv, <32 x i8> %i.avj, <32 x i8> %i.avx)
  %i.avz = bitcast <8 x i32> %i.asc to <32 x i8>
  %i.awa = shufflevector <32 x i8> %i.avz, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awa, <32 x i8> %i.awa) ; 2 uses
  %i.awc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aus, <32 x i8> %i.awa)
  %i.awd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.awb, <32 x i8> %i.awc)
  %i.awe = bitcast <8 x i32> %i.asa to <32 x i8>
  %i.awf = shufflevector <32 x i8> %i.awe, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awf, <32 x i8> %i.awf) ; 2 uses
  %i.awh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auy, <32 x i8> %i.awf)
  %i.awi = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awd, <32 x i8> %i.awg, <32 x i8> %i.awh)
  %i.awj = bitcast <8 x i32> %i.ary to <32 x i8>
  %i.awk = shufflevector <32 x i8> %i.awj, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awk, <32 x i8> %i.awk) ; 2 uses
  %i.awm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ave, <32 x i8> %i.awk)
  %i.awn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awi, <32 x i8> %i.awl, <32 x i8> %i.awm)
  %i.awo = bitcast <8 x i32> %i.arw to <32 x i8>
  %i.awp = shufflevector <32 x i8> %i.awo, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awp, <32 x i8> %i.awp) ; 2 uses
  %i.awr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avk, <32 x i8> %i.awp)
  %i.aws = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awn, <32 x i8> %i.awq, <32 x i8> %i.awr)
  %i.awt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avn, <32 x i8> %i.awa)
  %i.awu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.awb, <32 x i8> %i.awt)
  %i.awv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avq, <32 x i8> %i.awf)
  %i.aww = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awu, <32 x i8> %i.awg, <32 x i8> %i.awv)
  %i.awx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avt, <32 x i8> %i.awk)
  %i.awy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aww, <32 x i8> %i.awl, <32 x i8> %i.awx)
  %i.awz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avw, <32 x i8> %i.awp)
  %i.axa = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awy, <32 x i8> %i.awq, <32 x i8> %i.awz)
  %i.axb = add <8 x i32> %i.avm, %i.ata           ; 2 uses
  %i.axc = add <8 x i32> %i.avy, %i.atm           ; 2 uses
  %i.axd = add <8 x i32> %i.aws, %i.aug           ; 2 uses
  %i.axe = add <8 x i32> %i.axa, %i.auo           ; 2 uses
  %i.axf = shufflevector <8 x i32> %i.axb, <8 x i32> %i.axc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.axg = shufflevector <8 x i32> %i.axb, <8 x i32> %i.axc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.axh = shufflevector <8 x i32> %i.axd, <8 x i32> %i.axe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.axi = shufflevector <8 x i32> %i.axd, <8 x i32> %i.axe, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.axj = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.aru, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !107, !noalias !111
  %i.axk = bitcast <4 x i32> %i.axj to <8 x half>
  %i.axl = shufflevector <8 x half> %i.axk, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.axm = fpext <8 x half> %i.axl to <8 x float> ; 4 uses
  %i.axn = sitofp <8 x i32> %i.axf to <8 x float>
  %i.axo = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.axp = fmul <8 x float> %i.axo, %i.art
  %i.axq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axn, <8 x float> %i.axp, <8 x float> %i.apy) ; 2 uses
  %i.axr = sitofp <8 x i32> %i.axg to <8 x float>
  %i.axs = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.axt = fmul <8 x float> %i.axs, %i.art
  %i.axu = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axr, <8 x float> %i.axt, <8 x float> %i.apx) ; 2 uses
  %i.axv = sitofp <8 x i32> %i.axh to <8 x float>
  %i.axw = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.axx = fmul <8 x float> %i.axw, %i.art
  %i.axy = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axv, <8 x float> %i.axx, <8 x float> %i.apw) ; 2 uses
  %i.axz = sitofp <8 x i32> %i.axi to <8 x float>
  %i.aya = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.ayb = fmul <8 x float> %i.aya, %i.art
  %i.ayc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axz, <8 x float> %i.ayb, <8 x float> %i.apv) ; 2 uses
  %i.ayd = add nuw nsw i64 %.010011089.us.us.i, 1 ; 2 uses
  %exitcond1187.not.i = icmp eq i64 %i.ayd, %i.f
  br i1 %exitcond1187.not.i, label %..preheader_crit_edge.us.us.i, label %bb.i, !llvm.loop !101

..preheader_crit_edge.us.us.i:                    ; preds = %bb.i
  %.idx.us.us.i = shl i64 %.010031099.us.us.i, 5
  %invariant.gep.us1101.us.i = getelementptr i8, ptr %1, i64 %.idx.us.us.i ; 4 uses
  %gep.us1102.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.apm
  store <8 x float> %i.axq, ptr %gep.us1102.us.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1102.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.apo
  store <8 x float> %i.axu, ptr %gep.us1102.us.1.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1102.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.apq
  store <8 x float> %i.axy, ptr %gep.us1102.us.2.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1102.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.aps
  store <8 x float> %i.ayc, ptr %gep.us1102.us.3.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %i.aye = add nsw i64 %.010031099.us.us.i, 1     ; 2 uses
  %exitcond1192.not.i = icmp eq i64 %i.aye, %i.aof
  br i1 %exitcond1192.not.i, label %._crit_edge.split.us.us.i, label %.preheader1012.us.us.i, !llvm.loop !102

._crit_edge.split.us.us.i:                        ; preds = %..preheader_crit_edge.us.us.i
  %i.ayf = add nsw i64 %.41103.us.i, 1            ; 2 uses
  %exitcond1193.not.i = icmp eq i64 %i.ayf, %i.nq
  br i1 %exitcond1193.not.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit, label %.lr.ph1100.us.i, !llvm.loop !103

.lr.ph1100.i:                                     ; preds = %.lr.ph1100.i, %.lr.ph1100.i.preheader.new
  %indvar81 = phi i64 [ 0, %.lr.ph1100.i.preheader.new ], [ %indvar.next82.3, %.lr.ph1100.i ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph1100.i.preheader.new ], [ %niter172.next.3, %.lr.ph1100.i ]
  %i.ayg = mul i64 %i.aol, %indvar81              ; 4 uses
  %scevgep86 = getelementptr i8, ptr %i.aoz, i64 %i.ayg
  %scevgep85 = getelementptr i8, ptr %i.apb, i64 %i.ayg
  %scevgep84 = getelementptr i8, ptr %i.apd, i64 %i.ayg
  %scevgep83 = getelementptr i8, ptr %i.apf, i64 %i.ayg
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next82 = or disjoint i64 %indvar81, 1
  %i.ayh = mul i64 %i.aol, %indvar.next82         ; 4 uses
  %scevgep86.1 = getelementptr i8, ptr %i.aoz, i64 %i.ayh
  %scevgep85.1 = getelementptr i8, ptr %i.apb, i64 %i.ayh
  %scevgep84.1 = getelementptr i8, ptr %i.apd, i64 %i.ayh
  %scevgep83.1 = getelementptr i8, ptr %i.apf, i64 %i.ayh
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next82.1 = or disjoint i64 %indvar81, 2
  %i.ayi = mul i64 %i.aol, %indvar.next82.1       ; 4 uses
  %scevgep86.2 = getelementptr i8, ptr %i.aoz, i64 %i.ayi
  %scevgep85.2 = getelementptr i8, ptr %i.apb, i64 %i.ayi
  %scevgep84.2 = getelementptr i8, ptr %i.apd, i64 %i.ayi
  %scevgep83.2 = getelementptr i8, ptr %i.apf, i64 %i.ayi
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next82.2 = or disjoint i64 %indvar81, 3
  %i.ayj = mul i64 %i.aol, %indvar.next82.2       ; 4 uses
  %scevgep86.3 = getelementptr i8, ptr %i.aoz, i64 %i.ayj
  %scevgep85.3 = getelementptr i8, ptr %i.apb, i64 %i.ayj
  %scevgep84.3 = getelementptr i8, ptr %i.apd, i64 %i.ayj
  %scevgep83.3 = getelementptr i8, ptr %i.apf, i64 %i.ayj
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next82.3 = add nuw i64 %indvar81, 4     ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit158.unr-lcssa, label %.lr.ph1100.i, !llvm.loop !103

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit158.unr-lcssa: ; preds = %.lr.ph1100.i
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit, label %.lr.ph1100.i.epil.preheader

.lr.ph1100.i.epil.preheader:                      ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1100.i.preheader
  %indvar81.epil.init = phi i64 [ 0, %.lr.ph1100.i.preheader ], [ %indvar.next82.3, %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit158.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph1100.i.epil

.lr.ph1100.i.epil:                                ; preds = %.lr.ph1100.i.epil, %.lr.ph1100.i.epil.preheader
  %indvar81.epil = phi i64 [ %indvar81.epil.init, %.lr.ph1100.i.epil.preheader ], [ %indvar.next82.epil, %.lr.ph1100.i.epil ] ; 2 uses
  %epil.iter168 = phi i64 [ 0, %.lr.ph1100.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph1100.i.epil ]
  %i.ayk = mul i64 %i.aol, %indvar81.epil         ; 4 uses
  %scevgep86.epil = getelementptr i8, ptr %i.aoz, i64 %i.ayk
  %scevgep85.epil = getelementptr i8, ptr %i.apb, i64 %i.ayk
  %scevgep84.epil = getelementptr i8, ptr %i.apd, i64 %i.ayk
  %scevgep83.epil = getelementptr i8, ptr %i.apf, i64 %i.ayk
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next82.epil = add nuw i64 %indvar81.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit, label %.lr.ph1100.i.epil, !llvm.loop !104

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit: ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1100.i.epil, %._crit_edge.split.us.us.i, %.preheader1013.i, %.lr.ph1104.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8>, <64 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i8> @llvm.abs.v64i8(<64 x i8>, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ggml_gemm_q4_K_8x8_q8_K(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 23 uses
  %i.c = alloca [16 x <16 x float>], align 64     ; 23 uses
  %i.d = alloca [4 x ptr], align 16               ; 7 uses
  %i.e = alloca [16 x <8 x float>], align 32      ; 23 uses
  %i.f = alloca [16 x <8 x float>], align 32      ; 23 uses
  %i.g = sdiv i32 %0, 256
  %i.h = sext i32 %i.g to i64                     ; 20 uses
  %7 = srem i32 %5, 16
  %i.i = sub nsw i32 %5, %7                       ; 2 uses
  %8 = srem i32 %6, 16                            ; 2 uses
  %i.j = sub nsw i32 %6, %8                       ; 5 uses
  %i.k = sdiv i32 %i.i, 4
  %i.l = sext i32 %i.k to i64                     ; 5 uses
  %i.m = icmp sgt i32 %i.i, 3
  br i1 %i.m, label %.lr.ph2285, label %.preheader2269

.lr.ph2285:                                       ; preds = %bb.a
  %i.n = sdiv i32 %i.j, 8
  %i.o = sext i32 %i.n to i64
  %i.p = icmp sgt i32 %i.j, 7
  %i.q = icmp sgt i32 %0, 255
  br i1 %i.p, label %.lr.ph2285.split.us.preheader, label %.lr.ph2285.split

.lr.ph2285.split.us.preheader:                    ; preds = %.lr.ph2285
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert2612 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.phi.trans.insert2614 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert2616 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.phi.trans.insert2618 = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert2620 = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.phi.trans.insert2622 = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert2624 = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %.phi.trans.insert2626 = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert2628 = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %.phi.trans.insert2630 = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert2632 = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %.phi.trans.insert2634 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert2636 = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %.phi.trans.insert2638 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert2640 = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %.phi.trans.insert2642 = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert2644 = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %.phi.trans.insert2646 = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert2648 = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  br label %.lr.ph2285.split.us

.lr.ph2285.split.us:                              ; preds = %.lr.ph2285.split.us.preheader, %._crit_edge.us
  %.022282283.us = phi i64 [ %i.zi, %._crit_edge.us ], [ 0, %.lr.ph2285.split.us.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ae = mul nsw i64 %.022282283.us, %i.h
  %i.af = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.a, align 16, !tbaa !23
  %i.ag = getelementptr inbounds [1168 x i8], ptr %i.af, i64 %i.h ; 2 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !23
  %i.ah = getelementptr inbounds [1168 x i8], ptr %i.ag, i64 %i.h ; 2 uses
  store ptr %i.ah, ptr %i.s, align 16, !tbaa !23
  %i.ai = getelementptr inbounds [1168 x i8], ptr %i.ah, i64 %i.h
  store ptr %i.ai, ptr %i.t, align 8, !tbaa !23
  %i.aj = shl nuw nsw i64 %.022282283.us, 2       ; 16 uses
  %i.ak = mul i64 %i.aj, %2
  %i.al = or disjoint i64 %i.aj, 1
  %i.am = mul i64 %i.al, %2
  %i.an = or disjoint i64 %i.aj, 2
  %i.ao = mul i64 %i.an, %2
  %i.ap = or disjoint i64 %i.aj, 3
  %i.aq = mul i64 %i.ap, %2
  %i.ar = or disjoint i64 %i.aj, 4
  %i.as = mul i64 %i.ar, %2
  %i.at = or disjoint i64 %i.aj, 5
  %i.au = mul i64 %i.at, %2
  %i.av = or disjoint i64 %i.aj, 6
  %i.aw = mul i64 %i.av, %2
  %i.ax = or disjoint i64 %i.aj, 7
  %i.ay = mul i64 %i.ax, %2
  %i.az = or disjoint i64 %i.aj, 8
  %i.ba = mul i64 %i.az, %2
  %i.bb = or disjoint i64 %i.aj, 9
  %i.bc = mul i64 %i.bb, %2
  %i.bd = or disjoint i64 %i.aj, 10
  %i.be = mul i64 %i.bd, %2
  %i.bf = or disjoint i64 %i.aj, 11
  %i.bg = mul i64 %i.bf, %2
  %i.bh = or disjoint i64 %i.aj, 12
  %i.bi = mul i64 %i.bh, %2
  %i.bj = or disjoint i64 %i.aj, 13
  %i.bk = mul i64 %i.bj, %2
  %i.bl = or disjoint i64 %i.aj, 14
  %i.bm = mul i64 %i.bl, %2
  %i.bn = or disjoint i64 %i.aj, 15
  %i.bo = mul i64 %i.bn, %2
  br label %.preheader2271.us

.preheader2271.us:                                ; preds = %.lr.ph2285.split.us, %.preheader2270.us
  %.022312281.us = phi i64 [ 0, %.lr.ph2285.split.us ], [ %i.zg, %.preheader2270.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false), !tbaa !9
  %i.bp = mul nsw i64 %.022312281.us, %i.h
  %i.bq = getelementptr inbounds [1152 x i8], ptr %3, i64 %i.bp
  %i.br = or disjoint i64 %.022312281.us, 1
  %i.bs = mul nsw i64 %i.br, %i.h
  %i.bt = getelementptr inbounds [1152 x i8], ptr %3, i64 %i.bs
  br i1 %i.q, label %.lr.ph.us, label %.preheader2270.us

.lr.ph.us:                                        ; preds = %.preheader2271.us, %bb.e
  %.022342279.us = phi i64 [ %i.xu, %bb.e ], [ 0, %.preheader2271.us ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [1152 x i8], ptr %i.bt, i64 %.022342279.us ; 12 uses
  %i.bv = load <2 x i64>, ptr %i.bu, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw [1152 x i8], ptr %i.bq, i64 %.022342279.us ; 12 uses
  %i.bx = load <2 x i64>, ptr %i.bw, align 1, !tbaa !9
  %i.by = shufflevector <2 x i64> %i.bx, <2 x i64> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = bitcast <4 x i64> %i.by to <16 x half>
  %i.ca = fpext <16 x half> %i.bz to <16 x float> ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cc = load <2 x i64>, ptr %i.cb, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ce = load <2 x i64>, ptr %i.cd, align 1, !tbaa !9
  %i.cf = shufflevector <2 x i64> %i.ce, <2 x i64> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cg = bitcast <4 x i64> %i.cf to <16 x half>
  %i.ch = fpext <16 x half> %i.cg to <16 x float> ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 256
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 288
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 320
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 352
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 192
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 288
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 352
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.da = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.us
  %indvars.iv2453 = phi i64 [ %indvars.iv.next2454, %bb.d ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.dc = shl nuw nsw i64 %indvars.iv2453, 8      ; 24 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dc
  %i.de = load <8 x i32>, ptr %i.dd, align 1, !tbaa !9 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.dc
  %i.dg = load <8 x i32>, ptr %i.df, align 1, !tbaa !9 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dc
  %i.di = load <8 x i32>, ptr %i.dh, align 1, !tbaa !9 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dc
  %i.dk = load <8 x i32>, ptr %i.dj, align 1, !tbaa !9 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dc
  %i.dm = load <8 x i32>, ptr %i.dl, align 1, !tbaa !9 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dc
  %i.do = load <8 x i32>, ptr %i.dn, align 1, !tbaa !9 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dc
  %i.dq = load <8 x i32>, ptr %i.dp, align 1, !tbaa !9 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dc
  %i.ds = load <8 x i32>, ptr %i.dr, align 1, !tbaa !9 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dc
  %i.du = load <8 x i32>, ptr %i.dt, align 1, !tbaa !9 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dc
  %i.dw = load <8 x i32>, ptr %i.dv, align 1, !tbaa !9 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dc
  %i.dy = load <8 x i32>, ptr %i.dx, align 1, !tbaa !9 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dc
  %i.ea = load <8 x i32>, ptr %i.dz, align 1, !tbaa !9 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dc
  %i.ec = load <8 x i32>, ptr %i.eb, align 1, !tbaa !9 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dc
  %i.ee = load <8 x i32>, ptr %i.ed, align 1, !tbaa !9 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc
  %i.eg = load <8 x i32>, ptr %i.ef, align 1, !tbaa !9 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dc
  %i.ei = load <8 x i32>, ptr %i.eh, align 1, !tbaa !9 ; 2 uses
  %i.ej = shufflevector <8 x i32> %i.de, <8 x i32> %i.dg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <8 x i32> %i.du, <8 x i32> %i.dw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <16 x i32> %i.ej, <16 x i32> %i.ek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.em = shufflevector <8 x i32> %i.de, <8 x i32> %i.dg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <8 x i32> %i.du, <8 x i32> %i.dw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <16 x i32> %i.em, <16 x i32> %i.en, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ep = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = shufflevector <8 x i32> %i.dy, <8 x i32> %i.ea, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <16 x i32> %i.ep, <16 x i32> %i.eq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.es = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i32> %i.dy, <8 x i32> %i.ea, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <16 x i32> %i.es, <16 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ev = shufflevector <8 x i32> %i.dm, <8 x i32> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <16 x i32> %i.ev, <16 x i32> %i.ew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ey = shufflevector <8 x i32> %i.dm, <8 x i32> %i.do, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ez = shufflevector <8 x i32> %i.ec, <8 x i32> %i.ee, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <16 x i32> %i.ey, <16 x i32> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.fb = shufflevector <8 x i32> %i.dq, <8 x i32> %i.ds, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i32> %i.eg, <8 x i32> %i.ei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_2
begin_hunk_3_@ggml_gemm_q4_K_8x8_q8_K:bb.a
  %i.atj = add <32 x i16> %i.ati, %i.aqz
  %i.atk = add <32 x i16> %i.atj, %i.arc
  %i.atl = add <32 x i16> %i.atk, %i.arf
  %i.atm = add <32 x i16> %i.ant, %i.anq
  %i.atn = add <32 x i16> %i.atm, %i.anw
  %i.ato = add <32 x i16> %i.atn, %i.anz
  %i.atp = add <32 x i16> %i.ato, %i.ari
  %i.atq = add <32 x i16> %i.atp, %i.arl
  %i.atr = add <32 x i16> %i.atq, %i.aro
  %i.ats = add <32 x i16> %i.atr, %i.arr
  %i.att = add <32 x i16> %i.aob, %i.aoa
  %i.atu = add <32 x i16> %i.att, %i.aoc
  %i.atv = add <32 x i16> %i.atu, %i.aod
  %i.atw = add <32 x i16> %i.atv, %i.ars
  %i.atx = add <32 x i16> %i.atw, %i.art
  %i.aty = add <32 x i16> %i.atx, %i.aru
  %i.atz = add <32 x i16> %i.aty, %i.arv
  %i.aua = bitcast <16 x i32> %i.aiu to <32 x i16> ; 2 uses
  %i.aub = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.asc, <32 x i16> %i.aua) ; 2 uses
  %i.auc = bitcast <16 x i32> %i.aiv to <32 x i16> ; 2 uses
  %i.aud = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.asj, <32 x i16> %i.auc) ; 2 uses
  %i.aue = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.asq, <32 x i16> %i.aua) ; 2 uses
  %i.auf = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.asx, <32 x i16> %i.auc) ; 2 uses
  %i.aug = bitcast <16 x i32> %i.aix to <32 x i16> ; 2 uses
  %i.auh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ate, <32 x i16> %i.aug) ; 2 uses
  %i.aui = bitcast <16 x i32> %i.aiy to <32 x i16> ; 2 uses
  %i.auj = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.atl, <32 x i16> %i.aui) ; 2 uses
  %i.auk = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.ats, <32 x i16> %i.aug) ; 2 uses
  %i.aul = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.atz, <32 x i16> %i.aui) ; 2 uses
  %i.aum = shufflevector <16 x i32> %i.aub, <16 x i32> %i.aud, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aun = shufflevector <16 x i32> %i.aub, <16 x i32> %i.aud, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.auo = shufflevector <16 x i32> %i.aue, <16 x i32> %i.auf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aup = shufflevector <16 x i32> %i.aue, <16 x i32> %i.auf, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.auq = shufflevector <16 x i32> %i.auh, <16 x i32> %i.auj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aur = shufflevector <16 x i32> %i.auh, <16 x i32> %i.auj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.aus = shufflevector <16 x i32> %i.auk, <16 x i32> %i.aul, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.aut = shufflevector <16 x i32> %i.auk, <16 x i32> %i.aul, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.auu = add <16 x i32> %i.auq, %i.aum
  %i.auv = add <16 x i32> %i.aur, %i.aun
  %i.auw = add <16 x i32> %i.aus, %i.auo
  %i.aux = add <16 x i32> %i.aut, %i.aup
  %i.auy = sitofp <16 x i32> %i.auu to <16 x float>
  %i.auz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.auy, <16 x float> %i.ace, <16 x float> %i.acp) ; 3 uses
  %i.ava = sitofp <16 x i32> %i.auv to <16 x float>
  %i.avb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ava, <16 x float> %i.acg, <16 x float> %i.acq) ; 3 uses
  %i.avc = sitofp <16 x i32> %i.auw to <16 x float>
  %i.avd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avc, <16 x float> %i.aci, <16 x float> %i.acr) ; 3 uses
  %i.ave = sitofp <16 x i32> %i.aux to <16 x float>
  %i.avf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ave, <16 x float> %i.ack, <16 x float> %i.acs) ; 3 uses
  %i.avg = shufflevector <8 x i16> %i.akl, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.avh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.avg, <32 x i16> %i.ais)
  %i.avi = shufflevector <8 x i16> %i.akl, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.avj = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.avi, <32 x i16> %i.ais)
  %i.avk = shufflevector <8 x i16> %i.akl, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.avl = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.avk, <32 x i16> %i.ais)
  %i.avm = shufflevector <8 x i16> %i.akl, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.avn = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.avm, <32 x i16> %i.ais)
  %i.avo = sitofp <16 x i32> %i.avh to <16 x float>
  %i.avp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avo, <16 x float> %i.acl, <16 x float> %i.act) ; 3 uses
  %i.avq = sitofp <16 x i32> %i.avj to <16 x float>
  %i.avr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avq, <16 x float> %i.acm, <16 x float> %i.acu) ; 3 uses
  %i.avs = sitofp <16 x i32> %i.avl to <16 x float>
  %i.avt = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avs, <16 x float> %i.acn, <16 x float> %i.acv) ; 3 uses
  %i.avu = sitofp <16 x i32> %i.avn to <16 x float>
  %i.avv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.avu, <16 x float> %i.aco, <16 x float> %i.acw) ; 3 uses
  %indvars.iv.next2480 = add nuw nsw i64 %indvars.iv2479, 1 ; 2 uses
  %exitcond2482.not = icmp eq i64 %indvars.iv.next2480, 4
  br i1 %exitcond2482.not, label %bb.h, label %bb.g, !llvm.loop !117

bb.h:                                             ; preds = %bb.g
  %i.avw = add nuw nsw i64 %.022412311.us.us.us, 1 ; 2 uses
  %exitcond2483.not = icmp eq i64 %i.avw, %i.h
  br i1 %exitcond2483.not, label %..preheader2267_crit_edge.us.us.us, label %bb.f, !llvm.loop !118

..preheader2267_crit_edge.us.us.us:               ; preds = %bb.h
  %.idx2260.us.us.us = shl nuw nsw i64 %.022382327.us.us.us, 5
  %invariant.gep.us2329.us.us = getelementptr i8, ptr %1, i64 %.idx2260.us.us.us ; 4 uses
  %gep.us2330.us.us = getelementptr [4 x i8], ptr %invariant.gep.us2329.us.us, i64 %i.zy
  %i.avx = fsub <16 x float> %i.auz, %i.avp
  store <16 x float> %i.avx, ptr %gep.us2330.us.us, align 1, !tbaa !9
  %gep.us2330.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us2329.us.us, i64 %i.aaa
  %i.avy = fsub <16 x float> %i.avb, %i.avr
  store <16 x float> %i.avy, ptr %gep.us2330.us.us.1, align 1, !tbaa !9
  %gep.us2330.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us2329.us.us, i64 %i.aac
  %i.avz = fsub <16 x float> %i.avd, %i.avt
  store <16 x float> %i.avz, ptr %gep.us2330.us.us.2, align 1, !tbaa !9
  %gep.us2330.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us2329.us.us, i64 %i.aae
  %i.awa = fsub <16 x float> %i.avf, %i.avv
  store <16 x float> %i.awa, ptr %gep.us2330.us.us.3, align 1, !tbaa !9
  %i.awb = add nuw nsw i64 %.022382327.us.us.us, 2 ; 2 uses
  %i.awc = icmp slt i64 %i.awb, %i.zo
  br i1 %i.awc, label %.preheader2268.us.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !119

._crit_edge.split.us.us.us:                       ; preds = %..preheader2267_crit_edge.us.us.us
  %i.awd = add nuw nsw i64 %.12332.us.us, 1       ; 2 uses
  %exitcond2488.not = icmp eq i64 %i.awd, %i.zl
  br i1 %exitcond2488.not, label %._crit_edge2333, label %.lr.ph2328.us.us, !llvm.loop !120

.lr.ph2328.us:                                    ; preds = %.lr.ph2328.us.preheader, %._crit_edge.split.us2347
  %.12332.us = phi i64 [ %i.awu, %._crit_edge.split.us2347 ], [ %.02228.lcssa, %.lr.ph2328.us.preheader ] ; 2 uses
  %i.awe = shl nuw nsw i64 %.12332.us, 2          ; 4 uses
  %i.awf = mul i64 %i.awe, %2                     ; 5 uses
  %i.awg = or disjoint i64 %i.awe, 1
  %i.awh = mul i64 %i.awg, %2                     ; 5 uses
  %i.awi = or disjoint i64 %i.awe, 2
  %i.awj = mul i64 %i.awi, %2                     ; 5 uses
  %i.awk = or disjoint i64 %i.awe, 3
  %i.awl = mul i64 %i.awk, %2                     ; 5 uses
  br i1 %i.zu, label %.preheader2268.us2340.epil.preheader, label %.preheader2268.us2340

.preheader2268.us2340:                            ; preds = %.lr.ph2328.us, %.preheader2268.us2340
  %.022382327.us2337 = phi i64 [ %i.aws, %.preheader2268.us2340 ], [ 0, %.lr.ph2328.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader2268.us2340 ], [ 0, %.lr.ph2328.us ]
  %.idx2260.us2343 = shl nuw nsw i64 %.022382327.us2337, 5
  %invariant.gep.us2344 = getelementptr i8, ptr %1, i64 %.idx2260.us2343 ; 4 uses
  %gep.us2346 = getelementptr [4 x i8], ptr %invariant.gep.us2344, i64 %i.awf
  store <16 x float> zeroinitializer, ptr %gep.us2346, align 1, !tbaa !9
  %gep.us2346.1 = getelementptr [4 x i8], ptr %invariant.gep.us2344, i64 %i.awh
  store <16 x float> zeroinitializer, ptr %gep.us2346.1, align 1, !tbaa !9
  %gep.us2346.2 = getelementptr [4 x i8], ptr %invariant.gep.us2344, i64 %i.awj
  store <16 x float> zeroinitializer, ptr %gep.us2346.2, align 1, !tbaa !9
  %gep.us2346.3 = getelementptr [4 x i8], ptr %invariant.gep.us2344, i64 %i.awl
  store <16 x float> zeroinitializer, ptr %gep.us2346.3, align 1, !tbaa !9
  %i.awm = shl i64 %.022382327.us2337, 5
  %i.awn = getelementptr i8, ptr %1, i64 %i.awm
  %invariant.gep.us2344.1 = getelementptr i8, ptr %i.awn, i64 64 ; 4 uses
  %gep.us2346.12817 = getelementptr [4 x i8], ptr %invariant.gep.us2344.1, i64 %i.awf
  store <16 x float> zeroinitializer, ptr %gep.us2346.12817, align 1, !tbaa !9
  %gep.us2346.1.1 = getelementptr [4 x i8], ptr %invariant.gep.us2344.1, i64 %i.awh
  store <16 x float> zeroinitializer, ptr %gep.us2346.1.1, align 1, !tbaa !9
  %gep.us2346.2.1 = getelementptr [4 x i8], ptr %invariant.gep.us2344.1, i64 %i.awj
  store <16 x float> zeroinitializer, ptr %gep.us2346.2.1, align 1, !tbaa !9
  %gep.us2346.3.1 = getelementptr [4 x i8], ptr %invariant.gep.us2344.1, i64 %i.awl
  store <16 x float> zeroinitializer, ptr %gep.us2346.3.1, align 1, !tbaa !9
  %i.awo = shl i64 %.022382327.us2337, 5
  %i.awp = getelementptr i8, ptr %1, i64 %i.awo
  %invariant.gep.us2344.2 = getelementptr i8, ptr %i.awp, i64 128 ; 4 uses
  %gep.us2346.22818 = getelementptr [4 x i8], ptr %invariant.gep.us2344.2, i64 %i.awf
  store <16 x float> zeroinitializer, ptr %gep.us2346.22818, align 1, !tbaa !9
  %gep.us2346.1.2 = getelementptr [4 x i8], ptr %invariant.gep.us2344.2, i64 %i.awh
  store <16 x float> zeroinitializer, ptr %gep.us2346.1.2, align 1, !tbaa !9
  %gep.us2346.2.2 = getelementptr [4 x i8], ptr %invariant.gep.us2344.2, i64 %i.awj
  store <16 x float> zeroinitializer, ptr %gep.us2346.2.2, align 1, !tbaa !9
  %gep.us2346.3.2 = getelementptr [4 x i8], ptr %invariant.gep.us2344.2, i64 %i.awl
  store <16 x float> zeroinitializer, ptr %gep.us2346.3.2, align 1, !tbaa !9
  %i.awq = shl i64 %.022382327.us2337, 5
  %i.awr = getelementptr i8, ptr %1, i64 %i.awq
  %invariant.gep.us2344.3 = getelementptr i8, ptr %i.awr, i64 192 ; 4 uses
  %gep.us2346.32819 = getelementptr [4 x i8], ptr %invariant.gep.us2344.3, i64 %i.awf
  store <16 x float> zeroinitializer, ptr %gep.us2346.32819, align 1, !tbaa !9
  %gep.us2346.1.3 = getelementptr [4 x i8], ptr %invariant.gep.us2344.3, i64 %i.awh
  store <16 x float> zeroinitializer, ptr %gep.us2346.1.3, align 1, !tbaa !9
  %gep.us2346.2.3 = getelementptr [4 x i8], ptr %invariant.gep.us2344.3, i64 %i.awj
  store <16 x float> zeroinitializer, ptr %gep.us2346.2.3, align 1, !tbaa !9
  %gep.us2346.3.3 = getelementptr [4 x i8], ptr %invariant.gep.us2344.3, i64 %i.awl
  store <16 x float> zeroinitializer, ptr %gep.us2346.3.3, align 1, !tbaa !9
  %i.aws = add nuw nsw i64 %.022382327.us2337, 8  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.split.us2347.unr-lcssa, label %.preheader2268.us2340, !llvm.loop !119

._crit_edge.split.us2347.unr-lcssa:               ; preds = %.preheader2268.us2340
  br i1 %lcmp.mod.not, label %._crit_edge.split.us2347, label %.preheader2268.us2340.epil.preheader

.preheader2268.us2340.epil.preheader:             ; preds = %._crit_edge.split.us2347.unr-lcssa, %.lr.ph2328.us
  %.022382327.us2337.epil.init = phi i64 [ 0, %.lr.ph2328.us ], [ %i.aws, %._crit_edge.split.us2347.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2816)
  br label %.preheader2268.us2340.epil

.preheader2268.us2340.epil:                       ; preds = %.preheader2268.us2340.epil, %.preheader2268.us2340.epil.preheader
  %.022382327.us2337.epil = phi i64 [ %.022382327.us2337.epil.init, %.preheader2268.us2340.epil.preheader ], [ %i.awt, %.preheader2268.us2340.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader2268.us2340.epil.preheader ], [ %epil.iter.next, %.preheader2268.us2340.epil ]
  %.idx2260.us2343.epil = shl nuw nsw i64 %.022382327.us2337.epil, 5
  %invariant.gep.us2344.epil = getelementptr i8, ptr %1, i64 %.idx2260.us2343.epil ; 4 uses
  %gep.us2346.epil = getelementptr [4 x i8], ptr %invariant.gep.us2344.epil, i64 %i.awf
  store <16 x float> zeroinitializer, ptr %gep.us2346.epil, align 1, !tbaa !9
  %gep.us2346.1.epil = getelementptr [4 x i8], ptr %invariant.gep.us2344.epil, i64 %i.awh
  store <16 x float> zeroinitializer, ptr %gep.us2346.1.epil, align 1, !tbaa !9
  %gep.us2346.2.epil = getelementptr [4 x i8], ptr %invariant.gep.us2344.epil, i64 %i.awj
  store <16 x float> zeroinitializer, ptr %gep.us2346.2.epil, align 1, !tbaa !9
  %gep.us2346.3.epil = getelementptr [4 x i8], ptr %invariant.gep.us2344.epil, i64 %i.awl
  store <16 x float> zeroinitializer, ptr %gep.us2346.3.epil, align 1, !tbaa !9
  %i.awt = add nuw nsw i64 %.022382327.us2337.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us2347, label %.preheader2268.us2340.epil, !llvm.loop !121

._crit_edge.split.us2347:                         ; preds = %.preheader2268.us2340.epil, %._crit_edge.split.us2347.unr-lcssa
  %i.awu = add nuw nsw i64 %.12332.us, 1          ; 2 uses
  %exitcond2472.not = icmp eq i64 %i.awu, %i.zl
  br i1 %exitcond2472.not, label %._crit_edge2333, label %.lr.ph2328.us, !llvm.loop !120

.lr.ph2285.split:                                 ; preds = %.lr.ph2285, %.lr.ph2285.split
  %.022282283 = phi i64 [ %i.awv, %.lr.ph2285.split ], [ 0, %.lr.ph2285 ]
  %i.awv = add nuw nsw i64 %.022282283, 4         ; 3 uses
  %i.aww = icmp slt i64 %i.awv, %i.l
  br i1 %i.aww, label %.lr.ph2285.split, label %.preheader2269, !llvm.loop !116

._crit_edge2333:                                  ; preds = %._crit_edge.split.us2347, %._crit_edge.split.us.us.us, %.lr.ph, %.preheader2269
  %.1.lcssa = phi i64 [ %.02228.lcssa, %.preheader2269 ], [ %i.zl, %.lr.ph ], [ %i.zl, %._crit_edge.split.us.us.us ], [ %i.zl, %._crit_edge.split.us2347 ]
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge2333
  %i.awx = sdiv i32 %i.j, 8
  %i.awy = sext i32 %i.awx to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge2333
  %.02229 = phi i64 [ %i.awy, %bb.i ], [ 0, %._crit_edge2333 ] ; 8 uses
  %.2 = phi i64 [ 0, %bb.i ], [ %.1.lcssa, %._crit_edge2333 ] ; 4 uses
  %i.awz = icmp slt i64 %.2, %i.l
  br i1 %i.awz, label %.lr.ph2365, label %.preheader2263

.lr.ph2365:                                       ; preds = %bb.j
  %i.axa = sdiv i32 %6, 8
  %i.axb = sext i32 %i.axa to i64                 ; 2 uses
  %i.axc = icmp slt i64 %.02229, %i.axb
  %i.axd = icmp sgt i32 %0, 255
  br i1 %i.axc, label %.lr.ph2365.split.us.preheader, label %.lr.ph2365.split

.lr.ph2365.split.us.preheader:                    ; preds = %.lr.ph2365
  %i.axe = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.axf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.axg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.phi.trans.insert2652 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.phi.trans.insert2654 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.phi.trans.insert2656 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.phi.trans.insert2658 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.phi.trans.insert2660 = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.phi.trans.insert2662 = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.phi.trans.insert2664 = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.phi.trans.insert2666 = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.phi.trans.insert2668 = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %.phi.trans.insert2670 = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %.phi.trans.insert2672 = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.phi.trans.insert2674 = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.phi.trans.insert2676 = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %.phi.trans.insert2678 = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %.phi.trans.insert2680 = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %.phi.trans.insert2682 = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.phi.trans.insert2684 = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %.phi.trans.insert2686 = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %.phi.trans.insert2688 = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %.phi.trans.insert2690 = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.axh = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.axi = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.axj = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.axk = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  %i.axl = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.axm = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.axn = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.axo = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.axp = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.axq = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  br label %.lr.ph2365.split.us

.lr.ph2365.split.us:                              ; preds = %.lr.ph2365.split.us.preheader, %._crit_edge.us2369
  %.32363.us = phi i64 [ %i.bsj, %._crit_edge.us2369 ], [ %.2, %.lr.ph2365.split.us.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.axr = mul nsw i64 %.32363.us, %i.h
  %i.axs = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.axr ; 2 uses
  store ptr %i.axs, ptr %i.d, align 16, !tbaa !23
  %i.axt = getelementptr inbounds [1168 x i8], ptr %i.axs, i64 %i.h ; 2 uses
  store ptr %i.axt, ptr %i.axe, align 8, !tbaa !23
  %i.axu = getelementptr inbounds [1168 x i8], ptr %i.axt, i64 %i.h ; 2 uses
  store ptr %i.axu, ptr %i.axf, align 16, !tbaa !23
  %i.axv = getelementptr inbounds [1168 x i8], ptr %i.axu, i64 %i.h
  store ptr %i.axv, ptr %i.axg, align 8, !tbaa !23
  %i.axw = shl nsw i64 %.32363.us, 2              ; 16 uses
  %i.axx = mul i64 %i.axw, %2
  %i.axy = or disjoint i64 %i.axw, 1
  %i.axz = mul i64 %i.axy, %2
  %i.aya = or disjoint i64 %i.axw, 2
  %i.ayb = mul i64 %i.aya, %2
  %i.ayc = or disjoint i64 %i.axw, 3
  %i.ayd = mul i64 %i.ayc, %2
  %i.aye = add nsw i64 %i.axw, 4
  %i.ayf = mul i64 %i.aye, %2
  %i.ayg = add nsw i64 %i.axw, 5
  %i.ayh = mul i64 %i.ayg, %2
  %i.ayi = add nsw i64 %i.axw, 6
  %i.ayj = mul i64 %i.ayi, %2
  %i.ayk = add nsw i64 %i.axw, 7
  %i.ayl = mul i64 %i.ayk, %2
  %i.aym = add nsw i64 %i.axw, 8
  %i.ayn = mul i64 %i.aym, %2
  %i.ayo = add nsw i64 %i.axw, 9
  %i.ayp = mul i64 %i.ayo, %2
  %i.ayq = add nsw i64 %i.axw, 10
  %i.ayr = mul i64 %i.ayq, %2
  %i.ays = add nsw i64 %i.axw, 11
  %i.ayt = mul i64 %i.ays, %2
  %i.ayu = add nsw i64 %i.axw, 12
  %i.ayv = mul i64 %i.ayu, %2
  %i.ayw = add nsw i64 %i.axw, 13
  %i.ayx = mul i64 %i.ayw, %2
  %i.ayy = add nsw i64 %i.axw, 14
  %i.ayz = mul i64 %i.ayy, %2
  %i.aza = add nsw i64 %i.axw, 15
  %i.azb = mul i64 %i.aza, %2
  br label %.preheader2265.us

.preheader2265.us:                                ; preds = %.lr.ph2365.split.us, %.preheader2264.us
  %.022452361.us = phi i64 [ %.02229, %.lr.ph2365.split.us ], [ %i.bsi, %.preheader2264.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.e, i8 0, i64 512, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !tbaa !9
  %i.azc = mul nsw i64 %.022452361.us, %i.h
  %i.azd = getelementptr inbounds [1152 x i8], ptr %3, i64 %i.azc
  br i1 %i.axd, label %.lr.ph2359.us, label %.preheader2264.us

.lr.ph2359.us:                                    ; preds = %.preheader2265.us, %bb.n
  %.022482358.us = phi i64 [ %i.bqw, %bb.n ], [ 0, %.preheader2265.us ] ; 3 uses
  %i.aze = getelementptr inbounds nuw [1152 x i8], ptr %i.azd, i64 %.022482358.us ; 11 uses
  %i.azf = load <8 x half>, ptr %i.aze, align 1, !tbaa !9
  %i.azg = fpext <8 x half> %i.azf to <8 x float> ; 4 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aze, i64 16
  %i.azi = load <8 x half>, ptr %i.azh, align 1, !tbaa !9
  %i.azj = fpext <8 x half> %i.azi to <8 x float> ; 4 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.aze, i64 128
  %i.azl = getelementptr inbounds nuw i8, ptr %i.aze, i64 160
  %i.azm = getelementptr inbounds nuw i8, ptr %i.aze, i64 192
  %i.azn = getelementptr inbounds nuw i8, ptr %i.aze, i64 224
  %i.azo = getelementptr inbounds nuw i8, ptr %i.aze, i64 256
  %i.azp = getelementptr inbounds nuw i8, ptr %i.aze, i64 288
  %i.azq = getelementptr inbounds nuw i8, ptr %i.aze, i64 320
  %i.azr = getelementptr inbounds nuw i8, ptr %i.aze, i64 352
  %i.azs = getelementptr inbounds nuw i8, ptr %i.aze, i64 32
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph2359.us
  %indvars.iv2507 = phi i64 [ %indvars.iv.next2508, %bb.m ], [ 0, %.lr.ph2359.us ] ; 4 uses
  %i.azt = shl nuw nsw i64 %indvars.iv2507, 8     ; 16 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azk, i64 %i.azt
  %i.azv = load <8 x i32>, ptr %i.azu, align 1, !tbaa !9 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azl, i64 %i.azt
  %i.azx = load <8 x i32>, ptr %i.azw, align 1, !tbaa !9 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azm, i64 %i.azt
  %i.azz = load <8 x i32>, ptr %i.azy, align 1, !tbaa !9 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azn, i64 %i.azt
  %i.bab = load <8 x i32>, ptr %i.baa, align 1, !tbaa !9 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azo, i64 %i.azt
  %i.bad = load <8 x i32>, ptr %i.bac, align 1, !tbaa !9 ; 2 uses
  %i.bae = getelementptr inbounds nuw i8, ptr %i.azp, i64 %i.azt
  %i.baf = load <8 x i32>, ptr %i.bae, align 1, !tbaa !9 ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azq, i64 %i.azt
  %i.bah = load <8 x i32>, ptr %i.bag, align 1, !tbaa !9 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azr, i64 %i.azt
  %i.baj = load <8 x i32>, ptr %i.bai, align 1, !tbaa !9 ; 2 uses
  %i.bak = shufflevector <8 x i32> %i.azv, <8 x i32> %i.azx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bal = shufflevector <8 x i32> %i.azv, <8 x i32> %i.azx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bam = shufflevector <8 x i32> %i.azz, <8 x i32> %i.bab, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ban = shufflevector <8 x i32> %i.azz, <8 x i32> %i.bab, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bao = shufflevector <8 x i32> %i.bad, <8 x i32> %i.baf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bap = shufflevector <8 x i32> %i.bad, <8 x i32> %i.baf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.baq = shufflevector <8 x i32> %i.bah, <8 x i32> %i.baj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bar = shufflevector <8 x i32> %i.bah, <8 x i32> %i.baj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bas = bitcast <8 x i32> %i.bak to <16 x i16>
  %i.bat = lshr <16 x i16> %i.bas, splat (i16 4)
  %i.bau = bitcast <8 x i32> %i.bal to <16 x i16>
  %i.bav = lshr <16 x i16> %i.bau, splat (i16 4)
  %i.baw = bitcast <8 x i32> %i.bam to <16 x i16>
  %i.bax = lshr <16 x i16> %i.baw, splat (i16 4)
  %i.bay = bitcast <8 x i32> %i.ban to <16 x i16>
  %i.baz = lshr <16 x i16> %i.bay, splat (i16 4)
  %i.bba = bitcast <8 x i32> %i.bao to <16 x i16>
  %i.bbb = lshr <16 x i16> %i.bba, splat (i16 4)
  %i.bbc = bitcast <8 x i32> %i.bap to <16 x i16>
  %i.bbd = lshr <16 x i16> %i.bbc, splat (i16 4)
  %i.bbe = bitcast <8 x i32> %i.baq to <16 x i16>
  %i.bbf = lshr <16 x i16> %i.bbe, splat (i16 4)
  %i.bbg = bitcast <8 x i32> %i.bar to <16 x i16>
  %i.bbh = lshr <16 x i16> %i.bbg, splat (i16 4)
  %i.bbi = and <8 x i32> %i.bak, splat (i32 252645135) ; 2 uses
  %i.bbj = and <8 x i32> %i.bal, splat (i32 252645135) ; 2 uses
  %i.bbk = and <8 x i32> %i.bam, splat (i32 252645135) ; 2 uses
  %i.bbl = and <8 x i32> %i.ban, splat (i32 252645135) ; 2 uses
  %i.bbm = and <8 x i32> %i.bao, splat (i32 252645135) ; 2 uses
  %i.bbn = and <8 x i32> %i.bap, splat (i32 252645135) ; 2 uses
  %i.bbo = and <8 x i32> %i.baq, splat (i32 252645135) ; 2 uses
  %i.bbp = and <8 x i32> %i.bar, splat (i32 252645135) ; 2 uses
  %.inner2777 = and <16 x i16> %i.bat, splat (i16 3855) ; 2 uses
  %.inner2778 = and <16 x i16> %i.bav, splat (i16 3855) ; 2 uses
  %.inner2779 = and <16 x i16> %i.bax, splat (i16 3855) ; 2 uses
  %.inner2780 = and <16 x i16> %i.baz, splat (i16 3855) ; 2 uses
  %.inner2781 = and <16 x i16> %i.bbb, splat (i16 3855) ; 2 uses
  %.inner2782 = and <16 x i16> %i.bbd, splat (i16 3855) ; 2 uses
  %.inner2783 = and <16 x i16> %i.bbf, splat (i16 3855) ; 2 uses
  %.inner2784 = and <16 x i16> %i.bbh, splat (i16 3855) ; 2 uses
  %i.bbq = mul nuw nsw i64 %indvars.iv2507, 24
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.azs, i64 %i.bbq ; 2 uses
  %.sroa.11716.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  %i.bbs = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.bbr, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.bbt = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 1 %.sroa.11716.0..sroa_idx.us, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison)
  %i.bbu = shufflevector <4 x i32> %i.bbt, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.bbv = lshr <4 x i32> %i.bbu, <i32 4, i32 0, i32 4, i32 0>
  %i.bbw = and <4 x i32> %i.bbv, splat (i32 252645135)
  %i.bbx = shufflevector <5 x i32> %i.bbs, <5 x i32> poison, <4 x i32> <i32 1, i32 0, i32 4, i32 3>
  %i.bby = lshr <5 x i32> %i.bbs, <i32 2, i32 2, i32 poison, i32 2, i32 2>
end_hunk_3
begin_hunk_4_@ggml_gemm_q4_K_8x8_q8_K:bb.a
  %i.cik = add <16 x i16> %i.cij, %i.cgg
  %i.cil = add <16 x i16> %i.cik, %i.cgh
  %i.cim = add <16 x i16> %i.cil, %i.cgi
  %i.cin = bitcast <8 x i32> %i.bxx to <16 x i16> ; 2 uses
  %i.cio = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cgp, <16 x i16> %i.cin) ; 2 uses
  %i.cip = bitcast <8 x i32> %i.bxy to <16 x i16> ; 2 uses
  %i.ciq = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cgw, <16 x i16> %i.cip) ; 2 uses
  %i.cir = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.chd, <16 x i16> %i.cin) ; 2 uses
  %i.cis = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.chk, <16 x i16> %i.cip) ; 2 uses
  %i.cit = bitcast <8 x i32> %i.bya to <16 x i16> ; 2 uses
  %i.ciu = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.chr, <16 x i16> %i.cit) ; 2 uses
  %i.civ = bitcast <8 x i32> %i.byb to <16 x i16> ; 2 uses
  %i.ciw = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.chy, <16 x i16> %i.civ) ; 2 uses
  %i.cix = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cif, <16 x i16> %i.cit) ; 2 uses
  %i.ciy = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cim, <16 x i16> %i.civ) ; 2 uses
  %i.ciz = shufflevector <8 x i32> %i.cio, <8 x i32> %i.ciq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cja = shufflevector <8 x i32> %i.cio, <8 x i32> %i.ciq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.cjb = shufflevector <8 x i32> %i.cir, <8 x i32> %i.cis, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cjc = shufflevector <8 x i32> %i.cir, <8 x i32> %i.cis, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.cjd = shufflevector <8 x i32> %i.ciu, <8 x i32> %i.ciw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cje = shufflevector <8 x i32> %i.ciu, <8 x i32> %i.ciw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.cjf = shufflevector <8 x i32> %i.cix, <8 x i32> %i.ciy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cjg = shufflevector <8 x i32> %i.cix, <8 x i32> %i.ciy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.cjh = add <8 x i32> %i.cjd, %i.ciz
  %i.cji = add <8 x i32> %i.cje, %i.cja
  %i.cjj = add <8 x i32> %i.cjf, %i.cjb
  %i.cjk = add <8 x i32> %i.cjg, %i.cjc
  %i.cjl = sitofp <8 x i32> %i.cjh to <8 x float>
  %i.cjm = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cjl, <8 x float> %i.bug, <8 x float> %i.bur) ; 3 uses
  %i.cjn = sitofp <8 x i32> %i.cji to <8 x float>
  %i.cjo = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cjn, <8 x float> %i.bui, <8 x float> %i.bus) ; 3 uses
  %i.cjp = sitofp <8 x i32> %i.cjj to <8 x float>
  %i.cjq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cjp, <8 x float> %i.buk, <8 x float> %i.but) ; 3 uses
  %i.cjr = sitofp <8 x i32> %i.cjk to <8 x float>
  %i.cjs = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cjr, <8 x float> %i.bum, <8 x float> %i.buu) ; 3 uses
  %i.cjt = shufflevector <8 x i16> %i.byy, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cju = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cjt, <16 x i16> %i.bxv)
  %i.cjv = shufflevector <8 x i16> %i.byy, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.cjw = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cjv, <16 x i16> %i.bxv)
  %i.cjx = shufflevector <8 x i16> %i.byy, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.cjy = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cjx, <16 x i16> %i.bxv)
  %i.cjz = shufflevector <8 x i16> %i.byy, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.cka = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.cjz, <16 x i16> %i.bxv)
  %i.ckb = sitofp <8 x i32> %i.cju to <8 x float>
  %i.ckc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ckb, <8 x float> %i.bun, <8 x float> %i.buv) ; 3 uses
  %i.ckd = sitofp <8 x i32> %i.cjw to <8 x float>
  %i.cke = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ckd, <8 x float> %i.buo, <8 x float> %i.buw) ; 3 uses
  %i.ckf = sitofp <8 x i32> %i.cjy to <8 x float>
  %i.ckg = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ckf, <8 x float> %i.bup, <8 x float> %i.bux) ; 3 uses
  %i.ckh = sitofp <8 x i32> %i.cka to <8 x float>
  %i.cki = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ckh, <8 x float> %i.buq, <8 x float> %i.buy) ; 3 uses
  %indvars.iv.next2536 = add nuw nsw i64 %indvars.iv2535, 1 ; 2 uses
  %exitcond2538.not = icmp eq i64 %indvars.iv.next2536, 4
  br i1 %exitcond2538.not, label %bb.q, label %bb.p, !llvm.loop !127

bb.q:                                             ; preds = %bb.p
  %i.ckj = add nuw nsw i64 %.022512394.us.us, 1   ; 2 uses
  %exitcond2539.not = icmp eq i64 %i.ckj, %i.h
  br i1 %exitcond2539.not, label %..preheader_crit_edge.us.us, label %bb.o, !llvm.loop !128

..preheader_crit_edge.us.us:                      ; preds = %bb.q
  %.idx.us.us = shl i64 %.022542411.us.us, 5
  %invariant.gep.us2413.us = getelementptr i8, ptr %1, i64 %.idx.us.us ; 4 uses
  %gep.us2414.us = getelementptr [4 x i8], ptr %invariant.gep.us2413.us, i64 %i.bsw
  %i.ckk = fsub <8 x float> %i.cjm, %i.ckc
  store <8 x float> %i.ckk, ptr %gep.us2414.us, align 1, !tbaa !9
  %gep.us2414.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us2413.us, i64 %i.bsy
  %i.ckl = fsub <8 x float> %i.cjo, %i.cke
  store <8 x float> %i.ckl, ptr %gep.us2414.us.1, align 1, !tbaa !9
  %gep.us2414.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us2413.us, i64 %i.bta
  %i.ckm = fsub <8 x float> %i.cjq, %i.ckg
  store <8 x float> %i.ckm, ptr %gep.us2414.us.2, align 1, !tbaa !9
  %gep.us2414.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us2413.us, i64 %i.btc
  %i.ckn = fsub <8 x float> %i.cjs, %i.cki
  store <8 x float> %i.ckn, ptr %gep.us2414.us.3, align 1, !tbaa !9
  %i.cko = add nsw i64 %.022542411.us.us, 1       ; 2 uses
  %exitcond2544.not = icmp eq i64 %i.cko, %i.bsn
  br i1 %exitcond2544.not, label %._crit_edge.split.us.us, label %.preheader2262.us.us, !llvm.loop !129

._crit_edge.split.us.us:                          ; preds = %..preheader_crit_edge.us.us
  %i.ckp = add nsw i64 %.42415.us, 1              ; 2 uses
  %exitcond2545.not = icmp eq i64 %i.ckp, %i.zl
  br i1 %exitcond2545.not, label %._crit_edge2417.split, label %.lr.ph2412.us, !llvm.loop !130

.lr.ph2365.split:                                 ; preds = %.lr.ph2365, %.lr.ph2365.split
  %.32363 = phi i64 [ %i.ckq, %.lr.ph2365.split ], [ %.2, %.lr.ph2365 ]
  %i.ckq = add nsw i64 %.32363, 4                 ; 3 uses
  %i.ckr = icmp slt i64 %i.ckq, %i.l
  br i1 %i.ckr, label %.lr.ph2365.split, label %.preheader2263, !llvm.loop !126

.lr.ph2412:                                       ; preds = %.lr.ph2412.preheader, %._crit_edge.split
  %.42415 = phi i64 [ %i.clb, %._crit_edge.split ], [ %.3.lcssa, %.lr.ph2412.preheader ] ; 2 uses
  %i.cks = shl nsw i64 %.42415, 2                 ; 4 uses
  %i.ckt = mul i64 %i.cks, %2                     ; 5 uses
  %i.cku = or disjoint i64 %i.cks, 1
  %i.ckv = mul i64 %i.cku, %2                     ; 5 uses
  %i.ckw = or disjoint i64 %i.cks, 2
  %i.ckx = mul i64 %i.ckw, %2                     ; 5 uses
  %i.cky = or disjoint i64 %i.cks, 3
  %i.ckz = mul i64 %i.cky, %2                     ; 5 uses
  br i1 %lcmp.mod2821.not, label %.preheader2262.prol.loopexit, label %.preheader2262.prol

.preheader2262.prol:                              ; preds = %.lr.ph2412, %.preheader2262.prol
  %.022542411.prol = phi i64 [ %i.cla, %.preheader2262.prol ], [ %.02229, %.lr.ph2412 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader2262.prol ], [ 0, %.lr.ph2412 ]
  %.idx.prol = shl i64 %.022542411.prol, 5
  %invariant.gep.prol = getelementptr i8, ptr %1, i64 %.idx.prol ; 4 uses
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep.prol, i64 %i.ckt
  store <8 x float> zeroinitializer, ptr %gep.prol, align 1, !tbaa !9
  %gep.1.prol = getelementptr [4 x i8], ptr %invariant.gep.prol, i64 %i.ckv
  store <8 x float> zeroinitializer, ptr %gep.1.prol, align 1, !tbaa !9
  %gep.2.prol = getelementptr [4 x i8], ptr %invariant.gep.prol, i64 %i.ckx
  store <8 x float> zeroinitializer, ptr %gep.2.prol, align 1, !tbaa !9
  %gep.3.prol = getelementptr [4 x i8], ptr %invariant.gep.prol, i64 %i.ckz
  store <8 x float> zeroinitializer, ptr %gep.3.prol, align 1, !tbaa !9
  %i.cla = add nsw i64 %.022542411.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2820
  br i1 %prol.iter.cmp.not, label %.preheader2262.prol.loopexit, label %.preheader2262.prol, !llvm.loop !131

.preheader2262.prol.loopexit:                     ; preds = %.preheader2262.prol, %.lr.ph2412
  %.022542411.unr = phi i64 [ %.02229, %.lr.ph2412 ], [ %i.cla, %.preheader2262.prol ]
  br i1 %i.bss, label %._crit_edge.split, label %.preheader2262

._crit_edge.split:                                ; preds = %.preheader2262, %.preheader2262.prol.loopexit
  %i.clb = add nsw i64 %.42415, 1                 ; 2 uses
  %exitcond2528.not = icmp eq i64 %i.clb, %i.zl
  br i1 %exitcond2528.not, label %._crit_edge2417.split, label %.lr.ph2412, !llvm.loop !130

.preheader2262:                                   ; preds = %.preheader2262.prol.loopexit, %.preheader2262
  %.022542411 = phi i64 [ %i.cli, %.preheader2262 ], [ %.022542411.unr, %.preheader2262.prol.loopexit ] ; 5 uses
  %.idx = shl i64 %.022542411, 5
  %invariant.gep = getelementptr i8, ptr %1, i64 %.idx ; 4 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ckt
  store <8 x float> zeroinitializer, ptr %gep, align 1, !tbaa !9
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ckv
  store <8 x float> zeroinitializer, ptr %gep.1, align 1, !tbaa !9
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ckx
  store <8 x float> zeroinitializer, ptr %gep.2, align 1, !tbaa !9
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ckz
  store <8 x float> zeroinitializer, ptr %gep.3, align 1, !tbaa !9
  %i.clc = shl i64 %.022542411, 5
  %i.cld = getelementptr i8, ptr %1, i64 %i.clc
  %invariant.gep.1 = getelementptr i8, ptr %i.cld, i64 32 ; 4 uses
  %gep.12822 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ckt
  store <8 x float> zeroinitializer, ptr %gep.12822, align 1, !tbaa !9
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ckv
  store <8 x float> zeroinitializer, ptr %gep.1.1, align 1, !tbaa !9
  %gep.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ckx
  store <8 x float> zeroinitializer, ptr %gep.2.1, align 1, !tbaa !9
  %gep.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ckz
  store <8 x float> zeroinitializer, ptr %gep.3.1, align 1, !tbaa !9
  %i.cle = shl i64 %.022542411, 5
  %i.clf = getelementptr i8, ptr %1, i64 %i.cle
  %invariant.gep.2 = getelementptr i8, ptr %i.clf, i64 64 ; 4 uses
  %gep.22823 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ckt
  store <8 x float> zeroinitializer, ptr %gep.22823, align 1, !tbaa !9
  %gep.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ckv
  store <8 x float> zeroinitializer, ptr %gep.1.2, align 1, !tbaa !9
  %gep.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ckx
  store <8 x float> zeroinitializer, ptr %gep.2.2, align 1, !tbaa !9
  %gep.3.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ckz
  store <8 x float> zeroinitializer, ptr %gep.3.2, align 1, !tbaa !9
  %i.clg = shl i64 %.022542411, 5
  %i.clh = getelementptr i8, ptr %1, i64 %i.clg
  %invariant.gep.3 = getelementptr i8, ptr %i.clh, i64 96 ; 4 uses
  %gep.32824 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.ckt
  store <8 x float> zeroinitializer, ptr %gep.32824, align 1, !tbaa !9
  %gep.1.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.ckv
  store <8 x float> zeroinitializer, ptr %gep.1.3, align 1, !tbaa !9
  %gep.2.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.ckx
  store <8 x float> zeroinitializer, ptr %gep.2.3, align 1, !tbaa !9
  %gep.3.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.ckz
  store <8 x float> zeroinitializer, ptr %gep.3.3, align 1, !tbaa !9
  %i.cli = add nsw i64 %.022542411, 4             ; 2 uses
  %exitcond2527.not.3 = icmp eq i64 %i.cli, %i.bsn
  br i1 %exitcond2527.not.3, label %._crit_edge.split, label %.preheader2262, !llvm.loop !129

._crit_edge2417.split:                            ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph2416, %.preheader2263
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_iq4_nl_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %7 = srem i32 %5, 16
  %i.g = sub nsw i32 %5, %7                       ; 2 uses
  %8 = srem i32 %6, 16                            ; 2 uses
  %i.h = sub nsw i32 %6, %8                       ; 5 uses
  %i.i = sdiv i32 %i.g, 4
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %.lr.ph1033.i, label %.preheader1019.i

.lr.ph1033.i:                                     ; preds = %bb.a
  %i.l = sdiv i32 %i.h, 8
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp sgt i32 %i.h, 7
  %i.o = icmp sgt i32 %0, 31
  br i1 %i.n, label %.lr.ph1033.split.us.preheader.i, label %.lr.ph1033.split.i.preheader

.lr.ph1033.split.i.preheader:                     ; preds = %.lr.ph1033.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.j, i64 4)
  %i.p = add nsw i64 %smax, -1
  %i.q = and i64 %i.p, -4
  %i.r = add nuw nsw i64 %i.q, 4
  br label %.preheader1019.i

.lr.ph1033.split.us.preheader.i:                  ; preds = %.lr.ph1033.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1223.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1225.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1227.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1229.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1231.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1233.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1235.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1237.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1239.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1241.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1243.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1245.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1247.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1249.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.v = shl i64 %2, 6
  %i.w = shl nuw nsw i64 %i.m, 5
  %i.x = add nsw i64 %i.w, -32
  %i.y = and i64 %i.x, -64
  %i.z = add nsw i64 %i.y, 64                     ; 16 uses
  %i.aa = shl i64 %2, 2
  %i.ab = shl i64 %2, 3
  %i.ac = mul i64 %2, 12
  %i.ad = shl i64 %2, 4
  %i.ae = mul i64 %2, 20
  %i.af = mul i64 %2, 24
  %i.ag = mul i64 %2, 28
  %i.ah = shl i64 %2, 5
  %i.ai = mul i64 %2, 36
  %i.aj = mul i64 %2, 40
  %i.ak = mul i64 %2, 44
  %i.al = mul i64 %2, 48
  %i.am = mul i64 %2, 52
  %i.an = mul i64 %2, 56
  %i.ao = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.j, i64 4)
  %i.ap = add nsw i64 %smax55, -1
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr i8, ptr %1, i64 %i.aa
  %i.as = getelementptr i8, ptr %1, i64 %i.ab
  %i.at = getelementptr i8, ptr %1, i64 %i.ac
  %i.au = getelementptr i8, ptr %1, i64 %i.ad
  %i.av = getelementptr i8, ptr %1, i64 %i.ae
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  br label %.lr.ph1033.split.us.i

.lr.ph1033.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1033.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  %.09861031.us.i = phi i64 [ %i.no, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !155
  %i.bg = mul nsw i64 %.09861031.us.i, %i.f
  %i.bh = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.a, align 16, !tbaa !21, !noalias !155
  %i.bi = getelementptr inbounds [136 x i8], ptr %i.bh, i64 %i.f ; 2 uses
  store ptr %i.bi, ptr %i.s, align 8, !tbaa !21, !noalias !155
  %i.bj = getelementptr inbounds [136 x i8], ptr %i.bi, i64 %i.f ; 2 uses
  store ptr %i.bj, ptr %i.t, align 16, !tbaa !21, !noalias !155
  %i.bk = getelementptr inbounds [136 x i8], ptr %i.bj, i64 %i.f
  store ptr %i.bk, ptr %i.u, align 8, !tbaa !21, !noalias !155
  %i.bl = shl nuw nsw i64 %.09861031.us.i, 2      ; 16 uses
  %i.bm = mul i64 %i.bl, %2
  %i.bn = or disjoint i64 %i.bl, 1
  %i.bo = mul i64 %i.bn, %2
  %i.bp = or disjoint i64 %i.bl, 2
  %i.bq = mul i64 %i.bp, %2
  %i.br = or disjoint i64 %i.bl, 3
  %i.bs = mul i64 %i.br, %2
  %i.bt = or disjoint i64 %i.bl, 4
  %i.bu = mul i64 %i.bt, %2
  %i.bv = or disjoint i64 %i.bl, 5
  %i.bw = mul i64 %i.bv, %2
  %i.bx = or disjoint i64 %i.bl, 6
  %i.by = mul i64 %i.bx, %2
  %i.bz = or disjoint i64 %i.bl, 7
  %i.ca = mul i64 %i.bz, %2
  %i.cb = or disjoint i64 %i.bl, 8
  %i.cc = mul i64 %i.cb, %2
  %i.cd = or disjoint i64 %i.bl, 9
  %i.ce = mul i64 %i.cd, %2
  %i.cf = or disjoint i64 %i.bl, 10
  %i.cg = mul i64 %i.cf, %2
  %i.ch = or disjoint i64 %i.bl, 11
  %i.ci = mul i64 %i.ch, %2
  %i.cj = or disjoint i64 %i.bl, 12
  %i.ck = mul i64 %i.cj, %2
  %i.cl = or disjoint i64 %i.bl, 13
  %i.cm = mul i64 %i.cl, %2
  %i.cn = or disjoint i64 %i.bl, 14
  %i.co = mul i64 %i.cn, %2
  %i.cp = or disjoint i64 %i.bl, 15
  %i.cq = mul i64 %i.cp, %2
  br i1 %i.o, label %.preheader1021.us.i.us, label %.preheader1021.us.i.preheader

.preheader1021.us.i.preheader:                    ; preds = %.lr.ph1033.split.us.i
  %i.cr = mul i64 %i.v, %indvar                   ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cr
  %scevgep40 = getelementptr i8, ptr %i.ar, i64 %i.cr
  %scevgep41 = getelementptr i8, ptr %i.as, i64 %i.cr
  %scevgep42 = getelementptr i8, ptr %i.at, i64 %i.cr
  %scevgep43 = getelementptr i8, ptr %i.au, i64 %i.cr
  %scevgep44 = getelementptr i8, ptr %i.av, i64 %i.cr
  %scevgep45 = getelementptr i8, ptr %i.aw, i64 %i.cr
  %scevgep46 = getelementptr i8, ptr %i.ax, i64 %i.cr
  %scevgep47 = getelementptr i8, ptr %i.ay, i64 %i.cr
  %scevgep48 = getelementptr i8, ptr %i.az, i64 %i.cr
  %scevgep49 = getelementptr i8, ptr %i.ba, i64 %i.cr
  %scevgep50 = getelementptr i8, ptr %i.bb, i64 %i.cr
  %scevgep51 = getelementptr i8, ptr %i.bc, i64 %i.cr
  %scevgep52 = getelementptr i8, ptr %i.bd, i64 %i.cr
  %scevgep53 = getelementptr i8, ptr %i.be, i64 %i.cr
  %scevgep54 = getelementptr i8, ptr %i.bf, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  br label %._crit_edge.us.i

.preheader1021.us.i.us:                           ; preds = %.lr.ph1033.split.us.i, %.preheader1020.us.loopexit.i.us
  %.09891029.us.i.us = phi i64 [ %i.nm, %.preheader1020.us.loopexit.i.us ], [ 0, %.lr.ph1033.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !155
  %i.cs = mul nuw nsw i64 %.09891029.us.i.us, %i.f
  %i.ct = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cs
  %i.cu = or disjoint i64 %.09891029.us.i.us, 1
  %i.cv = mul nuw nsw i64 %i.cu, %i.f
  %i.cw = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cv
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1021.us.i.us, %bb.c
  %.09911027.us.i.us = phi i64 [ %i.nl, %bb.c ], [ 0, %.preheader1021.us.i.us ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [144 x i8], ptr %i.ct, i64 %.09911027.us.i.us ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load <8 x i32>, ptr %i.cy, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.db = load <8 x i32>, ptr %i.da, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.dd = load <8 x i32>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  %i.df = load <8 x i32>, ptr %i.de, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dg = getelementptr inbounds nuw [144 x i8], ptr %i.cw, i64 %.09911027.us.i.us ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load <8 x i32>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.dk = load <8 x i32>, ptr %i.dj, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.dm = load <8 x i32>, ptr %i.dl, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.do = load <8 x i32>, ptr %i.dn, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dp = shufflevector <8 x i32> %i.cz, <8 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <16 x i32> %i.dp, <16 x i32> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ds = shufflevector <8 x i32> %i.cz, <8 x i32> %i.db, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <16 x i32> %i.ds, <16 x i32> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dv = shufflevector <8 x i32> %i.dd, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i32> %i.dm, <8 x i32> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_4
begin_hunk_5_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a
  %i.vv = bitcast <8 x i32> %i.si to <32 x i8>
  %i.vw = shufflevector <32 x i8> %i.vv, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.vx = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vw, i1 false) ; 2 uses
  %i.vy = icmp slt <64 x i8> %i.vw, zeroinitializer ; 2 uses
  %i.vz = shufflevector <64 x i8> %i.rh, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wa = sub <64 x i8> zeroinitializer, %i.vz    ; 2 uses
  %i.wb = select <64 x i1> %i.vy, <64 x i8> %i.wa, <64 x i8> %i.vz
  %i.wc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vu, <64 x i8> %i.vx, <64 x i8> %i.wb)
  %i.wd = bitcast <8 x i32> %i.sg to <32 x i8>
  %i.we = shufflevector <32 x i8> %i.wd, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wf = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.we, i1 false) ; 2 uses
  %i.wg = icmp slt <64 x i8> %i.we, zeroinitializer ; 2 uses
  %i.wh = shufflevector <64 x i8> %i.qz, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wi = sub <64 x i8> zeroinitializer, %i.wh    ; 2 uses
  %i.wj = select <64 x i1> %i.wg, <64 x i8> %i.wi, <64 x i8> %i.wh
  %i.wk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wc, <64 x i8> %i.wf, <64 x i8> %i.wj)
  %i.wl = bitcast <8 x i32> %i.se to <32 x i8>
  %i.wm = shufflevector <32 x i8> %i.wl, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wn = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wm, i1 false) ; 2 uses
  %i.wo = icmp slt <64 x i8> %i.wm, zeroinitializer ; 2 uses
  %i.wp = shufflevector <64 x i8> %i.qt, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wq = sub <64 x i8> zeroinitializer, %i.wp    ; 2 uses
  %i.wr = select <64 x i1> %i.wo, <64 x i8> %i.wq, <64 x i8> %i.wp
  %i.ws = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wk, <64 x i8> %i.wn, <64 x i8> %i.wr)
  %i.wt = shufflevector <64 x i8> %i.rw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wu = sub <64 x i8> zeroinitializer, %i.wt    ; 2 uses
  %i.wv = select <64 x i1> %i.vq, <64 x i8> %i.wu, <64 x i8> %i.wt
  %i.ww = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vp, <64 x i8> %i.wv)
  %i.wx = shufflevector <64 x i8> %i.rm, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wy = sub <64 x i8> zeroinitializer, %i.wx    ; 2 uses
  %i.wz = select <64 x i1> %i.vy, <64 x i8> %i.wy, <64 x i8> %i.wx
  %i.xa = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ww, <64 x i8> %i.vx, <64 x i8> %i.wz)
  %i.xb = shufflevector <64 x i8> %i.rc, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.xc = sub <64 x i8> zeroinitializer, %i.xb    ; 2 uses
  %i.xd = select <64 x i1> %i.wg, <64 x i8> %i.xc, <64 x i8> %i.xb
  %i.xe = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xa, <64 x i8> %i.wf, <64 x i8> %i.xd)
  %i.xf = shufflevector <64 x i8> %i.qw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.xg = sub <64 x i8> zeroinitializer, %i.xf    ; 2 uses
  %i.xh = select <64 x i1> %i.wo, <64 x i8> %i.xg, <64 x i8> %i.xf
  %i.xi = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xe, <64 x i8> %i.wn, <64 x i8> %i.xh)
  %i.xj = bitcast <8 x i32> %i.sk to <32 x i8>
  %i.xk = shufflevector <32 x i8> %i.xj, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xl = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xk, i1 false) ; 2 uses
  %i.xm = icmp slt <64 x i8> %i.xk, zeroinitializer ; 2 uses
  %i.xn = select <64 x i1> %i.xm, <64 x i8> %i.vs, <64 x i8> %i.vr
  %i.xo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.xl, <64 x i8> %i.xn)
  %i.xp = bitcast <8 x i32> %i.si to <32 x i8>
  %i.xq = shufflevector <32 x i8> %i.xp, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xr = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xq, i1 false) ; 2 uses
  %i.xs = icmp slt <64 x i8> %i.xq, zeroinitializer ; 2 uses
  %i.xt = select <64 x i1> %i.xs, <64 x i8> %i.wa, <64 x i8> %i.vz
  %i.xu = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xo, <64 x i8> %i.xr, <64 x i8> %i.xt)
  %i.xv = bitcast <8 x i32> %i.sg to <32 x i8>
  %i.xw = shufflevector <32 x i8> %i.xv, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xx = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xw, i1 false) ; 2 uses
  %i.xy = icmp slt <64 x i8> %i.xw, zeroinitializer ; 2 uses
  %i.xz = select <64 x i1> %i.xy, <64 x i8> %i.wi, <64 x i8> %i.wh
  %i.ya = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xu, <64 x i8> %i.xx, <64 x i8> %i.xz)
  %i.yb = bitcast <8 x i32> %i.se to <32 x i8>
  %i.yc = shufflevector <32 x i8> %i.yb, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.yd = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.yc, i1 false) ; 2 uses
  %i.ye = icmp slt <64 x i8> %i.yc, zeroinitializer ; 2 uses
  %i.yf = select <64 x i1> %i.ye, <64 x i8> %i.wq, <64 x i8> %i.wp
  %i.yg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ya, <64 x i8> %i.yd, <64 x i8> %i.yf)
  %i.yh = select <64 x i1> %i.xm, <64 x i8> %i.wu, <64 x i8> %i.wt
  %i.yi = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.xl, <64 x i8> %i.yh)
  %i.yj = select <64 x i1> %i.xs, <64 x i8> %i.wy, <64 x i8> %i.wx
  %i.yk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.yi, <64 x i8> %i.xr, <64 x i8> %i.yj)
  %i.yl = select <64 x i1> %i.xy, <64 x i8> %i.xc, <64 x i8> %i.xb
  %i.ym = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.yk, <64 x i8> %i.xx, <64 x i8> %i.yl)
  %i.yn = select <64 x i1> %i.ye, <64 x i8> %i.xg, <64 x i8> %i.xf
  %i.yo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ym, <64 x i8> %i.yd, <64 x i8> %i.yn)
  %i.yp = add <16 x i32> %i.ws, %i.tq             ; 2 uses
  %i.yq = add <16 x i32> %i.xi, %i.ug             ; 2 uses
  %i.yr = add <16 x i32> %i.yg, %i.ve             ; 2 uses
  %i.ys = add <16 x i32> %i.yo, %i.vm             ; 2 uses
  %i.yt = shufflevector <16 x i32> %i.yp, <16 x i32> %i.yq, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.yu = shufflevector <16 x i32> %i.yp, <16 x i32> %i.yq, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.yv = shufflevector <16 x i32> %i.yr, <16 x i32> %i.ys, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.yw = shufflevector <16 x i32> %i.yr, <16 x i32> %i.ys, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.yx = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.sc, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !154, !noalias !158
  %i.yy = bitcast <4 x i32> %i.yx to <8 x half>
  %i.yz = shufflevector <8 x half> %i.yy, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.za = fpext <16 x half> %i.yz to <16 x float> ; 4 uses
  %i.zb = sitofp <16 x i32> %i.yt to <16 x float>
  %i.zc = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.zd = fmul <16 x float> %i.zc, %i.sb
  %i.ze = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zb, <16 x float> %i.zd, <16 x float> %i.pm) ; 2 uses
  %i.zf = sitofp <16 x i32> %i.yu to <16 x float>
  %i.zg = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.zh = fmul <16 x float> %i.zg, %i.sb
  %i.zi = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zf, <16 x float> %i.zh, <16 x float> %i.pl) ; 2 uses
  %i.zj = sitofp <16 x i32> %i.yv to <16 x float>
  %i.zk = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.zl = fmul <16 x float> %i.zk, %i.sb
  %i.zm = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zj, <16 x float> %i.zl, <16 x float> %i.pk) ; 2 uses
  %i.zn = sitofp <16 x i32> %i.yw to <16 x float>
  %i.zo = shufflevector <16 x float> %i.za, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.zp = fmul <16 x float> %i.zo, %i.sb
  %i.zq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zn, <16 x float> %i.zp, <16 x float> %i.pj) ; 2 uses
  %i.zr = add nuw nsw i64 %.09961038.us.us.us.i, 1 ; 2 uses
  %exitcond1148.not.i = icmp eq i64 %i.zr, %i.f
  br i1 %exitcond1148.not.i, label %..preheader1017_crit_edge.us.us.us.i, label %bb.d, !llvm.loop !140

..preheader1017_crit_edge.us.us.us.i:             ; preds = %bb.d
  %.idx1010.us.us.us.i = shl nuw nsw i64 %.09941047.us.us.us.i, 5
  %invariant.gep.us1049.us.us.i = getelementptr i8, ptr %1, i64 %.idx1010.us.us.us.i ; 4 uses
  %gep.us1050.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.ox
  store <16 x float> %i.ze, ptr %gep.us1050.us.us.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1050.us.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.oz
  store <16 x float> %i.zi, ptr %gep.us1050.us.us.1.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1050.us.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.pb
  store <16 x float> %i.zm, ptr %gep.us1050.us.us.2.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1050.us.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.pd
  store <16 x float> %i.zq, ptr %gep.us1050.us.us.3.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %i.zs = add nuw nsw i64 %.09941047.us.us.us.i, 2 ; 2 uses
  %i.zt = icmp slt i64 %i.zs, %i.nt
  br i1 %i.zt, label %.preheader1018.us.us.us.i, label %._crit_edge.split.us.us.us.i, !llvm.loop !141

._crit_edge.split.us.us.us.i:                     ; preds = %..preheader1017_crit_edge.us.us.us.i
  %i.zu = add nuw nsw i64 %.11052.us.us.i, 1      ; 2 uses
  %exitcond1153.not.i = icmp eq i64 %i.zu, %i.nq
  br i1 %exitcond1153.not.i, label %._crit_edge1053.i, label %.lr.ph1048.us.us.i, !llvm.loop !142

.lr.ph1048.us.i:                                  ; preds = %.lr.ph1048.us.i, %.lr.ph1048.us.i.preheader.new
  %indvar56 = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %indvar.next57.3, %.lr.ph1048.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %niter.next.3, %.lr.ph1048.us.i ]
  %i.zv = mul i64 %i.ny, %indvar56                ; 4 uses
  %scevgep61 = getelementptr i8, ptr %i.on, i64 %i.zv
  %scevgep60 = getelementptr i8, ptr %i.oo, i64 %i.zv
  %scevgep59 = getelementptr i8, ptr %i.op, i64 %i.zv
  %scevgep58 = getelementptr i8, ptr %i.oq, i64 %i.zv
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57 = or disjoint i64 %indvar56, 1
  %i.zw = mul i64 %i.ny, %indvar.next57           ; 4 uses
  %scevgep61.1 = getelementptr i8, ptr %i.on, i64 %i.zw
  %scevgep60.1 = getelementptr i8, ptr %i.oo, i64 %i.zw
  %scevgep59.1 = getelementptr i8, ptr %i.op, i64 %i.zw
  %scevgep58.1 = getelementptr i8, ptr %i.oq, i64 %i.zw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.1, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.1 = or disjoint i64 %indvar56, 2
  %i.zx = mul i64 %i.ny, %indvar.next57.1         ; 4 uses
  %scevgep61.2 = getelementptr i8, ptr %i.on, i64 %i.zx
  %scevgep60.2 = getelementptr i8, ptr %i.oo, i64 %i.zx
  %scevgep59.2 = getelementptr i8, ptr %i.op, i64 %i.zx
  %scevgep58.2 = getelementptr i8, ptr %i.oq, i64 %i.zx
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.2, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.2 = or disjoint i64 %indvar56, 3
  %i.zy = mul i64 %i.ny, %indvar.next57.2         ; 4 uses
  %scevgep61.3 = getelementptr i8, ptr %i.on, i64 %i.zy
  %scevgep60.3 = getelementptr i8, ptr %i.oo, i64 %i.zy
  %scevgep59.3 = getelementptr i8, ptr %i.op, i64 %i.zy
  %scevgep58.3 = getelementptr i8, ptr %i.oq, i64 %i.zy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.3, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.3 = add nuw i64 %indvar56, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1053.i.loopexit164.unr-lcssa, label %.lr.ph1048.us.i, !llvm.loop !142

._crit_edge1053.i.loopexit164.unr-lcssa:          ; preds = %.lr.ph1048.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil.preheader

.lr.ph1048.us.i.epil.preheader:                   ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.preheader
  %indvar56.epil.init = phi i64 [ 0, %.lr.ph1048.us.i.preheader ], [ %indvar.next57.3, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph1048.us.i.epil

.lr.ph1048.us.i.epil:                             ; preds = %.lr.ph1048.us.i.epil, %.lr.ph1048.us.i.epil.preheader
  %indvar56.epil = phi i64 [ %indvar56.epil.init, %.lr.ph1048.us.i.epil.preheader ], [ %indvar.next57.epil, %.lr.ph1048.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1048.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph1048.us.i.epil ]
  %i.zz = mul i64 %i.ny, %indvar56.epil           ; 4 uses
  %scevgep61.epil = getelementptr i8, ptr %i.on, i64 %i.zz
  %scevgep60.epil = getelementptr i8, ptr %i.oo, i64 %i.zz
  %scevgep59.epil = getelementptr i8, ptr %i.op, i64 %i.zz
  %scevgep58.epil = getelementptr i8, ptr %i.oq, i64 %i.zz
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.epil, i8 0, i64 %i.oc, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.epil = add nuw i64 %indvar56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil, !llvm.loop !143

._crit_edge1053.i:                                ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.epil, %._crit_edge.split.us.us.us.i, %.lr.ph.i, %.preheader1019.i
  %.1.lcssa.i = phi i64 [ %.0986.lcssa.i, %.preheader1019.i ], [ %i.nq, %.lr.ph.i ], [ %i.nq, %._crit_edge.split.us.us.us.i ], [ %i.nq, %.lr.ph1048.us.i.epil ], [ %i.nq, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge1053.i
  %i.aaa = sdiv i32 %i.h, 8
  %i.aab = sext i32 %i.aaa to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge1053.i
  %.0987.i = phi i64 [ %i.aab, %bb.e ], [ 0, %._crit_edge1053.i ] ; 8 uses
  %.2.i = phi i64 [ 0, %bb.e ], [ %.1.lcssa.i, %._crit_edge1053.i ] ; 8 uses
  %i.aac = icmp slt i64 %.2.i, %i.j
  br i1 %i.aac, label %.lr.ph1081.i, label %.preheader1013.i

.lr.ph1081.i:                                     ; preds = %bb.f
  %i.aad = sdiv i32 %6, 8
  %i.aae = sext i32 %i.aad to i64                 ; 3 uses
  %i.aaf = icmp slt i64 %.0987.i, %i.aae
  %i.aag = icmp sgt i32 %0, 31
  br i1 %i.aaf, label %.lr.ph1081.split.us.preheader.i, label %.lr.ph1081.split.i.preheader

.lr.ph1081.split.i.preheader:                     ; preds = %.lr.ph1081.i
  %i.aah = xor i64 %.2.i, -1
  %i.aai = add i64 %i.aah, %i.j
  %i.aaj = and i64 %i.aai, -4
  %i.aak = add i64 %.2.i, %i.aaj
  %i.aal = add i64 %i.aak, 4
  br label %.preheader1013.i

.lr.ph1081.split.us.preheader.i:                  ; preds = %.lr.ph1081.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.aap = mul i64 %.2.i, %2
  %i.aaq = shl i64 %i.aap, 4
  %i.aar = shl nsw i64 %.0987.i, 5                ; 16 uses
  %i.aas = shl i64 %2, 6
  %i.aat = sub nsw i64 %i.aae, %.0987.i
  %i.aau = shl nsw i64 %i.aat, 5                  ; 16 uses
  %i.aav = shl nsw i64 %.2.i, 2                   ; 15 uses
  %i.aaw = or disjoint i64 %i.aav, 1
  %i.aax = mul i64 %2, %i.aaw
  %i.aay = shl i64 %i.aax, 2
  %i.aaz = or disjoint i64 %i.aav, 2
  %i.aba = mul i64 %2, %i.aaz
  %i.abb = shl i64 %i.aba, 2
  %i.abc = or disjoint i64 %i.aav, 3
  %i.abd = mul i64 %2, %i.abc
  %i.abe = shl i64 %i.abd, 2
  %i.abf = add i64 %i.aav, 4
  %i.abg = mul i64 %2, %i.abf
  %i.abh = shl i64 %i.abg, 2
  %i.abi = add i64 %i.aav, 5
  %i.abj = mul i64 %2, %i.abi
  %i.abk = shl i64 %i.abj, 2
  %i.abl = add i64 %i.aav, 6
  %i.abm = mul i64 %2, %i.abl
  %i.abn = shl i64 %i.abm, 2
  %i.abo = add i64 %i.aav, 7
  %i.abp = mul i64 %2, %i.abo
  %i.abq = shl i64 %i.abp, 2
  %i.abr = add i64 %i.aav, 8
  %i.abs = mul i64 %2, %i.abr
  %i.abt = shl i64 %i.abs, 2
  %i.abu = add i64 %i.aav, 9
  %i.abv = mul i64 %2, %i.abu
  %i.abw = shl i64 %i.abv, 2
  %i.abx = add i64 %i.aav, 10
  %i.aby = mul i64 %2, %i.abx
  %i.abz = shl i64 %i.aby, 2
  %i.aca = add i64 %i.aav, 11
  %i.acb = mul i64 %2, %i.aca
  %i.acc = shl i64 %i.acb, 2
  %i.acd = add i64 %i.aav, 12
  %i.ace = mul i64 %2, %i.acd
  %i.acf = shl i64 %i.ace, 2
  %i.acg = add i64 %i.aav, 13
  %i.ach = mul i64 %2, %i.acg
  %i.aci = shl i64 %i.ach, 2
  %i.acj = add i64 %i.aav, 14
  %i.ack = mul i64 %2, %i.acj
  %i.acl = shl i64 %i.ack, 2
  %i.acm = add i64 %i.aav, 15
  %i.acn = mul i64 %2, %i.acm
  %i.aco = shl i64 %i.acn, 2
  %i.acp = xor i64 %.2.i, -1
  %i.acq = add i64 %i.acp, %i.j
  %i.acr = lshr i64 %i.acq, 2
  %i.acs = getelementptr i8, ptr %1, i64 %i.aaq
  %i.act = getelementptr i8, ptr %i.acs, i64 %i.aar
  %i.acu = getelementptr i8, ptr %1, i64 %i.aay
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.aar
  %i.acw = getelementptr i8, ptr %1, i64 %i.abb
  %i.acx = getelementptr i8, ptr %i.acw, i64 %i.aar
  %i.acy = getelementptr i8, ptr %1, i64 %i.abe
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.aar
  %i.ada = getelementptr i8, ptr %1, i64 %i.abh
  %i.adb = getelementptr i8, ptr %i.ada, i64 %i.aar
  %i.adc = getelementptr i8, ptr %1, i64 %i.abk
  %i.add = getelementptr i8, ptr %i.adc, i64 %i.aar
  %i.ade = getelementptr i8, ptr %1, i64 %i.abn
  %i.adf = getelementptr i8, ptr %i.ade, i64 %i.aar
  %i.adg = getelementptr i8, ptr %1, i64 %i.abq
  %i.adh = getelementptr i8, ptr %i.adg, i64 %i.aar
  %i.adi = getelementptr i8, ptr %1, i64 %i.abt
  %i.adj = getelementptr i8, ptr %i.adi, i64 %i.aar
  %i.adk = getelementptr i8, ptr %1, i64 %i.abw
  %i.adl = getelementptr i8, ptr %i.adk, i64 %i.aar
  %i.adm = getelementptr i8, ptr %1, i64 %i.abz
  %i.adn = getelementptr i8, ptr %i.adm, i64 %i.aar
  %i.ado = getelementptr i8, ptr %1, i64 %i.acc
  %i.adp = getelementptr i8, ptr %i.ado, i64 %i.aar
  %i.adq = getelementptr i8, ptr %1, i64 %i.acf
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.aar
  %i.ads = getelementptr i8, ptr %1, i64 %i.aci
  %i.adt = getelementptr i8, ptr %i.ads, i64 %i.aar
  %i.adu = getelementptr i8, ptr %1, i64 %i.acl
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.aar
  %i.adw = getelementptr i8, ptr %1, i64 %i.aco
  %i.adx = getelementptr i8, ptr %i.adw, i64 %i.aar
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.aoc, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !155
  %i.ady = mul nsw i64 %.31079.us.i, %i.f
  %i.adz = getelementptr inbounds [136 x i8], ptr %4, i64 %i.ady ; 2 uses
  store ptr %i.adz, ptr %i.c, align 16, !tbaa !21, !noalias !155
  %i.aea = getelementptr inbounds [136 x i8], ptr %i.adz, i64 %i.f ; 2 uses
  store ptr %i.aea, ptr %i.aam, align 8, !tbaa !21, !noalias !155
  %i.aeb = getelementptr inbounds [136 x i8], ptr %i.aea, i64 %i.f ; 2 uses
  store ptr %i.aeb, ptr %i.aan, align 16, !tbaa !21, !noalias !155
  %i.aec = getelementptr inbounds [136 x i8], ptr %i.aeb, i64 %i.f
  store ptr %i.aec, ptr %i.aao, align 8, !tbaa !21, !noalias !155
  %i.aed = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.aee = mul i64 %i.aed, %2
  %i.aef = or disjoint i64 %i.aed, 1
  %i.aeg = mul i64 %i.aef, %2
  %i.aeh = or disjoint i64 %i.aed, 2
  %i.aei = mul i64 %i.aeh, %2
  %i.aej = or disjoint i64 %i.aed, 3
  %i.aek = mul i64 %i.aej, %2
  %i.ael = add nsw i64 %i.aed, 4
  %i.aem = mul i64 %i.ael, %2
  %i.aen = add nsw i64 %i.aed, 5
  %i.aeo = mul i64 %i.aen, %2
  %i.aep = add nsw i64 %i.aed, 6
  %i.aeq = mul i64 %i.aep, %2
  %i.aer = add nsw i64 %i.aed, 7
  %i.aes = mul i64 %i.aer, %2
  %i.aet = add nsw i64 %i.aed, 8
  %i.aeu = mul i64 %i.aet, %2
  %i.aev = add nsw i64 %i.aed, 9
  %i.aew = mul i64 %i.aev, %2
  %i.aex = add nsw i64 %i.aed, 10
  %i.aey = mul i64 %i.aex, %2
  %i.aez = add nsw i64 %i.aed, 11
  %i.afa = mul i64 %i.aez, %2
  %i.afb = add nsw i64 %i.aed, 12
  %i.afc = mul i64 %i.afb, %2
  %i.afd = add nsw i64 %i.aed, 13
  %i.afe = mul i64 %i.afd, %2
  %i.aff = add nsw i64 %i.aed, 14
  %i.afg = mul i64 %i.aff, %2
  %i.afh = add nsw i64 %i.aed, 15
  %i.afi = mul i64 %i.afh, %2
  br i1 %i.aag, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.afj = mul i64 %i.aas, %indvar62              ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.act, i64 %i.afj
  %scevgep65 = getelementptr i8, ptr %i.acv, i64 %i.afj
  %scevgep66 = getelementptr i8, ptr %i.acx, i64 %i.afj
  %scevgep67 = getelementptr i8, ptr %i.acz, i64 %i.afj
  %scevgep68 = getelementptr i8, ptr %i.adb, i64 %i.afj
  %scevgep69 = getelementptr i8, ptr %i.add, i64 %i.afj
  %scevgep70 = getelementptr i8, ptr %i.adf, i64 %i.afj
  %scevgep71 = getelementptr i8, ptr %i.adh, i64 %i.afj
  %scevgep72 = getelementptr i8, ptr %i.adj, i64 %i.afj
  %scevgep73 = getelementptr i8, ptr %i.adl, i64 %i.afj
  %scevgep74 = getelementptr i8, ptr %i.adn, i64 %i.afj
  %scevgep75 = getelementptr i8, ptr %i.adp, i64 %i.afj
  %scevgep76 = getelementptr i8, ptr %i.adr, i64 %i.afj
  %scevgep77 = getelementptr i8, ptr %i.adt, i64 %i.afj
  %scevgep78 = getelementptr i8, ptr %i.adv, i64 %i.afj
end_hunk_5
begin_hunk_6_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a
  %i.auv = bitcast <8 x i32> %i.asa to <32 x i8>
  %i.auw = shufflevector <32 x i8> %i.auv, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aux = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auw, <32 x i8> %i.auw) ; 2 uses
  %i.auy = shufflevector <32 x i8> %i.arc, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.auz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auy, <32 x i8> %i.auw)
  %i.ava = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.auu, <32 x i8> %i.aux, <32 x i8> %i.auz)
  %i.avb = bitcast <8 x i32> %i.ary to <32 x i8>
  %i.avc = shufflevector <32 x i8> %i.avb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avc, <32 x i8> %i.avc) ; 2 uses
  %i.ave = shufflevector <32 x i8> %i.aqu, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ave, <32 x i8> %i.avc)
  %i.avg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ava, <32 x i8> %i.avd, <32 x i8> %i.avf)
  %i.avh = bitcast <8 x i32> %i.arw to <32 x i8>
  %i.avi = shufflevector <32 x i8> %i.avh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avi, <32 x i8> %i.avi) ; 2 uses
  %i.avk = shufflevector <32 x i8> %i.aqo, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avk, <32 x i8> %i.avi)
  %i.avm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avg, <32 x i8> %i.avj, <32 x i8> %i.avl)
  %i.avn = shufflevector <32 x i8> %i.arr, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avn, <32 x i8> %i.auq)
  %i.avp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aur, <32 x i8> %i.avo)
  %i.avq = shufflevector <32 x i8> %i.arh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avq, <32 x i8> %i.auw)
  %i.avs = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avp, <32 x i8> %i.aux, <32 x i8> %i.avr)
  %i.avt = shufflevector <32 x i8> %i.aqx, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avt, <32 x i8> %i.avc)
  %i.avv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avs, <32 x i8> %i.avd, <32 x i8> %i.avu)
  %i.avw = shufflevector <32 x i8> %i.aqr, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avw, <32 x i8> %i.avi)
  %i.avy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avv, <32 x i8> %i.avj, <32 x i8> %i.avx)
  %i.avz = bitcast <8 x i32> %i.asc to <32 x i8>
  %i.awa = shufflevector <32 x i8> %i.avz, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awa, <32 x i8> %i.awa) ; 2 uses
  %i.awc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aus, <32 x i8> %i.awa)
  %i.awd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.awb, <32 x i8> %i.awc)
  %i.awe = bitcast <8 x i32> %i.asa to <32 x i8>
  %i.awf = shufflevector <32 x i8> %i.awe, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awf, <32 x i8> %i.awf) ; 2 uses
  %i.awh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auy, <32 x i8> %i.awf)
  %i.awi = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awd, <32 x i8> %i.awg, <32 x i8> %i.awh)
  %i.awj = bitcast <8 x i32> %i.ary to <32 x i8>
  %i.awk = shufflevector <32 x i8> %i.awj, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awk, <32 x i8> %i.awk) ; 2 uses
  %i.awm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ave, <32 x i8> %i.awk)
  %i.awn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awi, <32 x i8> %i.awl, <32 x i8> %i.awm)
  %i.awo = bitcast <8 x i32> %i.arw to <32 x i8>
  %i.awp = shufflevector <32 x i8> %i.awo, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awp, <32 x i8> %i.awp) ; 2 uses
  %i.awr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avk, <32 x i8> %i.awp)
  %i.aws = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awn, <32 x i8> %i.awq, <32 x i8> %i.awr)
  %i.awt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avn, <32 x i8> %i.awa)
  %i.awu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.awb, <32 x i8> %i.awt)
  %i.awv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avq, <32 x i8> %i.awf)
  %i.aww = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awu, <32 x i8> %i.awg, <32 x i8> %i.awv)
  %i.awx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avt, <32 x i8> %i.awk)
  %i.awy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aww, <32 x i8> %i.awl, <32 x i8> %i.awx)
  %i.awz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avw, <32 x i8> %i.awp)
  %i.axa = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awy, <32 x i8> %i.awq, <32 x i8> %i.awz)
  %i.axb = add <8 x i32> %i.avm, %i.ata           ; 2 uses
  %i.axc = add <8 x i32> %i.avy, %i.atm           ; 2 uses
  %i.axd = add <8 x i32> %i.aws, %i.aug           ; 2 uses
  %i.axe = add <8 x i32> %i.axa, %i.auo           ; 2 uses
  %i.axf = shufflevector <8 x i32> %i.axb, <8 x i32> %i.axc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.axg = shufflevector <8 x i32> %i.axb, <8 x i32> %i.axc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.axh = shufflevector <8 x i32> %i.axd, <8 x i32> %i.axe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.axi = shufflevector <8 x i32> %i.axd, <8 x i32> %i.axe, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.axj = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.aru, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !154, !noalias !158
  %i.axk = bitcast <4 x i32> %i.axj to <8 x half>
  %i.axl = shufflevector <8 x half> %i.axk, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.axm = fpext <8 x half> %i.axl to <8 x float> ; 4 uses
  %i.axn = sitofp <8 x i32> %i.axf to <8 x float>
  %i.axo = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.axp = fmul <8 x float> %i.axo, %i.art
  %i.axq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axn, <8 x float> %i.axp, <8 x float> %i.apy) ; 2 uses
  %i.axr = sitofp <8 x i32> %i.axg to <8 x float>
  %i.axs = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.axt = fmul <8 x float> %i.axs, %i.art
  %i.axu = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axr, <8 x float> %i.axt, <8 x float> %i.apx) ; 2 uses
  %i.axv = sitofp <8 x i32> %i.axh to <8 x float>
  %i.axw = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.axx = fmul <8 x float> %i.axw, %i.art
  %i.axy = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axv, <8 x float> %i.axx, <8 x float> %i.apw) ; 2 uses
  %i.axz = sitofp <8 x i32> %i.axi to <8 x float>
  %i.aya = shufflevector <8 x float> %i.axm, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.ayb = fmul <8 x float> %i.aya, %i.art
  %i.ayc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axz, <8 x float> %i.ayb, <8 x float> %i.apv) ; 2 uses
  %i.ayd = add nuw nsw i64 %.010011089.us.us.i, 1 ; 2 uses
  %exitcond1187.not.i = icmp eq i64 %i.ayd, %i.f
  br i1 %exitcond1187.not.i, label %..preheader_crit_edge.us.us.i, label %bb.i, !llvm.loop !148

..preheader_crit_edge.us.us.i:                    ; preds = %bb.i
  %.idx.us.us.i = shl i64 %.010031099.us.us.i, 5
  %invariant.gep.us1101.us.i = getelementptr i8, ptr %1, i64 %.idx.us.us.i ; 4 uses
  %gep.us1102.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.apm
  store <8 x float> %i.axq, ptr %gep.us1102.us.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1102.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.apo
  store <8 x float> %i.axu, ptr %gep.us1102.us.1.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1102.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.apq
  store <8 x float> %i.axy, ptr %gep.us1102.us.2.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1102.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1101.us.i, i64 %i.aps
  store <8 x float> %i.ayc, ptr %gep.us1102.us.3.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %i.aye = add nsw i64 %.010031099.us.us.i, 1     ; 2 uses
  %exitcond1192.not.i = icmp eq i64 %i.aye, %i.aof
  br i1 %exitcond1192.not.i, label %._crit_edge.split.us.us.i, label %.preheader1012.us.us.i, !llvm.loop !149

._crit_edge.split.us.us.i:                        ; preds = %..preheader_crit_edge.us.us.i
  %i.ayf = add nsw i64 %.41103.us.i, 1            ; 2 uses
  %exitcond1193.not.i = icmp eq i64 %i.ayf, %i.nq
  br i1 %exitcond1193.not.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1100.us.i, !llvm.loop !150

.lr.ph1100.i:                                     ; preds = %.lr.ph1100.i, %.lr.ph1100.i.preheader.new
  %indvar81 = phi i64 [ 0, %.lr.ph1100.i.preheader.new ], [ %indvar.next82.3, %.lr.ph1100.i ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph1100.i.preheader.new ], [ %niter172.next.3, %.lr.ph1100.i ]
  %i.ayg = mul i64 %i.aol, %indvar81              ; 4 uses
  %scevgep86 = getelementptr i8, ptr %i.aoz, i64 %i.ayg
  %scevgep85 = getelementptr i8, ptr %i.apb, i64 %i.ayg
  %scevgep84 = getelementptr i8, ptr %i.apd, i64 %i.ayg
  %scevgep83 = getelementptr i8, ptr %i.apf, i64 %i.ayg
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next82 = or disjoint i64 %indvar81, 1
  %i.ayh = mul i64 %i.aol, %indvar.next82         ; 4 uses
  %scevgep86.1 = getelementptr i8, ptr %i.aoz, i64 %i.ayh
  %scevgep85.1 = getelementptr i8, ptr %i.apb, i64 %i.ayh
  %scevgep84.1 = getelementptr i8, ptr %i.apd, i64 %i.ayh
  %scevgep83.1 = getelementptr i8, ptr %i.apf, i64 %i.ayh
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.1, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next82.1 = or disjoint i64 %indvar81, 2
  %i.ayi = mul i64 %i.aol, %indvar.next82.1       ; 4 uses
  %scevgep86.2 = getelementptr i8, ptr %i.aoz, i64 %i.ayi
  %scevgep85.2 = getelementptr i8, ptr %i.apb, i64 %i.ayi
  %scevgep84.2 = getelementptr i8, ptr %i.apd, i64 %i.ayi
  %scevgep83.2 = getelementptr i8, ptr %i.apf, i64 %i.ayi
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.2, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next82.2 = or disjoint i64 %indvar81, 3
  %i.ayj = mul i64 %i.aol, %indvar.next82.2       ; 4 uses
  %scevgep86.3 = getelementptr i8, ptr %i.aoz, i64 %i.ayj
  %scevgep85.3 = getelementptr i8, ptr %i.apb, i64 %i.ayj
  %scevgep84.3 = getelementptr i8, ptr %i.apd, i64 %i.ayj
  %scevgep83.3 = getelementptr i8, ptr %i.apf, i64 %i.ayj
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.3, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next82.3 = add nuw i64 %indvar81, 4     ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, label %.lr.ph1100.i, !llvm.loop !150

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa: ; preds = %.lr.ph1100.i
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1100.i.epil.preheader

.lr.ph1100.i.epil.preheader:                      ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1100.i.preheader
  %indvar81.epil.init = phi i64 [ 0, %.lr.ph1100.i.preheader ], [ %indvar.next82.3, %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph1100.i.epil

.lr.ph1100.i.epil:                                ; preds = %.lr.ph1100.i.epil, %.lr.ph1100.i.epil.preheader
  %indvar81.epil = phi i64 [ %indvar81.epil.init, %.lr.ph1100.i.epil.preheader ], [ %indvar.next82.epil, %.lr.ph1100.i.epil ] ; 2 uses
  %epil.iter168 = phi i64 [ 0, %.lr.ph1100.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph1100.i.epil ]
  %i.ayk = mul i64 %i.aol, %indvar81.epil         ; 4 uses
  %scevgep86.epil = getelementptr i8, ptr %i.aoz, i64 %i.ayk
  %scevgep85.epil = getelementptr i8, ptr %i.apb, i64 %i.ayk
  %scevgep84.epil = getelementptr i8, ptr %i.apd, i64 %i.ayk
  %scevgep83.epil = getelementptr i8, ptr %i.apf, i64 %i.ayk
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.epil, i8 0, i64 %i.aon, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next82.epil = add nuw i64 %indvar81.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1100.i.epil, !llvm.loop !151

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit: ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1100.i.epil, %._crit_edge.split.us.us.i, %.preheader1013.i, %.lr.ph1104.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_mxfp4_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly %1, i64 noundef %2, ptr noalias nofree noundef readonly %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %7 = srem i32 %5, 16
  %i.g = sub nsw i32 %5, %7                       ; 2 uses
  %8 = srem i32 %6, 16                            ; 2 uses
  %i.h = sub nsw i32 %6, %8                       ; 5 uses
  %i.i = sdiv i32 %i.g, 4
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  %i.k = icmp sgt i32 %i.g, 3
  br i1 %i.k, label %.lr.ph1117.i, label %.preheader1103.i

.lr.ph1117.i:                                     ; preds = %bb.a
  %i.l = sdiv i32 %i.h, 8
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp sgt i32 %i.h, 7
  %i.o = icmp sgt i32 %0, 31
  br i1 %i.n, label %.lr.ph1117.split.us.preheader.i, label %.lr.ph1117.split.i.preheader

.lr.ph1117.split.i.preheader:                     ; preds = %.lr.ph1117.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.j, i64 4)
  %i.p = add nsw i64 %smax, -1
  %i.q = and i64 %i.p, -4
  %i.r = add nuw nsw i64 %i.q, 4
  br label %.preheader1103.i

.lr.ph1117.split.us.preheader.i:                  ; preds = %.lr.ph1117.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1307.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1309.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1311.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1313.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1315.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1317.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1319.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1321.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1323.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1325.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1327.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1329.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1331.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1333.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.v = shl i64 %2, 6
  %i.w = shl nuw nsw i64 %i.m, 5
  %i.x = add nsw i64 %i.w, -32
  %i.y = and i64 %i.x, -64
  %i.z = add nsw i64 %i.y, 64                     ; 16 uses
  %i.aa = shl i64 %2, 2
  %i.ab = shl i64 %2, 3
  %i.ac = mul i64 %2, 12
  %i.ad = shl i64 %2, 4
  %i.ae = mul i64 %2, 20
  %i.af = mul i64 %2, 24
  %i.ag = mul i64 %2, 28
  %i.ah = shl i64 %2, 5
  %i.ai = mul i64 %2, 36
  %i.aj = mul i64 %2, 40
  %i.ak = mul i64 %2, 44
  %i.al = mul i64 %2, 48
  %i.am = mul i64 %2, 52
  %i.an = mul i64 %2, 56
  %i.ao = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.j, i64 4)
  %i.ap = add nsw i64 %smax55, -1
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = getelementptr i8, ptr %1, i64 %i.aa
  %i.as = getelementptr i8, ptr %1, i64 %i.ab
  %i.at = getelementptr i8, ptr %1, i64 %i.ac
  %i.au = getelementptr i8, ptr %1, i64 %i.ad
  %i.av = getelementptr i8, ptr %1, i64 %i.ae
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  br label %.lr.ph1117.split.us.i

.lr.ph1117.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1117.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1117.split.us.preheader.i ] ; 3 uses
  %.010701115.us.i = phi i64 [ %i.np, %._crit_edge.us.i ], [ 0, %.lr.ph1117.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !182
  %i.bg = mul nsw i64 %.010701115.us.i, %i.f
  %i.bh = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.a, align 16, !tbaa !21, !noalias !182
  %i.bi = getelementptr inbounds [136 x i8], ptr %i.bh, i64 %i.f ; 2 uses
  store ptr %i.bi, ptr %i.s, align 8, !tbaa !21, !noalias !182
  %i.bj = getelementptr inbounds [136 x i8], ptr %i.bi, i64 %i.f ; 2 uses
  store ptr %i.bj, ptr %i.t, align 16, !tbaa !21, !noalias !182
  %i.bk = getelementptr inbounds [136 x i8], ptr %i.bj, i64 %i.f
  store ptr %i.bk, ptr %i.u, align 8, !tbaa !21, !noalias !182
  %i.bl = shl nuw nsw i64 %.010701115.us.i, 2     ; 16 uses
  %i.bm = mul i64 %i.bl, %2
  %i.bn = or disjoint i64 %i.bl, 1
  %i.bo = mul i64 %i.bn, %2
  %i.bp = or disjoint i64 %i.bl, 2
  %i.bq = mul i64 %i.bp, %2
  %i.br = or disjoint i64 %i.bl, 3
  %i.bs = mul i64 %i.br, %2
  %i.bt = or disjoint i64 %i.bl, 4
  %i.bu = mul i64 %i.bt, %2
  %i.bv = or disjoint i64 %i.bl, 5
  %i.bw = mul i64 %i.bv, %2
  %i.bx = or disjoint i64 %i.bl, 6
  %i.by = mul i64 %i.bx, %2
  %i.bz = or disjoint i64 %i.bl, 7
  %i.ca = mul i64 %i.bz, %2
  %i.cb = or disjoint i64 %i.bl, 8
  %i.cc = mul i64 %i.cb, %2
  %i.cd = or disjoint i64 %i.bl, 9
  %i.ce = mul i64 %i.cd, %2
  %i.cf = or disjoint i64 %i.bl, 10
  %i.cg = mul i64 %i.cf, %2
  %i.ch = or disjoint i64 %i.bl, 11
  %i.ci = mul i64 %i.ch, %2
  %i.cj = or disjoint i64 %i.bl, 12
  %i.ck = mul i64 %i.cj, %2
  %i.cl = or disjoint i64 %i.bl, 13
  %i.cm = mul i64 %i.cl, %2
  %i.cn = or disjoint i64 %i.bl, 14
  %i.co = mul i64 %i.cn, %2
  %i.cp = or disjoint i64 %i.bl, 15
  %i.cq = mul i64 %i.cp, %2
  br i1 %i.o, label %.preheader1105.us.i.us, label %.preheader1105.us.i.preheader

.preheader1105.us.i.preheader:                    ; preds = %.lr.ph1117.split.us.i
  %i.cr = mul i64 %i.v, %indvar                   ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cr
  %scevgep40 = getelementptr i8, ptr %i.ar, i64 %i.cr
  %scevgep41 = getelementptr i8, ptr %i.as, i64 %i.cr
  %scevgep42 = getelementptr i8, ptr %i.at, i64 %i.cr
  %scevgep43 = getelementptr i8, ptr %i.au, i64 %i.cr
  %scevgep44 = getelementptr i8, ptr %i.av, i64 %i.cr
  %scevgep45 = getelementptr i8, ptr %i.aw, i64 %i.cr
  %scevgep46 = getelementptr i8, ptr %i.ax, i64 %i.cr
  %scevgep47 = getelementptr i8, ptr %i.ay, i64 %i.cr
  %scevgep48 = getelementptr i8, ptr %i.az, i64 %i.cr
  %scevgep49 = getelementptr i8, ptr %i.ba, i64 %i.cr
  %scevgep50 = getelementptr i8, ptr %i.bb, i64 %i.cr
  %scevgep51 = getelementptr i8, ptr %i.bc, i64 %i.cr
  %scevgep52 = getelementptr i8, ptr %i.bd, i64 %i.cr
  %scevgep53 = getelementptr i8, ptr %i.be, i64 %i.cr
  %scevgep54 = getelementptr i8, ptr %i.bf, i64 %i.cr
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 %i.z, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  br label %._crit_edge.us.i

.preheader1105.us.i.us:                           ; preds = %.lr.ph1117.split.us.i, %.preheader1104.us.loopexit.i.us
  %.010731113.us.i.us = phi i64 [ %i.nn, %.preheader1104.us.loopexit.i.us ], [ 0, %.lr.ph1117.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !182
  %i.cs = mul nuw nsw i64 %.010731113.us.i.us, %i.f
  %i.ct = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.cs
  %i.cu = or disjoint i64 %.010731113.us.i.us, 1
  %i.cv = mul nuw nsw i64 %i.cu, %i.f
  %i.cw = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.cv
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1105.us.i.us, %bb.c
  %.010751111.us.i.us = phi i64 [ %i.nm, %bb.c ], [ 0, %.preheader1105.us.i.us ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [136 x i8], ptr %i.ct, i64 %.010751111.us.i.us ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load <8 x i32>, ptr %i.cy, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load <8 x i32>, ptr %i.da, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.dd = load <8 x i32>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.df = load <8 x i32>, ptr %i.de, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dg = getelementptr inbounds nuw [136 x i8], ptr %i.cw, i64 %.010751111.us.i.us ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load <8 x i32>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dk = load <8 x i32>, ptr %i.dj, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.dm = load <8 x i32>, ptr %i.dl, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.do = load <8 x i32>, ptr %i.dn, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dp = shufflevector <8 x i32> %i.cz, <8 x i32> %i.db, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <16 x i32> %i.dp, <16 x i32> %i.dq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ds = shufflevector <8 x i32> %i.cz, <8 x i32> %i.db, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <8 x i32> %i.di, <8 x i32> %i.dk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <16 x i32> %i.ds, <16 x i32> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.dv = shufflevector <8 x i32> %i.dd, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i32> %i.dm, <8 x i32> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
end_hunk_6
begin_hunk_7_@ggml_gemm_mxfp4_8x8_q8_0:bb.a
  %i.vx = bitcast <8 x i32> %i.sk to <32 x i8>
  %i.vy = shufflevector <32 x i8> %i.vx, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.vz = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vy, i1 false) ; 2 uses
  %i.wa = icmp slt <64 x i8> %i.vy, zeroinitializer ; 2 uses
  %i.wb = shufflevector <64 x i8> %i.ri, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wc = sub <64 x i8> zeroinitializer, %i.wb    ; 2 uses
  %i.wd = select <64 x i1> %i.wa, <64 x i8> %i.wc, <64 x i8> %i.wb
  %i.we = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vw, <64 x i8> %i.vz, <64 x i8> %i.wd)
  %i.wf = bitcast <8 x i32> %i.si to <32 x i8>
  %i.wg = shufflevector <32 x i8> %i.wf, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wh = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wg, i1 false) ; 2 uses
  %i.wi = icmp slt <64 x i8> %i.wg, zeroinitializer ; 2 uses
  %i.wj = shufflevector <64 x i8> %i.ra, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wk = sub <64 x i8> zeroinitializer, %i.wj    ; 2 uses
  %i.wl = select <64 x i1> %i.wi, <64 x i8> %i.wk, <64 x i8> %i.wj
  %i.wm = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.we, <64 x i8> %i.wh, <64 x i8> %i.wl)
  %i.wn = bitcast <8 x i32> %i.sg to <32 x i8>
  %i.wo = shufflevector <32 x i8> %i.wn, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wp = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wo, i1 false) ; 2 uses
  %i.wq = icmp slt <64 x i8> %i.wo, zeroinitializer ; 2 uses
  %i.wr = shufflevector <64 x i8> %i.qu, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ws = sub <64 x i8> zeroinitializer, %i.wr    ; 2 uses
  %i.wt = select <64 x i1> %i.wq, <64 x i8> %i.ws, <64 x i8> %i.wr
  %i.wu = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wm, <64 x i8> %i.wp, <64 x i8> %i.wt)
  %i.wv = shufflevector <64 x i8> %i.rx, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ww = sub <64 x i8> zeroinitializer, %i.wv    ; 2 uses
  %i.wx = select <64 x i1> %i.vs, <64 x i8> %i.ww, <64 x i8> %i.wv
  %i.wy = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.vr, <64 x i8> %i.wx)
  %i.wz = shufflevector <64 x i8> %i.rn, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.xa = sub <64 x i8> zeroinitializer, %i.wz    ; 2 uses
  %i.xb = select <64 x i1> %i.wa, <64 x i8> %i.xa, <64 x i8> %i.wz
  %i.xc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wy, <64 x i8> %i.vz, <64 x i8> %i.xb)
  %i.xd = shufflevector <64 x i8> %i.rd, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.xe = sub <64 x i8> zeroinitializer, %i.xd    ; 2 uses
  %i.xf = select <64 x i1> %i.wi, <64 x i8> %i.xe, <64 x i8> %i.xd
  %i.xg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xc, <64 x i8> %i.wh, <64 x i8> %i.xf)
  %i.xh = shufflevector <64 x i8> %i.qx, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.xi = sub <64 x i8> zeroinitializer, %i.xh    ; 2 uses
  %i.xj = select <64 x i1> %i.wq, <64 x i8> %i.xi, <64 x i8> %i.xh
  %i.xk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xg, <64 x i8> %i.wp, <64 x i8> %i.xj)
  %i.xl = bitcast <8 x i32> %i.sm to <32 x i8>
  %i.xm = shufflevector <32 x i8> %i.xl, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xn = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xm, i1 false) ; 2 uses
  %i.xo = icmp slt <64 x i8> %i.xm, zeroinitializer ; 2 uses
  %i.xp = select <64 x i1> %i.xo, <64 x i8> %i.vu, <64 x i8> %i.vt
  %i.xq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.xn, <64 x i8> %i.xp)
  %i.xr = bitcast <8 x i32> %i.sk to <32 x i8>
  %i.xs = shufflevector <32 x i8> %i.xr, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xt = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xs, i1 false) ; 2 uses
  %i.xu = icmp slt <64 x i8> %i.xs, zeroinitializer ; 2 uses
  %i.xv = select <64 x i1> %i.xu, <64 x i8> %i.wc, <64 x i8> %i.wb
  %i.xw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xq, <64 x i8> %i.xt, <64 x i8> %i.xv)
  %i.xx = bitcast <8 x i32> %i.si to <32 x i8>
  %i.xy = shufflevector <32 x i8> %i.xx, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xz = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xy, i1 false) ; 2 uses
  %i.ya = icmp slt <64 x i8> %i.xy, zeroinitializer ; 2 uses
  %i.yb = select <64 x i1> %i.ya, <64 x i8> %i.wk, <64 x i8> %i.wj
  %i.yc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xw, <64 x i8> %i.xz, <64 x i8> %i.yb)
  %i.yd = bitcast <8 x i32> %i.sg to <32 x i8>
  %i.ye = shufflevector <32 x i8> %i.yd, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.yf = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ye, i1 false) ; 2 uses
  %i.yg = icmp slt <64 x i8> %i.ye, zeroinitializer ; 2 uses
  %i.yh = select <64 x i1> %i.yg, <64 x i8> %i.ws, <64 x i8> %i.wr
  %i.yi = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.yc, <64 x i8> %i.yf, <64 x i8> %i.yh)
  %i.yj = select <64 x i1> %i.xo, <64 x i8> %i.ww, <64 x i8> %i.wv
  %i.yk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.xn, <64 x i8> %i.yj)
  %i.yl = select <64 x i1> %i.xu, <64 x i8> %i.xa, <64 x i8> %i.wz
  %i.ym = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.yk, <64 x i8> %i.xt, <64 x i8> %i.yl)
  %i.yn = select <64 x i1> %i.ya, <64 x i8> %i.xe, <64 x i8> %i.xd
  %i.yo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ym, <64 x i8> %i.xz, <64 x i8> %i.yn)
  %i.yp = select <64 x i1> %i.yg, <64 x i8> %i.xi, <64 x i8> %i.xh
  %i.yq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.yo, <64 x i8> %i.yf, <64 x i8> %i.yp)
  %i.yr = add <16 x i32> %i.wu, %i.ts             ; 2 uses
  %i.ys = add <16 x i32> %i.xk, %i.ui             ; 2 uses
  %i.yt = add <16 x i32> %i.yi, %i.vg             ; 2 uses
  %i.yu = add <16 x i32> %i.yq, %i.vo             ; 2 uses
  %i.yv = shufflevector <16 x i32> %i.yr, <16 x i32> %i.ys, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.yw = shufflevector <16 x i32> %i.yr, <16 x i32> %i.ys, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.yx = shufflevector <16 x i32> %i.yt, <16 x i32> %i.yu, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.yy = shufflevector <16 x i32> %i.yt, <16 x i32> %i.yu, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.yz = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.se, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !181, !noalias !185
  %i.za = bitcast <4 x i32> %i.yz to <8 x half>
  %i.zb = shufflevector <8 x half> %i.za, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.zc = fpext <16 x half> %i.zb to <16 x float> ; 4 uses
  %i.zd = sitofp <16 x i32> %i.yv to <16 x float>
  %i.ze = shufflevector <16 x float> %i.zc, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.zf = fmul <16 x float> %i.sd, %i.ze
  %i.zg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zd, <16 x float> %i.zf, <16 x float> %i.pn) ; 2 uses
  %i.zh = sitofp <16 x i32> %i.yw to <16 x float>
  %i.zi = shufflevector <16 x float> %i.zc, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.zj = fmul <16 x float> %i.sd, %i.zi
  %i.zk = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zh, <16 x float> %i.zj, <16 x float> %i.pm) ; 2 uses
  %i.zl = sitofp <16 x i32> %i.yx to <16 x float>
  %i.zm = shufflevector <16 x float> %i.zc, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.zn = fmul <16 x float> %i.sd, %i.zm
  %i.zo = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zl, <16 x float> %i.zn, <16 x float> %i.pl) ; 2 uses
  %i.zp = sitofp <16 x i32> %i.yy to <16 x float>
  %i.zq = shufflevector <16 x float> %i.zc, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.zr = fmul <16 x float> %i.sd, %i.zq
  %i.zs = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.zp, <16 x float> %i.zr, <16 x float> %i.pk) ; 2 uses
  %i.zt = add nuw nsw i64 %.010801122.us.us.us.i, 1 ; 2 uses
  %exitcond1232.not.i = icmp eq i64 %i.zt, %i.f
  br i1 %exitcond1232.not.i, label %..preheader1101_crit_edge.us.us.us.i, label %bb.d, !llvm.loop !167

..preheader1101_crit_edge.us.us.us.i:             ; preds = %bb.d
  %.idx1094.us.us.us.i = shl nuw nsw i64 %.010781131.us.us.us.i, 5
  %invariant.gep.us1133.us.us.i = getelementptr i8, ptr %1, i64 %.idx1094.us.us.us.i ; 4 uses
  %gep.us1134.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.oy
  store <16 x float> %i.zg, ptr %gep.us1134.us.us.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1134.us.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.pa
  store <16 x float> %i.zk, ptr %gep.us1134.us.us.1.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1134.us.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.pc
  store <16 x float> %i.zo, ptr %gep.us1134.us.us.2.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1134.us.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.pe
  store <16 x float> %i.zs, ptr %gep.us1134.us.us.3.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %i.zu = add nuw nsw i64 %.010781131.us.us.us.i, 2 ; 2 uses
  %i.zv = icmp slt i64 %i.zu, %i.nu
  br i1 %i.zv, label %.preheader1102.us.us.us.i, label %._crit_edge.split.us.us.us.i, !llvm.loop !168

._crit_edge.split.us.us.us.i:                     ; preds = %..preheader1101_crit_edge.us.us.us.i
  %i.zw = add nuw nsw i64 %.11136.us.us.i, 1      ; 2 uses
  %exitcond1237.not.i = icmp eq i64 %i.zw, %i.nr
  br i1 %exitcond1237.not.i, label %._crit_edge1137.i, label %.lr.ph1132.us.us.i, !llvm.loop !169

.lr.ph1132.us.i:                                  ; preds = %.lr.ph1132.us.i, %.lr.ph1132.us.i.preheader.new
  %indvar56 = phi i64 [ 0, %.lr.ph1132.us.i.preheader.new ], [ %indvar.next57.3, %.lr.ph1132.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1132.us.i.preheader.new ], [ %niter.next.3, %.lr.ph1132.us.i ]
  %i.zx = mul i64 %i.nz, %indvar56                ; 4 uses
  %scevgep61 = getelementptr i8, ptr %i.oo, i64 %i.zx
  %scevgep60 = getelementptr i8, ptr %i.op, i64 %i.zx
  %scevgep59 = getelementptr i8, ptr %i.oq, i64 %i.zx
  %scevgep58 = getelementptr i8, ptr %i.or, i64 %i.zx
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57 = or disjoint i64 %indvar56, 1
  %i.zy = mul i64 %i.nz, %indvar.next57           ; 4 uses
  %scevgep61.1 = getelementptr i8, ptr %i.oo, i64 %i.zy
  %scevgep60.1 = getelementptr i8, ptr %i.op, i64 %i.zy
  %scevgep59.1 = getelementptr i8, ptr %i.oq, i64 %i.zy
  %scevgep58.1 = getelementptr i8, ptr %i.or, i64 %i.zy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.1, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.1, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.1, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.1, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.1 = or disjoint i64 %indvar56, 2
  %i.zz = mul i64 %i.nz, %indvar.next57.1         ; 4 uses
  %scevgep61.2 = getelementptr i8, ptr %i.oo, i64 %i.zz
  %scevgep60.2 = getelementptr i8, ptr %i.op, i64 %i.zz
  %scevgep59.2 = getelementptr i8, ptr %i.oq, i64 %i.zz
  %scevgep58.2 = getelementptr i8, ptr %i.or, i64 %i.zz
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.2, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.2, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.2, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.2, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.2 = or disjoint i64 %indvar56, 3
  %i.aaa = mul i64 %i.nz, %indvar.next57.2        ; 4 uses
  %scevgep61.3 = getelementptr i8, ptr %i.oo, i64 %i.aaa
  %scevgep60.3 = getelementptr i8, ptr %i.op, i64 %i.aaa
  %scevgep59.3 = getelementptr i8, ptr %i.oq, i64 %i.aaa
  %scevgep58.3 = getelementptr i8, ptr %i.or, i64 %i.aaa
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.3, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.3, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.3, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.3, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.3 = add nuw i64 %indvar56, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1137.i.loopexit164.unr-lcssa, label %.lr.ph1132.us.i, !llvm.loop !169

._crit_edge1137.i.loopexit164.unr-lcssa:          ; preds = %.lr.ph1132.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1137.i, label %.lr.ph1132.us.i.epil.preheader

.lr.ph1132.us.i.epil.preheader:                   ; preds = %._crit_edge1137.i.loopexit164.unr-lcssa, %.lr.ph1132.us.i.preheader
  %indvar56.epil.init = phi i64 [ 0, %.lr.ph1132.us.i.preheader ], [ %indvar.next57.3, %._crit_edge1137.i.loopexit164.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph1132.us.i.epil

.lr.ph1132.us.i.epil:                             ; preds = %.lr.ph1132.us.i.epil, %.lr.ph1132.us.i.epil.preheader
  %indvar56.epil = phi i64 [ %indvar56.epil.init, %.lr.ph1132.us.i.epil.preheader ], [ %indvar.next57.epil, %.lr.ph1132.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1132.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph1132.us.i.epil ]
  %i.aab = mul i64 %i.nz, %indvar56.epil          ; 4 uses
  %scevgep61.epil = getelementptr i8, ptr %i.oo, i64 %i.aab
  %scevgep60.epil = getelementptr i8, ptr %i.op, i64 %i.aab
  %scevgep59.epil = getelementptr i8, ptr %i.oq, i64 %i.aab
  %scevgep58.epil = getelementptr i8, ptr %i.or, i64 %i.aab
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.epil, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.epil, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.epil, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.epil, i8 0, i64 %i.od, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.epil = add nuw i64 %indvar56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1137.i, label %.lr.ph1132.us.i.epil, !llvm.loop !170

._crit_edge1137.i:                                ; preds = %._crit_edge1137.i.loopexit164.unr-lcssa, %.lr.ph1132.us.i.epil, %._crit_edge.split.us.us.us.i, %.lr.ph.i, %.preheader1103.i
  %.1.lcssa.i = phi i64 [ %.01070.lcssa.i, %.preheader1103.i ], [ %i.nr, %.lr.ph.i ], [ %i.nr, %._crit_edge.split.us.us.us.i ], [ %i.nr, %.lr.ph1132.us.i.epil ], [ %i.nr, %._crit_edge1137.i.loopexit164.unr-lcssa ]
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge1137.i
  %i.aac = sdiv i32 %i.h, 8
  %i.aad = sext i32 %i.aac to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge1137.i
  %.01071.i = phi i64 [ %i.aad, %bb.e ], [ 0, %._crit_edge1137.i ] ; 8 uses
  %.2.i = phi i64 [ 0, %bb.e ], [ %.1.lcssa.i, %._crit_edge1137.i ] ; 8 uses
  %i.aae = icmp slt i64 %.2.i, %i.j
  br i1 %i.aae, label %.lr.ph1165.i, label %.preheader1097.i

.lr.ph1165.i:                                     ; preds = %bb.f
  %i.aaf = sdiv i32 %6, 8
  %i.aag = sext i32 %i.aaf to i64                 ; 3 uses
  %i.aah = icmp slt i64 %.01071.i, %i.aag
  %i.aai = icmp sgt i32 %0, 31
  br i1 %i.aah, label %.lr.ph1165.split.us.preheader.i, label %.lr.ph1165.split.i.preheader

.lr.ph1165.split.i.preheader:                     ; preds = %.lr.ph1165.i
  %i.aaj = xor i64 %.2.i, -1
  %i.aak = add i64 %i.aaj, %i.j
  %i.aal = and i64 %i.aak, -4
  %i.aam = add i64 %.2.i, %i.aal
  %i.aan = add i64 %i.aam, 4
  br label %.preheader1097.i

.lr.ph1165.split.us.preheader.i:                  ; preds = %.lr.ph1165.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1336.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1338.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1340.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1342.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1344.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1346.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1348.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1350.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1352.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1354.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1356.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1358.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1360.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1362.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1364.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.aar = mul i64 %.2.i, %2
  %i.aas = shl i64 %i.aar, 4
  %i.aat = shl nsw i64 %.01071.i, 5               ; 16 uses
  %i.aau = shl i64 %2, 6
  %i.aav = sub nsw i64 %i.aag, %.01071.i
  %i.aaw = shl nsw i64 %i.aav, 5                  ; 16 uses
  %i.aax = shl nsw i64 %.2.i, 2                   ; 15 uses
  %i.aay = or disjoint i64 %i.aax, 1
  %i.aaz = mul i64 %2, %i.aay
  %i.aba = shl i64 %i.aaz, 2
  %i.abb = or disjoint i64 %i.aax, 2
  %i.abc = mul i64 %2, %i.abb
  %i.abd = shl i64 %i.abc, 2
  %i.abe = or disjoint i64 %i.aax, 3
  %i.abf = mul i64 %2, %i.abe
  %i.abg = shl i64 %i.abf, 2
  %i.abh = add i64 %i.aax, 4
  %i.abi = mul i64 %2, %i.abh
  %i.abj = shl i64 %i.abi, 2
  %i.abk = add i64 %i.aax, 5
  %i.abl = mul i64 %2, %i.abk
  %i.abm = shl i64 %i.abl, 2
  %i.abn = add i64 %i.aax, 6
  %i.abo = mul i64 %2, %i.abn
  %i.abp = shl i64 %i.abo, 2
  %i.abq = add i64 %i.aax, 7
  %i.abr = mul i64 %2, %i.abq
  %i.abs = shl i64 %i.abr, 2
  %i.abt = add i64 %i.aax, 8
  %i.abu = mul i64 %2, %i.abt
  %i.abv = shl i64 %i.abu, 2
  %i.abw = add i64 %i.aax, 9
  %i.abx = mul i64 %2, %i.abw
  %i.aby = shl i64 %i.abx, 2
  %i.abz = add i64 %i.aax, 10
  %i.aca = mul i64 %2, %i.abz
  %i.acb = shl i64 %i.aca, 2
  %i.acc = add i64 %i.aax, 11
  %i.acd = mul i64 %2, %i.acc
  %i.ace = shl i64 %i.acd, 2
  %i.acf = add i64 %i.aax, 12
  %i.acg = mul i64 %2, %i.acf
  %i.ach = shl i64 %i.acg, 2
  %i.aci = add i64 %i.aax, 13
  %i.acj = mul i64 %2, %i.aci
  %i.ack = shl i64 %i.acj, 2
  %i.acl = add i64 %i.aax, 14
  %i.acm = mul i64 %2, %i.acl
  %i.acn = shl i64 %i.acm, 2
  %i.aco = add i64 %i.aax, 15
  %i.acp = mul i64 %2, %i.aco
  %i.acq = shl i64 %i.acp, 2
  %i.acr = xor i64 %.2.i, -1
  %i.acs = add i64 %i.acr, %i.j
  %i.act = lshr i64 %i.acs, 2
  %i.acu = getelementptr i8, ptr %1, i64 %i.aas
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.aat
  %i.acw = getelementptr i8, ptr %1, i64 %i.aba
  %i.acx = getelementptr i8, ptr %i.acw, i64 %i.aat
  %i.acy = getelementptr i8, ptr %1, i64 %i.abd
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.aat
  %i.ada = getelementptr i8, ptr %1, i64 %i.abg
  %i.adb = getelementptr i8, ptr %i.ada, i64 %i.aat
  %i.adc = getelementptr i8, ptr %1, i64 %i.abj
  %i.add = getelementptr i8, ptr %i.adc, i64 %i.aat
  %i.ade = getelementptr i8, ptr %1, i64 %i.abm
  %i.adf = getelementptr i8, ptr %i.ade, i64 %i.aat
  %i.adg = getelementptr i8, ptr %1, i64 %i.abp
  %i.adh = getelementptr i8, ptr %i.adg, i64 %i.aat
  %i.adi = getelementptr i8, ptr %1, i64 %i.abs
  %i.adj = getelementptr i8, ptr %i.adi, i64 %i.aat
  %i.adk = getelementptr i8, ptr %1, i64 %i.abv
  %i.adl = getelementptr i8, ptr %i.adk, i64 %i.aat
  %i.adm = getelementptr i8, ptr %1, i64 %i.aby
  %i.adn = getelementptr i8, ptr %i.adm, i64 %i.aat
  %i.ado = getelementptr i8, ptr %1, i64 %i.acb
  %i.adp = getelementptr i8, ptr %i.ado, i64 %i.aat
  %i.adq = getelementptr i8, ptr %1, i64 %i.ace
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.aat
  %i.ads = getelementptr i8, ptr %1, i64 %i.ach
  %i.adt = getelementptr i8, ptr %i.ads, i64 %i.aat
  %i.adu = getelementptr i8, ptr %1, i64 %i.ack
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.aat
  %i.adw = getelementptr i8, ptr %1, i64 %i.acn
  %i.adx = getelementptr i8, ptr %i.adw, i64 %i.aat
  %i.ady = getelementptr i8, ptr %1, i64 %i.acq
  %i.adz = getelementptr i8, ptr %i.ady, i64 %i.aat
  br label %.lr.ph1165.split.us.i

.lr.ph1165.split.us.i:                            ; preds = %._crit_edge.us1169.i, %.lr.ph1165.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1169.i ], [ 0, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  %.31163.us.i = phi i64 [ %i.aog, %._crit_edge.us1169.i ], [ %.2.i, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !182
  %i.aea = mul nsw i64 %.31163.us.i, %i.f
  %i.aeb = getelementptr inbounds [136 x i8], ptr %4, i64 %i.aea ; 2 uses
  store ptr %i.aeb, ptr %i.c, align 16, !tbaa !21, !noalias !182
  %i.aec = getelementptr inbounds [136 x i8], ptr %i.aeb, i64 %i.f ; 2 uses
  store ptr %i.aec, ptr %i.aao, align 8, !tbaa !21, !noalias !182
  %i.aed = getelementptr inbounds [136 x i8], ptr %i.aec, i64 %i.f ; 2 uses
  store ptr %i.aed, ptr %i.aap, align 16, !tbaa !21, !noalias !182
  %i.aee = getelementptr inbounds [136 x i8], ptr %i.aed, i64 %i.f
  store ptr %i.aee, ptr %i.aaq, align 8, !tbaa !21, !noalias !182
  %i.aef = shl nsw i64 %.31163.us.i, 2            ; 16 uses
  %i.aeg = mul i64 %i.aef, %2
  %i.aeh = or disjoint i64 %i.aef, 1
  %i.aei = mul i64 %i.aeh, %2
  %i.aej = or disjoint i64 %i.aef, 2
  %i.aek = mul i64 %i.aej, %2
  %i.ael = or disjoint i64 %i.aef, 3
  %i.aem = mul i64 %i.ael, %2
  %i.aen = add nsw i64 %i.aef, 4
  %i.aeo = mul i64 %i.aen, %2
  %i.aep = add nsw i64 %i.aef, 5
  %i.aeq = mul i64 %i.aep, %2
  %i.aer = add nsw i64 %i.aef, 6
  %i.aes = mul i64 %i.aer, %2
  %i.aet = add nsw i64 %i.aef, 7
  %i.aeu = mul i64 %i.aet, %2
  %i.aev = add nsw i64 %i.aef, 8
  %i.aew = mul i64 %i.aev, %2
  %i.aex = add nsw i64 %i.aef, 9
  %i.aey = mul i64 %i.aex, %2
  %i.aez = add nsw i64 %i.aef, 10
  %i.afa = mul i64 %i.aez, %2
  %i.afb = add nsw i64 %i.aef, 11
  %i.afc = mul i64 %i.afb, %2
  %i.afd = add nsw i64 %i.aef, 12
  %i.afe = mul i64 %i.afd, %2
  %i.aff = add nsw i64 %i.aef, 13
  %i.afg = mul i64 %i.aff, %2
  %i.afh = add nsw i64 %i.aef, 14
  %i.afi = mul i64 %i.afh, %2
  %i.afj = add nsw i64 %i.aef, 15
  %i.afk = mul i64 %i.afj, %2
  br i1 %i.aai, label %.preheader1099.us.i.us, label %.preheader1099.us.i.preheader

.preheader1099.us.i.preheader:                    ; preds = %.lr.ph1165.split.us.i
  %i.afl = mul i64 %i.aau, %indvar62              ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.acv, i64 %i.afl
  %scevgep65 = getelementptr i8, ptr %i.acx, i64 %i.afl
  %scevgep66 = getelementptr i8, ptr %i.acz, i64 %i.afl
  %scevgep67 = getelementptr i8, ptr %i.adb, i64 %i.afl
  %scevgep68 = getelementptr i8, ptr %i.add, i64 %i.afl
  %scevgep69 = getelementptr i8, ptr %i.adf, i64 %i.afl
  %scevgep70 = getelementptr i8, ptr %i.adh, i64 %i.afl
  %scevgep71 = getelementptr i8, ptr %i.adj, i64 %i.afl
  %scevgep72 = getelementptr i8, ptr %i.adl, i64 %i.afl
  %scevgep73 = getelementptr i8, ptr %i.adn, i64 %i.afl
  %scevgep74 = getelementptr i8, ptr %i.adp, i64 %i.afl
  %scevgep75 = getelementptr i8, ptr %i.adr, i64 %i.afl
  %scevgep76 = getelementptr i8, ptr %i.adt, i64 %i.afl
  %scevgep77 = getelementptr i8, ptr %i.adv, i64 %i.afl
  %scevgep78 = getelementptr i8, ptr %i.adx, i64 %i.afl
end_hunk_7
begin_hunk_8_@ggml_gemm_mxfp4_8x8_q8_0:bb.a
  %i.ava = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aux, <32 x i8> %i.auz)
  %i.avb = bitcast <8 x i32> %i.asg to <32 x i8>
  %i.avc = shufflevector <32 x i8> %i.avb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avc, <32 x i8> %i.avc) ; 2 uses
  %i.ave = shufflevector <32 x i8> %i.arg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ave, <32 x i8> %i.avc)
  %i.avg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ava, <32 x i8> %i.avd, <32 x i8> %i.avf)
  %i.avh = bitcast <8 x i32> %i.ase to <32 x i8>
  %i.avi = shufflevector <32 x i8> %i.avh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avi, <32 x i8> %i.avi) ; 2 uses
  %i.avk = shufflevector <32 x i8> %i.aqy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avk, <32 x i8> %i.avi)
  %i.avm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avg, <32 x i8> %i.avj, <32 x i8> %i.avl)
  %i.avn = bitcast <8 x i32> %i.asc to <32 x i8>
  %i.avo = shufflevector <32 x i8> %i.avn, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.avp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avo, <32 x i8> %i.avo) ; 2 uses
  %i.avq = shufflevector <32 x i8> %i.aqs, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avq, <32 x i8> %i.avo)
  %i.avs = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avm, <32 x i8> %i.avp, <32 x i8> %i.avr)
  %i.avt = shufflevector <32 x i8> %i.arv, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avt, <32 x i8> %i.auw)
  %i.avv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aux, <32 x i8> %i.avu)
  %i.avw = shufflevector <32 x i8> %i.arl, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.avx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avw, <32 x i8> %i.avc)
  %i.avy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avv, <32 x i8> %i.avd, <32 x i8> %i.avx)
  %i.avz = shufflevector <32 x i8> %i.arb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.awa = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avz, <32 x i8> %i.avi)
  %i.awb = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.avy, <32 x i8> %i.avj, <32 x i8> %i.awa)
  %i.awc = shufflevector <32 x i8> %i.aqv, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.awd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awc, <32 x i8> %i.avo)
  %i.awe = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awb, <32 x i8> %i.avp, <32 x i8> %i.awd)
  %i.awf = bitcast <8 x i32> %i.asi to <32 x i8>
  %i.awg = shufflevector <32 x i8> %i.awf, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awg, <32 x i8> %i.awg) ; 2 uses
  %i.awi = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.auy, <32 x i8> %i.awg)
  %i.awj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.awh, <32 x i8> %i.awi)
  %i.awk = bitcast <8 x i32> %i.asg to <32 x i8>
  %i.awl = shufflevector <32 x i8> %i.awk, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awl, <32 x i8> %i.awl) ; 2 uses
  %i.awn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ave, <32 x i8> %i.awl)
  %i.awo = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awj, <32 x i8> %i.awm, <32 x i8> %i.awn)
  %i.awp = bitcast <8 x i32> %i.ase to <32 x i8>
  %i.awq = shufflevector <32 x i8> %i.awp, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.awr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awq, <32 x i8> %i.awq) ; 2 uses
  %i.aws = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avk, <32 x i8> %i.awq)
  %i.awt = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awo, <32 x i8> %i.awr, <32 x i8> %i.aws)
  %i.awu = bitcast <8 x i32> %i.asc to <32 x i8>
  %i.awv = shufflevector <32 x i8> %i.awu, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aww = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awv, <32 x i8> %i.awv) ; 2 uses
  %i.awx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avq, <32 x i8> %i.awv)
  %i.awy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.awt, <32 x i8> %i.aww, <32 x i8> %i.awx)
  %i.awz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avt, <32 x i8> %i.awg)
  %i.axa = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.awh, <32 x i8> %i.awz)
  %i.axb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avw, <32 x i8> %i.awl)
  %i.axc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.axa, <32 x i8> %i.awm, <32 x i8> %i.axb)
  %i.axd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.avz, <32 x i8> %i.awq)
  %i.axe = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.axc, <32 x i8> %i.awr, <32 x i8> %i.axd)
  %i.axf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.awc, <32 x i8> %i.awv)
  %i.axg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.axe, <32 x i8> %i.aww, <32 x i8> %i.axf)
  %i.axh = add <8 x i32> %i.avs, %i.atg           ; 2 uses
  %i.axi = add <8 x i32> %i.awe, %i.ats           ; 2 uses
  %i.axj = add <8 x i32> %i.awy, %i.aum           ; 2 uses
  %i.axk = add <8 x i32> %i.axg, %i.auu           ; 2 uses
  %i.axl = shufflevector <8 x i32> %i.axh, <8 x i32> %i.axi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.axm = shufflevector <8 x i32> %i.axh, <8 x i32> %i.axi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.axn = shufflevector <8 x i32> %i.axj, <8 x i32> %i.axk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.axo = shufflevector <8 x i32> %i.axj, <8 x i32> %i.axk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.axp = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.asa, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !181, !noalias !185
  %i.axq = bitcast <4 x i32> %i.axp to <8 x half>
  %i.axr = shufflevector <8 x half> %i.axq, <8 x half> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.axs = fpext <8 x half> %i.axr to <8 x float> ; 4 uses
  %i.axt = sitofp <8 x i32> %i.axl to <8 x float>
  %i.axu = shufflevector <8 x float> %i.axs, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.axv = fmul <8 x float> %i.arz, %i.axu
  %i.axw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axt, <8 x float> %i.axv, <8 x float> %i.aqc) ; 2 uses
  %i.axx = sitofp <8 x i32> %i.axm to <8 x float>
  %i.axy = shufflevector <8 x float> %i.axs, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5>
  %i.axz = fmul <8 x float> %i.arz, %i.axy
  %i.aya = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.axx, <8 x float> %i.axz, <8 x float> %i.aqb) ; 2 uses
  %i.ayb = sitofp <8 x i32> %i.axn to <8 x float>
  %i.ayc = shufflevector <8 x float> %i.axs, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %i.ayd = fmul <8 x float> %i.arz, %i.ayc
  %i.aye = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ayb, <8 x float> %i.ayd, <8 x float> %i.aqa) ; 2 uses
  %i.ayf = sitofp <8 x i32> %i.axo to <8 x float>
  %i.ayg = shufflevector <8 x float> %i.axs, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7>
  %i.ayh = fmul <8 x float> %i.arz, %i.ayg
  %i.ayi = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ayf, <8 x float> %i.ayh, <8 x float> %i.apz) ; 2 uses
  %i.ayj = add nuw nsw i64 %.010851173.us.us.i, 1 ; 2 uses
  %exitcond1271.not.i = icmp eq i64 %i.ayj, %i.f
  br i1 %exitcond1271.not.i, label %..preheader_crit_edge.us.us.i, label %bb.i, !llvm.loop !175

..preheader_crit_edge.us.us.i:                    ; preds = %bb.i
  %.idx.us.us.i = shl i64 %.010871183.us.us.i, 5
  %invariant.gep.us1185.us.i = getelementptr i8, ptr %1, i64 %.idx.us.us.i ; 4 uses
  %gep.us1186.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1185.us.i, i64 %i.apq
  store <8 x float> %i.axw, ptr %gep.us1186.us.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1186.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1185.us.i, i64 %i.aps
  store <8 x float> %i.aya, ptr %gep.us1186.us.1.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1186.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1185.us.i, i64 %i.apu
  store <8 x float> %i.aye, ptr %gep.us1186.us.2.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1186.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1185.us.i, i64 %i.apw
  store <8 x float> %i.ayi, ptr %gep.us1186.us.3.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %i.ayk = add nsw i64 %.010871183.us.us.i, 1     ; 2 uses
  %exitcond1276.not.i = icmp eq i64 %i.ayk, %i.aoj
  br i1 %exitcond1276.not.i, label %._crit_edge.split.us.us.i, label %.preheader1096.us.us.i, !llvm.loop !176

._crit_edge.split.us.us.i:                        ; preds = %..preheader_crit_edge.us.us.i
  %i.ayl = add nsw i64 %.41187.us.i, 1            ; 2 uses
  %exitcond1277.not.i = icmp eq i64 %i.ayl, %i.nr
  br i1 %exitcond1277.not.i, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1184.us.i, !llvm.loop !177

.lr.ph1184.i:                                     ; preds = %.lr.ph1184.i, %.lr.ph1184.i.preheader.new
  %indvar81 = phi i64 [ 0, %.lr.ph1184.i.preheader.new ], [ %indvar.next82.3, %.lr.ph1184.i ] ; 5 uses
  %niter172 = phi i64 [ 0, %.lr.ph1184.i.preheader.new ], [ %niter172.next.3, %.lr.ph1184.i ]
  %i.aym = mul i64 %i.aop, %indvar81              ; 4 uses
  %scevgep86 = getelementptr i8, ptr %i.apd, i64 %i.aym
  %scevgep85 = getelementptr i8, ptr %i.apf, i64 %i.aym
  %scevgep84 = getelementptr i8, ptr %i.aph, i64 %i.aym
  %scevgep83 = getelementptr i8, ptr %i.apj, i64 %i.aym
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next82 = or disjoint i64 %indvar81, 1
  %i.ayn = mul i64 %i.aop, %indvar.next82         ; 4 uses
  %scevgep86.1 = getelementptr i8, ptr %i.apd, i64 %i.ayn
  %scevgep85.1 = getelementptr i8, ptr %i.apf, i64 %i.ayn
  %scevgep84.1 = getelementptr i8, ptr %i.aph, i64 %i.ayn
  %scevgep83.1 = getelementptr i8, ptr %i.apj, i64 %i.ayn
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.1, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.1, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.1, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.1, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next82.1 = or disjoint i64 %indvar81, 2
  %i.ayo = mul i64 %i.aop, %indvar.next82.1       ; 4 uses
  %scevgep86.2 = getelementptr i8, ptr %i.apd, i64 %i.ayo
  %scevgep85.2 = getelementptr i8, ptr %i.apf, i64 %i.ayo
  %scevgep84.2 = getelementptr i8, ptr %i.aph, i64 %i.ayo
  %scevgep83.2 = getelementptr i8, ptr %i.apj, i64 %i.ayo
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.2, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.2, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.2, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.2, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next82.2 = or disjoint i64 %indvar81, 3
  %i.ayp = mul i64 %i.aop, %indvar.next82.2       ; 4 uses
  %scevgep86.3 = getelementptr i8, ptr %i.apd, i64 %i.ayp
  %scevgep85.3 = getelementptr i8, ptr %i.apf, i64 %i.ayp
  %scevgep84.3 = getelementptr i8, ptr %i.aph, i64 %i.ayp
  %scevgep83.3 = getelementptr i8, ptr %i.apj, i64 %i.ayp
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.3, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.3, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.3, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.3, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next82.3 = add nuw i64 %indvar81, 4     ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, label %.lr.ph1184.i, !llvm.loop !177

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa: ; preds = %.lr.ph1184.i
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1184.i.epil.preheader

.lr.ph1184.i.epil.preheader:                      ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1184.i.preheader
  %indvar81.epil.init = phi i64 [ 0, %.lr.ph1184.i.preheader ], [ %indvar.next82.3, %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph1184.i.epil

.lr.ph1184.i.epil:                                ; preds = %.lr.ph1184.i.epil, %.lr.ph1184.i.epil.preheader
  %indvar81.epil = phi i64 [ %indvar81.epil.init, %.lr.ph1184.i.epil.preheader ], [ %indvar.next82.epil, %.lr.ph1184.i.epil ] ; 2 uses
  %epil.iter168 = phi i64 [ 0, %.lr.ph1184.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph1184.i.epil ]
  %i.ayq = mul i64 %i.aop, %indvar81.epil         ; 4 uses
  %scevgep86.epil = getelementptr i8, ptr %i.apd, i64 %i.ayq
  %scevgep85.epil = getelementptr i8, ptr %i.apf, i64 %i.ayq
  %scevgep84.epil = getelementptr i8, ptr %i.aph, i64 %i.ayq
  %scevgep83.epil = getelementptr i8, ptr %i.apj, i64 %i.ayq
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.epil, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.epil, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.epil, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.epil, i8 0, i64 %i.aor, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next82.epil = add nuw i64 %indvar81.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1184.i.epil, !llvm.loop !178

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit: ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1184.i.epil, %._crit_edge.split.us.us.i, %.preheader1097.i, %.lr.ph1188.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ggml_gemm_q2_K_8x8_q8_K(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 23 uses
  %i.c = alloca [16 x <16 x float>], align 64     ; 23 uses
  %i.d = alloca [4 x ptr], align 16               ; 7 uses
  %i.e = alloca [16 x <8 x float>], align 32      ; 23 uses
  %i.f = alloca [16 x <8 x float>], align 32      ; 23 uses
  %i.g = sdiv i32 %0, 256
  %i.h = sext i32 %i.g to i64                     ; 20 uses
  %7 = srem i32 %5, 16
  %i.i = sub nsw i32 %5, %7                       ; 2 uses
  %8 = srem i32 %6, 16                            ; 2 uses
  %i.j = sub nsw i32 %6, %8                       ; 5 uses
  %i.k = sdiv i32 %i.i, 4
  %i.l = sext i32 %i.k to i64                     ; 5 uses
  %i.m = icmp sgt i32 %i.i, 3
  br i1 %i.m, label %.lr.ph4065, label %.preheader4049

.lr.ph4065:                                       ; preds = %bb.a
  %i.n = sdiv i32 %i.j, 8
  %i.o = sext i32 %i.n to i64
  %i.p = icmp sgt i32 %i.j, 7
  %i.q = icmp sgt i32 %0, 255
  br i1 %i.p, label %.lr.ph4065.split.us.preheader, label %.lr.ph4065.split

.lr.ph4065.split.us.preheader:                    ; preds = %.lr.ph4065
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert4388 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.phi.trans.insert4390 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert4392 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.phi.trans.insert4394 = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert4396 = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.phi.trans.insert4398 = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert4400 = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %.phi.trans.insert4402 = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert4404 = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %.phi.trans.insert4406 = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert4408 = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %.phi.trans.insert4410 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert4412 = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %.phi.trans.insert4414 = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert4416 = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %.phi.trans.insert4418 = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert4420 = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %.phi.trans.insert4422 = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert4424 = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 832
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  br label %.lr.ph4065.split.us

.lr.ph4065.split.us:                              ; preds = %.lr.ph4065.split.us.preheader, %._crit_edge.us
  %.040084063.us = phi i64 [ %i.apl, %._crit_edge.us ], [ 0, %.lr.ph4065.split.us.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ae = mul nsw i64 %.040084063.us, %i.h
  %i.af = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.a, align 16, !tbaa !23
  %i.ag = getelementptr inbounds [1168 x i8], ptr %i.af, i64 %i.h ; 2 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !23
  %i.ah = getelementptr inbounds [1168 x i8], ptr %i.ag, i64 %i.h ; 2 uses
  store ptr %i.ah, ptr %i.s, align 16, !tbaa !23
  %i.ai = getelementptr inbounds [1168 x i8], ptr %i.ah, i64 %i.h
  store ptr %i.ai, ptr %i.t, align 8, !tbaa !23
  %i.aj = shl nuw nsw i64 %.040084063.us, 2       ; 16 uses
  %i.ak = mul i64 %i.aj, %2
  %i.al = or disjoint i64 %i.aj, 1
  %i.am = mul i64 %i.al, %2
  %i.an = or disjoint i64 %i.aj, 2
  %i.ao = mul i64 %i.an, %2
  %i.ap = or disjoint i64 %i.aj, 3
  %i.aq = mul i64 %i.ap, %2
  %i.ar = or disjoint i64 %i.aj, 4
  %i.as = mul i64 %i.ar, %2
  %i.at = or disjoint i64 %i.aj, 5
  %i.au = mul i64 %i.at, %2
  %i.av = or disjoint i64 %i.aj, 6
  %i.aw = mul i64 %i.av, %2
  %i.ax = or disjoint i64 %i.aj, 7
  %i.ay = mul i64 %i.ax, %2
  %i.az = or disjoint i64 %i.aj, 8
  %i.ba = mul i64 %i.az, %2
  %i.bb = or disjoint i64 %i.aj, 9
  %i.bc = mul i64 %i.bb, %2
  %i.bd = or disjoint i64 %i.aj, 10
  %i.be = mul i64 %i.bd, %2
  %i.bf = or disjoint i64 %i.aj, 11
  %i.bg = mul i64 %i.bf, %2
  %i.bh = or disjoint i64 %i.aj, 12
  %i.bi = mul i64 %i.bh, %2
  %i.bj = or disjoint i64 %i.aj, 13
  %i.bk = mul i64 %i.bj, %2
  %i.bl = or disjoint i64 %i.aj, 14
  %i.bm = mul i64 %i.bl, %2
  %i.bn = or disjoint i64 %i.aj, 15
  %i.bo = mul i64 %i.bn, %2
  br label %.preheader4051.us

.preheader4051.us:                                ; preds = %.lr.ph4065.split.us, %.preheader4050.us
  %.040114061.us = phi i64 [ 0, %.lr.ph4065.split.us ], [ %i.apj, %.preheader4050.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false), !tbaa !9
  %i.bp = mul nsw i64 %.040114061.us, %i.h
  %i.bq = getelementptr inbounds [672 x i8], ptr %3, i64 %i.bp
  %i.br = or disjoint i64 %.040114061.us, 1
  %i.bs = mul nsw i64 %i.br, %i.h
  %i.bt = getelementptr inbounds [672 x i8], ptr %3, i64 %i.bs
  br i1 %i.q, label %.lr.ph.us, label %.preheader4050.us

.lr.ph.us:                                        ; preds = %.preheader4051.us, %bb.e
  %.040144059.us = phi i64 [ %i.anx, %bb.e ], [ 0, %.preheader4051.us ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [672 x i8], ptr %i.bt, i64 %.040144059.us ; 14 uses
  %i.bv = load <2 x i64>, ptr %i.bu, align 1, !tbaa !9
  %i.bw = getelementptr inbounds nuw [672 x i8], ptr %i.bq, i64 %.040144059.us ; 14 uses
  %i.bx = load <2 x i64>, ptr %i.bw, align 1, !tbaa !9
  %i.by = shufflevector <2 x i64> %i.bx, <2 x i64> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = bitcast <4 x i64> %i.by to <16 x half>
  %i.ca = fpext <16 x half> %i.bz to <16 x float> ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cc = load <2 x i64>, ptr %i.cb, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ce = load <2 x i64>, ptr %i.cd, align 1, !tbaa !9
  %i.cf = shufflevector <2 x i64> %i.ce, <2 x i64> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cg = bitcast <4 x i64> %i.cf to <16 x half>
  %i.ch = fpext <16 x half> %i.cg to <16 x float> ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 256
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 288
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 320
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 352
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 384
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 192
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 288
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 352
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 384
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.us
  %i.dg = phi i1 [ false, %bb.d ], [ true, %.lr.ph.us ]
  %indvars.iv4233 = phi i64 [ 1, %bb.d ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.dh = shl nuw nsw i64 %indvars.iv4233, 8      ; 16 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.dh
  %i.dj = load <8 x i32>, ptr %i.di, align 1, !tbaa !9 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.dh
  %i.dl = load <8 x i32>, ptr %i.dk, align 1, !tbaa !9 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dh
  %i.dn = load <8 x i32>, ptr %i.dm, align 1, !tbaa !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dh
  %i.dp = load <8 x i32>, ptr %i.do, align 1, !tbaa !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dh
  %i.dr = load <8 x i32>, ptr %i.dq, align 1, !tbaa !9 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dh
  %i.dt = load <8 x i32>, ptr %i.ds, align 1, !tbaa !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dh
  %i.dv = load <8 x i32>, ptr %i.du, align 1, !tbaa !9 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dh
  %i.dx = load <8 x i32>, ptr %i.dw, align 1, !tbaa !9 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dh
  %i.dz = load <8 x i32>, ptr %i.dy, align 1, !tbaa !9 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dh
  %i.eb = load <8 x i32>, ptr %i.ea, align 1, !tbaa !9 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dh
  %i.ed = load <8 x i32>, ptr %i.ec, align 1, !tbaa !9 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dh
  %i.ef = load <8 x i32>, ptr %i.ee, align 1, !tbaa !9 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dh
  %i.eh = load <8 x i32>, ptr %i.eg, align 1, !tbaa !9 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.dh
  %i.ej = load <8 x i32>, ptr %i.ei, align 1, !tbaa !9 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dh
  %i.el = load <8 x i32>, ptr %i.ek, align 1, !tbaa !9 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dh
  %i.en = load <8 x i32>, ptr %i.em, align 1, !tbaa !9 ; 2 uses
  %i.eo = shufflevector <8 x i32> %i.dj, <8 x i32> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <8 x i32> %i.dz, <8 x i32> %i.eb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = shufflevector <16 x i32> %i.eo, <16 x i32> %i.ep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.er = shufflevector <8 x i32> %i.dj, <8 x i32> %i.dl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <8 x i32> %i.dz, <8 x i32> %i.eb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <16 x i32> %i.er, <16 x i32> %i.es, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.eu = shufflevector <8 x i32> %i.dn, <8 x i32> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <16 x i32> %i.eu, <16 x i32> %i.ev, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.ex = shufflevector <8 x i32> %i.dn, <8 x i32> %i.dp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ef, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ez = shufflevector <16 x i32> %i.ex, <16 x i32> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.fa = shufflevector <8 x i32> %i.dr, <8 x i32> %i.dt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fb = shufflevector <8 x i32> %i.eh, <8 x i32> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <16 x i32> %i.fa, <16 x i32> %i.fb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
end_hunk_8
begin_hunk_9_@ggml_gemm_q2_K_8x8_q8_K:bb.a
  %i.bzn = shufflevector <8 x i16> %i.bzm, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bzo = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bzn, <32 x i16> %i.ayi)
  %i.bzp = bitcast <2 x i64> %i.bdj to <8 x i16>
  %i.bzq = shufflevector <8 x i16> %i.bzp, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.bzr = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bzq, <32 x i16> %i.ayi)
  %i.bzs = bitcast <2 x i64> %i.bdl to <8 x i16>
  %i.bzt = shufflevector <8 x i16> %i.bzs, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bzu = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bzt, <32 x i16> %i.ayi)
  %i.bzv = bitcast <2 x i64> %i.bdl to <8 x i16>
  %i.bzw = shufflevector <8 x i16> %i.bzv, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.bzx = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bzw, <32 x i16> %i.ayi)
  %i.bzy = bitcast <2 x i64> %i.bdj to <8 x i16>
  %i.bzz = shufflevector <8 x i16> %i.bzy, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.caa = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.bzz, <32 x i16> %i.ayn)
  %i.cab = bitcast <2 x i64> %i.bdj to <8 x i16>
  %i.cac = shufflevector <8 x i16> %i.cab, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.cad = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cac, <32 x i16> %i.ayn)
  %i.cae = bitcast <2 x i64> %i.bdl to <8 x i16>
  %i.caf = shufflevector <8 x i16> %i.cae, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.cag = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.caf, <32 x i16> %i.ayn)
  %i.cah = bitcast <2 x i64> %i.bdl to <8 x i16>
  %i.cai = shufflevector <8 x i16> %i.cah, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.caj = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cai, <32 x i16> %i.ayn)
  %i.cak = bitcast <2 x i64> %i.bdn to <8 x i16>
  %i.cal = shufflevector <8 x i16> %i.cak, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cam = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cal, <32 x i16> %i.ays)
  %i.can = bitcast <2 x i64> %i.bdn to <8 x i16>
  %i.cao = shufflevector <8 x i16> %i.can, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.cap = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cao, <32 x i16> %i.ays)
  %i.caq = bitcast <2 x i64> %i.bdp to <8 x i16>
  %i.car = shufflevector <8 x i16> %i.caq, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.cas = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.car, <32 x i16> %i.ays)
  %i.cat = bitcast <2 x i64> %i.bdp to <8 x i16>
  %i.cau = shufflevector <8 x i16> %i.cat, <8 x i16> poison, <32 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.cav = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cau, <32 x i16> %i.ays)
  %i.caw = bitcast <2 x i64> %i.bdn to <8 x i16>
  %i.cax = shufflevector <8 x i16> %i.caw, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.cay = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cax, <32 x i16> %i.ayx)
  %i.caz = bitcast <2 x i64> %i.bdn to <8 x i16>
  %i.cba = shufflevector <8 x i16> %i.caz, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.cbb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cba, <32 x i16> %i.ayx)
  %i.cbc = bitcast <2 x i64> %i.bdp to <8 x i16>
  %i.cbd = shufflevector <8 x i16> %i.cbc, <8 x i16> poison, <32 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.cbe = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cbd, <32 x i16> %i.ayx)
  %i.cbf = bitcast <2 x i64> %i.bdp to <8 x i16>
  %i.cbg = shufflevector <8 x i16> %i.cbf, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.cbh = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.cbg, <32 x i16> %i.ayx)
  %i.cbi = add <16 x i32> %i.caa, %i.bzo
  %i.cbj = add <16 x i32> %i.cbi, %i.cam
  %i.cbk = add <16 x i32> %i.cbj, %i.cay
  %i.cbl = add <16 x i32> %i.cad, %i.bzr
  %i.cbm = add <16 x i32> %i.cbl, %i.cap
  %i.cbn = add <16 x i32> %i.cbm, %i.cbb
  %i.cbo = add <16 x i32> %i.cag, %i.bzu
  %i.cbp = add <16 x i32> %i.cbo, %i.cas
  %i.cbq = add <16 x i32> %i.cbp, %i.cbe
  %i.cbr = add <16 x i32> %i.caj, %i.bzx
  %i.cbs = add <16 x i32> %i.cbr, %i.cav
  %i.cbt = add <16 x i32> %i.cbs, %i.cbh
  %i.cbu = sitofp <16 x i32> %i.cbk to <16 x float>
  %i.cbv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbu, <16 x float> %i.atd, <16 x float> %i.atm) ; 3 uses
  %i.cbw = sitofp <16 x i32> %i.cbn to <16 x float>
  %i.cbx = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cbw, <16 x float> %i.ate, <16 x float> %i.atn) ; 3 uses
  %i.cby = sitofp <16 x i32> %i.cbq to <16 x float>
  %i.cbz = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cby, <16 x float> %i.atf, <16 x float> %i.ato) ; 3 uses
  %i.cca = sitofp <16 x i32> %i.cbt to <16 x float>
  %i.ccb = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.cca, <16 x float> %i.atg, <16 x float> %i.atp) ; 3 uses
  br i1 %i.ath, label %bb.g, label %bb.h, !llvm.loop !191

bb.h:                                             ; preds = %bb.g
  %i.ccc = add nuw nsw i64 %.040214091.us.us.us, 1 ; 2 uses
  %exitcond4261.not = icmp eq i64 %i.ccc, %i.h
  br i1 %exitcond4261.not, label %..preheader4047_crit_edge.us.us.us, label %bb.f, !llvm.loop !192

..preheader4047_crit_edge.us.us.us:               ; preds = %bb.h
  %.idx4040.us.us.us = shl nuw nsw i64 %.040184107.us.us.us, 5
  %invariant.gep.us4109.us.us = getelementptr i8, ptr %1, i64 %.idx4040.us.us.us ; 4 uses
  %gep.us4110.us.us = getelementptr [4 x i8], ptr %invariant.gep.us4109.us.us, i64 %i.aqb
  %i.ccd = fsub <16 x float> %i.bzf, %i.cbv
  store <16 x float> %i.ccd, ptr %gep.us4110.us.us, align 1, !tbaa !9
  %gep.us4110.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us4109.us.us, i64 %i.aqd
  %i.cce = fsub <16 x float> %i.bzh, %i.cbx
  store <16 x float> %i.cce, ptr %gep.us4110.us.us.1, align 1, !tbaa !9
  %gep.us4110.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us4109.us.us, i64 %i.aqf
  %i.ccf = fsub <16 x float> %i.bzj, %i.cbz
  store <16 x float> %i.ccf, ptr %gep.us4110.us.us.2, align 1, !tbaa !9
  %gep.us4110.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us4109.us.us, i64 %i.aqh
  %i.ccg = fsub <16 x float> %i.bzl, %i.ccb
  store <16 x float> %i.ccg, ptr %gep.us4110.us.us.3, align 1, !tbaa !9
  %i.cch = add nuw nsw i64 %.040184107.us.us.us, 2 ; 2 uses
  %i.cci = icmp slt i64 %i.cch, %i.apr
  br i1 %i.cci, label %.preheader4048.us.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !193

._crit_edge.split.us.us.us:                       ; preds = %..preheader4047_crit_edge.us.us.us
  %i.ccj = add nuw nsw i64 %.14112.us.us, 1       ; 2 uses
  %exitcond4266.not = icmp eq i64 %i.ccj, %i.apo
  br i1 %exitcond4266.not, label %._crit_edge4113, label %.lr.ph4108.us.us, !llvm.loop !194

.lr.ph4108.us:                                    ; preds = %.lr.ph4108.us.preheader, %._crit_edge.split.us4127
  %.14112.us = phi i64 [ %i.cda, %._crit_edge.split.us4127 ], [ %.04008.lcssa, %.lr.ph4108.us.preheader ] ; 2 uses
  %i.cck = shl nuw nsw i64 %.14112.us, 2          ; 4 uses
  %i.ccl = mul i64 %i.cck, %2                     ; 5 uses
  %i.ccm = or disjoint i64 %i.cck, 1
  %i.ccn = mul i64 %i.ccm, %2                     ; 5 uses
  %i.cco = or disjoint i64 %i.cck, 2
  %i.ccp = mul i64 %i.cco, %2                     ; 5 uses
  %i.ccq = or disjoint i64 %i.cck, 3
  %i.ccr = mul i64 %i.ccq, %2                     ; 5 uses
  br i1 %i.apx, label %.preheader4048.us4120.epil.preheader, label %.preheader4048.us4120

.preheader4048.us4120:                            ; preds = %.lr.ph4108.us, %.preheader4048.us4120
  %.040184107.us4117 = phi i64 [ %i.ccy, %.preheader4048.us4120 ], [ 0, %.lr.ph4108.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader4048.us4120 ], [ 0, %.lr.ph4108.us ]
  %.idx4040.us4123 = shl nuw nsw i64 %.040184107.us4117, 5
  %invariant.gep.us4124 = getelementptr i8, ptr %1, i64 %.idx4040.us4123 ; 4 uses
  %gep.us4126 = getelementptr [4 x i8], ptr %invariant.gep.us4124, i64 %i.ccl
  store <16 x float> zeroinitializer, ptr %gep.us4126, align 1, !tbaa !9
  %gep.us4126.1 = getelementptr [4 x i8], ptr %invariant.gep.us4124, i64 %i.ccn
  store <16 x float> zeroinitializer, ptr %gep.us4126.1, align 1, !tbaa !9
  %gep.us4126.2 = getelementptr [4 x i8], ptr %invariant.gep.us4124, i64 %i.ccp
  store <16 x float> zeroinitializer, ptr %gep.us4126.2, align 1, !tbaa !9
  %gep.us4126.3 = getelementptr [4 x i8], ptr %invariant.gep.us4124, i64 %i.ccr
  store <16 x float> zeroinitializer, ptr %gep.us4126.3, align 1, !tbaa !9
  %i.ccs = shl i64 %.040184107.us4117, 5
  %i.cct = getelementptr i8, ptr %1, i64 %i.ccs
  %invariant.gep.us4124.1 = getelementptr i8, ptr %i.cct, i64 64 ; 4 uses
  %gep.us4126.14685 = getelementptr [4 x i8], ptr %invariant.gep.us4124.1, i64 %i.ccl
  store <16 x float> zeroinitializer, ptr %gep.us4126.14685, align 1, !tbaa !9
  %gep.us4126.1.1 = getelementptr [4 x i8], ptr %invariant.gep.us4124.1, i64 %i.ccn
  store <16 x float> zeroinitializer, ptr %gep.us4126.1.1, align 1, !tbaa !9
  %gep.us4126.2.1 = getelementptr [4 x i8], ptr %invariant.gep.us4124.1, i64 %i.ccp
  store <16 x float> zeroinitializer, ptr %gep.us4126.2.1, align 1, !tbaa !9
  %gep.us4126.3.1 = getelementptr [4 x i8], ptr %invariant.gep.us4124.1, i64 %i.ccr
  store <16 x float> zeroinitializer, ptr %gep.us4126.3.1, align 1, !tbaa !9
  %i.ccu = shl i64 %.040184107.us4117, 5
  %i.ccv = getelementptr i8, ptr %1, i64 %i.ccu
  %invariant.gep.us4124.2 = getelementptr i8, ptr %i.ccv, i64 128 ; 4 uses
  %gep.us4126.24686 = getelementptr [4 x i8], ptr %invariant.gep.us4124.2, i64 %i.ccl
  store <16 x float> zeroinitializer, ptr %gep.us4126.24686, align 1, !tbaa !9
  %gep.us4126.1.2 = getelementptr [4 x i8], ptr %invariant.gep.us4124.2, i64 %i.ccn
  store <16 x float> zeroinitializer, ptr %gep.us4126.1.2, align 1, !tbaa !9
  %gep.us4126.2.2 = getelementptr [4 x i8], ptr %invariant.gep.us4124.2, i64 %i.ccp
  store <16 x float> zeroinitializer, ptr %gep.us4126.2.2, align 1, !tbaa !9
  %gep.us4126.3.2 = getelementptr [4 x i8], ptr %invariant.gep.us4124.2, i64 %i.ccr
  store <16 x float> zeroinitializer, ptr %gep.us4126.3.2, align 1, !tbaa !9
  %i.ccw = shl i64 %.040184107.us4117, 5
  %i.ccx = getelementptr i8, ptr %1, i64 %i.ccw
  %invariant.gep.us4124.3 = getelementptr i8, ptr %i.ccx, i64 192 ; 4 uses
  %gep.us4126.34687 = getelementptr [4 x i8], ptr %invariant.gep.us4124.3, i64 %i.ccl
  store <16 x float> zeroinitializer, ptr %gep.us4126.34687, align 1, !tbaa !9
  %gep.us4126.1.3 = getelementptr [4 x i8], ptr %invariant.gep.us4124.3, i64 %i.ccn
  store <16 x float> zeroinitializer, ptr %gep.us4126.1.3, align 1, !tbaa !9
  %gep.us4126.2.3 = getelementptr [4 x i8], ptr %invariant.gep.us4124.3, i64 %i.ccp
  store <16 x float> zeroinitializer, ptr %gep.us4126.2.3, align 1, !tbaa !9
  %gep.us4126.3.3 = getelementptr [4 x i8], ptr %invariant.gep.us4124.3, i64 %i.ccr
  store <16 x float> zeroinitializer, ptr %gep.us4126.3.3, align 1, !tbaa !9
  %i.ccy = add nuw nsw i64 %.040184107.us4117, 8  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.split.us4127.unr-lcssa, label %.preheader4048.us4120, !llvm.loop !193

._crit_edge.split.us4127.unr-lcssa:               ; preds = %.preheader4048.us4120
  br i1 %lcmp.mod.not, label %._crit_edge.split.us4127, label %.preheader4048.us4120.epil.preheader

.preheader4048.us4120.epil.preheader:             ; preds = %._crit_edge.split.us4127.unr-lcssa, %.lr.ph4108.us
  %.040184107.us4117.epil.init = phi i64 [ 0, %.lr.ph4108.us ], [ %i.ccy, %._crit_edge.split.us4127.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod4684)
  br label %.preheader4048.us4120.epil

.preheader4048.us4120.epil:                       ; preds = %.preheader4048.us4120.epil, %.preheader4048.us4120.epil.preheader
  %.040184107.us4117.epil = phi i64 [ %.040184107.us4117.epil.init, %.preheader4048.us4120.epil.preheader ], [ %i.ccz, %.preheader4048.us4120.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader4048.us4120.epil.preheader ], [ %epil.iter.next, %.preheader4048.us4120.epil ]
  %.idx4040.us4123.epil = shl nuw nsw i64 %.040184107.us4117.epil, 5
  %invariant.gep.us4124.epil = getelementptr i8, ptr %1, i64 %.idx4040.us4123.epil ; 4 uses
  %gep.us4126.epil = getelementptr [4 x i8], ptr %invariant.gep.us4124.epil, i64 %i.ccl
  store <16 x float> zeroinitializer, ptr %gep.us4126.epil, align 1, !tbaa !9
  %gep.us4126.1.epil = getelementptr [4 x i8], ptr %invariant.gep.us4124.epil, i64 %i.ccn
  store <16 x float> zeroinitializer, ptr %gep.us4126.1.epil, align 1, !tbaa !9
  %gep.us4126.2.epil = getelementptr [4 x i8], ptr %invariant.gep.us4124.epil, i64 %i.ccp
  store <16 x float> zeroinitializer, ptr %gep.us4126.2.epil, align 1, !tbaa !9
  %gep.us4126.3.epil = getelementptr [4 x i8], ptr %invariant.gep.us4124.epil, i64 %i.ccr
  store <16 x float> zeroinitializer, ptr %gep.us4126.3.epil, align 1, !tbaa !9
  %i.ccz = add nuw nsw i64 %.040184107.us4117.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.us4127, label %.preheader4048.us4120.epil, !llvm.loop !195

._crit_edge.split.us4127:                         ; preds = %.preheader4048.us4120.epil, %._crit_edge.split.us4127.unr-lcssa
  %i.cda = add nuw nsw i64 %.14112.us, 1          ; 2 uses
  %exitcond4251.not = icmp eq i64 %i.cda, %i.apo
  br i1 %exitcond4251.not, label %._crit_edge4113, label %.lr.ph4108.us, !llvm.loop !194

.lr.ph4065.split:                                 ; preds = %.lr.ph4065, %.lr.ph4065.split
  %.040084063 = phi i64 [ %i.cdb, %.lr.ph4065.split ], [ 0, %.lr.ph4065 ]
  %i.cdb = add nuw nsw i64 %.040084063, 4         ; 3 uses
  %i.cdc = icmp slt i64 %i.cdb, %i.l
  br i1 %i.cdc, label %.lr.ph4065.split, label %.preheader4049, !llvm.loop !190

._crit_edge4113:                                  ; preds = %._crit_edge.split.us4127, %._crit_edge.split.us.us.us, %.lr.ph, %.preheader4049
  %.1.lcssa = phi i64 [ %.04008.lcssa, %.preheader4049 ], [ %i.apo, %.lr.ph ], [ %i.apo, %._crit_edge.split.us.us.us ], [ %i.apo, %._crit_edge.split.us4127 ]
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge4113
  %i.cdd = sdiv i32 %i.j, 8
  %i.cde = sext i32 %i.cdd to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge4113
  %.04009 = phi i64 [ %i.cde, %bb.i ], [ 0, %._crit_edge4113 ] ; 8 uses
  %.2 = phi i64 [ 0, %bb.i ], [ %.1.lcssa, %._crit_edge4113 ] ; 4 uses
  %i.cdf = icmp slt i64 %.2, %i.l
  br i1 %i.cdf, label %.lr.ph4145, label %.preheader4043

.lr.ph4145:                                       ; preds = %bb.j
  %i.cdg = sdiv i32 %6, 8
  %i.cdh = sext i32 %i.cdg to i64                 ; 2 uses
  %i.cdi = icmp slt i64 %.04009, %i.cdh
  %i.cdj = icmp sgt i32 %0, 255
  br i1 %i.cdi, label %.lr.ph4145.split.us.preheader, label %.lr.ph4145.split

.lr.ph4145.split.us.preheader:                    ; preds = %.lr.ph4145
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.phi.trans.insert4428 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.phi.trans.insert4430 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.phi.trans.insert4432 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.phi.trans.insert4434 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.phi.trans.insert4436 = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.phi.trans.insert4438 = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.phi.trans.insert4440 = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.phi.trans.insert4442 = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %.phi.trans.insert4444 = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %.phi.trans.insert4446 = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %.phi.trans.insert4448 = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.phi.trans.insert4450 = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.phi.trans.insert4452 = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %.phi.trans.insert4454 = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %.phi.trans.insert4456 = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %.phi.trans.insert4458 = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %.phi.trans.insert4460 = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %.phi.trans.insert4462 = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %.phi.trans.insert4464 = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %.phi.trans.insert4466 = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.cds = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  br label %.lr.ph4145.split.us

.lr.ph4145.split.us:                              ; preds = %.lr.ph4145.split.us.preheader, %._crit_edge.us4149
  %.34143.us = phi i64 [ %i.dpi, %._crit_edge.us4149 ], [ %.2, %.lr.ph4145.split.us.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.cdx = mul nsw i64 %.34143.us, %i.h
  %i.cdy = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.cdx ; 2 uses
  store ptr %i.cdy, ptr %i.d, align 16, !tbaa !23
  %i.cdz = getelementptr inbounds [1168 x i8], ptr %i.cdy, i64 %i.h ; 2 uses
  store ptr %i.cdz, ptr %i.cdk, align 8, !tbaa !23
  %i.cea = getelementptr inbounds [1168 x i8], ptr %i.cdz, i64 %i.h ; 2 uses
  store ptr %i.cea, ptr %i.cdl, align 16, !tbaa !23
  %i.ceb = getelementptr inbounds [1168 x i8], ptr %i.cea, i64 %i.h
  store ptr %i.ceb, ptr %i.cdm, align 8, !tbaa !23
  %i.cec = shl nsw i64 %.34143.us, 2              ; 16 uses
  %i.ced = mul i64 %i.cec, %2
  %i.cee = or disjoint i64 %i.cec, 1
  %i.cef = mul i64 %i.cee, %2
  %i.ceg = or disjoint i64 %i.cec, 2
  %i.ceh = mul i64 %i.ceg, %2
  %i.cei = or disjoint i64 %i.cec, 3
  %i.cej = mul i64 %i.cei, %2
  %i.cek = add nsw i64 %i.cec, 4
  %i.cel = mul i64 %i.cek, %2
  %i.cem = add nsw i64 %i.cec, 5
  %i.cen = mul i64 %i.cem, %2
  %i.ceo = add nsw i64 %i.cec, 6
  %i.cep = mul i64 %i.ceo, %2
  %i.ceq = add nsw i64 %i.cec, 7
  %i.cer = mul i64 %i.ceq, %2
  %i.ces = add nsw i64 %i.cec, 8
  %i.cet = mul i64 %i.ces, %2
  %i.ceu = add nsw i64 %i.cec, 9
  %i.cev = mul i64 %i.ceu, %2
  %i.cew = add nsw i64 %i.cec, 10
  %i.cex = mul i64 %i.cew, %2
  %i.cey = add nsw i64 %i.cec, 11
  %i.cez = mul i64 %i.cey, %2
  %i.cfa = add nsw i64 %i.cec, 12
  %i.cfb = mul i64 %i.cfa, %2
  %i.cfc = add nsw i64 %i.cec, 13
  %i.cfd = mul i64 %i.cfc, %2
  %i.cfe = add nsw i64 %i.cec, 14
  %i.cff = mul i64 %i.cfe, %2
  %i.cfg = add nsw i64 %i.cec, 15
  %i.cfh = mul i64 %i.cfg, %2
  br label %.preheader4045.us

.preheader4045.us:                                ; preds = %.lr.ph4145.split.us, %.preheader4044.us
  %.040254141.us = phi i64 [ %.04009, %.lr.ph4145.split.us ], [ %i.dph, %.preheader4044.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.e, i8 0, i64 512, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.f, i8 0, i64 512, i1 false), !tbaa !9
  %i.cfi = mul nsw i64 %.040254141.us, %i.h
  %i.cfj = getelementptr inbounds [672 x i8], ptr %3, i64 %i.cfi
  br i1 %i.cdj, label %.lr.ph4139.us, label %.preheader4044.us

.lr.ph4139.us:                                    ; preds = %.preheader4045.us, %bb.n
  %.040284138.us = phi i64 [ %i.dnv, %bb.n ], [ 0, %.preheader4045.us ] ; 3 uses
  %i.cfk = getelementptr inbounds nuw [672 x i8], ptr %i.cfj, i64 %.040284138.us ; 14 uses
  %i.cfl = load <8 x half>, ptr %i.cfk, align 1, !tbaa !9
  %i.cfm = fpext <8 x half> %i.cfl to <8 x float> ; 4 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cfk, i64 16
  %i.cfo = load <8 x half>, ptr %i.cfn, align 1, !tbaa !9
  %i.cfp = fpext <8 x half> %i.cfo to <8 x float> ; 4 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfk, i64 160
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfk, i64 192
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfk, i64 224
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cfk, i64 256
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cfk, i64 288
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfk, i64 320
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfk, i64 352
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfk, i64 384
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfk, i64 32
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfk, i64 48
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfk, i64 64
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cfk, i64 80
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph4139.us
  %i.cgc = phi i1 [ false, %bb.m ], [ true, %.lr.ph4139.us ]
  %indvars.iv4285 = phi i64 [ 1, %bb.m ], [ 0, %.lr.ph4139.us ] ; 4 uses
  %i.cgd = shl nuw nsw i64 %indvars.iv4285, 8     ; 8 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cfq, i64 %i.cgd
  %i.cgf = load <8 x i32>, ptr %i.cge, align 1, !tbaa !9 ; 2 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cfr, i64 %i.cgd
  %i.cgh = load <8 x i32>, ptr %i.cgg, align 1, !tbaa !9 ; 2 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cfs, i64 %i.cgd
  %i.cgj = load <8 x i32>, ptr %i.cgi, align 1, !tbaa !9 ; 2 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cft, i64 %i.cgd
  %i.cgl = load <8 x i32>, ptr %i.cgk, align 1, !tbaa !9 ; 2 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.cfu, i64 %i.cgd
  %i.cgn = load <8 x i32>, ptr %i.cgm, align 1, !tbaa !9 ; 2 uses
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cfv, i64 %i.cgd
  %i.cgp = load <8 x i32>, ptr %i.cgo, align 1, !tbaa !9 ; 2 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cfw, i64 %i.cgd
  %i.cgr = load <8 x i32>, ptr %i.cgq, align 1, !tbaa !9 ; 2 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cfx, i64 %i.cgd
  %i.cgt = load <8 x i32>, ptr %i.cgs, align 1, !tbaa !9 ; 2 uses
  %i.cgu = shufflevector <8 x i32> %i.cgf, <8 x i32> %i.cgh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.cgv = shufflevector <8 x i32> %i.cgf, <8 x i32> %i.cgh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cgw = shufflevector <8 x i32> %i.cgj, <8 x i32> %i.cgl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.cgx = shufflevector <8 x i32> %i.cgj, <8 x i32> %i.cgl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cgy = shufflevector <8 x i32> %i.cgn, <8 x i32> %i.cgp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.cgz = shufflevector <8 x i32> %i.cgn, <8 x i32> %i.cgp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cha = shufflevector <8 x i32> %i.cgr, <8 x i32> %i.cgt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.chb = shufflevector <8 x i32> %i.cgr, <8 x i32> %i.cgt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.chc = bitcast <8 x i32> %i.cgu to <16 x i16> ; 3 uses
  %i.chd = lshr <16 x i16> %i.chc, splat (i16 2)
  %i.che = bitcast <8 x i32> %i.cgv to <16 x i16> ; 3 uses
  %i.chf = lshr <16 x i16> %i.che, splat (i16 2)
  %i.chg = bitcast <8 x i32> %i.cgw to <16 x i16> ; 3 uses
  %i.chh = lshr <16 x i16> %i.chg, splat (i16 2)
  %i.chi = bitcast <8 x i32> %i.cgx to <16 x i16> ; 3 uses
  %i.chj = lshr <16 x i16> %i.chi, splat (i16 2)
  %i.chk = bitcast <8 x i32> %i.cgy to <16 x i16> ; 3 uses
  %i.chl = lshr <16 x i16> %i.chk, splat (i16 2)
  %i.chm = bitcast <8 x i32> %i.cgz to <16 x i16> ; 3 uses
  %i.chn = lshr <16 x i16> %i.chm, splat (i16 2)
  %i.cho = bitcast <8 x i32> %i.cha to <16 x i16> ; 3 uses
  %i.chp = lshr <16 x i16> %i.cho, splat (i16 2)
  %i.chq = bitcast <8 x i32> %i.chb to <16 x i16> ; 3 uses
  %i.chr = lshr <16 x i16> %i.chq, splat (i16 2)
  %i.chs = lshr <16 x i16> %i.chc, splat (i16 4)
  %i.cht = lshr <16 x i16> %i.che, splat (i16 4)
  %i.chu = lshr <16 x i16> %i.chg, splat (i16 4)
  %i.chv = lshr <16 x i16> %i.chi, splat (i16 4)
  %i.chw = lshr <16 x i16> %i.chk, splat (i16 4)
  %i.chx = lshr <16 x i16> %i.chm, splat (i16 4)
  %i.chy = lshr <16 x i16> %i.cho, splat (i16 4)
  %i.chz = lshr <16 x i16> %i.chq, splat (i16 4)
  %i.cia = lshr <16 x i16> %i.chc, splat (i16 6)
  %i.cib = lshr <16 x i16> %i.che, splat (i16 6)
  %i.cic = lshr <16 x i16> %i.chg, splat (i16 6)
  %i.cid = lshr <16 x i16> %i.chi, splat (i16 6)
  %i.cie = lshr <16 x i16> %i.chk, splat (i16 6)
  %i.cif = lshr <16 x i16> %i.chm, splat (i16 6)
  %i.cig = lshr <16 x i16> %i.cho, splat (i16 6)
  %i.cih = lshr <16 x i16> %i.chq, splat (i16 6)
  %i.cii = and <8 x i32> %i.cgu, splat (i32 50529027) ; 2 uses
  %i.cij = and <8 x i32> %i.cgv, splat (i32 50529027) ; 2 uses
  %i.cik = and <8 x i32> %i.cgw, splat (i32 50529027) ; 2 uses
  %i.cil = and <8 x i32> %i.cgx, splat (i32 50529027) ; 2 uses
  %i.cim = and <8 x i32> %i.cgy, splat (i32 50529027) ; 2 uses
  %i.cin = and <8 x i32> %i.cgz, splat (i32 50529027) ; 2 uses
end_hunk_9
