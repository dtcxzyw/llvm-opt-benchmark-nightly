Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_avx512?download=true
inline.NumInlined: 230
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4ncnn31ConvolutionDepthWise_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4:bb.a
  %i.mw = mul nsw <16 x i32> %i.ms, %i.mo
  %i.mx = mul nsw <16 x i32> %i.mt, %i.mp
  %i.my = mul nsw <16 x i32> %i.mu, %i.mq
  %i.mz = add <16 x i32> %i.mv, %vec.phi          ; 2 uses
  %i.na = add <16 x i32> %i.mw, %vec.phi176       ; 2 uses
  %i.nb = add <16 x i32> %i.mx, %vec.phi177       ; 2 uses
  %i.nc = add <16 x i32> %i.my, %vec.phi178       ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.nd = icmp eq i64 %index.next, %n.vec
  br i1 %i.nd, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i32> %i.na, %i.mz
  %bin.rdx186 = add <16 x i32> %i.nb, %bin.rdx
  %bin.rdx187 = add <16 x i32> %i.nc, %bin.rdx186
  %i.ne = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx187) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !418

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ne, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec188 = and i64 %wide.trip.count, 2147483632 ; 3 uses
  %i.nf = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index189 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi190 = phi <16 x i32> [ %i.nf, %vec.epilog.ph ], [ %i.py, %vec.epilog.vector.body ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index189
  %wide.load191 = load <16 x i32>, ptr %i.ng, align 4, !tbaa !72
  %i.nh = sext <16 x i32> %wide.load191 to <16 x i64> ; 16 uses
  %i.ni = extractelement <16 x i64> %i.nh, i64 0
  %i.nj = getelementptr inbounds i8, ptr %i.ca, i64 %i.ni
  %i.nk = extractelement <16 x i64> %i.nh, i64 1
  %i.nl = getelementptr inbounds i8, ptr %i.ca, i64 %i.nk
  %i.nm = extractelement <16 x i64> %i.nh, i64 2
  %i.nn = getelementptr inbounds i8, ptr %i.ca, i64 %i.nm
  %i.no = extractelement <16 x i64> %i.nh, i64 3
  %i.np = getelementptr inbounds i8, ptr %i.ca, i64 %i.no
  %i.nq = extractelement <16 x i64> %i.nh, i64 4
  %i.nr = getelementptr inbounds i8, ptr %i.ca, i64 %i.nq
  %i.ns = extractelement <16 x i64> %i.nh, i64 5
  %i.nt = getelementptr inbounds i8, ptr %i.ca, i64 %i.ns
  %i.nu = extractelement <16 x i64> %i.nh, i64 6
  %i.nv = getelementptr inbounds i8, ptr %i.ca, i64 %i.nu
  %i.nw = extractelement <16 x i64> %i.nh, i64 7
  %i.nx = getelementptr inbounds i8, ptr %i.ca, i64 %i.nw
  %i.ny = extractelement <16 x i64> %i.nh, i64 8
  %i.nz = getelementptr inbounds i8, ptr %i.ca, i64 %i.ny
  %i.oa = extractelement <16 x i64> %i.nh, i64 9
  %i.ob = getelementptr inbounds i8, ptr %i.ca, i64 %i.oa
  %i.oc = extractelement <16 x i64> %i.nh, i64 10
  %i.od = getelementptr inbounds i8, ptr %i.ca, i64 %i.oc
  %i.oe = extractelement <16 x i64> %i.nh, i64 11
  %i.of = getelementptr inbounds i8, ptr %i.ca, i64 %i.oe
  %i.og = extractelement <16 x i64> %i.nh, i64 12
  %i.oh = getelementptr inbounds i8, ptr %i.ca, i64 %i.og
  %i.oi = extractelement <16 x i64> %i.nh, i64 13
  %i.oj = getelementptr inbounds i8, ptr %i.ca, i64 %i.oi
  %i.ok = extractelement <16 x i64> %i.nh, i64 14
  %i.ol = getelementptr inbounds i8, ptr %i.ca, i64 %i.ok
  %i.om = extractelement <16 x i64> %i.nh, i64 15
  %i.on = getelementptr inbounds i8, ptr %i.ca, i64 %i.om
  %i.oo = load i8, ptr %i.nj, align 1, !tbaa !105
  %i.op = load i8, ptr %i.nl, align 1, !tbaa !105
  %i.oq = load i8, ptr %i.nn, align 1, !tbaa !105
  %i.or = load i8, ptr %i.np, align 1, !tbaa !105
  %i.os = load i8, ptr %i.nr, align 1, !tbaa !105
  %i.ot = load i8, ptr %i.nt, align 1, !tbaa !105
  %i.ou = load i8, ptr %i.nv, align 1, !tbaa !105
  %i.ov = load i8, ptr %i.nx, align 1, !tbaa !105
  %i.ow = load i8, ptr %i.nz, align 1, !tbaa !105
  %i.ox = load i8, ptr %i.ob, align 1, !tbaa !105
  %i.oy = load i8, ptr %i.od, align 1, !tbaa !105
  %i.oz = load i8, ptr %i.of, align 1, !tbaa !105
  %i.pa = load i8, ptr %i.oh, align 1, !tbaa !105
  %i.pb = load i8, ptr %i.oj, align 1, !tbaa !105
  %i.pc = load i8, ptr %i.ol, align 1, !tbaa !105
  %i.pd = load i8, ptr %i.on, align 1, !tbaa !105
  %i.pe = insertelement <16 x i8> poison, i8 %i.oo, i64 0
  %i.pf = insertelement <16 x i8> %i.pe, i8 %i.op, i64 1
  %i.pg = insertelement <16 x i8> %i.pf, i8 %i.oq, i64 2
  %i.ph = insertelement <16 x i8> %i.pg, i8 %i.or, i64 3
  %i.pi = insertelement <16 x i8> %i.ph, i8 %i.os, i64 4
  %i.pj = insertelement <16 x i8> %i.pi, i8 %i.ot, i64 5
  %i.pk = insertelement <16 x i8> %i.pj, i8 %i.ou, i64 6
  %i.pl = insertelement <16 x i8> %i.pk, i8 %i.ov, i64 7
  %i.pm = insertelement <16 x i8> %i.pl, i8 %i.ow, i64 8
  %i.pn = insertelement <16 x i8> %i.pm, i8 %i.ox, i64 9
  %i.po = insertelement <16 x i8> %i.pn, i8 %i.oy, i64 10
  %i.pp = insertelement <16 x i8> %i.po, i8 %i.oz, i64 11
  %i.pq = insertelement <16 x i8> %i.pp, i8 %i.pa, i64 12
  %i.pr = insertelement <16 x i8> %i.pq, i8 %i.pb, i64 13
  %i.ps = insertelement <16 x i8> %i.pr, i8 %i.pc, i64 14
  %i.pt = insertelement <16 x i8> %i.ps, i8 %i.pd, i64 15
  %i.pu = getelementptr inbounds nuw i8, ptr %i.al, i64 %index189
  %wide.load192 = load <16 x i8>, ptr %i.pu, align 1, !tbaa !105
  %i.pv = sext <16 x i8> %i.pt to <16 x i32>
  %i.pw = sext <16 x i8> %wide.load192 to <16 x i32>
  %i.px = mul nsw <16 x i32> %i.pw, %i.pv
  %i.py = add <16 x i32> %i.px, %vec.phi190       ; 2 uses
  %index.next193 = add nuw i64 %index189, 16      ; 2 uses
  %i.pz = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.pz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !419

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.qa = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.py) ; 2 uses
  %cmp.n194 = icmp eq i64 %n.vec188, %wide.trip.count
  br i1 %cmp.n194, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec188, %vec.epilog.middle.block ]
  %.058131.ph = phi i32 [ 0, %iter.check ], [ %i.ne, %vec.epilog.iter.check ], [ %i.qa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.qa, %vec.epilog.middle.block ], [ %i.ne, %middle.block ], [ %i.qq, %vec.epilog.scalar.ph ]
  %i.qb = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph136
  %.058.lcssa = phi float [ 0.000000e+00, %.lr.ph136 ], [ %i.qb, %._crit_edge.loopexit ]
  %i.qc = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv149
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !45 ; 2 uses
  %i.qf = fcmp fast oeq float %i.qe, 0.000000e+00
  br i1 %i.qf, label %bb.d, label %bb.c

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.058131 = phi i32 [ %i.qq, %vec.epilog.scalar.ph ], [ %.058131.ph, %vec.epilog.scalar.ph.preheader ]
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !72
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds i8, ptr %i.ca, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !105
  %i.ql = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !105
  %i.qn = sext i8 %i.qk to i32
  %i.qo = sext i8 %i.qm to i32
  %i.qp = mul nsw i32 %i.qo, %i.qn
  %i.qq = add nsw i32 %i.qp, %.058131             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !420

