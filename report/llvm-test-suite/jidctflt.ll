Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jidctflt?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @jpeg_idct_float(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x float], align 16            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  br label %bb.b

.preheader:                                       ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 8 uses
  %i.g = zext i32 %4 to i64
  br label %bb.f

bb.b:                                             ; preds = %bb.a, %bb.e
  %.0204 = phi i32 [ 8, %bb.a ], [ %i.df, %bb.e ] ; 2 uses
  %.0195203 = phi ptr [ %i.a, %bb.a ], [ %.1196, %bb.e ] ; 13 uses
  %.0197202 = phi ptr [ %i.e, %bb.a ], [ %.1198, %bb.e ] ; 9 uses
  %.0199201 = phi ptr [ %2, %bb.a ], [ %.1200, %bb.e ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0199201, i64 16
  %i.i = load i16, ptr %i.h, align 2, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0199201, i64 32
  %i.k = load i16, ptr %i.j, align 2, !tbaa !36   ; 2 uses
  %i.l = or i16 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0199201, i64 48
  %i.n = load i16, ptr %i.m, align 2, !tbaa !36   ; 2 uses
  %i.o = or i16 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.0199201, i64 64
  %i.q = load i16, ptr %i.p, align 2, !tbaa !36   ; 2 uses
  %i.r = or i16 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0199201, i64 80
  %i.t = load i16, ptr %i.s, align 2, !tbaa !36   ; 2 uses
  %i.u = or i16 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.0199201, i64 96
  %i.w = load i16, ptr %i.v, align 2, !tbaa !36   ; 2 uses
  %i.x = or i16 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0199201, i64 112
  %i.z = load i16, ptr %i.y, align 2, !tbaa !36   ; 2 uses
  %i.aa = or i16 %i.x, %i.z
  %i.ab = icmp eq i16 %i.aa, 0
  %i.ac = load i16, ptr %.0199201, align 2, !tbaa !36
  %i.ad = sitofp i16 %i.ac to float
  %i.ae = load float, ptr %.0197202, align 4, !tbaa !38
  %i.af = fmul float %i.ae, %i.ad                 ; 10 uses
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.af, ptr %.0195203, align 4, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %.0195203, i64 32
  store float %i.af, ptr %i.ag, align 4, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %.0195203, i64 64
  store float %i.af, ptr %i.ah, align 4, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %.0195203, i64 96
  store float %i.af, ptr %i.ai, align 4, !tbaa !38
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aj = sitofp i16 %i.k to float
  %i.ak = getelementptr inbounds nuw i8, ptr %.0197202, i64 64
  %i.al = load float, ptr %i.ak, align 4, !tbaa !38
  %i.am = fmul float %i.al, %i.aj                 ; 2 uses
  %i.an = sitofp i16 %i.q to float
  %i.ao = getelementptr inbounds nuw i8, ptr %.0197202, i64 128
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !38
  %i.aq = fmul float %i.ap, %i.an                 ; 2 uses
  %i.ar = sitofp i16 %i.w to float
  %i.as = getelementptr inbounds nuw i8, ptr %.0197202, i64 192
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  %i.au = fmul float %i.at, %i.ar                 ; 2 uses
  %i.av = fadd float %i.af, %i.aq                 ; 2 uses
  %i.aw = fsub float %i.af, %i.aq                 ; 2 uses
  %i.ax = fadd float %i.am, %i.au                 ; 3 uses
  %i.ay = fsub float %i.am, %i.au
  %i.az = fneg float %i.ax
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ay, float f0x3FB504F3, float %i.az) ; 2 uses
  %i.bb = fadd float %i.av, %i.ax                 ; 2 uses
  %i.bc = fsub float %i.av, %i.ax                 ; 2 uses
  %i.bd = fadd float %i.aw, %i.ba                 ; 2 uses
  %i.be = fsub float %i.aw, %i.ba                 ; 2 uses
  %i.bf = insertelement <4 x i16> poison, i16 %i.n, i64 0
  %i.bg = insertelement <4 x i16> %i.bf, i16 %i.t, i64 1
  %i.bh = insertelement <4 x i16> %i.bg, i16 %i.i, i64 2
  %i.bi = insertelement <4 x i16> %i.bh, i16 %i.z, i64 3
  %i.bj = sitofp <4 x i16> %i.bi to <4 x float>
  %i.bk = getelementptr inbounds nuw i8, ptr %.0197202, i64 32
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %.0197202, i64 96
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.0197202, i64 160
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %.0197202, i64 224
  %i.br = load float, ptr %i.bq, align 4, !tbaa !38
  %i.bs = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bl, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = fmul <4 x float> %i.bv, %i.bj           ; 6 uses
  %shift = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bw, %shift
  %i.bx = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift214 = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop215 = fadd <4 x float> %i.bw, %shift214
  %i.by = extractelement <4 x float> %foldExtExtBinop215, i64 2 ; 2 uses
  %i.bz = fadd float %i.bx, %i.by                 ; 3 uses
  %i.ca = fsub float %i.by, %i.bx
  %i.cb = fmul float %i.ca, f0x3FB504F3
  %i.cc = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cd = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ce = fsub <2 x float> %i.cc, %i.cd           ; 3 uses
  %shift217 = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop218 = fadd <2 x float> %i.ce, %shift217
  %i.cf = extractelement <2 x float> %foldExtExtBinop218, i64 0
  %i.cg = fmul float %i.cf, f0x3FEC835E           ; 2 uses
  %i.ch = fneg float %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ch, i64 1
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> <float f0xC0273D75, float f0x3F8A8BD4>, <2 x float> %i.cj) ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  %i.cm = fsub float %i.cl, %i.bz                 ; 3 uses
  %i.cn = fsub float %i.cb, %i.cm                 ; 3 uses
  %i.co = extractelement <2 x float> %i.ck, i64 1
  %i.cp = fadd float %i.co, %i.cn                 ; 2 uses
  %i.cq = fadd float %i.bb, %i.bz
  store float %i.cq, ptr %.0195203, align 4, !tbaa !38
  %i.cr = fsub float %i.bb, %i.bz
  %i.cs = fadd float %i.bd, %i.cm
  %i.ct = getelementptr inbounds nuw i8, ptr %.0195203, i64 32
  store float %i.cs, ptr %i.ct, align 4, !tbaa !38
  %i.cu = fsub float %i.bd, %i.cm
  %i.cv = fadd float %i.be, %i.cn
  %i.cw = getelementptr inbounds nuw i8, ptr %.0195203, i64 64
  store float %i.cv, ptr %i.cw, align 4, !tbaa !38
  %i.cx = fsub float %i.be, %i.cn
  %i.cy = fadd float %i.bc, %i.cp
  %i.cz = getelementptr inbounds nuw i8, ptr %.0195203, i64 128
  store float %i.cy, ptr %i.cz, align 4, !tbaa !38
  %i.da = fsub float %i.bc, %i.cp
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink212 = phi i64 [ 96, %bb.d ], [ 128, %bb.c ]
  %.sink210 = phi float [ %i.da, %bb.d ], [ %i.af, %bb.c ]
  %.sink209 = phi float [ %i.cx, %bb.d ], [ %i.af, %bb.c ]
  %.sink208 = phi float [ %i.cu, %bb.d ], [ %i.af, %bb.c ]
  %.sink = phi float [ %i.cr, %bb.d ], [ %i.af, %bb.c ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0195203, i64 %.sink212
  store float %.sink210, ptr %i.db, align 4, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %.0195203, i64 160
  store float %.sink209, ptr %i.dc, align 4, !tbaa !38
  %i.dd = getelementptr inbounds nuw i8, ptr %.0195203, i64 192
  store float %.sink208, ptr %i.dd, align 4, !tbaa !38
  %i.de = getelementptr inbounds nuw i8, ptr %.0195203, i64 224
  store float %.sink, ptr %i.de, align 4, !tbaa !38
  %.1196 = getelementptr inbounds nuw i8, ptr %.0195203, i64 4
  %.1198 = getelementptr inbounds nuw i8, ptr %.0197202, i64 4
  %.1200 = getelementptr inbounds nuw i8, ptr %.0199201, i64 2
  %i.df = add nsw i32 %.0204, -1
  %i.dg = icmp samesign ugt i32 %.0204, 1
  br i1 %i.dg, label %bb.b, label %.preheader, !llvm.loop !8

bb.f:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.2205 = phi ptr [ %i.a, %.preheader ], [ %i.gn, %bb.f ] ; 9 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.g ; 8 uses
  %5 = load float, ptr %.2205, align 4, !tbaa !38 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.2205, i64 16
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !38 ; 2 uses
  %6 = fadd float %5, %i.dl                       ; 2 uses
  %7 = fsub float %5, %i.dl                       ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.2205, i64 8
  %8 = load float, ptr %i.dm, align 4, !tbaa !38  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.2205, i64 24
  %i.do = load float, ptr %i.dn, align 4, !tbaa !38 ; 2 uses
  %9 = fadd float %8, %i.do                       ; 3 uses
  %10 = fsub float %8, %i.do
  %11 = fneg float %9
  %12 = tail call float @llvm.fmuladd.f32(float %10, float f0x3FB504F3, float %11) ; 2 uses
  %13 = fadd float %6, %9                         ; 2 uses
  %14 = fsub float %6, %9                         ; 2 uses
  %15 = fadd float %7, %12                        ; 2 uses
  %16 = fsub float %7, %12                        ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %.2205, i64 20
  %18 = load float, ptr %17, align 4, !tbaa !38   ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %.2205, i64 12
  %20 = load float, ptr %19, align 4, !tbaa !38   ; 2 uses
  %21 = fadd float %18, %20                       ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %.2205, i64 4
  %23 = load float, ptr %22, align 4, !tbaa !38   ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %.2205, i64 28
  %25 = load float, ptr %24, align 4, !tbaa !38   ; 2 uses
  %i.dp = fadd float %23, %25                     ; 2 uses
  %26 = fadd float %21, %i.dp                     ; 3 uses
  %27 = fsub float %i.dp, %21
  %28 = fmul float %27, f0x3FB504F3
  %29 = insertelement <2 x float> poison, float %23, i64 0
  %30 = insertelement <2 x float> %29, float %18, i64 1
  %31 = insertelement <2 x float> poison, float %25, i64 0
  %i.dq = insertelement <2 x float> %31, float %20, i64 1
  %i.dr = fsub <2 x float> %30, %i.dq             ; 3 uses
  %shift220 = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop221 = fadd <2 x float> %shift220, %i.dr
  %i.ds = extractelement <2 x float> %foldExtExtBinop221, i64 0
  %i.dt = fmul float %i.ds, f0x3FEC835E           ; 2 uses
  %i.du = fneg float %i.dt
  %i.dv = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.dt, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> <float f0x3F8A8BD4, float f0xC0273D75>, <2 x float> %i.dw) ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 1
  %32 = fsub float %i.dy, %26                     ; 3 uses
  %i.dz = fsub float %28, %32                     ; 3 uses
  %i.ea = extractelement <2 x float> %i.dx, i64 0
  %i.eb = fadd float %i.ea, %i.dz                 ; 2 uses
  %i.ec = fadd float %13, %26
  %i.ed = fptosi float %i.ec to i64
  %i.ee = add i64 %i.ed, 4
  %i.ef = lshr i64 %i.ee, 3
  %i.eg = and i64 %i.ef, 1023
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !41
  store i8 %i.ei, ptr %i.dj, align 1, !tbaa !41
  %i.ej = fsub float %13, %26
  %i.ek = fptosi float %i.ej to i64
  %i.el = add i64 %i.ek, 4
  %i.em = lshr i64 %i.el, 3
  %i.en = and i64 %i.em, 1023
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dj, i64 7
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !41
  %i.er = fadd float %15, %32
  %i.es = fptosi float %i.er to i64
  %i.et = add i64 %i.es, 4
  %i.eu = lshr i64 %i.et, 3
  %i.ev = and i64 %i.eu, 1023
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !41
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !41
  %i.ez = fsub float %15, %32
  %i.fa = fptosi float %i.ez to i64
  %i.fb = add i64 %i.fa, 4
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = and i64 %i.fc, 1023
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !41
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !41
  %i.fh = fadd float %16, %i.dz
  %i.fi = fptosi float %i.fh to i64
  %i.fj = add i64 %i.fi, 4
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = and i64 %i.fk, 1023
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !41
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !41
  %i.fp = fsub float %16, %i.dz
  %i.fq = fptosi float %i.fp to i64
  %i.fr = add i64 %i.fq, 4
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = and i64 %i.fs, 1023
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dj, i64 5
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !41
  %i.fx = fadd float %14, %i.eb
  %i.fy = fptosi float %i.fx to i64
  %i.fz = add i64 %i.fy, 4
  %i.ga = lshr i64 %i.fz, 3
  %i.gb = and i64 %i.ga, 1023
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !41
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !41
  %i.gf = fsub float %14, %i.eb
  %i.gg = fptosi float %i.gf to i64
  %i.gh = add i64 %i.gg, 4
  %i.gi = lshr i64 %i.gh, 3
  %i.gj = and i64 %i.gi, 1023
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !41
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !41
  %i.gn = getelementptr inbounds nuw i8, ptr %.2205, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.g, label %bb.f, !llvm.loop !9

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!14 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p2 omnipotent char", !16, i64 0}
!18 = !{!"p1 int", !10, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!"jpeg_decompress_struct", !11, i64 0, !12, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !14, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !15, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !17, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !18, i64 184, !5, i64 192, !5, i64 224, !5, i64 256, !6, i64 288, !10, i64 296, !6, i64 304, !6, i64 308, !5, i64 312, !5, i64 328, !5, i64 344, !6, i64 360, !6, i64 364, !5, i64 368, !19, i64 370, !19, i64 372, !6, i64 376, !5, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !20, i64 408, !6, i64 416, !5, i64 424, !6, i64 456, !6, i64 460, !6, i64 464, !5, i64 468, !6, i64 508, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !26, i64 568, !27, i64 576, !28, i64 584, !29, i64 592, !30, i64 600, !31, i64 608}
!33 = !{!32, !20, i64 408}
!34 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !10, i64 80, !10, i64 88}
!35 = !{!34, !10, i64 88}
!36 = !{!19, !19, i64 0}
!37 = !{!"float", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!20, !20, i64 0}
!41 = !{!5, !5, i64 0}
end_hunk_0
