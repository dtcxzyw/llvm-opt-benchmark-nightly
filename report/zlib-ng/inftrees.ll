Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/inftrees?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@zng_inflate_table:.preheader236
bb.z:                                             ; preds = %bb.y
  %i.ei = shl nuw nsw i32 %i.eg, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !16 ; 2 uses
  %i.el = zext i16 %i.ek to i32
  %i.em = sub nsw i32 %i.ei, %i.el                ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = shl nuw nsw i32 %i.em, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eq = load i16, ptr %i.ep, align 8, !tbaa !16 ; 2 uses
  %i.er = zext i16 %i.eq to i32
  %i.es = sub nsw i32 %i.eo, %i.er                ; 2 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = shl nuw nsw i32 %i.es, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !16 ; 2 uses
  %i.ex = zext i16 %i.ew to i32
  %i.ey = sub nsw i32 %i.eu, %i.ex                ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = shl nuw nsw i32 %i.ey, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.fc = load i16, ptr %i.fb, align 4, !tbaa !16 ; 2 uses
  %i.fd = zext i16 %i.fc to i32
  %i.fe = sub nsw i32 %i.fa, %i.fd                ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = shl nuw nsw i32 %i.fe, 1                ; 2 uses
  %i.fh = zext i16 %i.ca to i32                   ; 2 uses
  %i.fi = icmp samesign ult i32 %i.fg, %i.fh
  br i1 %i.fi, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not233 = icmp ne i32 %i.fg, %i.fh
  %i.fj = icmp eq i32 %0, 0
  %or.cond = or i1 %i.fj, %i.bz
  %or.cond340 = and i1 %.not233, %or.cond
  br i1 %or.cond340, label %.loopexit, label %.preheader234

.preheader234:                                    ; preds = %bb.ae
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.fk, align 2, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.cc, ptr %i.fl, align 4, !tbaa !16
  %i.fm = add i16 %i.ci, %i.cc                    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !16
  %i.fo = add i16 %i.co, %i.fm                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.fo, ptr %i.fp, align 8, !tbaa !16
  %i.fq = add i16 %i.cu, %i.fo                    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !16
  %i.fs = add i16 %i.da, %i.fq                    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.fs, ptr %i.ft, align 4, !tbaa !16
  %i.fu = add i16 %i.dg, %i.fs                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !16
  %i.fw = add i16 %i.dm, %i.fu                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.fw, ptr %i.fx, align 16, !tbaa !16
  %i.fy = add i16 %i.ds, %i.fw                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !16
  %i.ga = add i16 %i.dy, %i.fy                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.ga, ptr %i.gb, align 4, !tbaa !16
  %i.gc = add i16 %i.ee, %i.ga                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !16
  %i.ge = add i16 %i.ek, %i.gc                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.ge, ptr %i.gf, align 8, !tbaa !16
  %i.gg = add i16 %i.eq, %i.ge                    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !16
  %i.gi = add i16 %i.ew, %i.gg                    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.gi, ptr %i.gj, align 4, !tbaa !16
  %i.gk = add i16 %i.fc, %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !16
  br i1 %.not266, label %._crit_edge257, label %.lr.ph256.preheader

.lr.ph256.preheader:                              ; preds = %.preheader234
  %wide.trip.count295 = zext i32 %2 to i64        ; 2 uses
  %xtraiter357 = and i64 %wide.trip.count295, 1
  %i.gm = icmp eq i32 %2, 1
  br i1 %i.gm, label %.lr.ph256.epil.preheader, label %.lr.ph256.preheader.new

.lr.ph256.preheader.new:                          ; preds = %.lr.ph256.preheader
  %unroll_iter361 = and i64 %wide.trip.count295, 4294967294
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.ah, %.lr.ph256.preheader.new
  %indvars.iv292 = phi i64 [ 0, %.lr.ph256.preheader.new ], [ %indvars.iv.next293.1, %bb.ah ] ; 4 uses
  %niter362 = phi i64 [ 0, %.lr.ph256.preheader.new ], [ %niter362.next.1, %bb.ah ]
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv292
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !16 ; 2 uses
  %.not222 = icmp eq i16 %i.go, 0
  br i1 %.not222, label %.lr.ph256.1, label %bb.af

