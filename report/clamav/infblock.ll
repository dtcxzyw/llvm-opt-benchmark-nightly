Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/infblock?download=true
inline.NumInlined: 17
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@nsis_inflate:bb.a
  %..i817 = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 %i.fm) ; 2 uses
  %i.fo = sub nuw i32 %i.fn, %..i817
  store i32 %i.fo, ptr %i.ah, align 8, !tbaa !20
  %i.fp = zext i32 %..i817 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr nonnull align 8 %i.ak, i64 %i.fp, i1 false)
  %i.fq = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fp ; 3 uses
  store ptr %i.fr, ptr %i.ai, align 8, !tbaa !21
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.fp ; 5 uses
  %i.ft = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.ab, label %inflate_flush.exit818

bb.ab:                                            ; preds = %.peel.next.i814
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fs
  br i1 %i.fw, label %bb.ac, label %.peel.next.i814, !llvm.loop !0

bb.ac:                                            ; preds = %bb.ab
  br label %.peel.next.i814.sink.split, !llvm.loop !0

inflate_flush.exit818:                            ; preds = %.peel.next.i814, %bb.z
  %.lcssa.i813 = phi ptr [ %i.fc, %bb.z ], [ %i.fs, %.peel.next.i814 ]
  store ptr %.lcssa.i813, ptr %i.s, align 8, !tbaa !17
  br label %.thread953

bb.ad:                                            ; preds = %.lr.ph1369.preheader
  %i.fx = add i32 %.sroa.265.0, -1                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 1 ; 3 uses
  %i.fz = load i8, ptr %.sroa.219199.0, align 1, !tbaa !19
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %i.ga, %i.bs
  %i.gc = or i64 %i.gb, %.sroa.5684.0             ; 3 uses
  %indvars.iv.next1702 = add nuw nsw i64 %i.bs, 8 ; 2 uses
  %i.gd = icmp ult i32 %.sroa.130.0, 8
  br i1 %i.gd, label %.lr.ph1369.1, label %._crit_edge1370

.lr.ph1369.1:                                     ; preds = %bb.ad
  %.not803.1 = icmp eq i32 %i.fx, 0
  br i1 %.not803.1, label %bb.x, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph1369.1
  %i.ge = add i32 %.sroa.265.0, -2
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 2
  %i.gg = load i8, ptr %i.fy, align 1, !tbaa !19
  %i.gh = zext i8 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, %indvars.iv.next1702
  %i.gj = or i64 %i.gi, %i.gc
  br label %._crit_edge1370

._crit_edge1370:                                  ; preds = %bb.ad, %bb.ae, %.preheader981
  %.sroa.265.2.lcssa = phi i32 [ %.sroa.265.0, %.preheader981 ], [ %i.fx, %bb.ad ], [ %i.ge, %bb.ae ]
  %.sroa.219199.2.lcssa = phi ptr [ %.sroa.219199.0, %.preheader981 ], [ %i.fy, %bb.ad ], [ %i.gf, %bb.ae ]
  %.sroa.5684.2.lcssa = phi i64 [ %.sroa.5684.0, %.preheader981 ], [ %i.gc, %bb.ad ], [ %i.gj, %bb.ae ]
  %i.gk = trunc i64 %.sroa.5684.2.lcssa to i32
  %i.gl = and i32 %i.gk, 65535                    ; 2 uses
  store i32 %i.gl, ptr %i.i, align 8, !tbaa !19
  %.not802 = icmp eq i32 %i.gl, 0
  br i1 %.not802, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge1370
  %i.gm = load i32, ptr %i.am, align 8, !tbaa !39
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1370, %bb.af
  %i.gn = phi i32 [ %i.gm, %bb.af ], [ 10, %._crit_edge1370 ]
  store i32 %i.gn, ptr %i.ag, align 8, !tbaa !35
  br label %.thread943.backedge

