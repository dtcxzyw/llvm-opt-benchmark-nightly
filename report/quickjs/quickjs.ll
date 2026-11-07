Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 181
begin_hunk_0_@js_json_to_str:bb.a
  br i1 %i.er, label %JS_FreeValue.exit282, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.preheader
  %i.es = call fastcc { i64, i64 } @JS_ToStringFree(ptr noundef nonnull %0, i64 0, i64 0) ; 2 uses
  %i.et = extractvalue { i64, i64 } %i.es, 0      ; 3 uses
  %i.eu = extractvalue { i64, i64 } %i.es, 1      ; 5 uses
  store i64 %i.et, ptr %5, align 8, !tbaa !218
  store i64 %i.eu, ptr %.sroa.372.0..sroa_idx, align 8, !tbaa !240
  %i.ev = and i64 %i.eu, 4294967295
  %i.ew = icmp eq i64 %i.ev, 6
  br i1 %i.ew, label %JS_FreeValue.exit282, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = call fastcc { i64, i64 } @js_json_check(ptr noundef nonnull %0, ptr noundef %1, i64 %2, i64 %3, i64 %i.eo, i64 %i.ep, ptr noundef nonnull byval(%struct.JSValue) align 8 %5) ; 2 uses
  %i.ey = extractvalue { i64, i64 } %i.ex, 0
  %i.ez = extractvalue { i64, i64 } %i.ex, 1      ; 2 uses
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.fb = trunc i64 %i.eu to i32
  %i.fc = icmp ugt i32 %i.fb, -10
  br i1 %i.fc, label %bb.ae, label %JS_FreeValue.exit273.peel

bb.ae:                                            ; preds = %bb.ad
  %i.fd = inttoptr i64 %i.et to ptr
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !191 ; 2 uses
  %i.fg = add nsw i32 %i.ff, -1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !191
  %i.fh = icmp slt i32 %i.ff, 2
  br i1 %i.fh, label %bb.af, label %JS_FreeValue.exit273.peel

bb.af:                                            ; preds = %bb.ae
  call fastcc void @js_free_value_rt(ptr noundef %i.fa, i64 %i.et, i64 %i.eu), !inline_history !291
  br label %JS_FreeValue.exit273.peel

JS_FreeValue.exit273.peel:                        ; preds = %bb.af, %bb.ae, %bb.ad
  store i32 0, ptr %5, align 8
  store i32 0, ptr %.sroa.271.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.372.0..sroa_idx, align 8, !tbaa !240
  %i.fi = and i64 %i.ez, 4294967295               ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 6
  br i1 %i.fj, label %JS_FreeValue.exit282, label %bb.ag

bb.ag:                                            ; preds = %JS_FreeValue.exit273.peel
  %i.fk = icmp eq i64 %i.fi, 3                    ; 2 uses
  %spec.select.peel = select i1 %i.fk, i64 0, i64 %i.ey
  %spec.select255.peel = select i1 %i.fk, i64 2, i64 %i.ez
  %i.fl = call fastcc i32 @js_json_to_str(ptr noundef nonnull %0, ptr noundef %1, i64 %spec.select.peel, i64 %spec.select255.peel, i64 %i.cd, i64 %i.ce)
  %.not254.peel = icmp eq i32 %i.fl, 0
  br i1 %.not254.peel, label %bb.ah, label %JS_FreeValue.exit282

bb.ah:                                            ; preds = %bb.ag
  %exitcond.peel.not = icmp eq i64 %i.ek, 1
  br i1 %exitcond.peel.not, label %._crit_edge.thread, label %.lr.ph.peel.next

bb.ai:                                            ; preds = %bb.an
  %i.fm = add nuw nsw i64 %.023820, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.fm, %i.ek
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.peel.next, !llvm.loop !1492

.lr.ph.peel.next:                                 ; preds = %bb.ah, %bb.ai
  %.023820 = phi i64 [ %i.fm, %bb.ai ], [ 1, %bb.ah ] ; 5 uses
  %i.fn = load ptr, ptr %i.eh, align 8, !tbaa !664
  %i.fo = call fastcc i32 @string_buffer_putc8(ptr noundef %i.fn, i32 noundef 44) ; 0 uses
  %i.fp = load ptr, ptr %i.eh, align 8, !tbaa !664
  %i.fq = call fastcc i32 @string_buffer_concat_value(ptr noundef %i.fp, i64 %.sroa.0146.0, i64 %.sroa.11151.0) ; 0 uses
  %i.fr = call { i64, i64 } @JS_GetPropertyInt64(ptr noundef nonnull %0, i64 %2, i64 %3, i64 noundef %.023820) ; 2 uses
  %i.fs = extractvalue { i64, i64 } %i.fr, 0
  %i.ft = extractvalue { i64, i64 } %i.fr, 1      ; 2 uses
  %i.fu = and i64 %i.ft, 4294967295
  %i.fv = icmp eq i64 %i.fu, 6
  br i1 %i.fv, label %JS_FreeValue.exit282, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.peel.next
  %or.cond.i = icmp samesign ult i64 %.023820, 2147483648 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %.023820, 4294967295
  %i.fw = uitofp nneg i64 %.023820 to double
  %i.fx = bitcast double %i.fw to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %or.cond.i, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.fx
  %.sroa.3.0.i = select i1 %or.cond.i, i64 0, i64 8
  %i.fy = call fastcc { i64, i64 } @JS_ToStringFree(ptr noundef nonnull %0, i64 %.sroa.0.0.insert.ext.i.pn.i, i64 %.sroa.3.0.i) ; 2 uses
  %i.fz = extractvalue { i64, i64 } %i.fy, 0      ; 3 uses
  %i.ga = extractvalue { i64, i64 } %i.fy, 1      ; 5 uses
  store i64 %i.fz, ptr %5, align 8, !tbaa !218
  store i64 %i.ga, ptr %.sroa.372.0..sroa_idx, align 8, !tbaa !240
  %i.gb = and i64 %i.ga, 4294967295
  %i.gc = icmp eq i64 %i.gb, 6
  br i1 %i.gc, label %JS_FreeValue.exit282, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gd = call fastcc { i64, i64 } @js_json_check(ptr noundef nonnull %0, ptr noundef %1, i64 %2, i64 %3, i64 %i.fs, i64 %i.ft, ptr noundef nonnull byval(%struct.JSValue) align 8 %5) ; 2 uses
  %i.ge = extractvalue { i64, i64 } %i.gd, 0
  %i.gf = extractvalue { i64, i64 } %i.gd, 1      ; 2 uses
  %i.gg = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.gh = trunc i64 %i.ga to i32
  %i.gi = icmp ugt i32 %i.gh, -10
  br i1 %i.gi, label %bb.al, label %JS_FreeValue.exit273

bb.al:                                            ; preds = %bb.ak
  %i.gj = inttoptr i64 %i.fz to ptr
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !191 ; 2 uses
  %i.gm = add nsw i32 %i.gl, -1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !191
  %i.gn = icmp slt i32 %i.gl, 2
  br i1 %i.gn, label %bb.am, label %JS_FreeValue.exit273

bb.am:                                            ; preds = %bb.al
  call fastcc void @js_free_value_rt(ptr noundef %i.gg, i64 %i.fz, i64 %i.ga), !inline_history !291
  br label %JS_FreeValue.exit273

JS_FreeValue.exit273:                             ; preds = %bb.ak, %bb.al, %bb.am
  store i32 0, ptr %5, align 8
  store i32 0, ptr %.sroa.271.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.372.0..sroa_idx, align 8, !tbaa !240
  %i.go = and i64 %i.gf, 4294967295               ; 2 uses
  %i.gp = icmp eq i64 %i.go, 6
  br i1 %i.gp, label %JS_FreeValue.exit282, label %bb.an

bb.an:                                            ; preds = %JS_FreeValue.exit273
  %i.gq = icmp eq i64 %i.go, 3                    ; 2 uses
  %spec.select = select i1 %i.gq, i64 0, i64 %i.ge
  %spec.select255 = select i1 %i.gq, i64 2, i64 %i.gf
  %i.gr = call fastcc i32 @js_json_to_str(ptr noundef nonnull %0, ptr noundef %1, i64 %spec.select, i64 %spec.select255, i64 %i.cd, i64 %i.ce)
  %.not254 = icmp eq i32 %i.gr, 0
  br i1 %.not254, label %bb.ai, label %JS_FreeValue.exit282

._crit_edge.thread:                               ; preds = %bb.ai, %bb.ah
  %i.gs = load i64, ptr %i.bu, align 8
  %i.gt = and i64 %i.gs, 4294967295
  %i.gu = icmp eq i64 %i.gt, 4294967289
  br i1 %i.gu, label %JS_IsEmptyString.exit274, label %JS_IsEmptyString.exit274.thread

JS_IsEmptyString.exit274:                         ; preds = %._crit_edge.thread
  %i.gv = load i64, ptr %i.bs, align 8
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = and i64 %i.gx, 2147483647
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %._crit_edge.thread61, label %JS_IsEmptyString.exit274.thread

JS_IsEmptyString.exit274.thread:                  ; preds = %._crit_edge.thread, %JS_IsEmptyString.exit274
  %i.ha = load ptr, ptr %i.eh, align 8, !tbaa !664
  %i.hb = call fastcc i32 @string_buffer_putc8(ptr noundef %i.ha, i32 noundef 10) ; 0 uses
  %i.hc = load ptr, ptr %i.eh, align 8, !tbaa !664
  %i.hd = call fastcc i32 @string_buffer_concat_value(ptr noundef %i.hc, i64 %.0.val, i64 %.8.val) ; 0 uses
  br label %._crit_edge.thread61

._crit_edge.thread61:                             ; preds = %bb.ab, %JS_IsEmptyString.exit274.thread, %JS_IsEmptyString.exit274
  %i.he = load ptr, ptr %i.eh, align 8, !tbaa !664
  %i.hf = call fastcc i32 @string_buffer_putc8(ptr noundef %i.he, i32 noundef 93) ; 0 uses
  br label %bb.bk

bb.ao:                                            ; preds = %bb.z
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hh = load i64, ptr %i.hg, align 8            ; 3 uses
  %i.hi = and i64 %i.hh, 4294967295
  %i.hj = icmp eq i64 %i.hi, 3
  br i1 %i.hj, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.hm = trunc i64 %i.hh to i32
  %i.hn = icmp ugt i32 %i.hm, -10
  br i1 %i.hn, label %bb.aq, label %js_dup.exit277

bb.aq:                                            ; preds = %bb.ap
  %i.ho = inttoptr i64 %i.hl to ptr
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !191
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !191
  br label %js_dup.exit277

