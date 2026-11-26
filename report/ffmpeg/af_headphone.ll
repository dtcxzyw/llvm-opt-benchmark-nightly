Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_headphone?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@activate:bb.a
  %i.ec = phi i32 [ %.pre, %bb.w ], [ %i.cu, %ff_clz_c.exit287.i ]
  %i.ed = phi i32 [ %.pre.i, %bb.w ], [ %i.cn, %ff_clz_c.exit287.i ]
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = sext i32 %i.ec to i64                   ; 2 uses
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eg = sext i32 %i.bo to i64
  %i.eh = shl nsw i64 %i.eg, 2                    ; 2 uses
  %i.ei = call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef %i.eh) #8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !53
  %i.ek = load i32, ptr %i.cv, align 8, !tbaa !47
  %i.el = sext i32 %i.ek to i64
  %i.em = call noalias ptr @av_calloc(i64 noundef %i.el, i64 noundef %i.eh) #8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store ptr %i.em, ptr %i.en, align 8, !tbaa !53
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.eo = call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef 4) #8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !53
  %i.eq = load i32, ptr %i.cv, align 8, !tbaa !47
  %i.er = sext i32 %i.eq to i64
  %i.es = call noalias ptr @av_calloc(i64 noundef %i.er, i64 noundef 4) #8
  %i.et = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  store ptr %i.es, ptr %i.et, align 8, !tbaa !53
  %i.eu = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.ev = sext i32 %i.eu to i64
  %i.ew = call noalias ptr @av_calloc(i64 noundef %i.ev, i64 noundef 8) #8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bi, i64 136 ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !55
  %i.ey = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.ez = sext i32 %i.ey to i64
  %i.fa = call noalias ptr @av_calloc(i64 noundef %i.ez, i64 noundef 8) #8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bi, i64 144 ; 2 uses
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !55
  %i.fc = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fd = sext i32 %i.fc to i64
  %i.fe = call noalias ptr @av_calloc(i64 noundef %i.fd, i64 noundef 8) #8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bi, i64 152 ; 2 uses
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !55
  %i.fg = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fh = sext i32 %i.fg to i64
  %i.fi = call noalias ptr @av_calloc(i64 noundef %i.fh, i64 noundef 8) #8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bi, i64 160 ; 2 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !55
  %i.fk = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fl = sext i32 %i.fk to i64
  %i.fm = call noalias ptr @av_calloc(i64 noundef %i.fl, i64 noundef 8) #8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bi, i64 168 ; 2 uses
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !55
  %i.fo = load i32, ptr %i.dc, align 4, !tbaa !48
  %i.fp = sext i32 %i.fo to i64
  %i.fq = call noalias ptr @av_calloc(i64 noundef %i.fp, i64 noundef 8) #8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !55
  %i.fs = load ptr, ptr %i.ff, align 8, !tbaa !55
  %.not267.i = icmp eq ptr %i.fs, null
  br i1 %.not267.i, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ft = load ptr, ptr %i.fj, align 8, !tbaa !55
  %.not268.i = icmp eq ptr %i.ft, null
  br i1 %.not268.i, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = load ptr, ptr %i.ex, align 8, !tbaa !55
  %.not269.i = icmp eq ptr %i.fu, null
  br i1 %.not269.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load ptr, ptr %i.fb, align 8, !tbaa !55
  %.not270.i = icmp eq ptr %i.fv, null
  br i1 %.not270.i, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !55
  %.not271.i = icmp eq ptr %i.fw, null
  %.not272.i = icmp eq ptr %i.fq, null
  %or.cond.i = select i1 %.not271.i, i1 true, i1 %.not272.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !53
  %.not273.i = icmp eq ptr %i.fy, null
  br i1 %.not273.i, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !53
  %.not274.i = icmp eq ptr %i.ga, null
  br i1 %.not274.i, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gb = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gd = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.ge = sext i32 %i.gd to i64
  %i.gf = call noalias ptr @av_calloc(i64 noundef %i.ge, i64 noundef 4) #8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bi, i64 120 ; 2 uses
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !53
  %i.gh = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.gi = sext i32 %i.gh to i64
  %i.gj = call noalias ptr @av_calloc(i64 noundef %i.gi, i64 noundef 4) #8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !53
  %i.gl = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.gm = mul nsw i32 %i.gl, %i.bx
  %i.gn = sext i32 %i.gm to i64
  %i.go = call noalias ptr @av_calloc(i64 noundef %i.gn, i64 noundef 4) #8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !53
  %i.gq = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.gr = mul nsw i32 %i.gq, %i.bx
  %i.gs = sext i32 %i.gr to i64
  %i.gt = call noalias ptr @av_calloc(i64 noundef %i.gs, i64 noundef 4) #8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !53
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !53
  %.not277.i = icmp eq ptr %i.gv, null
  %.not278.i = icmp eq ptr %i.gt, null
  %or.cond281.i = select i1 %.not277.i, i1 true, i1 %.not278.i
  br i1 %or.cond281.i, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load ptr, ptr %i.gg, align 8, !tbaa !53
  %.not279.i = icmp eq ptr %i.gw, null
  br i1 %.not279.i, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !53
  %.not280.i = icmp eq ptr %i.gx, null
  br i1 %.not280.i, label %.loopexit, label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.gy = sext i32 %i.db to i64                   ; 2 uses
  %i.gz = sext i32 %i.bx to i64
  %i.ha = shl nsw i64 %i.gz, 3                    ; 2 uses
  %i.hb = call noalias ptr @av_calloc(i64 noundef %i.gy, i64 noundef %i.ha) #8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bi, i64 248 ; 2 uses
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !55
  %i.hd = call noalias ptr @av_calloc(i64 noundef %i.gy, i64 noundef %i.ha) #8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !55
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !55
  %.not275.i = icmp eq ptr %i.hf, null
  %.not276.i = icmp eq ptr %i.hd, null
  %or.cond282.i = select i1 %.not275.i, i1 true, i1 %.not276.i
  br i1 %or.cond282.i, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hg = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph332.i, label %.sink.split

