inline.NumInlined: 364
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@generate_json_float:bb.a
  br label %round_digit.exit.thread.4.i.i.i

round_digit.exit.thread.4.i.i.i:                  ; preds = %bb.ad, %bb.ac
  %.174.4.i.i.i = phi i32 [ %i.hm, %bb.ad ], [ 0, %bb.ac ] ; 4 uses
  %.neg54.i.i.i = mul nsw i64 %i.hh, -100000
  %i.hp = add i64 %.neg54.i.i.i, %i.hd            ; 3 uses
  %i.hq = shl i64 %i.hp, %i.fp
  %i.hr = add i64 %i.hq, %i.ft                    ; 2 uses
  %.not86.4.i.i.i = icmp ugt i64 %i.hr, %i.fo
  br i1 %.not86.4.i.i.i, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %round_digit.exit.thread.4.i.i.i
  %i.hs = udiv i64 %i.hp, 10000                   ; 2 uses
  %i.ht = and i64 %i.hs, 4294967295               ; 2 uses
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = icmp ne i32 %.174.4.i.i.i, 0
  %or.cond.5.i.i.i = select i1 %i.hu, i1 true, i1 %i.hv
  br i1 %or.cond.5.i.i.i, label %bb.af, label %round_digit.exit.thread.5.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.hw = trunc i64 %i.hs to i8
  %i.hx = add i8 %i.hw, 48
  %i.hy = add nuw nsw i32 %.174.4.i.i.i, 1
  %i.hz = zext nneg i32 %.174.4.i.i.i to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hz
  store i8 %i.hx, ptr %i.ia, align 1, !tbaa !79
  br label %round_digit.exit.thread.5.i.i.i

round_digit.exit.thread.5.i.i.i:                  ; preds = %bb.af, %bb.ae
  %.174.5.i.i.i = phi i32 [ %i.hy, %bb.af ], [ 0, %bb.ae ] ; 4 uses
  %.neg55.i.i.i = mul nsw i64 %i.ht, -10000
  %i.ib = add i64 %.neg55.i.i.i, %i.hp            ; 3 uses
  %i.ic = shl i64 %i.ib, %i.fp
  %i.id = add i64 %i.ic, %i.ft                    ; 2 uses
  %.not86.5.i.i.i = icmp ugt i64 %i.id, %i.fo
  br i1 %.not86.5.i.i.i, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %round_digit.exit.thread.5.i.i.i
  %i.ie = udiv i64 %i.ib, 1000                    ; 2 uses
  %i.if = and i64 %i.ie, 4294967295               ; 2 uses
  %i.ig = icmp ne i64 %i.if, 0
  %i.ih = icmp ne i32 %.174.5.i.i.i, 0
  %or.cond.6.i.i.i = select i1 %i.ig, i1 true, i1 %i.ih
  br i1 %or.cond.6.i.i.i, label %bb.ah, label %round_digit.exit.thread.6.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ii = trunc i64 %i.ie to i8
  %i.ij = add i8 %i.ii, 48
  %i.ik = add nuw nsw i32 %.174.5.i.i.i, 1
  %i.il = zext nneg i32 %.174.5.i.i.i to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.il
  store i8 %i.ij, ptr %i.im, align 1, !tbaa !79
  br label %round_digit.exit.thread.6.i.i.i

round_digit.exit.thread.6.i.i.i:                  ; preds = %bb.ah, %bb.ag
  %.174.6.i.i.i = phi i32 [ %i.ik, %bb.ah ], [ 0, %bb.ag ] ; 4 uses
  %.neg56.i.i.i = mul nsw i64 %i.if, -1000
  %i.in = add i64 %.neg56.i.i.i, %i.ib            ; 3 uses
  %i.io = shl i64 %i.in, %i.fp
  %i.ip = add i64 %i.io, %i.ft                    ; 2 uses
  %.not86.6.i.i.i = icmp ugt i64 %i.ip, %i.fo
  br i1 %.not86.6.i.i.i, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %round_digit.exit.thread.6.i.i.i
  %i.iq = udiv i64 %i.in, 100                     ; 2 uses
  %i.ir = and i64 %i.iq, 4294967295               ; 2 uses
  %i.is = icmp ne i64 %i.ir, 0
  %i.it = icmp ne i32 %.174.6.i.i.i, 0
  %or.cond.7.i.i.i = select i1 %i.is, i1 true, i1 %i.it
  br i1 %or.cond.7.i.i.i, label %bb.aj, label %round_digit.exit.thread.7.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.iu = trunc i64 %i.iq to i8
  %i.iv = add i8 %i.iu, 48
  %i.iw = add nuw nsw i32 %.174.6.i.i.i, 1
  %i.ix = zext nneg i32 %.174.6.i.i.i to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ix
  store i8 %i.iv, ptr %i.iy, align 1, !tbaa !79
  br label %round_digit.exit.thread.7.i.i.i