bb.ah:                                            ; preds = %.thread943
  %i.go = icmp eq i32 %.sroa.265.0, 0
  br i1 %i.go, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !33
  store i32 %.sroa.130.0, ptr %i.o, align 4, !tbaa !34
  store i32 0, ptr %i.k, align 8, !tbaa !32
  store ptr %.sroa.219199.0, ptr %0, align 8, !tbaa !31
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !16
  %i.gp = load ptr, ptr %i.s, align 8, !tbaa !17  ; 4 uses
  %.not.peel.i819 = icmp ugt ptr %i.gp, %.sroa.323276.0
  br i1 %.not.peel.i819, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gq = load ptr, ptr %i.aj, align 8, !tbaa !18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gr = phi ptr [ %i.gq, %bb.aj ], [ %.sroa.323276.0, %bb.ai ]
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = load i32, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %..peel.i820 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 %i.gv) ; 2 uses
  %i.gx = sub nuw i32 %i.gw, %..peel.i820
  store i32 %i.gx, ptr %i.ah, align 8, !tbaa !20
  %i.gy = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.gz = zext i32 %..peel.i820 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr align 1 %i.gp, i64 %i.gz, i1 false)
  %i.ha = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz ; 3 uses
  store ptr %i.hb, ptr %i.ai, align 8, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gz ; 5 uses
  %i.hd = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %bb.al, label %inflate_flush.exit826

bb.al:                                            ; preds = %bb.ak
  %i.hf = load ptr, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.hc
  br i1 %i.hg, label %.peel.next.i822.sink.split, label %.peel.next.i822.preheader

.peel.next.i822.sink.split:                       ; preds = %bb.al, %bb.an
  %.ph2385 = phi ptr [ %i.hr, %bb.an ], [ %i.hb, %bb.al ]
  %.ph2386 = phi ptr [ %i.hs, %bb.an ], [ %i.hc, %bb.al ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !16
  br label %.peel.next.i822.preheader

.peel.next.i822.preheader:                        ; preds = %bb.al, %.peel.next.i822.sink.split
  %.ph2428 = phi ptr [ %.ph2385, %.peel.next.i822.sink.split ], [ %i.hb, %bb.al ]
  %.ph2429 = phi ptr [ %.ph2386, %.peel.next.i822.sink.split ], [ %i.hc, %bb.al ]
  %.ph2430 = phi ptr [ %i.ak, %.peel.next.i822.sink.split ], [ %i.hf, %bb.al ]
  br label %.peel.next.i822

.peel.next.i822:                                  ; preds = %.peel.next.i822.preheader, %bb.am
  %i.hh = phi ptr [ %i.hr, %bb.am ], [ %.ph2428, %.peel.next.i822.preheader ]
  %i.hi = phi ptr [ %i.hs, %bb.am ], [ %.ph2429, %.peel.next.i822.preheader ]
  %i.hj = phi ptr [ %i.hv, %bb.am ], [ %.ph2430, %.peel.next.i822.preheader ] ; 2 uses
  %.not.i823 = icmp ugt ptr %i.ak, %i.hj
  %spec.select.i824 = select i1 %.not.i823, ptr %i.hi, ptr %i.hj
  %i.hk = ptrtoint ptr %spec.select.i824 to i64
  %i.hl = sub i64 %i.hk, %i.al
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = load i32, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %..i825 = tail call i32 @llvm.umin.i32(i32 %i.hn, i32 %i.hm) ; 2 uses
  %i.ho = sub nuw i32 %i.hn, %..i825
  store i32 %i.ho, ptr %i.ah, align 8, !tbaa !20
  %i.hp = zext i32 %..i825 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr nonnull align 8 %i.ak, i64 %i.hp, i1 false)
  %i.hq = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp ; 3 uses
  store ptr %i.hr, ptr %i.ai, align 8, !tbaa !21
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.hp ; 5 uses
  %i.ht = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %bb.am, label %inflate_flush.exit826

bb.am:                                            ; preds = %.peel.next.i822
  %i.hv = load ptr, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hs
  br i1 %i.hw, label %bb.an, label %.peel.next.i822, !llvm.loop !0

bb.an:                                            ; preds = %bb.am
  br label %.peel.next.i822.sink.split, !llvm.loop !0

inflate_flush.exit826:                            ; preds = %.peel.next.i822, %bb.ak
  %.lcssa.i821 = phi ptr [ %i.hc, %bb.ak ], [ %i.hs, %.peel.next.i822 ]
  store ptr %.lcssa.i821, ptr %i.s, align 8, !tbaa !17
  br label %.thread953

