Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@imdct_step3_inner_r_loop:bb.a
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !56
  %i.bn = fadd float %i.bh, %i.bm
  store float %i.bn, ptr %i.bg, align 4, !tbaa !56
  %i.bo = load float, ptr %i.ba, align 4, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !56
  %i.br = fneg float %i.bq
  %i.bs = fmul float %i.bk, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bo, float %i.bs)
  store float %i.bt, ptr %i.bd, align 4, !tbaa !56
  %i.bu = load float, ptr %i.ba, align 4, !tbaa !56
  %i.bv = load float, ptr %i.bp, align 4, !tbaa !56
  %i.bw = fmul float %i.bf, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bu, float %i.bw)
  store float %i.bx, ptr %i.bi, align 4, !tbaa !56
  %i.by = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.g ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %.08893, i64 -24 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !56 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.094, i64 -24 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !56 ; 2 uses
  %i.cd = fsub float %i.ca, %i.cc                 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.08893, i64 -28 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !56 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.094, i64 -28 ; 3 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !56
  %i.ci = fsub float %i.cf, %i.ch                 ; 2 uses
  %i.cj = fadd float %i.ca, %i.cc
  store float %i.cj, ptr %i.bz, align 4, !tbaa !56
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !56
  %i.cl = fadd float %i.cf, %i.ck
  store float %i.cl, ptr %i.ce, align 4, !tbaa !56
  %i.cm = load float, ptr %i.by, align 4, !tbaa !56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !56
  %i.cp = fneg float %i.co
  %i.cq = fmul float %i.ci, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cm, float %i.cq)
  store float %i.cr, ptr %i.cb, align 4, !tbaa !56
  %i.cs = load float, ptr %i.by, align 4, !tbaa !56
  %i.ct = load float, ptr %i.cn, align 4, !tbaa !56
  %i.cu = fmul float %i.cd, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cs, float %i.cu)
  store float %i.cv, ptr %i.cg, align 4, !tbaa !56
  %i.cw = getelementptr inbounds i8, ptr %.08893, i64 -32
  %i.cx = getelementptr inbounds i8, ptr %.094, i64 -32
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.g
  %i.cz = add nsw i32 %.08992, -1
  %i.da = icmp samesign ugt i32 %.08992, 1
  br i1 %i.da, label %bb.b, label %._crit_edge, !llvm.loop !183

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @imdct_step3_inner_s_loop(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul nsw i32 %5, 3
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %4, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !56 ; 2 uses
  %i.g = load float, ptr %i.d, align 4, !tbaa !56
  %i.h = shl nsw i32 %5, 1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %4, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !56 ; 2 uses
  %i.m = load float, ptr %i.j, align 4, !tbaa !56
  %i.n = sext i32 %5 to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %4, i64 %i.n ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !56 ; 2 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !56 ; 2 uses
  %i.u = load float, ptr %4, align 4, !tbaa !56
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.x = sext i32 %3 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = fneg float %i.t
  %i.aa = fneg float %i.q
  %i.ab = fneg float %i.l
  %i.ac = fneg float %i.f
  %i.ad = sext i32 %6 to i64
  %i.ae = sub nsw i64 0, %i.ad                    ; 2 uses
  %i.af = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.f, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.l, i64 1
  %i.an = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.q, i64 1
  %i.ar = insertelement <2 x float> poison, float %i.u, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x float> poison, float %i.z, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.t, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0108 = phi ptr [ %i.y, %.lr.ph ], [ %i.dg, %bb.b ] ; 9 uses
  %.0104107 = phi ptr [ %i.w, %.lr.ph ], [ %i.df, %bb.b ] ; 9 uses
  %.0105106 = phi i32 [ %0, %.lr.ph ], [ %i.dh, %bb.b ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.0104107, i64 -4 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.0108, i64 -4 ; 3 uses
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !56 ; 3 uses
  %i.ay = load float, ptr %.0108, align 4, !tbaa !56
  %i.az = load <2 x float>, ptr %i.aw, align 4, !tbaa !56
  %i.ba = fsub <2 x float> %i.ax, %i.az           ; 2 uses
  %i.bb = extractelement <2 x float> %i.ax, i64 1
  %i.bc = fadd float %i.bb, %i.ay
  store float %i.bc, ptr %.0104107, align 4, !tbaa !56
  %i.bd = load float, ptr %i.aw, align 4, !tbaa !56
  %i.be = extractelement <2 x float> %i.ax, i64 0
  %i.bf = fadd float %i.be, %i.bd
  store float %i.bf, ptr %i.av, align 4, !tbaa !56
  %i.bg = fmul <2 x float> %i.au, %i.ba
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.as, <2 x float> %i.bh)
  store <2 x float> %i.bi, ptr %i.aw, align 4, !tbaa !56
  %i.bj = getelementptr inbounds i8, ptr %.0104107, i64 -8
  %i.bk = getelementptr inbounds i8, ptr %.0108, i64 -8
  %i.bl = getelementptr inbounds i8, ptr %.0104107, i64 -12 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.0108, i64 -12 ; 3 uses
  %i.bn = load <2 x float>, ptr %i.bl, align 4, !tbaa !56 ; 3 uses
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !56
  %i.bp = load <2 x float>, ptr %i.bm, align 4, !tbaa !56
  %i.bq = fsub <2 x float> %i.bn, %i.bp           ; 2 uses
  %i.br = extractelement <2 x float> %i.bn, i64 1
  %i.bs = fadd float %i.br, %i.bo
  store float %i.bs, ptr %i.bj, align 4, !tbaa !56
  %i.bt = load float, ptr %i.bm, align 4, !tbaa !56
  %i.bu = extractelement <2 x float> %i.bn, i64 0
  %i.bv = fadd float %i.bu, %i.bt
  store float %i.bv, ptr %i.bl, align 4, !tbaa !56
  %i.bw = fmul <2 x float> %i.aq, %i.bq
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.ao, <2 x float> %i.bx)
  store <2 x float> %i.by, ptr %i.bm, align 4, !tbaa !56
  %i.bz = getelementptr inbounds i8, ptr %.0104107, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %.0108, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %.0104107, i64 -20 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.0108, i64 -20 ; 3 uses
  %i.cd = load <2 x float>, ptr %i.cb, align 4, !tbaa !56 ; 3 uses
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !56
  %i.cf = load <2 x float>, ptr %i.cc, align 4, !tbaa !56
  %i.cg = fsub <2 x float> %i.cd, %i.cf           ; 2 uses
  %i.ch = extractelement <2 x float> %i.cd, i64 1
  %i.ci = fadd float %i.ch, %i.ce
  store float %i.ci, ptr %i.bz, align 4, !tbaa !56
  %i.cj = load float, ptr %i.cc, align 4, !tbaa !56
  %i.ck = extractelement <2 x float> %i.cd, i64 0
  %i.cl = fadd float %i.ck, %i.cj
  store float %i.cl, ptr %i.cb, align 4, !tbaa !56
  %i.cm = fmul <2 x float> %i.am, %i.cg
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ak, <2 x float> %i.cn)
  store <2 x float> %i.co, ptr %i.cc, align 4, !tbaa !56
  %i.cp = getelementptr inbounds i8, ptr %.0104107, i64 -24
  %i.cq = getelementptr inbounds i8, ptr %.0108, i64 -24
  %i.cr = getelementptr inbounds i8, ptr %.0104107, i64 -28 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.0108, i64 -28 ; 3 uses
  %i.ct = load <2 x float>, ptr %i.cr, align 4, !tbaa !56 ; 3 uses
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !56
  %i.cv = load <2 x float>, ptr %i.cs, align 4, !tbaa !56
  %i.cw = fsub <2 x float> %i.ct, %i.cv           ; 2 uses
  %i.cx = extractelement <2 x float> %i.ct, i64 1
  %i.cy = fadd float %i.cx, %i.cu
  store float %i.cy, ptr %i.cp, align 4, !tbaa !56
  %i.cz = load float, ptr %i.cs, align 4, !tbaa !56
  %i.da = extractelement <2 x float> %i.ct, i64 0
  %i.db = fadd float %i.da, %i.cz
  store float %i.db, ptr %i.cr, align 4, !tbaa !56
  %i.dc = fmul <2 x float> %i.ai, %i.cw
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.de = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ag, <2 x float> %i.dd)
  store <2 x float> %i.de, ptr %i.cs, align 4, !tbaa !56
  %i.df = getelementptr inbounds [4 x i8], ptr %.0104107, i64 %i.ae
  %i.dg = getelementptr inbounds [4 x i8], ptr %.0108, i64 %i.ae
  %i.dh = add nsw i32 %.0105106, -1
  %i.di = icmp samesign ugt i32 %.0105106, 1
  br i1 %i.di, label %bb.b, label %._crit_edge, !llvm.loop !184

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @imdct_step3_inner_s_loop_ld654(i32 noundef %0, ptr nofree noundef captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #21 {
bb.a:
  %5 = ashr i32 %4, 3
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %3, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !56     ; 4 uses
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = shl nsw i32 %0, 4
  %i.d = sext i32 %i.c to i64
  %.neg = mul nsw i64 %i.d, -4
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %.neg
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = fneg float %8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.075 = phi ptr [ %i.b, %.lr.ph ], [ %i.ad, %bb.b ] ; 9 uses
  %i.h = getelementptr inbounds i8, ptr %.075, i64 -4
  %i.i = getelementptr inbounds i8, ptr %.075, i64 -36
  %i.j = getelementptr inbounds i8, ptr %.075, i64 -12 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.075, i64 -44 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.075, i64 -20
  %i.m = getelementptr inbounds i8, ptr %.075, i64 -52
  %i.n = getelementptr inbounds i8, ptr %.075, i64 -28 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.075, i64 -60 ; 2 uses
  %i.p = load <2 x float>, ptr %i.h, align 4, !tbaa !56 ; 2 uses
  %i.q = load <2 x float>, ptr %i.i, align 4, !tbaa !56 ; 2 uses
  %i.r = fsub <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = load <2 x float>, ptr %i.l, align 4, !tbaa !56 ; 2 uses
  %i.t = load <2 x float>, ptr %i.m, align 4, !tbaa !56 ; 2 uses
  %9 = fsub <2 x float> %i.s, %i.t
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4, !tbaa !56 ; 2 uses
  %11 = load <2 x float>, ptr %i.k, align 4, !tbaa !56 ; 2 uses
  %12 = fsub <2 x float> %i.u, %11                ; 2 uses
  %13 = fadd <2 x float> %i.u, %11                ; 2 uses
  %14 = load <2 x float>, ptr %i.n, align 4, !tbaa !56 ; 2 uses
  %15 = load <2 x float>, ptr %i.o, align 4, !tbaa !56 ; 2 uses
  %16 = fsub <2 x float> %14, %15                 ; 2 uses
  %i.v = fadd <2 x float> %14, %15                ; 2 uses
  %i.w = fsub <2 x float> %13, %i.v
  %17 = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %18 = fadd <2 x float> %i.p, %i.q               ; 2 uses
  %19 = fadd <2 x float> %i.s, %i.t               ; 2 uses
  %i.x = fsub <2 x float> %18, %19
  %20 = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.y = fadd <2 x float> %13, %i.v
  %21 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.z = fadd <2 x float> %18, %19
  %22 = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %23 = fsub <4 x float> %22, %21
  %24 = fadd <4 x float> %22, %21
  %25 = shufflevector <4 x float> %23, <4 x float> %24, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %25, ptr %i.j, align 4, !tbaa !56
  %26 = fadd <4 x float> %20, %17
  %27 = fsub <4 x float> %20, %17
  %28 = shufflevector <4 x float> %26, <4 x float> %27, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %28, ptr %i.n, align 4, !tbaa !56
  %29 = fadd <2 x float> %i.r, %10                ; 2 uses
  %30 = fsub <2 x float> %i.r, %10                ; 2 uses
  %31 = shufflevector <2 x float> %29, <2 x float> %30, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %32 = extractelement <2 x float> %12, i64 0     ; 2 uses
  %33 = extractelement <2 x float> %12, i64 1     ; 2 uses
  %34 = fadd float %33, %32
  %35 = fsub float %32, %33
  %36 = fmul float %8, %34                        ; 2 uses
  %37 = fmul float %8, %35                        ; 2 uses
  %38 = extractelement <2 x float> %16, i64 0     ; 2 uses
  %39 = extractelement <2 x float> %16, i64 1     ; 2 uses
  %40 = fsub float %38, %39
  %41 = fadd float %39, %38
  %42 = fmul float %8, %40                        ; 2 uses
  %43 = fmul float %41, %i.g                      ; 2 uses
  %44 = fsub float %37, %43
  %45 = fsub float %36, %42
  %46 = shufflevector <2 x float> %30, <2 x float> %29, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %47 = fadd float %36, %42
  %48 = fadd float %37, %43
  %49 = insertelement <4 x float> poison, float %48, i64 0
  %50 = insertelement <4 x float> %49, float %47, i64 1
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %52 = fsub <4 x float> %46, %51
  %53 = fadd <4 x float> %46, %51
  %54 = shufflevector <4 x float> %52, <4 x float> %53, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %54, ptr %i.k, align 4, !tbaa !56
  %55 = insertelement <4 x float> poison, float %45, i64 0
  %56 = insertelement <4 x float> %55, float %44, i64 1
  %57 = shufflevector <4 x float> %56, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aa = fadd <4 x float> %31, %57
  %i.ab = fsub <4 x float> %31, %57
  %i.ac = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %i.ac, ptr %i.o, align 4, !tbaa !56
  %i.ad = getelementptr inbounds i8, ptr %.075, i64 -64 ; 2 uses
  %i.ae = icmp ugt ptr %i.ad, %i.e
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !185

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @inverse_mdct(ptr nofree noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #24 {
bb.a:
  %i.a = ashr i32 %1, 1                           ; 6 uses
  %i.b = ashr i32 %1, 2                           ; 2 uses
  %i.c = ashr i32 %1, 3                           ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl i32 %i.a, 2
  %i.i = add nsw i32 %i.h, 4
  %i.j = and i32 %i.i, -8
  %i.k = sub nsw i32 %i.e, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %setup_temp_malloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %i.d, align 4, !tbaa !24
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o
  br label %setup_temp_malloc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = sext i32 %i.a to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = alloca i8, i64 %i.r, align 16
  br label %setup_temp_malloc.exit

setup_temp_malloc.exit:                           ; preds = %bb.c, %bb.b, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.c ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1416
  %i.v = sext i32 %3 to i64                       ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62   ; 19 uses
  %i.y = sext i32 %i.a to i64                     ; 5 uses
  %i.z = getelementptr [4 x i8], ptr %i.t, i64 %i.y ; 10 uses
  %.idx = shl nsw i64 %i.y, 2                     ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %.0388423 = getelementptr i8, ptr %i.z, i64 -8  ; 5 uses
  %.not409424 = icmp eq i32 %i.a, 0
  br i1 %.not409424, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %setup_temp_malloc.exit
  %i.ab = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ac = lshr i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 128
  br i1 %min.iters.check, label %.lr.ph.preheader534, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ae = add nsw i64 %.idx, -8
  %i.af = add nsw i64 %.idx, -16                  ; 2 uses
  %i.ag = lshr exact i64 %i.af, 1
  %i.ah = and i64 %i.ag, 9223372036854775800      ; 2 uses
  %i.ai = sub i64 %i.ae, %i.ah
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ai ; 2 uses
  %i.aj = or i64 %i.af, 12
  %scevgep513 = getelementptr i8, ptr %0, i64 %i.aj
  %i.ak = getelementptr i8, ptr %i.x, i64 %i.ah
  %scevgep514 = getelementptr i8, ptr %i.ak, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep513
  %bound1 = icmp ult ptr %0, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0515 = icmp ult ptr %scevgep, %scevgep514
  %bound1516 = icmp ult ptr %i.x, %i.z
  %found.conflict517 = and i1 %bound0515, %bound1516
  %conflict.rdx = or i1 %found.conflict, %found.conflict517
  br i1 %conflict.rdx, label %.lr.ph.preheader534, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.al = and i64 %i.ad, 3                        ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.al
  %n.vec = sub nsw i64 %i.ad, %i.an               ; 4 uses
  %i.ao = mul i64 %n.vec, -8                      ; 2 uses
  %i.ap = getelementptr i8, ptr %.0388423, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.z, i64 %i.ao
  %i.ar = shl i64 %n.vec, 4
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.x, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.av = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.0388423, i64 %i.av
  %i.aw = shl i64 %index, 4                       ; 4 uses
  %next.gep518 = getelementptr i8, ptr %0, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw     ; 2 uses
  %next.gep519 = getelementptr i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %i.aw     ; 2 uses
  %next.gep520 = getelementptr i8, ptr %i.ay, i64 32 ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.aw     ; 2 uses
  %next.gep521 = getelementptr i8, ptr %i.az, i64 48 ; 2 uses
  %i.ba = shl i64 %index, 3
  %next.gep522 = getelementptr i8, ptr %i.x, i64 %i.ba ; 2 uses
  %i.bb = load float, ptr %next.gep518, align 4, !tbaa !56, !alias.scope !186
  %i.bc = load float, ptr %next.gep519, align 4, !tbaa !56, !alias.scope !186
  %i.bd = load float, ptr %next.gep520, align 4, !tbaa !56, !alias.scope !186
  %i.be = load float, ptr %next.gep521, align 4, !tbaa !56, !alias.scope !186
  %i.bf = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 3
  %wide.vec = load <8 x float>, ptr %next.gep522, align 4, !tbaa !56, !alias.scope !189 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep518, i64 8 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ax, i64 24     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ay, i64 40     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.az, i64 56     ; 2 uses
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !56, !alias.scope !186
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !56, !alias.scope !186
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !56, !alias.scope !186
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !56, !alias.scope !186
  %i.br = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  %i.bv = fneg <8 x float> %wide.vec
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bx = fmul <4 x float> %i.bu, %i.bw
  %i.by = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %strided.vec, <4 x float> %i.bx)
  %i.bz = load float, ptr %next.gep518, align 4, !tbaa !56, !alias.scope !186
  %i.ca = load float, ptr %next.gep519, align 4, !tbaa !56, !alias.scope !186
  %i.cb = load float, ptr %next.gep520, align 4, !tbaa !56, !alias.scope !186
  %i.cc = load float, ptr %next.gep521, align 4, !tbaa !56, !alias.scope !186
  %i.cd = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 1
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 2
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 3
  %wide.vec524 = load <8 x float>, ptr %next.gep522, align 4, !tbaa !56, !alias.scope !189 ; 2 uses
  %strided.vec525 = shufflevector <8 x float> %wide.vec524, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec526 = shufflevector <8 x float> %wide.vec524, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ch = load float, ptr %i.bj, align 4, !tbaa !56, !alias.scope !186
  %i.ci = load float, ptr %i.bk, align 4, !tbaa !56, !alias.scope !186
  %i.cj = load float, ptr %i.bl, align 4, !tbaa !56, !alias.scope !186
  %i.ck = load float, ptr %i.bm, align 4, !tbaa !56, !alias.scope !186
  %i.cl = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 3
  %i.cp = fmul <4 x float> %i.co, %strided.vec525
  %i.cq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %strided.vec526, <4 x float> %i.cp)
  %i.cr = getelementptr i8, ptr %next.gep, i64 -24
  %interleaved.vec = shufflevector <4 x float> %i.cq, <4 x float> %i.by, <8 x i32> <i32 3, i32 7, i32 2, i32 6, i32 1, i32 5, i32 0, i32 4>
  store <8 x float> %interleaved.vec, ptr %i.cr, align 4, !tbaa !56, !alias.scope !191, !noalias !193
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %.lr.ph.preheader534, label %vector.body, !llvm.loop !194