round_digit.exit.thread.7.i.i.i:                  ; preds = %bb.aj, %bb.ai
  %.174.7.i.i.i = phi i32 [ %i.iw, %bb.aj ], [ 0, %bb.ai ] ; 4 uses
  %.neg57.i.i.i = mul nsw i64 %i.ir, -100
  %i.iz = add i64 %.neg57.i.i.i, %i.in            ; 3 uses
  %i.ja = shl i64 %i.iz, %i.fp
  %i.jb = add i64 %i.ja, %i.ft                    ; 2 uses
  %.not86.7.i.i.i = icmp ugt i64 %i.jb, %i.fo
  br i1 %.not86.7.i.i.i, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %round_digit.exit.thread.7.i.i.i
  %i.jc = udiv i64 %i.iz, 10                      ; 2 uses
  %i.jd = and i64 %i.jc, 4294967295               ; 2 uses
  %i.je = icmp ne i64 %i.jd, 0
  %i.jf = icmp ne i32 %.174.7.i.i.i, 0
  %or.cond.8.i.i.i = select i1 %i.je, i1 true, i1 %i.jf
  br i1 %or.cond.8.i.i.i, label %bb.al, label %round_digit.exit.thread.8.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.jg = trunc i64 %i.jc to i8
  %i.jh = add i8 %i.jg, 48
  %i.ji = add nuw nsw i32 %.174.7.i.i.i, 1
  %i.jj = zext nneg i32 %.174.7.i.i.i to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jj
  store i8 %i.jh, ptr %i.jk, align 1, !tbaa !79
  br label %round_digit.exit.thread.8.i.i.i

round_digit.exit.thread.8.i.i.i:                  ; preds = %bb.al, %bb.ak
  %.174.8.i.i.i = phi i32 [ %i.ji, %bb.al ], [ 0, %bb.ak ] ; 4 uses
  %.neg58.i.i.i = mul nsw i64 %i.jd, -10
  %i.jl = add i64 %.neg58.i.i.i, %i.iz            ; 4 uses
  %i.jm = shl i64 %i.jl, %i.fp
  %i.jn = add i64 %i.jm, %i.ft                    ; 2 uses
  %.not86.8.i.i.i = icmp ugt i64 %i.jn, %i.fo
  br i1 %.not86.8.i.i.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %round_digit.exit.thread.8.i.i.i
  %i.jo = and i64 %i.jl, 4294967295
  %i.jp = icmp ne i64 %i.jo, 0
  %i.jq = icmp ne i32 %.174.8.i.i.i, 0
  %or.cond.9.i.i.i = select i1 %i.jp, i1 true, i1 %i.jq
  br i1 %or.cond.9.i.i.i, label %bb.an, label %round_digit.exit.thread.9.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.jr = trunc i64 %i.jl to i8
  %i.js = add i8 %i.jr, 48
  %i.jt = add nuw nsw i32 %.174.8.i.i.i, 1
  %i.ju = zext nneg i32 %.174.8.i.i.i to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ju
  store i8 %i.js, ptr %i.jv, align 1, !tbaa !79
  br label %round_digit.exit.thread.9.i.i.i