js_dup.exit277:                                   ; preds = %bb.ap, %bb.aq
  %.fca.0.insert.i.i275 = insertvalue { i64, i64 } poison, i64 %i.hl, 0
  %.fca.1.insert.i.i276 = insertvalue { i64, i64 } %.fca.0.insert.i.i275, i64 %i.hh, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hs = call fastcc { i64, i64 } @JS_GetOwnPropertyNames2(ptr noundef nonnull %0, i64 %2, i64 %3, i32 noundef 17, i32 noundef 0)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %js_dup.exit277
  %.pn = phi { i64, i64 } [ %i.hs, %bb.ar ], [ %.fca.1.insert.i.i276, %js_dup.exit277 ] ; 2 uses
  %.sroa.11.0 = extractvalue { i64, i64 } %.pn, 1 ; 13 uses
  %.sroa.0130.0 = extractvalue { i64, i64 } %.pn, 0 ; 12 uses
  %i.ht = and i64 %.sroa.11.0, 4294967295
  %i.hu = icmp eq i64 %i.ht, 6
  br i1 %i.hu, label %JS_FreeValue.exit282, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hv = call fastcc i32 @js_get_length64(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 %.sroa.0130.0, i64 %.sroa.11.0)
  %.not248 = icmp eq i32 %i.hv, 0
  br i1 %.not248, label %bb.au, label %JS_FreeValue.exit282

bb.au:                                            ; preds = %bb.at
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 9 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.hy = call fastcc i32 @string_buffer_putc8(ptr noundef %i.hx, i32 noundef 123) ; 0 uses
  %i.hz = load i64, ptr %i.a, align 8, !tbaa !240 ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, 0
  br i1 %i.ia, label %.lr.ph24.preheader, label %._crit_edge25.thread

.lr.ph24.preheader:                               ; preds = %bb.au
  %.promoted = load i64, ptr %5, align 8
  br label %.lr.ph24.outer

.lr.ph24.outer:                                   ; preds = %._crit_edge25.a, %.lr.ph24.preheader
  %.ph71 = phi i64 [ %i.jh, %._crit_edge25.a ], [ 3, %.lr.ph24.preheader ]
  %.122.ph = phi i64 [ %7, %._crit_edge25.a ], [ 0, %.lr.ph24.preheader ]
  %.023921.ph = phi i1 [ true, %._crit_edge25.a ], [ false, %.lr.ph24.preheader ] ; 2 uses
  %.ph72 = phi i64 [ %i.jg, %._crit_edge25.a ], [ %.promoted, %.lr.ph24.preheader ]
  br label %.lr.ph24

.lr.ph24:                                         ; preds = %.lr.ph24.outer, %bb.bh
  %i.ib = phi i64 [ %i.in, %bb.bh ], [ %.ph71, %.lr.ph24.outer ] ; 2 uses
  %.122 = phi i64 [ %i.ka, %bb.bh ], [ %.122.ph, %.lr.ph24.outer ] ; 3 uses
  %i.ic = phi i64 [ %i.im, %bb.bh ], [ %.ph72, %.lr.ph24.outer ] ; 2 uses
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.ie = trunc i64 %i.ib to i32
  %i.if = icmp ugt i32 %i.ie, -10
  br i1 %i.if, label %bb.av, label %JS_FreeValue.exit278

bb.av:                                            ; preds = %.lr.ph24
  %i.ig = inttoptr i64 %i.ic to ptr
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -4 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !191 ; 2 uses
  %i.ij = add nsw i32 %i.ii, -1
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !191
  %i.ik = icmp slt i32 %i.ii, 2
  br i1 %i.ik, label %bb.aw, label %JS_FreeValue.exit278

bb.aw:                                            ; preds = %bb.av
  call fastcc void @js_free_value_rt(ptr noundef %i.id, i64 %i.ic, i64 %i.ib), !inline_history !291
  br label %JS_FreeValue.exit278

JS_FreeValue.exit278:                             ; preds = %.lr.ph24, %bb.av, %bb.aw
  %i.il = call { i64, i64 } @JS_GetPropertyInt64(ptr noundef nonnull %0, i64 %.sroa.0130.0, i64 %.sroa.11.0, i64 noundef %.122) ; 2 uses
  %i.im = extractvalue { i64, i64 } %i.il, 0      ; 5 uses
  %i.in = extractvalue { i64, i64 } %i.il, 1      ; 11 uses
  store i64 %i.im, ptr %5, align 8, !tbaa !218
  store i64 %i.in, ptr %.sroa.372.0..sroa_idx, align 8, !tbaa !240
  %i.io = and i64 %i.in, 4294967295
  %i.ip = icmp eq i64 %i.io, 6
  br i1 %i.ip, label %JS_FreeValue.exit282, label %bb.ax

bb.ax:                                            ; preds = %JS_FreeValue.exit278
  %i.iq = trunc i64 %i.in to i32
  %i.ir = icmp ugt i32 %i.iq, -10
  br i1 %i.ir, label %bb.ay, label %js_dup.exit281

bb.ay:                                            ; preds = %bb.ax
  %i.is = inttoptr i64 %i.im to ptr
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !191
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !191
  br label %js_dup.exit281

js_dup.exit281:                                   ; preds = %bb.ax, %bb.ay
  %i.iw = call fastcc { i64, i64 } @JS_GetPropertyValue(ptr noundef nonnull %0, i64 %2, i64 %3, i64 %i.im, i64 %i.in) ; 2 uses
  %i.ix = extractvalue { i64, i64 } %i.iw, 1      ; 2 uses
  %i.iy = and i64 %i.ix, 4294967295
  %i.iz = icmp eq i64 %i.iy, 6
  br i1 %i.iz, label %JS_FreeValue.exit282, label %bb.az

bb.az:                                            ; preds = %js_dup.exit281
  %i.ja = extractvalue { i64, i64 } %i.iw, 0
  %i.jb = call fastcc { i64, i64 } @js_json_check(ptr noundef nonnull %0, ptr noundef %1, i64 %2, i64 %3, i64 %i.ja, i64 %i.ix, ptr noundef nonnull byval(%struct.JSValue) align 8 %5) ; 2 uses
  %i.jc = extractvalue { i64, i64 } %i.jb, 1      ; 3 uses
  %trunc = trunc i64 %i.jc to i32                 ; 2 uses
  switch i32 %trunc, label %bb.ba [
    i32 6, label %JS_FreeValue.exit282
    i32 3, label %bb.bh
  ]

bb.ba:                                            ; preds = %bb.az
  %6 = extractvalue { i64, i64 } %i.jb, 0         ; 3 uses
  br i1 %.023921.ph, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jd = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.je = call fastcc i32 @string_buffer_putc8(ptr noundef %i.jd, i32 noundef 44) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jf = call fastcc { i64, i64 } @JS_ToQuotedStringFree(ptr noundef nonnull %0, i64 %i.im, i64 %i.in) ; 2 uses
  %i.jg = extractvalue { i64, i64 } %i.jf, 0      ; 3 uses
  %i.jh = extractvalue { i64, i64 } %i.jf, 1      ; 9 uses
  store i64 %i.jg, ptr %5, align 8, !tbaa !218
  store i64 %i.jh, ptr %.sroa.372.0..sroa_idx, align 8, !tbaa !240
  %i.ji = and i64 %i.jh, 4294967295
  %i.jj = icmp eq i64 %i.ji, 6
  br i1 %i.jj, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.jk = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.jl = icmp ugt i32 %trunc, -10
  br i1 %i.jl, label %bb.be, label %JS_FreeValue.exit282

bb.be:                                            ; preds = %bb.bd
  %i.jm = inttoptr i64 %6 to ptr
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -4 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !191 ; 2 uses
  %i.jp = add nsw i32 %i.jo, -1
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !191
  %i.jq = icmp slt i32 %i.jo, 2
  br i1 %i.jq, label %bb.bf, label %JS_FreeValue.exit282

bb.bf:                                            ; preds = %bb.be
  call fastcc void @js_free_value_rt(ptr noundef %i.jk, i64 %6, i64 %i.jc), !inline_history !291
  br label %JS_FreeValue.exit282

bb.bg:                                            ; preds = %bb.bc
  %i.jr = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.js = call fastcc i32 @string_buffer_concat_value(ptr noundef %i.jr, i64 %.sroa.0146.0, i64 %.sroa.11151.0) ; 0 uses
  %i.jt = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.ju = call fastcc i32 @string_buffer_concat_value(ptr noundef %i.jt, i64 %i.jg, i64 %i.jh) ; 0 uses
  %i.jv = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.jw = call fastcc i32 @string_buffer_putc8(ptr noundef %i.jv, i32 noundef 58) ; 0 uses
  %i.jx = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.jy = call fastcc i32 @string_buffer_concat_value(ptr noundef %i.jx, i64 %.sroa.0139.0, i64 %.sroa.10.0) ; 0 uses
  %i.jz = call fastcc i32 @js_json_to_str(ptr noundef nonnull %0, ptr noundef %1, i64 %6, i64 %i.jc, i64 %i.cd, i64 %i.ce)
  %.not250 = icmp eq i32 %i.jz, 0
  br i1 %.not250, label %._crit_edge25.a, label %JS_FreeValue.exit282

bb.bh:                                            ; preds = %bb.az
  %i.ka = add nuw nsw i64 %.122, 1                ; 2 uses
  %exitcond36.not = icmp eq i64 %i.ka, %i.hz
  br i1 %exitcond36.not, label %._crit_edge25, label %.lr.ph24, !llvm.loop !1493

._crit_edge25.a:                                  ; preds = %bb.bg
  %7 = add nuw nsw i64 %.122, 1                   ; 2 uses
  %exitcond36.not67 = icmp eq i64 %7, %i.hz
  br i1 %exitcond36.not67, label %bb.bi, label %.lr.ph24.outer, !llvm.loop !1493

._crit_edge25:                                    ; preds = %bb.bh
  br i1 %.023921.ph, label %bb.bi, label %._crit_edge25.thread

bb.bi:                                            ; preds = %._crit_edge25.a, %._crit_edge25
  %8 = phi i64 [ %i.in, %._crit_edge25 ], [ %i.jh, %._crit_edge25.a ] ; 2 uses
  %i.kb = load ptr, ptr %i.bs, align 8, !tbaa !218
  %i.kc = load i64, ptr %i.kb, align 8
  %i.kd = and i64 %i.kc, 2147483647
  %.not249 = icmp eq i64 %i.kd, 0
  br i1 %.not249, label %._crit_edge25.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ke = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.kf = call fastcc i32 @string_buffer_putc8(ptr noundef %i.ke, i32 noundef 10) ; 0 uses
  %i.kg = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.kh = call fastcc i32 @string_buffer_concat_value(ptr noundef %i.kg, i64 %.0.val, i64 %.8.val) ; 0 uses
  br label %._crit_edge25.thread

