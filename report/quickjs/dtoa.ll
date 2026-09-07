Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@js_dtoa:bb.a
  %i.ff = add nsw i32 %.0218, 1
  br i1 %i.fe, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %mpb_get_u64.exit
  %i.fg = urem i64 %.0.i247, %i.de
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0203269 = phi i64 [ %i.fi, %.lr.ph ], [ %.0.i247, %.preheader ]
  %.2216268 = phi i32 [ %i.fj, %.lr.ph ], [ %.1215, %.preheader ]
  %i.fi = udiv i64 %.0203269, %i.de               ; 3 uses
  %i.fj = add nsw i32 %.2216268, -1               ; 2 uses
  %i.fk = urem i64 %i.fi, %i.de
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2216.lcssa = phi i32 [ %.1215, %.preheader ], [ %i.fj, %.lr.ph ] ; 4 uses
  %.0203.lcssa = phi i64 [ %.0.i247, %.preheader ], [ %i.fi, %.lr.ph ] ; 4 uses
  %i.fm = icmp eq i32 %.0205, 0
  br i1 %i.fm, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  store i64 %.0203.lcssa, ptr %i.dk, align 4
  %i.fn = icmp ult i64 %.0203.lcssa, 4294967296
  %..i = select i1 %i.fn, i32 1, i32 2
  store i32 %..i, ptr %5, align 4, !tbaa !18
  %i.fo = sub nsw i32 %.0218, %.2216.lcssa
  %i.fp = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.fo, i1 noundef zeroext false, i32 noundef 55)
  %i.fq = load i32, ptr %i.dk, align 4, !tbaa !18
  %i.fr = icmp eq i32 %i.fq, 0
  %.pre.i.i = load i32, ptr %5, align 4, !tbaa !18 ; 3 uses
  %i.fs = icmp eq i32 %.pre.i.i, 1
  %or.cond.i.i = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond.i.i, label %mul_pow_round_to_d.exit, label %mpb_floor_log2.exit.i.i

mpb_floor_log2.exit.i.i:                          ; preds = %bb.an
  %i.ft = sext i32 %.pre.i.i to i64
  %i.fu = getelementptr [4 x i8], ptr %5, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !18 ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 0
  %i.fx = shl nsw i32 %.pre.i.i, 5
  %i.fy = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fv, i1 true)
  %i.fz = sub i32 %i.fx, %i.fy
  %.0.i.i.i = select i1 %i.fw, i32 0, i32 %i.fz   ; 2 uses
  %i.ga = sub nsw i32 %.0.i.i.i, %i.fp            ; 2 uses
  %i.gb = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 -1021) ; 2 uses
  %.0.neg.i.i = add i32 %.0.i.i.i, -1074
  %i.gc = sub i32 %.0.neg.i.i, %i.gb
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.gc, i32 noundef 0)
  %i.gd = load i32, ptr %5, align 4, !tbaa !18
  %i.ge = icmp eq i32 %i.gd, 1
  br i1 %i.ge, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %mpb_floor_log2.exit.i.i
  %i.gf = load i32, ptr %i.dk, align 4, !tbaa !18
  %i.gg = zext i32 %i.gf to i64
  br label %mpb_get_u64.exit.i.i

bb.ap:                                            ; preds = %mpb_floor_log2.exit.i.i
  %i.gh = load i64, ptr %i.dk, align 4
  br label %mpb_get_u64.exit.i.i

mpb_get_u64.exit.i.i:                             ; preds = %bb.ap, %bb.ao
  %.0.i29.i.i = phi i64 [ %i.gg, %bb.ao ], [ %i.gh, %bb.ap ]
  %i.gi = sub nuw nsw i32 -1021, %i.gb
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl i64 %.0.i29.i.i, %i.gj              ; 2 uses
  %i.gl = icmp ugt i64 %i.gk, 9007199254740991    ; 2 uses
  %i.gm = zext i1 %i.gl to i32
  %.024.i.i = add nsw i32 %i.ga, %i.gm
  %i.gn = zext i1 %i.gl to i64
  %.023.i.i = lshr i64 %i.gk, %i.gn
  br label %mul_pow_round_to_d.exit