bb.c:                                             ; preds = %._crit_edge
  %i.qr = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %indvars.iv149
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !45
  %i.qu = fmul fast float %i.qt, %i.qe
  %i.qv = fdiv fast float %.058.lcssa, %i.qu
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.055 = phi float [ %i.qv, %bb.c ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.qw = load i32, ptr %i.w, align 8, !tbaa !82
  %.not65 = icmp eq i32 %i.qw, 0
  br i1 %.not65, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.qx = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv149
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !45
  %i.ra = fadd fast float %i.qz, %.055
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi nsz float [ %i.ra, %bb.e ], [ %.055, %bb.d ] ; 13 uses
  %i.rb = load i32, ptr %i.y, align 8, !tbaa !44
  switch i32 %i.rb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.rc = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.f
  %i.rd = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.re = load float, ptr %i.rd, align 4, !tbaa !45
  %i.rf = fcmp fast ogt float %.0, 0.000000e+00
  %i.rg = select fast i1 %i.rf, float 1.000000e+00, float %i.re
  %i.rh = fmul fast float %i.rg, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.f
  %i.ri = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !45
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !45 ; 2 uses
  %.0127 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.rj) ; 2 uses
  %10 = fcmp fast ogt float %.0127, %i.rl
  br i1 %10, label %11, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