._crit_edge25.thread:                             ; preds = %bb.au, %bb.bj, %bb.bi, %._crit_edge25
  %.lcssa1364 = phi i64 [ %i.in, %._crit_edge25 ], [ %8, %bb.bj ], [ %8, %bb.bi ], [ 3, %bb.au ]
  %i.ki = load ptr, ptr %i.hw, align 8, !tbaa !664
  %i.kj = call fastcc i32 @string_buffer_putc8(ptr noundef %i.ki, i32 noundef 125) ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge25.thread, %._crit_edge.thread61
  %.sroa.0130.1 = phi i64 [ 0, %._crit_edge.thread61 ], [ %.sroa.0130.0, %._crit_edge25.thread ] ; 3 uses
  %.sroa.11.1 = phi i64 [ 3, %._crit_edge.thread61 ], [ %.sroa.11.0, %._crit_edge25.thread ] ; 3 uses
  %i.kk = phi i64 [ 3, %._crit_edge.thread61 ], [ %.lcssa1364, %._crit_edge25.thread ] ; 3 uses
  %i.kl = load i64, ptr %i.bb, align 8
  %i.km = load i64, ptr %i.bd, align 8
  %i.kn = call { i64, i64 } @js_array_pop(ptr noundef nonnull %0, i64 %i.kl, i64 %i.km, i32 poison, ptr poison, i32 noundef 0) ; 2 uses
  %i.ko = extractvalue { i64, i64 } %i.kn, 0
  %i.kp = extractvalue { i64, i64 } %i.kn, 1
  %.val256 = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.kq = call fastcc i32 @check_exception_free(ptr %.val256, i64 %i.ko, i64 %i.kp)
  %.not252 = icmp eq i32 %i.kq, 0
  br i1 %.not252, label %bb.bl, label %JS_FreeValue.exit282

bb.bl:                                            ; preds = %bb.bk
  %i.kr = load ptr, ptr %i.c, align 8, !tbaa !232 ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !191 ; 2 uses
  %i.ku = add nsw i32 %i.kt, -1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !191
  %i.kv = icmp slt i32 %i.kt, 2
  br i1 %i.kv, label %bb.bm, label %JS_FreeValue.exit283

bb.bm:                                            ; preds = %bb.bl
  call fastcc void @js_free_value_rt(ptr noundef %i.kr, i64 %2, i64 %3), !inline_history !291
  %.pre40 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit283

JS_FreeValue.exit283:                             ; preds = %bb.bl, %bb.bm
  %i.kw = phi ptr [ %i.kr, %bb.bl ], [ %.pre40, %bb.bm ] ; 3 uses
  %i.kx = trunc i64 %.sroa.11.1 to i32
  %i.ky = icmp ugt i32 %i.kx, -10
  br i1 %i.ky, label %bb.bn, label %JS_FreeValue.exit284

bb.bn:                                            ; preds = %JS_FreeValue.exit283
  %i.kz = inttoptr i64 %.sroa.0130.1 to ptr
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -4 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !191 ; 2 uses
  %i.lc = add nsw i32 %i.lb, -1
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !191
  %i.ld = icmp slt i32 %i.lb, 2
  br i1 %i.ld, label %bb.bo, label %JS_FreeValue.exit284

bb.bo:                                            ; preds = %bb.bn
  call fastcc void @js_free_value_rt(ptr noundef %i.kw, i64 %.sroa.0130.1, i64 %.sroa.11.1), !inline_history !291
  %.pre41 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit284

JS_FreeValue.exit284:                             ; preds = %JS_FreeValue.exit283, %bb.bn, %bb.bo
  %i.le = phi ptr [ %i.kw, %JS_FreeValue.exit283 ], [ %i.kw, %bb.bn ], [ %.pre41, %bb.bo ] ; 3 uses
  %i.lf = trunc i64 %.sroa.11151.0 to i32
  %i.lg = icmp ugt i32 %i.lf, -10
  br i1 %i.lg, label %bb.bp, label %JS_FreeValue.exit285

bb.bp:                                            ; preds = %JS_FreeValue.exit284
  %i.lh = inttoptr i64 %.sroa.0146.0 to ptr
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -4 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !191 ; 2 uses
  %i.lk = add nsw i32 %i.lj, -1
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !191
  %i.ll = icmp slt i32 %i.lj, 2
  br i1 %i.ll, label %bb.bq, label %JS_FreeValue.exit285

bb.bq:                                            ; preds = %bb.bp
  call fastcc void @js_free_value_rt(ptr noundef %i.le, i64 %.sroa.0146.0, i64 %.sroa.11151.0), !inline_history !291
  %.pre42 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit285

JS_FreeValue.exit285:                             ; preds = %JS_FreeValue.exit284, %bb.bp, %bb.bq
  %i.lm = phi ptr [ %i.le, %JS_FreeValue.exit284 ], [ %i.le, %bb.bp ], [ %.pre42, %bb.bq ] ; 3 uses
  %i.ln = trunc i64 %.sroa.10.0 to i32
  %i.lo = icmp ugt i32 %i.ln, -10
  br i1 %i.lo, label %bb.br, label %JS_FreeValue.exit286

bb.br:                                            ; preds = %JS_FreeValue.exit285
  %i.lp = inttoptr i64 %.sroa.0139.0 to ptr
  %i.lq = getelementptr inbounds i8, ptr %i.lp, i64 -4 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !191 ; 2 uses
  %i.ls = add nsw i32 %i.lr, -1
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !191
  %i.lt = icmp slt i32 %i.lr, 2
  br i1 %i.lt, label %bb.bs, label %JS_FreeValue.exit286

bb.bs:                                            ; preds = %bb.br
  call fastcc void @js_free_value_rt(ptr noundef %i.lm, i64 %.sroa.0139.0, i64 %.sroa.10.0), !inline_history !291
  %.pre43 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit286

JS_FreeValue.exit286:                             ; preds = %JS_FreeValue.exit285, %bb.br, %bb.bs
  %i.lu = phi ptr [ %i.lm, %JS_FreeValue.exit285 ], [ %i.lm, %bb.br ], [ %.pre43, %bb.bs ] ; 3 uses
  %i.lv = trunc i64 %i.ce to i32
  %i.lw = icmp ugt i32 %i.lv, -10
  br i1 %i.lw, label %bb.bt, label %JS_FreeValue.exit287

bb.bt:                                            ; preds = %JS_FreeValue.exit286
  %i.lx = inttoptr i64 %i.cd to ptr
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 -4 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !191 ; 2 uses
  %i.ma = add nsw i32 %i.lz, -1
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !191
  %i.mb = icmp slt i32 %i.lz, 2
  br i1 %i.mb, label %bb.bu, label %JS_FreeValue.exit287

bb.bu:                                            ; preds = %bb.bt
  call fastcc void @js_free_value_rt(ptr noundef %i.lu, i64 %i.cd, i64 %i.ce), !inline_history !291
  %.pre44 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit287

JS_FreeValue.exit287:                             ; preds = %JS_FreeValue.exit286, %bb.bt, %bb.bu
  %i.mc = phi ptr [ %i.lu, %JS_FreeValue.exit286 ], [ %i.lu, %bb.bt ], [ %.pre44, %bb.bu ]
  %i.md = load i64, ptr %5, align 8               ; 2 uses
  %i.me = trunc i64 %i.kk to i32
  %i.mf = icmp ugt i32 %i.me, -10
  br i1 %i.mf, label %bb.bv, label %JS_FreeValue.exit288

bb.bv:                                            ; preds = %JS_FreeValue.exit287
  %i.mg = inttoptr i64 %i.md to ptr
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -4 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !191 ; 2 uses
  %i.mj = add nsw i32 %i.mi, -1
  store i32 %i.mj, ptr %i.mh, align 4, !tbaa !191
  %i.mk = icmp slt i32 %i.mi, 2
  br i1 %i.mk, label %bb.bw, label %JS_FreeValue.exit288

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @js_free_value_rt(ptr noundef %i.mc, i64 %i.md, i64 %i.kk), !inline_history !291
  br label %JS_FreeValue.exit288

set_value.exit:                                   ; preds = %bb.j, %js_dup.exit, %bb.c, %bb.g, %JS_ToStringFree.exit
  %i.ml = phi i64 [ %2, %bb.c ], [ %i.z, %bb.g ], [ %i.u, %JS_ToStringFree.exit ], [ %i.ae, %bb.j ], [ %i.ae, %js_dup.exit ] ; 9 uses
  %i.mm = phi i64 [ %3, %bb.c ], [ %i.aa, %bb.g ], [ %i.v, %JS_ToStringFree.exit ], [ %i.ag, %bb.j ], [ %i.ag, %js_dup.exit ] ; 8 uses
  %i.mn = trunc i64 %i.mm to i32                  ; 2 uses
  switch i32 %i.mn, label %bb.cb [
    i32 -7, label %bb.bx
    i32 -6, label %bb.bx
    i32 8, label %bb.by
    i32 0, label %.thread
    i32 1, label %.thread
    i32 2, label %.thread
    i32 7, label %bb.ca
    i32 -9, label %bb.ca
  ]

bb.bx:                                            ; preds = %set_value.exit, %set_value.exit
  %i.mo = call fastcc { i64, i64 } @JS_ToQuotedStringFree(ptr noundef nonnull %0, i64 %i.ml, i64 %i.mm) ; 2 uses
  %i.mp = extractvalue { i64, i64 } %i.mo, 0      ; 3 uses
  %i.mq = extractvalue { i64, i64 } %i.mo, 1      ; 4 uses
  store i64 %i.mp, ptr %4, align 8, !tbaa !218
  store i64 %i.mq, ptr %i.b, align 8, !tbaa !240
  %i.mr = and i64 %i.mq, 4294967295
  %i.ms = icmp eq i64 %i.mr, 6
  br i1 %i.ms, label %JS_FreeValue.exit282, label %.thread

bb.by:                                            ; preds = %set_value.exit
  %i.mt = bitcast i64 %i.ml to double
  %i.mu = call double @llvm.fabs.f64(double %i.mt)
  %i.mv = fcmp ueq double %i.mu, +inf
  br i1 %i.mv, label %bb.bz, label %.thread

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  %.pre = load i64, ptr %4, align 8
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.m, %set_value.exit, %set_value.exit, %set_value.exit, %bb.by, %bb.bz, %bb.bx
  %i.mw = phi i64 [ %i.mp, %bb.bx ], [ %i.ml, %set_value.exit ], [ %i.ml, %set_value.exit ], [ %i.ml, %set_value.exit ], [ %i.ml, %bb.by ], [ %.pre, %bb.bz ], [ %i.as, %bb.m ], [ %i.as, %bb.l ]
  %i.mx = phi i64 [ %i.mq, %bb.bx ], [ %i.mm, %set_value.exit ], [ %i.mm, %set_value.exit ], [ %i.mm, %set_value.exit ], [ %i.mm, %bb.by ], [ 2, %bb.bz ], [ %i.at, %bb.m ], [ %i.at, %bb.l ]
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !664
  %i.na = call fastcc i32 @string_buffer_concat_value_free(ptr noundef %i.mz, i64 %i.mw, i64 %i.mx)
  br label %JS_FreeValue.exit288

