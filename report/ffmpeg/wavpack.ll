Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wavpack?download=true
inline.NumInlined: 58
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@wv_get_value:bb.a
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !41
  %i.fi = zext i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.fi, 256              ; 2 uses
  %i.fk = icmp samesign ugt i16 %i.fb, 9
  %i.fl = add nsw i32 %i.fd, -9
  %i.fm = shl nuw nsw i32 %i.fj, %i.fl
  %i.fn = sub nuw nsw i32 9, %i.fd
  %i.fo = lshr i32 %i.fj, %i.fn
  %i.fp = select i1 %i.fk, i32 %i.fm, i32 %i.fo   ; 2 uses
  %i.fq = sub nsw i32 0, %i.fp
  %i.fr = icmp slt i16 %i.fa, 0
  %i.fs = select i1 %i.fr, i32 %i.fq, i32 %i.fp
  br label %wp_exp2.exit.us.i

wp_exp2.exit.us.i:                                ; preds = %bb.al, %.lr.ph59.split.us.i
  %.015.i.us.i = phi i32 [ %i.fs, %bb.al ], [ -2147483648, %.lr.ph59.split.us.i ]
  %i.ft = getelementptr inbounds nuw [28 x i8], ptr %0, i64 %indvars.iv68.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1580
  store i32 %.015.i.us.i, ptr %i.fu, align 4, !tbaa !154
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %wide.trip.count71.i.pre-phi
  br i1 %exitcond72.not.i, label %update_error_limit.exit.thread, label %.lr.ph59.split.us.i, !llvm.loop !152