.lr.ph.preheader534:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.0388428.ph = phi ptr [ %.0388423, %vector.memcheck ], [ %.0388423, %.lr.ph.preheader ], [ %i.ap, %vector.body ]
  %.pn419427.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.preheader ], [ %i.aq, %vector.body ]
  %.0397426.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.as, %vector.body ]
  %.0399425.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.preheader ], [ %i.au, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader534, %.lr.ph
  %.0388428 = phi ptr [ %.0388, %.lr.ph ], [ %.0388428.ph, %.lr.ph.preheader534 ] ; 3 uses
  %.pn419427 = phi ptr [ %.0388428, %.lr.ph ], [ %.pn419427.ph, %.lr.ph.preheader534 ]
  %.0397426 = phi ptr [ %i.dk, %.lr.ph ], [ %.0397426.ph, %.lr.ph.preheader534 ] ; 4 uses
  %.0399425 = phi ptr [ %i.dj, %.lr.ph ], [ %.0399425.ph, %.lr.ph.preheader534 ] ; 4 uses
  %i.ct = load float, ptr %.0397426, align 4, !tbaa !56
  %i.cu = load float, ptr %.0399425, align 4, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %.0397426, i64 8 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !56
  %i.cx = getelementptr inbounds nuw i8, ptr %.0399425, i64 4 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !56
  %i.cz = fneg float %i.cy
  %i.da = fmul float %i.cw, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cu, float %i.da)
  %i.dc = getelementptr i8, ptr %.pn419427, i64 -4
  store float %i.db, ptr %i.dc, align 4, !tbaa !56
  %i.dd = load float, ptr %.0397426, align 4, !tbaa !56
  %i.de = load float, ptr %i.cx, align 4, !tbaa !56
  %i.df = load float, ptr %i.cv, align 4, !tbaa !56
  %i.dg = load float, ptr %.0399425, align 4, !tbaa !56
  %i.dh = fmul float %i.df, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.de, float %i.dh)
  store float %i.di, ptr %.0388428, align 4, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %.0399425, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0397426, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@inverse_mdct:bb.a
  %i.oq = load float, ptr %i.op, align 4, !tbaa !56 ; 2 uses
  %i.or = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.oa ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !56
  %i.ot = getelementptr i8, ptr %i.or, i64 4
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !56 ; 2 uses
  %i.ov = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.oc ; 2 uses
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !56
  %i.ox = getelementptr i8, ptr %i.ov, i64 4
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !56 ; 2 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv495 ; 2 uses
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.of
  %i.pb = fneg float %i.om
  %i.pc = fneg float %i.oq
  %i.pd = fneg float %i.ou
  %i.pe = fneg float %i.oy
  %i.pf = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = insertelement <2 x float> poison, float %i.pe, i64 0
  %i.pi = insertelement <2 x float> %i.ph, float %i.oy, i64 1
  %i.pj = insertelement <2 x float> poison, float %i.os, i64 0
  %i.pk = shufflevector <2 x float> %i.pj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pl = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pm = insertelement <2 x float> %i.pl, float %i.ou, i64 1
  %i.pn = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = insertelement <2 x float> poison, float %i.pc, i64 0
  %i.pq = insertelement <2 x float> %i.pp, float %i.oq, i64 1
  %i.pr = insertelement <2 x float> poison, float %i.ok, i64 0
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pt = insertelement <2 x float> poison, float %i.pb, i64 0
  %i.pu = insertelement <2 x float> %i.pt, float %i.om, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i421
  %.0108.i = phi ptr [ %i.pa, %.lr.ph.i421 ], [ %i.sg, %bb.s ] ; 9 uses
  %.0104107.i = phi ptr [ %i.oz, %.lr.ph.i421 ], [ %i.sf, %bb.s ] ; 9 uses
  %.0105106.i = phi i32 [ %i.ns, %.lr.ph.i421 ], [ %i.sh, %bb.s ] ; 2 uses
  %i.pv = getelementptr inbounds i8, ptr %.0104107.i, i64 -4 ; 2 uses
  %i.pw = getelementptr inbounds i8, ptr %.0108.i, i64 -4 ; 3 uses
  %i.px = load <2 x float>, ptr %i.pv, align 4, !tbaa !56 ; 3 uses
  %i.py = load float, ptr %.0108.i, align 4, !tbaa !56
  %i.pz = load <2 x float>, ptr %i.pw, align 4, !tbaa !56
  %i.qa = fsub <2 x float> %i.px, %i.pz           ; 2 uses
  %i.qb = extractelement <2 x float> %i.px, i64 1
  %i.qc = fadd float %i.qb, %i.py
  store float %i.qc, ptr %.0104107.i, align 4, !tbaa !56
  %i.qd = load float, ptr %i.pw, align 4, !tbaa !56
  %i.qe = extractelement <2 x float> %i.px, i64 0
  %i.qf = fadd float %i.qe, %i.qd
  store float %i.qf, ptr %i.pv, align 4, !tbaa !56
  %i.qg = fmul <2 x float> %i.pu, %i.qa
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qa, <2 x float> %i.ps, <2 x float> %i.qh)
  store <2 x float> %i.qi, ptr %i.pw, align 4, !tbaa !56
  %i.qj = getelementptr inbounds i8, ptr %.0104107.i, i64 -8
  %i.qk = getelementptr inbounds i8, ptr %.0108.i, i64 -8
  %i.ql = getelementptr inbounds i8, ptr %.0104107.i, i64 -12 ; 2 uses
  %i.qm = getelementptr inbounds i8, ptr %.0108.i, i64 -12 ; 3 uses
  %i.qn = load <2 x float>, ptr %i.ql, align 4, !tbaa !56 ; 3 uses
  %i.qo = load float, ptr %i.qk, align 4, !tbaa !56
  %i.qp = load <2 x float>, ptr %i.qm, align 4, !tbaa !56
  %i.qq = fsub <2 x float> %i.qn, %i.qp           ; 2 uses
  %i.qr = extractelement <2 x float> %i.qn, i64 1
  %i.qs = fadd float %i.qr, %i.qo
  store float %i.qs, ptr %i.qj, align 4, !tbaa !56
  %i.qt = load float, ptr %i.qm, align 4, !tbaa !56
  %i.qu = extractelement <2 x float> %i.qn, i64 0
  %i.qv = fadd float %i.qu, %i.qt
  store float %i.qv, ptr %i.ql, align 4, !tbaa !56
  %i.qw = fmul <2 x float> %i.pq, %i.qq
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qq, <2 x float> %i.po, <2 x float> %i.qx)
  store <2 x float> %i.qy, ptr %i.qm, align 4, !tbaa !56
  %i.qz = getelementptr inbounds i8, ptr %.0104107.i, i64 -16
  %i.ra = getelementptr inbounds i8, ptr %.0108.i, i64 -16
  %i.rb = getelementptr inbounds i8, ptr %.0104107.i, i64 -20 ; 2 uses
  %i.rc = getelementptr inbounds i8, ptr %.0108.i, i64 -20 ; 3 uses
  %i.rd = load <2 x float>, ptr %i.rb, align 4, !tbaa !56 ; 3 uses
  %i.re = load float, ptr %i.ra, align 4, !tbaa !56
  %i.rf = load <2 x float>, ptr %i.rc, align 4, !tbaa !56
  %i.rg = fsub <2 x float> %i.rd, %i.rf           ; 2 uses
  %i.rh = extractelement <2 x float> %i.rd, i64 1
  %i.ri = fadd float %i.rh, %i.re
  store float %i.ri, ptr %i.qz, align 4, !tbaa !56
  %i.rj = load float, ptr %i.rc, align 4, !tbaa !56
  %i.rk = extractelement <2 x float> %i.rd, i64 0
  %i.rl = fadd float %i.rk, %i.rj
  store float %i.rl, ptr %i.rb, align 4, !tbaa !56
  %i.rm = fmul <2 x float> %i.pm, %i.rg
  %i.rn = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ro = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rg, <2 x float> %i.pk, <2 x float> %i.rn)
  store <2 x float> %i.ro, ptr %i.rc, align 4, !tbaa !56
  %i.rp = getelementptr inbounds i8, ptr %.0104107.i, i64 -24
  %i.rq = getelementptr inbounds i8, ptr %.0108.i, i64 -24
  %i.rr = getelementptr inbounds i8, ptr %.0104107.i, i64 -28 ; 2 uses
  %i.rs = getelementptr inbounds i8, ptr %.0108.i, i64 -28 ; 3 uses
  %i.rt = load <2 x float>, ptr %i.rr, align 4, !tbaa !56 ; 3 uses
  %i.ru = load float, ptr %i.rq, align 4, !tbaa !56
  %i.rv = load <2 x float>, ptr %i.rs, align 4, !tbaa !56
  %i.rw = fsub <2 x float> %i.rt, %i.rv           ; 2 uses
  %i.rx = extractelement <2 x float> %i.rt, i64 1
  %i.ry = fadd float %i.rx, %i.ru
  store float %i.ry, ptr %i.rp, align 4, !tbaa !56
  %i.rz = load float, ptr %i.rs, align 4, !tbaa !56
  %i.sa = extractelement <2 x float> %i.rt, i64 0
  %i.sb = fadd float %i.sa, %i.rz
  store float %i.sb, ptr %i.rr, align 4, !tbaa !56
  %i.sc = fmul <2 x float> %i.pi, %i.rw
  %i.sd = shufflevector <2 x float> %i.sc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.se = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rw, <2 x float> %i.pg, <2 x float> %i.sd)
  store <2 x float> %i.se, ptr %i.rs, align 4, !tbaa !56
  %i.sf = getelementptr inbounds [4 x i8], ptr %.0104107.i, i64 %i.oh
  %i.sg = getelementptr inbounds [4 x i8], ptr %.0108.i, i64 %i.oh
  %i.sh = add nsw i32 %.0105106.i, -1
  %i.si = icmp samesign ugt i32 %.0105106.i, 1
  br i1 %i.si, label %bb.s, label %imdct_step3_inner_s_loop.exit.loopexit, !llvm.loop !184