mul_pow_round_to_d.exit:                          ; preds = %bb.an, %mpb_get_u64.exit.i.i
  %.125.i.i = phi i32 [ %.024.i.i, %mpb_get_u64.exit.i.i ], [ 0, %bb.an ]
  %.1.i.i = phi i64 [ %.023.i.i, %mpb_get_u64.exit.i.i ], [ 0, %bb.an ]
  %i.go = icmp eq i64 %.1.i.i, %.0224
  %i.gp = icmp eq i32 %.125.i.i, %i.ab
  %or.cond242 = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %or.cond242, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %mul_pow_round_to_d.exit, %._crit_edge
  %i.gq = icmp eq i32 %.2216.lcssa, 1
  %i.gr = add nsw i32 %.2216.lcssa, -1
  br i1 %i.gq, label %bb.ar, label %bb.ad

bb.ar:                                            ; preds = %mul_pow_round_to_d.exit, %bb.aq
  %.1208 = phi i32 [ %.0218, %bb.aq ], [ %.0207, %mul_pow_round_to_d.exit ]
  %.1206 = phi i32 [ 1, %bb.aq ], [ %.0205, %mul_pow_round_to_d.exit ]
  %.1 = phi i64 [ %.0203.lcssa, %bb.aq ], [ %.0204, %mul_pow_round_to_d.exit ] ; 2 uses
  store i64 %.1, ptr %i.dk, align 4
  %i.gs = icmp ult i64 %.1, 4294967296
  %..i248 = select i1 %i.gs, i32 1, i32 2
  store i32 %..i248, ptr %5, align 4, !tbaa !18
  br label %mpb_cmp.exit

bb.as:                                            ; preds = %mul_log2_radix.exit
  %i.gt = icmp eq i32 %i.c, 2
  br i1 %i.gt, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.gu = add nsw i32 %.0223, -1075               ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 %.0224, ptr %i.gv, align 4
  %i.gw = icmp ult i64 %.0224, 4294967296
  %..i.i249 = select i1 %i.gw, i32 1, i32 2
  store i32 %..i.i249, ptr %5, align 4, !tbaa !18
  %i.gx = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %3, i1 noundef zeroext true, i32 noundef range(i32 -2147483648, 2147482573) %i.gu)
  %i.gy = sub nsw i32 %i.gx, %i.gu
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.gy, i32 noundef 1)
  %i.gz = tail call i32 @llvm.smax.i32(i32 %.0.i244, i32 -1)
  %..i250 = add nsw i32 %i.gz, 2                  ; 2 uses
  %i.ha = add nsw i32 %..i250, %3
  %i.hb = tail call fastcc i32 @output_digits(ptr noundef %.1210, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %i.ha, i32 noundef %..i250) ; 4 uses
  %i.hc = load i8, ptr %.1210, align 1, !tbaa !15
  %i.hd = icmp eq i8 %i.hc, 48
  %i.he = icmp sgt i32 %i.hb, 1
  %or.cond5 = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %or.cond5, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hf = getelementptr inbounds nuw i8, ptr %.1210, i64 1 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !15
  %.not236 = icmp eq i8 %i.hg, 46
  br i1 %.not236, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hh = add nsw i32 %i.hb, -1                   ; 2 uses
  %i.hi = zext nneg i32 %i.hh to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.1210, ptr nonnull align 1 %i.hf, i64 %i.hi, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.0 = phi i32 [ %i.hh, %bb.av ], [ %i.hb, %bb.au ], [ %i.hb, %bb.at ]
  %i.hj = sext i32 %.0 to i64
  %i.hk = getelementptr inbounds i8, ptr %.1210, i64 %i.hj
  br label %.loopexit