.lr.ph59.split.i:                                 ; preds = %.lr.ph59.i, %wp_exp2.exit51.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %wp_exp2.exit51.i ], [ 0, %.lr.ph59.i ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv63.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !53
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv63.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !53
  %i.fz = sub nsw i32 %i.fw, %i.fy                ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, -256
  br i1 %i.ga, label %bb.am, label %wp_exp2.exit51.i

bb.am:                                            ; preds = %.lr.ph59.split.i
  %i.gb = trunc i32 %i.fz to i16                  ; 2 uses
  %i.gc = add i16 %i.gb, 256                      ; 2 uses
  %i.gd = icmp sgt i16 %i.gc, -1                  ; 2 uses
  %i.ge = sub i16 -256, %i.gb
  %spec.select.i49.i = select i1 %i.gd, i16 %i.gc, i16 %i.ge ; 2 uses
  %i.gf = ashr i16 %spec.select.i49.i, 8          ; 3 uses
  %i.gg = icmp ugt i16 %i.gf, 31
  br i1 %i.gg, label %wp_exp2.exit51.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gh = zext nneg i16 %i.gf to i32              ; 2 uses
  %i.gi = and i16 %spec.select.i49.i, 255
  %i.gj = zext nneg i16 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @ff_wp_exp2_table, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !41
  %i.gm = zext i8 %i.gl to i32
  %i.gn = or disjoint i32 %i.gm, 256              ; 2 uses
  %i.go = icmp samesign ugt i16 %i.gf, 9
  %i.gp = add nsw i32 %i.gh, -9
  %i.gq = shl nuw nsw i32 %i.gn, %i.gp
  %i.gr = sub nuw nsw i32 9, %i.gh
  %i.gs = lshr i32 %i.gn, %i.gr
  %i.gt = select i1 %i.go, i32 %i.gq, i32 %i.gs   ; 2 uses
  %i.gu = sub nsw i32 0, %i.gt
  %i.gv = select i1 %i.gd, i32 %i.gt, i32 %i.gu
  br label %wp_exp2.exit51.i

wp_exp2.exit51.i:                                 ; preds = %bb.an, %bb.am, %.lr.ph59.split.i
  %.sink.i = phi i32 [ -2147483648, %bb.am ], [ %i.gv, %bb.an ], [ 0, %.lr.ph59.split.i ]
  %i.gw = getelementptr inbounds nuw [28 x i8], ptr %0, i64 %indvars.iv63.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1580
  store i32 %.sink.i, ptr %i.gx, align 4, !tbaa !154
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next64.i, %wide.trip.count71.i.pre-phi
  br i1 %exitcond67.not.i, label %update_error_limit.exit.thread, label %.lr.ph59.split.i, !llvm.loop !152

update_error_limit.exit.thread:                   ; preds = %wp_exp2.exit51.i, %wp_exp2.exit.us.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ao

update_error_limit.exit:                          ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.thread209

bb.ao:                                            ; preds = %update_error_limit.exit.thread, %bb.ab
  %i.gy = load i32, ptr %i.e, align 4, !tbaa !53  ; 9 uses
  %i.gz = ashr i32 %i.gy, 4                       ; 4 uses
  switch i32 %.3, label %bb.as [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 2, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ha = add i32 %i.gy, 126
  %.neg = sdiv i32 %i.ha, -128
  %.neg153 = shl nsw i32 %.neg, 1
  %i.hb = add i32 %.neg153, %i.gy
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !53
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.hc = add nsw i32 %i.gz, 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !53 ; 3 uses
  %i.hf = ashr i32 %i.he, 4
  %i.hg = add i32 %i.gy, 128
  %i.hh = sdiv i32 %i.hg, 128
  %i.hi = mul nsw i32 %i.hh, 5
  %i.hj = add i32 %i.hi, %i.gy
  store i32 %i.hj, ptr %i.e, align 4, !tbaa !53
  %i.hk = add i32 %i.he, 62
  %.neg156 = sdiv i32 %i.hk, -64
  %.neg157 = shl nsw i32 %.neg156, 1
  %i.hl = add i32 %.neg157, %i.he
  store i32 %i.hl, ptr %i.hd, align 4, !tbaa !53
  br label %bb.at

bb.ar:                                            ; preds = %bb.ao
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !53 ; 3 uses
  %i.ho = ashr i32 %i.hn, 4
  %i.hp = add nsw i32 %i.gz, 2
  %i.hq = add nsw i32 %i.hp, %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !53 ; 3 uses
  %i.ht = ashr i32 %i.hs, 4
  %i.hu = add i32 %i.gy, 128
  %i.hv = sdiv i32 %i.hu, 128
  %i.hw = mul nsw i32 %i.hv, 5
  %i.hx = add i32 %i.hw, %i.gy
  store i32 %i.hx, ptr %i.e, align 4, !tbaa !53
  %i.hy = add i32 %i.hn, 64
  %i.hz = sdiv i32 %i.hy, 64
  %i.ia = mul nsw i32 %i.hz, 5
  %i.ib = add i32 %i.ia, %i.hn
  store i32 %i.ib, ptr %i.hm, align 4, !tbaa !53
  %i.ic = add i32 %i.hs, 30
  %.neg154 = sdiv i32 %i.ic, -32
  %.neg155 = shl nsw i32 %.neg154, 1
  %i.id = add i32 %.neg155, %i.hs
  store i32 %i.id, ptr %i.hr, align 4, !tbaa !53
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !53 ; 3 uses
  %i.ig = ashr i32 %i.if, 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !53 ; 3 uses
  %i.ij = ashr i32 %i.ii, 4                       ; 2 uses
  %i.ik = add nsw i32 %i.ij, 1
  %i.il = add nsw i32 %.3, -2
  %i.im = mul i32 %i.ik, %i.il
  %i.in = add nsw i32 %i.gz, 2
  %i.io = add nsw i32 %i.in, %i.ig
  %i.ip = add i32 %i.io, %i.im
  %i.iq = add i32 %i.gy, 128
  %i.ir = sdiv i32 %i.iq, 128
  %i.is = mul nsw i32 %i.ir, 5
  %i.it = add i32 %i.is, %i.gy
  store i32 %i.it, ptr %i.e, align 4, !tbaa !53
  %i.iu = add i32 %i.if, 64
  %i.iv = sdiv i32 %i.iu, 64
  %i.iw = mul nsw i32 %i.iv, 5
  %i.ix = add i32 %i.iw, %i.if
  store i32 %i.ix, ptr %i.ie, align 4, !tbaa !53
  %i.iy = add i32 %i.ii, 32
  %i.iz = sdiv i32 %i.iy, 32
  %i.ja = mul nsw i32 %i.iz, 5
  %i.jb = add i32 %i.ja, %i.ii
  store i32 %i.jb, ptr %i.ih, align 4, !tbaa !53
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.as, %bb.ar, %bb.ap
  %.0128 = phi i32 [ %i.hc, %bb.aq ], [ %i.hq, %bb.ar ], [ %i.ip, %bb.as ], [ 0, %bb.ap ] ; 3 uses
  %.0126 = phi i32 [ %i.hf, %bb.aq ], [ %i.ht, %bb.ar ], [ %i.ij, %bb.as ], [ %i.gz, %bb.ap ] ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !154 ; 3 uses
  %.not158 = icmp eq i32 %i.jd, 0
  br i1 %.not158, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.je = icmp eq i32 %.0126, 0
  br i1 %i.je, label %get_tail.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not.i164 = icmp ult i32 %.0126, 65536         ; 2 uses
  %i.jf = lshr i32 %.0126, 16
  %spec.select.i165 = select i1 %.not.i164, i32 %.0126, i32 %i.jf ; 3 uses
  %spec.select12.i166 = select i1 %.not.i164, i32 0, i32 16 ; 2 uses
  %.not11.i167 = icmp samesign ult i32 %spec.select.i165, 256 ; 2 uses
  %i.jg = lshr i32 %spec.select.i165, 8
  %i.jh = or disjoint i32 %spec.select12.i166, 8
  %.110.i168 = select i1 %.not11.i167, i32 %spec.select.i165, i32 %i.jg
  %.1.i169 = select i1 %.not11.i167, i32 %spec.select12.i166, i32 %i.jh
  %i.ji = zext nneg i32 %.110.i168 to i64
  %i.jj = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !41
  %i.jl = zext i8 %i.jk to i32
  %i.jm = add nuw nsw i32 %.1.i169, %i.jl         ; 7 uses
  %i.jn = add nuw nsw i32 %i.jm, 1
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = shl nuw i64 1, %i.jo
  %4 = xor i32 %.0126, -1
  %5 = trunc i64 %i.jp to i32
  %6 = add i32 %5, %4                             ; 2 uses
  %.not.i193 = icmp eq i32 %i.jm, 0
  br i1 %.not.i193, label %get_bits_long.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jq = icmp samesign ult i32 %i.jm, 26
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !81 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !80 ; 3 uses
  %i.jv = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.jw = lshr i32 %i.js, 3
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 1, !tbaa !41
  %i.ka = and i32 %i.js, 7
  %i.kb = lshr i32 %i.jz, %i.ka                   ; 2 uses
  br i1 %i.jq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kc = sub nuw nsw i32 32, %i.jm
  %i.kd = lshr i32 -1, %i.kc
  %i.ke = and i32 %i.kb, %i.kd
  %i.kf = add i32 %i.js, %i.jm
  %i.kg = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 %i.kf)
  store i32 %i.kg, ptr %i.jr, align 8, !tbaa !81
  br label %get_bits_long.exit

bb.ay:                                            ; preds = %bb.aw
  %i.kh = and i32 %i.kb, 65535
  %i.ki = add i32 %i.js, 16
  %i.kj = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 %i.ki) ; 4 uses
  store i32 %i.kj, ptr %i.jr, align 8, !tbaa !81
  %i.kk = add nsw i32 %i.jm, -16
  %i.kl = lshr i32 %i.kj, 3
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 1, !tbaa !41
  %i.kp = and i32 %i.kj, 7
  %i.kq = lshr i32 %i.ko, %i.kp
  %i.kr = sub nsw i32 48, %i.jm
  %i.ks = lshr i32 -1, %i.kr
  %i.kt = and i32 %i.kq, %i.ks
  %i.ku = add i32 %i.kk, %i.kj
  %i.kv = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 %i.ku)
  store i32 %i.kv, ptr %i.jr, align 8, !tbaa !81
  %i.kw = shl i32 %i.kt, 16
  %i.kx = or disjoint i32 %i.kw, %i.kh
  br label %get_bits_long.exit