.lr.ph332.i:                                      ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bi, i64 100
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bi, i64 808 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1064 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bi, i64 248 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bi, i64 256 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bi, i64 152 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bi, i64 160 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bi, i64 216 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bi, i64 104 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bi, i64 112 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bi, i64 784
  %broadcast.splatinsert360 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat361 = shufflevector <4 x float> %broadcast.splatinsert360, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert282 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat283 = shufflevector <4 x float> %broadcast.splatinsert282, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.thread294.i, %.lr.ph332.i
  %indvars.iv361.i = phi i64 [ 0, %.lr.ph332.i ], [ %indvars.iv.next362.i, %.thread294.i ] ; 4 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv361.i
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !129 ; 20 uses
  %i.hy = load ptr, ptr %i.j, align 8, !tbaa !32
  %indvars.iv.next362.i = add nuw nsw i64 %indvars.iv361.i, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv.next362.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !34
  %i.ib = call i32 @ff_inlink_consume_samples(ptr noundef %i.ia, i32 noundef %i.hx, i32 noundef %i.hx, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 96
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !131
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !61 ; 24 uses
  %i.ih = load i32, ptr %i.hj, align 4, !tbaa !26
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv361.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !25
  %i.il = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.hv, i32 noundef %i.ik) #8 ; 4 uses
  %i.im = icmp sgt i32 %i.il, -1
  br i1 %i.im, label %bb.ap, label %.thread294.i

bb.ap:                                            ; preds = %bb.ao
  %i.in = trunc i32 %i.il to i8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv361.i
  store i8 %i.in, ptr %i.io, align 1, !tbaa !31
  %i.ip = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ir = load ptr, ptr %i.ht, align 8, !tbaa !53 ; 2 uses
  %i.is = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.it = mul i32 %i.is, %i.il
  %i.iu = sext i32 %i.it to i64                   ; 3 uses
  %i.iv = getelementptr [4 x i8], ptr %i.ir, i64 %i.iu ; 6 uses
  %i.iw = load ptr, ptr %i.hu, align 8, !tbaa !53 ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %i.iw, i64 %i.iu ; 6 uses
  %i.iy = icmp sgt i32 %i.hx, 0
  br i1 %i.iy, label %.lr.ph329.preheader.i, label %.thread294.i

.lr.ph329.preheader.i:                            ; preds = %bb.aq
  %i.iz = zext nneg i32 %i.hx to i64              ; 11 uses
  %min.iters.check = icmp ult i32 %i.hx, 8
  br i1 %min.iters.check, label %.lr.ph329.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph329.preheader.i
  %i.ja = add nsw i64 %i.iu, %i.iz
  %i.jb = shl nsw i64 %i.ja, 2                    ; 2 uses
  %i.jc = getelementptr i8, ptr %i.ir, i64 %i.jb  ; 2 uses
  %i.jd = getelementptr i8, ptr %i.iw, i64 %i.jb  ; 2 uses
  %i.je = shl nuw nsw i64 %i.iz, 3
  %i.jf = getelementptr i8, ptr %i.ig, i64 %i.je  ; 2 uses
  %bound0 = icmp ult ptr %i.iv, %i.jd
  %bound1 = icmp ult ptr %i.ix, %i.jc
  %found.conflict = and i1 %bound0, %bound1
  %bound0241 = icmp ult ptr %i.iv, %i.jf
  %bound1242 = icmp ult ptr %i.ig, %i.jc
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx = or i1 %found.conflict, %found.conflict243
  %bound0244 = icmp ult ptr %i.ix, %i.jf
  %bound1245 = icmp ult ptr %i.ig, %i.jd
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx, %found.conflict246
  br i1 %conflict.rdx247, label %.lr.ph329.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iz, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.jg = sub nuw nsw i64 %i.iz, %index
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = getelementptr i8, ptr %i.ig, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 -32
  %wide.vec = load <8 x float>, ptr %i.jj, align 4, !tbaa !49, !alias.scope !132 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse249 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.jk = fmul nsz <4 x float> %broadcast.splat, %reverse
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index
  store <4 x float> %i.jk, ptr %i.jl, align 4, !tbaa !49, !alias.scope !133, !noalias !134
  %i.jm = fmul nsz <4 x float> %broadcast.splat, %reverse249
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index
  store <4 x float> %i.jm, ptr %i.jn, align 4, !tbaa !49, !alias.scope !135, !noalias !132
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iz
  br i1 %cmp.n, label %.thread294.i, label %.lr.ph329.i.preheader

.lr.ph329.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph329.preheader.i, %middle.block
  %indvars.iv356.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph329.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter448 = and i64 %i.iz, 1
  %lcmp.mod449.not = icmp eq i64 %xtraiter448, 0
  br i1 %lcmp.mod449.not, label %.lr.ph329.i.prol.loopexit, label %.lr.ph329.i.prol

.lr.ph329.i.prol:                                 ; preds = %.lr.ph329.i.preheader
  %i.jp = sub nuw nsw i64 %i.iz, %indvars.iv356.i.ph
  %.idx379.i.prol = shl nuw nsw i64 %i.jp, 3
  %i.jq = getelementptr i8, ptr %i.ig, i64 %.idx379.i.prol ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 -8
  %i.js = load float, ptr %i.jr, align 4, !tbaa !49
  %i.jt = fmul nsz float %i.ch, %i.js
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv356.i.ph
  store float %i.jt, ptr %i.ju, align 4, !tbaa !49
  %i.jv = getelementptr i8, ptr %i.jq, i64 -4
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !49
  %i.jx = fmul nsz float %i.ch, %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv356.i.ph
  store float %i.jx, ptr %i.jy, align 4, !tbaa !49
  %indvars.iv.next357.i.prol = or disjoint i64 %indvars.iv356.i.ph, 1
  br label %.lr.ph329.i.prol.loopexit

.lr.ph329.i.prol.loopexit:                        ; preds = %.lr.ph329.i.prol, %.lr.ph329.i.preheader
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph329.i.preheader ], [ %indvars.iv.next357.i.prol, %.lr.ph329.i.prol ]
  %i.jz = add nsw i64 %i.iz, -1
  %i.ka = icmp eq i64 %indvars.iv356.i.ph, %i.jz
  br i1 %i.ka, label %.thread294.i, label %.lr.ph329.i