bb.ca:                                            ; preds = %set_value.exit, %set_value.exit
  %i.nb = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.311) ; 0 uses
  br label %JS_FreeValue.exit282

bb.cb:                                            ; preds = %set_value.exit
  %i.nc = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.nd = icmp ugt i32 %i.mn, -10
  br i1 %i.nd, label %bb.cc, label %JS_FreeValue.exit288

bb.cc:                                            ; preds = %bb.cb
  %i.ne = inttoptr i64 %i.ml to ptr
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 -4 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !191 ; 2 uses
  %i.nh = add nsw i32 %i.ng, -1
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !191
  %i.ni = icmp slt i32 %i.ng, 2
  br i1 %i.ni, label %bb.cd, label %JS_FreeValue.exit288

bb.cd:                                            ; preds = %bb.cc
  call fastcc void @js_free_value_rt(ptr noundef %i.nc, i64 %i.ml, i64 %i.mm), !inline_history !291
  br label %JS_FreeValue.exit288

JS_FreeValue.exit282:                             ; preds = %bb.an, %JS_FreeValue.exit273, %bb.aj, %.lr.ph.peel.next, %bb.bg, %bb.az, %js_dup.exit281, %JS_FreeValue.exit278, %.lr.ph.preheader, %bb.ac, %JS_FreeValue.exit273.peel, %bb.ag, %bb.bf, %bb.be, %bb.bd, %bb.k, %bb.bx, %bb.bk, %bb.at, %bb.as, %bb.aa, %js_is_array.exit, %js_dup.exit272, %bb.v, %js_dup.exit266, %js_dup.exit263, %bb.n, %bb.g, %JS_ToStringFree.exit, %bb.ca, %bb.p, %bb.b
  %i.nj = phi i64 [ %2, %bb.b ], [ %2, %bb.n ], [ %2, %js_dup.exit263 ], [ %2, %js_is_array.exit ], [ %2, %bb.as ], [ %i.z, %bb.g ], [ %2, %bb.bd ], [ %2, %bb.be ], [ %2, %bb.k ], [ %2, %bb.bf ], [ %2, %bb.bk ], [ %2, %bb.at ], [ %i.u, %JS_ToStringFree.exit ], [ %i.mp, %bb.bx ], [ %i.ml, %bb.ca ], [ %2, %bb.ag ], [ %2, %bb.aa ], [ %2, %js_dup.exit272 ], [ %2, %js_dup.exit266 ], [ %2, %bb.v ], [ %2, %bb.p ], [ %2, %JS_FreeValue.exit273.peel ], [ %2, %bb.ac ], [ %2, %.lr.ph.preheader ], [ %2, %bb.az ], [ %2, %bb.bg ], [ %2, %JS_FreeValue.exit278 ], [ %2, %js_dup.exit281 ], [ %2, %.lr.ph.peel.next ], [ %2, %bb.aj ], [ %2, %JS_FreeValue.exit273 ], [ %2, %bb.an ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.n ], [ %i.cd, %js_dup.exit263 ], [ %i.cd, %js_is_array.exit ], [ %i.cd, %bb.as ], [ 0, %bb.g ], [ %i.cd, %bb.bd ], [ %i.cd, %bb.be ], [ 0, %bb.k ], [ %i.cd, %bb.bf ], [ %i.cd, %bb.bk ], [ %i.cd, %bb.at ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.bx ], [ 0, %bb.ca ], [ %i.cd, %bb.ag ], [ %i.cd, %bb.aa ], [ %i.cd, %js_dup.exit272 ], [ %i.cd, %js_dup.exit266 ], [ %i.cd, %bb.v ], [ 0, %bb.p ], [ %i.cd, %JS_FreeValue.exit273.peel ], [ %i.cd, %bb.ac ], [ %i.cd, %.lr.ph.preheader ], [ %i.cd, %bb.az ], [ %i.cd, %bb.bg ], [ %i.cd, %JS_FreeValue.exit278 ], [ %i.cd, %js_dup.exit281 ], [ %i.cd, %.lr.ph.peel.next ], [ %i.cd, %bb.aj ], [ %i.cd, %JS_FreeValue.exit273 ], [ %i.cd, %bb.an ] ; 2 uses
  %i.nk = phi i64 [ %3, %bb.b ], [ %3, %bb.n ], [ %3, %js_dup.exit263 ], [ %3, %js_is_array.exit ], [ %3, %bb.as ], [ %i.aa, %bb.g ], [ %3, %bb.bd ], [ %3, %bb.be ], [ %3, %bb.k ], [ %3, %bb.bf ], [ %3, %bb.bk ], [ %3, %bb.at ], [ %i.v, %JS_ToStringFree.exit ], [ %i.mq, %bb.bx ], [ %i.mm, %bb.ca ], [ %3, %bb.ag ], [ %3, %bb.aa ], [ %3, %js_dup.exit272 ], [ %3, %js_dup.exit266 ], [ %3, %bb.v ], [ %3, %bb.p ], [ %3, %JS_FreeValue.exit273.peel ], [ %3, %bb.ac ], [ %3, %.lr.ph.preheader ], [ %3, %bb.az ], [ %3, %bb.bg ], [ %3, %JS_FreeValue.exit278 ], [ %3, %js_dup.exit281 ], [ %3, %.lr.ph.peel.next ], [ %3, %bb.aj ], [ %3, %JS_FreeValue.exit273 ], [ %3, %bb.an ] ; 2 uses
  %.sroa.0130.2 = phi i64 [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %js_dup.exit263 ], [ 0, %js_is_array.exit ], [ %.sroa.0130.0, %bb.as ], [ 0, %bb.g ], [ %.sroa.0130.0, %bb.bd ], [ %.sroa.0130.0, %bb.be ], [ 0, %bb.k ], [ %.sroa.0130.0, %bb.bf ], [ %.sroa.0130.1, %bb.bk ], [ %.sroa.0130.0, %bb.at ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.bx ], [ 0, %bb.ca ], [ 0, %bb.ag ], [ 0, %bb.aa ], [ 0, %js_dup.exit272 ], [ 0, %js_dup.exit266 ], [ 0, %bb.v ], [ 0, %bb.p ], [ 0, %JS_FreeValue.exit273.peel ], [ 0, %bb.ac ], [ 0, %.lr.ph.preheader ], [ %.sroa.0130.0, %bb.az ], [ %.sroa.0130.0, %bb.bg ], [ %.sroa.0130.0, %JS_FreeValue.exit278 ], [ %.sroa.0130.0, %js_dup.exit281 ], [ 0, %.lr.ph.peel.next ], [ 0, %bb.aj ], [ 0, %JS_FreeValue.exit273 ], [ 0, %bb.an ] ; 2 uses
  %.sroa.11.2 = phi i64 [ 3, %bb.b ], [ 3, %bb.n ], [ 3, %js_dup.exit263 ], [ 3, %js_is_array.exit ], [ %.sroa.11.0, %bb.as ], [ 3, %bb.g ], [ %.sroa.11.0, %bb.bd ], [ %.sroa.11.0, %bb.be ], [ 3, %bb.k ], [ %.sroa.11.0, %bb.bf ], [ %.sroa.11.1, %bb.bk ], [ %.sroa.11.0, %bb.at ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.bx ], [ 3, %bb.ca ], [ 3, %bb.ag ], [ 3, %bb.aa ], [ 3, %js_dup.exit272 ], [ 3, %js_dup.exit266 ], [ 3, %bb.v ], [ 3, %bb.p ], [ 3, %JS_FreeValue.exit273.peel ], [ 3, %bb.ac ], [ 3, %.lr.ph.preheader ], [ %.sroa.11.0, %bb.az ], [ %.sroa.11.0, %bb.bg ], [ %.sroa.11.0, %JS_FreeValue.exit278 ], [ %.sroa.11.0, %js_dup.exit281 ], [ 3, %.lr.ph.peel.next ], [ 3, %bb.aj ], [ 3, %JS_FreeValue.exit273 ], [ 3, %bb.an ] ; 2 uses
  %.sroa.0139.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %js_dup.exit263 ], [ %.sroa.0139.0, %js_is_array.exit ], [ %.sroa.0139.0, %bb.as ], [ 0, %bb.g ], [ %.sroa.0139.0, %bb.bd ], [ %.sroa.0139.0, %bb.be ], [ 0, %bb.k ], [ %.sroa.0139.0, %bb.bf ], [ %.sroa.0139.0, %bb.bk ], [ %.sroa.0139.0, %bb.at ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.bx ], [ 0, %bb.ca ], [ %.sroa.0139.0, %bb.ag ], [ %.sroa.0139.0, %bb.aa ], [ %.sroa.0139.0, %js_dup.exit272 ], [ 0, %js_dup.exit266 ], [ %i.db, %bb.v ], [ 0, %bb.p ], [ %.sroa.0139.0, %JS_FreeValue.exit273.peel ], [ %.sroa.0139.0, %bb.ac ], [ %.sroa.0139.0, %.lr.ph.preheader ], [ %.sroa.0139.0, %bb.az ], [ %.sroa.0139.0, %bb.bg ], [ %.sroa.0139.0, %JS_FreeValue.exit278 ], [ %.sroa.0139.0, %js_dup.exit281 ], [ %.sroa.0139.0, %.lr.ph.peel.next ], [ %.sroa.0139.0, %bb.aj ], [ %.sroa.0139.0, %JS_FreeValue.exit273 ], [ %.sroa.0139.0, %bb.an ] ; 2 uses
  %.sroa.10.1 = phi i64 [ 3, %bb.b ], [ 3, %bb.n ], [ 3, %js_dup.exit263 ], [ %.sroa.10.0, %js_is_array.exit ], [ %.sroa.10.0, %bb.as ], [ 3, %bb.g ], [ %.sroa.10.0, %bb.bd ], [ %.sroa.10.0, %bb.be ], [ 3, %bb.k ], [ %.sroa.10.0, %bb.bf ], [ %.sroa.10.0, %bb.bk ], [ %.sroa.10.0, %bb.at ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.bx ], [ 3, %bb.ca ], [ %.sroa.10.0, %bb.ag ], [ %.sroa.10.0, %bb.aa ], [ %.sroa.10.0, %js_dup.exit272 ], [ 3, %js_dup.exit266 ], [ %i.dc, %bb.v ], [ 3, %bb.p ], [ %.sroa.10.0, %JS_FreeValue.exit273.peel ], [ %.sroa.10.0, %bb.ac ], [ %.sroa.10.0, %.lr.ph.preheader ], [ %.sroa.10.0, %bb.az ], [ %.sroa.10.0, %bb.bg ], [ %.sroa.10.0, %JS_FreeValue.exit278 ], [ %.sroa.10.0, %js_dup.exit281 ], [ %.sroa.10.0, %.lr.ph.peel.next ], [ %.sroa.10.0, %bb.aj ], [ %.sroa.10.0, %JS_FreeValue.exit273 ], [ %.sroa.10.0, %bb.an ] ; 2 uses
  %.sroa.0146.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %js_dup.exit263 ], [ %.sroa.0146.0, %js_is_array.exit ], [ %.sroa.0146.0, %bb.as ], [ 0, %bb.g ], [ %.sroa.0146.0, %bb.bd ], [ %.sroa.0146.0, %bb.be ], [ 0, %bb.k ], [ %.sroa.0146.0, %bb.bf ], [ %.sroa.0146.0, %bb.bk ], [ %.sroa.0146.0, %bb.at ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.bx ], [ 0, %bb.ca ], [ %.sroa.0146.0, %bb.ag ], [ %.sroa.0146.0, %bb.aa ], [ %.sroa.0146.0, %js_dup.exit272 ], [ %i.cw, %js_dup.exit266 ], [ %i.cw, %bb.v ], [ 0, %bb.p ], [ %.sroa.0146.0, %JS_FreeValue.exit273.peel ], [ %.sroa.0146.0, %bb.ac ], [ %.sroa.0146.0, %.lr.ph.preheader ], [ %.sroa.0146.0, %bb.az ], [ %.sroa.0146.0, %bb.bg ], [ %.sroa.0146.0, %JS_FreeValue.exit278 ], [ %.sroa.0146.0, %js_dup.exit281 ], [ %.sroa.0146.0, %.lr.ph.peel.next ], [ %.sroa.0146.0, %bb.aj ], [ %.sroa.0146.0, %JS_FreeValue.exit273 ], [ %.sroa.0146.0, %bb.an ] ; 2 uses
  %.sroa.11151.1 = phi i64 [ 3, %bb.b ], [ 3, %bb.n ], [ 3, %js_dup.exit263 ], [ %.sroa.11151.0, %js_is_array.exit ], [ %.sroa.11151.0, %bb.as ], [ 3, %bb.g ], [ %.sroa.11151.0, %bb.bd ], [ %.sroa.11151.0, %bb.be ], [ 3, %bb.k ], [ %.sroa.11151.0, %bb.bf ], [ %.sroa.11151.0, %bb.bk ], [ %.sroa.11151.0, %bb.at ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.bx ], [ 3, %bb.ca ], [ %.sroa.11151.0, %bb.ag ], [ %.sroa.11151.0, %bb.aa ], [ %.sroa.11151.0, %js_dup.exit272 ], [ %i.cx, %js_dup.exit266 ], [ %i.cx, %bb.v ], [ 3, %bb.p ], [ %.sroa.11151.0, %JS_FreeValue.exit273.peel ], [ %.sroa.11151.0, %bb.ac ], [ %.sroa.11151.0, %.lr.ph.preheader ], [ %.sroa.11151.0, %bb.az ], [ %.sroa.11151.0, %bb.bg ], [ %.sroa.11151.0, %JS_FreeValue.exit278 ], [ %.sroa.11151.0, %js_dup.exit281 ], [ %.sroa.11151.0, %.lr.ph.peel.next ], [ %.sroa.11151.0, %bb.aj ], [ %.sroa.11151.0, %JS_FreeValue.exit273 ], [ %.sroa.11151.0, %bb.an ] ; 2 uses
  %i.nl = phi i64 [ 3, %bb.b ], [ 3, %bb.n ], [ %i.ce, %js_dup.exit263 ], [ %i.ce, %js_is_array.exit ], [ %i.ce, %bb.as ], [ 3, %bb.g ], [ %i.ce, %bb.bd ], [ %i.ce, %bb.be ], [ 3, %bb.k ], [ %i.ce, %bb.bf ], [ %i.ce, %bb.bk ], [ %i.ce, %bb.at ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.bx ], [ 3, %bb.ca ], [ %i.ce, %bb.ag ], [ %i.ce, %bb.aa ], [ %i.ce, %js_dup.exit272 ], [ %i.ce, %js_dup.exit266 ], [ %i.ce, %bb.v ], [ 3, %bb.p ], [ %i.ce, %JS_FreeValue.exit273.peel ], [ %i.ce, %bb.ac ], [ %i.ce, %.lr.ph.preheader ], [ %i.ce, %bb.az ], [ %i.ce, %bb.bg ], [ %i.ce, %JS_FreeValue.exit278 ], [ %i.ce, %js_dup.exit281 ], [ %i.ce, %.lr.ph.peel.next ], [ %i.ce, %bb.aj ], [ %i.ce, %JS_FreeValue.exit273 ], [ %i.ce, %bb.an ] ; 2 uses
  %i.nm = phi i64 [ 3, %bb.b ], [ 3, %bb.n ], [ 3, %js_dup.exit263 ], [ 3, %js_is_array.exit ], [ 3, %bb.as ], [ 3, %bb.g ], [ %i.jh, %bb.bd ], [ %i.jh, %bb.be ], [ 3, %bb.k ], [ %i.jh, %bb.bf ], [ %i.kk, %bb.bk ], [ 3, %bb.at ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.bx ], [ 3, %bb.ca ], [ 3, %bb.ag ], [ 3, %bb.aa ], [ 3, %js_dup.exit272 ], [ 3, %js_dup.exit266 ], [ 3, %bb.v ], [ 3, %bb.p ], [ 3, %JS_FreeValue.exit273.peel ], [ %i.eu, %bb.ac ], [ 3, %.lr.ph.preheader ], [ %i.in, %bb.az ], [ %i.jh, %bb.bg ], [ %i.in, %JS_FreeValue.exit278 ], [ %i.in, %js_dup.exit281 ], [ 3, %.lr.ph.peel.next ], [ 3, %bb.an ], [ 3, %JS_FreeValue.exit273 ], [ %i.ga, %bb.aj ] ; 2 uses
  %i.nn = load ptr, ptr %i.c, align 8, !tbaa !232 ; 3 uses
  %i.no = trunc i64 %i.nk to i32
  %i.np = icmp ugt i32 %i.no, -10
  br i1 %i.np, label %bb.ce, label %JS_FreeValue.exit290

