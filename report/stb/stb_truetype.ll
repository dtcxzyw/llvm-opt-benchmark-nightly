Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__run_charstring:bb.a
  %i.ez = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not21.i.i.i288 = icmp eq i32 %i.ez, 0
  br i1 %.not21.i.i.i288, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i32 %i.eq, ptr %i.ae, align 8, !tbaa !76
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fa = load i32, ptr %i.af, align 8, !tbaa !77
  %i.fb = icmp sgt i32 %i.fa, %i.eu
  br i1 %i.fb, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fc = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not22.i.i.i289 = icmp eq i32 %i.fc, 0
  br i1 %.not22.i.i.i289, label %bb.bd, label %stbtt__track_vertex.exit.i.i290

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 %i.eu, ptr %i.af, align 8, !tbaa !77
  br label %stbtt__track_vertex.exit.i.i290

stbtt__track_vertex.exit.i.i290:                  ; preds = %bb.bd, %bb.bc
  store i32 1, ptr %i.ac, align 4, !tbaa !74
  %.pre.i292 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  br label %stbtt__csctx_rline_to.exit293

bb.be:                                            ; preds = %bb.ar
  %i.fd = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.fe = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60 ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [14 x i8], ptr %i.fd, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i8 2, ptr %i.fh, align 2, !tbaa !65
  %i.fi = trunc <2 x i32> %i.en to <2 x i16>
  store <2 x i16> %i.fi, ptr %i.fg, align 2, !tbaa !70
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i64 0, ptr %i.fj, align 2
  br label %stbtt__csctx_rline_to.exit293

stbtt__csctx_rline_to.exit293:                    ; preds = %stbtt__track_vertex.exit.i.i290, %bb.be
  %i.fk = phi i32 [ %.pre.i292, %stbtt__track_vertex.exit.i.i290 ], [ %i.fe, %bb.be ]
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  %i.fm = add nsw i32 %.2251, 1
  br label %bb.ab

bb.bf:                                            ; preds = %stbtt__buf_get8.exit
  %i.fn = icmp slt i32 %.0253360, 4
  br i1 %i.fn, label %.critedge, label %bb.bl

bb.bg:                                            ; preds = %stbtt__buf_get8.exit
  %i.fo = icmp slt i32 %.0253360, 4
  br i1 %i.fo, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bo
  %.3252 = phi i32 [ %i.ie, %bb.bo ], [ 0, %bb.bg ] ; 4 uses
  %i.fp = add nsw i32 %.3252, 3                   ; 2 uses
  %.not271 = icmp slt i32 %i.fp, %.0253360
  br i1 %.not271, label %bb.bi, label %.thread

