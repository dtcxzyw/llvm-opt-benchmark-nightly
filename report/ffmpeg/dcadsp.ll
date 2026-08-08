inline.NumInlined: 34
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@assemble_freq_bands_c:bb.a
  %.14276.ph = phi ptr [ %i.ju, %vector.memcheck170 ], [ %i.ju, %.preheader ], [ %i.kd, %middle.block196 ] ; 2 uses
  %.04375.ph = phi ptr [ %2, %vector.memcheck170 ], [ %2, %.preheader ], [ %i.ke, %middle.block196 ] ; 2 uses
  %xtraiter223 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv82.prol = phi i64 [ %indvars.iv.next83.prol, %.lr.ph.prol ], [ %indvars.iv82.ph, %.lr.ph.preheader ]
  %.04077.prol = phi ptr [ %i.kr, %.lr.ph.prol ], [ %.04077.ph, %.lr.ph.preheader ] ; 3 uses
  %.14276.prol = phi ptr [ %i.kp, %.lr.ph.prol ], [ %.14276.ph, %.lr.ph.preheader ]
  %.04375.prol = phi ptr [ %i.km, %.lr.ph.prol ], [ %.04375.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.km = getelementptr inbounds nuw i8, ptr %.04375.prol, i64 4 ; 2 uses
  %i.kn = load i32, ptr %.04375.prol, align 4, !tbaa !26
  %i.ko = getelementptr inbounds nuw i8, ptr %.04077.prol, i64 4
  store i32 %i.kn, ptr %.04077.prol, align 4, !tbaa !26
  %i.kp = getelementptr inbounds nuw i8, ptr %.14276.prol, i64 4 ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !26
  %i.kr = getelementptr inbounds nuw i8, ptr %.04077.prol, i64 8 ; 2 uses
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !26
  %indvars.iv.next83.prol = add nuw nsw i64 %indvars.iv82.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter223
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !145

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv82.unr = phi i64 [ %indvars.iv82.ph, %.lr.ph.preheader ], [ %indvars.iv.next83.prol, %.lr.ph.prol ]
  %.04077.unr = phi ptr [ %.04077.ph, %.lr.ph.preheader ], [ %i.kr, %.lr.ph.prol ]
  %.14276.unr = phi ptr [ %.14276.ph, %.lr.ph.preheader ], [ %i.kp, %.lr.ph.prol ]
  %.04375.unr = phi ptr [ %.04375.ph, %.lr.ph.preheader ], [ %i.km, %.lr.ph.prol ]
  %i.ks = sub nsw i64 %indvars.iv82.ph, %4
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82 = phi i64 [ %indvars.iv.next83.3, %.lr.ph ], [ %indvars.iv82.unr, %.lr.ph.prol.loopexit ]
  %.04077 = phi ptr [ %i.lr, %.lr.ph ], [ %.04077.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.14276 = phi ptr [ %i.lp, %.lr.ph ], [ %.14276.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.04375 = phi ptr [ %i.lm, %.lr.ph ], [ %.04375.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.04375, i64 4
  %i.kv = load i32, ptr %.04375, align 4, !tbaa !26
  %i.kw = getelementptr inbounds nuw i8, ptr %.04077, i64 4
  store i32 %i.kv, ptr %.04077, align 4, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %.14276, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !26
  %i.kz = getelementptr inbounds nuw i8, ptr %.04077, i64 8
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !26
  %i.la = getelementptr inbounds nuw i8, ptr %.04375, i64 8
  %i.lb = load i32, ptr %i.ku, align 4, !tbaa !26
  %i.lc = getelementptr inbounds nuw i8, ptr %.04077, i64 12
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !26
  %i.ld = getelementptr inbounds nuw i8, ptr %.14276, i64 8
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !26
  %i.lf = getelementptr inbounds nuw i8, ptr %.04077, i64 16
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !26
  %i.lg = getelementptr inbounds nuw i8, ptr %.04375, i64 12
  %i.lh = load i32, ptr %i.la, align 4, !tbaa !26
  %i.li = getelementptr inbounds nuw i8, ptr %.04077, i64 20
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !26
  %i.lj = getelementptr inbounds nuw i8, ptr %.14276, i64 12
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !26
  %i.ll = getelementptr inbounds nuw i8, ptr %.04077, i64 24
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !26
  %i.lm = getelementptr inbounds nuw i8, ptr %.04375, i64 16
  %i.ln = load i32, ptr %i.lg, align 4, !tbaa !26
  %i.lo = getelementptr inbounds nuw i8, ptr %.04077, i64 28
  store i32 %i.ln, ptr %i.ll, align 4, !tbaa !26
  %i.lp = getelementptr inbounds nuw i8, ptr %.14276, i64 16 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !26
  %i.lr = getelementptr inbounds nuw i8, ptr %.04077, i64 32
  store i32 %i.lq, ptr %i.lo, align 4, !tbaa !26
  %indvars.iv.next83.3 = add nuw nsw i64 %indvars.iv82, 4 ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %indvars.iv.next83.3, %4
  br i1 %exitcond85.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block196, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @lbr_bank_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x float>, ptr %2, align 4, !tbaa !44
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !44 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !44 ; 3 uses
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.h = icmp sgt i64 %4, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = load float, ptr %i.m, align 4, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !44 ; 3 uses
  %i.q = fneg nsz <2 x float> %i.d                ; 2 uses
  %i.r = extractelement <2 x float> %i.l, i64 0
  %i.s = fneg nsz float %i.r
  %i.t = fneg nsz float %i.j
  %i.u = fneg nsz float %i.p
  %i.v = insertelement <4 x float> poison, float %i.s, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 2
  %i.x = insertelement <4 x float> %i.w, float %i.u, i64 3
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.z = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
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
  %i.au = load float, ptr %i.aq, align 4, !tbaa !44
  %i.av = load float, ptr %i.ar, align 4, !tbaa !44
  %i.aw = load float, ptr %i.as, align 4, !tbaa !44
  %i.ax = load float, ptr %i.at, align 4, !tbaa !44
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
  %i.bl = load float, ptr %i.be, align 4, !tbaa !44
  %i.bm = load float, ptr %i.bg, align 4, !tbaa !44
  %i.bn = load float, ptr %i.bi, align 4, !tbaa !44
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !44
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3 ; 2 uses
  %i.bt = fmul nsz <4 x float> %broadcast.splat, %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 200 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.an, i64 216
  %i.bw = getelementptr i8, ptr %i.ao, i64 232
  %i.bx = getelementptr i8, ptr %i.ap, i64 248
  %i.by = load float, ptr %i.bu, align 4, !tbaa !44
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !44
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !44
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !44
  %i.cc = insertelement <4 x float> poison, float %i.by, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 3 ; 2 uses
  %i.cg = fmul nsz <4 x float> %broadcast.splat114, %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 212
  %i.ci = getelementptr i8, ptr %i.bf, i64 228
  %i.cj = getelementptr i8, ptr %i.bh, i64 244
  %i.ck = getelementptr i8, ptr %i.bj, i64 260
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !44
  %i.cm = load float, ptr %i.ci, align 4, !tbaa !44
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !44
  %i.co = load float, ptr %i.ck, align 4, !tbaa !44
  %i.cp = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.cm, i64 1
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 2
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 3 ; 2 uses
  %i.ct = fmul nsz <4 x float> %broadcast.splat114, %i.cs ; 2 uses
  %5 = shufflevector <4 x float> %i.cf, <4 x float> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <4 x float> %i.ct, <4 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x float> %i.cg, <4 x float> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = fsub nsz <8 x float> %6, %7
  %9 = fadd nsz <8 x float> %5, %8
  %10 = shufflevector <4 x float> %i.bs, <4 x float> %i.cs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %11 = shufflevector <4 x float> %i.bc, <4 x float> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <4 x float> %i.bt, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = fadd nsz <8 x float> %11, %12
  %14 = fsub nsz <8 x float> %10, %13
  %interleaved.vec = shufflevector <8 x float> %9, <8 x float> %14, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bu, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph107.preheader115

.lr.ph107.preheader115:                           ; preds = %.lr.ph107.preheader, %middle.block
  %indvars.iv109.ph = phi i64 [ 12, %.lr.ph107.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph107

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !149
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %3 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -16
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.dd = load <2 x float>, ptr %i.cy, align 4, !tbaa !44 ; 2 uses
  %i.de = load <2 x float>, ptr %i.db, align 4, !tbaa !44 ; 2 uses
  %i.df = load <3 x float>, ptr %i.cz, align 4, !tbaa !44
  %i.dg = shufflevector <3 x float> %i.df, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.dh = load <4 x float>, ptr %i.da, align 4, !tbaa !44
  %i.di = fmul nsz <4 x float> %i.dg, %i.ag
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  %i.dk = fmul nsz <4 x float> %i.dj, %i.ah
  %i.dl = shufflevector <2 x float> %i.de, <2 x float> %i.dd, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %i.dm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.c, <4 x float> %i.di) ; 3 uses
  %i.dn = shufflevector <2 x float> %i.de, <2 x float> %i.dd, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.c, <4 x float> %i.dk) ; 2 uses
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 1, i32 0> ; 2 uses
  %i.dq = fneg nsz <4 x float> %i.dm
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> %i.dm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.du = fneg nsz <4 x float> %i.dp
  %i.dv = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dw = fmul nsz <4 x float> %i.af, %i.dv
  %i.dx = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 2>
  %i.dy = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.dx, <4 x float> %i.dw)
  %i.dz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.dp, <4 x float> %i.dy)
  %i.ea = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.dm, <4 x float> %i.dz)
  store <4 x float> %i.ea, ptr %i.dc, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %4
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !151