bb.ao:                                            ; preds = %bb.ah
  %i.hx = icmp eq i32 %.sroa.407.0, 0
  br i1 %i.hx, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.hy = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.hz = icmp eq ptr %.sroa.323276.0, %i.hy
  br i1 %i.hz, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ia = load ptr, ptr %i.s, align 8, !tbaa !17  ; 3 uses
  %.not799 = icmp eq ptr %i.ia, %i.ak
  br i1 %.not799, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = icmp ult ptr %i.ak, %i.ia
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = add i64 %i.ic, %i.an
  %i.ie = ptrtoint ptr %.sroa.323276.0 to i64
  %i.if = sub i64 %i.ie, %i.al
  %i.ig = select i1 %i.ib, i64 %i.id, i64 %i.if
  %i.ih = trunc i64 %i.ig to i32                  ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %.thread, label %bb.aw

.thread:                                          ; preds = %bb.ap, %bb.aq, %bb.ar
  %.sroa.323276.1941 = phi ptr [ %i.ak, %bb.ar ], [ %.sroa.323276.0, %bb.aq ], [ %.sroa.323276.0, %bb.ap ]
  store ptr %.sroa.323276.1941, ptr %i.q, align 8, !tbaa !16
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  %i.ij = load ptr, ptr %i.q, align 8, !tbaa !16  ; 5 uses
  %i.ik = load ptr, ptr %i.s, align 8, !tbaa !17  ; 5 uses
  %i.il = icmp ult ptr %i.ij, %i.ik
  br i1 %i.il, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.thread
  %i.im = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = xor i64 %i.in, -1
  %i.ip = add i64 %i.im, %i.io
  %.pre1725 = load ptr, ptr %i.aj, align 8, !tbaa !18
  br label %bb.au

bb.at:                                            ; preds = %.thread
  %i.iq = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ij to i64
  %i.it = sub i64 %i.ir, %i.is
  %.pre1726 = ptrtoint ptr %i.ik to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pre-phi = phi i64 [ %.pre1726, %bb.at ], [ %i.im, %bb.as ]
  %i.iu = phi ptr [ %i.iq, %bb.at ], [ %.pre1725, %bb.as ] ; 2 uses
  %i.iv = phi i64 [ %i.it, %bb.at ], [ %i.ip, %bb.as ]
  %.pre-phi1728 = ptrtoint ptr %i.iu to i64
  %i.iw = icmp ne ptr %i.ij, %i.iu
  %.not800 = icmp eq ptr %i.ik, %i.ak
  %or.cond1505 = select i1 %i.iw, i1 true, i1 %.not800 ; 2 uses
  %i.ix = icmp ult ptr %i.ak, %i.ik
  %i.iy = add i64 %.pre-phi, %i.an
  %i.iz = sub i64 %.pre-phi1728, %i.al
  %i.ja = select i1 %i.ix, i64 %i.iy, i64 %i.iz
  %.sroa.407.2.in = select i1 %or.cond1505, i64 %i.iv, i64 %i.ja
  %.sroa.323276.2 = select i1 %or.cond1505, ptr %i.ij, ptr %i.ak ; 2 uses
  %.sroa.407.2 = trunc i64 %.sroa.407.2.in to i32 ; 2 uses
  %i.jb = icmp eq i32 %.sroa.407.2, 0
  br i1 %i.jb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i64 %.sroa.5684.0, ptr %i.m, align 8, !tbaa !33
  store i32 %.sroa.130.0, ptr %i.o, align 4, !tbaa !34
  store i32 %.sroa.265.0, ptr %i.k, align 8, !tbaa !32
  store ptr %.sroa.219199.0, ptr %0, align 8, !tbaa !31
  store ptr %.sroa.323276.2, ptr %i.q, align 8, !tbaa !16
  tail call fastcc void @inflate_flush(ptr noundef nonnull %0)
  br label %.thread953