bb.bi:                                            ; preds = %bb.bh
  %i.fq = sext i32 %.3252 to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fq ; 3 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !80
  %i.ft = getelementptr i8, ptr %i.fr, i64 4
  %i.fu = load <2 x float>, ptr %i.ft, align 4, !tbaa !80
  %i.fv = sext i32 %i.fp to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !80
  %i.fy = sub nsw i32 %.0253360, %.3252
  %i.fz = icmp eq i32 %i.fy, 5
  br i1 %i.fz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ga = getelementptr i8, ptr %i.fr, i64 16
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !80
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.gc = phi float [ %i.gb, %bb.bj ], [ 0.000000e+00, %bb.bi ]
  %i.gd = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %i.ge = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.fs, i64 1
  %i.gf = fadd <2 x float> %i.ge, %i.gd           ; 3 uses
  %i.gg = fadd <2 x float> %i.fu, %i.gf           ; 3 uses
  %i.gh = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gi = insertelement <2 x float> %i.gh, float %i.gc, i64 1
  %i.gj = fadd <2 x float> %i.gi, %i.gg           ; 3 uses
  store <2 x float> %i.gj, ptr %i.x, align 8, !tbaa !80
  %i.gk = extractelement <2 x float> %i.gj, i64 0
  %i.gl = fptosi float %i.gk to i32
  %i.gm = extractelement <2 x float> %i.gj, i64 1
  %i.gn = fptosi float %i.gm to i32
  %i.go = extractelement <2 x float> %i.gf, i64 0
  %i.gp = fptosi float %i.go to i32
  %i.gq = extractelement <2 x float> %i.gf, i64 1
  %i.gr = fptosi float %i.gq to i32
  %i.gs = extractelement <2 x float> %i.gg, i64 0
  %i.gt = fptosi float %i.gs to i32
  %i.gu = extractelement <2 x float> %i.gg, i64 1
  %i.gv = fptosi float %i.gu to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.gl, i32 noundef %i.gn, i32 noundef %i.gp, i32 noundef %i.gr, i32 noundef %i.gt, i32 noundef %i.gv)
  %i.gw = add nsw i32 %.3252, 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bf, %bb.bk
  %.4 = phi i32 [ 0, %bb.bf ], [ %i.gw, %bb.bk ]  ; 4 uses
  %i.gx = add nsw i32 %.4, 3                      ; 2 uses
  %.not270 = icmp slt i32 %i.gx, %.0253360
  br i1 %.not270, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.gy = sext i32 %.4 to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gy ; 3 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !80
  %i.hb = getelementptr i8, ptr %i.gz, i64 4
  %i.hc = load <2 x float>, ptr %i.hb, align 4, !tbaa !80
  %i.hd = sub nsw i32 %.0253360, %.4
  %i.he = icmp eq i32 %i.hd, 5
  br i1 %i.he, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.hf = getelementptr i8, ptr %i.gz, i64 16
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !80
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.hh = phi float [ %i.hg, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.hi = sext i32 %i.gx to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hi
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !80
  %i.hl = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %i.hm = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  %i.hn = fadd <2 x float> %i.hm, %i.hl           ; 3 uses
  %i.ho = fadd <2 x float> %i.hc, %i.hn           ; 3 uses
  %i.hp = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.hk, i64 1
  %i.hr = fadd <2 x float> %i.hq, %i.ho           ; 3 uses
  store <2 x float> %i.hr, ptr %i.x, align 8, !tbaa !80
  %i.hs = extractelement <2 x float> %i.hr, i64 0
  %i.ht = fptosi float %i.hs to i32
  %i.hu = extractelement <2 x float> %i.hr, i64 1
  %i.hv = fptosi float %i.hu to i32
  %i.hw = extractelement <2 x float> %i.hn, i64 0
  %i.hx = fptosi float %i.hw to i32
  %i.hy = extractelement <2 x float> %i.hn, i64 1
  %i.hz = fptosi float %i.hy to i32
  %i.ia = extractelement <2 x float> %i.ho, i64 0
  %i.ib = fptosi float %i.ia to i32
  %i.ic = extractelement <2 x float> %i.ho, i64 1
  %i.id = fptosi float %i.ic to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.ht, i32 noundef %i.hv, i32 noundef %i.hx, i32 noundef %i.hz, i32 noundef %i.ib, i32 noundef %i.id)
  %i.ie = add nsw i32 %.4, 4
  br label %bb.bh

bb.bp:                                            ; preds = %stbtt__buf_get8.exit
  %i.if = icmp slt i32 %.0253360, 6
  br i1 %i.if, label %.critedge, label %.preheader343

.preheader343:                                    ; preds = %bb.bp, %.preheader343
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %.preheader343 ], [ 0, %bb.bp ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv420 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ij = load <2 x float>, ptr %i.ig, align 8, !tbaa !80
  %i.ik = load <2 x float>, ptr %i.ih, align 8, !tbaa !80
  %i.il = load <2 x float>, ptr %i.ii, align 8, !tbaa !80
  %i.im = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %i.in = fadd <2 x float> %i.ij, %i.im           ; 3 uses
  %i.io = fadd <2 x float> %i.ik, %i.in           ; 3 uses
  %i.ip = fadd <2 x float> %i.il, %i.io           ; 3 uses
  store <2 x float> %i.ip, ptr %i.x, align 8, !tbaa !80
  %i.iq = extractelement <2 x float> %i.ip, i64 0
  %i.ir = fptosi float %i.iq to i32
  %i.is = extractelement <2 x float> %i.ip, i64 1
  %i.it = fptosi float %i.is to i32
  %i.iu = extractelement <2 x float> %i.in, i64 0
  %i.iv = fptosi float %i.iu to i32
  %i.iw = extractelement <2 x float> %i.in, i64 1
  %i.ix = fptosi float %i.iw to i32
  %i.iy = extractelement <2 x float> %i.io, i64 0
  %i.iz = fptosi float %i.iy to i32
  %i.ja = extractelement <2 x float> %i.io, i64 1
  %i.jb = fptosi float %i.ja to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.ir, i32 noundef %i.it, i32 noundef %i.iv, i32 noundef %i.ix, i32 noundef %i.iz, i32 noundef %i.jb)
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 6
  %i.jc = trunc i64 %indvars.iv420 to i32
  %i.jd = add i32 %i.jc, 11
  %i.je = icmp slt i32 %i.jd, %.0253360
  br i1 %i.je, label %.preheader343, label %.thread, !llvm.loop !167

