Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 181
begin_hunk_0_@JS_JSONStringify:bb.a
  %i.eq = extractvalue { i64, i64 } %i.ej, 0      ; 2 uses
  %i.er = extractvalue { i64, i64 } %i.ej, 1      ; 3 uses
  store i64 %i.eq, ptr %10, align 8, !tbaa !218
  store i64 %i.er, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !240
  %i.es = and i64 %i.er, 4294967295
  %i.et = icmp eq i64 %i.es, 6
  br i1 %i.et, label %JS_FreeValue.exit212.thread252, label %bb.af

bb.ab:                                            ; preds = %bb.x
  %i.eu = add i32 %trunc, 7
  %i.ev = icmp ult i32 %i.eu, 2
  br i1 %i.ev, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ew = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.ex = icmp ugt i32 %trunc, -10
  br i1 %i.ex, label %bb.ad, label %JS_FreeValue.exit212.thread

bb.ad:                                            ; preds = %bb.ac
  %i.ey = getelementptr inbounds i8, ptr %i.dp, i64 -4 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !191 ; 2 uses
  %i.fa = add nsw i32 %i.ez, -1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !191
  %i.fb = icmp slt i32 %i.ez, 2
  br i1 %i.fb, label %bb.ae, label %JS_FreeValue.exit212.thread

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @js_free_value_rt(ptr noundef %i.ew, i64 %i.dn, i64 %i.do), !inline_history !291
  br label %JS_FreeValue.exit212.thread

bb.af:                                            ; preds = %JS_ToStringFree.exit211, %bb.ab, %JS_FreeValue.exit
  %i.fc = phi i64 [ %i.eq, %JS_ToStringFree.exit211 ], [ %i.dn, %bb.ab ], [ %i.ee, %JS_FreeValue.exit ] ; 5 uses
  %i.fd = phi i64 [ %i.er, %JS_ToStringFree.exit211 ], [ %i.do, %bb.ab ], [ %i.ef, %JS_FreeValue.exit ] ; 5 uses
  %i.fe = call { i64, i64 } @js_array_includes(ptr noundef nonnull %0, i64 %i.df, i64 %i.dg, i32 noundef 1, ptr noundef nonnull %10) ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 1      ; 2 uses
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = icmp eq i64 %i.fg, 6
  br i1 %i.fh, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.fj = trunc i64 %i.fd to i32
  %i.fk = icmp ugt i32 %i.fj, -10
  br i1 %i.fk, label %bb.ah, label %JS_FreeValue.exit212.thread252

bb.ah:                                            ; preds = %bb.ag
  %i.fl = inttoptr i64 %i.fc to ptr
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -4 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !191 ; 2 uses
  %i.fo = add nsw i32 %i.fn, -1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !191
  %i.fp = icmp slt i32 %i.fn, 2
  br i1 %i.fp, label %bb.ai, label %JS_FreeValue.exit212.thread252

bb.ai:                                            ; preds = %bb.ah
  call fastcc void @js_free_value_rt(ptr noundef %i.fi, i64 %i.fc, i64 %i.fd), !inline_history !291
  br label %JS_FreeValue.exit212.thread252

bb.aj:                                            ; preds = %bb.af
  %i.fq = extractvalue { i64, i64 } %i.fe, 0
  %i.fr = call fastcc i32 @JS_ToBoolFree(ptr noundef nonnull %0, i64 %i.fq, i64 %i.ff)
  %.not200 = icmp eq i32 %i.fr, 0
  br i1 %.not200, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fs = add nsw i64 %.0192277, 1
  %i.ft = call i32 @JS_SetPropertyInt64(ptr noundef nonnull %0, i64 %i.df, i64 %i.dg, i64 noundef %.0192277, i64 %i.fc, i64 %i.fd) ; 0 uses
  br label %JS_FreeValue.exit212.thread

bb.al:                                            ; preds = %bb.aj
  %i.fu = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.fv = trunc i64 %i.fd to i32
  %i.fw = icmp ugt i32 %i.fv, -10
  br i1 %i.fw, label %bb.am, label %JS_FreeValue.exit212.thread

bb.am:                                            ; preds = %bb.al
  %i.fx = inttoptr i64 %i.fc to ptr
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !191 ; 2 uses
  %i.ga = add nsw i32 %i.fz, -1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !191
  %i.gb = icmp slt i32 %i.fz, 2
  br i1 %i.gb, label %bb.an, label %JS_FreeValue.exit212.thread

bb.an:                                            ; preds = %bb.am
  call fastcc void @js_free_value_rt(ptr noundef %i.fu, i64 %i.fc, i64 %i.fd), !inline_history !291
  br label %JS_FreeValue.exit212.thread

JS_FreeValue.exit212.thread:                      ; preds = %bb.w, %bb.v, %bb.an, %bb.am, %bb.al, %bb.ad, %bb.ac, %bb.ak, %bb.ae
  %.2250 = phi i64 [ %.0192277, %bb.w ], [ %.0192277, %bb.an ], [ %.0192277, %bb.am ], [ %.0192277, %bb.al ], [ %.0192277, %bb.ad ], [ %.0192277, %bb.ac ], [ %i.fs, %bb.ak ], [ %.0192277, %bb.ae ], [ %.0192277, %bb.v ]
  %i.gc = add nuw nsw i64 %.0278, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.gc, %i.dk
  br i1 %exitcond.not, label %js_is_array.exit.thread.thread, label %bb.r, !llvm.loop !1482

js_is_array.exit.thread.thread:                   ; preds = %JS_FreeValue.exit212.thread, %.preheader, %bb.m, %js_is_array.exit.thread, %JS_IsFunction.exit.thread
  %i.gd = load i64, ptr %5, align 8               ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gf = load i64, ptr %i.ge, align 8            ; 7 uses
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = icmp ugt i32 %i.gg, -10                 ; 2 uses
  br i1 %i.gh, label %bb.ao, label %js_dup.exit

bb.ao:                                            ; preds = %js_is_array.exit.thread.thread
  %i.gi = inttoptr i64 %i.gd to ptr
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !191
  %i.gl = add nsw i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %js_is_array.exit.thread.thread, %bb.ao
  %i.gm = and i64 %i.gf, 4294967295
  %i.gn = icmp eq i64 %i.gm, 4294967295
  br i1 %i.gn, label %bb.ap, label %JS_FreeValue.exit217

bb.ap:                                            ; preds = %js_dup.exit
  %i.go = inttoptr i64 %i.gd to ptr               ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 18
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !276
  switch i16 %i.gq, label %bb.au [
    i16 4, label %bb.aq
    i16 5, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gr = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %i.gd, i64 %i.gf, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.gs = extractvalue { i64, i64 } %i.gr, 0
  %i.gt = extractvalue { i64, i64 } %i.gr, 1
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.gu = call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %i.gd, i64 %i.gf, i32 noundef 0) #51, !inline_history !665 ; 2 uses
  %i.gv = load ptr, ptr %i.g, align 8, !tbaa !232
  br i1 %i.gh, label %bb.as, label %JS_ToStringFree.exit216

bb.as:                                            ; preds = %bb.ar
  %i.gw = getelementptr inbounds i8, ptr %i.go, i64 -4 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !191 ; 2 uses
  %i.gy = add nsw i32 %i.gx, -1
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !191
  %i.gz = icmp slt i32 %i.gx, 2
  br i1 %i.gz, label %bb.at, label %JS_ToStringFree.exit216

bb.at:                                            ; preds = %bb.as
  call fastcc void @js_free_value_rt(ptr noundef %i.gv, i64 %i.gd, i64 %i.gf) #51, !inline_history !666
  br label %JS_ToStringFree.exit216

JS_ToStringFree.exit216:                          ; preds = %bb.ar, %bb.as, %bb.at
  %i.ha = extractvalue { i64, i64 } %i.gu, 0
  %i.hb = extractvalue { i64, i64 } %i.gu, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %JS_ToStringFree.exit216, %bb.aq
  %.sroa.086.0 = phi i64 [ %i.gs, %bb.aq ], [ %i.ha, %JS_ToStringFree.exit216 ], [ %i.gd, %bb.ap ]
  %.sroa.19.0 = phi i64 [ %i.gt, %bb.aq ], [ %i.hb, %JS_ToStringFree.exit216 ], [ %i.gf, %bb.ap ] ; 2 uses
  %i.hc = and i64 %.sroa.19.0, 4294967295
  %i.hd = icmp eq i64 %i.hc, 6
  br i1 %i.hd, label %JS_FreeValue.exit212.thread252, label %JS_FreeValue.exit217

JS_FreeValue.exit217:                             ; preds = %bb.au, %js_dup.exit
  %.sroa.086.1 = phi i64 [ %i.gd, %js_dup.exit ], [ %.sroa.086.0, %bb.au ] ; 8 uses
  %.sroa.19.1 = phi i64 [ %i.gf, %js_dup.exit ], [ %.sroa.19.0, %bb.au ] ; 9 uses
  %i.he = and i64 %.sroa.19.1, 4294967287
  %i.hf = icmp eq i64 %i.he, 0
  %i.hg = trunc i64 %.sroa.19.1 to i32            ; 4 uses
  br i1 %i.hf, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %JS_FreeValue.exit217
  %i.hh = icmp ugt i32 %i.hg, -10
  br i1 %i.hh, label %bb.aw, label %js_dup.exit.i.preheader

bb.aw:                                            ; preds = %bb.av
  %i.hi = inttoptr i64 %.sroa.086.1 to ptr
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !191
  %i.hl = add nsw i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.aw, %bb.av
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.ba
  %.sroa.09.0.in.i.i = phi i64 [ %i.ho, %bb.ba ], [ %.sroa.086.1, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.hp, %bb.ba ], [ %.sroa.19.1, %js_dup.exit.i.preheader ] ; 2 uses
  %i.hm = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.hm, label %bb.ba [
    i32 0, label %bb.ax
    i32 1, label %bb.ax
    i32 2, label %bb.ax
    i32 3, label %bb.ax
    i32 6, label %JS_FreeValue.exit212.thread252
    i32 8, label %bb.ay
  ]

bb.ax:                                            ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.bb

bb.ay:                                            ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %11 = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %12 = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond = or i1 %11, %12
  br i1 %or.cond, label %JS_ToInt32Clamp.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.bb

bb.ba:                                            ; preds = %js_dup.exit.i
  %i.hn = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.ho = extractvalue { i64, i64 } %i.hn, 0
  %i.hp = extractvalue { i64, i64 } %i.hn, 1      ; 2 uses
  %i.hq = and i64 %i.hp, 4294967295
  %i.hr = icmp eq i64 %i.hq, 6
  br i1 %i.hr, label %JS_FreeValue.exit212.thread252, label %js_dup.exit.i

bb.bb:                                            ; preds = %bb.az, %bb.ax
  %.1.sink.i.ph.i = phi i32 [ %.sroa.09.0.extract.trunc.i.i, %bb.ax ], [ %spec.select.i.i, %bb.az ] ; 2 uses
  %i.hs = icmp slt i32 %.1.sink.i.ph.i, 0
  br i1 %i.hs, label %JS_ToInt32Clamp.exit, label %.thread26.i

.thread26.i:                                      ; preds = %bb.bb
  %spec.select = call i32 @llvm.umin.i32(i32 %.1.sink.i.ph.i, i32 10)
  %i.ht = zext nneg i32 %spec.select to i64
  br label %JS_ToInt32Clamp.exit

JS_ToInt32Clamp.exit:                             ; preds = %.thread26.i, %bb.ay, %bb.bb
  %.1.ph = phi i64 [ %i.ht, %.thread26.i ], [ 0, %bb.ay ], [ 0, %bb.bb ]
  %i.hu = call { i64, i64 } @JS_NewStringLen(ptr noundef nonnull %0, ptr noundef nonnull @.str.59, i64 noundef %.1.ph) ; 2 uses
  %i.hv = extractvalue { i64, i64 } %i.hu, 0
  %i.hw = extractvalue { i64, i64 } %i.hu, 1      ; 2 uses
  store i64 %i.hv, ptr %i.d, align 8, !tbaa !218
  store i64 %i.hw, ptr %.sroa.361.0..sroa_idx, align 8, !tbaa !240
  br label %bb.bh

bb.bc:                                            ; preds = %JS_FreeValue.exit217
  %i.hx = add i32 %i.hg, 7
  %i.hy = icmp ult i32 %i.hx, 2
  br i1 %i.hy, label %bb.bd, label %js_dup.exit222

bb.bd:                                            ; preds = %bb.bc
  %i.hz = and i64 %.sroa.19.1, 4294967295
  %i.ia = icmp eq i64 %i.hz, 4294967289
  br i1 %i.ia, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ib = insertvalue { i64, i64 } poison, i64 %.sroa.086.1, 0
  %i.ic = insertvalue { i64, i64 } %i.ib, i64 %.sroa.19.1, 1
  br label %JS_ToStringFree.exit219

bb.bf:                                            ; preds = %bb.bd
  %i.id = call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %.sroa.086.1, i64 %.sroa.19.1, i32 noundef 0) #51, !inline_history !665 ; 2 uses
  %i.ie = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.if = inttoptr i64 %.sroa.086.1 to ptr
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -4 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !191 ; 2 uses
  %i.ii = add nsw i32 %i.ih, -1
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !191
  %i.ij = icmp slt i32 %i.ih, 2
  br i1 %i.ij, label %bb.bg, label %JS_ToStringFree.exit219

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @js_free_value_rt(ptr noundef %i.ie, i64 %.sroa.086.1, i64 %.sroa.19.1) #51, !inline_history !666
  br label %JS_ToStringFree.exit219

JS_ToStringFree.exit219:                          ; preds = %bb.be, %bb.bf, %bb.bg
  %.fca.1.insert.merged.i218 = phi { i64, i64 } [ %i.ic, %bb.be ], [ %i.id, %bb.bg ], [ %i.id, %bb.bf ] ; 2 uses
  %i.ik = extractvalue { i64, i64 } %.fca.1.insert.merged.i218, 1 ; 3 uses
  %i.il = and i64 %i.ik, 4294967295
  %i.im = icmp eq i64 %i.il, 6
  br i1 %i.im, label %JS_FreeValue.exit212.thread252, label %.thread265

.thread265:                                       ; preds = %JS_ToStringFree.exit219
  %i.in = extractvalue { i64, i64 } %.fca.1.insert.merged.i218, 0 ; 2 uses
  %i.io = inttoptr i64 %i.in to ptr               ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = and i32 %i.iq, 2147483647
  %i.is = call i32 @llvm.umin.i32(i32 %i.ir, i32 10)
  %i.it = call fastcc { i64, i64 } @js_sub_string(ptr noundef nonnull %0, ptr noundef nonnull %i.io, i32 noundef 0, i32 noundef %i.is) ; 2 uses
  %i.iu = extractvalue { i64, i64 } %i.it, 0
  %i.iv = extractvalue { i64, i64 } %i.it, 1      ; 2 uses
  store i64 %i.iu, ptr %i.d, align 8, !tbaa !218
  store i64 %i.iv, ptr %.sroa.361.0..sroa_idx, align 8, !tbaa !240
  %.pre286 = trunc i64 %i.ik to i32
  br label %bb.bh

js_dup.exit222:                                   ; preds = %bb.bc
  %i.iw = load i32, ptr %i.l, align 4, !tbaa !191
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %i.l, align 4, !tbaa !191
  store i64 %i.k, ptr %i.d, align 8, !tbaa !218
  store i64 -7, ptr %.sroa.361.0..sroa_idx, align 8, !tbaa !240
  br label %bb.bh

bb.bh:                                            ; preds = %.thread265, %JS_ToInt32Clamp.exit, %js_dup.exit222
  %.pre-phi = phi i32 [ %.pre286, %.thread265 ], [ %i.hg, %JS_ToInt32Clamp.exit ], [ %i.hg, %js_dup.exit222 ]
  %i.iy = phi i64 [ %i.iv, %.thread265 ], [ %i.hw, %JS_ToInt32Clamp.exit ], [ -7, %js_dup.exit222 ]
  %.sroa.086.2 = phi i64 [ %i.in, %.thread265 ], [ %.sroa.086.1, %JS_ToInt32Clamp.exit ], [ %.sroa.086.1, %js_dup.exit222 ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %i.ik, %.thread265 ], [ %.sroa.19.1, %JS_ToInt32Clamp.exit ], [ %.sroa.19.1, %js_dup.exit222 ]
  %i.iz = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.ja = icmp ugt i32 %.pre-phi, -10
  br i1 %i.ja, label %bb.bi, label %JS_FreeValue.exit223

bb.bi:                                            ; preds = %bb.bh
  %i.jb = inttoptr i64 %.sroa.086.2 to ptr
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -4 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !191 ; 2 uses
  %i.je = add nsw i32 %i.jd, -1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !191
  %i.jf = icmp slt i32 %i.jd, 2
  br i1 %i.jf, label %bb.bj, label %JS_FreeValue.exit223

bb.bj:                                            ; preds = %bb.bi
  call fastcc void @js_free_value_rt(ptr noundef %i.iz, i64 %.sroa.086.2, i64 %.sroa.19.2), !inline_history !291
  br label %JS_FreeValue.exit223

JS_FreeValue.exit223:                             ; preds = %bb.bh, %bb.bi, %bb.bj
  %i.jg = and i64 %i.iy, 4294967295
  %i.jh = icmp eq i64 %i.jg, 6
  br i1 %i.jh, label %JS_FreeValue.exit212.thread252, label %bb.bk

bb.bk:                                            ; preds = %JS_FreeValue.exit223
  %i.ji = call { i64, i64 } @JS_NewObject(ptr noundef nonnull %0) ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.ji, 0      ; 9 uses
  %i.jk = extractvalue { i64, i64 } %i.ji, 1      ; 10 uses
  %i.jl = and i64 %i.jk, 4294967295
  %i.jm = icmp eq i64 %i.jl, 6
  br i1 %i.jm, label %JS_FreeValue.exit212.thread252, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jn = trunc i64 %2 to i32
  %i.jo = icmp ugt i32 %i.jn, -10                 ; 2 uses
  br i1 %i.jo, label %bb.bm, label %js_dup.exit226

bb.bm:                                            ; preds = %bb.bl
  %i.jp = inttoptr i64 %1 to ptr
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -4 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !191
  %i.js = add nsw i32 %i.jr, 1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !191
  br label %js_dup.exit226

js_dup.exit226:                                   ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 0, ptr %6, align 8, !tbaa !218
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.jt, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.ju, align 8, !tbaa !365
  store i32 0, ptr %7, align 8, !tbaa !218
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %i.jw, align 8, !tbaa !365
  %i.jx = call i32 @JS_DefineProperty(ptr noundef nonnull %0, i64 %i.jj, i64 %i.jk, i32 noundef 48, i64 %1, i64 %2, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, i32 noundef 9991) #51, !inline_history !366 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.jy = load ptr, ptr %i.g, align 8, !tbaa !232
  br i1 %i.jo, label %bb.bn, label %JS_DefinePropertyValue.exit.thread

bb.bn:                                            ; preds = %js_dup.exit226
  %i.jz = inttoptr i64 %1 to ptr
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -4 ; 4 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !191 ; 2 uses
  %i.kc = add nsw i32 %i.kb, -1
  store i32 %i.kc, ptr %i.ka, align 4, !tbaa !191
  %i.kd = icmp slt i32 %i.kb, 2
  br i1 %i.kd, label %bb.bo, label %JS_DefinePropertyValue.exit

bb.bo:                                            ; preds = %bb.bn
  call fastcc void @js_free_value_rt(ptr noundef %i.jy, i64 %1, i64 %2) #51, !inline_history !367
  br label %JS_DefinePropertyValue.exit

JS_DefinePropertyValue.exit:                      ; preds = %bb.bn, %bb.bo
  %i.ke = icmp slt i32 %i.jx, 0
  br i1 %i.ke, label %JS_FreeValue.exit212.thread252, label %bb.bp

JS_DefinePropertyValue.exit.thread:               ; preds = %js_dup.exit226
  %i.kf = icmp slt i32 %i.jx, 0
  br i1 %i.kf, label %JS_FreeValue.exit212.thread252, label %js_dup.exit229

bb.bp:                                            ; preds = %JS_DefinePropertyValue.exit
  %i.kg = load i32, ptr %i.ka, align 4, !tbaa !191
  %i.kh = add nsw i32 %i.kg, 1
  store i32 %i.kh, ptr %i.ka, align 4, !tbaa !191
  br label %js_dup.exit229

js_dup.exit229:                                   ; preds = %JS_DefinePropertyValue.exit.thread, %bb.bp
  %i.ki = call fastcc { i64, i64 } @js_json_check(ptr noundef nonnull %0, ptr noundef %9, i64 %i.jj, i64 %i.jk, i64 %1, i64 %2, ptr noundef nonnull byval(%struct.JSValue) align 8 %i.f) ; 2 uses
  %i.kj = extractvalue { i64, i64 } %i.ki, 1      ; 2 uses
  %trunc273 = trunc i64 %i.kj to i32
  switch i32 %trunc273, label %bb.bq [
    i32 6, label %JS_FreeValue.exit212.thread252
    i32 3, label %JS_FreeValue.exit212.thread252.fold.split
  ]

bb.bq:                                            ; preds = %js_dup.exit229
  %i.kk = extractvalue { i64, i64 } %i.ki, 0
end_hunk_0
begin_hunk_1_@js_regexp_get_source:bb.a
  %i.eh = extractvalue { i64, i64 } %i.ef, 1
  br label %bb.ap

bb.ap:                                            ; preds = %js_get_regexp.exit.thread, %._crit_edge, %bb.e, %bb.b
  %.sroa.037.0 = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.eg, %._crit_edge ], [ 0, %js_get_regexp.exit.thread ]
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.sroa.5.0.extract.shift40, %bb.e ], [ %.sroa.5.0.extract.shift42, %._crit_edge ], [ 0, %js_get_regexp.exit.thread ]
  %.sroa.6.0 = phi i64 [ 6, %bb.b ], [ %i.ad, %bb.e ], [ %i.eh, %._crit_edge ], [ 6, %js_get_regexp.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %.sroa.037.0.insert.ext = and i64 %.sroa.037.0, 4294967295
  %.sroa.037.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.037.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.037.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_regexp_get_flag(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.b, 4294967295
  br i1 %.not, label %js_get_regexp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %bb.j

js_get_regexp.exit:                               ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276
  %.not8.i.not.not = icmp eq i16 %i.f, 19
  br i1 %.not8.i.not.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %js_get_regexp.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call fastcc zeroext i1 @js_strict_eq2(i64 %1, i64 %2, i64 %i.j, i64 %i.l, i32 noundef 1)
  br i1 %i.m, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !232  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1128
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !251
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 764
  %i.s = load i32, ptr %i.r, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.t = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.o, ptr noundef nonnull %i.a, i32 noundef %i.s) ; 0 uses
  %i.u = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !126 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.j

bb.e:                                             ; preds = %js_get_regexp.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !652  ; 5 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 60
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 3
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %str8.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !389
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !390
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  br label %str8.exit

bb.h:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !239
  br label %str8.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.f, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.ai, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = tail call i32 @lre_get_flags(ptr noundef %.0.i.i) #49
  %i.am = and i32 %i.al, %3
  %i.an = icmp ne i32 %i.am, 0
  %.sroa.0.0.insert.ext.i = zext i1 %i.an to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %str8.exit, %bb.d, %bb.b
  %.sroa.011.0 = phi i64 [ 0, %bb.b ], [ %.sroa.0.0.insert.ext.i, %str8.exit ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.sroa.6.0 = phi i64 [ 6, %bb.b ], [ 1, %str8.exit ], [ 6, %bb.d ], [ 3, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_regexp_exec(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 5 uses
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %7 = alloca [4 x %struct.JSProperty], align 16  ; 12 uses
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  br i1 %i.c, label %bb.b, label %js_get_regexp.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276
  %.not8.i.not = icmp eq i16 %i.f, 19
  br i1 %.not8.i.not, label %js_get_regexp.exit, label %js_get_regexp.exit.thread

js_get_regexp.exit.thread:                        ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 764
  %i.l = load i32, ptr %i.k, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.m = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.h, ptr noundef nonnull %i.a, i32 noundef %i.l) ; 0 uses
  %i.n = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !126 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  br label %bb.cq

js_get_regexp.exit:                               ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.o = load i64, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.o, i64 %i.q, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0        ; 16 uses
  %i.t = extractvalue { i64, i64 } %i.r, 1        ; 16 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = icmp eq i64 %i.u, 6
  br i1 %i.v, label %bb.cq, label %bb.c

bb.c:                                             ; preds = %js_get_regexp.exit
  %i.w = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 93, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 4 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 4 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %js_malloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc i64 %i.y to i32
  %i.ac = icmp ugt i32 %i.ab, -10                 ; 2 uses
  br i1 %i.ac, label %bb.e, label %js_dup.exit.i.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.ad = inttoptr i64 %i.x to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !191
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.e, %bb.d
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.i
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.an, %bb.i ], [ %i.x, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.ao, %bb.i ], [ %i.y, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.ah = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.ah, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 6, label %JS_ToInt64Clamp.exit.i
    i32 8, label %bb.g
  ]

bb.f:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.ai = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.aj = ashr exact i64 %i.ai, 32
  br label %select.unfold.i.i

bb.g:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %8 = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  %9 = fcmp olt double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %or.cond487 = or i1 %8, %9
  br i1 %or.cond487, label %JS_ToInt64Clamp.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.al = fptosi double %.sroa.012.0.le.i.i.i to i64
  br i1 %i.ak, label %select.unfold.i.i, label %JS_ToInt64Clamp.exit.i

bb.i:                                             ; preds = %js_dup.exit.i.i
  %i.am = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !47 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp eq i64 %i.ap, 6
  br i1 %i.aq, label %JS_ToInt64Clamp.exit.i, label %js_dup.exit.i.i

select.unfold.i.i:                                ; preds = %bb.h, %bb.f
  %.sink.i.ph.i.i = phi i64 [ %i.aj, %bb.f ], [ %i.al, %bb.h ] ; 2 uses
  %i.ar = icmp slt i64 %.sink.i.ph.i.i, 0
  br i1 %i.ar, label %JS_ToInt64Clamp.exit.i, label %.thread.i

.thread.i:                                        ; preds = %select.unfold.i.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.sink.i.ph.i.i, i64 9007199254740991)
  br label %JS_ToInt64Clamp.exit.i

JS_ToInt64Clamp.exit.i:                           ; preds = %js_dup.exit.i.i, %bb.i, %.thread.i, %bb.h, %bb.g, %select.unfold.i.i
  %.2459 = phi i64 [ 0, %bb.g ], [ %spec.select, %.thread.i ], [ 9007199254740991, %bb.h ], [ 0, %select.unfold.i.i ], [ 0, %bb.i ], [ 0, %js_dup.exit.i.i ]
  %.not408 = phi i1 [ true, %bb.g ], [ true, %.thread.i ], [ true, %bb.h ], [ true, %select.unfold.i.i ], [ false, %bb.i ], [ false, %js_dup.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  br i1 %i.ac, label %bb.j, label %JS_ToLengthFree.exit

bb.j:                                             ; preds = %JS_ToInt64Clamp.exit.i
  %i.au = inttoptr i64 %i.x to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !191 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !191
  %i.ay = icmp slt i32 %i.aw, 2
  br i1 %i.ay, label %bb.k, label %JS_ToLengthFree.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.x, i64 %i.y), !inline_history !476
  br label %JS_ToLengthFree.exit

JS_ToLengthFree.exit:                             ; preds = %JS_ToInt64Clamp.exit.i, %bb.j, %bb.k
  br i1 %.not408, label %bb.l, label %js_malloc.exit.thread

bb.l:                                             ; preds = %JS_ToLengthFree.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !652 ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = lshr i64 %i.bb, 60
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 3
  switch i32 %i.be, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  br label %str8.exit

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !389
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !390
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  br label %str8.exit

bb.o:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !239
  br label %str8.exit

default.unreachable:                              ; preds = %bb.y, %bb.l
  unreachable

bb.p:                                             ; preds = %bb.l
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.m, %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.bf, %bb.m ], [ %i.bm, %bb.n ], [ %i.bo, %bb.o ] ; 5 uses
  %i.bp = tail call i32 @lre_get_flags(ptr noundef %.0.i.i) #49 ; 2 uses
  %i.bq = and i32 %i.bp, 33
  %i.br = icmp eq i32 %i.bq, 0                    ; 3 uses
  %spec.select488 = select i1 %i.br, i64 0, i64 %.2459 ; 2 uses
  %i.bs = inttoptr i64 %i.s to ptr                ; 6 uses
  %i.bt = tail call i32 @lre_get_capture_count(ptr noundef %.0.i.i) #49 ; 2 uses
  %i.bu = tail call i32 @lre_get_alloc_count(ptr noundef %.0.i.i) #49 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.q, label %bb.y

bb.q:                                             ; preds = %str8.exit
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3                ; 2 uses
  %i.by = load ptr, ptr %i.as, align 8, !tbaa !232 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !196
  %i.cc = add i64 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !197
  %i.cf = add i64 %i.ce, -1
  %i.cg = icmp ugt i64 %i.cc, %i.cf
  br i1 %i.cg, label %bb.w, label %bb.r, !prof !192

bb.r:                                             ; preds = %bb.q
  %i.ch = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.by, i64 noundef %i.bx), !inline_history !237 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.as, align 8, !tbaa !232
  br label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.bz, align 8, !tbaa !217
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.bz, align 8, !tbaa !217
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 3 uses
  %i.cl = load i16, ptr %i.ck, align 8, !tbaa !218
  %i.cm = icmp eq i16 %i.cl, -1
  br i1 %i.cm, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 1064
  %i.co = icmp eq ptr %i.ck, %i.cn
  br i1 %i.co, label %js_malloc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !219
  %i.cr = tail call i64 %i.cq(ptr noundef nonnull %i.ck) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.cr, 0
  %i.cs = select i1 %.not15.i.i.i, i64 8, i64 %i.cr
  br label %js_malloc.exit

bb.v:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds i8, ptr %i.ch, i64 -6
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !218
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !221
  %i.cy = zext i16 %i.cx to i64
  br label %js_malloc.exit

bb.w:                                             ; preds = %._crit_edge.i, %bb.q
  %i.cz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.by, %bb.q ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1256 ; 3 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !233, !range !234, !noundef !235
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %js_malloc.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.da, align 8, !tbaa !233
  %i.dd = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.da, align 8, !tbaa !233
  br label %js_malloc.exit.thread

