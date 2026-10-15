Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5:bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not209 = icmp sgt i32 %i.k, %i.j
  br i1 %.not209, label %._crit_edge213.split, label %.lr.ph212

.lr.ph212:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %factor.op.mul214 = mul i64 %i.q, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.s = load i32, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  br i1 %i.t, label %.lr.ph212.split, label %._crit_edge213.split

.lr.ph212.split:                                  ; preds = %.lr.ph212
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !48
  %factor.op.mul = mul i64 %i.ah, %i.ag
  %i.ai = load ptr, ptr %5, align 8, !tbaa !19    ; 4 uses
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i64, ptr %i.z, align 8, !tbaa !48
  %i.am = mul i64 %i.al, %i.ak                    ; 4 uses
  %i.an = load i32, ptr %6, align 4, !tbaa !57    ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aq = load i32, ptr %i.x, align 4, !tbaa !76
  %.not79 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !63
  %i.as = sext i32 %i.k to i64
  %i.at = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.au = zext nneg i32 %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  %n.vec = and i64 %i.au, 2147483644              ; 8 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph212.split, %._crit_edge208
  %indvars.iv221 = phi i64 [ %i.as, %.lr.ph212.split ], [ %indvars.iv.next222, %._crit_edge208 ] ; 3 uses
  %.reass215 = mul i64 %factor.op.mul214, %indvars.iv221
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass215
  %i.ax = shl nsw i64 %indvars.iv221, 2           ; 4 uses
  %i.ay = mul i64 %i.am, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ay ; 3 uses
  %i.ba = or disjoint i64 %i.ax, 1
  %i.bb = mul i64 %i.am, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bb ; 3 uses
  %i.bd = or disjoint i64 %i.ax, 2
  %i.be = mul i64 %i.am, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.be ; 3 uses
  %i.bg = or disjoint i64 %i.ax, 3
  %i.bh = mul i64 %i.am, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bh ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 %n.vec
  %i.bk = getelementptr i8, ptr %i.bf, i64 %n.vec
  %i.bl = getelementptr i8, ptr %i.bc, i64 %n.vec
  %i.bm = getelementptr i8, ptr %i.az, i64 %n.vec
  br label %bb.c

._crit_edge208:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next222 to i32
  %exitcond224.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond224.not, label %._crit_edge213.split, label %.lr.ph207

bb.c:                                             ; preds = %.lr.ph207, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 4 uses
  %.077204 = phi ptr [ %i.aw, %.lr.ph207 ], [ %i.im, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 20 uses
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.reass ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.preheader260, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bo = getelementptr i8, ptr %i.bn, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi241 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi242 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %vec.phi243 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep244 = getelementptr i8, ptr %i.bf, i64 %index
  %next.gep245 = getelementptr i8, ptr %i.bc, i64 %index
  %next.gep246 = getelementptr i8, ptr %i.az, i64 %index
  %next.gep247 = getelementptr i8, ptr %i.bn, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep246, align 1, !tbaa !49
  %i.bp = sext <4 x i8> %wide.load to <4 x i32>
  %wide.load248 = load <4 x i8>, ptr %next.gep247, align 1, !tbaa !49
  %i.bq = sext <4 x i8> %wide.load248 to <4 x i32> ; 4 uses
  %i.br = mul nsw <4 x i32> %i.bq, %i.bp
  %i.bs = add <4 x i32> %i.br, %vec.phi243        ; 2 uses
  %wide.load249 = load <4 x i8>, ptr %next.gep245, align 1, !tbaa !49
  %i.bt = sext <4 x i8> %wide.load249 to <4 x i32>
  %i.bu = mul nsw <4 x i32> %i.bt, %i.bq
  %i.bv = add <4 x i32> %i.bu, %vec.phi242        ; 2 uses
  %wide.load250 = load <4 x i8>, ptr %next.gep244, align 1, !tbaa !49
  %i.bw = sext <4 x i8> %wide.load250 to <4 x i32>
  %i.bx = mul nsw <4 x i32> %i.bw, %i.bq
  %i.by = add <4 x i32> %i.bx, %vec.phi241        ; 2 uses
  %wide.load251 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !49
  %i.bz = sext <4 x i8> %wide.load251 to <4 x i32>
  %i.ca = mul nsw <4 x i32> %i.bz, %i.bq
  %i.cb = add <4 x i32> %i.ca, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %i.cd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cb) ; 2 uses
  %i.ce = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.by) ; 2 uses
  %i.cf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bv) ; 2 uses
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bs) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader260