bb.ax:                                            ; preds = %bb.as
  store i32 1, ptr %i.d, align 4, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 220 ; 2 uses
  store i32 1, ptr %i.hl, align 4, !tbaa !18
  %i.hm = tail call fastcc i32 @mul_pow(ptr noundef nonnull %i.d, i32 noundef %i.f, i32 noundef %i.e, i32 noundef %3, i1 noundef zeroext false, i32 noundef 0)
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %i.d, i32 noundef %i.hm, i32 noundef 2)
  %i.hn = add nsw i32 %.0223, -1075               ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.hp = icmp ult i64 %.0224, 4294967296
  %..i.i252 = select i1 %i.hp, i32 1, i32 2
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit261, %bb.ax
  %.1219 = phi i32 [ %i.dd, %bb.ax ], [ %i.ih, %.loopexit261 ] ; 4 uses
  %i.hq = sub nsw i32 %3, %.1219
  store i64 %.0224, ptr %i.ho, align 4
  store i32 %..i.i252, ptr %5, align 4, !tbaa !18
  %i.hr = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.hq, i1 noundef zeroext true, i32 noundef range(i32 -2147483648, 2147482573) %i.hn)
  %i.hs = sub nsw i32 %i.hr, %i.hn
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.hs, i32 noundef 1)
  %i.ht = load i32, ptr %5, align 4, !tbaa !18    ; 4 uses
  %i.hu = load i32, ptr %i.d, align 4, !tbaa !18  ; 2 uses
  %i.hv = icmp slt i32 %i.ht, %i.hu
  br i1 %i.hv, label %mpb_cmp.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hw = icmp sle i32 %i.ht, %i.hu
  %i.hx = icmp sgt i32 %i.ht, 0
  %or.cond260 = and i1 %i.hx, %i.hw
  br i1 %or.cond260, label %.lr.ph.i, label %.loopexit261