js_malloc.exit:                                   ; preds = %bb.t, %bb.u, %bb.v
  %.011.i.i.i = phi i64 [ 8, %bb.t ], [ %i.cs, %bb.u ], [ %i.cy, %bb.v ]
  %i.de = load i64, ptr %i.ca, align 8, !tbaa !196
  %i.df = add i64 %i.de, %.011.i.i.i
  store i64 %i.df, ptr %i.ca, align 8, !tbaa !196
  br label %bb.y

bb.y:                                             ; preds = %js_malloc.exit, %str8.exit
  %.0390 = phi ptr [ %i.ch, %js_malloc.exit ], [ null, %str8.exit ] ; 33 uses
  %i.dg = load i64, ptr %i.bs, align 8            ; 3 uses
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = lshr i32 %i.dh, 31                      ; 3 uses
  %i.dj = lshr i64 %i.dg, 60
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 3
  switch i32 %i.dl, label %default.unreachable [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  br label %str8.exit430

bb.aa:                                            ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !389
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !390
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ds
end_hunk_1
begin_hunk_2_@js_regexp_Symbol_replace:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 64
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.kg = getelementptr inbounds nuw i8, ptr %10, i64 80
  %.sroa.9295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph669, %js_get_length32.exit.thread532
  %indvars.iv774 = phi i64 [ 0, %.lr.ph669 ], [ %indvars.iv.next775, %js_get_length32.exit.thread532 ] ; 2 uses
  %.sroa.15284.2668 = phi i64 [ %.sroa.15284.0, %.lr.ph669 ], [ %i.mj, %js_get_length32.exit.thread532 ] ; 4 uses
  %.sroa.0195.sroa.14.0667 = phi i32 [ 0, %.lr.ph669 ], [ %.sroa.0195.sroa.14.0.extract.trunc, %js_get_length32.exit.thread532 ] ; 5 uses
  %.sroa.0195.sroa.0.0666 = phi i32 [ 0, %.lr.ph669 ], [ %.sroa.0195.sroa.0.0.extract.trunc, %js_get_length32.exit.thread532 ] ; 5 uses
  %.sroa.15.0665 = phi i64 [ 3, %.lr.ph669 ], [ %i.oc, %js_get_length32.exit.thread532 ] ; 6 uses
  %.sroa.11.0664 = phi i64 [ 3, %.lr.ph669 ], [ %.sroa.11.2, %js_get_length32.exit.thread532 ] ; 18 uses
  %.sroa.0186.0663 = phi i64 [ 0, %.lr.ph669 ], [ %.sroa.0186.2, %js_get_length32.exit.thread532 ] ; 18 uses
  %.sroa.12.0662 = phi i64 [ 3, %.lr.ph669 ], [ %i.pj, %js_get_length32.exit.thread532 ] ; 11 uses
  %.sroa.0173.0661 = phi i64 [ 0, %.lr.ph669 ], [ %i.pi, %js_get_length32.exit.thread532 ] ; 11 uses
  %.0392660 = phi i32 [ 0, %.lr.ph669 ], [ %.2545, %js_get_length32.exit.thread532 ] ; 3 uses
  %.sroa.0276.sroa.0.2658 = phi i64 [ %.sroa.0276.sroa.0.0, %.lr.ph669 ], [ %i.mi, %js_get_length32.exit.thread532 ] ; 4 uses
  %i.kh = load ptr, ptr %i.bu, align 8, !tbaa !1896
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kh, i64 %indvars.iv774 ; 2 uses
  %.sroa.066.0.copyload = load i64, ptr %i.ki, align 8, !tbaa !218 ; 10 uses
  %.sroa.871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.871.0.copyload = load i64, ptr %.sroa.871.0..sroa_idx, align 8, !tbaa !240 ; 10 uses
  %i.kj = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef 51, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false) #51, !inline_history !805 ; 2 uses
  %i.kk = extractvalue { i64, i64 } %i.kj, 1      ; 2 uses
  %i.kl = and i64 %i.kk, 4294967295
  %i.km = icmp eq i64 %i.kl, 6
  br i1 %i.km, label %.thread500, label %.preheader.i

.preheader.i:                                     ; preds = %bb.be, %bb.bk
  %.pn.i = phi { i64, i64 } [ %i.le, %bb.bk ], [ %i.kj, %bb.be ]
  %.sroa.6.0.i.i = phi i64 [ %i.lf, %bb.bk ], [ %i.kk, %bb.be ] ; 2 uses
  %.sroa.017.0.in.i.i = extractvalue { i64, i64 } %.pn.i, 0 ; 6 uses
  %i.kn = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.kn, label %bb.bk [
    i32 0, label %bb.bf
    i32 1, label %bb.bf
    i32 2, label %bb.bf
    i32 3, label %bb.bf
    i32 8, label %bb.bg
  ]

bb.bf:                                            ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %.sroa.017.0.extract.trunc.i.i = trunc i64 %.sroa.017.0.in.i.i to i32
  br label %bb.bl

bb.bg:                                            ; preds = %.preheader.i
  %i.ko = lshr i64 %.sroa.017.0.in.i.i, 52
  %i.kp = trunc nuw nsw i64 %i.ko to i32
  %i.kq = and i32 %i.kp, 2047                     ; 3 uses
  %i.kr = icmp samesign ult i32 %i.kq, 1054
  br i1 %i.kr, label %bb.bh, label %bb.bi, !prof !325

bb.bh:                                            ; preds = %bb.bg
  %.sroa.017.0.i.le.i = bitcast i64 %.sroa.017.0.in.i.i to double
  %i.ks = fptosi double %.sroa.017.0.i.le.i to i32
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.kt = icmp samesign ult i32 %i.kq, 1107
  br i1 %i.kt, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ku = and i64 %.sroa.017.0.in.i.i, 4503599627370495
  %i.kv = or disjoint i64 %i.ku, 4503599627370496
  %i.kw = add nsw i32 %i.kq, -1043
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = shl i64 %i.kv, %i.kx
  %i.kz = lshr i64 %i.ky, 32                      ; 2 uses
  %i.la = trunc nuw i64 %i.kz to i32              ; 2 uses
  %i.lb = icmp slt i64 %.sroa.017.0.in.i.i, 0
  %i.lc = icmp ne i64 %i.kz, 2147483648
  %or.cond.i.i = select i1 %i.lb, i1 %i.lc, i1 false
  %i.ld = sub nsw i32 0, %i.la
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.ld, i32 %i.la
  br label %bb.bl

bb.bk:                                            ; preds = %.preheader.i
  %i.le = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.017.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0) #51, !inline_history !153 ; 2 uses
  %i.lf = extractvalue { i64, i64 } %i.le, 1      ; 2 uses
  %i.lg = and i64 %i.lf, 4294967295
  %i.lh = icmp eq i64 %i.lg, 6
  br i1 %i.lh, label %.thread500, label %.preheader.i

bb.bl:                                            ; preds = %bb.bi, %bb.bf, %bb.bh, %bb.bj
  %storemerge.i.ph = phi i32 [ %spec.select.i.i, %bb.bj ], [ %i.ks, %bb.bh ], [ %.sroa.017.0.extract.trunc.i.i, %bb.bf ], [ 0, %bb.bi ] ; 3 uses
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.lj = trunc i64 %.sroa.15284.2668 to i32
  %i.lk = icmp ugt i32 %i.lj, -10
  br i1 %i.lk, label %bb.bm, label %JS_FreeValue.exit426

bb.bm:                                            ; preds = %bb.bl
  %i.ll = inttoptr i64 %.sroa.0276.sroa.0.2658 to ptr
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -4 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !191 ; 2 uses
  %i.lo = add nsw i32 %i.ln, -1
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !191
  %i.lp = icmp slt i32 %i.ln, 2
  br i1 %i.lp, label %bb.bn, label %JS_FreeValue.exit426

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @js_free_value_rt(ptr noundef %i.li, i64 %.sroa.0276.sroa.0.2658, i64 %.sroa.15284.2668), !inline_history !291
  br label %JS_FreeValue.exit426

JS_FreeValue.exit426:                             ; preds = %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.lq = and i64 %.sroa.871.0.copyload, 4294967295
  %i.lr = icmp eq i64 %i.lq, 4294967295
  br i1 %i.lr, label %bb.bo, label %.thread.i427, !prof !325

bb.bo:                                            ; preds = %JS_FreeValue.exit426
  %i.ls = inttoptr i64 %.sroa.066.0.copyload to ptr
  %i.lt = call fastcc zeroext i1 @js_get_fast_array_element(ptr noundef nonnull %0, ptr noundef %i.ls, i32 noundef 0, ptr noundef nonnull %6) #51, !inline_history !825
  %.sroa.013.0.copyload.i437 = load i64, ptr %6, align 8
  %.sroa.5.0.copyload.i440 = load i64, ptr %.sroa.5.0..sroa_idx.i439, align 8
  br i1 %i.lt, label %JS_GetPropertyInt64.exit441, label %.thread.i427

.thread.i427:                                     ; preds = %JS_FreeValue.exit426, %bb.bo
  %i.lu = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef -2147483648, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false) #51, !inline_history !826 ; 2 uses
  %i.lv = extractvalue { i64, i64 } %i.lu, 0
  %i.lw = extractvalue { i64, i64 } %i.lu, 1
  br label %JS_GetPropertyInt64.exit441

JS_GetPropertyInt64.exit441:                      ; preds = %bb.bo, %.thread.i427
  %.sroa.5.1.i430 = phi i64 [ %.sroa.5.0.copyload.i440, %bb.bo ], [ %i.lw, %.thread.i427 ] ; 5 uses
  %.sroa.013.sroa.0.1.i431 = phi i64 [ %.sroa.013.0.copyload.i437, %bb.bo ], [ %i.lv, %.thread.i427 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert.i435 = insertvalue { i64, i64 } poison, i64 %.sroa.013.sroa.0.1.i431, 0
  %.fca.1.insert.i436 = insertvalue { i64, i64 } %.fca.0.insert.i435, i64 %.sroa.5.1.i430, 1
  %i.lx = and i64 %.sroa.5.1.i430, 4294967295
  %i.ly = icmp eq i64 %i.lx, 4294967289
  br i1 %i.ly, label %JS_ToStringFree.exit443, label %bb.bp

bb.bp:                                            ; preds = %JS_GetPropertyInt64.exit441
  %i.lz = call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %.sroa.013.sroa.0.1.i431, i64 %.sroa.5.1.i430, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.ma = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.mb = trunc i64 %.sroa.5.1.i430 to i32
  %i.mc = icmp ugt i32 %i.mb, -10
  br i1 %i.mc, label %bb.bq, label %JS_ToStringFree.exit443

bb.bq:                                            ; preds = %bb.bp
  %i.md = inttoptr i64 %.sroa.013.sroa.0.1.i431 to ptr
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -4 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !191 ; 2 uses
  %i.mg = add nsw i32 %i.mf, -1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !191
  %i.mh = icmp slt i32 %i.mf, 2
  br i1 %i.mh, label %bb.br, label %JS_ToStringFree.exit443

bb.br:                                            ; preds = %bb.bq
  call fastcc void @js_free_value_rt(ptr noundef %i.ma, i64 %.sroa.013.sroa.0.1.i431, i64 %.sroa.5.1.i430) #51, !inline_history !666
  br label %JS_ToStringFree.exit443

JS_ToStringFree.exit443:                          ; preds = %JS_GetPropertyInt64.exit441, %bb.bp, %bb.bq, %bb.br
  %.fca.1.insert.merged.i442 = phi { i64, i64 } [ %i.lz, %bb.br ], [ %i.lz, %bb.bp ], [ %i.lz, %bb.bq ], [ %.fca.1.insert.i436, %JS_GetPropertyInt64.exit441 ] ; 2 uses
  %i.mi = extractvalue { i64, i64 } %.fca.1.insert.merged.i442, 0 ; 18 uses
  %i.mj = extractvalue { i64, i64 } %.fca.1.insert.merged.i442, 1 ; 18 uses
  %i.mk = and i64 %i.mj, 4294967295
  %i.ml = icmp eq i64 %i.mk, 6
  br i1 %i.ml, label %.thread500, label %bb.bs

bb.bs:                                            ; preds = %JS_ToStringFree.exit443
  %i.mm = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef 95, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.mn = extractvalue { i64, i64 } %i.mm, 0      ; 4 uses
  %i.mo = extractvalue { i64, i64 } %i.mm, 1      ; 3 uses
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = icmp ugt i32 %i.mp, -10                 ; 2 uses
  br i1 %i.mq, label %bb.bt, label %js_dup.exit.i.i.preheader

bb.bt:                                            ; preds = %bb.bs
  %i.mr = inttoptr i64 %i.mn to ptr
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -4 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !191
  %i.mu = add nsw i32 %i.mt, 1
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.bt, %bb.bs
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.bx
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.nb, %bb.bx ], [ %i.mn, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.nc, %bb.bx ], [ %i.mo, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.mv = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.mv, label %bb.bx [
    i32 0, label %bb.bu
    i32 1, label %bb.bu
    i32 2, label %bb.bu
    i32 3, label %bb.bu
    i32 6, label %JS_ToInt64Clamp.exit.i
    i32 8, label %bb.bv
  ]

bb.bu:                                            ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.mw = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.mx = ashr exact i64 %i.mw, 32
  br label %select.unfold.i.i

bb.bv:                                            ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %13 = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  %14 = fcmp olt double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %or.cond554 = or i1 %13, %14
  br i1 %or.cond554, label %JS_ToInt64Clamp.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.my = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.mz = fptosi double %.sroa.012.0.le.i.i.i to i64
  br i1 %i.my, label %select.unfold.i.i, label %JS_ToInt64Clamp.exit.i

bb.bx:                                            ; preds = %js_dup.exit.i.i
  %i.na = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !47 ; 2 uses
  %i.nb = extractvalue { i64, i64 } %i.na, 0
  %i.nc = extractvalue { i64, i64 } %i.na, 1      ; 2 uses
  %i.nd = and i64 %i.nc, 4294967295
  %i.ne = icmp eq i64 %i.nd, 6
  br i1 %i.ne, label %JS_ToInt64Clamp.exit.i, label %js_dup.exit.i.i

select.unfold.i.i:                                ; preds = %bb.bw, %bb.bu
  %.sink.i.ph.i.i = phi i64 [ %i.mx, %bb.bu ], [ %i.mz, %bb.bw ] ; 2 uses
  %i.nf = icmp slt i64 %.sink.i.ph.i.i, 0
  br i1 %i.nf, label %JS_ToInt64Clamp.exit.i, label %.thread.i444

.thread.i444:                                     ; preds = %select.unfold.i.i
  %spec.select = call i64 @llvm.umin.i64(i64 %.sink.i.ph.i.i, i64 9007199254740991)
  br label %JS_ToInt64Clamp.exit.i

JS_ToInt64Clamp.exit.i:                           ; preds = %js_dup.exit.i.i, %bb.bx, %.thread.i444, %bb.bw, %bb.bv, %select.unfold.i.i
  %.2486 = phi i64 [ 0, %bb.bv ], [ %spec.select, %.thread.i444 ], [ 9007199254740991, %bb.bw ], [ 0, %select.unfold.i.i ], [ 0, %bb.bx ], [ 0, %js_dup.exit.i.i ]
  %.not407 = phi i1 [ true, %bb.bv ], [ true, %.thread.i444 ], [ true, %bb.bw ], [ true, %select.unfold.i.i ], [ false, %bb.bx ], [ false, %js_dup.exit.i.i ]
  %i.ng = load ptr, ptr %i.i, align 8, !tbaa !232
  br i1 %i.mq, label %bb.by, label %JS_ToLengthFree.exit

bb.by:                                            ; preds = %JS_ToInt64Clamp.exit.i
  %i.nh = inttoptr i64 %i.mn to ptr
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 -4 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !191 ; 2 uses
  %i.nk = add nsw i32 %i.nj, -1
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !191
  %i.nl = icmp slt i32 %i.nj, 2
  br i1 %i.nl, label %bb.bz, label %JS_ToLengthFree.exit

bb.bz:                                            ; preds = %bb.by
  call fastcc void @js_free_value_rt(ptr noundef %i.ng, i64 %i.mn, i64 %i.mo), !inline_history !476
  br label %JS_ToLengthFree.exit

JS_ToLengthFree.exit:                             ; preds = %JS_ToInt64Clamp.exit.i, %bb.by, %bb.bz
  br i1 %.not407, label %bb.ca, label %.thread500

bb.ca:                                            ; preds = %JS_ToLengthFree.exit
  %i.nm = load i64, ptr %i.cd, align 8
  %i.nn = and i64 %i.nm, 2147483647
  %spec.select555 = call i64 @llvm.umin.i64(i64 %.2486, i64 %i.nn) ; 5 uses
  %.sroa.0195.sroa.14.0.insert.ext = zext i32 %.sroa.0195.sroa.14.0667 to i64
  %.sroa.0195.sroa.14.0.insert.shift = shl nuw i64 %.sroa.0195.sroa.14.0.insert.ext, 32
  %.sroa.0195.sroa.0.0.insert.ext = zext i32 %.sroa.0195.sroa.0.0666 to i64
  %.sroa.0195.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0195.sroa.14.0.insert.shift, %.sroa.0195.sroa.0.0.insert.ext ; 2 uses
  %i.no = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.np = trunc i64 %.sroa.15.0665 to i32
  %i.nq = icmp ugt i32 %i.np, -10
  br i1 %i.nq, label %bb.cb, label %JS_FreeValue.exit446

bb.cb:                                            ; preds = %bb.ca
  %i.nr = inttoptr i64 %.sroa.0195.sroa.0.0.insert.insert to ptr
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -4 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !191 ; 2 uses
  %i.nu = add nsw i32 %i.nt, -1
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !191
  %i.nv = icmp slt i32 %i.nt, 2
  br i1 %i.nv, label %bb.cc, label %JS_FreeValue.exit446

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @js_free_value_rt(ptr noundef %i.no, i64 %.sroa.0195.sroa.0.0.insert.insert, i64 %.sroa.15.0665), !inline_history !291
  br label %JS_FreeValue.exit446

JS_FreeValue.exit446:                             ; preds = %bb.ca, %bb.cb, %bb.cc
  %i.nw = load ptr, ptr %i.ka, align 8, !tbaa !351 ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 -4 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !191
  %i.nz = add nsw i32 %i.ny, 1
  store i32 %i.nz, ptr %i.nx, align 4, !tbaa !191
  %i.oa = call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef nonnull %0, ptr noundef %i.nw, i32 noundef 2, ptr noundef null), !inline_history !405 ; 2 uses
  %i.ob = extractvalue { i64, i64 } %i.oa, 0      ; 9 uses
  %i.oc = extractvalue { i64, i64 } %i.oa, 1      ; 21 uses
  %.sroa.0195.sroa.0.0.extract.trunc = trunc i64 %i.ob to i32 ; 13 uses
  %.sroa.0195.sroa.14.0.extract.shift = lshr i64 %i.ob, 32
  %.sroa.0195.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0195.sroa.14.0.extract.shift to i32 ; 13 uses
  %i.od = and i64 %i.oc, 4294967295
  %i.oe = icmp eq i64 %i.od, 6
  br i1 %i.oe, label %.thread500, label %bb.cd

bb.cd:                                            ; preds = %JS_FreeValue.exit446
  %i.of = call fastcc i32 @JS_DefinePropertyValueInt64Const(ptr noundef nonnull %0, i64 %i.ob, i64 %i.oc, i64 noundef 0, i64 %i.mi, i64 %i.mj)
  %i.og = icmp slt i32 %i.of, 0
  br i1 %i.og, label %.thread500, label %.preheader

.preheader:                                       ; preds = %bb.cd
  %i.oh = icmp ugt i32 %storemerge.i.ph, 1
  br i1 %i.oh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %storemerge.i.ph to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ci
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ci ] ; 3 uses
  %i.oi = call { i64, i64 } @JS_GetPropertyInt64(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i64 noundef %indvars.iv) ; 3 uses
  %i.oj = extractvalue { i64, i64 } %i.oi, 0      ; 4 uses
  %i.ok = extractvalue { i64, i64 } %i.oi, 1      ; 4 uses
  %trunc561 = trunc i64 %i.ok to i32              ; 2 uses
  switch i32 %trunc561, label %bb.ce [
    i32 6, label %.thread500
    i32 3, label %bb.ch
    i32 -7, label %JS_ToStringFree.exit448
  ]

bb.ce:                                            ; preds = %.lr.ph
  %i.ol = call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %i.oj, i64 %i.ok, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.om = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.on = icmp ugt i32 %trunc561, -10
  br i1 %i.on, label %bb.cf, label %JS_ToStringFree.exit448

bb.cf:                                            ; preds = %bb.ce
  %i.oo = inttoptr i64 %i.oj to ptr
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -4 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !191 ; 2 uses
  %i.or = add nsw i32 %i.oq, -1
  store i32 %i.or, ptr %i.op, align 4, !tbaa !191
  %i.os = icmp slt i32 %i.oq, 2
  br i1 %i.os, label %bb.cg, label %JS_ToStringFree.exit448

bb.cg:                                            ; preds = %bb.cf
  call fastcc void @js_free_value_rt(ptr noundef %i.om, i64 %i.oj, i64 %i.ok) #51, !inline_history !666
  br label %JS_ToStringFree.exit448

JS_ToStringFree.exit448:                          ; preds = %.lr.ph, %bb.ce, %bb.cf, %bb.cg
  %.fca.1.insert.merged.i447 = phi { i64, i64 } [ %i.ol, %bb.cg ], [ %i.ol, %bb.ce ], [ %i.ol, %bb.cf ], [ %i.oi, %.lr.ph ] ; 2 uses
  %i.ot = extractvalue { i64, i64 } %.fca.1.insert.merged.i447, 0
  %i.ou = extractvalue { i64, i64 } %.fca.1.insert.merged.i447, 1 ; 2 uses
  %i.ov = and i64 %i.ou, 4294967295
  %i.ow = icmp eq i64 %i.ov, 6
  br i1 %i.ow, label %.thread500, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph, %JS_ToStringFree.exit448
  %.sroa.9.0 = phi i64 [ %i.ok, %.lr.ph ], [ %i.ou, %JS_ToStringFree.exit448 ]
  %.sroa.049.0 = phi i64 [ %i.oj, %.lr.ph ], [ %i.ot, %JS_ToStringFree.exit448 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.049.0, ptr %5, align 8
  store i64 %.sroa.9.0, ptr %i.kb, align 8
  %i.ox = call i32 @JS_DefinePropertyValueValue(ptr noundef nonnull %0, i64 %i.ob, i64 %i.oc, i64 %indvars.iv, i64 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %5, i32 noundef 16391), !inline_history !827
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.oy = icmp sgt i32 %i.ox, -1
  br i1 %i.oy, label %bb.ci, label %.thread500

bb.ci:                                            ; preds = %bb.ch
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1889

._crit_edge:                                      ; preds = %bb.ci, %.preheader
  %.0393.lcssa = phi i32 [ 1, %.preheader ], [ %storemerge.i.ph, %bb.ci ] ; 3 uses
  %i.oz = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.pa = trunc i64 %.sroa.12.0662 to i32
  %i.pb = icmp ugt i32 %i.pa, -10
  br i1 %i.pb, label %bb.cj, label %JS_FreeValue.exit450

bb.cj:                                            ; preds = %._crit_edge
  %i.pc = inttoptr i64 %.sroa.0173.0661 to ptr
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 -4 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !191 ; 2 uses
  %i.pf = add nsw i32 %i.pe, -1
  store i32 %i.pf, ptr %i.pd, align 4, !tbaa !191
  %i.pg = icmp slt i32 %i.pe, 2
  br i1 %i.pg, label %bb.ck, label %JS_FreeValue.exit450

bb.ck:                                            ; preds = %bb.cj
  call fastcc void @js_free_value_rt(ptr noundef %i.oz, i64 %.sroa.0173.0661, i64 %.sroa.12.0662), !inline_history !291
  br label %JS_FreeValue.exit450

JS_FreeValue.exit450:                             ; preds = %._crit_edge, %bb.cj, %bb.ck
  %i.ph = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef 145, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.pi = extractvalue { i64, i64 } %i.ph, 0      ; 10 uses
  %i.pj = extractvalue { i64, i64 } %i.ph, 1      ; 11 uses
  %i.pk = and i64 %i.pj, 4294967295               ; 3 uses
  %i.pl = icmp eq i64 %i.pk, 6
  br i1 %i.pl, label %.thread500, label %bb.cl

bb.cl:                                            ; preds = %JS_FreeValue.exit450
  br i1 %.0.i490, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  %i.pm = zext nneg i32 %.0393.lcssa to i64
  %i.pn = call i32 @JS_DefinePropertyValueInt64(ptr noundef nonnull %0, i64 %i.ob, i64 %i.oc, i64 noundef %i.pm, i64 %spec.select555, i64 0, i32 noundef 16391)
  %i.po = icmp slt i32 %i.pn, 0
  br i1 %i.po, label %.thread500, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pp = add nuw nsw i32 %.0393.lcssa, 1
  %i.pq = add nuw nsw i32 %.0393.lcssa, 2
  %i.pr = zext nneg i32 %i.pp to i64
  %i.ps = call fastcc i32 @JS_DefinePropertyValueInt64Const(ptr noundef nonnull %0, i64 %i.ob, i64 %i.oc, i64 noundef %i.pr, i64 %i.bz, i64 %i.ca)
  %i.pt = icmp slt i32 %i.ps, 0
  br i1 %i.pt, label %.thread500, label %bb.co
end_hunk_2
begin_hunk_3_@js_regexp_Symbol_match:bb.a
  br i1 %.not, label %JS_FreeValue.exit166.thread, label %bb.i

JS_FreeValue.exit166.thread:                      ; preds = %bb.h
  %i.ae = tail call fastcc { i64, i64 } @JS_RegExpExec(ptr noundef %0, i64 %1, i64 %2, i64 %i.i, i64 %i.j) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %.sroa.077.sroa.11.0.extract.shift110 = and i64 %i.af, -4294967296
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre229 = load ptr, ptr %i.ah, align 8, !tbaa !232
  br label %JS_FreeValue.exit167

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call fastcc i32 @string_indexof_char(ptr noundef %i.ac, i32 noundef 117, i32 noundef 0)
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call fastcc i32 @string_indexof_char(ptr noundef %i.ac, i32 noundef 118, i32 noundef 0)
  %i.al = icmp sgt i32 %i.ak, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = phi i1 [ true, %bb.i ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %1, ptr %7, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %i.an, align 8
  %i.ao = tail call fastcc i32 @JS_SetPropertyInternal2(ptr noundef %0, i64 %1, i64 %2, i32 noundef 93, i64 0, i64 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %JS_FreeValue.exit170.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !351 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !191
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !191
  %i.av = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef %0, ptr noundef %i.ar, i32 noundef 2, ptr noundef null), !inline_history !405 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0      ; 8 uses
  %i.ax = extractvalue { i64, i64 } %i.av, 1      ; 8 uses
  %.sroa.077.sroa.11.0.extract.shift = and i64 %i.aw, -4294967296
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, 6
  br i1 %i.az, label %.thread178, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = inttoptr i64 %i.i to ptr                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.thread ] ; 4 uses
  %.sroa.048.0 = phi i64 [ 0, %.preheader ], [ %i.bm, %.thread ] ; 2 uses
  %.sroa.11.0 = phi i64 [ 3, %.preheader ], [ %i.bn, %.thread ] ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.be = trunc i64 %.sroa.11.0 to i32
  %i.bf = icmp ugt i32 %i.be, -10
  br i1 %i.bf, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  %i.bg = inttoptr i64 %.sroa.048.0 to ptr
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !191 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !191
  %i.bk = icmp slt i32 %i.bi, 2
  br i1 %i.bk, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bd, i64 %.sroa.048.0, i64 %.sroa.11.0), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  %i.bl = tail call fastcc { i64, i64 } @JS_RegExpExec(ptr noundef nonnull %0, i64 %1, i64 %2, i64 %i.i, i64 %i.j) ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0      ; 10 uses
  %i.bn = extractvalue { i64, i64 } %i.bl, 1      ; 11 uses
  %trunc210 = trunc i64 %i.bn to i32
  switch i32 %trunc210, label %bb.p [
    i32 6, label %.thread178
    i32 2, label %bb.ah
  ]

bb.p:                                             ; preds = %JS_FreeValue.exit
  %i.bo = and i64 %i.bn, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.bp = icmp eq i64 %i.bo, 4294967295
  br i1 %i.bp, label %bb.q, label %.thread.i, !prof !325

bb.q:                                             ; preds = %bb.p
  %i.bq = inttoptr i64 %i.bm to ptr
  %i.br = call fastcc zeroext i1 @js_get_fast_array_element(ptr noundef nonnull %0, ptr noundef %i.bq, i32 noundef 0, ptr noundef nonnull %6) #51, !inline_history !825
  %.sroa.013.0.copyload.i = load i64, ptr %6, align 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.br, label %JS_GetPropertyInt64.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.q
  %i.bs = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.bm, i64 %i.bn, i32 noundef -2147483648, i64 %i.bm, i64 %i.bn, i1 noundef zeroext false) #51, !inline_history !826 ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1
  br label %JS_GetPropertyInt64.exit

JS_GetPropertyInt64.exit:                         ; preds = %bb.q, %.thread.i
  %.sroa.5.1.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.q ], [ %i.bu, %.thread.i ] ; 5 uses
  %.sroa.013.sroa.0.1.i = phi i64 [ %.sroa.013.0.copyload.i, %bb.q ], [ %i.bt, %.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.013.sroa.0.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.5.1.i, 1
  %i.bv = and i64 %.sroa.5.1.i, 4294967295
  %i.bw = icmp eq i64 %i.bv, 4294967289
  br i1 %i.bw, label %JS_ToStringFree.exit162, label %bb.r

bb.r:                                             ; preds = %JS_GetPropertyInt64.exit
  %i.bx = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %.sroa.013.sroa.0.1.i, i64 %.sroa.5.1.i, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.bz = trunc i64 %.sroa.5.1.i to i32
  %i.ca = icmp ugt i32 %i.bz, -10
  br i1 %i.ca, label %bb.s, label %JS_ToStringFree.exit162

bb.s:                                             ; preds = %bb.r
  %i.cb = inttoptr i64 %.sroa.013.sroa.0.1.i to ptr
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !191 ; 2 uses
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !191
  %i.cf = icmp slt i32 %i.cd, 2
  br i1 %i.cf, label %bb.t, label %JS_ToStringFree.exit162

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @js_free_value_rt(ptr noundef %i.by, i64 %.sroa.013.sroa.0.1.i, i64 %.sroa.5.1.i) #51, !inline_history !666
  br label %JS_ToStringFree.exit162

JS_ToStringFree.exit162:                          ; preds = %JS_GetPropertyInt64.exit, %bb.r, %bb.s, %bb.t
  %.fca.1.insert.merged.i161 = phi { i64, i64 } [ %i.bx, %bb.t ], [ %i.bx, %bb.r ], [ %i.bx, %bb.s ], [ %.fca.1.insert.i, %JS_GetPropertyInt64.exit ] ; 2 uses
  %i.cg = extractvalue { i64, i64 } %.fca.1.insert.merged.i161, 0 ; 3 uses
  %i.ch = extractvalue { i64, i64 } %.fca.1.insert.merged.i161, 1 ; 3 uses
  %trunc211 = trunc i64 %i.ch to i32
  switch i32 %trunc211, label %JS_IsEmptyString.exit.thread [
    i32 6, label %.thread178
    i32 -7, label %JS_IsEmptyString.exit
  ]

JS_IsEmptyString.exit:                            ; preds = %JS_ToStringFree.exit162
  %i.ci = inttoptr i64 %i.cg to ptr
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %i.aw, i64 %i.ax, i64 noundef %indvars.iv, i64 %i.cg, i64 %i.ch)
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %.thread178, label %bb.u