.lr.ph329.i:                                      ; preds = %.lr.ph329.i.prol.loopexit, %.lr.ph329.i
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.1, %.lr.ph329.i ], [ %indvars.iv356.i.unr, %.lr.ph329.i.prol.loopexit ] ; 5 uses
  %i.kb = sub nuw nsw i64 %i.iz, %indvars.iv356.i
  %.idx379.i = shl nuw nsw i64 %i.kb, 3
  %i.kc = getelementptr i8, ptr %i.ig, i64 %.idx379.i ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 -8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !49
  %i.kf = fmul nsz float %i.ch, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv356.i
  store float %i.kf, ptr %i.kg, align 4, !tbaa !49
  %i.kh = getelementptr i8, ptr %i.kc, i64 -4
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !49
  %i.kj = fmul nsz float %i.ch, %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv356.i
  store float %i.kj, ptr %i.kk, align 4, !tbaa !49
  %indvars.iv.next357.i = add nuw nsw i64 %indvars.iv356.i, 1 ; 3 uses
  %i.kl = sub nuw nsw i64 %i.iz, %indvars.iv.next357.i
  %.idx379.i.1 = shl nuw nsw i64 %i.kl, 3
  %i.km = getelementptr i8, ptr %i.ig, i64 %.idx379.i.1 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 -8
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !49
  %i.kp = fmul nsz float %i.ch, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next357.i
  store float %i.kp, ptr %i.kq, align 4, !tbaa !49
  %i.kr = getelementptr i8, ptr %i.km, i64 -4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !49
  %i.kt = fmul nsz float %i.ch, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next357.i
  store float %i.kt, ptr %i.ku, align 4, !tbaa !49
  %indvars.iv.next357.i.1 = add nuw nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %exitcond360.not.i.1 = icmp eq i64 %indvars.iv.next357.i.1, %i.iz
  br i1 %exitcond360.not.i.1, label %.thread294.i, label %.lr.ph329.i, !llvm.loop !105

bb.ar:                                            ; preds = %bb.ap
  %i.kv = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.kw = shl i32 %i.il, %i.da
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.kx
  %i.kz = load ptr, ptr %i.ho, align 8, !tbaa !55
  %i.la = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.kx
  %i.lb = load ptr, ptr %i.hp, align 8, !tbaa !55 ; 11 uses
  %i.lc = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 11 uses
  %i.ld = icmp sgt i32 %i.hx, 0
  br i1 %i.ld, label %.lr.ph325.preheader.i, label %._crit_edge326.i

.lr.ph325.preheader.i:                            ; preds = %bb.ar
  %wide.trip.count354.i = zext nneg i32 %i.hx to i64 ; 6 uses
  %min.iters.check267 = icmp ult i32 %i.hx, 16
  br i1 %min.iters.check267, label %.lr.ph325.i.preheader, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph325.preheader.i
  %i.le = shl nuw nsw i64 %wide.trip.count354.i, 3 ; 2 uses
  %i.lf = add nsw i64 %i.le, -4                   ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lb, i64 %i.lf  ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lc, i64 %i.lf  ; 2 uses
  %i.li = getelementptr i8, ptr %i.ig, i64 %i.le  ; 2 uses
  %bound0269 = icmp ult ptr %i.lb, %i.lh
  %bound1270 = icmp ult ptr %i.lc, %i.lg
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0272 = icmp ult ptr %i.lb, %i.li
  %bound1273 = icmp ult ptr %i.ig, %i.lg
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %found.conflict271, %found.conflict274
  %bound0276 = icmp ult ptr %i.lc, %i.li
  %bound1277 = icmp ult ptr %i.ig, %i.lh
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  br i1 %conflict.rdx279, label %.lr.ph325.i.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck268
  %n.vec281 = and i64 %wide.trip.count354.i, 2147483644 ; 3 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next289, %vector.body284 ] ; 7 uses
  %i.lj = or disjoint i64 %index285, 1            ; 2 uses
  %i.lk = or disjoint i64 %index285, 2            ; 2 uses
  %i.ll = or disjoint i64 %index285, 3            ; 2 uses
  %i.lm = shl nuw nsw i64 %index285, 3
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.lm
  %wide.vec286 = load <8 x float>, ptr %i.ln, align 4, !tbaa !49, !alias.scope !136 ; 2 uses
  %strided.vec287 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec288 = shufflevector <8 x float> %wide.vec286, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.lo = fmul nsz <4 x float> %broadcast.splat283, %strided.vec287 ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index285
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lj
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lk
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ll
  %i.lt = extractelement <4 x float> %i.lo, i64 0
  store float %i.lt, ptr %i.lp, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lu = extractelement <4 x float> %i.lo, i64 1
  store float %i.lu, ptr %i.lq, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lv = extractelement <4 x float> %i.lo, i64 2
  store float %i.lv, ptr %i.lr, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lw = extractelement <4 x float> %i.lo, i64 3
  store float %i.lw, ptr %i.ls, align 4, !tbaa !65, !alias.scope !137, !noalias !138
  %i.lx = fmul nsz <4 x float> %broadcast.splat283, %strided.vec288 ; 4 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %index285
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lj
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lk
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ll
  %i.mc = extractelement <4 x float> %i.lx, i64 0
  store float %i.mc, ptr %i.ly, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.md = extractelement <4 x float> %i.lx, i64 1
  store float %i.md, ptr %i.lz, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.me = extractelement <4 x float> %i.lx, i64 2
  store float %i.me, ptr %i.ma, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %i.mf = extractelement <4 x float> %i.lx, i64 3
  store float %i.mf, ptr %i.mb, align 4, !tbaa !65, !alias.scope !139, !noalias !136
  %index.next289 = add nuw i64 %index285, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next289, %n.vec281
  br i1 %i.mg, label %middle.block290, label %vector.body284, !llvm.loop !110

