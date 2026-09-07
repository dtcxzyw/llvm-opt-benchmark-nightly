Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_blend_to_i1?download=true
inline.NumInlined: 215
inline.NumDeleted: 14
begin_hunk_0_@lv_draw_sw_blend_image_to_i1:bb.a
  %i.ds = sdiv i32 %i.dr, 8
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %.2182241.i, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11  ; 3 uses
  %i.dw = zext i8 %i.dv to i32
  %i.dx = srem i32 %i.dr, 8
  %i.dy = sub nsw i32 7, %i.dx                    ; 2 uses
  %i.dz = lshr i32 %i.dw, %i.dy
  %i.ea = trunc nuw i32 %i.dz to i8
  %i.eb = and i8 %i.ea, 1
  %narrow191.i = sub nsw i8 0, %i.eb              ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0171243.i, i64 %indvars.iv281.i
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !11  ; 4 uses
  %i.ee = zext i8 %i.ed to i16
  %i.ef = icmp eq i8 %i.ed, 0
  br i1 %i.ef, label %lv_color_8_8_mix.exit195.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eg = icmp ugt i8 %i.ed, -4
  br i1 %i.eg, label %lv_color_8_8_mix.exit195.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eh = xor i8 %i.ed, -1
  %i.ei = zext i8 %i.dq to i16
  %i.ej = mul nuw i16 %i.ee, %i.ei
  %i.ek = zext i8 %narrow191.i to i16
  %i.el = zext i8 %i.eh to i16
  %i.em = mul nuw i16 %i.ek, %i.el
  %i.en = add i16 %i.em, %i.ej
  %i.eo = lshr i16 %i.en, 8
  %i.ep = trunc nuw i16 %i.eo to i8
  br label %lv_color_8_8_mix.exit195.i

lv_color_8_8_mix.exit195.i:                       ; preds = %bb.i, %bb.h, %bb.g
  %.0206.i = phi i8 [ %narrow191.i, %bb.g ], [ %i.ep, %bb.i ], [ %i.dq, %bb.h ]
  %i.eq = icmp slt i8 %.0206.i, 0
  %i.er = shl nuw nsw i32 1, %i.dy
  %i.es = trunc i32 %i.er to i8                   ; 2 uses
  %i.et = xor i8 %i.es, -1
  %i.eu = and i8 %i.dv, %i.et
  %i.ev = or i8 %i.dv, %i.es
  %storemerge208.i = select i1 %i.eq, i8 %i.ev, i8 %i.eu
  store i8 %storemerge208.i, ptr %i.du, align 1, !tbaa !11
  %indvars.iv.next282.i = add nuw nsw i64 %indvars.iv281.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next282.i, %wide.trip.count288.i
  br i1 %exitcond289.not.i, label %._crit_edge240.i, label %bb.g, !llvm.loop !47

._crit_edge240.i:                                 ; preds = %lv_color_8_8_mix.exit195.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.2182241.i, i64 %i.dl
  %i.ex = getelementptr inbounds nuw i8, ptr %.2177242.i, i64 %i.dm
  %i.ey = getelementptr inbounds i8, ptr %.0171243.i, i64 %i.dn
  %i.ez = add nuw nsw i32 %.2244.i, 1             ; 2 uses
  %exitcond290.not.i = icmp eq i32 %i.ez, %i.f
  br i1 %exitcond290.not.i, label %rgb565_image_blend.exit, label %.preheader214.i, !llvm.loop !48

bb.j:                                             ; preds = %bb.f
  %or.cond11.i = and i1 %i.bf, %i.di
  %i.fa = icmp sgt i32 %i.f, 0
  %or.cond261.i = select i1 %or.cond11.i, i1 %i.fa, i1 false
  br i1 %or.cond261.i, label %.preheader217.lr.ph.i, label %rgb565_image_blend.exit

.preheader217.lr.ph.i:                            ; preds = %bb.j
  %i.fb = icmp sgt i32 %i.d, 0
  %i.fc = zext i32 %i.k to i64
  %i.fd = zext i32 %i.o to i64
  %i.fe = sext i32 %i.s to i64
  br i1 %i.fb, label %.preheader217.preheader.i, label %rgb565_image_blend.exit

.preheader217.preheader.i:                        ; preds = %.preheader217.lr.ph.i
  %wide.trip.count278.i = zext nneg i32 %i.d to i64
  br label %.preheader217.i