bb.bq:                                            ; preds = %stbtt__buf_get8.exit
  %i.jf = icmp slt i32 %.0253360, 8
  br i1 %i.jf, label %.critedge, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %bb.bq
  %i.jg = add nsw i32 %.0253360, -2
  br label %.lr.ph354

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %.lr.ph354
  %indvars.iv417 = phi i64 [ 0, %.lr.ph354.preheader ], [ %indvars.iv.next418, %.lr.ph354 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv417 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jk = load <2 x float>, ptr %i.jh, align 8, !tbaa !80
  %i.jl = load <2 x float>, ptr %i.ji, align 8, !tbaa !80
  %i.jm = load <2 x float>, ptr %i.jj, align 8, !tbaa !80
  %i.jn = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %i.jo = fadd <2 x float> %i.jk, %i.jn           ; 3 uses
  %i.jp = fadd <2 x float> %i.jl, %i.jo           ; 3 uses
  %i.jq = fadd <2 x float> %i.jm, %i.jp           ; 3 uses
  store <2 x float> %i.jq, ptr %i.x, align 8, !tbaa !80
  %i.jr = extractelement <2 x float> %i.jq, i64 0
  %i.js = fptosi float %i.jr to i32
  %i.jt = extractelement <2 x float> %i.jq, i64 1
  %i.ju = fptosi float %i.jt to i32
  %i.jv = extractelement <2 x float> %i.jo, i64 0
  %i.jw = fptosi float %i.jv to i32
  %i.jx = extractelement <2 x float> %i.jo, i64 1
  %i.jy = fptosi float %i.jx to i32
  %i.jz = extractelement <2 x float> %i.jp, i64 0
  %i.ka = fptosi float %i.jz to i32
  %i.kb = extractelement <2 x float> %i.jp, i64 1
  %i.kc = fptosi float %i.kb to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.js, i32 noundef %i.ju, i32 noundef %i.jw, i32 noundef %i.jy, i32 noundef %i.ka, i32 noundef %i.kc)
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 6 ; 3 uses
  %i.kd = trunc i64 %indvars.iv417 to i32
  %i.ke = add i32 %i.kd, 11
  %i.kf = icmp slt i32 %i.ke, %i.jg
  br i1 %i.kf, label %.lr.ph354, label %._crit_edge355, !llvm.loop !168

._crit_edge355:                                   ; preds = %.lr.ph354
  %i.kg = trunc nuw i64 %indvars.iv.next418 to i32
  %i.kh = or disjoint i32 %i.kg, 1                ; 2 uses
  %.not269 = icmp slt i32 %i.kh, %.0253360
  br i1 %.not269, label %bb.br, label %.critedge