middle.block290:                                  ; preds = %vector.body284
  %cmp.n291 = icmp eq i64 %n.vec281, %wide.trip.count354.i
  br i1 %cmp.n291, label %._crit_edge326.i, label %.lr.ph325.i.preheader

.lr.ph325.i.preheader:                            ; preds = %vector.memcheck268, %.lr.ph325.preheader.i, %middle.block290
  %indvars.iv351.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph325.preheader.i ], [ %n.vec281, %middle.block290 ] ; 6 uses
  %xtraiter446 = and i64 %wide.trip.count354.i, 1
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.lr.ph325.i.prol.loopexit, label %.lr.ph325.i.prol

.lr.ph325.i.prol:                                 ; preds = %.lr.ph325.i.preheader
  %.idx.i.prol = shl nuw nsw i64 %indvars.iv351.i.ph, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.prol ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !49
  %i.mj = fmul nsz float %i.ch, %i.mi
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv351.i.ph
  store float %i.mj, ptr %i.mk, align 4, !tbaa !65
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !49
  %i.mn = fmul nsz float %i.ch, %i.mm
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv351.i.ph
  store float %i.mn, ptr %i.mo, align 4, !tbaa !65
  %indvars.iv.next352.i.prol = or disjoint i64 %indvars.iv351.i.ph, 1
  br label %.lr.ph325.i.prol.loopexit

.lr.ph325.i.prol.loopexit:                        ; preds = %.lr.ph325.i.prol, %.lr.ph325.i.preheader
  %indvars.iv351.i.unr = phi i64 [ %indvars.iv351.i.ph, %.lr.ph325.i.preheader ], [ %indvars.iv.next352.i.prol, %.lr.ph325.i.prol ]
  %i.mp = add nsw i64 %wide.trip.count354.i, -1
  %i.mq = icmp eq i64 %indvars.iv351.i.ph, %i.mp
  br i1 %i.mq, label %._crit_edge326.i, label %.lr.ph325.i

.lr.ph325.i:                                      ; preds = %.lr.ph325.i.prol.loopexit, %.lr.ph325.i
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i.1, %.lr.ph325.i ], [ %indvars.iv351.i.unr, %.lr.ph325.i.prol.loopexit ] ; 5 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv351.i, 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !49
  %i.mt = fmul nsz float %i.ch, %i.ms
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv351.i
  store float %i.mt, ptr %i.mu, align 4, !tbaa !65
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !49
  %i.mx = fmul nsz float %i.ch, %i.mw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv351.i
  store float %i.mx, ptr %i.my, align 4, !tbaa !65
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 3 uses
  %.idx.i.1 = shl nuw nsw i64 %indvars.iv.next352.i, 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.1 ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !49
  %i.nb = fmul nsz float %i.ch, %i.na
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.next352.i
  store float %i.nb, ptr %i.nc, align 4, !tbaa !65
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !49
  %i.nf = fmul nsz float %i.ch, %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next352.i
  store float %i.nf, ptr %i.ng, align 4, !tbaa !65
  %indvars.iv.next352.i.1 = add nuw nsw i64 %indvars.iv351.i, 2 ; 2 uses
  %exitcond355.not.i.1 = icmp eq i64 %indvars.iv.next352.i.1, %wide.trip.count354.i
  br i1 %exitcond355.not.i.1, label %._crit_edge326.i, label %.lr.ph325.i, !llvm.loop !111

._crit_edge326.i:                                 ; preds = %.lr.ph325.i.prol.loopexit, %.lr.ph325.i, %middle.block290, %bb.ar
  %i.nh = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ni = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.nh(ptr noundef %i.ni, ptr noundef %i.ky, ptr noundef %i.lb, i64 noundef 8) #8, !inline_history !112
  %i.nj = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.nk = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.nj(ptr noundef %i.nk, ptr noundef %i.la, ptr noundef %i.lc, i64 noundef 8) #8, !inline_history !112
  br label %.thread294.i

bb.as:                                            ; preds = %bb.an
  %i.nl = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !34
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 76
  %i.np = load i32, ptr %i.no, align 4, !tbaa !44 ; 13 uses
  %i.nq = icmp sgt i32 %i.np, 1
  br i1 %i.nq, label %.lr.ph322.i, label %.thread294.i