get_bits_long.exit:                               ; preds = %bb.av, %bb.ax, %bb.ay
  %.0.i194 = phi i32 [ %i.ke, %bb.ax ], [ %i.kx, %bb.ay ], [ 0, %bb.av ] ; 3 uses
  %.not.i = icmp slt i32 %.0.i194, %6
  br i1 %.not.i, label %get_tail.exit, label %bb.az

bb.az:                                            ; preds = %get_bits_long.exit
  %i.ky = shl i32 %.0.i194, 1
  %i.kz = sub i32 %i.ky, %6
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !81 ; 4 uses
  %i.lc = load ptr, ptr %1, align 8, !tbaa !78
  %i.ld = lshr i32 %i.lb, 3
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !41
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !80
  %i.lj = icmp slt i32 %i.lb, %i.li
  %i.lk = zext i1 %i.lj to i32
  %spec.select.i195 = add i32 %i.lb, %i.lk
  %i.ll = zext i8 %i.lg to i32
  %i.lm = and i32 %i.lb, 7
  %i.ln = lshr i32 %i.ll, %i.lm
  %i.lo = and i32 %i.ln, 1
  store i32 %spec.select.i195, ptr %i.la, align 8, !tbaa !81
  %i.lp = add i32 %i.kz, %i.lo
  br label %get_tail.exit