bb.aw:                                            ; preds = %bb.ar, %bb.au, %bb.ao
  %.sroa.407.3 = phi i32 [ %.sroa.407.2, %bb.au ], [ %i.ih, %bb.ar ], [ %.sroa.407.0, %bb.ao ] ; 2 uses
  %.sroa.323276.3 = phi ptr [ %.sroa.323276.2, %bb.au ], [ %i.ak, %bb.ar ], [ %.sroa.323276.0, %bb.ao ] ; 2 uses
  %i.jc = tail call i32 @llvm.umin.i32(i32 %.sroa.407.3, i32 %.sroa.265.0)
  %i.jd = load i32, ptr %i.i, align 8, !tbaa !19
  %. = tail call i32 @llvm.umin.i32(i32 %i.jd, i32 %i.jc) ; 5 uses
  %i.je = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.323276.3, ptr align 1 %.sroa.219199.0, i64 %i.je, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 %i.je ; 2 uses
  %i.jg = sub nuw i32 %.sroa.265.0, %.            ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.323276.3, i64 %i.je ; 2 uses
  %i.ji = sub nuw i32 %.sroa.407.3, %.            ; 2 uses
  %i.jj = load i32, ptr %i.i, align 8, !tbaa !19  ; 2 uses
  %i.jk = sub i32 %i.jj, %.
  store i32 %i.jk, ptr %i.i, align 8, !tbaa !19
  %.not801 = icmp eq i32 %i.jj, %.
  br i1 %.not801, label %bb.ax, label %.thread943.backedge

.thread943.backedge:                              ; preds = %bb.aw, %bb.ax, %bb.bo, %bb.fl, %bb.k, %bb.v, %bb.w, %bb.fb, %._crit_edge1218, %bb.ea, %bb.dy, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.ag
  %.sroa.407.0.be = phi i32 [ %i.are, %bb.fl ], [ %.sroa.407.0, %bb.k ], [ %.sroa.407.0, %bb.v ], [ %.sroa.407.0, %bb.w ], [ %.sroa.407.0, %bb.ag ], [ %i.apm, %bb.fb ], [ %.sroa.407.0, %bb.df ], [ %.sroa.407.0, %bb.dh ], [ %.sroa.407.0, %bb.dj ], [ %.sroa.407.0, %bb.dl ], [ %.sroa.407.0, %bb.bo ], [ %.sroa.407.0, %bb.dy ], [ %.sroa.407.0, %bb.ea ], [ %.sroa.407.5.lcssa, %._crit_edge1218 ], [ %i.ji, %bb.ax ], [ %i.ji, %bb.aw ]
  %.sroa.323276.0.be = phi ptr [ %i.ara, %bb.fl ], [ %.sroa.323276.0, %bb.k ], [ %.sroa.323276.0, %bb.v ], [ %.sroa.323276.0, %bb.w ], [ %.sroa.323276.0, %bb.ag ], [ %i.apl, %bb.fb ], [ %.sroa.323276.0, %bb.df ], [ %.sroa.323276.0, %bb.dh ], [ %.sroa.323276.0, %bb.dj ], [ %.sroa.323276.0, %bb.dl ], [ %.sroa.323276.0, %bb.bo ], [ %.sroa.323276.0, %bb.dy ], [ %.sroa.323276.0, %bb.ea ], [ %.sroa.323276.5.lcssa, %._crit_edge1218 ], [ %i.jh, %bb.ax ], [ %i.jh, %bb.aw ]
  %.sroa.265.0.be = phi i32 [ %.sroa.265.22, %bb.fl ], [ %.sroa.265.1.lcssa, %bb.k ], [ %.sroa.265.1.lcssa, %bb.v ], [ %.sroa.265.1.lcssa, %bb.w ], [ %.sroa.265.2.lcssa, %bb.ag ], [ %.sroa.265.0, %bb.fb ], [ %.sroa.265.16.lcssa, %bb.df ], [ %.sroa.265.16.lcssa, %bb.dh ], [ %.sroa.265.16.lcssa, %bb.dj ], [ %.sroa.265.16.lcssa, %bb.dl ], [ %.sroa.265.6.lcssa, %bb.bo ], [ %.sroa.265.19.lcssa, %bb.dy ], [ %.sroa.265.19.lcssa, %bb.ea ], [ %.sroa.265.21, %._crit_edge1218 ], [ %i.jg, %bb.ax ], [ %i.jg, %bb.aw ]
  %.sroa.219199.0.be = phi ptr [ %.sroa.219199.22, %bb.fl ], [ %.sroa.219199.1.lcssa, %bb.k ], [ %.sroa.219199.1.lcssa, %bb.v ], [ %.sroa.219199.1.lcssa, %bb.w ], [ %.sroa.219199.2.lcssa, %bb.ag ], [ %.sroa.219199.0, %bb.fb ], [ %.sroa.219199.16.lcssa, %bb.df ], [ %.sroa.219199.16.lcssa, %bb.dh ], [ %.sroa.219199.16.lcssa, %bb.dj ], [ %.sroa.219199.16.lcssa, %bb.dl ], [ %.sroa.219199.6.lcssa, %bb.bo ], [ %.sroa.219199.19.lcssa, %bb.dy ], [ %.sroa.219199.19.lcssa, %bb.ea ], [ %.sroa.219199.21, %._crit_edge1218 ], [ %i.jf, %bb.ax ], [ %i.jf, %bb.aw ]
  %.sroa.130.0.be = phi i32 [ %.sroa.130.21, %bb.fl ], [ %i.du, %bb.k ], [ %i.dm, %bb.v ], [ %i.dm, %bb.w ], [ 0, %bb.ag ], [ %.sroa.130.0, %bb.fb ], [ %i.aay, %bb.df ], [ %i.aay, %bb.dh ], [ %i.aay, %bb.dj ], [ %i.aay, %bb.dl ], [ %.sroa.130.5.lcssa, %bb.bo ], [ %i.agi, %bb.dy ], [ %i.agi, %bb.ea ], [ %.sroa.130.20, %._crit_edge1218 ], [ %.sroa.130.0, %bb.ax ], [ %.sroa.130.0, %bb.aw ]
  %.sroa.5684.0.be = phi i64 [ %.sroa.5684.0, %bb.fl ], [ %i.dt, %bb.k ], [ %i.dl, %bb.v ], [ %i.dl, %bb.w ], [ 0, %bb.ag ], [ %.sroa.5684.0, %bb.fb ], [ %i.aax, %bb.df ], [ %i.aax, %bb.dh ], [ %i.aax, %bb.dj ], [ %i.aax, %bb.dl ], [ %.sroa.5684.5.lcssa, %bb.bo ], [ %i.agh, %bb.dy ], [ %i.agh, %bb.ea ], [ %.sroa.5684.20, %._crit_edge1218 ], [ %.sroa.5684.0, %bb.ax ], [ %.sroa.5684.0, %bb.aw ]
  br label %.thread943