.lr.ph322.i:                                      ; preds = %bb.as
  %i.nr = lshr i32 %i.np, 1
  %i.ns = icmp sgt i32 %i.hx, 0                   ; 2 uses
  %i.nt = zext nneg i32 %i.np to i64              ; 3 uses
  %wide.trip.count349.i = zext nneg i32 %i.nr to i64
  %wide.trip.count.i = zext i32 %i.hx to i64      ; 8 uses
  %i.nu = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.nv = sub nsw i32 0, %i.np
  %i.nw = add i32 %i.hx, -1
  %i.nx = mul i32 %i.np, %i.nw
  %i.ny = sext i32 %i.nv to i64
  %i.nz = mul nsw i64 %i.ny, -4
  %scevgep = getelementptr i8, ptr %i.ig, i64 4
  %i.oa = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.ob = add nsw i64 %i.oa, -4
  %i.oc = sub nsw i32 0, %i.np
  %i.od = sext i32 %i.oc to i64
  %i.oe = mul i64 %i.ob, %i.od                    ; 2 uses
  %scevgep333 = getelementptr i8, ptr %i.ig, i64 %i.oe
  %scevgep334.a = getelementptr i8, ptr %i.ig, i64 4 ; 2 uses
  %i.of = add i32 %i.hx, -1
  %i.og = mul i32 %i.np, %i.of
  %scevgep335 = getelementptr i8, ptr %scevgep334.a, i64 %i.oe
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.oh = icmp eq i32 %i.hx, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod445 = trunc i32 %i.hx to i1
  %min.iters.check337 = icmp ult i32 %i.hx, 32
  %i.oi = trunc i64 %i.nu to i32
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.np, i32 %i.oi) ; 2 uses
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %i.oj = icmp ugt i64 %i.nu, 4294967295
  %invariant.op = or i1 %mul.overflow, %i.oj
  %mul294 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.nz, i64 %i.nu) ; 2 uses
  %mul.result295 = extractvalue { i64, i1 } %mul294, 0
  %mul.overflow296 = extractvalue { i64, i1 } %mul294, 1
  %i.ok = sub i64 0, %mul.result295
  %n.vec359 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n366 = icmp eq i64 %n.vec359, %wide.trip.count.i
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.i, %.lr.ph322.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph322.i ], [ %indvars.iv.next347.i, %.loopexit.i ] ; 5 uses
  %indvars.iv346.i.tr = trunc i64 %indvars.iv346.i to i32
  %i.ol = shl i32 %indvars.iv346.i.tr, 1
  %i.om = add i32 %i.ol, %i.nx                    ; 3 uses
  %i.on = sext i32 %i.om to i64
  %i.oo = shl nsw i64 %i.on, 2
  %scevgep293 = getelementptr i8, ptr %scevgep, i64 %i.oo ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv346.i
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !25
  %i.or = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.hk, i32 noundef %i.oq) #8 ; 4 uses
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %.loopexit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ot = trunc i32 %i.or to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv346.i
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !31
  %i.ov = shl nuw nsw i64 %indvars.iv346.i, 1     ; 2 uses
  %i.ow = load i32, ptr %i.cm, align 8, !tbaa !28
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.oy = load ptr, ptr %i.ht, align 8, !tbaa !53 ; 2 uses
  %i.oz = load i32, ptr %i.cl, align 4, !tbaa !46
  %i.pa = mul i32 %i.oz, %i.or
  %i.pb = sext i32 %i.pa to i64                   ; 3 uses
  %i.pc = getelementptr [4 x i8], ptr %i.oy, i64 %i.pb ; 5 uses
  %i.pd = load ptr, ptr %i.hu, align 8, !tbaa !53 ; 2 uses
  %i.pe = getelementptr [4 x i8], ptr %i.pd, i64 %i.pb ; 5 uses
  br i1 %i.ns, label %.lr.ph319.preheader.i, label %.loopexit.i

.lr.ph319.preheader.i:                            ; preds = %bb.av
  %i.pf = trunc nuw nsw i64 %i.ov to i32          ; 6 uses
  br i1 %min.iters.check337, label %.lr.ph319.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph319.preheader.i
  %i.pg = sub i32 %i.om, %mul.result
  %i.ph = icmp sgt i32 %i.pg, %i.om
  %.reass = or i1 %i.ph, %invariant.op
  %i.pi = getelementptr i8, ptr %scevgep293, i64 %i.ok
  %i.pj = icmp ugt ptr %i.pi, %scevgep293
  %i.pk = or i1 %i.pj, %mul.overflow296
  %i.pl = or i1 %.reass, %i.pk
  br i1 %i.pl, label %.lr.ph319.i.preheader, label %vector.memcheck338

vector.memcheck338:                               ; preds = %vector.scevcheck
  %i.pm = add nsw i64 %i.pb, %wide.trip.count.i
  %i.pn = shl nsw i64 %i.pm, 2                    ; 2 uses
  %i.po = getelementptr i8, ptr %i.oy, i64 %i.pn  ; 3 uses
  %i.pp = getelementptr i8, ptr %i.pd, i64 %i.pn  ; 3 uses
  %i.pq = add i32 %i.og, %i.pf
  %i.pr = sext i32 %i.pq to i64
  %i.ps = shl nsw i64 %i.pr, 2                    ; 4 uses
  %i.pt = getelementptr i8, ptr %scevgep335, i64 %i.ps ; 4 uses
  %i.pu = getelementptr i8, ptr %scevgep334.a, i64 %i.ps ; 4 uses
  %i.pv = icmp ult ptr %i.pt, %i.pu
  %i.pw = select i1 %i.pv, ptr %i.pt, ptr %i.pu   ; 2 uses
  %i.px = icmp ugt ptr %i.pt, %i.pu
  %i.py = select i1 %i.px, ptr %i.pt, ptr %i.pu
  %i.pz = getelementptr i8, ptr %i.py, i64 4      ; 2 uses
  %i.qa = getelementptr i8, ptr %scevgep333, i64 %i.ps ; 4 uses
  %i.qb = getelementptr i8, ptr %i.ig, i64 %i.ps  ; 4 uses
  %i.qc = icmp ult ptr %i.qa, %i.qb
  %i.qd = select i1 %i.qc, ptr %i.qa, ptr %i.qb   ; 2 uses
  %i.qe = icmp ugt ptr %i.qa, %i.qb
  %i.qf = select i1 %i.qe, ptr %i.qa, ptr %i.qb
  %i.qg = getelementptr i8, ptr %i.qf, i64 4      ; 2 uses
  %bound0339 = icmp ult ptr %i.pc, %i.pp
  %bound1340 = icmp ult ptr %i.pe, %i.po
  %found.conflict341 = and i1 %bound0339, %bound1340
  %bound0342 = icmp ult ptr %i.pc, %i.pz
  %bound1343 = icmp ult ptr %i.pw, %i.po
  %found.conflict344 = and i1 %bound0342, %bound1343
  %conflict.rdx345 = or i1 %found.conflict341, %found.conflict344
  %bound0346 = icmp ult ptr %i.pc, %i.qg
  %bound1347 = icmp ult ptr %i.qd, %i.po
  %found.conflict348 = and i1 %bound0346, %bound1347
  %conflict.rdx349 = or i1 %conflict.rdx345, %found.conflict348
  %bound0350 = icmp ult ptr %i.pe, %i.pz
  %bound1351 = icmp ult ptr %i.pw, %i.pp
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %conflict.rdx349, %found.conflict352
  %bound0354 = icmp ult ptr %i.pe, %i.qg
  %bound1355 = icmp ult ptr %i.qd, %i.pp
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  br i1 %conflict.rdx357, label %.lr.ph319.i.preheader, label %vector.body362

