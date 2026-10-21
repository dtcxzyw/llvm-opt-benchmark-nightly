Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/encode3f?download=true
inline.NumInlined: 58
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@perm_3 = internal unnamed_addr constant [64 x i8] c"\00\01\04\10\14\11\05\02\08 \15\06\12\18\09!$\03\0C0\16\19%(\22\0A\07\13\1C\0D14)&\1A\17\1D5\0B#,\0E28*\1B'-\1E69<3\0F+.:=7\1F>;/?", align 256

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @zfp_encode_block_float_3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 256             ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [64 x i32], align 256             ; 61 uses
  %i.d = alloca [64 x i32], align 256             ; 5 uses
  %i.e = alloca [64 x float], align 256           ; 23 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca [64 x i32], align 256             ; 111 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25   ; 2 uses
  %i.j = icmp slt i32 %i.i, -1074
  br i1 %i.j, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.i.i = phi ptr [ %1, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.05.i.i = phi i32 [ 64, %bb.b ], [ %i.s, %bb.c ]
  %.0.i.i = phi float [ 0.000000e+00, %bb.b ], [ %.1.i.i.1, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4
  %i.l = load float, ptr %.06.i.i, align 4, !tbaa !11
  %i.m = tail call float @llvm.fabs.f32(float %i.l) ; 2 uses
  %i.n = fcmp olt float %.0.i.i, %i.m
  %.1.i.i = select i1 %i.n, float %i.m, float %.0.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.p = load float, ptr %i.k, align 4, !tbaa !11
  %i.q = tail call float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fcmp olt float %.1.i.i, %i.q
  %.1.i.i.1 = select i1 %i.r, float %i.q, float %.1.i.i ; 3 uses
  %i.s = add nsw i32 %.05.i.i, -2                 ; 2 uses
  %.not.i.i.1 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.1, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 -127, ptr %i.f, align 4, !tbaa !12
  %i.t = fcmp ogt float %.1.i.i.1, 0.000000e+00
  br i1 %i.t, label %exponent_block_float.exit.i, label %rev_fwd_reversible_float.exit.thread.i

exponent_block_float.exit.i:                      ; preds = %bb.d
  %i.u = call float @frexpf(float noundef %.1.i.i.1, ptr noundef nonnull %i.f) #10 ; 0 uses
  %i.v = load i32, ptr %i.f, align 4, !tbaa !12
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.v, i32 -126) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  %i.x = sub nsw i32 30, %i.w
  %i.y = tail call float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.x) #10
  %broadcast.splatinsert343 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat344 = shufflevector <4 x float> %broadcast.splatinsert343, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %wide.load349 = load <4 x float>, ptr %1, align 4, !tbaa !11
  %wide.load350 = load <4 x float>, ptr %i.z, align 4, !tbaa !11
  %i.aa = fmul <4 x float> %broadcast.splat344, %wide.load349
  %i.ab = fmul <4 x float> %broadcast.splat344, %wide.load350
  %i.ac = fptosi <4 x float> %i.aa to <4 x i32>
  %i.ad = fptosi <4 x float> %i.ab to <4 x i32>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> %i.ac, ptr %i.g, align 256, !tbaa !12
  store <4 x i32> %i.ad, ptr %i.ae, align 16, !tbaa !12
  %next.gep347.1 = getelementptr i8, ptr %1, i64 32
  %next.gep348.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.af = getelementptr i8, ptr %1, i64 48
  %wide.load349.1 = load <4 x float>, ptr %next.gep347.1, align 4, !tbaa !11
  %wide.load350.1 = load <4 x float>, ptr %i.af, align 4, !tbaa !11
  %i.ag = fmul <4 x float> %broadcast.splat344, %wide.load349.1
  %i.ah = fmul <4 x float> %broadcast.splat344, %wide.load350.1
  %i.ai = fptosi <4 x float> %i.ag to <4 x i32>
  %i.aj = fptosi <4 x float> %i.ah to <4 x i32>
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <4 x i32> %i.ai, ptr %next.gep348.1, align 32, !tbaa !12
  store <4 x i32> %i.aj, ptr %i.ak, align 16, !tbaa !12
  %next.gep347.2 = getelementptr i8, ptr %1, i64 64
  %next.gep348.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.al = getelementptr i8, ptr %1, i64 80
  %wide.load349.2 = load <4 x float>, ptr %next.gep347.2, align 4, !tbaa !11
  %wide.load350.2 = load <4 x float>, ptr %i.al, align 4, !tbaa !11
  %i.am = fmul <4 x float> %broadcast.splat344, %wide.load349.2
  %i.an = fmul <4 x float> %broadcast.splat344, %wide.load350.2
  %i.ao = fptosi <4 x float> %i.am to <4 x i32>
  %i.ap = fptosi <4 x float> %i.an to <4 x i32>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store <4 x i32> %i.ao, ptr %next.gep348.2, align 64, !tbaa !12
  store <4 x i32> %i.ap, ptr %i.aq, align 16, !tbaa !12
  %next.gep347.3 = getelementptr i8, ptr %1, i64 96
  %next.gep348.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.ar = getelementptr i8, ptr %1, i64 112
  %wide.load349.3 = load <4 x float>, ptr %next.gep347.3, align 4, !tbaa !11
  %wide.load350.3 = load <4 x float>, ptr %i.ar, align 4, !tbaa !11
  %i.as = fmul <4 x float> %broadcast.splat344, %wide.load349.3
  %i.at = fmul <4 x float> %broadcast.splat344, %wide.load350.3
  %i.au = fptosi <4 x float> %i.as to <4 x i32>
  %i.av = fptosi <4 x float> %i.at to <4 x i32>
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store <4 x i32> %i.au, ptr %next.gep348.3, align 32, !tbaa !12
  store <4 x i32> %i.av, ptr %i.aw, align 16, !tbaa !12
  %next.gep347.4 = getelementptr i8, ptr %1, i64 128
  %next.gep348.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ax = getelementptr i8, ptr %1, i64 144
  %wide.load349.4 = load <4 x float>, ptr %next.gep347.4, align 4, !tbaa !11
  %wide.load350.4 = load <4 x float>, ptr %i.ax, align 4, !tbaa !11
  %i.ay = fmul <4 x float> %broadcast.splat344, %wide.load349.4
  %i.az = fmul <4 x float> %broadcast.splat344, %wide.load350.4
  %i.ba = fptosi <4 x float> %i.ay to <4 x i32>
  %i.bb = fptosi <4 x float> %i.az to <4 x i32>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store <4 x i32> %i.ba, ptr %next.gep348.4, align 128, !tbaa !12
  store <4 x i32> %i.bb, ptr %i.bc, align 16, !tbaa !12
  %next.gep347.5 = getelementptr i8, ptr %1, i64 160
  %next.gep348.5 = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bd = getelementptr i8, ptr %1, i64 176
  %wide.load349.5 = load <4 x float>, ptr %next.gep347.5, align 4, !tbaa !11
  %wide.load350.5 = load <4 x float>, ptr %i.bd, align 4, !tbaa !11
  %i.be = fmul <4 x float> %broadcast.splat344, %wide.load349.5
  %i.bf = fmul <4 x float> %broadcast.splat344, %wide.load350.5
  %i.bg = fptosi <4 x float> %i.be to <4 x i32>
  %i.bh = fptosi <4 x float> %i.bf to <4 x i32>
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store <4 x i32> %i.bg, ptr %next.gep348.5, align 32, !tbaa !12
  store <4 x i32> %i.bh, ptr %i.bi, align 16, !tbaa !12
  %next.gep347.6 = getelementptr i8, ptr %1, i64 192
  %next.gep348.6 = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.bj = getelementptr i8, ptr %1, i64 208
  %wide.load349.6 = load <4 x float>, ptr %next.gep347.6, align 4, !tbaa !11
  %wide.load350.6 = load <4 x float>, ptr %i.bj, align 4, !tbaa !11
  %i.bk = fmul <4 x float> %broadcast.splat344, %wide.load349.6
  %i.bl = fmul <4 x float> %broadcast.splat344, %wide.load350.6
  %i.bm = fptosi <4 x float> %i.bk to <4 x i32>
  %i.bn = fptosi <4 x float> %i.bl to <4 x i32>
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store <4 x i32> %i.bm, ptr %next.gep348.6, align 64, !tbaa !12
  store <4 x i32> %i.bn, ptr %i.bo, align 16, !tbaa !12
  %next.gep347.7 = getelementptr i8, ptr %1, i64 224
  %next.gep348.7 = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.bp = getelementptr i8, ptr %1, i64 240
  %wide.load349.7 = load <4 x float>, ptr %next.gep347.7, align 4, !tbaa !11
  %wide.load350.7 = load <4 x float>, ptr %i.bp, align 4, !tbaa !11
  %i.bq = fmul <4 x float> %broadcast.splat344, %wide.load349.7
  %i.br = fmul <4 x float> %broadcast.splat344, %wide.load350.7
  %i.bs = fptosi <4 x float> %i.bq to <4 x i32>
  %i.bt = fptosi <4 x float> %i.br to <4 x i32>
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  store <4 x i32> %i.bs, ptr %next.gep348.7, align 32, !tbaa !12
  store <4 x i32> %i.bt, ptr %i.bu, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.bv = add nsw i32 %i.w, -30
  %i.bw = tail call float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.bv) #10
  %broadcast.splatinsert354 = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat355 = shufflevector <4 x float> %broadcast.splatinsert354, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load360 = load <4 x i32>, ptr %i.g, align 256, !tbaa !12
  %wide.load361 = load <4 x i32>, ptr %i.bx, align 16, !tbaa !12
  %i.by = sitofp <4 x i32> %wide.load360 to <4 x float>
  %i.bz = sitofp <4 x i32> %wide.load361 to <4 x float>
  %i.ca = fmul <4 x float> %broadcast.splat355, %i.by
  %i.cb = fmul <4 x float> %broadcast.splat355, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x float> %i.ca, ptr %i.e, align 256, !tbaa !11
  store <4 x float> %i.cb, ptr %i.cc, align 16, !tbaa !11
  %next.gep358.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %next.gep359.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %wide.load360.1 = load <4 x i32>, ptr %next.gep359.1, align 32, !tbaa !12
  %wide.load361.1 = load <4 x i32>, ptr %i.cd, align 16, !tbaa !12
  %i.ce = sitofp <4 x i32> %wide.load360.1 to <4 x float>
  %i.cf = sitofp <4 x i32> %wide.load361.1 to <4 x float>
  %i.cg = fmul <4 x float> %broadcast.splat355, %i.ce
  %i.ch = fmul <4 x float> %broadcast.splat355, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store <4 x float> %i.cg, ptr %next.gep358.1, align 32, !tbaa !11
  store <4 x float> %i.ch, ptr %i.ci, align 16, !tbaa !11
  %next.gep358.2 = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %next.gep359.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %wide.load360.2 = load <4 x i32>, ptr %next.gep359.2, align 64, !tbaa !12
  %wide.load361.2 = load <4 x i32>, ptr %i.cj, align 16, !tbaa !12
  %i.ck = sitofp <4 x i32> %wide.load360.2 to <4 x float>
  %i.cl = sitofp <4 x i32> %wide.load361.2 to <4 x float>
  %i.cm = fmul <4 x float> %broadcast.splat355, %i.ck
  %i.cn = fmul <4 x float> %broadcast.splat355, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store <4 x float> %i.cm, ptr %next.gep358.2, align 64, !tbaa !11
  store <4 x float> %i.cn, ptr %i.co, align 16, !tbaa !11
  %next.gep358.3 = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %next.gep359.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %wide.load360.3 = load <4 x i32>, ptr %next.gep359.3, align 32, !tbaa !12
  %wide.load361.3 = load <4 x i32>, ptr %i.cp, align 16, !tbaa !12
  %i.cq = sitofp <4 x i32> %wide.load360.3 to <4 x float>
  %i.cr = sitofp <4 x i32> %wide.load361.3 to <4 x float>
  %i.cs = fmul <4 x float> %broadcast.splat355, %i.cq
  %i.ct = fmul <4 x float> %broadcast.splat355, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store <4 x float> %i.cs, ptr %next.gep358.3, align 32, !tbaa !11
  store <4 x float> %i.ct, ptr %i.cu, align 16, !tbaa !11
  %next.gep358.4 = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %next.gep359.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %wide.load360.4 = load <4 x i32>, ptr %next.gep359.4, align 128, !tbaa !12
  %wide.load361.4 = load <4 x i32>, ptr %i.cv, align 16, !tbaa !12
  %i.cw = sitofp <4 x i32> %wide.load360.4 to <4 x float>
  %i.cx = sitofp <4 x i32> %wide.load361.4 to <4 x float>
  %i.cy = fmul <4 x float> %broadcast.splat355, %i.cw
  %i.cz = fmul <4 x float> %broadcast.splat355, %i.cx