bb.ax:                                            ; preds = %bb.aw
  %i.jl = load i32, ptr %i.am, align 8, !tbaa !39
  store i32 %i.jl, ptr %i.ag, align 8, !tbaa !35
  br label %.thread943.backedge

bb.ay:                                            ; preds = %.lr.ph1247.1, %.lr.ph1247.preheader
  %indvars.iv.lcssa = phi i64 [ %i.bq, %.lr.ph1247.preheader ], [ %indvars.iv.next, %.lr.ph1247.1 ]
  %.sroa.5684.31246.lcssa = phi i64 [ %.sroa.5684.0, %.lr.ph1247.preheader ], [ %i.la, %.lr.ph1247.1 ]
  %.sroa.219199.41244.lcssa = phi ptr [ %.sroa.219199.0, %.lr.ph1247.preheader ], [ %i.kw, %.lr.ph1247.1 ]
  %i.jm = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  store i64 %.sroa.5684.31246.lcssa, ptr %i.m, align 8, !tbaa !33
  store i32 %i.jm, ptr %i.o, align 4, !tbaa !34
  store i32 0, ptr %i.k, align 8, !tbaa !32
  store ptr %.sroa.219199.41244.lcssa, ptr %0, align 8, !tbaa !31
  store ptr %.sroa.323276.0, ptr %i.q, align 8, !tbaa !16
  %i.jn = load ptr, ptr %i.s, align 8, !tbaa !17  ; 4 uses
  %.not.peel.i827 = icmp ugt ptr %i.jn, %.sroa.323276.0
  br i1 %.not.peel.i827, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jo = load ptr, ptr %i.aj, align 8, !tbaa !18
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.jp = phi ptr [ %i.jo, %bb.az ], [ %.sroa.323276.0, %bb.ay ]
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = ptrtoint ptr %i.jn to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = trunc i64 %i.js to i32
  %i.ju = load i32, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %..peel.i828 = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 %i.jt) ; 2 uses
  %i.jv = sub nuw i32 %i.ju, %..peel.i828
  store i32 %i.jv, ptr %i.ah, align 8, !tbaa !20
  %i.jw = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.jx = zext i32 %..peel.i828 to i64            ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr align 1 %i.jn, i64 %i.jx, i1 false)
  %i.jy = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jx ; 3 uses
  store ptr %i.jz, ptr %i.ai, align 8, !tbaa !21
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jx ; 5 uses
  %i.kb = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %bb.bb, label %inflate_flush.exit834

