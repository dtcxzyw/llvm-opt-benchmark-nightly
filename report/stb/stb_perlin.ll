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
  %i.g = fptosi float %0 to i32                   ; 2 uses
  %i.h = insertelement <2 x float> poison, float %2, i64 0
  %i.i = insertelement <2 x float> %i.h, float %1, i64 1 ; 3 uses
  %i.j = fptosi <2 x float> %i.i to <2 x i32>     ; 2 uses
  %i.k = zext i8 %6 to i32                        ; 2 uses
  %i.l = sitofp i32 %i.g to float
  %i.m = fcmp olt float %0, %i.l
  %i.n = sext i1 %i.m to i32
  %i.o = add nsw i32 %i.n, %i.g                   ; 3 uses
  %i.p = sitofp <2 x i32> %i.j to <2 x float>
  %i.q = fcmp olt <2 x float> %i.i, %i.p
  %i.r = sext <2 x i1> %i.q to <2 x i32>
  %i.s = add nsw <2 x i32> %i.r, %i.j             ; 3 uses
  %i.t = and i32 %i.o, %i.b
  %i.u = add nsw i32 %i.o, 1
  %i.v = and i32 %i.u, %i.b
  %i.w = extractelement <2 x i32> %i.s, i64 1     ; 2 uses
  %i.x = and i32 %i.w, %i.d                       ; 2 uses
  %i.y = add nsw i32 %i.w, 1
  %i.z = and i32 %i.y, %i.d                       ; 2 uses
  %i.aa = extractelement <2 x i32> %i.s, i64 0    ; 2 uses
  %i.ab = and i32 %i.aa, %i.f                     ; 4 uses
  %i.ac = add nsw i32 %i.aa, 1
  %i.ad = and i32 %i.ac, %i.f                     ; 4 uses
  %i.ae = sitofp i32 %i.o to float
  %i.af = fsub float %0, %i.ae                    ; 6 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 6.000000e+00, float -1.500000e+01)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.af, float 1.000000e+01)
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = fmul float %i.af, %i.ai
  %i.ak = fmul float %i.af, %i.aj
  %i.al = sitofp <2 x i32> %i.s to <2 x float>
  %i.am = fsub <2 x float> %i.i, %i.al            ; 8 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.am, <2 x float> splat (float 1.000000e+01))
  %i.ap = fmul <2 x float> %i.am, %i.ao
  %i.aq = fmul <2 x float> %i.am, %i.ap
  %i.ar = fmul <2 x float> %i.am, %i.aq           ; 2 uses
  %i.as = add nuw nsw i32 %i.t, %i.k
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = add nuw nsw i32 %i.v, %i.k
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = add nuw nsw i32 %i.x, %i.aw
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !10
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = add nuw nsw i32 %i.z, %i.aw
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = add nuw nsw i32 %i.x, %i.bb
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = add nuw nsw i32 %i.z, %i.bb
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = add nuw nsw i32 %i.ab, %i.bg
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 16, !tbaa !9 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !9
  %i.cf = add nuw nsw i32 %i.ad, %i.bg
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.cj ; 2 uses
  %i.cl = load <2 x float>, ptr %i.ck, align 16, !tbaa !9 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !9
  %i.co = add nuw nsw i32 %i.ab, %i.bl
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = fadd <2 x float> %i.am, splat (float -1.000000e+00) ; 2 uses
  %i.ct = zext i8 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ct ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 16, !tbaa !9 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !9
  %i.cy = add nuw nsw i32 %i.ad, %i.bl
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.dc ; 2 uses
  %i.de = load <2 x float>, ptr %i.dd, align 16, !tbaa !9 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load float, ptr %i.df, align 8, !tbaa !9
  %i.dh = add nuw nsw i32 %i.ab, %i.bq
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = insertelement <2 x float> poison, float %i.af, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = fadd <2 x float> %i.dm, <float -1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.do = zext i8 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.do ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dp, align 16, !tbaa !9 ; 2 uses
  %i.dr = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %i.dq, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <2 x float> %i.dn, <2 x float> %i.dm, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %7, <2 x float> %i.dt)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !9
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.ce, i64 1
  %i.ea = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ea, <2 x float> %i.dv) ; 2 uses
  %i.ec = add nuw nsw i32 %i.ad, %i.bq
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !10
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.eg ; 2 uses
  %i.ei = load <2 x float>, ptr %i.eh, align 16, !tbaa !9 ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.ek = fmul <2 x float> %i.dr, %i.ej
  %i.el = shufflevector <2 x float> %i.ei, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %7, <2 x float> %i.ek)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !9
  %i.ep = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.cn, i64 1
  %i.er = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.er, <2 x float> %i.em)
  %i.et = add nuw nsw i32 %i.ab, %i.bv
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !10
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ex ; 2 uses
  %i.ez = load <2 x float>, ptr %i.ey, align 16, !tbaa !9 ; 2 uses
  %i.fa = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.fc = fmul <2 x float> %i.fa, %i.fb
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %7, <2 x float> %i.fc)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !9
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.cx, i64 1
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.ea, <2 x float> %i.fe) ; 2 uses
  %i.fk = add nuw nsw i32 %i.ad, %i.bv
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !10
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fo ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fp, align 16, !tbaa !9 ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> %i.de, <2 x i32> <i32 1, i32 3>
  %i.fs = fmul <2 x float> %i.fa, %i.fr
  %i.ft = shufflevector <2 x float> %i.fq, <2 x float> %i.de, <2 x i32> <i32 0, i32 2>
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.dn, <2 x float> %i.fs)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !9
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.dg, i64 1
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.er, <2 x float> %i.fu)
  %i.ga = fsub <2 x float> %i.es, %i.eb
  %i.gb = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.eb) ; 2 uses
  %i.gd = fsub <2 x float> %i.fz, %i.fj
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.gb, <2 x float> %i.fj)
  %i.gf = fsub <2 x float> %i.ge, %i.gc
  %i.gg = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gg, <2 x float> %i.gc) ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  %i.gj = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gk = fsub float %i.gi, %i.gj
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.ak, float %i.gj)
  ret float %i.gl
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
  %i.a = fptosi float %0 to i32                   ; 2 uses
  %i.b = insertelement <2 x float> poison, float %2, i64 0
  %i.c = insertelement <2 x float> %i.b, float %1, i64 1 ; 3 uses
  %i.d = fptosi <2 x float> %i.c to <2 x i32>     ; 2 uses
  %.not = icmp eq i32 %3, 0
  %i.e = select i1 %.not, i32 256, i32 %3         ; 3 uses
  %i.f = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.g = insertelement <2 x i32> %i.f, i32 %4, i64 1 ; 2 uses
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer
  %i.i = zext i8 %6 to i32                        ; 2 uses
  %i.j = sitofp i32 %i.a to float
  %i.k = fcmp olt float %0, %i.j
  %i.l = sext i1 %i.k to i32
  %i.m = add nsw i32 %i.l, %i.a                   ; 2 uses
  %i.n = sitofp <2 x i32> %i.d to <2 x float>
  %i.o = fcmp olt <2 x float> %i.c, %i.n
  %i.p = sext <2 x i1> %i.o to <2 x i32>
  %i.q = add nsw <2 x i32> %i.p, %i.d             ; 2 uses
  %i.r = srem i32 %i.m, %i.e                      ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = select i1 %i.s, i32 %i.e, i32 0
  %spec.select = add nsw i32 %i.t, %i.r           ; 2 uses
  %i.u = add nsw i32 %spec.select, 1
  %i.v = srem i32 %i.u, %i.e
  %i.w = select <2 x i1> %i.h, <2 x i32> splat (i32 256), <2 x i32> %i.g ; 3 uses
  %i.x = srem <2 x i32> %i.q, %i.w                ; 2 uses
  %i.y = icmp slt <2 x i32> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x i32> %i.w, <2 x i32> zeroinitializer
  %i.aa = add nsw <2 x i32> %i.z, %i.x            ; 3 uses
  %i.ab = add nsw <2 x i32> %i.aa, splat (i32 1)
  %i.ac = srem <2 x i32> %i.ab, %i.w              ; 2 uses
  %i.ad = sitofp i32 %i.m to float
  %i.ae = fsub float %0, %i.ad                    ; 6 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float 6.000000e+00, float -1.500000e+01)
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ae, float 1.000000e+01)
  %i.ah = fmul float %i.ae, %i.ag
  %i.ai = fmul float %i.ae, %i.ah
  %i.aj = fmul float %i.ae, %i.ai
  %i.ak = sitofp <2 x i32> %i.q to <2 x float>
  %i.al = fsub <2 x float> %i.c, %i.ak            ; 8 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.al, <2 x float> splat (float 1.000000e+01))
  %i.ao = fmul <2 x float> %i.al, %i.an
  %i.ap = fmul <2 x float> %i.al, %i.ao
  %i.aq = fmul <2 x float> %i.al, %i.ap           ; 2 uses
  %i.ar = sext i32 %spec.select to i64
  %i.as = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.au, %i.i
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !10
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = sext i32 %i.v to i64
  %i.bb = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, %i.i
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !10
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = extractelement <2 x i32> %i.aa, i64 1   ; 2 uses
  %i.bk = add nsw i32 %i.bj, %i.az
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = extractelement <2 x i32> %i.ac, i64 1   ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.az
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = add nsw i32 %i.bj, %i.bi
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !10
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = add nsw i32 %i.bp, %i.bi
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = extractelement <2 x i32> %i.aa, i64 0   ; 4 uses
  %i.cg = add nsw i32 %i.cf, %i.bo
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.ck ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cl, align 16, !tbaa !9 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load float, ptr %i.cn, align 8, !tbaa !9
  %i.cp = extractelement <2 x i32> %i.ac, i64 0   ; 4 uses
  %i.cq = add nsw i32 %i.cp, %i.bo
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.cu ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cv, align 16, !tbaa !9 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !9
  %i.cz = add nsw i32 %i.cf, %i.bu
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !10
  %i.dd = fadd <2 x float> %i.al, splat (float -1.000000e+00) ; 2 uses
  %i.de = zext i8 %i.dc to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.de ; 2 uses
  %i.dg = load <2 x float>, ptr %i.df, align 16, !tbaa !9 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load float, ptr %i.dh, align 8, !tbaa !9
  %i.dj = add nsw i32 %i.cp, %i.bu
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.dn ; 2 uses
  %i.dp = load <2 x float>, ptr %i.do, align 16, !tbaa !9 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !9
  %i.ds = add nsw i32 %i.cf, %i.bz
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !10
  %i.dw = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = fadd <2 x float> %i.dx, <float -1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.dz = zext i8 %i.dv to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.dz ; 2 uses
  %i.eb = load <2 x float>, ptr %i.ea, align 16, !tbaa !9 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <2 x float> %i.dy, <2 x float> %i.dx, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %7, <2 x float> %i.ee)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !9
  %i.ej = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.co, i64 1
  %i.el = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.eg) ; 2 uses
  %i.en = add nsw i32 %i.cp, %i.bz
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !10
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.er ; 2 uses
  %i.et = load <2 x float>, ptr %i.es, align 16, !tbaa !9 ; 2 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.ev = fmul <2 x float> %i.ec, %i.eu
  %i.ew = shufflevector <2 x float> %i.et, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %7, <2 x float> %i.ev)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !9
  %i.fa = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.cy, i64 1
  %i.fc = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fc, <2 x float> %i.ex)
  %i.fe = add nsw i32 %i.cf, %i.ce
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !10
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fi ; 2 uses
  %i.fk = load <2 x float>, ptr %i.fj, align 16, !tbaa !9 ; 2 uses
  %i.fl = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fm = shufflevector <2 x float> %i.fk, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.fn = fmul <2 x float> %i.fl, %i.fm
  %i.fo = shufflevector <2 x float> %i.fk, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %7, <2 x float> %i.fn)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fr = load float, ptr %i.fq, align 8, !tbaa !9
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.di, i64 1
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.el, <2 x float> %i.fp) ; 2 uses
  %i.fv = add nsw i32 %i.cp, %i.ce
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !10
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr @__const.stb__perlin_grad.basis, i64 %i.fz ; 2 uses
  %i.gb = load <2 x float>, ptr %i.ga, align 16, !tbaa !9 ; 2 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.gd = fmul <2 x float> %i.fl, %i.gc
  %i.ge = shufflevector <2 x float> %i.gb, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.dy, <2 x float> %i.gd)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gh = load float, ptr %i.gg, align 8, !tbaa !9
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.dr, i64 1
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.fc, <2 x float> %i.gf)
  %i.gl = fsub <2 x float> %i.fd, %i.em
  %i.gm = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.gm, <2 x float> %i.em) ; 2 uses
  %i.go = fsub <2 x float> %i.gk, %i.fu
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gm, <2 x float> %i.fu)
  %i.gq = fsub <2 x float> %i.gp, %i.gn
  %i.gr = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.gr, <2 x float> %i.gn) ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0
  %i.gu = extractelement <2 x float> %i.gs, i64 1 ; 2 uses
  %i.gv = fsub float %i.gt, %i.gu
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.gv, float %i.aj, float %i.gu)
  ret float %i.gw
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