JS_IsEmptyString.exit.thread:                     ; preds = %JS_ToStringFree.exit162
  %i.cm = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %i.aw, i64 %i.ax, i64 noundef %indvars.iv, i64 %i.cg, i64 %i.ch)
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread178, label %.thread

bb.u:                                             ; preds = %JS_IsEmptyString.exit
  %i.co = and i64 %i.cj, 2147483647
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cq = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 93, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0      ; 4 uses
  %i.cs = extractvalue { i64, i64 } %i.cq, 1      ; 3 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = icmp ugt i32 %i.ct, -10                 ; 2 uses
  br i1 %i.cu, label %bb.w, label %js_dup.exit.i.i.preheader

bb.w:                                             ; preds = %bb.v
  %i.cv = inttoptr i64 %i.cr to ptr
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !191
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.w, %bb.v
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.aa
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.df, %bb.aa ], [ %i.cr, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.dg, %bb.aa ], [ %i.cs, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.cz = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.cz, label %bb.aa [
    i32 0, label %bb.x
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 6, label %JS_ToInt64Clamp.exit.i
    i32 8, label %bb.y
  ]

bb.x:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.da = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.db = ashr exact i64 %i.da, 32
  br label %select.unfold.i.i

bb.y:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %8 = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  %9 = fcmp olt double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %or.cond = or i1 %8, %9
  br i1 %or.cond, label %JS_ToInt64Clamp.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.dd = fptosi double %.sroa.012.0.le.i.i.i to i64
  br i1 %i.dc, label %select.unfold.i.i, label %JS_ToInt64Clamp.exit.i

bb.aa:                                            ; preds = %js_dup.exit.i.i
  %i.de = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !47 ; 2 uses
  %i.df = extractvalue { i64, i64 } %i.de, 0
  %i.dg = extractvalue { i64, i64 } %i.de, 1      ; 2 uses
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = icmp eq i64 %i.dh, 6
  br i1 %i.di, label %JS_ToInt64Clamp.exit.i, label %js_dup.exit.i.i

select.unfold.i.i:                                ; preds = %bb.z, %bb.x
  %.sink.i.ph.i.i = phi i64 [ %i.db, %bb.x ], [ %i.dd, %bb.z ] ; 2 uses
  %i.dj = icmp slt i64 %.sink.i.ph.i.i, 0
  br i1 %i.dj, label %JS_ToInt64Clamp.exit.i, label %.thread.i163

.thread.i163:                                     ; preds = %select.unfold.i.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.sink.i.ph.i.i, i64 9007199254740991)
  br label %JS_ToInt64Clamp.exit.i

JS_ToInt64Clamp.exit.i:                           ; preds = %js_dup.exit.i.i, %bb.aa, %.thread.i163, %bb.z, %bb.y, %select.unfold.i.i
  %.1 = phi i64 [ 0, %bb.y ], [ %spec.select, %.thread.i163 ], [ 9007199254740991, %bb.z ], [ 0, %select.unfold.i.i ], [ 0, %bb.aa ], [ 0, %js_dup.exit.i.i ] ; 3 uses
  %i.dk = phi i1 [ false, %bb.y ], [ false, %.thread.i163 ], [ false, %bb.z ], [ false, %select.unfold.i.i ], [ true, %bb.aa ], [ true, %js_dup.exit.i.i ]
  %i.dl = load ptr, ptr %i.ba, align 8, !tbaa !232
  br i1 %i.cu, label %bb.ab, label %JS_ToLengthFree.exit

bb.ab:                                            ; preds = %JS_ToInt64Clamp.exit.i
  %i.dm = inttoptr i64 %i.cr to ptr
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !191 ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !191
  %i.dq = icmp slt i32 %i.do, 2
  br i1 %i.dq, label %bb.ac, label %JS_ToLengthFree.exit

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dl, i64 %i.cr, i64 %i.cs), !inline_history !476
  br label %JS_ToLengthFree.exit

JS_ToLengthFree.exit:                             ; preds = %JS_ToInt64Clamp.exit.i, %bb.ab, %bb.ac
  br i1 %i.dk, label %.thread178, label %bb.ad

bb.ad:                                            ; preds = %JS_ToLengthFree.exit
  br i1 %i.am, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dr = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.ds = and i64 %i.dr, 2147483647
  %.not.i = icmp samesign uge i64 %.1, %i.ds
  %i.dt = and i64 %i.dr, 2147483648
  %.not8.i = icmp eq i64 %i.dt, 0
  %or.cond.i = or i1 %.not.i, %.not8.i
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.du = add nuw nsw i64 %.1, 1
  br label %string_advance_index.exit

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.dv = trunc nuw nsw i64 %.1 to i32
  store i32 %i.dv, ptr %i.a, align 4, !tbaa !191
  %i.dw = call fastcc i32 @string_getc(ptr noundef nonnull readonly %i.bb, ptr noundef %i.a) ; 0 uses
  %i.dx = load i32, ptr %i.a, align 4, !tbaa !191
  %i.dy = sext i32 %i.dx to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %string_advance_index.exit

string_advance_index.exit:                        ; preds = %bb.af, %bb.ag
  %.0.i = phi i64 [ %i.du, %bb.af ], [ %i.dy, %bb.ag ] ; 3 uses
  %or.cond.i164 = icmp slt i64 %.0.i, 2147483648  ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %.0.i, 4294967295
  %i.dz = sitofp i64 %.0.i to double
  %i.ea = bitcast double %i.dz to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %or.cond.i164, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.ea
  %.sroa.3.0.i = select i1 %or.cond.i164, i64 0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %i.bc, align 8
  %i.eb = tail call fastcc i32 @JS_SetPropertyInternal2(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 93, i64 %.sroa.0.0.insert.ext.i.pn.i, i64 %.sroa.3.0.i, ptr noundef nonnull byval(%struct.JSValue) align 8 %5, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %.thread178, label %.thread

.thread:                                          ; preds = %JS_IsEmptyString.exit.thread, %string_advance_index.exit, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.m

bb.ah:                                            ; preds = %JS_FreeValue.exit
  %i.ed = icmp eq i64 %indvars.iv, 0
  %.pre227 = load ptr, ptr %i.ba, align 8, !tbaa !232 ; 4 uses
  br i1 %i.ed, label %bb.ai, label %JS_FreeValue.exit167

bb.ai:                                            ; preds = %bb.ah
  %i.ee = trunc i64 %i.ax to i32
  %i.ef = icmp ugt i32 %i.ee, -10
  br i1 %i.ef, label %bb.aj, label %JS_FreeValue.exit167

bb.aj:                                            ; preds = %bb.ai
  %i.eg = inttoptr i64 %i.aw to ptr
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !191 ; 2 uses
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !191
  %i.ek = icmp slt i32 %i.ei, 2
  br i1 %i.ek, label %bb.ak, label %JS_FreeValue.exit167

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @js_free_value_rt(ptr noundef %.pre227, i64 %i.aw, i64 %i.ax), !inline_history !291
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !232
  br label %JS_FreeValue.exit167

JS_FreeValue.exit167:                             ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %JS_FreeValue.exit166.thread
  %i.el = phi ptr [ %.pre229, %JS_FreeValue.exit166.thread ], [ %.pre, %bb.ak ], [ %.pre227, %bb.ah ], [ %.pre227, %bb.ai ], [ %.pre227, %bb.aj ] ; 3 uses
  %i.em = phi ptr [ %i.ah, %JS_FreeValue.exit166.thread ], [ %i.ba, %bb.ak ], [ %i.ba, %bb.ah ], [ %i.ba, %bb.ai ], [ %i.ba, %bb.aj ]
  %.sroa.077.sroa.11.0187 = phi i64 [ %.sroa.077.sroa.11.0.extract.shift110, %JS_FreeValue.exit166.thread ], [ 0, %bb.ak ], [ %.sroa.077.sroa.11.0.extract.shift, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ]
  %.sroa.077.sroa.0.0186 = phi i64 [ %i.af, %JS_FreeValue.exit166.thread ], [ 0, %bb.ak ], [ %i.aw, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ]
  %.sroa.13.0185 = phi i64 [ %i.ag, %JS_FreeValue.exit166.thread ], [ 2, %bb.ak ], [ %i.ax, %bb.ah ], [ 2, %bb.ai ], [ 2, %bb.aj ]
  %i.en = trunc i64 %i.z to i32
  %i.eo = icmp ugt i32 %i.en, -10
  br i1 %i.eo, label %bb.al, label %JS_FreeValue.exit168

bb.al:                                            ; preds = %JS_FreeValue.exit167
  %i.ep = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !191 ; 2 uses
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !191
  %i.es = icmp slt i32 %i.eq, 2
  br i1 %i.es, label %bb.am, label %JS_FreeValue.exit168

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @js_free_value_rt(ptr noundef %i.el, i64 %i.y, i64 %i.z), !inline_history !291
  %.pre230 = load ptr, ptr %i.em, align 8, !tbaa !232
  br label %JS_FreeValue.exit168

JS_FreeValue.exit168:                             ; preds = %JS_FreeValue.exit167, %bb.al, %bb.am
  %i.et = phi ptr [ %i.el, %JS_FreeValue.exit167 ], [ %i.el, %bb.al ], [ %.pre230, %bb.am ]
  %i.eu = trunc i64 %i.j to i32
  %i.ev = icmp ugt i32 %i.eu, -10
  br i1 %i.ev, label %bb.an, label %JS_FreeValue.exit169

bb.an:                                            ; preds = %JS_FreeValue.exit168
  %i.ew = inttoptr i64 %i.i to ptr
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !191 ; 2 uses
  %i.ez = add nsw i32 %i.ey, -1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !191
  %i.fa = icmp slt i32 %i.ey, 2
  br i1 %i.fa, label %bb.ao, label %JS_FreeValue.exit169

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @js_free_value_rt(ptr noundef %i.et, i64 %i.i, i64 %i.j), !inline_history !291
  br label %JS_FreeValue.exit169

JS_FreeValue.exit169:                             ; preds = %JS_FreeValue.exit168, %bb.an, %bb.ao
  %i.fb = and i64 %.sroa.077.sroa.0.0186, 4294967295
  %i.fc = or disjoint i64 %i.fb, %.sroa.077.sroa.11.0187
  br label %JS_FreeValue.exit173

JS_FreeValue.exit170.thread:                      ; preds = %bb.d, %bb.k, %JS_ToStringFree.exit, %bb.c
  %.sroa.059.0.ph = phi i64 [ %i.y, %bb.k ], [ %i.y, %JS_ToStringFree.exit ], [ %i.n, %bb.d ], [ 0, %bb.c ]
  %.sroa.12.0.ph = phi i64 [ %i.z, %bb.k ], [ %i.z, %JS_ToStringFree.exit ], [ %i.o, %bb.d ], [ 3, %bb.c ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit171

.thread178:                                       ; preds = %JS_ToStringFree.exit162, %JS_FreeValue.exit, %string_advance_index.exit, %JS_ToLengthFree.exit, %JS_IsEmptyString.exit.thread, %JS_IsEmptyString.exit, %bb.l
  %.sroa.048.2 = phi i64 [ 0, %bb.l ], [ %i.bm, %JS_IsEmptyString.exit ], [ %i.bm, %JS_IsEmptyString.exit.thread ], [ %i.bm, %JS_ToLengthFree.exit ], [ %i.bm, %string_advance_index.exit ], [ %i.bm, %JS_FreeValue.exit ], [ %i.bm, %JS_ToStringFree.exit162 ] ; 2 uses
  %.sroa.11.2 = phi i64 [ 3, %bb.l ], [ %i.bn, %JS_IsEmptyString.exit ], [ %i.bn, %JS_IsEmptyString.exit.thread ], [ %i.bn, %JS_ToLengthFree.exit ], [ %i.bn, %string_advance_index.exit ], [ %i.bn, %JS_FreeValue.exit ], [ %i.bn, %JS_ToStringFree.exit162 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !232 ; 3 uses
  %i.fg = trunc i64 %i.ax to i32
  %i.fh = icmp ugt i32 %i.fg, -10
  br i1 %i.fh, label %bb.ap, label %JS_FreeValue.exit170

bb.ap:                                            ; preds = %.thread178
  %i.fi = inttoptr i64 %i.aw to ptr
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !191 ; 2 uses
  %i.fl = add nsw i32 %i.fk, -1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !191
  %i.fm = icmp slt i32 %i.fk, 2
  br i1 %i.fm, label %bb.aq, label %JS_FreeValue.exit170

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ff, i64 %i.aw, i64 %i.ax), !inline_history !291
  %.pre228 = load ptr, ptr %i.fe, align 8, !tbaa !232
  br label %JS_FreeValue.exit170

JS_FreeValue.exit170:                             ; preds = %.thread178, %bb.ap, %bb.aq
  %i.fn = phi ptr [ %i.ff, %.thread178 ], [ %i.ff, %bb.ap ], [ %.pre228, %bb.aq ]
  %i.fo = trunc i64 %.sroa.11.2 to i32
  %i.fp = icmp ugt i32 %i.fo, -10
  br i1 %i.fp, label %bb.ar, label %JS_FreeValue.exit171

bb.ar:                                            ; preds = %JS_FreeValue.exit170
  %i.fq = inttoptr i64 %.sroa.048.2 to ptr
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !191 ; 2 uses
  %i.ft = add nsw i32 %i.fs, -1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !191
  %i.fu = icmp slt i32 %i.fs, 2
  br i1 %i.fu, label %bb.as, label %JS_FreeValue.exit171

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fn, i64 %.sroa.048.2, i64 %.sroa.11.2), !inline_history !291
  br label %JS_FreeValue.exit171

JS_FreeValue.exit171:                             ; preds = %JS_FreeValue.exit170.thread, %JS_FreeValue.exit170, %bb.ar, %bb.as
  %.sroa.059.0202209 = phi i64 [ %.sroa.059.0.ph, %JS_FreeValue.exit170.thread ], [ %i.y, %JS_FreeValue.exit170 ], [ %i.y, %bb.ar ], [ %i.y, %bb.as ] ; 2 uses
  %.sroa.12.0203208 = phi i64 [ %.sroa.12.0.ph, %JS_FreeValue.exit170.thread ], [ %i.z, %JS_FreeValue.exit170 ], [ %i.z, %bb.ar ], [ %i.z, %bb.as ] ; 2 uses
  %i.fv = phi ptr [ %i.fd, %JS_FreeValue.exit170.thread ], [ %i.fe, %JS_FreeValue.exit170 ], [ %i.fe, %bb.ar ], [ %i.fe, %bb.as ] ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !232 ; 3 uses
  %i.fx = trunc i64 %.sroa.12.0203208 to i32
  %i.fy = icmp ugt i32 %i.fx, -10
  br i1 %i.fy, label %bb.at, label %JS_FreeValue.exit172

bb.at:                                            ; preds = %JS_FreeValue.exit171
  %i.fz = inttoptr i64 %.sroa.059.0202209 to ptr
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !191 ; 2 uses
  %i.gc = add nsw i32 %i.gb, -1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !191
  %i.gd = icmp slt i32 %i.gb, 2
  br i1 %i.gd, label %bb.au, label %JS_FreeValue.exit172

bb.au:                                            ; preds = %bb.at
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fw, i64 %.sroa.059.0202209, i64 %.sroa.12.0203208), !inline_history !291
  %.pre231 = load ptr, ptr %i.fv, align 8, !tbaa !232
  br label %JS_FreeValue.exit172

JS_FreeValue.exit172:                             ; preds = %JS_FreeValue.exit171, %bb.at, %bb.au
  %i.ge = phi ptr [ %i.fw, %JS_FreeValue.exit171 ], [ %i.fw, %bb.at ], [ %.pre231, %bb.au ]
  %i.gf = trunc i64 %i.j to i32
  %i.gg = icmp ugt i32 %i.gf, -10
  br i1 %i.gg, label %bb.av, label %JS_FreeValue.exit173

bb.av:                                            ; preds = %JS_FreeValue.exit172
  %i.gh = inttoptr i64 %i.i to ptr
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -4 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !191 ; 2 uses
  %i.gk = add nsw i32 %i.gj, -1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !191
  %i.gl = icmp slt i32 %i.gj, 2
  br i1 %i.gl, label %bb.aw, label %JS_FreeValue.exit173

bb.aw:                                            ; preds = %bb.av
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ge, i64 %i.i, i64 %i.j), !inline_history !291
  br label %JS_FreeValue.exit173

JS_FreeValue.exit173:                             ; preds = %bb.aw, %bb.av, %JS_FreeValue.exit172, %JS_FreeValue.exit169, %bb.b
  %.sroa.4157.0 = phi i64 [ 0, %bb.b ], [ %i.fc, %JS_FreeValue.exit169 ], [ 0, %JS_FreeValue.exit172 ], [ 0, %bb.av ], [ 0, %bb.aw ]
  %.sroa.5.0 = phi i64 [ 6, %bb.b ], [ %.sroa.13.0185, %JS_FreeValue.exit169 ], [ 6, %JS_FreeValue.exit172 ], [ 6, %bb.av ], [ 6, %bb.aw ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.4157.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_regexp_Symbol_matchAll(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 5 uses
  %6 = alloca [2 x %struct.JSValue], align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %JS_FreeValue.exit145

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.d, i64 %i.f, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 4 uses
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call fastcc { i64, i64 } @JS_SpeciesConstructor(ptr noundef %0, i64 %1, i64 %2, i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 11 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 12 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 6
  br i1 %i.t, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 117, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 3 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 3 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 4 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 4294967289
  br i1 %i.y, label %JS_ToStringFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %i.v, i64 %i.w, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !232
  %i.ac = trunc i64 %i.w to i32
  %i.ad = icmp ugt i32 %i.ac, -10
  br i1 %i.ad, label %bb.g, label %JS_ToStringFree.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = inttoptr i64 %i.v to ptr
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.h, label %JS_ToStringFree.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ab, i64 %i.v, i64 %i.w) #51, !inline_history !666
  br label %JS_ToStringFree.exit

JS_ToStringFree.exit:                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.fca.1.insert.merged.i = phi { i64, i64 } [ %i.z, %bb.h ], [ %i.z, %bb.f ], [ %i.z, %bb.g ], [ %i.u, %bb.e ] ; 2 uses
  %i.aj = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 0 ; 9 uses
  %i.ak = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 1 ; 10 uses
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 6
  br i1 %i.am, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %JS_ToStringFree.exit
  store i64 %1, ptr %6, align 16, !tbaa !218
  %.sroa.8.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.8.0..sroa_idx110, align 8, !tbaa !240
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.aj, ptr %i.an, align 16, !tbaa !218
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.ak, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240
  %i.ao = call fastcc { i64, i64 } @JS_CallConstructorInternal(ptr noundef nonnull %0, i64 %i.q, i64 %i.r, i64 %i.q, i64 %i.r, i32 noundef 2, ptr noundef nonnull %6, i32 noundef 2), !inline_history !683 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0      ; 9 uses
  %i.aq = extractvalue { i64, i64 } %i.ao, 1      ; 9 uses
  %.sroa.060.sroa.8.0.extract.shift = lshr i64 %i.ap, 32 ; 5 uses
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = icmp eq i64 %i.ar, 6
  br i1 %i.as, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 93, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 4 uses
  %i.av = extractvalue { i64, i64 } %i.at, 1      ; 3 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp ugt i32 %i.aw, -10                 ; 2 uses
  br i1 %i.ax, label %bb.k, label %js_dup.exit.i.i.preheader

bb.k:                                             ; preds = %bb.j
  %i.ay = inttoptr i64 %i.au to ptr
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !191
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.k, %bb.j
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.o
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.bi, %bb.o ], [ %i.au, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.bj, %bb.o ], [ %i.av, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.bc = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.bc, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 6, label %JS_ToInt64Clamp.exit.i
    i32 8, label %bb.m
  ]

bb.l:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.bd = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.be = ashr exact i64 %i.bd, 32
  br label %select.unfold.i.i

bb.m:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %7 = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  %8 = fcmp olt double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %JS_ToInt64Clamp.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.bg = fptosi double %.sroa.012.0.le.i.i.i to i64
  br i1 %i.bf, label %select.unfold.i.i, label %JS_ToInt64Clamp.exit.i

bb.o:                                             ; preds = %js_dup.exit.i.i
  %i.bh = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !47 ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0
  %i.bj = extractvalue { i64, i64 } %i.bh, 1      ; 2 uses
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = icmp eq i64 %i.bk, 6
  br i1 %i.bl, label %JS_ToInt64Clamp.exit.i, label %js_dup.exit.i.i

select.unfold.i.i:                                ; preds = %bb.n, %bb.l
  %.sink.i.ph.i.i = phi i64 [ %i.be, %bb.l ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bm = icmp slt i64 %.sink.i.ph.i.i, 0
  br i1 %i.bm, label %JS_ToInt64Clamp.exit.i, label %.thread.i

.thread.i:                                        ; preds = %select.unfold.i.i
  %spec.select = call i64 @llvm.umin.i64(i64 %.sink.i.ph.i.i, i64 9007199254740991)
  br label %JS_ToInt64Clamp.exit.i

JS_ToInt64Clamp.exit.i:                           ; preds = %js_dup.exit.i.i, %bb.o, %.thread.i, %bb.n, %bb.m, %select.unfold.i.i
  %.1 = phi i64 [ 0, %bb.m ], [ %spec.select, %.thread.i ], [ 9007199254740991, %bb.n ], [ 0, %select.unfold.i.i ], [ 0, %bb.o ], [ 0, %js_dup.exit.i.i ] ; 3 uses
  %.not = phi i1 [ true, %bb.m ], [ true, %.thread.i ], [ true, %bb.n ], [ true, %select.unfold.i.i ], [ false, %bb.o ], [ false, %js_dup.exit.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !232
  br i1 %i.ax, label %bb.p, label %JS_ToLengthFree.exit

bb.p:                                             ; preds = %JS_ToInt64Clamp.exit.i
  %i.bp = inttoptr i64 %i.au to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !191 ; 2 uses
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !191
  %i.bt = icmp slt i32 %i.br, 2
  br i1 %i.bt, label %bb.q, label %JS_ToLengthFree.exit

bb.q:                                             ; preds = %bb.p
  call fastcc void @js_free_value_rt(ptr noundef %i.bo, i64 %i.au, i64 %i.av), !inline_history !476
  br label %JS_ToLengthFree.exit

JS_ToLengthFree.exit:                             ; preds = %JS_ToInt64Clamp.exit.i, %bb.p, %bb.q
  br i1 %.not, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %JS_ToLengthFree.exit
  %or.cond.i = icmp samesign ult i64 %.1, 2147483648 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %.1, 4294967295
  %i.bu = uitofp nneg i64 %.1 to double
  %i.bv = bitcast double %i.bu to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %or.cond.i, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.bv
  %.sroa.3.0.i = select i1 %or.cond.i, i64 0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.ap, ptr %5, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aq, ptr %i.bw, align 8
  %i.bx = call fastcc i32 @JS_SetPropertyInternal2(ptr noundef nonnull %0, i64 %i.ap, i64 %i.aq, i32 noundef 93, i64 %.sroa.0.0.insert.ext.i.pn.i, i64 %.sroa.3.0.i, ptr noundef nonnull byval(%struct.JSValue) align 8 %5, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = call { i64, i64 } @JS_NewObjectClass(ptr noundef nonnull %0, i32 noundef 48) ; 2 uses
  %i.ca = extractvalue { i64, i64 } %i.bz, 0      ; 7 uses
  %i.cb = extractvalue { i64, i64 } %i.bz, 1      ; 6 uses
  %.sroa.034.sroa.8.0.extract.shift = lshr i64 %i.ca, 32 ; 2 uses
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 6
  br i1 %i.cd, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = call ptr @js_malloc(ptr noundef nonnull %0, i64 noundef 40) ; 9 uses
  %.not142 = icmp eq ptr %i.ce, null
  br i1 %.not142, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 %i.ap, ptr %i.ce, align 8, !tbaa !218
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.aq, ptr %.sroa.963.0..sroa_idx, align 8, !tbaa !240
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 %i.h, ptr %i.cf, align 8, !tbaa !218
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  %i.cg = inttoptr i64 %i.aj to ptr               ; 4 uses
  %i.ch = call fastcc i32 @string_indexof_char(ptr noundef %i.cg, i32 noundef 103, i32 noundef 0)
  %i.ci = icmp sgt i32 %i.ch, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ck = zext i1 %i.ci to i8
  store i8 %i.ck, ptr %i.cj, align 8, !tbaa !829
  %i.cl = call fastcc i32 @string_indexof_char(ptr noundef %i.cg, i32 noundef 117, i32 noundef 0)
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cn = call fastcc i32 @string_indexof_char(ptr noundef %i.cg, i32 noundef 118, i32 noundef 0)
  %i.co = icmp sgt i32 %i.cn, -1
  %i.cp = zext i1 %i.co to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cq = phi i8 [ 1, %bb.u ], [ %i.cp, %bb.v ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 33
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !830
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 36
  store i32 0, ptr %i.cs, align 4, !tbaa !831
  %i.ct = inttoptr i64 %i.ca to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  store ptr %i.ce, ptr %i.cu, align 8, !tbaa !218
  %i.cv = load ptr, ptr %i.bn, align 8, !tbaa !232 ; 3 uses
  %i.cw = trunc i64 %i.r to i32
  %i.cx = icmp ugt i32 %i.cw, -10
  br i1 %i.cx, label %bb.x, label %JS_FreeValue.exit

bb.x:                                             ; preds = %bb.w
  %i.cy = inttoptr i64 %i.q to ptr
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !191 ; 2 uses
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !191
  %i.dc = icmp slt i32 %i.da, 2
  br i1 %i.dc, label %bb.y, label %JS_FreeValue.exit

bb.y:                                             ; preds = %bb.x
  call fastcc void @js_free_value_rt(ptr noundef %i.cv, i64 %i.q, i64 %i.r), !inline_history !291
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.w, %bb.x, %bb.y
  %i.dd = phi ptr [ %i.cv, %bb.w ], [ %i.cv, %bb.x ], [ %.pre, %bb.y ]
  %i.de = trunc i64 %i.ak to i32
  %i.df = icmp ugt i32 %i.de, -10
  br i1 %i.df, label %bb.z, label %JS_FreeValue.exit145

bb.z:                                             ; preds = %JS_FreeValue.exit
  %i.dg = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !191 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !191
  %i.dj = icmp slt i32 %i.dh, 2
  br i1 %i.dj, label %bb.aa, label %JS_FreeValue.exit145

bb.aa:                                            ; preds = %bb.z
  call fastcc void @js_free_value_rt(ptr noundef %i.dd, i64 %i.aj, i64 %i.ak), !inline_history !291
  br label %JS_FreeValue.exit145

bb.ab:                                            ; preds = %bb.t, %bb.s, %bb.r, %JS_ToLengthFree.exit, %bb.i, %JS_ToStringFree.exit, %bb.d, %bb.c
  %.sroa.087.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.aj, %JS_ToStringFree.exit ], [ %i.aj, %bb.i ], [ %i.aj, %bb.r ], [ %i.aj, %bb.s ], [ %i.aj, %bb.t ], [ %i.aj, %JS_ToLengthFree.exit ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 3, %bb.c ], [ 3, %bb.d ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.i ], [ 3, %bb.r ], [ %i.cb, %bb.s ], [ %i.cb, %bb.t ], [ 3, %JS_ToLengthFree.exit ] ; 2 uses
  %.sroa.034.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.i ], [ 0, %bb.r ], [ %i.ca, %bb.s ], [ %i.ca, %bb.t ], [ 0, %JS_ToLengthFree.exit ]
  %.sroa.034.sroa.8.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.i ], [ 0, %bb.r ], [ %.sroa.034.sroa.8.0.extract.shift, %bb.s ], [ %.sroa.034.sroa.8.0.extract.shift, %bb.t ], [ 0, %JS_ToLengthFree.exit ]
  %.sroa.963.0 = phi i64 [ 3, %bb.c ], [ 3, %bb.d ], [ 3, %JS_ToStringFree.exit ], [ %i.aq, %bb.i ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ], [ %i.aq, %bb.t ], [ %i.aq, %JS_ToLengthFree.exit ] ; 2 uses
  %.sroa.060.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %JS_ToStringFree.exit ], [ %i.ap, %bb.i ], [ %i.ap, %bb.r ], [ %i.ap, %bb.s ], [ %i.ap, %bb.t ], [ %i.ap, %JS_ToLengthFree.exit ]
  %.sroa.060.sroa.8.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %JS_ToStringFree.exit ], [ %.sroa.060.sroa.8.0.extract.shift, %bb.i ], [ %.sroa.060.sroa.8.0.extract.shift, %bb.r ], [ %.sroa.060.sroa.8.0.extract.shift, %bb.s ], [ %.sroa.060.sroa.8.0.extract.shift, %bb.t ], [ %.sroa.060.sroa.8.0.extract.shift, %JS_ToLengthFree.exit ]
  %.sroa.10.0 = phi i64 [ 3, %bb.c ], [ 3, %bb.d ], [ %i.ak, %JS_ToStringFree.exit ], [ %i.ak, %bb.i ], [ %i.ak, %bb.r ], [ %i.ak, %bb.s ], [ %i.ak, %bb.t ], [ %i.ak, %JS_ToLengthFree.exit ] ; 2 uses
  %.sroa.094.0 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %JS_ToStringFree.exit ], [ %i.q, %bb.i ], [ %i.q, %bb.r ], [ %i.q, %bb.s ], [ %i.q, %bb.t ], [ %i.q, %JS_ToLengthFree.exit ] ; 2 uses
  %.sroa.998.0 = phi i64 [ 3, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %JS_ToStringFree.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.r ], [ %i.r, %bb.s ], [ %i.r, %bb.t ], [ %i.r, %JS_ToLengthFree.exit ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !232 ; 3 uses
  %i.dm = trunc i64 %i.i to i32
  %i.dn = icmp ugt i32 %i.dm, -10
  br i1 %i.dn, label %bb.ac, label %JS_FreeValue.exit146

bb.ac:                                            ; preds = %bb.ab
  %i.do = inttoptr i64 %i.h to ptr
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -4 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !191 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !191
  %i.ds = icmp slt i32 %i.dq, 2
  br i1 %i.ds, label %bb.ad, label %JS_FreeValue.exit146

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @js_free_value_rt(ptr noundef %i.dl, i64 %i.h, i64 %i.i), !inline_history !291
  %.pre159 = load ptr, ptr %i.dk, align 8, !tbaa !232
  br label %JS_FreeValue.exit146

JS_FreeValue.exit146:                             ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.dt = phi ptr [ %i.dl, %bb.ab ], [ %i.dl, %bb.ac ], [ %.pre159, %bb.ad ] ; 3 uses
  %i.du = trunc i64 %.sroa.998.0 to i32
  %i.dv = icmp ugt i32 %i.du, -10
  br i1 %i.dv, label %bb.ae, label %JS_FreeValue.exit147

bb.ae:                                            ; preds = %JS_FreeValue.exit146
  %i.dw = inttoptr i64 %.sroa.094.0 to ptr
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !191 ; 2 uses
  %i.dz = add nsw i32 %i.dy, -1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !191
  %i.ea = icmp slt i32 %i.dy, 2
  br i1 %i.ea, label %bb.af, label %JS_FreeValue.exit147

bb.af:                                            ; preds = %bb.ae
  call fastcc void @js_free_value_rt(ptr noundef %i.dt, i64 %.sroa.094.0, i64 %.sroa.998.0), !inline_history !291
  %.pre160 = load ptr, ptr %i.dk, align 8, !tbaa !232
  br label %JS_FreeValue.exit147

JS_FreeValue.exit147:                             ; preds = %JS_FreeValue.exit146, %bb.ae, %bb.af
  %i.eb = phi ptr [ %i.dt, %JS_FreeValue.exit146 ], [ %i.dt, %bb.ae ], [ %.pre160, %bb.af ] ; 3 uses
end_hunk_3
begin_hunk_4_@JS_RegExpDelete:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i118 = phi ptr [ %i.ag, %bb.d ], [ %i.ae, %bb.c ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i118, i64 38 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !221 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i118, i64 40
  %i.ak = zext i16 %i.ai to i64
  %i.al = mul nuw nsw i64 %i.ak, 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 9 uses
  %i.an = load i16, ptr %i.am, align 8, !tbaa !218
  store i16 %i.an, ptr %i.ah, align 2, !tbaa !221
  store i16 %i.ai, ptr %i.am, align 8, !tbaa !218
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i118, i64 34 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !221
  %i.aq = add i16 %i.ap, 1                        ; 2 uses
  store i16 %i.aq, ptr %i.ao, align 2, !tbaa !221
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i118, i64 36
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !221
  %i.at = icmp eq i16 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %bb.g, !prof !192

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %.0.i118, align 8, !tbaa !223 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i118, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !222 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !222
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i118, i8 0, i64 16, i1 false)
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !232
  br label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.u, align 8, !tbaa !217
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.u, align 8, !tbaa !217
  %i.bb = load i16, ptr %i.am, align 8, !tbaa !218
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 1064
  %i.be = icmp eq ptr %i.am, %i.bd
  br i1 %i.be, label %js_alloc_string.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !219
  %i.bh = tail call i64 %i.bg(ptr noundef nonnull %i.am) #49, !inline_history !105 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.bh, 0
  %i.bi = select i1 %.not15.i.i.i.i.i, i64 8, i64 %i.bh
  br label %js_alloc_string.exit.i

bb.j:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !218
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !221
  %i.bo = zext i16 %i.bn to i64
  br label %js_alloc_string.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i, %js_get_regexp.exit
  %i.bp = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.t, %js_get_regexp.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1256 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !233, !range !234, !noundef !235
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bq, align 8, !tbaa !233
  %i.bt = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !106 ; 0 uses
  store i8 0, ptr %i.bq, align 8, !tbaa !233
  br label %bb.m

js_alloc_string.exit.i:                           ; preds = %bb.j, %bb.i, %bb.h
  %.011.i.i.i.i.i = phi i64 [ 8, %bb.h ], [ %i.bi, %bb.i ], [ %i.bo, %bb.j ]
  %i.bu = load i64, ptr %i.v, align 8, !tbaa !196
  %i.bv = add i64 %i.bu, %.011.i.i.i.i.i
  store i64 %i.bv, ptr %i.v, align 8, !tbaa !196
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 1, ptr %i.bw, align 4, !tbaa !191
  store i64 0, ptr %i.ay, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 0, ptr %i.bx, align 8, !tbaa !249
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ay, ptr %i.by, align 8, !tbaa !649
  br label %string_buffer_init.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !649
  store i32 0, ptr %i.p, align 4, !tbaa !645
  store i32 -1, ptr %i.r, align 4, !tbaa !648
  br label %string_buffer_init.exit

string_buffer_init.exit:                          ; preds = %js_alloc_string.exit.i, %bb.m
  %i.ca = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %3, i64 %4, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.cb = extractvalue { i64, i64 } %i.ca, 0      ; 4 uses
  %i.cc = extractvalue { i64, i64 } %i.ca, 1      ; 5 uses
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = icmp eq i64 %i.cd, 6
  br i1 %i.ce, label %js_malloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %string_buffer_init.exit
  %i.cf = inttoptr i64 %i.cb to ptr               ; 15 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !652 ; 5 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = lshr i64 %i.ci, 60
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = and i32 %i.ck, 3
  switch i32 %i.cl, label %default.unreachable [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  br label %str8.exit

bb.p:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !389
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !390
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cs
  br label %str8.exit

bb.q:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !239
  br label %str8.exit

default.unreachable:                              ; preds = %bb.ak, %bb.n
  unreachable

bb.r:                                             ; preds = %bb.n
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.o, %bb.p, %bb.q
  %.0.i.i112 = phi ptr [ %i.cm, %bb.o ], [ %i.ct, %bb.p ], [ %i.cv, %bb.q ] ; 6 uses
  %i.cw = tail call i32 @lre_get_flags(ptr noundef %.0.i.i112) #49
  %.fr169 = freeze i32 %i.cw                      ; 3 uses
  %i.cx = and i32 %.fr169, 33
  %i.cy = icmp eq i32 %i.cx, 0                    ; 2 uses
  br i1 %i.cy, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %str8.exit
  %i.cz = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 93, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.da = extractvalue { i64, i64 } %i.cz, 0      ; 4 uses
  %i.db = extractvalue { i64, i64 } %i.cz, 1      ; 4 uses
  %i.dc = and i64 %i.db, 4294967295
  %i.dd = icmp eq i64 %i.dc, 6
  br i1 %i.dd, label %js_malloc.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = trunc i64 %i.db to i32
  %i.df = icmp ugt i32 %i.de, -10                 ; 2 uses
  br i1 %i.df, label %bb.u, label %js_dup.exit.i.i.preheader

bb.u:                                             ; preds = %bb.t
  %i.dg = inttoptr i64 %i.da to ptr
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !191
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.u, %bb.t
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.y
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.dq, %bb.y ], [ %i.da, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.dr, %bb.y ], [ %i.db, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.dk = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.dk, label %bb.y [
    i32 0, label %bb.v
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.v
    i32 6, label %JS_ToInt64Clamp.exit.i
    i32 8, label %bb.w
  ]

bb.v:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.dl = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.dm = ashr exact i64 %i.dl, 32
  br label %select.unfold.i.i

bb.w:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %8 = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  %9 = fcmp olt double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %or.cond131 = or i1 %8, %9
  br i1 %or.cond131, label %JS_ToInt64Clamp.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.do = fptosi double %.sroa.012.0.le.i.i.i to i64
  br i1 %i.dn, label %select.unfold.i.i, label %JS_ToInt64Clamp.exit.i

bb.y:                                             ; preds = %js_dup.exit.i.i
  %i.dp = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !47 ; 2 uses
  %i.dq = extractvalue { i64, i64 } %i.dp, 0
  %i.dr = extractvalue { i64, i64 } %i.dp, 1      ; 2 uses
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = icmp eq i64 %i.ds, 6
  br i1 %i.dt, label %JS_ToInt64Clamp.exit.i, label %js_dup.exit.i.i

select.unfold.i.i:                                ; preds = %bb.x, %bb.v
  %.sink.i.ph.i.i = phi i64 [ %i.dm, %bb.v ], [ %i.do, %bb.x ] ; 2 uses
  %i.du = icmp slt i64 %.sink.i.ph.i.i, 0
  br i1 %i.du, label %JS_ToInt64Clamp.exit.i, label %.thread.i

.thread.i:                                        ; preds = %select.unfold.i.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.sink.i.ph.i.i, i64 9007199254740991)
  br label %JS_ToInt64Clamp.exit.i

JS_ToInt64Clamp.exit.i:                           ; preds = %js_dup.exit.i.i, %bb.y, %.thread.i, %bb.x, %bb.w, %select.unfold.i.i
  %.3 = phi i64 [ 0, %bb.w ], [ %spec.select, %.thread.i ], [ 9007199254740991, %bb.x ], [ 0, %select.unfold.i.i ], [ 0, %bb.y ], [ 0, %js_dup.exit.i.i ]
  %.not101 = phi i1 [ true, %bb.w ], [ true, %.thread.i ], [ true, %bb.x ], [ true, %select.unfold.i.i ], [ false, %bb.y ], [ false, %js_dup.exit.i.i ]
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !232
  br i1 %i.df, label %bb.z, label %JS_ToLengthFree.exit

bb.z:                                             ; preds = %JS_ToInt64Clamp.exit.i
  %i.dw = inttoptr i64 %i.da to ptr
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !191 ; 2 uses
  %i.dz = add nsw i32 %i.dy, -1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !191
  %i.ea = icmp slt i32 %i.dy, 2
  br i1 %i.ea, label %bb.aa, label %JS_ToLengthFree.exit

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dv, i64 %i.da, i64 %i.db), !inline_history !476
  br label %JS_ToLengthFree.exit

