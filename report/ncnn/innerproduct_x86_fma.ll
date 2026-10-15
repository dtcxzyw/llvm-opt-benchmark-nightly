Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_fma?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.13:bb.a

.lr.ph213.split:                                  ; preds = %.lr.ph213
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 672
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !48
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !49
  %factor.op.mul = mul i64 %i.ah, %i.ag
  %i.ai = load ptr, ptr %5, align 8, !tbaa !19    ; 4 uses
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !48
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i64, ptr %i.z, align 8, !tbaa !49
  %i.am = mul i64 %i.al, %i.ak                    ; 4 uses
  %i.an = load i32, ptr %6, align 4, !tbaa !58    ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aq = load i32, ptr %i.x, align 4, !tbaa !79
  %.not79 = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !64
  %i.as = sext i32 %i.k to i64
  %i.at = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.s to i64
  %i.au = zext nneg i32 %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  %n.vec = and i64 %i.au, 2147483644              ; 8 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph213.split, %._crit_edge209
  %indvars.iv222 = phi i64 [ %i.as, %.lr.ph213.split ], [ %indvars.iv.next223, %._crit_edge209 ] ; 3 uses
  %.reass216 = mul i64 %factor.op.mul215, %indvars.iv222
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass216
  %i.ax = shl nsw i64 %indvars.iv222, 2           ; 4 uses
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

._crit_edge209:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next223 to i32
  %exitcond225.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond225.not, label %._crit_edge214.split, label %.lr.ph208

bb.c:                                             ; preds = %.lr.ph208, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 4 uses
  %.077205 = phi ptr [ %i.aw, %.lr.ph208 ], [ %i.jf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 20 uses
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
  %wide.load = load <4 x i8>, ptr %next.gep246, align 1, !tbaa !55
  %i.bp = sext <4 x i8> %wide.load to <4 x i32>
  %wide.load248 = load <4 x i8>, ptr %next.gep247, align 1, !tbaa !55
  %i.bq = sext <4 x i8> %wide.load248 to <4 x i32> ; 4 uses
  %i.br = mul nsw <4 x i32> %i.bq, %i.bp
  %i.bs = add <4 x i32> %i.br, %vec.phi243        ; 2 uses
  %wide.load249 = load <4 x i8>, ptr %next.gep245, align 1, !tbaa !55
  %i.bt = sext <4 x i8> %wide.load249 to <4 x i32>
  %i.bu = mul nsw <4 x i32> %i.bt, %i.bq
  %i.bv = add <4 x i32> %i.bu, %vec.phi242        ; 2 uses
  %wide.load250 = load <4 x i8>, ptr %next.gep244, align 1, !tbaa !55
  %i.bw = sext <4 x i8> %wide.load250 to <4 x i32>
  %i.bx = mul nsw <4 x i32> %i.bw, %i.bq
  %i.by = add <4 x i32> %i.bx, %vec.phi241        ; 2 uses
  %wide.load251 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !55
  %i.bz = sext <4 x i8> %wide.load251 to <4 x i32>
  %i.ca = mul nsw <4 x i32> %i.bz, %i.bq
  %i.cb = add <4 x i32> %i.ca, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %i.cd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cb) ; 2 uses
  %i.ce = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.by) ; 2 uses
  %i.cf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bv) ; 2 uses
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bs) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader260