bb.br:                                            ; preds = %._crit_edge355
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next418
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !80
  %i.kk = zext nneg i32 %i.kh to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kk
  %i.km = load float, ptr %i.kl, align 4, !tbaa !80
  %i.kn = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %i.ko = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.km, i64 1
  %i.kq = fadd <2 x float> %i.kp, %i.kn           ; 2 uses
  store <2 x float> %i.kq, ptr %i.x, align 8, !tbaa !80
  %i.kr = fptosi <2 x float> %i.kq to <2 x i32>   ; 3 uses
  %i.ks = load i32, ptr %2, align 8, !tbaa !78
  %.not.i.i294 = icmp eq i32 %i.ks, 0
  br i1 %.not.i.i294, label %bb.ce, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kt = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.ku = extractelement <2 x i32> %i.kr, i64 0   ; 4 uses
  %i.kv = icmp slt i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kw = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not.i.i.i295 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i.i295, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  store i32 %i.ku, ptr %i.ab, align 4, !tbaa !73
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.kx = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.ky = extractelement <2 x i32> %i.kr, i64 1   ; 4 uses
  %i.kz = icmp slt i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.la = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not20.i.i.i296 = icmp eq i32 %i.la, 0
  br i1 %.not20.i.i.i296, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store i32 %i.ky, ptr %i.ad, align 4, !tbaa !75
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.lb = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.lc = icmp sgt i32 %i.lb, %i.ku
  br i1 %i.lc, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ld = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not21.i.i.i297 = icmp eq i32 %i.ld, 0
  br i1 %.not21.i.i.i297, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz, %bb.by
  store i32 %i.ku, ptr %i.ae, align 8, !tbaa !76
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.le = load i32, ptr %i.af, align 8, !tbaa !77
  %i.lf = icmp sgt i32 %i.le, %i.ky
  br i1 %i.lf, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lg = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not22.i.i.i298 = icmp eq i32 %i.lg, 0
  br i1 %.not22.i.i.i298, label %bb.cd, label %stbtt__track_vertex.exit.i.i299

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  store i32 %i.ky, ptr %i.af, align 8, !tbaa !77
  br label %stbtt__track_vertex.exit.i.i299

stbtt__track_vertex.exit.i.i299:                  ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.ac, align 4, !tbaa !74
  %.pre.i301 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  br label %stbtt__csctx_rline_to.exit302

bb.ce:                                            ; preds = %bb.br
  %i.lh = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.li = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60 ; 2 uses
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [14 x i8], ptr %i.lh, i64 %i.lj ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i8 2, ptr %i.ll, align 2, !tbaa !65
  %i.lm = trunc <2 x i32> %i.kr to <2 x i16>
  store <2 x i16> %i.lm, ptr %i.lk, align 2, !tbaa !70
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  store i64 0, ptr %i.ln, align 2
  br label %stbtt__csctx_rline_to.exit302

stbtt__csctx_rline_to.exit302:                    ; preds = %stbtt__track_vertex.exit.i.i299, %bb.ce
  %i.lo = phi i32 [ %.pre.i301, %stbtt__track_vertex.exit.i.i299 ], [ %i.li, %bb.ce ]
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  br label %.thread

bb.cf:                                            ; preds = %stbtt__buf_get8.exit
  %i.lq = icmp slt i32 %.0253360, 8
  br i1 %i.lq, label %.critedge, label %.lr.ph351.preheader

.lr.ph351.preheader:                              ; preds = %bb.cf
  %i.lr = add nsw i32 %.0253360, -6
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %.pre440 = load i32, ptr %2, align 8, !tbaa !78
  br label %.lr.ph351

