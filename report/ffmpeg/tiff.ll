Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.hz = load i32, ptr %i.d, align 4, !tbaa !33
  %i.ia = icmp eq i32 %i.hz, 4
  %i.ib = icmp eq i32 %.0543.i, -1
  %or.cond13.i = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %or.cond13.i, label %bb.ar, label %._crit_edge788.i

._crit_edge788.i:                                 ; preds = %bb.aq
  %.pre789.i = load i32, ptr %i.dm, align 4, !tbaa !66
  %i.ic = call i32 @llvm.umin.i32(i32 %.0543.i, i32 %.pre789.i)
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.id = load i32, ptr %i.dm, align 4, !tbaa !66
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge788.i
  %.1544.i = phi i32 [ %i.id, %bb.ar ], [ %i.ic, %._crit_edge788.i ]
  store i32 %.1544.i, ptr %i.dn, align 4, !tbaa !212
  br label %.critedge636.ithread-pre-split

bb.at:                                            ; preds = %bb.s
  %i.ie = load i32, ptr %i.e, align 4, !tbaa !33  ; 3 uses
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.ig = icmp slt i32 %.0543.i, 0
  br i1 %i.ig, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ih = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ih, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %.0543.i) #16
  br label %tiff_decode_tag.exit.thread

bb.aw:                                            ; preds = %bb.au
  store i32 0, ptr %i.bm, align 4, !tbaa !208
  store i32 %.0543.i, ptr %i.dl, align 8, !tbaa !213
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  store i32 %i.fz, ptr %i.bm, align 4, !tbaa !208
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store i32 %i.ie, ptr %i.dj, align 8, !tbaa !214
  %i.ii = load i32, ptr %i.at, align 4, !tbaa !56
  %i.ij = icmp eq i32 %i.ie, %i.ii
  br i1 %i.ij, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ik = load i32, ptr %i.dm, align 4, !tbaa !66
  store i32 %i.ik, ptr %i.dn, align 4, !tbaa !212
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.il = load i32, ptr %i.d, align 4, !tbaa !33
  store i32 %i.il, ptr %i.do, align 4, !tbaa !215
  br label %.critedge636.ithread-pre-split

bb.bb:                                            ; preds = %bb.s
  %i.im = load i32, ptr %i.e, align 4, !tbaa !33  ; 2 uses
  %i.in = icmp eq i32 %i.im, 1
  br i1 %i.in, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.io = icmp slt i32 %.0543.i, 0
  br i1 %i.io, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ip = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ip, i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %.0543.i) #16
  br label %tiff_decode_tag.exit.thread

bb.be:                                            ; preds = %bb.bc
  store i32 0, ptr %i.bn, align 8, !tbaa !209
  store i32 %.0543.i, ptr %i.di, align 4, !tbaa !216
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  store i32 %i.fz, ptr %i.bn, align 8, !tbaa !209
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i32 %i.im, ptr %i.dj, align 8, !tbaa !214
  %i.iq = load i32, ptr %i.d, align 4, !tbaa !33
  store i32 %i.iq, ptr %i.dk, align 8, !tbaa !217
  br label %.critedge636.ithread-pre-split

bb.bh:                                            ; preds = %bb.s, %bb.s
  %i.ir = icmp eq i32 %i.gk, 283
  %i.is = select i1 %i.ir, i64 2, i64 0
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.is ; 2 uses
  store i32 %.0543.i, ptr %i.it, align 4, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  store i32 %.0546.i, ptr %i.iu, align 4, !tbaa !33
  %i.iv = load i32, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %.not.i858 = icmp eq i32 %i.iv, 0
  br i1 %.not.i858, label %.critedge636.ithread-pre-split, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iw = load i32, ptr %i.df, align 4, !tbaa !33 ; 2 uses
  %.not32.i = icmp eq i32 %i.iw, 0
  br i1 %.not32.i, label %.critedge636.ithread-pre-split, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ix = load i32, ptr %i.dg, align 8, !tbaa !33 ; 2 uses
  %.not33.i = icmp eq i32 %i.ix, 0
  br i1 %.not33.i, label %.critedge636.ithread-pre-split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iy = load i32, ptr %i.dh, align 4, !tbaa !33 ; 2 uses
  %.not34.i = icmp eq i32 %i.iy, 0
  br i1 %.not34.i, label %.critedge636.ithread-pre-split, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iz = zext i32 %i.ix to i64
  %i.ja = zext i32 %i.iw to i64
  %i.jb = mul nuw i64 %i.iz, %i.ja                ; 2 uses
  %i.jc = zext i32 %i.iv to i64
  %i.jd = zext i32 %i.iy to i64
  %i.je = mul nuw i64 %i.jd, %i.jc                ; 2 uses
  %i.jf = or i64 %i.je, %i.jb
  %.lobit.i = lshr i64 %i.jf, 63                  ; 2 uses
  %.025.i = lshr i64 %i.je, %.lobit.i
  %.0.i859 = lshr i64 %i.jb, %.lobit.i
  %i.jg = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 128
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 132
  %i.jj = call i32 @av_reduce(ptr noundef nonnull %i.jh, ptr noundef nonnull %i.ji, i64 noundef %.0.i859, i64 noundef %.025.i, i64 noundef 2147483647) #16 ; 0 uses
  %i.jk = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 132 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !218
  %.not35.i = icmp eq i32 %i.jm, 0
  br i1 %.not35.i, label %bb.bm, label %.critedge636.ithread-pre-split

bb.bm:                                            ; preds = %bb.bl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 128
  store i32 0, ptr %i.jn, align 8, !tbaa !33
  store i32 1, ptr %i.jl, align 4, !tbaa !33
  br label %.critedge636.ithread-pre-split

bb.bn:                                            ; preds = %bb.s
  store i32 %i.fz, ptr %i.dd, align 8, !tbaa !68
  store i32 1, ptr %i.az, align 8, !tbaa !202
  br label %.critedge636.ithread-pre-split

bb.bo:                                            ; preds = %bb.s
  store i32 %i.fz, ptr %i.dc, align 4, !tbaa !69
  br label %.critedge636.ithread-pre-split

bb.bp:                                            ; preds = %bb.s
  %i.jo = icmp slt i32 %.0543.i, 0
  br i1 %i.jo, label %tiff_decode_tag.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %.0543.i, ptr %i.db, align 8, !tbaa !70
  br label %.critedge636.ithread-pre-split

bb.br:                                            ; preds = %bb.s
  %i.jp = icmp slt i32 %.0543.i, 0
  br i1 %i.jp, label %tiff_decode_tag.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 %.0543.i, ptr %i.da, align 4, !tbaa !71
  br label %.critedge636.ithread-pre-split

