Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/noise?download=true
inline.NumInlined: 150
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5Noise10valueMap3DEffffffi:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = and i32 %i.b, 2
  %.not180 = icmp eq i32 %i.c, 0
  %i.d = insertelement <2 x float> poison, float %1, i64 0
  %i.e = insertelement <2 x float> %i.d, float %2, i64 1 ; 2 uses
  %i.f = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.e)
  %i.g = tail call nsz noundef float @llvm.floor.f32(float %3)
  %i.h = fptosi float %i.g to i32                 ; 2 uses
  %i.i = sitofp nsz i32 %i.h to float
  %i.j = fsub nsz float %3, %i.i                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = fptosi <2 x float> %i.f to <2 x i32>     ; 4 uses
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = fsub nsz <2 x float> %i.e, %i.m          ; 3 uses
  %i.o = load <2 x i32>, ptr %i.k, align 4, !tbaa !36 ; 3 uses
  %i.p = uitofp <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %4, i64 0
  %i.r = insertelement <2 x float> %i.q, float %5, i64 1
  %i.s = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.r, <2 x float> %i.n)
  %i.t = fptoui <2 x float> %i.s to <2 x i32>     ; 2 uses
  %i.u = add <2 x i32> %i.t, splat (i32 2)        ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43   ; 3 uses
  %i.x = uitofp nsz i32 %i.w to float
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.x, float %6, float %i.j)
  %i.z = fptoui float %i.y to i32
  %i.aa = add i32 %i.z, 2                         ; 2 uses
  %.not192 = icmp eq i32 %i.aa, 0
  br i1 %.not192, label %.preheader181, label %.preheader183.lr.ph

.preheader183.lr.ph:                              ; preds = %bb.a
  %i.ab = icmp eq <2 x i32> %i.u, zeroinitializer ; 2 uses
  %i.ac = mul i32 %7, 1013
  %i.ad = extractelement <2 x i1> %i.ab, i64 0
  %i.ae = extractelement <2 x i1> %i.ab, i64 1
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ad
  br i1 %or.cond, label %.preheader181, label %.preheader183.lr.ph.split.split

.preheader183.lr.ph.split.split:                  ; preds = %.preheader183.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.ah = extractelement <2 x i32> %i.u, i64 0    ; 4 uses
  %i.ai = extractelement <2 x i32> %i.u, i64 1
  %i.aj = extractelement <2 x i32> %i.t, i64 0
  %i.ak = extractelement <2 x i32> %i.l, i64 1
  %min.iters.check = icmp ult i32 %i.ah, 4
  %i.al = sub i32 -2, %i.aj
  %n.vec = and i32 %i.ah, -4                      ; 4 uses
  %broadcast.splat260 = shufflevector <2 x i32> %i.l, <2 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i32 %i.ah, %n.vec
  %i.am = extractelement <2 x i32> %i.l, i64 0
  br label %.preheader183

.preheader183:                                    ; preds = %.preheader183.lr.ph.split.split, %._crit_edge190.split
  %.0142194 = phi i32 [ 0, %.preheader183.lr.ph.split.split ], [ %i.cs, %._crit_edge190.split ] ; 2 uses
  %.0148193 = phi i32 [ 0, %.preheader183.lr.ph.split.split ], [ %.lcssa258, %._crit_edge190.split ]
  %i.an = add i32 %.0142194, %i.h
  %i.ao = mul nsw i32 %i.an, 52591
  %i.ap = add i32 %i.ao, %i.ac
  br label %.preheader182

.preheader181:                                    ; preds = %._crit_edge190.split, %.preheader183.lr.ph, %bb.a
  %i.aq = extractelement <2 x i32> %i.u, i64 0    ; 3 uses
  %i.ar = extractelement <2 x i32> %i.u, i64 1
  %factor.op.mul223 = mul i32 %i.ar, %i.aq        ; 2 uses
  %.not175224 = icmp eq i32 %i.w, 0
  br i1 %.not175224, label %._crit_edge230.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader181
  %i.as = extractelement <2 x i32> %i.o, i64 1    ; 2 uses
  %.not176213 = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %.not176213, label %._crit_edge230.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.au = extractelement <2 x i32> %i.o, i64 0    ; 3 uses
  %.not177197 = icmp eq i32 %i.au, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 16 uses
  br i1 %.not177197, label %._crit_edge230.split, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !45 ; 2 uses
  %i.ay = extractelement <2 x float> %i.n, i64 1
  %i.az = extractelement <2 x float> %i.n, i64 0  ; 2 uses
  br label %.preheader