bb.ce:                                            ; preds = %JS_FreeValue.exit282
  %i.nq = inttoptr i64 %i.nj to ptr
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -4 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !191 ; 2 uses
  %i.nt = add nsw i32 %i.ns, -1
  store i32 %i.nt, ptr %i.nr, align 4, !tbaa !191
  %i.nu = icmp slt i32 %i.ns, 2
  br i1 %i.nu, label %bb.cf, label %JS_FreeValue.exit290

bb.cf:                                            ; preds = %bb.ce
  call fastcc void @js_free_value_rt(ptr noundef %i.nn, i64 %i.nj, i64 %i.nk), !inline_history !291
  %.pre45 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit290

JS_FreeValue.exit290:                             ; preds = %JS_FreeValue.exit282, %bb.ce, %bb.cf
  %i.nv = phi ptr [ %i.nn, %JS_FreeValue.exit282 ], [ %i.nn, %bb.ce ], [ %.pre45, %bb.cf ] ; 3 uses
  %i.nw = trunc i64 %.sroa.11.2 to i32
  %i.nx = icmp ugt i32 %i.nw, -10
  br i1 %i.nx, label %bb.cg, label %JS_FreeValue.exit291

bb.cg:                                            ; preds = %JS_FreeValue.exit290
  %i.ny = inttoptr i64 %.sroa.0130.2 to ptr
  %i.nz = getelementptr inbounds i8, ptr %i.ny, i64 -4 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !191 ; 2 uses
  %i.ob = add nsw i32 %i.oa, -1
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !191
  %i.oc = icmp slt i32 %i.oa, 2
  br i1 %i.oc, label %bb.ch, label %JS_FreeValue.exit291

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @js_free_value_rt(ptr noundef %i.nv, i64 %.sroa.0130.2, i64 %.sroa.11.2), !inline_history !291
  %.pre46 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit291

JS_FreeValue.exit291:                             ; preds = %JS_FreeValue.exit290, %bb.cg, %bb.ch
  %i.od = phi ptr [ %i.nv, %JS_FreeValue.exit290 ], [ %i.nv, %bb.cg ], [ %.pre46, %bb.ch ] ; 3 uses
  %i.oe = trunc i64 %.sroa.11151.1 to i32
  %i.of = icmp ugt i32 %i.oe, -10
  br i1 %i.of, label %bb.ci, label %JS_FreeValue.exit292

bb.ci:                                            ; preds = %JS_FreeValue.exit291
  %i.og = inttoptr i64 %.sroa.0146.1 to ptr
  %i.oh = getelementptr inbounds i8, ptr %i.og, i64 -4 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !191 ; 2 uses
  %i.oj = add nsw i32 %i.oi, -1
  store i32 %i.oj, ptr %i.oh, align 4, !tbaa !191
  %i.ok = icmp slt i32 %i.oi, 2
  br i1 %i.ok, label %bb.cj, label %JS_FreeValue.exit292

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @js_free_value_rt(ptr noundef %i.od, i64 %.sroa.0146.1, i64 %.sroa.11151.1), !inline_history !291
  %.pre47 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit292

JS_FreeValue.exit292:                             ; preds = %JS_FreeValue.exit291, %bb.ci, %bb.cj
  %i.ol = phi ptr [ %i.od, %JS_FreeValue.exit291 ], [ %i.od, %bb.ci ], [ %.pre47, %bb.cj ] ; 3 uses
  %i.om = trunc i64 %.sroa.10.1 to i32
  %i.on = icmp ugt i32 %i.om, -10
  br i1 %i.on, label %bb.ck, label %JS_FreeValue.exit293

bb.ck:                                            ; preds = %JS_FreeValue.exit292
  %i.oo = inttoptr i64 %.sroa.0139.1 to ptr
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -4 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !191 ; 2 uses
  %i.or = add nsw i32 %i.oq, -1
  store i32 %i.or, ptr %i.op, align 4, !tbaa !191
  %i.os = icmp slt i32 %i.oq, 2
  br i1 %i.os, label %bb.cl, label %JS_FreeValue.exit293

bb.cl:                                            ; preds = %bb.ck
  call fastcc void @js_free_value_rt(ptr noundef %i.ol, i64 %.sroa.0139.1, i64 %.sroa.10.1), !inline_history !291
  %.pre48 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit293