bb.af:                                            ; preds = %.lr.ph256
  %i.gp = trunc i64 %indvars.iv292 to i16
  %i.gq = zext i16 %i.go to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gq ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !16 ; 2 uses
  %i.gt = add i16 %i.gs, 1
  store i16 %i.gt, ptr %i.gr, align 2, !tbaa !16
  %i.gu = zext i16 %i.gs to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gu
  store i16 %i.gp, ptr %i.gv, align 2, !tbaa !16
  br label %.lr.ph256.1

.lr.ph256.1:                                      ; preds = %.lr.ph256, %bb.af
  %indvars.iv.next293 = or disjoint i64 %indvars.iv292, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next293
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !16 ; 2 uses
  %.not222.1 = icmp eq i16 %i.gx, 0
  br i1 %.not222.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph256.1
  %i.gy = trunc i64 %indvars.iv.next293 to i16
  %i.gz = zext i16 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gz ; 2 uses
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !16 ; 2 uses
  %i.hc = add i16 %i.hb, 1
  store i16 %i.hc, ptr %i.ha, align 2, !tbaa !16
  %i.hd = zext i16 %i.hb to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hd
  store i16 %i.gy, ptr %i.he, align 2, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph256.1
  %indvars.iv.next293.1 = add nuw nsw i64 %indvars.iv292, 2 ; 2 uses
  %niter362.next.1 = add i64 %niter362, 2         ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %._crit_edge257.loopexit.unr-lcssa, label %.lr.ph256, !llvm.loop !11

._crit_edge257.loopexit.unr-lcssa:                ; preds = %bb.ah
  %lcmp.mod359.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod359.not, label %._crit_edge257, label %.lr.ph256.epil.preheader

.lr.ph256.epil.preheader:                         ; preds = %._crit_edge257.loopexit.unr-lcssa, %.lr.ph256.preheader
  %indvars.iv292.epil.init = phi i64 [ 0, %.lr.ph256.preheader ], [ %indvars.iv.next293.1, %._crit_edge257.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod360 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod360)
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv292.epil.init
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !16 ; 2 uses
  %.not222.epil = icmp eq i16 %i.hg, 0
  br i1 %.not222.epil, label %._crit_edge257, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph256.epil.preheader
  %i.hh = trunc i64 %indvars.iv292.epil.init to i16
  %i.hi = zext i16 %i.hg to i64
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.hi ; 2 uses
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !16 ; 2 uses
  %i.hl = add i16 %i.hk, 1
  store i16 %i.hl, ptr %i.hj, align 2, !tbaa !16
  %i.hm = zext i16 %i.hk to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.hm
  store i16 %i.hh, ptr %i.hn, align 2, !tbaa !16
  br label %._crit_edge257