.preheader182:                                    ; preds = %.preheader183, %._crit_edge
  %.0144189 = phi i32 [ 0, %.preheader183 ], [ %i.cr, %._crit_edge ] ; 2 uses
  %.1149188 = phi i32 [ %.0148193, %.preheader183 ], [ %.lcssa258, %._crit_edge ] ; 4 uses
  %i.ba = add i32 %.0144189, %i.ak
  %i.bb = mul nsw i32 %i.ba, 31337
  %i.bc = add i32 %i.ap, %i.bb                    ; 2 uses
  %i.bd = icmp ult i32 %i.al, %.1149188
  %or.cond263 = select i1 %min.iters.check, i1 true, i1 %i.bd
  br i1 %or.cond263, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader182
  %i.be = add i32 %.1149188, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bf = add i32 %.1149188, %index
  %i.bg = add <4 x i32> %vec.ind, %broadcast.splat260
  %i.bh = mul nsw <4 x i32> %i.bg, splat (i32 1619)
  %i.bi = add <4 x i32> %broadcast.splat, %i.bh
  %i.bj = and <4 x i32> %i.bi, splat (i32 2147483647) ; 2 uses
  %i.bk = lshr <4 x i32> %i.bj, splat (i32 13)
  %i.bl = xor <4 x i32> %i.bk, %i.bj              ; 3 uses
  %i.bm = mul <4 x i32> %i.bl, splat (i32 60493)
  %i.bn = mul <4 x i32> %i.bm, %i.bl
  %i.bo = add <4 x i32> %i.bn, splat (i32 19990303)
  %i.bp = mul <4 x i32> %i.bo, %i.bl
  %i.bq = add <4 x i32> %i.bp, splat (i32 1376312589)
  %i.br = and <4 x i32> %i.bq, splat (i32 2147483647)
  %i.bs = uitofp nneg <4 x i32> %i.br to <4 x float>
  %i.bt = fmul nnan nsz <4 x float> %i.bs, splat (float f0x30800000)
  %i.bu = fsub nsz <4 x float> splat (float 1.000000e+00), %i.bt
  %i.bv = zext i32 %i.bf to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bv
  store <4 x float> %i.bu, ptr %i.bw, align 4, !tbaa !27
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bx = icmp eq i32 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader182, %middle.block
  %.0146186.ph = phi i32 [ 0, %.preheader182 ], [ %n.vec, %middle.block ]
  %.2185.ph = phi i32 [ %.1149188, %.preheader182 ], [ %i.be, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0146186 = phi i32 [ %i.cq, %scalar.ph ], [ %.0146186.ph, %scalar.ph.preheader ] ; 2 uses
  %.2185 = phi i32 [ %i.cn, %scalar.ph ], [ %.2185.ph, %scalar.ph.preheader ] ; 2 uses
  %i.by = add i32 %.0146186, %i.am
  %i.bz = mul nsw i32 %i.by, 1619
  %i.ca = add i32 %i.bc, %i.bz
  %i.cb = and i32 %i.ca, 2147483647               ; 2 uses
  %i.cc = lshr i32 %i.cb, 13
  %i.cd = xor i32 %i.cc, %i.cb                    ; 3 uses
  %i.ce = mul i32 %i.cd, 60493
  %i.cf = mul i32 %i.ce, %i.cd
  %i.cg = add i32 %i.cf, 19990303
  %i.ch = mul i32 %i.cg, %i.cd
  %i.ci = add i32 %i.ch, 1376312589
  %i.cj = and i32 %i.ci, 2147483647
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fmul nnan nsz float %i.ck, f0x30800000
  %i.cm = fsub nsz float 1.000000e+00, %i.cl
  %i.cn = add i32 %.2185, 1                       ; 2 uses
  %i.co = zext i32 %.2185 to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.co
  store float %i.cm, ptr %i.cp, align 4, !tbaa !27
  %i.cq = add nuw i32 %.0146186, 1                ; 2 uses
  %.not179 = icmp eq i32 %i.cq, %i.ah
  br i1 %.not179, label %._crit_edge, label %scalar.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa258 = phi i32 [ %i.be, %middle.block ], [ %i.cn, %scalar.ph ] ; 2 uses
  %i.cr = add nuw i32 %.0144189, 1                ; 2 uses
  %.not178 = icmp eq i32 %i.cr, %i.ai
  br i1 %.not178, label %._crit_edge190.split, label %.preheader182, !llvm.loop !99

._crit_edge190.split:                             ; preds = %._crit_edge
  %i.cs = add nuw i32 %.0142194, 1                ; 2 uses
  %.not = icmp eq i32 %i.cs, %i.aa
  br i1 %.not, label %.preheader181, label %.preheader183, !llvm.loop !100

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge220.split
  %.0229 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %.1, %._crit_edge220.split ] ; 3 uses
  %.1143228 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %i.ih, %._crit_edge220.split ]
  %.3227 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %.us-phi, %._crit_edge220.split ]
  %.0150225 = phi float [ %i.j, %.preheader.lr.ph.split.split ], [ %.1151, %._crit_edge220.split ] ; 7 uses
  %factor.op.mul.reass = mul i32 %factor.op.mul223, %.0229 ; 2 uses
  %i.ct = add i32 %.0229, 1
  %i.cu = mul i32 %factor.op.mul223, %i.ct        ; 2 uses
  %i.cv = fmul nsz float %.0150225, %.0150225
  %i.cw = fmul nsz float %.0150225, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %.0150225, float 6.000000e+00, float -1.500000e+01)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %.0150225, float %i.cx, float 1.000000e+01)
  %i.cz = fmul nsz float %i.cw, %i.cy
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %._crit_edge211
  %.0138218 = phi i32 [ 0, %.preheader ], [ %.1139, %._crit_edge211 ] ; 3 uses
  %.1145217 = phi i32 [ 0, %.preheader ], [ %i.ic, %._crit_edge211 ]
  %.4216 = phi i32 [ %.3227, %.preheader ], [ %.us-phi, %._crit_edge211 ] ; 2 uses
  %.0152214 = phi float [ %i.ay, %.preheader ], [ %.1153, %._crit_edge211 ] ; 7 uses
  %i.da = mul i32 %.0138218, %i.aq                ; 2 uses
  %i.db = add i32 %i.da, %factor.op.mul.reass     ; 4 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !27
  %i.df = add i32 %i.db, 1
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !27
  %i.dj = add i32 %.0138218, 1                    ; 2 uses
  %i.dk = mul i32 %i.dj, %i.aq                    ; 2 uses
  %i.dl = add i32 %i.dk, %factor.op.mul.reass     ; 4 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !27
  %i.dp = add i32 %i.dl, 1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !27
  %i.dt = add i32 %i.da, %i.cu                    ; 4 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !27
  %i.dx = add i32 %i.dt, 1
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !27
  %i.eb = add i32 %i.dk, %i.cu                    ; 4 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !27
  %i.ef = add i32 %i.eb, 1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !27
  %i.ej = fmul nsz float %.0152214, %.0152214
  %i.ek = fmul nsz float %.0152214, %i.ej
  %i.el = tail call nsz float @llvm.fmuladd.f32(float %.0152214, float 6.000000e+00, float -1.500000e+01)
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %.0152214, float %i.el, float 1.000000e+01)
  %i.en = fmul nsz float %i.ek, %i.em
  %8 = insertelement <2 x float> poison, float %i.ei, i64 0
  %9 = insertelement <2 x float> %8, float %i.ds, i64 1 ; 2 uses
  %10 = insertelement <2 x float> poison, float %i.ee, i64 0
  %11 = insertelement <2 x float> %10, float %i.do, i64 1 ; 2 uses
  %12 = insertelement <2 x float> poison, float %i.ea, i64 0
  %13 = insertelement <2 x float> %12, float %i.di, i64 1 ; 2 uses
  %14 = insertelement <2 x float> poison, float %i.dw, i64 0
  %15 = insertelement <2 x float> %14, float %i.de, i64 1 ; 2 uses
  br i1 %.not180, label %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader, label %_Z22triLinearInterpolationfffffffffffb.exit.preheader

