Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcadsp?download=true
inline.NumInlined: 34
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@lbr_bank_c:bb.a
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 3 ; 2 uses
  %i.cg = fmul nsz <4 x float> %broadcast.splat114, %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 212
  %i.ci = getelementptr i8, ptr %i.bf, i64 228
  %i.cj = getelementptr i8, ptr %i.bh, i64 244
  %i.ck = getelementptr i8, ptr %i.bj, i64 260
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !19
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !19
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !19
  %i.co = load float, ptr %i.ck, align 4, !tbaa !19
  %i.cp = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.cm, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 3 ; 2 uses
  %i.ct = fmul nsz <4 x float> %broadcast.splat114, %i.cs ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cf, <4 x float> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cw = shufflevector <4 x float> %i.cg, <4 x float> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = fsub nsz <8 x float> %i.cv, %i.cw
  %i.cy = fadd nsz <8 x float> %i.cu, %i.cx
  %i.cz = shufflevector <4 x float> %i.bs, <4 x float> %i.cs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = shufflevector <4 x float> %i.bc, <4 x float> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.db = shufflevector <4 x float> %i.bt, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dc = fadd nsz <8 x float> %i.da, %i.db
  %i.dd = fsub nsz <8 x float> %i.cz, %i.dc
  %interleaved.vec = shufflevector <8 x float> %i.cy, <8 x float> %i.dd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bu, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph107.preheader115

.lr.ph107.preheader115:                           ; preds = %.lr.ph107.preheader, %middle.block
  %indvars.iv109.ph = phi i64 [ 12, %.lr.ph107.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph107

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !137
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %3 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -16
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 -4
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 -8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.dn = load <2 x float>, ptr %i.di, align 4, !tbaa !19 ; 2 uses
  %i.do = load <2 x float>, ptr %i.dl, align 4, !tbaa !19 ; 2 uses
  %i.dp = load <3 x float>, ptr %i.dj, align 4, !tbaa !19
  %i.dq = shufflevector <3 x float> %i.dp, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.dr = load <4 x float>, ptr %i.dk, align 4, !tbaa !19
  %i.ds = fmul nsz <4 x float> %i.dq, %i.ag
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  %i.du = fmul nsz <4 x float> %i.dt, %i.ah
  %i.dv = shufflevector <2 x float> %i.do, <2 x float> %i.dn, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %i.dw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.c, <4 x float> %i.ds) ; 3 uses
  %i.dx = shufflevector <2 x float> %i.do, <2 x float> %i.dn, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.dy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.c, <4 x float> %i.du) ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0> ; 2 uses
  %i.ea = fneg nsz <4 x float> %i.dw
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ee = fneg nsz <4 x float> %i.dz
  %i.ef = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eg = fmul nsz <4 x float> %i.af, %i.ef
  %i.eh = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 2>
  %i.ei = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.eh, <4 x float> %i.eg)
  %i.ej = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.dz, <4 x float> %i.ei)
  %i.ek = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.dw, <4 x float> %i.ej)
  store <4 x float> %i.ek, ptr %i.dm, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %4
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !134

.lr.ph107:                                        ; preds = %.lr.ph107.preheader115, %.lr.ph107
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph107 ], [ %indvars.iv109.ph, %.lr.ph107.preheader115 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv109
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load <4 x float>, ptr %i.em, align 4, !tbaa !19 ; 3 uses
  %i.eo = fmul nsz <4 x float> %i.g, %i.en        ; 3 uses
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.eq = fsub nsz <4 x float> %i.ep, %i.eo
  %i.er = fadd nsz <4 x float> %i.ep, %i.eo
  %i.es = shufflevector <4 x float> %i.eq, <4 x float> %i.er, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.et = fadd nsz <4 x float> %i.en, %i.es
  %i.eu = fsub nsz <4 x float> %i.en, %i.es
  %i.ev = shufflevector <4 x float> %i.et, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ev, ptr %i.em, align 4, !tbaa !19
  %exitcond112.not = icmp eq i64 %indvars.iv109, %i.aj
  br i1 %exitcond112.not, label %._crit_edge, label %.lr.ph107, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph107, %middle.block, %bb.a, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lfe_iir_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4) #3 {