imdct_step3_inner_s_loop.exit.loopexit:           ; preds = %bb.s
  %i.sj = getelementptr inbounds [4 x i8], ptr %.0393456, i64 %i.oj
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, -8
  %i.sk = add nsw i32 %.0395454, -1
  %i.sl = icmp sgt i32 %.0395454, 1
  br i1 %i.sl, label %.lr.ph.i421, label %.loopexit, !llvm.loop !201

._crit_edge461:                                   ; preds = %.loopexit, %.preheader
  call void @imdct_step3_inner_s_loop_ld654(i32 noundef %i.ip, ptr noundef %0, i32 noundef %i.im, ptr noundef nonnull %i.x, i32 noundef %1)
  %i.sm = add nsw i32 %i.a, -4
  %i.sn = sext i32 %i.sm to i64                   ; 2 uses
  %.0391462 = getelementptr i8, ptr %i.ej, i64 -16 ; 2 uses
  %.not412463 = icmp ult ptr %.0391462, %i.t
  br i1 %.not412463, label %._crit_edge470, label %.lr.ph469.preheader

.lr.ph469.preheader:                              ; preds = %._crit_edge461
  %i.so = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.sn
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 1480
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.v
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !63
  br label %.lr.ph469

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %.lr.ph469
  %.0391467 = phi ptr [ %.0391, %.lr.ph469 ], [ %.0391462, %.lr.ph469.preheader ] ; 3 uses
  %.0390466 = phi ptr [ %i.tt, %.lr.ph469 ], [ %i.so, %.lr.ph469.preheader ] ; 5 uses
  %.pn417465 = phi ptr [ %.0391467, %.lr.ph469 ], [ %i.ej, %.lr.ph469.preheader ] ; 3 uses
  %.0392464 = phi ptr [ %i.tu, %.lr.ph469 ], [ %i.sr, %.lr.ph469.preheader ] ; 3 uses
  %i.ss = load i16, ptr %.0392464, align 2, !tbaa !44
  %i.st = zext i16 %i.ss to i64
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.st ; 4 uses
  %i.sv = load float, ptr %i.su, align 4, !tbaa !56
  %i.sw = getelementptr inbounds nuw i8, ptr %.0390466, i64 12
  store float %i.sv, ptr %i.sw, align 4, !tbaa !56
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !56
  %i.sz = getelementptr inbounds nuw i8, ptr %.0390466, i64 8
  store float %i.sy, ptr %i.sz, align 4, !tbaa !56
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !56
  %i.tc = getelementptr i8, ptr %.pn417465, i64 -4
  store float %i.tb, ptr %i.tc, align 4, !tbaa !56
  %i.td = getelementptr inbounds nuw i8, ptr %i.su, i64 12
  %i.te = load float, ptr %i.td, align 4, !tbaa !56
  %i.tf = getelementptr i8, ptr %.pn417465, i64 -8
  store float %i.te, ptr %i.tf, align 4, !tbaa !56
  %i.tg = getelementptr inbounds nuw i8, ptr %.0392464, i64 2
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !44
  %i.ti = zext i16 %i.th to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ti ; 4 uses
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !56
  %i.tl = getelementptr inbounds nuw i8, ptr %.0390466, i64 4
  store float %i.tk, ptr %i.tl, align 4, !tbaa !56
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !56
  store float %i.tn, ptr %.0390466, align 4, !tbaa !56
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tp = load float, ptr %i.to, align 4, !tbaa !56
  %i.tq = getelementptr i8, ptr %.pn417465, i64 -12
  store float %i.tp, ptr %i.tq, align 4, !tbaa !56
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tj, i64 12
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !56
  store float %i.ts, ptr %.0391467, align 4, !tbaa !56
  %i.tt = getelementptr inbounds i8, ptr %.0390466, i64 -16
  %i.tu = getelementptr inbounds nuw i8, ptr %.0392464, i64 4
  %.0391 = getelementptr i8, ptr %.0391467, i64 -16 ; 2 uses
  %.not412 = icmp ult ptr %.0391, %i.t
  br i1 %.not412, label %._crit_edge470, label %.lr.ph469, !llvm.loop !202

