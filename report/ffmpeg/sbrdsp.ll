Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbrdsp?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@sbr_qmf_deint_bfly_c:vector.memcheck
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.w, align 4, !tbaa !11, !alias.scope !30
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 176
  %wide.load20.4 = load <4 x float>, ptr %i.x, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.4 = shufflevector <4 x float> %wide.load20.4, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.y = fsub nsz <4 x float> %wide.load.4, %reverse.4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %i.y, ptr %i.z, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %wide.load21.4 = load <4 x float>, ptr %i.w, align 4, !tbaa !11, !alias.scope !30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ab = shufflevector <4 x float> %wide.load21.4, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse24.4 = fadd nsz <4 x float> %i.ab, %wide.load20.4
  store <4 x float> %reverse24.4, ptr %i.aa, align 4, !tbaa !11, !alias.scope !32, !noalias !33
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.ac, align 4, !tbaa !11, !alias.scope !30
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 160
  %wide.load20.5 = load <4 x float>, ptr %i.ad, align 4, !tbaa !11, !alias.scope !31 ; 2 uses
  %reverse.5 = shufflevector <4 x float> %wide.load20.5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
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
  %2 = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.094103.a = phi float [ 0.000000e+00, %bb.a ], [ %i.m, %bb.b ]
  %3 = phi <2 x float> [ %2, %bb.a ], [ %i.p, %bb.b ] ; 5 uses
  %4 = phi <2 x float> [ %i.i, %bb.a ], [ %i.aa, %bb.b ]
  %i.j = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.t, %bb.b ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %6 = extractelement <2 x float> %3, i64 1       ; 4 uses
  %i.k = fmul nsz float %6, %6
  %7 = extractelement <2 x float> %3, i64 0       ; 2 uses
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %7, float %7, float %i.k)
  %i.m = fadd nsz float %.094103.a, %i.l          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !11 ; 4 uses
  %8 = extractelement <2 x float> %i.p, i64 0
  %i.q = fneg nsz float %8
  %foldExtExtBinop = fmul nsz <2 x float> %3, %i.p
  %9 = fmul nsz float %6, %i.q
  %10 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = insertelement <2 x float> %11, float %9, i64 1
  %i.s = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.p, <2 x float> %i.r)
  %i.t = fadd nsz <2 x float> %i.j, %i.s          ; 3 uses
  %i.u = load <2 x float>, ptr %i.o, align 4, !tbaa !11 ; 3 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fneg nsz float %i.v
  %i.x = fmul nsz float %6, %i.w
  %foldExtExtBinop121 = fmul nsz <2 x float> %3, %i.u
  %12 = shufflevector <2 x float> %foldExtExtBinop121, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.y = insertelement <2 x float> %12, float %i.x, i64 1
  %i.z = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.u, <2 x float> %i.y)
  %i.aa = fadd nsz <2 x float> %4, %i.z           ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 38
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !34

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.aa, ptr %i.ac, align 4, !tbaa !11
  %i.ad = load float, ptr %0, align 4, !tbaa !11  ; 2 uses
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.m)
  %i.af = load float, ptr %i.ab, align 4, !tbaa !11 ; 2 uses
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.ag, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.ak = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.m)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !11 ; 2 uses
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.an, ptr %i.ao, align 4, !tbaa !11
  %i.ap = load float, ptr %0, align 4, !tbaa !11
  %i.aq = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  %i.ar = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ap, float %i.aq, float %i.ar)
  %i.at = load float, ptr %i.ab, align 4, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !11
  %i.aw = tail call nsz float @llvm.fmuladd.f32(float %i.at, float %i.av, float %i.as)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.aw, ptr %i.ax, align 4, !tbaa !11
  %i.ay = load float, ptr %0, align 4, !tbaa !11
  %i.az = load float, ptr %i.au, align 4, !tbaa !11
  %i.ba = extractelement <2 x float> %i.t, i64 1  ; 2 uses
  %i.bb = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.az, float %i.ba)
  %i.bc = load float, ptr %i.ab, align 4, !tbaa !11
  %i.bd = load float, ptr %.phi.trans.insert, align 4, !tbaa !11
  %i.be = fneg nsz float %i.bc
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %i.be, float %i.bd, float %i.bb)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.bf, ptr %i.bg, align 4, !tbaa !11
  %i.bh = load float, ptr %i.ai, align 4, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float %i.bj, float %i.ar)
  %i.bl = load float, ptr %i.al, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !11
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bn, float %i.bk)
  store float %i.bo, ptr %1, align 4, !tbaa !11
  %i.bp = load float, ptr %i.ai, align 4, !tbaa !11
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !11
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bq, float %i.ba)
  %i.bs = load float, ptr %i.al, align 4, !tbaa !11
  %i.bt = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bu = fneg nsz float %i.bs
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.bt, float %i.br)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bv, ptr %i.bw, align 4, !tbaa !11
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
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11
  %i.bl = getelementptr i8, ptr %i.bi, i64 -12    ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !11
  %i.bn = fmul nsz float %i.bm, %i.n
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float %i.c, float %i.bn)
  %i.bp = getelementptr i8, ptr %i.bi, i64 -8     ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !11
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.bq, float %i.i, float %i.bo)
  %i.bs = getelementptr i8, ptr %i.bi, i64 -4     ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !11
  %i.bu = fneg nsz float %i.bt
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.l, float %i.br)
  %i.bw = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bx = fadd nsz float %i.bw, %i.bv
  %i.by = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store float %i.bx, ptr %i.by, align 4, !tbaa !11
  %i.bz = load float, ptr %i.bl, align 4, !tbaa !11
  %i.ca = load float, ptr %i.bj, align 4, !tbaa !11
  %i.cb = fmul nsz float %i.g, %i.ca
  %i.cc = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %i.c, float %i.cb)
  %i.cd = load float, ptr %i.bs, align 4, !tbaa !11
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.cd, float %i.i, float %i.cc)
  %i.cf = load float, ptr %i.bp, align 4, !tbaa !11
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.l, float %i.ce)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cj = fadd nsz float %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store float %i.cj, ptr %i.ck, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
end_hunk_0