.lr.ph.preheader260:                              ; preds = %.lr.ph.preheader, %middle.block
  %.066200.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  %.067199.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cd, %middle.block ]
  %.068198.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ce, %middle.block ]
  %.069197.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cf, %middle.block ]
  %.070196.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cg, %middle.block ]
  %.071195.ph = phi ptr [ %i.bi, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  %.072194.ph = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.bk, %middle.block ]
  %.073193.ph = phi ptr [ %i.bc, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
  %.074192.ph = phi ptr [ %i.az, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  %.075191.ph = phi ptr [ %i.bn, %.lr.ph.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader260, %.lr.ph
  %.066200 = phi i32 [ %i.de, %.lr.ph ], [ %.066200.ph, %.lr.ph.preheader260 ]
  %.067199 = phi i32 [ %i.dc, %.lr.ph ], [ %.067199.ph, %.lr.ph.preheader260 ]
  %.068198 = phi i32 [ %i.cx, %.lr.ph ], [ %.068198.ph, %.lr.ph.preheader260 ]
  %.069197 = phi i32 [ %i.cs, %.lr.ph ], [ %.069197.ph, %.lr.ph.preheader260 ]
  %.070196 = phi i32 [ %i.cp, %.lr.ph ], [ %.070196.ph, %.lr.ph.preheader260 ]
  %.071195 = phi ptr [ %i.cy, %.lr.ph ], [ %.071195.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.072194 = phi ptr [ %i.ct, %.lr.ph ], [ %.072194.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.073193 = phi ptr [ %i.cl, %.lr.ph ], [ %.073193.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.074192 = phi ptr [ %i.ch, %.lr.ph ], [ %.074192.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.075191 = phi ptr [ %i.dd, %.lr.ph ], [ %.075191.ph, %.lr.ph.preheader260 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.074192, i64 1
  %i.ci = load i8, ptr %.074192, align 1, !tbaa !49
  %i.cj = load i8, ptr %.075191, align 1, !tbaa !49
  %i.ck = sext i8 %i.cj to i32                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.073193, i64 1
  %i.cm = load i8, ptr %.073193, align 1, !tbaa !49
  %i.cn = sext i8 %i.ci to i32
  %i.co = mul nsw i32 %i.ck, %i.cn
  %i.cp = add nsw i32 %i.co, %.070196             ; 2 uses
  %i.cq = sext i8 %i.cm to i32
  %i.cr = mul nsw i32 %i.cq, %i.ck
  %i.cs = add nsw i32 %i.cr, %.069197             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.072194, i64 1
  %i.cu = load i8, ptr %.072194, align 1, !tbaa !49
  %i.cv = sext i8 %i.cu to i32
  %i.cw = mul nsw i32 %i.cv, %i.ck
  %i.cx = add nsw i32 %i.cw, %.068198             ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.071195, i64 1
  %i.cz = load i8, ptr %.071195, align 1, !tbaa !49
  %i.da = sext i8 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.ck
  %i.dc = add nsw i32 %i.db, %.067199             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.075191, i64 1
  %i.de = add nuw nsw i32 %.066200, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !149

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa240 = phi i32 [ %i.cg, %middle.block ], [ %i.cp, %.lr.ph ]
  %.lcssa239 = phi i32 [ %i.cf, %middle.block ], [ %i.cs, %.lr.ph ]
  %.lcssa238 = phi i32 [ %i.ce, %middle.block ], [ %i.cx, %.lr.ph ]
  %.lcssa = phi i32 [ %i.cd, %middle.block ], [ %i.dc, %.lr.ph ]
  %i.df = insertelement <2 x i32> poison, i32 %.lcssa240, i64 0
  %i.dg = insertelement <2 x i32> %i.df, i32 %.lcssa239, i64 1
  %i.dh = sitofp <2 x i32> %i.dg to <2 x float>
  %7 = sitofp fast i32 %.lcssa238 to float
  %8 = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.068.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %7, %._crit_edge.loopexit ]
  %.067.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %8, %._crit_edge.loopexit ]
  %i.di = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.dh, %._crit_edge.loopexit ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !52 ; 3 uses
  %i.dl = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fmul fast <2 x float> %i.dm, %i.di      ; 2 uses
  %9 = fmul fast float %i.dk, %.068.lcssa         ; 2 uses
  %10 = fmul fast float %i.dk, %.067.lcssa        ; 2 uses
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.do = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !52 ; 3 uses
  %i.dr = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fadd fast <2 x float> %i.ds, %i.dn
  %11 = fadd fast float %i.dq, %9
  %12 = fadd fast float %i.dq, %10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.063 = phi nsz float [ %11, %bb.d ], [ %9, %._crit_edge ] ; 13 uses
  %.0 = phi nsz float [ %12, %bb.d ], [ %10, %._crit_edge ] ; 13 uses
  %i.du = phi <2 x float> [ %i.dt, %bb.d ], [ %i.dn, %._crit_edge ] ; 13 uses
  switch i32 %i.ar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163
    i32 6, label %bb.f
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157: ; preds = %bb.e
  %i.dv = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.du, <2 x float> zeroinitializer)
  store <2 x float> %i.dv, ptr %.077204, align 4, !tbaa !52
  %13 = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.063, float 0.000000e+00)
  %14 = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %13, ptr %14, align 4, !tbaa !52
  %15 = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159: ; preds = %bb.e
  %i.dw = load ptr, ptr %i.v, align 8, !tbaa !19  ; 4 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !52
  %i.dy = extractelement <2 x float> %i.du, i64 0 ; 2 uses
  %i.dz = fcmp fast ogt float %i.dy, 0.000000e+00
  %i.ea = select fast i1 %i.dz, float 1.000000e+00, float %i.dx
  %i.eb = fmul fast float %i.ea, %i.dy
  store float %i.eb, ptr %.077204, align 4, !tbaa !52
  %i.ec = load float, ptr %i.dw, align 4, !tbaa !52
  %i.ed = extractelement <2 x float> %i.du, i64 1 ; 2 uses
  %i.ee = fcmp fast ogt float %i.ed, 0.000000e+00
  %i.ef = select fast i1 %i.ee, float 1.000000e+00, float %i.ec
  %i.eg = fmul fast float %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  store float %i.eg, ptr %i.eh, align 4, !tbaa !52
  %i.ei = load float, ptr %i.dw, align 4, !tbaa !52
  %i.ej = fcmp fast ogt float %.063, 0.000000e+00
  %i.ek = select fast i1 %i.ej, float 1.000000e+00, float %i.ei
  %i.el = fmul fast float %i.ek, %.063
  %i.em = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %i.el, ptr %i.em, align 4, !tbaa !52
  %i.en = load float, ptr %i.dw, align 4, !tbaa !52
  %i.eo = fcmp fast ogt float %.0, 0.000000e+00
  %i.ep = select fast i1 %i.eo, float 1.000000e+00, float %i.en
  %i.eq = fmul fast float %i.ep, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155: ; preds = %bb.e
  %i.er = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !52
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 4 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !52 ; 2 uses
  %i.ev = extractelement <2 x float> %i.du, i64 0
  %.0145 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ev, float %i.es) ; 2 uses
  %i.ew = fcmp fast ogt float %.0145, %i.eu
  %.1.ph154 = select i1 %i.ew, float %i.eu, float %.0145
  store float %.1.ph154, ptr %.077204, align 4, !tbaa !52
  %i.ex = load float, ptr %i.er, align 4, !tbaa !52
  %i.ey = load float, ptr %i.et, align 4, !tbaa !52 ; 2 uses
  %i.ez = extractelement <2 x float> %i.du, i64 1
  %.0146 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.ez, float %i.ex) ; 2 uses
  %i.fa = fcmp fast ogt float %.0146, %i.ey
  %.1147.ph167 = select i1 %i.fa, float %i.ey, float %.0146
  %i.fb = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  store float %.1147.ph167, ptr %i.fb, align 4, !tbaa !52
  %i.fc = load float, ptr %i.er, align 4, !tbaa !52
  %i.fd = load float, ptr %i.et, align 4, !tbaa !52 ; 2 uses
  %.0150 = call nnan ninf nsz float @llvm.maxnum.f32(float %.063, float %i.fc) ; 2 uses
  %i.fe = fcmp fast ogt float %.0150, %i.fd
  %.1151.ph180 = select i1 %i.fe, float %i.fd, float %.0150
  %i.ff = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %.1151.ph180, ptr %i.ff, align 4, !tbaa !52
  %i.fg = load float, ptr %i.er, align 4, !tbaa !52
  %i.fh = load float, ptr %i.et, align 4, !tbaa !52 ; 2 uses
  %.0148 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.fg) ; 2 uses
  %i.fi = fcmp fast ogt float %.0148, %i.fh
  br i1 %i.fi, label %bb.m, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161: ; preds = %bb.e
  %16 = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  %17 = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = insertelement <4 x float> %17, float %.063, i64 2
  %19 = insertelement <4 x float> %18, float %.0, i64 3
  %20 = call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %19, <4 x float> splat (float f0x42B0C0A5))
  %21 = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %20, <4 x float> splat (float f0xC2B0C0A5))
  %22 = fneg fast <4 x float> %21
  %23 = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %22)
  %24 = fadd fast <4 x float> %23, splat (float 1.000000e+00)
  %25 = fdiv fast <4 x float> splat (float 1.000000e+00), %24 ; 3 uses
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %26, ptr %.077204, align 4, !tbaa !52
  %i.fj = extractelement <4 x float> %25, i64 2
  store float %i.fj, ptr %16, align 4, !tbaa !52
  %i.fk = extractelement <4 x float> %25, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163: ; preds = %bb.e
  %i.fl = extractelement <2 x float> %i.du, i64 0
  %i.fm = extractelement <2 x float> %i.du, i64 1
  %i.fn = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fl)
  %i.fo = fadd fast float %i.fn, 1.000000e+00
  %i.fp = call fast float @llvm.log.f32(float %i.fo)
  %i.fq = call fast float @llvm.tanh.f32(float %i.fp)
  %i.fr = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fm)
  %i.fs = fadd fast float %i.fr, 1.000000e+00
  %i.ft = call fast float @llvm.log.f32(float %i.fs)
  %i.fu = call fast float @llvm.tanh.f32(float %i.ft)
  %i.fv = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fw = insertelement <2 x float> %i.fv, float %i.fu, i64 1
  %i.fx = fmul fast <2 x float> %i.fw, %i.du
  store <2 x float> %i.fx, ptr %.077204, align 4, !tbaa !52
  %i.fy = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.063)
  %i.fz = fadd fast float %i.fy, 1.000000e+00
  %i.ga = call fast float @llvm.log.f32(float %i.fz)
  %i.gb = call fast float @llvm.tanh.f32(float %i.ga)
  %i.gc = fmul fast float %i.gb, %.063
  %i.gd = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %i.gc, ptr %i.gd, align 4, !tbaa !52
  %i.ge = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.gf = fadd fast float %i.ge, 1.000000e+00
  %i.gg = call fast float @llvm.log.f32(float %i.gf)
  %i.gh = call fast float @llvm.tanh.f32(float %i.gg)
  %i.gi = fmul fast float %i.gh, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %bb.e
  %i.gj = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !52 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 4 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !52 ; 2 uses
  %i.gn = fneg fast float %i.gm
  %i.go = fdiv fast float %i.gn, %i.gk            ; 2 uses
  %i.gp = extractelement <2 x float> %i.du, i64 0 ; 5 uses
  %i.gq = fcmp fast olt float %i.gp, %i.go
  br i1 %i.gq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gr = fdiv fast float 1.000000e+00, %i.gk
  %i.gs = fadd fast float %i.go, %i.gr
  %i.gt = fcmp fast ogt float %i.gp, %i.gs
  br i1 %i.gt, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gu = fmul fast float %i.gk, %i.gp
  %i.gv = fadd fast float %i.gu, %i.gm
  %i.gw = fmul fast float %i.gv, %i.gp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread:  ; preds = %bb.h, %bb.g, %bb.f
  %.1.ph = phi float [ 0.000000e+00, %bb.f ], [ %i.gp, %bb.g ], [ %i.gw, %bb.h ]
  store float %.1.ph, ptr %.077204, align 4, !tbaa !52
  %i.gx = load float, ptr %i.gj, align 4, !tbaa !52 ; 3 uses
  %i.gy = load float, ptr %i.gl, align 4, !tbaa !52 ; 2 uses
  %i.gz = fneg fast float %i.gy
  %i.ha = fdiv fast float %i.gz, %i.gx            ; 2 uses
  %i.hb = extractelement <2 x float> %i.du, i64 1 ; 5 uses
  %i.hc = fcmp fast olt float %i.hb, %i.ha
  br i1 %i.hc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread, label %bb.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit82:         ; preds = %bb.e
  %i.hd = extractelement <2 x float> %i.du, i64 0
  store float %i.hd, ptr %.077204, align 4, !tbaa !52
  %i.he = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  %i.hf = extractelement <2 x float> %i.du, i64 1
  store float %i.hf, ptr %i.he, align 4, !tbaa !52
  %i.hg = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %.063, ptr %i.hg, align 4, !tbaa !52
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread
  %i.hh = fdiv fast float 1.000000e+00, %i.gx
  %i.hi = fadd fast float %i.ha, %i.hh
  %i.hj = fcmp fast ogt float %i.hb, %i.hi
  br i1 %i.hj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hk = fmul fast float %i.gx, %i.hb
  %i.hl = fadd fast float %i.hk, %i.gy
  %i.hm = fmul fast float %i.hl, %i.hb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread:  ; preds = %bb.j, %bb.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread
  %.1147.ph = phi float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread ], [ %i.hb, %bb.i ], [ %i.hm, %bb.j ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.077204, i64 4
  store float %.1147.ph, ptr %i.hn, align 4, !tbaa !52
  %i.ho = load float, ptr %i.gj, align 4, !tbaa !52 ; 3 uses
  %i.hp = load float, ptr %i.gl, align 4, !tbaa !52 ; 2 uses
  %i.hq = fneg fast float %i.hp
  %i.hr = fdiv fast float %i.hq, %i.ho            ; 2 uses
  %i.hs = fcmp fast olt float %.063, %i.hr
  br i1 %i.hs, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread, label %bb.k

bb.k:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread
  %i.ht = fdiv fast float 1.000000e+00, %i.ho
  %i.hu = fadd fast float %i.hr, %i.ht
  %i.hv = fcmp fast ogt float %.063, %i.hu
  br i1 %i.hv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hw = fmul fast float %i.ho, %.063
  %i.hx = fadd fast float %i.hw, %i.hp
  %i.hy = fmul fast float %i.hx, %.063
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread:  ; preds = %bb.l, %bb.k, %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread
  %.1151.ph = phi float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread ], [ %.063, %bb.k ], [ %i.hy, %bb.l ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.077204, i64 8
  store float %.1151.ph, ptr %i.hz, align 4, !tbaa !52
  %i.ia = load float, ptr %i.gj, align 4, !tbaa !52 ; 3 uses
  %i.ib = load float, ptr %i.gl, align 4, !tbaa !52 ; 2 uses
  %i.ic = fneg fast float %i.ib
  %i.id = fdiv fast float %i.ic, %i.ia            ; 2 uses
  %i.ie = fcmp fast olt float %.0, %i.id
  br i1 %i.ie, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.m:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.n:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread
  %i.if = fdiv fast float 1.000000e+00, %i.ia
  %i.ig = fadd fast float %i.id, %i.if
  %i.ih = fcmp fast ogt float %.0, %i.ig
  br i1 %i.ih, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ii = fmul fast float %i.ia, %.0
  %i.ij = fadd fast float %i.ii, %i.ib
  %i.ik = fmul fast float %i.ij, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82, %bb.o, %bb.n, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161, %bb.m, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157, %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread
  %.1149 = phi nsz float [ %.0, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82 ], [ %15, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157 ], [ %i.eq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159 ], [ %i.fh, %bb.m ], [ %.0148, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155 ], [ %i.fk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161 ], [ %i.gi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163 ], [ %i.ik, %bb.o ], [ %.0, %bb.n ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread ]
  %i.il = getelementptr inbounds nuw i8, ptr %.077204, i64 12
  store float %.1149, ptr %i.il, align 4, !tbaa !52
  %i.im = getelementptr inbounds nuw i8, ptr %.077204, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond220.not, label %._crit_edge208, label %bb.c, !llvm.loop !150

._crit_edge213.split:                             ; preds = %._crit_edge208, %.lr.ph212, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge213.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !57     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !57
  %i.h = load i32, ptr %0, align 4, !tbaa !57     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !57
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !57
  %i.k = load i32, ptr %i.a, align 4, !tbaa !57   ; 2 uses
  %.not344 = icmp sgt i32 %i.k, %i.j
  br i1 %.not344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 376
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %i.n, align 8, !tbaa !45
  %.pre356 = load i32, ptr %5, align 4, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph347, %._crit_edge343
  %i.aa = phi i32 [ %.pre356, %.lr.ph347 ], [ %i.al, %._crit_edge343 ] ; 2 uses
  %i.ab = phi i32 [ %.pre, %.lr.ph347 ], [ %i.am, %._crit_edge343 ] ; 2 uses
  %indvars.iv352 = phi i64 [ %i.y, %.lr.ph347 ], [ %indvars.iv.next353, %._crit_edge343 ] ; 3 uses
  %i.ac = sdiv i32 %i.ab, %i.aa
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph342.preheader, label %._crit_edge343

.lr.ph342.preheader:                              ; preds = %bb.c
  %i.ae = load ptr, ptr %3, align 8, !tbaa !19
  %i.af = load i32, ptr %i.l, align 4, !tbaa !47
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv352, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !48
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  br label %.lr.ph342

._crit_edge343:                                   ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %bb.c
  %i.al = phi i32 [ %i.aa, %bb.c ], [ %i.ox, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %i.am = phi i32 [ %i.ab, %bb.c ], [ %i.ow, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ]
  %indvars.iv.next353 = add nsw i64 %indvars.iv352, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next353 to i32
  %exitcond355.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond355.not, label %._crit_edge348, label %bb.c

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph342.preheader ], [ %indvars.iv.next, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %.066340 = phi ptr [ %i.ak, %.lr.ph342.preheader ], [ %i.ov, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ] ; 3 uses
  %i.an = load i32, ptr %7, align 4, !tbaa !57    ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph342
  %i.ap = load ptr, ptr %6, align 8, !tbaa !19
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !47
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %indvars.iv352, %i.ar
  %i.at = load i64, ptr %i.s, align 8, !tbaa !48
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !47
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %indvars.iv, %i.ay
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !48
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.068337 = phi ptr [ %i.bx, %.lr.ph ], [ %i.bc, %.lr.ph.preheader ] ; 2 uses
  %.069336 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bd = phi <4 x i32> [ %i.bv, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.be = phi <4 x i32> [ %i.bt, %.lr.ph ], [ zeroinitializer, %.lr.ph.preheader ]
  %.072335 = phi ptr [ %i.bw, %.lr.ph ], [ %i.av, %.lr.ph.preheader ] ; 2 uses
  %i.bf = load i8, ptr %.072335, align 1, !tbaa !49
  %i.bg = sext i8 %i.bf to i16
  %i.bh = insertelement <8 x i16> poison, i16 %i.bg, i64 0
  %i.bi = shufflevector <8 x i16> %i.bh, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bj = load i64, ptr %.068337, align 1, !tbaa !49
  %i.bk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bk to <16 x i8>    ; 2 uses
  %.lobit.i = ashr <16 x i8> %i.bl, splat (i8 7)
  %i.bm = shufflevector <16 x i8> %i.bl, <16 x i8> %.lobit.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bn = bitcast <16 x i8> %i.bm to <8 x i16>    ; 2 uses
  %i.bo = mul <8 x i16> %i.bi, %i.bn              ; 2 uses
  %i.bp = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.bi, <8 x i16> %i.bn) ; 2 uses
  %i.bq = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.br = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bs = bitcast <8 x i16> %i.bq to <4 x i32>
  %i.bt = add <4 x i32> %i.be, %i.bs              ; 2 uses
  %i.bu = bitcast <8 x i16> %i.br to <4 x i32>
  %i.bv = add <4 x i32> %i.bd, %i.bu              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.072335, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.068337, i64 8
  %i.by = add nuw nsw i32 %.069336, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !151

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bz = sitofp fast <4 x i32> %i.bt to <4 x float>
  %i.ca = sitofp fast <4 x i32> %i.bv to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph342
  %.lcssa334 = phi <4 x float> [ zeroinitializer, %.lr.ph342 ], [ %i.bz, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph342 ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.cc = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = load <4 x float>, ptr %i.cd, align 1, !tbaa !49 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !49 ; 2 uses
  %i.ch = load i32, ptr %i.u, align 4, !tbaa !76
  %.not73 = icmp eq i32 %i.ch, 0
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cc ; 2 uses
  %i.ck = load <4 x float>, ptr %i.cj, align 1, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 1, !tbaa !49
  %i.cn = fmul fast <4 x float> %i.ce, %.lcssa334
  %i.co = fadd fast <4 x float> %i.ck, %i.cn
  %i.cp = fmul fast <4 x float> %i.cg, %.lcssa
  %i.cq = fadd fast <4 x float> %i.cm, %i.cp
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.cr = fmul fast <4 x float> %i.ce, %.lcssa334
  %i.cs = fmul fast <4 x float> %i.cg, %.lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.065 = phi nsz <4 x float> [ %i.co, %bb.d ], [ %i.cr, %bb.e ] ; 10 uses
  %.064 = phi nsz <4 x float> [ %i.cq, %bb.d ], [ %i.cs, %bb.e ] ; 10 uses
  %i.ct = load i32, ptr %i.w, align 8, !tbaa !63
  switch i32 %i.ct, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread310
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread313
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread316
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread319
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread322
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit82.thread: ; preds = %bb.f
  %i.cu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.065, <4 x float> zeroinitializer)
  %i.cv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.064, <4 x float> zeroinitializer)
end_hunk_0
begin_hunk_1_@_ZNK4ncnn16InnerProduct_x8616forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.v, i64 %index ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !49
  %wide.load69 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !49
  %i.ap = getelementptr i8, ptr %next.gep68, i64 4
  %wide.load70 = load <4 x i8>, ptr %next.gep68, align 1, !tbaa !49
  %wide.load71 = load <4 x i8>, ptr %i.ap, align 1, !tbaa !49
  %i.aq = sext <4 x i8> %wide.load to <4 x i32>
  %i.ar = sext <4 x i8> %wide.load69 to <4 x i32>
  %i.as = sext <4 x i8> %wide.load70 to <4 x i32>
  %i.at = sext <4 x i8> %wide.load71 to <4 x i32>
  %i.au = mul nsw <4 x i32> %i.as, %i.aq
  %i.av = mul nsw <4 x i32> %i.at, %i.ar
  %i.aw = add <4 x i32> %i.au, %vec.phi           ; 2 uses
  %i.ax = add <4 x i32> %i.av, %vec.phi67         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ax, %i.aw
  %i.az = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader74

.lr.ph.preheader74:                               ; preds = %.lr.ph.preheader, %middle.block
  %.03353.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.03452.ph = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  %.03551.ph = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.03650.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader74, %.lr.ph
  %.03353 = phi i32 [ %i.bi, %.lr.ph ], [ %.03353.ph, %.lr.ph.preheader74 ]
  %.03452 = phi ptr [ %i.bg, %.lr.ph ], [ %.03452.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.03551 = phi ptr [ %i.bh, %.lr.ph ], [ %.03551.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.03650 = phi i32 [ %i.bf, %.lr.ph ], [ %.03650.ph, %.lr.ph.preheader74 ]
  %i.ba = load i8, ptr %.03452, align 1, !tbaa !49
  %i.bb = load i8, ptr %.03551, align 1, !tbaa !49
  %i.bc = sext i8 %i.ba to i32
  %i.bd = sext i8 %i.bb to i32
  %i.be = mul nsw i32 %i.bd, %i.bc
  %i.bf = add nsw i32 %i.be, %.03650              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03452, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.03551, i64 1
  %i.bi = add nuw nsw i32 %.03353, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %i.w
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !158

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.az, %middle.block ], [ %i.bf, %.lr.ph ]
  %i.bj = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.036.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.bj, %._crit_edge.loopexit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !52
  %i.bm = fmul fast float %i.bl, %.036.lcssa      ; 2 uses
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !52
  %i.bq = fadd fast float %i.bp, %i.bm
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0 = phi nsz float [ %i.bq, %bb.d ], [ %i.bm, %._crit_edge ] ; 13 uses
  switch i32 %i.ae, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.br = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %bb.e
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !52
  %i.bu = fcmp fast ogt float %.0, 0.000000e+00
  %i.bv = select fast i1 %i.bu, float 1.000000e+00, float %i.bt
  %i.bw = fmul fast float %i.bv, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.e
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !52
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !52 ; 2 uses
  %.049 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.by) ; 2 uses
  %i.cb = fcmp fast ogt float %.049, %i.ca
  br i1 %i.cb, label %bb.i, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.h
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.e
  %.sroa.speculated40 = call nnan ninf nsz float @llvm.minnum.f32(float %.0, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated40, float f0xC2B0C0A5)
  %i.cc = fneg fast float %.sroa.speculated
  %i.cd = call fast float @llvm.exp.f32(float %i.cc)
  %i.ce = fadd fast float %i.cd, 1.000000e+00
  %i.cf = fdiv fast float 1.000000e+00, %i.ce
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.e
  %i.cg = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.ch = fadd fast float %i.cg, 1.000000e+00
  %i.ci = call fast float @llvm.log.f32(float %i.ch)
  %i.cj = call fast float @llvm.tanh.f32(float %i.ci)
  %i.ck = fmul fast float %i.cj, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %bb.e
  %i.cl = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !52 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !52 ; 2 uses
  %i.cp = fneg fast float %i.co
  %i.cq = fdiv fast float %i.cp, %i.cm            ; 2 uses
  %i.cr = fcmp fast olt float %.0, %i.cq
  br i1 %i.cr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = fdiv fast float 1.000000e+00, %i.cm
  %i.ct = fadd fast float %i.cq, %i.cs
  %i.cu = fcmp fast ogt float %.0, %i.ct
  br i1 %i.cu, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = fmul fast float %i.cm, %.0
  %i.cw = fadd fast float %i.cv, %i.co
  %i.cx = fmul fast float %i.cw, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.l
  %.1 = phi nsz float [ %.0, %bb.e ], [ %i.br, %bb.f ], [ %i.bw, %bb.g ], [ %i.ca, %bb.i ], [ %.049, %bb.h ], [ %i.cf, %bb.j ], [ %i.ck, %bb.k ], [ %i.cx, %bb.n ], [ %.0, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  store float %.1, ptr %i.cy, align 4, !tbaa !52
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond60.not = icmp eq i32 %i.ai, %lftr.wideiv
  br i1 %exitcond60.not, label %._crit_edge58, label %bb.c

._crit_edge58:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge58, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !7, i64 24, !15, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64}
!17 = !{!16, !13, i64 8}
!18 = !{!16, !15, i64 32}
!19 = !{!16, !12, i64 0}
!20 = !{!16, !14, i64 64}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !14, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN4ncnn3MatE", !12, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSN4ncnn5LayerE", !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !21, i64 13, !21, i64 14, !21, i64 15, !21, i64 16, !21, i64 17, !21, i64 18, !21, i64 19, !21, i64 20, !21, i64 21, !21, i64 22, !21, i64 23, !21, i64 24, !21, i64 25, !21, i64 26, !21, i64 27, !7, i64 28, !12, i64 32, !7, i64 40, !24, i64 48, !24, i64 80, !28, i64 112, !28, i64 136, !33, i64 160, !33, i64 184}
!35 = !{!"_ZTSN4ncnn12InnerProductE", !34, i64 0, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !16, i64 232, !16, i64 304, !16, i64 376, !16, i64 448, !16, i64 520}
!36 = !{!"p1 _ZTSN4ncnn5LayerE", !12, i64 0}
!37 = !{!"_ZTSN4ncnn16InnerProduct_x86E", !35, i64 0, !36, i64 592, !16, i64 600, !16, i64 672}
!38 = !{!37, !36, i64 592}
!39 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!40 = !{!39, !21, i64 30}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!39, !21, i64 32}
!44 = !{!35, !7, i64 216}
!45 = !{!35, !7, i64 208}
!46 = !{!39, !21, i64 39}
!47 = !{!16, !7, i64 44}
!48 = !{!16, !14, i64 16}
!49 = !{!6, !6, i64 0}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"float", !6, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!12, !12, i64 0}
!56 = !{!16, !7, i64 24}
!57 = !{!7, !7, i64 0}
!58 = !{!16, !7, i64 56}
!59 = !{!39, !21, i64 0}
!60 = !{!16, !7, i64 40}
!61 = !{!16, !7, i64 48}
!62 = !{!39, !15, i64 8}
!63 = !{!35, !7, i64 224}
!64 = !{!"p1 float", !12, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!39, !7, i64 4}
!67 = !{!21, !21, i64 0}
!68 = !{!15, !15, i64 0}
!69 = !{i64 0, i64 1, !67, i64 1, i64 1, !67, i64 2, i64 1, !67, i64 3, i64 1, !67, i64 4, i64 4, !57, i64 8, i64 8, !68, i64 16, i64 8, !68, i64 24, i64 4, !57, i64 28, i64 1, !67, i64 29, i64 1, !67, i64 30, i64 1, !67, i64 31, i64 1, !67, i64 32, i64 1, !67, i64 33, i64 1, !67, i64 34, i64 1, !67, i64 35, i64 1, !67, i64 36, i64 1, !67, i64 37, i64 1, !67, i64 38, i64 1, !67, i64 39, i64 1, !67, i64 40, i64 4, !57, i64 44, i64 1, !67, i64 45, i64 1, !67, i64 46, i64 1, !67, i64 47, i64 1, !67, i64 48, i64 1, !49, i64 49, i64 1, !67, i64 50, i64 1, !67, i64 51, i64 1, !67, i64 52, i64 1, !67, i64 53, i64 1, !67, i64 54, i64 1, !67, i64 55, i64 1, !67, i64 56, i64 1, !67, i64 57, i64 1, !67, i64 58, i64 1, !67, i64 59, i64 1, !67, i64 60, i64 1, !67, i64 61, i64 1, !67, i64 62, i64 1, !67, i64 63, i64 1, !67}
!70 = !{!39, !15, i64 16}
!71 = !{!"short", !6, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{i64 2, i64 -1, i64 -1, i1 true}
!75 = !{!74}
!76 = !{!35, !7, i64 212}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50, !53}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !50, !53, !54}
!87 = distinct !{null}
!88 = !{!35, !14, i64 320}
!89 = !{!81}
!90 = !{!82}
!91 = !{!83}
!92 = !{!84}
!93 = !{!85}
!94 = !{!84, !83, !82, !81}
!95 = !{!34, !21, i64 11}
!96 = !{!34, !21, i64 12}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !50}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !73}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !50}
!110 = distinct !{!110, !73}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !50}
!113 = distinct !{!113, !50}
!114 = distinct !{!114, !73}
!115 = distinct !{!115, !50, !53, !54}
!116 = distinct !{!116, !50}
!117 = distinct !{!117, !50, !54, !53}
!118 = distinct !{!118, !50}
!119 = distinct !{!119, !73}
!120 = distinct !{!120, !50}
!121 = distinct !{!121, !50}
!122 = distinct !{!122, !50}
!123 = distinct !{!123, !50}
!124 = distinct !{!124, !73}
!125 = distinct !{!125, !50, !53, !54}
!126 = distinct !{!126, !50}
!127 = distinct !{!127, !50, !54, !53}
!128 = distinct !{!128, !50}
!129 = distinct !{!129, !50}
!130 = distinct !{!130, !50}
!131 = distinct !{!131, !50}
!132 = distinct !{!132, !50}
!133 = distinct !{!133, !50}
!134 = distinct !{!134, !50}
!135 = distinct !{!135, !50, !53, !54}
!136 = distinct !{!136, !50}
!137 = distinct !{!137, !50, !54, !53}
!138 = distinct !{!138, !50}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = distinct !{!141, !50}
!142 = distinct !{!142, !50}
!143 = distinct !{!143, !50, !53, !54}
!144 = distinct !{!144, !50}
!145 = distinct !{!145, !50, !54, !53}
!146 = distinct !{!146, !50}
!147 = distinct !{!147, !50}
!148 = distinct !{!148, !50, !53, !54}
!149 = distinct !{!149, !50, !54, !53}
!150 = distinct !{!150, !50}
!151 = distinct !{!151, !50}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50, !53, !54}
!154 = distinct !{!154, !50, !54, !53}
!155 = distinct !{!155, !50}
!156 = distinct !{!156, !50}
!157 = distinct !{!157, !50, !53, !54}
!158 = distinct !{!158, !50, !54, !53}
end_hunk_1