.lr.ph.i:                                         ; preds = %bb.az
  %i.hy = add nsw i32 %i.ht, -1
  %i.hz = zext nneg i32 %i.hy to i64
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %i.ia = add nsw i64 %.021.i, -1
  %i.ib = icmp sgt i64 %.021.i, 0
  br i1 %i.ib, label %bb.bb, label %.loopexit261, !llvm.loop !20

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i
  %.021.i = phi i64 [ %i.hz, %.lr.ph.i ], [ %i.ia, %bb.ba ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.021.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !18 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.021.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !18 ; 2 uses
  %.not.i253 = icmp eq i32 %i.id, %i.if
  br i1 %.not.i253, label %bb.ba, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ig = icmp ult i32 %i.id, %i.if
  br i1 %i.ig, label %mpb_cmp.exit, label %.loopexit261

.loopexit261:                                     ; preds = %bb.ba, %bb.az, %bb.bc
  %i.ih = add nsw i32 %.1219, 1
  br label %bb.ay

mpb_cmp.exit:                                     ; preds = %bb.bc, %bb.ay, %bb.ar, %bb.k, %bb.l
  %.2220 = phi i32 [ 1, %bb.l ], [ %.1208, %bb.ar ], [ 1, %bb.k ], [ %.1219, %bb.ay ], [ %.1219, %bb.bc ] ; 8 uses
  %.3217 = phi i32 [ %.0214, %bb.l ], [ %.1206, %bb.ar ], [ %.0214, %bb.k ], [ %3, %bb.ay ], [ %3, %bb.bc ] ; 6 uses
  %.2 = phi ptr [ %i.t, %bb.l ], [ %.1210, %bb.ar ], [ %0, %bb.k ], [ %.1210, %bb.ay ], [ %.1210, %bb.bc ] ; 9 uses
  %i.ii = icmp eq i32 %i.c, 1
  br i1 %i.ii, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %mpb_cmp.exit
  %i.ij = sext i32 %2 to i64
  %i.ik = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 -2
  %i.im = load i8, ptr %i.il, align 1, !tbaa !15
  %i.in = zext i8 %i.im to i32
  %i.io = add nuw nsw i32 %i.in, 4
  br label %bb.be

bb.be:                                            ; preds = %mpb_cmp.exit, %bb.bd
  %.0211 = phi i32 [ %i.io, %bb.bd ], [ %3, %mpb_cmp.exit ]
  %i.ip = and i32 %4, 12
  switch i32 %i.ip, label %bb.bk [
    i32 4, label %bb.bg
    i32 0, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  %i.iq = icmp slt i32 %.2220, -5
  %i.ir = icmp sgt i32 %.2220, %.0211
  %or.cond243 = select i1 %i.iq, i1 true, i1 %i.ir
  br i1 %or.cond243, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.is = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef 1)
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr %.2, i64 %i.it ; 3 uses
  %i.iv = add nsw i32 %.2220, -1                  ; 2 uses
  %i.iw = icmp eq i32 %2, 10
  br i1 %i.iw, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ix = icmp eq i32 %i.f, 1
  %i.iy = icmp samesign ult i32 %i.e, 5
  %or.cond7 = select i1 %i.ix, i1 %i.iy, i1 false ; 2 uses
  %spec.select = select i1 %or.cond7, i8 112, i8 64
  %i.iz = select i1 %or.cond7, i32 %i.e, i32 1
  %spec.select312 = mul nsw i32 %i.iv, %i.iz
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink311 = phi i8 [ %spec.select, %bb.bh ], [ 101, %bb.bg ]
  %.3221 = phi i32 [ %spec.select312, %bb.bh ], [ %i.iv, %bb.bg ] ; 2 uses
  store i8 %.sink311, ptr %i.iu, align 1, !tbaa !15
  %.3 = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.ja = icmp slt i32 %.3221, 0
  %.sink = select i1 %i.ja, i8 45, i8 43
  %.4222 = tail call i32 @llvm.abs.i32(i32 %.3221, i1 true)
  store i8 %.sink, ptr %.3, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %.08.i = phi i32 [ %.4222, %bb.bi ], [ %i.jg, %bb.bj ] ; 3 uses
  %.0.i255 = phi ptr [ %i.jb, %bb.bi ], [ %i.jf, %bb.bj ]
  %i.jc = urem i32 %.08.i, 10
  %i.jd = trunc nuw nsw i32 %i.jc to i8
  %i.je = or disjoint i8 %i.jd, 48
  %i.jf = getelementptr inbounds i8, ptr %.0.i255, i64 -1 ; 4 uses
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !15
  %i.jg = udiv i32 %.08.i, 10
  %.not.i256 = icmp samesign ult i32 %.08.i, 10
  br i1 %.not.i256, label %u32toa.exit, label %bb.bj, !llvm.loop !0

u32toa.exit:                                      ; preds = %bb.bj
  %.4 = getelementptr inbounds nuw i8, ptr %i.iu, i64 2 ; 2 uses
  %i.jh = ptrtoint ptr %i.jb to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4, ptr noundef nonnull align 1 dereferenceable(1) %i.jf, i64 %i.jj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.jk = getelementptr inbounds nuw i8, ptr %.4, i64 %i.jj
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bf, %bb.be
  %i.jl = icmp slt i32 %.2220, 1
  br i1 %i.jl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jm = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 48, ptr %.2, align 1, !tbaa !15
  %i.jn = getelementptr i8, ptr %.2, i64 2        ; 2 uses
  store i8 46, ptr %i.jm, align 1, !tbaa !15
  %i.jo = icmp slt i32 %.2220, 0
  br i1 %i.jo, label %.lr.ph279.preheader, label %._crit_edge280

.lr.ph279.preheader:                              ; preds = %bb.bl
  %i.jp = sub nsw i32 0, %.2220
  %i.jq = zext nneg i32 %i.jp to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jn, i8 48, i64 %i.jq, i1 false), !tbaa !15
  %i.jr = getelementptr i8, ptr %.2, i64 %i.jq
  %scevgep292 = getelementptr i8, ptr %i.jr, i64 2
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %.lr.ph279.preheader, %bb.bl
  %.5.lcssa = phi ptr [ %i.jn, %bb.bl ], [ %scevgep292, %.lr.ph279.preheader ] ; 2 uses
  %i.js = tail call fastcc i32 @output_digits(ptr noundef nonnull %.5.lcssa, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %.3217)
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.jt
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bk
  %..i257 = tail call noundef i32 @llvm.smin.i32(i32 %.3217, i32 %.2220)
  %i.jv = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %..i257)
  %i.jw = sext i32 %i.jv to i64                   ; 2 uses
  %i.jx = getelementptr i8, ptr %.2, i64 %i.jw    ; 2 uses
  %i.jy = sub nsw i32 %.2220, %.3217              ; 3 uses
  %i.jz = icmp sgt i32 %i.jy, 0
  br i1 %i.jz, label %.lr.ph274.preheader, label %.loopexit