_Z22triLinearInterpolationfffffffffffb.exit.preheader: ; preds = %.lr.ph
  %i.eo = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_Z22triLinearInterpolationfffffffffffb.exit

_Z22triLinearInterpolationfffffffffffb.exit.us.preheader: ; preds = %.lr.ph
  %i.eq = insertelement <2 x float> poison, float %.0152214, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_Z22triLinearInterpolationfffffffffffb.exit.us

_Z22triLinearInterpolationfffffffffffb.exit.us:   ; preds = %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader, %bb.c
  %.0140209.us = phi i32 [ %.1141.us, %bb.c ], [ 0, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ] ; 3 uses
  %.1147208.us = phi i32 [ %i.fw, %bb.c ], [ 0, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ]
  %.5207.us = phi i32 [ %i.ey, %bb.c ], [ %.4216, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ] ; 2 uses
  %.0154206.us = phi float [ %.1155.us, %bb.c ], [ %i.az, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ] ; 2 uses
  %16 = phi <2 x float> [ %30, %bb.c ], [ %9, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ] ; 3 uses
  %17 = phi <2 x float> [ %31, %bb.c ], [ %11, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ] ; 3 uses
  %18 = phi <2 x float> [ %32, %bb.c ], [ %13, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ] ; 3 uses
  %19 = phi <2 x float> [ %33, %bb.c ], [ %15, %_Z22triLinearInterpolationfffffffffffb.exit.us.preheader ] ; 3 uses
  %20 = fsub nsz <2 x float> %18, %19
  %21 = fsub nsz <2 x float> %16, %17
  %22 = insertelement <2 x float> poison, float %.0154206.us, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %23, <2 x float> %19) ; 2 uses
  %25 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %23, <2 x float> %17)
  %i.es = fsub nsz <2 x float> %25, %24
  %i.et = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.er, <2 x float> %24) ; 2 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0
  %i.ev = extractelement <2 x float> %i.et, i64 1 ; 2 uses
  %i.ew = fsub nsz float %i.eu, %i.ev
  %i.ex = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ew, float %.0150225, float %i.ev)
  %i.ey = add i32 %.5207.us, 1                    ; 2 uses
  %i.ez = zext i32 %.5207.us to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ez
  store float %i.ex, ptr %i.fa, align 4, !tbaa !27
  %i.fb = fadd nsz float %4, %.0154206.us         ; 3 uses
  %i.fc = fcmp nsz ult float %i.fb, 1.000000e+00
  br i1 %i.fc, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_Z22triLinearInterpolationfffffffffffb.exit.us
  %i.fd = fadd nsz float %i.fb, -1.000000e+00
  %i.fe = add i32 %.0140209.us, 1
  %i.ff = add i32 %.0140209.us, 2                 ; 4 uses
  %i.fg = add i32 %i.ff, %i.db
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !27
  %i.fk = add i32 %i.ff, %i.dl
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !27
  %i.fo = add i32 %i.ff, %i.dt
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !27
  %i.fs = add i32 %i.ff, %i.eb
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !27
  %26 = insertelement <2 x float> poison, float %i.fv, i64 0
  %27 = insertelement <2 x float> %26, float %i.fn, i64 1
  %28 = insertelement <2 x float> poison, float %i.fr, i64 0
  %29 = insertelement <2 x float> %28, float %i.fj, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_Z22triLinearInterpolationfffffffffffb.exit.us
  %.1155.us = phi nsz float [ %i.fd, %bb.b ], [ %i.fb, %_Z22triLinearInterpolationfffffffffffb.exit.us ]
  %.1141.us = phi i32 [ %i.fe, %bb.b ], [ %.0140209.us, %_Z22triLinearInterpolationfffffffffffb.exit.us ]
  %30 = phi <2 x float> [ %27, %bb.b ], [ %16, %_Z22triLinearInterpolationfffffffffffb.exit.us ]
  %31 = phi <2 x float> [ %16, %bb.b ], [ %17, %_Z22triLinearInterpolationfffffffffffb.exit.us ]
  %32 = phi <2 x float> [ %29, %bb.b ], [ %18, %_Z22triLinearInterpolationfffffffffffb.exit.us ]
  %33 = phi <2 x float> [ %18, %bb.b ], [ %19, %_Z22triLinearInterpolationfffffffffffb.exit.us ]
  %i.fw = add nuw i32 %.1147208.us, 1             ; 2 uses
  %.not177.us = icmp eq i32 %i.fw, %i.au
  br i1 %.not177.us, label %._crit_edge211, label %_Z22triLinearInterpolationfffffffffffb.exit.us, !llvm.loop !101