bb.bt:                                            ; preds = %bb.s
  %i.jq = icmp slt i32 %.0543.i, 0
  br i1 %i.jq, label %tiff_decode_tag.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 %.0543.i, ptr %i.cz, align 8, !tbaa !210
  br label %.critedge636.ithread-pre-split

bb.bv:                                            ; preds = %bb.s
  %i.jr = load i32, ptr %i.e, align 4, !tbaa !33
  switch i32 %i.jr, label %bb.bx [
    i32 1, label %bb.bw
    i32 0, label %.critedge636.ithread-pre-split
  ]

bb.bw:                                            ; preds = %bb.bv
  store i32 %.0543.i, ptr %i.cy, align 8, !tbaa !219
  br label %.critedge636.ithread-pre-split

bb.bx:                                            ; preds = %bb.bv
  %i.js = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.jt = call i32 @ff_tget_long(ptr noundef nonnull %i.y, i32 noundef %i.js) #16
  store i32 %i.jt, ptr %i.cy, align 8, !tbaa !219
  br label %.critedge636.ithread-pre-split

bb.by:                                            ; preds = %bb.s, %bb.s
  %i.ju = load i32, ptr %i.e, align 4, !tbaa !33
  %i.jv = add i32 %i.ju, -65537
  %or.cond16.i = icmp ult i32 %i.jv, -65536
  br i1 %or.cond16.i, label %tiff_decode_tag.exit.thread, label %.lr.ph722.i

._crit_edge.i:                                    ; preds = %.lr.ph722.i
  %i.jw = add i32 %i.kg, -1
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !60
  %i.ka = zext i16 %i.jz to i32
  store i32 %i.ka, ptr %i.ax, align 4, !tbaa !58
  br label %.critedge636.ithread-pre-split

.lr.ph722.i:                                      ; preds = %bb.by, %.lr.ph722.i
  %indvars.iv784.i = phi i64 [ %indvars.iv.next785.i, %.lr.ph722.i ], [ 0, %bb.by ] ; 2 uses
  %i.kb = load i32, ptr %i.d, align 4, !tbaa !33
  %i.kc = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.kd = call i32 @ff_tget(ptr noundef nonnull %i.y, i32 noundef %i.kb, i32 noundef %i.kc) #16
  %i.ke = trunc i32 %i.kd to i16
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv784.i
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !60
  %indvars.iv.next785.i = add nuw nsw i64 %indvars.iv784.i, 1 ; 2 uses
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !33  ; 2 uses
  %i.kh = zext i32 %i.kg to i64
  %i.ki = icmp samesign ult i64 %indvars.iv.next785.i, %i.kh
  br i1 %i.ki, label %.lr.ph722.i, label %._crit_edge.i, !llvm.loop !94

bb.bz:                                            ; preds = %bb.s
  %i.kj = load i32, ptr %i.e, align 4, !tbaa !33  ; 3 uses
  %i.kk = icmp ugt i32 %i.kj, 4
  br i1 %i.kk, label %tiff_decode_tag.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kl = uitofp nsz i32 %.0543.i to float
  %i.km = uitofp nsz i32 %.0546.i to float
  %i.kn = fdiv nsz float %i.kl, %i.km
  store float %i.kn, ptr %i.be, align 4, !tbaa !62
  %i.ko = icmp samesign ugt i32 %i.kj, 1
  br i1 %i.ko, label %.lr.ph718.i, label %.preheader668.i

.preheader668.i:                                  ; preds = %bb.ci, %bb.ca
  %.lcssa689.i = phi i32 [ %i.kj, %bb.ca ], [ %i.md, %bb.ci ]
  %.lcssa689.fr.i = freeze i32 %.lcssa689.i       ; 7 uses
  %i.kp = icmp ne i32 %.lcssa689.fr.i, 0
  %i.kq = icmp slt i32 %.lcssa689.fr.i, 4
  %i.kr = and i1 %i.kp, %i.kq
  br i1 %i.kr, label %.lr.ph720.split.preheader.i, label %.critedge636.ithread-pre-split

.lr.ph720.split.preheader.i:                      ; preds = %.preheader668.i
  %i.ks = add i32 %.lcssa689.fr.i, -1
  %i.kt = zext i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.kt
  %i.kv = sext i32 %.lcssa689.fr.i to i64         ; 4 uses
  %.pre787.i = load float, ptr %i.ku, align 4, !tbaa !62 ; 2 uses
  %i.kw = add i32 %.lcssa689.fr.i, 1
  %i.kx = zext i32 %i.kw to i64
  %i.ky = sub nsw i64 5, %i.kx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ky, 16
  br i1 %min.iters.check, label %.lr.ph720.split.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph720.split.preheader.i
  %i.kz = add i32 %.lcssa689.fr.i, 1
  %i.la = zext i32 %i.kz to i64
  %i.lb = sub nsw i64 4, %i.la                    ; 2 uses
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = sub i32 -2, %.lcssa689.fr.i
  %i.le = icmp ult i32 %i.ld, %i.lc
  %i.lf = icmp ugt i64 %i.lb, 4294967295
  %i.lg = or i1 %i.le, %i.lf
  br i1 %i.lg, label %.lr.ph720.split.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ky, -8                      ; 3 uses
  %i.lh = add nsw i64 %n.vec, %i.kv
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre787.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep3965 = getelementptr [4 x i8], ptr %i.be, i64 %i.kv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep3966 = getelementptr [4 x i8], ptr %invariant.gep3965, i64 %index ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %gep3966, i64 16
  store <4 x float> %broadcast.splat, ptr %gep3966, align 4, !tbaa !62
  store <4 x float> %broadcast.splat, ptr %i.li, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ky, %n.vec
  br i1 %cmp.n, label %.critedge636.ithread-pre-split, label %.lr.ph720.split.i.preheader

.lr.ph720.split.i.preheader:                      ; preds = %vector.scevcheck, %.lr.ph720.split.preheader.i, %middle.block
  %indvars.iv781.i.ph = phi i64 [ %i.kv, %vector.scevcheck ], [ %i.kv, %.lr.ph720.split.preheader.i ], [ %i.lh, %middle.block ]
  br label %.lr.ph720.split.i

.lr.ph718.i:                                      ; preds = %bb.ca, %bb.ci
  %indvars.iv778.i = phi i64 [ %indvars.iv.next779.i, %bb.ci ], [ 0, %bb.ca ] ; 2 uses
  %i.lk = load i32, ptr %i.d, align 4, !tbaa !33  ; 2 uses
  %i.ll = load i32, ptr %i.ao, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.lk, label %bb.ch [
    i32 5, label %bb.cb
    i32 10, label %bb.ce
  ]