.preheader217.i:                                  ; preds = %._crit_edge232.i, %.preheader217.preheader.i
  %.3236.i = phi i32 [ %i.gr, %._crit_edge232.i ], [ 0, %.preheader217.preheader.i ]
  %.1172235.i = phi ptr [ %i.gq, %._crit_edge232.i ], [ %i.q, %.preheader217.preheader.i ] ; 2 uses
  %.3178234.i = phi ptr [ %i.gp, %._crit_edge232.i ], [ %i.m, %.preheader217.preheader.i ] ; 2 uses
  %.3183233.i = phi ptr [ %i.go, %._crit_edge232.i ], [ %i.i, %.preheader217.preheader.i ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %lv_color_8_8_mix.exit198.i, %.preheader217.i
  %indvars.iv271.i = phi i64 [ 0, %.preheader217.i ], [ %indvars.iv.next272.i, %lv_color_8_8_mix.exit198.i ] ; 4 uses
  %indvars275.i = trunc i64 %indvars.iv271.i to i32
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %.3178234.i, i64 %indvars.iv271.i
  %i.fg = load i16, ptr %i.ff, align 2
  %i.fh = tail call zeroext i8 @lv_color16_luminance(i16 %i.fg) #4 ; 2 uses
  %i.fi = add nsw i32 %i.v, %indvars275.i         ; 2 uses
  %i.fj = sdiv i32 %i.fi, 8
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %.3183233.i, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11  ; 3 uses
  %i.fn = zext i8 %i.fm to i32
  %i.fo = srem i32 %i.fi, 8
  %i.fp = sub nsw i32 7, %i.fo                    ; 2 uses
  %i.fq = lshr i32 %i.fn, %i.fp
  %i.fr = trunc nuw i32 %i.fq to i8
  %i.fs = and i8 %i.fr, 1
  %narrow190.i = sub nsw i8 0, %i.fs              ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.1172235.i, i64 %indvars.iv271.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !11
  %i.fv = zext i8 %i.fu to i16
  %i.fw = mul nuw i16 %i.fv, %i.ag                ; 2 uses
  %i.fx = lshr i16 %i.fw, 8                       ; 3 uses
  %i.fy = icmp eq i16 %i.fx, 0
  br i1 %i.fy, label %lv_color_8_8_mix.exit198.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fz = icmp ugt i16 %i.fw, -769
  br i1 %i.fz, label %lv_color_8_8_mix.exit198.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ga = xor i16 %i.fx, 255
  %i.gb = zext i8 %i.fh to i16
  %i.gc = mul nuw i16 %i.fx, %i.gb
  %i.gd = zext i8 %narrow190.i to i16
  %i.ge = mul nuw i16 %i.ga, %i.gd
  %i.gf = add i16 %i.ge, %i.gc
  %i.gg = lshr i16 %i.gf, 8
  %i.gh = trunc nuw i16 %i.gg to i8
  br label %lv_color_8_8_mix.exit198.i

lv_color_8_8_mix.exit198.i:                       ; preds = %bb.m, %bb.l, %bb.k
  %.0205.i = phi i8 [ %narrow190.i, %bb.k ], [ %i.gh, %bb.m ], [ %i.fh, %bb.l ]
  %i.gi = icmp slt i8 %.0205.i, 0
  %i.gj = shl nuw nsw i32 1, %i.fp
  %i.gk = trunc i32 %i.gj to i8                   ; 2 uses
  %i.gl = xor i8 %i.gk, -1
  %i.gm = and i8 %i.fm, %i.gl
  %i.gn = or i8 %i.fm, %i.gk
  %storemerge.i = select i1 %i.gi, i8 %i.gn, i8 %i.gm
  store i8 %storemerge.i, ptr %i.fl, align 1, !tbaa !11
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %exitcond279.not.i = icmp eq i64 %indvars.iv.next272.i, %wide.trip.count278.i
  br i1 %exitcond279.not.i, label %._crit_edge232.i, label %bb.k, !llvm.loop !49

._crit_edge232.i:                                 ; preds = %lv_color_8_8_mix.exit198.i
  %i.go = getelementptr inbounds nuw i8, ptr %.3183233.i, i64 %i.fc
  %i.gp = getelementptr inbounds nuw i8, ptr %.3178234.i, i64 %i.fd
  %i.gq = getelementptr inbounds i8, ptr %.1172235.i, i64 %i.fe
  %i.gr = add nuw nsw i32 %.3236.i, 1             ; 2 uses
  %exitcond280.not.i = icmp eq i32 %i.gr, %i.f
  br i1 %exitcond280.not.i, label %rgb565_image_blend.exit, label %.preheader217.i, !llvm.loop !50

.preheader220.i:                                  ; preds = %._crit_edge.i, %.preheader220.preheader.i
  %.4228.i = phi i32 [ %i.jb, %._crit_edge.i ], [ 0, %.preheader220.preheader.i ]
  %.2173227.i = phi ptr [ %.3174.i, %._crit_edge.i ], [ %i.q, %.preheader220.preheader.i ] ; 3 uses
  %.4179226.i = phi ptr [ %i.ja, %._crit_edge.i ], [ %i.m, %.preheader220.preheader.i ] ; 2 uses
  %.4184225.i = phi ptr [ %i.iz, %._crit_edge.i ], [ %i.i, %.preheader220.preheader.i ] ; 2 uses
  %i.gs = icmp eq ptr %.2173227.i, null           ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %blend_non_normal_pixel.exit.i, %.preheader220.i
  %indvars.iv.i = phi i64 [ 0, %.preheader220.i ], [ %indvars.iv.next.i, %blend_non_normal_pixel.exit.i ] ; 4 uses
  %indvars267.i = trunc i64 %indvars.iv.i to i32
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %.4179226.i, i64 %indvars.iv.i
  %i.gu = load i16, ptr %i.gt, align 2            ; 3 uses
  %i.gv = lshr i16 %i.gu, 11
  %narrow.i = mul nuw i16 %i.gv, 2106
  %i.gw = lshr i16 %narrow.i, 8
  %.sroa.5.0.insert.ext.i = zext nneg i16 %i.gw to i32
  %i.gx = lshr i16 %i.gu, 5
  %i.gy = and i16 %i.gx, 63
  %narrow188.i = mul nuw i16 %i.gy, 1037
  %i.gz = and i16 %narrow188.i, -256
  %i.ha = and i16 %i.gu, 31
  %narrow189.i = mul nuw i16 %i.ha, 2106
  %i.hb = lshr i16 %narrow189.i, 8
  br i1 %i.gs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hc = getelementptr inbounds nuw i8, ptr %.2173227.i, i64 %indvars.iv.i
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !11
  %i.he = zext i8 %i.hd to i16
  %i.hf = mul nuw i16 %i.he, %i.ab
  %i.hg = lshr i16 %i.hf, 8                       ; 2 uses
  %i.hh = trunc nuw i16 %i.hg to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.2.0.extract.trunc.i.pre-phi.i = phi i16 [ %i.ab, %bb.n ], [ %i.hg, %bb.o ] ; 2 uses
  %.sroa.6.0.i = phi i8 [ %.fr.i, %bb.n ], [ %i.hh, %bb.o ] ; 3 uses
  %i.hi = add nsw i32 %i.v, %indvars267.i         ; 2 uses
  %i.hj = load i32, ptr %i.w, align 4, !tbaa !24
  %.sroa.6.0.insert.ext.i = zext i8 %.sroa.6.0.i to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %i.hk = or disjoint i16 %i.gz, %i.hb
  %i.hl = zext i16 %i.hk to i32
  %i.hm = or disjoint i32 %.sroa.5.0.insert.shift.i, %i.hl
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.shift.i, %i.hm
  %i.hn = tail call zeroext i8 @lv_color32_luminance(i32 %.sroa.0.0.insert.insert.i) #4 ; 3 uses
  %i.ho = zext i8 %i.hn to i32                    ; 2 uses
  %i.hp = sdiv i32 %i.hi, 8
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %.4184225.i, i64 %i.hq ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11  ; 3 uses
  %i.ht = zext i8 %i.hs to i32
  %i.hu = srem i32 %i.hi, 8
  %i.hv = sub nsw i32 7, %i.hu                    ; 2 uses
  %i.hw = lshr i32 %i.ht, %i.hv
  %i.hx = trunc nuw i32 %i.hw to i8
  %i.hy = and i8 %i.hx, 1
  %narrow.i.i = sub nsw i8 0, %i.hy               ; 6 uses
  switch i32 %i.hj, label %blend_non_normal_pixel.exit.i [
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %1 = tail call i8 @llvm.uadd.sat.i8(i8 %narrow.i.i, i8 %i.hn)
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.hz = tail call i8 @llvm.usub.sat.i8(i8 %narrow.i.i, i8 %i.hn)
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ia = zext i8 %narrow.i.i to i32
  %i.ib = mul nuw nsw i32 %i.ia, %i.ho
  %i.ic = lshr i32 %i.ib, 8
  %i.id = trunc nuw i32 %i.ic to i8
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.ie = zext i8 %narrow.i.i to i32
  %i.if = sub nsw i32 %i.ie, %i.ho
  %i.ig = tail call i32 @llvm.abs.i32(i32 %i.if, i1 true)
  %i.ih = trunc nuw i32 %i.ig to i8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.0.i.i = phi i8 [ %1, %bb.q ], [ %i.hz, %bb.r ], [ %i.id, %bb.s ], [ %i.ih, %bb.t ] ; 2 uses
  %i.ii = icmp eq i8 %.sroa.6.0.i, 0
  br i1 %i.ii, label %lv_color_8_8_mix.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ij = icmp ugt i8 %.sroa.6.0.i, -4
  br i1 %i.ij, label %lv_color_8_8_mix.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ik = xor i16 %.sroa.2.0.extract.trunc.i.pre-phi.i, 255
  %i.il = zext i8 %.0.i.i to i16
  %i.im = mul nuw i16 %.sroa.2.0.extract.trunc.i.pre-phi.i, %i.il
  %i.in = zext i8 %narrow.i.i to i16
  %i.io = mul nuw i16 %i.ik, %i.in
  %i.ip = add i16 %i.im, %i.io
  %i.iq = lshr i16 %i.ip, 8
  %i.ir = trunc nuw i16 %i.iq to i8
  br label %lv_color_8_8_mix.exit.i.i

lv_color_8_8_mix.exit.i.i:                        ; preds = %bb.w, %bb.v, %bb.u
  %.017.i.i = phi i8 [ %narrow.i.i, %bb.u ], [ %i.ir, %bb.w ], [ %.0.i.i, %bb.v ]
  %i.is = icmp slt i8 %.017.i.i, 0
  %i.it = shl nuw nsw i32 1, %i.hv
  %i.iu = trunc i32 %i.it to i8                   ; 2 uses
  %i.iv = or i8 %i.hs, %i.iu
  %i.iw = xor i8 %i.iu, -1
  %i.ix = and i8 %i.hs, %i.iw
  %.sink.i199.i = select i1 %i.is, i8 %i.iv, i8 %i.ix
  store i8 %.sink.i199.i, ptr %i.hr, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i

blend_non_normal_pixel.exit.i:                    ; preds = %lv_color_8_8_mix.exit.i.i, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.n, !llvm.loop !51

._crit_edge.i:                                    ; preds = %blend_non_normal_pixel.exit.i
  %i.iy = getelementptr inbounds i8, ptr %.2173227.i, i64 %i.ac
  %.3174.i = select i1 %i.gs, ptr null, ptr %i.iy
  %i.iz = getelementptr inbounds nuw i8, ptr %.4184225.i, i64 %i.ad
  %i.ja = getelementptr inbounds nuw i8, ptr %.4179226.i, i64 %i.ae
  %i.jb = add nuw nsw i32 %.4228.i, 1             ; 2 uses
  %exitcond270.not.i = icmp eq i32 %i.jb, %i.f
  br i1 %exitcond270.not.i, label %rgb565_image_blend.exit, label %.preheader220.i, !llvm.loop !52

bb.x:                                             ; preds = %bb.a
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !14 ; 10 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !15 ; 11 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jh = load i8, ptr %i.jg, align 8, !tbaa !16
  %.fr.i9 = freeze i8 %i.jh                       ; 7 uses
  %i.ji = load ptr, ptr %0, align 8, !tbaa !17    ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !18 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !19 ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !20 ; 5 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !21 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !22 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !23
  %i.jv = srem i32 %i.ju, 8                       ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !24
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.y, label %.preheader229.i

.preheader229.i:                                  ; preds = %bb.x
  %i.jz = icmp sgt i32 %i.jf, 0
  br i1 %i.jz, label %.preheader228.lr.ph.i, label %rgb565_image_blend.exit

.preheader228.lr.ph.i:                            ; preds = %.preheader229.i
  %i.ka = icmp sgt i32 %i.jd, 0
  %i.kb = zext i8 %.fr.i9 to i16                  ; 2 uses
  %i.kc = sext i32 %i.js to i64
  %i.kd = zext i32 %i.jk to i64
  %i.ke = zext i32 %i.jo to i64
  br i1 %i.ka, label %.preheader228.preheader.i, label %rgb565_image_blend.exit

.preheader228.preheader.i:                        ; preds = %.preheader228.lr.ph.i
  %wide.trip.count.i10 = zext nneg i32 %i.jd to i64
  br label %.preheader228.i

bb.y:                                             ; preds = %bb.x
  %i.kf = icmp eq ptr %i.jq, null                 ; 2 uses
  %i.kg = zext i8 %.fr.i9 to i16                  ; 2 uses
  %i.kh = icmp ugt i8 %.fr.i9, -4                 ; 2 uses
  %or.cond.i28 = and i1 %i.kh, %i.kf
  br i1 %or.cond.i28, label %.preheader218.i, label %bb.aa

.preheader218.i:                                  ; preds = %bb.y
  %i.ki = icmp sgt i32 %i.jf, 0
  br i1 %i.ki, label %.preheader.lr.ph.i52, label %rgb565_image_blend.exit

.preheader.lr.ph.i52:                             ; preds = %.preheader218.i
  %i.kj = icmp sgt i32 %i.jd, 0
  %i.kk = zext i32 %i.jk to i64
  %i.kl = zext i32 %i.jo to i64
  br i1 %i.kj, label %.preheader.preheader.i53, label %rgb565_image_blend.exit

.preheader.preheader.i53:                         ; preds = %.preheader.lr.ph.i52
  %wide.trip.count320.i = zext nneg i32 %i.jd to i64
  br label %.preheader.i54

.preheader.i54:                                   ; preds = %._crit_edge265.i, %.preheader.preheader.i53
  %.0168268.i = phi ptr [ %i.ld, %._crit_edge265.i ], [ %i.ji, %.preheader.preheader.i53 ] ; 2 uses
  %.0169267.i = phi i32 [ %i.lf, %._crit_edge265.i ], [ 0, %.preheader.preheader.i53 ]
  %.0188266.i = phi ptr [ %i.le, %._crit_edge265.i ], [ %i.jm, %.preheader.preheader.i53 ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader.i54
  %indvars.iv315.i = phi i64 [ 0, %.preheader.i54 ], [ %indvars.iv.next316.i, %bb.z ] ; 3 uses
  %indvars317.i = trunc i64 %indvars.iv315.i to i32
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %.0188266.i, i64 %indvars.iv315.i
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !105
  %i.ko = tail call noundef i16 @llvm.bswap.i16(i16 %i.kn)
  %i.kp = tail call zeroext i8 @lv_color16_luminance(i16 %i.ko) #4
  %i.kq = icmp slt i8 %i.kp, 0
  %i.kr = add nsw i32 %i.jv, %indvars317.i        ; 2 uses
  %i.ks = srem i32 %i.kr, 8
  %i.kt = sub nsw i32 7, %i.ks
  %i.ku = shl nuw nsw i32 1, %i.kt
  %i.kv = sdiv i32 %i.kr, 8
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds i8, ptr %.0168268.i, i64 %i.kw ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !11  ; 2 uses
  %i.kz = trunc i32 %i.ku to i8                   ; 2 uses
  %i.la = xor i8 %i.kz, -1
  %i.lb = and i8 %i.ky, %i.la
  %i.lc = or i8 %i.ky, %i.kz
  %.sink.i55 = select i1 %i.kq, i8 %i.lc, i8 %i.lb
  store i8 %.sink.i55, ptr %i.kx, align 1, !tbaa !11
  %indvars.iv.next316.i = add nuw nsw i64 %indvars.iv315.i, 1 ; 2 uses
  %exitcond321.not.i = icmp eq i64 %indvars.iv.next316.i, %wide.trip.count320.i
  br i1 %exitcond321.not.i, label %._crit_edge265.i, label %bb.z, !llvm.loop !53

._crit_edge265.i:                                 ; preds = %bb.z
  %i.ld = getelementptr inbounds nuw i8, ptr %.0168268.i, i64 %i.kk
  %i.le = getelementptr inbounds nuw i8, ptr %.0188266.i, i64 %i.kl
  %i.lf = add nuw nsw i32 %.0169267.i, 1          ; 2 uses
  %exitcond322.not.i = icmp eq i32 %i.lf, %i.jf
  br i1 %exitcond322.not.i, label %rgb565_image_blend.exit, label %.preheader.i54, !llvm.loop !54

bb.aa:                                            ; preds = %bb.y
  %i.lg = icmp ult i8 %.fr.i9, -3                 ; 2 uses
  %or.cond5.i29 = and i1 %i.lg, %i.kf
  br i1 %or.cond5.i29, label %.preheader220.i38, label %bb.ab

.preheader220.i38:                                ; preds = %bb.aa
  %i.lh = icmp sgt i32 %i.jf, 0
  br i1 %i.lh, label %.preheader219.lr.ph.i, label %rgb565_image_blend.exit

.preheader219.lr.ph.i:                            ; preds = %.preheader220.i38
  %i.li = icmp sgt i32 %i.jd, 0
  %i.lj = xor i8 %.fr.i9, -1
  %i.lk = zext i8 %i.lj to i16
  %i.ll = zext i32 %i.jk to i64                   ; 2 uses
  %i.lm = zext i32 %i.jo to i64                   ; 2 uses
  br i1 %i.li, label %.preheader219.lr.ph.split.i, label %rgb565_image_blend.exit

.preheader219.lr.ph.split.i:                      ; preds = %.preheader219.lr.ph.i
  %i.ln = icmp eq i8 %.fr.i9, 0
  %wide.trip.count304.i = zext nneg i32 %i.jd to i64 ; 2 uses
  br i1 %i.ln, label %.preheader219.i, label %.preheader219.us.i

.preheader219.us.i:                               ; preds = %.preheader219.lr.ph.split.i, %._crit_edge255.split.us.us.i
  %.1259.us.i = phi ptr [ %i.mn, %._crit_edge255.split.us.us.i ], [ %i.ji, %.preheader219.lr.ph.split.i ] ; 2 uses
  %.1170258.us.i = phi i32 [ %i.mp, %._crit_edge255.split.us.us.i ], [ 0, %.preheader219.lr.ph.split.i ]
  %.1189256.us.i = phi ptr [ %i.mo, %._crit_edge255.split.us.us.i ], [ %i.jm, %.preheader219.lr.ph.split.i ] ; 2 uses
  br label %lv_color_8_8_mix.exit.us.us.i40

lv_color_8_8_mix.exit.us.us.i40:                  ; preds = %lv_color_8_8_mix.exit.us.us.i40, %.preheader219.us.i
  %indvars.iv307.i41 = phi i64 [ %indvars.iv.next308.i43, %lv_color_8_8_mix.exit.us.us.i40 ], [ 0, %.preheader219.us.i ] ; 3 uses
  %indvars309.i42 = trunc i64 %indvars.iv307.i41 to i32
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %.1189256.us.i, i64 %indvars.iv307.i41
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !105
  %i.lq = tail call noundef i16 @llvm.bswap.i16(i16 %i.lp)
  %i.lr = tail call zeroext i8 @lv_color16_luminance(i16 %i.lq) #4
  %i.ls = add nsw i32 %i.jv, %indvars309.i42      ; 2 uses
  %i.lt = sdiv i32 %i.ls, 8
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds i8, ptr %.1259.us.i, i64 %i.lu ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !11  ; 3 uses
  %i.lx = zext i8 %i.lw to i32
  %i.ly = srem i32 %i.ls, 8
  %i.lz = sub nsw i32 7, %i.ly
  %i.ma = zext i8 %i.lr to i16
  %i.mb = mul nuw i16 %i.ma, %i.kg
  %i.mc = shl nuw nsw i32 1, %i.lz                ; 2 uses
  %i.md = and i32 %i.mc, %i.lx
  %i.me = icmp eq i32 %i.md, 0
  %i.mf = select i1 %i.me, i16 0, i16 255
  %i.mg = mul nuw i16 %i.mf, %i.lk
  %i.mh = add i16 %i.mg, %i.mb
  %i.mi = icmp slt i16 %i.mh, 0
  %i.mj = trunc i32 %i.mc to i8                   ; 2 uses
end_hunk_0
begin_hunk_1_@lv_draw_sw_blend_image_to_i1:bb.a
  %i.ny = getelementptr inbounds i8, ptr %.2252.i, i64 %i.nx ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !11  ; 3 uses
  %i.oa = zext i8 %i.nz to i32
  %i.ob = srem i32 %i.nv, 8
  %i.oc = sub nsw i32 7, %i.ob                    ; 2 uses
  %i.od = lshr i32 %i.oa, %i.oc
  %i.oe = trunc nuw i32 %i.od to i8
  %i.of = and i8 %i.oe, 1
  %narrow199.i = sub nsw i8 0, %i.of              ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0184250.i, i64 %indvars.iv289.i
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !11  ; 4 uses
  %i.oi = zext i8 %i.oh to i16
  %i.oj = icmp eq i8 %i.oh, 0
  br i1 %i.oj, label %lv_color_8_8_mix.exit203.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ok = icmp ugt i8 %i.oh, -4
  br i1 %i.ok, label %lv_color_8_8_mix.exit203.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ol = xor i8 %i.oh, -1
  %i.om = zext i8 %i.nu to i16
  %i.on = mul nuw i16 %i.oi, %i.om
  %i.oo = zext i8 %narrow199.i to i16
  %i.op = zext i8 %i.ol to i16
  %i.oq = mul nuw i16 %i.oo, %i.op
  %i.or = add i16 %i.oq, %i.on
  %i.os = lshr i16 %i.or, 8
  %i.ot = trunc nuw i16 %i.os to i8
  br label %lv_color_8_8_mix.exit203.i

lv_color_8_8_mix.exit203.i:                       ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0214.i = phi i8 [ %narrow199.i, %bb.ac ], [ %i.ot, %bb.ae ], [ %i.nu, %bb.ad ]
  %i.ou = icmp slt i8 %.0214.i, 0
  %i.ov = shl nuw nsw i32 1, %i.oc
  %i.ow = trunc i32 %i.ov to i8                   ; 2 uses
  %i.ox = xor i8 %i.ow, -1
  %i.oy = and i8 %i.nz, %i.ox
  %i.oz = or i8 %i.nz, %i.ow
  %storemerge216.i = select i1 %i.ou, i8 %i.oz, i8 %i.oy
  store i8 %storemerge216.i, ptr %i.ny, align 1, !tbaa !11
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %exitcond297.not.i36 = icmp eq i64 %indvars.iv.next290.i, %wide.trip.count296.i34
  br i1 %exitcond297.not.i36, label %._crit_edge248.i, label %bb.ac, !llvm.loop !57

._crit_edge248.i:                                 ; preds = %lv_color_8_8_mix.exit203.i
  %i.pa = getelementptr inbounds nuw i8, ptr %.2252.i, i64 %i.no
  %i.pb = getelementptr inbounds nuw i8, ptr %.2190249.i, i64 %i.np
  %i.pc = getelementptr inbounds i8, ptr %.0184250.i, i64 %i.nq
  %i.pd = add nuw nsw i32 %.2171251.i, 1          ; 2 uses
  %exitcond298.not.i37 = icmp eq i32 %i.pd, %i.jf
  br i1 %exitcond298.not.i37, label %rgb565_image_blend.exit, label %.preheader222.i, !llvm.loop !58

bb.af:                                            ; preds = %bb.ab
  %or.cond11.i31 = and i1 %i.lg, %i.nl
  %i.pe = icmp sgt i32 %i.jf, 0
  %or.cond269.i = select i1 %or.cond11.i31, i1 %i.pe, i1 false
  br i1 %or.cond269.i, label %.preheader225.lr.ph.i, label %rgb565_image_blend.exit

.preheader225.lr.ph.i:                            ; preds = %bb.af
  %i.pf = icmp sgt i32 %i.jd, 0
  %i.pg = zext i32 %i.jk to i64
  %i.ph = zext i32 %i.jo to i64
  %i.pi = sext i32 %i.js to i64
  br i1 %i.pf, label %.preheader225.preheader.i, label %rgb565_image_blend.exit

.preheader225.preheader.i:                        ; preds = %.preheader225.lr.ph.i
  %wide.trip.count286.i = zext nneg i32 %i.jd to i64
  br label %.preheader225.i

.preheader225.i:                                  ; preds = %._crit_edge240.i33, %.preheader225.preheader.i
  %.3244.i = phi ptr [ %i.qt, %._crit_edge240.i33 ], [ %i.ji, %.preheader225.preheader.i ] ; 2 uses
  %.3172243.i = phi i32 [ %i.qw, %._crit_edge240.i33 ], [ 0, %.preheader225.preheader.i ]
  %.1185242.i = phi ptr [ %i.qv, %._crit_edge240.i33 ], [ %i.jq, %.preheader225.preheader.i ] ; 2 uses
  %.3191241.i = phi ptr [ %i.qu, %._crit_edge240.i33 ], [ %i.jm, %.preheader225.preheader.i ] ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %lv_color_8_8_mix.exit206.i, %.preheader225.i
  %indvars.iv279.i = phi i64 [ 0, %.preheader225.i ], [ %indvars.iv.next280.i, %lv_color_8_8_mix.exit206.i ] ; 4 uses
  %indvars283.i = trunc i64 %indvars.iv279.i to i32
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %.3191241.i, i64 %indvars.iv279.i
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !105
  %i.pl = tail call noundef i16 @llvm.bswap.i16(i16 %i.pk)
  %i.pm = tail call zeroext i8 @lv_color16_luminance(i16 %i.pl) #4 ; 2 uses
  %i.pn = add nsw i32 %i.jv, %indvars283.i        ; 2 uses
  %i.po = sdiv i32 %i.pn, 8
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds i8, ptr %.3244.i, i64 %i.pp ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !11  ; 3 uses
  %i.ps = zext i8 %i.pr to i32
  %i.pt = srem i32 %i.pn, 8
  %i.pu = sub nsw i32 7, %i.pt                    ; 2 uses
  %i.pv = lshr i32 %i.ps, %i.pu
  %i.pw = trunc nuw i32 %i.pv to i8
  %i.px = and i8 %i.pw, 1
  %narrow198.i = sub nsw i8 0, %i.px              ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1185242.i, i64 %indvars.iv279.i
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !11
  %i.qa = zext i8 %i.pz to i16
  %i.qb = mul nuw i16 %i.qa, %i.kg                ; 2 uses
  %i.qc = lshr i16 %i.qb, 8                       ; 3 uses
  %i.qd = icmp eq i16 %i.qc, 0
  br i1 %i.qd, label %lv_color_8_8_mix.exit206.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.qe = icmp ugt i16 %i.qb, -769
  br i1 %i.qe, label %lv_color_8_8_mix.exit206.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.qf = xor i16 %i.qc, 255
  %i.qg = zext i8 %i.pm to i16
  %i.qh = mul nuw i16 %i.qc, %i.qg
  %i.qi = zext i8 %narrow198.i to i16
  %i.qj = mul nuw i16 %i.qf, %i.qi
  %i.qk = add i16 %i.qj, %i.qh
  %i.ql = lshr i16 %i.qk, 8
  %i.qm = trunc nuw i16 %i.ql to i8
  br label %lv_color_8_8_mix.exit206.i

lv_color_8_8_mix.exit206.i:                       ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0213.i = phi i8 [ %narrow198.i, %bb.ag ], [ %i.qm, %bb.ai ], [ %i.pm, %bb.ah ]
  %i.qn = icmp slt i8 %.0213.i, 0
  %i.qo = shl nuw nsw i32 1, %i.pu
  %i.qp = trunc i32 %i.qo to i8                   ; 2 uses
  %i.qq = xor i8 %i.qp, -1
  %i.qr = and i8 %i.pr, %i.qq
  %i.qs = or i8 %i.pr, %i.qp
  %storemerge.i32 = select i1 %i.qn, i8 %i.qs, i8 %i.qr
  store i8 %storemerge.i32, ptr %i.pq, align 1, !tbaa !11
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %exitcond287.not.i = icmp eq i64 %indvars.iv.next280.i, %wide.trip.count286.i
  br i1 %exitcond287.not.i, label %._crit_edge240.i33, label %bb.ag, !llvm.loop !59

._crit_edge240.i33:                               ; preds = %lv_color_8_8_mix.exit206.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.3244.i, i64 %i.pg
  %i.qu = getelementptr inbounds nuw i8, ptr %.3191241.i, i64 %i.ph
  %i.qv = getelementptr inbounds i8, ptr %.1185242.i, i64 %i.pi
  %i.qw = add nuw nsw i32 %.3172243.i, 1          ; 2 uses
  %exitcond288.not.i = icmp eq i32 %i.qw, %i.jf
  br i1 %exitcond288.not.i, label %rgb565_image_blend.exit, label %.preheader225.i, !llvm.loop !60

.preheader228.i:                                  ; preds = %._crit_edge.i27, %.preheader228.preheader.i
  %.4236.i = phi ptr [ %i.tf, %._crit_edge.i27 ], [ %i.ji, %.preheader228.preheader.i ] ; 2 uses
  %.4173235.i = phi i32 [ %i.th, %._crit_edge.i27 ], [ 0, %.preheader228.preheader.i ]
  %.2186234.i = phi ptr [ %.3187.i, %._crit_edge.i27 ], [ %i.jq, %.preheader228.preheader.i ] ; 3 uses
  %.4192233.i = phi ptr [ %i.tg, %._crit_edge.i27 ], [ %i.jm, %.preheader228.preheader.i ] ; 2 uses
  %i.qx = icmp eq ptr %.2186234.i, null           ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %blend_non_normal_pixel.exit.i24, %.preheader228.i
  %indvars.iv.i11 = phi i64 [ 0, %.preheader228.i ], [ %indvars.iv.next.i25, %blend_non_normal_pixel.exit.i24 ] ; 4 uses
  %indvars275.i12 = trunc i64 %indvars.iv.i11 to i32
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %.4192233.i, i64 %indvars.iv.i11
  %i.qz = load i16, ptr %i.qy, align 2, !tbaa !105
  %i.ra = tail call noundef i16 @llvm.bswap.i16(i16 %i.qz) ; 3 uses
  %i.rb = lshr i16 %i.ra, 11
  %narrow.i13 = mul nuw i16 %i.rb, 2106
  %i.rc = lshr i16 %narrow.i13, 8
  %.sroa.5.0.insert.ext.i14 = zext nneg i16 %i.rc to i32
  %i.rd = lshr i16 %i.ra, 5
  %i.re = and i16 %i.rd, 63
  %narrow196.i = mul nuw i16 %i.re, 1037
  %i.rf = and i16 %narrow196.i, -256
  %i.rg = and i16 %i.ra, 31
  %narrow197.i = mul nuw i16 %i.rg, 2106
  %i.rh = lshr i16 %narrow197.i, 8
  br i1 %i.qx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ri = getelementptr inbounds nuw i8, ptr %.2186234.i, i64 %indvars.iv.i11
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !11
  %i.rk = zext i8 %i.rj to i16
  %i.rl = mul nuw i16 %i.rk, %i.kb
  %i.rm = lshr i16 %i.rl, 8                       ; 2 uses
  %i.rn = trunc nuw i16 %i.rm to i8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.2.0.extract.trunc.i.pre-phi.i15 = phi i16 [ %i.kb, %bb.aj ], [ %i.rm, %bb.ak ] ; 2 uses
  %.sroa.6.0.i16 = phi i8 [ %.fr.i9, %bb.aj ], [ %i.rn, %bb.ak ] ; 3 uses
  %i.ro = add nsw i32 %i.jv, %indvars275.i12      ; 2 uses
  %i.rp = load i32, ptr %i.jw, align 4, !tbaa !24
  %.sroa.6.0.insert.ext.i17 = zext i8 %.sroa.6.0.i16 to i32
  %.sroa.6.0.insert.shift.i18 = shl nuw i32 %.sroa.6.0.insert.ext.i17, 24
  %.sroa.5.0.insert.shift.i19 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i14, 16
  %i.rq = or disjoint i16 %i.rf, %i.rh
  %i.rr = zext i16 %i.rq to i32
  %i.rs = or disjoint i32 %.sroa.5.0.insert.shift.i19, %i.rr
  %.sroa.012.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.shift.i18, %i.rs
  %i.rt = tail call zeroext i8 @lv_color32_luminance(i32 %.sroa.012.0.insert.insert.i) #4 ; 3 uses
  %i.ru = zext i8 %i.rt to i32                    ; 2 uses
  %i.rv = sdiv i32 %i.ro, 8
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds i8, ptr %.4236.i, i64 %i.rw ; 2 uses
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !11  ; 3 uses
  %i.rz = zext i8 %i.ry to i32
  %i.sa = srem i32 %i.ro, 8
  %i.sb = sub nsw i32 7, %i.sa                    ; 2 uses
  %i.sc = lshr i32 %i.rz, %i.sb
  %i.sd = trunc nuw i32 %i.sc to i8
  %i.se = and i8 %i.sd, 1
  %narrow.i.i20 = sub nsw i8 0, %i.se             ; 6 uses
  switch i32 %i.rp, label %blend_non_normal_pixel.exit.i24 [
    i32 1, label %bb.am
    i32 2, label %bb.an
    i32 3, label %bb.ao
    i32 4, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.al
  %2 = tail call i8 @llvm.uadd.sat.i8(i8 %narrow.i.i20, i8 %i.rt)
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.sf = tail call i8 @llvm.usub.sat.i8(i8 %narrow.i.i20, i8 %i.rt)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.sg = zext i8 %narrow.i.i20 to i32
  %i.sh = mul nuw nsw i32 %i.sg, %i.ru
  %i.si = lshr i32 %i.sh, 8
  %i.sj = trunc nuw i32 %i.si to i8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.sk = zext i8 %narrow.i.i20 to i32
  %i.sl = sub nsw i32 %i.sk, %i.ru
  %i.sm = tail call i32 @llvm.abs.i32(i32 %i.sl, i1 true)
  %i.sn = trunc nuw i32 %i.sm to i8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.0.i.i21 = phi i8 [ %2, %bb.am ], [ %i.sf, %bb.an ], [ %i.sj, %bb.ao ], [ %i.sn, %bb.ap ] ; 2 uses
  %i.so = icmp eq i8 %.sroa.6.0.i16, 0
  br i1 %i.so, label %lv_color_8_8_mix.exit.i.i22, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sp = icmp ugt i8 %.sroa.6.0.i16, -4
  br i1 %i.sp, label %lv_color_8_8_mix.exit.i.i22, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sq = xor i16 %.sroa.2.0.extract.trunc.i.pre-phi.i15, 255
  %i.sr = zext i8 %.0.i.i21 to i16
  %i.ss = mul nuw i16 %.sroa.2.0.extract.trunc.i.pre-phi.i15, %i.sr
  %i.st = zext i8 %narrow.i.i20 to i16
  %i.su = mul nuw i16 %i.sq, %i.st
  %i.sv = add i16 %i.ss, %i.su
  %i.sw = lshr i16 %i.sv, 8
  %i.sx = trunc nuw i16 %i.sw to i8
  br label %lv_color_8_8_mix.exit.i.i22

lv_color_8_8_mix.exit.i.i22:                      ; preds = %bb.as, %bb.ar, %bb.aq
  %.017.i.i23 = phi i8 [ %narrow.i.i20, %bb.aq ], [ %i.sx, %bb.as ], [ %.0.i.i21, %bb.ar ]
  %i.sy = icmp slt i8 %.017.i.i23, 0
  %i.sz = shl nuw nsw i32 1, %i.sb
  %i.ta = trunc i32 %i.sz to i8                   ; 2 uses
  %i.tb = or i8 %i.ry, %i.ta
  %i.tc = xor i8 %i.ta, -1
  %i.td = and i8 %i.ry, %i.tc
  %.sink.i207.i = select i1 %i.sy, i8 %i.tb, i8 %i.td
  store i8 %.sink.i207.i, ptr %i.rx, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i24

blend_non_normal_pixel.exit.i24:                  ; preds = %lv_color_8_8_mix.exit.i.i22, %bb.al
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i10
  br i1 %exitcond.not.i26, label %._crit_edge.i27, label %bb.aj, !llvm.loop !61

._crit_edge.i27:                                  ; preds = %blend_non_normal_pixel.exit.i24
  %i.te = getelementptr inbounds i8, ptr %.2186234.i, i64 %i.kc
  %.3187.i = select i1 %i.qx, ptr null, ptr %i.te
  %i.tf = getelementptr inbounds nuw i8, ptr %.4236.i, i64 %i.kd
  %i.tg = getelementptr inbounds nuw i8, ptr %.4192233.i, i64 %i.ke
  %i.th = add nuw nsw i32 %.4173235.i, 1          ; 2 uses
  %exitcond278.not.i = icmp eq i32 %i.th, %i.jf
  br i1 %exitcond278.not.i, label %rgb565_image_blend.exit, label %.preheader228.i, !llvm.loop !62

bb.at:                                            ; preds = %bb.a
  br label %rgb565_image_blend.exit.sink.split

bb.au:                                            ; preds = %bb.a
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !14 ; 10 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !15 ; 10 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.tn = load i8, ptr %i.tm, align 8, !tbaa !16  ; 4 uses
  %i.to = load ptr, ptr %0, align 8, !tbaa !17    ; 5 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !18 ; 5 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !19 ; 5 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !20 ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !21 ; 5 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !22 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !23
  %i.ub = srem i32 %i.ua, 8                       ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !24
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %bb.av, label %.preheader221.i56

.preheader221.i56:                                ; preds = %bb.au
  %i.uf = icmp sgt i32 %i.tl, 0
  br i1 %i.uf, label %.preheader220.lr.ph.i57, label %rgb565_image_blend.exit

.preheader220.lr.ph.i57:                          ; preds = %.preheader221.i56
  %i.ug = icmp sgt i32 %i.tj, 0
  %i.uh = zext i8 %i.tn to i32                    ; 2 uses
  %i.ui = sext i32 %i.ty to i64
  %i.uj = zext i32 %i.tq to i64
  %i.uk = zext i32 %i.tu to i64
  br i1 %i.ug, label %.preheader220.preheader.i58, label %rgb565_image_blend.exit

.preheader220.preheader.i58:                      ; preds = %.preheader220.lr.ph.i57
  %wide.trip.count.i59 = zext nneg i32 %i.tj to i64
  br label %.preheader220.i60

bb.av:                                            ; preds = %bb.au
  %i.ul = icmp eq ptr %i.tw, null                 ; 2 uses
  %i.um = zext i8 %i.tn to i32                    ; 2 uses
  %i.un = icmp ugt i8 %i.tn, -4                   ; 2 uses
  %or.cond.i71 = select i1 %i.ul, i1 %i.un, i1 false
  br i1 %or.cond.i71, label %.preheader210.i89, label %bb.az

.preheader210.i89:                                ; preds = %bb.av
  %i.uo = icmp sgt i32 %i.tl, 0
  br i1 %i.uo, label %.preheader.lr.ph.i90, label %rgb565_image_blend.exit

.preheader.lr.ph.i90:                             ; preds = %.preheader210.i89
  %i.up = icmp sgt i32 %i.tj, 0
  %i.uq = zext i32 %i.tq to i64
  %i.ur = zext i32 %i.tu to i64
  br i1 %i.up, label %.preheader.preheader.i91, label %rgb565_image_blend.exit

.preheader.preheader.i91:                         ; preds = %.preheader.lr.ph.i90
  %wide.trip.count278.i92 = zext nneg i32 %i.tj to i64
  br label %.preheader.i93

.preheader.i93:                                   ; preds = %._crit_edge246.i, %.preheader.preheader.i91
  %.0249.i = phi i32 [ %i.wd, %._crit_edge246.i ], [ 0, %.preheader.preheader.i91 ]
  %.0169248.i = phi ptr [ %i.wc, %._crit_edge246.i ], [ %i.ts, %.preheader.preheader.i91 ] ; 2 uses
  %.0174247.i = phi ptr [ %i.wb, %._crit_edge246.i ], [ %i.to, %.preheader.preheader.i91 ] ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %lv_color_8_8_mix.exit.i94, %.preheader.i93
  %indvars.iv275.i = phi i64 [ 0, %.preheader.i93 ], [ %indvars.iv.next276.i, %lv_color_8_8_mix.exit.i94 ] ; 3 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.0169248.i, i64 %indvars.iv275.i ; 2 uses
  %i.ut = load i32, ptr %i.us, align 1
  %i.uu = tail call zeroext i8 @lv_color32_luminance(i32 %i.ut) #4 ; 2 uses
  %i.uv = trunc i64 %indvars.iv275.i to i32
  %i.uw = add i32 %i.ub, %i.uv                    ; 2 uses
  %i.ux = sdiv i32 %i.uw, 8
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr inbounds i8, ptr %.0174247.i, i64 %i.uy ; 2 uses
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !11  ; 3 uses
  %i.vb = zext i8 %i.va to i32
  %i.vc = srem i32 %i.uw, 8
  %i.vd = sub nsw i32 7, %i.vc                    ; 2 uses
  %i.ve = lshr i32 %i.vb, %i.vd
  %i.vf = trunc nuw i32 %i.ve to i8
  %i.vg = and i8 %i.vf, 1
  %narrow185.i = sub nsw i8 0, %i.vg              ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.us, i64 3
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !107 ; 4 uses
  %i.vj = zext i8 %i.vi to i16
  %i.vk = icmp eq i8 %i.vi, 0
  br i1 %i.vk, label %lv_color_8_8_mix.exit.i94, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.vl = icmp ugt i8 %i.vi, -4
  br i1 %i.vl, label %lv_color_8_8_mix.exit.i94, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.vm = xor i8 %i.vi, -1
  %i.vn = zext i8 %i.uu to i16
  %i.vo = mul nuw i16 %i.vj, %i.vn
  %i.vp = zext i8 %narrow185.i to i16
  %i.vq = zext i8 %i.vm to i16
  %i.vr = mul nuw i16 %i.vp, %i.vq
  %i.vs = add i16 %i.vr, %i.vo
  %i.vt = lshr i16 %i.vs, 8
  %i.vu = trunc nuw i16 %i.vt to i8
  br label %lv_color_8_8_mix.exit.i94

lv_color_8_8_mix.exit.i94:                        ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0206.i95 = phi i8 [ %narrow185.i, %bb.aw ], [ %i.vu, %bb.ay ], [ %i.uu, %bb.ax ]
  %i.vv = icmp slt i8 %.0206.i95, 0
  %i.vw = shl nuw nsw i32 1, %i.vd
  %i.vx = trunc i32 %i.vw to i8                   ; 2 uses
  %i.vy = xor i8 %i.vx, -1
  %i.vz = and i8 %i.va, %i.vy
  %i.wa = or i8 %i.va, %i.vx
  %storemerge209.i96 = select i1 %i.vv, i8 %i.wa, i8 %i.vz
  store i8 %storemerge209.i96, ptr %i.uz, align 1, !tbaa !11
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %exitcond279.not.i97 = icmp eq i64 %indvars.iv.next276.i, %wide.trip.count278.i92
  br i1 %exitcond279.not.i97, label %._crit_edge246.i, label %bb.aw, !llvm.loop !63

._crit_edge246.i:                                 ; preds = %lv_color_8_8_mix.exit.i94
  %i.wb = getelementptr inbounds nuw i8, ptr %.0174247.i, i64 %i.uq
  %i.wc = getelementptr inbounds nuw i8, ptr %.0169248.i, i64 %i.ur
  %i.wd = add nuw nsw i32 %.0249.i, 1             ; 2 uses
  %exitcond280.not.i98 = icmp eq i32 %i.wd, %i.tl
  br i1 %exitcond280.not.i98, label %rgb565_image_blend.exit, label %.preheader.i93, !llvm.loop !64

bb.az:                                            ; preds = %bb.av
  %i.we = icmp ult i8 %i.tn, -3                   ; 2 uses
  %or.cond5.i72 = select i1 %i.ul, i1 %i.we, i1 false
  br i1 %or.cond5.i72, label %.preheader212.i84, label %bb.bd

.preheader212.i84:                                ; preds = %bb.az
  %i.wf = icmp sgt i32 %i.tl, 0
  br i1 %i.wf, label %.preheader211.lr.ph.i85, label %rgb565_image_blend.exit

.preheader211.lr.ph.i85:                          ; preds = %.preheader212.i84
  %i.wg = icmp sgt i32 %i.tj, 0
  %i.wh = zext i32 %i.tq to i64
  %i.wi = zext i32 %i.tu to i64
  br i1 %i.wg, label %.preheader211.preheader.i, label %rgb565_image_blend.exit

.preheader211.preheader.i:                        ; preds = %.preheader211.lr.ph.i85
  %wide.trip.count272.i = zext nneg i32 %i.tj to i64
  br label %.preheader211.i86

.preheader211.i86:                                ; preds = %._crit_edge241.i, %.preheader211.preheader.i
  %.1244.i = phi i32 [ %i.xw, %._crit_edge241.i ], [ 0, %.preheader211.preheader.i ]
  %.1170243.i = phi ptr [ %i.xv, %._crit_edge241.i ], [ %i.ts, %.preheader211.preheader.i ] ; 2 uses
  %.1175242.i = phi ptr [ %i.xu, %._crit_edge241.i ], [ %i.to, %.preheader211.preheader.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@lv_draw_sw_blend_image_to_i1:bb.a
  %i.yk = getelementptr inbounds i8, ptr %.2176236.i, i64 %i.yj ; 2 uses
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !11  ; 3 uses
  %i.ym = zext i8 %i.yl to i32
  %i.yn = srem i32 %i.yh, 8
  %i.yo = sub nsw i32 7, %i.yn                    ; 2 uses
  %i.yp = lshr i32 %i.ym, %i.yo
  %i.yq = trunc nuw i32 %i.yp to i8
  %i.yr = and i8 %i.yq, 1
  %narrow183.i = sub nsw i8 0, %i.yr              ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.0165238.i, i64 %indvars.iv263.i
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !11
  %i.yu = zext i8 %i.yt to i16
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yd, i64 3
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !107
  %i.yx = zext i8 %i.yw to i16
  %i.yy = mul nuw i16 %i.yx, %i.yu                ; 2 uses
  %i.yz = lshr i16 %i.yy, 8                       ; 3 uses
  %i.za = icmp eq i16 %i.yz, 0
  br i1 %i.za, label %lv_color_8_8_mix.exit191.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.zb = icmp ugt i16 %i.yy, -769
  br i1 %i.zb, label %lv_color_8_8_mix.exit191.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.zc = xor i16 %i.yz, 255
  %i.zd = zext i8 %i.yf to i16
  %i.ze = mul nuw i16 %i.yz, %i.zd
  %i.zf = zext i8 %narrow183.i to i16
  %i.zg = mul nuw i16 %i.zc, %i.zf
  %i.zh = add i16 %i.zg, %i.ze
  %i.zi = lshr i16 %i.zh, 8
  %i.zj = trunc nuw i16 %i.zi to i8
  br label %lv_color_8_8_mix.exit191.i

lv_color_8_8_mix.exit191.i:                       ; preds = %bb.bg, %bb.bf, %bb.be
  %.0204.i = phi i8 [ %narrow183.i, %bb.be ], [ %i.zj, %bb.bg ], [ %i.yf, %bb.bf ]
  %i.zk = icmp slt i8 %.0204.i, 0
  %i.zl = shl nuw nsw i32 1, %i.yo
  %i.zm = trunc i32 %i.zl to i8                   ; 2 uses
  %i.zn = xor i8 %i.zm, -1
  %i.zo = and i8 %i.yl, %i.zn
  %i.zp = or i8 %i.yl, %i.zm
  %storemerge207.i = select i1 %i.zk, i8 %i.zp, i8 %i.zo
  store i8 %storemerge207.i, ptr %i.yk, align 1, !tbaa !11
  %indvars.iv.next264.i = add nuw nsw i64 %indvars.iv263.i, 1 ; 2 uses
  %exitcond267.not.i = icmp eq i64 %indvars.iv.next264.i, %wide.trip.count266.i
  br i1 %exitcond267.not.i, label %._crit_edge235.i, label %bb.be, !llvm.loop !67

._crit_edge235.i:                                 ; preds = %lv_color_8_8_mix.exit191.i
  %i.zq = getelementptr inbounds nuw i8, ptr %.2176236.i, i64 %i.ya
  %i.zr = getelementptr inbounds nuw i8, ptr %.2171237.i, i64 %i.yb
  %i.zs = getelementptr inbounds i8, ptr %.0165238.i, i64 %i.yc
  %i.zt = add nuw nsw i32 %.2239.i, 1             ; 2 uses
  %exitcond268.not.i = icmp eq i32 %i.zt, %i.tl
  br i1 %exitcond268.not.i, label %rgb565_image_blend.exit, label %.preheader214.i83, !llvm.loop !68

bb.bh:                                            ; preds = %bb.bd
  %or.cond11.i74 = select i1 %i.xx, i1 %i.we, i1 false
  %i.zu = icmp sgt i32 %i.tl, 0
  %or.cond250.i = select i1 %or.cond11.i74, i1 %i.zu, i1 false
  br i1 %or.cond250.i, label %.preheader217.lr.ph.i75, label %rgb565_image_blend.exit

.preheader217.lr.ph.i75:                          ; preds = %bb.bh
  %i.zv = icmp sgt i32 %i.tj, 0
  %i.zw = zext i32 %i.tq to i64
  %i.zx = zext i32 %i.tu to i64
  %i.zy = sext i32 %i.ty to i64
  br i1 %i.zv, label %.preheader217.preheader.i76, label %rgb565_image_blend.exit

.preheader217.preheader.i76:                      ; preds = %.preheader217.lr.ph.i75
  %wide.trip.count260.i = zext nneg i32 %i.tj to i64
  br label %.preheader217.i77

.preheader217.i77:                                ; preds = %._crit_edge229.i, %.preheader217.preheader.i76
  %.3233.i = phi i32 [ %i.abr, %._crit_edge229.i ], [ 0, %.preheader217.preheader.i76 ]
  %.1166232.i = phi ptr [ %i.abq, %._crit_edge229.i ], [ %i.tw, %.preheader217.preheader.i76 ] ; 2 uses
  %.3172231.i = phi ptr [ %i.abp, %._crit_edge229.i ], [ %i.ts, %.preheader217.preheader.i76 ] ; 2 uses
  %.3177230.i = phi ptr [ %i.abo, %._crit_edge229.i ], [ %i.to, %.preheader217.preheader.i76 ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %lv_color_8_8_mix.exit194.i, %.preheader217.i77
  %indvars.iv257.i = phi i64 [ 0, %.preheader217.i77 ], [ %indvars.iv.next258.i, %lv_color_8_8_mix.exit194.i ] ; 4 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.3172231.i, i64 %indvars.iv257.i ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 1
  %i.aab = tail call zeroext i8 @lv_color32_luminance(i32 %i.aaa) #4 ; 2 uses
  %i.aac = trunc i64 %indvars.iv257.i to i32
  %i.aad = add i32 %i.ub, %i.aac                  ; 2 uses
  %i.aae = sdiv i32 %i.aad, 8
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds i8, ptr %.3177230.i, i64 %i.aaf ; 2 uses
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !11 ; 3 uses
  %i.aai = zext i8 %i.aah to i32
  %i.aaj = srem i32 %i.aad, 8
  %i.aak = sub nsw i32 7, %i.aaj                  ; 2 uses
  %i.aal = lshr i32 %i.aai, %i.aak
  %i.aam = trunc nuw i32 %i.aal to i8
  %i.aan = and i8 %i.aam, 1
  %narrow.i78 = sub nsw i8 0, %i.aan              ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.1166232.i, i64 %indvars.iv257.i
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !11
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = mul nuw nsw i32 %i.aaq, %i.um
  %i.aas = getelementptr inbounds nuw i8, ptr %i.zz, i64 3
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !107
  %i.aau = zext i8 %i.aat to i32
  %i.aav = mul nuw nsw i32 %i.aar, %i.aau         ; 2 uses
  %i.aaw = lshr i32 %i.aav, 16                    ; 2 uses
  %i.aax = trunc nuw nsw i32 %i.aaw to i16        ; 2 uses
  %i.aay = icmp eq i32 %i.aaw, 0
  br i1 %i.aay, label %lv_color_8_8_mix.exit194.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.aaz = icmp samesign ugt i32 %i.aav, 16580607
  br i1 %i.aaz, label %lv_color_8_8_mix.exit194.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aba = xor i16 %i.aax, 255
  %i.abb = zext i8 %i.aab to i16
  %i.abc = mul nuw i16 %i.aax, %i.abb
  %i.abd = zext i8 %narrow.i78 to i16
  %i.abe = mul nuw i16 %i.aba, %i.abd
  %i.abf = add i16 %i.abe, %i.abc
  %i.abg = lshr i16 %i.abf, 8
  %i.abh = trunc nuw i16 %i.abg to i8
  br label %lv_color_8_8_mix.exit194.i

lv_color_8_8_mix.exit194.i:                       ; preds = %bb.bk, %bb.bj, %bb.bi
  %.0203.i = phi i8 [ %narrow.i78, %bb.bi ], [ %i.abh, %bb.bk ], [ %i.aab, %bb.bj ]
  %i.abi = icmp slt i8 %.0203.i, 0
  %i.abj = shl nuw nsw i32 1, %i.aak
  %i.abk = trunc i32 %i.abj to i8                 ; 2 uses
  %i.abl = xor i8 %i.abk, -1
  %i.abm = and i8 %i.aah, %i.abl
  %i.abn = or i8 %i.aah, %i.abk
  %storemerge.i79 = select i1 %i.abi, i8 %i.abn, i8 %i.abm
  store i8 %storemerge.i79, ptr %i.aag, align 1, !tbaa !11
  %indvars.iv.next258.i = add nuw nsw i64 %indvars.iv257.i, 1 ; 2 uses
  %exitcond261.not.i = icmp eq i64 %indvars.iv.next258.i, %wide.trip.count260.i
  br i1 %exitcond261.not.i, label %._crit_edge229.i, label %bb.bi, !llvm.loop !69

._crit_edge229.i:                                 ; preds = %lv_color_8_8_mix.exit194.i
  %i.abo = getelementptr inbounds nuw i8, ptr %.3177230.i, i64 %i.zw
  %i.abp = getelementptr inbounds nuw i8, ptr %.3172231.i, i64 %i.zx
  %i.abq = getelementptr inbounds i8, ptr %.1166232.i, i64 %i.zy
  %i.abr = add nuw nsw i32 %.3233.i, 1            ; 2 uses
  %exitcond262.not.i = icmp eq i32 %i.abr, %i.tl
  br i1 %exitcond262.not.i, label %rgb565_image_blend.exit, label %.preheader217.i77, !llvm.loop !70

.preheader220.i60:                                ; preds = %._crit_edge.i70, %.preheader220.preheader.i58
  %.4227.i = phi i32 [ %i.adu, %._crit_edge.i70 ], [ 0, %.preheader220.preheader.i58 ]
  %.2167226.i = phi ptr [ %.3168.i, %._crit_edge.i70 ], [ %i.tw, %.preheader220.preheader.i58 ] ; 3 uses
  %.4173225.i = phi ptr [ %i.adt, %._crit_edge.i70 ], [ %i.ts, %.preheader220.preheader.i58 ] ; 2 uses
  %.4178224.i = phi ptr [ %i.ads, %._crit_edge.i70 ], [ %i.to, %.preheader220.preheader.i58 ] ; 2 uses
  %i.abs = icmp eq ptr %.2167226.i, null          ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %blend_non_normal_pixel.exit.i67, %.preheader220.i60
  %indvars.iv.i61 = phi i64 [ 0, %.preheader220.i60 ], [ %indvars.iv.next.i68, %blend_non_normal_pixel.exit.i67 ] ; 4 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.4173225.i, i64 %indvars.iv.i61 ; 2 uses
  %.sroa.0.sroa.0.0.copyload.i = load i24, ptr %i.abt, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abt, i64 3
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !11
  %i.abu = zext i8 %.sroa.4.0.copyload.i to i32   ; 2 uses
  br i1 %i.abs, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.abv = mul nuw nsw i32 %i.abu, %i.uh
  %i.abw = lshr i32 %i.abv, 8
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.abx = getelementptr inbounds nuw i8, ptr %.2167226.i, i64 %indvars.iv.i61
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !11
  %i.abz = zext i8 %i.aby to i32
  %i.aca = mul nuw nsw i32 %i.abu, %i.uh
  %i.acb = mul nuw nsw i32 %i.aca, %i.abz
  %i.acc = lshr i32 %i.acb, 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.4.0.i = phi i32 [ %i.abw, %bb.bm ], [ %i.acc, %bb.bn ] ; 4 uses
  %i.acd = load i32, ptr %i.uc, align 4, !tbaa !24
  %.sroa.4.0.insert.shift.i = shl nuw i32 %.sroa.4.0.i, 24
  %.sroa.0.0.insert.ext.i = zext i24 %.sroa.0.sroa.0.0.copyload.i to i32
  %.sroa.0.0.insert.insert.i62 = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i32 %.sroa.4.0.i to i16 ; 2 uses
  %i.ace = tail call zeroext i8 @lv_color32_luminance(i32 %.sroa.0.0.insert.insert.i62) #4 ; 3 uses
  %i.acf = zext i8 %i.ace to i32                  ; 2 uses
  %i.acg = trunc i64 %indvars.iv.i61 to i32
  %i.ach = add i32 %i.ub, %i.acg                  ; 2 uses
  %i.aci = sdiv i32 %i.ach, 8
  %i.acj = sext i32 %i.aci to i64
  %i.ack = getelementptr inbounds i8, ptr %.4178224.i, i64 %i.acj ; 2 uses
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !11 ; 3 uses
  %i.acm = zext i8 %i.acl to i32
  %i.acn = srem i32 %i.ach, 8
  %i.aco = sub nsw i32 7, %i.acn                  ; 2 uses
  %i.acp = lshr i32 %i.acm, %i.aco
  %i.acq = trunc nuw i32 %i.acp to i8
  %i.acr = and i8 %i.acq, 1
  %narrow.i.i63 = sub nsw i8 0, %i.acr            ; 6 uses
  switch i32 %i.acd, label %blend_non_normal_pixel.exit.i67 [
    i32 1, label %bb.bp
    i32 2, label %bb.bq
    i32 3, label %bb.br
    i32 4, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bo
  %3 = tail call i8 @llvm.uadd.sat.i8(i8 %narrow.i.i63, i8 %i.ace)
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  %i.acs = tail call i8 @llvm.usub.sat.i8(i8 %narrow.i.i63, i8 %i.ace)
  br label %bb.bt

bb.br:                                            ; preds = %bb.bo
  %i.act = zext i8 %narrow.i.i63 to i32
  %i.acu = mul nuw nsw i32 %i.act, %i.acf
  %i.acv = lshr i32 %i.acu, 8
  %i.acw = trunc nuw i32 %i.acv to i8
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.acx = zext i8 %narrow.i.i63 to i32
  %i.acy = sub nsw i32 %i.acx, %i.acf
  %i.acz = tail call i32 @llvm.abs.i32(i32 %i.acy, i1 true)
  %i.ada = trunc nuw i32 %i.acz to i8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.0.i.i64 = phi i8 [ %3, %bb.bp ], [ %i.acs, %bb.bq ], [ %i.acw, %bb.br ], [ %i.ada, %bb.bs ] ; 2 uses
  %i.adb = icmp eq i32 %.sroa.4.0.i, 0
  br i1 %i.adb, label %lv_color_8_8_mix.exit.i.i65, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.adc = icmp samesign ugt i32 %.sroa.4.0.i, 252
  br i1 %i.adc, label %lv_color_8_8_mix.exit.i.i65, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.add = xor i16 %.sroa.2.0.extract.trunc.i.i, 255
  %i.ade = zext i8 %.0.i.i64 to i16
  %i.adf = mul nuw i16 %i.ade, %.sroa.2.0.extract.trunc.i.i
  %i.adg = zext i8 %narrow.i.i63 to i16
  %i.adh = mul nuw i16 %i.add, %i.adg
  %i.adi = add i16 %i.adf, %i.adh
  %i.adj = lshr i16 %i.adi, 8
  %i.adk = trunc nuw i16 %i.adj to i8
  br label %lv_color_8_8_mix.exit.i.i65

lv_color_8_8_mix.exit.i.i65:                      ; preds = %bb.bv, %bb.bu, %bb.bt
  %.017.i.i66 = phi i8 [ %narrow.i.i63, %bb.bt ], [ %i.adk, %bb.bv ], [ %.0.i.i64, %bb.bu ]
  %i.adl = icmp slt i8 %.017.i.i66, 0
  %i.adm = shl nuw nsw i32 1, %i.aco
  %i.adn = trunc i32 %i.adm to i8                 ; 2 uses
  %i.ado = or i8 %i.acl, %i.adn
  %i.adp = xor i8 %i.adn, -1
  %i.adq = and i8 %i.acl, %i.adp
  %.sink.i195.i = select i1 %i.adl, i8 %i.ado, i8 %i.adq
  store i8 %.sink.i195.i, ptr %i.ack, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i67

blend_non_normal_pixel.exit.i67:                  ; preds = %lv_color_8_8_mix.exit.i.i65, %bb.bo
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %indvars.iv.next.i68, %wide.trip.count.i59
  br i1 %exitcond.not.i69, label %._crit_edge.i70, label %bb.bl, !llvm.loop !71

._crit_edge.i70:                                  ; preds = %blend_non_normal_pixel.exit.i67
  %i.adr = getelementptr inbounds i8, ptr %.2167226.i, i64 %i.ui
  %.3168.i = select i1 %i.abs, ptr null, ptr %i.adr
  %i.ads = getelementptr inbounds nuw i8, ptr %.4178224.i, i64 %i.uj
  %i.adt = getelementptr inbounds nuw i8, ptr %.4173225.i, i64 %i.uk
  %i.adu = add nuw nsw i32 %.4227.i, 1            ; 2 uses
  %exitcond256.not.i = icmp eq i32 %i.adu, %i.tl
  br i1 %exitcond256.not.i, label %rgb565_image_blend.exit, label %.preheader220.i60, !llvm.loop !72

bb.bw:                                            ; preds = %bb.a
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !14 ; 10 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !15 ; 11 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !16 ; 7 uses
  %i.aeb = load ptr, ptr %0, align 8, !tbaa !17   ; 6 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !18 ; 5 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !19 ; 5 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aeh = load i32, ptr %i.aeg, align 8, !tbaa !20 ; 5 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !21 ; 5 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !22 ; 3 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aen = load i32, ptr %i.aem, align 8, !tbaa !23
  %i.aeo = srem i32 %i.aen, 8                     ; 6 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !24
  %i.aer = icmp eq i32 %i.aeq, 0
  br i1 %i.aer, label %bb.bx, label %.preheader210.i99

.preheader210.i99:                                ; preds = %bb.bw
  %i.aes = icmp sgt i32 %i.ady, 0
  br i1 %i.aes, label %.preheader209.lr.ph.i, label %rgb565_image_blend.exit

.preheader209.lr.ph.i:                            ; preds = %.preheader210.i99
  %i.aet = icmp sgt i32 %i.adw, 0
  %i.aeu = zext i8 %i.aea to i16                  ; 2 uses
  %i.aev = sext i32 %i.ael to i64
  %i.aew = zext i32 %i.aed to i64
  %i.aex = zext i32 %i.aeh to i64
  br i1 %i.aet, label %.preheader209.preheader.i, label %rgb565_image_blend.exit

.preheader209.preheader.i:                        ; preds = %.preheader209.lr.ph.i
  %wide.trip.count.i100 = zext nneg i32 %i.adw to i64
  br label %.preheader209.i

bb.bx:                                            ; preds = %bb.bw
  %i.aey = icmp eq ptr %i.aej, null               ; 2 uses
  %i.aez = zext i8 %i.aea to i16                  ; 2 uses
  %i.afa = icmp ugt i8 %i.aea, -4                 ; 2 uses
  %or.cond.i118 = select i1 %i.aey, i1 %i.afa, i1 false
  br i1 %or.cond.i118, label %.preheader199.i, label %bb.bz

.preheader199.i:                                  ; preds = %bb.bx
  %i.afb = icmp sgt i32 %i.ady, 0
  br i1 %i.afb, label %.preheader.lr.ph.i138, label %rgb565_image_blend.exit

.preheader.lr.ph.i138:                            ; preds = %.preheader199.i
  %i.afc = icmp sgt i32 %i.adw, 0
  %i.afd = zext i32 %i.aed to i64
  %i.afe = zext i32 %i.aeh to i64
  br i1 %i.afc, label %.preheader.preheader.i139, label %rgb565_image_blend.exit

.preheader.preheader.i139:                        ; preds = %.preheader.lr.ph.i138
  %wide.trip.count292.i = zext nneg i32 %i.adw to i64
  br label %.preheader.i140

.preheader.i140:                                  ; preds = %._crit_edge243.i, %.preheader.preheader.i139
  %.0246.i = phi i32 [ %i.afw, %._crit_edge243.i ], [ 0, %.preheader.preheader.i139 ]
  %.0167245.i = phi ptr [ %i.afv, %._crit_edge243.i ], [ %i.aef, %.preheader.preheader.i139 ] ; 2 uses
  %.0172244.i = phi ptr [ %i.afu, %._crit_edge243.i ], [ %i.aeb, %.preheader.preheader.i139 ] ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.preheader.i140
  %indvars.iv287.i = phi i64 [ 0, %.preheader.i140 ], [ %indvars.iv.next288.i, %bb.by ] ; 3 uses
  %indvars289.i = trunc i64 %indvars.iv287.i to i32
  %i.aff = getelementptr inbounds nuw i8, ptr %.0167245.i, i64 %indvars.iv287.i
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !11
  %i.afh = icmp slt i8 %i.afg, 0
  %i.afi = add nsw i32 %i.aeo, %indvars289.i      ; 2 uses
  %i.afj = srem i32 %i.afi, 8
  %i.afk = sub nsw i32 7, %i.afj
  %i.afl = shl nuw nsw i32 1, %i.afk
  %i.afm = sdiv i32 %i.afi, 8
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds i8, ptr %.0172244.i, i64 %i.afn ; 2 uses
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !11 ; 2 uses
  %i.afq = trunc i32 %i.afl to i8                 ; 2 uses
  %i.afr = or i8 %i.afp, %i.afq
  %i.afs = xor i8 %i.afq, -1
  %i.aft = and i8 %i.afp, %i.afs
  %.sink.i141 = select i1 %i.afh, i8 %i.afr, i8 %i.aft
  store i8 %.sink.i141, ptr %i.afo, align 1, !tbaa !11
  %indvars.iv.next288.i = add nuw nsw i64 %indvars.iv287.i, 1 ; 2 uses
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next288.i, %wide.trip.count292.i
  br i1 %exitcond293.not.i, label %._crit_edge243.i, label %bb.by, !llvm.loop !73

._crit_edge243.i:                                 ; preds = %bb.by
  %i.afu = getelementptr inbounds nuw i8, ptr %.0172244.i, i64 %i.afd
  %i.afv = getelementptr inbounds nuw i8, ptr %.0167245.i, i64 %i.afe
  %i.afw = add nuw nsw i32 %.0246.i, 1            ; 2 uses
  %exitcond294.not.i = icmp eq i32 %i.afw, %i.ady
  br i1 %exitcond294.not.i, label %rgb565_image_blend.exit, label %.preheader.i140, !llvm.loop !74

bb.bz:                                            ; preds = %bb.bx
  %i.afx = icmp ult i8 %i.aea, -3                 ; 2 uses
  %or.cond5.i119 = select i1 %i.aey, i1 %i.afx, i1 false
  br i1 %or.cond5.i119, label %.preheader201.i, label %bb.ca

.preheader201.i:                                  ; preds = %bb.bz
  %i.afy = icmp sgt i32 %i.ady, 0
  br i1 %i.afy, label %.preheader200.lr.ph.i, label %rgb565_image_blend.exit

.preheader200.lr.ph.i:                            ; preds = %.preheader201.i
  %i.afz = icmp sgt i32 %i.adw, 0
  %i.aga = xor i8 %i.aea, -1
  %i.agb = zext i8 %i.aga to i16
  %i.agc = zext i32 %i.aed to i64                 ; 2 uses
  %i.agd = zext i32 %i.aeh to i64
  br i1 %i.afz, label %.preheader200.lr.ph.split.i, label %rgb565_image_blend.exit

.preheader200.lr.ph.split.i:                      ; preds = %.preheader200.lr.ph.i
  %i.age = icmp eq i8 %i.aea, 0
  %wide.trip.count276.i = zext nneg i32 %i.adw to i64 ; 2 uses
  br i1 %i.age, label %.preheader200.i, label %.preheader200.us.i

.preheader200.us.i:                               ; preds = %.preheader200.lr.ph.split.i, %._crit_edge233.split.us.us.i
  %.1238.us.i = phi i32 [ %i.ahe, %._crit_edge233.split.us.us.i ], [ 0, %.preheader200.lr.ph.split.i ]
  %.1168236.us.i = phi ptr [ %i.ahd, %._crit_edge233.split.us.us.i ], [ %i.aef, %.preheader200.lr.ph.split.i ] ; 2 uses
  %.1173234.us.i = phi ptr [ %i.ahc, %._crit_edge233.split.us.us.i ], [ %i.aeb, %.preheader200.lr.ph.split.i ] ; 2 uses
  br label %lv_color_8_8_mix.exit.us.us.i131

lv_color_8_8_mix.exit.us.us.i131:                 ; preds = %lv_color_8_8_mix.exit.us.us.i131, %.preheader200.us.i
  %indvars.iv279.i132 = phi i64 [ %indvars.iv.next280.i133, %lv_color_8_8_mix.exit.us.us.i131 ], [ 0, %.preheader200.us.i ] ; 3 uses
  %indvars281.i = trunc i64 %indvars.iv279.i132 to i32
  %i.agf = add nsw i32 %i.aeo, %indvars281.i      ; 2 uses
  %i.agg = sdiv i32 %i.agf, 8
  %i.agh = sext i32 %i.agg to i64
  %i.agi = getelementptr inbounds i8, ptr %.1173234.us.i, i64 %i.agh ; 2 uses
  %i.agj = load i8, ptr %i.agi, align 1, !tbaa !11 ; 3 uses
  %i.agk = zext i8 %i.agj to i32
  %i.agl = srem i32 %i.agf, 8
  %i.agm = sub nsw i32 7, %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %.1168236.us.i, i64 %indvars.iv279.i132
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !11
  %i.agp = zext i8 %i.ago to i16
  %i.agq = mul nuw i16 %i.agp, %i.aez
  %i.agr = shl nuw nsw i32 1, %i.agm              ; 2 uses
  %i.ags = and i32 %i.agr, %i.agk
  %i.agt = icmp eq i32 %i.ags, 0
  %i.agu = select i1 %i.agt, i16 0, i16 255
  %i.agv = mul nuw i16 %i.agu, %i.agb
  %i.agw = add i16 %i.agv, %i.agq
  %i.agx = icmp slt i16 %i.agw, 0
  %i.agy = trunc i32 %i.agr to i8                 ; 2 uses
  %i.agz = xor i8 %i.agy, -1
  %i.aha = and i8 %i.agj, %i.agz
  %i.ahb = or i8 %i.agj, %i.agy
  %storemerge198.us.us.i = select i1 %i.agx, i8 %i.ahb, i8 %i.aha
  store i8 %storemerge198.us.us.i, ptr %i.agi, align 1, !tbaa !11
end_hunk_2
begin_hunk_3_@lv_draw_sw_blend_image_to_i1:bb.a
  %.0163229.i = phi ptr [ %i.ajk, %._crit_edge226.i ], [ %i.aej, %.preheader203.preheader.i ] ; 2 uses
  %.2169228.i = phi ptr [ %i.ajj, %._crit_edge226.i ], [ %i.aef, %.preheader203.preheader.i ] ; 2 uses
  %.2174227.i = phi ptr [ %i.aji, %._crit_edge226.i ], [ %i.aeb, %.preheader203.preheader.i ] ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %lv_color_8_8_mix.exit184.i, %.preheader203.i
  %indvars.iv263.i127 = phi i64 [ 0, %.preheader203.i ], [ %indvars.iv.next264.i128, %lv_color_8_8_mix.exit184.i ] ; 4 uses
  %indvars265.i = trunc i64 %indvars.iv263.i127 to i32
  %i.aib = getelementptr inbounds nuw i8, ptr %.2169228.i, i64 %indvars.iv263.i127
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !11 ; 2 uses
  %i.aid = add nsw i32 %i.aeo, %indvars265.i      ; 2 uses
  %i.aie = sdiv i32 %i.aid, 8
  %i.aif = sext i32 %i.aie to i64
  %i.aig = getelementptr inbounds i8, ptr %.2174227.i, i64 %i.aif ; 2 uses
  %i.aih = load i8, ptr %i.aig, align 1, !tbaa !11 ; 3 uses
  %i.aii = zext i8 %i.aih to i32
  %i.aij = srem i32 %i.aid, 8
  %i.aik = sub nsw i32 7, %i.aij                  ; 2 uses
  %i.ail = lshr i32 %i.aii, %i.aik
  %i.aim = trunc nuw i32 %i.ail to i8
  %i.ain = and i8 %i.aim, 1
  %narrow180.i = sub nsw i8 0, %i.ain             ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.0163229.i, i64 %indvars.iv263.i127
  %i.aip = load i8, ptr %i.aio, align 1, !tbaa !11 ; 4 uses
  %i.aiq = zext i8 %i.aip to i16
  %i.air = icmp eq i8 %i.aip, 0
  br i1 %i.air, label %lv_color_8_8_mix.exit184.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ais = icmp ugt i8 %i.aip, -4
  br i1 %i.ais, label %lv_color_8_8_mix.exit184.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ait = xor i8 %i.aip, -1
  %i.aiu = zext i8 %i.aic to i16
  %i.aiv = mul nuw i16 %i.aiq, %i.aiu
  %i.aiw = zext i8 %narrow180.i to i16
  %i.aix = zext i8 %i.ait to i16
  %i.aiy = mul nuw i16 %i.aiw, %i.aix
  %i.aiz = add i16 %i.aiy, %i.aiv
  %i.aja = lshr i16 %i.aiz, 8
  %i.ajb = trunc nuw i16 %i.aja to i8
  br label %lv_color_8_8_mix.exit184.i

lv_color_8_8_mix.exit184.i:                       ; preds = %bb.cd, %bb.cc, %bb.cb
  %.0195.i = phi i8 [ %narrow180.i, %bb.cb ], [ %i.ajb, %bb.cd ], [ %i.aic, %bb.cc ]
  %i.ajc = icmp slt i8 %.0195.i, 0
  %i.ajd = shl nuw nsw i32 1, %i.aik
  %i.aje = trunc i32 %i.ajd to i8                 ; 2 uses
  %i.ajf = xor i8 %i.aje, -1
  %i.ajg = and i8 %i.aih, %i.ajf
  %i.ajh = or i8 %i.aih, %i.aje
  %storemerge197.i = select i1 %i.ajc, i8 %i.ajh, i8 %i.ajg
  store i8 %storemerge197.i, ptr %i.aig, align 1, !tbaa !11
  %indvars.iv.next264.i128 = add nuw nsw i64 %indvars.iv263.i127, 1 ; 2 uses
  %exitcond269.not.i = icmp eq i64 %indvars.iv.next264.i128, %wide.trip.count268.i
  br i1 %exitcond269.not.i, label %._crit_edge226.i, label %bb.cb, !llvm.loop !77

._crit_edge226.i:                                 ; preds = %lv_color_8_8_mix.exit184.i
  %i.aji = getelementptr inbounds nuw i8, ptr %.2174227.i, i64 %i.ahy
  %i.ajj = getelementptr inbounds nuw i8, ptr %.2169228.i, i64 %i.ahz
  %i.ajk = getelementptr inbounds i8, ptr %.0163229.i, i64 %i.aia
  %i.ajl = add nuw nsw i32 %.2230.i, 1            ; 2 uses
  %exitcond270.not.i129 = icmp eq i32 %i.ajl, %i.ady
  br i1 %exitcond270.not.i129, label %rgb565_image_blend.exit, label %.preheader203.i, !llvm.loop !78

bb.ce:                                            ; preds = %bb.ca
  %or.cond11.i121 = select i1 %i.ahv, i1 %i.afx, i1 false
  %i.ajm = icmp sgt i32 %i.ady, 0
  %or.cond247.i = select i1 %or.cond11.i121, i1 %i.ajm, i1 false
  br i1 %or.cond247.i, label %.preheader206.lr.ph.i, label %rgb565_image_blend.exit

.preheader206.lr.ph.i:                            ; preds = %bb.ce
  %i.ajn = icmp sgt i32 %i.adw, 0
  %i.ajo = zext i32 %i.aed to i64
  %i.ajp = zext i32 %i.aeh to i64
  %i.ajq = sext i32 %i.ael to i64
  br i1 %i.ajn, label %.preheader206.preheader.i, label %rgb565_image_blend.exit

.preheader206.preheader.i:                        ; preds = %.preheader206.lr.ph.i
  %wide.trip.count260.i122 = zext nneg i32 %i.adw to i64
  br label %.preheader206.i

.preheader206.i:                                  ; preds = %._crit_edge219.i, %.preheader206.preheader.i
  %.3223.i = phi i32 [ %i.alc, %._crit_edge219.i ], [ 0, %.preheader206.preheader.i ]
  %.1164222.i = phi ptr [ %i.alb, %._crit_edge219.i ], [ %i.aej, %.preheader206.preheader.i ] ; 2 uses
  %.3170221.i = phi ptr [ %i.ala, %._crit_edge219.i ], [ %i.aef, %.preheader206.preheader.i ] ; 2 uses
  %.3175220.i = phi ptr [ %i.akz, %._crit_edge219.i ], [ %i.aeb, %.preheader206.preheader.i ] ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %lv_color_8_8_mix.exit187.i, %.preheader206.i
  %indvars.iv255.i = phi i64 [ 0, %.preheader206.i ], [ %indvars.iv.next256.i, %lv_color_8_8_mix.exit187.i ] ; 4 uses
  %indvars257.i = trunc i64 %indvars.iv255.i to i32
  %i.ajr = getelementptr inbounds nuw i8, ptr %.3170221.i, i64 %indvars.iv255.i
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !11 ; 2 uses
  %i.ajt = add nsw i32 %i.aeo, %indvars257.i      ; 2 uses
  %i.aju = sdiv i32 %i.ajt, 8
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds i8, ptr %.3175220.i, i64 %i.ajv ; 2 uses
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !11 ; 3 uses
  %i.ajy = zext i8 %i.ajx to i32
  %i.ajz = srem i32 %i.ajt, 8
  %i.aka = sub nsw i32 7, %i.ajz                  ; 2 uses
  %i.akb = lshr i32 %i.ajy, %i.aka
  %i.akc = trunc nuw i32 %i.akb to i8
  %i.akd = and i8 %i.akc, 1
  %narrow.i123 = sub nsw i8 0, %i.akd             ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.1164222.i, i64 %indvars.iv255.i
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !11
  %i.akg = zext i8 %i.akf to i16
  %i.akh = mul nuw i16 %i.akg, %i.aez             ; 2 uses
  %i.aki = lshr i16 %i.akh, 8                     ; 3 uses
  %i.akj = icmp eq i16 %i.aki, 0
  br i1 %i.akj, label %lv_color_8_8_mix.exit187.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.akk = icmp ugt i16 %i.akh, -769
  br i1 %i.akk, label %lv_color_8_8_mix.exit187.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.akl = xor i16 %i.aki, 255
  %i.akm = zext i8 %i.ajs to i16
  %i.akn = mul nuw i16 %i.aki, %i.akm
  %i.ako = zext i8 %narrow.i123 to i16
  %i.akp = mul nuw i16 %i.akl, %i.ako
  %i.akq = add i16 %i.akp, %i.akn
  %i.akr = lshr i16 %i.akq, 8
  %i.aks = trunc nuw i16 %i.akr to i8
  br label %lv_color_8_8_mix.exit187.i

lv_color_8_8_mix.exit187.i:                       ; preds = %bb.ch, %bb.cg, %bb.cf
  %.0194.i = phi i8 [ %narrow.i123, %bb.cf ], [ %i.aks, %bb.ch ], [ %i.ajs, %bb.cg ]
  %i.akt = icmp slt i8 %.0194.i, 0
  %i.aku = shl nuw nsw i32 1, %i.aka
  %i.akv = trunc i32 %i.aku to i8                 ; 2 uses
  %i.akw = xor i8 %i.akv, -1
  %i.akx = and i8 %i.ajx, %i.akw
  %i.aky = or i8 %i.ajx, %i.akv
  %storemerge.i124 = select i1 %i.akt, i8 %i.aky, i8 %i.akx
  store i8 %storemerge.i124, ptr %i.ajw, align 1, !tbaa !11
  %indvars.iv.next256.i = add nuw nsw i64 %indvars.iv255.i, 1 ; 2 uses
  %exitcond261.not.i125 = icmp eq i64 %indvars.iv.next256.i, %wide.trip.count260.i122
  br i1 %exitcond261.not.i125, label %._crit_edge219.i, label %bb.cf, !llvm.loop !79

._crit_edge219.i:                                 ; preds = %lv_color_8_8_mix.exit187.i
  %i.akz = getelementptr inbounds nuw i8, ptr %.3175220.i, i64 %i.ajo
  %i.ala = getelementptr inbounds nuw i8, ptr %.3170221.i, i64 %i.ajp
  %i.alb = getelementptr inbounds i8, ptr %.1164222.i, i64 %i.ajq
  %i.alc = add nuw nsw i32 %.3223.i, 1            ; 2 uses
  %exitcond262.not.i126 = icmp eq i32 %i.alc, %i.ady
  br i1 %exitcond262.not.i126, label %rgb565_image_blend.exit, label %.preheader206.i, !llvm.loop !80

.preheader209.i:                                  ; preds = %._crit_edge.i117, %.preheader209.preheader.i
  %.4216.i = phi i32 [ %i.ane, %._crit_edge.i117 ], [ 0, %.preheader209.preheader.i ]
  %.2165215.i = phi ptr [ %.3166.i, %._crit_edge.i117 ], [ %i.aej, %.preheader209.preheader.i ] ; 3 uses
  %.4171214.i = phi ptr [ %i.and, %._crit_edge.i117 ], [ %i.aef, %.preheader209.preheader.i ] ; 2 uses
  %.4176213.i = phi ptr [ %i.anc, %._crit_edge.i117 ], [ %i.aeb, %.preheader209.preheader.i ] ; 2 uses
  %i.ald = icmp eq ptr %.2165215.i, null          ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %blend_non_normal_pixel.exit.i114, %.preheader209.i
  %indvars.iv.i101 = phi i64 [ 0, %.preheader209.i ], [ %indvars.iv.next.i115, %blend_non_normal_pixel.exit.i114 ] ; 4 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.4171214.i, i64 %indvars.iv.i101
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !11
  br i1 %i.ald, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.alg = getelementptr inbounds nuw i8, ptr %.2165215.i, i64 %indvars.iv.i101
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !11
  %i.ali = zext i8 %i.alh to i16
  %i.alj = mul nuw i16 %i.ali, %i.aeu
  %i.alk = lshr i16 %i.alj, 8                     ; 2 uses
  %i.all = trunc nuw i16 %i.alk to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.sroa.2.0.extract.trunc.i.pre-phi.i102 = phi i16 [ %i.aeu, %bb.ci ], [ %i.alk, %bb.cj ] ; 2 uses
  %.sroa.6.0.i103 = phi i8 [ %i.aea, %bb.ci ], [ %i.all, %bb.cj ] ; 3 uses
  %i.alm = load i32, ptr %i.aep, align 4, !tbaa !24
  %.sroa.6.0.insert.ext.i104 = zext i8 %.sroa.6.0.i103 to i32
  %.sroa.6.0.insert.shift.i105 = shl nuw i32 %.sroa.6.0.insert.ext.i104, 24
  %.sroa.5.0.insert.ext.i106 = zext i8 %i.alf to i32 ; 3 uses
  %.sroa.5.0.insert.shift.i107 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i106, 16
  %.sroa.4.0.insert.shift.i108 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i106, 8
  %i.aln = or disjoint i32 %.sroa.5.0.insert.shift.i107, %.sroa.4.0.insert.shift.i108
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.shift.i105, %i.aln
  %.sroa.0.0.insert.insert.i109 = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.5.0.insert.ext.i106
  %i.alo = tail call zeroext i8 @lv_color32_luminance(i32 %.sroa.0.0.insert.insert.i109) #4 ; 3 uses
  %i.alp = zext i8 %i.alo to i32                  ; 2 uses
  %i.alq = trunc i64 %indvars.iv.i101 to i32
  %i.alr = add i32 %i.aeo, %i.alq                 ; 2 uses
  %i.als = sdiv i32 %i.alr, 8
  %i.alt = sext i32 %i.als to i64
  %i.alu = getelementptr inbounds i8, ptr %.4176213.i, i64 %i.alt ; 2 uses
  %i.alv = load i8, ptr %i.alu, align 1, !tbaa !11 ; 3 uses
  %i.alw = zext i8 %i.alv to i32
  %i.alx = srem i32 %i.alr, 8
  %i.aly = sub nsw i32 7, %i.alx                  ; 2 uses
  %i.alz = lshr i32 %i.alw, %i.aly
  %i.ama = trunc nuw i32 %i.alz to i8
  %i.amb = and i8 %i.ama, 1
  %narrow.i.i110 = sub nsw i8 0, %i.amb           ; 6 uses
  switch i32 %i.alm, label %blend_non_normal_pixel.exit.i114 [
    i32 1, label %bb.cl
    i32 2, label %bb.cm
    i32 3, label %bb.cn
    i32 4, label %bb.co
  ]

bb.cl:                                            ; preds = %bb.ck
  %4 = tail call i8 @llvm.uadd.sat.i8(i8 %narrow.i.i110, i8 %i.alo)
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  %i.amc = tail call i8 @llvm.usub.sat.i8(i8 %narrow.i.i110, i8 %i.alo)
  br label %bb.cp

bb.cn:                                            ; preds = %bb.ck
  %i.amd = zext i8 %narrow.i.i110 to i32
  %i.ame = mul nuw nsw i32 %i.amd, %i.alp
  %i.amf = lshr i32 %i.ame, 8
  %i.amg = trunc nuw i32 %i.amf to i8
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.amh = zext i8 %narrow.i.i110 to i32
  %i.ami = sub nsw i32 %i.amh, %i.alp
  %i.amj = tail call i32 @llvm.abs.i32(i32 %i.ami, i1 true)
  %i.amk = trunc nuw i32 %i.amj to i8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %.0.i.i111 = phi i8 [ %4, %bb.cl ], [ %i.amc, %bb.cm ], [ %i.amg, %bb.cn ], [ %i.amk, %bb.co ] ; 2 uses
  %i.aml = icmp eq i8 %.sroa.6.0.i103, 0
  br i1 %i.aml, label %lv_color_8_8_mix.exit.i.i112, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.amm = icmp ugt i8 %.sroa.6.0.i103, -4
  br i1 %i.amm, label %lv_color_8_8_mix.exit.i.i112, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.amn = xor i16 %.sroa.2.0.extract.trunc.i.pre-phi.i102, 255
  %i.amo = zext i8 %.0.i.i111 to i16
  %i.amp = mul nuw i16 %.sroa.2.0.extract.trunc.i.pre-phi.i102, %i.amo
  %i.amq = zext i8 %narrow.i.i110 to i16
  %i.amr = mul nuw i16 %i.amn, %i.amq
  %i.ams = add i16 %i.amp, %i.amr
  %i.amt = lshr i16 %i.ams, 8
  %i.amu = trunc nuw i16 %i.amt to i8
  br label %lv_color_8_8_mix.exit.i.i112

lv_color_8_8_mix.exit.i.i112:                     ; preds = %bb.cr, %bb.cq, %bb.cp
  %.017.i.i113 = phi i8 [ %narrow.i.i110, %bb.cp ], [ %i.amu, %bb.cr ], [ %.0.i.i111, %bb.cq ]
  %i.amv = icmp slt i8 %.017.i.i113, 0
  %i.amw = shl nuw nsw i32 1, %i.aly
  %i.amx = trunc i32 %i.amw to i8                 ; 2 uses
  %i.amy = or i8 %i.alv, %i.amx
  %i.amz = xor i8 %i.amx, -1
  %i.ana = and i8 %i.alv, %i.amz
  %.sink.i188.i = select i1 %i.amv, i8 %i.amy, i8 %i.ana
  store i8 %.sink.i188.i, ptr %i.alu, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i114

blend_non_normal_pixel.exit.i114:                 ; preds = %lv_color_8_8_mix.exit.i.i112, %bb.ck
  %indvars.iv.next.i115 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next.i115, %wide.trip.count.i100
  br i1 %exitcond.not.i116, label %._crit_edge.i117, label %bb.ci, !llvm.loop !81

._crit_edge.i117:                                 ; preds = %blend_non_normal_pixel.exit.i114
  %i.anb = getelementptr inbounds i8, ptr %.2165215.i, i64 %i.aev
  %.3166.i = select i1 %i.ald, ptr null, ptr %i.anb
  %i.anc = getelementptr inbounds nuw i8, ptr %.4176213.i, i64 %i.aew
  %i.and = getelementptr inbounds nuw i8, ptr %.4171214.i, i64 %i.aex
  %i.ane = add nuw nsw i32 %.4216.i, 1            ; 2 uses
  %exitcond254.not.i = icmp eq i32 %i.ane, %i.ady
  br i1 %exitcond254.not.i, label %rgb565_image_blend.exit, label %.preheader209.i, !llvm.loop !82

bb.cs:                                            ; preds = %bb.a
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ang = load i32, ptr %i.anf, align 8, !tbaa !14 ; 10 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !15 ; 10 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ank = load i8, ptr %i.anj, align 8, !tbaa !16 ; 4 uses
  %i.anl = load ptr, ptr %0, align 8, !tbaa !17   ; 5 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ann = load i32, ptr %i.anm, align 8, !tbaa !18 ; 5 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !19 ; 5 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.anr = load i32, ptr %i.anq, align 8, !tbaa !20 ; 5 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !21 ; 5 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.anv = load i32, ptr %i.anu, align 8, !tbaa !22 ; 3 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !23
  %i.any = srem i32 %i.anx, 8                     ; 5 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !24
  %i.aob = icmp eq i32 %i.aoa, 0
  br i1 %i.aob, label %bb.ct, label %.preheader234.i

.preheader234.i:                                  ; preds = %bb.cs
  %i.aoc = icmp sgt i32 %i.ani, 0
  br i1 %i.aoc, label %.preheader233.lr.ph.i, label %rgb565_image_blend.exit

.preheader233.lr.ph.i:                            ; preds = %.preheader234.i
  %i.aod = icmp sgt i32 %i.ang, 0
  %i.aoe = zext i8 %i.ank to i32                  ; 2 uses
  %i.aof = sext i32 %i.anv to i64
  %i.aog = zext i32 %i.ann to i64
  %i.aoh = zext i32 %i.anr to i64
  br i1 %i.aod, label %.preheader233.preheader.i, label %rgb565_image_blend.exit

.preheader233.preheader.i:                        ; preds = %.preheader233.lr.ph.i
  %wide.trip.count.i142 = zext nneg i32 %i.ang to i64
  br label %.preheader233.i

bb.ct:                                            ; preds = %bb.cs
  %i.aoi = icmp eq ptr %i.ant, null               ; 2 uses
  %i.aoj = zext i8 %i.ank to i32                  ; 2 uses
  %i.aok = icmp ugt i8 %i.ank, -4                 ; 2 uses
  %or.cond.i161 = select i1 %i.aoi, i1 %i.aok, i1 false
  br i1 %or.cond.i161, label %.preheader223.i173, label %bb.cx

.preheader223.i173:                               ; preds = %bb.ct
  %i.aol = icmp sgt i32 %i.ani, 0
  br i1 %i.aol, label %.preheader.lr.ph.i174, label %rgb565_image_blend.exit

.preheader.lr.ph.i174:                            ; preds = %.preheader223.i173
  %i.aom = icmp sgt i32 %i.ang, 0
  %i.aon = zext i32 %i.ann to i64
  %i.aoo = zext i32 %i.anr to i64
  br i1 %i.aom, label %.preheader.preheader.i175, label %rgb565_image_blend.exit

.preheader.preheader.i175:                        ; preds = %.preheader.lr.ph.i174
  %wide.trip.count306.i = zext nneg i32 %i.ang to i64
  br label %.preheader.i176

.preheader.i176:                                  ; preds = %._crit_edge264.i, %.preheader.preheader.i175
  %.0267.i = phi i32 [ %i.apy, %._crit_edge264.i ], [ 0, %.preheader.preheader.i175 ]
  %.0182266.i = phi ptr [ %i.apx, %._crit_edge264.i ], [ %i.anp, %.preheader.preheader.i175 ] ; 2 uses
  %.0187265.i = phi ptr [ %i.apw, %._crit_edge264.i ], [ %i.anl, %.preheader.preheader.i175 ] ; 2 uses
  br label %bb.cu

bb.cu:                                            ; preds = %lv_color_8_8_mix.exit.i178, %.preheader.i176
  %indvars.iv301.i = phi i64 [ 0, %.preheader.i176 ], [ %indvars.iv.next302.i, %lv_color_8_8_mix.exit.i178 ] ; 3 uses
  %indvars305.i = trunc i64 %indvars.iv301.i to i32
  %i.aop = add nsw i32 %i.any, %indvars305.i      ; 2 uses
  %i.aoq = sdiv i32 %i.aop, 8
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = getelementptr inbounds i8, ptr %.0187265.i, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !11 ; 3 uses
  %i.aou = zext i8 %i.aot to i32
  %i.aov = srem i32 %i.aop, 8
  %i.aow = sub nsw i32 7, %i.aov                  ; 2 uses
  %i.aox = lshr i32 %i.aou, %i.aow
  %i.aoy = trunc nuw i32 %i.aox to i8
  %i.aoz = and i8 %i.aoy, 1
  %narrow198.i177 = sub nsw i8 0, %i.aoz          ; 2 uses
  %i.apa = getelementptr inbounds nuw [2 x i8], ptr %.0182266.i, i64 %indvars.iv301.i ; 2 uses
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !109 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apa, i64 1
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !110 ; 4 uses
  %i.ape = zext i8 %i.apd to i16
  %i.apf = icmp eq i8 %i.apd, 0
  br i1 %i.apf, label %lv_color_8_8_mix.exit.i178, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.apg = icmp ugt i8 %i.apd, -4
  br i1 %i.apg, label %lv_color_8_8_mix.exit.i178, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aph = xor i8 %i.apd, -1
  %i.api = zext i8 %i.apb to i16
  %i.apj = mul nuw i16 %i.ape, %i.api
  %i.apk = zext i8 %narrow198.i177 to i16
  %i.apl = zext i8 %i.aph to i16
  %i.apm = mul nuw i16 %i.apk, %i.apl
  %i.apn = add i16 %i.apm, %i.apj
  %i.apo = lshr i16 %i.apn, 8
  %i.app = trunc nuw i16 %i.apo to i8
  br label %lv_color_8_8_mix.exit.i178

lv_color_8_8_mix.exit.i178:                       ; preds = %bb.cw, %bb.cv, %bb.cu
  %.0219.i = phi i8 [ %narrow198.i177, %bb.cu ], [ %i.app, %bb.cw ], [ %i.apb, %bb.cv ]
  %i.apq = icmp slt i8 %.0219.i, 0
  %i.apr = shl nuw nsw i32 1, %i.aow
  %i.aps = trunc i32 %i.apr to i8                 ; 2 uses
  %i.apt = xor i8 %i.aps, -1
  %i.apu = and i8 %i.aot, %i.apt
  %i.apv = or i8 %i.aot, %i.aps
  %storemerge222.i = select i1 %i.apq, i8 %i.apv, i8 %i.apu
  store i8 %storemerge222.i, ptr %i.aos, align 1, !tbaa !11
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond307.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count306.i
  br i1 %exitcond307.not.i, label %._crit_edge264.i, label %bb.cu, !llvm.loop !83

._crit_edge264.i:                                 ; preds = %lv_color_8_8_mix.exit.i178
  %i.apw = getelementptr inbounds nuw i8, ptr %.0187265.i, i64 %i.aon
  %i.apx = getelementptr inbounds nuw i8, ptr %.0182266.i, i64 %i.aoo
  %i.apy = add nuw nsw i32 %.0267.i, 1            ; 2 uses
  %exitcond308.not.i = icmp eq i32 %i.apy, %i.ani
  br i1 %exitcond308.not.i, label %rgb565_image_blend.exit, label %.preheader.i176, !llvm.loop !84

bb.cx:                                            ; preds = %bb.ct
  %i.apz = icmp ult i8 %i.ank, -3                 ; 2 uses
  %or.cond5.i162 = select i1 %i.aoi, i1 %i.apz, i1 false
  br i1 %or.cond5.i162, label %.preheader225.i171, label %bb.db

.preheader225.i171:                               ; preds = %bb.cx
  %i.aqa = icmp sgt i32 %i.ani, 0
  br i1 %i.aqa, label %.preheader224.lr.ph.i, label %rgb565_image_blend.exit

.preheader224.lr.ph.i:                            ; preds = %.preheader225.i171
  %i.aqb = icmp sgt i32 %i.ang, 0
  %i.aqc = zext i32 %i.ann to i64
  %i.aqd = zext i32 %i.anr to i64
  br i1 %i.aqb, label %.preheader224.preheader.i, label %rgb565_image_blend.exit

.preheader224.preheader.i:                        ; preds = %.preheader224.lr.ph.i
  %wide.trip.count298.i = zext nneg i32 %i.ang to i64
  br label %.preheader224.i

.preheader224.i:                                  ; preds = %._crit_edge258.i, %.preheader224.preheader.i
  %.1261.i = phi i32 [ %i.arp, %._crit_edge258.i ], [ 0, %.preheader224.preheader.i ]
  %.1183260.i = phi ptr [ %i.aro, %._crit_edge258.i ], [ %i.anp, %.preheader224.preheader.i ] ; 2 uses
  %.1188259.i = phi ptr [ %i.arn, %._crit_edge258.i ], [ %i.anl, %.preheader224.preheader.i ] ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %lv_color_8_8_mix.exit201.i, %.preheader224.i
  %indvars.iv293.i = phi i64 [ 0, %.preheader224.i ], [ %indvars.iv.next294.i, %lv_color_8_8_mix.exit201.i ] ; 3 uses
end_hunk_3
begin_hunk_4_@lv_draw_sw_blend_image_to_i1:bb.a
  %i.ase = lshr i32 %i.asb, %i.asd
  %i.asf = trunc nuw i32 %i.ase to i8
  %i.asg = and i8 %i.asf, 1
  %narrow196.i170 = sub nsw i8 0, %i.asg          ; 2 uses
  %i.ash = getelementptr inbounds nuw [2 x i8], ptr %.2184253.i, i64 %indvars.iv285.i ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !109 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ash, i64 1
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !110
  %i.asl = zext i8 %i.ask to i16
  %i.asm = getelementptr inbounds nuw i8, ptr %.0178254.i, i64 %indvars.iv285.i
  %i.asn = load i8, ptr %i.asm, align 1, !tbaa !11
  %i.aso = zext i8 %i.asn to i16
  %i.asp = mul nuw i16 %i.aso, %i.asl             ; 2 uses
  %i.asq = lshr i16 %i.asp, 8                     ; 3 uses
  %i.asr = icmp eq i16 %i.asq, 0
  br i1 %i.asr, label %lv_color_8_8_mix.exit204.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ass = icmp ugt i16 %i.asp, -769
  br i1 %i.ass, label %lv_color_8_8_mix.exit204.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ast = xor i16 %i.asq, 255
  %i.asu = zext i8 %i.asi to i16
  %i.asv = mul nuw i16 %i.asq, %i.asu
  %i.asw = zext i8 %narrow196.i170 to i16
  %i.asx = mul nuw i16 %i.ast, %i.asw
  %i.asy = add i16 %i.asx, %i.asv
  %i.asz = lshr i16 %i.asy, 8
  %i.ata = trunc nuw i16 %i.asz to i8
  br label %lv_color_8_8_mix.exit204.i

lv_color_8_8_mix.exit204.i:                       ; preds = %bb.de, %bb.dd, %bb.dc
  %.0217.i = phi i8 [ %narrow196.i170, %bb.dc ], [ %i.ata, %bb.de ], [ %i.asi, %bb.dd ]
  %i.atb = icmp slt i8 %.0217.i, 0
  %i.atc = shl nuw nsw i32 1, %i.asd
  %i.atd = trunc i32 %i.atc to i8                 ; 2 uses
  %i.ate = xor i8 %i.atd, -1
  %i.atf = and i8 %i.asa, %i.ate
  %i.atg = or i8 %i.asa, %i.atd
  %storemerge220.i = select i1 %i.atb, i8 %i.atg, i8 %i.atf
  store i8 %storemerge220.i, ptr %i.arz, align 1, !tbaa !11
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond291.not.i = icmp eq i64 %indvars.iv.next286.i, %wide.trip.count290.i
  br i1 %exitcond291.not.i, label %._crit_edge251.i, label %bb.dc, !llvm.loop !87

._crit_edge251.i:                                 ; preds = %lv_color_8_8_mix.exit204.i
  %i.ath = getelementptr inbounds nuw i8, ptr %.2189252.i, i64 %i.art
  %i.ati = getelementptr inbounds nuw i8, ptr %.2184253.i, i64 %i.aru
  %i.atj = getelementptr inbounds i8, ptr %.0178254.i, i64 %i.arv
  %i.atk = add nuw nsw i32 %.2255.i, 1            ; 2 uses
  %exitcond292.not.i = icmp eq i32 %i.atk, %i.ani
  br i1 %exitcond292.not.i, label %rgb565_image_blend.exit, label %.preheader227.i, !llvm.loop !88

bb.df:                                            ; preds = %bb.db
  %or.cond11.i164 = select i1 %i.arq, i1 %i.apz, i1 false
  %i.atl = icmp sgt i32 %i.ani, 0
  %or.cond268.i = select i1 %or.cond11.i164, i1 %i.atl, i1 false
  br i1 %or.cond268.i, label %.preheader230.lr.ph.i, label %rgb565_image_blend.exit

.preheader230.lr.ph.i:                            ; preds = %bb.df
  %i.atm = icmp sgt i32 %i.ang, 0
  %i.atn = zext i32 %i.ann to i64
  %i.ato = zext i32 %i.anr to i64
  %i.atp = sext i32 %i.anv to i64
  br i1 %i.atm, label %.preheader230.preheader.i, label %rgb565_image_blend.exit

.preheader230.preheader.i:                        ; preds = %.preheader230.lr.ph.i
  %wide.trip.count282.i = zext nneg i32 %i.ang to i64
  br label %.preheader230.i

.preheader230.i:                                  ; preds = %._crit_edge244.i, %.preheader230.preheader.i
  %.3248.i = phi i32 [ %i.avg, %._crit_edge244.i ], [ 0, %.preheader230.preheader.i ]
  %.1179247.i = phi ptr [ %i.avf, %._crit_edge244.i ], [ %i.ant, %.preheader230.preheader.i ] ; 2 uses
  %.3185246.i = phi ptr [ %i.ave, %._crit_edge244.i ], [ %i.anp, %.preheader230.preheader.i ] ; 2 uses
  %.3190245.i = phi ptr [ %i.avd, %._crit_edge244.i ], [ %i.anl, %.preheader230.preheader.i ] ; 2 uses
  br label %bb.dg

bb.dg:                                            ; preds = %lv_color_8_8_mix.exit207.i, %.preheader230.i
  %indvars.iv277.i = phi i64 [ 0, %.preheader230.i ], [ %indvars.iv.next278.i, %lv_color_8_8_mix.exit207.i ] ; 4 uses
  %indvars281.i165 = trunc i64 %indvars.iv277.i to i32
  %i.atq = add nsw i32 %i.any, %indvars281.i165   ; 2 uses
  %i.atr = sdiv i32 %i.atq, 8
  %i.ats = sext i32 %i.atr to i64
  %i.att = getelementptr inbounds i8, ptr %.3190245.i, i64 %i.ats ; 2 uses
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !11 ; 3 uses
  %i.atv = zext i8 %i.atu to i32
  %i.atw = srem i32 %i.atq, 8
  %i.atx = sub nsw i32 7, %i.atw                  ; 2 uses
  %i.aty = lshr i32 %i.atv, %i.atx
  %i.atz = trunc nuw i32 %i.aty to i8
  %i.aua = and i8 %i.atz, 1
  %narrow.i166 = sub nsw i8 0, %i.aua             ; 2 uses
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %.3185246.i, i64 %indvars.iv277.i ; 2 uses
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !109 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aub, i64 1
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !110
  %i.auf = zext i8 %i.aue to i32
  %i.aug = getelementptr inbounds nuw i8, ptr %.1179247.i, i64 %indvars.iv277.i
  %i.auh = load i8, ptr %i.aug, align 1, !tbaa !11
  %i.aui = zext i8 %i.auh to i32
  %i.auj = mul nuw nsw i32 %i.auf, %i.aoj
  %i.auk = mul nuw nsw i32 %i.auj, %i.aui         ; 2 uses
  %i.aul = lshr i32 %i.auk, 16                    ; 2 uses
  %i.aum = trunc nuw nsw i32 %i.aul to i16        ; 2 uses
  %i.aun = icmp eq i32 %i.aul, 0
  br i1 %i.aun, label %lv_color_8_8_mix.exit207.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.auo = icmp samesign ugt i32 %i.auk, 16580607
  br i1 %i.auo, label %lv_color_8_8_mix.exit207.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aup = xor i16 %i.aum, 255
  %i.auq = zext i8 %i.auc to i16
  %i.aur = mul nuw i16 %i.aum, %i.auq
  %i.aus = zext i8 %narrow.i166 to i16
  %i.aut = mul nuw i16 %i.aup, %i.aus
  %i.auu = add i16 %i.aut, %i.aur
  %i.auv = lshr i16 %i.auu, 8
  %i.auw = trunc nuw i16 %i.auv to i8
  br label %lv_color_8_8_mix.exit207.i

lv_color_8_8_mix.exit207.i:                       ; preds = %bb.di, %bb.dh, %bb.dg
  %.0216.i = phi i8 [ %narrow.i166, %bb.dg ], [ %i.auw, %bb.di ], [ %i.auc, %bb.dh ]
  %i.aux = icmp slt i8 %.0216.i, 0
  %i.auy = shl nuw nsw i32 1, %i.atx
  %i.auz = trunc i32 %i.auy to i8                 ; 2 uses
  %i.ava = xor i8 %i.auz, -1
  %i.avb = and i8 %i.atu, %i.ava
  %i.avc = or i8 %i.atu, %i.auz
  %storemerge.i167 = select i1 %i.aux, i8 %i.avc, i8 %i.avb
  store i8 %storemerge.i167, ptr %i.att, align 1, !tbaa !11
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 1 ; 2 uses
  %exitcond283.not.i = icmp eq i64 %indvars.iv.next278.i, %wide.trip.count282.i
  br i1 %exitcond283.not.i, label %._crit_edge244.i, label %bb.dg, !llvm.loop !89

._crit_edge244.i:                                 ; preds = %lv_color_8_8_mix.exit207.i
  %i.avd = getelementptr inbounds nuw i8, ptr %.3190245.i, i64 %i.atn
  %i.ave = getelementptr inbounds nuw i8, ptr %.3185246.i, i64 %i.ato
  %i.avf = getelementptr inbounds i8, ptr %.1179247.i, i64 %i.atp
  %i.avg = add nuw nsw i32 %.3248.i, 1            ; 2 uses
  %exitcond284.not.i = icmp eq i32 %i.avg, %i.ani
  br i1 %exitcond284.not.i, label %rgb565_image_blend.exit, label %.preheader230.i, !llvm.loop !90

.preheader233.i:                                  ; preds = %._crit_edge.i160, %.preheader233.preheader.i
  %.4241.i = phi i32 [ %i.axm, %._crit_edge.i160 ], [ 0, %.preheader233.preheader.i ]
  %.2180240.i = phi ptr [ %.3181.i, %._crit_edge.i160 ], [ %i.ant, %.preheader233.preheader.i ] ; 3 uses
  %.4186239.i = phi ptr [ %i.axl, %._crit_edge.i160 ], [ %i.anp, %.preheader233.preheader.i ] ; 2 uses
  %.4191238.i = phi ptr [ %i.axk, %._crit_edge.i160 ], [ %i.anl, %.preheader233.preheader.i ] ; 2 uses
  %i.avh = icmp eq ptr %.2180240.i, null          ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %blend_non_normal_pixel.exit.i157, %.preheader233.i
  %indvars.iv.i143 = phi i64 [ 0, %.preheader233.i ], [ %indvars.iv.next.i158, %blend_non_normal_pixel.exit.i157 ] ; 4 uses
  %indvars275.i144 = trunc i64 %indvars.iv.i143 to i32
  %i.avi = getelementptr inbounds nuw [2 x i8], ptr %.4186239.i, i64 %indvars.iv.i143 ; 2 uses
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !109
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avi, i64 1
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !110
  %i.avm = zext i8 %i.avl to i32                  ; 2 uses
  br i1 %i.avh, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.avn = mul nuw nsw i32 %i.avm, %i.aoe
  %i.avo = lshr i32 %i.avn, 8
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.avp = getelementptr inbounds nuw i8, ptr %.2180240.i, i64 %indvars.iv.i143
  %i.avq = load i8, ptr %i.avp, align 1, !tbaa !11
  %i.avr = zext i8 %i.avq to i32
  %i.avs = mul nuw nsw i32 %i.avm, %i.aoe
  %i.avt = mul nuw nsw i32 %i.avs, %i.avr
  %i.avu = lshr i32 %i.avt, 16
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.sroa.6.0.i145 = phi i32 [ %i.avo, %bb.dk ], [ %i.avu, %bb.dl ] ; 4 uses
  %i.avv = add nsw i32 %i.any, %indvars275.i144   ; 2 uses
  %i.avw = load i32, ptr %i.anz, align 4, !tbaa !24
  %.sroa.6.0.insert.shift.i146 = shl nuw i32 %.sroa.6.0.i145, 24
  %.sroa.5.0.insert.ext.i147 = zext i8 %i.avj to i32 ; 3 uses
  %.sroa.5.0.insert.shift.i148 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i147, 16
  %.sroa.4.0.insert.shift.i149 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i147, 8
  %i.avx = or disjoint i32 %.sroa.5.0.insert.shift.i148, %.sroa.4.0.insert.shift.i149
  %.sroa.4.0.insert.insert.i150 = or disjoint i32 %.sroa.6.0.insert.shift.i146, %i.avx
  %.sroa.0.0.insert.insert.i151 = or disjoint i32 %.sroa.4.0.insert.insert.i150, %.sroa.5.0.insert.ext.i147
  %.sroa.2.0.extract.trunc.i.i152 = trunc nuw nsw i32 %.sroa.6.0.i145 to i16 ; 2 uses
  %i.avy = tail call zeroext i8 @lv_color32_luminance(i32 %.sroa.0.0.insert.insert.i151) #4 ; 3 uses
  %i.avz = zext i8 %i.avy to i32                  ; 2 uses
  %i.awa = sdiv i32 %i.avv, 8
  %i.awb = sext i32 %i.awa to i64
  %i.awc = getelementptr inbounds i8, ptr %.4191238.i, i64 %i.awb ; 2 uses
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !11 ; 3 uses
  %i.awe = zext i8 %i.awd to i32
  %i.awf = srem i32 %i.avv, 8
  %i.awg = sub nsw i32 7, %i.awf                  ; 2 uses
  %i.awh = lshr i32 %i.awe, %i.awg
  %i.awi = trunc nuw i32 %i.awh to i8
  %i.awj = and i8 %i.awi, 1
  %narrow.i.i153 = sub nsw i8 0, %i.awj           ; 6 uses
  switch i32 %i.avw, label %blend_non_normal_pixel.exit.i157 [
    i32 1, label %bb.dn
    i32 2, label %bb.do
    i32 3, label %bb.dp
    i32 4, label %bb.dq
  ]

bb.dn:                                            ; preds = %bb.dm
  %5 = tail call i8 @llvm.uadd.sat.i8(i8 %narrow.i.i153, i8 %i.avy)
  br label %bb.dr

bb.do:                                            ; preds = %bb.dm
  %i.awk = tail call i8 @llvm.usub.sat.i8(i8 %narrow.i.i153, i8 %i.avy)
  br label %bb.dr

bb.dp:                                            ; preds = %bb.dm
  %i.awl = zext i8 %narrow.i.i153 to i32
  %i.awm = mul nuw nsw i32 %i.awl, %i.avz
  %i.awn = lshr i32 %i.awm, 8
  %i.awo = trunc nuw i32 %i.awn to i8
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dm
  %i.awp = zext i8 %narrow.i.i153 to i32
  %i.awq = sub nsw i32 %i.awp, %i.avz
  %i.awr = tail call i32 @llvm.abs.i32(i32 %i.awq, i1 true)
  %i.aws = trunc nuw i32 %i.awr to i8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dn
  %.0.i.i154 = phi i8 [ %5, %bb.dn ], [ %i.awk, %bb.do ], [ %i.awo, %bb.dp ], [ %i.aws, %bb.dq ] ; 2 uses
  %i.awt = icmp eq i32 %.sroa.6.0.i145, 0
  br i1 %i.awt, label %lv_color_8_8_mix.exit.i.i155, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.awu = icmp samesign ugt i32 %.sroa.6.0.i145, 252
  br i1 %i.awu, label %lv_color_8_8_mix.exit.i.i155, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.awv = xor i16 %.sroa.2.0.extract.trunc.i.i152, 255
  %i.aww = zext i8 %.0.i.i154 to i16
  %i.awx = mul nuw i16 %i.aww, %.sroa.2.0.extract.trunc.i.i152
  %i.awy = zext i8 %narrow.i.i153 to i16
  %i.awz = mul nuw i16 %i.awv, %i.awy
  %i.axa = add i16 %i.awx, %i.awz
  %i.axb = lshr i16 %i.axa, 8
  %i.axc = trunc nuw i16 %i.axb to i8
  br label %lv_color_8_8_mix.exit.i.i155

lv_color_8_8_mix.exit.i.i155:                     ; preds = %bb.dt, %bb.ds, %bb.dr
  %.017.i.i156 = phi i8 [ %narrow.i.i153, %bb.dr ], [ %i.axc, %bb.dt ], [ %.0.i.i154, %bb.ds ]
  %i.axd = icmp slt i8 %.017.i.i156, 0
  %i.axe = shl nuw nsw i32 1, %i.awg
  %i.axf = trunc i32 %i.axe to i8                 ; 2 uses
  %i.axg = or i8 %i.awd, %i.axf
  %i.axh = xor i8 %i.axf, -1
  %i.axi = and i8 %i.awd, %i.axh
  %.sink.i208.i = select i1 %i.axd, i8 %i.axg, i8 %i.axi
  store i8 %.sink.i208.i, ptr %i.awc, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i157

blend_non_normal_pixel.exit.i157:                 ; preds = %lv_color_8_8_mix.exit.i.i155, %bb.dm
  %indvars.iv.next.i158 = add nuw nsw i64 %indvars.iv.i143, 1 ; 2 uses
  %exitcond.not.i159 = icmp eq i64 %indvars.iv.next.i158, %wide.trip.count.i142
  br i1 %exitcond.not.i159, label %._crit_edge.i160, label %bb.dj, !llvm.loop !91

._crit_edge.i160:                                 ; preds = %blend_non_normal_pixel.exit.i157
  %i.axj = getelementptr inbounds i8, ptr %.2180240.i, i64 %i.aof
  %.3181.i = select i1 %i.avh, ptr null, ptr %i.axj
  %i.axk = getelementptr inbounds nuw i8, ptr %.4191238.i, i64 %i.aog
  %i.axl = getelementptr inbounds nuw i8, ptr %.4186239.i, i64 %i.aoh
  %i.axm = add nuw nsw i32 %.4241.i, 1            ; 2 uses
  %exitcond276.not.i = icmp eq i32 %i.axm, %i.ani
  br i1 %exitcond276.not.i, label %rgb565_image_blend.exit, label %.preheader233.i, !llvm.loop !92

bb.du:                                            ; preds = %bb.a
  %i.axn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !14 ; 10 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !15 ; 10 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.axs = load i8, ptr %i.axr, align 8, !tbaa !16 ; 7 uses
  %i.axt = load ptr, ptr %0, align 8, !tbaa !17   ; 5 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axv = load i32, ptr %i.axu, align 8, !tbaa !18 ; 5 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !19 ; 5 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.axz = load i32, ptr %i.axy, align 8, !tbaa !20 ; 5 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !21 ; 5 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ayd = load i32, ptr %i.ayc, align 8, !tbaa !22 ; 3 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ayf = load i32, ptr %i.aye, align 8, !tbaa !23
  %i.ayg = srem i32 %i.ayf, 8                     ; 5 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !24
  %i.ayj = icmp eq i32 %i.ayi, 0
  br i1 %i.ayj, label %bb.dv, label %.preheader212.i179

.preheader212.i179:                               ; preds = %bb.du
  %i.ayk = icmp sgt i32 %i.axq, 0
  br i1 %i.ayk, label %.preheader211.lr.ph.i180, label %rgb565_image_blend.exit

.preheader211.lr.ph.i180:                         ; preds = %.preheader212.i179
  %i.ayl = icmp sgt i32 %i.axo, 0
  %i.aym = zext i8 %i.axs to i16                  ; 2 uses
  %i.ayn = sext i32 %i.ayd to i64
  %i.ayo = zext i32 %i.axv to i64
  %i.ayp = zext i32 %i.axz to i64
  br i1 %i.ayl, label %.preheader211.preheader.i181, label %rgb565_image_blend.exit

.preheader211.preheader.i181:                     ; preds = %.preheader211.lr.ph.i180
  %wide.trip.count.i182 = zext nneg i32 %i.axo to i64
  br label %.preheader211.i183

bb.dv:                                            ; preds = %bb.du
  %i.ayq = icmp eq ptr %i.ayb, null               ; 2 uses
  %i.ayr = zext i8 %i.axs to i32
  %i.ays = icmp ugt i8 %i.axs, -4                 ; 2 uses
  %or.cond.i198 = select i1 %i.ayq, i1 %i.ays, i1 false
  br i1 %or.cond.i198, label %.preheader201.i219, label %bb.dx

.preheader201.i219:                               ; preds = %bb.dv
  %i.ayt = icmp sgt i32 %i.axq, 0
  br i1 %i.ayt, label %.preheader.lr.ph.i220, label %rgb565_image_blend.exit

.preheader.lr.ph.i220:                            ; preds = %.preheader201.i219
  %i.ayu = icmp sgt i32 %i.axo, 0
  %i.ayv = zext i32 %i.axv to i64
  %i.ayw = zext i32 %i.axz to i64
  br i1 %i.ayu, label %.preheader.i221, label %rgb565_image_blend.exit

.preheader.i221:                                  ; preds = %.preheader.lr.ph.i220, %._crit_edge242.i
  %.0245.i = phi i32 [ %i.azu, %._crit_edge242.i ], [ 0, %.preheader.lr.ph.i220 ]
  %.0180244.i = phi ptr [ %i.azt, %._crit_edge242.i ], [ %i.axx, %.preheader.lr.ph.i220 ] ; 2 uses
  %.0185243.i = phi ptr [ %i.azs, %._crit_edge242.i ], [ %i.axt, %.preheader.lr.ph.i220 ] ; 2 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %.preheader.i221
  %.0166241.i = phi i32 [ 0, %.preheader.i221 ], [ %i.azr, %bb.dw ] ; 4 uses
  %i.ayx = lshr i32 %.0166241.i, 3
  %i.ayy = zext nneg i32 %i.ayx to i64
  %i.ayz = getelementptr inbounds nuw i8, ptr %.0180244.i, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !11
  %i.azb = zext i8 %i.aza to i32
  %i.azc = and i32 %.0166241.i, 7
  %i.azd = lshr exact i32 128, %i.azc
  %i.aze = and i32 %i.azd, %i.azb
  %.not199.i = icmp eq i32 %i.aze, 0
  %i.azf = add nsw i32 %.0166241.i, %i.ayg        ; 2 uses
  %i.azg = srem i32 %i.azf, 8
  %i.azh = sub nsw i32 7, %i.azg
  %i.azi = shl nuw nsw i32 1, %i.azh
  %i.azj = sdiv i32 %i.azf, 8
  %i.azk = sext i32 %i.azj to i64
  %i.azl = getelementptr inbounds i8, ptr %.0185243.i, i64 %i.azk ; 2 uses
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !11 ; 2 uses
  %i.azn = trunc i32 %i.azi to i8                 ; 2 uses
  %i.azo = or i8 %i.azm, %i.azn
  %i.azp = xor i8 %i.azn, -1
  %i.azq = and i8 %i.azm, %i.azp
  %.sink.i222 = select i1 %.not199.i, i8 %i.azq, i8 %i.azo
  store i8 %.sink.i222, ptr %i.azl, align 1, !tbaa !11
  %i.azr = add nuw nsw i32 %.0166241.i, 1         ; 2 uses
  %exitcond273.not.i223 = icmp eq i32 %i.azr, %i.axo
  br i1 %exitcond273.not.i223, label %._crit_edge242.i, label %bb.dw, !llvm.loop !93

._crit_edge242.i:                                 ; preds = %bb.dw
  %i.azs = getelementptr inbounds nuw i8, ptr %.0185243.i, i64 %i.ayv
  %i.azt = getelementptr inbounds nuw i8, ptr %.0180244.i, i64 %i.ayw
  %i.azu = add nuw nsw i32 %.0245.i, 1            ; 2 uses
  %exitcond274.not.i224 = icmp eq i32 %i.azu, %i.axq
  br i1 %exitcond274.not.i224, label %rgb565_image_blend.exit, label %.preheader.i221, !llvm.loop !94

bb.dx:                                            ; preds = %bb.dv
  %i.azv = icmp ult i8 %i.axs, -3                 ; 2 uses
  %or.cond5.i199 = select i1 %i.ayq, i1 %i.azv, i1 false
  br i1 %or.cond5.i199, label %.preheader203.i217, label %bb.dz

.preheader203.i217:                               ; preds = %bb.dx
  %i.azw = icmp sgt i32 %i.axq, 0
  br i1 %i.azw, label %.preheader202.lr.ph.i, label %rgb565_image_blend.exit

.preheader202.lr.ph.i:                            ; preds = %.preheader203.i217
  %i.azx = icmp sgt i32 %i.axo, 0
  %i.azy = zext i32 %i.axv to i64
  %i.azz = zext i32 %i.axz to i64
  br i1 %i.azx, label %.preheader202.i, label %rgb565_image_blend.exit

.preheader202.i:                                  ; preds = %.preheader202.lr.ph.i, %._crit_edge236.i
  %.1239.i = phi i32 [ %i.bbe, %._crit_edge236.i ], [ 0, %.preheader202.lr.ph.i ]
  %.1181238.i = phi ptr [ %i.bbd, %._crit_edge236.i ], [ %i.axx, %.preheader202.lr.ph.i ] ; 2 uses
  %.1186237.i = phi ptr [ %i.bbc, %._crit_edge236.i ], [ %i.axt, %.preheader202.lr.ph.i ] ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %.preheader202.i
  %.1167235.i = phi i32 [ 0, %.preheader202.i ], [ %i.bbb, %bb.dy ] ; 4 uses
  %i.baa = lshr i32 %.1167235.i, 3
  %i.bab = zext nneg i32 %i.baa to i64
  %i.bac = getelementptr inbounds nuw i8, ptr %.1181238.i, i64 %i.bab
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !11
  %i.bae = zext i8 %i.bad to i32
  %i.baf = and i32 %.1167235.i, 7
  %i.bag = xor i32 %i.baf, 7
  %i.bah = lshr i32 %i.bae, %i.bag
  %i.bai = add nsw i32 %.1167235.i, %i.ayg        ; 2 uses
  %i.baj = sdiv i32 %i.bai, 8
  %i.bak = sext i32 %i.baj to i64
  %i.bal = getelementptr inbounds i8, ptr %.1186237.i, i64 %i.bak ; 2 uses
  %i.bam = load i8, ptr %i.bal, align 1, !tbaa !11 ; 3 uses
  %i.ban = zext i8 %i.bam to i32
  %i.bao = srem i32 %i.bai, 8
  %i.bap = sub nsw i32 7, %i.bao                  ; 2 uses
  %i.baq = lshr i32 %i.ban, %i.bap
  %i.bar = trunc i32 %i.bah to i1
  %narrow198.i218 = select i1 %i.bar, i8 %i.axs, i8 0
  %i.bas = trunc i32 %i.baq to i1
  %i.bat = select i1 %i.bas, i8 %i.axs, i8 -1
  %i.bau = sub i8 %i.bat, %narrow198.i218
  %i.bav = shl nuw nsw i32 1, %i.bap
  %i.baw = trunc i32 %i.bav to i8                 ; 2 uses
  %i.bax = xor i8 %i.baw, -1
  %i.bay = and i8 %i.bam, %i.bax
  %i.baz = or i8 %i.bam, %i.baw
  %i.bba = icmp slt i8 %i.bau, 0
  %storemerge200.i = select i1 %i.bba, i8 %i.bay, i8 %i.baz
  store i8 %storemerge200.i, ptr %i.bal, align 1, !tbaa !11
  %i.bbb = add nuw nsw i32 %.1167235.i, 1         ; 2 uses
  %exitcond271.not.i = icmp eq i32 %i.bbb, %i.axo
end_hunk_4
begin_hunk_5_@lv_draw_sw_blend_image_to_i1:bb.a
.preheader205.lr.ph.i:                            ; preds = %.preheader206.i207
  %i.bbh = icmp sgt i32 %i.axo, 0
  %i.bbi = zext i32 %i.axv to i64
  %i.bbj = zext i32 %i.axz to i64
  %i.bbk = sext i32 %i.ayd to i64
  br i1 %i.bbh, label %.preheader205.preheader.i, label %rgb565_image_blend.exit

.preheader205.preheader.i:                        ; preds = %.preheader205.lr.ph.i
  %wide.trip.count268.i208 = zext nneg i32 %i.axo to i64
  br label %.preheader205.i

.preheader205.i:                                  ; preds = %._crit_edge229.i215, %.preheader205.preheader.i
  %.2233.i = phi i32 [ %i.bcr, %._crit_edge229.i215 ], [ 0, %.preheader205.preheader.i ]
  %.0176232.i = phi ptr [ %i.bcq, %._crit_edge229.i215 ], [ %i.ayb, %.preheader205.preheader.i ] ; 2 uses
  %.2182231.i = phi ptr [ %i.bcp, %._crit_edge229.i215 ], [ %i.axx, %.preheader205.preheader.i ] ; 2 uses
  %.2187230.i = phi ptr [ %i.bco, %._crit_edge229.i215 ], [ %i.axt, %.preheader205.preheader.i ] ; 2 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %.preheader205.i
  %indvars.iv263.i209 = phi i64 [ 0, %.preheader205.i ], [ %indvars.iv.next264.i213, %bb.ea ] ; 4 uses
  %indvars267.i210 = trunc i64 %indvars.iv263.i209 to i32 ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %.0176232.i, i64 %indvars.iv263.i209
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !11 ; 2 uses
  %i.bbn = lshr i64 %indvars.iv263.i209, 3
  %i.bbo = and i64 %i.bbn, 536870911
  %i.bbp = getelementptr inbounds nuw i8, ptr %.2182231.i, i64 %i.bbo
  %i.bbq = load i8, ptr %i.bbp, align 1, !tbaa !11
  %i.bbr = zext i8 %i.bbq to i32
  %i.bbs = and i32 %indvars267.i210, 7
  %i.bbt = xor i32 %i.bbs, 7
  %i.bbu = lshr i32 %i.bbr, %i.bbt
  %i.bbv = add nsw i32 %i.ayg, %indvars267.i210   ; 2 uses
  %i.bbw = sdiv i32 %i.bbv, 8
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds i8, ptr %.2187230.i, i64 %i.bbx ; 2 uses
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !11 ; 3 uses
  %i.bca = zext i8 %i.bbz to i32
  %i.bcb = srem i32 %i.bbv, 8
  %i.bcc = sub nsw i32 7, %i.bcb                  ; 2 uses
  %i.bcd = lshr i32 %i.bca, %i.bcc
  %i.bce = trunc i32 %i.bbu to i1
  %narrow196.i211 = select i1 %i.bce, i8 %i.bbm, i8 0
  %i.bcf = trunc i32 %i.bcd to i1
  %i.bcg = select i1 %i.bcf, i8 %i.bbm, i8 -1
  %i.bch = sub i8 %i.bcg, %narrow196.i211
  %i.bci = shl nuw nsw i32 1, %i.bcc
  %i.bcj = trunc i32 %i.bci to i8                 ; 2 uses
  %i.bck = xor i8 %i.bcj, -1
  %i.bcl = and i8 %i.bbz, %i.bck
  %i.bcm = or i8 %i.bbz, %i.bcj
  %i.bcn = icmp slt i8 %i.bch, 0
  %storemerge.i212 = select i1 %i.bcn, i8 %i.bcl, i8 %i.bcm
  store i8 %storemerge.i212, ptr %i.bby, align 1, !tbaa !11
  %indvars.iv.next264.i213 = add nuw nsw i64 %indvars.iv263.i209, 1 ; 2 uses
  %exitcond269.not.i214 = icmp eq i64 %indvars.iv.next264.i213, %wide.trip.count268.i208
  br i1 %exitcond269.not.i214, label %._crit_edge229.i215, label %bb.ea, !llvm.loop !97

._crit_edge229.i215:                              ; preds = %bb.ea
  %i.bco = getelementptr inbounds nuw i8, ptr %.2187230.i, i64 %i.bbi
  %i.bcp = getelementptr inbounds nuw i8, ptr %.2182231.i, i64 %i.bbj
  %i.bcq = getelementptr inbounds i8, ptr %.0176232.i, i64 %i.bbk
  %i.bcr = add nuw nsw i32 %.2233.i, 1            ; 2 uses
  %exitcond270.not.i216 = icmp eq i32 %i.bcr, %i.axq
  br i1 %exitcond270.not.i216, label %rgb565_image_blend.exit, label %.preheader205.i, !llvm.loop !98

bb.eb:                                            ; preds = %bb.dz
  %or.cond11.i201 = select i1 %i.bbf, i1 %i.azv, i1 false
  %i.bcs = icmp sgt i32 %i.axq, 0
  %or.cond246.i = select i1 %or.cond11.i201, i1 %i.bcs, i1 false
  br i1 %or.cond246.i, label %.preheader208.lr.ph.i, label %rgb565_image_blend.exit

.preheader208.lr.ph.i:                            ; preds = %bb.eb
  %i.bct = icmp sgt i32 %i.axo, 0
  %i.bcu = zext i32 %i.axv to i64
  %i.bcv = zext i32 %i.axz to i64
  %i.bcw = sext i32 %i.ayd to i64
  br i1 %i.bct, label %.preheader208.preheader.i, label %rgb565_image_blend.exit

.preheader208.preheader.i:                        ; preds = %.preheader208.lr.ph.i
  %wide.trip.count260.i202 = zext nneg i32 %i.axo to i64
  br label %.preheader208.i

.preheader208.i:                                  ; preds = %._crit_edge222.i, %.preheader208.preheader.i
  %.3226.i = phi i32 [ %i.bei, %._crit_edge222.i ], [ 0, %.preheader208.preheader.i ]
  %.1177225.i = phi ptr [ %i.beh, %._crit_edge222.i ], [ %i.ayb, %.preheader208.preheader.i ] ; 2 uses
  %.3183224.i = phi ptr [ %i.beg, %._crit_edge222.i ], [ %i.axx, %.preheader208.preheader.i ] ; 2 uses
  %.3188223.i = phi ptr [ %i.bef, %._crit_edge222.i ], [ %i.axt, %.preheader208.preheader.i ] ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ed, %.preheader208.i
  %indvars.iv255.i203 = phi i64 [ 0, %.preheader208.i ], [ %indvars.iv.next256.i204, %bb.ed ] ; 4 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %.1177225.i, i64 %indvars.iv255.i203
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !11 ; 2 uses
  %i.bcz = icmp eq i8 %i.bcy, 0
  br i1 %i.bcz, label %bb.ed, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ec
  %indvars259.i = trunc i64 %indvars.iv255.i203 to i32 ; 2 uses
  %i.bda = zext i8 %i.bcy to i32
  %i.bdb = lshr i64 %indvars.iv255.i203, 3
  %i.bdc = and i64 %i.bdb, 536870911
  %i.bdd = getelementptr inbounds nuw i8, ptr %.3183224.i, i64 %i.bdc
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !11
  %i.bdf = zext i8 %i.bde to i32
  %i.bdg = and i32 %indvars259.i, 7
  %i.bdh = xor i32 %i.bdg, 7
  %i.bdi = lshr i32 %i.bdf, %i.bdh
  %i.bdj = add nsw i32 %i.ayg, %indvars259.i      ; 2 uses
  %i.bdk = sdiv i32 %i.bdj, 8
  %i.bdl = sext i32 %i.bdk to i64
  %i.bdm = getelementptr inbounds i8, ptr %.3188223.i, i64 %i.bdl ; 2 uses
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !11 ; 3 uses
  %i.bdo = zext i8 %i.bdn to i32
  %i.bdp = srem i32 %i.bdj, 8
  %i.bdq = sub nsw i32 7, %i.bdp                  ; 2 uses
  %i.bdr = lshr i32 %i.bdo, %i.bdq
  %i.bds = mul nuw nsw i32 %i.bda, %i.ayr
  %i.bdt = lshr i32 %i.bds, 8                     ; 2 uses
  %i.bdu = trunc i32 %i.bdi to i1
  %i.bdv = select i1 %i.bdu, i32 %i.bdt, i32 0
  %i.bdw = trunc i32 %i.bdr to i1
  %i.bdx = select i1 %i.bdw, i32 %i.bdt, i32 255
  %i.bdy = sub nsw i32 %i.bdx, %i.bdv
  %i.bdz = and i32 %i.bdy, 128
  %.not195.not.i = icmp eq i32 %i.bdz, 0
  %i.bea = shl nuw nsw i32 1, %i.bdq
  %i.beb = trunc i32 %i.bea to i8                 ; 2 uses
  %i.bec = or i8 %i.bdn, %i.beb
  %i.bed = xor i8 %i.beb, -1
  %i.bee = and i8 %i.bdn, %i.bed
  %.sink295.i = select i1 %.not195.not.i, i8 %i.bec, i8 %i.bee
  store i8 %.sink295.i, ptr %i.bdm, align 1, !tbaa !11
  br label %bb.ed

bb.ed:                                            ; preds = %.sink.split.i, %bb.ec
  %indvars.iv.next256.i204 = add nuw nsw i64 %indvars.iv255.i203, 1 ; 2 uses
  %exitcond261.not.i205 = icmp eq i64 %indvars.iv.next256.i204, %wide.trip.count260.i202
  br i1 %exitcond261.not.i205, label %._crit_edge222.i, label %bb.ec, !llvm.loop !99

._crit_edge222.i:                                 ; preds = %bb.ed
  %i.bef = getelementptr inbounds nuw i8, ptr %.3188223.i, i64 %i.bcu
  %i.beg = getelementptr inbounds nuw i8, ptr %.3183224.i, i64 %i.bcv
  %i.beh = getelementptr inbounds i8, ptr %.1177225.i, i64 %i.bcw
  %i.bei = add nuw nsw i32 %.3226.i, 1            ; 2 uses
  %exitcond262.not.i206 = icmp eq i32 %i.bei, %i.axq
  br i1 %exitcond262.not.i206, label %rgb565_image_blend.exit, label %.preheader208.i, !llvm.loop !100

.preheader211.i183:                               ; preds = %._crit_edge.i196, %.preheader211.preheader.i181
  %.4219.i = phi i32 [ %i.bgq, %._crit_edge.i196 ], [ 0, %.preheader211.preheader.i181 ]
  %.2178218.i = phi ptr [ %.3179.i, %._crit_edge.i196 ], [ %i.ayb, %.preheader211.preheader.i181 ] ; 3 uses
  %.4184217.i = phi ptr [ %i.bgp, %._crit_edge.i196 ], [ %i.axx, %.preheader211.preheader.i181 ] ; 2 uses
  %.4189216.i = phi ptr [ %i.bgo, %._crit_edge.i196 ], [ %i.axt, %.preheader211.preheader.i181 ] ; 2 uses
  %i.bej = icmp eq ptr %.2178218.i, null          ; 2 uses
  br label %bb.ee

bb.ee:                                            ; preds = %blend_non_normal_pixel.exit.i193, %.preheader211.i183
  %indvars.iv.i184 = phi i64 [ 0, %.preheader211.i183 ], [ %indvars.iv.next.i194, %blend_non_normal_pixel.exit.i193 ] ; 4 uses
  %indvars251.i = trunc i64 %indvars.iv.i184 to i32 ; 2 uses
  %i.bek = lshr i64 %indvars.iv.i184, 3
  %i.bel = and i64 %i.bek, 536870911
  %i.bem = getelementptr inbounds nuw i8, ptr %.4184217.i, i64 %i.bel
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !11
  %i.beo = zext i8 %i.ben to i32
  %i.bep = and i32 %indvars251.i, 7
  br i1 %i.bej, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.beq = getelementptr inbounds nuw i8, ptr %.2178218.i, i64 %indvars.iv.i184
  %i.ber = load i8, ptr %i.beq, align 1, !tbaa !11
  %i.bes = zext i8 %i.ber to i16
  %i.bet = mul nuw i16 %i.bes, %i.aym
  %i.beu = lshr i16 %i.bet, 8                     ; 2 uses
  %i.bev = trunc nuw i16 %i.beu to i8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.sroa.2.0.extract.trunc.i.pre-phi.i185 = phi i16 [ %i.aym, %bb.ee ], [ %i.beu, %bb.ef ] ; 2 uses
  %.sroa.8.0.i = phi i8 [ %i.axs, %bb.ee ], [ %i.bev, %bb.ef ] ; 3 uses
  %i.bew = load i32, ptr %i.ayh, align 4, !tbaa !24
  %.sroa.8.0.insert.ext.i = zext i8 %.sroa.8.0.i to i32
  %.sroa.8.0.insert.shift.i = shl nuw i32 %.sroa.8.0.insert.ext.i, 24
  %i.bex = lshr exact i32 128, %i.bep
  %i.bey = and i32 %i.bex, %i.beo
  %i.bez = icmp eq i32 %i.bey, 0
  %.sroa.5.0.insert.ext.i186 = select i1 %i.bez, i32 0, i32 255 ; 2 uses
  %i.bfa = mul nuw nsw i32 %.sroa.5.0.insert.ext.i186, 65792
  %.sroa.4.0.insert.insert.i187 = or disjoint i32 %.sroa.8.0.insert.shift.i, %i.bfa
  %.sroa.0.0.insert.insert.i188 = or disjoint i32 %.sroa.4.0.insert.insert.i187, %.sroa.5.0.insert.ext.i186
  %i.bfb = tail call zeroext i8 @lv_color32_luminance(i32 %.sroa.0.0.insert.insert.i188) #4 ; 3 uses
  %i.bfc = zext i8 %i.bfb to i32                  ; 2 uses
  %i.bfd = add i32 %i.ayg, %indvars251.i          ; 2 uses
  %i.bfe = sdiv i32 %i.bfd, 8
  %i.bff = sext i32 %i.bfe to i64
  %i.bfg = getelementptr inbounds i8, ptr %.4189216.i, i64 %i.bff ; 2 uses
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !11 ; 3 uses
  %i.bfi = zext i8 %i.bfh to i32
  %i.bfj = srem i32 %i.bfd, 8
  %i.bfk = sub nsw i32 7, %i.bfj                  ; 2 uses
  %i.bfl = lshr i32 %i.bfi, %i.bfk
  %i.bfm = trunc nuw i32 %i.bfl to i8
  %i.bfn = and i8 %i.bfm, 1
  %narrow.i.i189 = sub nsw i8 0, %i.bfn           ; 6 uses
  switch i32 %i.bew, label %blend_non_normal_pixel.exit.i193 [
    i32 1, label %bb.eh
    i32 2, label %bb.ei
    i32 3, label %bb.ej
    i32 4, label %bb.ek
  ]

bb.eh:                                            ; preds = %bb.eg
  %6 = tail call i8 @llvm.uadd.sat.i8(i8 %narrow.i.i189, i8 %i.bfb)
  br label %bb.el

bb.ei:                                            ; preds = %bb.eg
  %i.bfo = tail call i8 @llvm.usub.sat.i8(i8 %narrow.i.i189, i8 %i.bfb)
  br label %bb.el

bb.ej:                                            ; preds = %bb.eg
  %i.bfp = zext i8 %narrow.i.i189 to i32
  %i.bfq = mul nuw nsw i32 %i.bfp, %i.bfc
  %i.bfr = lshr i32 %i.bfq, 8
  %i.bfs = trunc nuw i32 %i.bfr to i8
  br label %bb.el

bb.ek:                                            ; preds = %bb.eg
  %i.bft = zext i8 %narrow.i.i189 to i32
  %i.bfu = sub nsw i32 %i.bft, %i.bfc
  %i.bfv = tail call i32 @llvm.abs.i32(i32 %i.bfu, i1 true)
  %i.bfw = trunc nuw i32 %i.bfv to i8
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh
  %.0.i.i190 = phi i8 [ %6, %bb.eh ], [ %i.bfo, %bb.ei ], [ %i.bfs, %bb.ej ], [ %i.bfw, %bb.ek ] ; 2 uses
  %i.bfx = icmp eq i8 %.sroa.8.0.i, 0
  br i1 %i.bfx, label %lv_color_8_8_mix.exit.i.i191, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.bfy = icmp ugt i8 %.sroa.8.0.i, -4
  br i1 %i.bfy, label %lv_color_8_8_mix.exit.i.i191, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.bfz = xor i16 %.sroa.2.0.extract.trunc.i.pre-phi.i185, 255
  %i.bga = zext i8 %.0.i.i190 to i16
  %i.bgb = mul nuw i16 %.sroa.2.0.extract.trunc.i.pre-phi.i185, %i.bga
  %i.bgc = zext i8 %narrow.i.i189 to i16
  %i.bgd = mul nuw i16 %i.bfz, %i.bgc
  %i.bge = add i16 %i.bgb, %i.bgd
  %i.bgf = lshr i16 %i.bge, 8
  %i.bgg = trunc nuw i16 %i.bgf to i8
  br label %lv_color_8_8_mix.exit.i.i191

lv_color_8_8_mix.exit.i.i191:                     ; preds = %bb.en, %bb.em, %bb.el
  %.017.i.i192 = phi i8 [ %narrow.i.i189, %bb.el ], [ %i.bgg, %bb.en ], [ %.0.i.i190, %bb.em ]
  %i.bgh = icmp slt i8 %.017.i.i192, 0
  %i.bgi = shl nuw nsw i32 1, %i.bfk
  %i.bgj = trunc i32 %i.bgi to i8                 ; 2 uses
  %i.bgk = or i8 %i.bfh, %i.bgj
  %i.bgl = xor i8 %i.bgj, -1
  %i.bgm = and i8 %i.bfh, %i.bgl
  %.sink.i.i = select i1 %i.bgh, i8 %i.bgk, i8 %i.bgm
  store i8 %.sink.i.i, ptr %i.bfg, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit.i193

blend_non_normal_pixel.exit.i193:                 ; preds = %lv_color_8_8_mix.exit.i.i191, %bb.eg
  %indvars.iv.next.i194 = add nuw nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %exitcond.not.i195 = icmp eq i64 %indvars.iv.next.i194, %wide.trip.count.i182
  br i1 %exitcond.not.i195, label %._crit_edge.i196, label %bb.ee, !llvm.loop !101

._crit_edge.i196:                                 ; preds = %blend_non_normal_pixel.exit.i193
  %i.bgn = getelementptr inbounds i8, ptr %.2178218.i, i64 %i.ayn
  %.3179.i = select i1 %i.bej, ptr null, ptr %i.bgn
  %i.bgo = getelementptr inbounds nuw i8, ptr %.4189216.i, i64 %i.ayo
  %i.bgp = getelementptr inbounds nuw i8, ptr %.4184217.i, i64 %i.ayp
  %i.bgq = add nuw nsw i32 %.4219.i, 1            ; 2 uses
  %exitcond254.not.i197 = icmp eq i32 %i.bgq, %i.axq
  br i1 %exitcond254.not.i197, label %rgb565_image_blend.exit, label %.preheader211.i183, !llvm.loop !102

rgb565_image_blend.exit.sink.split:               ; preds = %bb.a, %bb.at
  %.sink = phi i8 [ 4, %bb.at ], [ 3, %bb.a ]
  tail call fastcc void @rgb888_image_blend(ptr noundef nonnull %0, i8 noundef zeroext %.sink)
  br label %rgb565_image_blend.exit

rgb565_image_blend.exit:                          ; preds = %._crit_edge.i196, %._crit_edge222.i, %._crit_edge229.i215, %._crit_edge236.i, %._crit_edge242.i, %._crit_edge.i160, %._crit_edge244.i, %._crit_edge251.i, %._crit_edge258.i, %._crit_edge264.i, %._crit_edge.i117, %._crit_edge219.i, %._crit_edge226.i, %._crit_edge233.split.us.us.i, %._crit_edge233.split.i, %._crit_edge243.i, %._crit_edge.i70, %._crit_edge229.i, %._crit_edge235.i, %._crit_edge241.i, %._crit_edge246.i, %._crit_edge.i27, %._crit_edge240.i33, %._crit_edge248.i, %._crit_edge255.split.us.us.i, %._crit_edge255.split.i, %._crit_edge265.i, %._crit_edge.i, %._crit_edge232.i, %._crit_edge240.i, %._crit_edge247.split.us.us.i, %._crit_edge247.split.i, %._crit_edge257.i, %rgb565_image_blend.exit.sink.split, %.preheader208.lr.ph.i, %bb.eb, %.preheader205.lr.ph.i, %.preheader206.i207, %.preheader202.lr.ph.i, %.preheader203.i217, %.preheader.lr.ph.i220, %.preheader201.i219, %.preheader211.lr.ph.i180, %.preheader212.i179, %.preheader230.lr.ph.i, %bb.df, %.preheader227.lr.ph.i, %.preheader228.i168, %.preheader224.lr.ph.i, %.preheader225.i171, %.preheader.lr.ph.i174, %.preheader223.i173, %.preheader233.lr.ph.i, %.preheader234.i, %.preheader206.lr.ph.i, %bb.ce, %.preheader203.lr.ph.i, %.preheader204.i, %.preheader200.lr.ph.i, %.preheader201.i, %.preheader.lr.ph.i138, %.preheader199.i, %.preheader209.lr.ph.i, %.preheader210.i99, %.preheader217.lr.ph.i75, %bb.bh, %.preheader214.lr.ph.i81, %.preheader215.i80, %.preheader211.lr.ph.i85, %.preheader212.i84, %.preheader.lr.ph.i90, %.preheader210.i89, %.preheader220.lr.ph.i57, %.preheader221.i56, %.preheader225.lr.ph.i, %bb.af, %.preheader222.lr.ph.i, %.preheader223.i, %.preheader219.lr.ph.i, %.preheader220.i38, %.preheader.lr.ph.i52, %.preheader218.i, %.preheader228.lr.ph.i, %.preheader229.i, %.preheader217.lr.ph.i, %bb.j, %.preheader214.lr.ph.i, %.preheader215.i, %.preheader211.lr.ph.i, %.preheader212.i, %.preheader.lr.ph.i, %.preheader210.i, %.preheader220.lr.ph.i, %.preheader221.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rgb888_image_blend(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 3, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !tbaa !16
  %.fr = freeze i8 %i.f                           ; 7 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !17     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !22   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i32, ptr %i.r, align 8, !tbaa !23
  %i.t = srem i32 %i.s, 8                         ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !24
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.x = icmp eq ptr %i.o, null                   ; 2 uses
  %i.y = zext i8 %.fr to i32                      ; 3 uses
  %i.z = icmp ugt i8 %.fr, -4                     ; 2 uses
  %or.cond = and i1 %i.x, %i.z
  br i1 %or.cond, label %.preheader212, label %bb.d

.preheader212:                                    ; preds = %bb.b
  %i.aa = icmp sgt i32 %i.d, 0
  br i1 %i.aa, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader212
  %i.ab = icmp sgt i32 %i.b, 0
  %i.ac = zext i32 %i.i to i64
  %i.ad = zext i32 %i.m to i64
  br i1 %i.ab, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ae = zext nneg i8 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge259
  %.0165262 = phi i32 [ %i.ax, %._crit_edge259 ], [ 0, %.preheader.preheader ]
  %.0180261 = phi ptr [ %i.aw, %._crit_edge259 ], [ %i.k, %.preheader.preheader ] ; 2 uses
  %.0185260 = phi ptr [ %i.av, %._crit_edge259 ], [ %i.g, %.preheader.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv308 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next309, %bb.c ] ; 2 uses
  %.0171257 = phi i32 [ 0, %.preheader ], [ %i.au, %bb.c ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0180261, i64 %indvars.iv308
  %i.ag = tail call zeroext i8 @lv_color24_luminance(ptr noundef %i.af) #4
  %i.ah = icmp slt i8 %i.ag, 0
  %i.ai = add nsw i32 %.0171257, %i.t             ; 2 uses
  %i.aj = srem i32 %i.ai, 8
  %i.ak = sub nsw i32 7, %i.aj
  %i.al = shl nuw nsw i32 1, %i.ak
  %i.am = sdiv i32 %i.ai, 8
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %.0185260, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11  ; 2 uses
  %i.aq = trunc i32 %i.al to i8                   ; 2 uses
  %i.ar = xor i8 %i.aq, -1
  %i.as = and i8 %i.ap, %i.ar
  %i.at = or i8 %i.ap, %i.aq
  %.sink = select i1 %i.ah, i8 %i.at, i8 %i.as
  store i8 %.sink, ptr %i.ao, align 1, !tbaa !11
  %i.au = add nuw nsw i32 %.0171257, 1            ; 2 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, %i.ae
  %exitcond311.not = icmp eq i32 %i.au, %i.b
  br i1 %exitcond311.not, label %._crit_edge259, label %bb.c, !llvm.loop !111

._crit_edge259:                                   ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.0185260, i64 %i.ac
  %i.aw = getelementptr inbounds nuw i8, ptr %.0180261, i64 %i.ad
  %i.ax = add nuw nsw i32 %.0165262, 1            ; 2 uses
  %exitcond312.not = icmp eq i32 %i.ax, %i.d
  br i1 %exitcond312.not, label %.loopexit, label %.preheader, !llvm.loop !112

bb.d:                                             ; preds = %bb.b
  %i.ay = icmp ult i8 %.fr, -3                    ; 2 uses
  %or.cond5 = and i1 %i.x, %i.ay
  br i1 %or.cond5, label %.preheader214, label %bb.e

.preheader214:                                    ; preds = %bb.d
  %i.az = icmp sgt i32 %i.d, 0
  br i1 %i.az, label %.preheader213.lr.ph, label %.loopexit

.preheader213.lr.ph:                              ; preds = %.preheader214
  %i.ba = icmp sgt i32 %i.b, 0
  %i.bb = icmp eq i8 %.fr, 0
  %i.bc = zext i8 %.fr to i16
  %i.bd = xor i8 %.fr, -1
  %i.be = zext i8 %i.bd to i16
  %i.bf = zext i32 %i.i to i64                    ; 2 uses
  %i.bg = zext i32 %i.m to i64                    ; 2 uses
  br i1 %i.ba, label %.preheader213.lr.ph.split, label %.loopexit

.preheader213.lr.ph.split:                        ; preds = %.preheader213.lr.ph
  %.not = icmp eq i8 %.fr, 0
  %i.bh = zext nneg i8 %1 to i64                  ; 2 uses
  br i1 %.not, label %.preheader213, label %.preheader213.us

.preheader213.us:                                 ; preds = %.preheader213.lr.ph.split, %._crit_edge249.split.us.us
  %.1254.us = phi i32 [ %i.ci, %._crit_edge249.split.us.us ], [ 0, %.preheader213.lr.ph.split ]
  %.1181252.us = phi ptr [ %i.ch, %._crit_edge249.split.us.us ], [ %i.k, %.preheader213.lr.ph.split ] ; 2 uses
  %.1186250.us = phi ptr [ %i.cg, %._crit_edge249.split.us.us ], [ %i.g, %.preheader213.lr.ph.split ] ; 2 uses
  br label %lv_color_8_8_mix.exit.us.us

lv_color_8_8_mix.exit.us.us:                      ; preds = %lv_color_8_8_mix.exit.us.us, %.preheader213.us
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %lv_color_8_8_mix.exit.us.us ], [ 0, %.preheader213.us ] ; 2 uses
  %.1172247.us.us = phi i32 [ %i.cf, %lv_color_8_8_mix.exit.us.us ], [ 0, %.preheader213.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1181252.us, i64 %indvars.iv303
  %i.bj = tail call zeroext i8 @lv_color24_luminance(ptr noundef %i.bi) #4
  %i.bk = add nsw i32 %.1172247.us.us, %i.t       ; 2 uses
  %i.bl = sdiv i32 %i.bk, 8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %.1186250.us, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11  ; 3 uses
  %i.bp = zext i8 %i.bo to i32
  %i.bq = srem i32 %i.bk, 8
  %i.br = sub nsw i32 7, %i.bq
  %i.bs = zext i8 %i.bj to i16
  %i.bt = mul nuw i16 %i.bs, %i.bc
  %i.bu = shl nuw nsw i32 1, %i.br                ; 2 uses
  %i.bv = and i32 %i.bu, %i.bp
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = select i1 %i.bw, i16 0, i16 255
  %i.by = mul nuw i16 %i.bx, %i.be
  %i.bz = add i16 %i.by, %i.bt
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = trunc i32 %i.bu to i8                   ; 2 uses
  %i.cc = xor i8 %i.cb, -1
  %i.cd = and i8 %i.bo, %i.cc
  %i.ce = or i8 %i.bo, %i.cb
  %storemerge211.us.us = select i1 %i.ca, i8 %i.ce, i8 %i.cd
  store i8 %storemerge211.us.us, ptr %i.bn, align 1, !tbaa !11
  %i.cf = add nuw nsw i32 %.1172247.us.us, 1      ; 2 uses
end_hunk_5
begin_hunk_6_@rgb888_image_blend:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %.0176245, i64 %indvars.iv286
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11  ; 4 uses
  %i.ec = zext i8 %i.eb to i16
  %i.ed = icmp eq i8 %i.eb, 0
  br i1 %i.ed, label %lv_color_8_8_mix.exit197, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ee = icmp ugt i8 %i.eb, -4
  br i1 %i.ee, label %lv_color_8_8_mix.exit197, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ef = xor i8 %i.eb, -1
  %i.eg = zext i8 %i.do to i16
  %i.eh = mul nuw i16 %i.ec, %i.eg
  %i.ei = zext i8 %narrow193 to i16
  %i.ej = zext i8 %i.ef to i16
  %i.ek = mul nuw i16 %i.ei, %i.ej
  %i.el = add i16 %i.ek, %i.eh
  %i.em = lshr i16 %i.el, 8
  %i.en = trunc nuw i16 %i.em to i8
  br label %lv_color_8_8_mix.exit197

lv_color_8_8_mix.exit197:                         ; preds = %bb.g, %bb.h, %bb.f
  %.0208 = phi i8 [ %narrow193, %bb.f ], [ %i.en, %bb.h ], [ %i.do, %bb.g ]
  %i.eo = icmp slt i8 %.0208, 0
  %i.ep = shl nuw nsw i32 1, %i.dw
  %i.eq = trunc i32 %i.ep to i8                   ; 2 uses
  %i.er = xor i8 %i.eq, -1
  %i.es = and i8 %i.dt, %i.er
  %i.et = or i8 %i.dt, %i.eq
  %storemerge210 = select i1 %i.eo, i8 %i.et, i8 %i.es
  store i8 %storemerge210, ptr %i.ds, align 1, !tbaa !11
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, %i.dm
  %exitcond296.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge242, label %bb.f, !llvm.loop !115

._crit_edge242:                                   ; preds = %lv_color_8_8_mix.exit197
  %i.eu = getelementptr inbounds nuw i8, ptr %.2187243, i64 %i.dj
  %i.ev = getelementptr inbounds nuw i8, ptr %.2182244, i64 %i.dk
  %i.ew = getelementptr inbounds i8, ptr %.0176245, i64 %i.dl
  %i.ex = add nuw nsw i32 %.2246, 1               ; 2 uses
  %exitcond297.not = icmp eq i32 %i.ex, %i.d
  br i1 %exitcond297.not, label %.loopexit, label %.preheader216, !llvm.loop !116

bb.i:                                             ; preds = %bb.e
  %or.cond11 = and i1 %i.dg, %i.ay
  %i.ey = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %or.cond11, label %.preheader220, label %.preheader223

.preheader223:                                    ; preds = %bb.i
  br i1 %i.ey, label %.preheader222.lr.ph, label %.loopexit

.preheader222.lr.ph:                              ; preds = %.preheader223
  %i.ez = icmp sgt i32 %i.b, 0
  %i.fa = sext i32 %i.q to i64
  %i.fb = zext i32 %i.i to i64
  %i.fc = zext i32 %i.m to i64
  br i1 %i.ez, label %.preheader222.preheader, label %.loopexit

.preheader222.preheader:                          ; preds = %.preheader222.lr.ph
  %i.fd = zext nneg i8 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader222

.preheader220:                                    ; preds = %bb.i
  br i1 %i.ey, label %.preheader219.lr.ph, label %.loopexit

.preheader219.lr.ph:                              ; preds = %.preheader220
  %i.fe = icmp sgt i32 %i.b, 0
  %i.ff = zext i32 %i.i to i64
  %i.fg = zext i32 %i.m to i64
  %i.fh = sext i32 %i.q to i64
  br i1 %i.fe, label %.preheader219.preheader, label %.loopexit

.preheader219.preheader:                          ; preds = %.preheader219.lr.ph
  %i.fi = zext nneg i8 %1 to i64
  %wide.trip.count283 = zext nneg i32 %i.b to i64
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %._crit_edge234
  %.3238 = phi i32 [ %i.gv, %._crit_edge234 ], [ 0, %.preheader219.preheader ]
  %.1177237 = phi ptr [ %i.gu, %._crit_edge234 ], [ %i.o, %.preheader219.preheader ] ; 2 uses
  %.3183236 = phi ptr [ %i.gt, %._crit_edge234 ], [ %i.k, %.preheader219.preheader ] ; 2 uses
  %.3188235 = phi ptr [ %i.gs, %._crit_edge234 ], [ %i.g, %.preheader219.preheader ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader219, %lv_color_8_8_mix.exit200
  %indvars.iv276 = phi i64 [ 0, %.preheader219 ], [ %indvars.iv.next277, %lv_color_8_8_mix.exit200 ] ; 2 uses
  %indvars.iv274 = phi i64 [ 0, %.preheader219 ], [ %indvars.iv.next275, %lv_color_8_8_mix.exit200 ] ; 3 uses
  %indvars282 = trunc i64 %indvars.iv274 to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %.3183236, i64 %indvars.iv276
  %i.fk = tail call zeroext i8 @lv_color24_luminance(ptr noundef %i.fj) #4 ; 2 uses
  %i.fl = add nsw i32 %i.t, %indvars282           ; 2 uses
  %i.fm = sdiv i32 %i.fl, 8
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %.3188235, i64 %i.fn ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !11  ; 3 uses
  %i.fq = zext i8 %i.fp to i32
  %i.fr = srem i32 %i.fl, 8
  %i.fs = sub nsw i32 7, %i.fr                    ; 2 uses
  %i.ft = lshr i32 %i.fq, %i.fs
  %i.fu = trunc nuw i32 %i.ft to i8
  %i.fv = and i8 %i.fu, 1
  %narrow = sub nsw i8 0, %i.fv                   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.1177237, i64 %indvars.iv274
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !11
  %i.fy = zext i8 %i.fx to i32
  %i.fz = mul nuw nsw i32 %i.fy, %i.y             ; 2 uses
  %i.ga = lshr i32 %i.fz, 8                       ; 2 uses
  %i.gb = trunc nuw nsw i32 %i.ga to i16          ; 2 uses
  %i.gc = icmp eq i32 %i.ga, 0
  br i1 %i.gc, label %lv_color_8_8_mix.exit200, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gd = icmp samesign ugt i32 %i.fz, 64767
  br i1 %i.gd, label %lv_color_8_8_mix.exit200, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ge = xor i16 %i.gb, 255
  %i.gf = zext i8 %i.fk to i16
  %i.gg = mul nuw i16 %i.gb, %i.gf
  %i.gh = zext i8 %narrow to i16
  %i.gi = mul nuw i16 %i.ge, %i.gh
  %i.gj = add i16 %i.gi, %i.gg
  %i.gk = lshr i16 %i.gj, 8
  %i.gl = trunc nuw i16 %i.gk to i8
  br label %lv_color_8_8_mix.exit200

lv_color_8_8_mix.exit200:                         ; preds = %bb.k, %bb.l, %bb.j
  %.0207 = phi i8 [ %narrow, %bb.j ], [ %i.gl, %bb.l ], [ %i.fk, %bb.k ]
  %i.gm = icmp slt i8 %.0207, 0
  %i.gn = shl nuw nsw i32 1, %i.fs
  %i.go = trunc i32 %i.gn to i8                   ; 2 uses
  %i.gp = xor i8 %i.go, -1
  %i.gq = and i8 %i.fp, %i.gp
  %i.gr = or i8 %i.fp, %i.go
  %storemerge = select i1 %i.gm, i8 %i.gr, i8 %i.gq
  store i8 %storemerge, ptr %i.fo, align 1, !tbaa !11
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, %i.fi
  %exitcond284.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge234, label %bb.j, !llvm.loop !117

._crit_edge234:                                   ; preds = %lv_color_8_8_mix.exit200
  %i.gs = getelementptr inbounds nuw i8, ptr %.3188235, i64 %i.ff
  %i.gt = getelementptr inbounds nuw i8, ptr %.3183236, i64 %i.fg
  %i.gu = getelementptr inbounds i8, ptr %.1177237, i64 %i.fh
  %i.gv = add nuw nsw i32 %.3238, 1               ; 2 uses
  %exitcond285.not = icmp eq i32 %i.gv, %i.d
  br i1 %exitcond285.not, label %.loopexit, label %.preheader219, !llvm.loop !118

.preheader222:                                    ; preds = %.preheader222.preheader, %._crit_edge
  %.4230 = phi i32 [ %i.iy, %._crit_edge ], [ 0, %.preheader222.preheader ]
  %.2178229 = phi ptr [ %.3179, %._crit_edge ], [ %i.o, %.preheader222.preheader ] ; 3 uses
  %.4184228 = phi ptr [ %i.ix, %._crit_edge ], [ %i.k, %.preheader222.preheader ] ; 2 uses
  %.4189227 = phi ptr [ %i.iw, %._crit_edge ], [ %i.g, %.preheader222.preheader ] ; 2 uses
  %i.gw = icmp eq ptr %.2178229, null             ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader222, %blend_non_normal_pixel.exit
  %indvars.iv268 = phi i64 [ 0, %.preheader222 ], [ %indvars.iv.next269, %blend_non_normal_pixel.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader222 ], [ %indvars.iv.next, %blend_non_normal_pixel.exit ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.4184228, i64 %indvars.iv ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !11
  %i.ha = load i16, ptr %i.gx, align 1
  %i.hb = zext i16 %i.ha to i32
  br i1 %i.gw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hc = getelementptr inbounds nuw i8, ptr %.2178229, i64 %indvars.iv268
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !11
  %i.he = zext i8 %i.hd to i32
  %i.hf = mul nuw nsw i32 %i.he, %i.y
  %i.hg = lshr i32 %i.hf, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.6.0 = phi i32 [ %i.hg, %bb.n ], [ %i.y, %bb.m ] ; 4 uses
  %i.hh = load i32, ptr %i.u, align 4, !tbaa !24
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0, 24
  %.sroa.5.0.insert.ext = zext i8 %i.gz to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.hb
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i32 %.sroa.6.0 to i16 ; 2 uses
  %i.hi = tail call zeroext i8 @lv_color32_luminance(i32 %.sroa.0.0.insert.insert) #4 ; 3 uses
  %i.hj = zext i8 %i.hi to i32                    ; 2 uses
  %i.hk = trunc i64 %indvars.iv268 to i32
  %i.hl = add i32 %i.t, %i.hk                     ; 2 uses
  %i.hm = sdiv i32 %i.hl, 8
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %.4189227, i64 %i.hn ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !11  ; 3 uses
  %i.hq = zext i8 %i.hp to i32
  %i.hr = srem i32 %i.hl, 8
  %i.hs = sub nsw i32 7, %i.hr                    ; 2 uses
  %i.ht = lshr i32 %i.hq, %i.hs
  %i.hu = trunc nuw i32 %i.ht to i8
  %i.hv = and i8 %i.hu, 1
  %narrow.i = sub nsw i8 0, %i.hv                 ; 6 uses
  switch i32 %i.hh, label %blend_non_normal_pixel.exit [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %2 = tail call i8 @llvm.uadd.sat.i8(i8 %narrow.i, i8 %i.hi)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.hw = tail call i8 @llvm.usub.sat.i8(i8 %narrow.i, i8 %i.hi)
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.hx = zext i8 %narrow.i to i32
  %i.hy = mul nuw nsw i32 %i.hx, %i.hj
  %i.hz = lshr i32 %i.hy, 8
  %i.ia = trunc nuw i32 %i.hz to i8
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ib = zext i8 %narrow.i to i32
  %i.ic = sub nsw i32 %i.ib, %i.hj
  %i.id = tail call i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.ie = trunc nuw i32 %i.id to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.0.i = phi i8 [ %2, %bb.p ], [ %i.hw, %bb.q ], [ %i.ia, %bb.r ], [ %i.ie, %bb.s ] ; 2 uses
  %i.if = icmp eq i32 %.sroa.6.0, 0
  br i1 %i.if, label %lv_color_8_8_mix.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ig = icmp samesign ugt i32 %.sroa.6.0, 252
  br i1 %i.ig, label %lv_color_8_8_mix.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ih = xor i16 %.sroa.2.0.extract.trunc.i, 255
  %i.ii = zext i8 %.0.i to i16
  %i.ij = mul nuw i16 %i.ii, %.sroa.2.0.extract.trunc.i
  %i.ik = zext i8 %narrow.i to i16
  %i.il = mul nuw i16 %i.ih, %i.ik
  %i.im = add i16 %i.ij, %i.il
  %i.in = lshr i16 %i.im, 8
  %i.io = trunc nuw i16 %i.in to i8
  br label %lv_color_8_8_mix.exit.i

lv_color_8_8_mix.exit.i:                          ; preds = %bb.v, %bb.u, %bb.t
  %.017.i = phi i8 [ %narrow.i, %bb.t ], [ %i.io, %bb.v ], [ %.0.i, %bb.u ]
  %i.ip = icmp slt i8 %.017.i, 0
  %i.iq = shl nuw nsw i32 1, %i.hs
  %i.ir = trunc i32 %i.iq to i8                   ; 2 uses
  %i.is = or i8 %i.hp, %i.ir
  %i.it = xor i8 %i.ir, -1
  %i.iu = and i8 %i.hp, %i.it
  %.sink.i201 = select i1 %i.ip, i8 %i.is, i8 %i.iu
  store i8 %.sink.i201, ptr %i.ho, align 1, !tbaa !11
  br label %blend_non_normal_pixel.exit

blend_non_normal_pixel.exit:                      ; preds = %bb.o, %lv_color_8_8_mix.exit.i
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.fd
  %exitcond.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !119

._crit_edge:                                      ; preds = %blend_non_normal_pixel.exit
  %i.iv = getelementptr inbounds i8, ptr %.2178229, i64 %i.fa
  %.3179 = select i1 %i.gw, ptr null, ptr %i.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %.4189227, i64 %i.fb
  %i.ix = getelementptr inbounds nuw i8, ptr %.4184228, i64 %i.fc
  %i.iy = add nuw nsw i32 %.4230, 1               ; 2 uses
  %exitcond273.not = icmp eq i32 %i.iy, %i.d
  br i1 %exitcond273.not, label %.loopexit, label %.preheader222, !llvm.loop !120

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge234, %._crit_edge242, %._crit_edge249.split.us.us, %._crit_edge249.split, %._crit_edge259, %.preheader223, %.preheader222.lr.ph, %.preheader220, %.preheader219.lr.ph, %.preheader217, %.preheader216.lr.ph, %.preheader214, %.preheader213.lr.ph, %.preheader212, %.preheader.lr.ph, %bb.a
  ret void
}

declare zeroext i8 @lv_color32_luminance(i32) local_unnamed_addr #1

declare zeroext i8 @lv_color24_luminance(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lv_color16_luminance(i16) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!11 = !{!4, !4, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"_lv_draw_sw_blend_image_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !5, i64 60, !10, i64 64, !10, i64 80}
!14 = !{!13, !5, i64 8}
!15 = !{!13, !5, i64 12}
!16 = !{!13, !4, i64 56}
!17 = !{!13, !8, i64 0}
!18 = !{!13, !5, i64 16}
!19 = !{!13, !8, i64 40}
!20 = !{!13, !5, i64 48}
!21 = !{!13, !9, i64 24}
!22 = !{!13, !5, i64 32}
!23 = !{!13, !5, i64 64}
!24 = !{!13, !5, i64 60}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!34 = !{!"_lv_draw_sw_blend_fill_dsc_t", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !5, i64 32, !33, i64 36, !4, i64 39, !10, i64 40}
!35 = !{!34, !5, i64 8}
!36 = !{!34, !5, i64 12}
!37 = !{!34, !4, i64 39}
!38 = !{!34, !9, i64 24}
!39 = !{!34, !5, i64 32}
!40 = !{!34, !5, i64 16}
!41 = !{!34, !8, i64 0}
!42 = !{!34, !5, i64 40}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = !{!13, !5, i64 52}
!104 = !{!"short", !4, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!107 = !{!106, !4, i64 3}
!108 = !{!"", !4, i64 0, !4, i64 1}
!109 = !{!108, !4, i64 0}
!110 = !{!108, !4, i64 1}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
end_hunk_6