.lr.ph107:                                        ; preds = %.lr.ph107.preheader115, %.lr.ph107
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %.lr.ph107 ], [ %indvars.iv109.ph, %.lr.ph107.preheader115 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv109
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load <4 x float>, ptr %i.ec, align 4, !tbaa !44 ; 3 uses
  %i.ee = fmul nsz <4 x float> %i.g, %i.ed        ; 3 uses
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.eg = fsub nsz <4 x float> %i.ef, %i.ee
  %i.eh = fadd nsz <4 x float> %i.ef, %i.ee
  %i.ei = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ej = fadd nsz <4 x float> %i.ed, %i.ei
  %i.ek = fsub nsz <4 x float> %i.ed, %i.ei
  %i.el = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.el, ptr %i.ec, align 4, !tbaa !44
  %exitcond112.not = icmp eq i64 %indvars.iv109, %i.aj
  br i1 %exitcond112.not, label %._crit_edge, label %.lr.ph107, !llvm.loop !152

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
  %.03547 = phi i32 [ %i.fb, %._crit_edge ], [ 0, %.preheader.lr.ph.preheader ]
  %.03646 = phi ptr [ %.lcssa49, %._crit_edge ], [ %0, %.preheader.lr.ph.preheader ] ; 2 uses
  %.03945 = phi ptr [ %i.fa, %._crit_edge ], [ %1, %.preheader.lr.ph.preheader ] ; 2 uses
  %i.ad = load float, ptr %.03945, align 4, !tbaa !44
  %i.ae = load float, ptr %3, align 4, !tbaa !44  ; 2 uses
  %i.af = load float, ptr %2, align 4, !tbaa !44
  %i.ag = load float, ptr %i.b, align 4, !tbaa !44 ; 3 uses
  %i.ah = load float, ptr %i.c, align 4, !tbaa !44
  %i.ai = fmul nsz float %i.ag, %i.ah
  %i.aj = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.af, float %i.ai)
  %i.ak = fadd nsz float %i.ad, %i.aj             ; 2 uses
  %i.al = load float, ptr %i.d, align 4, !tbaa !44
  %i.am = load float, ptr %i.e, align 4, !tbaa !44
  %i.an = fmul nsz float %i.ag, %i.am
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.al, float %i.an)
  %i.ap = fadd nsz float %i.ak, %i.ao
  store float %i.ag, ptr %3, align 4, !tbaa !44
  store float %i.ak, ptr %i.b, align 4, !tbaa !44
  %i.aq = load float, ptr %i.f, align 4, !tbaa !44 ; 2 uses
  %i.ar = load float, ptr %i.g, align 4, !tbaa !44
  %i.as = load float, ptr %i.h, align 4, !tbaa !44 ; 3 uses
  %i.at = load float, ptr %i.i, align 4, !tbaa !44
  %i.au = fmul nsz float %i.as, %i.at
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.ar, float %i.au)
  %i.aw = fadd nsz float %i.ap, %i.av             ; 2 uses
  %i.ax = load float, ptr %i.j, align 4, !tbaa !44
  %i.ay = load float, ptr %i.k, align 4, !tbaa !44
  %i.az = fmul nsz float %i.as, %i.ay
  %i.ba = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float %i.ax, float %i.az)
  %i.bb = fadd nsz float %i.aw, %i.ba
  store float %i.as, ptr %i.f, align 4, !tbaa !44
  store float %i.aw, ptr %i.h, align 4, !tbaa !44
  %i.bc = load float, ptr %i.l, align 4, !tbaa !44 ; 2 uses
  %i.bd = load float, ptr %i.m, align 4, !tbaa !44
  %i.be = load float, ptr %i.n, align 4, !tbaa !44 ; 3 uses
  %i.bf = load float, ptr %i.o, align 4, !tbaa !44
  %i.bg = fmul nsz float %i.be, %i.bf
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bd, float %i.bg)
  %i.bi = fadd nsz float %i.bb, %i.bh             ; 2 uses
  %i.bj = load float, ptr %i.p, align 4, !tbaa !44
  %i.bk = load float, ptr %i.q, align 4, !tbaa !44
  %i.bl = fmul nsz float %i.be, %i.bk
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bj, float %i.bl)
  %i.bn = fadd nsz float %i.bi, %i.bm
  store float %i.be, ptr %i.l, align 4, !tbaa !44
  store float %i.bi, ptr %i.n, align 4, !tbaa !44
  %i.bo = load float, ptr %i.r, align 4, !tbaa !44 ; 2 uses
  %i.bp = load float, ptr %i.s, align 4, !tbaa !44
  %i.bq = load float, ptr %i.t, align 4, !tbaa !44 ; 3 uses
  %i.br = load float, ptr %i.u, align 4, !tbaa !44
  %i.bs = fmul nsz float %i.bq, %i.br
  %i.bt = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.bp, float %i.bs)
  %i.bu = fadd nsz float %i.bn, %i.bt             ; 2 uses
  %i.bv = load float, ptr %i.v, align 4, !tbaa !44
  %i.bw = load float, ptr %i.w, align 4, !tbaa !44
  %i.bx = fmul nsz float %i.bq, %i.bw
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bo, float %i.bv, float %i.bx)
  %i.bz = fadd nsz float %i.bu, %i.by
  store float %i.bq, ptr %i.r, align 4, !tbaa !44
  store float %i.bu, ptr %i.t, align 4, !tbaa !44
  %i.ca = load float, ptr %i.x, align 4, !tbaa !44
  %i.cb = load float, ptr %i.z, align 4, !tbaa !44 ; 2 uses
  %i.cc = load <4 x float>, ptr %i.y, align 4, !tbaa !44 ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.cg = fmul nsz <2 x float> %i.ce, %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ck = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.cg) ; 2 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  %i.cm = fadd nsz float %i.bz, %i.cl             ; 2 uses
  %i.cn = extractelement <2 x float> %i.ck, i64 1
  %i.co = fadd nsz float %i.cm, %i.cn
  store float %i.cb, ptr %i.x, align 4, !tbaa !44
  store float %i.cm, ptr %i.z, align 4, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %.03646, i64 4 ; 2 uses
  store float %i.co, ptr %.03646, align 4, !tbaa !44
  br i1 %exitcond.peel.not, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 1, %.preheader.lr.ph ]
  %.143 = phi ptr [ %i.ez, %.preheader ], [ %i.cp, %.preheader.lr.ph ] ; 2 uses
  %i.cq = load float, ptr %3, align 4, !tbaa !44
  %i.cr = load float, ptr %i.b, align 4, !tbaa !44 ; 2 uses
end_hunk_0