JS_ToLengthFree.exit:                             ; preds = %JS_ToInt64Clamp.exit.i, %bb.z, %bb.aa
  br i1 %.not101, label %bb.ab, label %js_malloc.exit.thread

bb.ab:                                            ; preds = %str8.exit, %JS_ToLengthFree.exit
  %.0120 = phi i64 [ %.3, %JS_ToLengthFree.exit ], [ 0, %str8.exit ] ; 4 uses
  %i.eb = tail call i32 @lre_get_alloc_count(ptr noundef %.0.i.i112) #49 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.ed = zext nneg i32 %i.eb to i64
  %i.ee = shl nuw nsw i64 %i.ed, 3                ; 2 uses
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !232 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !196
  %i.ej = add i64 %i.ei, %i.ee
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !197
  %i.em = add i64 %i.el, -1
  %i.en = icmp ugt i64 %i.ej, %i.em
  br i1 %i.en, label %bb.ai, label %bb.ad, !prof !192

bb.ad:                                            ; preds = %bb.ac
  %i.eo = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ef, i64 noundef %i.ee), !inline_history !237 ; 4 uses
  %.not.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.ae

._crit_edge.i:                                    ; preds = %bb.ad
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !232
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load i64, ptr %i.eg, align 8, !tbaa !217
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.eg, align 8, !tbaa !217
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 3 uses
  %i.es = load i16, ptr %i.er, align 8, !tbaa !218
  %i.et = icmp eq i16 %i.es, -1
  br i1 %i.et, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 1064
  %i.ev = icmp eq ptr %i.er, %i.eu
  br i1 %i.ev, label %js_malloc.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !219
  %i.ey = tail call i64 %i.ex(ptr noundef nonnull %i.er) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ey, 0
  %i.ez = select i1 %.not15.i.i.i, i64 8, i64 %i.ey
  br label %js_malloc.exit

bb.ah:                                            ; preds = %bb.ae
  %i.fa = getelementptr inbounds i8, ptr %i.eo, i64 -6
  %i.fb = load i8, ptr %i.fa, align 2, !tbaa !218
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !221
  %i.ff = zext i16 %i.fe to i64
  br label %js_malloc.exit

bb.ai:                                            ; preds = %._crit_edge.i, %bb.ac
  %i.fg = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ef, %bb.ac ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1256 ; 3 uses
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !233, !range !234, !noundef !235
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %js_malloc.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 1, ptr %i.fh, align 8, !tbaa !233
  %i.fk = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.fh, align 8, !tbaa !233
  br label %js_malloc.exit.thread

js_malloc.exit:                                   ; preds = %bb.af, %bb.ag, %bb.ah
  %.011.i.i.i = phi i64 [ 8, %bb.af ], [ %i.ez, %bb.ag ], [ %i.ff, %bb.ah ]
  %i.fl = load i64, ptr %i.eh, align 8, !tbaa !196
  %i.fm = add i64 %i.fl, %.011.i.i.i
  store i64 %i.fm, ptr %i.eh, align 8, !tbaa !196
  br label %bb.ak

bb.ak:                                            ; preds = %js_malloc.exit, %bb.ab
  %.0 = phi ptr [ %i.eo, %js_malloc.exit ], [ null, %bb.ab ] ; 18 uses
  %i.fn = load i64, ptr %i.cf, align 8            ; 4 uses
  %i.fo = trunc i64 %i.fn to i32                  ; 3 uses
  %i.fp = lshr i32 %i.fo, 31                      ; 5 uses
  %i.fq = lshr i64 %i.fn, 60
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = and i32 %i.fr, 3
  switch i32 %i.fs, label %default.unreachable [
    i32 0, label %bb.al
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  br label %str8.exit115

bb.am:                                            ; preds = %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !389
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !390
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fz
  br label %str8.exit115

bb.an:                                            ; preds = %bb.ak
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !239
  br label %str8.exit115

bb.ao:                                            ; preds = %bb.ak
  tail call void @abort() #50
  unreachable

str8.exit115:                                     ; preds = %bb.al, %bb.am, %bb.an
  %.0.i.i113 = phi ptr [ %i.ft, %bb.al ], [ %i.ga, %bb.am ], [ %i.gc, %bb.an ] ; 5 uses
  %i.gd = and i64 %i.fn, 2147483647
  %i.ge = icmp samesign ugt i64 %.0120, %i.gd
  br i1 %i.ge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %str8.exit115
  %i.gf = ptrtoint ptr %.0.i.i113 to i64          ; 6 uses
  %i.gg = zext nneg i32 %i.fp to i64              ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.gi = and i32 %.fr169, 1
  %.not105 = icmp eq i32 %i.gi, 0
  br i1 %.not105, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.gj = and i32 %i.fo, 2147483647
  %i.gk = trunc nuw nsw i64 %.0120 to i32
  %i.gl = tail call i32 @lre_exec(ptr noundef %.0, ptr noundef %.0.i.i112, ptr noundef %.0.i.i113, i32 noundef %i.gk, i32 noundef %i.gj, i32 noundef %i.fp, ptr noundef nonnull %0) #49 ; 2 uses
  %.not103.us = icmp eq i32 %i.gl, 1
  br i1 %.not103.us, label %bb.ap, label %.split.us

bb.ap:                                            ; preds = %.lr.ph.split.us
  %i.gm = load ptr, ptr %.0, align 8, !tbaa !364
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = sub i64 %i.gn, %i.gf
  %i.gp = ashr i64 %i.go, %i.gg
  %i.gq = trunc i64 %i.gp to i32                  ; 2 uses
  %i.gr = load ptr, ptr %i.gh, align 8, !tbaa !364
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.gf
  %i.gu = ashr i64 %i.gt, %i.gg                   ; 2 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = icmp sgt i32 %i.gq, 0
  br i1 %i.gw, label %bb.aq, label %.split147.us

bb.aq:                                            ; preds = %bb.ap
end_hunk_4
begin_hunk_5_@js_bigint_asUintN:bb.a
bb.am:                                            ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !191
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.am
  %i.eu = phi i32 [ %i.et, %bb.am ], [ %.neg, %._crit_edge ]
  %i.ev = shl i32 %i.eu, %i.eo                    ; 2 uses
  %.not187 = icmp eq i32 %5, 0                    ; 2 uses
  %i.ew = ashr exact i32 %i.ev, %i.eo
  %i.ex = lshr exact i32 %i.ev, %i.eo
  %.0 = select i1 %.not187, i32 %i.ex, i32 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.er
  store i32 %.0, ptr %i.ez, align 4, !tbaa !191
  br i1 %.not187, label %bb.an, label %.thread238

bb.an:                                            ; preds = %._crit_edge._crit_edge
  %i.fa = tail call fastcc ptr @js_bigint_extend(ptr noundef %0, ptr noundef %i.de, i32 noundef 0) ; 2 uses
  %.not188 = icmp eq ptr %i.fa, null
  br i1 %.not188, label %bb.ao, label %.thread238

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !232
  %i.fd = trunc i64 %i.ai to i32
  %i.fe = icmp ugt i32 %i.fd, -10
  br i1 %i.fe, label %bb.ap, label %JS_FreeValue.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !191 ; 2 uses
  %i.fh = add nsw i32 %i.fg, -1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !191
  %i.fi = icmp slt i32 %i.fg, 2
  br i1 %i.fi, label %bb.aq, label %JS_FreeValue.exit

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fc, i64 %i.ah, i64 %i.ai), !inline_history !291
  br label %JS_FreeValue.exit

.thread238:                                       ; preds = %._crit_edge._crit_edge, %bb.an
  %.0170241 = phi ptr [ %i.fa, %bb.an ], [ %i.de, %._crit_edge._crit_edge ]
  %i.fj = tail call fastcc ptr @js_bigint_normalize(ptr noundef %0, ptr noundef %.0170241) ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !232
  %i.fm = trunc i64 %i.ai to i32
  %i.fn = icmp ugt i32 %i.fm, -10
  br i1 %i.fn, label %bb.ar, label %JS_FreeValue.exit210

bb.ar:                                            ; preds = %.thread238
  %i.fo = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !191 ; 2 uses
  %i.fq = add nsw i32 %i.fp, -1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !191
  %i.fr = icmp slt i32 %i.fp, 2
  br i1 %i.fr, label %bb.as, label %JS_FreeValue.exit210

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fl, i64 %i.ah, i64 %i.ai), !inline_history !291
  br label %JS_FreeValue.exit210

JS_FreeValue.exit210:                             ; preds = %.thread238, %bb.ar, %bb.as
  %i.fs = load i32, ptr %i.fj, align 4, !tbaa !191
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.at, label %bb.au

bb.at:                                            ; preds = %JS_FreeValue.exit210
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !191
  %.sroa.0.0.insert.ext.i.i215 = zext i32 %i.fv to i64
  %i.fw = load ptr, ptr %i.fk, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.fw, ptr noundef nonnull %i.fj)
  br label %JS_FreeValue.exit

bb.au:                                            ; preds = %JS_FreeValue.exit210
  %i.fx = ptrtoint ptr %i.fj to i64
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %js_dup.exit.i.i, %bb.au, %bb.at, %bb.u, %bb.t, %bb.q, %bb.aq, %bb.ap, %bb.ao, %bb.ad, %bb.ac, %bb.ae, %JS_FreeValue.exit207, %JS_FreeValue.exit204, %JS_FreeValue.exit202, %.thread.i, %bb.i, %bb.j, %bb.k, %bb.n, %bb.o, %bb.w, %JS_ToBigInt.exit
  %i.fy = phi i64 [ 0, %bb.ap ], [ %i.cf, %bb.u ], [ 0, %JS_ToBigInt.exit ], [ 0, %.thread.i ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ], [ %i.ah, %bb.n ], [ %.sroa.0.0.insert.ext.i, %bb.o ], [ %i.ah, %bb.w ], [ %.sroa.0.0.insert.ext.i.i215, %bb.at ], [ %i.fx, %bb.au ], [ 0, %JS_FreeValue.exit202 ], [ 0, %JS_FreeValue.exit204 ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ 0, %JS_FreeValue.exit207 ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ %.sroa.0.0.insert.ext.i.i, %bb.t ], [ 0, %js_dup.exit.i.i ], [ 0, %bb.f ]
  %.sroa.16168.6 = phi i64 [ 6, %bb.ap ], [ -9, %bb.u ], [ 6, %JS_ToBigInt.exit ], [ 6, %.thread.i ], [ 6, %bb.q ], [ 7, %bb.k ], [ 7, %bb.i ], [ 7, %bb.j ], [ %i.ai, %bb.n ], [ 7, %bb.o ], [ %i.ai, %bb.w ], [ 7, %bb.at ], [ -9, %bb.au ], [ 6, %JS_FreeValue.exit202 ], [ 6, %JS_FreeValue.exit204 ], [ 6, %bb.ao ], [ 6, %bb.aq ], [ 6, %JS_FreeValue.exit207 ], [ 6, %bb.ae ], [ 6, %bb.ac ], [ 6, %bb.ad ], [ 7, %bb.t ], [ 6, %js_dup.exit.i.i ], [ 6, %bb.f ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.fy, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.16168.6, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_bigint_toString(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.a, label %bb.c [
    i32 -9, label %bb.b
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %js_thisBigIntValue.exit.sink.split, label %js_thisBigIntValue.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 4294967295
  %i.d = icmp eq i64 %i.c, 4294967295
  br i1 %i.d, label %bb.d, label %js_thisBigIntValue.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.g = load i16, ptr %i.f, align 2, !tbaa !276
  %i.h = icmp eq i16 %i.g, 35
  br i1 %i.h, label %bb.e, label %js_thisBigIntValue.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  switch i32 %i.k, label %js_thisBigIntValue.exit.thread [
    i32 -9, label %bb.f
    i32 7, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ugt i32 %i.k, -10
  br i1 %i.n, label %js_thisBigIntValue.exit.sink.split, label %js_thisBigIntValue.exit

js_thisBigIntValue.exit.thread:                   ; preds = %bb.c, %bb.d, %bb.e
  %i.o = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.644) ; 0 uses
  br label %bb.g

js_thisBigIntValue.exit.sink.split:               ; preds = %bb.f, %bb.b
  %.sink = phi i64 [ %1, %bb.b ], [ %i.m, %bb.f ] ; 2 uses
  %.sroa.48.1.i.ph = phi i64 [ %2, %bb.b ], [ %i.j, %bb.f ]
  %i.p = inttoptr i64 %.sink to ptr
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !191
  br label %js_thisBigIntValue.exit

js_thisBigIntValue.exit:                          ; preds = %js_thisBigIntValue.exit.sink.split, %bb.b, %bb.f
  %.sroa.07.1.i = phi i64 [ %1, %bb.b ], [ %i.m, %bb.f ], [ %.sink, %js_thisBigIntValue.exit.sink.split ] ; 6 uses
  %.sroa.48.1.i = phi i64 [ %2, %bb.b ], [ %i.j, %bb.f ], [ %.sroa.48.1.i.ph, %js_thisBigIntValue.exit.sink.split ] ; 7 uses
  %i.t = and i64 %.sroa.48.1.i, 4294967295
  %i.u = icmp eq i64 %i.t, 6
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %js_thisBigIntValue.exit.thread, %js_thisBigIntValue.exit
  %.sroa.48.1.i34 = phi i64 [ 6, %js_thisBigIntValue.exit.thread ], [ %.sroa.48.1.i, %js_thisBigIntValue.exit ]
  %.sroa.07.1.i33 = phi i64 [ 0, %js_thisBigIntValue.exit.thread ], [ %.sroa.07.1.i, %js_thisBigIntValue.exit ] ; 2 uses
  %.sroa.423.0.extract.shift24 = and i64 %.sroa.07.1.i33, -4294967296
  br label %JS_FreeValue.exit28

bb.h:                                             ; preds = %js_thisBigIntValue.exit
  %i.v = icmp eq i32 %3, 0
  br i1 %i.v, label %js_get_radix.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 3
  br i1 %i.z, label %js_get_radix.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %4, align 8               ; 2 uses
  %i.ab = trunc i64 %i.x to i32
  %i.ac = icmp ugt i32 %i.ab, -10
  br i1 %i.ac, label %bb.k, label %js_dup.exit.i.i.preheader

bb.k:                                             ; preds = %bb.j
  %i.ad = inttoptr i64 %i.aa to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !191
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.k, %bb.j
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.o
  %.sroa.09.0.in.i.i.i = phi i64 [ %i.aj, %bb.o ], [ %i.aa, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.ak, %bb.o ], [ %i.x, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.ah = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.ah, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 6, label %.loopexit
    i32 8, label %bb.m
  ]

bb.l:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %.sroa.09.0.extract.trunc.i.i.i = trunc i64 %.sroa.09.0.in.i.i.i to i32
  br label %bb.p

bb.m:                                             ; preds = %js_dup.exit.i.i
  %.sroa.09.0.le.i.i.i = bitcast i64 %.sroa.09.0.in.i.i.i to double ; 4 uses
  %5 = fcmp uno double %.sroa.09.0.le.i.i.i, 0.000000e+00
  %6 = fcmp olt double %.sroa.09.0.le.i.i.i, f0xC1E0000000000000
  %or.cond11.i = or i1 %5, %6
  br i1 %or.cond11.i, label %.thread.i27, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.inv.i.i.i = fcmp oge double %.sroa.09.0.le.i.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i.i = select i1 %.inv.i.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i.i
  %spec.select.i.i.i = fptosi double %spec.select16.i.i.i to i32
  br label %bb.p

bb.o:                                             ; preds = %js_dup.exit.i.i
  %i.ai = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.al = and i64 %i.ak, 4294967295
  %i.am = icmp eq i64 %i.al, 6
  br i1 %i.am, label %.loopexit, label %js_dup.exit.i.i

bb.p:                                             ; preds = %bb.n, %bb.l
  %.1.sink.i.i.ph.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %.sroa.09.0.extract.trunc.i.i.i, %bb.l ] ; 2 uses
  %i.an = add i32 %.1.sink.i.i.ph.i, -37
  %or.cond.i = icmp ult i32 %i.an, -35
  br i1 %or.cond.i, label %.thread.i27, label %js_get_radix.exit

.thread.i27:                                      ; preds = %bb.p, %bb.m
  %i.ao = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.645) ; 0 uses
  br label %.loopexit

js_get_radix.exit:                                ; preds = %bb.p, %bb.h, %bb.i
  %.0 = phi i32 [ 10, %bb.h ], [ 10, %bb.i ], [ %.1.sink.i.i.ph.i, %bb.p ]
  %i.ap = tail call fastcc { i64, i64 } @js_bigint_to_string1(ptr noundef %0, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i, i32 noundef %.0) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  %i.au = trunc i64 %.sroa.48.1.i to i32
  %i.av = icmp ugt i32 %i.au, -10
  br i1 %i.av, label %bb.q, label %JS_FreeValue.exit

bb.q:                                             ; preds = %js_get_radix.exit
  %i.aw = inttoptr i64 %.sroa.07.1.i to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  %i.ba = icmp slt i32 %i.ay, 2
  br i1 %i.ba, label %bb.r, label %JS_FreeValue.exit

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %js_get_radix.exit, %bb.q, %bb.r
  %.sroa.423.0.extract.shift = and i64 %i.aq, -4294967296
  br label %JS_FreeValue.exit28

.loopexit:                                        ; preds = %js_dup.exit.i.i, %bb.o, %.thread.i27
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !232
  %i.bd = trunc i64 %.sroa.48.1.i to i32
  %i.be = icmp ugt i32 %i.bd, -10
  br i1 %i.be, label %bb.s, label %JS_FreeValue.exit28

bb.s:                                             ; preds = %.loopexit
  %i.bf = inttoptr i64 %.sroa.07.1.i to ptr
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !191 ; 2 uses
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !191
  %i.bj = icmp slt i32 %i.bh, 2
  br i1 %i.bj, label %bb.t, label %JS_FreeValue.exit28

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bc, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i), !inline_history !291
  br label %JS_FreeValue.exit28