.lr.ph274.preheader:                              ; preds = %bb.bm
  %i.ka = zext nneg i32 %i.jy to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jx, i8 48, i64 %i.ka, i1 false), !tbaa !15
  %i.kb = getelementptr i8, ptr %.2, i64 %i.jw
  %6 = zext nneg i32 %i.jy to i64
  %scevgep = getelementptr i8, ptr %i.kb, i64 %6
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph274.preheader, %bb.bm, %bb.aw, %u32toa.exit, %._crit_edge280, %bb.e, %bb.f, %u64toa_radix.exit
  %.7 = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.jk, %u32toa.exit ], [ %i.ju, %._crit_edge280 ], [ %i.hk, %bb.aw ], [ %i.cm, %u64toa_radix.exit ], [ %i.jx, %bb.bm ], [ %scevgep, %.lr.ph274.preheader ] ; 2 uses
  store i8 0, ptr %.7, align 1, !tbaa !15
  %i.kc = ptrtoint ptr %.7 to i64
  %i.kd = ptrtoint ptr %0 to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = trunc i64 %i.ke to i32
  ret i32 %i.kf
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @mul_pow_round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 32) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mul_pow(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false, i32 noundef 55)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = icmp eq i32 %i.c, 0
  %.pre.i = load i32, ptr %1, align 4, !tbaa !18  ; 3 uses
  %i.e = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %round_to_d.exit, label %mpb_floor_log2.exit.i

mpb_floor_log2.exit.i:                            ; preds = %bb.a
  %i.f = sext i32 %.pre.i to i64
  %i.g = getelementptr [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = shl nsw i32 %.pre.i, 5
  %i.k = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.l = sub i32 %i.j, %i.k
  %.0.i.i = select i1 %i.i, i32 0, i32 %i.l       ; 2 uses
  %i.m = sub nsw i32 %.0.i.i, %i.a                ; 2 uses
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.m, i32 -1021) ; 2 uses
  %.0.neg.i = add i32 %.0.i.i, -1074
  %i.o = sub i32 %.0.neg.i, %i.n
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.o, i32 noundef 0)
  %i.p = load i32, ptr %1, align 4, !tbaa !18
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mpb_floor_log2.exit.i
  %i.r = load i32, ptr %i.b, align 4, !tbaa !18
  %i.s = zext i32 %i.r to i64
  br label %mpb_get_u64.exit.i

bb.c:                                             ; preds = %mpb_floor_log2.exit.i
  %i.t = load i64, ptr %i.b, align 4
  br label %mpb_get_u64.exit.i

mpb_get_u64.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i29.i = phi i64 [ %i.s, %bb.b ], [ %i.t, %bb.c ]
  %i.u = sub nuw nsw i32 -1021, %i.n
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %.0.i29.i, %i.v                  ; 2 uses
  %i.x = icmp ugt i64 %i.w, 9007199254740991      ; 2 uses
  %i.y = zext i1 %i.x to i32
  %.024.i = add nsw i32 %i.m, %i.y
  %i.z = zext i1 %i.x to i64
  %.023.i = lshr i64 %i.w, %i.z
  br label %round_to_d.exit

