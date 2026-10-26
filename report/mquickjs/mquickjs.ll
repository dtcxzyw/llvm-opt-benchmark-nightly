Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@JS_Call:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !51
  %i.ga = add i64 %i.fz, -1
  %i.gb = inttoptr i64 %i.ga to ptr               ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !59
  %i.ge = add i64 %i.gd, -1
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i64, ptr %i.aay, align 8, !tbaa !46
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = ashr i32 %i.gi, 1
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gg, i64 %i.gk ; 2 uses
  %.not2505.not = icmp eq i64 %i.fu, 15
  br i1 %.not2505.not, label %.loopexit3354, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not2703 = icmp eq i32 %i.fm, 0
  br i1 %.not2703, label %.thread2879, label %.lr.ph2693

.lr.ph2693:                                       ; preds = %bb.u
  %i.gm = add i64 %i.fu, -1
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !51
  %i.gq = add i64 %i.gp, -1
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %wide.trip.count2779 = zext nneg i32 %i.fm to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2693, %bb.v
  %indvars.iv2776 = phi i64 [ 0, %.lr.ph2693 ], [ %indvars.iv.next2777, %bb.v ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.81614.ph, i64 %indvars.iv2776
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !46
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv2776
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !46
  %indvars.iv.next2777 = add nuw nsw i64 %indvars.iv2776, 1 ; 2 uses
  %exitcond2780.not = icmp eq i64 %indvars.iv.next2777, %wide.trip.count2779
  br i1 %exitcond2780.not, label %.thread2879, label %bb.v, !llvm.loop !200

.thread2879:                                      ; preds = %bb.v, %bb.u
  %i.gx = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  store i64 %i.fu, ptr %i.gx, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.w:                                             ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.gy = load i64, ptr %i.aav, align 8, !tbaa !46
  %i.gz = and i64 %i.gy, 131072
  %.not2091 = icmp eq i64 %i.gz, 0
  br i1 %.not2091, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ha = load i64, ptr %i.aaw, align 8, !tbaa !46
  %i.hb = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.y:                                             ; preds = %bb.w
  %i.hc = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  store i64 11, ptr %i.hc, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.z:                                             ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.hd = getelementptr inbounds nuw i8, ptr %.74, i64 8
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.aa:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.he = load i64, ptr %.74, align 8, !tbaa !46
  %i.hf = getelementptr inbounds nuw i8, ptr %.74, i64 8 ; 2 uses
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ab:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.hg = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  %i.hh = load i64, ptr %.74, align 8, !tbaa !46
  store i64 %i.hh, ptr %i.hg, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ac:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.hi = getelementptr inbounds i8, ptr %.74, i64 -16 ; 2 uses
  %i.hj = load <2 x i64>, ptr %.74, align 8, !tbaa !46
  store <2 x i64> %i.hj, ptr %i.hi, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ad:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.hk = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.74, i64 8
  %i.hm = load <2 x i64>, ptr %.74, align 8, !tbaa !46
  %i.hn = load i64, ptr %.74, align 8, !tbaa !46
  store <2 x i64> %i.hm, ptr %i.hk, align 8, !tbaa !46
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ae:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.ho = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.74, i64 8
  %i.hq = load <2 x i64>, ptr %.74, align 8, !tbaa !46
  %i.hr = load i64, ptr %.74, align 8, !tbaa !46
  store <2 x i64> %i.hq, ptr %i.ho, align 8, !tbaa !46
  %i.hs = getelementptr inbounds nuw i8, ptr %.74, i64 16 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !46
  store i64 %i.ht, ptr %i.hp, align 8, !tbaa !46
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.af:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.hu = getelementptr inbounds nuw i8, ptr %.74, i64 8 ; 2 uses
  %i.hv = load <2 x i64>, ptr %i.hu, align 8, !tbaa !46
  %i.hw = shufflevector <2 x i64> %i.hv, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.hw, ptr %i.hu, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ag:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.hx = getelementptr inbounds nuw i8, ptr %.74, i64 16
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !46
  %i.hz = getelementptr inbounds nuw i8, ptr %.74, i64 8
  %i.ia = load <2 x i64>, ptr %.74, align 8, !tbaa !46
  store <2 x i64> %i.ia, ptr %i.hz, align 8, !tbaa !46
  store i64 %i.hy, ptr %.74, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ah:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.ib = getelementptr inbounds nuw i8, ptr %.74, i64 8 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !46
  %i.id = getelementptr inbounds nuw i8, ptr %.74, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %.74, i64 24
  %i.if = load <2 x i64>, ptr %i.id, align 8, !tbaa !46
  store <2 x i64> %i.if, ptr %i.ib, align 8, !tbaa !46
  store i64 %i.ic, ptr %i.ie, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ai:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.ig = load <2 x i64>, ptr %.74, align 8, !tbaa !46
  %i.ih = shufflevector <2 x i64> %i.ig, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ih, ptr %.74, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.aj:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.ii = getelementptr inbounds nuw i8, ptr %.531816, i64 24
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !92
  %i.ik = add i64 %i.ij, -1
  %i.il = inttoptr i64 %i.ik to ptr
  %.val2158 = load i16, ptr %i.cxi, align 1, !tbaa !89
  %i.im = getelementptr inbounds nuw i8, ptr %.531816, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !59
  %i.io = ptrtoaddr ptr %i.cxi to i64
  %.neg2597 = add i64 %i.io, 2147483641
  %i.ip = sub i64 %.neg2597, %i.in
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = shl i32 %i.iq, 1
  %i.is = sext i32 %i.ir to i64
  store i64 %i.is, ptr %i.aat, align 8, !tbaa !46
  store ptr %.74, ptr %i.g, align 8, !tbaa !42
  store ptr %.81614.ph, ptr %i.i, align 8, !tbaa !42
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iu = zext i16 %.val2158 to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !46
  %i.ix = call fastcc i64 @js_closure(ptr noundef %0, i64 noundef %i.iw, ptr noundef %.81614.ph) #28 ; 3 uses
  %i.iy = load i64, ptr %i.aau, align 8, !tbaa !46
  %i.iz = add i64 %i.iy, -1
  %i.ja = inttoptr i64 %i.iz to ptr
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !51
  %i.jd = add i64 %i.jc, -1
  %i.je = inttoptr i64 %i.jd to ptr               ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !59
  %i.jh = add i64 %i.jg, -1
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i64, ptr %i.aat, align 8, !tbaa !46
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = ashr i32 %i.jl, 1
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds i8, ptr %i.jj, i64 %i.jn ; 2 uses
  %.not2504.not = icmp eq i64 %i.ix, 15
  br i1 %.not2504.not, label %.loopexit3354, label %.thread2881, !prof !67

.thread2881:                                      ; preds = %bb.aj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jq = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  store i64 %i.ix, ptr %i.jq, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ak:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %.val2157 = load i16, ptr %i.cxi, align 1, !tbaa !89
  %i.jr = zext i16 %.val2157 to i32
  %i.js = or disjoint i32 %i.jr, 65536
  br label %bb.am

bb.al:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %.val2156 = load i16, ptr %i.cxi, align 1, !tbaa !89
  %i.jt = zext i16 %.val2156 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %4 = phi i32 [ 24, %bb.ak ], [ 25, %bb.al ]
  %.01605 = phi i32 [ %i.js, %bb.ak ], [ %i.jt, %bb.al ] ; 2 uses
  %i.ju = and i32 %.01605, 65535                  ; 2 uses
  %.not2503 = icmp eq i32 %i.ju, 0
  br i1 %.not2503, label %js_reverse_val.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.am
  %i.jv = add nuw nsw i32 %i.ju, 1                ; 2 uses
  %i.jw = lshr i32 %i.jv, 1
  %i.jx = zext nneg i32 %i.jv to i64
  %wide.trip.count.i = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr [8 x i8], ptr %.74, i64 %i.jx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.74, i64 %indvars.iv.i ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !46
  %i.kb = xor i64 %indvars.iv.i, -1
  %i.kc = getelementptr [8 x i8], ptr %i.jy, i64 %i.kb ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !46
  store i64 %i.kd, ptr %i.jz, align 8, !tbaa !46
  store i64 %i.ka, ptr %i.kc, align 8, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %js_reverse_val.exit, label %.lr.ph.i, !llvm.loop !9

js_reverse_val.exit:                              ; preds = %.lr.ph.i, %bb.am
  %i.ke = getelementptr inbounds i8, ptr %.74, i64 -8 ; 2 uses
  store i64 11, ptr %i.ke, align 8, !tbaa !46
  br label %js_reverse_val.exit2169

.lr.ph.preheader.i2163:                           ; preds = %JS_IsIntOrShortFloat.exit.thread
  %.val2155 = load i16, ptr %i.cxi, align 1, !tbaa !89
  %i.kf = zext i16 %.val2155 to i32               ; 2 uses
  %i.kg = add nuw nsw i32 %i.kf, 2                ; 2 uses
  %i.kh = lshr i32 %i.kg, 1
  %i.ki = zext nneg i32 %i.kg to i64
  %wide.trip.count.i2164 = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr [8 x i8], ptr %.74, i64 %i.ki
  br label %.lr.ph.i2165

.lr.ph.i2165:                                     ; preds = %.lr.ph.i2165, %.lr.ph.preheader.i2163
  %indvars.iv.i2166 = phi i64 [ 0, %.lr.ph.preheader.i2163 ], [ %indvars.iv.next.i2167, %.lr.ph.i2165 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.74, i64 %indvars.iv.i2166 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !46
  %i.km = xor i64 %indvars.iv.i2166, -1
  %i.kn = getelementptr [8 x i8], ptr %i.kj, i64 %i.km ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !46
  store i64 %i.ko, ptr %i.kk, align 8, !tbaa !46
  store i64 %i.kl, ptr %i.kn, align 8, !tbaa !46
  %indvars.iv.next.i2167 = add nuw nsw i64 %indvars.iv.i2166, 1 ; 2 uses
  %exitcond.not.i2168 = icmp eq i64 %indvars.iv.next.i2167, %wide.trip.count.i2164
  br i1 %exitcond.not.i2168, label %js_reverse_val.exit2169, label %.lr.ph.i2165, !llvm.loop !9

js_reverse_val.exit2169:                          ; preds = %.lr.ph.i2165, %.thread2248, %js_reverse_val.exit
  %.01763 = phi ptr [ %.531816, %js_reverse_val.exit ], [ %.41767, %.thread2248 ], [ %.531816, %.lr.ph.i2165 ]
  %.01753 = phi i32 [ %4, %js_reverse_val.exit ], [ %.21755, %.thread2248 ], [ 26, %.lr.ph.i2165 ] ; 2 uses
  %.31695 = phi ptr [ %i.cxi, %js_reverse_val.exit ], [ %.81700, %.thread2248 ], [ %i.cxi, %.lr.ph.i2165 ] ; 2 uses
  %.01625 = phi i64 [ %.651690, %js_reverse_val.exit ], [ %.71632, %.thread2248 ], [ %.651690, %.lr.ph.i2165 ]
  %.61621 = phi ptr [ %i.ke, %js_reverse_val.exit ], [ %.12, %.thread2248 ], [ %.74, %.lr.ph.i2165 ] ; 3 uses
  %.01606 = phi ptr [ %.81614.ph, %js_reverse_val.exit ], [ %.41610, %.thread2248 ], [ %.81614.ph, %.lr.ph.i2165 ] ; 6 uses
  %.1 = phi i32 [ %.01605, %js_reverse_val.exit ], [ %.5, %.thread2248 ], [ %i.kf, %.lr.ph.i2165 ]
  %i.kp = load i16, ptr %i.aa, align 2, !tbaa !75
  %i.kq = add i16 %i.kp, -1                       ; 2 uses
  store i16 %i.kq, ptr %i.aa, align 2, !tbaa !75
  %i.kr = icmp slt i16 %i.kq, 1
  %i.ks = getelementptr inbounds nuw i8, ptr %.01763, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !59 ; 2 uses
  br i1 %i.kr, label %bb.an, label %js_reverse_val.exit2169._crit_edge, !prof !67

bb.an:                                            ; preds = %js_reverse_val.exit2169
  %i.ku = ptrtoaddr ptr %.31695 to i64
  %.neg2609 = add i64 %i.ku, 2147483641
  %i.kv = sub i64 %.neg2609, %i.kt
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = shl i32 %i.kw, 1
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds i8, ptr %.01606, i64 -8 ; 2 uses
  store i64 %i.ky, ptr %i.kz, align 8, !tbaa !46
  store ptr %.61621, ptr %i.g, align 8, !tbaa !42
  store ptr %.01606, ptr %i.i, align 8, !tbaa !42
  %i.la = call fastcc i64 @__js_poll_interrupt(ptr noundef nonnull %0) #28 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.01606, i64 24
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !46
  %i.ld = add i64 %i.lc, -1
  %i.le = inttoptr i64 %i.ld to ptr
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !51
  %i.lh = add i64 %i.lg, -1
  %i.li = inttoptr i64 %i.lh to ptr               ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !59 ; 2 uses
  %i.ll = add i64 %i.lk, -1
  %i.lm = inttoptr i64 %i.ll to ptr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load i64, ptr %i.kz, align 8, !tbaa !46
  %i.lp = trunc i64 %i.lo to i32
  %i.lq = ashr i32 %i.lp, 1
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds i8, ptr %i.ln, i64 %i.lr ; 2 uses
  %.not2511 = icmp eq i64 %i.la, 15
  br i1 %.not2511, label %bb.bx, label %js_reverse_val.exit2169._crit_edge

js_reverse_val.exit2169._crit_edge:               ; preds = %js_reverse_val.exit2169, %bb.an
  %i.lt = phi i64 [ %i.lk, %bb.an ], [ %i.kt, %js_reverse_val.exit2169 ]
  %.41696 = phi ptr [ %i.ls, %bb.an ], [ %.31695, %js_reverse_val.exit2169 ]
  %.11626 = phi i64 [ %i.la, %bb.an ], [ %.01625, %js_reverse_val.exit2169 ]
  %i.lu = ptrtoaddr ptr %.41696 to i64
  %reass.sub3148 = sub i64 %i.lu, %i.lt
  %i.lv = trunc i64 %reass.sub3148 to i32
  %i.lw = shl i32 %i.lv, 1
  %i.lx = add i32 %i.lw, -14
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds i8, ptr %.01606, i64 -8
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !46
  br label %.outer

.outer:                                           ; preds = %js_reverse_val.exit2169._crit_edge, %bb.c
  %.11754.ph = phi i32 [ %.01753, %js_reverse_val.exit2169._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.51697.ph = phi i1 [ false, %js_reverse_val.exit2169._crit_edge ], [ true, %bb.c ]
  %.21627.ph = phi i64 [ %.11626, %js_reverse_val.exit2169._crit_edge ], [ 11, %bb.c ]
  %.71622.ph = phi ptr [ %.61621, %js_reverse_val.exit2169._crit_edge ], [ %i.h, %bb.c ]
  %.11607.ph = phi ptr [ %.01606, %js_reverse_val.exit2169._crit_edge ], [ %i.j, %bb.c ]
  %.2.ph = phi i32 [ %.1, %js_reverse_val.exit2169._crit_edge ], [ %1, %bb.c ]
  br label %bb.ao

bb.ao:                                            ; preds = %.outer, %bb.bj
  %.21627 = phi i64 [ %.31628, %bb.bj ], [ %.21627.ph, %.outer ]
  %.71622 = phi ptr [ %i.px, %bb.bj ], [ %.71622.ph, %.outer ] ; 7 uses
  %.11607 = phi ptr [ %i.pp, %bb.bj ], [ %.11607.ph, %.outer ] ; 9 uses
  %.2 = phi i32 [ %i.pj, %bb.bj ], [ %.2.ph, %.outer ] ; 8 uses
  %i.ma = ptrtoaddr ptr %.11607 to i64
  %i.mb = sub i64 %i.ma, %i.k
  %i.mc = trunc i64 %i.mb to i32
  %i.md = getelementptr inbounds i8, ptr %.71622, i64 -16 ; 15 uses
  %i.me = insertelement <2 x i32> poison, i32 %i.mc, i64 0
  %i.mf = insertelement <2 x i32> %i.me, i32 %.2, i64 1
  %i.mg = shl <2 x i32> %i.mf, splat (i32 1)
  %i.mh = sext <2 x i32> %i.mg to <2 x i64>
  store <2 x i64> %i.mh, ptr %i.md, align 8, !tbaa !46
  %i.mi = getelementptr inbounds nuw i8, ptr %.71622, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !46 ; 5 uses
  %i.mk = and i64 %i.mj, 7
  %.not = icmp eq i64 %i.mk, 1
  br i1 %.not, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ml = and i64 %i.mj, 31
  %.not1973 = icmp eq i64 %i.ml, 19
  br i1 %.not1973, label %bb.aq, label %JS_StackCheck.exit.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.mm = trunc i64 %i.mj to i32
  %i.mn = ashr i32 %i.mm, 5
  br label %bb.au

bb.ar:                                            ; preds = %bb.ao
  %i.mo = add nsw i64 %i.mj, -1
  %i.mp = inttoptr i64 %i.mo to ptr               ; 3 uses
  %i.mq = load i64, ptr %i.mp, align 8            ; 2 uses
  %i.mr = and i64 %i.mq, 14
  %.not1974 = icmp eq i64 %i.mr, 2
  br i1 %.not1974, label %bb.as, label %JS_StackCheck.exit.sink.split

bb.as:                                            ; preds = %bb.ar
  %i.ms = lshr i64 %i.mq, 4
  %trunc = trunc i64 %i.ms to i8
  switch i8 %trunc, label %JS_StackCheck.exit.sink.split [
    i8 2, label %bb.at
    i8 3, label %bb.bl
  ]

bb.at:                                            ; preds = %bb.as
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !51
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.01897 = phi i32 [ %i.mu, %bb.at ], [ %i.mn, %bb.aq ]
  %i.mv = load ptr, ptr %i.l, align 8, !tbaa !93
  %i.mw = sext i32 %.01897 to i64
  %i.mx = getelementptr inbounds [24 x i8], ptr %i.mv, i64 %i.mw ; 8 uses
  %i.my = and i32 %.2, 65536
  %.not1979 = icmp eq i32 %i.my, 0
  br i1 %.not1979, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.na = load i8, ptr %i.mz, align 8, !tbaa !95
  %i.nb = and i8 %i.na, -2
  %switch = icmp eq i8 %i.nb, 2
  br i1 %switch, label %bb.aw, label %JS_StackCheck.exit.sink.split

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.nc = and i32 %.2, 65535                      ; 5 uses
  store ptr %i.md, ptr %i.g, align 8, !tbaa !42
  store ptr %.11607, ptr %i.i, align 8, !tbaa !42
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 17 ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !96
  %i.nf = zext i8 %i.ne to i32
  %i.ng = sub nsw i32 %i.nf, %i.nc
  %..i = call noundef i32 @llvm.smax.i32(i32 %i.ng, i32 0)
  %i.nh = add nuw nsw i32 %..i, 16                ; 2 uses
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = sub nsw i64 0, %i.ni
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.nj ; 2 uses
  %i.nl = shl nuw nsw i32 %i.nh, 3
  %i.nm = call fastcc i32 @check_free_mem(ptr noundef nonnull %0, ptr noundef nonnull %i.nk, i32 noundef %i.nl) #28, !inline_history !80
  %.not.i2170 = icmp eq i32 %i.nm, 0
  br i1 %.not.i2170, label %bb.ax, label %JS_StackCheck.exit

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.nk, ptr %i.m, align 8, !tbaa !42
  %i.nn = load i8, ptr %i.nd, align 1, !tbaa !96
  %i.no = zext i8 %i.nn to i32                    ; 3 uses
  %i.np = icmp samesign ult i32 %i.nc, %i.no
  br i1 %i.np, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.nq = sub nuw nsw i32 %i.no, %i.nc
  %i.nr = zext nneg i32 %i.nq to i64              ; 2 uses
  %i.ns = sub nsw i64 0, %i.nr
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.ns ; 3 uses
  %i.nu = add nuw nsw i32 %i.nc, 4
  %wide.trip.count = zext nneg i32 %i.nu to i64   ; 2 uses
  br label %bb.az

.preheader2614:                                   ; preds = %bb.az
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %wide.trip.count
  br label %.lr.ph

bb.az:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv = phi i64 [ 0, %bb.ay ], [ %indvars.iv.next, %bb.az ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !46
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %indvars.iv
  store i64 %i.nw, ptr %i.nx, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader2614, label %bb.az, !llvm.loop !201

.lr.ph:                                           ; preds = %.preheader2614, %.lr.ph
  %indvars.iv2753 = phi i64 [ 0, %.preheader2614 ], [ %indvars.iv.next2754, %.lr.ph ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv2753
  store i64 11, ptr %gep, align 8, !tbaa !46
  %indvars.iv.next2754 = add nuw nsw i64 %indvars.iv2753, 1 ; 2 uses
  %exitcond2757.not = icmp eq i64 %indvars.iv.next2754, %i.nr
  br i1 %exitcond2757.not, label %.loopexit, label %.lr.ph, !llvm.loop !202

.loopexit:                                        ; preds = %.lr.ph, %bb.ax
  %.01900 = phi i32 [ %i.nc, %bb.ax ], [ %i.no, %.lr.ph ] ; 2 uses
  %.81623 = phi ptr [ %i.md, %bb.ax ], [ %i.nt, %.lr.ph ] ; 15 uses
  store ptr %.81623, ptr %i.g, align 8, !tbaa !42
  store ptr %.81623, ptr %i.i, align 8, !tbaa !42
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.nz = load i8, ptr %i.ny, align 8, !tbaa !95
  switch i8 %i.nz, label %bb.bg [
end_hunk_0
begin_hunk_1_@JS_Call:bb.a
  %i.cst = load i64, ptr %i.css, align 8, !tbaa !59
  %i.csu = ptrtoaddr ptr %i.cxi to i64
  %.neg2521 = add i64 %i.csu, 2147483641
  %i.csv = sub i64 %.neg2521, %i.cst
  %i.csw = trunc i64 %i.csv to i32
  %i.csx = shl i32 %i.csw, 1
  %i.csy = sext i32 %i.csx to i64
  store i64 %i.csy, ptr %i.xt, align 8, !tbaa !46
  store ptr %.74, ptr %i.g, align 8, !tbaa !42
  store ptr %.81614.ph, ptr %i.i, align 8, !tbaa !42
  %.not2438 = icmp eq i8 %i.cxj, 58
  br i1 %.not2438, label %bb.lq, label %._crit_edge2786

._crit_edge2786:                                  ; preds = %bb.lp
  %.pre2787 = load i64, ptr %.74, align 8, !tbaa !46
  br label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.csz = call i64 @js_object_keys(ptr noundef nonnull %0, ptr poison, i32 poison, ptr noundef %.74) #28, !inline_history !219 ; 3 uses
  %i.cta = load ptr, ptr %i.g, align 8, !tbaa !42
  store i64 %i.csz, ptr %i.cta, align 8, !tbaa !46
  %.not2439 = icmp eq i64 %i.csz, 15
  br i1 %.not2439, label %js_for_of_start.exit, label %bb.lr

bb.lr:                                            ; preds = %._crit_edge2786, %bb.lq
  %i.ctb = phi i64 [ %i.csz, %bb.lq ], [ %.pre2787, %._crit_edge2786 ] ; 2 uses
  %i.ctc = and i64 %i.ctb, 7
  %.not.i2229 = icmp eq i64 %i.ctc, 1
  br i1 %.not.i2229, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.ctd = add nsw i64 %i.ctb, -1
  %i.cte = inttoptr i64 %i.ctd to ptr
  %i.ctf = load i64, ptr %i.cte, align 8
  %i.ctg = and i64 %i.ctf, 4094
  %or.cond2516 = icmp eq i64 %i.ctg, 18
  br i1 %or.cond2516, label %js_get_object_class.exit, label %bb.lt

bb.lt:                                            ; preds = %bb.lr, %bb.ls
  %i.cth = call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.133) #28, !inline_history !219
  br label %js_for_of_start.exit

js_get_object_class.exit:                         ; preds = %bb.ls
  %i.cti = call fastcc ptr @js_alloc_value_array(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2) #28, !inline_history !219 ; 4 uses
  %.not17.i = icmp eq ptr %i.cti, null
  br i1 %.not17.i, label %js_for_of_start.exit, label %bb.lu

bb.lu:                                            ; preds = %js_get_object_class.exit
  %i.ctj = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.ctk = load i64, ptr %i.ctj, align 8, !tbaa !46
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cti, i64 8
  store i64 %i.ctk, ptr %i.ctl, align 8, !tbaa !46
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.cti, i64 16
  store i64 0, ptr %i.ctm, align 8, !tbaa !46
  %i.ctn = ptrtoint ptr %i.cti to i64
  %i.cto = add i64 %i.ctn, 1
  br label %js_for_of_start.exit

js_for_of_start.exit:                             ; preds = %bb.lq, %bb.lt, %js_get_object_class.exit, %bb.lu
  %.0.i2205 = phi i64 [ %i.cth, %bb.lt ], [ %i.cto, %bb.lu ], [ 15, %bb.lq ], [ 15, %js_get_object_class.exit ] ; 3 uses
  %i.ctp = load i64, ptr %i.xu, align 8, !tbaa !46
  %i.ctq = add i64 %i.ctp, -1
  %i.ctr = inttoptr i64 %i.ctq to ptr
  %i.cts = getelementptr inbounds nuw i8, ptr %i.ctr, i64 24
  %i.ctt = load i64, ptr %i.cts, align 8, !tbaa !51
  %i.ctu = add i64 %i.ctt, -1
  %i.ctv = inttoptr i64 %i.ctu to ptr             ; 3 uses
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctv, i64 16
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !59
  %i.cty = add i64 %i.ctx, -1
  %i.ctz = inttoptr i64 %i.cty to ptr
  %i.cua = getelementptr inbounds nuw i8, ptr %i.ctz, i64 8
  %i.cub = load i64, ptr %i.xt, align 8, !tbaa !46
  %i.cuc = trunc i64 %i.cub to i32
  %i.cud = ashr i32 %i.cuc, 1
  %i.cue = sext i32 %i.cud to i64
  %i.cuf = getelementptr inbounds i8, ptr %i.cua, i64 %i.cue ; 2 uses
  %.not2440 = icmp eq i64 %.0.i2205, 15
  br i1 %.not2440, label %.loopexit3354, label %bb.lv, !prof !67

bb.lv:                                            ; preds = %js_for_of_start.exit
  store i64 %.0.i2205, ptr %.74, align 8, !tbaa !46
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.lw:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.cug = getelementptr inbounds nuw i8, ptr %.531816, i64 16
  %i.cuh = load i64, ptr %i.cug, align 8, !tbaa !59
  %i.cui = ptrtoaddr ptr %i.cxi to i64
  %.neg2519 = add i64 %i.cui, 2147483641
  %i.cuj = sub i64 %.neg2519, %i.cuh
  %i.cuk = trunc i64 %i.cuj to i32
  %i.cul = shl i32 %i.cuk, 1
  %i.cum = sext i32 %i.cul to i64
  store i64 %i.cum, ptr %i.xr, align 8, !tbaa !46
  store ptr %.74, ptr %i.g, align 8, !tbaa !42
  store ptr %.81614.ph, ptr %i.i, align 8, !tbaa !42
  %i.cun = load i64, ptr %.74, align 8, !tbaa !46
  %i.cuo = add i64 %i.cun, -1
  %i.cup = inttoptr i64 %i.cuo to ptr             ; 2 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cup, i64 8
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cup, i64 16 ; 2 uses
  %i.cus = load i64, ptr %i.cur, align 8, !tbaa !46 ; 2 uses
  %i.cut = trunc i64 %i.cus to i32
  %i.cuu = ashr i32 %i.cut, 1                     ; 2 uses
  %i.cuv = load i64, ptr %i.cuq, align 8, !tbaa !46
  %i.cuw = add i64 %i.cuv, -1
  %i.cux = inttoptr i64 %i.cuw to ptr             ; 2 uses
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cux, i64 32
  %i.cuz = load i32, ptr %i.cuy, align 8, !tbaa !51
  %.not.i2206 = icmp ult i32 %i.cuu, %i.cuz
  br i1 %.not.i2206, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.cva = getelementptr inbounds i8, ptr %.74, i64 -16
  store <2 x i64> <i64 35, i64 11>, ptr %i.cva, align 8, !tbaa !46
  br label %bb.lz

bb.ly:                                            ; preds = %bb.lw
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cux, i64 24
  %i.cvc = getelementptr inbounds i8, ptr %.74, i64 -16
  store i64 3, ptr %i.cvc, align 8, !tbaa !46
  %i.cvd = load i64, ptr %i.cvb, align 8, !tbaa !51
  %i.cve = add i64 %i.cvd, -1
  %i.cvf = inttoptr i64 %i.cve to ptr
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 8
  %i.cvh = sext i32 %i.cuu to i64
  %i.cvi = getelementptr inbounds [8 x i8], ptr %i.cvg, i64 %i.cvh
  %i.cvj = load i64, ptr %i.cvi, align 8, !tbaa !46
  %i.cvk = getelementptr inbounds i8, ptr %.74, i64 -8
  store i64 %i.cvj, ptr %i.cvk, align 8, !tbaa !46
  %i.cvl = shl i64 %i.cus, 32
  %i.cvm = and i64 %i.cvl, -8589934592
  %sext.i = add i64 %i.cvm, 8589934592
  %i.cvn = ashr exact i64 %sext.i, 32
  store i64 %i.cvn, ptr %i.cur, align 8, !tbaa !46
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx
  %i.cvo = load i64, ptr %i.xs, align 8, !tbaa !46
  %i.cvp = add i64 %i.cvo, -1
  %i.cvq = inttoptr i64 %i.cvp to ptr
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvq, i64 24
  %i.cvs = load i64, ptr %i.cvr, align 8, !tbaa !51
  %i.cvt = add i64 %i.cvs, -1
  %i.cvu = inttoptr i64 %i.cvt to ptr             ; 2 uses
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvu, i64 16
  %i.cvw = load i64, ptr %i.cvv, align 8, !tbaa !59
  %i.cvx = add i64 %i.cvw, -1
  %i.cvy = inttoptr i64 %i.cvx to ptr
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvy, i64 8
  %i.cwa = load i64, ptr %i.xr, align 8, !tbaa !46
  %i.cwb = trunc i64 %i.cwa to i32
  %i.cwc = ashr i32 %i.cwb, 1
  %i.cwd = sext i32 %i.cwc to i64
  %i.cwe = getelementptr inbounds i8, ptr %i.cvz, i64 %i.cwd
  %i.cwf = getelementptr inbounds i8, ptr %.74, i64 -16
  br label %JS_IsIntOrShortFloat.exit.thread.backedge

bb.ma:                                            ; preds = %JS_IsIntOrShortFloat.exit.thread
  %i.cwg = getelementptr inbounds nuw i8, ptr %.531816, i64 16
  %i.cwh = load i64, ptr %i.cwg, align 8, !tbaa !59
  %i.cwi = ptrtoaddr ptr %i.cxi to i64
  %.neg2607 = add i64 %i.cwi, 4294967289
  %i.cwj = sub i64 %.neg2607, %i.cwh
  %i.cwk = trunc i64 %i.cwj to i32                ; 2 uses
  %i.cwl = shl i32 %i.cwk, 1
  %i.cwm = sext i32 %i.cwl to i64
  %i.cwn = getelementptr inbounds i8, ptr %.81614.ph, i64 -8 ; 2 uses
  store i64 %i.cwm, ptr %i.cwn, align 8, !tbaa !46
  store ptr %.74, ptr %i.g, align 8, !tbaa !42
  store ptr %.81614.ph, ptr %i.i, align 8, !tbaa !42
  %i.cwo = add i32 %i.cwk, -1
  %i.cwp = call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.cwo, i32 noundef %i.cxk) #28
  %i.cwq = getelementptr inbounds nuw i8, ptr %.81614.ph, i64 24
  %i.cwr = load i64, ptr %i.cwq, align 8, !tbaa !46
  %i.cws = add i64 %i.cwr, -1
  %i.cwt = inttoptr i64 %i.cws to ptr
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwt, i64 24
  %i.cwv = load i64, ptr %i.cwu, align 8, !tbaa !51
  %i.cww = add i64 %i.cwv, -1
  %i.cwx = inttoptr i64 %i.cww to ptr             ; 2 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwx, i64 16
  %i.cwz = load i64, ptr %i.cwy, align 8, !tbaa !59
  %i.cxa = add i64 %i.cwz, -1
  %i.cxb = inttoptr i64 %i.cxa to ptr
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cxb, i64 8
  %i.cxd = load i64, ptr %i.cwn, align 8, !tbaa !46
  %i.cxe = trunc i64 %i.cxd to i32
  %i.cxf = ashr i32 %i.cxe, 1
  %i.cxg = sext i32 %i.cxf to i64
  %i.cxh = getelementptr inbounds i8, ptr %i.cxc, i64 %i.cxg
  br label %bb.bx

JS_IsIntOrShortFloat.exit.thread:                 ; preds = %JS_IsIntOrShortFloat.exit.thread.backedge, %JS_IsIntOrShortFloat.exit.thread.preheader
  %.531816 = phi ptr [ %.531816.ph, %JS_IsIntOrShortFloat.exit.thread.preheader ], [ %.531816.be, %JS_IsIntOrShortFloat.exit.thread.backedge ] ; 147 uses
  %.601752 = phi ptr [ %.601752.ph, %JS_IsIntOrShortFloat.exit.thread.preheader ], [ %.601752.be, %JS_IsIntOrShortFloat.exit.thread.backedge ] ; 17 uses
  %.651690 = phi i64 [ %.651690.ph, %JS_IsIntOrShortFloat.exit.thread.preheader ], [ %.651690.be, %JS_IsIntOrShortFloat.exit.thread.backedge ] ; 85 uses
  %.74 = phi ptr [ %.74.ph, %JS_IsIntOrShortFloat.exit.thread.preheader ], [ %.74.be, %JS_IsIntOrShortFloat.exit.thread.backedge ] ; 283 uses
  %i.cxi = getelementptr inbounds nuw i8, ptr %.601752, i64 1 ; 145 uses
  %i.cxj = load i8, ptr %.601752, align 1, !tbaa !51 ; 6 uses
  %i.cxk = zext i8 %i.cxj to i32                  ; 21 uses
  switch i8 %i.cxj, label %bb.ma [
    i8 94, label %bb.d
    i8 95, label %bb.d
    i8 96, label %bb.d
    i8 97, label %bb.d
    i8 98, label %bb.d
    i8 99, label %bb.d
    i8 100, label %bb.d
    i8 101, label %bb.d
    i8 102, label %bb.d
    i8 103, label %bb.e
    i8 104, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.l
    i8 8, label %bb.m
    i8 9, label %bb.n
    i8 31, label %bb.o
    i8 27, label %bb.p
    i8 10, label %bb.s
    i8 11, label %bb.t
    i8 12, label %bb.w
    i8 13, label %bb.z
    i8 14, label %bb.aa
    i8 15, label %bb.ab
    i8 17, label %bb.ac
    i8 18, label %bb.ad
    i8 19, label %bb.ae
    i8 20, label %bb.af
    i8 23, label %bb.ag
    i8 21, label %bb.ah
    i8 22, label %bb.ai
    i8 3, label %bb.aj
    i8 24, label %bb.ak
    i8 25, label %bb.al
    i8 26, label %.lr.ph.preheader.i2163
    i8 29, label %.thread
    i8 28, label %bb.cd
    i8 55, label %bb.co
    i8 30, label %bb.cp
    i8 56, label %bb.cq
    i8 57, label %bb.cr
    i8 44, label %bb.cu
    i8 45, label %bb.cv
    i8 46, label %bb.cw
    i8 47, label %bb.cx
    i8 110, label %bb.cy
    i8 111, label %bb.cz
    i8 112, label %bb.da
    i8 113, label %bb.db
    i8 108, label %bb.dc
    i8 114, label %bb.dd
    i8 115, label %bb.de
    i8 116, label %bb.df
    i8 117, label %bb.dg
    i8 109, label %bb.dh
    i8 118, label %bb.di
    i8 119, label %bb.dj
    i8 120, label %bb.dk
    i8 121, label %bb.dl
    i8 122, label %bb.dm
    i8 123, label %bb.dn
    i8 124, label %bb.do
    i8 125, label %bb.dp
    i8 48, label %bb.dq
    i8 50, label %bb.dq
    i8 49, label %bb.dw
    i8 51, label %bb.dw
    i8 54, label %bb.ec
    i8 52, label %bb.ee
    i8 53, label %bb.ee
    i8 68, label %bb.eh
    i8 33, label %bb.ei
    i8 32, label %bb.ej
    i8 39, label %bb.er
    i8 38, label %bb.es
    i8 34, label %bb.fe
    i8 36, label %bb.fk
    i8 35, label %bb.fl
    i8 37, label %bb.ft
    i8 40, label %bb.gf
    i8 41, label %bb.gf
    i8 42, label %bb.gf
    i8 43, label %bb.gk
    i8 74, label %bb.gn
    i8 75, label %bb.gt
    i8 71, label %bb.gw
    i8 72, label %bb.hd
    i8 73, label %bb.hf
    i8 76, label %.thread2295
    i8 62, label %bb.hj
    i8 61, label %bb.hm
    i8 64, label %bb.hy
    i8 63, label %bb.ia
    i8 66, label %bb.id
    i8 65, label %bb.id
    i8 67, label %bb.ih
    i8 77, label %bb.ik
    i8 79, label %bb.in
    i8 78, label %bb.iq
    i8 90, label %bb.is
    i8 92, label %bb.iu
    i8 91, label %bb.iw
    i8 80, label %bb.iz
    i8 81, label %bb.jc
    i8 82, label %bb.jf
    i8 83, label %bb.ji
    i8 86, label %bb.jl
    i8 87, label %bb.jo
    i8 88, label %bb.jr
    i8 89, label %bb.ju
    i8 85, label %bb.jx
    i8 84, label %bb.kc
    i8 69, label %bb.kh
    i8 70, label %bb.kq
    i8 58, label %bb.lp
    i8 59, label %bb.lp
    i8 60, label %bb.lw
  ]

.thread2253:                                      ; preds = %bb.cj, %JS_StackCheck.exit
  %.661691 = phi i64 [ %.101635, %bb.cj ], [ %.61631, %JS_StackCheck.exit ]
  %.75 = phi ptr [ %.16, %bb.cj ], [ %.11, %JS_StackCheck.exit ]
  %.9 = phi ptr [ %i.wt, %bb.cj ], [ %.11607, %JS_StackCheck.exit ]
  store ptr %.75, ptr %i.g, align 8, !tbaa !42
  store ptr %.9, ptr %i.i, align 8, !tbaa !42
  %i.cxl = load i32, ptr %i.b, align 4, !tbaa !45
  %i.cxm = add nsw i32 %i.cxl, -1
  store i32 %i.cxm, ptr %i.b, align 4, !tbaa !45
  br label %bb.mb

bb.mb:                                            ; preds = %.thread2253, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %.661691, %.thread2253 ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @js_closure(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.JSGCRef, align 8            ; 9 uses
  %4 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not = icmp eq i64 %i.d, 7
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 5
  %i.i = trunc i64 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.065 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !39
  store ptr %3, ptr %i.j, align 8, !tbaa !36
  store i64 %1, ptr %3, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.n = load i64, ptr %i.m, align 8, !tbaa !46
  %i.o = sext i32 %.065 to i64
  %i.p = shl nsw i64 %i.o, 3                      ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, 8
  %i.s = call fastcc ptr @JS_NewObjectProtoClass1(ptr noundef %0, i64 noundef %i.n, i32 noundef 3, i32 noundef %i.r) #28, !inline_history !0 ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !39
  store ptr %i.w, ptr %i.j, align 8, !tbaa !36
  %.not7993 = icmp eq i64 %i.u, 15
  %.not79 = or i1 %.not.i, %.not7993
  br i1 %.not79, label %.loopexit82, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.v, ptr %i.x, align 8, !tbaa !51
  %i.y = icmp sgt i32 %.065, 0
  br i1 %i.y, label %bb.e, label %.loopexit82

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.p, i1 false)
  %.not72 = icmp eq ptr %2, null
  %i.aa = getelementptr inbounds i8, ptr %2, i64 -16
  %.063 = select i1 %.not72, ptr null, ptr %i.aa  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
end_hunk_1
begin_hunk_2_@string_getcp:bb.a
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = load i64, ptr %i.e, align 8
  %i.h = lshr i64 %i.g, 7
  %.not = icmp samesign ugt i64 %i.h, %i.f
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51    ; 2 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %utf8_get.exit.thread, label %utf8_get.exit, !prof !69

utf8_get.exit.thread:                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.k to i32
  br label %bb.g

utf8_get.exit:                                    ; preds = %bb.b
  %i.n = call i32 @__utf8_get(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a) #31 ; 5 uses
  %i.o = icmp ult i32 %i.n, 65536
  br i1 %i.o, label %bb.g, label %bb.c

bb.c:                                             ; preds = %utf8_get.exit
  %i.p = icmp eq i32 %i.c, 0                      ; 2 uses
  %i.q = icmp ne i32 %3, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add i32 %i.n, -65536
  %i.s = lshr i32 %i.r, 10
  %i.t = add nuw nsw i32 %i.s, 55296
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = and i32 %i.n, 1023
  %i.v = or disjoint i32 %i.u, 56320
  br label %bb.g

bb.g:                                             ; preds = %utf8_get.exit.thread, %utf8_get.exit, %bb.c, %bb.a, %bb.f, %bb.e
  %.0 = phi i32 [ %i.t, %bb.e ], [ -1, %bb.a ], [ %i.v, %bb.f ], [ %i.n, %bb.c ], [ %i.n, %utf8_get.exit ], [ %i.m, %utf8_get.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i32 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_string_constructor(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = and i32 %2, 65536
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.70) #28
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 776
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load i64, ptr %3, align 8, !tbaa !46
  %i.i = tail call i64 @JS_ToString(ptr noundef %0, i64 noundef %i.h) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_string_fromCharCode(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.StringBuffer, align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x i32> <i32 0, i32 1>, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 776
  %storemerge.in.i = ptrtoint ptr %i.d to i64
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %5, align 8, !tbaa !151
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !152
  store ptr %5, ptr %i.e, align 8, !tbaa !36
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.not20 = icmp eq i32 %4, 0
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.j, i32 noundef 0) #28, !inline_history !74
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %.loopexit25

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  br i1 %.not20, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond = icmp ugt i32 %i.l, 1114111
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 11, ptr noundef nonnull @.str.71) #28 ; 0 uses
  br label %.loopexit25

bb.f:                                             ; preds = %bb.c
  %i.n = and i32 %i.l, 65535
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.o = phi i32 [ %i.l, %bb.d ], [ %i.n, %bb.f ]
  %i.p = shl nuw nsw i32 %i.o, 5
  %i.q = or disjoint i32 %i.p, 27
  %i.r = zext nneg i32 %i.q to i64
  %i.s = call fastcc range(i32 -1, 1) i32 @string_buffer_concat_str(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %i.r) #28
  %.not21 = icmp ne i32 %i.s, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond29 = select i1 %.not21, i1 true, i1 %exitcond.not
  br i1 %or.cond29, label %.loopexit, label %bb.b, !llvm.loop !306

.loopexit:                                        ; preds = %bb.g, %bb.a
  %i.t = call fastcc i64 @string_buffer_pop(ptr noundef %0, ptr noundef %5) #28
  br label %bb.h

.loopexit25:                                      ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.u = call fastcc i64 @string_buffer_pop(ptr noundef %0, ptr noundef %5) #28 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit25, %.loopexit
  %.019 = phi i64 [ 15, %.loopexit25 ], [ %i.t, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i64 %.019
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_string_concat(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.StringBuffer, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = load i64, ptr %1, align 8, !tbaa !46
  %i.b = tail call fastcc i64 @JS_ToStringCheckObject(ptr noundef %0, i64 noundef %i.a) #28 ; 2 uses
  %.not = icmp eq i64 %i.b, 15
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x i32> <i32 0, i32 1>, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 776
  %storemerge.in.i = ptrtoint ptr %i.e to i64
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !152
  store ptr %4, ptr %i.f, align 8, !tbaa !36
  %i.i = call fastcc i32 @string_buffer_concat(ptr noundef %0, ptr noundef %4, i64 noundef %i.b) #28
  %.not18 = icmp eq i32 %i.i, 0
  %i.j = icmp sgt i32 %2, 0
  %or.cond = and i1 %.not18, %i.j
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %i.l) #28
  %.not19 = icmp ne i32 %i.m, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond24 = select i1 %.not19, i1 true, i1 %exitcond.not
  br i1 %or.cond24, label %.loopexit, label %.lr.ph, !llvm.loop !307

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  %i.n = call fastcc i64 @string_buffer_pop(ptr noundef nonnull %0, ptr noundef %4) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.017 = phi i64 [ %i.n, %.loopexit ], [ 15, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.017
}

; Function Attrs: nounwind optsize uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @js_string_indexOf(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.c = load i64, ptr %1, align 8, !tbaa !46
  %i.d = tail call fastcc i64 @JS_ToStringCheckObject(ptr noundef %0, i64 noundef %i.c) #28 ; 2 uses
  store i64 %i.d, ptr %1, align 8, !tbaa !46
  %.not = icmp eq i64 %i.d, 15
  br i1 %.not, label %JS_ToInt32Clamp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !46
  %i.f = tail call i64 @JS_ToString(ptr noundef %0, i64 noundef %i.e) #28 ; 2 uses
  store i64 %i.f, ptr %3, align 8, !tbaa !46
  %.not63 = icmp eq i64 %i.f, 15
  br i1 %.not63, label %JS_ToInt32Clamp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !46
  %i.h = tail call fastcc i32 @js_string_len(ptr noundef %0, i64 noundef %i.g) #28 ; 4 uses
  %i.i = load i64, ptr %3, align 8, !tbaa !46
  %i.j = tail call fastcc i32 @js_string_len(ptr noundef %0, i64 noundef %i.i) #28 ; 5 uses
  %.not57 = icmp eq i32 %4, 0
  br i1 %.not57, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub nsw i32 %i.h, %i.j                   ; 4 uses
  %i.l = icmp sgt i32 %2, 1
  br i1 %i.l, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !46
  %i.o = call i32 @JS_ToNumber(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.n) #28
  %.not59 = icmp eq i32 %i.o, 0
  br i1 %.not59, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = load double, ptr %i.b, align 8, !tbaa !73 ; 4 uses
  %i.q = fcmp uno double %i.p, 0.000000e+00
  br i1 %i.q, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = fcmp ugt double %i.p, 0.000000e+00
  br i1 %i.r, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.s = sitofp i32 %i.k to double
  %i.t = fcmp olt double %i.p, %i.s
  %i.u = fptosi double %i.p to i32
  %spec.select = select i1 %i.t, i32 %i.u, i32 %i.k
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f
  %.05174 = phi i32 [ %i.k, %bb.f ], [ 0, %bb.g ], [ %spec.select, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %JS_ToInt32Clamp.exit

bb.j:                                             ; preds = %bb.c
  %i.v = icmp sgt i32 %2, 1
  br i1 %i.v, label %bb.k, label %JS_ToInt32Clamp.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46
  %i.y = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.x, i32 noundef 1) #28, !inline_history !155
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %JS_ToInt32Clamp.exit

bb.l:                                             ; preds = %bb.k
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !45  ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %JS_ToInt32Clamp.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select82 = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.h)
  br label %JS_ToInt32Clamp.exit.thread

JS_ToInt32Clamp.exit.thread:                      ; preds = %bb.m, %bb.l, %bb.j
  %.05175 = phi i32 [ 0, %bb.j ], [ %spec.select82, %bb.m ], [ 0, %bb.l ]
  %i.ac = sub nsw i32 %i.h, %i.j
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.d, %JS_ToInt32Clamp.exit.thread
  %.051 = phi i32 [ %.05175, %JS_ToInt32Clamp.exit.thread ], [ %.05174, %.thread ], [ %i.k, %bb.d ] ; 3 uses
  %.050 = phi i32 [ %i.ac, %JS_ToInt32Clamp.exit.thread ], [ 0, %.thread ], [ 0, %bb.d ] ; 2 uses
  %.048 = phi i32 [ 1, %JS_ToInt32Clamp.exit.thread ], [ -1, %.thread ], [ -1, %bb.d ] ; 2 uses
  %.not60 = icmp slt i32 %i.h, %i.j
  br i1 %.not60, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = sub nsw i32 %.050, %.051
  %i.ae = mul nsw i32 %i.ad, %.048
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.o
  %i.ag = icmp sgt i32 %i.j, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.s
  %.05269 = phi i32 [ %i.ao, %bb.s ], [ %.051, %.preheader ] ; 4 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %i.ah = add nuw nsw i32 %.04766, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %i.j
  br i1 %exitcond.not, label %.loopexit, label %bb.q, !llvm.loop !308

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.04766 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.p ] ; 3 uses
  %i.ai = load i64, ptr %1, align 8, !tbaa !46
  %i.aj = add nsw i32 %.04766, %.05269
  %i.ak = tail call fastcc i32 @string_getcp(ptr noundef %0, i64 noundef %i.ai, i32 noundef %i.aj, i32 noundef 0) #28
  %i.al = load i64, ptr %3, align 8, !tbaa !46
  %i.am = tail call fastcc i32 @string_getcp(ptr noundef %0, i64 noundef %i.al, i32 noundef %.04766, i32 noundef 0) #28
  %.not61 = icmp eq i32 %i.ak, %i.am
  br i1 %.not61, label %bb.p, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = icmp eq i32 %.05269, %.050
  br i1 %i.an, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = add nsw i32 %.05269, %.048
  br label %.lr.ph

.loopexit:                                        ; preds = %bb.r, %bb.p, %.preheader, %bb.o, %bb.n
  %.049 = phi i32 [ %.051, %.preheader ], [ -1, %bb.n ], [ -1, %bb.o ], [ %.05269, %bb.p ], [ -1, %bb.r ]
  %i.ap = shl i32 %.049, 1
  %i.aq = sext i32 %i.ap to i64
  br label %JS_ToInt32Clamp.exit

JS_ToInt32Clamp.exit:                             ; preds = %bb.k, %bb.i, %bb.b, %bb.a, %.loopexit
  %.053 = phi i64 [ %i.aq, %.loopexit ], [ 15, %bb.a ], [ 15, %bb.b ], [ 15, %bb.i ], [ 15, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.053
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_string_toLowerCase(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.StringBuffer, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = load i64, ptr %1, align 8, !tbaa !46
  %i.b = tail call fastcc i64 @JS_ToStringCheckObject(ptr noundef %0, i64 noundef %i.a) #28 ; 3 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !46
  %.not = icmp eq i64 %i.b, 15
  br i1 %.not, label %string_buffer_push.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @js_string_len(ptr noundef %0, i64 noundef %i.b) #28 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x i32> <i32 0, i32 1>, ptr %i.d, align 8, !tbaa !45
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %string_buffer_push.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @js_alloc_byte_array(ptr noundef %0, i32 noundef %i.c) #28, !inline_history !15 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %string_buffer_push.exit.thread, label %.lr.ph

string_buffer_push.exit:                          ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 776
  %storemerge.in.i = ptrtoint ptr %i.h to i64
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %5, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !152
  store ptr %5, ptr %i.i, align 8, !tbaa !36
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %storemerge.in.i46 = ptrtoint ptr %i.f to i64
  %storemerge.i47 = add i64 %storemerge.in.i46, 1
  store i64 %storemerge.i47, ptr %5, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !152
  store ptr %5, ptr %i.l, align 8, !tbaa !36
end_hunk_2
begin_hunk_3_@string_buffer_concat_str:bb.a

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.183, i64 8 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !51
  %i.bn = icmp eq i8 %i.bm, -19
  br i1 %i.bn, label %bb.o, label %is_utf8_right_surrogate.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.183, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.bq = add i8 %i.bp, 64
  %or.cond = icmp ult i8 %i.bq, -16
  br i1 %or.cond, label %is_utf8_right_surrogate.exit.thread, label %bb.p, !prof !313

bb.p:                                             ; preds = %bb.o
  %i.br = icmp sgt i32 %.080103111, 2
  br i1 %i.br, label %bb.q, label %is_utf8_right_surrogate.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 4 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !51
  %i.bu = icmp eq i8 %i.bt, -19
  br i1 %i.bu, label %bb.r, label %is_utf8_right_surrogate.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !51
  %i.bx = add i8 %i.bw, 80
  %or.cond116 = icmp ult i8 %i.bx, -16
  br i1 %or.cond116, label %is_utf8_right_surrogate.exit.thread, label %utf8_get.exit96

utf8_get.exit96:                                  ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.by = call i32 @__utf8_get(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.a) #31
  %.pre = load i8, ptr %i.bl, align 1, !tbaa !51  ; 2 uses
  %i.bz = shl i32 %i.by, 10
  %i.ca = and i32 %i.bz, 1047552
  %i.cb = icmp sgt i8 %.pre, -1
  br i1 %i.cb, label %bb.s, label %bb.t, !prof !69

bb.s:                                             ; preds = %utf8_get.exit96
  store i64 1, ptr %i.a, align 8, !tbaa !46
  %i.cc = zext nneg i8 %.pre to i32
  br label %utf8_get.exit

bb.t:                                             ; preds = %utf8_get.exit96
  %i.cd = call i32 @__utf8_get(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.a) #31
  br label %utf8_get.exit

utf8_get.exit:                                    ; preds = %bb.s, %bb.t
  %.0.i = phi i32 [ %i.cc, %bb.s ], [ %i.cd, %bb.t ]
  %i.ce = and i32 %.0.i, 1023
  %i.cf = add nuw nsw i32 %i.ca, 65536
  %i.cg = or disjoint i32 %i.cf, %i.ce
  %i.ch = add nsw i32 %i.bg, -2
  %i.ci = add nsw i64 %i.e, -3
  %i.cj = call i64 @__unicode_to_utf8(ptr noundef nonnull %i.bs, i32 noundef range(i32 -2147483648, 1073741824) %i.cg) #31
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.cl, align 4, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %is_utf8_right_surrogate.exit.thread

is_utf8_right_surrogate.exit.thread:              ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %utf8_get.exit, %bb.p, %bb.m
  %.081 = phi i32 [ %i.ch, %utf8_get.exit ], [ %i.bg, %bb.q ], [ %i.bg, %bb.p ], [ %i.bg, %bb.r ], [ %i.bg, %bb.m ], [ %i.bg, %bb.o ], [ %i.bg, %bb.n ]
  %.079 = phi i64 [ %i.ci, %utf8_get.exit ], [ %i.e, %bb.q ], [ %i.e, %bb.p ], [ %i.e, %bb.r ], [ %i.e, %bb.m ], [ %i.e, %bb.o ], [ %i.e, %bb.n ]
  %.077 = phi ptr [ %i.ck, %utf8_get.exit ], [ %i.bj, %bb.q ], [ %i.bj, %bb.p ], [ %i.bj, %bb.r ], [ %i.bj, %bb.m ], [ %i.bj, %bb.o ], [ %i.bj, %bb.n ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.183, i64 8
  %i.cn = load i64, ptr %.183, align 8
  %i.co = lshr i64 %i.cn, 7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co
  %sext = shl i64 %.079, 32
  %i.cq = ashr exact i64 %sext, 32                ; 2 uses
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.077, ptr nonnull align 1 %i.cs, i64 %i.cq, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.081, ptr %i.ct, align 8, !tbaa !153
  %i.cu = load i64, ptr %.183, align 8
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = lshr i32 %i.cv, 5
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !154
  %i.cz = and i32 %i.cy, 1
  %i.da = and i32 %i.cz, %i.cw
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !154
  br label %bb.u

.critedge:                                        ; preds = %.thread105
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.u

bb.u:                                             ; preds = %.critedge, %bb.b, %bb.a, %is_utf8_right_surrogate.exit.thread, %bb.g, %bb.e
  %.1 = phi i32 [ -1, %.critedge ], [ -1, %bb.a ], [ 0, %bb.e ], [ -1, %bb.g ], [ 0, %is_utf8_right_surrogate.exit.thread ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 %.1
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_object_constructor(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = and i32 %2, -65537
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46
  %i.e = tail call fastcc ptr @JS_NewObjectProtoClass1(ptr noundef %0, i64 noundef %i.d, i32 noundef 0, i32 noundef 0) #28, !inline_history !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 1
  %.0.i.i.i = select i1 %.not.i.i.i, i64 15, i64 %i.g
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %3, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %.0.i.i.i, %bb.b ], [ %i.h, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_object_defineProperty(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSGCRef, align 8            ; 10 uses
  %5 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.d = and i64 %i.c, 7
  %.not.i = icmp eq i64 %i.d, 1
  br i1 %.not.i, label %JS_IsObject.exit, label %JS_IsObject.exit.thread

JS_IsObject.exit:                                 ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 14
  %.not = icmp eq i64 %i.h, 2
  br i1 %.not, label %bb.b, label %JS_IsObject.exit.thread

JS_IsObject.exit.thread:                          ; preds = %bb.a, %JS_IsObject.exit
  %i.i = tail call noundef i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.229) #28, !inline_history !8
  br label %bb.r

bb.b:                                             ; preds = %JS_IsObject.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !46
  %i.k = tail call fastcc i64 @JS_ToPropertyKey(ptr noundef %0, i64 noundef %i.j) #28 ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !tbaa !46
  %.not107 = icmp eq i64 %i.k, 15
  br i1 %.not107, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %.val91 = load ptr, ptr %i.m, align 8, !tbaa !42 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val91, i64 992
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = add i64 %i.o, 1                          ; 2 uses
  %i.q = tail call fastcc i32 @JS_HasProperty(i64 noundef %i.l, i64 noundef %i.p) #28
  %.not74 = icmp eq i32 %i.q, 0
  br i1 %.not74, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call fastcc i64 @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 noundef %i.l, i64 noundef %i.p, i32 noundef 0) #28, !inline_history !5 ; 2 uses
  %.not108 = icmp eq i64 %i.r, 15
  br i1 %.not108, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.b, align 8, !tbaa !46
  %.val89.pre = load ptr, ptr %i.m, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.val89 = phi ptr [ %.val89.pre, %._crit_edge ], [ %.val91, %bb.c ]
  %i.s = phi i64 [ %.pre, %._crit_edge ], [ %i.l, %bb.c ] ; 2 uses
  %.069 = phi i64 [ %i.r, %._crit_edge ], [ 11, %bb.c ] ; 2 uses
  %.0 = phi i32 [ 4, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val89, i64 1008
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = tail call fastcc i32 @JS_HasProperty(i64 noundef %i.s, i64 noundef %i.v) #28
  %.not76 = icmp eq i32 %i.w, 0
  br i1 %.not76, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = or disjoint i32 %.0, 8                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !39
  store ptr %4, ptr %i.y, align 8, !tbaa !36
  store i64 %.069, ptr %4, align 8, !tbaa !40
  %i.ab = call fastcc i64 @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 noundef %i.s, i64 noundef %i.v, i32 noundef 0) #28, !inline_history !5 ; 6 uses
  %i.ac = load i64, ptr %4, align 8, !tbaa !40    ; 3 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !39
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !36
  switch i64 %i.ab, label %bb.g [
    i64 15, label %bb.r
    i64 11, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = and i64 %i.ab, 7
  %.not.i92 = icmp eq i64 %i.ae, 1
  br i1 %.not.i92, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  %i.af = and i64 %i.ab, 31
  %i.ag = icmp eq i64 %i.af, 19
  br i1 %i.ag, label %bb.i, label %JS_IsFunction.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i64 %i.ab, -1
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 4078
  %or.cond = icmp eq i64 %i.ak, 34
  br i1 %or.cond, label %bb.i, label %JS_IsFunction.exit.thread

bb.i:                                             ; preds = %bb.h, %.split, %bb.f, %bb.e
  %.170 = phi i64 [ %i.ac, %bb.f ], [ %i.ac, %bb.h ], [ %.069, %bb.e ], [ %i.ac, %.split ] ; 2 uses
  %.067 = phi i64 [ 11, %bb.f ], [ %i.ab, %bb.h ], [ 11, %bb.e ], [ %i.ab, %.split ] ; 2 uses
  %.1 = phi i32 [ %i.x, %bb.f ], [ %i.x, %bb.h ], [ %.0, %bb.e ], [ %i.x, %.split ] ; 2 uses
  %i.al = load i64, ptr %i.b, align 8, !tbaa !46  ; 2 uses
  %.val87 = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %.val87, i64 1024
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  %i.ap = call fastcc i32 @JS_HasProperty(i64 noundef %i.al, i64 noundef %i.ao) #28
  %.not80 = icmp eq i32 %i.ap, 0
  br i1 %.not80, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = or i32 %.1, 16                          ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !39
  store i64 %.170, ptr %4, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.au, align 8, !tbaa !39
  store ptr %5, ptr %i.ar, align 8, !tbaa !36
  store i64 %.067, ptr %5, align 8, !tbaa !40
  %i.av = call fastcc i64 @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 noundef %i.al, i64 noundef %i.ao, i32 noundef 0) #28, !inline_history !5 ; 6 uses
  %i.aw = load i64, ptr %5, align 8, !tbaa !40    ; 3 uses
  %i.ax = load i64, ptr %4, align 8, !tbaa !40    ; 3 uses
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !39
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !36
  switch i64 %i.av, label %bb.k [
    i64 15, label %bb.r
    i64 11, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.az = and i64 %i.av, 7
  %.not.i94 = icmp eq i64 %i.az, 1
  br i1 %.not.i94, label %bb.l, label %.split116

.split116:                                        ; preds = %bb.k
  %i.ba = and i64 %i.av, 31
  %i.bb = icmp eq i64 %i.ba, 19
  br i1 %i.bb, label %bb.m, label %JS_IsFunction.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bc = add nsw i64 %i.av, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = and i64 %i.be, 4078
  %or.cond117 = icmp eq i64 %i.bf, 34
  br i1 %or.cond117, label %bb.m, label %JS_IsFunction.exit.thread

JS_IsFunction.exit.thread:                        ; preds = %.split116, %.split, %bb.l, %bb.h
  %i.bg = call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.73) #28
  br label %bb.r

bb.m:                                             ; preds = %bb.l, %.split116, %bb.j, %bb.i
  %.271 = phi i64 [ %i.ax, %bb.j ], [ %i.ax, %bb.l ], [ %.170, %bb.i ], [ %i.ax, %.split116 ]
  %.168 = phi i64 [ %i.aw, %bb.j ], [ %i.aw, %bb.l ], [ %.067, %bb.i ], [ %i.aw, %.split116 ]
  %.066 = phi i64 [ 11, %bb.j ], [ %i.av, %bb.l ], [ 11, %bb.i ], [ %i.av, %.split116 ]
  %.2 = phi i32 [ %i.aq, %bb.j ], [ %i.aq, %bb.l ], [ %.1, %bb.i ], [ %i.aq, %.split116 ] ; 3 uses
  %i.bh = and i32 %.2, 24
  %.not84 = icmp eq i32 %i.bh, 0
  br i1 %.not84, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = and i32 %.2, 4
  %.not85 = icmp eq i32 %i.bi, 0
  br i1 %.not85, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef nonnull %0, i32 noundef 14, ptr noundef nonnull @.str.74) #28
  br label %bb.r

bb.p:                                             ; preds = %bb.n, %bb.m
  %.3 = phi i64 [ %.271, %bb.m ], [ %.168, %bb.n ]
  %i.bk = load i64, ptr %3, align 8, !tbaa !46
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !46
  %i.bm = or i32 %.2, 1
  %i.bn = call fastcc i64 @JS_DefinePropertyInternal(ptr noundef nonnull %0, i64 noundef %i.bk, i64 noundef %i.bl, i64 noundef %.3, i64 noundef %.066, i32 noundef %i.bm) #28
  %.not113 = icmp eq i64 %i.bn, 15
  br i1 %.not113, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load i64, ptr %3, align 8, !tbaa !46
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.f, %bb.p, %bb.d, %bb.b, %bb.q, %bb.o, %JS_IsFunction.exit.thread, %JS_IsObject.exit.thread
  %.072 = phi i64 [ %i.i, %JS_IsObject.exit.thread ], [ 15, %bb.b ], [ 15, %bb.d ], [ 15, %bb.f ], [ %i.bj, %bb.o ], [ 15, %bb.j ], [ %i.bo, %bb.q ], [ %i.bg, %JS_IsFunction.exit.thread ], [ 15, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.072
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @JS_HasProperty(i64 noundef %0, i64 noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = and i64 %0, 7
  %.not = icmp eq i64 %i.a, 1
  br i1 %.not, label %bb.b, label %find_own_property.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %0, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 14
  %.not12 = icmp eq i64 %i.e, 2
  br i1 %.not12, label %.preheader, label %find_own_property.exit

.preheader:                                       ; preds = %bb.b
  %i.f = lshr i64 %1, 3
  %i.g = and i64 %1, 7
  %i.h = xor i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.e
  %.0 = phi ptr [ %i.aj, %bb.e ], [ %i.c, %.preheader ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0, i64 16
  %.0.val = load i64, ptr %i.j, align 8, !tbaa !46
  %i.k = add i64 %.0.val, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = trunc i64 %i.o to i32
  %i.q = ashr i32 %i.p, 1
  %i.r = and i32 %i.q, %i.i
  %i.s = add i32 %i.r, 2
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %.not.i1.i = icmp eq i32 %i.w, 0
  br i1 %.not.i1.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.0.i2.i = phi i32 [ %i.ae, %bb.d ], [ %i.w, %bb.c ]
  %i.x = zext i32 %.0.i2.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !71
  %i.ab = icmp eq i64 %i.aa, %1
  br i1 %i.ab, label %find_own_property.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 1073741823               ; 2 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 7
  br i1 %i.ah, label %find_own_property.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ai = add i64 %i.ag, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %bb.c

find_own_property.exit:                           ; preds = %.loopexit, %.lr.ph.i, %bb.b, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph.i ], [ 0, %.loopexit ]
  ret i32 %.010
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @JS_DefinePropertyInternal(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 1, 32) %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.JSGCRef, align 8            ; 11 uses
  %7 = alloca %struct.JSGCRef, align 8            ; 11 uses
  %8 = alloca %struct.JSGCRef, align 8            ; 12 uses
  %9 = alloca %struct.JSGCRef, align 8            ; 12 uses
  %10 = alloca %struct.JSGCRef, align 8           ; 17 uses
  %11 = alloca %struct.JSGCRef, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !39
  store i64 %1, ptr %8, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store ptr %8, ptr %i.d, align 8, !tbaa !39
  store i64 %2, ptr %9, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  store ptr %9, ptr %i.e, align 8, !tbaa !39
  store i64 %3, ptr %10, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %10, ptr %i.f, align 8, !tbaa !39
  store ptr %11, ptr %i.a, align 8, !tbaa !36
  store i64 %4, ptr %11, align 8, !tbaa !40
  %i.g = call fastcc i32 @js_update_props(ptr noundef %0, i64 noundef %1) #28
  %i.h = load i64, ptr %11, align 8, !tbaa !40
  %i.i = load i64, ptr %10, align 8, !tbaa !40    ; 4 uses
  %i.j = load i64, ptr %9, align 8, !tbaa !40     ; 4 uses
  %i.k = load i64, ptr %8, align 8, !tbaa !40     ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.critedge171

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %5, 1
  %.not157 = icmp eq i32 %i.m, 0
  br i1 %.not157, label %find_own_property.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.k, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val174 = load i64, ptr %i.p, align 8, !tbaa !46
  %i.q = add i64 %.val174, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46
  %i.v = trunc i64 %i.u to i32
  %i.w = ashr i32 %i.v, 1
  %i.x = lshr i64 %i.j, 3
  %i.y = and i64 %i.j, 7
  %i.z = xor i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.w, %i.aa
  %i.ac = add i32 %i.ab, 2
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %.not.i1.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i1.i, label %find_own_property.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.0.i2.i = phi i32 [ %i.ao, %bb.d ], [ %i.ag, %bb.c ]
  %i.ah = zext i32 %.0.i2.i to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ai ; 11 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !71
  %i.al = icmp eq i64 %i.ak, %i.j
  br i1 %i.al, label %find_own_property.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = and i32 %i.an, 1073741823               ; 2 uses
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %find_own_property.exit.thread, label %.lr.ph.i, !llvm.loop !7

find_own_property.exit:                           ; preds = %.lr.ph.i
  %i.ap = and i32 %5, 4
  %.not163 = icmp eq i32 %i.ap, 0
  br i1 %.not163, label %bb.h, label %bb.e

bb.e:                                             ; preds = %find_own_property.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = lshr i32 %i.ar, 30
  switch i32 %i.as, label %bb.j [
    i32 0, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.i, ptr %i.at, align 8, !tbaa !79
  br label %bb.aj

bb.g:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !79
  %i.aw = add i64 %i.av, -1
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.i, ptr %i.ay, align 8, !tbaa !51
  br label %bb.aj

bb.h:                                             ; preds = %find_own_property.exit
  %.not164 = icmp samesign ult i32 %5, 8
  br i1 %.not164, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ba = load i32, ptr %i.az, align 8
  %.mask = and i32 %i.ba, -1073741824
  %.not165 = icmp eq i32 %.mask, 1073741824
end_hunk_3
begin_hunk_4_@find_own_property:bb.a
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %.not.i1 = icmp eq i32 %i.q, 0
  br i1 %.not.i1, label %find_own_property_inlined.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i2 = phi i32 [ %i.y, %bb.b ], [ %i.q, %bb.a ]
  %i.r = zext i32 %.0.i2 to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !71
  %i.v = icmp eq i64 %i.u, %0
  br i1 %i.v, label %find_own_property_inlined.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i32, ptr %i.w, align 8
  %i.y = and i32 %i.x, 1073741823                 ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %find_own_property_inlined.exit, label %.lr.ph, !llvm.loop !7

find_own_property_inlined.exit:                   ; preds = %.lr.ph, %bb.b, %bb.a
  %.013.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.t, %.lr.ph ]
  ret ptr %.013.i
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_object_toString(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i64, ptr %1, align 8, !tbaa !46     ; 4 uses
  %i.c = and i64 %i.b, 1
  %.not.i.not = icmp eq i64 %i.c, 0
  %i.d = and i64 %i.b, 7                          ; 2 uses
  %.not = icmp eq i64 %i.d, 5
  %or.cond = or i1 %.not.i.not, %.not
  br i1 %or.cond, label %JS_IsIntOrShortFloat.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10 = icmp eq i64 %i.d, 1
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i64 %i.b, 31
  %i.f = add nsw i64 %i.e, -3                     ; 2 uses
  %i.g = tail call i64 @llvm.fshl.i64(i64 %i.f, i64 %i.f, i64 62) ; 2 uses
  %i.h = icmp ult i64 %i.g, 7
  br i1 %i.h, label %switch.lookup, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = add nsw i64 %i.b, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 7
  switch i32 %i.n, label %bb.f [
    i32 1, label %bb.e
    i32 3, label %bb.g
    i32 2, label %JS_IsIntOrShortFloat.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = lshr i64 %i.k, 4
  %trunc = trunc i64 %i.o to i8
  %switch.tableidx = add i8 %trunc, -1            ; 2 uses
  %i.p = icmp ult i8 %switch.tableidx, 9
  br i1 %i.p, label %switch.lookup12, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.d
  br label %JS_IsIntOrShortFloat.exit.thread

bb.g:                                             ; preds = %bb.d
  br label %JS_IsIntOrShortFloat.exit.thread

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.js_object_toString, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %JS_IsIntOrShortFloat.exit.thread

switch.lookup12:                                  ; preds = %bb.e
  %i.q = zext nneg i8 %switch.tableidx to i64
  %switch.gep13 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.js_object_toString.50, i64 %i.q
  %switch.load14 = load ptr, ptr %switch.gep13, align 8
  br label %JS_IsIntOrShortFloat.exit.thread

JS_IsIntOrShortFloat.exit.thread:                 ; preds = %switch.lookup12, %switch.lookup, %bb.a, %bb.d, %bb.f, %bb.g
  %.0 = phi ptr [ %switch.load14, %switch.lookup12 ], [ @.str.84, %bb.f ], [ %switch.load, %switch.lookup ], [ @.str.86, %bb.d ], [ @.str.86, %bb.a ], [ @.str.85, %bb.g ]
  call void (ptr, i64, ptr, ...) @js_snprintf(ptr noundef %i.a, i64 noundef 64, ptr noundef nonnull @.str.87, ptr noundef nonnull %.0) #28
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30, !inline_history !52
  %i.s = call i64 @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.r) #28, !inline_history !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.s
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_error_constructor(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.JSGCRef, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = sext i32 %4 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46
  %i.e = tail call fastcc ptr @JS_NewObjectProtoClass1(ptr noundef %0, i64 noundef %i.d, i32 noundef 9, i32 noundef 16) #28, !inline_history !0 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %.not38 = icmp eq i64 %i.g, 15
  %.not = or i1 %.not.i, %.not38
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store <2 x i64> splat (i64 7), ptr %i.h, align 8, !tbaa !51
  %i.i = load i64, ptr %3, align 8, !tbaa !46     ; 2 uses
  %.not34 = icmp eq i64 %i.i, 11
  br i1 %.not34, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !39
  store ptr %5, ptr %i.j, align 8, !tbaa !36
  store i64 %i.g, ptr %5, align 8, !tbaa !40
  %i.m = call i64 @JS_ToString(ptr noundef nonnull %0, i64 noundef %i.i) #28 ; 2 uses
  %i.n = load i64, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !39
  store ptr %i.o, ptr %i.j, align 8, !tbaa !36
  %.not35 = icmp eq i64 %i.m, 15
  br i1 %.not35, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.m, ptr %i.r, align 8, !tbaa !51
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 776
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.h, align 8, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.g, %bb.e ], [ %i.n, %bb.d ]  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !39
  store ptr %5, ptr %i.w, align 8, !tbaa !36
  store i64 %.0, ptr %5, align 8, !tbaa !40
  call fastcc void @build_backtrace(ptr noundef nonnull %0, i64 noundef %.0, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1) #28
  %i.z = load i64, ptr %5, align 8, !tbaa !40
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !39
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.a, %bb.f
  %.031 = phi i64 [ 15, %bb.a ], [ %i.z, %bb.f ], [ 15, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i64 %.031
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_error_toString(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.StringBuffer, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 3 uses
  %i.b = and i64 %i.a, 7
  %.not.i = icmp eq i64 %i.b, 1
  br i1 %.not.i, label %JS_IsError.exit, label %JS_IsError.exit.thread

JS_IsError.exit:                                  ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %narrow.i.not = icmp eq i64 %i.f, 146
  br i1 %narrow.i.not, label %bb.b, label %JS_IsError.exit.thread

JS_IsError.exit.thread:                           ; preds = %bb.a, %JS_IsError.exit
  %i.g = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.88) #28
  br label %bb.i

bb.b:                                             ; preds = %JS_IsError.exit
  %i.h = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %.val34 = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %.val34, i64 1200
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = add i64 %i.j, 1
  %i.l = tail call fastcc i64 @JS_GetPropertyInternal(ptr noundef %0, i64 noundef %i.a, i64 noundef %i.k, i32 noundef 0) #28, !inline_history !5 ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 15, label %bb.i
    i64 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 1216
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i64 @JS_ToString(ptr noundef nonnull %0, i64 noundef %i.l) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.o, %bb.c ], [ %i.p, %bb.d ]  ; 2 uses
  %.not38 = icmp eq i64 %.0, 15
  br i1 %.not38, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x i32> <i32 0, i32 1>, ptr %i.q, align 8, !tbaa !45
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 776
  %storemerge.in.i = ptrtoint ptr %i.r to i64
  %storemerge.i = add i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !151
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !152
  store ptr %4, ptr %i.s, align 8, !tbaa !36
  %i.v = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %.0) #28 ; 0 uses
  %i.w = load i64, ptr %1, align 8, !tbaa !46
  %i.x = add i64 %i.w, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  %.not33 = icmp eq i64 %i.aa, 7
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @string_buffer_puts(ptr noundef nonnull %0, ptr noundef %4, ptr noundef nonnull @.str.89) #28
  %i.ab = load i64, ptr %1, align 8, !tbaa !46
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ag = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %0, ptr noundef %4, i64 noundef %i.af) #28 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = call fastcc i64 @string_buffer_pop(ptr noundef nonnull %0, ptr noundef %4) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h, %JS_IsError.exit.thread
  %.029 = phi i64 [ %i.g, %JS_IsError.exit.thread ], [ 15, %bb.b ], [ %i.ah, %bb.h ], [ 15, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.029
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_error_get_message(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = and i64 %i.a, 7
  %.not.i = icmp eq i64 %i.b, 1
  br i1 %.not.i, label %JS_IsError.exit, label %JS_IsError.exit.thread

JS_IsError.exit:                                  ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %narrow.i.not = icmp eq i64 %i.f, 146
  br i1 %narrow.i.not, label %bb.b, label %JS_IsError.exit.thread

JS_IsError.exit.thread:                           ; preds = %bb.a, %JS_IsError.exit
  %i.g = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.88) #28
  br label %bb.e

bb.b:                                             ; preds = %JS_IsError.exit
  %i.h = icmp eq i32 %4, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !51
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %JS_IsError.exit.thread
  %.0 = phi i64 [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.g, %JS_IsError.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @js_array_get_length(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = and i64 %i.a, 7
  %.not.i.i = icmp eq i64 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %or.cond.i = icmp eq i64 %i.f, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.a, %bb.b
  %i.g = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %bb.c

js_get_array.exit:                                ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51
  %i.j = shl i32 %i.i, 1
  %i.k = sext i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %js_get_array.exit.thread, %js_get_array.exit
  %.0 = phi i64 [ %i.k, %js_get_array.exit ], [ 15, %js_get_array.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local range(i64 11, 16) i64 @js_array_set_length(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.c = and i64 %i.b, 7
  %.not.i.i = icmp eq i64 %i.c, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4094
  %or.cond.i = icmp eq i64 %i.g, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.a, %bb.b
  %i.h = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %bb.d

js_get_array.exit:                                ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !46
  %i.j = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.i, i32 noundef 0) #28, !inline_history !74
  %.not6 = icmp eq i32 %i.j, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %js_get_array.exit
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45
  %i.l = tail call fastcc i32 @js_array_resize(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.k) #28
  %.not7 = icmp eq i32 %i.l, 0
  %. = select i1 %.not7, i64 11, i64 15
  br label %bb.d

bb.d:                                             ; preds = %js_get_array.exit.thread, %bb.c, %js_get_array.exit
  %.0 = phi i64 [ 15, %js_get_array.exit.thread ], [ %., %bb.c ], [ 15, %js_get_array.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 1) i32 @js_array_resize(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %or.cond = icmp ugt i32 %2, 1073741823
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.90) #28 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !46
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.h = icmp ult i32 %2, %i.g
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.e, align 8, !tbaa !51
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = zext nneg i32 %2 to i64                  ; 2 uses
  %i.m = load i64, ptr %i.k, align 8              ; 2 uses
  %i.n = lshr i64 %i.m, 5
  %i.o = icmp samesign ugt i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.m, 63
  %or.cond47 = and i1 %i.p, %i.o
  br i1 %or.cond47, label %bb.e, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @js_shrink_value_array(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef %2) #28
  %i.r = load i64, ptr %1, align 8, !tbaa !46
  %i.s = add i64 %i.r, -1
  %i.t = inttoptr i64 %i.s to ptr
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph51, %bb.f
  %indvars.iv54 = phi i64 [ %i.l, %.lr.ph51 ], [ %indvars.iv.next55, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv54
  store i64 11, ptr %i.u, align 8, !tbaa !46
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.v = load i32, ptr %i.f, align 8, !tbaa !51
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next55, %i.w
  br i1 %i.x, label %bb.f, label %.loopexit, !llvm.loop !317

bb.g:                                             ; preds = %bb.c
  %i.y = icmp samesign ugt i32 %2, %i.g
  br i1 %i.y, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.e, align 8, !tbaa !51
  %i.aa = tail call fastcc noundef i64 @js_resize_value_array2(ptr noundef %0, i64 noundef %i.z, i32 noundef %2, i32 noundef 0) #28, !inline_history !6 ; 3 uses
  %.not = icmp eq i64 %i.aa, 15
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %1, align 8, !tbaa !46
  %i.ac = add i64 %i.ab, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !51 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %2
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.i
  %i.ai = add i64 %i.aa, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = sext i32 %i.ag to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %i.al, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv
  store i64 11, ptr %i.am, align 8, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !318

.loopexit:                                        ; preds = %bb.j, %bb.f, %bb.i, %bb.e, %bb.g
  %.2 = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %i.t, %bb.e ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ]
  %i.an = getelementptr inbounds nuw i8, ptr %.2, i64 32
  store i32 %2, ptr %i.an, align 8, !tbaa !51
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.loopexit, %bb.b
  %.144 = phi i32 [ -1, %bb.b ], [ 0, %.loopexit ], [ -1, %bb.h ]
  ret i32 %.144
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_array_constructor(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = and i32 %2, -65537                       ; 4 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %JS_IsNumber.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !46     ; 4 uses
  %i.e = and i64 %i.d, 1
  %.not.i.not.i = icmp eq i64 %i.e, 0
  %i.f = and i64 %i.d, 7                          ; 2 uses
  %.not.i = icmp eq i64 %i.f, 5
  %or.cond.i = or i1 %.not.i.not.i, %.not.i
  br i1 %or.cond.i, label %JS_IsNumber.exit.thread32, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not6.i = icmp eq i64 %i.f, 1
  br i1 %.not6.i, label %JS_IsNumber.exit, label %JS_IsNumber.exit.thread

JS_IsNumber.exit:                                 ; preds = %bb.c
  %i.g = add nsw i64 %i.d, -1
  %i.h = inttoptr i64 %i.g to ptr
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, 14
  %.not = icmp eq i64 %i.i, 4
  br i1 %.not, label %JS_IsNumber.exit.thread32, label %JS_IsNumber.exit.thread

JS_IsNumber.exit.thread32:                        ; preds = %bb.b, %JS_IsNumber.exit
  %i.j = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.d, i32 noundef 0) #28, !inline_history !74
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %thread-pre-split, label %.loopexit

thread-pre-split:                                 ; preds = %JS_IsNumber.exit.thread32
  %.pr = load i32, ptr %i.a, align 4, !tbaa !45
  br label %JS_IsNumber.exit.thread

JS_IsNumber.exit.thread:                          ; preds = %bb.a, %JS_IsNumber.exit, %bb.c, %thread-pre-split
  %i.k = phi i32 [ %.pr, %thread-pre-split ], [ 1, %bb.c ], [ 1, %JS_IsNumber.exit ], [ %i.b, %bb.a ] ; 3 uses
  %.not29.not = phi i1 [ false, %thread-pre-split ], [ true, %bb.c ], [ true, %JS_IsNumber.exit ], [ true, %bb.a ]
  %or.cond = icmp ugt i32 %i.k, 1073741823
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %JS_IsNumber.exit.thread
  %i.l = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 11, ptr noundef nonnull @.str.90) #28
  br label %.loopexit

bb.e:                                             ; preds = %JS_IsNumber.exit.thread
  %i.m = tail call i64 @JS_NewArray(ptr noundef %0, i32 noundef %i.k) #28 ; 4 uses
  %.not35 = icmp eq i64 %i.m, 15
  br i1 %.not35, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i32 %i.k, ptr %i.p, align 8, !tbaa !51
  %i.q = icmp sgt i32 %i.b, 0
  %or.cond41 = and i1 %.not29.not, %i.q
  br i1 %or.cond41, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  store i64 %i.x, ptr %i.y, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !319

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e, %JS_IsNumber.exit.thread32, %bb.d
  %.025 = phi i64 [ 15, %bb.e ], [ %i.l, %bb.d ], [ 15, %JS_IsNumber.exit.thread32 ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.025
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_array_push(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = and i64 %i.a, 7
  %.not.i.i = icmp eq i64 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %or.cond.i = icmp eq i64 %i.f, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.a, %bb.b
  %i.g = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %bb.h

js_get_array.exit:                                ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51   ; 3 uses
  %i.j = add nsw i32 %i.i, %2                     ; 4 uses
  %i.k = icmp sgt i32 %i.j, 1073741823
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %js_get_array.exit
  %i.l = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 11, ptr noundef nonnull @.str.90) #28
  br label %bb.h

bb.d:                                             ; preds = %js_get_array.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51
  %i.o = tail call fastcc noundef i64 @js_resize_value_array2(ptr noundef %0, i64 noundef %i.n, i32 noundef %i.j, i32 noundef 0) #28, !inline_history !6 ; 3 uses
  %.not = icmp eq i64 %i.o, 15
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %1, align 8, !tbaa !46
  %i.q = add i64 %i.p, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.o, ptr %i.s, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 %i.j, ptr %i.t, align 8, !tbaa !51
  %i.u = add i64 %i.o, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = icmp ne i32 %4, 0
  %i.x = icmp sgt i32 %2, 0                       ; 2 uses
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = zext nneg i32 %2 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = sext i32 %i.i to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.y, i64 %i.ac, i1 false)
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread, %bb.f
  %.048 = phi i32 [ 0, %.thread ], [ %i.i, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = sext i32 %.048 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i64 %i.ag, ptr %gep, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !320

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ah = shl i32 %i.j, 1
  %i.ai = sext i32 %i.ah to i64
  br label %bb.h

bb.h:                                             ; preds = %js_get_array.exit.thread, %bb.d, %._crit_edge, %bb.c
  %.035 = phi i64 [ %i.l, %bb.c ], [ 15, %js_get_array.exit.thread ], [ %i.ai, %._crit_edge ], [ 15, %bb.d ]
  ret i64 %.035
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_array_pop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = and i64 %i.a, 7
  %.not.i.i = icmp eq i64 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %or.cond.i = icmp eq i64 %i.f, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.a, %bb.b
  %i.g = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %bb.d

js_get_array.exit:                                ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %js_get_array.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.o, ptr %i.h, align 8, !tbaa !51
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %js_get_array.exit.thread, %bb.c, %js_get_array.exit
  %.0 = phi i64 [ 15, %js_get_array.exit.thread ], [ %i.r, %bb.c ], [ 11, %js_get_array.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_array_shift(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = and i64 %i.a, 7
  %.not.i.i = icmp eq i64 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %or.cond.i = icmp eq i64 %i.f, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

end_hunk_4
begin_hunk_5_@js_array_slice:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4094
  %or.cond.i = icmp eq i64 %i.h, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.a, %bb.b
  %i.i = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %JS_ToInt32Clamp.exit

js_get_array.exit:                                ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51   ; 5 uses
  %i.l = load i64, ptr %3, align 8, !tbaa !46
  %i.m = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.l, i32 noundef 1) #28, !inline_history !155
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %JS_ToInt32Clamp.exit

bb.c:                                             ; preds = %js_get_array.exit
  %i.o = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.o, %i.k
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.k)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %spec.select, %bb.e ], [ %spec.store.select.i, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i64 %i.t, 11
  br i1 %.not, label %JS_ToInt32Clamp.exit40.thread, label %bb.f

bb.f:                                             ; preds = %.sink.split.i
  %i.u = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.t, i32 noundef 1) #28, !inline_history !155
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %JS_ToInt32Clamp.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.b, align 4, !tbaa !45   ; 3 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.w, %i.k
  %spec.store.select.i39 = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  br label %JS_ToInt32Clamp.exit40.thread

bb.i:                                             ; preds = %bb.g
  %spec.select54 = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.k)
  br label %JS_ToInt32Clamp.exit40.thread

JS_ToInt32Clamp.exit40.thread:                    ; preds = %bb.i, %bb.h, %.sink.split.i
  %i.z = phi i32 [ %i.k, %.sink.split.i ], [ %spec.select54, %bb.i ], [ %spec.store.select.i39, %bb.h ]
  %i.aa = load i64, ptr %1, align 8, !tbaa !46
  %i.ab = add i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !51
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %i.z, i32 %i.ae) ; 3 uses
  %i.af = sub nsw i32 %..i, %i.r
  %..i41 = tail call noundef i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.ag = tail call i64 @JS_NewArray(ptr noundef %0, i32 noundef %..i41) #28 ; 4 uses
  %.not44 = icmp eq i64 %i.ag, 15
  br i1 %.not44, label %JS_ToInt32Clamp.exit, label %bb.j

bb.j:                                             ; preds = %JS_ToInt32Clamp.exit40.thread
  %i.ah = icmp slt i32 %i.r, %..i
  br i1 %i.ah, label %.lr.ph, label %JS_ToInt32Clamp.exit

.lr.ph:                                           ; preds = %bb.j
  %i.ai = add i64 %i.ag, -1
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51
  %i.am = add i64 %i.al, -1
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %1, align 8, !tbaa !46
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = sext i32 %i.r to i64                    ; 2 uses
  %wide.trip.count = sext i32 %..i to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = sub nsw i64 %indvars.iv, %i.ax
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ba
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %JS_ToInt32Clamp.exit, label %bb.k, !llvm.loop !327

JS_ToInt32Clamp.exit:                             ; preds = %bb.k, %bb.j, %bb.f, %js_get_array.exit, %js_get_array.exit.thread, %JS_ToInt32Clamp.exit40.thread
  %.031 = phi i64 [ 15, %js_get_array.exit.thread ], [ 15, %js_get_array.exit ], [ 15, %JS_ToInt32Clamp.exit40.thread ], [ 15, %bb.f ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.031
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_array_splice(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4094
  %or.cond.i = icmp eq i64 %i.h, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.a, %bb.b
  %i.i = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %JS_ToInt32Clamp.exit

js_get_array.exit:                                ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51   ; 8 uses
  %i.l = load i64, ptr %3, align 8, !tbaa !46
  %i.m = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.l, i32 noundef 1) #28, !inline_history !155
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %JS_ToInt32Clamp.exit

bb.c:                                             ; preds = %js_get_array.exit
  %i.o = load i32, ptr %i.a, align 4, !tbaa !45   ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.o, %i.k
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.k)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %i.r = phi i32 [ %spec.select, %bb.e ], [ %spec.store.select.i, %bb.d ] ; 8 uses
  switch i32 %2, label %bb.g [
    i32 0, label %JS_ToInt32Clamp.exit80.thread
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %.sink.split.i
  %i.s = sub nsw i32 %i.k, %i.r
  br label %JS_ToInt32Clamp.exit80.thread

bb.g:                                             ; preds = %.sink.split.i
  %i.t = add nsw i32 %2, -2                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46
  %i.w = sub nsw i32 %i.k, %i.r
  %i.x = call fastcc range(i32 -1, 1) i32 @JS_ToInt32Internal(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.v, i32 noundef 1) #28, !inline_history !155
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %JS_ToInt32Clamp.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.b, align 4, !tbaa !45   ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %JS_ToInt32Clamp.exit80.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.select108 = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.w)
  br label %JS_ToInt32Clamp.exit80.thread

JS_ToInt32Clamp.exit80.thread:                    ; preds = %bb.i, %bb.h, %.sink.split.i, %bb.f
  %i.ab = phi i32 [ 0, %.sink.split.i ], [ %i.s, %bb.f ], [ %spec.select108, %bb.i ], [ 0, %bb.h ] ; 11 uses
  %.064 = phi i32 [ 0, %.sink.split.i ], [ 0, %bb.f ], [ %i.t, %bb.i ], [ %i.t, %bb.h ] ; 8 uses
  %i.ac = add nsw i32 %.064, %i.k
  %i.ad = sub i32 %i.ac, %i.ab
  %i.ae = tail call i64 @JS_NewArray(ptr noundef %0, i32 noundef %i.ab) #28 ; 4 uses
  %.not = icmp eq i64 %i.ae, 15
  br i1 %.not, label %JS_ToInt32Clamp.exit, label %bb.j

bb.j:                                             ; preds = %JS_ToInt32Clamp.exit80.thread
  %i.af = load i64, ptr %1, align 8, !tbaa !46
  %i.ag = add i64 %i.af, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !51
  %.not74 = icmp eq i32 %i.aj, %i.k
  br i1 %.not74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.92) #28
  br label %JS_ToInt32Clamp.exit

bb.l:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !51
  %i.an = add i64 %i.am, -1
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = icmp sgt i32 %i.ab, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.aq = add i64 %i.ae, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !51
  %i.au = add i64 %i.at, -1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = sext i32 %i.r to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aw, i64 %i.ay
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.az = load i64, ptr %gep, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !328

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %.not75 = icmp eq i32 %.064, %i.ab
  br i1 %.not75, label %bb.s, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bb = icmp sgt i32 %i.ab, %.064
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bd = sext i32 %i.r to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = sext i32 %.064 to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = sext i32 %i.ab to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bh
  %i.bj = add i32 %i.ab, %i.r
  %i.bk = sub i32 %i.k, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.bi, i64 %i.bm, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !39
  store ptr %4, ptr %i.bn, align 8, !tbaa !36
  store i64 %i.ae, ptr %4, align 8, !tbaa !40
  %i.bq = call fastcc i32 @js_array_resize(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ad) #28
  %i.br = load i64, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !39
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !36
  %.not76 = icmp eq i32 %i.bq, 0
  br i1 %.not76, label %bb.q, label %JS_ToInt32Clamp.exit

bb.q:                                             ; preds = %bb.p
  %i.bt = load i64, ptr %1, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !51
  %i.by = add i64 %i.bx, -1
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  %i.ca = icmp slt i32 %i.ab, %.064
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = sext i32 %i.r to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = sext i32 %.064 to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = sext i32 %i.ab to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = add i32 %i.ab, %i.r
  %i.cj = sub i32 %i.k, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr nonnull align 8 %i.ch, i64 %i.cl, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %._crit_edge
  %.062 = phi ptr [ %i.bz, %bb.r ], [ %i.bz, %bb.q ], [ %i.ao, %._crit_edge ]
  %.0 = phi i64 [ %i.br, %bb.r ], [ %i.br, %bb.q ], [ %i.ae, %._crit_edge ] ; 2 uses
  %i.cm = icmp sgt i32 %.064, 0
  br i1 %i.cm, label %.lr.ph90, label %JS_ToInt32Clamp.exit

.lr.ph90:                                         ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.062, i64 8
  %i.co = sext i32 %i.r to i64
  %wide.trip.count96 = zext nneg i32 %.064 to i64
  %invariant.gep106 = getelementptr [8 x i8], ptr %i.cn, i64 %i.co
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph90, %bb.t
  %indvars.iv93 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next94, %bb.t ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !46
  %gep107 = getelementptr [8 x i8], ptr %invariant.gep106, i64 %indvars.iv93
  store i64 %i.cr, ptr %gep107, align 8, !tbaa !46
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %JS_ToInt32Clamp.exit, label %bb.t, !llvm.loop !329

JS_ToInt32Clamp.exit:                             ; preds = %bb.t, %bb.s, %bb.g, %js_get_array.exit, %js_get_array.exit.thread, %bb.p, %JS_ToInt32Clamp.exit80.thread, %bb.k
  %.065 = phi i64 [ 15, %js_get_array.exit.thread ], [ 15, %js_get_array.exit ], [ %i.ak, %bb.k ], [ 15, %JS_ToInt32Clamp.exit80.thread ], [ 15, %bb.p ], [ 15, %bb.g ], [ %.0, %bb.s ], [ %.0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.065
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_array_every(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.JSGCRef, align 8            ; 6 uses
  %6 = alloca %struct.JSGCRef, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = and i64 %i.a, 7
  %.not.i.i = icmp eq i64 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_array.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %or.cond.i = icmp eq i64 %i.f, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.a, %bb.b
  %i.g = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %bb.v

js_get_array.exit:                                ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !51   ; 3 uses
  %i.j = icmp slt i32 %2, 2
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %3, align 8, !tbaa !46     ; 3 uses
  %i.m = and i64 %i.l, 7
  %.not.i = icmp eq i64 %i.m, 1
  br i1 %.not.i, label %bb.c, label %.split

.split:                                           ; preds = %js_get_array.exit
  %i.n = and i64 %i.l, 31
  %i.o = icmp eq i64 %i.n, 19
  br i1 %i.o, label %bb.d, label %JS_IsFunction.exit.thread

bb.c:                                             ; preds = %js_get_array.exit
  %i.p = add nsw i64 %i.l, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, 4078
  %or.cond = icmp eq i64 %i.s, 34
  br i1 %or.cond, label %bb.d, label %JS_IsFunction.exit.thread

JS_IsFunction.exit.thread:                        ; preds = %.split, %bb.c
  %i.t = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.14) #28
  br label %bb.v

bb.d:                                             ; preds = %bb.c, %.split
  switch i32 %4, label %bb.h [
    i32 0, label %bb.i
end_hunk_5
begin_hunk_6_@js_string_split:bb.a
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.bo = call fastcc i64 @js_sub_string(ptr noundef nonnull %0, i64 noundef %i.bj, i32 noundef %.0150269, i32 noundef %.2149) #28 ; 2 uses
  %.not232 = icmp eq i64 %i.bo, 15
  br i1 %.not232, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load i64, ptr %4, align 8, !tbaa !46
  %i.bq = add i32 %.0155268, 1                    ; 3 uses
  %i.br = call i64 @JS_SetPropertyUint32(ptr noundef nonnull %0, i64 noundef %i.bp, i32 noundef %.0155268, i64 noundef %i.bo) #28
  %.not233 = icmp eq i64 %i.br, 15
  br i1 %.not233, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp eq i32 %i.bq, %i.x
  br i1 %i.bs, label %.thread207, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = load i64, ptr %5, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %.lr.ph266.preheader, label %.loopexit

.lr.ph266.preheader:                              ; preds = %bb.w
  %wide.trip.count = zext nneg i32 %i.bx to i64
  br label %.lr.ph266

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %bb.x
  %indvars.iv = phi i64 [ 1, %.lr.ph266.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.1156264 = phi i32 [ %i.bq, %.lr.ph266.preheader ], [ %i.cl, %bb.x ] ; 2 uses
  %i.bz = load i64, ptr %5, align 8, !tbaa !46
  %i.ca = add i64 %i.bz, -1
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.ce = add i64 %i.cd, -1
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !46
  %i.cj = load i64, ptr %4, align 8, !tbaa !46
  %i.ck = call i64 @JS_SetPropertyUint32(ptr noundef nonnull %0, i64 noundef %i.cj, i32 noundef %.1156264, i64 noundef %i.ci) #28
  %.not234 = icmp eq i64 %i.ck, 15
  br i1 %.not234, label %.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph266
  %i.cl = add i32 %.1156264, 1                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph266, !llvm.loop !360

.loopexit:                                        ; preds = %bb.x, %bb.w, %bb.s, %bb.o
  %.2157 = phi i32 [ %.0155268, %bb.o ], [ %.0155268, %bb.s ], [ %i.bq, %bb.w ], [ %i.cl, %bb.x ] ; 2 uses
  %.1151 = phi i32 [ %.0150269, %bb.o ], [ %.0150269, %bb.s ], [ %spec.select, %bb.w ], [ %spec.select, %bb.x ] ; 2 uses
  %.3 = phi i32 [ %i.aw, %bb.o ], [ %i.bn, %bb.s ], [ %spec.select, %bb.w ], [ %spec.select, %bb.x ] ; 2 uses
  %i.cm = icmp slt i32 %.3, %i.w
  br i1 %i.cm, label %bb.m, label %.thread200, !llvm.loop !361

bb.y:                                             ; preds = %bb.j
  %i.cn = call fastcc i32 @js_string_len(ptr noundef nonnull %0, i64 noundef %i.z) #28 ; 4 uses
  %i.co = icmp eq i32 %i.w, 0
  %.not178 = icmp eq i32 %i.cn, 0                 ; 3 uses
  br i1 %i.co, label %bb.z, label %.preheader242

.preheader242:                                    ; preds = %bb.y
  %.neg277 = sext i1 %.not178 to i32
  %i.cp = zext i1 %.not178 to i32                 ; 3 uses
  %.neg240 = sub i32 %i.w, %i.cn
  %i.cq = add i32 %.neg240, %.neg277              ; 2 uses
  %.not175257 = icmp slt i32 %i.cq, %i.cp
  br i1 %.not175257, label %.thread200, label %.lr.ph

bb.z:                                             ; preds = %bb.y
  br i1 %.not178, label %.thread207, label %.thread200

bb.aa:                                            ; preds = %bb.ad
  %i.cr = add nsw i32 %i.cw, %i.cn                ; 3 uses
  %i.cs = add nsw i32 %i.cr, %i.cp                ; 2 uses
  %.not175 = icmp sgt i32 %i.cs, %i.cq
  br i1 %.not175, label %.thread200, label %.lr.ph, !llvm.loop !362

.lr.ph:                                           ; preds = %.preheader242, %bb.aa
  %i.ct = phi i32 [ %i.cs, %bb.aa ], [ %i.cp, %.preheader242 ]
  %.4259 = phi i32 [ %i.cr, %bb.aa ], [ 0, %.preheader242 ] ; 2 uses
  %.4159258 = phi i32 [ %i.dc, %bb.aa ], [ 0, %.preheader242 ] ; 3 uses
  %i.cu = load i64, ptr %1, align 8, !tbaa !46
  %i.cv = load i64, ptr %3, align 8, !tbaa !46
  %i.cw = call fastcc i32 @js_string_indexof(ptr noundef nonnull %0, i64 noundef %i.cu, i64 noundef %i.cv, i32 noundef %i.ct, i32 noundef %i.w, i32 noundef %i.cn) #28 ; 3 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %.thread200, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.cy = load i64, ptr %1, align 8, !tbaa !46
  %i.cz = call fastcc i64 @js_sub_string(ptr noundef nonnull %0, i64 noundef %i.cy, i32 noundef %.4259, i32 noundef %i.cw) #28 ; 2 uses
  %.not227 = icmp eq i64 %i.cz, 15
  br i1 %.not227, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = load i64, ptr %4, align 8, !tbaa !46
  %i.db = call i64 @JS_SetPropertyUint32(ptr noundef nonnull %0, i64 noundef %i.da, i32 noundef %.4159258, i64 noundef %i.cz) #28
  %.not228 = icmp eq i64 %i.db, 15
  br i1 %.not228, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = add nuw i32 %.4159258, 1                ; 3 uses
  %i.dd = icmp eq i32 %i.dc, %i.x
  br i1 %i.dd, label %.thread207, label %bb.aa

.thread200:                                       ; preds = %.lr.ph, %bb.aa, %.loopexit, %bb.n, %.preheader242, %.preheader, %bb.l, %bb.z, %bb.i
  %.6 = phi i32 [ 0, %bb.i ], [ 0, %bb.z ], [ 0, %.preheader242 ], [ 0, %bb.l ], [ 0, %.preheader ], [ %.0155268, %bb.n ], [ %.2157, %.loopexit ], [ %.4159258, %.lr.ph ], [ %i.dc, %bb.aa ]
  %.5 = phi i32 [ 0, %bb.i ], [ 0, %bb.z ], [ 0, %.preheader242 ], [ 0, %bb.l ], [ 0, %.preheader ], [ %.0150269, %bb.n ], [ %.1151, %.loopexit ], [ %.4259, %.lr.ph ], [ %i.cr, %bb.aa ]
  %i.de = load i64, ptr %1, align 8, !tbaa !46
  %i.df = call fastcc i64 @js_sub_string(ptr noundef nonnull %0, i64 noundef %i.de, i32 noundef %.5, i32 noundef %i.w) #28 ; 2 uses
  %.not237 = icmp eq i64 %i.df, 15
  br i1 %.not237, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %.thread200
  %i.dg = load i64, ptr %4, align 8, !tbaa !46
  %i.dh = call i64 @JS_SetPropertyUint32(ptr noundef nonnull %0, i64 noundef %i.dg, i32 noundef %.6, i64 noundef %i.df) #28
  %.not238 = icmp eq i64 %i.dh, 15
  br i1 %.not238, label %.thread, label %.thread207

.thread207:                                       ; preds = %bb.ad, %bb.v, %bb.l, %bb.z, %bb.ae, %bb.h
  %i.di = load ptr, ptr %i.s, align 8, !tbaa !39
  store ptr %i.di, ptr %i.q, align 8, !tbaa !36
  %i.dj = load i64, ptr %4, align 8, !tbaa !40
  br label %bb.af

.thread:                                          ; preds = %bb.ab, %bb.ac, %bb.m, %bb.q, %bb.u, %bb.t, %.lr.ph266, %bb.l, %bb.ae, %.thread200, %bb.g
  %i.dk = load ptr, ptr %i.s, align 8, !tbaa !39
  store ptr %i.dk, ptr %i.q, align 8, !tbaa !36
  br label %bb.af

bb.af:                                            ; preds = %JS_GetClassID.exit.thread, %bb.d, %bb.a, %.thread, %.thread207
  %.0 = phi i64 [ 15, %bb.a ], [ 15, %.thread ], [ %i.dj, %.thread207 ], [ 15, %JS_GetClassID.exit.thread ], [ 15, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_string_match(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSGCRef, align 8            ; 8 uses
  %5 = alloca %struct.JSGCRef, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = load i64, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.b = and i64 %i.a, 7
  %.not.i.i = icmp eq i64 %i.b, 1
  br i1 %.not.i.i, label %bb.b, label %js_get_regexp.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4094
  %or.cond.i = icmp eq i64 %i.f, 130
  br i1 %or.cond.i, label %bb.c, label %js_get_regexp.exit.thread

js_get_regexp.exit.thread:                        ; preds = %bb.a, %bb.b
  %i.g = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.235) #28 ; 0 uses
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !164
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val = load i16, ptr %i.l, align 1, !tbaa !89
  %i.m = and i16 %.val, 1
  %.not37 = icmp eq i16 %i.m, 0
  br i1 %.not37, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i64 @js_regexp_exec(ptr noundef %0, ptr noundef nonnull %3, i32 poison, ptr noundef %1, i32 noundef 0) #28
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 0, ptr %i.o, align 8, !tbaa !163
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.s, align 8, !tbaa !39
  store ptr %5, ptr %i.p, align 8, !tbaa !36
  store i64 11, ptr %5, align 8, !tbaa !40
  store i64 7, ptr %4, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.af, %bb.i ]    ; 2 uses
  %i.t = call i64 @js_regexp_exec(ptr noundef %0, ptr noundef nonnull %3, i32 poison, ptr noundef %1, i32 noundef 0) #28 ; 3 uses
  store i64 %i.t, ptr %5, align 8, !tbaa !46
  switch i64 %i.t, label %bb.g [
    i64 15, label %.loopexit
    i64 7, label %.loopexit.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.v = icmp eq i64 %i.u, 7
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = call i64 @JS_NewArray(ptr noundef %0, i32 noundef 1) #28 ; 3 uses
  store i64 %i.w, ptr %4, align 8, !tbaa !46
  %.not43 = icmp eq i64 %i.w, 15
  br i1 %.not43, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %5, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.x = phi i64 [ %i.w, %._crit_edge ], [ %i.u, %bb.g ]
  %i.y = phi i64 [ %.pre, %._crit_edge ], [ %i.t, %bb.g ]
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = add nuw nsw i32 %.0, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !46
  %i.ai = call i64 @JS_SetPropertyUint32(ptr noundef %0, i64 noundef %i.x, i32 noundef %.0, i64 noundef %i.ah) #28
  %.not44 = icmp eq i64 %i.ai, 15
  br i1 %.not44, label %.loopexit, label %bb.f

.loopexit.loopexit:                               ; preds = %bb.f
  %.pre45 = load i64, ptr %4, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.f, %.loopexit.loopexit
  %i.aj = phi i64 [ %.pre45, %.loopexit.loopexit ], [ 15, %bb.f ], [ 15, %bb.i ], [ 15, %bb.h ]
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !39
  store ptr %i.ak, ptr %i.p, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %js_get_regexp.exit.thread, %.loopexit, %bb.d
  %.035 = phi i64 [ %i.aj, %.loopexit ], [ %i.n, %bb.d ], [ 15, %js_get_regexp.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.035
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_string_search(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @js_regexp_exec(ptr noundef %0, ptr noundef %3, i32 poison, ptr noundef %1, i32 noundef 2) #28
  ret i64 %i.a
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_vprintf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.e = load i8, ptr %2, align 1, !tbaa !51      ; 2 uses
  %.not203 = icmp eq i8 %i.e, 0
  br i1 %.not203, label %._crit_edge, label %.preheader192.lr.ph

.preheader192.lr.ph:                              ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 26 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  br label %.preheader192

.preheader192:                                    ; preds = %.preheader192.lr.ph, %bb.cn
  %i.j = phi i8 [ %i.e, %.preheader192.lr.ph ], [ %i.id, %bb.cn ]
  %.0204 = phi ptr [ %2, %.preheader192.lr.ph ], [ %i.bl, %bb.cn ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader192, %bb.c
  %i.k = phi i8 [ %.pr, %bb.c ], [ %i.j, %.preheader192 ] ; 2 uses
  %.1 = phi ptr [ %i.l, %bb.c ], [ %.0204, %.preheader192 ] ; 5 uses
  switch i8 %i.k, label %bb.c [
    i8 37, label %.critedge
    i8 0, label %.critedge
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.l, align 1, !tbaa !51
  br label %bb.b, !llvm.loop !363

.critedge:                                        ; preds = %bb.b, %bb.b
  %i.m = icmp ugt ptr %.1, %.0204
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.n = ptrtoaddr ptr %.1 to i64
  %i.o = ptrtoaddr ptr %.0204 to i64
  %i.p = sub i64 %i.n, %i.o
  call void %0(ptr noundef %1, ptr noundef nonnull %.0204, i64 noundef %i.p) #31
  %.pre = load i8, ptr %.1, align 1, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %i.q = phi i8 [ %.pre, %bb.d ], [ %i.k, %.critedge ]
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %.preheader191.outer

.preheader191.outer:                              ; preds = %bb.e, %.preheader191.outer.backedge
  %.0133.ph = phi i32 [ %.0133.ph.be, %.preheader191.outer.backedge ], [ 0, %bb.e ] ; 5 uses
  %.1.pn.ph = phi ptr [ %.2, %.preheader191.outer.backedge ], [ %.1, %bb.e ]
  br label %.preheader191

.preheader191:                                    ; preds = %.preheader191.backedge, %.preheader191.outer
  %.1.pn = phi ptr [ %.1.pn.ph, %.preheader191.outer ], [ %.2, %.preheader191.backedge ]
  %.2 = getelementptr inbounds nuw i8, ptr %.1.pn, i64 1 ; 7 uses
  %i.s = load i8, ptr %.2, align 1, !tbaa !51     ; 3 uses
  switch i8 %i.s, label %.preheader189 [
    i8 48, label %bb.f
    i8 35, label %bb.g
    i8 43, label %.preheader191.backedge
    i8 45, label %bb.h
    i8 32, label %.preheader191.backedge
    i8 42, label %bb.i
  ]

.preheader191.backedge:                           ; preds = %.preheader191, %.preheader191
  br label %.preheader191

.preheader189:                                    ; preds = %.preheader191
  %i.t = sext i8 %i.s to i32                      ; 2 uses
  %i.u = add nsw i32 %i.t, -58
  %i.v = icmp ult i32 %i.u, -10
  br i1 %i.v, label %.loopexit190, label %.lr.ph

bb.f:                                             ; preds = %.preheader191
  %i.w = or i32 %.0133.ph, 1
  br label %.preheader191.outer.backedge

.preheader191.outer.backedge:                     ; preds = %bb.f, %bb.g, %bb.h
  %.0133.ph.be = phi i32 [ %i.y, %bb.h ], [ %i.x, %bb.g ], [ %i.w, %bb.f ]
  br label %.preheader191.outer

bb.g:                                             ; preds = %.preheader191
  %i.x = or i32 %.0133.ph, 2
  br label %.preheader191.outer.backedge

bb.h:                                             ; preds = %.preheader191
  %i.y = or i32 %.0133.ph, 8
  br label %.preheader191.outer.backedge

bb.i:                                             ; preds = %.preheader191
  %i.z = load i32, ptr %3, align 8                ; 3 uses
  %i.aa = icmp ult i32 %i.z, 41
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.ac
  %i.ae = add nuw nsw i32 %i.z, 8
  store i32 %i.ae, ptr %3, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.f, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi ptr [ %i.ad, %bb.j ], [ %i.af, %bb.k ]
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %.pre213 = load i8, ptr %.2, align 1, !tbaa !51
  br label %.loopexit190

.lr.ph:                                           ; preds = %.preheader189, %.lr.ph
  %i.aj = phi i32 [ %i.ap, %.lr.ph ], [ %i.t, %.preheader189 ]
  %.3197 = phi ptr [ %i.an, %.lr.ph ], [ %.2, %.preheader189 ]
  %.0125196 = phi i32 [ %i.am, %.lr.ph ], [ 0, %.preheader189 ]
  %i.ak = mul nsw i32 %.0125196, 10
  %i.al = add i32 %i.ak, -48
  %i.am = add i32 %i.al, %i.aj                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3197, i64 1 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !51  ; 2 uses
  %i.ap = sext i8 %i.ao to i32                    ; 2 uses
  %i.aq = add nsw i32 %i.ap, -58
  %i.ar = icmp ult i32 %i.aq, -10
  br i1 %i.ar, label %.loopexit190, label %.lr.ph, !llvm.loop !364

.loopexit190:                                     ; preds = %.lr.ph, %.preheader189, %bb.l
  %i.as = phi i8 [ %.pre213, %bb.l ], [ %i.s, %.preheader189 ], [ %i.ao, %.lr.ph ]
  %.1126 = phi i32 [ %i.ai, %bb.l ], [ 0, %.preheader189 ], [ %i.am, %.lr.ph ] ; 6 uses
  %.4 = phi ptr [ %.2, %bb.l ], [ %.2, %.preheader189 ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.at = icmp eq i8 %i.as, 46
  br i1 %i.at, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.loopexit190
  %i.au = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 5 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !51  ; 2 uses
  %i.aw = icmp eq i8 %i.av, 42
  br i1 %i.aw, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.ax = sext i8 %i.av to i32
  %i.ay = add nsw i32 %i.ax, -58
  %i.az = icmp ult i32 %i.ay, -10
  br i1 %i.az, label %.loopexit, label %.lr.ph201

bb.n:                                             ; preds = %bb.m
  %i.ba = load i32, ptr %3, align 8               ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 41
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = add nuw nsw i32 %i.ba, 8
  store i32 %i.bc, ptr %3, align 8
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.f, align 8
  br label %.loopexit

.lr.ph201:                                        ; preds = %.preheader, %.lr.ph201
  %.5200 = phi ptr [ %i.bf, %.lr.ph201 ], [ %i.au, %.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.5200, i64 1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bh = sext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -58
  %i.bj = icmp ult i32 %i.bi, -10
  br i1 %i.bj, label %.loopexit, label %.lr.ph201, !llvm.loop !365

.loopexit:                                        ; preds = %.lr.ph201, %.preheader, %bb.o, %bb.p, %.loopexit190
  %.6 = phi ptr [ %.4, %.loopexit190 ], [ %i.au, %bb.o ], [ %i.au, %bb.p ], [ %i.au, %.preheader ], [ %i.bf, %.lr.ph201 ]
end_hunk_6
begin_hunk_7_@stdlib_init_class:bb.a

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2 = phi i64 [ %i.av, %bb.k ], [ %.153, %bb.j ]
  %i.aw = call fastcc i64 @js_new_c_function_proto(ptr noundef nonnull %0, i32 noundef %i.b, i64 noundef %.2, i32 noundef 0, i64 noundef 7) #28 ; 2 uses
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.l
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !46
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !46
  %i.bb = tail call fastcc ptr @JS_NewObjectProtoClass1(ptr noundef %0, i64 noundef %i.ba, i32 noundef 0, i32 noundef 0) #28, !inline_history !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = add i64 %i.bc, 1
  %.0.i.i.i = select i1 %.not.i.i.i, i64 15, i64 %i.bd
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.149 = phi i64 [ %i.aw, %bb.l ], [ %.0.i.i.i, %bb.m ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !374 ; 2 uses
  %.not = icmp eq i64 %i.bf, 7
  br i1 %.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add i64 %.149, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bf, ptr %i.bi, align 8, !tbaa !46
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.n, %bb.o
  %.1 = phi i64 [ %.149, %bb.n ], [ %i.n, %bb.b ], [ %.149, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i64 %.1
}

; Function Attrs: nounwind optsize uwtable
define internal void @cprintf(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readnone captures(address) %1, ptr noundef %2, ...) unnamed_addr #4 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.not = icmp ult ptr %i.b, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  call fastcc void @js_vsnprintf(ptr noundef %i.a, i64 noundef %i.e, ptr noundef %2, ptr noundef %3) #28
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store ptr %i.g, ptr %0, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc i32 @get_ugolomb(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #21 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.b = add i32 %i.a, 32
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.019 = phi i32 [ %i.a, %bb.a ], [ %i.c, %bb.c ] ; 3 uses
  %.018 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.c ]   ; 9 uses
  %i.c = add i32 %.019, 1                         ; 6 uses
  %i.d = lshr i32 %.019, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !51
  %i.h = zext i8 %i.g to i32
  %i.i = and i32 %.019, 7
  %i.j = lshr exact i32 128, %i.i
  %i.k = and i32 %i.j, %i.h
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i32 %.018, 1                 ; 2 uses
  %i.m = icmp eq i32 %i.l, 32
  br i1 %i.m, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %.018, 0
  br i1 %i.n, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i32 1, %.018
  %i.p = lshr i32 %i.c, 3                         ; 2 uses
  %i.q = icmp samesign ugt i32 %.018, 25
  %i.r = add nuw nsw i32 %i.p, 3
  %i.s = icmp uge i32 %i.r, %1
  %i.t = select i1 %i.q, i1 true, i1 %i.s, !prof !67
  br i1 %i.t, label %.lr.ph.i.i, label %bb.f, !prof !67

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.012.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ 0, %bb.e ]
  %.0911.i.i = phi i32 [ %i.ai, %.lr.ph.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.u = add i32 %.0911.i.i, %i.c                 ; 2 uses
  %i.v = lshr i32 %i.u, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51
  %i.z = zext i8 %i.y to i32
  %i.aa = and i32 %i.u, 7
  %i.ab = xor i32 %i.aa, 7
  %i.ac = lshr i32 %i.z, %i.ab
  %i.ad = and i32 %i.ac, 1
  %i.ae = xor i32 %.0911.i.i, -1
  %i.af = add nsw i32 %.018, %i.ae
  %i.ag = shl nuw i32 %i.ad, %i.af
  %i.ah = or i32 %i.ag, %.012.i.i                 ; 2 uses
  %i.ai = add nuw nsw i32 %.0911.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ai, %.018
  br i1 %exitcond.not.i.i, label %get_bits.exit, label %.lr.ph.i.i, !llvm.loop !375

bb.f:                                             ; preds = %bb.e
  %i.aj = zext nneg i32 %i.p to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %.val.i = load i32, ptr %i.ak, align 1, !tbaa !91
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %.val.i)
  %i.am = and i32 %i.c, 7
  %i.an = add nuw nsw i32 %.018, %i.am
  %i.ao = sub nuw nsw i32 32, %i.an
  %i.ap = lshr i32 %i.al, %i.ao
  %notmask.i = shl nsw i32 -1, %.018
  %i.aq = xor i32 %notmask.i, -1
  %i.ar = and i32 %i.ap, %i.aq
  br label %get_bits.exit

get_bits.exit:                                    ; preds = %.lr.ph.i.i, %bb.f
  %.0.i = phi i32 [ %i.ar, %bb.f ], [ %i.ah, %.lr.ph.i.i ]
  %i.as = or i32 %.0.i, %i.o
  %i.at = add i32 %i.as, -1
  %i.au = add i32 %i.c, %.018
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %get_bits.exit, %bb.d
  %storemerge = phi i32 [ %i.c, %bb.d ], [ %i.au, %get_bits.exit ], [ %i.b, %bb.c ]
  %.020 = phi i32 [ 0, %bb.d ], [ %i.at, %get_bits.exit ], [ -1, %bb.c ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !45
  ret i32 %.020
}

; Function Attrs: optsize
declare i32 @js_dtoa_max_len(double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @js_dtoa(ptr noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @js_byte_array_to_string(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !46
  %i.c = add i64 %1, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = add nsw i32 %2, 1                        ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = load i64, ptr %i.d, align 8
  %i.h = lshr i64 %i.g, 4
  %.not = icmp ult i64 %i.h, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.2, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.js_byte_array_to_string) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 776
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 1
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !51    ; 6 uses
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp ult i8 %i.o, -64
  br i1 %i.q, label %utf8_char_len.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i8 %i.o, -32
  br i1 %i.r, label %utf8_char_len.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp samesign ult i8 %i.o, -16
  br i1 %i.s, label %utf8_char_len.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp samesign ult i8 %i.o, -8
  %..i = select i1 %i.t, i32 4, i32 1
  br label %utf8_char_len.exit

utf8_char_len.exit:                               ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ 3, %bb.g ], [ 1, %bb.e ], [ %..i, %bb.h ], [ 2, %bb.f ]
  %i.u = icmp eq i32 %.0.i, %2
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %utf8_char_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.v = icmp sgt i8 %i.o, -1
  br i1 %i.v, label %utf8_get.exit, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @__utf8_get(ptr noundef nonnull %i.n, ptr noundef nonnull %i.b) #31
  br label %utf8_get.exit

utf8_get.exit:                                    ; preds = %bb.i, %bb.j
  %.0.i18 = phi i32 [ %i.w, %bb.j ], [ %i.p, %bb.i ]
  %i.x = shl i32 %.0.i18, 5
  %i.y = or disjoint i32 %i.x, 27
  %i.z = zext i32 %i.y to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.l

bb.k:                                             ; preds = %utf8_char_len.exit
  call fastcc void @js_shrink_byte_array(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.e) #28
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = and i64 %i.aa, 1
  %i.ac = shl i32 %3, 5
  %i.ad = and i32 %i.ac, 32
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = or disjoint i64 %i.ab, %i.ae
  %i.ag = sext i32 %2 to i64
  %i.ah = shl nsw i64 %i.ag, 7
  %i.ai = or disjoint i64 %i.af, %i.ah
  %i.aj = or disjoint i64 %i.ai, 6
  store i64 %i.aj, ptr %i.d, align 8
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %utf8_get.exit, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %i.z, %utf8_get.exit ], [ %i.ak, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @js_shrink_byte_array(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = icmp eq i64 %i.a, 7
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %.not = icmp ult i64 %i.g, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.2, i32 noundef 2343, ptr noundef nonnull @__PRETTY_FUNCTION__.js_shrink_byte_array) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = tail call fastcc i32 @get_mblock_size(i64 %i.f) #28
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.f, label %js_free.exit

bb.f:                                             ; preds = %bb.e
  store ptr %i.d, ptr %i.l, align 8, !tbaa !44
  br label %js_free.exit

js_free.exit:                                     ; preds = %bb.e, %bb.f
  store i64 7, ptr %1, align 8, !tbaa !46
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.o = add i32 %2, 8
  %i.p = tail call fastcc ptr @js_shrink(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef %i.o) #28 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = shl nuw nsw i64 %i.e, 4
  %i.s = and i64 %i.q, 15
  %i.t = or disjoint i64 %i.s, %i.r
  store i64 %i.t, ptr %i.p, align 8
  br label %bb.h

bb.h:                                             ; preds = %js_free.exit, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noundef ptr @js_shrink(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = add i32 %2, 7
  %i.b = and i32 %i.a, -8                         ; 5 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %js_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %1, align 8
  %i.d = tail call fastcc i32 @get_mblock_size(i64 %.val.i) #28
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.d, label %js_free.exit

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.g, align 8, !tbaa !44
  br label %js_free.exit

bb.e:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  %i.j = tail call fastcc i32 @get_mblock_size(i64 %.val) #28 ; 3 uses
  %.not = icmp ugt i32 %i.b, %i.j
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.2, i32 noundef 609, ptr noundef nonnull @__PRETTY_FUNCTION__.js_shrink) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %js_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = sub nuw i32 %i.j, %i.b
  %i.m = zext i32 %i.b to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = zext i32 %i.l to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = and i64 %i.p, 8589934576
  %i.r = add nsw i64 %i.q, -16
  store i64 %i.r, ptr %i.n, align 8
  br label %js_free.exit

js_free.exit:                                     ; preds = %bb.d, %bb.c, %bb.b, %bb.g, %bb.h
  %.0 = phi ptr [ %1, %bb.g ], [ %1, %bb.h ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @JS_MakeUniqueString(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.JSGCRef, align 8            ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.JSGCRef, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = and i64 %1, 7
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %1, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 30
  %or.cond = icmp eq i64 %i.h, 6
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51    ; 2 uses
  %.not73 = icmp eq i8 %i.j, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_7
begin_hunk_8_@next_token:bb.a

bb.at:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 135, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.au:                                            ; preds = %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 145, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.av:                                            ; preds = %.backedge
  %i.fc = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !51
  switch i8 %i.fd, label %bb.cd [
    i8 61, label %bb.aw
    i8 45, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 136, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ax:                                            ; preds = %bb.av
  %i.ff = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 144, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ay:                                            ; preds = %.backedge
  %i.fg = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !51
  switch i8 %i.fh, label %bb.cd [
    i8 61, label %bb.az
    i8 60, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.fi = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 150, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ba:                                            ; preds = %bb.ay
  %i.fj = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !51
  %i.fl = icmp eq i8 %i.fk, 61
  br i1 %i.fl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fm = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 137, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bc:                                            ; preds = %bb.ba
  store i32 146, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bd:                                            ; preds = %.backedge
  %i.fn = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !51
  switch i8 %i.fo, label %bb.cd [
    i8 61, label %bb.be
    i8 62, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.fp = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 152, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bf:                                            ; preds = %bb.bd
  %i.fq = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !51
  switch i8 %i.fr, label %bb.bk [
    i8 62, label %bb.bg
    i8 61, label %bb.bj
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !51
  %i.fu = icmp eq i8 %i.ft, 61
  br i1 %i.fu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fv = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 4
  store i32 139, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bi:                                            ; preds = %bb.bg
  store i32 148, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bj:                                            ; preds = %bb.bf
  %i.fw = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 138, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bk:                                            ; preds = %bb.bf
  store i32 147, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bl:                                            ; preds = %.backedge
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !51
  %i.fz = icmp eq i8 %i.fy, 61
  br i1 %i.fz, label %bb.bm, label %bb.cd

bb.bm:                                            ; preds = %bb.bl
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !51
  %i.gc = icmp eq i8 %i.gb, 61
  br i1 %i.gc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 154, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bo:                                            ; preds = %bb.bm
  store i32 153, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bp:                                            ; preds = %.backedge
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !51
  %i.gg = icmp eq i8 %i.gf, 61
  br i1 %i.gg, label %bb.bq, label %bb.cd

bb.bq:                                            ; preds = %bb.bp
  %i.gh = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !51
  %i.gj = icmp eq i8 %i.gi, 61
  br i1 %i.gj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gk = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 3
  store i32 156, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bs:                                            ; preds = %bb.bq
  store i32 155, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bt:                                            ; preds = %.backedge
  %i.gl = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !51
  switch i8 %i.gm, label %bb.cd [
    i8 61, label %bb.bu
    i8 38, label %bb.bv
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.gn = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 140, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bv:                                            ; preds = %bb.bt
  %i.go = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 157, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.bw:                                            ; preds = %.backedge
  %i.gp = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !51
  %i.gr = icmp eq i8 %i.gq, 61
  br i1 %i.gr, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 141, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.by:                                            ; preds = %.backedge
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !51
  switch i8 %i.gu, label %bb.cd [
    i8 61, label %bb.bz
    i8 124, label %bb.ca
  ]

bb.bz:                                            ; preds = %bb.by
  %i.gv = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 142, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.gw = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 2
  store i32 158, ptr %i.h, align 8, !tbaa !119
  br label %bb.ce

bb.cb:                                            ; preds = %.backedge
  %i.gx = icmp slt i8 %i.s, 0
  br i1 %i.gx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.156) #34
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt, %bb.bd, %bb.ay, %bb.av, %bb.as, %bb.al, %bb.cb, %bb.bw, %bb.bp, %bb.bl, %bb.aq, %bb.af
  %3 = phi i8 [ 124, %bb.by ], [ 38, %bb.bt ], [ 62, %bb.bd ], [ 60, %bb.ay ], [ 45, %bb.av ], [ 43, %bb.as ], [ 42, %bb.al ], [ %i.s, %bb.cb ], [ 94, %bb.bw ], [ 33, %bb.bp ], [ 61, %bb.bl ], [ 37, %bb.aq ], [ 46, %bb.af ]
  %i.gy = zext nneg i8 %3 to i32
  store i32 %i.gy, ptr %i.h, align 8, !tbaa !119
  %i.gz = getelementptr inbounds nuw i8, ptr %storemerge86233, i64 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bz, %bb.ca, %bb.bu, %bb.bv, %bb.bs, %bb.br, %bb.bo, %bb.bn, %bb.be, %bb.bi, %bb.bh, %bb.bk, %bb.bj, %bb.az, %bb.bb, %bb.bc, %bb.aw, %bb.ax, %bb.at, %bb.au, %bb.am, %bb.ao, %bb.ap, %bb.q, %bb.t, %bb.s, %bb.cd, %bb.bx, %bb.ar, %bb.ak, %js_parse_ident.exit, %bb.c, %bb.b
  %i.ha = phi ptr [ %i.k, %bb.bz ], [ %i.k, %bb.ca ], [ %i.k, %bb.bu ], [ %i.k, %bb.bv ], [ %i.k, %bb.bs ], [ %i.k, %bb.br ], [ %i.k, %bb.bo ], [ %i.k, %bb.bn ], [ %i.k, %bb.be ], [ %i.k, %bb.bi ], [ %i.k, %bb.bh ], [ %i.k, %bb.bk ], [ %i.k, %bb.bj ], [ %i.k, %bb.az ], [ %i.k, %bb.bb ], [ %i.k, %bb.bc ], [ %i.k, %bb.aw ], [ %i.k, %bb.ax ], [ %i.k, %bb.at ], [ %i.k, %bb.au ], [ %i.k, %bb.am ], [ %i.k, %bb.ao ], [ %i.k, %bb.ap ], [ %i.az, %bb.q ], [ %i.k, %bb.t ], [ %i.k, %bb.s ], [ %i.k, %bb.cd ], [ %i.k, %bb.bx ], [ %i.k, %bb.ar ], [ %.pre317, %bb.ak ], [ %i.dk, %js_parse_ident.exit ], [ %i.z, %bb.c ], [ %i.k, %bb.b ]
  %i.hb = phi ptr [ %i.gv, %bb.bz ], [ %i.gw, %bb.ca ], [ %i.gn, %bb.bu ], [ %i.go, %bb.bv ], [ %i.gh, %bb.bs ], [ %i.gk, %bb.br ], [ %i.ga, %bb.bo ], [ %i.gd, %bb.bn ], [ %i.fp, %bb.be ], [ %i.fs, %bb.bi ], [ %i.fv, %bb.bh ], [ %i.fq, %bb.bk ], [ %i.fw, %bb.bj ], [ %i.fi, %bb.az ], [ %i.fm, %bb.bb ], [ %i.fj, %bb.bc ], [ %i.fe, %bb.aw ], [ %i.ff, %bb.ax ], [ %i.fa, %bb.at ], [ %i.fb, %bb.au ], [ %i.ep, %bb.am ], [ %i.et, %bb.ao ], [ %i.eq, %bb.ap ], [ %i.bc, %bb.q ], [ %i.at, %bb.t ], [ %i.be, %bb.s ], [ %i.gz, %bb.cd ], [ %i.gs, %bb.bx ], [ %i.ex, %bb.ar ], [ %.pre, %bb.ak ], [ %i.dl, %js_parse_ident.exit ], [ %i.ac, %bb.c ], [ %storemerge86233, %bb.b ]
  %i.hc = ptrtoaddr ptr %i.hb to i64
  %i.hd = ptrtoaddr ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = trunc i64 %i.he to i32
  store i32 %i.hf, ptr %i.c, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_op_pos(ptr noundef initializes((92, 104)) %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.b, ptr %i.c, align 4, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126  ; 5 uses
  %i.h = load <2 x i32>, ptr %i.d, align 8, !tbaa !45
  store <2 x i32> %i.h, ptr %i.e, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 3 uses
  %.not.i.i = icmp slt i32 %2, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = sub nsw i32 %2, %i.g
  %i.n = zext nneg i32 %i.m to i64
  %.not.i.i.i = icmp eq i32 %2, %i.g
  br i1 %.not.i.i.i, label %get_line_col_delta.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.01318.i.i.i = phi i32 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ]
  %.01417.i.i.i = phi i32 [ %.115.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.019.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !51    ; 2 uses
  %i.q = icmp eq i8 %i.p, 10                      ; 2 uses
  %or.cond.i.i.i = icmp sgt i8 %i.p, -65
  %i.r = zext i1 %or.cond.i.i.i to i32
  %spec.select.i.i.i = add nsw i32 %.01318.i.i.i, %i.r
  %i.s = zext i1 %i.q to i32
  %.115.i.i.i = add nuw nsw i32 %.01417.i.i.i, %i.s ; 2 uses
  %.1.i.i.i = select i1 %i.q, i32 0, i32 %spec.select.i.i.i ; 2 uses
  %i.t = add nuw nsw i64 %.019.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.t, %i.n
  br i1 %exitcond.not.i.i.i, label %get_line_col_delta.exit.i, label %.lr.ph.i.i.i, !llvm.loop !12

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.u
  %i.w = sub nsw i32 %i.g, %2
  %i.x = zext nneg i32 %i.w to i64
  br label %.lr.ph.i31.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %bb.c
  %.019.i32.i.i = phi i64 [ %i.ad, %.lr.ph.i31.i.i ], [ 0, %bb.c ] ; 2 uses
  %.01318.i33.i.i = phi i32 [ %.1.i38.i.i, %.lr.ph.i31.i.i ], [ 0, %bb.c ]
  %.01417.i34.i.i = phi i32 [ %.115.i37.i.i, %.lr.ph.i31.i.i ], [ 0, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.019.i32.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !51    ; 2 uses
  %i.aa = icmp eq i8 %i.z, 10                     ; 2 uses
  %or.cond.i35.i.i = icmp sgt i8 %i.z, -65
  %i.ab = zext i1 %or.cond.i35.i.i to i32
  %spec.select.i36.i.i = add nsw i32 %.01318.i33.i.i, %i.ab
  %i.ac = zext i1 %i.aa to i32
  %.115.i37.i.i = add nuw nsw i32 %.01417.i34.i.i, %i.ac ; 3 uses
  %.1.i38.i.i = select i1 %i.aa, i32 0, i32 %spec.select.i36.i.i ; 2 uses
  %i.ad = add nuw i64 %.019.i32.i.i, 1            ; 2 uses
  %exitcond.not.i39.i.i = icmp eq i64 %i.ad, %i.x
  br i1 %exitcond.not.i39.i.i, label %get_line_col.exit42.i.i, label %.lr.ph.i31.i.i, !llvm.loop !12

get_line_col.exit42.i.i:                          ; preds = %.lr.ph.i31.i.i
  %i.ae = sub nsw i32 0, %.115.i37.i.i            ; 3 uses
  %i.af = sub nsw i32 0, %.1.i38.i.i
  %.not29.i.i = icmp eq i32 %.115.i37.i.i, 0
  br i1 %.not29.i.i, label %get_line_col_delta.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %get_line_col.exit42.i.i
  %i.ag = icmp sgt i32 %2, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i, label %get_line_col_delta.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %i.ah = zext nneg i32 %2 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ah, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.04551.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %spec.select.i.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !51  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 10
  br i1 %i.ak, label %get_line_col_delta.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %or.cond.i.i = icmp sgt i8 %i.aj, -65
  %i.al = zext i1 %or.cond.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %.04551.i.i, %i.al ; 2 uses
  %i.am = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i, label %get_line_col_delta.exit.i, !llvm.loop !400

get_line_col_delta.exit.i:                        ; preds = %.lr.ph.i.i.i, %bb.d, %.lr.ph.i.i, %.preheader.i.i, %get_line_col.exit42.i.i, %bb.b
  %.2.i.i = phi i32 [ %i.af, %get_line_col.exit42.i.i ], [ 0, %bb.b ], [ %.04551.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ], [ %spec.select.i.i, %bb.d ], [ %.1.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.022.i.i = phi i32 [ 0, %get_line_col.exit42.i.i ], [ 0, %bb.b ], [ %i.ae, %bb.d ], [ %i.ae, %.preheader.i.i ], [ %i.ae, %.lr.ph.i.i ], [ %.115.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.an = shl i32 %.022.i.i, 1
  %.neg.i.i = ashr i32 %.022.i.i, 31
  %i.ao = xor i32 %i.an, %.neg.i.i
  tail call fastcc void @put_ugolomb(ptr noundef %0, i32 noundef %i.ao) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 1095216660480
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %emit_pc2line.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %get_line_col_delta.exit.i
  %i.as = icmp eq i32 %.022.i.i, 0
  %i.at = shl i32 %.2.i.i, 1
  %.neg.i10.i = ashr i32 %.2.i.i, 31
  %i.au = xor i32 %i.at, %.neg.i10.i
  %.sink.i = select i1 %i.as, i32 %i.au, i32 %.2.i.i
  tail call fastcc void @put_ugolomb(ptr noundef nonnull %0, i32 noundef %.sink.i) #28
  br label %emit_pc2line.exit

emit_pc2line.exit:                                ; preds = %get_line_col_delta.exit.i, %.sink.split.i
  store i32 %2, ptr %i.f, align 4, !tbaa !126
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !121
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !128
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  store i8 %1, ptr %i.bd, align 1, !tbaa !51
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @put_ugolomb(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = add i32 %1, 1                            ; 2 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true) ; 3 uses
  %.not = icmp eq i32 %i.b, 31
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %i.b, 31
  tail call fastcc void @pc2line_put_bits(ptr noundef %0, i32 noundef %i.c, i32 noundef 0) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = sub nuw nsw i32 32, %i.b
  tail call fastcc void @pc2line_put_bits(ptr noundef %0, i32 noundef %i.d, i32 noundef %i.a) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pc2line_put_bits(ptr noundef %0, i32 noundef range(i32 1, 2147483647) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ugt i32 %1, 25
  br i1 %i.a, label %bb.b, label %bb.c, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -25
  %i.c = lshr i32 %2, 25
  tail call fastcc void @pc2line_put_bits_short(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.c) #28
  %i.d = and i32 %2, 33554431
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.012 = phi i32 [ 25, %bb.b ], [ %1, %bb.a ]
  %.0 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]
  tail call fastcc void @pc2line_put_bits_short(ptr noundef %0, i32 noundef %.012, i32 noundef %.0) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pc2line_put_bits_short(ptr noundef %0, i32 noundef range(i32 1, 2147483622) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120
end_hunk_8
begin_hunk_9_@js_parse_function_decl:bb.a
  call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 2) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !121
  %i.bk = add i64 %i.bj, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !128 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  store i16 %i.bh, ptr %i.bq, align 1, !tbaa !89
  %i.br = add i32 %i.bo, 2
  store i32 %i.br, ptr %i.bn, align 8, !tbaa !128
  br label %bb.o

bb.l:                                             ; preds = %js_parse_expect1.exit59
  %i.bs = load i64, ptr %3, align 8, !tbaa !40
  %i.bt = call fastcc i32 @define_var(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.bs) #28 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !123
  %i.bw = add i32 %i.bv, 6
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !123
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !45
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !120
  %i.cb = add i64 %i.ca, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = lshr i32 %i.ce, 7
  %i.cg = add i32 %i.cf, %i.bt
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ %i.cg, %bb.m ], [ %i.bt, %bb.l ]
  %i.ch = load i64, ptr %4, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = shl i32 %.0, 7
  %i.cm = add i32 %i.cl, 128
  %i.cn = and i32 %i.cm, 8388480
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = and i64 %i.ck, -8388481
  %i.cq = or disjoint i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.cj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.cr = load ptr, ptr %i.p, align 8, !tbaa !39
  store ptr %i.cr, ptr %i.n, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_op_param(ptr noundef initializes((92, 104)) %0, i8 noundef zeroext range(i8 24, 28) %1, i32 noundef range(i32 -1073741824, 1073741825) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  tail call fastcc void @emit_op_pos(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %3) #28
  %i.a = zext nneg i8 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.d = load i8, ptr %i.c, align 1, !tbaa !405
  switch i8 %i.d, label %bb.c [
    i8 0, label %bb.d
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %2 to i16
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 2) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  store i16 %i.e, ptr %i.n, align 1, !tbaa !89
  %i.o = add i32 %i.l, 2
  store i32 %i.o, ptr %i.k, align 8, !tbaa !128
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 8550, ptr noundef nonnull @__PRETTY_FUNCTION__.emit_op_param) #27
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @js_skip_parens(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 16, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %1, null
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.025 = phi i32 [ 1, %bb.a ], [ %.126, %bb.n ]  ; 10 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.2, %bb.n ]      ; 6 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  switch i32 %i.d, label %bb.n [
    i32 40, label %bb.e
    i32 91, label %bb.c
    i32 123, label %bb.d
    i32 41, label %bb.h
    i32 93, label %bb.h
    i32 125, label %bb.h
    i32 160, label %bb.j
    i32 130, label %bb.k
    i32 59, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.024 = phi i8 [ 125, %bb.d ], [ 93, %bb.c ], [ 41, %bb.b ]
  %i.e = icmp samesign ugt i32 %.025, 127
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.177) #34
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = zext nneg i32 %.025 to i64
  %i.g = add nuw nsw i32 %.025, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 %.024, ptr %i.h, align 1, !tbaa !51
  br label %bb.n

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = add nsw i32 %.025, -1                    ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !51
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %.not30 = icmp eq i32 %i.d, %i.m
  br i1 %.not30, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef %i.m) #34
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %.025 to i64
  %i.o = getelementptr i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = zext i8 %i.q to i32
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.167, i32 noundef %i.r) #34
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !109
  %i.u = getelementptr i8, ptr %i.t, i64 96
  %.val = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 968
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 1
  %i.y = icmp eq i64 %i.s, %i.x
  %i.z = zext i1 %i.y to i32
  %spec.select = or i32 %.0, %i.z                 ; 3 uses
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i64, ptr %1, align 8, !tbaa !46
  %i.ab = icmp eq i64 %i.s, %i.aa
  %i.ac = or i32 %spec.select, 2
  %spec.select31 = select i1 %i.ab, i32 %i.ac, i32 %spec.select
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.ad = icmp eq i32 %.025, 2
  %i.ae = or i32 %.0, 4
  %spec.select33 = select i1 %i.ad, i32 %i.ae, i32 %.0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.b
  %.126 = phi i32 [ %.025, %bb.b ], [ %i.g, %bb.g ], [ %i.i, %bb.h ], [ %.025, %bb.l ], [ %.025, %bb.m ], [ %.025, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.0, %bb.b ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %spec.select31, %bb.l ], [ %spec.select33, %bb.m ], [ %spec.select, %bb.k ] ; 2 uses
  tail call fastcc void @next_token(ptr noundef nonnull %0) #28
  %2 = icmp samesign ult i32 %.126, 2
  br i1 %2, label %bb.o, label %bb.b

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -65536, -2147483648) i32 @define_var(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 65280
  %.not = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %i.n = load i16, ptr %i.m, align 2, !tbaa !127  ; 2 uses
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %wide.trip.count.i.i = zext i16 %i.n to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 4 uses
  %.idx.i.i = shl nuw nsw i64 %indvars.iv.i.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = icmp eq i64 %i.p, %2
  br i1 %i.q, label %find_ext_var.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_ext_var.exit.thread, label %.lr.ph.i.i, !llvm.loop !14

find_ext_var.exit.thread:                         ; preds = %bb.c, %bb.b
  %i.r = tail call fastcc range(i32 -1, 65535) i32 @add_func_ext_var(ptr noundef %0, i64 noundef %i.e, i64 noundef %2, i32 noundef 196609) #28
  br label %bb.f

find_ext_var.exit:                                ; preds = %.lr.ph.i.i
  %i.s = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.t = shl nuw i64 %indvars.iv.i.i, 1
  %i.u = and i64 %i.t, 4294967294
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 393218, ptr %i.w, align 8, !tbaa !46
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.g, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = lshr i32 %i.y, 7
  %i.aa = and i32 %i.z, 65535                     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  %i.ad = add i64 %i.ac, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %.not.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i, label %find_var.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i16 %i.ah to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ak = icmp eq i64 %i.aj, %2
  br i1 %i.ak, label %find_var.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_var.exit.thread, label %.lr.ph.i, !llvm.loop !13

find_var.exit:                                    ; preds = %.lr.ph.i
  %i.al = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.am = icmp sle i32 %i.aa, %i.al               ; 2 uses
  %i.an = select i1 %i.am, i32 %i.aa, i32 0
  %spec.select = sub nsw i32 %i.al, %i.an
  %spec.select30 = zext i1 %i.am to i32
  br label %bb.f

find_var.exit.thread:                             ; preds = %bb.e, %bb.d
  %i.ao = tail call fastcc i32 @add_var(ptr noundef %0, i64 noundef %2) #28
  %i.ap = sub nsw i32 %i.ao, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %find_var.exit, %find_var.exit.thread, %find_ext_var.exit.thread, %find_ext_var.exit
  %.2 = phi i32 [ %i.s, %find_ext_var.exit ], [ %i.r, %find_ext_var.exit.thread ], [ %i.ap, %find_var.exit.thread ], [ %spec.select, %find_var.exit ]
  %.1 = phi i32 [ 2, %find_ext_var.exit ], [ 2, %find_ext_var.exit.thread ], [ 1, %find_var.exit.thread ], [ %spec.select30, %find_var.exit ]
  store i32 %.1, ptr %1, align 4, !tbaa !45
  ret i32 %.2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 65535) i32 @add_var(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = icmp eq i16 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.178) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !120
  %i.f = add i64 %i.e, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  store ptr %2, ptr %i.i, align 8, !tbaa !36
  store i64 %1, ptr %2, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !98
  %i.n = call i16 @llvm.umax.i16(i16 %i.c, i16 3)
  %i.o = zext i16 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = call fastcc noundef i64 @js_resize_value_array2(ptr noundef %i.h, i64 noundef %i.m, i32 noundef %i.p, i32 noundef 0) #28, !inline_history !6 ; 3 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.t = load ptr, ptr %0, align 8, !tbaa !109
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store ptr %i.s, ptr %i.u, align 8, !tbaa !36
  %.not = icmp eq i64 %i.q, 15
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #34
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.a, align 8, !tbaa !120
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 %i.q, ptr %i.y, align 8, !tbaa !98
  %i.z = add i64 %i.q, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i16, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.ad = add i16 %i.ac, 1                        ; 2 uses
  store i16 %i.ad, ptr %i.b, align 8, !tbaa !124
  %i.ae = zext i16 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  store i64 %i.r, ptr %i.af, align 8, !tbaa !46
  %i.ag = zext i16 %i.ad to i32
  %i.ah = add nsw i32 %i.ag, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %i.ah
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 65535) i32 @add_func_ext_var(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 196608, 196610) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSGCRef, align 8            ; 6 uses
  %5 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  %i.d = load i16, ptr %i.c, align 2, !tbaa !127  ; 2 uses
  %i.e = icmp eq i16 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef %0, ptr noundef nonnull @.str.179) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !109    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
end_hunk_9