11:                                               ; preds = %bb.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.f
  %.sroa.speculated118 = call nnan ninf nsz float @llvm.minnum.f32(float %.0, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated118, float f0xC2B0C0A5)
  %i.rm = fneg fast float %.sroa.speculated
  %i.rn = call fast float @llvm.exp.f32(float %i.rm)
  %i.ro = fadd fast float %i.rn, 1.000000e+00
  %i.rp = fdiv fast float 1.000000e+00, %i.ro
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.f
  %i.rq = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.rr = fadd fast float %i.rq, 1.000000e+00
  %i.rs = call fast float @llvm.log.f32(float %i.rr)
  %i.rt = call fast float @llvm.tanh.f32(float %i.rs)
  %i.ru = fmul fast float %i.rt, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %bb.f
  %i.rv = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !45 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !45 ; 2 uses
  %i.rz = fneg fast float %i.ry
  %i.sa = fdiv fast float %i.rz, %i.rw            ; 2 uses
  %i.sb = fcmp fast olt float %.0, %i.sa
  br i1 %i.sb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.sc = fdiv fast float 1.000000e+00, %i.rw
  %i.sd = fadd fast float %i.sa, %i.sc
  %i.se = fcmp fast ogt float %.0, %i.sd
  br i1 %i.se, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.sf = fmul fast float %i.rw, %.0
  %i.sg = fadd fast float %i.sf, %i.ry
  %i.sh = fmul fast float %i.sg, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %11, %bb.i, %bb.h, %bb.g, %bb.f, %bb.l
  %.1128 = phi nsz float [ %.0, %bb.f ], [ %i.rc, %bb.g ], [ %i.rh, %bb.h ], [ %i.rl, %11 ], [ %.0127, %bb.i ], [ %i.rp, %bb.j ], [ %i.ru, %bb.k ], [ %i.sh, %bb.n ], [ %.0, %bb.m ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.si = load i8, ptr %9, align 1, !tbaa !103, !range !55, !noundef !56
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.sk = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv149
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !45
  %i.sn = fmul fast float %i.sm, %.1128
  %i.so = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.sn)
  %i.sp = fptosi float %i.so to i32
  %spec.select.i129 = call i32 @llvm.smax.i32(i32 %i.sp, i32 -127)
  %.0.i130 = call i32 @llvm.smin.i32(i32 %spec.select.i129, i32 127)
  %.0.i = trunc nsw i32 %.0.i130 to i8
  store i8 %.0.i, ptr %.163133, align 1, !tbaa !105
  %i.sq = getelementptr inbounds nuw i8, ptr %.163133, i64 1
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %bb.q

bb.p:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  store float %.1128, ptr %.1134, align 4, !tbaa !45
  %i.sr = getelementptr inbounds nuw i8, ptr %.1134, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ss = phi i32 [ %.pre, %bb.o ], [ %i.br, %bb.p ] ; 4 uses
  %.264 = phi ptr [ %i.sq, %bb.o ], [ %.163133, %bb.p ] ; 2 uses
  %.2 = phi ptr [ %.1134, %bb.o ], [ %i.sr, %bb.p ] ; 2 uses
  %i.st = add nuw nsw i32 %.059135, 1             ; 2 uses
  %i.su = icmp slt i32 %i.st, %i.ss
  br i1 %i.su, label %.lr.ph136, label %._crit_edge137.loopexit, !llvm.loop !421