bb.a:
  %i.a = icmp sgt i64 %4, 0
  br i1 %i.a, label %.preheader.lr.ph.preheader, label %.split48

.preheader.lr.ph.preheader:                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 76
  %exitcond.peel.not = icmp eq i64 %4, 1
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge
  %.03547 = phi i32 [ %i.et, %._crit_edge ], [ 0, %.preheader.lr.ph.preheader ]
  %.03746 = phi ptr [ %.lcssa49, %._crit_edge ], [ %0, %.preheader.lr.ph.preheader ] ; 2 uses
  %.03945 = phi ptr [ %i.es, %._crit_edge ], [ %1, %.preheader.lr.ph.preheader ] ; 2 uses
  %i.ad = load float, ptr %.03945, align 4, !tbaa !19
  %i.ae = load float, ptr %3, align 4, !tbaa !19  ; 2 uses
  %i.af = load float, ptr %2, align 4, !tbaa !19
  %i.ag = load float, ptr %i.b, align 4, !tbaa !19 ; 3 uses
  %i.ah = load float, ptr %i.c, align 4, !tbaa !19
  %i.ai = fmul nsz float %i.ag, %i.ah
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.af, float %i.ai)
  %i.ak = fadd nsz float %i.ad, %i.aj             ; 2 uses
  %i.al = load float, ptr %i.d, align 4, !tbaa !19
  %i.am = load float, ptr %i.e, align 4, !tbaa !19
  %i.an = fmul nsz float %i.ag, %i.am
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.al, float %i.an)
  %i.ap = fadd nsz float %i.ak, %i.ao
  store float %i.ag, ptr %3, align 4, !tbaa !19
  store float %i.ak, ptr %i.b, align 4, !tbaa !19
  %i.aq = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.ar = load float, ptr %i.g, align 4, !tbaa !19
  %i.as = load float, ptr %i.h, align 4, !tbaa !19 ; 3 uses
  %i.at = load float, ptr %i.i, align 4, !tbaa !19
  %i.au = fmul nsz float %i.as, %i.at
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.ar, float %i.au)
  %i.aw = fadd nsz float %i.ap, %i.av             ; 2 uses
  %i.ax = load float, ptr %i.j, align 4, !tbaa !19
  %i.ay = load float, ptr %i.k, align 4, !tbaa !19
  %i.az = fmul nsz float %i.as, %i.ay
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.ax, float %i.az)
  %i.bb = fadd nsz float %i.aw, %i.ba
  store float %i.as, ptr %i.f, align 4, !tbaa !19
  store float %i.aw, ptr %i.h, align 4, !tbaa !19
  %i.bc = load float, ptr %i.l, align 4, !tbaa !19 ; 2 uses
  %i.bd = load float, ptr %i.m, align 4, !tbaa !19
  %i.be = load float, ptr %i.n, align 4, !tbaa !19 ; 3 uses
  %i.bf = load float, ptr %i.o, align 4, !tbaa !19
  %i.bg = fmul nsz float %i.be, %i.bf
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.bg)
  %i.bi = fadd nsz float %i.bb, %i.bh             ; 2 uses
  %i.bj = load float, ptr %i.p, align 4, !tbaa !19
  %i.bk = load float, ptr %i.q, align 4, !tbaa !19
  %i.bl = fmul nsz float %i.be, %i.bk
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bj, float %i.bl)
  %i.bn = fadd nsz float %i.bi, %i.bm
  store float %i.be, ptr %i.l, align 4, !tbaa !19
  store float %i.bi, ptr %i.n, align 4, !tbaa !19
  %i.bo = load float, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.bp = load float, ptr %i.s, align 4, !tbaa !19
  %i.bq = load float, ptr %i.t, align 4, !tbaa !19 ; 3 uses
  %i.br = load float, ptr %i.u, align 4, !tbaa !19
  %i.bs = fmul nsz float %i.bq, %i.br
  %i.bt = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.bp, float %i.bs)
  %i.bu = fadd nsz float %i.bn, %i.bt             ; 2 uses
  %i.bv = load float, ptr %i.v, align 4, !tbaa !19
  %i.bw = load float, ptr %i.w, align 4, !tbaa !19
  %i.bx = fmul nsz float %i.bq, %i.bw
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.bv, float %i.bx)
  %i.bz = fadd nsz float %i.bu, %i.by
  store float %i.bq, ptr %i.r, align 4, !tbaa !19
  store float %i.bu, ptr %i.t, align 4, !tbaa !19
  %i.ca = load float, ptr %i.z, align 4, !tbaa !19
  %5 = load <2 x float>, ptr %i.x, align 4, !tbaa !19 ; 2 uses
  %i.cb = load <4 x float>, ptr %i.y, align 4, !tbaa !19 ; 2 uses
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cd = fmul nsz <2 x float> %6, %i.cc
  %i.ce = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cd) ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = fadd nsz float %i.bz, %i.ch             ; 2 uses
  %i.cj = extractelement <2 x float> %i.cg, i64 1
  %i.ck = fadd nsz float %i.ci, %i.cj
  store float %i.ca, ptr %i.x, align 4, !tbaa !19
  store float %i.ci, ptr %i.z, align 4, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %.03746, i64 4 ; 2 uses
  store float %i.ck, ptr %.03746, align 4, !tbaa !19
  br i1 %exitcond.peel.not, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 1, %.preheader.lr.ph ]
  %.13842 = phi ptr [ %i.er, %.preheader ], [ %i.cl, %.preheader.lr.ph ] ; 2 uses
  %i.cm = load float, ptr %i.b, align 4, !tbaa !19
  %7 = load <2 x float>, ptr %3, align 4, !tbaa !19 ; 2 uses
  %i.cn = load <4 x float>, ptr %2, align 4, !tbaa !19 ; 2 uses
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul nsz <2 x float> %8, %i.co
  %i.cq = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cr, <2 x float> %i.cp) ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  %shift = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %i.cs, %shift
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.cm, ptr %3, align 4, !tbaa !19
  store float %i.ct, ptr %i.b, align 4, !tbaa !19
  %i.cv = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.cw = load float, ptr %i.g, align 4, !tbaa !19
  %i.cx = load float, ptr %i.h, align 4, !tbaa !19 ; 3 uses
  %i.cy = load float, ptr %i.i, align 4, !tbaa !19
  %i.cz = fmul nsz float %i.cx, %i.cy
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.cw, float %i.cz)
  %i.db = fadd nsz float %i.cu, %i.da             ; 2 uses
  %i.dc = load float, ptr %i.j, align 4, !tbaa !19
  %i.dd = load float, ptr %i.k, align 4, !tbaa !19
  %i.de = fmul nsz float %i.cx, %i.dd
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.cv, float %i.dc, float %i.de)
  %i.dg = fadd nsz float %i.db, %i.df
  store float %i.cx, ptr %i.f, align 4, !tbaa !19
  store float %i.db, ptr %i.h, align 4, !tbaa !19
  %i.dh = load float, ptr %i.l, align 4, !tbaa !19 ; 2 uses
  %i.di = load float, ptr %i.m, align 4, !tbaa !19
  %i.dj = load float, ptr %i.n, align 4, !tbaa !19 ; 3 uses
  %i.dk = load float, ptr %i.o, align 4, !tbaa !19
  %i.dl = fmul nsz float %i.dj, %i.dk
  %i.dm = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.di, float %i.dl)
  %i.dn = fadd nsz float %i.dg, %i.dm             ; 2 uses
  %i.do = load float, ptr %i.p, align 4, !tbaa !19
  %i.dp = load float, ptr %i.q, align 4, !tbaa !19
  %i.dq = fmul nsz float %i.dj, %i.dp
  %i.dr = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.do, float %i.dq)
  %i.ds = fadd nsz float %i.dn, %i.dr
  store float %i.dj, ptr %i.l, align 4, !tbaa !19
  store float %i.dn, ptr %i.n, align 4, !tbaa !19
  %i.dt = load float, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.du = load float, ptr %i.s, align 4, !tbaa !19
  %i.dv = load float, ptr %i.t, align 4, !tbaa !19 ; 3 uses
  %i.dw = load float, ptr %i.u, align 4, !tbaa !19
  %i.dx = fmul nsz float %i.dv, %i.dw
  %i.dy = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.du, float %i.dx)
  %i.dz = fadd nsz float %i.ds, %i.dy             ; 2 uses
  %i.ea = load float, ptr %i.v, align 4, !tbaa !19
  %i.eb = load float, ptr %i.w, align 4, !tbaa !19
  %i.ec = fmul nsz float %i.dv, %i.eb
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.ea, float %i.ec)
  %i.ee = fadd nsz float %i.dz, %i.ed
  store float %i.dv, ptr %i.r, align 4, !tbaa !19
  store float %i.dz, ptr %i.t, align 4, !tbaa !19
  %i.ef = load float, ptr %i.x, align 4, !tbaa !19 ; 2 uses
  %i.eg = load float, ptr %i.y, align 4, !tbaa !19
  %i.eh = load float, ptr %i.z, align 4, !tbaa !19 ; 3 uses
  %i.ei = load float, ptr %i.aa, align 4, !tbaa !19
  %i.ej = fmul nsz float %i.eh, %i.ei
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.ef, float %i.eg, float %i.ej)
  %i.el = fadd nsz float %i.ee, %i.ek             ; 2 uses
  %i.em = load float, ptr %i.ab, align 4, !tbaa !19
  %i.en = load float, ptr %i.ac, align 4, !tbaa !19
  %i.eo = fmul nsz float %i.eh, %i.en
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %i.ef, float %i.em, float %i.eo)
  %i.eq = fadd nsz float %i.el, %i.ep
  store float %i.eh, ptr %i.x, align 4, !tbaa !19
  store float %i.el, ptr %i.z, align 4, !tbaa !19
  %i.er = getelementptr inbounds nuw i8, ptr %.13842, i64 4 ; 2 uses
  store float %i.eq, ptr %.13842, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %4
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !138