JS_FreeValue.exit293:                             ; preds = %JS_FreeValue.exit292, %bb.ck, %bb.cl
  %i.ot = phi ptr [ %i.ol, %JS_FreeValue.exit292 ], [ %i.ol, %bb.ck ], [ %.pre48, %bb.cl ] ; 3 uses
  %i.ou = trunc i64 %i.nl to i32
  %i.ov = icmp ugt i32 %i.ou, -10
  br i1 %i.ov, label %bb.cm, label %JS_FreeValue.exit294

bb.cm:                                            ; preds = %JS_FreeValue.exit293
  %i.ow = inttoptr i64 %.sroa.0.0 to ptr
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 -4 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !191 ; 2 uses
  %i.oz = add nsw i32 %i.oy, -1
  store i32 %i.oz, ptr %i.ox, align 4, !tbaa !191
  %i.pa = icmp slt i32 %i.oy, 2
  br i1 %i.pa, label %bb.cn, label %JS_FreeValue.exit294

bb.cn:                                            ; preds = %bb.cm
  call fastcc void @js_free_value_rt(ptr noundef %i.ot, i64 %.sroa.0.0, i64 %i.nl), !inline_history !291
  %.pre49 = load ptr, ptr %i.c, align 8, !tbaa !232
  br label %JS_FreeValue.exit294

JS_FreeValue.exit294:                             ; preds = %JS_FreeValue.exit293, %bb.cm, %bb.cn
  %i.pb = phi ptr [ %i.ot, %JS_FreeValue.exit293 ], [ %i.ot, %bb.cm ], [ %.pre49, %bb.cn ]
  %i.pc = load i64, ptr %5, align 8               ; 2 uses
  %i.pd = trunc i64 %i.nm to i32
  %i.pe = icmp ugt i32 %i.pd, -10
  br i1 %i.pe, label %bb.co, label %JS_FreeValue.exit288

bb.co:                                            ; preds = %JS_FreeValue.exit294
  %i.pf = inttoptr i64 %i.pc to ptr
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -4 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !191 ; 2 uses
  %i.pi = add nsw i32 %i.ph, -1
  store i32 %i.pi, ptr %i.pg, align 4, !tbaa !191
  %i.pj = icmp slt i32 %i.ph, 2
  br i1 %i.pj, label %bb.cp, label %JS_FreeValue.exit288

bb.cp:                                            ; preds = %bb.co
  call fastcc void @js_free_value_rt(ptr noundef %i.pb, i64 %i.pc, i64 %i.nm), !inline_history !291
  br label %JS_FreeValue.exit288

JS_FreeValue.exit288:                             ; preds = %bb.cp, %bb.co, %JS_FreeValue.exit294, %bb.cd, %bb.cc, %bb.cb, %bb.bw, %bb.bv, %JS_FreeValue.exit287, %.thread
  %.0 = phi i32 [ 0, %bb.cd ], [ 0, %bb.bw ], [ %i.na, %.thread ], [ 0, %JS_FreeValue.exit287 ], [ 0, %bb.bv ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ -1, %JS_FreeValue.exit294 ], [ -1, %bb.co ], [ -1, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewProxy(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp ne i64 %i.a, 4294967295
  %i.c = and i64 %4, 4294967295
  %i.d = icmp ne i64 %i.c, 4294967295
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !232  ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 1436
  %.val.i = load i32, ptr %i.h, align 4, !tbaa !256
  %i.i = getelementptr i8, ptr %i.g, i64 1448
  %.val13.i = load ptr, ptr %i.i, align 8, !tbaa !259
  %i.j = sub nsw i32 32, %.val.i
  %i.k = lshr i32 -480352335, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val13.i, i64 %i.l
  %.01.i.i = load ptr, ptr %i.m, align 8, !tbaa !362 ; 2 uses
  %.not2.i.i = icmp eq ptr %.01.i.i, null
  br i1 %.not2.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.f
  %.03.i.i = phi ptr [ %.0.i14.i, %bb.f ], [ %.01.i.i, %bb.c ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191
  %i.p = icmp eq i32 %i.o, -480352335
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !336
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !191
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %find_hashed_shape_proto.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 40
  %.0.i14.i = load ptr, ptr %i.w, align 8, !tbaa !362 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i14.i, null
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !15

find_hashed_shape_proto.exit.i:                   ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %.03.i.i, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !191
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !191
  br label %JS_NewObjectProtoClass.exit

.loopexit.i:                                      ; preds = %bb.f, %bb.c
  %i.aa = tail call fastcc ptr @js_new_shape2(ptr noundef %0, ptr noundef null, i32 noundef 2) ; 2 uses
  %.not12.i = icmp eq ptr %i.aa, null
  br i1 %.not12.i, label %JS_NewObjectProtoClass.exit.thread, label %JS_NewObjectProtoClass.exit

JS_NewObjectProtoClass.exit:                      ; preds = %find_hashed_shape_proto.exit.i, %.loopexit.i
  %.0.i = phi ptr [ %.03.i.i, %find_hashed_shape_proto.exit.i ], [ %i.aa, %.loopexit.i ]
  %i.ab = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef %0, ptr noundef nonnull %.0.i, i32 noundef 51, ptr noundef null), !inline_history !368 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 6 uses
  %i.ad = extractvalue { i64, i64 } %i.ab, 1      ; 5 uses
  %i.ae = and i64 %i.ad, 4294967295               ; 2 uses
  %i.af = icmp eq i64 %i.ae, 6
  br i1 %i.af, label %JS_NewObjectProtoClass.exit.thread, label %bb.g
end_hunk_0
begin_hunk_1_@js_Date_parse:bb.a
  %.not116.i = icmp eq i32 %.092.ph.i, %i.aea
  br i1 %.not116.i, label %bb.bp, label %js_date_parse_otherstring.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.aeb = zext nneg i8 %i.wr to i64
  %memchr.bounds.i = icmp ugt i8 %i.wr, 63
  %i.aec = shl nuw i64 1, %i.aeb
  %i.aed = and i64 %i.aec, 177025667039233
  %memchr.bits.i = icmp eq i64 %i.aed, 0
  %memchr210.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr210.not.i, label %.lr.ph.i180.i, label %string_skip_until.exit.i

.lr.ph.i180.i:                                    ; preds = %bb.bp, %.lr.ph.i180.i
  %indvars.iv.i181.i = phi i64 [ %indvars.iv.next.i182.i, %.lr.ph.i180.i ], [ %i.ws, %bb.bp ]
  %indvars.iv.next.i182.i = add nsw i64 %indvars.iv.i181.i, 1 ; 3 uses
  %i.aee = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i182.i
  %i.aef = load i8, ptr %i.aee, align 1, !tbaa !218 ; 2 uses
  %i.aeg = zext nneg i8 %i.aef to i64
  %memchr.bounds211.i = icmp ugt i8 %i.aef, 63
  %i.aeh = shl nuw i64 1, %i.aeg
  %i.aei = and i64 %i.aeh, 177025667039233
  %memchr.bits212.i = icmp eq i64 %i.aei, 0
  %memchr213.not.i = select i1 %memchr.bounds211.i, i1 true, i1 %memchr.bits212.i
  br i1 %memchr213.not.i, label %.lr.ph.i180.i, label %string_skip_until.exit.loopexit220.i, !llvm.loop !1971

string_skip_until.exit.loopexit.i:                ; preds = %.lr.ph.i154.i
  %i.aej = trunc nsw i64 %indvars.iv.next.i156.i to i32 ; 2 uses
  store i32 %i.aej, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit220.i:             ; preds = %.lr.ph.i180.i
  %i.aek = trunc nsw i64 %indvars.iv.next.i182.i to i32 ; 2 uses
  store i32 %i.aek, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_until.exit.i

string_skip_until.exit.loopexit221.i:             ; preds = %bb.bm
  %i.ael = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.ael, ptr %i.a, align 4
  br label %string_skip_until.exit.i

string_skip_until.exit.i:                         ; preds = %bb.aj, %bb.al, %bb.am, %bb.ah, %string_skip_until.exit.loopexit221.i, %string_skip_until.exit.loopexit220.i, %string_skip_until.exit.loopexit.i, %bb.bp, %bb.bn, %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ax, %bb.ax, %bb.aq, %.split.loop.exit.i.i
  %.promoted.i185.i = phi i32 [ %i.aej, %string_skip_until.exit.loopexit.i ], [ %i.aby, %bb.bg ], [ %i.aek, %string_skip_until.exit.loopexit220.i ], [ %.promoted.i177.i, %bb.bp ], [ %i.adx, %bb.bn ], [ %i.ael, %string_skip_until.exit.loopexit221.i ], [ %.promoted.i185.i.pre, %bb.ba ], [ %i.zk, %bb.ax ], [ %i.zk, %bb.ax ], [ %i.yq, %bb.bb ], [ %i.yq, %bb.bd ], [ %i.yq, %bb.bf ], [ %i.wx, %.split.loop.exit.i.i ], [ %i.xt, %bb.aq ], [ %.promoted.i185.i.pre234, %bb.ah ], [ %i.wx, %bb.am ], [ %i.wx, %bb.al ], [ %i.wx, %bb.aj ] ; 2 uses
  %.5 = phi i8 [ %.4, %string_skip_until.exit.loopexit.i ], [ %.4, %bb.bg ], [ %.4, %string_skip_until.exit.loopexit220.i ], [ %.4, %bb.bp ], [ %.4, %bb.bn ], [ %.4, %string_skip_until.exit.loopexit221.i ], [ %.4, %bb.ba ], [ %.4, %bb.ax ], [ %.4, %bb.ax ], [ %.4, %bb.bb ], [ %.4, %bb.bd ], [ %.4, %bb.bf ], [ %.4, %.split.loop.exit.i.i ], [ %.4, %bb.aq ], [ 0, %bb.ah ], [ %.4, %bb.am ], [ %.4, %bb.al ], [ %.4, %bb.aj ]
  %.199.i = phi i8 [ %.098.ph.i, %string_skip_until.exit.loopexit.i ], [ %.098.ph.i, %bb.bg ], [ %.098.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.098.ph.i, %bb.bp ], [ %.098.ph.i, %bb.bn ], [ %.098.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.098.ph.i, %bb.ba ], [ %.098.ph.i, %bb.ax ], [ %.098.ph.i, %bb.ax ], [ 1, %bb.bb ], [ 1, %bb.bd ], [ %.098.ph.i, %bb.bf ], [ %.098.ph.i, %.split.loop.exit.i.i ], [ 1, %bb.aq ], [ %.098.ph.i, %bb.ah ], [ %.098.ph.i, %bb.am ], [ %.098.ph.i, %bb.al ], [ %.098.ph.i, %bb.aj ]
  %.197.i = phi i8 [ 1, %string_skip_until.exit.loopexit.i ], [ 1, %bb.bg ], [ %.096.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.096.ph.i, %bb.bp ], [ %.096.ph.i, %bb.bn ], [ %.096.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.096.ph.i, %bb.ba ], [ %.096.ph.i, %bb.ax ], [ %.096.ph.i, %bb.ax ], [ %.096.ph.i, %bb.bb ], [ %.096.ph.i, %bb.bd ], [ %.096.ph.i, %bb.bf ], [ %.096.ph.i, %.split.loop.exit.i.i ], [ %.096.ph.i, %bb.aq ], [ %.096.ph.i, %bb.ah ], [ %.096.ph.i, %bb.am ], [ %.096.ph.i, %bb.al ], [ %.096.ph.i, %bb.aj ]
  %.195.i = phi i8 [ %.094.ph.i, %string_skip_until.exit.loopexit.i ], [ %.094.ph.i, %bb.bg ], [ %.094.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.094.ph.i, %bb.bp ], [ %.094.ph.i, %bb.bn ], [ %.094.ph.i, %string_skip_until.exit.loopexit221.i ], [ 1, %bb.ba ], [ 1, %bb.ax ], [ 1, %bb.ax ], [ %.094.ph.i, %bb.bb ], [ %.094.ph.i, %bb.bd ], [ %.094.ph.i, %bb.bf ], [ %.094.ph.i, %.split.loop.exit.i.i ], [ %.094.ph.i, %bb.aq ], [ 1, %bb.ah ], [ %.094.ph.i, %bb.am ], [ %.094.ph.i, %bb.al ], [ %.094.ph.i, %bb.aj ]
  %.193.i = phi i32 [ %.092.ph.i, %string_skip_until.exit.loopexit.i ], [ %.092.ph.i, %bb.bg ], [ %.092.ph.i, %string_skip_until.exit.loopexit220.i ], [ %.092.ph.i, %bb.bp ], [ %.092.ph.i, %bb.bn ], [ %.092.ph.i, %string_skip_until.exit.loopexit221.i ], [ %.092.ph.i, %bb.ba ], [ %.092.ph.i, %bb.ax ], [ %.092.ph.i, %bb.ax ], [ %.092.ph.i, %bb.bb ], [ %.092.ph.i, %bb.bd ], [ %i.aaq, %bb.bf ], [ %.092.ph.i, %.split.loop.exit.i.i ], [ %.092.ph.i, %bb.aq ], [ %.092.ph.i, %bb.ah ], [ %.092.ph.i, %bb.am ], [ %.092.ph.i, %bb.al ], [ %.092.ph.i, %bb.aj ]
  %i.aem = sext i32 %.promoted.i185.i to i64      ; 2 uses
  %i.aen = getelementptr inbounds i8, ptr %i.f, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !218
  %i.aep = and i8 %i.aeo, -4
  %i.aeq = icmp eq i8 %i.aep, 44
  br i1 %i.aeq, label %.critedge.i.i, label %string_skip_separators.exit.i

.critedge.i.i:                                    ; preds = %string_skip_until.exit.i, %.critedge.i.i
  %indvars.iv.i187.i = phi i64 [ %indvars.iv.next.i188.i, %.critedge.i.i ], [ %i.aem, %string_skip_until.exit.i ]
  %indvars.iv.next.i188.i = add nsw i64 %indvars.iv.i187.i, 1 ; 3 uses
  %i.aer = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv.next.i188.i
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !218
  %i.aet = and i8 %i.aes, -4
  %i.aeu = icmp eq i8 %i.aet, 44
  br i1 %i.aeu, label %.critedge.i.i, label %string_skip_separators.exit.loopexit.i, !llvm.loop !1976

string_skip_separators.exit.loopexit.i:           ; preds = %.critedge.i.i
  %i.aev = trunc nsw i64 %indvars.iv.next.i188.i to i32 ; 2 uses
  store i32 %i.aev, ptr %i.a, align 4, !tbaa !191
  br label %string_skip_separators.exit.i

string_skip_separators.exit.i:                    ; preds = %string_skip_separators.exit.loopexit.i, %string_skip_until.exit.i
  %.promoted353.i = phi i32 [ %i.aev, %string_skip_separators.exit.loopexit.i ], [ %.promoted.i185.i, %string_skip_until.exit.i ]
  %.promoted.pre = load i32, ptr %i.of, align 4
  %.promoted123.pre = load i32, ptr %i.oj, align 16
  br label %.outer.i, !llvm.loop !1972

bb.bq:                                            ; preds = %string_skip_spaces.exit.i
  store i32 %i.wh, ptr %i.of, align 4
  store i32 %i.wg, ptr %i.oj, align 16
  %i.aew = trunc nuw i8 %.098.ph.i to i1          ; 2 uses
  %i.aex = zext nneg i8 %.098.ph.i to i32
  %i.aey = trunc nuw i8 %.096.ph.i to i1          ; 2 uses
  %i.aez = zext nneg i8 %.096.ph.i to i32
  %i.afa = add nuw nsw i32 %i.aez, %i.aex
  %i.afb = add i32 %i.afa, %.092.ph.i
  %i.afc = icmp sgt i32 %i.afb, 3
  br i1 %i.afc, label %js_date_parse_otherstring.exit.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  switch i32 %.092.ph.i, label %js_date_parse_otherstring.exit.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bt
    i32 2, label %bb.bu
    i32 3, label %bb.bz
  ]

bb.bs:                                            ; preds = %bb.br
  br i1 %i.aew, label %thread-pre-split.i, label %js_date_parse_otherstring.exit.thread

bb.bt:                                            ; preds = %bb.br
  %i.afd = load i32, ptr %i.b, align 4, !tbaa !191 ; 2 uses
  br i1 %i.aey, label %thread-pre-split.sink.split.i, label %bb.ca

bb.bu:                                            ; preds = %bb.br
  br i1 %i.aew, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.afe = load i32, ptr %i.b, align 4, !tbaa !191
  %i.aff = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !191
  store i32 %i.afg, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  br i1 %i.aey, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.afh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !191 ; 3 uses
  %i.afj = icmp slt i32 %i.afi, 100
  %i.afk = select i1 %i.afj, i32 1900, i32 0
  %i.afl = add nsw i32 %i.afk, %i.afi
  %i.afm = icmp slt i32 %i.afi, 50
  %i.afn = select i1 %i.afm, i32 100, i32 0
  %i.afo = add nsw i32 %i.afl, %i.afn
  store i32 %i.afo, ptr %i.d, align 16, !tbaa !191
  %i.afp = load i32, ptr %i.b, align 4, !tbaa !191
  br label %thread-pre-split.sink.split.i

bb.by:                                            ; preds = %bb.bw
  %i.afq = load i32, ptr %i.b, align 4, !tbaa !191
  %i.afr = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !191
  store i32 %i.afs, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

bb.bz:                                            ; preds = %bb.br
  %i.aft = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !191 ; 3 uses
  %i.afv = icmp slt i32 %i.afu, 100
  %i.afw = select i1 %i.afv, i32 1900, i32 0
  %i.afx = add nsw i32 %i.afw, %i.afu
  %i.afy = icmp slt i32 %i.afu, 50
  %i.afz = select i1 %i.afy, i32 100, i32 0
  %i.aga = add nsw i32 %i.afx, %i.afz
  store i32 %i.aga, ptr %i.d, align 16, !tbaa !191
  %i.agb = load i32, ptr %i.b, align 4, !tbaa !191
  %i.agc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !191
  store i32 %i.agd, ptr %i.oe, align 8, !tbaa !191
  br label %bb.ca

thread-pre-split.sink.split.i:                    ; preds = %bb.bx, %bb.bt
  %.sink.i = phi i32 [ %i.afp, %bb.bx ], [ %i.afd, %bb.bt ]
  store i32 %.sink.i, ptr %i.oe, align 8, !tbaa !191
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %thread-pre-split.sink.split.i, %bb.bs
  %.pr.i = load i32, ptr %i.od, align 4, !tbaa !191
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bt, %thread-pre-split.i, %bb.bz, %bb.by, %bb.bv
  %i.age = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.afe, %bb.bv ], [ %i.afq, %bb.by ], [ %i.agb, %bb.bz ], [ %i.afd, %bb.bt ] ; 2 uses
  %i.agf = icmp slt i32 %i.age, 1
  %i.agg = load i32, ptr %i.oe, align 8
  %i.agh = icmp slt i32 %i.agg, 1
  %or.cond = select i1 %i.agf, i1 true, i1 %i.agh
  br i1 %or.cond, label %js_date_parse_otherstring.exit.thread, label %js_date_parse_otherstring.exit