get_tail.exit:                                    ; preds = %bb.au, %get_bits_long.exit, %bb.az
  %.012.i = phi i32 [ 0, %bb.au ], [ %i.lp, %bb.az ], [ %.0.i194, %get_bits_long.exit ]
  %i.lq = add i32 %.012.i, %.0128
  %i.lr = getelementptr i8, ptr %1, i64 8
  %.val173 = load i32, ptr %i.lr, align 8, !tbaa !81 ; 2 uses
  %i.ls = getelementptr i8, ptr %1, i64 12
  %.val174 = load i32, ptr %i.ls, align 4, !tbaa !79
  %.not216 = icmp sgt i32 %.val174, %.val173
  br i1 %.not216, label %.thread212, label %.thread209

bb.ba:                                            ; preds = %bb.at
  %i.lt = shl i32 %.0128, 1
  %i.lu = add i32 %i.lt, %.0126
  %.0.in227 = add i32 %i.lu, 1
  %.0228 = lshr i32 %.0.in227, 1                  ; 2 uses
  %i.lv = icmp sgt i32 %.0126, %i.jd
  %i.lw = getelementptr i8, ptr %1, i64 8         ; 3 uses
  br i1 %i.lv, label %.lr.ph, label %..thread212_crit_edge

..thread212_crit_edge:                            ; preds = %bb.ba
  %.pre240 = load i32, ptr %i.lw, align 8, !tbaa !81
  br label %.thread212

.lr.ph:                                           ; preds = %bb.ba
  %i.lx = getelementptr i8, ptr %1, i64 12
  %.val172 = load i32, ptr %i.lx, align 4, !tbaa !79
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.promoted = load i32, ptr %i.lw, align 8, !tbaa !81
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.bc
  %spec.select.i196232 = phi i32 [ %.promoted, %.lr.ph ], [ %spec.select.i196, %bb.bc ] ; 5 uses
  %.0231 = phi i32 [ %.0228, %.lr.ph ], [ %.0, %bb.bc ] ; 3 uses
  %.1127230 = phi i32 [ %.0126, %.lr.ph ], [ %.2, %bb.bc ]
  %.1129229 = phi i32 [ %.0128, %.lr.ph ], [ %.2130, %bb.bc ] ; 3 uses
  %.not215 = icmp sgt i32 %.val172, %spec.select.i196232
  br i1 %.not215, label %bb.bc, label %.thread209

bb.bc:                                            ; preds = %bb.bb
  %i.lz = load ptr, ptr %1, align 8, !tbaa !78
  %i.ma = lshr i32 %spec.select.i196232, 3
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !41
  %i.me = load i32, ptr %i.ly, align 8, !tbaa !80
  %i.mf = icmp slt i32 %spec.select.i196232, %i.me
  %i.mg = zext i1 %i.mf to i32
  %spec.select.i196 = add nsw i32 %spec.select.i196232, %i.mg ; 3 uses
  %i.mh = zext i8 %i.md to i32
  %i.mi = and i32 %spec.select.i196232, 7
  store i32 %spec.select.i196, ptr %i.lw, align 8, !tbaa !81
  %i.mj = shl nuw nsw i32 1, %i.mi
  %i.mk = and i32 %i.mj, %i.mh
  %.not159 = icmp eq i32 %i.mk, 0                 ; 2 uses
  %.neg160 = add i32 %.1127230, %.1129229
  %i.ml = sub i32 %.neg160, %.0231
  %i.mm = xor i32 %.1129229, -1
  %i.mn = add i32 %.0231, %i.mm
  %.2130 = select i1 %.not159, i32 %.1129229, i32 %.0231 ; 2 uses
  %.2 = select i1 %.not159, i32 %i.mn, i32 %i.ml  ; 3 uses
  %i.mo = shl i32 %.2130, 1
  %i.mp = add i32 %i.mo, %.2
  %.0.in = add i32 %i.mp, 1
  %.0 = lshr i32 %.0.in, 1                        ; 2 uses
  %i.mq = icmp sgt i32 %.2, %i.jd
  br i1 %i.mq, label %bb.bb, label %.thread212, !llvm.loop !153