._crit_edge145:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit67.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge145, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #17

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not128 = icmp sgt i32 %i.k, %i.j
  br i1 %.not128, label %._crit_edge130, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = sext i32 %i.k to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.p, 9
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.r = phi i32 [ %i.j, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %i.ij, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.s = mul nuw nsw i64 %indvar, 9
  %i.t = load ptr, ptr %3, align 8, !tbaa !18, !noalias !422
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !422
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !422
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.z = load ptr, ptr %4, align 8, !tbaa !169    ; 2 uses
  %.not82 = icmp eq ptr %i.z, null
  br i1 %.not82, label %_ZN4ncnn3MatD2Ev.exit83, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit83

_ZN4ncnn3MatD2Ev.exit83:                          ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ac = phi fast float [ %i.ab, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 3 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !151
  %.idx = shl i64 %indvars.iv, 3
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.idx  ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !45 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !45 ; 3 uses
  %i.ai = load ptr, ptr %6, align 8, !tbaa !403   ; 2 uses
  %i.aj = mul i64 %indvars.iv, 9
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj  ; 12 uses
  %i.al = load i32, ptr %9, align 4, !tbaa !72    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph127, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph127:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit83
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 7 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.av = load i32, ptr %10, align 4, !tbaa !72
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph127.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph127.split.preheader:                        ; preds = %.lr.ph127
  %i.ax = load ptr, ptr %7, align 8, !tbaa !18, !noalias !425
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !425
  %i.az = mul i64 %i.ay, %indvars.iv
  %i.ba = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !425
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.be = shl nsw i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bh = sext i32 %i.bd to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.ai, i64 %i.q
  %i.bk = getelementptr i8, ptr %i.bj, i64 9
  %scevgep157 = getelementptr i8, ptr %i.bk, i64 %i.s
  %broadcast.splatinsert186 = insertelement <64 x float> poison, float %i.af, i64 0
  %broadcast.splat187 = shufflevector <64 x float> %broadcast.splatinsert186, <64 x float> poison, <64 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <64 x float> poison, float %i.ac, i64 0
  %broadcast.splat189 = shufflevector <64 x float> %broadcast.splatinsert188, <64 x float> poison, <64 x i32> zeroinitializer
  %broadcast.splatinsert190 = insertelement <64 x float> poison, float %i.ah, i64 0
  %broadcast.splat191 = shufflevector <64 x float> %broadcast.splatinsert190, <64 x float> poison, <64 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <8 x float> poison, float %i.af, i64 0
  %broadcast.splat227 = shufflevector <8 x float> %broadcast.splatinsert226, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <8 x float> poison, float %i.ac, i64 0
  %broadcast.splat229 = shufflevector <8 x float> %broadcast.splatinsert228, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert230 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat231 = shufflevector <8 x float> %broadcast.splatinsert230, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph127.split

.lr.ph127.split:                                  ; preds = %.lr.ph127.split.preheader, %._crit_edge
  %i.bl = phi i32 [ %i.id, %._crit_edge ], [ %i.al, %.lr.ph127.split.preheader ]
  %.072126 = phi i32 [ %i.ih, %._crit_edge ], [ 0, %.lr.ph127.split.preheader ]
  %.073125 = phi ptr [ %i.ig, %._crit_edge ], [ %i.bg, %.lr.ph127.split.preheader ] ; 9 uses
  %.074124 = phi ptr [ %i.if, %._crit_edge ], [ %i.bi, %.lr.ph127.split.preheader ] ; 9 uses
  %.076123 = phi ptr [ %i.ie, %._crit_edge ], [ %i.bc, %.lr.ph127.split.preheader ] ; 9 uses
  %.078122 = phi ptr [ %.179.lcssa, %._crit_edge ], [ %i.y, %.lr.ph127.split.preheader ] ; 12 uses
  %i.bm = load i32, ptr %10, align 4, !tbaa !72   ; 9 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.lr.ph127.split
  %i.bo = zext nneg i32 %i.bm to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bm, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.078122, i64 1
  %i.bp = add nsw i32 %i.bm, -1
  %i.bq = zext i32 %i.bp to i64                   ; 4 uses
  %scevgep150 = getelementptr i8, ptr %scevgep, i64 %i.bq ; 4 uses
end_hunk_0