js_date_parse_otherstring.exit.thread:            ; preds = %bb.ax, %bb.bn, %bb.ao, %bb.be, %string_get_tzabbr.exit.i, %bb.bo, %.split.loop.exit.i136.i, %.split.loop.exit.i146.i, %bb.bi, %bb.bq, %bb.ca, %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cd

js_date_parse_otherstring.exit:                   ; preds = %bb.ca
  %i.agi = add nsw i32 %i.age, -1
  store i32 %i.agi, ptr %i.od, align 4, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.cb

bb.cb:                                            ; preds = %js_date_parse_otherstring.exit, %js_date_parse_isostring.exit.thread50, %js_date_parse_isostring.exit
  %.045 = phi i8 [ 0, %js_date_parse_isostring.exit ], [ %.4, %js_date_parse_otherstring.exit ], [ %.246.ph, %js_date_parse_isostring.exit.thread50 ]
  %i.agj = load <2 x i32>, ptr %i.od, align 4, !tbaa !191 ; 2 uses
  %i.agk = load <2 x i32>, ptr %i.of, align 4, !tbaa !191 ; 4 uses
  %i.agl = extractelement <2 x i32> %i.agk, i64 0
  %i.agm = shufflevector <2 x i32> %i.agk, <2 x i32> %i.agj, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.agn = icmp slt <4 x i32> %i.agm, <i32 60, i32 25, i32 32, i32 12> ; 3 uses
  %.bc = bitcast <4 x i1> %i.agn to <2 x i2>
  %.extract = extractelement <2 x i2> %.bc, i64 0
  %i.ago = icmp eq i2 %.extract, -1
  %i.agp = load i32, ptr %i.oh, align 4, !tbaa !191 ; 3 uses
  %i.agq = icmp slt i32 %i.agp, 60
  %i.agr = select i1 %i.agq, i1 %i.ago, i1 false
  %i.ags = extractelement <4 x i1> %i.agn, i64 2
  %i.agt = select i1 %i.agr, i1 %i.ags, i1 false
  %i.agu = extractelement <4 x i1> %i.agn, i64 3
  %spec.select.4 = select i1 %i.agt, i1 %i.agu, i1 false ; 2 uses
  %i.agv = icmp eq i32 %i.agl, 24
  br i1 %i.agv, label %.split, label %bb.cc