end_hunk_0
begin_hunk_1_@zfp_encode_block_float_3:bb.a
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !12 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 24 ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 8, !tbaa !12
  %i.afl = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 28 ; 2 uses
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !12 ; 2 uses
  %i.afn = add nsw i32 %i.afm, %i.afg
  %i.afo = ashr i32 %i.afn, 1                     ; 2 uses
  %i.afp = sub i32 %i.afm, %i.afo
  %i.afq = add nsw i32 %i.afk, %i.afi
  %i.afr = ashr i32 %i.afq, 1                     ; 3 uses
  %i.afs = sub nsw i32 %i.afi, %i.afr             ; 2 uses
  %i.aft = add nsw i32 %i.afo, %i.afr
  %i.afu = ashr i32 %i.aft, 1                     ; 2 uses
  %i.afv = sub nsw i32 %i.afr, %i.afu
  %i.afw = add nsw i32 %i.afp, %i.afs
  %i.afx = ashr i32 %i.afw, 1                     ; 2 uses
  %i.afy = sub nsw i32 %i.afs, %i.afx             ; 2 uses
  %i.afz = ashr i32 %i.afy, 1
  %i.aga = add nsw i32 %i.afz, %i.afx             ; 2 uses
  %i.agb = ashr i32 %i.aga, 1
  %i.agc = sub nsw i32 %i.afy, %i.agb
  store i32 %i.aga, ptr %i.afl, align 4, !tbaa !12
  store i32 %i.afv, ptr %i.afj, align 8, !tbaa !12
  store i32 %i.agc, ptr %i.afh, align 4, !tbaa !12
  store i32 %i.afu, ptr %gep.1.i.i.i13, align 16, !tbaa !12
  %gep.2.i.i.i14 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 32 ; 2 uses
  %i.agd = load i32, ptr %gep.2.i.i.i14, align 32, !tbaa !12
  %i.age = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 36 ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !12 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 40 ; 2 uses
  %i.agh = load i32, ptr %i.agg, align 8, !tbaa !12
  %i.agi = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 44 ; 2 uses
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !12 ; 2 uses
  %i.agk = add nsw i32 %i.agj, %i.agd
  %i.agl = ashr i32 %i.agk, 1                     ; 2 uses
  %i.agm = sub i32 %i.agj, %i.agl
  %i.agn = add nsw i32 %i.agh, %i.agf
  %i.ago = ashr i32 %i.agn, 1                     ; 3 uses
  %i.agp = sub nsw i32 %i.agf, %i.ago             ; 2 uses
  %i.agq = add nsw i32 %i.agl, %i.ago
  %i.agr = ashr i32 %i.agq, 1                     ; 2 uses
  %i.ags = sub nsw i32 %i.ago, %i.agr
  %i.agt = add nsw i32 %i.agm, %i.agp
  %i.agu = ashr i32 %i.agt, 1                     ; 2 uses
  %i.agv = sub nsw i32 %i.agp, %i.agu             ; 2 uses
  %i.agw = ashr i32 %i.agv, 1
  %i.agx = add nsw i32 %i.agw, %i.agu             ; 2 uses
  %i.agy = ashr i32 %i.agx, 1
  %i.agz = sub nsw i32 %i.agv, %i.agy
  store i32 %i.agx, ptr %i.agi, align 4, !tbaa !12
  store i32 %i.ags, ptr %i.agg, align 8, !tbaa !12
  store i32 %i.agz, ptr %i.age, align 4, !tbaa !12
  store i32 %i.agr, ptr %gep.2.i.i.i14, align 32, !tbaa !12
  %gep.3.i.i.i15 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 48 ; 2 uses
  %i.aha = load i32, ptr %gep.3.i.i.i15, align 16, !tbaa !12
  %i.ahb = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 52 ; 2 uses
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !12 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 56 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 8, !tbaa !12
  %i.ahf = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i.i, i64 60 ; 2 uses
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !12 ; 2 uses
  %i.ahh = add nsw i32 %i.ahg, %i.aha
  %i.ahi = ashr i32 %i.ahh, 1                     ; 2 uses
  %i.ahj = sub i32 %i.ahg, %i.ahi
  %i.ahk = add nsw i32 %i.ahe, %i.ahc
  %i.ahl = ashr i32 %i.ahk, 1                     ; 3 uses
  %i.ahm = sub nsw i32 %i.ahc, %i.ahl             ; 2 uses
  %i.ahn = add nsw i32 %i.ahi, %i.ahl
  %i.aho = ashr i32 %i.ahn, 1                     ; 2 uses
  %i.ahp = sub nsw i32 %i.ahl, %i.aho
  %i.ahq = add nsw i32 %i.ahj, %i.ahm
  %i.ahr = ashr i32 %i.ahq, 1                     ; 2 uses
  %i.ahs = sub nsw i32 %i.ahm, %i.ahr             ; 2 uses
  %i.aht = ashr i32 %i.ahs, 1
  %i.ahu = add nsw i32 %i.aht, %i.ahr             ; 2 uses
  %i.ahv = ashr i32 %i.ahu, 1
  %i.ahw = sub nsw i32 %i.ahs, %i.ahv
  store i32 %i.ahu, ptr %i.ahf, align 4, !tbaa !12
  store i32 %i.ahp, ptr %i.ahd, align 8, !tbaa !12
  store i32 %i.ahw, ptr %i.ahb, align 4, !tbaa !12
  store i32 %i.aho, ptr %gep.3.i.i.i15, align 16, !tbaa !12
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 4
  br i1 %exitcond.not.i.i.i, label %vector.body324, label %.preheader29.i.i.i