bb.cb:                                            ; preds = %.lr.ph718.i
  %i.lm = call i32 @ff_tget_long(ptr noundef nonnull %i.y, i32 noundef %i.ll) #16
  %i.ln = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.lo = call i32 @ff_tget_long(ptr noundef nonnull %i.y, i32 noundef %i.ln) #16 ; 2 uses
  %.not630.i = icmp eq i32 %i.lo, 0
  br i1 %.not630.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lp = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lp, i32 noundef 24, ptr noundef nonnull @.str.42) #16
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1547.i = phi i32 [ %i.lo, %bb.cb ], [ 1, %bb.cc ]
  %i.lq = uitofp nsz i32 %i.lm to float
  %i.lr = uitofp nsz i32 %.1547.i to float
  %i.ls = fdiv nsz float %i.lq, %i.lr
  br label %bb.ci

bb.ce:                                            ; preds = %.lr.ph718.i
  %i.lt = call i32 @ff_tget_long(ptr noundef nonnull %i.y, i32 noundef %i.ll) #16
  %i.lu = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.lv = call i32 @ff_tget_long(ptr noundef nonnull %i.y, i32 noundef %i.lu) #16 ; 2 uses
  %.not629.i = icmp eq i32 %i.lv, 0
  br i1 %.not629.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lw = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.lw, i32 noundef 24, ptr noundef nonnull @.str.42) #16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.0558.i = phi i32 [ %i.lv, %bb.ce ], [ 1, %bb.cf ]
  %i.lx = sitofp nsz i32 %i.lt to float
  %i.ly = sitofp nsz i32 %.0558.i to float
  %i.lz = fdiv nsz float %i.lx, %i.ly
  br label %bb.ci

bb.ch:                                            ; preds = %.lr.ph718.i
  %i.ma = call i32 @ff_tget(ptr noundef nonnull %i.y, i32 noundef %i.lk, i32 noundef %i.ll) #16
  %i.mb = uitofp nsz i32 %i.ma to float
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cd
  %.sink.i = phi float [ %i.ls, %bb.cd ], [ %i.mb, %bb.ch ], [ %i.lz, %bb.cg ]
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv778.i
  store float %.sink.i, ptr %i.mc, align 4, !tbaa !62
  %indvars.iv.next779.i = add nuw nsw i64 %indvars.iv778.i, 1 ; 2 uses
  %i.md = load i32, ptr %i.e, align 4, !tbaa !33  ; 2 uses
  %i.me = zext i32 %i.md to i64
  %i.mf = icmp samesign ult i64 %indvars.iv.next779.i, %i.me
  br i1 %i.mf, label %.lr.ph718.i, label %.preheader668.i, !llvm.loop !96

.lr.ph720.split.i:                                ; preds = %.lr.ph720.split.i.preheader, %.lr.ph720.split.i
  %indvars.iv781.i = phi i64 [ %indvars.iv.next782.i, %.lr.ph720.split.i ], [ %indvars.iv781.i.ph, %.lr.ph720.split.i.preheader ] ; 2 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv781.i
  store float %.pre787.i, ptr %i.mg, align 4, !tbaa !62
  %indvars.iv.next782.i = add nsw i64 %indvars.iv781.i, 1 ; 2 uses
  %i.mh = and i64 %indvars.iv.next782.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.mh, 4
  br i1 %exitcond.not.i, label %.critedge636.ithread-pre-split, label %.lr.ph720.split.i, !llvm.loop !97

bb.cj:                                            ; preds = %bb.s
  store i32 %.0543.i, ptr %i.ax, align 4, !tbaa !58
  br label %.critedge636.ithread-pre-split

bb.ck:                                            ; preds = %bb.s
  %i.mi = load i32, ptr %i.e, align 4, !tbaa !33
  %.not626.i = icmp eq i32 %i.mi, 2
  br i1 %.not626.i, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.mj = load i32, ptr %i.d, align 4, !tbaa !33
  %i.mk = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.ml = call i32 @ff_tget(ptr noundef nonnull %i.y, i32 noundef %i.mj, i32 noundef %i.mk) #16
  %.not627.i = icmp eq i32 %i.ml, 2
  br i1 %.not627.i, label %.critedge636.ithread-pre-split, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mm = load i32, ptr %i.d, align 4, !tbaa !33
  %i.mn = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.mo = call i32 @ff_tget(ptr noundef nonnull %i.y, i32 noundef %i.mm, i32 noundef %i.mn) #16
  %.not628.i = icmp eq i32 %i.mo, 2
  br i1 %.not628.i, label %.critedge636.ithread-pre-split, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ck
  %i.mp = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.mp, i32 noundef 16, ptr noundef nonnull @.str.43) #16
  br label %tiff_decode_tag.exit.thread

bb.co:                                            ; preds = %bb.s
  store i32 1, ptr %i.ay, align 8, !tbaa !59
  %i.mq = load i32, ptr %i.d, align 4, !tbaa !33
  %i.mr = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.ms = call i32 @ff_tget(ptr noundef nonnull %i.y, i32 noundef %i.mq, i32 noundef %i.mr) #16
  %i.mt = trunc i32 %i.ms to i8
  store i8 %i.mt, ptr %i.cu, align 8, !tbaa !67
  %i.mu = load i32, ptr %i.d, align 4, !tbaa !33
  %i.mv = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.mw = call i32 @ff_tget(ptr noundef nonnull %i.y, i32 noundef %i.mu, i32 noundef %i.mv) #16
end_hunk_0
begin_hunk_1_@decode_frame:bb.a

iter.check3140:                                   ; preds = %.preheader934
  %i.dei = mul i64 %indvar, %i.ddt
  %i.dej = sub i64 %i.dei, %i.ddx
  %diff.check3125 = icmp ugt i64 %i.dej, -32
  %or.cond = select i1 %min.iters.check3127, i1 true, i1 %diff.check3125
  br i1 %or.cond, label %.lr.ph1637.preheader, label %vector.main.loop.iter.check3128

vector.main.loop.iter.check3128:                  ; preds = %iter.check3140
  br i1 %min.iters.check3129, label %vec.epilog.ph3144, label %vector.body3132