.thread212:                                       ; preds = %bb.bc, %..thread212_crit_edge, %get_tail.exit
  %i.mr = phi i32 [ %.val173, %get_tail.exit ], [ %.pre240, %..thread212_crit_edge ], [ %spec.select.i196, %bb.bc ] ; 4 uses
  %.1 = phi i32 [ %i.lq, %get_tail.exit ], [ %.0228, %..thread212_crit_edge ], [ %.0, %bb.bc ] ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mt = load ptr, ptr %1, align 8, !tbaa !78
  %i.mu = lshr i32 %i.mr, 3
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !41
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !80
  %i.na = icmp slt i32 %i.mr, %i.mz
  %i.nb = zext i1 %i.na to i32
  %spec.select.i197 = add i32 %i.mr, %i.nb
  %i.nc = zext i8 %i.mx to i32
  %i.nd = and i32 %i.mr, 7
  %i.ne = lshr i32 %i.nc, %i.nd
  %i.nf = and i32 %i.ne, 1
  store i32 %spec.select.i197, ptr %i.ms, align 8, !tbaa !81
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 1540
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !65
  %.not161 = icmp eq i32 %i.nh, 0
  br i1 %.not161, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %.thread212
  switch i32 %.1, label %bb.bf [
    i32 0, label %wp_log2.exit
    i32 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  br label %wp_log2.exit

bb.bf:                                            ; preds = %bb.bd
  %i.ni = lshr i32 %.1, 9
  %i.nj = add i32 %i.ni, %.1                      ; 5 uses
  %.not.i163 = icmp ult i32 %i.nj, 65536          ; 2 uses
  %i.nk = lshr i32 %i.nj, 16
  %spec.select.i = select i1 %.not.i163, i32 %i.nj, i32 %i.nk ; 3 uses
  %spec.select12.i = select i1 %.not.i163, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.nl = lshr i32 %spec.select.i, 8
  %i.nm = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.nl
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.nm
  %i.nn = zext nneg i32 %.110.i to i64
  %i.no = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.nn
  %i.np = load i8, ptr %i.no, align 1, !tbaa !41
  %i.nq = zext i8 %i.np to i32
  %i.nr = add nuw nsw i32 %.1.i, %i.nq            ; 4 uses
  %i.ns = icmp samesign ult i32 %i.nr, 8
  %i.nt = shl nuw nsw i32 %i.nr, 8
  %i.nu = add nuw nsw i32 %i.nt, 256              ; 2 uses
  br i1 %i.ns, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.nv = sub nuw nsw i32 8, %i.nr
  %i.nw = shl i32 %i.nj, %i.nv
  %i.nx = and i32 %i.nw, 254
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 2, !tbaa !41
  %i.ob = zext i8 %i.oa to i32
  %i.oc = or disjoint i32 %i.nu, %i.ob
  br label %wp_log2.exit

bb.bh:                                            ; preds = %bb.bf
  %i.od = add nsw i32 %i.nr, -8
  %i.oe = lshr i32 %i.nj, %i.od
  %i.of = and i32 %i.oe, 255
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr @ff_wp_log2_table, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !41
  %i.oj = zext i8 %i.oi to i32
  %i.ok = or disjoint i32 %i.nu, %i.oj
  br label %wp_log2.exit

wp_log2.exit:                                     ; preds = %bb.bd, %bb.be, %bb.bg, %bb.bh
  %.0.i = phi i32 [ 256, %bb.be ], [ %i.oc, %bb.bg ], [ %i.ok, %bb.bh ], [ %.1, %bb.bd ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !67 ; 2 uses
  %i.on = add nsw i32 %i.om, 128
  %i.oo = ashr i32 %i.on, 8
  %i.op = add i32 %i.om, %.0.i
  %i.oq = sub i32 %i.op, %i.oo
  store i32 %i.oq, ptr %i.ol, align 4, !tbaa !67
  br label %bb.bi

bb.bi:                                            ; preds = %wp_log2.exit, %.thread212
  %sext = sub nsw i32 0, %i.nf
  %i.or = xor i32 %.1, %sext
  br label %bb.bl

.thread209:                                       ; preds = %bb.u, %bb.bb, %update_error_limit.exit, %get_unary_0_33.exit.thread, %get_tail.exit, %bb.y, %bb.z, %bb.w, %get_unary_0_33.exit, %bb.k, %bb.i, %bb.j
  %i.os = getelementptr i8, ptr %1, i64 8
  %.val = load i32, ptr %i.os, align 8, !tbaa !81
  %i.ot = getelementptr i8, ptr %1, i64 12
  %.val170 = load i32, ptr %i.ot, align 4, !tbaa !79
  %i.ou = sub nsw i32 %.val170, %.val             ; 2 uses
  %i.ov = icmp slt i32 %i.ou, 1
  br i1 %i.ov, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.thread209
  %i.ow = load ptr, ptr %0, align 8, !tbaa !93
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ow, i32 noundef 16, ptr noundef nonnull @.str.43, i32 noundef %i.ou) #13
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread209
  store i32 1, ptr %3, align 4, !tbaa !53
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi, %bb.m, %bb.g
  %.0134 = phi i32 [ 0, %bb.m ], [ %i.or, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.g ]
end_hunk_0