vector.body324:                                   ; preds = %.preheader29.i.i.i
  %wide.load325 = load <4 x i32>, ptr %i.c, align 256, !tbaa !12
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load326 = load <4 x i32>, ptr %i.ahx, align 16, !tbaa !12 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %wide.load327 = load <4 x i32>, ptr %i.ahy, align 32, !tbaa !12
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %wide.load328 = load <4 x i32>, ptr %i.ahz, align 16, !tbaa !12 ; 2 uses
  %i.aia = add nsw <4 x i32> %wide.load328, %wide.load325
  %i.aib = ashr <4 x i32> %i.aia, splat (i32 1)   ; 2 uses
  %i.aic = sub <4 x i32> %wide.load328, %i.aib
  %i.aid = add nsw <4 x i32> %wide.load327, %wide.load326
  %i.aie = ashr <4 x i32> %i.aid, splat (i32 1)   ; 3 uses
  %i.aif = sub nsw <4 x i32> %wide.load326, %i.aie ; 2 uses
  %i.aig = add nsw <4 x i32> %i.aib, %i.aie
  %i.aih = ashr <4 x i32> %i.aig, splat (i32 1)   ; 2 uses
  %i.aii = sub nsw <4 x i32> %i.aie, %i.aih
  %i.aij = add nsw <4 x i32> %i.aic, %i.aif
  %i.aik = ashr <4 x i32> %i.aij, splat (i32 1)   ; 2 uses
  %i.ail = sub nsw <4 x i32> %i.aif, %i.aik       ; 2 uses
  %i.aim = ashr <4 x i32> %i.ail, splat (i32 1)
  %i.ain = add nsw <4 x i32> %i.aim, %i.aik       ; 2 uses
  %i.aio = ashr <4 x i32> %i.ain, splat (i32 1)
  %i.aip = sub nsw <4 x i32> %i.ail, %i.aio
  store <4 x i32> %i.ain, ptr %i.ahz, align 16, !tbaa !12
  store <4 x i32> %i.aii, ptr %i.ahy, align 32, !tbaa !12
  store <4 x i32> %i.aip, ptr %i.ahx, align 16, !tbaa !12
  store <4 x i32> %i.aih, ptr %i.c, align 256, !tbaa !12
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %wide.load329 = load <4 x i32>, ptr %i.aiq, align 64, !tbaa !12
  %i.air = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %wide.load330 = load <4 x i32>, ptr %i.air, align 16, !tbaa !12 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %wide.load331 = load <4 x i32>, ptr %i.ais, align 32, !tbaa !12
  %i.ait = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %wide.load332 = load <4 x i32>, ptr %i.ait, align 16, !tbaa !12 ; 2 uses
  %i.aiu = add nsw <4 x i32> %wide.load332, %wide.load329
  %i.aiv = ashr <4 x i32> %i.aiu, splat (i32 1)   ; 2 uses
  %i.aiw = sub <4 x i32> %wide.load332, %i.aiv
  %i.aix = add nsw <4 x i32> %wide.load331, %wide.load330
  %i.aiy = ashr <4 x i32> %i.aix, splat (i32 1)   ; 3 uses
  %i.aiz = sub nsw <4 x i32> %wide.load330, %i.aiy ; 2 uses
  %i.aja = add nsw <4 x i32> %i.aiv, %i.aiy
  %i.ajb = ashr <4 x i32> %i.aja, splat (i32 1)   ; 2 uses
  %i.ajc = sub nsw <4 x i32> %i.aiy, %i.ajb
  %i.ajd = add nsw <4 x i32> %i.aiw, %i.aiz
  %i.aje = ashr <4 x i32> %i.ajd, splat (i32 1)   ; 2 uses
  %i.ajf = sub nsw <4 x i32> %i.aiz, %i.aje       ; 2 uses
  %i.ajg = ashr <4 x i32> %i.ajf, splat (i32 1)
  %i.ajh = add nsw <4 x i32> %i.ajg, %i.aje       ; 2 uses
  %i.aji = ashr <4 x i32> %i.ajh, splat (i32 1)
  %i.ajj = sub nsw <4 x i32> %i.ajf, %i.aji
  store <4 x i32> %i.ajh, ptr %i.ait, align 16, !tbaa !12
  store <4 x i32> %i.ajc, ptr %i.ais, align 32, !tbaa !12
  store <4 x i32> %i.ajj, ptr %i.air, align 16, !tbaa !12
  store <4 x i32> %i.ajb, ptr %i.aiq, align 64, !tbaa !12
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.ajk, align 128, !tbaa !12
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %wide.load334 = load <4 x i32>, ptr %i.ajl, align 16, !tbaa !12 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %i.ajm, align 32, !tbaa !12
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %wide.load336 = load <4 x i32>, ptr %i.ajn, align 16, !tbaa !12 ; 2 uses
  %i.ajo = add nsw <4 x i32> %wide.load336, %wide.load333
  %i.ajp = ashr <4 x i32> %i.ajo, splat (i32 1)   ; 2 uses
  %i.ajq = sub <4 x i32> %wide.load336, %i.ajp
  %i.ajr = add nsw <4 x i32> %wide.load335, %wide.load334
  %i.ajs = ashr <4 x i32> %i.ajr, splat (i32 1)   ; 3 uses
  %i.ajt = sub nsw <4 x i32> %wide.load334, %i.ajs ; 2 uses
  %i.aju = add nsw <4 x i32> %i.ajp, %i.ajs
  %i.ajv = ashr <4 x i32> %i.aju, splat (i32 1)   ; 2 uses
  %i.ajw = sub nsw <4 x i32> %i.ajs, %i.ajv
  %i.ajx = add nsw <4 x i32> %i.ajq, %i.ajt
  %i.ajy = ashr <4 x i32> %i.ajx, splat (i32 1)   ; 2 uses
  %i.ajz = sub nsw <4 x i32> %i.ajt, %i.ajy       ; 2 uses
  %i.aka = ashr <4 x i32> %i.ajz, splat (i32 1)
  %i.akb = add nsw <4 x i32> %i.aka, %i.ajy       ; 2 uses
  %i.akc = ashr <4 x i32> %i.akb, splat (i32 1)
  %i.akd = sub nsw <4 x i32> %i.ajz, %i.akc
  store <4 x i32> %i.akb, ptr %i.ajn, align 16, !tbaa !12
  store <4 x i32> %i.ajw, ptr %i.ajm, align 32, !tbaa !12
  store <4 x i32> %i.akd, ptr %i.ajl, align 16, !tbaa !12
  store <4 x i32> %i.ajv, ptr %i.ajk, align 128, !tbaa !12
  %i.ake = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %wide.load337 = load <4 x i32>, ptr %i.ake, align 64, !tbaa !12
  %i.akf = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.akf, align 16, !tbaa !12 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 2 uses
  %wide.load339 = load <4 x i32>, ptr %i.akg, align 32, !tbaa !12
  %i.akh = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %wide.load340 = load <4 x i32>, ptr %i.akh, align 16, !tbaa !12 ; 2 uses
  %i.aki = add nsw <4 x i32> %wide.load340, %wide.load337
  %i.akj = ashr <4 x i32> %i.aki, splat (i32 1)   ; 2 uses
  %i.akk = sub <4 x i32> %wide.load340, %i.akj
  %i.akl = add nsw <4 x i32> %wide.load339, %wide.load338
  %i.akm = ashr <4 x i32> %i.akl, splat (i32 1)   ; 3 uses
  %i.akn = sub nsw <4 x i32> %wide.load338, %i.akm ; 2 uses
  %i.ako = add nsw <4 x i32> %i.akj, %i.akm
  %i.akp = ashr <4 x i32> %i.ako, splat (i32 1)   ; 2 uses
  %i.akq = sub nsw <4 x i32> %i.akm, %i.akp
  %i.akr = add nsw <4 x i32> %i.akk, %i.akn
  %i.aks = ashr <4 x i32> %i.akr, splat (i32 1)   ; 2 uses
  %i.akt = sub nsw <4 x i32> %i.akn, %i.aks       ; 2 uses
  %i.aku = ashr <4 x i32> %i.akt, splat (i32 1)
  %i.akv = add nsw <4 x i32> %i.aku, %i.aks       ; 2 uses
  %i.akw = ashr <4 x i32> %i.akv, splat (i32 1)
  %i.akx = sub nsw <4 x i32> %i.akt, %i.akw
  store <4 x i32> %i.akv, ptr %i.akh, align 16, !tbaa !12
  store <4 x i32> %i.akq, ptr %i.akg, align 32, !tbaa !12
  store <4 x i32> %i.akx, ptr %i.akf, align 16, !tbaa !12
  store <4 x i32> %i.akp, ptr %i.ake, align 64, !tbaa !12
  %i.aky = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %gep37.2.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.alb = load <4 x i32>, ptr %i.c, align 256, !tbaa !12
  %i.alc = load <4 x i32>, ptr %i.aky, align 64, !tbaa !12 ; 2 uses
  %i.ald = load <4 x i32>, ptr %i.akz, align 128, !tbaa !12
  %i.ale = load <4 x i32>, ptr %i.ala, align 64, !tbaa !12 ; 2 uses
  %i.alf = add nsw <4 x i32> %i.ale, %i.alb
  %i.alg = ashr <4 x i32> %i.alf, splat (i32 1)   ; 2 uses
  %i.alh = add nsw <4 x i32> %i.ald, %i.alc
  %i.ali = ashr <4 x i32> %i.alh, splat (i32 1)   ; 3 uses
  %i.alj = sub <4 x i32> %i.ale, %i.alg
  %i.alk = sub nsw <4 x i32> %i.alc, %i.ali       ; 2 uses
  %i.all = add nsw <4 x i32> %i.alj, %i.alk
  %i.alm = ashr <4 x i32> %i.all, splat (i32 1)   ; 2 uses
  %i.aln = sub nsw <4 x i32> %i.alk, %i.alm       ; 2 uses
  %i.alo = ashr <4 x i32> %i.aln, splat (i32 1)
  %i.alp = add nsw <4 x i32> %i.alo, %i.alm       ; 2 uses
  %i.alq = ashr <4 x i32> %i.alp, splat (i32 1)
  %i.alr = sub nsw <4 x i32> %i.aln, %i.alq
  store <4 x i32> %i.alp, ptr %i.ala, align 64, !tbaa !12
  %i.als = add nsw <4 x i32> %i.alg, %i.ali
  %i.alt = ashr <4 x i32> %i.als, splat (i32 1)   ; 3 uses
  %2 = shufflevector <4 x i32> %i.alt, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %2, ptr %i.c, align 256, !tbaa !12
  %i.alu = sub nsw <4 x i32> %i.ali, %i.alt
  store <4 x i32> %i.alu, ptr %i.akz, align 128, !tbaa !12
  store <4 x i32> %i.alr, ptr %i.aky, align 64, !tbaa !12
  %3 = shufflevector <4 x i32> %i.alt, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %3, ptr %gep37.2.i.i.i, align 8, !tbaa !12
  %invariant.gep36.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %gep37.2.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aly = load <4 x i32>, ptr %invariant.gep36.i.i.i.1, align 16, !tbaa !12
  %i.alz = load <4 x i32>, ptr %i.alv, align 16, !tbaa !12 ; 2 uses
  %i.ama = load <4 x i32>, ptr %i.alw, align 16, !tbaa !12
  %i.amb = load <4 x i32>, ptr %i.alx, align 16, !tbaa !12 ; 2 uses
  %i.amc = add nsw <4 x i32> %i.amb, %i.aly
  %i.amd = ashr <4 x i32> %i.amc, splat (i32 1)   ; 2 uses
  %i.ame = add nsw <4 x i32> %i.ama, %i.alz
  %i.amf = ashr <4 x i32> %i.ame, splat (i32 1)   ; 3 uses
  %i.amg = sub <4 x i32> %i.amb, %i.amd
  %i.amh = sub nsw <4 x i32> %i.alz, %i.amf       ; 2 uses
  %i.ami = add nsw <4 x i32> %i.amg, %i.amh
  %i.amj = ashr <4 x i32> %i.ami, splat (i32 1)   ; 2 uses
  %i.amk = sub nsw <4 x i32> %i.amh, %i.amj       ; 2 uses
  %i.aml = ashr <4 x i32> %i.amk, splat (i32 1)
  %i.amm = add nsw <4 x i32> %i.aml, %i.amj       ; 2 uses
  %i.amn = ashr <4 x i32> %i.amm, splat (i32 1)
  %i.amo = sub nsw <4 x i32> %i.amk, %i.amn
  store <4 x i32> %i.amm, ptr %i.alx, align 16, !tbaa !12
  %i.amp = add nsw <4 x i32> %i.amd, %i.amf
  %i.amq = ashr <4 x i32> %i.amp, splat (i32 1)   ; 3 uses
  %4 = shufflevector <4 x i32> %i.amq, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %4, ptr %invariant.gep36.i.i.i.1, align 16, !tbaa !12
  %i.amr = sub nsw <4 x i32> %i.amf, %i.amq
  store <4 x i32> %i.amr, ptr %i.alw, align 16, !tbaa !12
  store <4 x i32> %i.amo, ptr %i.alv, align 16, !tbaa !12
  %5 = shufflevector <4 x i32> %i.amq, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %5, ptr %gep37.2.i.i.i.1, align 8, !tbaa !12
  %invariant.gep36.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 2 uses
  %gep37.2.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.amv = load <4 x i32>, ptr %invariant.gep36.i.i.i.2, align 32, !tbaa !12
  %i.amw = load <4 x i32>, ptr %i.ams, align 32, !tbaa !12 ; 2 uses
  %i.amx = load <4 x i32>, ptr %i.amt, align 32, !tbaa !12
  %i.amy = load <4 x i32>, ptr %i.amu, align 32, !tbaa !12 ; 2 uses
  %i.amz = add nsw <4 x i32> %i.amy, %i.amv
  %i.ana = ashr <4 x i32> %i.amz, splat (i32 1)   ; 2 uses
  %i.anb = add nsw <4 x i32> %i.amx, %i.amw
  %i.anc = ashr <4 x i32> %i.anb, splat (i32 1)   ; 3 uses
  %i.and = sub <4 x i32> %i.amy, %i.ana
  %i.ane = sub nsw <4 x i32> %i.amw, %i.anc       ; 2 uses
  %i.anf = add nsw <4 x i32> %i.and, %i.ane
  %i.ang = ashr <4 x i32> %i.anf, splat (i32 1)   ; 2 uses
  %i.anh = sub nsw <4 x i32> %i.ane, %i.ang       ; 2 uses
  %i.ani = ashr <4 x i32> %i.anh, splat (i32 1)
  %i.anj = add nsw <4 x i32> %i.ani, %i.ang       ; 2 uses
  %i.ank = ashr <4 x i32> %i.anj, splat (i32 1)
  %i.anl = sub nsw <4 x i32> %i.anh, %i.ank
  store <4 x i32> %i.anj, ptr %i.amu, align 32, !tbaa !12
  %i.anm = add nsw <4 x i32> %i.ana, %i.anc
  %i.ann = ashr <4 x i32> %i.anm, splat (i32 1)   ; 3 uses
  %6 = shufflevector <4 x i32> %i.ann, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %6, ptr %invariant.gep36.i.i.i.2, align 32, !tbaa !12
  %i.ano = sub nsw <4 x i32> %i.anc, %i.ann
  store <4 x i32> %i.ano, ptr %i.amt, align 32, !tbaa !12
  store <4 x i32> %i.anl, ptr %i.ams, align 32, !tbaa !12
  %7 = shufflevector <4 x i32> %i.ann, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %7, ptr %gep37.2.i.i.i.2, align 8, !tbaa !12
  %invariant.gep36.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %gep37.2.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ans = load <4 x i32>, ptr %invariant.gep36.i.i.i.3, align 16, !tbaa !12
  %i.ant = load <4 x i32>, ptr %i.anp, align 16, !tbaa !12 ; 2 uses
  %i.anu = load <4 x i32>, ptr %i.anq, align 16, !tbaa !12
  %i.anv = load <4 x i32>, ptr %i.anr, align 16, !tbaa !12 ; 2 uses
  %i.anw = add nsw <4 x i32> %i.anv, %i.ans
  %i.anx = ashr <4 x i32> %i.anw, splat (i32 1)   ; 2 uses
  %i.any = add nsw <4 x i32> %i.anu, %i.ant
  %i.anz = ashr <4 x i32> %i.any, splat (i32 1)   ; 3 uses
  %i.aoa = sub <4 x i32> %i.anv, %i.anx
  %i.aob = sub nsw <4 x i32> %i.ant, %i.anz       ; 2 uses
  %i.aoc = add nsw <4 x i32> %i.aoa, %i.aob
  %i.aod = ashr <4 x i32> %i.aoc, splat (i32 1)   ; 2 uses
  %i.aoe = sub nsw <4 x i32> %i.aob, %i.aod       ; 2 uses
  %i.aof = ashr <4 x i32> %i.aoe, splat (i32 1)
  %i.aog = add nsw <4 x i32> %i.aof, %i.aod       ; 2 uses
  %i.aoh = ashr <4 x i32> %i.aog, splat (i32 1)
  %i.aoi = sub nsw <4 x i32> %i.aoe, %i.aoh
  store <4 x i32> %i.aog, ptr %i.anr, align 16, !tbaa !12
  %i.aoj = add nsw <4 x i32> %i.anx, %i.anz
  %i.aok = ashr <4 x i32> %i.aoj, splat (i32 1)   ; 3 uses
  %8 = shufflevector <4 x i32> %i.aok, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %8, ptr %invariant.gep36.i.i.i.3, align 16, !tbaa !12
  %i.aol = sub nsw <4 x i32> %i.anz, %i.aok
  store <4 x i32> %i.aol, ptr %i.anq, align 16, !tbaa !12
  store <4 x i32> %i.aoi, ptr %i.anp, align 16, !tbaa !12
  %9 = shufflevector <4 x i32> %i.aok, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i32> %9, ptr %gep37.2.i.i.i.3, align 8, !tbaa !12
  br label %fwd_xform_int32_3.exit.i.i