vector.body3132:                                  ; preds = %vector.main.loop.iter.check3128, %vector.body3132
  %index3133 = phi i64 [ %index.next3136, %vector.body3132 ], [ 0, %vector.main.loop.iter.check3128 ] ; 3 uses
  %i.dek = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3133 ; 2 uses
  %i.del = getelementptr inbounds nuw i8, ptr %i.dek, i64 16
  %wide.load3134 = load <16 x i8>, ptr %i.dek, align 1, !tbaa !67
  %wide.load3135 = load <16 x i8>, ptr %i.del, align 1, !tbaa !67
  %i.dem = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %index3133 ; 2 uses
  %i.den = getelementptr inbounds nuw i8, ptr %i.dem, i64 16
  store <16 x i8> %wide.load3134, ptr %i.dem, align 1, !tbaa !67
  store <16 x i8> %wide.load3135, ptr %i.den, align 1, !tbaa !67
  %index.next3136 = add nuw i64 %index3133, 32    ; 2 uses
  %i.deo = icmp eq i64 %index.next3136, %n.vec3131
  br i1 %i.deo, label %middle.block3137, label %vector.body3132, !llvm.loop !164

middle.block3137:                                 ; preds = %vector.body3132
  br i1 %cmp.n3138, label %.preheader933, label %vec.epilog.iter.check3142

vec.epilog.iter.check3142:                        ; preds = %middle.block3137
  br i1 %min.epilog.iters.check3143, label %.lr.ph1637.preheader, label %vec.epilog.ph3144, !prof !273

vec.epilog.ph3144:                                ; preds = %vector.main.loop.iter.check3128, %vec.epilog.iter.check3142
  %vec.epilog.resume.val3139 = phi i64 [ %n.vec3131, %vec.epilog.iter.check3142 ], [ 0, %vector.main.loop.iter.check3128 ]
  br label %vec.epilog.vector.body3146

vec.epilog.vector.body3146:                       ; preds = %vec.epilog.vector.body3146, %vec.epilog.ph3144
  %index3147 = phi i64 [ %vec.epilog.resume.val3139, %vec.epilog.ph3144 ], [ %index.next3149, %vec.epilog.vector.body3146 ] ; 3 uses
  %i.dep = getelementptr inbounds nuw i8, ptr %.67061645, i64 %index3147
  %wide.load3148 = load <4 x i8>, ptr %i.dep, align 1, !tbaa !67
  %i.deq = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %index3147
  store <4 x i8> %wide.load3148, ptr %i.deq, align 1, !tbaa !67
  %index.next3149 = add nuw i64 %index3147, 4     ; 2 uses
  %i.der = icmp eq i64 %index.next3149, %n.vec3145
  br i1 %i.der, label %vec.epilog.middle.block3150, label %vec.epilog.vector.body3146, !llvm.loop !165

vec.epilog.middle.block3150:                      ; preds = %vec.epilog.vector.body3146
  br i1 %cmp.n3151, label %.preheader933, label %.lr.ph1637.preheader

.lr.ph1637.preheader:                             ; preds = %iter.check3140, %vec.epilog.iter.check3142, %vec.epilog.middle.block3150
  %indvars.iv1995.ph = phi i64 [ 0, %iter.check3140 ], [ %n.vec3131, %vec.epilog.iter.check3142 ], [ %n.vec3145, %vec.epilog.middle.block3150 ] ; 3 uses
  br i1 %lcmp.mod3762.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol

.lr.ph1637.prol:                                  ; preds = %.lr.ph1637.preheader, %.lr.ph1637.prol
  %indvars.iv1995.prol = phi i64 [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ], [ %indvars.iv1995.ph, %.lr.ph1637.preheader ] ; 3 uses
  %prol.iter3763 = phi i64 [ %prol.iter3763.next, %.lr.ph1637.prol ], [ 0, %.lr.ph1637.preheader ]
  %i.des = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995.prol
  %i.det = load i8, ptr %i.des, align 1, !tbaa !67
  %i.deu = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %indvars.iv1995.prol
  store i8 %i.det, ptr %i.deu, align 1, !tbaa !67
  %indvars.iv.next1996.prol = add nuw nsw i64 %indvars.iv1995.prol, 1 ; 2 uses
  %prol.iter3763.next = add i64 %prol.iter3763, 1 ; 2 uses
  %prol.iter3763.cmp.not = icmp eq i64 %prol.iter3763.next, %xtraiter3761
  br i1 %prol.iter3763.cmp.not, label %.lr.ph1637.prol.loopexit, label %.lr.ph1637.prol, !llvm.loop !166

.lr.ph1637.prol.loopexit:                         ; preds = %.lr.ph1637.prol, %.lr.ph1637.preheader
  %indvars.iv1995.unr = phi i64 [ %indvars.iv1995.ph, %.lr.ph1637.preheader ], [ %indvars.iv.next1996.prol, %.lr.ph1637.prol ]
  %i.dev = sub nsw i64 %indvars.iv1995.ph, %wide.trip.count1998
  %i.dew = icmp ugt i64 %i.dev, -4
  br i1 %i.dew, label %.preheader933, label %.lr.ph1637

.preheader933:                                    ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637, %middle.block3137, %vec.epilog.middle.block3150, %.preheader934
  br i1 %i.ddr, label %iter.check3110, label %.preheader932

iter.check3110:                                   ; preds = %.preheader933
  br i1 %min.iters.check3094, label %.lr.ph1639.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check3110
  %i.dex = sub i64 %i.deh, %i.ddx
  %diff.check = icmp ugt i64 %i.dex, -32
  %conflict.rdx = or i1 %diff.check, %diff.check3092
  br i1 %conflict.rdx, label %.lr.ph1639.preheader, label %vector.main.loop.iter.check3095

vector.main.loop.iter.check3095:                  ; preds = %vector.memcheck
  br i1 %min.iters.check3096, label %vec.epilog.ph3114, label %vector.body3099

vector.body3099:                                  ; preds = %vector.main.loop.iter.check3095, %vector.body3099
  %index3100 = phi i64 [ %index.next3105, %vector.body3099 ], [ 0, %vector.main.loop.iter.check3095 ] ; 3 uses
  %i.dey = add nuw i64 %index3100, %i.ddu         ; 2 uses
  %i.dez = getelementptr inbounds i8, ptr %.67061645, i64 %i.dey ; 2 uses
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 16
  %wide.load3101 = load <16 x i8>, ptr %i.dez, align 1, !tbaa !67
  %wide.load3102 = load <16 x i8>, ptr %i.dfa, align 1, !tbaa !67
  %i.dfb = getelementptr inbounds i8, ptr %i.ddj, i64 %index3100 ; 2 uses
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dfb, i64 16
  %wide.load3103 = load <16 x i8>, ptr %i.dfb, align 1, !tbaa !67
  %wide.load3104 = load <16 x i8>, ptr %i.dfc, align 1, !tbaa !67
  %i.dfd = add <16 x i8> %wide.load3103, %wide.load3101
  %i.dfe = add <16 x i8> %wide.load3104, %wide.load3102
  %i.dff = getelementptr inbounds i8, ptr %i.ddj, i64 %i.dey ; 2 uses
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dff, i64 16
  store <16 x i8> %i.dfd, ptr %i.dff, align 1, !tbaa !67
  store <16 x i8> %i.dfe, ptr %i.dfg, align 1, !tbaa !67
  %index.next3105 = add nuw i64 %index3100, 32    ; 2 uses
  %i.dfh = icmp eq i64 %index.next3105, %n.vec3098
  br i1 %i.dfh, label %middle.block3106, label %vector.body3099, !llvm.loop !167