bb.bb:                                            ; preds = %bb.ba
  %i.kd = load ptr, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.ka
  br i1 %i.ke, label %.peel.next.i830.sink.split, label %.peel.next.i830.preheader

.peel.next.i830.sink.split:                       ; preds = %bb.bb, %bb.bd
  %.ph2387 = phi ptr [ %i.kp, %bb.bd ], [ %i.jz, %bb.bb ]
  %.ph2388 = phi ptr [ %i.kq, %bb.bd ], [ %i.ka, %bb.bb ]
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !16
  br label %.peel.next.i830.preheader

.peel.next.i830.preheader:                        ; preds = %bb.bb, %.peel.next.i830.sink.split
  %.ph2435 = phi ptr [ %.ph2387, %.peel.next.i830.sink.split ], [ %i.jz, %bb.bb ]
  %.ph2436 = phi ptr [ %.ph2388, %.peel.next.i830.sink.split ], [ %i.ka, %bb.bb ]
  %.ph2437 = phi ptr [ %i.ak, %.peel.next.i830.sink.split ], [ %i.kd, %bb.bb ]
  br label %.peel.next.i830

.peel.next.i830:                                  ; preds = %.peel.next.i830.preheader, %bb.bc
  %i.kf = phi ptr [ %i.kp, %bb.bc ], [ %.ph2435, %.peel.next.i830.preheader ]
  %i.kg = phi ptr [ %i.kq, %bb.bc ], [ %.ph2436, %.peel.next.i830.preheader ]
  %i.kh = phi ptr [ %i.kt, %bb.bc ], [ %.ph2437, %.peel.next.i830.preheader ] ; 2 uses
  %.not.i831 = icmp ugt ptr %i.ak, %i.kh
  %spec.select.i832 = select i1 %.not.i831, ptr %i.kg, ptr %i.kh
  %i.ki = ptrtoint ptr %spec.select.i832 to i64
  %i.kj = sub i64 %i.ki, %i.al
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = load i32, ptr %i.ah, align 8, !tbaa !20 ; 2 uses
  %..i833 = tail call i32 @llvm.umin.i32(i32 %i.kl, i32 %i.kk) ; 2 uses
  %i.km = sub nuw i32 %i.kl, %..i833
  store i32 %i.km, ptr %i.ah, align 8, !tbaa !20
  %i.kn = zext i32 %..i833 to i64                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kf, ptr nonnull align 8 %i.ak, i64 %i.kn, i1 false)
  %i.ko = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kn ; 3 uses
  store ptr %i.kp, ptr %i.ai, align 8, !tbaa !21
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.kn ; 5 uses
  %i.kr = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %bb.bc, label %inflate_flush.exit834

bb.bc:                                            ; preds = %.peel.next.i830
  %i.kt = load ptr, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.kq
  br i1 %i.ku, label %bb.bd, label %.peel.next.i830, !llvm.loop !0

bb.bd:                                            ; preds = %bb.bc
  br label %.peel.next.i830.sink.split, !llvm.loop !0