._crit_edge470:                                   ; preds = %.lr.ph469, %._crit_edge461
  %.0385471 = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.tv = icmp ult ptr %i.t, %.0385471
  br i1 %i.tv, label %.lr.ph477.preheader, label %._crit_edge478

.lr.ph477.preheader:                              ; preds = %._crit_edge470
  %i.tw = getelementptr inbounds nuw i8, ptr %2, i64 1448
  %i.tx = getelementptr inbounds [8 x i8], ptr %i.tw, i64 %i.v
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !62
  br label %.lr.ph477

.lr.ph477:                                        ; preds = %.lr.ph477.preheader, %.lr.ph477
  %.0385475 = phi ptr [ %.0385, %.lr.ph477 ], [ %.0385471, %.lr.ph477.preheader ] ; 4 uses
  %.pn416474 = phi ptr [ %.0385475, %.lr.ph477 ], [ %i.z, %.lr.ph477.preheader ] ; 2 uses
  %.0386473 = phi ptr [ %i.vd, %.lr.ph477 ], [ %i.t, %.lr.ph477.preheader ] ; 4 uses
  %.0387472 = phi ptr [ %i.vc, %.lr.ph477 ], [ %i.ty, %.lr.ph477.preheader ] ; 5 uses
  %4 = getelementptr inbounds i8, ptr %.pn416474, i64 -8 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.0387472, i64 4
  %5 = load float, ptr %i.tz, align 4, !tbaa !56
  %6 = load float, ptr %.0387472, align 4, !tbaa !56
  %i.ua = load <2 x float>, ptr %.0386473, align 4, !tbaa !56 ; 2 uses
  %i.ub = load <2 x float>, ptr %4, align 4, !tbaa !56 ; 2 uses
  %i.uc = fsub <2 x float> %i.ua, %i.ub           ; 2 uses
  %i.ud = fadd <2 x float> %i.ua, %i.ub           ; 3 uses
  %i.ue = shufflevector <2 x float> %i.uc, <2 x float> %i.ud, <2 x i32> <i32 0, i32 3> ; 2 uses
  %7 = fneg <2 x float> %i.ue
  %8 = shufflevector <2 x float> %i.ud, <2 x float> %7, <2 x i32> <i32 1, i32 2>
  %9 = insertelement <2 x float> poison, float %6, i64 0
  %i.uf = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ug = fmul <2 x float> %8, %i.uf
  %10 = insertelement <2 x float> poison, float %5, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.ue, <2 x float> %i.ug) ; 3 uses
  %i.ui = shufflevector <2 x float> %i.ud, <2 x float> %i.uc, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.uj = fadd <2 x float> %i.ui, %i.uh
  store <2 x float> %i.uj, ptr %.0386473, align 4, !tbaa !56
  %i.uk = shufflevector <2 x float> %i.ui, <2 x float> %i.uh, <2 x i32> <i32 0, i32 3>
  %i.ul = shufflevector <2 x float> %i.uh, <2 x float> %i.ui, <2 x i32> <i32 0, i32 3>
  %i.um = fsub <2 x float> %i.uk, %i.ul
  store <2 x float> %i.um, ptr %4, align 4, !tbaa !56
  %12 = getelementptr inbounds nuw i8, ptr %.0386473, i64 8 ; 2 uses
  %i.un = getelementptr inbounds i8, ptr %.pn416474, i64 -12
  %i.uo = getelementptr inbounds nuw i8, ptr %.0387472, i64 12
  %13 = load float, ptr %i.uo, align 4, !tbaa !56
  %i.up = getelementptr inbounds nuw i8, ptr %.0387472, i64 8
  %14 = load float, ptr %i.up, align 4, !tbaa !56
  %i.uq = load <2 x float>, ptr %12, align 4, !tbaa !56 ; 2 uses
  %i.ur = load <2 x float>, ptr %.0385475, align 4, !tbaa !56 ; 2 uses
  %i.us = fsub <2 x float> %i.uq, %i.ur           ; 2 uses
  %i.ut = fadd <2 x float> %i.uq, %i.ur           ; 3 uses
  %i.uu = shufflevector <2 x float> %i.us, <2 x float> %i.ut, <2 x i32> <i32 0, i32 3> ; 2 uses
  %15 = fneg <2 x float> %i.uu
  %16 = shufflevector <2 x float> %i.ut, <2 x float> %15, <2 x i32> <i32 1, i32 2>
  %17 = insertelement <2 x float> poison, float %14, i64 0
  %i.uv = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = fmul <2 x float> %16, %i.uv
  %18 = insertelement <2 x float> poison, float %13, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %i.uu, <2 x float> %i.uw) ; 3 uses
  %i.uy = shufflevector <2 x float> %i.ut, <2 x float> %i.us, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.uz = fadd <2 x float> %i.uy, %i.ux
  store <2 x float> %i.uz, ptr %12, align 4, !tbaa !56
  %foldExtExtBinop = fsub <2 x float> %i.uy, %i.ux
  %i.va = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.va, ptr %.0385475, align 4, !tbaa !56
  %foldExtExtBinop532 = fsub <2 x float> %i.ux, %i.uy
  %i.vb = extractelement <2 x float> %foldExtExtBinop532, i64 1
  store float %i.vb, ptr %i.un, align 4, !tbaa !56
  %i.vc = getelementptr inbounds nuw i8, ptr %.0387472, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %.0386473, i64 16 ; 2 uses
  %.0385 = getelementptr inbounds i8, ptr %.0385475, i64 -16 ; 2 uses
  %i.ve = icmp ult ptr %i.vd, %.0385
  br i1 %i.ve, label %.lr.ph477, label %._crit_edge478, !llvm.loop !203