middle.block3106:                                 ; preds = %vector.body3099
  br i1 %cmp.n3107, label %.preheader932, label %vec.epilog.iter.check3112

vec.epilog.iter.check3112:                        ; preds = %middle.block3106
  br i1 %min.epilog.iters.check3113, label %.lr.ph1639.preheader, label %vec.epilog.ph3114, !prof !272

vec.epilog.ph3114:                                ; preds = %vector.main.loop.iter.check3095, %vec.epilog.iter.check3112
  %vec.epilog.resume.val3108 = phi i64 [ %n.vec3098, %vec.epilog.iter.check3112 ], [ 0, %vector.main.loop.iter.check3095 ]
  br label %vec.epilog.vector.body3116

vec.epilog.vector.body3116:                       ; preds = %vec.epilog.vector.body3116, %vec.epilog.ph3114
  %index3117 = phi i64 [ %vec.epilog.resume.val3108, %vec.epilog.ph3114 ], [ %index.next3120, %vec.epilog.vector.body3116 ] ; 3 uses
  %i.dfi = add nuw i64 %index3117, %i.ddu         ; 2 uses
  %i.dfj = getelementptr inbounds i8, ptr %.67061645, i64 %i.dfi
  %wide.load3118 = load <8 x i8>, ptr %i.dfj, align 1, !tbaa !67
  %i.dfk = getelementptr inbounds i8, ptr %i.ddj, i64 %index3117
  %wide.load3119 = load <8 x i8>, ptr %i.dfk, align 1, !tbaa !67
  %i.dfl = add <8 x i8> %wide.load3119, %wide.load3118
  %i.dfm = getelementptr inbounds i8, ptr %i.ddj, i64 %i.dfi
  store <8 x i8> %i.dfl, ptr %i.dfm, align 1, !tbaa !67
  %index.next3120 = add nuw i64 %index3117, 8     ; 2 uses
  %i.dfn = icmp eq i64 %index.next3120, %n.vec3115
  br i1 %i.dfn, label %vec.epilog.middle.block3121, label %vec.epilog.vector.body3116, !llvm.loop !168

vec.epilog.middle.block3121:                      ; preds = %vec.epilog.vector.body3116
  br i1 %cmp.n3122, label %.preheader932, label %.lr.ph1639.preheader

.lr.ph1639.preheader:                             ; preds = %vector.memcheck, %iter.check3110, %vec.epilog.iter.check3112, %vec.epilog.middle.block3121
  %indvars.iv2000.ph = phi i64 [ %i.ddu, %iter.check3110 ], [ %i.ddu, %vector.memcheck ], [ %i.def, %vec.epilog.iter.check3112 ], [ %i.deg, %vec.epilog.middle.block3121 ]
  br label %.lr.ph1639

.lr.ph1637:                                       ; preds = %.lr.ph1637.prol.loopexit, %.lr.ph1637
  %indvars.iv1995 = phi i64 [ %indvars.iv.next1996.3, %.lr.ph1637 ], [ %indvars.iv1995.unr, %.lr.ph1637.prol.loopexit ] ; 6 uses
  %i.dfo = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv1995
  %i.dfp = load i8, ptr %i.dfo, align 1, !tbaa !67
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %indvars.iv1995
  store i8 %i.dfp, ptr %i.dfq, align 1, !tbaa !67
  %indvars.iv.next1996 = add nuw nsw i64 %indvars.iv1995, 1 ; 2 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996
  %i.dfs = load i8, ptr %i.dfr, align 1, !tbaa !67
  %i.dft = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %indvars.iv.next1996
  store i8 %i.dfs, ptr %i.dft, align 1, !tbaa !67
  %indvars.iv.next1996.1 = add nuw nsw i64 %indvars.iv1995, 2 ; 2 uses
  %i.dfu = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.1
  %i.dfv = load i8, ptr %i.dfu, align 1, !tbaa !67
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %indvars.iv.next1996.1
  store i8 %i.dfv, ptr %i.dfw, align 1, !tbaa !67
  %indvars.iv.next1996.2 = add nuw nsw i64 %indvars.iv1995, 3 ; 2 uses
  %i.dfx = getelementptr inbounds nuw i8, ptr %.67061645, i64 %indvars.iv.next1996.2
  %i.dfy = load i8, ptr %i.dfx, align 1, !tbaa !67
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %indvars.iv.next1996.2
  store i8 %i.dfy, ptr %i.dfz, align 1, !tbaa !67
  %indvars.iv.next1996.3 = add nuw nsw i64 %indvars.iv1995, 4 ; 2 uses
  %exitcond1999.not.3 = icmp eq i64 %indvars.iv.next1996.3, %wide.trip.count1998
  br i1 %exitcond1999.not.3, label %.preheader933, label %.lr.ph1637, !llvm.loop !169

.preheader932:                                    ; preds = %.lr.ph1639, %middle.block3106, %vec.epilog.middle.block3121, %.preheader933
  br i1 %i.dds, label %._crit_edge1644.split, label %.preheader913.preheader

.preheader913.preheader:                          ; preds = %.preheader932
  %i.dga = udiv i32 %.2724, %i.dcv
  %i.dgb = icmp ult i32 %i.dga, 2
  br label %.preheader913