round_digit.exit.thread.9.i.i.i:                  ; preds = %bb.an, %bb.am
  %.174.9.i.i.i = phi i32 [ %i.jt, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.jw = and i64 %i.jl, -4294967296
  %i.jx = shl i64 %i.jw, %i.fp
  %i.jy = add i64 %i.jx, %i.ft                    ; 2 uses
  %.not86.9.i.i.i = icmp ugt i64 %i.jy, %i.fo
  br i1 %.not86.9.i.i.i, label %.preheader.i.i.i, label %bb.ap

bb.ao:                                            ; preds = %find_cachedpow10.exit.i.i
  %i.jz = trunc i64 %i.fu to i8
  %i.ka = add i8 %i.jz, 48
  store i8 %i.ka, ptr %i.a, align 16, !tbaa !79
  br label %round_digit.exit.thread.i.i.i

round_digit.exit.thread.i.i.i:                    ; preds = %bb.ao, %find_cachedpow10.exit.i.i
  %.174.i.i.i = phi i32 [ 1, %bb.ao ], [ 0, %find_cachedpow10.exit.i.i ] ; 3 uses
  %.neg.i.i.i = mul nsw i64 %i.fv, -1000000000
  %i.kb = add i64 %.neg.i.i.i, %i.fr              ; 3 uses
  %i.kc = shl i64 %i.kb, %i.fp
  %i.kd = add i64 %i.kc, %i.ft                    ; 2 uses
  %.not86.i.i.i = icmp ugt i64 %i.kd, %i.fo
  br i1 %.not86.i.i.i, label %bb.w, label %bb.ap

bb.ap:                                            ; preds = %round_digit.exit.thread.i.i.i, %round_digit.exit.thread.9.i.i.i, %round_digit.exit.thread.8.i.i.i, %round_digit.exit.thread.7.i.i.i, %round_digit.exit.thread.6.i.i.i, %round_digit.exit.thread.5.i.i.i, %round_digit.exit.thread.4.i.i.i, %round_digit.exit.thread.3.i.i.i, %round_digit.exit.thread.2.i.i.i, %round_digit.exit.thread.1.i.i.i
  %.174.lcssa.i.i.i = phi i32 [ %.174.i.i.i, %round_digit.exit.thread.i.i.i ], [ %.174.1.i.i.i, %round_digit.exit.thread.1.i.i.i ], [ %.174.2.i.i.i, %round_digit.exit.thread.2.i.i.i ], [ %.174.3.i.i.i, %round_digit.exit.thread.3.i.i.i ], [ %.174.4.i.i.i, %round_digit.exit.thread.4.i.i.i ], [ %.174.5.i.i.i, %round_digit.exit.thread.5.i.i.i ], [ %.174.6.i.i.i, %round_digit.exit.thread.6.i.i.i ], [ %.174.7.i.i.i, %round_digit.exit.thread.7.i.i.i ], [ %.174.8.i.i.i, %round_digit.exit.thread.8.i.i.i ], [ %.174.9.i.i.i, %round_digit.exit.thread.9.i.i.i ] ; 4 uses
  %.lcssa24.i.i.i = phi i32 [ 9, %round_digit.exit.thread.i.i.i ], [ 8, %round_digit.exit.thread.1.i.i.i ], [ 7, %round_digit.exit.thread.2.i.i.i ], [ 6, %round_digit.exit.thread.3.i.i.i ], [ 5, %round_digit.exit.thread.4.i.i.i ], [ 4, %round_digit.exit.thread.5.i.i.i ], [ 3, %round_digit.exit.thread.6.i.i.i ], [ 2, %round_digit.exit.thread.7.i.i.i ], [ 1, %round_digit.exit.thread.8.i.i.i ], [ 0, %round_digit.exit.thread.9.i.i.i ]
  %.lcssa22.i.i.i = phi i64 [ %i.kd, %round_digit.exit.thread.i.i.i ], [ %i.gh, %round_digit.exit.thread.1.i.i.i ], [ %i.gt, %round_digit.exit.thread.2.i.i.i ], [ %i.hf, %round_digit.exit.thread.3.i.i.i ], [ %i.hr, %round_digit.exit.thread.4.i.i.i ], [ %i.id, %round_digit.exit.thread.5.i.i.i ], [ %i.ip, %round_digit.exit.thread.6.i.i.i ], [ %i.jb, %round_digit.exit.thread.7.i.i.i ], [ %i.jn, %round_digit.exit.thread.8.i.i.i ], [ %i.jy, %round_digit.exit.thread.9.i.i.i ] ; 3 uses
  %.lcssa.i35.i.i = phi i64 [ 1000000000, %round_digit.exit.thread.i.i.i ], [ 100000000, %round_digit.exit.thread.1.i.i.i ], [ 10000000, %round_digit.exit.thread.2.i.i.i ], [ 1000000, %round_digit.exit.thread.3.i.i.i ], [ 100000, %round_digit.exit.thread.4.i.i.i ], [ 10000, %round_digit.exit.thread.5.i.i.i ], [ 1000, %round_digit.exit.thread.6.i.i.i ], [ 100, %round_digit.exit.thread.7.i.i.i ], [ 10, %round_digit.exit.thread.8.i.i.i ], [ 1, %round_digit.exit.thread.9.i.i.i ]
  %i.ke = add nsw i32 %.lcssa24.i.i.i, %i.fj      ; 3 uses
  %i.kf = shl i64 %.lcssa.i35.i.i, %i.fp          ; 3 uses
  %i.kg = icmp uge i64 %.lcssa22.i.i.i, %i.fn
  %i.kh = sub nuw i64 %i.fo, %.lcssa22.i.i.i
  %.not21.i.i.i.i = icmp ult i64 %i.kh, %i.kf
  %or.cond22.i.i.i.i = or i1 %i.kg, %.not21.i.i.i.i
  br i1 %or.cond22.i.i.i.i, label %grisu2.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap
  %i.ki = zext nneg i32 %.174.lcssa.i.i.i to i64
  %i.kj = getelementptr i8, ptr %i.a, i64 %i.ki
  %i.kk = getelementptr i8, ptr %i.kj, i64 -1     ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge2.i.i.i.i, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %.lcssa22.i.i.i, %.lr.ph.i.i.i.i ], [ %i.kl, %.critedge2.i.i.i.i ] ; 2 uses
  %i.kl = add i64 %.023.i.i.i.i, %i.kf            ; 5 uses
  %i.km = icmp ult i64 %i.kl, %i.fn
  br i1 %i.km, label %.critedge2.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kn = sub i64 %i.fn, %.023.i.i.i.i
  %i.ko = sub nuw i64 %i.kl, %i.fn
  %i.kp = icmp ugt i64 %i.kn, %i.ko
  br i1 %i.kp, label %.critedge2.i.i.i.i, label %grisu2.exit.i