_Z22triLinearInterpolationfffffffffffb.exit:      ; preds = %_Z22triLinearInterpolationfffffffffffb.exit.preheader, %bb.e
  %.0140209 = phi i32 [ %.1141, %bb.e ], [ 0, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ] ; 3 uses
  %.1147208 = phi i32 [ %i.hy, %bb.e ], [ 0, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ]
  %.5207 = phi i32 [ %i.gs, %bb.e ], [ %.4216, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ] ; 2 uses
  %.0154206 = phi float [ %.1155, %bb.e ], [ %i.az, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ] ; 6 uses
  %i.fx = phi <2 x float> [ %i.hu, %bb.e ], [ %9, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ] ; 3 uses
  %i.fy = phi <2 x float> [ %i.hv, %bb.e ], [ %11, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ] ; 3 uses
  %i.fz = phi <2 x float> [ %i.hw, %bb.e ], [ %13, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ] ; 3 uses
  %i.ga = phi <2 x float> [ %i.hx, %bb.e ], [ %15, %_Z22triLinearInterpolationfffffffffffb.exit.preheader ] ; 3 uses
  %i.gb = fmul nsz float %.0154206, %.0154206
  %i.gc = fmul nsz float %.0154206, %i.gb
  %i.gd = tail call nsz float @llvm.fmuladd.f32(float %.0154206, float 6.000000e+00, float -1.500000e+01)
  %i.ge = tail call nsz float @llvm.fmuladd.f32(float %.0154206, float %i.gd, float 1.000000e+01)
  %i.gf = fmul nsz float %i.gc, %i.ge
  %i.gg = fsub nsz <2 x float> %i.fz, %i.ga
  %i.gh = fsub nsz <2 x float> %i.fx, %i.fy
  %i.gi = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gj, <2 x float> %i.ga) ; 2 uses
  %i.gl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gj, <2 x float> %i.fy)
  %i.gm = fsub nsz <2 x float> %i.gl, %i.gk
  %i.gn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.ep, <2 x float> %i.gk) ; 2 uses
  %i.go = extractelement <2 x float> %i.gn, i64 0
  %i.gp = extractelement <2 x float> %i.gn, i64 1 ; 2 uses
  %i.gq = fsub nsz float %i.go, %i.gp
  %i.gr = tail call nsz noundef float @llvm.fmuladd.f32(float %i.gq, float %i.cz, float %i.gp)
  %i.gs = add i32 %.5207, 1                       ; 2 uses
  %i.gt = zext i32 %.5207 to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.gt
  store float %i.gr, ptr %i.gu, align 4, !tbaa !27
  %i.gv = fadd nsz float %4, %.0154206            ; 3 uses
  %i.gw = fcmp nsz ult float %i.gv, 1.000000e+00
  br i1 %i.gw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_Z22triLinearInterpolationfffffffffffb.exit
  %i.gx = fadd nsz float %i.gv, -1.000000e+00
  %i.gy = add i32 %.0140209, 1
  %i.gz = add i32 %.0140209, 2                    ; 4 uses
  %i.ha = add i32 %i.gz, %i.db
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !27
  %i.he = add i32 %i.gz, %i.dl
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !27
  %i.hi = add i32 %i.gz, %i.dt
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !27
  %i.hm = add i32 %i.gz, %i.eb
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !27
  %i.hq = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.hh, i64 1
  %i.hs = insertelement <2 x float> poison, float %i.hl, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %i.hd, i64 1
  br label %bb.e