.lr.ph351:                                        ; preds = %.lr.ph351.preheader, %stbtt__csctx_rline_to.exit311
  %i.lu = phi i32 [ %.pre440, %.lr.ph351.preheader ], [ %i.mw, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %indvars.iv414 = phi i64 [ 0, %.lr.ph351.preheader ], [ %indvars.iv.next415, %stbtt__csctx_rline_to.exit311 ] ; 2 uses
  %i.lv = phi <2 x float> [ %i.lt, %.lr.ph351.preheader ], [ %i.my, %stbtt__csctx_rline_to.exit311 ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv414
  %i.lx = load <2 x float>, ptr %i.lw, align 8, !tbaa !80
  %i.ly = fadd <2 x float> %i.lx, %i.lv           ; 3 uses
  store <2 x float> %i.ly, ptr %i.x, align 8, !tbaa !80
  %i.lz = fptosi <2 x float> %i.ly to <2 x i32>   ; 3 uses
  %.not.i.i303 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i303, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph351
  %i.ma = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.mb = extractelement <2 x i32> %i.lz, i64 0   ; 4 uses
  %i.mc = icmp slt i32 %i.ma, %i.mb
  br i1 %i.mc, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.md = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not.i.i.i304 = icmp eq i32 %i.md, 0
  br i1 %.not.i.i.i304, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store i32 %i.mb, ptr %i.ab, align 4, !tbaa !73
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.me = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.mf = extractelement <2 x i32> %i.lz, i64 1   ; 4 uses
  %i.mg = icmp slt i32 %i.me, %i.mf
  br i1 %i.mg, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mh = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not20.i.i.i305 = icmp eq i32 %i.mh, 0
  br i1 %.not20.i.i.i305, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  store i32 %i.mf, ptr %i.ad, align 4, !tbaa !75
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.mi = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.mj = icmp sgt i32 %i.mi, %i.mb
  br i1 %i.mj, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mk = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not21.i.i.i306 = icmp eq i32 %i.mk, 0
  br i1 %.not21.i.i.i306, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i32 %i.mb, ptr %i.ae, align 8, !tbaa !76
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ml = load i32, ptr %i.af, align 8, !tbaa !77
  %i.mm = icmp sgt i32 %i.ml, %i.mf
  br i1 %i.mm, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mn = load i32, ptr %i.ac, align 4, !tbaa !74
  %.not22.i.i.i307 = icmp eq i32 %i.mn, 0
  br i1 %.not22.i.i.i307, label %bb.cr, label %stbtt__track_vertex.exit.i.i308

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  store i32 %i.mf, ptr %i.af, align 8, !tbaa !77
  br label %stbtt__track_vertex.exit.i.i308

stbtt__track_vertex.exit.i.i308:                  ; preds = %bb.cr, %bb.cq
  store i32 1, ptr %i.ac, align 4, !tbaa !74
  %.pre.i310 = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  br label %stbtt__csctx_rline_to.exit311

bb.cs:                                            ; preds = %.lr.ph351
  %i.mo = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.mp = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !60 ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [14 x i8], ptr %i.mo, i64 %i.mq ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 12
  store i8 2, ptr %i.ms, align 2, !tbaa !65
  %i.mt = trunc <2 x i32> %i.lz to <2 x i16>
  store <2 x i16> %i.mt, ptr %i.mr, align 2, !tbaa !70
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i64 0, ptr %i.mu, align 2
  %i.mv = load <2 x float>, ptr %i.x, align 8, !tbaa !80
  %.pre439 = load i32, ptr %2, align 8, !tbaa !78
  br label %stbtt__csctx_rline_to.exit311

stbtt__csctx_rline_to.exit311:                    ; preds = %stbtt__track_vertex.exit.i.i308, %bb.cs
  %i.mw = phi i32 [ %i.lu, %stbtt__track_vertex.exit.i.i308 ], [ %.pre439, %bb.cs ]
  %i.mx = phi i32 [ %.pre.i310, %stbtt__track_vertex.exit.i.i308 ], [ %i.mp, %bb.cs ]
  %i.my = phi <2 x float> [ %i.ly, %stbtt__track_vertex.exit.i.i308 ], [ %i.mv, %bb.cs ]
  %i.mz = add nsw i32 %i.mx, 1
  store i32 %i.mz, ptr %.phi.trans.insert.i309, align 8, !tbaa !60
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 2 ; 4 uses
  %i.na = or disjoint i64 %indvars.iv.next415, 1
  %i.nb = icmp samesign ult i64 %i.na, %i.ls
  br i1 %i.nb, label %.lr.ph351, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %stbtt__csctx_rline_to.exit311
  %i.nc = trunc nuw nsw i64 %indvars.iv.next415 to i32
  %i.nd = add nuw nsw i32 %i.nc, 5                ; 2 uses
  %.not268 = icmp slt i32 %i.nd, %.0253360
  br i1 %.not268, label %bb.ct, label %.critedge

bb.ct:                                            ; preds = %._crit_edge
  %i.ne = add nuw i32 %.0253360, 2147483640
  %i.nf = and i32 %i.ne, 2147483646
  %narrow = add nuw i32 %i.nf, 3
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next415 ; 4 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !80
  %i.ni = zext nneg i32 %narrow to i64
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ni
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !80
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !80
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.no = load float, ptr %i.nn, align 4, !tbaa !80
  %i.np = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nq = load float, ptr %i.np, align 4, !tbaa !80
  %i.nr = zext nneg i32 %i.nd to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nr
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !80
  %i.nu = load float, ptr %i.x, align 8, !tbaa !79
  %i.nv = fadd float %i.nh, %i.nu                 ; 2 uses
  %i.nw = load float, ptr %i.y, align 4, !tbaa !81
  %i.nx = fadd float %i.nk, %i.nw                 ; 2 uses
  %i.ny = fadd float %i.nm, %i.nv                 ; 2 uses
  %i.nz = fadd float %i.no, %i.nx                 ; 2 uses
  %i.oa = fadd float %i.nq, %i.ny                 ; 2 uses
  store float %i.oa, ptr %i.x, align 8, !tbaa !79
  %i.ob = fadd float %i.nt, %i.nz                 ; 2 uses
  store float %i.ob, ptr %i.y, align 4, !tbaa !81
  %i.oc = fptosi float %i.oa to i32
  %i.od = fptosi float %i.ob to i32
  %i.oe = fptosi float %i.nv to i32
  %i.of = fptosi float %i.nx to i32
  %i.og = fptosi float %i.ny to i32
  %i.oh = fptosi float %i.nz to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %i.oc, i32 noundef %i.od, i32 noundef %i.oe, i32 noundef %i.of, i32 noundef %i.og, i32 noundef %i.oh)
  br label %.thread

bb.cu:                                            ; preds = %stbtt__buf_get8.exit, %stbtt__buf_get8.exit
  %i.oi = icmp slt i32 %.0253360, 4
  br i1 %i.oi, label %.critedge, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.8 = and i32 %.0253360, 1
  %i.oj = add nuw nsw i32 %.8, 3
  %i.ok = icmp samesign ult i32 %i.oj, %.0253360
  br i1 %i.ok, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.cv
  %.not267 = trunc i32 %.0253360 to i1            ; 6 uses
  %i.ol = load float, ptr %i.a, align 16
  %.0242 = select i1 %.not267, float %i.ol, float 0.000000e+00 ; 2 uses
  %i.om = icmp eq i8 %i.an, 27
  %.not267.mask470 = and i32 %.0253360, 1
  %i.on = zext nneg i32 %.not267.mask470 to i64   ; 6 uses
  %i.oo = zext nneg i32 %.0253360 to i64          ; 3 uses
  %.val471 = load float, ptr %i.o, align 4        ; 3 uses
  %.val472 = load float, ptr %i.a, align 16
  %i.op = select i1 %.not267, float %.val471, float %.val472 ; 2 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.on
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 12
  %i.os = load float, ptr %i.or, align 4, !tbaa !80 ; 2 uses
  %i.ot = load float, ptr %i.x, align 8, !tbaa !79 ; 2 uses
  %i.ou = load float, ptr %i.y, align 4, !tbaa !81 ; 2 uses
  %i.ov = add nuw nsw i64 %i.on, 7
  %i.ow = icmp samesign ult i64 %i.ov, %i.oo      ; 2 uses
  br i1 %i.om, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.sroa.gep.sroa.gep427.val = load float, ptr %.sroa.gep.sroa.gep427, align 8 ; 2 uses
  %i.ox = select i1 %.not267, float %.sroa.gep.sroa.gep427.val, float %.val471
  %.sroa.gep.sroa.gep.val = load float, ptr %.sroa.gep.sroa.gep, align 4
  %i.oy = select i1 %.not267, float %.sroa.gep.sroa.gep.val, float %.sroa.gep.sroa.gep427.val
  %i.oz = fadd float %.0242, %i.ot                ; 2 uses
  %i.pa = fadd float %i.op, %i.ou                 ; 2 uses
  %i.pb = fadd float %i.ox, %i.oz                 ; 2 uses
  %i.pc = fadd float %i.oy, %i.pa                 ; 2 uses
  %i.pd = fadd float %i.pb, 0.000000e+00          ; 2 uses
  store float %i.pd, ptr %i.x, align 8, !tbaa !79
  %i.pe = fadd float %i.os, %i.pc                 ; 2 uses
  store float %i.pe, ptr %i.y, align 4, !tbaa !81
  %i.pf = fptosi float %i.pd to i32
  %i.pg = fptosi float %i.pe to i32
  %i.ph = fptosi float %i.oz to i32
  %i.pi = fptosi float %i.pa to i32
  %i.pj = fptosi float %i.pb to i32
  %i.pk = fptosi float %i.pc to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.pf, i32 noundef %i.pg, i32 noundef %i.ph, i32 noundef %i.pi, i32 noundef %i.pj, i32 noundef %i.pk)
  br i1 %i.ow, label %.lr.ph.split.peel.next, label %.thread

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader
  %indvars.iv.next.peel = add nuw nsw i64 %i.on, 7
  %indvars.iv.next401.peel = or disjoint i64 %i.on, 4
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.sroa.gep430.sroa.gep433.val = load float, ptr %.sroa.gep430.sroa.gep433, align 8 ; 2 uses
  %i.pl = select i1 %.not267, float %.sroa.gep430.sroa.gep433.val, float %.val471
  %.sroa.gep430.sroa.gep.val = load float, ptr %.sroa.gep430.sroa.gep, align 4
  %i.pm = select i1 %.not267, float %.sroa.gep430.sroa.gep.val, float %.sroa.gep430.sroa.gep433.val
  %i.pn = fadd float %i.op, %i.ot                 ; 2 uses
  %i.po = fadd float %.0242, %i.ou                ; 2 uses
  %i.pp = fadd float %i.pl, %i.pn                 ; 2 uses
  %i.pq = fadd float %i.pm, %i.po                 ; 2 uses
  %i.pr = fadd float %i.os, %i.pp                 ; 2 uses
  store float %i.pr, ptr %i.x, align 8, !tbaa !79
  %i.ps = fadd float %i.pq, 0.000000e+00          ; 2 uses
  store float %i.ps, ptr %i.y, align 4, !tbaa !81
  %i.pt = fptosi float %i.pr to i32
  %i.pu = fptosi float %i.ps to i32
  %i.pv = fptosi float %i.pn to i32
  %i.pw = fptosi float %i.po to i32
  %i.px = fptosi float %i.pp to i32
  %i.py = fptosi float %i.pq to i32
  tail call void @stbtt__csctx_v(ptr noundef %2, i8 noundef zeroext 4, i32 noundef %i.pt, i32 noundef %i.pu, i32 noundef %i.pv, i32 noundef %i.pw, i32 noundef %i.px, i32 noundef %i.py)
  br i1 %i.ow, label %.lr.ph.split.us.peel.next, label %.thread

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader
  %indvars.iv.next407.peel = add nuw nsw i64 %i.on, 7
  %indvars.iv.next409.peel = or disjoint i64 %i.on, 4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.peel.next, %.lr.ph.split.us
  %indvars.iv408 = phi i64 [ %indvars.iv.next409.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next409, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.peel, %.lr.ph.split.us.peel.next ], [ %indvars.iv.next407, %.lr.ph.split.us ] ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv408 ; 3 uses
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !80
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !80
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !80
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv406
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !80
  %i.qh = load float, ptr %i.x, align 8, !tbaa !79
  %i.qi = fadd float %i.qa, %i.qh                 ; 2 uses
  %i.qj = load float, ptr %i.y, align 4, !tbaa !81
  %i.qk = fadd float %i.qj, 0.000000e+00          ; 2 uses
  %i.ql = fadd float %i.qc, %i.qi                 ; 2 uses
  %i.qm = fadd float %i.qe, %i.qk                 ; 2 uses
  %i.qn = fadd float %i.qg, %i.ql                 ; 2 uses
  store float %i.qn, ptr %i.x, align 8, !tbaa !79
  store float %i.qm, ptr %i.y, align 4, !tbaa !81
  %i.qo = fptosi float %i.qn to i32
  %i.qp = fptosi float %i.qm to i32               ; 2 uses
  %i.qq = fptosi float %i.qi to i32
  %i.qr = fptosi float %i.qk to i32
  %i.qs = fptosi float %i.ql to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %i.qo, i32 noundef %i.qp, i32 noundef %i.qq, i32 noundef %i.qr, i32 noundef %i.qs, i32 noundef %i.qp)
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 4
  %i.qt = add nuw nsw i64 %indvars.iv408, 7
  %i.qu = icmp samesign ult i64 %i.qt, %i.oo
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4
  br i1 %i.qu, label %.lr.ph.split.us, label %.thread, !llvm.loop !170

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv400 = phi i64 [ %indvars.iv.next401.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next401, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv400 ; 3 uses
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !80
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !80
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !80
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !80
  %i.rd = load float, ptr %i.x, align 8, !tbaa !79
  %i.re = fadd float %i.rd, 0.000000e+00          ; 2 uses
  %i.rf = load float, ptr %i.y, align 4, !tbaa !81
  %i.rg = fadd float %i.qw, %i.rf                 ; 2 uses
  %i.rh = fadd float %i.qy, %i.re                 ; 2 uses
  %i.ri = fadd float %i.ra, %i.rg                 ; 2 uses
  store float %i.rh, ptr %i.x, align 8, !tbaa !79
  %i.rj = fadd float %i.rc, %i.ri                 ; 2 uses
  store float %i.rj, ptr %i.y, align 4, !tbaa !81
  %i.rk = fptosi float %i.rh to i32               ; 2 uses
  %i.rl = fptosi float %i.rj to i32
  %i.rm = fptosi float %i.re to i32
  %i.rn = fptosi float %i.rg to i32
  %i.ro = fptosi float %i.ri to i32
  tail call void @stbtt__csctx_v(ptr noundef nonnull %2, i8 noundef zeroext 4, i32 noundef %i.rk, i32 noundef %i.rl, i32 noundef %i.rm, i32 noundef %i.rn, i32 noundef %i.rk, i32 noundef %i.ro)
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 4
  %i.rp = add nuw nsw i64 %indvars.iv400, 7
  %i.rq = icmp samesign ult i64 %i.rp, %i.oo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.rq, label %.lr.ph.split, label %.thread, !llvm.loop !171

bb.cw:                                            ; preds = %stbtt__buf_get8.exit
  %.not = icmp eq i32 %.0246363, 0
  br i1 %.not, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.rr = load i32, ptr %i.z, align 4, !tbaa !174
  %.not266 = icmp eq i32 %i.rr, 0
  br i1 %.not266, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rs = tail call { ptr, i64 } @stbtt__cid_get_glyph_subrs(ptr noundef nonnull %0, i32 noundef %1) ; 2 uses
  %i.rt = extractvalue { ptr, i64 } %i.rs, 0
  %i.ru = extractvalue { ptr, i64 } %i.rs, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.cw, %stbtt__buf_get8.exit
  %.1247 = phi i32 [ 1, %bb.cw ], [ %.0246363, %stbtt__buf_get8.exit ], [ 1, %bb.cy ], [ 1, %bb.cx ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.0364, %bb.cw ], [ %.sroa.5.0364, %stbtt__buf_get8.exit ], [ %i.ru, %bb.cy ], [ %.sroa.5.0364, %bb.cx ] ; 2 uses
  %.sroa.073.2 = phi ptr [ %.sroa.073.0365, %bb.cw ], [ %.sroa.073.0365, %stbtt__buf_get8.exit ], [ %i.rt, %bb.cy ], [ %.sroa.073.0365, %bb.cx ] ; 2 uses
  %i.rv = icmp slt i32 %.0253360, 1
  br i1 %i.rv, label %.critedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rw = add nsw i32 %.0253360, -1               ; 2 uses
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rx
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !80
  %i.sa = fptosi float %i.rz to i32
  %i.sb = icmp sgt i32 %.0240366, 9
  br i1 %i.sb, label %.critedge, label %bb.db
end_hunk_0