fwd_xform_int32_3.exit.i.i:                       ; preds = %fwd_xform_int32_3.exit.i.i, %vector.body324
  %.04.i.i.i16 = phi ptr [ %i.a, %vector.body324 ], [ %i.apr, %fwd_xform_int32_3.exit.i.i ] ; 5 uses
  %.03.i.i.i17 = phi ptr [ @perm_3, %vector.body324 ], [ %i.apk, %fwd_xform_int32_3.exit.i.i ] ; 5 uses
  %.0.i.i.i18 = phi i32 [ 64, %vector.body324 ], [ %i.aps, %fwd_xform_int32_3.exit.i.i ]
  %i.aom = getelementptr inbounds nuw i8, ptr %.03.i.i.i17, i64 1
  %i.aon = load i8, ptr %.03.i.i.i17, align 1, !tbaa !34
  %i.aoo = zext i8 %i.aon to i64
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aoo
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !12
  %i.aor = add i32 %i.aoq, -1431655766
  %i.aos = xor i32 %i.aor, -1431655766
  %i.aot = getelementptr inbounds nuw i8, ptr %.04.i.i.i16, i64 4
  store i32 %i.aos, ptr %.04.i.i.i16, align 4, !tbaa !12
  %i.aou = getelementptr inbounds nuw i8, ptr %.03.i.i.i17, i64 2
  %i.aov = load i8, ptr %i.aom, align 1, !tbaa !34
  %i.aow = zext i8 %i.aov to i64
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !12
  %i.aoz = add i32 %i.aoy, -1431655766
  %i.apa = xor i32 %i.aoz, -1431655766
  %i.apb = getelementptr inbounds nuw i8, ptr %.04.i.i.i16, i64 8
  store i32 %i.apa, ptr %i.aot, align 4, !tbaa !12
  %i.apc = getelementptr inbounds nuw i8, ptr %.03.i.i.i17, i64 3
  %i.apd = load i8, ptr %i.aou, align 1, !tbaa !34
  %i.ape = zext i8 %i.apd to i64
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ape
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !12
  %i.aph = add i32 %i.apg, -1431655766
  %i.api = xor i32 %i.aph, -1431655766
  %i.apj = getelementptr inbounds nuw i8, ptr %.04.i.i.i16, i64 12
  store i32 %i.api, ptr %i.apb, align 4, !tbaa !12
  %i.apk = getelementptr inbounds nuw i8, ptr %.03.i.i.i17, i64 4
  %i.apl = load i8, ptr %i.apc, align 1, !tbaa !34
  %i.apm = zext i8 %i.apl to i64
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.apm
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !12
  %i.app = add i32 %i.apo, -1431655766
  %i.apq = xor i32 %i.app, -1431655766
  %i.apr = getelementptr inbounds nuw i8, ptr %.04.i.i.i16, i64 16
  store i32 %i.apq, ptr %i.apj, align 4, !tbaa !12
  %i.aps = add nsw i32 %.0.i.i.i18, -4            ; 2 uses
  %.not.i.i.i19.3 = icmp eq i32 %i.aps, 0
  br i1 %.not.i.i.i19.3, label %fwd_order_int32.exit.i.i20, label %fwd_xform_int32_3.exit.i.i