JS_FreeValue.exit28:                              ; preds = %bb.t, %bb.s, %.loopexit, %JS_FreeValue.exit, %bb.g
  %.sroa.021.0 = phi i64 [ %.sroa.07.1.i33, %bb.g ], [ %i.aq, %JS_FreeValue.exit ], [ 0, %.loopexit ], [ 0, %bb.s ], [ 0, %bb.t ]
  %.sroa.423.0 = phi i64 [ %.sroa.423.0.extract.shift24, %bb.g ], [ %.sroa.423.0.extract.shift, %JS_FreeValue.exit ], [ 0, %.loopexit ], [ 0, %bb.s ], [ 0, %bb.t ]
  %.sroa.5.0 = phi i64 [ %.sroa.48.1.i34, %bb.g ], [ %i.ar, %JS_FreeValue.exit ], [ 6, %.loopexit ], [ 6, %bb.s ], [ 6, %bb.t ]
  %.sroa.021.0.insert.ext = and i64 %.sroa.021.0, 4294967295
  %.sroa.021.0.insert.insert = or disjoint i64 %.sroa.423.0, %.sroa.021.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.021.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_bigint_valueOf(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 -9, label %bb.b
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %bb.c, label %js_thisBigIntValue.exit

bb.c:                                             ; preds = %bb.b
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !191
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !191
  br label %js_thisBigIntValue.exit

bb.d:                                             ; preds = %bb.a
  %i.g = and i64 %2, 4294967295
  %i.h = icmp eq i64 %i.g, 4294967295
  br i1 %i.h, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %i.k = load i16, ptr %i.j, align 2, !tbaa !276
  %i.l = icmp eq i16 %i.k, 35
  br i1 %i.l, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  switch i32 %i.o, label %.thread.i [
    i32 -9, label %bb.g
    i32 7, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp ugt i32 %i.o, -10
  br i1 %i.r, label %bb.h, label %js_thisBigIntValue.exit

bb.h:                                             ; preds = %bb.g
  %i.s = inttoptr i64 %i.q to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  br label %js_thisBigIntValue.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.w = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.644) ; 0 uses
  br label %js_thisBigIntValue.exit

js_thisBigIntValue.exit:                          ; preds = %bb.b, %bb.c, %bb.g, %bb.h, %.thread.i
  %.sroa.07.1.i = phi i64 [ %1, %bb.c ], [ 0, %.thread.i ], [ %1, %bb.b ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  %.sroa.48.1.i = phi i64 [ %2, %bb.c ], [ 6, %.thread.i ], [ %2, %bb.b ], [ %i.n, %bb.h ], [ %i.n, %bb.g ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.07.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.48.1.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { i64, i64 } @js_function_proto(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_error_toString(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 58, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %trunc = trunc i64 %i.f to i32                  ; 2 uses
  switch i32 %trunc, label %bb.f [
    i32 3, label %bb.d
    i32 -7, label %JS_ToStringFree.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !297  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !299  ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.mask.i.i = and i64 %i.m, -4611686018427387904
  %i.n = icmp ne i64 %.mask.i.i, 4611686018427387904
  %i.o = and i64 %i.m, 4294967295
  %or.cond.i.not.i = icmp eq i64 %i.o, 2147483648
  %or.cond.i = and i1 %i.n, %or.cond.i.not.i
  br i1 %or.cond.i, label %bb.e, label %JS_AtomToString.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !299
  br label %JS_AtomToString.exit

end_hunk_5
begin_hunk_6_@js_typed_array___speciesCreate:bb.a

get_typed_array.exit.thread:                      ; preds = %bb.a, %bb.b
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.966) ; 0 uses
  br label %bb.i

get_typed_array.exit:                             ; preds = %bb.b
  %i.h = tail call fastcc { i64, i64 } @JS_SpeciesConstructor(ptr noundef %0, i64 %.sroa.019.0.copyload, i64 %.sroa.521.0.copyload, i64 0, i64 3) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 5 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 5 uses
  %i.k = and i64 %i.j, 4294967295                 ; 2 uses
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %get_typed_array.exit
  %.sroa.436.0.extract.shift37 = and i64 %i.i, -4294967296
  br label %bb.i

bb.d:                                             ; preds = %get_typed_array.exit
  %i.m = icmp eq i64 %i.k, 3
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.c, align 2, !tbaa !276
  %i.p = zext i16 %i.o to i32
  %i.q = tail call { i64, i64 } @js_typed_array_constructor(ptr noundef %0, i64 0, i64 3, i32 poison, ptr noundef nonnull %i.n, i32 noundef %i.p)
  br label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.d
  %i.r = add nsw i32 %1, -1
  %i.s = tail call fastcc { i64, i64 } @js_typed_array_create(ptr noundef %0, i64 %i.i, i64 %i.j, i32 noundef %i.r, ptr noundef nonnull %i.n, i1 noundef zeroext %3) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.v = trunc i64 %i.j to i32
  %i.w = icmp ugt i32 %i.v, -10
  br i1 %i.w, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.x = inttoptr i64 %i.i to ptr
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !191  ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !191
  %i.ab = icmp slt i32 %i.z, 2
  br i1 %i.ab, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.u, i64 %i.i, i64 %i.j), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.pn = phi { i64, i64 } [ %i.q, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %.sroa.5.0 = extractvalue { i64, i64 } %.pn, 1
  %.sroa.010.0 = extractvalue { i64, i64 } %.pn, 0 ; 2 uses
  %.sroa.436.0.extract.shift = and i64 %.sroa.010.0, -4294967296
  br label %bb.i

bb.i:                                             ; preds = %get_typed_array.exit.thread, %JS_FreeValue.exit, %bb.c
  %.sroa.034.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.010.0, %JS_FreeValue.exit ], [ 0, %get_typed_array.exit.thread ]
  %.sroa.436.0 = phi i64 [ %.sroa.436.0.extract.shift37, %bb.c ], [ %.sroa.436.0.extract.shift, %JS_FreeValue.exit ], [ 0, %get_typed_array.exit.thread ]
  %.sroa.539.0 = phi i64 [ %i.j, %bb.c ], [ %.sroa.5.0, %JS_FreeValue.exit ], [ 6, %get_typed_array.exit.thread ]
  %.sroa.034.0.insert.ext = and i64 %.sroa.034.0, 4294967295
  %.sroa.034.0.insert.insert = or disjoint i64 %.sroa.436.0, %.sroa.034.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.034.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.539.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_typed_array_create(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_CallConstructorInternal(ptr noundef %0, i64 %1, i64 %2, i64 %1, i64 %2, i32 noundef %3, ptr noundef %4, i32 noundef 2), !inline_history !683 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 6 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 5 uses
  %trunc = trunc i64 %i.c to i32                  ; 2 uses
  switch i32 %trunc, label %js_typed_array_get_length_unsafe.exit.thread.sink.split [
    i32 6, label %JS_FreeValue.exit
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276  ; 2 uses
  %i.g = add i16 %i.f, -22
  %i.h = icmp ult i16 %i.g, 12
  br i1 %i.h, label %get_typed_array.exit.i, label %js_typed_array_get_length_unsafe.exit.thread.sink.split

get_typed_array.exit.i:                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !218  ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !509
  %i.m = getelementptr i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !512
  %.not.i7.i = icmp eq i8 %i.p, 0
  br i1 %.not.i7.i, label %bb.c, label %js_typed_array_get_length_unsafe.exit.thread.thread.sink.split

bb.c:                                             ; preds = %get_typed_array.exit.i
  %i.q = load i32, ptr %i.n, align 8, !tbaa !448  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !513  ; 2 uses
  %i.t = icmp ugt i32 %i.s, %i.q
  br i1 %i.t, label %js_typed_array_get_length_unsafe.exit.thread.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.v = load i8, ptr %i.u, align 8, !tbaa !514, !range !234, !noundef !235
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.typed_array_is_oob.exit.thread12_crit_edge.i, label %bb.e

.typed_array_is_oob.exit.thread12_crit_edge.i:    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !218
  br label %js_typed_array_get_length_unsafe.exit

bb.e:                                             ; preds = %bb.d
  %i.x = sext i32 %i.q to i64                     ; 2 uses
  %i.y = zext i32 %i.s to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !515
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, %i.y
  %i.ad = icmp sgt i64 %i.ac, %i.x
  br i1 %i.ad, label %js_typed_array_get_length_unsafe.exit.thread.thread.sink.split, label %typed_array_is_oob.exit.i

typed_array_is_oob.exit.i:                        ; preds = %bb.e
  %i.ae = zext nneg i16 %i.f to i64
  %i.af = getelementptr i8, ptr @typed_array_size_log2, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -22
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !218
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !218 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = sext i32 %i.aj to i64
  %i.ao = mul nsw i64 %i.an, %i.am
  %i.ap = add nsw i64 %i.ao, %i.y
  %i.aq = icmp sgt i64 %i.ap, %i.x
  br i1 %i.aq, label %js_typed_array_get_length_unsafe.exit.thread.thread.sink.split, label %js_typed_array_get_length_unsafe.exit

js_typed_array_get_length_unsafe.exit:            ; preds = %.typed_array_is_oob.exit.thread12_crit_edge.i, %typed_array_is_oob.exit.i
  %.0.i = phi i32 [ %.pre.i, %.typed_array_is_oob.exit.thread12_crit_edge.i ], [ %i.al, %typed_array_is_oob.exit.i ] ; 2 uses
  %i.ar = icmp slt i32 %.0.i, 0
  br i1 %i.ar, label %js_typed_array_get_length_unsafe.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %js_typed_array_get_length_unsafe.exit
  br i1 %5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.n, i64 9
  %.sroa.06.0..sroa.06.0..val.val.val.val = load i8, ptr %i.as, align 1, !tbaa !510
  %.not41 = icmp eq i8 %.sroa.06.0..sroa.06.0..val.val.val.val, 0
  br i1 %.not41, label %bb.h, label %js_typed_array_get_length_unsafe.exit.thread.thread.sink.split

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = icmp eq i32 %3, 1
  br i1 %i.at, label %bb.i, label %JS_FreeValue.exit

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr %4, align 8               ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = icmp ugt i32 %i.ax, -10                 ; 2 uses
  br i1 %i.ay, label %bb.j, label %js_dup.exit.i.i.preheader

bb.j:                                             ; preds = %bb.i
  %i.az = inttoptr i64 %i.au to ptr
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = add nsw i32 %i.bb, 2
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.i, %bb.j
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.n
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.bj, %bb.n ], [ %i.au, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.bk, %bb.n ], [ %i.aw, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.bd = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.bd, label %bb.n [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 6, label %JS_ToInt64Clamp.exit.i
    i32 8, label %bb.l
  ]

bb.k:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.be = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.bf = ashr exact i64 %i.be, 32
  br label %select.unfold.i.i

bb.l:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %6 = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  %7 = fcmp olt double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %JS_ToInt64Clamp.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.bh = fptosi double %.sroa.012.0.le.i.i.i to i64
  br i1 %i.bg, label %select.unfold.i.i, label %JS_ToInt64Clamp.exit.i

bb.n:                                             ; preds = %js_dup.exit.i.i
  %i.bi = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !47 ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1      ; 2 uses
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = icmp eq i64 %i.bl, 6
  br i1 %i.bm, label %JS_ToInt64Clamp.exit.i, label %js_dup.exit.i.i

select.unfold.i.i:                                ; preds = %bb.m, %bb.k
  %.sink.i.ph.i.i = phi i64 [ %i.bf, %bb.k ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bn = icmp slt i64 %.sink.i.ph.i.i, 0
  br i1 %i.bn, label %JS_ToInt64Clamp.exit.i, label %.thread.i

.thread.i:                                        ; preds = %select.unfold.i.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.sink.i.ph.i.i, i64 9007199254740991)
  br label %JS_ToInt64Clamp.exit.i

JS_ToInt64Clamp.exit.i:                           ; preds = %js_dup.exit.i.i, %bb.n, %.thread.i, %bb.m, %bb.l, %select.unfold.i.i
  %.1 = phi i64 [ 0, %bb.l ], [ %spec.select, %.thread.i ], [ 9007199254740991, %bb.m ], [ 0, %select.unfold.i.i ], [ 0, %bb.n ], [ 0, %js_dup.exit.i.i ]
  %.not = phi i1 [ true, %bb.l ], [ true, %.thread.i ], [ true, %bb.m ], [ true, %select.unfold.i.i ], [ false, %bb.n ], [ false, %js_dup.exit.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !232
  br i1 %i.ay, label %bb.o, label %JS_ToLengthFree.exit

bb.o:                                             ; preds = %JS_ToInt64Clamp.exit.i
  %i.bq = inttoptr i64 %i.au to ptr
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !191 ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !191
  %i.bu = icmp slt i32 %i.bs, 2
  br i1 %i.bu, label %bb.p, label %JS_ToLengthFree.exit

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bp, i64 %i.au, i64 %i.aw), !inline_history !476
  br label %JS_ToLengthFree.exit

JS_ToLengthFree.exit:                             ; preds = %JS_ToInt64Clamp.exit.i, %bb.o, %bb.p
  br i1 %.not, label %bb.q, label %js_typed_array_get_length_unsafe.exit.thread

bb.q:                                             ; preds = %JS_ToLengthFree.exit
  %i.bv = zext nneg i32 %.0.i to i64
  %i.bw = icmp samesign ugt i64 %.1, %i.bv
  br i1 %i.bw, label %js_typed_array_get_length_unsafe.exit.thread.sink.split, label %JS_FreeValue.exit

js_typed_array_get_length_unsafe.exit.thread.thread.sink.split: ; preds = %bb.g, %get_typed_array.exit.i, %bb.c, %bb.e, %typed_array_is_oob.exit.i
  %.str.967.sink = phi ptr [ @.str.967, %get_typed_array.exit.i ], [ @.str.967, %typed_array_is_oob.exit.i ], [ @.str.967, %bb.e ], [ @.str.967, %bb.c ], [ @.str.775, %bb.g ]
  %i.bx = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull %.str.967.sink) ; 0 uses
  br label %js_typed_array_get_length_unsafe.exit.thread.thread

js_typed_array_get_length_unsafe.exit.thread.sink.split: ; preds = %bb.q, %bb.b, %bb.a
  %.str.966.sink = phi ptr [ @.str.966, %bb.b ], [ @.str.966, %bb.a ], [ @.str.774, %bb.q ]
  %i.by = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull %.str.966.sink) ; 0 uses
  br label %js_typed_array_get_length_unsafe.exit.thread

js_typed_array_get_length_unsafe.exit.thread:     ; preds = %js_typed_array_get_length_unsafe.exit.thread.sink.split, %JS_ToLengthFree.exit
  %i.bz = icmp ugt i32 %trunc, -10
  br i1 %i.bz, label %js_typed_array_get_length_unsafe.exit.thread.thread, label %JS_FreeValue.exit

js_typed_array_get_length_unsafe.exit.thread.thread: ; preds = %js_typed_array_get_length_unsafe.exit, %js_typed_array_get_length_unsafe.exit.thread.thread.sink.split, %js_typed_array_get_length_unsafe.exit.thread
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %.in, align 8, !tbaa !232
  %i.cb = inttoptr i64 %i.b to ptr
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !191 ; 2 uses
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !191
  %i.cf = icmp slt i32 %i.cd, 2
  br i1 %i.cf, label %bb.r, label %JS_FreeValue.exit

bb.r:                                             ; preds = %js_typed_array_get_length_unsafe.exit.thread.thread
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ca, i64 %i.b, i64 %i.c), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.a, %bb.h, %bb.q, %bb.r, %js_typed_array_get_length_unsafe.exit.thread.thread, %js_typed_array_get_length_unsafe.exit.thread
  %i.cg = phi i64 [ 0, %bb.r ], [ %i.b, %bb.a ], [ 0, %js_typed_array_get_length_unsafe.exit.thread ], [ 0, %js_typed_array_get_length_unsafe.exit.thread.thread ], [ %i.b, %bb.q ], [ %i.b, %bb.h ]
  %.sroa.5.0 = phi i64 [ 6, %bb.r ], [ %i.c, %bb.a ], [ 6, %js_typed_array_get_length_unsafe.exit.thread ], [ 6, %js_typed_array_get_length_unsafe.exit.thread.thread ], [ %i.c, %bb.q ], [ %i.c, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.cg, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal i32 @js_array_cmp_generic(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %3 = alloca [2 x %struct.JSValue], align 16     ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !957    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !958
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %js_string_compare.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !959
  %.not47 = icmp eq i32 %i.e, 0
  br i1 %.not47, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i128, ptr %0, align 1
  %i.g = load i128, ptr %1, align 1
  %i.h = icmp ne i128 %i.f, %i.g
  %i.i = zext i1 %i.h to i32
  %.not50 = icmp eq i32 %i.i, 0
  br i1 %.not50, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !282
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !282
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %i.a, i64 %i.l, i64 %i.n, i64 0, i64 3, i64 0, i64 3, i32 noundef 2, ptr noundef nonnull %3, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 4 uses
  %i.q = extractvalue { i64, i64 } %i.o, 1        ; 2 uses
  %trunc = trunc i64 %i.q to i32                  ; 3 uses
  switch i32 %trunc, label %bb.f [
    i32 6, label %JS_ToFloat64Free.exit
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %.sroa.026.0.extract.trunc = trunc i64 %i.p to i32
  %i.r = call i32 @llvm.scmp.i32.i32(i32 %.sroa.026.0.extract.trunc, i32 0)
  br label %js_string_compare.exit

bb.f:                                             ; preds = %bb.d
  %i.s = icmp ult i32 %trunc, 3
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %i.t = sitofp i32 %.sroa.0.0.extract.trunc.i to double
  br label %JS_ToFloat64Free.exit.thread60

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %trunc, 8
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = bitcast i64 %i.p to double
  br label %JS_ToFloat64Free.exit.thread60

bb.j:                                             ; preds = %bb.h
  %i.w = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %i.a, i64 %i.p, i64 %i.q, i32 noundef 0), !inline_history !118 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %JS_ToFloat64Free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = bitcast i64 %i.x to double
  %i.ac = trunc i64 %i.y to i32
  switch i32 %i.ac, label %bb.m [
    i32 0, label %bb.l
    i32 8, label %JS_ToFloat64Free.exit.thread60
  ]

bb.l:                                             ; preds = %bb.k
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.x to i32
  %i.ad = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %JS_ToFloat64Free.exit.thread60

bb.m:                                             ; preds = %bb.k
  call void @abort() #50, !inline_history !119
  unreachable

JS_ToFloat64Free.exit.thread60:                   ; preds = %bb.l, %bb.k, %bb.i, %bb.g
  %.056.ph = phi double [ %i.ad, %bb.l ], [ %i.ab, %bb.k ], [ %i.v, %bb.i ], [ %i.t, %bb.g ] ; 2 uses
  %i.ae = fcmp ogt double %.056.ph, 0.000000e+00
  %i.af = zext i1 %i.ae to i32
  %i.ag = fcmp olt double %.056.ph, 0.000000e+00
  %.neg = sext i1 %i.ag to i32
  %i.ah = add nsw i32 %.neg, %i.af
  br label %js_string_compare.exit

bb.n:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !961 ; 2 uses
  %.not48 = icmp eq ptr %i.aj, null
  br i1 %.not48, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = load i64, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %i.a, i64 %i.ak, i64 %i.am, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 1
  %i.ap = and i64 %i.ao, 4294967295
end_hunk_6
begin_hunk_7_@js_number_toPrecision:bb.a
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.r, %bb.q
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.w
  %.sroa.09.0.in.i.i = phi i64 [ %i.bb, %bb.w ], [ %i.aq, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.bc, %bb.w ], [ %i.an, %js_dup.exit.i.preheader ] ; 2 uses
  %i.ax = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.ax, label %bb.w [
    i32 0, label %bb.s
    i32 1, label %bb.s
    i32 2, label %bb.s
    i32 3, label %bb.s
    i32 6, label %JS_ToFloat64Free.exit
    i32 8, label %bb.t
  ]

bb.s:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.x

bb.t:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %i.ay = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  br i1 %i.ay, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  br i1 %i.az, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.x

bb.w:                                             ; preds = %js_dup.exit.i
  %i.ba = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0
  %i.bc = extractvalue { i64, i64 } %i.ba, 1      ; 2 uses
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = icmp eq i64 %i.bd, 6
  br i1 %i.be, label %JS_ToFloat64Free.exit, label %js_dup.exit.i

bb.x:                                             ; preds = %bb.t, %bb.u, %bb.s, %bb.v
  %.1.sink.i.i.ph = phi i32 [ %spec.select.i.i, %bb.v ], [ %.sroa.09.0.extract.trunc.i.i, %bb.s ], [ -2147483648, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.bf = tail call double @llvm.fabs.f64(double %.0.ph)
  %i.bg = fcmp ueq double %i.bf, +inf
  br i1 %i.bg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.p
  %i.bh = bitcast double %.0.ph to i64
  %i.bi = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.bh, i64 8, i32 noundef 0) #51, !inline_history !665 ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bi, 0      ; 2 uses
  %.sroa.7.0.extract.shift = and i64 %i.bj, -4294967296
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  br label %JS_ToFloat64Free.exit

bb.z:                                             ; preds = %bb.x
  %i.bl = add i32 %.1.sink.i.i.ph, -101
  %or.cond = icmp ult i32 %i.bl, -100
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bm = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.816) ; 0 uses
  br label %JS_ToFloat64Free.exit

bb.ab:                                            ; preds = %bb.z
  %i.bn = tail call fastcc { i64, i64 } @js_dtoa2(ptr noundef %0, double noundef %.0.ph, i32 noundef 10, i32 noundef %.1.sink.i.i.ph, i32 noundef 1) ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0      ; 2 uses
  %.sroa.7.0.extract.shift21 = and i64 %i.bo, -4294967296
  %i.bp = extractvalue { i64, i64 } %i.bn, 1
  br label %JS_ToFloat64Free.exit

JS_ToFloat64Free.exit:                            ; preds = %bb.w, %js_dup.exit.i, %bb.l, %bb.ab, %bb.aa, %bb.y, %bb.g
  %.sroa.015.0 = phi i64 [ %.sroa.07.1.i34, %bb.g ], [ %i.bo, %bb.ab ], [ %i.bj, %bb.y ], [ 0, %bb.l ], [ 0, %bb.aa ], [ 0, %js_dup.exit.i ], [ 0, %bb.w ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.extract.shift23, %bb.g ], [ %.sroa.7.0.extract.shift21, %bb.ab ], [ %.sroa.7.0.extract.shift, %bb.y ], [ 0, %bb.l ], [ 0, %bb.aa ], [ 0, %js_dup.exit.i ], [ 0, %bb.w ]
  %.sroa.9.0 = phi i64 [ %.sroa.48.1.i35, %bb.g ], [ %i.bp, %bb.ab ], [ %i.bk, %bb.y ], [ 6, %bb.l ], [ 6, %bb.aa ], [ 6, %js_dup.exit.i ], [ 6, %bb.w ]
  %.sroa.015.0.insert.ext = and i64 %.sroa.015.0, 4294967295
  %.sroa.015.0.insert.insert = or disjoint i64 %.sroa.7.0, %.sroa.015.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.015.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_number_toString(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [70 x i8], align 16               ; 4 uses
  %i.b = and i64 %2, 4294967287
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %2 to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %js_thisNumberValue.exit.sink.split, label %js_thisNumberValue.exit

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %2, 4294967295
  %i.g = icmp eq i64 %i.f, 4294967295
  br i1 %i.g, label %bb.d, label %js_thisNumberValue.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !276
  %i.k = icmp eq i16 %i.j, 4
  br i1 %i.k, label %bb.e, label %js_thisNumberValue.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = and i64 %i.m, 4294967287
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %js_thisNumberValue.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = trunc i64 %i.m to i32
  %i.s = icmp ugt i32 %i.r, -10
  br i1 %i.s, label %js_thisNumberValue.exit.sink.split, label %js_thisNumberValue.exit

js_thisNumberValue.exit.thread:                   ; preds = %bb.c, %bb.d, %bb.e
  %i.t = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.738) ; 0 uses
  br label %bb.g

js_thisNumberValue.exit.sink.split:               ; preds = %bb.f, %bb.b
  %.sink = phi i64 [ %1, %bb.b ], [ %i.q, %bb.f ] ; 2 uses
  %.sroa.48.1.i.ph = phi i64 [ %2, %bb.b ], [ %i.m, %bb.f ]
  %i.u = inttoptr i64 %.sink to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !191
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !191
  br label %js_thisNumberValue.exit

js_thisNumberValue.exit:                          ; preds = %js_thisNumberValue.exit.sink.split, %bb.b, %bb.f
  %.sroa.07.1.i = phi i64 [ %1, %bb.b ], [ %i.q, %bb.f ], [ %.sink, %js_thisNumberValue.exit.sink.split ] ; 7 uses
  %.sroa.48.1.i = phi i64 [ %2, %bb.b ], [ %i.m, %bb.f ], [ %.sroa.48.1.i.ph, %js_thisNumberValue.exit.sink.split ] ; 6 uses
  %i.y = and i64 %.sroa.48.1.i, 4294967295        ; 2 uses
  %i.z = icmp eq i64 %i.y, 6
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %js_thisNumberValue.exit.thread, %js_thisNumberValue.exit
  %.sroa.48.1.i65 = phi i64 [ 6, %js_thisNumberValue.exit.thread ], [ %.sroa.48.1.i, %js_thisNumberValue.exit ]
  %.sroa.07.1.i64 = phi i64 [ 0, %js_thisNumberValue.exit.thread ], [ %.sroa.07.1.i, %js_thisNumberValue.exit ] ; 2 uses
  %.sroa.6.0.extract.shift49 = and i64 %.sroa.07.1.i64, -4294967296
  br label %JS_ToFloat64Free.exit

bb.h:                                             ; preds = %js_thisNumberValue.exit
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.i, label %js_get_radix.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %js_get_radix.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %4, align 8               ; 2 uses
  %i.af = trunc i64 %i.ab to i32
  %i.ag = icmp ugt i32 %i.af, -10
  br i1 %i.ag, label %bb.k, label %js_dup.exit.i.i.preheader

bb.k:                                             ; preds = %bb.j
  %i.ah = inttoptr i64 %i.ae to ptr
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !191
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.k, %bb.j
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.o
  %.sroa.09.0.in.i.i.i = phi i64 [ %i.an, %bb.o ], [ %i.ae, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.ao, %bb.o ], [ %i.ab, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.al = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.al, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 6, label %.loopexit
    i32 8, label %bb.m
  ]

bb.l:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %.sroa.09.0.extract.trunc.i.i.i = trunc i64 %.sroa.09.0.in.i.i.i to i32
  br label %bb.p

bb.m:                                             ; preds = %js_dup.exit.i.i
  %.sroa.09.0.le.i.i.i = bitcast i64 %.sroa.09.0.in.i.i.i to double ; 4 uses
  %6 = fcmp uno double %.sroa.09.0.le.i.i.i, 0.000000e+00
  %7 = fcmp olt double %.sroa.09.0.le.i.i.i, f0xC1E0000000000000
  %or.cond11.i = or i1 %6, %7
  br i1 %or.cond11.i, label %.thread.i57, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.inv.i.i.i = fcmp oge double %.sroa.09.0.le.i.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i.i = select i1 %.inv.i.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i.i
  %spec.select.i.i.i = fptosi double %spec.select16.i.i.i to i32
  br label %bb.p

bb.o:                                             ; preds = %js_dup.exit.i.i
  %i.am = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp eq i64 %i.ap, 6
  br i1 %i.aq, label %.loopexit, label %js_dup.exit.i.i

bb.p:                                             ; preds = %bb.n, %bb.l
  %.1.sink.i.i.ph.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %.sroa.09.0.extract.trunc.i.i.i, %bb.l ] ; 2 uses
  %i.ar = add i32 %.1.sink.i.i.ph.i, -37
  %or.cond.i = icmp ult i32 %i.ar, -35
  br i1 %or.cond.i, label %.thread.i57, label %js_get_radix.exit

.thread.i57:                                      ; preds = %bb.p, %bb.m
  %i.as = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.645) ; 0 uses
  br label %.loopexit

js_get_radix.exit:                                ; preds = %bb.p, %bb.h, %bb.i
  %.052 = phi i32 [ 10, %bb.h ], [ 10, %bb.i ], [ %.1.sink.i.i.ph.i, %bb.p ] ; 3 uses
  %i.at = icmp eq i64 %i.y, 0
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %js_get_radix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.au = shl i64 %.sroa.07.1.i, 32
  %i.av = ashr exact i64 %i.au, 32
  %i.aw = call i64 @i64toa_radix(ptr noundef nonnull %i.a, i64 noundef %i.av, i32 noundef %.052) #49
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.ax) ; 2 uses
  %i.az = extractvalue { i64, i64 } %i.ay, 0      ; 2 uses
  %.sroa.6.0.extract.shift = and i64 %i.az, -4294967296
  %i.ba = extractvalue { i64, i64 } %i.ay, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %JS_ToFloat64Free.exit

bb.r:                                             ; preds = %js_get_radix.exit
  %i.bb = trunc i64 %.sroa.48.1.i to i32          ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 3
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.07.1.i to i32
  %i.bd = sitofp i32 %.sroa.0.0.extract.trunc.i to double
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.be = icmp eq i32 %i.bb, 8
  br i1 %i.be, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = bitcast i64 %.sroa.07.1.i to double
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bg = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i, i32 noundef 0), !inline_history !118 ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bg, 1      ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = icmp eq i64 %i.bj, 6
  br i1 %i.bk, label %JS_ToFloat64Free.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = bitcast i64 %i.bh to double
  %i.bm = trunc i64 %i.bi to i32
  switch i32 %i.bm, label %bb.y [
    i32 0, label %bb.x
    i32 8, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.bh to i32
  %i.bn = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @abort() #50, !inline_history !119
  unreachable

bb.z:                                             ; preds = %bb.s, %bb.u, %bb.w, %bb.x
  %.0.ph = phi double [ %i.bn, %bb.x ], [ %i.bl, %bb.w ], [ %i.bf, %bb.u ], [ %i.bd, %bb.s ] ; 2 uses
  %.not56 = icmp eq i32 %.052, 10
  br i1 %.not56, label %.split, label %.split54

.split:                                           ; preds = %bb.z
  %i.bo = tail call fastcc { i64, i64 } @js_dtoa2(ptr noundef %0, double noundef %.0.ph, i32 noundef 10, i32 noundef 0, i32 noundef 0)
  br label %bb.aa

.split54:                                         ; preds = %bb.z
  %i.bp = tail call fastcc { i64, i64 } @js_dtoa2(ptr noundef %0, double noundef %.0.ph, i32 noundef %.052, i32 noundef 0, i32 noundef 8)
  br label %bb.aa

bb.aa:                                            ; preds = %.split, %.split54
  %phi.call = phi { i64, i64 } [ %i.bo, %.split ], [ %i.bp, %.split54 ] ; 2 uses
  %i.bq = extractvalue { i64, i64 } %phi.call, 0  ; 2 uses
  %.sroa.6.0.extract.shift47 = and i64 %i.bq, -4294967296
  %i.br = extractvalue { i64, i64 } %phi.call, 1
  br label %JS_ToFloat64Free.exit

.loopexit:                                        ; preds = %js_dup.exit.i.i, %bb.o, %.thread.i57
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !232
  %i.bu = trunc i64 %.sroa.48.1.i to i32
  %i.bv = icmp ugt i32 %i.bu, -10
  br i1 %i.bv, label %bb.ab, label %JS_ToFloat64Free.exit

bb.ab:                                            ; preds = %.loopexit
  %i.bw = inttoptr i64 %.sroa.07.1.i to ptr
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !191 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !191
  %i.ca = icmp slt i32 %i.by, 2
  br i1 %i.ca, label %bb.ac, label %JS_ToFloat64Free.exit

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bt, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i), !inline_history !291
  br label %JS_ToFloat64Free.exit