._crit_edge478:                                   ; preds = %.lr.ph477, %._crit_edge470
  %.0379479 = getelementptr inbounds i8, ptr %i.z, i64 -32 ; 2 uses
  %.not413480 = icmp ult ptr %.0379479, %i.t
  br i1 %.not413480, label %._crit_edge490, label %.lr.ph489.preheader

.lr.ph489.preheader:                              ; preds = %._crit_edge478
  %i.vf = sext i32 %1 to i64
  %i.vg = getelementptr [4 x i8], ptr %0, i64 %i.vf
  %i.vh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.sn
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 1432
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.vi, i64 %i.v
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !62
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.y
  br label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %.lr.ph489
  %.0379487 = phi ptr [ %.0379, %.lr.ph489 ], [ %.0379479, %.lr.ph489.preheader ] ; 3 uses
  %.pn414486 = phi ptr [ %.0379487, %.lr.ph489 ], [ %i.z, %.lr.ph489.preheader ] ; 7 uses
  %.pn485 = phi ptr [ %.0380, %.lr.ph489 ], [ %i.vl, %.lr.ph489.preheader ] ; 8 uses
  %.pn415484 = phi ptr [ %.0381, %.lr.ph489 ], [ %i.vg, %.lr.ph489.preheader ] ; 4 uses
  %.0382483 = phi ptr [ %i.yj, %.lr.ph489 ], [ %i.aa, %.lr.ph489.preheader ] ; 5 uses
  %.0383482 = phi ptr [ %i.yk, %.lr.ph489 ], [ %i.vh, %.lr.ph489.preheader ] ; 5 uses
  %.0384481 = phi ptr [ %i.yi, %.lr.ph489 ], [ %0, %.lr.ph489.preheader ] ; 5 uses
  %.0381 = getelementptr i8, ptr %.pn415484, i64 -16 ; 2 uses
  %.0380 = getelementptr inbounds i8, ptr %.pn485, i64 -32 ; 2 uses
  %i.vm = getelementptr inbounds i8, ptr %.pn414486, i64 -8
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !56 ; 2 uses
  %i.vo = getelementptr inbounds i8, ptr %.pn485, i64 -4
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !56 ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %.pn414486, i64 -4
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !56 ; 2 uses
  %i.vs = getelementptr inbounds i8, ptr %.pn485, i64 -8
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !56 ; 2 uses
  %i.vu = fneg float %i.vt
  %i.vv = fmul float %i.vr, %i.vu
  %i.vw = call float @llvm.fmuladd.f32(float %i.vn, float %i.vp, float %i.vv) ; 2 uses
  %i.vx = fneg float %i.vn
  %i.vy = fneg float %i.vp
  %i.vz = fmul float %i.vr, %i.vy
  %i.wa = call float @llvm.fmuladd.f32(float %i.vx, float %i.vt, float %i.vz) ; 2 uses
  store float %i.vw, ptr %.0384481, align 4, !tbaa !56
  %i.wb = fneg float %i.vw
  %i.wc = getelementptr inbounds nuw i8, ptr %.0383482, i64 12
  store float %i.wb, ptr %i.wc, align 4, !tbaa !56
  store float %i.wa, ptr %.0382483, align 4, !tbaa !56
  %i.wd = getelementptr i8, ptr %.pn415484, i64 -4
  store float %i.wa, ptr %i.wd, align 4, !tbaa !56
  %i.we = getelementptr inbounds i8, ptr %.pn414486, i64 -16
  %i.wf = load float, ptr %i.we, align 4, !tbaa !56 ; 2 uses
  %i.wg = getelementptr inbounds i8, ptr %.pn485, i64 -12
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !56 ; 2 uses
  %i.wi = getelementptr inbounds i8, ptr %.pn414486, i64 -12
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !56 ; 2 uses
  %i.wk = getelementptr inbounds i8, ptr %.pn485, i64 -16
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !56 ; 2 uses
  %i.wm = fneg float %i.wl
  %i.wn = fmul float %i.wj, %i.wm
  %i.wo = call float @llvm.fmuladd.f32(float %i.wf, float %i.wh, float %i.wn) ; 2 uses
  %i.wp = fneg float %i.wf
  %i.wq = fneg float %i.wh
  %i.wr = fmul float %i.wj, %i.wq
  %i.ws = call float @llvm.fmuladd.f32(float %i.wp, float %i.wl, float %i.wr) ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.0384481, i64 4
  store float %i.wo, ptr %i.wt, align 4, !tbaa !56
  %i.wu = fneg float %i.wo
  %i.wv = getelementptr inbounds nuw i8, ptr %.0383482, i64 8
  store float %i.wu, ptr %i.wv, align 4, !tbaa !56
  %i.ww = getelementptr inbounds nuw i8, ptr %.0382483, i64 4
  store float %i.ws, ptr %i.ww, align 4, !tbaa !56
  %i.wx = getelementptr i8, ptr %.pn415484, i64 -8
  store float %i.ws, ptr %i.wx, align 4, !tbaa !56
  %i.wy = getelementptr inbounds i8, ptr %.pn414486, i64 -24
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !56 ; 2 uses
  %i.xa = getelementptr inbounds i8, ptr %.pn485, i64 -20
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !56 ; 2 uses
  %i.xc = getelementptr inbounds i8, ptr %.pn414486, i64 -20
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !56 ; 2 uses
  %i.xe = getelementptr inbounds i8, ptr %.pn485, i64 -24
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !56 ; 2 uses
  %i.xg = fneg float %i.xf
  %i.xh = fmul float %i.xd, %i.xg
  %i.xi = call float @llvm.fmuladd.f32(float %i.wz, float %i.xb, float %i.xh) ; 2 uses
  %i.xj = fneg float %i.wz
  %i.xk = fneg float %i.xb
  %i.xl = fmul float %i.xd, %i.xk
  %i.xm = call float @llvm.fmuladd.f32(float %i.xj, float %i.xf, float %i.xl) ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0384481, i64 8
  store float %i.xi, ptr %i.xn, align 4, !tbaa !56
  %i.xo = fneg float %i.xi
  %i.xp = getelementptr inbounds nuw i8, ptr %.0383482, i64 4
  store float %i.xo, ptr %i.xp, align 4, !tbaa !56
  %i.xq = getelementptr inbounds nuw i8, ptr %.0382483, i64 8
  store float %i.xm, ptr %i.xq, align 4, !tbaa !56
  %i.xr = getelementptr i8, ptr %.pn415484, i64 -12
  store float %i.xm, ptr %i.xr, align 4, !tbaa !56
  %i.xs = load float, ptr %.0379487, align 4, !tbaa !56 ; 2 uses
  %i.xt = getelementptr inbounds i8, ptr %.pn485, i64 -28
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !56 ; 2 uses
  %i.xv = getelementptr inbounds i8, ptr %.pn414486, i64 -28
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !56 ; 2 uses
  %i.xx = load float, ptr %.0380, align 4, !tbaa !56 ; 2 uses
  %i.xy = fneg float %i.xx
  %i.xz = fmul float %i.xw, %i.xy
  %i.ya = call float @llvm.fmuladd.f32(float %i.xs, float %i.xu, float %i.xz) ; 2 uses
  %i.yb = fneg float %i.xs
  %i.yc = fneg float %i.xu
  %i.yd = fmul float %i.xw, %i.yc
  %i.ye = call float @llvm.fmuladd.f32(float %i.yb, float %i.xx, float %i.yd) ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.0384481, i64 12
  store float %i.ya, ptr %i.yf, align 4, !tbaa !56
  %i.yg = fneg float %i.ya
  store float %i.yg, ptr %.0383482, align 4, !tbaa !56
  %i.yh = getelementptr inbounds nuw i8, ptr %.0382483, i64 12
  store float %i.ye, ptr %i.yh, align 4, !tbaa !56
  store float %i.ye, ptr %.0381, align 4, !tbaa !56
  %i.yi = getelementptr inbounds nuw i8, ptr %.0384481, i64 16
  %i.yj = getelementptr inbounds nuw i8, ptr %.0382483, i64 16
  %i.yk = getelementptr inbounds i8, ptr %.0383482, i64 -16
  %.0379 = getelementptr inbounds i8, ptr %.0379487, i64 -32 ; 2 uses
  %.not413 = icmp ult ptr %.0379, %i.t
  br i1 %.not413, label %._crit_edge490, label %.lr.ph489, !llvm.loop !204

._crit_edge490:                                   ; preds = %.lr.ph489, %._crit_edge478
  store i32 %i.e, ptr %i.d, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_window(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = shl i32 %1, 1                            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !205
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !206
  %i.g = icmp eq i32 %i.a, %i.f
  br i1 %i.g, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink9 = phi i64 [ 1464, %bb.a ], [ 1472, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.i, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @do_floor(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6) local_unnamed_addr #14 {
bb.a:
  %i.a = ashr i32 %3, 1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [3 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !209
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.m = zext i8 %i.k to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !44
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 21, ptr %i.q, align 4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw [1596 x i8], ptr %i.s, i64 %i.m ; 4 uses
  %i.u = load i16, ptr %5, align 2, !tbaa !44
  %i.v = sext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1588
  %i.x = load i8, ptr %i.w, align 4, !tbaa !212
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 1592
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !214 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

end_hunk_1
