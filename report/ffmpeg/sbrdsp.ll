Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbrdsp?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@sbr_qmf_deint_bfly_c:vector.memcheck
  %i.ae = fsub nsz <4 x float> %wide.load.5, %reverse.5
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x float> %i.ae, ptr %i.af, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.5 = load <4 x float>, ptr %i.ac, align 4, !tbaa !11, !alias.scope !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ah = shufflevector <4 x float> %wide.load21.5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.5 = fadd nsz <4 x float> %i.ah, %wide.load20.5
  store <4 x float> %reverse24.5, ptr %i.ag, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11, !alias.scope !30
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 144
  %wide.load20.6 = load <4 x float>, ptr %i.aj, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.6 = shufflevector <4 x float> %wide.load20.6, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ak = fsub nsz <4 x float> %wide.load.6, %reverse.6
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x float> %i.ak, ptr %i.al, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.6 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11, !alias.scope !30
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.an = shufflevector <4 x float> %wide.load21.6, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.6 = fadd nsz <4 x float> %i.an, %wide.load20.6
  store <4 x float> %reverse24.6, ptr %i.am, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.ao, align 4, !tbaa !11, !alias.scope !30
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  %wide.load20.7 = load <4 x float>, ptr %i.ap, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.7 = shufflevector <4 x float> %wide.load20.7, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aq = fsub nsz <4 x float> %wide.load.7, %reverse.7
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x float> %i.aq, ptr %i.ar, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.7 = load <4 x float>, ptr %i.ao, align 4, !tbaa !11, !alias.scope !30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.at = shufflevector <4 x float> %wide.load21.7, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.7 = fadd nsz <4 x float> %i.at, %wide.load20.7
  store <4 x float> %reverse24.7, ptr %i.as, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %wide.load.8 = load <4 x float>, ptr %i.au, align 4, !tbaa !11, !alias.scope !30
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112
  %wide.load20.8 = load <4 x float>, ptr %i.av, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.8 = shufflevector <4 x float> %wide.load20.8, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.aw = fsub nsz <4 x float> %wide.load.8, %reverse.8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x float> %i.aw, ptr %i.ax, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.8 = load <4 x float>, ptr %i.au, align 4, !tbaa !11, !alias.scope !30
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.az = shufflevector <4 x float> %wide.load21.8, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.8 = fadd nsz <4 x float> %i.az, %wide.load20.8
  store <4 x float> %reverse24.8, ptr %i.ay, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %wide.load.9 = load <4 x float>, ptr %i.ba, align 4, !tbaa !11, !alias.scope !30
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %wide.load20.9 = load <4 x float>, ptr %i.bb, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.9 = shufflevector <4 x float> %wide.load20.9, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bc = fsub nsz <4 x float> %wide.load.9, %reverse.9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x float> %i.bc, ptr %i.bd, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.9 = load <4 x float>, ptr %i.ba, align 4, !tbaa !11, !alias.scope !30
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bf = shufflevector <4 x float> %wide.load21.9, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.9 = fadd nsz <4 x float> %i.bf, %wide.load20.9
  store <4 x float> %reverse24.9, ptr %i.be, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %wide.load.10 = load <4 x float>, ptr %i.bg, align 4, !tbaa !11, !alias.scope !30
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %wide.load20.10 = load <4 x float>, ptr %i.bh, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.10 = shufflevector <4 x float> %wide.load20.10, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bi = fsub nsz <4 x float> %wide.load.10, %reverse.10
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x float> %i.bi, ptr %i.bj, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.10 = load <4 x float>, ptr %i.bg, align 4, !tbaa !11, !alias.scope !30
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bl = shufflevector <4 x float> %wide.load21.10, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.10 = fadd nsz <4 x float> %i.bl, %wide.load20.10
  store <4 x float> %reverse24.10, ptr %i.bk, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %wide.load.11 = load <4 x float>, ptr %i.bm, align 4, !tbaa !11, !alias.scope !30
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %wide.load20.11 = load <4 x float>, ptr %i.bn, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.11 = shufflevector <4 x float> %wide.load20.11, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bo = fsub nsz <4 x float> %wide.load.11, %reverse.11
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.11 = load <4 x float>, ptr %i.bm, align 4, !tbaa !11, !alias.scope !30
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.br = shufflevector <4 x float> %wide.load21.11, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.11 = fadd nsz <4 x float> %i.br, %wide.load20.11
  store <4 x float> %reverse24.11, ptr %i.bq, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %wide.load.12 = load <4 x float>, ptr %i.bs, align 4, !tbaa !11, !alias.scope !30
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.load20.12 = load <4 x float>, ptr %i.bt, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.12 = shufflevector <4 x float> %wide.load20.12, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bu = fsub nsz <4 x float> %wide.load.12, %reverse.12
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x float> %i.bu, ptr %i.bv, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.12 = load <4 x float>, ptr %i.bs, align 4, !tbaa !11, !alias.scope !30
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bx = shufflevector <4 x float> %wide.load21.12, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.12 = fadd nsz <4 x float> %i.bx, %wide.load20.12
  store <4 x float> %reverse24.12, ptr %i.bw, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %wide.load.13 = load <4 x float>, ptr %i.by, align 4, !tbaa !11, !alias.scope !30
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.load20.13 = load <4 x float>, ptr %i.bz, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.13 = shufflevector <4 x float> %wide.load20.13, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ca = fsub nsz <4 x float> %wide.load.13, %reverse.13
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> %i.ca, ptr %i.cb, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.13 = load <4 x float>, ptr %i.by, align 4, !tbaa !11, !alias.scope !30
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cd = shufflevector <4 x float> %wide.load21.13, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.13 = fadd nsz <4 x float> %i.cd, %wide.load20.13
  store <4 x float> %reverse24.13, ptr %i.cc, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %wide.load.14 = load <4 x float>, ptr %i.ce, align 4, !tbaa !11, !alias.scope !30
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load20.14 = load <4 x float>, ptr %i.cf, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.14 = shufflevector <4 x float> %wide.load20.14, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cg = fsub nsz <4 x float> %wide.load.14, %reverse.14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> %i.cg, ptr %i.ch, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.14 = load <4 x float>, ptr %i.ce, align 4, !tbaa !11, !alias.scope !30
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cj = shufflevector <4 x float> %wide.load21.14, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.14 = fadd nsz <4 x float> %i.cj, %wide.load20.14
  store <4 x float> %reverse24.14, ptr %i.ci, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.15 = load <4 x float>, ptr %i.ck, align 4, !tbaa !11, !alias.scope !30 ; 2 uses
  %wide.load20.15 = load <4 x float>, ptr %2, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.15 = shufflevector <4 x float> %wide.load20.15, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cl = fsub nsz <4 x float> %wide.load.15, %reverse.15
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> %i.cl, ptr %i.cm, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.co = shufflevector <4 x float> %wide.load.15, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.15 = fadd nsz <4 x float> %i.co, %wide.load20.15
  store <4 x float> %reverse24.15, ptr %i.cn, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  br label %middle.block

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 8 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !11
  %i.cr = sub nuw nsw i64 63, %indvars.iv
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cr ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !11
  %i.cu = fsub nsz float %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store float %i.cu, ptr %i.cv, align 4, !tbaa !11
  %i.cw = load float, ptr %i.cp, align 4, !tbaa !11
  %i.cx = load float, ptr %i.cs, align 4, !tbaa !11
  %i.cy = fadd nsz float %i.cw, %i.cx
  %i.cz = sub nuw nsw i64 127, %indvars.iv
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  store float %i.cy, ptr %i.da, align 4, !tbaa !11
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !11
  %i.dd = sub nuw nsw i64 62, %indvars.iv
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !11
  %i.dg = fsub nsz float %i.dc, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store float %i.dg, ptr %i.dh, align 4, !tbaa !11
  %i.di = load float, ptr %i.db, align 4, !tbaa !11
  %i.dj = load float, ptr %i.de, align 4, !tbaa !11
  %i.dk = fadd nsz float %i.di, %i.dj
  %i.dl = sub nuw nsw i64 126, %indvars.iv
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dl
  store float %i.dk, ptr %i.dm, align 4, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !29

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_autocorrelate_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !11 ; 2 uses
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !11 ; 3 uses
  %i.d = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.e = fneg nsz <2 x float> %i.c
  %i.f = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 1, i32 2>
  %i.g = fmul nsz <2 x float> %i.d, %i.f
  %i.h = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.c, <2 x float> %i.g)
  %i.j = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.094103 = phi float [ 0.000000e+00, %bb.a ], [ %i.s, %bb.b ]
  %i.k = phi <2 x float> [ %i.j, %bb.a ], [ %i.v, %bb.b ] ; 5 uses
  %i.l = phi <2 x float> [ %i.i, %bb.a ], [ %i.ah, %bb.b ]
  %i.m = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ad, %bb.b ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = extractelement <2 x float> %i.k, i64 1   ; 4 uses
  %i.p = fmul nsz float %i.o, %i.o
  %i.q = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.r = tail call nsz float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.p)
  %i.s = fadd nsz float %.094103, %i.r            ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load <2 x float>, ptr %i.t, align 4, !tbaa !11 ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = fneg nsz float %i.w
  %foldExtExtBinop = fmul nsz <2 x float> %i.k, %i.v
  %i.y = fmul nsz float %i.o, %i.x
  %i.z = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ab = insertelement <2 x float> %i.aa, float %i.y, i64 1
  %i.ac = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.v, <2 x float> %i.ab)
  %i.ad = fadd nsz <2 x float> %i.m, %i.ac        ; 3 uses
  %i.ae = load <2 x float>, ptr %i.u, align 4, !tbaa !11 ; 3 uses
  %2 = extractelement <2 x float> %i.ae, i64 0
  %3 = fneg nsz float %2
  %4 = fmul nsz float %i.o, %3
  %i.af = fmul nsz <2 x float> %i.k, %i.ae
  %5 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x float> %5, float %4, i64 1
  %i.ag = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ae, <2 x float> %6)
  %i.ah = fadd nsz <2 x float> %i.l, %i.ag        ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !34

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.ah, ptr %i.aj, align 4, !tbaa !11
  %i.ak = load float, ptr %0, align 4, !tbaa !11  ; 2 uses
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.s)
  %i.am = load float, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.al)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.an, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11 ; 2 uses
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.s)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !11 ; 2 uses
  %i.au = tail call nsz float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.ar)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.au, ptr %i.av, align 4, !tbaa !11
  %i.aw = load float, ptr %0, align 4, !tbaa !11
  %i.ax = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  %i.ay = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.aw, float %i.ax, float %i.ay)
  %i.ba = load float, ptr %i.ai, align 4, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !11
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.ba, float %i.bc, float %i.az)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.bd, ptr %i.be, align 4, !tbaa !11
  %i.bf = load float, ptr %0, align 4, !tbaa !11
  %i.bg = load float, ptr %i.bb, align 4, !tbaa !11
  %i.bh = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bh)
  %i.bj = load float, ptr %i.ai, align 4, !tbaa !11
  %i.bk = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  %i.bl = fneg nsz float %i.bj
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bk, float %i.bi)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.bm, ptr %i.bn, align 4, !tbaa !11
  %i.bo = load float, ptr %i.ap, align 4, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.bq, float %i.ay)
  %i.bs = load float, ptr %i.as, align 4, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bs, float %i.bu, float %i.br)
  store float %i.bv, ptr %1, align 4, !tbaa !11
  %i.bw = load float, ptr %i.ap, align 4, !tbaa !11
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !11
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.bx, float %i.bh)
  %i.bz = load float, ptr %i.as, align 4, !tbaa !11
  %i.ca = load float, ptr %i.bp, align 4, !tbaa !11
  %i.cb = fneg nsz float %i.bz
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.cb, float %i.ca, float %i.by)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbr_hf_gen_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !11
  %i.b = fmul nsz float %4, %i.a
  %i.c = fmul nsz float %4, %i.b                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !11
  %i.f = fmul nsz float %4, %i.e
  %i.g = fmul nsz float %4, %i.f                  ; 3 uses
  %i.h = load float, ptr %2, align 4, !tbaa !11
  %i.i = fmul nsz float %4, %i.h                  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !11
  %i.l = fmul nsz float %4, %i.k                  ; 3 uses
  %i.m = icmp slt i32 %5, %6
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = fneg nsz float %i.g                      ; 2 uses
  %i.o = sext i32 %5 to i64                       ; 9 uses
  %wide.trip.count = sext i32 %6 to i64           ; 4 uses
  %i.p = sub nsw i64 %wide.trip.count, %i.o       ; 3 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.q = xor i64 %i.o, -1
  %i.r = add nsw i64 %i.q, %wide.trip.count       ; 2 uses
  %i.s = shl nsw i64 %i.o, 3                      ; 5 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.t, i64 -16  ; 2 uses
  %mul.result = shl nsw i64 %i.r, 3               ; 5 uses
  %mul.overflow = icmp ugt i64 %i.r, 2305843009213693951
  %i.u = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.v = icmp ult ptr %i.u, %scevgep
  %i.w = getelementptr i8, ptr %1, i64 %i.s
  %scevgep44 = getelementptr i8, ptr %i.w, i64 -12 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep44, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep44
  %i.z = getelementptr i8, ptr %1, i64 %i.s
  %scevgep45 = getelementptr i8, ptr %i.z, i64 -8 ; 2 uses
  %i.aa = getelementptr i8, ptr %scevgep45, i64 %mul.result
  %i.ab = icmp ult ptr %i.aa, %scevgep45
  %i.ac = or i1 %i.ab, %mul.overflow
  %i.ad = getelementptr i8, ptr %1, i64 %i.s
  %scevgep46 = getelementptr i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ae = getelementptr i8, ptr %scevgep46, i64 %mul.result
  %i.af = icmp ult ptr %i.ae, %scevgep46
  %scevgep47 = getelementptr i8, ptr %1, i64 %i.s ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep47, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep47
  %i.ai = or i1 %i.y, %i.v
  %i.aj = or i1 %i.ai, %i.ac
  %i.ak = or i1 %i.af, %i.aj
  %i.al = or i1 %i.ah, %i.ak
  br i1 %i.al, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.am = shl nsw i64 %i.o, 3                     ; 2 uses
  %scevgep48 = getelementptr i8, ptr %0, i64 %i.am
  %i.an = shl nsw i64 %wide.trip.count, 3         ; 2 uses
  %scevgep49 = getelementptr i8, ptr %0, i64 %i.an
  %i.ao = getelementptr i8, ptr %1, i64 %i.am
  %scevgep50 = getelementptr i8, ptr %i.ao, i64 -16
  %scevgep51 = getelementptr i8, ptr %1, i64 %i.an
  %bound0 = icmp ult ptr %scevgep48, %scevgep51
  %bound1 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.ap = add nsw i64 %n.vec, %i.o
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.c, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat55 = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat57 = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat59 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = add i64 %index, %i.o                    ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %i.aq ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16    ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.as, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec60 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.at = fmul nsz <4 x float> %strided.vec60, %broadcast.splat
  %i.au = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %broadcast.splat53, <4 x float> %i.at)
  %i.av = getelementptr i8, ptr %i.ar, i64 -8     ; 2 uses
  %wide.vec61 = load <8 x float>, ptr %i.av, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec62 = shufflevector <8 x float> %wide.vec61, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec62, <4 x float> %broadcast.splat55, <4 x float> %i.au)
  %i.ax = fneg nsz <8 x float> %wide.vec61
  %i.ay = shufflevector <8 x float> %i.ax, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.az = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %broadcast.splat57, <4 x float> %i.aw)
  %wide.vec64 = load <8 x float>, ptr %i.ar, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec65 = shufflevector <8 x float> %wide.vec64, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec66 = shufflevector <8 x float> %wide.vec64, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fadd nsz <4 x float> %strided.vec65, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aq
  %wide.vec67 = load <8 x float>, ptr %i.as, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec68 = shufflevector <8 x float> %wide.vec67, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec69 = shufflevector <8 x float> %wide.vec67, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bc = fmul nsz <4 x float> %broadcast.splat59, %strided.vec68
  %i.bd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec69, <4 x float> %broadcast.splat53, <4 x float> %i.bc)
  %wide.vec70 = load <8 x float>, ptr %i.av, align 4, !tbaa !11, !alias.scope !40 ; 2 uses
  %strided.vec71 = shufflevector <8 x float> %wide.vec70, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec72 = shufflevector <8 x float> %wide.vec70, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.be = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec72, <4 x float> %broadcast.splat55, <4 x float> %i.bd)
  %i.bf = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec71, <4 x float> %broadcast.splat57, <4 x float> %i.be)
  %i.bg = fadd nsz <4 x float> %strided.vec66, %i.bf
  %interleaved.vec = shufflevector <4 x float> %i.ba, <4 x float> %i.bg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.bb, align 4, !tbaa !11, !alias.scope !41, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.o, %vector.memcheck ], [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph ], [ %i.ap, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -16    ; 2 uses
end_hunk_0