fwd_order_int32.exit.i.i20:                       ; preds = %fwd_xform_int32_3.exit.i.i
  %i.apt = tail call i32 @llvm.usub.sat.i32(i32 %i.aeg, i32 9) ; 3 uses
  %i.apu = add i32 %i.aei, -9
  %i.apv = call fastcc i32 @encode_ints_uint32(ptr noundef nonnull %i.abl, i32 noundef %i.apu, i32 noundef range(i32 0, -2147483648) %i.abi, ptr noundef %i.a) ; 3 uses
  %i.apw = icmp ult i32 %i.apv, %i.apt
  br i1 %i.apw, label %bb.s, label %encode_block_int32_3.exit.i

bb.s:                                             ; preds = %fwd_order_int32.exit.i.i20
  %i.apx = sub nuw i32 %i.apt, %i.apv
  %i.apy = zext i32 %i.apx to i64
  %i.apz = load i64, ptr %i.abl, align 8, !tbaa !28
  %i.aqa = add i64 %i.apz, %i.apy                 ; 5 uses
  %i.aqb = icmp ugt i64 %i.aqa, 63
  br i1 %i.aqb, label %.lr.ph.i.i.i23, label %stream_pad.exit.i.i21

.lr.ph.i.i.i23:                                   ; preds = %bb.s
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.abl, i64 16 ; 2 uses
  %.promoted.i.i.i24 = load ptr, ptr %i.aqc, align 8, !tbaa !30 ; 3 uses
  %.pre.i.i.i25 = load i64, ptr %i.abr, align 8, !tbaa !29
  %i.aqd = getelementptr i8, ptr %.promoted.i.i.i24, i64 8 ; 2 uses
  store i64 %.pre.i.i.i25, ptr %.promoted.i.i.i24, align 8, !tbaa !15
  store i64 0, ptr %i.abr, align 8, !tbaa !29
  %i.aqe = add i64 %i.aqa, -64                    ; 2 uses
  %i.aqf = icmp ugt i64 %i.aqe, 63
  br i1 %i.aqf, label %.peel.next.i.preheader.i28, label %._crit_edge.i.i.i26