JS_ToFloat64Free.exit:                            ; preds = %bb.ac, %bb.ab, %.loopexit, %bb.v, %bb.aa, %bb.q, %bb.g
  %.sroa.044.0 = phi i64 [ %.sroa.07.1.i64, %bb.g ], [ %i.az, %bb.q ], [ 0, %bb.v ], [ %i.bq, %bb.aa ], [ 0, %.loopexit ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.extract.shift49, %bb.g ], [ %.sroa.6.0.extract.shift, %bb.q ], [ 0, %bb.v ], [ %.sroa.6.0.extract.shift47, %bb.aa ], [ 0, %.loopexit ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  %.sroa.851.0 = phi i64 [ %.sroa.48.1.i65, %bb.g ], [ %i.ba, %bb.q ], [ 6, %bb.v ], [ %i.br, %bb.aa ], [ 6, %.loopexit ], [ 6, %bb.ab ], [ 6, %bb.ac ]
  %.sroa.044.0.insert.ext = and i64 %.sroa.044.0, 4294967295
  %.sroa.044.0.insert.insert = or disjoint i64 %.sroa.6.0, %.sroa.044.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.044.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.851.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_number_valueOf(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = and i64 %2, 4294967287
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %2 to i32
  %i.d = icmp ugt i32 %i.c, -10
  br i1 %i.d, label %bb.c, label %js_thisNumberValue.exit

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %1 to ptr
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !191
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !191
  br label %js_thisNumberValue.exit

bb.d:                                             ; preds = %bb.a
  %i.i = and i64 %2, 4294967295
  %i.j = icmp eq i64 %i.i, 4294967295
  br i1 %i.j, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.k = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %i.m = load i16, ptr %i.l, align 2, !tbaa !276
  %i.n = icmp eq i16 %i.m, 4
  br i1 %i.n, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.p = load i64, ptr %i.o, align 8              ; 4 uses
  %i.q = and i64 %i.p, 4294967287
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = trunc i64 %i.p to i32
  %i.v = icmp ugt i32 %i.u, -10
  br i1 %i.v, label %bb.h, label %js_thisNumberValue.exit

bb.h:                                             ; preds = %bb.g
  %i.w = inttoptr i64 %i.t to ptr
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !191
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !191
  br label %js_thisNumberValue.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.aa = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.738) ; 0 uses
  br label %js_thisNumberValue.exit

js_thisNumberValue.exit:                          ; preds = %bb.b, %bb.c, %bb.g, %bb.h, %.thread.i
  %.sroa.07.1.i = phi i64 [ %1, %bb.c ], [ 0, %.thread.i ], [ %1, %bb.b ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.48.1.i = phi i64 [ %2, %bb.c ], [ 6, %.thread.i ], [ %2, %bb.b ], [ %i.p, %bb.h ], [ %i.p, %bb.g ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.07.1.i, 0
end_hunk_7
begin_hunk_8_@js_string_toWellFormed:bb.a
    i32 1, label %bb.ac
    i32 2, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cs = load ptr, ptr %i.bh, align 8, !tbaa !389
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.bi, align 8, !tbaa !390
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cv
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab
  %i.cx = load ptr, ptr %i.bh, align 8, !tbaa !239
  br label %.sink.split

default.unreachable.i62:                          ; preds = %bb.ab
  unreachable

.sink.split:                                      ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.x, %bb.w, %bb.v
  %.0.i.i61.sink = phi ptr [ %i.bh, %bb.v ], [ %i.cg, %bb.x ], [ %i.cf, %bb.w ], [ %i.cx, %bb.ad ], [ %i.cw, %bb.ac ], [ %i.bh, %bb.ab ]
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i61.sink, i64 %i.bt
  store i16 -3, ptr %i.cy, align 2, !tbaa !221
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %str16.exit59, %str16.exit52
  %.1 = phi i32 [ %.069, %str16.exit52 ], [ %i.bz, %str16.exit59 ], [ %.069, %.sink.split ]
  %i.cz = add i32 %.1, 1                          ; 2 uses
  %i.da = icmp ult i32 %i.cz, %i.bg
  br i1 %i.da, label %bb.p, label %.loopexit, !llvm.loop !2194

.loopexit:                                        ; preds = %bb.ae, %bb.o, %bb.b, %JS_ToStringCheckObject.exit.thread, %JS_FreeValue.exit, %JS_ToStringCheckObject.exit
  %i.db = phi i64 [ %i.d, %bb.b ], [ 0, %JS_ToStringCheckObject.exit.thread ], [ 0, %JS_ToStringCheckObject.exit ], [ 0, %JS_FreeValue.exit ], [ %.sroa.0.0.i, %bb.o ], [ %.sroa.0.0.i, %bb.ae ]
  %.sroa.739.0 = phi i64 [ %i.e, %bb.b ], [ 6, %JS_ToStringCheckObject.exit.thread ], [ 6, %JS_ToStringCheckObject.exit ], [ 6, %JS_FreeValue.exit ], [ %.sroa.4.0.i, %bb.o ], [ %.sroa.4.0.i, %bb.ae ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.db, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.739.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_indexOf(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = and i64 %2, 4294967294
  %or.cond.i = icmp eq i64 %i.a, 2
  br i1 %or.cond.i, label %JS_ToStringCheckObject.exit.thread, label %JS_ToStringCheckObject.exit

JS_ToStringCheckObject.exit.thread:               ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.194), !inline_history !151 ; 0 uses
  br label %JS_FreeValue.exit72

JS_ToStringCheckObject.exit:                      ; preds = %bb.a
  %i.c = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !152 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 5 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 6 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %JS_FreeValue.exit72, label %bb.b

bb.b:                                             ; preds = %JS_ToStringCheckObject.exit
  %i.h = load i64, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.h, i64 %i.j, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 4 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 5 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %JS_ToFloat64.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.q = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.r = load i64, ptr %i.p, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 2147483647                 ; 4 uses
  %i.u = load i64, ptr %i.q, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 2147483647                 ; 5 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = sub nsw i32 %i.t, %i.w                   ; 4 uses
  %i.y = icmp sgt i32 %3, 1
  br i1 %i.y, label %bb.e, label %JS_ToFloat64.exit.thread92

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  %i.ae = icmp ugt i32 %i.ad, -10
  br i1 %i.ae, label %.thread.i, label %js_dup.exit.i

.thread.i:                                        ; preds = %bb.e
  %i.af = inttoptr i64 %i.aa to ptr
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !191
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !191
  br label %bb.h

js_dup.exit.i:                                    ; preds = %bb.e
  %i.aj = icmp ult i32 %i.ad, 3
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %js_dup.exit.i
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.aa to i32
  %i.ak = sitofp i32 %.sroa.0.0.extract.trunc.i.i to double
  br label %.thread

bb.g:                                             ; preds = %js_dup.exit.i
  %i.al = icmp eq i32 %i.ad, 8
  br i1 %i.al, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %i.am = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.aa, i64 %i.ac, i32 noundef 0) #51, !inline_history !7 ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp eq i64 %i.ap, 6
  br i1 %i.aq, label %JS_ToFloat64.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = trunc i64 %i.ao to i32
  switch i32 %i.ar, label %bb.k [
    i32 0, label %bb.j
    i32 8, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.an to i32
  %i.as = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %.thread

bb.k:                                             ; preds = %bb.i
  tail call void @abort() #50, !inline_history !8
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.i
  %.076.ph.in = phi i64 [ %i.an, %bb.i ], [ %i.aa, %bb.g ]
  %.076.ph = bitcast i64 %.076.ph.in to double    ; 2 uses
  %i.at = fcmp uno double %.076.ph, 0.000000e+00
  br i1 %i.at, label %JS_ToFloat64.exit.thread92, label %.thread

.thread:                                          ; preds = %bb.f, %bb.j, %bb.l
  %.076.ph90 = phi double [ %.076.ph, %bb.l ], [ %i.ak, %bb.f ], [ %i.as, %bb.j ] ; 3 uses
  %i.au = fcmp ugt double %.076.ph90, 0.000000e+00
  br i1 %i.au, label %bb.m, label %JS_ToFloat64.exit.thread92

bb.m:                                             ; preds = %.thread
  %i.av = sitofp i32 %i.x to double
  %i.aw = fcmp olt double %.076.ph90, %i.av
  %i.ax = fptosi double %.076.ph90 to i32
  %spec.select = select i1 %i.aw, i32 %i.ax, i32 %i.x
  br label %JS_ToFloat64.exit.thread92

bb.n:                                             ; preds = %bb.c
  %i.ay = icmp sgt i32 %3, 1
  br i1 %i.ay, label %bb.o, label %JS_ToInt32Clamp.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = icmp ugt i32 %i.bd, -10
  br i1 %i.be, label %bb.p, label %js_dup.exit.i66.preheader

bb.p:                                             ; preds = %bb.o
  %i.bf = inttoptr i64 %i.ba to ptr
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !191
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !191
  br label %js_dup.exit.i66.preheader

js_dup.exit.i66.preheader:                        ; preds = %bb.p, %bb.o
  br label %js_dup.exit.i66

js_dup.exit.i66:                                  ; preds = %js_dup.exit.i66.preheader, %bb.t
  %.sroa.09.0.in.i.i = phi i64 [ %i.bl, %bb.t ], [ %i.ba, %js_dup.exit.i66.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.bm, %bb.t ], [ %i.bc, %js_dup.exit.i66.preheader ] ; 2 uses
  %i.bj = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.bj, label %bb.t [
    i32 0, label %bb.q
    i32 1, label %bb.q
    i32 2, label %bb.q
    i32 3, label %bb.q
    i32 6, label %JS_ToFloat64.exit
    i32 8, label %bb.r
  ]

bb.q:                                             ; preds = %js_dup.exit.i66, %js_dup.exit.i66, %js_dup.exit.i66, %js_dup.exit.i66
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.u

bb.r:                                             ; preds = %js_dup.exit.i66
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %6 = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %7 = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond = or i1 %6, %7
  br i1 %or.cond, label %JS_ToInt32Clamp.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.u

bb.t:                                             ; preds = %js_dup.exit.i66
  %i.bk = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.bl = extractvalue { i64, i64 } %i.bk, 0
  %i.bm = extractvalue { i64, i64 } %i.bk, 1      ; 2 uses
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = icmp eq i64 %i.bn, 6
  br i1 %i.bo, label %JS_ToFloat64.exit, label %js_dup.exit.i66

bb.u:                                             ; preds = %bb.s, %bb.q
  %.1.sink.i.ph.i = phi i32 [ %.sroa.09.0.extract.trunc.i.i, %bb.q ], [ %spec.select.i.i, %bb.s ] ; 2 uses
  %i.bp = icmp slt i32 %.1.sink.i.ph.i, 0
  br i1 %i.bp, label %JS_ToInt32Clamp.exit.thread, label %.thread26.i

.thread26.i:                                      ; preds = %bb.u
  %spec.select100 = tail call i32 @llvm.smin.i32(i32 %.1.sink.i.ph.i, i32 %i.t)
  br label %JS_ToInt32Clamp.exit.thread

JS_ToInt32Clamp.exit.thread:                      ; preds = %.thread26.i, %bb.r, %bb.u, %bb.n
  %.1 = phi i32 [ 0, %bb.n ], [ %spec.select100, %.thread26.i ], [ 0, %bb.r ], [ 0, %bb.u ]
  %i.bq = sub nsw i32 %i.t, %i.w
  br label %JS_ToFloat64.exit.thread92

JS_ToFloat64.exit.thread92:                       ; preds = %bb.m, %.thread, %bb.l, %bb.d, %JS_ToInt32Clamp.exit.thread
  %.2 = phi i32 [ %.1, %JS_ToInt32Clamp.exit.thread ], [ %i.x, %bb.d ], [ 0, %.thread ], [ %spec.select, %bb.m ], [ %i.x, %bb.l ] ; 4 uses
  %.054 = phi i32 [ %i.bq, %JS_ToInt32Clamp.exit.thread ], [ 0, %bb.d ], [ 0, %.thread ], [ 0, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.052 = phi i32 [ 1, %JS_ToInt32Clamp.exit.thread ], [ -1, %bb.d ], [ -1, %.thread ], [ -1, %bb.m ], [ -1, %bb.l ] ; 2 uses
  %.not61 = icmp samesign ult i32 %i.t, %i.w
  br i1 %.not61, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %JS_ToFloat64.exit.thread92
  %i.br = sub nsw i32 %.054, %.2
  %i.bs = mul nsw i32 %.052, %i.br
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.v
  %i.bu = tail call fastcc i32 @string_cmp(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i32 noundef %.2, i32 noundef 0, i32 noundef %i.w)
  %.not62103 = icmp eq i32 %i.bu, 0
  br i1 %.not62103, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.w
  %.056104 = phi i32 [ %i.bw, %bb.w ], [ %.2, %.preheader ] ; 2 uses
  %i.bv = icmp eq i32 %.056104, %.054
  br i1 %i.bv, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.bw = add nsw i32 %.056104, %.052             ; 3 uses
  %i.bx = tail call fastcc i32 @string_cmp(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i32 noundef %i.bw, i32 noundef 0, i32 noundef %i.w)
  %.not62 = icmp eq i32 %i.bx, 0
  br i1 %.not62, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.w, %.preheader, %bb.v, %JS_ToFloat64.exit.thread92
  %.053 = phi i32 [ -1, %bb.v ], [ -1, %JS_ToFloat64.exit.thread92 ], [ %.2, %.preheader ], [ -1, %.lr.ph ], [ %i.bw, %bb.w ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !232 ; 3 uses
  %i.ca = trunc i64 %i.e to i32
  %i.cb = icmp ugt i32 %i.ca, -10
  br i1 %i.cb, label %bb.x, label %JS_FreeValue.exit

bb.x:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !191 ; 2 uses
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !191
  %i.cf = icmp slt i32 %i.cd, 2
  br i1 %i.cf, label %bb.y, label %JS_FreeValue.exit

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bz, i64 %i.d, i64 %i.e), !inline_history !291
  %.pre = load ptr, ptr %i.by, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %.loopexit, %bb.x, %bb.y
  %i.cg = phi ptr [ %i.bz, %.loopexit ], [ %i.bz, %bb.x ], [ %.pre, %bb.y ]
  %i.ch = trunc i64 %i.m to i32
  %i.ci = icmp ugt i32 %i.ch, -10
  br i1 %i.ci, label %bb.z, label %JS_FreeValue.exit68

bb.z:                                             ; preds = %JS_FreeValue.exit
  %i.cj = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !191 ; 2 uses
  %i.cl = add nsw i32 %i.ck, -1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !191
  %i.cm = icmp slt i32 %i.ck, 2
  br i1 %i.cm, label %bb.aa, label %JS_FreeValue.exit68

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cg, i64 %i.l, i64 %i.m), !inline_history !291
  br label %JS_FreeValue.exit68

JS_FreeValue.exit68:                              ; preds = %JS_FreeValue.exit, %bb.z, %bb.aa
  %.sroa.0.0.insert.ext.i = zext i32 %.053 to i64
  br label %JS_FreeValue.exit72

JS_ToFloat64.exit:                                ; preds = %bb.t, %js_dup.exit.i66, %bb.h, %bb.b
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !232 ; 3 uses
  %i.cp = trunc i64 %i.e to i32
  %i.cq = icmp ugt i32 %i.cp, -10
  br i1 %i.cq, label %bb.ab, label %JS_FreeValue.exit71

bb.ab:                                            ; preds = %JS_ToFloat64.exit
  %i.cr = inttoptr i64 %i.d to ptr
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !191 ; 2 uses
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !191
  %i.cv = icmp slt i32 %i.ct, 2
  br i1 %i.cv, label %bb.ac, label %JS_FreeValue.exit71

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.co, i64 %i.d, i64 %i.e), !inline_history !291
  %.pre109 = load ptr, ptr %i.cn, align 8, !tbaa !232
  br label %JS_FreeValue.exit71

JS_FreeValue.exit71:                              ; preds = %JS_ToFloat64.exit, %bb.ab, %bb.ac
  %i.cw = phi ptr [ %i.co, %JS_ToFloat64.exit ], [ %i.co, %bb.ab ], [ %.pre109, %bb.ac ]
  %i.cx = trunc i64 %i.m to i32
  %i.cy = icmp ugt i32 %i.cx, -10
  br i1 %i.cy, label %bb.ad, label %JS_FreeValue.exit72

bb.ad:                                            ; preds = %JS_FreeValue.exit71
  %i.cz = inttoptr i64 %i.l to ptr
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !191 ; 2 uses
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !191
  %i.dd = icmp slt i32 %i.db, 2
  br i1 %i.dd, label %bb.ae, label %JS_FreeValue.exit72

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cw, i64 %i.l, i64 %i.m), !inline_history !291
  br label %JS_FreeValue.exit72

JS_FreeValue.exit72:                              ; preds = %bb.ae, %bb.ad, %JS_FreeValue.exit71, %JS_ToStringCheckObject.exit, %JS_ToStringCheckObject.exit.thread, %JS_FreeValue.exit68
  %i.de = phi i64 [ %.sroa.0.0.insert.ext.i, %JS_FreeValue.exit68 ], [ %i.d, %JS_ToStringCheckObject.exit ], [ 0, %JS_ToStringCheckObject.exit.thread ], [ 0, %JS_FreeValue.exit71 ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  %.sroa.5.0 = phi i64 [ 0, %JS_FreeValue.exit68 ], [ %i.e, %JS_ToStringCheckObject.exit ], [ 6, %JS_ToStringCheckObject.exit.thread ], [ 6, %JS_FreeValue.exit71 ], [ 6, %bb.ad ], [ 6, %bb.ae ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.de, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_includes(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = and i64 %2, 4294967294
  %or.cond.i = icmp eq i64 %i.a, 2
  br i1 %or.cond.i, label %JS_ToStringCheckObject.exit.thread, label %JS_ToStringCheckObject.exit

JS_ToStringCheckObject.exit.thread:               ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.194), !inline_history !151 ; 0 uses
  br label %JS_FreeValue.exit74

JS_ToStringCheckObject.exit:                      ; preds = %bb.a
  %i.c = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !152 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 5 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 6 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %JS_FreeValue.exit74, label %bb.b

bb.b:                                             ; preds = %JS_ToStringCheckObject.exit
  %i.h = load i64, ptr %4, align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 4294967295
  br i1 %i.l, label %bb.c, label %js_is_regexp.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.h, i64 %i.j, i32 noundef 229, i64 %i.h, i64 %i.j, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %trunc.i = trunc i64 %i.n to i32
  switch i32 %trunc.i, label %bb.d [
    i32 6, label %JS_ToInt32Clamp.exit
    i32 3, label %js_get_regexp.exit.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { i64, i64 } %i.m, 0
  %i.p = tail call fastcc i32 @JS_ToBoolFree(ptr noundef %0, i64 %i.o, i64 %i.n)
  br label %js_is_regexp.exit

js_get_regexp.exit.i:                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.h to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 18
  %i.s = load i16, ptr %i.r, align 2, !tbaa !276
  %.not8.i.not.i = icmp eq i16 %i.s, 19
  %i.t = zext i1 %.not8.i.not.i to i32
  br label %js_is_regexp.exit

js_is_regexp.exit:                                ; preds = %bb.d, %js_get_regexp.exit.i
  %.0.i = phi i32 [ %i.p, %bb.d ], [ %i.t, %js_get_regexp.exit.i ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %js_is_regexp.exit.js_is_regexp.exit.thread_crit_edge, label %bb.e

js_is_regexp.exit.js_is_regexp.exit.thread_crit_edge: ; preds = %js_is_regexp.exit
  %.pre = load i64, ptr %4, align 8
  %.pre109 = load i64, ptr %i.i, align 8
  br label %js_is_regexp.exit.thread

bb.e:                                             ; preds = %js_is_regexp.exit
  %i.u = icmp sgt i32 %.0.i, 0
  br i1 %i.u, label %bb.f, label %JS_ToInt32Clamp.exit

bb.f:                                             ; preds = %bb.e
  %i.v = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.870) ; 0 uses
  br label %JS_ToInt32Clamp.exit

js_is_regexp.exit.thread:                         ; preds = %js_is_regexp.exit.js_is_regexp.exit.thread_crit_edge, %bb.b
  %i.w = phi i64 [ %.pre109, %js_is_regexp.exit.js_is_regexp.exit.thread_crit_edge ], [ %i.j, %bb.b ]
  %i.x = phi i64 [ %.pre, %js_is_regexp.exit.js_is_regexp.exit.thread_crit_edge ], [ %i.h, %bb.b ]
  %i.y = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.x, i64 %i.w, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 5 uses
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 6 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %JS_ToInt32Clamp.exit, label %bb.g

bb.g:                                             ; preds = %js_is_regexp.exit.thread
  %i.ad = inttoptr i64 %i.d to ptr                ; 4 uses
  %i.ae = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 2147483647               ; 3 uses
  %i.ai = load i64, ptr %i.ae, align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 2147483647               ; 4 uses
  %i.al = icmp eq i32 %5, 2
  %i.am = select i1 %i.al, i32 %i.ah, i32 0       ; 2 uses
  %i.an = icmp sgt i32 %3, 1
  br i1 %i.an, label %bb.h, label %JS_ToInt32Clamp.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %JS_ToInt32Clamp.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = trunc i64 %i.ap to i32
  %i.av = icmp ugt i32 %i.au, -10
  br i1 %i.av, label %bb.j, label %js_dup.exit.i.preheader

bb.j:                                             ; preds = %bb.i
  %i.aw = inttoptr i64 %i.at to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.j, %bb.i
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.n
  %.sroa.09.0.in.i.i = phi i64 [ %i.bc, %bb.n ], [ %i.at, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.bd, %bb.n ], [ %i.ap, %js_dup.exit.i.preheader ] ; 2 uses
  %i.ba = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.ba, label %bb.n [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 6, label %JS_ToInt32Clamp.exit
    i32 8, label %bb.l
  ]

bb.k:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.o

bb.l:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %6 = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %7 = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond100 = or i1 %6, %7
  br i1 %or.cond100, label %JS_ToInt32Clamp.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.o

bb.n:                                             ; preds = %js_dup.exit.i
  %i.bb = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1      ; 2 uses
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = icmp eq i64 %i.be, 6
  br i1 %i.bf, label %JS_ToInt32Clamp.exit, label %js_dup.exit.i

bb.o:                                             ; preds = %bb.m, %bb.k
  %.1.sink.i.ph.i = phi i32 [ %.sroa.09.0.extract.trunc.i.i, %bb.k ], [ %spec.select.i.i, %bb.m ] ; 2 uses
  %i.bg = icmp slt i32 %.1.sink.i.ph.i, 0
  br i1 %i.bg, label %JS_ToInt32Clamp.exit.thread, label %.thread26.i

.thread26.i:                                      ; preds = %bb.o
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.1.sink.i.ph.i, i32 %i.ah)
  br label %JS_ToInt32Clamp.exit.thread

JS_ToInt32Clamp.exit.thread:                      ; preds = %.thread26.i, %bb.l, %bb.o, %bb.h, %bb.g
  %.081 = phi i32 [ %i.am, %bb.h ], [ %i.am, %bb.g ], [ %spec.select, %.thread26.i ], [ 0, %bb.l ], [ 0, %bb.o ] ; 5 uses
  %i.bh = sub nsw i32 %i.ah, %i.ak                ; 2 uses
  switch i32 %5, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %JS_ToInt32Clamp.exit.thread
  %i.bi = icmp sgt i32 %.081, %i.bh
  br i1 %i.bi, label %.loopexit, label %bb.r

bb.q:                                             ; preds = %JS_ToInt32Clamp.exit.thread
  %i.bj = sub nsw i32 %.081, %i.ak                ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %JS_ToInt32Clamp.exit.thread
  %.059 = phi i32 [ %.081, %JS_ToInt32Clamp.exit.thread ], [ %i.bj, %bb.q ], [ %.081, %bb.p ] ; 5 uses
  %.058 = phi i32 [ %i.bh, %JS_ToInt32Clamp.exit.thread ], [ %i.bj, %bb.q ], [ %.081, %bb.p ] ; 3 uses
  %i.bk = icmp slt i32 %.059, 0
  %.not63 = icmp sgt i32 %.059, %.058
  %or.cond = select i1 %i.bk, i1 true, i1 %.not63
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.bl = tail call fastcc i32 @string_cmp(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i32 noundef %.059, i32 noundef 0, i32 noundef %i.ak)
  %.not64103 = icmp eq i32 %i.bl, 0
  br i1 %.not64103, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bm = icmp eq i32 %.059, %.058
  br i1 %i.bm, label %.loopexit, label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.0104116 = phi i32 [ %i.bn, %.lr.ph ], [ %.059, %.lr.ph.preheader ]
  %i.bn = add nuw nsw i32 %.0104116, 1            ; 3 uses
  %i.bo = tail call fastcc i32 @string_cmp(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i32 noundef %i.bn, i32 noundef 0, i32 noundef %i.ak)
  %.not64 = icmp eq i32 %i.bo, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph117
  %i.bp = icmp eq i32 %i.bn, %.058
  br i1 %i.bp, label %.loopexit, label %.lr.ph117

.loopexit:                                        ; preds = %.lr.ph117, %.lr.ph, %.lr.ph.preheader, %.preheader, %bb.r, %bb.p
  %.sroa.0.0.insert.ext.i = phi i64 [ 0, %bb.p ], [ 0, %bb.r ], [ 1, %.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph ], [ 1, %.lr.ph117 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !232 ; 3 uses
  %i.bs = trunc i64 %i.e to i32
  %i.bt = icmp ugt i32 %i.bs, -10
  br i1 %i.bt, label %bb.s, label %JS_FreeValue.exit

bb.s:                                             ; preds = %.loopexit
  %i.bu = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !191 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !191
  %i.bx = icmp slt i32 %i.bv, 2
  br i1 %i.bx, label %bb.t, label %JS_FreeValue.exit

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @js_free_value_rt(ptr noundef %i.br, i64 %i.d, i64 %i.e), !inline_history !291
  %.pre110 = load ptr, ptr %i.bq, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %.loopexit, %bb.s, %bb.t
  %i.by = phi ptr [ %i.br, %.loopexit ], [ %i.br, %bb.s ], [ %.pre110, %bb.t ]
  %i.bz = trunc i64 %i.aa to i32
  %i.ca = icmp ugt i32 %i.bz, -10
  br i1 %i.ca, label %bb.u, label %JS_FreeValue.exit74

bb.u:                                             ; preds = %JS_FreeValue.exit
  %i.cb = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !191 ; 2 uses
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !191
  %i.ce = icmp slt i32 %i.cc, 2
  br i1 %i.ce, label %bb.v, label %JS_FreeValue.exit74

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @js_free_value_rt(ptr noundef %i.by, i64 %i.z, i64 %i.aa), !inline_history !291
  br label %JS_FreeValue.exit74

JS_ToInt32Clamp.exit:                             ; preds = %bb.n, %js_dup.exit.i, %bb.c, %js_is_regexp.exit.thread, %bb.e, %bb.f
  %.sroa.025.sroa.0.0 = phi i64 [ %i.z, %js_is_regexp.exit.thread ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.z, %js_dup.exit.i ], [ %i.z, %bb.n ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %i.aa, %js_is_regexp.exit.thread ], [ 3, %bb.c ], [ 3, %bb.f ], [ 3, %bb.e ], [ %i.aa, %js_dup.exit.i ], [ %i.aa, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !232 ; 3 uses
  %i.ch = trunc i64 %i.e to i32
  %i.ci = icmp ugt i32 %i.ch, -10
  br i1 %i.ci, label %bb.w, label %JS_FreeValue.exit73

bb.w:                                             ; preds = %JS_ToInt32Clamp.exit
  %i.cj = inttoptr i64 %i.d to ptr
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !191 ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !191
  %i.cn = icmp slt i32 %i.cl, 2
  br i1 %i.cn, label %bb.x, label %JS_FreeValue.exit73

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cg, i64 %i.d, i64 %i.e), !inline_history !291
  %.pre111 = load ptr, ptr %i.cf, align 8, !tbaa !232
  br label %JS_FreeValue.exit73

JS_FreeValue.exit73:                              ; preds = %JS_ToInt32Clamp.exit, %bb.w, %bb.x
  %i.co = phi ptr [ %i.cg, %JS_ToInt32Clamp.exit ], [ %i.cg, %bb.w ], [ %.pre111, %bb.x ]
  %i.cp = trunc i64 %.sroa.8.0 to i32
  %i.cq = icmp ugt i32 %i.cp, -10
  br i1 %i.cq, label %bb.y, label %JS_FreeValue.exit74

bb.y:                                             ; preds = %JS_FreeValue.exit73
  %i.cr = inttoptr i64 %.sroa.025.sroa.0.0 to ptr
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !191 ; 2 uses
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !191
  %i.cv = icmp slt i32 %i.ct, 2
  br i1 %i.cv, label %bb.z, label %JS_FreeValue.exit74

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @js_free_value_rt(ptr noundef %i.co, i64 %.sroa.025.sroa.0.0, i64 %.sroa.8.0), !inline_history !291
  br label %JS_FreeValue.exit74

JS_FreeValue.exit74:                              ; preds = %bb.v, %bb.u, %JS_FreeValue.exit, %bb.z, %bb.y, %JS_FreeValue.exit73, %JS_ToStringCheckObject.exit, %JS_ToStringCheckObject.exit.thread
  %i.cw = phi i64 [ 0, %bb.z ], [ %i.d, %JS_ToStringCheckObject.exit ], [ 0, %JS_ToStringCheckObject.exit.thread ], [ 0, %JS_FreeValue.exit73 ], [ 0, %bb.y ], [ %.sroa.0.0.insert.ext.i, %JS_FreeValue.exit ], [ %.sroa.0.0.insert.ext.i, %bb.u ], [ %.sroa.0.0.insert.ext.i, %bb.v ]
  %.sroa.5.0 = phi i64 [ 6, %bb.z ], [ %i.e, %JS_ToStringCheckObject.exit ], [ 6, %JS_ToStringCheckObject.exit.thread ], [ 6, %JS_FreeValue.exit73 ], [ 6, %bb.y ], [ 1, %JS_FreeValue.exit ], [ 1, %bb.u ], [ 1, %bb.v ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.cw, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_match(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  %7 = alloca [2 x %struct.JSValue], align 16     ; 7 uses
  %8 = alloca %struct.JSValue, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  store i64 %1, ptr %6, align 8, !tbaa !218
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.sroa.272.0..sroa_idx, align 8, !tbaa !240
  %.sroa.043.0.copyload = load i64, ptr %4, align 8, !tbaa !218 ; 5 uses
  %.sroa.848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.848.0.copyload = load i64, ptr %.sroa.848.0..sroa_idx, align 8, !tbaa !240 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.a = and i64 %2, 4294967294
  %switch = icmp eq i64 %i.a, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.871) ; 0 uses
  br label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %.sroa.848.0.copyload, 4294967295
  %i.d = icmp eq i64 %i.c, 4294967295
  br i1 %i.d, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %.sroa.043.0.copyload, i64 %.sroa.848.0.copyload, i32 noundef %5, i64 %.sroa.043.0.copyload, i64 %.sroa.848.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 3 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 5 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %JS_FreeValue.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %5, 230
  br i1 %i.j, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc i32 @check_regexp_g_flag(ptr noundef %0, i64 %.sroa.043.0.copyload, i64 %.sroa.848.0.copyload)
end_hunk_8
begin_hunk_9_@js_string_split:bb.a
.loopexit.loopexit:                               ; preds = %bb.t, %bb.u
  %.1158.ph = phi i64 [ %i.ca, %bb.t ], [ %.0157201, %bb.u ]
  %.1.ph = phi i64 [ %indvars.iv.next, %bb.t ], [ %indvars.iv, %bb.u ]
  %i.ct = trunc nuw i64 %.1158.ph to i32
  %i.cu = and i64 %.1.ph, 4294967295
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.s, %bb.q
  %.1158 = phi i32 [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %.preheader ], [ %i.ct, %.loopexit.loopexit ]
  %.1 = phi i64 [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %.preheader ], [ %i.cu, %.loopexit.loopexit ]
  %i.cv = tail call fastcc { i64, i64 } @js_sub_string(ptr noundef %0, ptr noundef nonnull %i.bg, i32 noundef %.1158, i32 noundef %i.bj) ; 2 uses
  %i.cw = extractvalue { i64, i64 } %i.cv, 1      ; 2 uses
  %i.cx = and i64 %i.cw, 4294967295
  %i.cy = icmp eq i64 %i.cx, 6
  br i1 %i.cy, label %JS_ToUint32.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.cz = extractvalue { i64, i64 } %i.cv, 0
  %i.da = tail call fastcc i32 @JS_CreateDataPropertyUint32(ptr noundef %0, i64 %i.y, i64 %i.z, i64 noundef %.1, i64 %i.cz, i64 %i.cw, i32 noundef 0)
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %JS_ToUint32.exit, label %.loopexit192

.loopexit192:                                     ; preds = %bb.x, %bb.y, %bb.s, %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !232 ; 3 uses
  %i.de = trunc i64 %i.o to i32
  %i.df = icmp ugt i32 %i.de, -10
  br i1 %i.df, label %bb.z, label %JS_FreeValue.exit

bb.z:                                             ; preds = %.loopexit192
  %i.dg = getelementptr inbounds i8, ptr %i.bg, i64 -4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !191 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !191
  %i.dj = icmp slt i32 %i.dh, 2
  br i1 %i.dj, label %bb.aa, label %JS_FreeValue.exit

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dd, i64 %i.n, i64 %i.o), !inline_history !291
  %.pre = load ptr, ptr %i.dc, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %.loopexit192, %bb.z, %bb.aa
  %i.dk = phi ptr [ %i.dd, %.loopexit192 ], [ %i.dd, %bb.z ], [ %.pre, %bb.aa ]
  %i.dl = trunc i64 %i.bn to i32
  %i.dm = icmp ugt i32 %i.dl, -10
  br i1 %i.dm, label %bb.ab, label %JS_FreeValue.exit167

bb.ab:                                            ; preds = %JS_FreeValue.exit
  %i.dn = getelementptr inbounds i8, ptr %i.bq, i64 -4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !191 ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !191
  %i.dq = icmp slt i32 %i.do, 2
  br i1 %i.dq, label %bb.ac, label %JS_FreeValue.exit167

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dk, i64 %i.bm, i64 %i.bn), !inline_history !291
  br label %JS_FreeValue.exit167

JS_FreeValue.exit167:                             ; preds = %JS_FreeValue.exit, %bb.ab, %bb.ac
  %.sroa.6151.0.extract.shift154 = and i64 %i.y, -4294967296
  br label %JS_FreeValue.exit170

JS_ToUint32.exit:                                 ; preds = %bb.o, %bb.w, %bb.v, %bb.y, %.loopexit, %JS_ToUint32.exit.thread, %bb.f
  %.sroa.057.0 = phi i64 [ %i.bm, %bb.w ], [ 0, %bb.f ], [ %i.bm, %JS_ToUint32.exit.thread ], [ %i.bm, %.loopexit ], [ %i.bm, %bb.y ], [ %i.bm, %bb.v ], [ 0, %bb.o ] ; 3 uses
  %.sroa.9.0 = phi i64 [ %i.bn, %bb.w ], [ 3, %bb.f ], [ %i.bn, %JS_ToUint32.exit.thread ], [ %i.bn, %.loopexit ], [ %i.bn, %bb.y ], [ %i.bn, %bb.v ], [ 3, %bb.o ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !232
  %i.dt = trunc i64 %i.z to i32
  %i.du = icmp ugt i32 %i.dt, -10
  br i1 %i.du, label %bb.ad, label %JS_FreeValue.exit168

bb.ad:                                            ; preds = %JS_ToUint32.exit
  %i.dv = inttoptr i64 %i.y to ptr
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !191 ; 2 uses
  %i.dy = add nsw i32 %i.dx, -1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !191
  %i.dz = icmp slt i32 %i.dx, 2
  br i1 %i.dz, label %bb.ae, label %JS_FreeValue.exit168

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ds, i64 %i.y, i64 %i.z), !inline_history !291
  br label %JS_FreeValue.exit168

JS_FreeValue.exit168:                             ; preds = %JS_ToUint32.exit.thread179, %JS_ToUint32.exit, %bb.ad, %bb.ae
  %i.ea = phi ptr [ %i.r, %JS_ToUint32.exit.thread179 ], [ %i.dr, %JS_ToUint32.exit ], [ %i.dr, %bb.ad ], [ %i.dr, %bb.ae ] ; 2 uses
  %.sroa.9.0189 = phi i64 [ 3, %JS_ToUint32.exit.thread179 ], [ %.sroa.9.0, %JS_ToUint32.exit ], [ %.sroa.9.0, %bb.ad ], [ %.sroa.9.0, %bb.ae ] ; 2 uses
  %.sroa.057.0188 = phi i64 [ 0, %JS_ToUint32.exit.thread179 ], [ %.sroa.057.0, %JS_ToUint32.exit ], [ %.sroa.057.0, %bb.ad ], [ %.sroa.057.0, %bb.ae ] ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !232 ; 3 uses
  %i.ec = trunc i64 %i.o to i32
  %i.ed = icmp ugt i32 %i.ec, -10
  br i1 %i.ed, label %bb.af, label %JS_FreeValue.exit169

bb.af:                                            ; preds = %JS_FreeValue.exit168
  %i.ee = inttoptr i64 %i.n to ptr
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !191 ; 2 uses
  %i.eh = add nsw i32 %i.eg, -1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !191
  %i.ei = icmp slt i32 %i.eg, 2
  br i1 %i.ei, label %bb.ag, label %JS_FreeValue.exit169

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @js_free_value_rt(ptr noundef %i.eb, i64 %i.n, i64 %i.o), !inline_history !291
  %.pre212 = load ptr, ptr %i.ea, align 8, !tbaa !232
  br label %JS_FreeValue.exit169

JS_FreeValue.exit169:                             ; preds = %JS_FreeValue.exit168, %bb.af, %bb.ag
  %i.ej = phi ptr [ %i.eb, %JS_FreeValue.exit168 ], [ %i.eb, %bb.af ], [ %.pre212, %bb.ag ]
  %i.ek = trunc i64 %.sroa.9.0189 to i32
  %i.el = icmp ugt i32 %i.ek, -10
  br i1 %i.el, label %bb.ah, label %JS_FreeValue.exit170

bb.ah:                                            ; preds = %JS_FreeValue.exit169
  %i.em = inttoptr i64 %.sroa.057.0188 to ptr
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !191 ; 2 uses
  %i.ep = add nsw i32 %i.eo, -1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !191
  %i.eq = icmp slt i32 %i.eo, 2
  br i1 %i.eq, label %bb.ai, label %JS_FreeValue.exit170

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ej, i64 %.sroa.057.0188, i64 %.sroa.9.0189), !inline_history !291
  br label %JS_FreeValue.exit170

JS_FreeValue.exit170:                             ; preds = %bb.d, %bb.ai, %bb.ah, %JS_FreeValue.exit169, %bb.e, %JS_FreeValue.exit167, %bb.b
  %.sroa.0148.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.y, %JS_FreeValue.exit167 ], [ %i.k, %bb.e ], [ 0, %JS_FreeValue.exit169 ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  %.sroa.6151.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.d ], [ %.sroa.6151.0.extract.shift154, %JS_FreeValue.exit167 ], [ %.sroa.6151.0.extract.shift152, %bb.e ], [ 0, %JS_FreeValue.exit169 ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  %.sroa.8156.1 = phi i64 [ 6, %bb.b ], [ 6, %bb.d ], [ %i.z, %JS_FreeValue.exit167 ], [ %i.l, %bb.e ], [ 6, %JS_FreeValue.exit169 ], [ 6, %bb.ah ], [ 6, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.sroa.0148.0.insert.ext = and i64 %.sroa.0148.1, 4294967295
  %.sroa.0148.0.insert.insert = or disjoint i64 %.sroa.6151.1, %.sroa.0148.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0148.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8156.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_substring(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = and i64 %2, 4294967294
  %or.cond.i = icmp eq i64 %i.a, 2
  br i1 %or.cond.i, label %JS_ToStringCheckObject.exit.thread, label %JS_ToStringCheckObject.exit

JS_ToStringCheckObject.exit.thread:               ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.194), !inline_history !151 ; 0 uses
  br label %JS_FreeValue.exit

JS_ToStringCheckObject.exit:                      ; preds = %bb.a
  %i.c = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !152 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 5 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 8 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %JS_ToStringCheckObject.exit
  %i.h = inttoptr i64 %i.d to ptr                 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 2147483647
  %i.l = load i64, ptr %4, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp ugt i32 %i.o, -10
  br i1 %i.p, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = inttoptr i64 %i.l to ptr
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !191
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.g
  %.sroa.09.0.in.i.i = phi i64 [ %i.w, %bb.g ], [ %i.l, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.x, %bb.g ], [ %i.n, %js_dup.exit.i.preheader ] ; 2 uses
  %i.u = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.u, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt32Clamp.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.h

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %5 = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %6 = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond = or i1 %5, %6
  br i1 %or.cond, label %.thread26.i.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.h

bb.g:                                             ; preds = %js_dup.exit.i
  %i.v = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 6
  br i1 %i.z, label %JS_ToInt32Clamp.exit, label %js_dup.exit.i

bb.h:                                             ; preds = %bb.f, %bb.d
  %.1.sink.i.ph.i = phi i32 [ %.sroa.09.0.extract.trunc.i.i, %bb.d ], [ %spec.select.i.i, %bb.f ] ; 2 uses
  %i.aa = icmp slt i32 %.1.sink.i.ph.i, 0
  br i1 %i.aa, label %.thread26.i.thread, label %.thread26.i

.thread26.i:                                      ; preds = %bb.h
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.1.sink.i.ph.i, i32 %i.k)
  br label %.thread26.i.thread

JS_ToInt32Clamp.exit:                             ; preds = %bb.g, %js_dup.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !232
  %i.ad = trunc i64 %i.e to i32
  %i.ae = icmp ugt i32 %i.ad, -10
  br i1 %i.ae, label %bb.i, label %JS_FreeValue.exit

bb.i:                                             ; preds = %JS_ToInt32Clamp.exit
  %i.af = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ac, i64 %i.d, i64 %i.e), !inline_history !291
  br label %JS_FreeValue.exit

.thread26.i.thread:                               ; preds = %.thread26.i, %bb.e, %bb.h
  %.170.ph = phi i32 [ %spec.select, %.thread26.i ], [ 0, %bb.e ], [ 0, %bb.h ] ; 2 uses
  %i.aj = load i64, ptr %i.h, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %i.ak, 2147483647               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 3
  br i1 %i.ap, label %JS_ToInt32Clamp.exit62.thread, label %bb.k

bb.k:                                             ; preds = %.thread26.i.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = trunc i64 %i.an to i32
  %i.at = icmp ugt i32 %i.as, -10
  br i1 %i.at, label %bb.l, label %js_dup.exit.i45.preheader

bb.l:                                             ; preds = %bb.k
  %i.au = inttoptr i64 %i.ar to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !191
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !191
  br label %js_dup.exit.i45.preheader

js_dup.exit.i45.preheader:                        ; preds = %bb.l, %bb.k
  br label %js_dup.exit.i45

js_dup.exit.i45:                                  ; preds = %js_dup.exit.i45.preheader, %bb.p
  %.sroa.09.0.in.i.i46 = phi i64 [ %i.ba, %bb.p ], [ %i.ar, %js_dup.exit.i45.preheader ] ; 3 uses
  %.sroa.6.0.i.i47 = phi i64 [ %i.bb, %bb.p ], [ %i.an, %js_dup.exit.i45.preheader ] ; 2 uses
  %i.ay = trunc i64 %.sroa.6.0.i.i47 to i32
  switch i32 %i.ay, label %bb.p [
    i32 0, label %bb.m
    i32 1, label %bb.m
    i32 2, label %bb.m
    i32 3, label %bb.m
    i32 6, label %JS_ToInt32Clamp.exit62
    i32 8, label %bb.n
  ]

bb.m:                                             ; preds = %js_dup.exit.i45, %js_dup.exit.i45, %js_dup.exit.i45, %js_dup.exit.i45
  %.sroa.09.0.extract.trunc.i.i61 = trunc i64 %.sroa.09.0.in.i.i46 to i32
  br label %bb.q

bb.n:                                             ; preds = %js_dup.exit.i45
  %.sroa.09.0.le.i.i48 = bitcast i64 %.sroa.09.0.in.i.i46 to double ; 4 uses
  %7 = fcmp uno double %.sroa.09.0.le.i.i48, 0.000000e+00
  %8 = fcmp olt double %.sroa.09.0.le.i.i48, f0xC1E0000000000000
  %or.cond88 = or i1 %7, %8
  br i1 %or.cond88, label %JS_ToInt32Clamp.exit62.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.inv.i.i49 = fcmp oge double %.sroa.09.0.le.i.i48, f0x41DFFFFFFFC00000
  %spec.select16.i.i50 = select i1 %.inv.i.i49, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i48
  %spec.select.i.i51 = fptosi double %spec.select16.i.i50 to i32
  br label %bb.q

bb.p:                                             ; preds = %js_dup.exit.i45
  %i.az = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i46, i64 %.sroa.6.0.i.i47, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0
  %i.bb = extractvalue { i64, i64 } %i.az, 1      ; 2 uses
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = icmp eq i64 %i.bc, 6
  br i1 %i.bd, label %JS_ToInt32Clamp.exit62, label %js_dup.exit.i45

bb.q:                                             ; preds = %bb.o, %bb.m
  %.1.sink.i.ph.i52 = phi i32 [ %.sroa.09.0.extract.trunc.i.i61, %bb.m ], [ %spec.select.i.i51, %bb.o ] ; 2 uses
  %i.be = icmp slt i32 %.1.sink.i.ph.i52, 0
  br i1 %i.be, label %JS_ToInt32Clamp.exit62.thread, label %.thread26.i60

.thread26.i60:                                    ; preds = %bb.q
  %spec.select89 = tail call i32 @llvm.smin.i32(i32 %.1.sink.i.ph.i52, i32 %i.al)
  br label %JS_ToInt32Clamp.exit62.thread

JS_ToInt32Clamp.exit62:                           ; preds = %bb.p, %js_dup.exit.i45
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !232
  %i.bh = trunc i64 %i.e to i32
  %i.bi = icmp ugt i32 %i.bh, -10
  br i1 %i.bi, label %bb.r, label %JS_FreeValue.exit

bb.r:                                             ; preds = %JS_ToInt32Clamp.exit62
  %i.bj = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !191 ; 2 uses
  %i.bl = add nsw i32 %i.bk, -1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !191
  %i.bm = icmp slt i32 %i.bk, 2
  br i1 %i.bm, label %bb.s, label %JS_FreeValue.exit

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bg, i64 %i.d, i64 %i.e), !inline_history !291
  br label %JS_FreeValue.exit

JS_ToInt32Clamp.exit62.thread:                    ; preds = %.thread26.i60, %bb.n, %bb.q, %.thread26.i.thread
  %.0 = phi i32 [ %i.al, %.thread26.i.thread ], [ %spec.select89, %.thread26.i60 ], [ 0, %bb.n ], [ 0, %bb.q ] ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %.170.ph, i32 %.0)
  %.44 = tail call i32 @llvm.smax.i32(i32 %.170.ph, i32 %.0)
  %i.bn = tail call fastcc { i64, i64 } @js_sub_string(ptr noundef %0, ptr noundef nonnull %i.h, i32 noundef %., i32 noundef %.44) ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { i64, i64 } %i.bn, 1      ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !232
  %i.bs = trunc i64 %i.e to i32
  %i.bt = icmp ugt i32 %i.bs, -10
  br i1 %i.bt, label %bb.t, label %JS_FreeValue.exit