.split:                                           ; preds = %bb.cb
  %i.agw = extractelement <2 x i32> %i.agk, i64 1
  %i.agx = or i32 %i.agp, %i.agw
  %5 = load i32, ptr %i.oi, align 8, !tbaa !191   ; 2 uses
  %i.agy = or i32 %i.agx, %5
  %.not = icmp eq i32 %i.agy, 0
  %spec.select39 = select i1 %.not, i1 %spec.select.4, i1 false
  br i1 %spec.select39, label %.preheader.preheader, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  br i1 %spec.select.4, label %select.unfold..preheader_crit_edge, label %bb.cd

select.unfold..preheader_crit_edge:               ; preds = %bb.cc
  %.pre = load i32, ptr %i.oi, align 8, !tbaa !191
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %select.unfold..preheader_crit_edge, %.split
  %6 = phi i32 [ %.pre, %select.unfold..preheader_crit_edge ], [ %5, %.split ]
  %i.agz = load i32, ptr %i.d, align 16, !tbaa !191
  %i.aha = sitofp i32 %i.agz to double
  store double %i.aha, ptr %i.e, align 16, !tbaa !505
  %i.ahb = sitofp <2 x i32> %i.agj to <2 x double>
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <2 x double> %i.ahb, ptr %i.ahc, align 8, !tbaa !505
  %i.ahd = sitofp <2 x i32> %i.agk to <2 x double>
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <2 x double> %i.ahd, ptr %i.ahe, align 8, !tbaa !505
  %i.ahf = sitofp i32 %i.agp to double
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double %i.ahf, ptr %i.ahg, align 8, !tbaa !505
  %i.ahh = sitofp i32 %6 to double
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store double %i.ahh, ptr %i.ahi, align 16, !tbaa !505
  %i.ahj = zext nneg i8 %.045 to i32
  %i.ahk = call fastcc double @set_date_fields(ptr noundef %i.e, i32 noundef %i.ahj)
  %i.ahl = load i32, ptr %i.oj, align 16, !tbaa !191
  %i.ahm = mul nsw i32 %i.ahl, 60000
  %i.ahn = sitofp i32 %i.ahm to double
  %i.aho = fsub double %i.ahk, %i.ahn
  %i.ahp = bitcast double %i.aho to i64
  br label %bb.cd

bb.cd:                                            ; preds = %.split, %js_date_parse_otherstring.exit.thread, %bb.cc, %.preheader.preheader
  %i.ahq = phi i64 [ 9221120237041090560, %js_date_parse_otherstring.exit.thread ], [ %i.ahp, %.preheader.preheader ], [ 9221120237041090560, %bb.cc ], [ 9221120237041090560, %.split ] ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !232
  %i.aht = trunc i64 %i.l to i32
  %i.ahu = icmp ugt i32 %i.aht, -10
  br i1 %i.ahu, label %bb.ce, label %JS_FreeValue.exit

bb.ce:                                            ; preds = %bb.cd
  %i.ahv = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !191 ; 2 uses
  %i.ahx = add nsw i32 %i.ahw, -1
  store i32 %i.ahx, ptr %i.ahv, align 4, !tbaa !191
  %i.ahy = icmp slt i32 %i.ahw, 2
  br i1 %i.ahy, label %bb.cf, label %JS_FreeValue.exit

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ahs, i64 %i.k, i64 %i.l), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.a
  %i.ahz = phi i64 [ 0, %bb.a ], [ %i.ahq, %bb.cd ], [ %i.ahq, %bb.ce ], [ %i.ahq, %bb.cf ]
  %.sroa.432.0 = phi i64 [ 6, %bb.a ], [ 8, %bb.cd ], [ 8, %bb.ce ], [ 8, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ahz, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.432.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc double @set_date_fields(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef range(i32 0, 16) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load double, ptr %0, align 8, !tbaa !505
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !505 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !505
  %i.h = fdiv double %i.e, 1.200000e+01
  %i.i = tail call double @llvm.floor.f64(double %i.h)
  %i.j = fadd double %i.c, %i.i                   ; 3 uses
  %i.k = tail call double @fmod(double noundef %i.e, double noundef 1.200000e+01) #49 ; 3 uses
  %i.l = fcmp olt double %i.j, -2.718210e+05
  %i.m = fcmp ogt double %i.j, 2.757600e+05
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %time_clip.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp olt double %i.k, 0.000000e+00
  %i.o = fadd double %i.k, 1.200000e+01
  %.048 = select i1 %i.n, double %i.o, double %i.k
  %i.p = fptosi double %i.j to i32                ; 4 uses
  %i.q = fptosi double %.048 to i32               ; 4 uses
  %i.r = sext i32 %i.p to i64                     ; 4 uses
  %i.s = mul nsw i64 %i.r, 365
  %i.t = add nsw i64 %i.s, -719050
  %i.u = add nsw i64 %i.r, -1969
  %i.v = ashr i64 %i.u, 2
  %i.w = add nsw i64 %i.t, %i.v
  %i.x = add nsw i64 %i.r, -1901                  ; 2 uses
  %i.y = srem i64 %i.x, 100                       ; 2 uses
  %isneg.i4.i = icmp slt i64 %i.y, 0
  %.neg12.i = select i1 %isneg.i4.i, i64 -100, i64 0
  %.neg8.i = sub nsw i64 %i.x, %i.y
  %i.z = add nsw i64 %.neg8.i, %.neg12.i
  %.neg.i = sdiv i64 %i.z, -100
  %i.aa = add nsw i64 %i.w, %.neg.i
  %i.ab = add nsw i64 %i.r, -1601                 ; 2 uses
  %i.ac = srem i64 %i.ab, 400                     ; 2 uses
  %isneg.i5.i = icmp slt i64 %i.ac, 0
  %.neg13.i = select i1 %isneg.i5.i, i64 -400, i64 0
  %.neg11.i = sub nsw i64 %i.ab, %i.ac
  %i.ad = add nsw i64 %.neg11.i, %.neg13.i
  %i.ae = sdiv i64 %i.ad, 400
  %i.af = add nsw i64 %i.aa, %i.ae                ; 3 uses
  %i.ag = icmp sgt i32 %i.q, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 2 uses
  %i.ah = add nsw i64 %i.af, 31
  %exitcond.peel.not = icmp eq i32 %i.q, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph
  %i.ai = and i32 %i.p, 3
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = zext i1 %.not.i to i64
  %i.ak = srem i32 %i.p, 100
  %.not3.i = icmp eq i32 %i.ak, 0
  %.neg.i53 = sext i1 %.not3.i to i64
  %i.al = add nsw i64 %i.aj, %.neg.i53
  %i.am = srem i32 %i.p, 400
  %.not4.i = icmp eq i32 %i.am, 0
  %i.an = zext i1 %.not4.i to i64
  %i.ao = add nsw i64 %i.al, %i.an
  %i.ap = add nsw i64 %i.af, 59
  %spec.select.peel59 = add nsw i64 %i.ap, %i.ao  ; 3 uses
  %exitcond.peel61.not = icmp eq i32 %i.q, 2
  br i1 %exitcond.peel61.not, label %._crit_edge, label %.peel.next58.preheader

.peel.next58.preheader:                           ; preds = %.peel.next
  %i.aq = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.peel.next58.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.peel.next58.preheader
  %n.vec = and i64 %i.aq, -4                      ; 3 uses
  %i.ar = or disjoint i64 %n.vec, 2
  %i.as = insertelement <2 x i64> <i64 poison, i64 0>, i64 %spec.select.peel59, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.as, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi68 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @month_days, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <2 x i32>, ptr %i.au, align 8, !tbaa !191
  %wide.load69 = load <2 x i32>, ptr %i.av, align 16, !tbaa !191
  %i.aw = sext <2 x i32> %wide.load to <2 x i64>
  %i.ax = sext <2 x i32> %wide.load69 to <2 x i64>
  %i.ay = add <2 x i64> %vec.phi, %i.aw           ; 2 uses
  %i.az = add <2 x i64> %vec.phi68, %i.ax         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1979

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.az, %i.ay
  %i.bb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.peel.next58.preheader70

.peel.next58.preheader70:                         ; preds = %.peel.next58.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 2, %.peel.next58.preheader ], [ %i.ar, %middle.block ]
  %.04556.ph = phi i64 [ %spec.select.peel59, %.peel.next58.preheader ], [ %i.bb, %middle.block ]
  br label %.peel.next58

.peel.next58:                                     ; preds = %.peel.next58.preheader70, %.peel.next58
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next58 ], [ %indvars.iv.ph, %.peel.next58.preheader70 ] ; 2 uses
  %.04556 = phi i64 [ %i.bf, %.peel.next58 ], [ %.04556.ph, %.peel.next58.preheader70 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @month_days, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191
  %i.be = sext i32 %i.bd to i64
  %i.bf = add nsw i64 %.04556, %i.be              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next58, !llvm.loop !1980

._crit_edge:                                      ; preds = %.peel.next58, %middle.block, %.lr.ph, %.peel.next, %bb.b
  %.045.lcssa = phi i64 [ %i.af, %bb.b ], [ %spec.select.peel59, %.peel.next ], [ %i.ah, %.lr.ph ], [ %i.bb, %middle.block ], [ %i.bf, %.peel.next58 ]
  %i.bg = sitofp i64 %.045.lcssa to double
  %i.bh = fadd double %i.g, %i.bg
  %i.bi = fadd double %i.bh, -1.000000e+00
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !505
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !505
  %i.bo = load <2 x double>, ptr %i.bj, align 8, !tbaa !505
  %i.bp = insertelement <4 x double> poison, double %i.bl, i64 2
  %i.bq = insertelement <4 x double> %i.bp, double %i.bi, i64 3
  %i.br = shufflevector <2 x double> %i.bo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x double> %i.br, <4 x double> %i.bq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bt = fmul <4 x double> %i.bs, <double 3.600000e+06, double 6.000000e+04, double 1.000000e+03, double 8.640000e+07> ; 4 uses
  %i.bu = extractelement <4 x double> %i.bt, i64 1 ; 2 uses
  store volatile double %i.bu, ptr %i.b, align 8, !tbaa !505
  %i.bv = extractelement <4 x double> %i.bt, i64 0
  %i.bw = fadd double %i.bv, %i.bu
  %i.bx = extractelement <4 x double> %i.bt, i64 2 ; 2 uses
  store volatile double %i.bx, ptr %i.b, align 8, !tbaa !505
  %i.by = fadd double %i.bw, %i.bx
  %i.bz = fadd double %i.bn, %i.by
  %i.ca = extractelement <4 x double> %i.bt, i64 3 ; 2 uses
  store volatile double %i.ca, ptr %i.b, align 8, !tbaa !505
  %i.cb = fadd double %i.ca, %i.bz                ; 6 uses
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb) ; 2 uses
  %i.cd = fcmp ueq double %i.cc, +inf
  br i1 %i.cd, label %time_clip.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
end_hunk_1