.peel.next.i.preheader.i28:                       ; preds = %.lr.ph.i.i.i23
  %i.aqg = add i64 %i.aqa, -128                   ; 2 uses
  %i.aqh = lshr i64 %i.aqg, 3
  %i.aqi = and i64 %i.aqh, 2305843009213693944
  %i.aqj = add nuw nsw i64 %i.aqi, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aqd, i8 0, i64 %i.aqj, i1 false), !tbaa !15
  store i64 0, ptr %i.abr, align 8, !tbaa !29
  %i.aqk = lshr i64 %i.aqg, 3
  %i.aql = and i64 %i.aqk, 2305843009213693944
  %i.aqm = getelementptr i8, ptr %.promoted.i.i.i24, i64 %i.aql
  %scevgep = getelementptr i8, ptr %i.aqm, i64 16
  %i.aqn = and i64 %i.aqa, 63
  br label %._crit_edge.i.i.i26

._crit_edge.i.i.i26:                              ; preds = %.peel.next.i.preheader.i28, %.lr.ph.i.i.i23
  %.lcssa25.i.i = phi ptr [ %i.aqd, %.lr.ph.i.i.i23 ], [ %scevgep, %.peel.next.i.preheader.i28 ]
  %.lcssa.i.i27 = phi i64 [ %i.aqe, %.lr.ph.i.i.i23 ], [ %i.aqn, %.peel.next.i.preheader.i28 ]
  store ptr %.lcssa25.i.i, ptr %i.aqc, align 8, !tbaa !30
  br label %stream_pad.exit.i.i21