bb.e:                                             ; preds = %_Z22triLinearInterpolationfffffffffffb.exit, %bb.d
  %.1155 = phi nsz float [ %i.gx, %bb.d ], [ %i.gv, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %.1141 = phi i32 [ %i.gy, %bb.d ], [ %.0140209, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.hu = phi <2 x float> [ %i.hr, %bb.d ], [ %i.fx, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.hv = phi <2 x float> [ %i.fx, %bb.d ], [ %i.fy, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.hw = phi <2 x float> [ %i.ht, %bb.d ], [ %i.fz, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.hx = phi <2 x float> [ %i.fz, %bb.d ], [ %i.ga, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.hy = add nuw i32 %.1147208, 1                ; 2 uses
  %.not177 = icmp eq i32 %i.hy, %i.au
  br i1 %.not177, label %._crit_edge211, label %_Z22triLinearInterpolationfffffffffffb.exit, !llvm.loop !101

._crit_edge211:                                   ; preds = %bb.e, %bb.c
  %.us-phi = phi i32 [ %i.ey, %bb.c ], [ %i.gs, %bb.e ] ; 2 uses
  %i.hz = fadd nsz float %5, %.0152214            ; 3 uses
  %i.ia = fcmp nsz ult float %i.hz, 1.000000e+00  ; 2 uses
  %i.ib = fadd nsz float %i.hz, -1.000000e+00
  %.1153 = select nsz i1 %i.ia, float %i.hz, float %i.ib
  %.1139 = select i1 %i.ia, i32 %.0138218, i32 %i.dj
  %i.ic = add nuw i32 %.1145217, 1                ; 2 uses
  %.not176 = icmp eq i32 %i.ic, %i.as
  br i1 %.not176, label %._crit_edge220.split, label %.lr.ph, !llvm.loop !102

._crit_edge220.split:                             ; preds = %._crit_edge211
  %i.id = fadd nsz float %6, %.0150225            ; 3 uses
  %i.ie = fcmp nsz oge float %i.id, 1.000000e+00  ; 2 uses
  %i.if = fadd nsz float %i.id, -1.000000e+00
  %.1151 = select nsz i1 %i.ie, float %i.if, float %i.id
  %i.ig = zext i1 %i.ie to i32
  %.1 = add i32 %.0229, %i.ig
  %i.ih = add nuw i32 %.1143228, 1                ; 2 uses
  %.not175 = icmp eq i32 %i.ih, %i.w
  br i1 %.not175, label %._crit_edge230.split, label %.preheader, !llvm.loop !103

._crit_edge230.split:                             ; preds = %._crit_edge220.split, %.preheader.lr.ph.split, %.preheader.lr.ph, %.preheader181
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = mul i32 %i.d, %i.b                       ; 11 uses
  %i.f = zext i32 %i.e to i64                     ; 29 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load <2 x float>, ptr %i.g, align 8, !tbaa !27
  %i.i = insertelement <2 x float> poison, float %1, i64 0
  %i.j = insertelement <2 x float> %i.i, float %2, i64 1
  %i.k = fdiv nsz <2 x float> %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.n, i1 false)
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %.loopexit38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %.not32 = icmp eq ptr %i.p, null
  br i1 %.not32, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #30 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.not3339 = icmp eq i32 %i.e, 0
  br i1 %.not3339, label %.loopexit38, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.preheader202, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.s, align 4, !tbaa !27
  store <4 x float> splat (float 1.000000e+00), ptr %i.t, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %.loopexit38, label %.lr.ph.preheader202

.lr.ph.preheader202:                              ; preds = %.lr.ph.preheader, %middle.block
  %.02940.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader202, %.lr.ph
  %.02940 = phi i64 [ %i.w, %.lr.ph ], [ %.02940.ph, %.lr.ph.preheader202 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02940
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !27
  %i.w = add nuw nsw i64 %.02940, 1               ; 2 uses
  %.not33 = icmp eq i64 %i.w, %i.f
  br i1 %.not33, label %.loopexit38, label %.lr.ph, !llvm.loop !105

.loopexit38:                                      ; preds = %.lr.ph, %middle.block, %bb.d, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !48
  %.not49 = icmp eq i16 %i.y, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.loopexit38
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.not4160.i = icmp eq i32 %i.e, 0               ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = shl nuw nsw i64 %i.f, 2                 ; 11 uses
  %scevgep79 = getelementptr i8, ptr %3, i64 %i.af ; 4 uses
  %min.iters.check159 = icmp ult i32 %i.e, 8
  %n.vec161 = and i64 %i.f, 4294967292            ; 3 uses
  %cmp.n171 = icmp eq i64 %n.vec161, %i.f
  %min.iters.check120 = icmp ult i32 %i.e, 8
  %n.vec122 = and i64 %i.f, 4294967288            ; 3 uses
  %cmp.n133 = icmp eq i64 %n.vec122, %i.f
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ag = add nsw i64 %i.f, -1
  %min.iters.check99 = icmp ult i32 %i.e, 8
  %n.vec101 = and i64 %i.f, 4294967292            ; 3 uses
  %cmp.n111 = icmp eq i64 %n.vec101, %i.f
  %xtraiter203 = and i64 %i.f, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  %i.ah = add nsw i64 %i.f, -1
  %min.iters.check63 = icmp ult i32 %i.e, 8
  %n.vec65 = and i64 %i.f, 4294967288             ; 3 uses
  %cmp.n73 = icmp eq i64 %n.vec65, %i.f
  %xtraiter205 = and i64 %i.f, 1
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  %i.ai = add nsw i64 %i.f, -1
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5Noise13updateResultsEfPfPKfm.exit, %.loopexit38
  %i.aj = load float, ptr %0, align 8, !tbaa !65
end_hunk_0