vector.body362:                                   ; preds = %vector.memcheck338, %vector.body362
  %index363 = phi i64 [ %index.next364, %vector.body362 ], [ 0, %vector.memcheck338 ] ; 4 uses
  %i.qh = trunc i64 %index363 to i32              ; 4 uses
  %i.qi = xor i32 %i.qh, -1
  %i.qj = xor i32 %i.qh, -2
  %i.qk = xor i32 %i.qh, -3
  %i.ql = xor i32 %i.qh, -4
  %i.qm = add i32 %i.hx, %i.qi
  %i.qn = add i32 %i.hx, %i.qj
  %i.qo = add i32 %i.hx, %i.qk
  %i.qp = add i32 %i.hx, %i.ql
  %i.qq = mul i32 %i.qm, %i.np
  %i.qr = mul i32 %i.qn, %i.np
  %i.qs = mul i32 %i.qo, %i.np
  %i.qt = mul i32 %i.qp, %i.np
  %i.qu = add nsw i32 %i.qq, %i.pf
  %i.qv = add nsw i32 %i.qr, %i.pf
  %i.qw = add nsw i32 %i.qs, %i.pf
  %i.qx = add nsw i32 %i.qt, %i.pf
  %i.qy = sext i32 %i.qu to i64
  %i.qz = sext i32 %i.qv to i64
  %i.ra = sext i32 %i.qw to i64
  %i.rb = sext i32 %i.qx to i64
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.qy ; 2 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.qz ; 2 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ra ; 2 uses
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.rb ; 2 uses
  %i.rg = load float, ptr %i.rc, align 4, !tbaa !49, !alias.scope !140
  %i.rh = load float, ptr %i.rd, align 4, !tbaa !49, !alias.scope !140
  %i.ri = load float, ptr %i.re, align 4, !tbaa !49, !alias.scope !140
  %i.rj = load float, ptr %i.rf, align 4, !tbaa !49, !alias.scope !140
  %i.rk = insertelement <4 x float> poison, float %i.rg, i64 0
  %i.rl = insertelement <4 x float> %i.rk, float %i.rh, i64 1
  %i.rm = insertelement <4 x float> %i.rl, float %i.ri, i64 2
  %i.rn = insertelement <4 x float> %i.rm, float %i.rj, i64 3
  %i.ro = fmul nsz <4 x float> %broadcast.splat361, %i.rn
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %index363
  store <4 x float> %i.ro, ptr %i.rp, align 4, !tbaa !49, !alias.scope !141, !noalias !142
  %i.rq = getelementptr i8, ptr %i.rc, i64 4
  %i.rr = getelementptr i8, ptr %i.rd, i64 4
  %i.rs = getelementptr i8, ptr %i.re, i64 4
  %i.rt = getelementptr i8, ptr %i.rf, i64 4
  %i.ru = load float, ptr %i.rq, align 4, !tbaa !49, !alias.scope !143
  %i.rv = load float, ptr %i.rr, align 4, !tbaa !49, !alias.scope !143
  %i.rw = load float, ptr %i.rs, align 4, !tbaa !49, !alias.scope !143
  %i.rx = load float, ptr %i.rt, align 4, !tbaa !49, !alias.scope !143
  %i.ry = insertelement <4 x float> poison, float %i.ru, i64 0
  %i.rz = insertelement <4 x float> %i.ry, float %i.rv, i64 1
  %i.sa = insertelement <4 x float> %i.rz, float %i.rw, i64 2
  %i.sb = insertelement <4 x float> %i.sa, float %i.rx, i64 3
  %i.sc = fmul nsz <4 x float> %broadcast.splat361, %i.sb
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %index363
  store <4 x float> %i.sc, ptr %i.sd, align 4, !tbaa !49, !alias.scope !144, !noalias !145
  %index.next364 = add nuw i64 %index363, 4       ; 2 uses
  %i.se = icmp eq i64 %index.next364, %n.vec359
  br i1 %i.se, label %middle.block365, label %vector.body362, !llvm.loop !118

middle.block365:                                  ; preds = %vector.body362
  br i1 %cmp.n366, label %.loopexit.i, label %.lr.ph319.i.preheader

.lr.ph319.i.preheader:                            ; preds = %vector.memcheck338, %vector.scevcheck, %.lr.ph319.preheader.i, %middle.block365
  %indvars.iv341.i.ph = phi i64 [ 0, %vector.memcheck338 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph319.preheader.i ], [ %n.vec359, %middle.block365 ]
  br label %.lr.ph319.i

.lr.ph319.i:                                      ; preds = %.lr.ph319.i.preheader, %.lr.ph319.i
  %indvars.iv341.i = phi i64 [ %indvars.iv.next342.i, %.lr.ph319.i ], [ %indvars.iv341.i.ph, %.lr.ph319.i.preheader ] ; 4 uses
  %i.sf = trunc i64 %indvars.iv341.i to i32
  %i.sg = xor i32 %i.sf, -1
  %i.sh = add i32 %i.hx, %i.sg
  %i.si = mul i32 %i.sh, %i.np
  %i.sj = add nsw i32 %i.si, %i.pf
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.sk ; 2 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !49
  %i.sn = fmul nsz float %i.ch, %i.sm
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv341.i
  store float %i.sn, ptr %i.so, align 4, !tbaa !49
  %i.sp = getelementptr i8, ptr %i.sl, i64 4
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !49
  %i.sr = fmul nsz float %i.ch, %i.sq
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv341.i
  store float %i.sr, ptr %i.ss, align 4, !tbaa !49
  %indvars.iv.next342.i = add nuw nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %exitcond345.not.i = icmp eq i64 %indvars.iv.next342.i, %wide.trip.count.i
  br i1 %exitcond345.not.i, label %.loopexit.i, label %.lr.ph319.i, !llvm.loop !119

bb.aw:                                            ; preds = %bb.au
  %i.st = load ptr, ptr %i.hn, align 8, !tbaa !55
  %i.su = shl i32 %i.or, %i.da
  %i.sv = sext i32 %i.su to i64                   ; 2 uses
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.st, i64 %i.sv
  %i.sx = load ptr, ptr %i.ho, align 8, !tbaa !55
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.sx, i64 %i.sv
  %i.sz = load ptr, ptr %i.hp, align 8, !tbaa !55 ; 4 uses
  %i.ta = load ptr, ptr %i.hq, align 8, !tbaa !55 ; 4 uses
  br i1 %i.ns, label %.lr.ph316.preheader.i, label %._crit_edge.i