bb.t:                                             ; preds = %JS_ToInt32Clamp.exit62.thread
  %i.bu = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !191 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !191
  %i.bx = icmp slt i32 %i.bv, 2
  br i1 %i.bx, label %bb.u, label %JS_FreeValue.exit

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @js_free_value_rt(ptr noundef %i.br, i64 %i.d, i64 %i.e), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.u, %bb.t, %JS_ToInt32Clamp.exit62.thread, %bb.s, %bb.r, %JS_ToInt32Clamp.exit62, %bb.j, %bb.i, %JS_ToInt32Clamp.exit, %JS_ToStringCheckObject.exit, %JS_ToStringCheckObject.exit.thread
  %i.by = phi i64 [ 0, %bb.j ], [ %i.d, %JS_ToStringCheckObject.exit ], [ 0, %bb.s ], [ 0, %JS_ToStringCheckObject.exit.thread ], [ 0, %JS_ToInt32Clamp.exit ], [ 0, %bb.i ], [ 0, %JS_ToInt32Clamp.exit62 ], [ 0, %bb.r ], [ %i.bo, %JS_ToInt32Clamp.exit62.thread ], [ %i.bo, %bb.t ], [ %i.bo, %bb.u ]
  %.sroa.7.0 = phi i64 [ 6, %bb.j ], [ %i.e, %JS_ToStringCheckObject.exit ], [ 6, %bb.s ], [ 6, %JS_ToStringCheckObject.exit.thread ], [ 6, %JS_ToInt32Clamp.exit ], [ 6, %bb.i ], [ 6, %JS_ToInt32Clamp.exit62 ], [ 6, %bb.r ], [ %i.bp, %JS_ToInt32Clamp.exit62.thread ], [ %i.bp, %bb.t ], [ %i.bp, %bb.u ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.by, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_substr(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = and i64 %2, 4294967294
  %or.cond.i = icmp eq i64 %i.a, 2
  br i1 %or.cond.i, label %JS_ToStringCheckObject.exit.thread, label %JS_ToStringCheckObject.exit

JS_ToStringCheckObject.exit.thread:               ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.194), !inline_history !151 ; 0 uses
  br label %JS_FreeValue.exit

JS_ToStringCheckObject.exit:                      ; preds = %bb.a
  %i.c = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !152 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 5 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 8 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %JS_ToStringCheckObject.exit
  %i.h = inttoptr i64 %i.d to ptr                 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 2147483647                 ; 3 uses
  %i.l = load i64, ptr %4, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp ugt i32 %i.o, -10
  br i1 %i.p, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = inttoptr i64 %i.l to ptr
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !191
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.09.0.in.i.i = phi i64 [ %i.y, %bb.h ], [ %i.l, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.z, %bb.h ], [ %i.n, %js_dup.exit.i.preheader ] ; 2 uses
  %i.u = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.u, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt32Clamp.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.i

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %i.v = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  br i1 %i.v, label %.thread26.i.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  br i1 %i.w, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i
  %i.x = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 2 uses
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = icmp eq i64 %i.aa, 6
  br i1 %i.ab, label %JS_ToInt32Clamp.exit, label %js_dup.exit.i

bb.i:                                             ; preds = %bb.g, %bb.d
  %.1.sink.i.ph.i = phi i32 [ %.sroa.09.0.extract.trunc.i.i, %bb.d ], [ %spec.select.i.i, %bb.g ] ; 3 uses
  %i.ac = icmp slt i32 %.1.sink.i.ph.i, 0
  br i1 %i.ac, label %.thread.i, label %.thread26.i

.thread.i:                                        ; preds = %bb.i, %bb.f
  %.1.sink.i.ph25.i = phi i32 [ %.1.sink.i.ph.i, %bb.i ], [ -2147483648, %bb.f ]
  %i.ad = add nsw i32 %.1.sink.i.ph25.i, %i.k
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  br label %.thread26.i.thread

.thread26.i:                                      ; preds = %bb.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.1.sink.i.ph.i, i32 %i.k)
  br label %.thread26.i.thread

JS_ToInt32Clamp.exit:                             ; preds = %bb.h, %js_dup.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !232
  %i.ag = trunc i64 %i.e to i32
  %i.ah = icmp ugt i32 %i.ag, -10
  br i1 %i.ah, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %JS_ToInt32Clamp.exit
  %i.ai = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !191 ; 2 uses
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !191
  %i.al = icmp slt i32 %i.aj, 2
  br i1 %i.al, label %bb.k, label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %i.af, i64 %i.d, i64 %i.e), !inline_history !291
  br label %JS_FreeValue.exit

.thread26.i.thread:                               ; preds = %.thread26.i, %bb.e, %.thread.i
  %.168.ph = phi i32 [ 0, %bb.e ], [ %spec.store.select.i, %.thread.i ], [ %spec.select, %.thread26.i ] ; 3 uses
  %i.am = sub nsw i32 %i.k, %.168.ph              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp eq i64 %i.ap, 3
end_hunk_9
begin_hunk_10_@js_string_replace:bb.a

bb.ar:                                            ; preds = %.thread245
  %i.ic = getelementptr inbounds i8, ptr %i.ht, i64 -4 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !191 ; 2 uses
  %i.ie = add nsw i32 %i.id, -1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !191
  %i.if = icmp slt i32 %i.id, 2
  br i1 %i.if, label %bb.as, label %JS_FreeValue.exit217

bb.as:                                            ; preds = %bb.ar
  call fastcc void @js_free_value_rt(ptr noundef %i.hz, i64 %i.cf, i64 %i.cg), !inline_history !291
  %.pre270 = load ptr, ptr %i.r, align 8, !tbaa !232
  br label %JS_FreeValue.exit217

JS_FreeValue.exit217:                             ; preds = %.thread245, %bb.ar, %bb.as
  %i.ig = phi ptr [ %i.hz, %.thread245 ], [ %i.hz, %bb.ar ], [ %.pre270, %bb.as ] ; 3 uses
  %i.ih = trunc i64 %.sroa.10.0299 to i32
  %i.ii = icmp ugt i32 %i.ih, -10
  br i1 %i.ii, label %bb.at, label %JS_FreeValue.exit218

bb.at:                                            ; preds = %JS_FreeValue.exit217
  %i.ij = inttoptr i64 %.sroa.074.sroa.0.0.insert.insert92307 to ptr
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -4 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !191 ; 2 uses
  %i.im = add nsw i32 %i.il, -1
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !191
  %i.in = icmp slt i32 %i.il, 2
  br i1 %i.in, label %bb.au, label %JS_FreeValue.exit218

bb.au:                                            ; preds = %bb.at
  call fastcc void @js_free_value_rt(ptr noundef %i.ig, i64 %.sroa.074.sroa.0.0.insert.insert92307, i64 %.sroa.10.0299), !inline_history !291
  %.pre271 = load ptr, ptr %i.r, align 8, !tbaa !232
  br label %JS_FreeValue.exit218

JS_FreeValue.exit218:                             ; preds = %JS_FreeValue.exit217, %bb.at, %bb.au
  %i.io = phi ptr [ %i.ig, %JS_FreeValue.exit217 ], [ %i.ig, %bb.at ], [ %.pre271, %bb.au ]
  %i.ip = trunc i64 %i.cb to i32
  %i.iq = icmp ugt i32 %i.ip, -10
  br i1 %i.iq, label %bb.av, label %JS_FreeValue.exit219

bb.av:                                            ; preds = %JS_FreeValue.exit218
  %i.ir = getelementptr inbounds i8, ptr %i.hu, i64 -4 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !191 ; 2 uses
  %i.it = add nsw i32 %i.is, -1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !191
  %i.iu = icmp slt i32 %i.is, 2
  br i1 %i.iu, label %bb.aw, label %JS_FreeValue.exit219

bb.aw:                                            ; preds = %bb.av
  call fastcc void @js_free_value_rt(ptr noundef %i.io, i64 %i.ca, i64 %i.cb), !inline_history !291
  br label %JS_FreeValue.exit219

JS_FreeValue.exit219:                             ; preds = %JS_FreeValue.exit218, %bb.av, %bb.aw
  %i.iv = call fastcc { i64, i64 } @string_buffer_end(ptr noundef nonnull %7) ; 2 uses
  %i.iw = extractvalue { i64, i64 } %i.iv, 0
  %i.ix = extractvalue { i64, i64 } %i.iv, 1
  br label %JS_FreeValue.exit213

.loopexit:                                        ; preds = %JS_ToStringFree.exit.us, %.thread240, %.thread240.peel, %JS_ToStringFree.exit.us.peel, %JS_IsFunction.exit.thread236, %bb.t, %string_buffer_init.exit
  %.sroa.0109.sroa.0.0 = phi i64 [ 0, %string_buffer_init.exit ], [ %i.cf, %bb.t ], [ %i.cf, %JS_IsFunction.exit.thread236 ], [ %i.cf, %JS_ToStringFree.exit.us.peel ], [ %i.cf, %.thread240 ], [ %i.cf, %.thread240.peel ], [ %i.cf, %JS_ToStringFree.exit.us ] ; 2 uses
  %.sroa.10.1 = phi i64 [ 3, %string_buffer_init.exit ], [ 3, %bb.t ], [ %i.da, %JS_IsFunction.exit.thread236 ], [ 3, %JS_ToStringFree.exit.us.peel ], [ %i.da, %.thread240 ], [ %i.da, %.thread240.peel ], [ 3, %JS_ToStringFree.exit.us ] ; 2 uses
  %.sroa.074.sroa.0.1 = phi i64 [ 0, %string_buffer_init.exit ], [ 0, %bb.t ], [ %i.cz, %JS_IsFunction.exit.thread236 ], [ 0, %JS_ToStringFree.exit.us.peel ], [ %i.cz, %.thread240 ], [ %i.cz, %.thread240.peel ], [ 0, %JS_ToStringFree.exit.us ]
  %.sroa.074.sroa.9.1 = phi i64 [ 0, %string_buffer_init.exit ], [ 0, %bb.t ], [ %.sroa.074.sroa.9.0.extract.shift, %JS_IsFunction.exit.thread236 ], [ 0, %JS_ToStringFree.exit.us.peel ], [ %.sroa.074.sroa.9.0.extract.shift, %.thread240 ], [ %.sroa.074.sroa.9.0.extract.shift, %.thread240.peel ], [ 0, %JS_ToStringFree.exit.us ]
  %.sroa.12.0 = phi i64 [ 3, %string_buffer_init.exit ], [ %i.cg, %bb.t ], [ %i.cg, %JS_IsFunction.exit.thread236 ], [ %i.cg, %JS_ToStringFree.exit.us.peel ], [ %i.cg, %.thread240 ], [ %i.cg, %.thread240.peel ], [ %i.cg, %JS_ToStringFree.exit.us ] ; 2 uses
  %i.iy = load ptr, ptr %7, align 8, !tbaa !644
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !649
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.jc, ptr noundef %i.ja)
  store ptr null, ptr %i.iz, align 8, !tbaa !649
  %i.jd = load ptr, ptr %i.r, align 8, !tbaa !232 ; 3 uses
  %i.je = trunc i64 %.sroa.12.0 to i32
  %i.jf = icmp ugt i32 %i.je, -10
  br i1 %i.jf, label %bb.ax, label %JS_FreeValue.exit220

bb.ax:                                            ; preds = %.loopexit
  %i.jg = inttoptr i64 %.sroa.0109.sroa.0.0 to ptr
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -4 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !191 ; 2 uses
  %i.jj = add nsw i32 %i.ji, -1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !191
  %i.jk = icmp slt i32 %i.ji, 2
  br i1 %i.jk, label %bb.ay, label %JS_FreeValue.exit220

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @js_free_value_rt(ptr noundef %i.jd, i64 %.sroa.0109.sroa.0.0, i64 %.sroa.12.0), !inline_history !291
  %.pre272 = load ptr, ptr %i.r, align 8, !tbaa !232
  br label %JS_FreeValue.exit220

JS_FreeValue.exit220:                             ; preds = %.loopexit, %bb.ax, %bb.ay
  %i.jl = phi ptr [ %i.jd, %.loopexit ], [ %i.jd, %bb.ax ], [ %.pre272, %bb.ay ] ; 3 uses
  %.sroa.074.sroa.9.0.insert.shift102 = shl nuw i64 %.sroa.074.sroa.9.1, 32
  %.sroa.074.sroa.0.0.insert.ext87 = and i64 %.sroa.074.sroa.0.1, 4294967295
  %.sroa.074.sroa.0.0.insert.insert89 = or disjoint i64 %.sroa.074.sroa.9.0.insert.shift102, %.sroa.074.sroa.0.0.insert.ext87 ; 2 uses
  %i.jm = trunc i64 %.sroa.10.1 to i32
  %i.jn = icmp ugt i32 %i.jm, -10
  br i1 %i.jn, label %bb.az, label %JS_FreeValue.exit221

bb.az:                                            ; preds = %JS_FreeValue.exit220
  %i.jo = inttoptr i64 %.sroa.074.sroa.0.0.insert.insert89 to ptr
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 -4 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !191 ; 2 uses
  %i.jr = add nsw i32 %i.jq, -1
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !191
  %i.js = icmp slt i32 %i.jq, 2
  br i1 %i.js, label %bb.ba, label %JS_FreeValue.exit221

bb.ba:                                            ; preds = %bb.az
  call fastcc void @js_free_value_rt(ptr noundef %i.jl, i64 %.sroa.074.sroa.0.0.insert.insert89, i64 %.sroa.10.1), !inline_history !291
  %.pre273 = load ptr, ptr %i.r, align 8, !tbaa !232
  br label %JS_FreeValue.exit221

JS_FreeValue.exit221:                             ; preds = %JS_FreeValue.exit220, %bb.az, %bb.ba
  %i.jt = phi ptr [ %i.jl, %JS_FreeValue.exit220 ], [ %i.jl, %bb.az ], [ %.pre273, %bb.ba ]
  %i.ju = trunc i64 %i.cb to i32
  %i.jv = icmp ugt i32 %i.ju, -10
  br i1 %i.jv, label %bb.bb, label %JS_FreeValue.exit213

bb.bb:                                            ; preds = %JS_FreeValue.exit221
  %i.jw = inttoptr i64 %i.ca to ptr
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -4 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !191 ; 2 uses
  %i.jz = add nsw i32 %i.jy, -1
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !191
  %i.ka = icmp slt i32 %i.jy, 2
  br i1 %i.ka, label %bb.bc, label %JS_FreeValue.exit213

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @js_free_value_rt(ptr noundef %i.jt, i64 %i.ca, i64 %i.cb), !inline_history !291
  br label %JS_FreeValue.exit213