.critedge2.i.i.i.i:                               ; preds = %bb.ar, %bb.aq
  %i.kq = load i8, ptr %i.kk, align 1, !tbaa !79
  %i.kr = add i8 %i.kq, -1
  store i8 %i.kr, ptr %i.kk, align 1, !tbaa !79
  %i.ks = icmp uge i64 %i.kl, %i.fn
  %i.kt = sub i64 %i.fo, %i.kl
  %.not.i.i.i.i = icmp ult i64 %i.kt, %i.kf
  %or.cond.i.i.i.i = or i1 %i.ks, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %grisu2.exit.i, label %bb.aq

.preheader.i.i.i:                                 ; preds = %round_digit.exit.thread.9.i.i.i, %round_digit.exit94.i.i.i
  %.024.i = phi i32 [ %.1.i, %round_digit.exit94.i.i.i ], [ %i.fj, %round_digit.exit.thread.9.i.i.i ] ; 2 uses
  %.081.i.i.i = phi i64 [ %i.kv, %round_digit.exit94.i.i.i ], [ %i.fo, %round_digit.exit.thread.9.i.i.i ]
  %.279.i.i.i = phi i32 [ %.380.i.i.i, %round_digit.exit94.i.i.i ], [ undef, %round_digit.exit.thread.9.i.i.i ]
  %.075.i.i.i = phi i64 [ %i.lf, %round_digit.exit94.i.i.i ], [ %i.ft, %round_digit.exit.thread.9.i.i.i ]
  %.172.i.i.i = phi i32 [ %.3.i.i.i, %round_digit.exit94.i.i.i ], [ %.174.9.i.i.i, %round_digit.exit.thread.9.i.i.i ] ; 3 uses
  %.0.i.i.i = phi ptr [ %.1.i.i.i, %round_digit.exit94.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @tens, i64 144), %round_digit.exit.thread.9.i.i.i ] ; 4 uses
  %i.ku = mul i64 %.075.i.i.i, 10                 ; 2 uses
  %i.kv = mul i64 %.081.i.i.i, 10                 ; 4 uses
  %i.kw = lshr i64 %i.ku, %i.fp                   ; 2 uses
  %i.kx = and i64 %i.kw, 4294967295
  %i.ky = icmp ne i64 %i.kx, 0
  %i.kz = icmp ne i32 %.172.i.i.i, 0
  %or.cond4.i.i.i = select i1 %i.ky, i1 true, i1 %i.kz
  br i1 %or.cond4.i.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.preheader.i.i.i
  %i.la = trunc i64 %i.kw to i8
  %i.lb = add i8 %i.la, 48
  %i.lc = add nsw i32 %.172.i.i.i, 1
  %i.ld = sext i32 %.172.i.i.i to i64
  %i.le = getelementptr inbounds i8, ptr %i.a, i64 %i.ld
  store i8 %i.lb, ptr %i.le, align 1, !tbaa !79
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.preheader.i.i.i
  %.3.i.i.i = phi i32 [ %i.lc, %bb.as ], [ 0, %.preheader.i.i.i ] ; 5 uses
  %i.lf = and i64 %i.ku, %i.fs                    ; 5 uses
  %.not.i36.i.i = icmp ult i64 %i.lf, %i.kv       ; 2 uses
  br i1 %.not.i36.i.i, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.lg = add nsw i32 %.024.i, -1                 ; 3 uses
  %i.lh = load i64, ptr %.0.i.i.i, align 8, !tbaa !10
  %i.li = mul i64 %i.lh, %i.fn                    ; 5 uses
  %i.lj = icmp uge i64 %i.lf, %i.li
  %i.lk = sub nuw i64 %i.kv, %i.lf
  %.not21.i87.i.i.i = icmp ult i64 %i.lk, %i.fq
  %or.cond22.i88.i.i.i = or i1 %.not21.i87.i.i.i, %i.lj
  br i1 %or.cond22.i88.i.i.i, label %grisu2.exit.i, label %.lr.ph.i89.i.i.i