stream_pad.exit.i.i21:                            ; preds = %._crit_edge.i.i.i26, %bb.s
  %.0.lcssa.i.i.i22 = phi i64 [ %.lcssa.i.i27, %._crit_edge.i.i.i26 ], [ %i.aqa, %bb.s ]
  store i64 %.0.lcssa.i.i.i22, ptr %i.abl, align 8, !tbaa !28
  br label %encode_block_int32_3.exit.i

encode_block_int32_3.exit.i:                      ; preds = %stream_pad.exit.i.i21, %fwd_order_int32.exit.i.i20
  %.0.i39.i = phi i32 [ %i.apt, %stream_pad.exit.i.i21 ], [ %i.apv, %fwd_order_int32.exit.i.i20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.aqo = add i32 %.0.i39.i, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %encode_block_float_3.exit

bb.t:                                             ; preds = %exponent_block_float.exit.i10
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !26 ; 5 uses
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !28
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  %i.aqt = load i64, ptr %i.aqs, align 8, !tbaa !29
  %i.aqu = add i64 %i.aqr, 1                      ; 2 uses
  store i64 %i.aqu, ptr %i.aqq, align 8, !tbaa !28
  %i.aqv = icmp eq i64 %i.aqu, 64
  br i1 %i.aqv, label %bb.u, label %stream_write_bit.exit.i31

bb.u:                                             ; preds = %bb.t
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16 ; 2 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !30 ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  store ptr %i.aqy, ptr %i.aqw, align 8, !tbaa !30
  store i64 %i.aqt, ptr %i.aqx, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqq, i8 0, i64 16, i1 false)
  br label %stream_write_bit.exit.i31