JS_FreeValue.exit213:                             ; preds = %bb.f, %bb.e, %bb.g, %bb.bc, %bb.bb, %JS_FreeValue.exit221, %bb.ap, %bb.ao, %JS_FreeValue.exit, %JS_FreeValue.exit219, %bb.b
  %i.kb = phi i64 [ 0, %bb.b ], [ %i.ca, %bb.ap ], [ 0, %bb.bc ], [ %i.iw, %JS_FreeValue.exit219 ], [ %i.ca, %JS_FreeValue.exit ], [ %i.ca, %bb.ao ], [ 0, %JS_FreeValue.exit221 ], [ 0, %bb.bb ], [ 0, %bb.f ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  %.sroa.11.1 = phi i64 [ 6, %bb.b ], [ %i.cb, %bb.ap ], [ 6, %bb.bc ], [ %i.ix, %JS_FreeValue.exit219 ], [ %i.cb, %JS_FreeValue.exit ], [ %i.cb, %bb.ao ], [ 6, %JS_FreeValue.exit221 ], [ 6, %bb.bb ], [ 6, %bb.f ], [ 6, %bb.e ], [ %i.n, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.kb, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.11.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_pad(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %6 = alloca %struct.StringBuffer, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.a = and i64 %2, 4294967294
  %or.cond.i = icmp eq i64 %i.a, 2
  br i1 %or.cond.i, label %JS_ToStringCheckObject.exit.thread, label %JS_ToStringCheckObject.exit

JS_ToStringCheckObject.exit.thread:               ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.194), !inline_history !151 ; 0 uses
  br label %JS_FreeValue.exit

JS_ToStringCheckObject.exit:                      ; preds = %bb.a
  %i.c = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !152 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 9 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 10 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %JS_ToStringCheckObject.exit
  %i.h = load i64, ptr %4, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp ugt i32 %i.k, -10
  br i1 %i.l, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.g
  %.sroa.09.0.in.i.i = phi i64 [ %i.s, %bb.g ], [ %i.h, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.t, %bb.g ], [ %i.j, %js_dup.exit.i.preheader ] ; 2 uses
  %i.q = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.q, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt32Sat.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.h

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %7 = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %8 = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %JS_FreeValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.h

bb.g:                                             ; preds = %js_dup.exit.i
  %i.r = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = extractvalue { i64, i64 } %i.r, 1        ; 2 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = icmp eq i64 %i.u, 6
  br i1 %i.v, label %JS_ToInt32Sat.exit, label %js_dup.exit.i

bb.h:                                             ; preds = %bb.d, %bb.f
  %.1.sink.i.i.ph = phi i32 [ %spec.select.i.i, %bb.f ], [ %.sroa.09.0.extract.trunc.i.i, %bb.d ] ; 6 uses
  %i.w = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 2147483647                 ; 4 uses
  %.not68 = icmp slt i32 %i.z, %.1.sink.i.i.ph
  br i1 %.not68, label %bb.i, label %JS_FreeValue.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i32 %3, 1
  br i1 %i.aa, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 3
  br i1 %i.ae, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.ag, i64 %i.ac, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0      ; 4 uses
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 5 uses
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp eq i64 %i.ak, 6
  br i1 %i.al, label %JS_ToInt32Sat.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = inttoptr i64 %i.ai to ptr               ; 4 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 2147483647
  switch i32 %i.ap, label %bb.q [
    i32 0, label %bb.m
    i32 1, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !232
  %i.as = trunc i64 %i.aj to i32
  %i.at = icmp ugt i32 %i.as, -10
  br i1 %i.at, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191 ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !191
  %i.ax = icmp slt i32 %i.av, 2
  br i1 %i.ax, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ar, i64 %i.ai, i64 %i.aj), !inline_history !291
  br label %JS_FreeValue.exit

bb.p:                                             ; preds = %bb.l
  %i.ay = tail call fastcc i32 @string_get(ptr noundef nonnull %i.am, i32 noundef 0)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.j, %bb.i
  %.sroa.026.sroa.0.0 = phi i64 [ 0, %bb.j ], [ %i.ai, %bb.l ], [ %i.ai, %bb.p ], [ 0, %bb.i ] ; 4 uses
  %.063 = phi ptr [ null, %bb.j ], [ %i.am, %bb.l ], [ null, %bb.p ], [ null, %bb.i ] ; 3 uses
  %.062 = phi i32 [ 32, %bb.j ], [ 32, %bb.l ], [ %i.ay, %bb.p ], [ 32, %bb.i ]
  %.sroa.9.0 = phi i64 [ 3, %bb.j ], [ %i.aj, %bb.l ], [ %i.aj, %bb.p ], [ 3, %bb.i ] ; 4 uses
  %i.az = icmp samesign ugt i32 %.1.sink.i.i.ph, 1073741823
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.3) ; 0 uses
  br label %string_buffer_init.exit

bb.s:                                             ; preds = %bb.q
  store ptr %0, ptr %6, align 8, !tbaa !644
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.1.sink.i.i.ph, ptr %i.bb, align 4, !tbaa !645
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.bc, align 8, !tbaa !646
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %i.bd, align 8, !tbaa !647
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.be, align 4, !tbaa !648
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !232 ; 7 uses
  %narrow = add nuw nsw i32 %.1.sink.i.i.ph, 25
  %i.bh = zext nneg i32 %narrow to i64            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !196
  %i.bl = add i64 %i.bk, %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !197
  %i.bo = add i64 %i.bn, -1
  %i.bp = icmp ugt i64 %i.bl, %i.bo
  br i1 %i.bp, label %bb.y, label %bb.t, !prof !192

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.bg, i64 noundef %i.bh), !inline_history !165 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.t
  %.pre.i.i = load ptr, ptr %i.bf, align 8, !tbaa !232
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.br = load i64, ptr %i.bi, align 8, !tbaa !217
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.bi, align 8, !tbaa !217
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 -8 ; 3 uses
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !218
  %i.bv = icmp eq i16 %i.bu, -1
  br i1 %i.bv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 1064
  %i.bx = icmp eq ptr %i.bt, %i.bw
  br i1 %i.bx, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !219
  %i.ca = tail call i64 %i.bz(ptr noundef nonnull %i.bt) #49, !inline_history !105 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.ca, 0
  %i.cb = select i1 %.not15.i.i.i.i.i, i64 8, i64 %i.ca
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds i8, ptr %i.bq, i64 -6
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !218
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !221
  %i.ch = zext i16 %i.cg to i64
  br label %bb.aa

bb.y:                                             ; preds = %._crit_edge.i.i, %bb.s
  %i.ci = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bg, %bb.s ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1256 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !233, !range !234, !noundef !235
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %string_buffer_init.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.cj, align 8, !tbaa !233
  %i.cm = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !106 ; 0 uses
  store i8 0, ptr %i.cj, align 8, !tbaa !233
  br label %string_buffer_init.exit

bb.aa:                                            ; preds = %bb.v, %bb.w, %bb.x
  %.011.i.i.i.i.i = phi i64 [ 8, %bb.v ], [ %i.cb, %bb.w ], [ %i.ch, %bb.x ]
  %i.cn = load i64, ptr %i.bj, align 8, !tbaa !196
  %i.co = add i64 %i.cn, %.011.i.i.i.i.i
  store i64 %i.co, ptr %i.bj, align 8, !tbaa !196
  %i.cp = getelementptr inbounds i8, ptr %i.bq, i64 -4
  store i32 1, ptr %i.cp, align 4, !tbaa !191
  %i.cq = zext nneg i32 %.1.sink.i.i.ph to i64
  store i64 %i.cq, ptr %i.bq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 0, ptr %i.cr, align 8, !tbaa !249
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.cs, align 8, !tbaa !649
  %i.ct = sub nuw nsw i32 %.1.sink.i.i.ph, %i.z   ; 3 uses
  %.not71 = icmp eq i32 %5, 0                     ; 2 uses
  br i1 %.not71, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %6, ptr noundef nonnull %i.w, i32 noundef 0, i32 noundef %i.z)
  %.not72 = icmp eq i32 %i.cu, 0
  br i1 %.not72, label %bb.ac, label %.thread116

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not73 = icmp eq ptr %.063, null
  br i1 %.not73, label %bb.ae, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %.not130 = icmp eq i32 %i.ct, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph

bb.ad:                                            ; preds = %.lr.ph
  %i.cv = sub nuw nsw i32 %.098121, %i.cz         ; 2 uses
end_hunk_10
begin_hunk_11_@js_atomics_wait:bb.a
  %i.v = icmp ugt i32 %i.u, -10                   ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  br i1 %i.v, label %bb.d, label %js_dup.exit.i

bb.d:                                             ; preds = %bb.c
  %i.w = inttoptr i64 %i.r to ptr
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !191
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !191
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %bb.d, %bb.c
  %i.aa = tail call fastcc { i64, i64 } @JS_ToBigIntFree(ptr noundef %0, i64 %i.r, i64 %i.t) #51, !inline_history !511 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 3 uses
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %trunc.i.i = trunc i64 %i.ac to i32             ; 2 uses
  switch i32 %trunc.i.i, label %bb.f [
    i32 6, label %JS_ToBigInt64.exit
    i32 7, label %bb.e
  ]

bb.e:                                             ; preds = %js_dup.exit.i
  %i.ad = shl i64 %i.ab, 32
  %i.ae = ashr exact i64 %i.ad, 32
  br label %JS_ToBigInt64.exit.thread

bb.f:                                             ; preds = %js_dup.exit.i
  %i.af = inttoptr i64 %i.ab to ptr               ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !191
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load i32, ptr %i.af, align 4, !tbaa !191
  %i.ak = icmp ugt i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = or disjoint i64 %i.ao, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.016.i.i = phi i64 [ %i.ap, %bb.g ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !232
  %i.as = icmp ugt i32 %trunc.i.i, -10
  br i1 %i.as, label %bb.i, label %JS_ToBigInt64.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !191 ; 2 uses
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !191
  %i.aw = icmp slt i32 %i.au, 2
  br i1 %i.aw, label %bb.j, label %JS_ToBigInt64.exit.thread

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ar, i64 %i.ab, i64 %i.ac) #51, !inline_history !532
  br label %JS_ToBigInt64.exit.thread

bb.k:                                             ; preds = %bb.b
  br i1 %i.v, label %bb.l, label %js_dup.exit.i60.preheader

bb.l:                                             ; preds = %bb.k
  %i.ax = inttoptr i64 %i.r to ptr
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !191
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !191
  br label %js_dup.exit.i60.preheader

js_dup.exit.i60.preheader:                        ; preds = %bb.l, %bb.k
  br label %js_dup.exit.i60

js_dup.exit.i60:                                  ; preds = %js_dup.exit.i60.preheader, %bb.r
  %.sroa.017.0.in.i.i = phi i64 [ %i.bt, %bb.r ], [ %i.r, %js_dup.exit.i60.preheader ] ; 6 uses
  %.sroa.6.0.i.i = phi i64 [ %i.bu, %bb.r ], [ %i.t, %js_dup.exit.i60.preheader ] ; 2 uses
  %i.bb = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.bb, label %bb.r [
    i32 0, label %bb.m
    i32 1, label %bb.m
    i32 2, label %bb.m
    i32 3, label %bb.m
    i32 8, label %bb.n
  ]

bb.m:                                             ; preds = %js_dup.exit.i60, %js_dup.exit.i60, %js_dup.exit.i60, %js_dup.exit.i60
  %.sroa.017.0.extract.trunc.i.i = trunc i64 %.sroa.017.0.in.i.i to i32
  br label %bb.s

bb.n:                                             ; preds = %js_dup.exit.i60
  %i.bc = lshr i64 %.sroa.017.0.in.i.i, 52
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 2047                     ; 3 uses
  %i.bf = icmp samesign ult i32 %i.be, 1054
  br i1 %i.bf, label %bb.o, label %bb.p, !prof !325

bb.o:                                             ; preds = %bb.n
  %.sroa.017.0.i.le.i = bitcast i64 %.sroa.017.0.in.i.i to double
  %i.bg = fptosi double %.sroa.017.0.i.le.i to i32
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bh = icmp samesign ult i32 %i.be, 1107
  br i1 %i.bh, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bi = and i64 %.sroa.017.0.in.i.i, 4503599627370495
  %i.bj = or disjoint i64 %i.bi, 4503599627370496
  %i.bk = add nsw i32 %i.be, -1043
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl i64 %i.bj, %i.bl
  %i.bn = lshr i64 %i.bm, 32                      ; 2 uses
  %i.bo = trunc nuw i64 %i.bn to i32              ; 2 uses
  %i.bp = icmp slt i64 %.sroa.017.0.in.i.i, 0
  %i.bq = icmp ne i64 %i.bn, 2147483648
  %or.cond.i.i = select i1 %i.bp, i1 %i.bq, i1 false
  %i.br = sub nsw i32 0, %i.bo
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.br, i32 %i.bo
  br label %bb.s

bb.r:                                             ; preds = %js_dup.exit.i60
  %i.bs = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0) #51, !inline_history !103 ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 2 uses
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = icmp eq i64 %i.bv, 6
  br i1 %i.bw, label %JS_ToBigInt64.exit, label %js_dup.exit.i60

bb.s:                                             ; preds = %bb.p, %bb.m, %bb.o, %bb.q
  %storemerge.i.i61.ph = phi i32 [ %spec.select.i.i, %bb.q ], [ %i.bg, %bb.o ], [ %.sroa.017.0.extract.trunc.i.i, %bb.m ], [ 0, %bb.p ]
  %i.bx = sext i32 %storemerge.i.i61.ph to i64
  br label %JS_ToBigInt64.exit.thread

JS_ToBigInt64.exit.thread:                        ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.s
  %.069 = phi i64 [ %i.bx, %bb.s ], [ %.016.i.i, %bb.j ], [ %.016.i.i, %bb.i ], [ %.016.i.i, %bb.h ], [ %i.ae, %bb.e ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bz = load i64, ptr %i.by, align 8            ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = icmp ugt i32 %i.cc, -10
  br i1 %i.cd, label %.thread.i, label %js_dup.exit.i63

.thread.i:                                        ; preds = %JS_ToBigInt64.exit.thread
  %i.ce = inttoptr i64 %i.bz to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !191
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !191
  br label %bb.w

js_dup.exit.i63:                                  ; preds = %JS_ToBigInt64.exit.thread
  %i.ci = icmp ult i32 %i.cc, 3
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %js_dup.exit.i63
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bz to i32
  %i.cj = sitofp i32 %.sroa.0.0.extract.trunc.i.i to double
  br label %bb.aa

bb.u:                                             ; preds = %js_dup.exit.i63
  %i.ck = icmp eq i32 %i.cc, 8
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = bitcast i64 %i.bz to double
  br label %bb.aa

bb.w:                                             ; preds = %bb.u, %.thread.i
  %i.cm = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.bz, i64 %i.cb, i32 noundef 0) #51, !inline_history !7 ; 2 uses
  %i.cn = extractvalue { i64, i64 } %i.cm, 0      ; 2 uses
  %i.co = extractvalue { i64, i64 } %i.cm, 1      ; 2 uses
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = icmp eq i64 %i.cp, 6
  br i1 %i.cq, label %JS_ToBigInt64.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = bitcast i64 %i.cn to double
  %i.cs = trunc i64 %i.co to i32
  switch i32 %i.cs, label %bb.z [
    i32 0, label %bb.y
    i32 8, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.cn to i32
  %i.ct = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @abort() #50, !inline_history !8
  unreachable

bb.aa:                                            ; preds = %bb.t, %bb.v, %bb.x, %bb.y
  %.0.ph = phi double [ %i.ct, %bb.y ], [ %i.cr, %bb.x ], [ %i.cj, %bb.t ], [ %i.cl, %bb.v ] ; 4 uses
  %6 = fcmp uno double %.0.ph, 0.000000e+00
  %7 = fcmp oge double %.0.ph, f0x43E0000000000000
  %or.cond = or i1 %6, %7
  %.inv = fcmp ole double %.0.ph, 0.000000e+00
  %spec.select81 = select i1 %.inv, double 0.000000e+00, double %.0.ph
  %spec.select = fptosi double %spec.select81 to i64
  %.052 = select i1 %or.cond, i64 9223372036854775807, i64 %spec.select ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !232
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1432
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !308, !range !234, !noundef !235
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1048) ; 0 uses
  br label %JS_ToBigInt64.exit

bb.ac:                                            ; preds = %bb.aa
  %i.da = load i64, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !218
  %i.dd = zext i32 %i.dc to i64
  %.not59 = icmp ult i64 %i.da, %i.dd
  br i1 %.not59, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1045) ; 0 uses
  br label %JS_ToBigInt64.exit

bb.ae:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !218
  %i.dh = zext nneg i8 %i.o to i64
  %i.di = shl i64 %i.da, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di ; 3 uses
  %i.dk = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @js_atomics_mutex) #49
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %js_mutex_lock.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @abort() #50
  unreachable

js_mutex_lock.exit:                               ; preds = %bb.ae
  br i1 %i.p, label %.split, label %bb.ag

.split:                                           ; preds = %js_mutex_lock.exit
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !240
  %.not83 = icmp eq i64 %i.dl, %.069
  br i1 %.not83, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %js_mutex_lock.exit
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !191
  %i.dn = sext i32 %i.dm to i64
  %.not82 = icmp eq i64 %.069, %i.dn
  br i1 %.not82, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.split, %bb.ag
  tail call fastcc void @js_mutex_unlock()
  %i.do = tail call { i64, i64 } @JS_AtomToString(ptr noundef nonnull %0, i32 noundef 151) ; 2 uses
  %i.dp = extractvalue { i64, i64 } %i.do, 0      ; 2 uses
  %.sroa.10.0.extract.shift45 = and i64 %i.dp, -4294967296
  %i.dq = extractvalue { i64, i64 } %i.do, 1
  br label %JS_ToBigInt64.exit

bb.ai:                                            ; preds = %.split, %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.dj, ptr %i.dr, align 8, !tbaa !970
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  call fastcc void @js_cond_init(ptr noundef %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 1, ptr %i.dt, align 8, !tbaa !2268
  %i.du = load ptr, ptr @js_atomics_waiter_list, align 8, !tbaa !223 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %5, ptr %i.dv, align 8, !tbaa !222
  store ptr %i.du, ptr %5, align 8, !tbaa !223
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr @js_atomics_waiter_list, ptr %i.dw, align 8, !tbaa !222
  store ptr %5, ptr @js_atomics_waiter_list, align 8, !tbaa !223
  %i.dx = icmp eq i64 %.052, 9223372036854775807
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @js_cond_wait(ptr noundef %i.ds)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.dy = uitofp nneg i64 %.052 to double
  %i.dz = fmul nnan double %i.dy, 1.000000e+06
  %i.ea = fptoui double %i.dz to i64
  %i.eb = call fastcc i32 @js_cond_timedwait(ptr noundef %i.ds, i64 noundef %i.ea)
  %i.ec = icmp eq i32 %i.eb, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.051 = phi i1 [ false, %bb.aj ], [ %i.ec, %bb.ak ]
  %i.ed = load i8, ptr %i.dt, align 8, !tbaa !2268, !range !234, !noundef !235
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ef = load ptr, ptr %5, align 8, !tbaa !223   ; 2 uses
  %i.eg = load ptr, ptr %i.dw, align 8, !tbaa !222 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !222
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call fastcc void @js_mutex_unlock()
  %i.ei = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.ds) #49
  %.not.i66 = icmp eq i32 %i.ei, 0
  br i1 %.not.i66, label %js_cond_destroy.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @abort() #50
  unreachable

js_cond_destroy.exit:                             ; preds = %bb.an
  br i1 %.051, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %js_cond_destroy.exit
  %i.ej = call { i64, i64 } @JS_AtomToString(ptr noundef nonnull %0, i32 noundef 152) ; 2 uses
  %i.ek = extractvalue { i64, i64 } %i.ej, 0      ; 2 uses
  %.sroa.10.0.extract.shift47 = and i64 %i.ek, -4294967296
  %i.el = extractvalue { i64, i64 } %i.ej, 1
  br label %JS_ToBigInt64.exit

bb.aq:                                            ; preds = %js_cond_destroy.exit
  %i.em = call { i64, i64 } @JS_AtomToString(ptr noundef nonnull %0, i32 noundef 153) ; 2 uses
  %i.en = extractvalue { i64, i64 } %i.em, 0      ; 2 uses
  %.sroa.10.0.extract.shift49 = and i64 %i.en, -4294967296
  %i.eo = extractvalue { i64, i64 } %i.em, 1
  br label %JS_ToBigInt64.exit

JS_ToBigInt64.exit:                               ; preds = %bb.r, %bb.w, %js_dup.exit.i, %bb.a, %bb.aq, %bb.ap, %bb.ah, %bb.ad, %bb.ab
  %.sroa.038.0 = phi i64 [ 0, %bb.a ], [ 0, %js_dup.exit.i ], [ 0, %bb.ad ], [ %i.dp, %bb.ah ], [ %i.ek, %bb.ap ], [ %i.en, %bb.aq ], [ 0, %bb.ab ], [ 0, %bb.w ], [ 0, %bb.r ]
  %.sroa.10.0 = phi i64 [ 0, %bb.a ], [ 0, %js_dup.exit.i ], [ 0, %bb.ad ], [ %.sroa.10.0.extract.shift45, %bb.ah ], [ %.sroa.10.0.extract.shift47, %bb.ap ], [ %.sroa.10.0.extract.shift49, %bb.aq ], [ 0, %bb.ab ], [ 0, %bb.w ], [ 0, %bb.r ]
  %.sroa.14.0 = phi i64 [ 6, %bb.a ], [ 6, %js_dup.exit.i ], [ 6, %bb.ad ], [ %i.dq, %bb.ah ], [ %i.el, %bb.ap ], [ %i.eo, %bb.aq ], [ 6, %bb.ab ], [ 6, %bb.w ], [ 6, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.sroa.038.0.insert.ext = and i64 %.sroa.038.0, 4294967295
  %.sroa.038.0.insert.insert = or disjoint i64 %.sroa.10.0, %.sroa.038.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.038.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.14.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_atomics_notify(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.list_head, align 8          ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i64, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load i64, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call fastcc ptr @js_atomics_get_buf(ptr noundef %0, i64 %i.d, i64 %i.f, i64 %i.g, i64 %i.i, ptr noundef nonnull %i.b, ptr noundef %i.a, i32 noundef 1) ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %JS_ToInt32Clamp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %i.l = load i16, ptr %i.k, align 2, !tbaa !276
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr i8, ptr @typed_array_size_log2, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -22
  %i.p = load i8, ptr %i.o, align 1, !tbaa !218
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 3
  br i1 %i.t, label %JS_ToInt32Clamp.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = trunc i64 %i.r to i32
  %i.x = icmp ugt i32 %i.w, -10
  br i1 %i.x, label %bb.d, label %js_dup.exit.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.y = inttoptr i64 %i.v to ptr
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !191
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.d, %bb.c
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.09.0.in.i.i = phi i64 [ %i.ae, %bb.h ], [ %i.v, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.af, %bb.h ], [ %i.r, %js_dup.exit.i.preheader ] ; 2 uses
  %i.ac = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.ac, label %bb.h [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 6, label %JS_ToInt32Clamp.exit
    i32 8, label %bb.f
  ]

bb.e:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.i

bb.f:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %6 = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %7 = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond54 = or i1 %6, %7
  br i1 %or.cond54, label %JS_ToInt32Clamp.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i
  %i.ad = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1      ; 2 uses
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = icmp eq i64 %i.ag, 6
  br i1 %i.ah, label %JS_ToInt32Clamp.exit, label %js_dup.exit.i

bb.i:                                             ; preds = %bb.g, %bb.e
  %.1.sink.i.ph.i = phi i32 [ %.sroa.09.0.extract.trunc.i.i, %bb.e ], [ %spec.select.i.i, %bb.g ]
  %spec.select = call i32 @llvm.smax.i32(i32 %.1.sink.i.ph.i, i32 0)
  br label %JS_ToInt32Clamp.exit.thread

JS_ToInt32Clamp.exit.thread:                      ; preds = %bb.i, %bb.f, %bb.b
  %.048 = phi i32 [ 2147483647, %bb.b ], [ %spec.select, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !218
  %i.al = zext i32 %i.ak to i64
  %.not41 = icmp ult i64 %i.ai, %i.al
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %JS_ToInt32Clamp.exit.thread
  %i.am = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.1045) ; 0 uses
  br label %JS_ToInt32Clamp.exit

bb.k:                                             ; preds = %JS_ToInt32Clamp.exit.thread
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !972
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !741
  %i.aq = icmp ne i8 %i.ap, 0
  %i.ar = icmp ne i32 %.048, 0
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.l, label %js_mutex_unlock.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !218
  %i.au = zext nneg i8 %i.p to i64
  %i.av = shl i64 %i.ai, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = call i32 @pthread_mutex_lock(ptr noundef nonnull @js_atomics_mutex) #49
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %js_mutex_lock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @abort() #50
  unreachable

js_mutex_lock.exit:                               ; preds = %bb.l
  store ptr %5, ptr %5, align 8, !tbaa !223
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.ay, align 8, !tbaa !222
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @js_atomics_waiter_list, i64 8), align 8, !tbaa !222 ; 2 uses
  %.not4259 = icmp eq ptr %i.az, @js_atomics_waiter_list
  br i1 %.not4259, label %._crit_edge70, label %.lr.ph

.lr.ph:                                           ; preds = %js_mutex_lock.exit, %bb.o
  %.061 = phi i32 [ %.1, %bb.o ], [ 0, %js_mutex_lock.exit ] ; 2 uses
  %.03460 = phi ptr [ %.03363, %bb.o ], [ %i.az, %js_mutex_lock.exit ] ; 7 uses
  %.033.in62 = getelementptr inbounds nuw i8, ptr %.03460, i64 8 ; 2 uses
  %.03363 = load ptr, ptr %.033.in62, align 8, !tbaa !222 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03460, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !970
  %i.bc = icmp eq ptr %i.bb, %i.aw
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.bd = load ptr, ptr %.03460, align 8, !tbaa !223 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %.03363, ptr %i.be, align 8, !tbaa !222
  store ptr %i.bd, ptr %.03363, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.03460, i8 0, i64 17, i1 false)
  %i.bf = load ptr, ptr %5, align 8, !tbaa !223   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.03460, ptr %i.bg, align 8, !tbaa !222
  store ptr %i.bf, ptr %.03460, align 8, !tbaa !223
  store ptr %5, ptr %.033.in62, align 8, !tbaa !222
  store ptr %.03460, ptr %5, align 8, !tbaa !223
  %i.bh = add nsw i32 %.061, 1                    ; 3 uses
  %.not43 = icmp slt i32 %i.bh, %.048
  br i1 %.not43, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %.1 = phi i32 [ %i.bh, %bb.n ], [ %.061, %.lr.ph ] ; 2 uses
  %.not42 = icmp eq ptr %.03363, @js_atomics_waiter_list
  br i1 %.not42, label %._crit_edge, label %.lr.ph, !llvm.loop !2269

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %.2.ph = phi i32 [ %.1, %bb.o ], [ %i.bh, %bb.n ] ; 2 uses
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !222 ; 2 uses
  %.not4466 = icmp eq ptr %.pre, %5
  br i1 %.not4466, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %._crit_edge, %js_cond_signal.exit
  %.13567 = phi ptr [ %i.bl, %js_cond_signal.exit ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.13567, i64 24
  %i.bj = call i32 @pthread_cond_signal(ptr noundef nonnull %i.bi) #49
  %.not.i45 = icmp eq i32 %i.bj, 0
  br i1 %.not.i45, label %js_cond_signal.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph69
  call void @abort() #50
  unreachable

js_cond_signal.exit:                              ; preds = %.lr.ph69
  %i.bk = getelementptr inbounds nuw i8, ptr %.13567, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !222 ; 2 uses
  %.not44 = icmp eq ptr %i.bl, %5
  br i1 %.not44, label %._crit_edge70, label %.lr.ph69, !llvm.loop !2270

._crit_edge70:                                    ; preds = %js_cond_signal.exit, %js_mutex_lock.exit, %._crit_edge
  %.282 = phi i32 [ 0, %js_mutex_lock.exit ], [ %.2.ph, %._crit_edge ], [ %.2.ph, %js_cond_signal.exit ]
  %i.bm = call i32 @pthread_mutex_unlock(ptr noundef nonnull @js_atomics_mutex) #49
  %.not.i46 = icmp eq i32 %i.bm, 0
  br i1 %.not.i46, label %js_mutex_unlock.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge70
  call void @abort() #50
  unreachable

js_mutex_unlock.exit:                             ; preds = %._crit_edge70, %bb.k
  %.3 = phi i32 [ 0, %bb.k ], [ %.282, %._crit_edge70 ]
  %.sroa.0.0.insert.ext.i = zext i32 %.3 to i64
  br label %JS_ToInt32Clamp.exit

JS_ToInt32Clamp.exit:                             ; preds = %bb.h, %js_dup.exit.i, %bb.a, %js_mutex_unlock.exit, %bb.j
  %.sroa.029.0 = phi i64 [ 0, %bb.j ], [ %.sroa.0.0.insert.ext.i, %js_mutex_unlock.exit ], [ 0, %bb.a ], [ 0, %js_dup.exit.i ], [ 0, %bb.h ]
  %.sroa.7.0 = phi i64 [ 6, %bb.j ], [ 0, %js_mutex_unlock.exit ], [ 6, %bb.a ], [ 6, %js_dup.exit.i ], [ 6, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.029.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_atomics_get_buf(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef nonnull writeonly captures(none) %6, i32 noundef range(i32 0, 3) %7) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.a, 4294967295
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 5 uses
  %.not35 = icmp eq i32 %7, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !276  ; 2 uses
  br i1 %.not35, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  switch i16 %i.d, label %bb.d [
    i16 29, label %bb.e
    i16 27, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = add i16 %i.d, -31
  %spec.select42 = icmp ult i16 %i.e, -8
  br i1 %spec.select42, label %bb.d, label %.thread

bb.d:                                             ; preds = %.split, %bb.c, %bb.a
  %i.f = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.1046) ; 0 uses
  br label %JS_ToIndex.exit.thread

bb.e:                                             ; preds = %.split, %.split
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !509
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !218  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !741
  %.not37 = icmp eq i8 %i.n, 0
  br i1 %.not37, label %bb.f, label %bb.i

.thread:                                          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !218
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !509
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !218  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.v = load i8, ptr %i.u, align 2, !tbaa !741
  %.not3745 = icmp eq i8 %i.v, 0
  br i1 %.not3745, label %.thread46, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %7, 2
end_hunk_11