.lr.ph.preheader260:                              ; preds = %.lr.ph.preheader, %middle.block
  %.066201.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  %.067200.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cd, %middle.block ]
  %.068199.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ce, %middle.block ]
  %.069198.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cf, %middle.block ]
  %.070197.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cg, %middle.block ]
  %.071196.ph = phi ptr [ %i.bi, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  %.072195.ph = phi ptr [ %i.bf, %.lr.ph.preheader ], [ %i.bk, %middle.block ]
  %.073194.ph = phi ptr [ %i.bc, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
  %.074193.ph = phi ptr [ %i.az, %.lr.ph.preheader ], [ %i.bm, %middle.block ]
  %.075192.ph = phi ptr [ %i.bn, %.lr.ph.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader260, %.lr.ph
  %.066201 = phi i32 [ %i.de, %.lr.ph ], [ %.066201.ph, %.lr.ph.preheader260 ]
  %.067200 = phi i32 [ %i.dc, %.lr.ph ], [ %.067200.ph, %.lr.ph.preheader260 ]
  %.068199 = phi i32 [ %i.cz, %.lr.ph ], [ %.068199.ph, %.lr.ph.preheader260 ]
  %.069198 = phi i32 [ %i.cw, %.lr.ph ], [ %.069198.ph, %.lr.ph.preheader260 ]
  %.070197 = phi i32 [ %i.ct, %.lr.ph ], [ %.070197.ph, %.lr.ph.preheader260 ]
  %.071196 = phi ptr [ %i.cp, %.lr.ph ], [ %.071196.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.072195 = phi ptr [ %i.cn, %.lr.ph ], [ %.072195.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.073194 = phi ptr [ %i.cl, %.lr.ph ], [ %.073194.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.074193 = phi ptr [ %i.ch, %.lr.ph ], [ %.074193.ph, %.lr.ph.preheader260 ] ; 2 uses
  %.075192 = phi ptr [ %i.dd, %.lr.ph ], [ %.075192.ph, %.lr.ph.preheader260 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.074193, i64 1
  %i.ci = load i8, ptr %.074193, align 1, !tbaa !55
  %i.cj = load i8, ptr %.075192, align 1, !tbaa !55
  %i.ck = sext i8 %i.cj to i32                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.073194, i64 1
  %i.cm = load i8, ptr %.073194, align 1, !tbaa !55
  %i.cn = getelementptr inbounds nuw i8, ptr %.072195, i64 1
  %i.co = load i8, ptr %.072195, align 1, !tbaa !55
  %i.cp = getelementptr inbounds nuw i8, ptr %.071196, i64 1
  %i.cq = load i8, ptr %.071196, align 1, !tbaa !55
  %i.cr = sext i8 %i.ci to i32
  %i.cs = mul nsw i32 %i.ck, %i.cr
  %i.ct = add nsw i32 %i.cs, %.070197             ; 2 uses
  %i.cu = sext i8 %i.cm to i32
  %i.cv = mul nsw i32 %i.cu, %i.ck
  %i.cw = add nsw i32 %i.cv, %.069198             ; 2 uses
  %i.cx = sext i8 %i.co to i32
  %i.cy = mul nsw i32 %i.cx, %i.ck
  %i.cz = add nsw i32 %i.cy, %.068199             ; 2 uses
  %i.da = sext i8 %i.cq to i32
  %i.db = mul nsw i32 %i.da, %i.ck
  %i.dc = add nsw i32 %i.db, %.067200             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.075192, i64 1
  %i.de = add nuw nsw i32 %.066201, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !281

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa240 = phi i32 [ %i.cg, %middle.block ], [ %i.ct, %.lr.ph ]
  %.lcssa239 = phi i32 [ %i.cf, %middle.block ], [ %i.cw, %.lr.ph ]
  %.lcssa238 = phi i32 [ %i.ce, %middle.block ], [ %i.cz, %.lr.ph ]
  %.lcssa = phi i32 [ %i.cd, %middle.block ], [ %i.dc, %.lr.ph ]
  %i.df = insertelement <4 x i32> poison, i32 %.lcssa240, i64 0
  %i.dg = insertelement <4 x i32> %i.df, i32 %.lcssa239, i64 1
  %i.dh = insertelement <4 x i32> %i.dg, i32 %.lcssa, i64 2
  %i.di = insertelement <4 x i32> %i.dh, i32 %.lcssa238, i64 3
  %i.dj = sitofp <4 x i32> %i.di to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.dk = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.dj, %._crit_edge.loopexit ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !51
  %i.dn = insertelement <4 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul fast <4 x float> %i.do, %i.dk      ; 2 uses
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.dq = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !51
  %i.dt = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = fadd fast <4 x float> %i.du, %i.dp
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.dw = phi <4 x float> [ %i.dv, %bb.d ], [ %i.dp, %._crit_edge ] ; 26 uses
  switch i32 %i.ar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163
    i32 6, label %bb.f
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157: ; preds = %bb.e
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dy = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dx, <2 x float> zeroinitializer)
  store <2 x float> %i.dy, ptr %.077205, align 4, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  %i.ea = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eb = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ea, <2 x float> zeroinitializer) ; 2 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 1
  store float %i.ec, ptr %i.dz, align 4, !tbaa !51
  %i.ed = extractelement <2 x float> %i.eb, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159: ; preds = %bb.e
  %i.ee = load ptr, ptr %i.v, align 8, !tbaa !19  ; 4 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !51
  %i.eg = fcmp fast ogt <4 x float> %i.dw, zeroinitializer ; 4 uses
  %i.eh = extractelement <4 x i1> %i.eg, i64 0
  %i.ei = select fast i1 %i.eh, float 1.000000e+00, float %i.ef
  %i.ej = extractelement <4 x float> %i.dw, i64 0
  %i.ek = fmul fast float %i.ei, %i.ej
  store float %i.ek, ptr %.077205, align 4, !tbaa !51
  %i.el = load float, ptr %i.ee, align 4, !tbaa !51
  %i.em = extractelement <4 x i1> %i.eg, i64 1
  %i.en = select fast i1 %i.em, float 1.000000e+00, float %i.el
  %i.eo = extractelement <4 x float> %i.dw, i64 1
  %i.ep = fmul fast float %i.en, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.077205, i64 4
  store float %i.ep, ptr %i.eq, align 4, !tbaa !51
  %i.er = load float, ptr %i.ee, align 4, !tbaa !51
  %i.es = extractelement <4 x i1> %i.eg, i64 3
  %i.et = select fast i1 %i.es, float 1.000000e+00, float %i.er
  %i.eu = extractelement <4 x float> %i.dw, i64 3
  %i.ev = fmul fast float %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  store float %i.ev, ptr %i.ew, align 4, !tbaa !51
  %i.ex = load float, ptr %i.ee, align 4, !tbaa !51
  %i.ey = extractelement <4 x i1> %i.eg, i64 2
  %i.ez = select fast i1 %i.ey, float 1.000000e+00, float %i.ex
  %i.fa = extractelement <4 x float> %i.dw, i64 2
  %i.fb = fmul fast float %i.ez, %i.fa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155: ; preds = %bb.e
  %i.fc = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !51
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 4 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !51 ; 2 uses
  %i.fg = extractelement <4 x float> %i.dw, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fg, float %i.fd) ; 2 uses
  %i.fh = fcmp fast ogt float %spec.select, %i.ff
  %.1.ph154 = select i1 %i.fh, float %i.ff, float %spec.select
  store float %.1.ph154, ptr %.077205, align 4, !tbaa !51
  %i.fi = load float, ptr %i.fc, align 4, !tbaa !51
  %i.fj = load float, ptr %i.fe, align 4, !tbaa !51 ; 2 uses
  %i.fk = extractelement <4 x float> %i.dw, i64 1
  %.0146 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fk, float %i.fi) ; 2 uses
  %i.fl = fcmp fast ogt float %.0146, %i.fj
  %.1147.ph167 = select i1 %i.fl, float %i.fj, float %.0146
  %i.fm = getelementptr inbounds nuw i8, ptr %.077205, i64 4
  store float %.1147.ph167, ptr %i.fm, align 4, !tbaa !51
  %i.fn = load float, ptr %i.fc, align 4, !tbaa !51
  %i.fo = load float, ptr %i.fe, align 4, !tbaa !51 ; 2 uses
  %i.fp = extractelement <4 x float> %i.dw, i64 3
  %.0150 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fp, float %i.fn) ; 2 uses
  %i.fq = fcmp fast ogt float %.0150, %i.fo
  %.1151.ph180 = select i1 %i.fq, float %i.fo, float %.0150
  %i.fr = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  store float %.1151.ph180, ptr %i.fr, align 4, !tbaa !51
  %i.fs = load float, ptr %i.fc, align 4, !tbaa !51
  %i.ft = load float, ptr %i.fe, align 4, !tbaa !51
  %i.fu = extractelement <4 x float> %i.dw, i64 2
  %.0148 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fu, float %i.fs)
  %spec.select191 = call nnan ninf nsz float @llvm.minnum.f32(float %.0148, float %i.ft)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161: ; preds = %bb.e
  %7 = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %8 = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %7, <2 x float> splat (float f0x42B0C0A5))
  %9 = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %8, <2 x float> splat (float f0xC2B0C0A5))
  %10 = fneg fast <2 x float> %9
  %11 = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %10)
  %12 = fadd fast <2 x float> %11, splat (float 1.000000e+00)
  %13 = fdiv fast <2 x float> splat (float 1.000000e+00), %12
  store <2 x float> %13, ptr %.077205, align 4, !tbaa !51
  %14 = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  %15 = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %16 = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %15, <2 x float> splat (float f0x42B0C0A5))
  %17 = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %16, <2 x float> splat (float f0xC2B0C0A5))
  %18 = fneg fast <2 x float> %17
  %19 = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %18)
  %20 = fadd fast <2 x float> %19, splat (float 1.000000e+00)
  %21 = fdiv fast <2 x float> splat (float 1.000000e+00), %20 ; 2 uses
  %i.fv = extractelement <2 x float> %21, i64 1
  store float %i.fv, ptr %14, align 4, !tbaa !51
  %i.fw = extractelement <2 x float> %21, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163: ; preds = %bb.e
  %i.fx = extractelement <4 x float> %i.dw, i64 0
  %i.fy = extractelement <4 x float> %i.dw, i64 1
  %i.fz = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fx)
  %i.ga = fadd fast float %i.fz, 1.000000e+00
  %i.gb = call fast float @llvm.log.f32(float %i.ga)
  %i.gc = call fast float @llvm.tanh.f32(float %i.gb)
  %i.gd = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.fy)
  %i.ge = fadd fast float %i.gd, 1.000000e+00
  %i.gf = call fast float @llvm.log.f32(float %i.ge)
  %i.gg = call fast float @llvm.tanh.f32(float %i.gf)
  %i.gh = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %i.gg, i64 1
  %i.gj = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gk = fmul fast <2 x float> %i.gi, %i.gj
  store <2 x float> %i.gk, ptr %.077205, align 4, !tbaa !51
  %i.gl = extractelement <4 x float> %i.dw, i64 3 ; 2 uses
  %i.gm = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gl)
  %i.gn = fadd fast float %i.gm, 1.000000e+00
  %i.go = call fast float @llvm.log.f32(float %i.gn)
  %i.gp = call fast float @llvm.tanh.f32(float %i.go)
  %i.gq = fmul fast float %i.gp, %i.gl
  %i.gr = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  store float %i.gq, ptr %i.gr, align 4, !tbaa !51
  %i.gs = extractelement <4 x float> %i.dw, i64 2 ; 2 uses
  %i.gt = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gs)
  %i.gu = fadd fast float %i.gt, 1.000000e+00
  %i.gv = call fast float @llvm.log.f32(float %i.gu)
  %i.gw = call fast float @llvm.tanh.f32(float %i.gv)
  %i.gx = fmul fast float %i.gw, %i.gs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %bb.e
  %i.gy = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !51 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 4 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !51 ; 2 uses
  %i.hc = fneg fast float %i.hb
  %i.hd = fdiv fast float %i.hc, %i.gz            ; 2 uses
  %i.he = extractelement <4 x float> %i.dw, i64 0 ; 5 uses
  %i.hf = fcmp fast olt float %i.he, %i.hd
  br i1 %i.hf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hg = fdiv fast float 1.000000e+00, %i.gz
  %i.hh = fadd fast float %i.hd, %i.hg
  %i.hi = fcmp fast ogt float %i.he, %i.hh
  br i1 %i.hi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hj = fmul fast float %i.gz, %i.he
  %i.hk = fadd fast float %i.hj, %i.hb
  %i.hl = fmul fast float %i.hk, %i.he
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread:  ; preds = %bb.h, %bb.g, %bb.f
  %.1.ph = phi float [ 0.000000e+00, %bb.f ], [ %i.he, %bb.g ], [ %i.hl, %bb.h ]
  store float %.1.ph, ptr %.077205, align 4, !tbaa !51
  %i.hm = load float, ptr %i.gy, align 4, !tbaa !51 ; 3 uses
  %i.hn = load float, ptr %i.ha, align 4, !tbaa !51 ; 2 uses
  %i.ho = fneg fast float %i.hn
  %i.hp = fdiv fast float %i.ho, %i.hm            ; 2 uses
  %i.hq = extractelement <4 x float> %i.dw, i64 1 ; 5 uses
  %i.hr = fcmp fast olt float %i.hq, %i.hp
  br i1 %i.hr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread, label %bb.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit82:         ; preds = %bb.e
  %i.hs = extractelement <4 x float> %i.dw, i64 0
  store float %i.hs, ptr %.077205, align 4, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %.077205, i64 4
  %i.hu = extractelement <4 x float> %i.dw, i64 1
  store float %i.hu, ptr %i.ht, align 4, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  %i.hw = extractelement <4 x float> %i.dw, i64 3
  store float %i.hw, ptr %i.hv, align 4, !tbaa !51
  %i.hx = extractelement <4 x float> %i.dw, i64 2
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread
  %i.hy = fdiv fast float 1.000000e+00, %i.hm
  %i.hz = fadd fast float %i.hp, %i.hy
  %i.ia = fcmp fast ogt float %i.hq, %i.hz
  br i1 %i.ia, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ib = fmul fast float %i.hm, %i.hq
  %i.ic = fadd fast float %i.ib, %i.hn
  %i.id = fmul fast float %i.ic, %i.hq
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread:  ; preds = %bb.j, %bb.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread
  %.1147.ph = phi float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread ], [ %i.hq, %bb.i ], [ %i.id, %bb.j ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.077205, i64 4
  store float %.1147.ph, ptr %i.ie, align 4, !tbaa !51
  %i.if = load float, ptr %i.gy, align 4, !tbaa !51 ; 3 uses
  %i.ig = load float, ptr %i.ha, align 4, !tbaa !51 ; 2 uses
  %i.ih = fneg fast float %i.ig
  %i.ii = fdiv fast float %i.ih, %i.if            ; 2 uses
  %i.ij = extractelement <4 x float> %i.dw, i64 3 ; 5 uses
  %i.ik = fcmp fast olt float %i.ij, %i.ii
  br i1 %i.ik, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread, label %bb.k

bb.k:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread
  %i.il = fdiv fast float 1.000000e+00, %i.if
  %i.im = fadd fast float %i.ii, %i.il
  %i.in = fcmp fast ogt float %i.ij, %i.im
  br i1 %i.in, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.io = fmul fast float %i.if, %i.ij
  %i.ip = fadd fast float %i.io, %i.ig
  %i.iq = fmul fast float %i.ip, %i.ij
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread:  ; preds = %bb.l, %bb.k, %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread
  %.1151.ph = phi float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread ], [ %i.ij, %bb.k ], [ %i.iq, %bb.l ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  store float %.1151.ph, ptr %i.ir, align 4, !tbaa !51
  %i.is = load float, ptr %i.gy, align 4, !tbaa !51 ; 3 uses
  %i.it = load float, ptr %i.ha, align 4, !tbaa !51 ; 2 uses
  %i.iu = fneg fast float %i.it
  %i.iv = fdiv fast float %i.iu, %i.is            ; 2 uses
  %i.iw = extractelement <4 x float> %i.dw, i64 2 ; 5 uses
  %i.ix = fcmp fast olt float %i.iw, %i.iv
  br i1 %i.ix, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread
  %i.iy = fdiv fast float 1.000000e+00, %i.is
  %i.iz = fadd fast float %i.iv, %i.iy
  %i.ja = fcmp fast ogt float %i.iw, %i.iz
  br i1 %i.ja, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jb = fmul fast float %i.is, %i.iw
  %i.jc = fadd fast float %i.jb, %i.it
  %i.jd = fmul fast float %i.jc, %i.iw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82, %bb.n, %bb.m, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157, %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread
  %.1149 = phi nsz float [ %i.hx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82 ], [ %i.ed, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157 ], [ %i.fb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159 ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit80.thread ], [ %spec.select191, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155 ], [ %i.fw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161 ], [ %i.gx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163 ], [ %i.jd, %bb.n ], [ %i.iw, %bb.m ]
  %i.je = getelementptr inbounds nuw i8, ptr %.077205, i64 12
  store float %.1149, ptr %i.je, align 4, !tbaa !51
  %i.jf = getelementptr inbounds nuw i8, ptr %.077205, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond221.not, label %._crit_edge209, label %bb.c, !llvm.loop !282

._crit_edge214.split:                             ; preds = %._crit_edge209, %.lr.ph213, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge214.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not334 = icmp sgt i32 %i.k, %i.j
  br i1 %.not334, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 644
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
end_hunk_0
begin_hunk_1_@_ZNK4ncnn20InnerProduct_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.17:bb.a
  %bin.rdx79 = add <4 x i32> %i.bl, %bin.rdx
  %bin.rdx80 = add <4 x i32> %i.bm, %bin.rdx79
  %i.bo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx80) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bo, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bp = getelementptr i8, ptr %i.ap, i64 %n.vec83
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi85 = phi <4 x i32> [ %i.bq, %vec.epilog.ph ], [ %i.bu, %vec.epilog.vector.body ]
  %next.gep86 = getelementptr i8, ptr %i.v, i64 %index84
  %next.gep87 = getelementptr i8, ptr %i.ap, i64 %index84
  %wide.load88 = load <4 x i8>, ptr %next.gep86, align 1, !tbaa !55
  %wide.load89 = load <4 x i8>, ptr %next.gep87, align 1, !tbaa !55
  %i.br = sext <4 x i8> %wide.load88 to <4 x i32>
  %i.bs = sext <4 x i8> %wide.load89 to <4 x i32>
  %i.bt = mul nsw <4 x i32> %i.bs, %i.br
  %i.bu = add <4 x i32> %i.bt, %vec.phi85         ; 2 uses
  %index.next90 = add nuw i64 %index84, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next90, %n.vec83
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !291

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bu) ; 2 uses
  br i1 %cmp.n91, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03354.ph = phi i32 [ 0, %iter.check ], [ %i.al, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.03453.ph = phi ptr [ %i.v, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.03552.ph = phi ptr [ %i.ap, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.03651.ph = phi i32 [ 0, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03354 = phi i32 [ %i.cf, %.lr.ph ], [ %.03354.ph, %.lr.ph.preheader ]
  %.03453 = phi ptr [ %i.cd, %.lr.ph ], [ %.03453.ph, %.lr.ph.preheader ] ; 2 uses
  %.03552 = phi ptr [ %i.ce, %.lr.ph ], [ %.03552.ph, %.lr.ph.preheader ] ; 2 uses
  %.03651 = phi i32 [ %i.cc, %.lr.ph ], [ %.03651.ph, %.lr.ph.preheader ]
  %i.bx = load i8, ptr %.03453, align 1, !tbaa !55
  %i.by = load i8, ptr %.03552, align 1, !tbaa !55
  %i.bz = sext i8 %i.bx to i32
  %i.ca = sext i8 %i.by to i32
  %i.cb = mul nsw i32 %i.ca, %i.bz
  %i.cc = add nsw i32 %i.cb, %.03651              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.03453, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.03552, i64 1
  %i.cf = add nuw nsw i32 %.03354, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cf, %i.w
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !292

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.bw, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.cc, %.lr.ph ]
  %i.cg = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.036.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.cg, %._crit_edge.loopexit ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !51
  %i.cj = fmul fast float %i.ci, %.036.lcssa      ; 2 uses
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ck = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !51
  %i.cn = fadd fast float %i.cm, %i.cj
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0 = phi nsz float [ %i.cn, %bb.d ], [ %i.cj, %._crit_edge ] ; 13 uses
  switch i32 %i.ae, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.co = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.g:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !51
  %i.cr = fcmp fast ogt float %.0, 0.000000e+00
  %i.cs = select fast i1 %i.cr, float 1.000000e+00, float %i.cq
  %i.ct = fmul fast float %i.cs, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.h:                                             ; preds = %bb.e
  %i.cu = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !51
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.cv)
  %spec.select50 = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select, float %i.cx)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %bb.e
  %.sroa.speculated40 = call nnan ninf nsz float @llvm.minnum.f32(float %.0, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated40, float f0xC2B0C0A5)
  %i.cy = fneg fast float %.sroa.speculated
  %i.cz = call fast float @llvm.exp.f32(float %i.cy)
  %i.da = fadd fast float %i.cz, 1.000000e+00
  %i.db = fdiv fast float 1.000000e+00, %i.da
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.e
  %i.dc = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.dd = fadd fast float %i.dc, 1.000000e+00
  %i.de = call fast float @llvm.log.f32(float %i.dd)
  %i.df = call fast float @llvm.tanh.f32(float %i.de)
  %i.dg = fmul fast float %i.df, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.e
  %i.dh = load ptr, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !51 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !51 ; 2 uses
  %i.dl = fneg fast float %i.dk
  %i.dm = fdiv fast float %i.dl, %i.di            ; 2 uses
  %i.dn = fcmp fast olt float %.0, %i.dm
  br i1 %i.dn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = fdiv fast float 1.000000e+00, %i.di
  %i.dp = fadd fast float %i.dm, %i.do
  %i.dq = fcmp fast ogt float %.0, %i.dp
  br i1 %i.dq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = fmul fast float %i.di, %.0
  %i.ds = fadd fast float %i.dr, %i.dk
  %i.dt = fmul fast float %i.ds, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.h, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.k
  %.1 = phi nsz float [ %.0, %bb.e ], [ %i.co, %bb.f ], [ %i.ct, %bb.g ], [ 0.000000e+00, %bb.k ], [ %spec.select50, %bb.h ], [ %i.db, %bb.i ], [ %i.dg, %bb.j ], [ %i.dt, %bb.m ], [ %.0, %bb.l ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  store float %.1, ptr %i.du, align 4, !tbaa !51
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond61.not = icmp eq i32 %i.ai, %lftr.wideiv
  br i1 %exitcond61.not, label %._crit_edge59, label %bb.c

._crit_edge59:                                    ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge59, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #11

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }

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
!37 = !{!"_ZTSN4ncnn20InnerProduct_x86_fmaE", !35, i64 0, !36, i64 592, !16, i64 600, !16, i64 672}
!38 = !{!37, !36, i64 592}
!39 = !{!"_ZTSN4ncnn6OptionE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !7, i64 4, !15, i64 8, !15, i64 16, !7, i64 24, !21, i64 28, !21, i64 29, !21, i64 30, !21, i64 31, !21, i64 32, !21, i64 33, !21, i64 34, !21, i64 35, !21, i64 36, !21, i64 37, !21, i64 38, !21, i64 39, !7, i64 40, !21, i64 44, !21, i64 45, !21, i64 46, !21, i64 47, !6, i64 48, !21, i64 49, !21, i64 50, !21, i64 51, !21, i64 52, !21, i64 53, !21, i64 54, !21, i64 55, !21, i64 56, !21, i64 57, !21, i64 58, !21, i64 59, !21, i64 60, !21, i64 61, !21, i64 62, !21, i64 63}
!40 = !{!39, !21, i64 30}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!39, !21, i64 32}
!44 = !{!39, !21, i64 34}
!45 = !{!35, !7, i64 216}
!46 = !{!35, !7, i64 208}
!47 = !{!39, !21, i64 39}
!48 = !{!16, !7, i64 44}
!49 = !{!16, !14, i64 16}
!50 = !{!"float", !6, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!6, !6, i64 0}
!56 = !{!12, !12, i64 0}
!57 = !{!16, !7, i64 24}
!58 = !{!7, !7, i64 0}
!59 = !{!16, !7, i64 56}
!60 = !{!39, !21, i64 0}
!61 = !{!16, !7, i64 40}
!62 = !{!16, !7, i64 48}
!63 = !{!39, !15, i64 8}
!64 = !{!35, !7, i64 224}
!65 = !{!"p1 float", !12, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!39, !7, i64 4}
!68 = !{!21, !21, i64 0}
!69 = !{!15, !15, i64 0}
!70 = !{i64 0, i64 1, !68, i64 1, i64 1, !68, i64 2, i64 1, !68, i64 3, i64 1, !68, i64 4, i64 4, !58, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 4, !58, i64 28, i64 1, !68, i64 29, i64 1, !68, i64 30, i64 1, !68, i64 31, i64 1, !68, i64 32, i64 1, !68, i64 33, i64 1, !68, i64 34, i64 1, !68, i64 35, i64 1, !68, i64 36, i64 1, !68, i64 37, i64 1, !68, i64 38, i64 1, !68, i64 39, i64 1, !68, i64 40, i64 4, !58, i64 44, i64 1, !68, i64 45, i64 1, !68, i64 46, i64 1, !68, i64 47, i64 1, !68, i64 48, i64 1, !55, i64 49, i64 1, !68, i64 50, i64 1, !68, i64 51, i64 1, !68, i64 52, i64 1, !68, i64 53, i64 1, !68, i64 54, i64 1, !68, i64 55, i64 1, !68, i64 56, i64 1, !68, i64 57, i64 1, !68, i64 58, i64 1, !68, i64 59, i64 1, !68, i64 60, i64 1, !68, i64 61, i64 1, !68, i64 62, i64 1, !68, i64 63, i64 1, !68}
!71 = !{!39, !15, i64 16}
!72 = !{!"short", !6, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!"branch_weights", i32 8, i32 24}
!76 = !{i64 2, i64 -1, i64 -1, i1 true}
!77 = !{!76}
!78 = !{!"branch_weights", i32 4, i32 28}
!79 = !{!35, !7, i64 212}
!80 = !{!"branch_weights", i32 4, i32 12}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !81}
!89 = distinct !{!89, !81}
!90 = distinct !{!90, !81}
!91 = distinct !{!91, !52, !53, !54}
!92 = distinct !{!92, !52}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52}
!95 = distinct !{!95, !52}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !98}
!102 = distinct !{!102, !98}
!103 = distinct !{!103, !98}
!104 = distinct !{!104, !52, !53, !54}
!105 = distinct !{null}
!106 = !{!35, !14, i64 320}
!107 = !{!82}
!108 = !{!83}
!109 = !{!84}
!110 = !{!85}
!111 = !{!86}
!112 = !{!87}
!113 = !{!88}
!114 = !{!89}
!115 = !{!90}
!116 = !{!89, !88, !87, !86, !85, !84, !83, !82}
!117 = !{!99}
!118 = !{!100}
!119 = !{!101}
!120 = !{!102}
!121 = !{!103}
!122 = !{!102, !101, !100, !99}
!123 = !{!34, !21, i64 11}
!124 = !{!34, !21, i64 12}
!125 = distinct !{!125, !52}
!126 = distinct !{!126, !52}
!127 = distinct !{!127, !52}
!128 = distinct !{!128, !52}
!129 = distinct !{!129, !52}
!130 = distinct !{!130, !52}
!131 = distinct !{!131, !52}
!132 = distinct !{!132, !52}
!133 = distinct !{!133, !52, !54, !53}
!134 = distinct !{!134, !52}
!135 = distinct !{!135, !52, !53, !54}
!136 = distinct !{!136, !52}
!137 = distinct !{!137, !52}
!138 = distinct !{!138, !52}
!139 = distinct !{!139, !52}
!140 = distinct !{!140, !52}
!141 = distinct !{!141, !52}
!142 = distinct !{!142, !52}
!143 = distinct !{!143, !52}
!144 = distinct !{!144, !52}
!145 = distinct !{!145, !74}
!146 = distinct !{!146, !52}
!147 = distinct !{!147, !52}
!148 = distinct !{!148, !52}
!149 = distinct !{!149, !52}
!150 = distinct !{!150, !52}
!151 = distinct !{!151, !74}
!152 = distinct !{!152, !52}
!153 = distinct !{!153, !52}
!154 = distinct !{!154, !52}
!155 = distinct !{!155, !52}
!156 = distinct !{!156, !52}
!157 = distinct !{!157, !52}
!158 = distinct !{!158, !52}
!159 = distinct !{!159, !74}
!160 = distinct !{!160, !52}
!161 = distinct !{!161, !52}
!162 = distinct !{!162, !52}
!163 = distinct !{!163, !74}
!164 = distinct !{!164, !52}
!165 = distinct !{!165, !52}
!166 = distinct !{!166, !52}
!167 = distinct !{!167, !74}
!168 = distinct !{!168, !52}
!169 = distinct !{!169, !52, !53, !54}
!170 = distinct !{!170, !52, !53, !54}
!171 = distinct !{!171, !52}
end_hunk_1
