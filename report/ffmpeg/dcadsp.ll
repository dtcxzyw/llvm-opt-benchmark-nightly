Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcadsp?download=true
inline.NumInlined: 34
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@lbr_bank_c:bb.a
  %i.aa = insertelement <2 x float> %i.z, float %i.t, i64 1
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ac = insertelement <2 x float> %i.z, float %i.p, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ae = insertelement <4 x float> poison, float %i.n, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = shufflevector <2 x float> %i.d, <2 x float> %i.q, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ah = shufflevector <2 x float> %i.q, <2 x float> %i.d, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.ai = icmp samesign ugt i64 %4, 13
  br i1 %i.ai, label %.lr.ph107.preheader, label %._crit_edge

.lr.ph107.preheader:                              ; preds = %.preheader
  %i.aj = add nsw i64 %4, -2
  %i.ak = add nsw i64 %4, -13                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph107.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph107.preheader
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.al = add i64 %n.vec, 12
  %broadcast.splat = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat114 = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 204
  %i.ar = getelementptr i8, ptr %i.an, i64 220
  %i.as = getelementptr i8, ptr %i.ao, i64 236
  %i.at = getelementptr i8, ptr %i.ap, i64 252
  %i.au = load float, ptr %i.aq, align 4, !tbaa !19
  %i.av = load float, ptr %i.ar, align 4, !tbaa !19
  %i.aw = load float, ptr %i.as, align 4, !tbaa !19
  %i.ax = load float, ptr %i.at, align 4, !tbaa !19
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = fmul nsz <4 x float> %broadcast.splat, %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  %i.bf = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 224
  %i.bh = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 240
  %i.bj = getelementptr [16 x i8], ptr %0, i64 %index ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 256
  %i.bl = load float, ptr %i.be, align 4, !tbaa !19
  %i.bm = load float, ptr %i.bg, align 4, !tbaa !19
  %i.bn = load float, ptr %i.bi, align 4, !tbaa !19
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !19
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3 ; 2 uses
  %i.bt = fmul nsz <4 x float> %broadcast.splat, %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.an, i64 216
  %i.bw = getelementptr i8, ptr %i.ao, i64 232
  %i.bx = getelementptr i8, ptr %i.ap, i64 248
  %i.by = load float, ptr %i.bu, align 4, !tbaa !19
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !19
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !19
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !19
  %i.cc = insertelement <4 x float> poison, float %i.by, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 1
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
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %exitcond.peel.not = icmp eq i64 %4, 1
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge
  %.03547 = phi i32 [ %i.eg, %._crit_edge ], [ 0, %.preheader.lr.ph.preheader ]
  %.03746 = phi ptr [ %.lcssa49, %._crit_edge ], [ %0, %.preheader.lr.ph.preheader ] ; 2 uses
  %.03945 = phi ptr [ %i.ef, %._crit_edge ], [ %1, %.preheader.lr.ph.preheader ] ; 2 uses
  %i.aa = load float, ptr %.03945, align 4, !tbaa !19
  %i.ab = load float, ptr %3, align 4, !tbaa !19  ; 2 uses
  %i.ac = load float, ptr %2, align 4, !tbaa !19
  %i.ad = load float, ptr %i.b, align 4, !tbaa !19 ; 3 uses
  %i.ae = load float, ptr %i.c, align 4, !tbaa !19
  %i.af = fmul nsz float %i.ad, %i.ae
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ac, float %i.af)
  %i.ah = fadd nsz float %i.aa, %i.ag             ; 2 uses
  %i.ai = load float, ptr %i.d, align 4, !tbaa !19
  %i.aj = load float, ptr %i.e, align 4, !tbaa !19
  %i.ak = fmul nsz float %i.ad, %i.aj
  %i.al = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ai, float %i.ak)
  %i.am = fadd nsz float %i.ah, %i.al
  store float %i.ad, ptr %3, align 4, !tbaa !19
  store float %i.ah, ptr %i.b, align 4, !tbaa !19
  %i.an = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.ao = load float, ptr %i.g, align 4, !tbaa !19
  %i.ap = load float, ptr %i.h, align 4, !tbaa !19 ; 3 uses
  %i.aq = load float, ptr %i.i, align 4, !tbaa !19
  %i.ar = fmul nsz float %i.ap, %i.aq
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.ar)
  %i.at = fadd nsz float %i.am, %i.as             ; 2 uses
  %i.au = load float, ptr %i.j, align 4, !tbaa !19
  %i.av = load float, ptr %i.k, align 4, !tbaa !19
  %i.aw = fmul nsz float %i.ap, %i.av
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.au, float %i.aw)
  %i.ay = fadd nsz float %i.at, %i.ax
  store float %i.ap, ptr %i.f, align 4, !tbaa !19
  store float %i.at, ptr %i.h, align 4, !tbaa !19
  %i.az = load float, ptr %i.l, align 4, !tbaa !19 ; 2 uses
  %i.ba = load float, ptr %i.m, align 4, !tbaa !19
  %i.bb = load float, ptr %i.n, align 4, !tbaa !19 ; 3 uses
  %i.bc = load float, ptr %i.o, align 4, !tbaa !19
  %i.bd = fmul nsz float %i.bb, %i.bc
  %i.be = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.ba, float %i.bd)
  %i.bf = fadd nsz float %i.ay, %i.be             ; 2 uses
  %i.bg = load float, ptr %i.p, align 4, !tbaa !19
  %i.bh = load float, ptr %i.q, align 4, !tbaa !19
  %i.bi = fmul nsz float %i.bb, %i.bh
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.bg, float %i.bi)
  %i.bk = fadd nsz float %i.bf, %i.bj
  store float %i.bb, ptr %i.l, align 4, !tbaa !19
  store float %i.bf, ptr %i.n, align 4, !tbaa !19
  %i.bl = load float, ptr %i.r, align 4, !tbaa !19 ; 2 uses
  %i.bm = load float, ptr %i.s, align 4, !tbaa !19
  %i.bn = load float, ptr %i.t, align 4, !tbaa !19 ; 3 uses
  %i.bo = load float, ptr %i.u, align 4, !tbaa !19
  %i.bp = fmul nsz float %i.bn, %i.bo
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bm, float %i.bp)
  %i.br = fadd nsz float %i.bk, %i.bq             ; 2 uses
  %i.bs = load float, ptr %i.v, align 4, !tbaa !19
  %i.bt = load float, ptr %i.w, align 4, !tbaa !19
  %i.bu = fmul nsz float %i.bn, %i.bt
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bs, float %i.bu)
  %i.bw = fadd nsz float %i.br, %i.bv
  store float %i.bn, ptr %i.r, align 4, !tbaa !19
  store float %i.br, ptr %i.t, align 4, !tbaa !19
  %i.bx = load float, ptr %i.x, align 4, !tbaa !19
  %i.by = load float, ptr %i.z, align 4, !tbaa !19 ; 2 uses
  %i.bz = load <4 x float>, ptr %i.y, align 4, !tbaa !19 ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cd = fmul nsz <2 x float> %i.cb, %i.cc
  %i.ce = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.cd) ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = fadd nsz float %i.bw, %i.ci             ; 2 uses
  %i.ck = extractelement <2 x float> %i.ch, i64 1
  %i.cl = fadd nsz float %i.cj, %i.ck
  store float %i.by, ptr %i.x, align 4, !tbaa !19
  store float %i.cj, ptr %i.z, align 4, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %.03746, i64 4 ; 2 uses
  store float %i.cl, ptr %.03746, align 4, !tbaa !19
  br i1 %exitcond.peel.not, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 1, %.preheader.lr.ph ]
  %.13842 = phi ptr [ %i.ee, %.preheader ], [ %i.cm, %.preheader.lr.ph ] ; 2 uses
  %i.cn = load float, ptr %3, align 4, !tbaa !19
  %i.co = load float, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  %i.cp = load <4 x float>, ptr %2, align 4, !tbaa !19 ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ct = fmul nsz <2 x float> %i.cr, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cw, <2 x float> %i.ct) ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %shift = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %i.cx, %shift
  %i.cz = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.co, ptr %3, align 4, !tbaa !19
  store float %i.cy, ptr %i.b, align 4, !tbaa !19
  %i.da = load float, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.db = load float, ptr %i.g, align 4, !tbaa !19
  %i.dc = load float, ptr %i.h, align 4, !tbaa !19 ; 3 uses
  %i.dd = load float, ptr %i.i, align 4, !tbaa !19
  %i.de = fmul nsz float %i.dc, %i.dd
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.db, float %i.de)
  %i.dg = fadd nsz float %i.cz, %i.df             ; 2 uses
  %i.dh = load float, ptr %i.j, align 4, !tbaa !19
  %i.di = load float, ptr %i.k, align 4, !tbaa !19
  %i.dj = fmul nsz float %i.dc, %i.di
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.dh, float %i.dj)
  %i.dl = fadd nsz float %i.dg, %i.dk
  store float %i.dc, ptr %i.f, align 4, !tbaa !19
  store float %i.dg, ptr %i.h, align 4, !tbaa !19
  %i.dm = load float, ptr %i.l, align 4, !tbaa !19 ; 2 uses
  %i.dn = load float, ptr %i.m, align 4, !tbaa !19
  %i.do = load float, ptr %i.n, align 4, !tbaa !19 ; 3 uses
  %i.dp = load float, ptr %i.o, align 4, !tbaa !19
  %i.dq = fmul nsz float %i.do, %i.dp
  %i.dr = tail call nsz float @llvm.fmuladd.f32(float %i.dm, float %i.dn, float %i.dq)
  %i.ds = fadd nsz float %i.dl, %i.dr             ; 2 uses
  %i.dt = load float, ptr %i.p, align 4, !tbaa !19
  %i.du = load float, ptr %i.q, align 4, !tbaa !19
  %i.dv = fmul nsz float %i.do, %i.du
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.dm, float %i.dt, float %i.dv)
  %i.dx = fadd nsz float %i.ds, %i.dw
  store float %i.do, ptr %i.l, align 4, !tbaa !19
  store float %i.ds, ptr %i.n, align 4, !tbaa !19
  %i.dy = load float, ptr %i.r, align 4, !tbaa !19
  %i.dz = load float, ptr %i.t, align 4, !tbaa !19 ; 2 uses
  %5 = load <4 x float>, ptr %i.s, align 4, !tbaa !19 ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.dz, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %9 = fmul nsz <2 x float> %7, %8
  %10 = insertelement <2 x float> poison, float %i.dy, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %13 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %12, <2 x float> %9) ; 2 uses
  %14 = extractelement <2 x float> %13, i64 0
  %15 = fadd nsz float %i.dx, %14                 ; 2 uses
  %16 = extractelement <2 x float> %13, i64 1
  %i.ea = fadd nsz float %15, %16
  store float %i.dz, ptr %i.r, align 4, !tbaa !19
  store float %15, ptr %i.t, align 4, !tbaa !19
  %i.eb = load float, ptr %i.x, align 4, !tbaa !19
  %i.ec = load float, ptr %i.z, align 4, !tbaa !19 ; 2 uses
  %17 = load <4 x float>, ptr %i.y, align 4, !tbaa !19 ; 2 uses
  %18 = insertelement <2 x float> poison, float %i.ec, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %21 = fmul nsz <2 x float> %19, %20
  %22 = insertelement <2 x float> poison, float %i.eb, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %25 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %24, <2 x float> %21) ; 2 uses
  %26 = extractelement <2 x float> %25, i64 0
  %27 = fadd nsz float %i.ea, %26                 ; 2 uses
  %28 = extractelement <2 x float> %25, i64 1
  %i.ed = fadd nsz float %27, %28
  store float %i.ec, ptr %i.x, align 4, !tbaa !19
  store float %27, ptr %i.z, align 4, !tbaa !19
  %i.ee = getelementptr inbounds nuw i8, ptr %.13842, i64 4 ; 2 uses
  store float %i.ed, ptr %.13842, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %4
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !138