._crit_edge257:                                   ; preds = %._crit_edge257.loopexit.unr-lcssa, %bb.ai, %.lr.ph256.epil.preheader, %.preheader234
  switch i32 %0, label %.thread225 [
    i32 0, label %.preheader
    i32 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %._crit_edge257
  %i.ho = icmp ugt i32 %i.by, 10
  br i1 %i.ho, label %.loopexit, label %.preheader

.thread225:                                       ; preds = %._crit_edge257
  %i.hp = icmp eq i32 %0, 2                       ; 2 uses
  %i.hq = icmp ugt i32 %i.by, 9
  %or.cond5 = select i1 %i.hp, i1 %i.hq, i1 false
  br i1 %or.cond5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.aj, %._crit_edge257, %.thread225
  %i.hr = phi i1 [ %i.hp, %.thread225 ], [ false, %._crit_edge257 ], [ false, %bb.aj ]
  %.0180230333 = phi ptr [ @zng_inflate_table.dbase, %.thread225 ], [ %5, %._crit_edge257 ], [ @zng_inflate_table.lbase, %bb.aj ]
  %.0179231332 = phi ptr [ @zng_inflate_table.dext, %.thread225 ], [ %5, %._crit_edge257 ], [ @zng_inflate_table.lext, %bb.aj ]
  %.0232331 = phi i32 [ 0, %.thread225 ], [ 20, %._crit_edge257 ], [ 257, %bb.aj ] ; 3 uses
  %i.hs = phi i1 [ false, %.thread225 ], [ false, %._crit_edge257 ], [ true, %bb.aj ]
  %i.ht = shl nuw i32 1, %i.by                    ; 2 uses
  %i.hu = add i32 %i.ht, -1
  %i.hv = load ptr, ptr %3, align 8, !tbaa !21
  %i.hw = trunc i32 %i.by to i8
  br label %.outer

.outer:                                           ; preds = %bb.ay, %.preheader
  %.3.ph = phi i32 [ %.4, %bb.ay ], [ %.0198.lcssa, %.preheader ]
  %.2201.ph = phi i32 [ %i.ix, %bb.ay ], [ 0, %.preheader ]
  %.0194.ph = phi i32 [ %.1195.lcssa, %bb.ay ], [ %i.by, %.preheader ]
  %.0192.ph = phi i32 [ %spec.select, %bb.ay ], [ 0, %.preheader ] ; 4 uses
  %.0188.ph = phi i32 [ %i.kf, %bb.ay ], [ %i.ht, %.preheader ] ; 2 uses
  %.0186.ph = phi i32 [ %.1187, %bb.ay ], [ 0, %.preheader ]
  %.0182.ph = phi i32 [ %i.jm, %bb.ay ], [ -1, %.preheader ]
  %.0181.ph = phi ptr [ %i.jp, %bb.ay ], [ %i.hv, %.preheader ] ; 3 uses
  %i.hx = shl nuw i32 1, %.0194.ph                ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.backedge, %.outer
  %.3 = phi i32 [ %.3.ph, %.outer ], [ %.4, %.backedge ] ; 5 uses
  %.2201 = phi i32 [ %.2201.ph, %.outer ], [ %i.ix, %.backedge ] ; 2 uses
  %.0186 = phi i32 [ %.0186.ph, %.outer ], [ %.1187, %.backedge ] ; 3 uses
  %i.hy = sub i32 %.3, %.0192.ph                  ; 2 uses
  %i.hz = trunc i32 %i.hy to i8                   ; 2 uses
  %i.ia = zext i32 %.2201 to i64
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !16 ; 2 uses
  %i.id = zext i16 %i.ic to i32                   ; 3 uses
  %.not216 = icmp samesign ugt i32 %.0232331, %i.id
  br i1 %.not216, label %bb.am, label %bb.al, !prof !23

bb.al:                                            ; preds = %bb.ak
  %i.ie = sub nuw nsw i32 %i.id, %.0232331
  %i.if = zext nneg i32 %i.ie to i64              ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %.0179231332, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !16
  %i.ii = trunc i16 %i.ih to i8
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.0180230333, i64 %i.if
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !16
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %6 = add nuw nsw i32 %i.id, 1
  %7 = icmp samesign ult i32 %6, %.0232331        ; 2 uses
  %. = select i1 %7, i16 %i.ic, i16 0
  %.223 = select i1 %7, i8 0, i8 96
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.14.0 = phi i16 [ %i.ik, %bb.al ], [ %., %bb.am ]
  %.sroa.0.0 = phi i8 [ %i.ii, %bb.al ], [ %.223, %bb.am ]
  %.neg = shl nsw i32 -1, %i.hy
  %i.il = lshr i32 %.0186, %.0192.ph
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.0184 = phi i32 [ %i.hx, %bb.an ], [ %i.im, %bb.ao ]
  %i.im = add i32 %.0184, %.neg                   ; 3 uses
  %i.in = add i32 %i.im, %i.il
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0181.ph, i64 %i.io ; 3 uses
  store i8 %.sroa.0.0, ptr %i.ip, align 2, !tbaa !22
  %.sroa.11.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store i8 %i.hz, ptr %.sroa.11.0..sroa_idx23, align 1, !tbaa !22
  %.sroa.14.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ip, i64 2
  store i16 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx29, align 2, !tbaa !16
  %.not217 = icmp eq i32 %i.im, 0
  br i1 %.not217, label %bb.ap, label %bb.ao, !llvm.loop !12

bb.ap:                                            ; preds = %bb.ao
  %i.iq = add i32 %.3, -1
  %i.ir = shl nuw i32 1, %i.iq
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.0185 = phi i32 [ %i.ir, %bb.ap ], [ %i.it, %bb.aq ] ; 5 uses
  %i.is = and i32 %.0185, %.0186
  %.not218 = icmp eq i32 %i.is, 0
  %i.it = lshr i32 %.0185, 1
  br i1 %.not218, label %bb.ar, label %bb.aq, !llvm.loop !13

bb.ar:                                            ; preds = %bb.aq
  %.not219 = icmp eq i32 %.0185, 0
  %i.iu = add i32 %.0185, -1
  %i.iv = and i32 %i.iu, %.0186
  %i.iw = add i32 %i.iv, %.0185
  %.1187 = select i1 %.not219, i32 0, i32 %i.iw   ; 5 uses
  %i.ix = add i32 %.2201, 1                       ; 3 uses
  %i.iy = zext i32 %.3 to i64
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.iy ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !16
  %i.jb = add i16 %i.ja, -1                       ; 2 uses
  store i16 %i.jb, ptr %i.iz, align 2, !tbaa !16
  %i.jc = icmp eq i16 %i.jb, 0
  br i1 %i.jc, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.jd = icmp eq i32 %.3, %.0197245.lcssa324
  br i1 %i.jd, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.je = zext i32 %i.ix to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !16
  %i.jh = zext i16 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.jh
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !16
  %i.jk = zext i16 %i.jj to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %.4 = phi i32 [ %i.jk, %bb.at ], [ %.3, %bb.ar ] ; 6 uses
  %i.jl = icmp ugt i32 %.4, %i.by
  br i1 %i.jl, label %bb.av, label %.backedge

bb.av:                                            ; preds = %bb.au
  %i.jm = and i32 %.1187, %i.hu                   ; 3 uses
  %.not220 = icmp eq i32 %i.jm, %.0182.ph
  br i1 %.not220, label %.backedge, label %bb.aw

.backedge:                                        ; preds = %bb.av, %bb.au
  br label %bb.ak

bb.aw:                                            ; preds = %bb.av
  %i.jn = icmp eq i32 %.0192.ph, 0
  %spec.select = select i1 %i.jn, i32 %i.by, i32 %.0192.ph ; 4 uses
  %i.jo = zext i32 %i.hx to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.0181.ph, i64 %i.jo ; 2 uses
  %i.jq = sub i32 %.4, %spec.select               ; 3 uses
  %i.jr = shl nuw i32 1, %i.jq                    ; 2 uses
  %i.js = icmp ult i32 %.4, %.0197245.lcssa324
  br i1 %i.js, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %bb.aw
  %i.jt = sub i32 %.0197245.lcssa324, %spec.select
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.ax
  %i.ju = phi i32 [ %i.kd, %bb.ax ], [ %.4, %.lr.ph261.preheader ]
  %.1191259 = phi i32 [ %i.kc, %bb.ax ], [ %i.jr, %.lr.ph261.preheader ]
  %.1195258 = phi i32 [ %i.kb, %bb.ax ], [ %i.jq, %.lr.ph261.preheader ] ; 2 uses
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !16
  %i.jy = zext i16 %i.jx to i32
  %i.jz = sub nsw i32 %.1191259, %i.jy            ; 2 uses
  %i.ka = icmp slt i32 %i.jz, 1
  br i1 %i.ka, label %._crit_edge262.loopexit, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph261
  %i.kb = add i32 %.1195258, 1                    ; 2 uses
  %i.kc = shl nuw i32 %i.jz, 1
  %i.kd = add i32 %i.kb, %spec.select             ; 2 uses
  %i.ke = icmp ult i32 %i.kd, %.0197245.lcssa324
  br i1 %i.ke, label %.lr.ph261, label %._crit_edge262.loopexit, !llvm.loop !14

._crit_edge262.loopexit:                          ; preds = %.lr.ph261, %bb.ax
  %.1195.lcssa.ph = phi i32 [ %i.jt, %bb.ax ], [ %.1195258, %.lr.ph261 ] ; 2 uses
  %.pre297 = shl nuw i32 1, %.1195.lcssa.ph
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %._crit_edge262.loopexit, %bb.aw
  %.pre-phi = phi i32 [ %.pre297, %._crit_edge262.loopexit ], [ %i.jr, %bb.aw ]
  %.1195.lcssa = phi i32 [ %.1195.lcssa.ph, %._crit_edge262.loopexit ], [ %i.jq, %bb.aw ] ; 2 uses
  %i.kf = add i32 %.pre-phi, %.0188.ph            ; 3 uses
  %i.kg = icmp ugt i32 %i.kf, 1332
  %or.cond7 = select i1 %i.hs, i1 %i.kg, i1 false
  %i.kh = icmp ugt i32 %i.kf, 592
  %or.cond9 = select i1 %i.hr, i1 %i.kh, i1 false
  %or.cond224 = select i1 %or.cond7, i1 true, i1 %or.cond9
  br i1 %or.cond224, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge262
  %i.ki = trunc i32 %.1195.lcssa to i8
  %i.kj = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.kk = zext nneg i32 %i.jm to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kk ; 3 uses
  store i8 %i.ki, ptr %i.kl, align 2, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  store i8 %i.hw, ptr %i.km, align 1, !tbaa !26
  %i.kn = ptrtoint ptr %i.jp to i64
  %i.ko = ptrtoint ptr %i.kj to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = lshr exact i64 %i.kp, 2
  %i.kr = trunc i64 %i.kq to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  store i16 %i.kr, ptr %i.ks, align 2, !tbaa !27
  br label %.outer

bb.az:                                            ; preds = %bb.as
  %.not221 = icmp eq i32 %.1187, 0
  br i1 %.not221, label %bb.bb, label %bb.ba, !prof !28

bb.ba:                                            ; preds = %bb.az
  %i.kt = zext i32 %.1187 to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.0181.ph, i64 %i.kt ; 3 uses
  store i8 64, ptr %i.ku, align 2, !tbaa !22
  %.sroa.11.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  store i8 %i.hz, ptr %.sroa.11.0..sroa_idx25, align 1, !tbaa !22
  %.sroa.14.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx31, align 2, !tbaa !16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kv = load ptr, ptr %3, align 8, !tbaa !21
  %i.kw = zext i32 %.0188.ph to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.kw
  store ptr %i.kx, ptr %3, align 8, !tbaa !21
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.o, %bb.bb
  %.sink = phi i32 [ %i.by, %bb.bb ], [ 1, %bb.o ]
  store i32 %.sink, ptr %4, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge262, %.loopexit.sink.split, %bb.ae, %._crit_edge249, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.aj, %.thread225
  %.0205 = phi i32 [ -1, %bb.q ], [ 1, %bb.aj ], [ -1, %._crit_edge249 ], [ -1, %bb.ae ], [ 0, %.loopexit.sink.split ], [ 1, %.thread225 ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.ab ], [ -1, %bb.aa ], [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.r ], [ 1, %._crit_edge262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0205
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }
end_hunk_0