round_to_d.exit:                                  ; preds = %bb.a, %mpb_get_u64.exit.i
  %.125.i = phi i32 [ %.024.i, %mpb_get_u64.exit.i ], [ 0, %bb.a ]
  %.1.i = phi i64 [ %.023.i, %mpb_get_u64.exit.i ], [ 0, %bb.a ]
  store i32 %.125.i, ptr %0, align 4, !tbaa !18
  ret i64 %.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @output_digits(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 3 uses
  %i.d = xor i32 %i.c, 31                         ; 2 uses
  %i.e = add nsw i32 %2, -2
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i32                      ; 4 uses
  %.not70 = icmp eq i32 %i.c, 31
  %.not = select i1 %i.b, i1 true, i1 %.not70
  br i1 %.not, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %i.j = lshr i32 2147483647, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = mul nuw nsw i32 %i.d, %i.i
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %.not5268 = icmp eq i32 %3, 0
  br i1 %.not5268, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.f ; 2 uses
  %i.o = icmp eq i32 %2, 10
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %limb_to_a.exit.us
  %.169.us = phi i32 [ %i.p, %limb_to_a.exit.us ], [ %3, %.lr.ph ] ; 2 uses
  %..i54.us = tail call noundef i32 @llvm.smin.i32(i32 %.169.us, i32 %i.i) ; 2 uses
  %i.p = sub nsw i32 %.169.us, %..i54.us          ; 3 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %.013.i55.us = add i32 %i.q, -1                 ; 2 uses
  %i.r = icmp sgt i32 %.013.i55.us, -1
  br i1 %i.r, label %.lr.ph.i56.us, label %mpb_renorm.exit.us

.lr.ph.i56.us:                                    ; preds = %.lr.ph.split.us
  %i.s = load i32, ptr %i.n, align 4, !tbaa !18
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = zext nneg i32 %.013.i55.us to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i56.us
  %indvars.iv.i57.us = phi i64 [ %i.u, %.lr.ph.i56.us ], [ %indvars.iv.next.i58.us, %bb.b ] ; 3 uses
  %.01214.i.us = phi i64 [ 0, %.lr.ph.i56.us ], [ %i.ac, %bb.b ]
  %i.v = shl nuw i64 %.01214.i.us, 32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = udiv i64 %i.z, %i.t
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !18
  %i.ac = urem i64 %i.z, %i.t                     ; 2 uses
  %indvars.iv.next.i58.us = add nsw i64 %indvars.iv.i57.us, -1
  %.not.i.us = icmp eq i64 %indvars.iv.i57.us, 0
  br i1 %.not.i.us, label %mp_div1.exit.us, label %bb.b, !llvm.loop !21

mp_div1.exit.us:                                  ; preds = %bb.b
  %i.ad = trunc nuw i64 %i.ac to i32              ; 3 uses
  %i.ae = icmp sgt i32 %i.q, 1
  br i1 %i.ae, label %.lr.ph.i59.us, label %mpb_renorm.exit.us

.lr.ph.i59.us:                                    ; preds = %mp_div1.exit.us, %bb.c
  %i.af = phi i32 [ %i.ak, %bb.c ], [ %i.q, %mp_div1.exit.us ] ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !18
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %mpb_renorm.exit.us

bb.c:                                             ; preds = %.lr.ph.i59.us
  %i.ak = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !18
  %i.al = icmp sgt i32 %i.af, 2
  br i1 %i.al, label %.lr.ph.i59.us, label %mpb_renorm.exit.us, !llvm.loop !4

mpb_renorm.exit.us:                               ; preds = %.lr.ph.i59.us, %bb.c, %mp_div1.exit.us, %.lr.ph.split.us
  %.012.lcssa.i64.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.ad, %mp_div1.exit.us ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph.i59.us ]
  %i.am = zext nneg i32 %i.p to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %.08.i.i.us = add i32 %..i54.us, -1             ; 2 uses
  %i.ao = icmp sgt i32 %.08.i.i.us, -1
  br i1 %i.ao, label %.lr.ph.preheader.i.i.us, label %limb_to_a.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %mpb_renorm.exit.us
  %i.ap = zext nneg i32 %.08.i.i.us to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %i.ap, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %.lr.ph.i.i.us ] ; 3 uses
  %.079.i.i.us = phi i32 [ %.012.lcssa.i64.us, %.lr.ph.preheader.i.i.us ], [ %i.ar, %.lr.ph.i.i.us ] ; 2 uses
  %i.aq = urem i32 %.079.i.i.us, 10
  %i.ar = udiv i32 %.079.i.i.us, 10
  %i.as = trunc nuw nsw i32 %i.aq to i8
  %i.at = or disjoint i8 %i.as, 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i.i.us
  store i8 %i.at, ptr %i.au, align 1, !tbaa !15
  %indvars.iv.next.i.i.us = add nsw i64 %indvars.iv.i.i.us, -1
  %.not.i.i.us = icmp eq i64 %indvars.iv.i.i.us, 0
  br i1 %.not.i.i.us, label %limb_to_a.exit.us, label %.lr.ph.i.i.us, !llvm.loop !22

limb_to_a.exit.us:                                ; preds = %.lr.ph.i.i.us, %mpb_renorm.exit.us
  %.not52.us = icmp eq i32 %i.p, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !23

bb.d:                                             ; preds = %.preheader66, %bb.f
  %.047 = phi i32 [ %i.av, %bb.f ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 3 uses
  %i.av = sub nsw i32 %.047, %..i                 ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.ay = icmp sgt i32 %..i, 0
  br i1 %i.ay, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.az = load i32, ptr %i.k, align 4, !tbaa !18
  %i.ba = zext nneg i32 %..i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.01416.i = phi i32 [ %i.az, %.lr.ph.i ], [ %i.bc, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bb = and i32 %.01416.i, %i.j                 ; 3 uses
end_hunk_0