._crit_edge:                                      ; preds = %.preheader, %.preheader.lr.ph
  %.lcssa49 = phi ptr [ %i.cm, %.preheader.lr.ph ], [ %i.ee, %.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.03945, i64 4
  %i.eg = add nuw nsw i32 %.03547, 1              ; 2 uses
  %exitcond53.not = icmp eq i32 %i.eg, 64
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
!22 = distinct !{!22, i1 false, !"LVerDomain"}
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
!34 = distinct !{!34, i1 false, !"LVerDomain"}
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
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !15, !16, !17}
!60 = distinct !{!60, !15, !16}
!61 = !{!57}
!62 = !{!58}
!63 = distinct !{!63, i1 false, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !15, !16, !17}
!68 = distinct !{!68, !15, !16}
!69 = !{!64}
!70 = !{!65}
!71 = !{!66, !64}
!72 = !{!66}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !15, !16, !17}
!77 = distinct !{!77, !15, !16}
!78 = !{!74}
!79 = !{!75}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !15, !16, !17}
!84 = distinct !{!84, !15, !16}
!85 = !{!81}
!86 = !{!82}
!87 = distinct !{!87, !15, !16, !17}
!88 = distinct !{!88, !15, !17, !16}
!89 = distinct !{!89, !15, !16, !17}
!90 = distinct !{!90, !15, !17, !16}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !15, !16, !17}
!95 = distinct !{!95, !15, !16}
!96 = distinct !{!96, i1 false, !"LVerDomain"}
!97 = distinct !{!97, !96}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !15, !16, !17}
!100 = distinct !{!100, !15, !16}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !15, !16, !17}
!105 = distinct !{!105, !15, !16}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !15, !16, !17}
!110 = distinct !{!110, !15, !16}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, i1 false, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !15, !16, !17}
!118 = distinct !{!118, !132}
!119 = distinct !{!119, !15, !16}
!120 = !{!92}
!121 = !{!93}
!122 = !{!97}
!123 = !{!98}
!124 = !{!102}
!125 = !{!103}
!126 = !{!107}
!127 = !{!108}
!128 = !{!114}
!129 = !{!115}
!130 = !{!116}
!131 = !{!114, !115}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = distinct !{!133, !15, !16, !17}
end_hunk_0