.lr.ph1639:                                       ; preds = %.lr.ph1639.preheader, %.lr.ph1639
  %indvars.iv2000 = phi i64 [ %indvars.iv.next2001, %.lr.ph1639 ], [ %indvars.iv2000.ph, %.lr.ph1639.preheader ] ; 4 uses
  %i.dgc = getelementptr inbounds i8, ptr %.67061645, i64 %indvars.iv2000
  %i.dgd = load i8, ptr %i.dgc, align 1, !tbaa !67
  %i.dge = sub nuw nsw i64 %indvars.iv2000, %i.ddu
  %i.dgf = getelementptr inbounds i8, ptr %i.ddj, i64 %i.dge
  %i.dgg = load i8, ptr %i.dgf, align 1, !tbaa !67
  %i.dgh = add i8 %i.dgg, %i.dgd
  %i.dgi = getelementptr inbounds i8, ptr %i.ddj, i64 %indvars.iv2000
  store i8 %i.dgh, ptr %i.dgi, align 1, !tbaa !67
  %indvars.iv.next2001 = add nuw nsw i64 %indvars.iv2000, 1 ; 2 uses
  %i.dgj = trunc nsw i64 %indvars.iv.next2001 to i32
  %i.dgk = icmp ugt i32 %i.ddf, %i.dgj
  br i1 %i.dgk, label %.lr.ph1639, label %.preheader932, !llvm.loop !170

.preheader913:                                    ; preds = %.preheader913.preheader, %._crit_edge1642
  %indvars.iv2006 = phi i64 [ %indvars.iv.next2007, %._crit_edge1642 ], [ 0, %.preheader913.preheader ] ; 3 uses
  %i.dgl = mul nuw nsw i64 %indvars.iv2006, %i.ddv
  %invariant.gep2827 = getelementptr i8, ptr %i.ddj, i64 %indvars.iv2006 ; 3 uses
  %invariant.gep2829 = getelementptr inbounds nuw i8, ptr %.67061645, i64 %i.dgl ; 3 uses
  br i1 %i.dgb, label %.epil.preheader3764, label %.preheader913.new

._crit_edge1642.unr-lcssa:                        ; preds = %.preheader913.new
  br i1 %lcmp.mod3767.not, label %._crit_edge1642, label %.epil.preheader3764

.epil.preheader3764:                              ; preds = %._crit_edge1642.unr-lcssa, %.preheader913
  %indvars.iv2003.epil.init = phi i64 [ 0, %.preheader913 ], [ %indvars.iv.next2004.1, %._crit_edge1642.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod3768)
  %i.dgm = xor i64 %indvars.iv2003.epil.init, -1
  %i.dgn = add nsw i64 %i.ddv, %i.dgm
  %i.dgo = mul nsw i64 %i.dgn, %i.ddw
  %gep2828.epil = getelementptr i8, ptr %invariant.gep2827, i64 %i.dgo
  %i.dgp = load i8, ptr %gep2828.epil, align 1, !tbaa !67
  %gep2830.epil = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003.epil.init
  store i8 %i.dgp, ptr %gep2830.epil, align 1, !tbaa !67
  br label %._crit_edge1642

._crit_edge1642:                                  ; preds = %._crit_edge1642.unr-lcssa, %.epil.preheader3764
  %indvars.iv.next2007 = add nuw nsw i64 %indvars.iv2006, 1 ; 2 uses
  %exitcond2010.not = icmp eq i64 %indvars.iv.next2007, %wide.trip.count2009
  br i1 %exitcond2010.not, label %._crit_edge1644.split, label %.preheader913, !llvm.loop !171

.preheader913.new:                                ; preds = %.preheader913, %.preheader913.new
  %indvars.iv2003 = phi i64 [ %indvars.iv.next2004.1, %.preheader913.new ], [ 0, %.preheader913 ] ; 5 uses
  %niter3770 = phi i64 [ %niter3770.next.1, %.preheader913.new ], [ 0, %.preheader913 ]
  %i.dgq = xor i64 %indvars.iv2003, -1
  %i.dgr = add nsw i64 %i.ddv, %i.dgq
  %i.dgs = mul nsw i64 %i.dgr, %i.ddw
  %gep2828 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dgs
  %i.dgt = load i8, ptr %gep2828, align 1, !tbaa !67
  %gep2830 = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  store i8 %i.dgt, ptr %gep2830, align 1, !tbaa !67
  %i.dgu = xor i64 %indvars.iv2003, -2
  %i.dgv = add nsw i64 %i.dgu, %i.ddv
  %i.dgw = mul nsw i64 %i.dgv, %i.ddw
  %gep2828.1 = getelementptr i8, ptr %invariant.gep2827, i64 %i.dgw
  %i.dgx = load i8, ptr %gep2828.1, align 1, !tbaa !67
  %i.dgy = getelementptr inbounds nuw i8, ptr %invariant.gep2829, i64 %indvars.iv2003
  %gep2830.1 = getelementptr inbounds nuw i8, ptr %i.dgy, i64 1
  store i8 %i.dgx, ptr %gep2830.1, align 1, !tbaa !67
  %indvars.iv.next2004.1 = add nuw nsw i64 %indvars.iv2003, 2 ; 2 uses
  %niter3770.next.1 = add i64 %niter3770, 2       ; 2 uses
  %niter3770.ncmp.1.not = icmp eq i64 %niter3770.next.1, %unroll_iter3769
  br i1 %niter3770.ncmp.1.not, label %._crit_edge1642.unr-lcssa, label %.preheader913.new, !llvm.loop !172

._crit_edge1644.split:                            ; preds = %._crit_edge1642, %.preheader932
  %i.dgz = getelementptr inbounds i8, ptr %.67061645, i64 %i.ddt
  %i.dha = add nuw nsw i32 %.161646, 1            ; 2 uses
  %exitcond2011.not = icmp eq i32 %i.dha, %..12
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond2011.not, label %.loopexit943, label %.preheader934, !llvm.loop !173

bb.rf:                                            ; preds = %bb.rd, %bb.rd
  %i.dhb = icmp sgt i32 %..12, 0
  br i1 %i.dhb, label %.preheader937.lr.ph, label %.loopexit943