.lr.ph316.preheader.i:                            ; preds = %bb.aw
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ov ; 3 uses
  br i1 %i.oh, label %.lr.ph316.i.epil.preheader, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.lr.ph316.preheader.i, %.lr.ph316.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph316.i ], [ 0, %.lr.ph316.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph316.i ], [ 0, %.lr.ph316.preheader.i ]
  %i.tb = mul nuw nsw i64 %indvars.iv.i, %i.nt
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.tb ; 2 uses
  %i.tc = load float, ptr %gep.i, align 4, !tbaa !49
  %i.td = fmul nsz float %i.ch, %i.tc
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.i
  store float %i.td, ptr %i.te, align 4, !tbaa !65
  %i.tf = getelementptr i8, ptr %gep.i, i64 4
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !49
  %i.th = fmul nsz float %i.ch, %i.tg
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %indvars.iv.i
  store float %i.th, ptr %i.ti, align 4, !tbaa !65
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.tj = mul nuw nsw i64 %indvars.iv.next.i, %i.nt
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.tj ; 2 uses
  %i.tk = load float, ptr %gep.i.1, align 4, !tbaa !49
  %i.tl = fmul nsz float %i.ch, %i.tk
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.next.i
  store float %i.tl, ptr %i.tm, align 4, !tbaa !65
  %i.tn = getelementptr i8, ptr %gep.i.1, i64 4
  %i.to = load float, ptr %i.tn, align 4, !tbaa !49
  %i.tp = fmul nsz float %i.ch, %i.to
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %indvars.iv.next.i
  store float %i.tp, ptr %i.tq, align 4, !tbaa !65
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph316.i, !llvm.loop !120

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph316.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph316.i.epil.preheader

.lr.ph316.i.epil.preheader:                       ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph316.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph316.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod445)
  %i.tr = mul nuw nsw i64 %indvars.iv.i.epil.init, %i.nt
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %i.tr ; 2 uses
  %i.ts = load float, ptr %gep.i.epil, align 4, !tbaa !49
  %i.tt = fmul nsz float %i.ch, %i.ts
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv.i.epil.init
  store float %i.tt, ptr %i.tu, align 4, !tbaa !65
  %i.tv = getelementptr i8, ptr %gep.i.epil, i64 4
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !49
  %i.tx = fmul nsz float %i.ch, %i.tw
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %indvars.iv.i.epil.init
  store float %i.tx, ptr %i.ty, align 4, !tbaa !65
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph316.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.aw
  %i.tz = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.ua = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.tz(ptr noundef %i.ua, ptr noundef %i.sw, ptr noundef %i.sz, i64 noundef 8) #8, !inline_history !112
  %i.ub = load ptr, ptr %i.hr, align 8, !tbaa !66
  %i.uc = load ptr, ptr %i.hs, align 8, !tbaa !51
  call void %i.ub(ptr noundef %i.uc, ptr noundef %i.sy, ptr noundef %i.ta, i64 noundef 8) #8, !inline_history !112
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph319.i, %middle.block365, %._crit_edge.i, %bb.av, %bb.at
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  br i1 %exitcond350.not.i, label %.thread294.i, label %bb.at, !llvm.loop !121

.thread294.i:                                     ; preds = %.loopexit.i, %.lr.ph329.i.prol.loopexit, %.lr.ph329.i, %middle.block, %bb.as, %._crit_edge326.i, %bb.aq, %bb.ao
  call void @av_frame_free(ptr noundef nonnull %i.c) #8
  %i.ud = load i32, ptr %i.bp, align 8, !tbaa !27
  %i.ue = sext i32 %i.ud to i64
  %i.uf = icmp slt i64 %indvars.iv.next362.i, %i.ue
  br i1 %i.uf, label %bb.am, label %.sink.split, !llvm.loop !122

.loopexit:                                        ; preds = %bb.am, %bb.ak, %bb.ae, %bb.ah, %bb.z, %.thread.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.af, %bb.aj, %bb.ai
  %.3252.i.ph = phi i32 [ -12, %bb.ak ], [ -12, %bb.ai ], [ -12, %bb.aj ], [ -12, %bb.af ], [ -12, %bb.aa ], [ -12, %bb.ab ], [ -12, %bb.ac ], [ -12, %bb.ad ], [ %.0249.ph.i, %.thread.i ], [ -12, %bb.z ], [ -12, %bb.ah ], [ -12, %bb.ae ], [ %i.ib, %bb.am ]