inflate_flush.exit834:                            ; preds = %.peel.next.i830, %bb.ba
  %.lcssa.i829 = phi ptr [ %i.ka, %bb.ba ], [ %i.kq, %.peel.next.i830 ]
  store ptr %.lcssa.i829, ptr %i.s, align 8, !tbaa !17
  br label %.thread953

bb.be:                                            ; preds = %.lr.ph1247.preheader
  %i.kv = add i32 %.sroa.265.0, -1                ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 1 ; 3 uses
  %i.kx = load i8, ptr %.sroa.219199.0, align 1, !tbaa !19
  %i.ky = zext i8 %i.kx to i64
  %i.kz = shl nuw nsw i64 %i.ky, %i.bq
  %i.la = or i64 %i.kz, %.sroa.5684.0             ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %i.bq, 8     ; 3 uses
  %i.lb = icmp ult i32 %.sroa.130.0, 6
  br i1 %i.lb, label %.lr.ph1247.1, label %._crit_edge1248.loopexit

.lr.ph1247.1:                                     ; preds = %bb.be
  %.not798.1 = icmp eq i32 %i.kv, 0
  br i1 %.not798.1, label %bb.ay, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph1247.1
  %i.lc = add i32 %.sroa.265.0, -2
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.219199.0, i64 2
  %i.le = load i8, ptr %i.kw, align 1, !tbaa !19
  %i.lf = zext i8 %i.le to i64
  %i.lg = shl nuw nsw i64 %i.lf, %indvars.iv.next
  %i.lh = or i64 %i.lg, %i.la
  %indvars.iv.next.1 = or disjoint i64 %i.bq, 16
  br label %._crit_edge1248.loopexit

._crit_edge1248.loopexit:                         ; preds = %bb.bf, %bb.be
  %.lcssa2578 = phi i32 [ %i.kv, %bb.be ], [ %i.lc, %bb.bf ]
  %.lcssa2577 = phi ptr [ %i.kw, %bb.be ], [ %i.ld, %bb.bf ]
  %.lcssa2576 = phi i64 [ %i.la, %bb.be ], [ %i.lh, %bb.bf ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.be ], [ %indvars.iv.next.1, %bb.bf ]
  %i.li = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge1248

._crit_edge1248:                                  ; preds = %._crit_edge1248.loopexit, %.preheader983
  %.sroa.265.4.lcssa = phi i32 [ %.sroa.265.0, %.preheader983 ], [ %.lcssa2578, %._crit_edge1248.loopexit ] ; 2 uses
  %.sroa.219199.4.lcssa = phi ptr [ %.sroa.219199.0, %.preheader983 ], [ %.lcssa2577, %._crit_edge1248.loopexit ] ; 2 uses
  %.sroa.130.3.lcssa = phi i32 [ %.sroa.130.0, %.preheader983 ], [ %i.li, %._crit_edge1248.loopexit ] ; 2 uses
  %.sroa.5684.3.lcssa = phi i64 [ %.sroa.5684.0, %.preheader983 ], [ %.lcssa2576, %._crit_edge1248.loopexit ] ; 3 uses
  %i.lj = trunc i64 %.sroa.5684.3.lcssa to i32    ; 3 uses
  %i.lk = and i32 %i.lj, 16383
  store i32 %i.lk, ptr %i.i, align 8, !tbaa !19
  %i.ll = and i32 %i.lj, 30
  %i.lm = icmp eq i32 %i.ll, 30
  %i.ln = and i32 %i.lj, 960
  %i.lo = icmp eq i32 %i.ln, 960
  %or.cond808 = or i1 %i.lm, %i.lo
  br i1 %or.cond808, label %bb.bg, label %.split1302.thread

bb.bg:                                            ; preds = %._crit_edge1248
  store i32 17, ptr %i.ag, align 8, !tbaa !35
  store i64 %.sroa.5684.3.lcssa, ptr %i.m, align 8, !tbaa !33
  store i32 %.sroa.130.3.lcssa, ptr %i.o, align 4, !tbaa !34
  store i32 %.sroa.265.4.lcssa, ptr %i.k, align 8, !tbaa !32
  store ptr %.sroa.219199.4.lcssa, ptr %0, align 8, !tbaa !31
end_hunk_0