.lr.ph.i89.i.i.i:                                 ; preds = %bb.au
  %i.ll = sext i32 %.3.i.i.i to i64
  %i.lm = getelementptr i8, ptr %i.a, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 -1     ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %.critedge2.i91.i.i.i, %.lr.ph.i89.i.i.i
  %.023.i90.i.i.i = phi i64 [ %i.lf, %.lr.ph.i89.i.i.i ], [ %i.lo, %.critedge2.i91.i.i.i ] ; 2 uses
  %i.lo = add i64 %.023.i90.i.i.i, %i.fq          ; 5 uses
  %i.lp = icmp ult i64 %i.lo, %i.li
  br i1 %i.lp, label %.critedge2.i91.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lq = sub i64 %i.li, %.023.i90.i.i.i
  %i.lr = sub nuw i64 %i.lo, %i.li
  %i.ls = icmp ugt i64 %i.lq, %i.lr
  br i1 %i.ls, label %.critedge2.i91.i.i.i, label %round_digit.exit94.i.i.i

.critedge2.i91.i.i.i:                             ; preds = %bb.aw, %bb.av
  %i.lt = load i8, ptr %i.ln, align 1, !tbaa !79
  %i.lu = add i8 %i.lt, -1
  store i8 %i.lu, ptr %i.ln, align 1, !tbaa !79
  %i.lv = icmp uge i64 %i.lo, %i.li
  %i.lw = sub i64 %i.kv, %i.lo
  %.not.i92.i.i.i = icmp ult i64 %i.lw, %i.fq
  %or.cond.i93.i.i.i = or i1 %i.lv, %.not.i92.i.i.i
  br i1 %or.cond.i93.i.i.i, label %round_digit.exit94.i.i.i, label %bb.av

bb.ax:                                            ; preds = %bb.at
  %i.lx = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -8
  br label %round_digit.exit94.i.i.i

round_digit.exit94.i.i.i:                         ; preds = %.critedge2.i91.i.i.i, %bb.aw, %bb.ax
  %.1.i = phi i32 [ %.024.i, %bb.ax ], [ %i.lg, %bb.aw ], [ %i.lg, %.critedge2.i91.i.i.i ] ; 2 uses
  %.380.i.i.i = phi i32 [ %.279.i.i.i, %bb.ax ], [ %.3.i.i.i, %bb.aw ], [ %.3.i.i.i, %.critedge2.i91.i.i.i ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.lx, %bb.ax ], [ %.0.i.i.i, %bb.aw ], [ %.0.i.i.i, %.critedge2.i91.i.i.i ]
  br i1 %.not.i36.i.i, label %grisu2.exit.i, label %.preheader.i.i.i