.preheader937.lr.ph:                              ; preds = %bb.rf
  %i.dhc = icmp sgt i32 %.0699, 0
  %i.dhd = icmp ult i32 %.0699, %i.ddf
  %i.dhe = icmp slt i32 %i.ddh, 1
  %i.dhf = sext i32 %.1726 to i64                 ; 3 uses
  %i.dhg = sext i32 %.0699 to i64                 ; 8 uses
  %i.dhh = zext i32 %i.ddh to i64                 ; 6 uses
  %i.dhi = zext i32 %spec.select832 to i64        ; 3 uses
  %wide.trip.count1981 = zext i32 %.0699 to i64   ; 8 uses
  %i.dhj = sub i64 %i.ddk, %i.dcz                 ; 2 uses
  %i.dhk = xor i32 %.0699, -1
  %i.dhl = add i32 %i.ddf, %i.dhk                 ; 3 uses
  %i.dhm = zext i32 %i.dhl to i64
  %i.dhn = add nuw nsw i64 %i.dhm, 1              ; 5 uses
  %min.iters.check3193 = icmp ult i32 %.0699, 4
  %min.iters.check3195 = icmp ult i32 %.0699, 32
  %i.dho = and i64 %wide.trip.count1981, 28
  %n.vec3197 = and i64 %wide.trip.count1981, 2147483616 ; 4 uses
  %cmp.n3204 = icmp eq i64 %n.vec3197, %wide.trip.count1981
  %min.epilog.iters.check3209 = icmp eq i64 %i.dho, 0
  %n.vec3211 = and i64 %wide.trip.count1981, 2147483644 ; 3 uses
  %cmp.n3217 = icmp eq i64 %n.vec3211, %wide.trip.count1981
  %xtraiter3750 = and i64 %wide.trip.count1981, 3 ; 2 uses
  %lcmp.mod3751.not = icmp eq i64 %xtraiter3750, 0
  %min.iters.check3160 = icmp ult i32 %i.dhl, 7
  %i.dhp = add nsw i64 %i.dhg, -1
  %diff.check3157 = icmp ult i64 %i.dhp, 31
  %min.iters.check3162 = icmp ult i32 %i.dhl, 31
  %i.dhq = and i64 %i.dhn, 24
  %n.vec3164 = and i64 %i.dhn, 8589934560         ; 4 uses
  %i.dhr = add nsw i64 %n.vec3164, %i.dhg
  %cmp.n3173 = icmp eq i64 %i.dhn, %n.vec3164
  %min.epilog.iters.check3179 = icmp eq i64 %i.dhq, 0
  %n.vec3181 = and i64 %i.dhn, 8589934584         ; 3 uses
  %i.dhs = add nsw i64 %n.vec3181, %i.dhg
  %cmp.n3188 = icmp eq i64 %i.dhn, %n.vec3181
  %xtraiter3753 = and i64 %i.dhi, 3               ; 3 uses
  %unroll_iter3757 = and i64 %i.dhi, 4294967292
  %lcmp.mod3755.not = icmp eq i64 %xtraiter3753, 0
  %lcmp.mod3756 = icmp ne i64 %xtraiter3753, 0
  br label %.preheader937

.preheader937:                                    ; preds = %.preheader937.lr.ph, %._crit_edge1633.split
  %indvar3154 = phi i64 [ 0, %.preheader937.lr.ph ], [ %indvar.next3155, %._crit_edge1633.split ] ; 3 uses
  %.171635 = phi i32 [ 0, %.preheader937.lr.ph ], [ %i.dkj, %._crit_edge1633.split ]
  %.77071634 = phi ptr [ %i.dcy, %.preheader937.lr.ph ], [ %i.dki, %._crit_edge1633.split ] ; 12 uses
  %i.dht = mul i64 %indvar3154, %i.dhf
  br i1 %i.dhc, label %iter.check3206, label %.preheader936

iter.check3206:                                   ; preds = %.preheader937
  %i.dhu = mul i64 %indvar3154, %i.dhf
  %i.dhv = sub i64 %i.dhu, %i.dhj
  %diff.check3191 = icmp ugt i64 %i.dhv, -32
  %or.cond3469 = select i1 %min.iters.check3193, i1 true, i1 %diff.check3191
  br i1 %or.cond3469, label %.lr.ph1626.preheader, label %vector.main.loop.iter.check3194

vector.main.loop.iter.check3194:                  ; preds = %iter.check3206
  br i1 %min.iters.check3195, label %vec.epilog.ph3210, label %vector.body3198

vector.body3198:                                  ; preds = %vector.main.loop.iter.check3194, %vector.body3198
  %index3199 = phi i64 [ %index.next3202, %vector.body3198 ], [ 0, %vector.main.loop.iter.check3194 ] ; 3 uses
  %i.dhw = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3199 ; 2 uses
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhw, i64 16
  %wide.load3200 = load <16 x i8>, ptr %i.dhw, align 1, !tbaa !67
  %wide.load3201 = load <16 x i8>, ptr %i.dhx, align 1, !tbaa !67
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %index3199 ; 2 uses
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.dhy, i64 16
  store <16 x i8> %wide.load3200, ptr %i.dhy, align 1, !tbaa !67
  store <16 x i8> %wide.load3201, ptr %i.dhz, align 1, !tbaa !67
  %index.next3202 = add nuw i64 %index3199, 32    ; 2 uses
  %i.dia = icmp eq i64 %index.next3202, %n.vec3197
  br i1 %i.dia, label %middle.block3203, label %vector.body3198, !llvm.loop !174

middle.block3203:                                 ; preds = %vector.body3198
  br i1 %cmp.n3204, label %.preheader936, label %vec.epilog.iter.check3208

vec.epilog.iter.check3208:                        ; preds = %middle.block3203
  br i1 %min.epilog.iters.check3209, label %.lr.ph1626.preheader, label %vec.epilog.ph3210, !prof !273

vec.epilog.ph3210:                                ; preds = %vector.main.loop.iter.check3194, %vec.epilog.iter.check3208
  %vec.epilog.resume.val3205 = phi i64 [ %n.vec3197, %vec.epilog.iter.check3208 ], [ 0, %vector.main.loop.iter.check3194 ]
  br label %vec.epilog.vector.body3212

vec.epilog.vector.body3212:                       ; preds = %vec.epilog.vector.body3212, %vec.epilog.ph3210
  %index3213 = phi i64 [ %vec.epilog.resume.val3205, %vec.epilog.ph3210 ], [ %index.next3215, %vec.epilog.vector.body3212 ] ; 3 uses
  %i.dib = getelementptr inbounds nuw i8, ptr %.77071634, i64 %index3213
  %wide.load3214 = load <4 x i8>, ptr %i.dib, align 1, !tbaa !67
  %i.dic = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %index3213
  store <4 x i8> %wide.load3214, ptr %i.dic, align 1, !tbaa !67
  %index.next3215 = add nuw i64 %index3213, 4     ; 2 uses
  %i.did = icmp eq i64 %index.next3215, %n.vec3211
  br i1 %i.did, label %vec.epilog.middle.block3216, label %vec.epilog.vector.body3212, !llvm.loop !175

vec.epilog.middle.block3216:                      ; preds = %vec.epilog.vector.body3212
  br i1 %cmp.n3217, label %.preheader936, label %.lr.ph1626.preheader

.lr.ph1626.preheader:                             ; preds = %iter.check3206, %vec.epilog.iter.check3208, %vec.epilog.middle.block3216
  %indvars.iv1978.ph = phi i64 [ 0, %iter.check3206 ], [ %n.vec3197, %vec.epilog.iter.check3208 ], [ %n.vec3211, %vec.epilog.middle.block3216 ] ; 3 uses
  br i1 %lcmp.mod3751.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol

