Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_perlin?download=true
inline.NumInlined: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stb__perlin_randtab = local_unnamed_addr global [512 x i8] c"\17}\A14guF%\F7e\CB\A9|~,{\98\EE\91-\ABr\FD\0A\C0\88\04\9D\F9\1E#H\AF?MZ\B5\10`o\85hK\A2]8B\F0\082T\E51\D2\AD\EF\8D\01W\12\02\C6\8F9\E1\A0:\D9\A8\CE\F5\CC\C7\06I<\14\E6\D3\E9^\C8X\09J\9B!\0F\DB\82\E2\CAS\EC*\AC\A5\DA7\DE.kb\9AmC\C4\B2\7F\9E\0D\F3AO\A6\F8\19\E0sPD3\B8\80\E8\D0\97z\1A\D4i+\B3\D5\EB\94\92Y\0E\C3\1CNpL\FA/\18\FB\8Cl\BA\BE\E4\AA\B7\8B'\BC\F4\F6\840w\90\B4\8A\86\C1R\B6xyV\DC\D1\03[\F1\95U\CD\96q\D8\1Fd)\A4\B1\D6\99\E7&G\B9\AEa\C9\1D_\07\\6\FE\BFv\22\DD\83\0B\A3c\EAQ\E3\93\9C\B0\11\8EE\0Cn>\1B\FF\00\C2;t\F2\FC\13\15\BB5\CF\81@\87=(\A7\EDf\DFj\9F\C5\BD\D7\89$ \16\05\17}\A14guF%\F7e\CB\A9|~,{\98\EE\91-\ABr\FD\0A\C0\88\04\9D\F9\1E#H\AF?MZ\B5\10`o\85hK\A2]8B\F0\082T\E51\D2\AD\EF\8D\01W\12\02\C6\8F9\E1\A0:\D9\A8\CE\F5\CC\C7\06I<\14\E6\D3\E9^\C8X\09J\9B!\0F\DB\82\E2\CAS\EC*\AC\A5\DA7\DE.kb\9AmC\C4\B2\7F\9E\0D\F3AO\A6\F8\19\E0sPD3\B8\80\E8\D0\97z\1A\D4i+\B3\D5\EB\94\92Y\0E\C3\1CNpL\FA/\18\FB\8Cl\BA\BE\E4\AA\B7\8B'\BC\F4\F6\840w\90\B4\8A\86\C1R\B6xyV\DC\D1\03[\F1\95U\CD\96q\D8\1Fd)\A4\B1\D6\99\E7&G\B9\AEa\C9\1D_\07\\6\FE\BFv\22\DD\83\0B\A3c\EAQ\E3\93\9C\B0\11\8EE\0Cn>\1B\FF\00\C2;t\F2\FC\13\15\BB5\CF\81@\87=(\A7\EDf\DFj\9F\C5\BD\D7\89$ \16\05", align 16
@stb__perlin_randtab_grad_idx = local_unnamed_addr global [512 x i8] c"\07\09\05\00\0B\01\06\09\03\09\0B\01\08\0A\04\07\08\06\01\05\03\0A\09\0A\00\08\04\01\05\02\07\08\07\0B\09\0A\01\00\04\07\05\00\0B\06\01\04\02\08\08\0A\04\09\09\02\05\07\09\01\07\02\02\06\0B\05\05\04\06\09\00\01\01\00\07\06\09\08\04\0A\03\01\02\08\08\09\0A\0B\05\0B\0B\02\06\0A\03\04\02\04\09\0A\03\02\06\03\06\0A\05\03\04\0A\0B\02\09\0B\01\0B\0A\04\09\04\0B\00\04\0B\04\00\00\00\07\06\0A\04\01\03\0B\05\03\04\02\09\01\03\00\01\08\00\06\07\08\07\00\04\06\0A\08\02\03\0B\0B\08\00\02\04\08\03\00\00\0A\06\01\02\02\04\05\06\00\01\03\0B\09\05\05\09\06\09\08\03\08\01\08\09\06\09\0B\0A\07\05\06\05\09\01\03\07\00\02\0A\0B\02\06\01\03\0B\07\07\02\01\07\03\00\08\01\01\05\00\06\0A\0B\0B\00\02\07\00\0A\08\03\05\07\01\0B\01\00\07\09\00\0B\05\0A\03\02\03\05\09\07\09\08\04\06\05\07\09\05\00\0B\01\06\09\03\09\0B\01\08\0A\04\07\08\06\01\05\03\0A\09\0A\00\08\04\01\05\02\07\08\07\0B\09\0A\01\00\04\07\05\00\0B\06\01\04\02\08\08\0A\04\09\09\02\05\07\09\01\07\02\02\06\0B\05\05\04\06\09\00\01\01\00\07\06\09\08\04\0A\03\01\02\08\08\09\0A\0B\05\0B\0B\02\06\0A\03\04\02\04\09\0A\03\02\06\03\06\0A\05\03\04\0A\0B\02\09\0B\01\0B\0A\04\09\04\0B\00\04\0B\04\00\00\00\07\06\0A\04\01\03\0B\05\03\04\02\09\01\03\00\01\08\00\06\07\08\07\00\04\06\0A\08\02\03\0B\0B\08\00\02\04\08\03\00\00\0A\06\01\02\02\04\05\06\00\01\03\0B\09\05\05\09\06\09\08\03\08\01\08\09\06\09\0B\0A\07\05\06\05\09\01\03\07\00\02\0A\0B\02\06\01\03\0B\07\07\02\01\07\03\00\08\01\01\05\00\06\0A\0B\0B\00\02\07\00\0A\08\03\05\07\01\0B\01\00\07\09\00\0B\05\0A\03\02\03\05\09\07\09\08\04\06\05", align 16
@__const.stb__perlin_grad.basis = private unnamed_addr constant [12 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float -1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [4 x float] [float -1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0.000000e+00], [4 x float] [float 0.000000e+00, float -1.000000e+00, float -1.000000e+00, float 0.000000e+00]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @stb__perlin_lerp(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub float %1, %0
  %i.b = tail call float @llvm.fmuladd.f32(float %i.a, float %2, float %0)
  ret float %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stb__perlin_fastfloor(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fptosi float %0 to i32                   ; 2 uses
  %i.b = sitofp i32 %i.a to float
  %i.c = fcmp olt float %0, %i.b
  %i.d = sext i1 %i.c to i32
  %i.e = add nsw i32 %i.d, %i.a
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @stb__perlin_grad(i32 noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.a ; 3 uses
  %i.c = load float, ptr %i.b, align 16, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !9
  %i.f = fmul float %2, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %1, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call float @llvm.fmuladd.f32(float %i.i, float %3, float %i.g)
  ret float %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #2 {
bb.a:
  %i.a = add i32 %3, 255
  %i.b = and i32 %i.a, 255                        ; 2 uses
  %i.c = add i32 %4, 255
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %i.e = add i32 %5, 255
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %7 = insertelement <3 x float> poison, float %0, i64 0
  %8 = insertelement <3 x float> %7, float %2, i64 1
  %9 = insertelement <3 x float> %8, float %1, i64 2 ; 4 uses
  %10 = fptosi <3 x float> %9 to <3 x i32>        ; 2 uses
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.g = fptosi <2 x float> %11 to <2 x i32>      ; 2 uses
  %i.h = zext i8 %6 to i32                        ; 2 uses
  %i.i = sitofp <2 x i32> %i.g to <2 x float>
  %12 = sitofp <3 x i32> %10 to <3 x float>
  %i.j = fcmp olt <2 x float> %11, %i.i
  %13 = fcmp olt <3 x float> %9, %12
  %i.k = sext <2 x i1> %i.j to <2 x i32>
  %14 = sext <3 x i1> %13 to <3 x i32>
  %i.l = add nsw <2 x i32> %i.k, %i.g             ; 3 uses
  %15 = add nsw <3 x i32> %14, %10                ; 2 uses
  %16 = extractelement <3 x i32> %15, i64 0       ; 2 uses
  %i.m = and i32 %16, %i.b
  %i.n = add nsw i32 %16, 1
  %i.o = and i32 %i.n, %i.b
  %i.p = extractelement <2 x i32> %i.l, i64 1     ; 2 uses
  %i.q = and i32 %i.p, %i.d                       ; 2 uses
  %i.r = add nsw i32 %i.p, 1
  %i.s = and i32 %i.r, %i.d                       ; 2 uses
  %i.t = extractelement <2 x i32> %i.l, i64 0     ; 2 uses
  %i.u = and i32 %i.t, %i.f                       ; 4 uses
  %i.v = add nsw i32 %i.t, 1
  %i.w = and i32 %i.v, %i.f                       ; 4 uses
  %i.x = sitofp <2 x i32> %i.l to <2 x float>
  %17 = sitofp <3 x i32> %15 to <3 x float>
  %18 = fsub <3 x float> %9, %17                  ; 2 uses
  %19 = extractelement <3 x float> %18, i64 0     ; 5 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %19, float 6.000000e+00, float -1.500000e+01)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %19, float 1.000000e+01)
  %i.aa = fmul float %19, %i.z
  %i.ab = fmul float %19, %i.aa
  %i.ac = fmul float %19, %i.ab
  %i.ad = fsub <2 x float> %11, %i.x              ; 8 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ad, <2 x float> splat (float 1.000000e+01))
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = fmul <2 x float> %i.ad, %i.ag
  %i.ai = fmul <2 x float> %i.ad, %i.ah           ; 2 uses
  %i.aj = add nuw nsw i32 %i.m, %i.h
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = add nuw nsw i32 %i.o, %i.h
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = add nuw nsw i32 %i.q, %i.an
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = add nuw nsw i32 %i.s, %i.an
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !10
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = add nuw nsw i32 %i.q, %i.as
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = add nuw nsw i32 %i.s, %i.as
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.u, %i.ax
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.br ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bs, align 16, !tbaa !9 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !9
  %i.bw = add nuw nsw i32 %i.w, %i.ax
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 16, !tbaa !9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !9
  %i.cf = add nuw nsw i32 %i.u, %i.bc
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = fadd <2 x float> %i.ad, splat (float -1.000000e+00) ; 2 uses
  %i.ck = zext i8 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ck ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cl, align 16, !tbaa !9 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load float, ptr %i.cn, align 8, !tbaa !9
  %i.cp = add nuw nsw i32 %i.w, %i.bc
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ct ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 16, !tbaa !9 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !9
  %i.cy = add nuw nsw i32 %i.u, %i.bh
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = shufflevector <3 x float> %18, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fadd <2 x float> %i.dc, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.de = zext i8 %i.db to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.de ; 2 uses
  %i.dg = load <2 x float>, ptr %i.df, align 16, !tbaa !9 ; 2 uses
  %i.dh = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.di = shufflevector <2 x float> %i.dg, <2 x float> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.dj = fmul <2 x float> %i.dh, %i.di
  %i.dk = shufflevector <2 x float> %i.dg, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dd, <2 x float> %i.dj)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !9
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.bv, i64 1
  %i.dq = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.dq, <2 x float> %i.dl) ; 2 uses
  %i.ds = add nuw nsw i32 %i.w, %i.bh
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !10
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.dw ; 2 uses
  %i.dy = load <2 x float>, ptr %i.dx, align 16, !tbaa !9 ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.ea = fmul <2 x float> %i.dh, %i.dz
  %i.eb = shufflevector <2 x float> %i.dy, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.dd, <2 x float> %i.ea)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !9
  %i.ef = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ce, i64 1
  %i.eh = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.eh, <2 x float> %i.ec)
  %i.ej = add nuw nsw i32 %i.u, %i.bm
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.en ; 2 uses
  %i.ep = load <2 x float>, ptr %i.eo, align 16, !tbaa !9 ; 2 uses
  %i.eq = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.es = fmul <2 x float> %i.eq, %i.er
  %i.et = shufflevector <2 x float> %i.ep, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.dd, <2 x float> %i.es)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !9
  %i.ex = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.co, i64 1
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.dq, <2 x float> %i.eu) ; 2 uses
  %i.fa = add nuw nsw i32 %i.w, %i.bm
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !10
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fe ; 2 uses
  %i.fg = load <2 x float>, ptr %i.ff, align 16, !tbaa !9 ; 2 uses
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.fi = fmul <2 x float> %i.eq, %i.fh
  %i.fj = shufflevector <2 x float> %i.fg, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.dd, <2 x float> %i.fi)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !9
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.cx, i64 1
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.eh, <2 x float> %i.fk)
  %i.fq = fsub <2 x float> %i.ei, %i.dr
  %i.fr = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fr, <2 x float> %i.dr) ; 2 uses
  %i.ft = fsub <2 x float> %i.fp, %i.ez
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fr, <2 x float> %i.ez)
  %i.fv = fsub <2 x float> %i.fu, %i.fs
  %i.fw = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.fs) ; 2 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = extractelement <2 x float> %i.fx, i64 1 ; 2 uses
  %i.ga = fsub float %i.fy, %i.fz
  %i.gb = tail call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.ac, float %i.fz)
  ret float %i.gb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @stb_perlin_noise3(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext 0)
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @stb_perlin_noise3_seed(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i32 %6 to i8
  %i.b = tail call float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %i.a)
  ret float %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stb_perlin_ridge_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02330 = phi float [ %i.k, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.02429 = phi float [ %i.m, %.lr.ph ], [ 5.000000e-01, %bb.a ] ; 2 uses
  %.02528 = phi float [ %i.i, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.02627 = phi float [ %i.l, %.lr.ph ], [ 1.000000e+00, %bb.a ] ; 4 uses
  %i.b = fmul float %0, %.02627
  %i.c = fmul float %1, %.02627
  %i.d = fmul float %2, %.02627
  %i.e = trunc i32 %.031 to i8
  %i.f = tail call float @stb_perlin_noise3_internal(float noundef %i.b, float noundef %i.c, float noundef %i.d, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.e)
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fsub float %5, %i.g                      ; 2 uses
  %i.i = fmul float %i.h, %i.h                    ; 2 uses
  %i.j = fmul float %.02429, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %.02528, float %.02330) ; 2 uses
  %i.l = fmul float %3, %.02627
  %i.m = fmul float %4, %.02429
  %i.n = add nuw nsw i32 %.031, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.023.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.k, %.lr.ph ]
  ret float %.023.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stb_perlin_fbm_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %3, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi float [ %i.l, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.01819 = phi i32 [ %i.n, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.d = phi <2 x float> [ %i.m, %.lr.ph ], [ splat (float 1.000000e+00), %.lr.ph.preheader ] ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.f = fmul float %0, %i.e
  %i.g = fmul float %1, %i.e
  %i.h = fmul float %2, %i.e
  %i.i = trunc i32 %.01819 to i8
  %i.j = tail call float @stb_perlin_noise3_internal(float noundef %i.f, float noundef %i.g, float noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.i)
  %i.k = extractelement <2 x float> %i.d, i64 0
  %i.l = tail call float @llvm.fmuladd.f32(float %i.j, float %i.k, float %.022) ; 2 uses
  %i.m = fmul <2 x float> %i.c, %i.d
  %i.n = add nuw nsw i32 %.01819, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %.lr.ph ]
  ret float %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define float @stb_perlin_turbulence_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %3, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.023 = phi i32 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01722 = phi float [ %i.n, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.d = phi <2 x float> [ %i.o, %.lr.ph ], [ splat (float 1.000000e+00), %.lr.ph.preheader ] ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.f = fmul float %0, %i.e
  %i.g = fmul float %1, %i.e
  %i.h = fmul float %2, %i.e
  %i.i = trunc i32 %.023 to i8
  %i.j = tail call float @stb_perlin_noise3_internal(float noundef %i.f, float noundef %i.g, float noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.i)
  %i.k = extractelement <2 x float> %i.d, i64 0
  %i.l = fmul float %i.k, %i.j
  %i.m = tail call float @llvm.fabs.f32(float %i.l)
  %i.n = fadd float %.01722, %i.m                 ; 2 uses
  %i.o = fmul <2 x float> %i.c, %i.d
  %i.p = add nuw nsw i32 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.n, %.lr.ph ]
  ret float %.017.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @stb_perlin_noise3_wrap_nonpow2(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #2 {
bb.a:
  %7 = insertelement <3 x float> poison, float %0, i64 0
  %8 = insertelement <3 x float> %7, float %2, i64 1
  %9 = insertelement <3 x float> %8, float %1, i64 2 ; 4 uses
  %10 = fptosi <3 x float> %9 to <3 x i32>        ; 2 uses
  %11 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.a = fptosi <2 x float> %11 to <2 x i32>      ; 2 uses
  %.not = icmp eq i32 %3, 0
  %i.b = select i1 %.not, i32 256, i32 %3         ; 3 uses
  %.not132 = icmp eq i32 %4, 0
  %i.c = select i1 %.not132, i32 256, i32 %4      ; 3 uses
  %.not133 = icmp eq i32 %5, 0
  %i.d = select i1 %.not133, i32 256, i32 %5      ; 3 uses
  %i.e = zext i8 %6 to i32                        ; 2 uses
  %i.f = sitofp <2 x i32> %i.a to <2 x float>
  %12 = sitofp <3 x i32> %10 to <3 x float>
  %i.g = fcmp olt <2 x float> %11, %i.f
  %13 = fcmp olt <3 x float> %9, %12
  %i.h = sext <2 x i1> %i.g to <2 x i32>
  %14 = sext <3 x i1> %13 to <3 x i32>
  %i.i = add nsw <2 x i32> %i.h, %i.a             ; 3 uses
  %15 = add nsw <3 x i32> %14, %10                ; 2 uses
  %16 = extractelement <3 x i32> %15, i64 0
  %i.j = srem i32 %16, %i.b                       ; 2 uses
  %i.k = extractelement <2 x i32> %i.i, i64 1
  %i.l = srem i32 %i.k, %i.c                      ; 2 uses
  %i.m = extractelement <2 x i32> %i.i, i64 0
  %i.n = srem i32 %i.m, %i.d                      ; 2 uses
  %i.o = icmp slt i32 %i.j, 0
  %i.p = select i1 %i.o, i32 %i.b, i32 0
  %spec.select = add nsw i32 %i.p, %i.j           ; 2 uses
  %i.q = icmp slt i32 %i.l, 0
  %i.r = select i1 %i.q, i32 %i.c, i32 0
  %.0125 = add nsw i32 %i.r, %i.l                 ; 3 uses
  %i.s = icmp slt i32 %i.n, 0
  %i.t = select i1 %i.s, i32 %i.d, i32 0
  %.0 = add nsw i32 %i.t, %i.n                    ; 5 uses
  %i.u = add nsw i32 %spec.select, 1
  %i.v = srem i32 %i.u, %i.b
  %i.w = add nsw i32 %.0125, 1
  %i.x = srem i32 %i.w, %i.c                      ; 2 uses
  %i.y = add nsw i32 %.0, 1
  %i.z = srem i32 %i.y, %i.d                      ; 4 uses
  %i.aa = sitofp <2 x i32> %i.i to <2 x float>
  %17 = sitofp <3 x i32> %15 to <3 x float>
  %18 = fsub <3 x float> %9, %17                  ; 2 uses
  %19 = extractelement <3 x float> %18, i64 0     ; 5 uses
  %i.ab = tail call float @llvm.fmuladd.f32(float %19, float 6.000000e+00, float -1.500000e+01)
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %19, float 1.000000e+01)
  %i.ad = fmul float %19, %i.ac
  %i.ae = fmul float %19, %i.ad
  %i.af = fmul float %19, %i.ae
  %i.ag = fsub <2 x float> %11, %i.aa             ; 8 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.ag, <2 x float> splat (float 1.000000e+01))
  %i.aj = fmul <2 x float> %i.ag, %i.ai
  %i.ak = fmul <2 x float> %i.ag, %i.aj
  %i.al = fmul <2 x float> %i.ag, %i.ak           ; 2 uses
  %i.am = sext i32 %spec.select to i64
  %i.an = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ap, %i.e
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = sext i32 %i.v to i64
  %i.aw = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %i.ay, %i.e
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = add nsw i32 %.0125, %i.au
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = add nsw i32 %i.x, %i.au
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !10
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = add nsw i32 %.0125, %i.bd
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = add nsw i32 %i.x, %i.bd
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !10
  %i.bx = zext i8 %i.bw to i32                    ; 2 uses
  %i.by = add nsw i32 %.0, %i.bi
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.cc ; 2 uses
  %i.ce = load <2 x float>, ptr %i.cd, align 16, !tbaa !9 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !9
  %i.ch = add nsw i32 %i.z, %i.bi
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.cl ; 2 uses
  %i.cn = load <2 x float>, ptr %i.cm, align 16, !tbaa !9 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load float, ptr %i.co, align 8, !tbaa !9
  %i.cq = add nsw i32 %.0, %i.bn
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cu = fadd <2 x float> %i.ag, splat (float -1.000000e+00) ; 2 uses
  %i.cv = zext i8 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.cv ; 2 uses
  %i.cx = load <2 x float>, ptr %i.cw, align 16, !tbaa !9 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !9
  %i.da = add nsw i32 %i.z, %i.bn
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.de ; 2 uses
  %i.dg = load <2 x float>, ptr %i.df, align 16, !tbaa !9 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load float, ptr %i.dh, align 8, !tbaa !9
  %i.dj = add nsw i32 %.0, %i.bs
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = shufflevector <3 x float> %18, <3 x float> poison, <2 x i32> zeroinitializer
  %i.do = fadd <2 x float> %i.dn, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.dp = zext i8 %i.dm to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.dp ; 2 uses
  %i.dr = load <2 x float>, ptr %i.dq, align 16, !tbaa !9 ; 2 uses
  %i.ds = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dr, <2 x float> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.du = fmul <2 x float> %i.ds, %i.dt
  %i.dv = shufflevector <2 x float> %i.dr, <2 x float> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.do, <2 x float> %i.du)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dy = load float, ptr %i.dx, align 8, !tbaa !9
  %i.dz = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.cg, i64 1
  %i.eb = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.eb, <2 x float> %i.dw) ; 2 uses
  %i.ed = add nsw i32 %i.z, %i.bs
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !10
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.eh ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ei, align 16, !tbaa !9 ; 2 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.el = fmul <2 x float> %i.ds, %i.ek
  %i.em = shufflevector <2 x float> %i.ej, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.do, <2 x float> %i.el)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !9
  %i.eq = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.cp, i64 1
  %i.es = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.es, <2 x float> %i.en)
  %i.eu = add nsw i32 %.0, %i.bx
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !10
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ey ; 2 uses
  %i.fa = load <2 x float>, ptr %i.ez, align 16, !tbaa !9 ; 2 uses
  %i.fb = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fc = shufflevector <2 x float> %i.fa, <2 x float> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.fd = fmul <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.fa, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.do, <2 x float> %i.fd)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fh = load float, ptr %i.fg, align 8, !tbaa !9
  %i.fi = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.cz, i64 1
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.eb, <2 x float> %i.ff) ; 2 uses
  %i.fl = add nsw i32 %i.z, %i.bx
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !10
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fp ; 2 uses
  %i.fr = load <2 x float>, ptr %i.fq, align 16, !tbaa !9 ; 2 uses
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.ft = fmul <2 x float> %i.fb, %i.fs
  %i.fu = shufflevector <2 x float> %i.fr, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.do, <2 x float> %i.ft)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !9
  %i.fy = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.di, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.es, <2 x float> %i.fv)
  %i.gb = fsub <2 x float> %i.et, %i.ec
  %i.gc = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gc, <2 x float> %i.ec) ; 2 uses
  %i.ge = fsub <2 x float> %i.ga, %i.fk
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gc, <2 x float> %i.fk)
  %i.gg = fsub <2 x float> %i.gf, %i.gd
  %i.gh = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gh, <2 x float> %i.gd) ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0
  %i.gk = extractelement <2 x float> %i.gi, i64 1 ; 2 uses
  %i.gl = fsub float %i.gj, %i.gk
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.gl, float %i.af, float %i.gk)
  ret float %i.gm
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
end_hunk_0