grisu2.exit.i:                                    ; preds = %.critedge2.i.i.i.i, %bb.ar, %round_digit.exit94.i.i.i, %bb.au, %bb.ap
  %.2.i = phi i32 [ %i.ke, %bb.ap ], [ %i.lg, %bb.au ], [ %.1.i, %round_digit.exit94.i.i.i ], [ %i.ke, %bb.ar ], [ %i.ke, %.critedge2.i.i.i.i ] ; 8 uses
  %.4.i.i.i = phi i32 [ %.174.lcssa.i.i.i, %bb.ap ], [ %.3.i.i.i, %bb.au ], [ %.380.i.i.i, %round_digit.exit94.i.i.i ], [ %.174.lcssa.i.i.i, %bb.ar ], [ %.174.lcssa.i.i.i, %.critedge2.i.i.i.i ] ; 6 uses
  %i.ly = add nsw i32 %.4.i.i.i, %.2.i            ; 7 uses
  %i.lz = icmp slt i32 %i.ly, 1                   ; 2 uses
  %i.ma = sub nsw i32 1, %i.ly
  %i.mb = add nsw i32 %i.ly, -1
  %i.mc = select i1 %i.lz, i32 %i.ma, i32 %i.mb   ; 8 uses
  %i.md = icmp sgt i32 %.2.i, -1
  %i.me = icmp slt i32 %i.mc, 15
  %or.cond.i.i = select i1 %i.md, i1 %i.me, i1 false
  br i1 %or.cond.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %grisu2.exit.i
  %i.mf = sext i32 %.4.i.i.i to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull readonly align 16 %i.a, i64 %i.mf, i1 false)
  %i.mg = getelementptr inbounds i8, ptr %i.bi, i64 %i.mf
  %i.mh = zext nneg i32 %.2.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.mg, i8 48, i64 %i.mh, i1 false)
  %i.mi = sext i32 %i.ly to i64
  %i.mj = getelementptr inbounds i8, ptr %i.bi, i64 %i.mi ; 2 uses
  store i8 46, ptr %i.mj, align 1, !tbaa !79
  %i.mk = getelementptr i8, ptr %i.mj, i64 1
  store i8 48, ptr %i.mk, align 1, !tbaa !79
  %i.ml = add nsw i32 %i.ly, 2
  br label %fpconv_dtoa.exit

bb.az:                                            ; preds = %grisu2.exit.i
  %i.mm = icmp slt i32 %.2.i, 0
  br i1 %i.mm, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.mn = icmp samesign ugt i32 %.2.i, -7
  %i.mo = icmp slt i32 %i.mc, 10
  %or.cond3.i.i = select i1 %i.mn, i1 true, i1 %i.mo
  br i1 %or.cond3.i.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.lz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.mp = sub nsw i32 0, %i.ly
  store i8 48, ptr %i.bi, align 1, !tbaa !79
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 46, ptr %i.mq, align 1, !tbaa !79
  %i.mr = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.ms = zext nneg i32 %i.mp to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mr, i8 48, i64 %i.ms, i1 false)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  %i.mv = sext i32 %.4.i.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mu, ptr nonnull readonly align 16 %i.a, i64 %i.mv, i1 false)
  %i.mw = sub nsw i32 2, %.2.i
  br label %fpconv_dtoa.exit