stream_write_bit.exit.i31:                        ; preds = %bb.u, %bb.t
  %i.aqz = load i32, ptr %0, align 8, !tbaa !31   ; 3 uses
  %i.ara = icmp ugt i32 %i.aqz, 1
  br i1 %i.ara, label %bb.v, label %encode_block_float_3.exit

bb.v:                                             ; preds = %stream_write_bit.exit.i31
  %i.arb = load ptr, ptr %i.aqp, align 8, !tbaa !26 ; 4 uses
  %i.arc = add i32 %i.aqz, -1
  %i.ard = zext i32 %i.arc to i64                 ; 2 uses
  %i.are = load i64, ptr %i.arb, align 8, !tbaa !28 ; 2 uses
  %i.arf = add i64 %i.are, %i.ard                 ; 4 uses
  %i.arg = icmp ugt i64 %i.arf, 63
  br i1 %i.arg, label %.lr.ph.i.i, label %stream_pad.exit.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arb, i64 8 ; 3 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arb, i64 16 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.ari, align 8, !tbaa !30 ; 2 uses
  %.pre.i.i = load i64, ptr %i.arh, align 8, !tbaa !29
  %i.arj = getelementptr i8, ptr %.promoted.i.i, i64 8 ; 4 uses
  store i64 %.pre.i.i, ptr %.promoted.i.i, align 8, !tbaa !15
  store i64 0, ptr %i.arh, align 8, !tbaa !29
  %i.ark = add i64 %i.arf, -64                    ; 4 uses
  %i.arl = icmp ugt i64 %i.ark, 63
  br i1 %i.arl, label %.peel.next.i.preheader, label %._crit_edge.i.i

.peel.next.i.preheader:                           ; preds = %.lr.ph.i.i
  %i.arm = add i64 %i.arf, -128
  %i.arn = lshr i64 %i.arm, 3
  %i.aro = and i64 %i.arn, 2305843009213693944
  %i.arp = add nuw nsw i64 %i.aro, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.arj, i8 0, i64 %i.arp, i1 false), !tbaa !15
  store i64 0, ptr %i.arh, align 8, !tbaa !29
  %i.arq = add i64 %i.are, %i.ard
  %i.arr = add i64 %i.arq, -128                   ; 2 uses
  %i.ars = lshr i64 %i.arr, 6
  %i.art = add nuw nsw i64 %i.ars, 1
  %xtraiter = and i64 %i.art, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol

.peel.next.i.prol:                                ; preds = %.peel.next.i.preheader, %.peel.next.i.prol
  %i.aru = phi ptr [ %i.arv, %.peel.next.i.prol ], [ %i.arj, %.peel.next.i.preheader ]
  %.09.i.i.prol = phi i64 [ %i.arw, %.peel.next.i.prol ], [ %i.ark, %.peel.next.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.peel.next.i.prol ], [ 0, %.peel.next.i.preheader ]
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 8 ; 3 uses
  %i.arw = add i64 %.09.i.i.prol, -64             ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.peel.next.i.prol.loopexit, label %.peel.next.i.prol, !llvm.loop !20

.peel.next.i.prol.loopexit:                       ; preds = %.peel.next.i.prol, %.peel.next.i.preheader
  %.unr = phi ptr [ %i.arj, %.peel.next.i.preheader ], [ %i.arv, %.peel.next.i.prol ]
  %.09.i.i.unr = phi i64 [ %i.ark, %.peel.next.i.preheader ], [ %i.arw, %.peel.next.i.prol ]
  %.lcssa393.unr = phi ptr [ poison, %.peel.next.i.preheader ], [ %i.arv, %.peel.next.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.peel.next.i.preheader ], [ %i.arw, %.peel.next.i.prol ]
  %i.arx = icmp ult i64 %i.arr, 448
  br i1 %i.arx, label %._crit_edge.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i
  %i.ary = phi ptr [ %i.arz, %.peel.next.i ], [ %.unr, %.peel.next.i.prol.loopexit ]
  %.09.i.i = phi i64 [ %i.asa, %.peel.next.i ], [ %.09.i.i.unr, %.peel.next.i.prol.loopexit ]
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 64 ; 2 uses
  %i.asa = add i64 %.09.i.i, -512                 ; 3 uses
  %i.asb = icmp ugt i64 %i.asa, 63
  br i1 %i.asb, label %.peel.next.i, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.peel.next.i.prol.loopexit, %.peel.next.i, %.lr.ph.i.i
  %.lcssa54.i = phi ptr [ %i.arj, %.lr.ph.i.i ], [ %.lcssa393.unr, %.peel.next.i.prol.loopexit ], [ %i.arz, %.peel.next.i ]
  %.lcssa.i = phi i64 [ %i.ark, %.lr.ph.i.i ], [ %.lcssa.unr, %.peel.next.i.prol.loopexit ], [ %i.asa, %.peel.next.i ]
  store ptr %.lcssa54.i, ptr %i.ari, align 8, !tbaa !30
  br label %stream_pad.exit.i

stream_pad.exit.i:                                ; preds = %._crit_edge.i.i, %bb.v
  %.0.lcssa.i.i = phi i64 [ %.lcssa.i, %._crit_edge.i.i ], [ %i.arf, %bb.v ]
  store i64 %.0.lcssa.i.i, ptr %i.arb, align 8, !tbaa !28
end_hunk_1