._crit_edge:                                      ; preds = %.preheader, %.preheader.lr.ph
  %.lcssa49 = phi ptr [ %i.cl, %.preheader.lr.ph ], [ %i.er, %.preheader ]
  %i.es = getelementptr inbounds nuw i8, ptr %.03945, i64 4
  %i.et = add nuw nsw i32 %.03547, 1              ; 2 uses
  %exitcond53.not = icmp eq i32 %i.et, 64
  br i1 %exitcond53.not, label %.split48, label %.preheader.lr.ph, !llvm.loop !139

.split48:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"override-stack-alignment", i32 16}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"float", !7, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"SynthFilterContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!21 = !{!11, !11, i64 0}
!22 = distinct !{!22, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !15, !16, !17}
!26 = distinct !{!26, !15, !16}
!27 = distinct !{!27, !15}
!28 = !{!7, !7, i64 0}
!29 = !{!23}
!30 = !{!24}
!31 = distinct !{!31, !15, !16, !17}
!32 = distinct !{!32, !15, !16}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !15, !16}
!39 = !{!35}
!40 = !{!36}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = !{!20, !11, i64 0}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = !{!20, !11, i64 8}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = !{!20, !11, i64 16}
!54 = distinct !{!54, !15}
!55 = !{!20, !11, i64 24}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !15, !16, !17}
!60 = distinct !{!60, !15, !16}
!61 = !{!57}
!62 = !{!58}
!63 = distinct !{!63, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !15, !16, !17}
!68 = distinct !{!68, !15, !16}
!69 = !{!64}
end_hunk_0