bb.bd:                                            ; preds = %bb.bb
  %i.mx = sub nsw i32 0, %.2.i
  %i.my = zext nneg i32 %i.ly to i64              ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull readonly align 16 %i.a, i64 %i.my, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.my ; 2 uses
  store i8 46, ptr %i.mz, align 1, !tbaa !79
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.my
  %i.nc = zext nneg i32 %i.mx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.na, ptr nonnull readonly align 1 %i.nb, i64 %i.nc, i1 false)
  %i.nd = add nsw i32 %.4.i.i.i, 1
  br label %fpconv_dtoa.exit

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.ne = select i1 %.not.i30, i32 17, i32 18
  %i.nf = tail call i32 @llvm.smin.i32(i32 %.4.i.i.i, i32 %i.ne) ; 3 uses
  %i.ng = load i8, ptr %i.a, align 16, !tbaa !79
  store i8 %i.ng, ptr %i.bi, align 1, !tbaa !79
  %i.nh = icmp sgt i32 %.4.i.i.i, 1
  br i1 %i.nh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 46, ptr %i.ni, align 1, !tbaa !79
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.nl = add nsw i32 %i.nf, -1
  %i.nm = zext nneg i32 %i.nl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nj, ptr nonnull readonly align 1 %i.nk, i64 %i.nm, i1 false)
  %i.nn = add nuw nsw i32 %i.nf, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0101.i.i = phi i32 [ %i.nn, %bb.bf ], [ 1, %bb.be ] ; 5 uses
  %i.no = zext nneg i32 %.0101.i.i to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.no
  store i8 101, ptr %i.np, align 1, !tbaa !79
  %i.nq = add nsw i32 %i.nf, %.2.i
  %i.nr = icmp slt i32 %i.nq, 1
  %i.ns = select i1 %i.nr, i8 45, i8 43
  %i.nt = add nuw nsw i32 %.0101.i.i, 2           ; 3 uses
  %i.nu = sext i32 %.0101.i.i to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 1
  store i8 %i.ns, ptr %i.nw, align 1, !tbaa !79
  %i.nx = icmp slt i32 %i.mc, 100
  br i1 %i.nx, label %bb.bh, label %.thread.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ny = icmp sgt i32 %i.mc, 9
  br i1 %i.ny, label %bb.bi, label %bb.bk

.thread.i.i:                                      ; preds = %bb.bg
  %i.nz = udiv i32 %i.mc, 100                     ; 2 uses
  %i.oa = trunc i32 %i.nz to i8
  %i.ob = add i8 %i.oa, 48
  %i.oc = add nuw nsw i32 %.0101.i.i, 3           ; 2 uses
  %i.od = zext nneg i32 %i.nt to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.od
  store i8 %i.ob, ptr %i.oe, align 1, !tbaa !79
  %.neg.i20.i = mul nsw i32 %i.nz, -100
  %i.of = add nsw i32 %.neg.i20.i, %i.mc          ; 3 uses
  %i.og = icmp sgt i32 %i.of, 9
  br i1 %i.og, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread.i.i, %bb.bh
  %.1102119.i.i = phi i32 [ %i.oc, %.thread.i.i ], [ %i.nt, %bb.bh ] ; 2 uses
  %.0103117.i.i = phi i32 [ %i.of, %.thread.i.i ], [ %i.mc, %bb.bh ] ; 2 uses
  %i.oh = udiv i32 %.0103117.i.i, 10              ; 2 uses
  %i.oi = trunc i32 %i.oh to i8
  %i.oj = add i8 %i.oi, 48
  %i.ok = add nuw nsw i32 %.1102119.i.i, 1
  %i.ol = zext nneg i32 %.1102119.i.i to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ol
  store i8 %i.oj, ptr %i.om, align 1, !tbaa !79
  %.neg114.i.i = mul nsw i32 %i.oh, -10
  %i.on = add nsw i32 %.neg114.i.i, %.0103117.i.i
  br label %bb.bk

bb.bj:                                            ; preds = %.thread.i.i
  %i.oo = add nuw nsw i32 %.0101.i.i, 4
  %i.op = zext nneg i32 %i.oc to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.op
  store i8 48, ptr %i.oq, align 1, !tbaa !79
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.1104.i.i = phi i32 [ %i.on, %bb.bi ], [ %i.of, %bb.bj ], [ %i.mc, %bb.bh ]
  %.2.i.i = phi i32 [ %i.ok, %bb.bi ], [ %i.oo, %bb.bj ], [ %i.nt, %bb.bh ] ; 2 uses
  %i.or = srem i32 %.1104.i.i, 10
  %i.os = trunc nsw i32 %i.or to i8
  %i.ot = add nsw i8 %i.os, 48
  %i.ou = add nuw nsw i32 %.2.i.i, 1
  %i.ov = zext nneg i32 %.2.i.i to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ov
  store i8 %i.ot, ptr %i.ow, align 1, !tbaa !79
  br label %fpconv_dtoa.exit

fpconv_dtoa.exit:                                 ; preds = %bb.o, %bb.r, %bb.s, %bb.ay, %bb.bc, %bb.bd, %bb.bk
end_hunk_0