.lr.ph1626.prol:                                  ; preds = %.lr.ph1626.preheader, %.lr.ph1626.prol
  %indvars.iv1978.prol = phi i64 [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ], [ %indvars.iv1978.ph, %.lr.ph1626.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1626.prol ], [ 0, %.lr.ph1626.preheader ]
  %i.die = getelementptr inbounds nuw i8, ptr %.77071634, i64 %indvars.iv1978.prol
  %i.dif = load i8, ptr %i.die, align 1, !tbaa !67
  %i.dig = getelementptr inbounds nuw i8, ptr %i.ddj, i64 %indvars.iv1978.prol
  store i8 %i.dif, ptr %i.dig, align 1, !tbaa !67
  %indvars.iv.next1979.prol = add nuw nsw i64 %indvars.iv1978.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3750
  br i1 %prol.iter.cmp.not, label %.lr.ph1626.prol.loopexit, label %.lr.ph1626.prol, !llvm.loop !176

.lr.ph1626.prol.loopexit:                         ; preds = %.lr.ph1626.prol, %.lr.ph1626.preheader
  %indvars.iv1978.unr = phi i64 [ %indvars.iv1978.ph, %.lr.ph1626.preheader ], [ %indvars.iv.next1979.prol, %.lr.ph1626.prol ]
  %i.dih = sub nsw i64 %indvars.iv1978.ph, %wide.trip.count1981
  %i.dii = icmp ugt i64 %i.dih, -4
  br i1 %i.dii, label %.preheader936, label %.lr.ph1626

.preheader936:                                    ; preds = %.lr.ph1626.prol.loopexit, %.lr.ph1626, %middle.block3203, %vec.epilog.middle.block3216, %.preheader937
  br i1 %i.dhd, label %iter.check3176, label %.preheader935

iter.check3176:                                   ; preds = %.preheader936
  br i1 %min.iters.check3160, label %.lr.ph1628.preheader, label %vector.memcheck3153

vector.memcheck3153:                              ; preds = %iter.check3176
  %i.dij = sub i64 %i.dht, %i.dhj
  %diff.check3156 = icmp ugt i64 %i.dij, -32
  %conflict.rdx3158 = or i1 %diff.check3156, %diff.check3157
  br i1 %conflict.rdx3158, label %.lr.ph1628.preheader, label %vector.main.loop.iter.check3161

vector.main.loop.iter.check3161:                  ; preds = %vector.memcheck3153
  br i1 %min.iters.check3162, label %vec.epilog.ph3180, label %vector.body3165

vector.body3165:                                  ; preds = %vector.main.loop.iter.check3161, %vector.body3165
  %index3166 = phi i64 [ %index.next3171, %vector.body3165 ], [ 0, %vector.main.loop.iter.check3161 ] ; 3 uses
  %i.dik = add nuw i64 %index3166, %i.dhg         ; 2 uses
  %i.dil = getelementptr inbounds i8, ptr %.77071634, i64 %i.dik ; 2 uses
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dil, i64 16
  %wide.load3167 = load <16 x i8>, ptr %i.dil, align 1, !tbaa !67
  %wide.load3168 = load <16 x i8>, ptr %i.dim, align 1, !tbaa !67
  %i.din = getelementptr inbounds i8, ptr %i.ddj, i64 %index3166 ; 2 uses
  %i.dio = getelementptr inbounds nuw i8, ptr %i.din, i64 16
  %wide.load3169 = load <16 x i8>, ptr %i.din, align 1, !tbaa !67
  %wide.load3170 = load <16 x i8>, ptr %i.dio, align 1, !tbaa !67
  %i.dip = add <16 x i8> %wide.load3169, %wide.load3167
  %i.diq = add <16 x i8> %wide.load3170, %wide.load3168
  %i.dir = getelementptr inbounds i8, ptr %i.ddj, i64 %i.dik ; 2 uses
  %i.dis = getelementptr inbounds nuw i8, ptr %i.dir, i64 16
  store <16 x i8> %i.dip, ptr %i.dir, align 1, !tbaa !67
  store <16 x i8> %i.diq, ptr %i.dis, align 1, !tbaa !67
  %index.next3171 = add nuw i64 %index3166, 32    ; 2 uses
  %i.dit = icmp eq i64 %index.next3171, %n.vec3164
  br i1 %i.dit, label %middle.block3172, label %vector.body3165, !llvm.loop !177

middle.block3172:                                 ; preds = %vector.body3165
  br i1 %cmp.n3173, label %.preheader935, label %vec.epilog.iter.check3178

vec.epilog.iter.check3178:                        ; preds = %middle.block3172
  br i1 %min.epilog.iters.check3179, label %.lr.ph1628.preheader, label %vec.epilog.ph3180, !prof !272

vec.epilog.ph3180:                                ; preds = %vector.main.loop.iter.check3161, %vec.epilog.iter.check3178
  %vec.epilog.resume.val3174 = phi i64 [ %n.vec3164, %vec.epilog.iter.check3178 ], [ 0, %vector.main.loop.iter.check3161 ]
  br label %vec.epilog.vector.body3182

vec.epilog.vector.body3182:                       ; preds = %vec.epilog.vector.body3182, %vec.epilog.ph3180
  %index3183 = phi i64 [ %vec.epilog.resume.val3174, %vec.epilog.ph3180 ], [ %index.next3186, %vec.epilog.vector.body3182 ] ; 3 uses
  %i.diu = add nuw i64 %index3183, %i.dhg         ; 2 uses
  %i.div = getelementptr inbounds i8, ptr %.77071634, i64 %i.diu
  %wide.load3184 = load <8 x i8>, ptr %i.div, align 1, !tbaa !67
  %i.diw = getelementptr inbounds i8, ptr %i.ddj, i64 %index3183
  %wide.load3185 = load <8 x i8>, ptr %i.diw, align 1, !tbaa !67
  %i.dix = add <8 x i8> %wide.load3185, %wide.load3184
  %i.diy = getelementptr inbounds i8, ptr %i.ddj, i64 %i.diu
  store <8 x i8> %i.dix, ptr %i.diy, align 1, !tbaa !67
  %index.next3186 = add nuw i64 %index3183, 8     ; 2 uses
  %i.diz = icmp eq i64 %index.next3186, %n.vec3181
  br i1 %i.diz, label %vec.epilog.middle.block3187, label %vec.epilog.vector.body3182, !llvm.loop !178

vec.epilog.middle.block3187:                      ; preds = %vec.epilog.vector.body3182
end_hunk_1