end_hunk_0
begin_hunk_1_@headphone_fast_convolute:bb.a
  %i.iw = load float, ptr %gep230.epil, align 4, !tbaa !65
  %i.ix = sext i32 %i.iv to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ix ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !49
  %i.ja = tail call nsz float @llvm.fmuladd.f32(float %i.iw, float %i.ba, float %i.iz)
  store float %i.ja, ptr %i.iy, align 4, !tbaa !49
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.lr.ph178.epil.preheader, %._crit_edge179.loopexit.unr-lcssa, %.preheader
  store i32 %.0147.lcssa, ptr %i.i, align 4, !tbaa !25
  ret i32 0
}

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"float", !5, i64 0}
!21 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!22 = !{!"HeadphoneContext", !10, i64 0, !12, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !20, i64 48, !20, i64 52, !20, i64 56, !5, i64 64, !5, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !5, i64 104, !5, i64 120, !5, i64 136, !5, i64 152, !5, i64 168, !5, i64 184, !5, i64 200, !5, i64 216, !5, i64 232, !5, i64 248, !9, i64 264, !5, i64 272, !21, i64 784, !5, i64 808, !5, i64 1064}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!22, !6, i64 44}
!25 = !{!6, !6, i64 0}
!26 = !{!22, !6, i64 100}
!27 = !{!22, !6, i64 40}
!28 = !{!22, !6, i64 16}
!29 = !{!22, !9, i64 264}
!30 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!18, !15, i64 32}
!33 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!36 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!37 = !{!"AVRational", !6, i64 0, !6, i64 4}
!38 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!39 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!40 = !{!"AVFilterFormatsConfig", !39, i64 0, !39, i64 8, !30, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!41 = !{!"AVFilterLink", !36, i64 0, !13, i64 8, !36, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !37, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !21, i64 72, !37, i64 96, !38, i64 104, !6, i64 112, !6, i64 116, !40, i64 120, !40, i64 168}
!42 = !{!41, !36, i64 16}
!43 = !{!22, !6, i64 32}
!44 = !{!41, !6, i64 76}
!45 = !{!22, !20, i64 48}
!46 = !{!22, !6, i64 36}
!47 = !{!22, !6, i64 88}
!48 = !{!22, !6, i64 92}
!49 = !{!20, !20, i64 0}
!50 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 float", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"p1 _ZTS14AVComplexFloat", !9, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p2 omnipotent char", !14, i64 0}
!57 = !{!"long", !5, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!60 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !37, i64 124, !57, i64 136, !57, i64 144, !37, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !58, i64 248, !6, i64 256, !38, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !57, i64 304, !59, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !9, i64 376, !21, i64 384, !57, i64 408, !6, i64 416}
!61 = !{!12, !12, i64 0}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"AVComplexFloat", !20, i64 0, !20, i64 4}
!65 = !{!64, !20, i64 0}
!66 = !{!9, !9, i64 0}
!67 = !{!41, !36, i64 0}
!68 = !{!60, !6, i64 112}
!69 = !{!"p1 int", !9, i64 0}
!70 = !{!"p2 float", !14, i64 0}
!71 = !{!"p2 _ZTS14AVComplexFloat", !14, i64 0}
!72 = !{!"ThreadData", !35, i64 0, !35, i64 8, !69, i64 16, !70, i64 24, !69, i64 32, !70, i64 40, !70, i64 48, !71, i64 56, !71, i64 64, !71, i64 72}
!73 = !{!72, !35, i64 0}
!74 = !{!72, !35, i64 8}
!75 = !{!72, !69, i64 16}
!76 = !{!72, !70, i64 24}
!77 = !{!72, !69, i64 32}
!78 = !{!22, !20, i64 56}
!79 = !{!22, !6, i64 20}
!80 = !{!72, !70, i64 40}
!81 = !{!60, !6, i64 388}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = !{!22, !12, i64 8}
!86 = !{!"AVFilterPad", !12, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!87 = !{!86, !12, i64 0}
!88 = !{!86, !6, i64 8}
!89 = !{!"AVFloatDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88}
!90 = !{!89, !9, i64 72}
!91 = distinct !{!91, !23}
!92 = !{!30, !30, i64 0}
!93 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!21, !6, i64 0}
!96 = !{!21, !6, i64 4}
!97 = !{!21, !9, i64 16}
!98 = distinct !{!98, !23}
!99 = distinct !{!99, !23}
!100 = distinct !{!100, i1 false, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !100}
!104 = distinct !{!104, !23, !62, !63}
!105 = distinct !{!105, !23, !62}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !106}
!110 = distinct !{!110, !23, !62, !63}
!111 = distinct !{!111, !23, !62}
!112 = distinct !{null}
!113 = distinct !{!113, i1 false, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !113}
!118 = distinct !{!118, !23, !62, !63}
!119 = distinct !{!119, !23, !62}
!120 = distinct !{!120, !23, !62}
!121 = distinct !{!121, !23}
!122 = distinct !{!122, !23}
!123 = !{!18, !15, i64 56}
!124 = !{!35, !35, i64 0}
!125 = !{!18, !6, i64 40}
!126 = !{!22, !6, i64 28}
!127 = !{!"hrir_inputs", !6, i64 0, !6, i64 4}
!128 = !{!127, !6, i64 4}
!129 = !{!127, !6, i64 0}
!130 = !{!22, !6, i64 96}
!131 = !{!60, !56, i64 96}
!132 = !{!101}
!133 = !{!102}
!134 = !{!103, !101}
!135 = !{!103}
!136 = !{!107}
!137 = !{!108}
!138 = !{!109, !107}
!139 = !{!109}
!140 = !{!114}
!141 = !{!115}
!142 = !{!117, !116, !114}
!143 = !{!116}
!144 = !{!117}
!145 = !{!116, !114}
!146 = !{!22, !6, i64 24}
!147 = !{!60, !57, i64 136}
!148 = !{!14, !14, i64 0}
!149 = !{!72, !71, i64 72}
!150 = !{!57, !57, i64 0}
!151 = !{!22, !20, i64 52}
!152 = distinct !{!152, !82}
!153 = distinct !{!153, !23}
!154 = distinct !{!154, !82}
!155 = distinct !{!155, !23}
!156 = distinct !{!156, !23}
!157 = distinct !{!157, !23}
!158 = distinct !{!158, !82}
!159 = !{!72, !70, i64 48}
!160 = distinct !{!160, !82}
!161 = distinct !{!161, !23}
!162 = distinct !{!162, !23}
!163 = distinct !{!163, i1 false, !"LVerDomain"}
!164 = distinct !{!164, !163}
!165 = distinct !{!165, !163}
!166 = distinct !{!166, !163}
!167 = distinct !{!167, !23, !62, !63}
!168 = distinct !{!168, !23, !62}
!169 = distinct !{!169, !23}
!170 = distinct !{!170, !82}
!171 = distinct !{!171, i1 false, !"LVerDomain"}
!172 = distinct !{!172, !171}
!173 = distinct !{!173, !23, !62, !63}
!174 = distinct !{!174, !23, !62}
!175 = distinct !{!175, !23}
!176 = distinct !{!176, !23}
!177 = distinct !{!177, !23}
!178 = !{!164}
!179 = !{!165}
!180 = !{!166}
!181 = !{!165, !164}
!182 = !{!172}
!183 = !{!64, !20, i64 4}
end_hunk_1
