Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_jpeg_data_reader?download=true
inline.NumInlined: 1890
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3jxl4jpeg12_GLOBAL__N_111ProcessScanEPKhmRKNSt3__16vectorINS0_17HuffmanTableEntryENS4_9allocatorIS6_EEEESB_PA64_tbPmPNS0_8JPEGDataE:bb.a

.critedge139.i:                                   ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 168
  call void @_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(120) %8) #18
  %i.dg = add i64 %i.m, %i.c
  %i.dh = load i64, ptr %6, align 8, !tbaa !13
  %.not135.i = icmp ne i64 %i.dg, %i.dh
  %spec.select168.i = zext i1 %.not135.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.f, %bb.e, %._crit_edge182.i, %bb.l, %.critedge139.i, %bb.k, %bb.j, %.critedge136.i
  %.sroa.0167.2.i = phi i32 [ 1, %._crit_edge182.i ], [ %spec.select168.i, %.critedge139.i ], [ 1, %.critedge136.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %._crit_edge.i ], [ 1, %._crit_edge.thread.i ] ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #17
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !100 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.loopexit.i
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %.pre.i, ptr %i.di, align 8, !tbaa !101
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !102
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %.pre.i to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.pre.i, i64 noundef %i.dn) #17
  br label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i.i

_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i.i: ; preds = %bb.q, %.loopexit.i, %bb.d
  %.sroa.0167.3214.i = phi i32 [ %.sroa.0167.2.i, %.loopexit.i ], [ %.sroa.0167.2.i, %bb.q ], [ 1, %bb.d ]
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !103 ; 4 uses
  %.not.i.i1.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i.i, label %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !104
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dp to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dv) #17
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit

_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit: ; preds = %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEED2B8nn180100Ev.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.dw = icmp eq i32 %.sroa.0167.3214.i, 0
  br i1 %i.dw, label %bb.s, label %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit.thread

bb.s:                                             ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 176
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !106 ; 14 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -120
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -104 ; 5 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !218
  %i.ec = icmp ugt i32 %i.eb, 1                   ; 2 uses
  %i.ed = load ptr, ptr %i.s, align 8, !tbaa !68  ; 3 uses
  %i.ee = load ptr, ptr %i.t, align 8, !tbaa !69  ; 2 uses
  %.not422582 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not422582, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ef = shl nsw <2 x i32> %i.em, splat (i32 3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %i.eg = phi <2 x i32> [ splat (i32 8), %bb.s ], [ %i.ef, %._crit_edge.loopexit ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ei = load <2 x i32>, ptr %i.eh, align 8, !tbaa !87 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.t

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %.sroa.0280.0583 = phi ptr [ %i.en, %.lr.ph ], [ %i.ed, %bb.s ] ; 2 uses
  %i.ej = phi <2 x i32> [ %i.em, %.lr.ph ], [ splat (i32 1), %bb.s ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0280.0583, i64 4
  %i.el = load <2 x i32>, ptr %i.ek, align 4, !tbaa !87
  %i.em = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ej, <2 x i32> %i.el) ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0280.0583, i64 48 ; 2 uses
  %.not422 = icmp eq ptr %i.en, %i.ee
  br i1 %.not422, label %._crit_edge.loopexit, label %.lr.ph

bb.t:                                             ; preds = %._crit_edge
  %i.eo = getelementptr inbounds i8, ptr %i.dy, i64 -100
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !220
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [48 x i8], ptr %i.ed, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load <2 x i32>, ptr %i.es, align 4, !tbaa !87
  %i.eu = mul nsw <2 x i32> %i.et, %i.ei
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.ev = phi <2 x i32> [ %i.ei, %._crit_edge ], [ %i.eu, %bb.t ]
  %i.ew = add nsw <2 x i32> %i.eg, splat (i32 -1)
  %i.ex = add <2 x i32> %i.ew, %i.ev
  %i.ey = sdiv <2 x i32> %i.ex, %i.eg             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.ez = load i64, ptr %6, align 8, !tbaa !13
  store ptr %0, ptr %9, align 8, !tbaa !108
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %1, ptr %i.fa, align 8, !tbaa !109
  call fastcc void @_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState5ResetEm(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 noundef %i.ez) #18
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !64
  br i1 %5, label %.thread349, label %.thread349.thread

.thread349:                                       ; preds = %bb.u
  %i.fd = getelementptr inbounds i8, ptr %i.dy, i64 -108
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !226 ; 5 uses
  %i.ff = getelementptr inbounds i8, ptr %i.dy, i64 -112
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !225
  %.fr = freeze i32 %i.fg
  %i.fh = icmp eq i32 %.fr, 0                     ; 4 uses
  %i.fi = load i32, ptr %i.dz, align 8, !tbaa !223 ; 4 uses
  %i.fj = getelementptr inbounds i8, ptr %i.dy, i64 -116
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !224 ; 4 uses
  %i.fl = shl nuw i32 1, %i.fe                    ; 5 uses
  %i.fm = load i32, ptr %i.ea, align 8, !tbaa !218 ; 3 uses
  %.not192591.not = icmp eq i32 %i.fm, 0
  br i1 %.not192591.not, label %.critedge196, label %.lr.ph593

.thread349.thread:                                ; preds = %bb.u
  %i.fn = load i32, ptr %i.ea, align 8, !tbaa !218 ; 2 uses
  %.not192591.not895 = icmp eq i32 %i.fn, 0
  br i1 %.not192591.not895, label %.preheader432, label %.lr.ph590.preheader

.lr.ph593:                                        ; preds = %.thread349
  %i.fo = add nuw i32 %i.fl, 65535
  %i.fp = shl i32 65535, %i.fe
  %spec.select = select i1 %i.fh, i32 %i.fp, i32 %i.fl ; 2 uses
  %.not587 = icmp sgt i32 %i.fi, %i.fk
  %i.fq = trunc i32 %spec.select to i16
  br i1 %.not587, label %.critedge196, label %.lr.ph590.preheader

.lr.ph590.preheader:                              ; preds = %.thread349.thread, %.lr.ph593
  %i.fr = phi i16 [ %i.fq, %.lr.ph593 ], [ -1, %.thread349.thread ]
  %i.fs = phi i32 [ %i.fl, %.lr.ph593 ], [ 1, %.thread349.thread ]
  %i.ft = phi i32 [ %i.fk, %.lr.ph593 ], [ 63, %.thread349.thread ] ; 2 uses
  %i.fu = phi i1 [ %i.fh, %.lr.ph593 ], [ true, %.thread349.thread ]
  %i.fv = phi i32 [ %i.fe, %.lr.ph593 ], [ 0, %.thread349.thread ]
  %i.fw = phi i32 [ %i.fi, %.lr.ph593 ], [ 0, %.thread349.thread ] ; 2 uses
  %i.fx = phi i32 [ %spec.select, %.lr.ph593 ], [ 65535, %.thread349.thread ]
  %i.fy = phi i32 [ %i.fo, %.lr.ph593 ], [ 65536, %.thread349.thread ]
  %i.fz = phi i32 [ %i.fm, %.lr.ph593 ], [ %i.fn, %.thread349.thread ] ; 2 uses
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.dy, i64 -100
  %i.gc = sext i32 %i.fw to i64
  %i.gd = add i32 %i.ft, 1
  br label %.lr.ph590

.lr.ph590:                                        ; preds = %.lr.ph590.preheader, %..critedge_crit_edge
  %.0184592 = phi i64 [ %i.go, %..critedge_crit_edge ], [ 0, %.lr.ph590.preheader ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.gb, i64 %.0184592
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !220
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [128 x i8], ptr %4, i64 %i.gg
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph590, %bb.w
  %indvars.iv = phi i64 [ %i.gc, %.lr.ph590 ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.gh, i64 %indvars.iv ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !110 ; 2 uses
  %i.gk = zext i16 %i.gj to i32                   ; 2 uses
  %i.gl = and i32 %i.fx, %i.gk
  %.not190 = icmp eq i32 %i.gl, 0
  %i.gm = and i32 %i.fy, %i.gk
  %.not191 = icmp eq i32 %i.gm, 0
  %or.cond426 = select i1 %.not190, i1 %.not191, i1 false
  br i1 %or.cond426, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.gn = or i16 %i.gj, %i.fr
  store i16 %i.gn, ptr %i.gi, align 2, !tbaa !110
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.gd, %lftr.wideiv
  br i1 %exitcond.not, label %..critedge_crit_edge, label %bb.v, !llvm.loop !186

..critedge_crit_edge:                             ; preds = %bb.w
  %i.go = add nuw nsw i64 %.0184592, 1            ; 2 uses
  %exitcond730.not = icmp eq i64 %i.go, %i.ga
  br i1 %exitcond730.not, label %.critedge196, label %.lr.ph590, !llvm.loop !187

.critedge196:                                     ; preds = %..critedge_crit_edge, %.lr.ph593, %.thread349
  %i.gp = phi i32 [ %i.fm, %.lr.ph593 ], [ 0, %.thread349 ], [ %i.fz, %..critedge_crit_edge ]
  %i.gq = phi i32 [ %i.fi, %.lr.ph593 ], [ %i.fi, %.thread349 ], [ %i.fw, %..critedge_crit_edge ]
  %i.gr = phi i32 [ %i.fe, %.lr.ph593 ], [ %i.fe, %.thread349 ], [ %i.fv, %..critedge_crit_edge ] ; 2 uses
  %i.gs = phi i1 [ %i.fh, %.lr.ph593 ], [ %i.fh, %.thread349 ], [ %i.fu, %..critedge_crit_edge ]
  %i.gt = phi i32 [ %i.fk, %.lr.ph593 ], [ %i.fk, %.thread349 ], [ %i.ft, %..critedge_crit_edge ]
  %i.gu = phi i32 [ %i.fl, %.lr.ph593 ], [ %i.fl, %.thread349 ], [ %i.fs, %..critedge_crit_edge ]
  %i.gv = icmp sgt i32 %i.gr, 10
  br i1 %i.gv, label %.loopexit, label %.preheader432

.preheader432:                                    ; preds = %.thread349.thread, %.critedge196
  %i.gw = phi i32 [ %i.gu, %.critedge196 ], [ 1, %.thread349.thread ] ; 5 uses
  %i.gx = phi i32 [ %i.gt, %.critedge196 ], [ 63, %.thread349.thread ] ; 8 uses
  %i.gy = phi i1 [ %i.gs, %.critedge196 ], [ true, %.thread349.thread ]
  %i.gz = phi i32 [ %i.gr, %.critedge196 ], [ 0, %.thread349.thread ] ; 4 uses
  %i.ha = phi i32 [ %i.gq, %.critedge196 ], [ 0, %.thread349.thread ] ; 4 uses
  %i.hb = phi i32 [ %i.gp, %.critedge196 ], [ 0, %.thread349.thread ] ; 3 uses
  %i.hc = extractelement <2 x i32> %i.ey, i64 1   ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.preheader430.lr.ph, label %._crit_edge641.thread

.preheader430.lr.ph:                              ; preds = %.preheader432
  %i.he = extractelement <2 x i32> %i.ey, i64 0   ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 0
  %i.hg = getelementptr inbounds i8, ptr %i.dy, i64 -100
  %i.hh = icmp sgt i32 %i.ha, 0                   ; 4 uses
  %i.hi = icmp eq i32 %i.ha, 0                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 27 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 27 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 33 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 22 uses
  %i.hn = sub nsw i32 0, %i.gw
  %i.ho = trunc i32 %i.gw to i16                  ; 4 uses
  %i.hp = add i32 %i.gx, 1
  %i.hq = getelementptr inbounds i8, ptr %i.dy, i64 -48 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.dy, i64 -40 ; 4 uses
  %i.hs = getelementptr inbounds i8, ptr %i.dy, i64 -32 ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.dy, i64 -24 ; 4 uses
  %i.hu = getelementptr inbounds i8, ptr %i.dy, i64 -16 ; 4 uses
  %i.hv = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 3 uses
  br i1 %i.hf, label %.preheader430.us, label %._crit_edge641.thread

.preheader430.us:                                 ; preds = %.preheader430.lr.ph, %._crit_edge631.us
  %.pre757.a = phi i32 [ %.pre759, %._crit_edge631.us ], [ %i.hb, %.preheader430.lr.ph ]
  %i.hw = phi i32 [ %i.afi, %._crit_edge631.us ], [ %i.hb, %.preheader430.lr.ph ]
  %i.hx = phi i32 [ %i.afj, %._crit_edge631.us ], [ %i.hb, %.preheader430.lr.ph ]
  %.0172640.us = phi i32 [ %.3.us, %._crit_edge631.us ], [ %i.fc, %.preheader430.lr.ph ]
  %.0177639.us = phi i32 [ %i.afl, %._crit_edge631.us ], [ 0, %.preheader430.lr.ph ] ; 3 uses
  %.0322638.us = phi i32 [ %.3325.us, %._crit_edge631.us ], [ 0, %.preheader430.lr.ph ]
  %.0328637.us = phi i32 [ %.4332.lcssa.us, %._crit_edge631.us ], [ -1, %.preheader430.lr.ph ]
  %.0337636.us = phi i32 [ %.2339.lcssa.us, %._crit_edge631.us ], [ 0, %.preheader430.lr.ph ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader430.us, %.thread397.us
  %.pre758 = phi i32 [ %.pre757.a, %.preheader430.us ], [ %.pre759, %.thread397.us ] ; 2 uses
  %i.hy = phi i32 [ %i.hw, %.preheader430.us ], [ %i.afi, %.thread397.us ]
  %i.hz = phi i32 [ %i.hx, %.preheader430.us ], [ %i.afj, %.thread397.us ]
  %.1629.us = phi i32 [ %.0172640.us, %.preheader430.us ], [ %.3.us, %.thread397.us ] ; 3 uses
  %.0176628.us = phi i32 [ 0, %.preheader430.us ], [ %i.afk, %.thread397.us ] ; 3 uses
  %.1323627.us = phi i32 [ %.0322638.us, %.preheader430.us ], [ %.3325.us, %.thread397.us ] ; 4 uses
  %.1329626.us = phi i32 [ %.0328637.us, %.preheader430.us ], [ %.4332.lcssa.us, %.thread397.us ] ; 3 uses
  %.1338625.us = phi i32 [ %.0337636.us, %.preheader430.us ], [ %.2339.lcssa.us, %.thread397.us ] ; 2 uses
  %i.ia = load i32, ptr %i.fb, align 8, !tbaa !64
  %.not193.us = icmp eq i32 %i.ia, 0
  br i1 %.not193.us, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ib = icmp eq i32 %.1629.us, 0
  br i1 %i.ib, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.ic = call fastcc noundef zeroext i1 @_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState12FinishStreamEPNS0_8JPEGDataEPm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %7, ptr noundef %i.a) #18
  br i1 %i.ic, label %bb.aa, label %.split.us647

bb.aa:                                            ; preds = %bb.z
  %i.id = add nsw i32 %.1323627.us, 208
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.if = add i64 %i.ie, 2                        ; 2 uses
  %i.ig = icmp ugt i64 %i.if, %1
  br i1 %i.ig, label %.split.us647, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 %i.ie ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !11
  %.not.i.us = icmp eq i8 %i.ii, -1
  br i1 %.not.i.us, label %bb.ac, label %.split.us647

bb.ac:                                            ; preds = %bb.ab
  %i.ij = getelementptr i8, ptr %i.ih, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !11
  %i.il = zext i8 %i.ik to i32
  %.not22.i.us = icmp eq i32 %i.id, %i.il
  br i1 %.not22.i.us, label %bb.ad, label %.split.us647

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState5ResetEm(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 noundef %i.if) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.im = load i32, ptr %i.fb, align 8, !tbaa !64
  store i64 0, ptr %i.b, align 8
  %i.in = icmp sgt i32 %.1329626.us, 0
  br i1 %i.in, label %.loopexit, label %._crit_edge754

._crit_edge754:                                   ; preds = %bb.ad
  %i.io = add nsw i32 %.1323627.us, 1
  %i.ip = and i32 %i.io, 7
  %.pre.pre = load i32, ptr %i.ea, align 8, !tbaa !218
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge754, %bb.y
  %.pre = phi i32 [ %.pre758, %bb.y ], [ %.pre.pre, %._crit_edge754 ] ; 3 uses
  %.2330.us = phi i32 [ %.1329626.us, %bb.y ], [ -1, %._crit_edge754 ]
  %.2324.us = phi i32 [ %.1323627.us, %bb.y ], [ %i.ip, %._crit_edge754 ]
  %.2.us = phi i32 [ %.1629.us, %bb.y ], [ %i.im, %._crit_edge754 ]
  %i.iq = add nsw i32 %.2.us, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.x
  %.pre760.a = phi i32 [ %.pre758, %bb.x ], [ %.pre, %bb.ae ] ; 2 uses
  %i.ir = phi i32 [ %i.hy, %bb.x ], [ %.pre, %bb.ae ] ; 2 uses
  %i.is = phi i32 [ %i.hz, %bb.x ], [ %.pre, %bb.ae ]
  %.3331.us = phi i32 [ %.1329626.us, %bb.x ], [ %.2330.us, %bb.ae ] ; 2 uses
  %.3325.us = phi i32 [ %.1323627.us, %bb.x ], [ %.2324.us, %bb.ae ] ; 2 uses
  %.3.us = phi i32 [ %.1629.us, %bb.x ], [ %i.iq, %bb.ae ] ; 2 uses
  %.not = icmp eq i32 %i.is, 0
  br i1 %.not, label %.thread397.us, label %.lr.ph622.us

.lr.ph622.us:                                     ; preds = %bb.af, %._crit_edge606.us
  %.pre756.a = phi i32 [ %.pre755, %._crit_edge606.us ], [ %.pre760.a, %bb.af ] ; 2 uses
  %i.it = phi i32 [ %i.afe, %._crit_edge606.us ], [ %i.ir, %bb.af ] ; 2 uses
  %.0175620.us = phi i64 [ %i.aff, %._crit_edge606.us ], [ 0, %bb.af ] ; 2 uses
  %.4332619.us = phi i32 [ %.5333.lcssa.us, %._crit_edge606.us ], [ %.3331.us, %bb.af ] ; 3 uses
  %.2339618.us = phi i32 [ %.3340.lcssa.us, %._crit_edge606.us ], [ %.1338625.us, %bb.af ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %.0175620.us ; 4 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !220
  %i.iw = zext i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.iy = getelementptr inbounds nuw [48 x i8], ptr %i.ix, i64 %i.iw ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !221
  %i.jb = shl i32 %i.ja, 10
  %i.jc = zext i32 %i.jb to i64
  %i.jd = load ptr, ptr %2, align 8, !tbaa !19
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jc
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !222
  %i.jh = shl i32 %i.jg, 10
  %i.ji = zext i32 %i.jh to i64
  %i.jj = load ptr, ptr %3, align 8, !tbaa !19
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ji ; 2 uses
  br i1 %i.ec, label %bb.ag, label %.preheader.us.us.preheader

bb.ag:                                            ; preds = %.lr.ph622.us
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !82 ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.preheader.lr.ph.us, label %._crit_edge606.us

.preheader.lr.ph.us:                              ; preds = %bb.ag
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !81 ; 3 uses
  %.not194594.us = icmp sgt i32 %i.jp, 0
  %i.jq = mul nuw nsw i32 %i.jm, %.0177639.us
  %i.jr = mul nuw nsw i32 %i.jp, %.0176628.us
  br i1 %.not194594.us, label %.preheader.us.us.preheader, label %._crit_edge606.us

.preheader.us.us.preheader:                       ; preds = %.lr.ph622.us, %.preheader.lr.ph.us
  %i.js = phi i32 [ %i.jr, %.preheader.lr.ph.us ], [ %.0176628.us, %.lr.ph622.us ]
  %i.jt = phi i32 [ %i.jq, %.preheader.lr.ph.us ], [ %.0177639.us, %.lr.ph622.us ]
  %i.ju = phi i32 [ %i.jm, %.preheader.lr.ph.us ], [ 1, %.lr.ph622.us ]
  %i.jv = phi i32 [ %i.jp, %.preheader.lr.ph.us ], [ 1, %.lr.ph622.us ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %..thread381_crit_edge.us.us
  %.0174605.us.us = phi i32 [ %i.afd, %..thread381_crit_edge.us.us ], [ 0, %.preheader.us.us.preheader ] ; 2 uses
  %.5333604.us.us = phi i32 [ %.7335372380.us.us, %..thread381_crit_edge.us.us ], [ %.4332619.us, %.preheader.us.us.preheader ]
  %.3340603.us.us = phi i32 [ %i.afb, %..thread381_crit_edge.us.us ], [ %.2339618.us, %.preheader.us.us.preheader ]
  %i.jy = add nuw nsw i32 %.0174605.us.us, %i.jt
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge198.us.us, %.preheader.us.us
  %.0173599.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.afc, %.critedge198.us.us ] ; 2 uses
  %.6334598.us.us = phi i32 [ %.5333604.us.us, %.preheader.us.us ], [ %.7335372380.us.us, %.critedge198.us.us ] ; 9 uses
  %.4341595.us.us = phi i32 [ %.3340603.us.us, %.preheader.us.us ], [ %i.afb, %.critedge198.us.us ] ; 5 uses
  %i.jz = add nuw nsw i32 %.0173599.us.us, %i.js
  %i.ka = load i32, ptr %i.jw, align 8, !tbaa !84
  %i.kb = mul i32 %i.ka, %i.jy
  %i.kc = add i32 %i.jz, %i.kb
  %i.kd = sext i32 %i.kc to i64
  %i.ke = load ptr, ptr %i.jx, align 8, !tbaa !86
  %.idx.us.us = shl nsw i64 %i.kd, 7
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.idx.us.us ; 6 uses
  br i1 %i.gy, label %bb.cq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.hi, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.kg = load i32, ptr %i.hj, align 8, !tbaa !111 ; 3 uses
  %i.kh = icmp slt i32 %i.kg, 17
  %.promoted.i.i.i221.us.us = load i64, ptr %i.hk, align 8, !tbaa !112 ; 2 uses
  br i1 %i.kh, label %.preheader.i.i.i220.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i219.us.us

.preheader.i.i.i220.us.us:                        ; preds = %bb.aj
  %.promoted2.i.i.i222.us.us = load i64, ptr %i.hl, align 8, !tbaa !113
  %.promoted3.i.i.i223.us.us = load i64, ptr %i.hm, align 8, !tbaa !114
  %i.ki = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i225.us.us, %.preheader.i.i.i220.us.us
end_hunk_0
begin_hunk_1_@_ZN3jxl4jpeg12_GLOBAL__N_111ProcessScanEPKhmRKNSt3__16vectorINS0_17HuffmanTableEntryENS4_9allocatorIS6_EEEESB_PA64_tbPmPNS0_8JPEGDataE:bb.a
  br i1 %i.lm, label %.critedge198.us.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ln = icmp slt i32 %.6334598.us.us, 1
  br i1 %i.ln, label %.lr.ph.i208.us.us, label %.thread13.i205.us.us

.lr.ph.i208.us.us:                                ; preds = %bb.aq
  %.promoted.i209.us.us = load i32, ptr %i.hj, align 8, !tbaa !111
  %.promoted.i.i141.i.us.us.pre = load i64, ptr %i.hk, align 8, !tbaa !112
  br label %bb.ar

bb.ar:                                            ; preds = %bb.bw, %.lr.ph.i208.us.us
  %.promoted.i.i141.i.us.us = phi i64 [ %.promoted.i.i141.i.us.us.pre, %.lr.ph.i208.us.us ], [ %.promoted.i.i141.i.us.us741, %bb.bw ] ; 2 uses
  %i.lo = phi i32 [ %.promoted.i209.us.us, %.lr.ph.i208.us.us ], [ %i.qh, %bb.bw ] ; 3 uses
  %.010141.i.us.us = phi i1 [ false, %.lr.ph.i208.us.us ], [ %.not121.i.us.us, %bb.bw ] ; 2 uses
  %.010640.i.us.us = phi i32 [ %.098.i.us.us, %.lr.ph.i208.us.us ], [ %i.qi, %bb.bw ] ; 5 uses
  %i.lp = icmp slt i32 %i.lo, 17
  br i1 %i.lp, label %.preheader.i.i140.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us

.preheader.i.i140.i.us.us:                        ; preds = %bb.ar
  %.promoted2.i.i142.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !113
  %.promoted3.i.i143.i.us.us = load i64, ptr %i.hm, align 8, !tbaa !114
  %i.lq = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us, %.preheader.i.i140.i.us.us
  %i.lr = phi i32 [ %i.lo, %.preheader.i.i140.i.us.us ], [ %i.mi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 2 uses
  %i.ls = phi i64 [ %.promoted3.i.i143.i.us.us, %.preheader.i.i140.i.us.us ], [ %i.me, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 4 uses
  %i.lt = phi i64 [ %.promoted2.i.i142.i.us.us, %.preheader.i.i140.i.us.us ], [ %i.mf, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 6 uses
  %i.lu = phi i64 [ %.promoted.i.i141.i.us.us, %.preheader.i.i140.i.us.us ], [ %i.mh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ]
  %i.lv = shl i64 %i.lu, 8                        ; 2 uses
  store i64 %i.lv, ptr %i.hk, align 8, !tbaa !112
  %.not.i.i.i144.i.us.us = icmp ult i64 %i.lt, %i.ls
  %i.lw = add i64 %i.lt, 1                        ; 5 uses
  store i64 %i.lw, ptr %i.hl, align 8, !tbaa !113
  br i1 %.not.i.i.i144.i.us.us, label %bb.at, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.at:                                            ; preds = %bb.as
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lt
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !11  ; 2 uses
  %i.lz = icmp eq i8 %i.ly, -1
  br i1 %i.lz, label %bb.au, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.au:                                            ; preds = %bb.at
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lw
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !11
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 %i.lt, ptr %i.hm, align 8, !tbaa !114
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.aw:                                            ; preds = %bb.au
  %i.md = add i64 %i.lt, 2                        ; 2 uses
  store i64 %i.md, ptr %i.hl, align 8, !tbaa !113
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us: ; preds = %bb.aw, %bb.av, %bb.at, %bb.as
  %i.me = phi i64 [ %i.ls, %bb.at ], [ %i.ls, %bb.aw ], [ %i.lt, %bb.av ], [ %i.ls, %bb.as ]
  %i.mf = phi i64 [ %i.lw, %bb.at ], [ %i.md, %bb.aw ], [ %i.lw, %bb.av ], [ %i.lw, %bb.as ]
  %.0.i.i.i146.i.us.us = phi i8 [ %i.ly, %bb.at ], [ -1, %bb.aw ], [ -1, %bb.av ], [ 0, %bb.as ]
  %i.mg = zext i8 %.0.i.i.i146.i.us.us to i64
  %i.mh = or disjoint i64 %i.lv, %i.mg            ; 3 uses
  store i64 %i.mh, ptr %i.hk, align 8, !tbaa !112
  %i.mi = add nsw i32 %i.lr, 8                    ; 3 uses
  store i32 %i.mi, ptr %i.hj, align 8, !tbaa !111
  %.old1.i.i147.i.us.us = icmp slt i32 %i.lr, 49
  br i1 %.old1.i.i147.i.us.us, label %bb.as, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us, %bb.ar
  %.promoted.i.i.us.us = phi i64 [ %.promoted.i.i141.i.us.us, %bb.ar ], [ %i.mh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 7 uses
  %i.mj = phi i32 [ %i.lo, %bb.ar ], [ %i.mi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 3 uses
  %i.mk = add nsw i32 %i.mj, -8                   ; 2 uses
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = lshr i64 %.promoted.i.i.us.us, %i.ml
  %i.mn = and i64 %i.mm, 255
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.mn ; 4 uses
  %i.mp = load i8, ptr %i.mo, align 2, !tbaa !22  ; 3 uses
  %i.mq = icmp ugt i8 %i.mp, 8
  br i1 %i.mq, label %bb.ax, label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us

bb.ax:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us
  %i.mr = zext i8 %i.mp to i32                    ; 2 uses
  %i.ms = add nsw i32 %i.mr, -8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !23
  %i.mv = zext i16 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mv
  %i.mx = sub nsw i32 %i.mj, %i.mr
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = lshr i64 %.promoted.i.i.us.us, %i.my
  %notmask.i.i215.us.us = shl nsw i32 -1, %i.ms
  %i.na = xor i32 %notmask.i.i215.us.us, -1
  %i.nb = trunc i64 %i.mz to i32
  %i.nc = and i32 %i.nb, %i.na
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.nd ; 2 uses
  %.pre19.i.i216.us.us = load i8, ptr %i.ne, align 2, !tbaa !22
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us

_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us: ; preds = %bb.ax, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us
  %i.nf = phi i32 [ %i.mk, %bb.ax ], [ %i.mj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us ]
  %i.ng = phi i8 [ %.pre19.i.i216.us.us, %bb.ax ], [ %i.mp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us ]
  %.0.i.i212.us.us = phi ptr [ %i.ne, %bb.ax ], [ %i.mo, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us ]
  %i.nh = zext i8 %i.ng to i32
  %i.ni = sub nsw i32 %i.nf, %i.nh                ; 8 uses
  store i32 %i.ni, ptr %i.hj, align 8, !tbaa !111
  %i.nj = getelementptr inbounds nuw i8, ptr %.0.i.i212.us.us, i64 2
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !23 ; 2 uses
  %i.nl = icmp ugt i16 %i.nk, 255
  br i1 %i.nl, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us
  %i.nm = zext nneg i16 %i.nk to i32              ; 2 uses
  %i.nn = lshr i32 %i.nm, 4                       ; 6 uses
  %i.no = and i32 %i.nm, 15                       ; 2 uses
  %.not121.i.us.us = icmp eq i32 %i.no, 0         ; 3 uses
  br i1 %.not121.i.us.us, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not127.i.us.us = icmp eq i32 %i.no, 1
  br i1 %.not127.i.us.us, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.np = icmp slt i32 %i.ni, 17
  br i1 %i.np, label %.preheader.i.i151.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us

.preheader.i.i151.i.us.us:                        ; preds = %bb.ba
  %.promoted2.i.i153.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !113
  %.promoted3.i.i154.i.us.us = load i64, ptr %i.hm, align 8, !tbaa !114
  %i.nq = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us, %.preheader.i.i151.i.us.us
  %i.nr = phi i32 [ %i.ni, %.preheader.i.i151.i.us.us ], [ %i.oi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 2 uses
  %i.ns = phi i64 [ %.promoted3.i.i154.i.us.us, %.preheader.i.i151.i.us.us ], [ %i.oe, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 4 uses
  %i.nt = phi i64 [ %.promoted2.i.i153.i.us.us, %.preheader.i.i151.i.us.us ], [ %i.of, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 6 uses
  %i.nu = phi i64 [ %.promoted.i.i.us.us, %.preheader.i.i151.i.us.us ], [ %i.oh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %i.nv = shl i64 %i.nu, 8                        ; 2 uses
  store i64 %i.nv, ptr %i.hk, align 8, !tbaa !112
  %.not.i.i.i155.i.us.us = icmp ult i64 %i.nt, %i.ns
  %i.nw = add i64 %i.nt, 1                        ; 5 uses
  store i64 %i.nw, ptr %i.hl, align 8, !tbaa !113
  br i1 %.not.i.i.i155.i.us.us, label %bb.bc, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.bc:                                            ; preds = %bb.bb
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nt
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !11  ; 2 uses
  %i.nz = icmp eq i8 %i.ny, -1
  br i1 %i.nz, label %bb.bd, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.bd:                                            ; preds = %bb.bc
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nw
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !11
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i64 %i.nt, ptr %i.hm, align 8, !tbaa !114
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.bf:                                            ; preds = %bb.bd
  %i.od = add i64 %i.nt, 2                        ; 2 uses
  store i64 %i.od, ptr %i.hl, align 8, !tbaa !113
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us: ; preds = %bb.bf, %bb.be, %bb.bc, %bb.bb
  %i.oe = phi i64 [ %i.ns, %bb.bc ], [ %i.ns, %bb.bf ], [ %i.nt, %bb.be ], [ %i.ns, %bb.bb ]
  %i.of = phi i64 [ %i.nw, %bb.bc ], [ %i.od, %bb.bf ], [ %i.nw, %bb.be ], [ %i.nw, %bb.bb ]
  %.0.i.i.i157.i.us.us = phi i8 [ %i.ny, %bb.bc ], [ -1, %bb.bf ], [ -1, %bb.be ], [ 0, %bb.bb ]
  %i.og = zext i8 %.0.i.i.i157.i.us.us to i64
  %i.oh = or disjoint i64 %i.nv, %i.og            ; 3 uses
  store i64 %i.oh, ptr %i.hk, align 8, !tbaa !112
  %i.oi = add nsw i32 %i.nr, 8                    ; 3 uses
  store i32 %i.oi, ptr %i.hj, align 8, !tbaa !111
  %.old1.i.i158.i.us.us = icmp slt i32 %i.nr, 49
  br i1 %.old1.i.i158.i.us.us, label %bb.bb, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us, %bb.ba
  %.promoted.i.i141.i.us.us746.a = phi i64 [ %.promoted.i.i.us.us, %bb.ba ], [ %i.oh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 2 uses
  %i.oj = phi i32 [ %i.ni, %bb.ba ], [ %i.oi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %i.ok = add nsw i32 %i.oj, -1                   ; 3 uses
  %i.ol = zext nneg i32 %i.ok to i64
  store i32 %i.ok, ptr %i.hj, align 8, !tbaa !111
  %i.om = shl nuw i64 1, %i.ol
  %i.on = and i64 %i.om, %.promoted.i.i141.i.us.us746.a
  %.not128.i.us.us = icmp eq i64 %i.on, 0
  %i.oo = select i1 %.not128.i.us.us, i32 %i.hn, i32 %i.gw
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ay
  %.not122.i.us.us = icmp eq i32 %i.nn, 15
  br i1 %.not122.i.us.us, label %bb.bh, label %bb.bx

bb.bh:                                            ; preds = %bb.bg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us
  %.promoted.i.i141.i.us.us745.a = phi i64 [ %.promoted.i.i141.i.us.us746.a, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %.promoted.i.i.us.us, %bb.bg ] ; 2 uses
  %i.op = phi i32 [ %i.ok, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %i.ni, %bb.bg ]
  %.0102.i.us.us = phi i32 [ %i.oo, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ 0, %bb.bg ] ; 3 uses
  %i.oq = sext i32 %.010640.i.us.us to i64
  %smax.i.us.us = call i32 @llvm.smax.i32(i32 %.010640.i.us.us, i32 %i.gx) ; 2 uses
  %i.or = add i32 %smax.i.us.us, 1
  %smax68.i.us.us = sext i32 %smax.i.us.us to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bu, %bb.bh
  %.promoted.i.i141.i.us.us744.a = phi i64 [ %.promoted.i.i141.i.us.us742.a, %bb.bu ], [ %.promoted.i.i141.i.us.us745.a, %bb.bh ] ; 4 uses
  %.promoted.i.i164.i.us.us = phi i64 [ %.pre.i16178.i.us.us, %bb.bu ], [ %.promoted.i.i141.i.us.us745.a, %bb.bh ] ; 3 uses
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %bb.bu ], [ %i.oq, %bb.bh ] ; 4 uses
  %i.os = phi i32 [ %i.qe, %bb.bu ], [ %i.op, %bb.bh ] ; 6 uses
  %.0103.i.us.us = phi i32 [ %.1104.i.us.us, %bb.bu ], [ %i.nn, %bb.bh ] ; 3 uses
  %i.ot = getelementptr inbounds [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %indvars.iv.i.us.us
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !87
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %i.ov ; 3 uses
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !110 ; 6 uses
  %i.oy = sext i16 %i.ox to i32
  %.not129.i.us.us = icmp eq i16 %i.ox, 0
  br i1 %.not129.i.us.us, label %bb.bt, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oz = icmp slt i32 %i.os, 17
  br i1 %i.oz, label %.preheader.i.i163.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us

.preheader.i.i163.i.us.us:                        ; preds = %bb.bj
  %.promoted2.i.i165.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !113
  %.promoted3.i.i166.i.us.us = load i64, ptr %i.hm, align 8, !tbaa !114
  %i.pa = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us, %.preheader.i.i163.i.us.us
  %i.pb = phi i32 [ %i.os, %.preheader.i.i163.i.us.us ], [ %i.ps, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 2 uses
  %i.pc = phi i64 [ %.promoted3.i.i166.i.us.us, %.preheader.i.i163.i.us.us ], [ %i.po, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 4 uses
  %i.pd = phi i64 [ %.promoted2.i.i165.i.us.us, %.preheader.i.i163.i.us.us ], [ %i.pp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 6 uses
  %i.pe = phi i64 [ %.promoted.i.i164.i.us.us, %.preheader.i.i163.i.us.us ], [ %i.pr, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %i.pf = shl i64 %i.pe, 8                        ; 2 uses
  store i64 %i.pf, ptr %i.hk, align 8, !tbaa !112
  %.not.i.i.i167.i.us.us = icmp ult i64 %i.pd, %i.pc
  %i.pg = add i64 %i.pd, 1                        ; 5 uses
  store i64 %i.pg, ptr %i.hl, align 8, !tbaa !113
  br i1 %.not.i.i.i167.i.us.us, label %bb.bl, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bl:                                            ; preds = %bb.bk
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pd
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !11  ; 2 uses
  %i.pj = icmp eq i8 %i.pi, -1
  br i1 %i.pj, label %bb.bm, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bm:                                            ; preds = %bb.bl
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pg
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !11
  %i.pm = icmp eq i8 %i.pl, 0
  br i1 %i.pm, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i64 %i.pd, ptr %i.hm, align 8, !tbaa !114
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bo:                                            ; preds = %bb.bm
  %i.pn = add i64 %i.pd, 2                        ; 2 uses
  store i64 %i.pn, ptr %i.hl, align 8, !tbaa !113
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us: ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk
  %i.po = phi i64 [ %i.pc, %bb.bl ], [ %i.pc, %bb.bo ], [ %i.pd, %bb.bn ], [ %i.pc, %bb.bk ]
  %i.pp = phi i64 [ %i.pg, %bb.bl ], [ %i.pn, %bb.bo ], [ %i.pg, %bb.bn ], [ %i.pg, %bb.bk ]
  %.0.i.i.i169.i.us.us = phi i8 [ %i.pi, %bb.bl ], [ -1, %bb.bo ], [ -1, %bb.bn ], [ 0, %bb.bk ]
  %i.pq = zext i8 %.0.i.i.i169.i.us.us to i64
  %i.pr = or disjoint i64 %i.pf, %i.pq            ; 4 uses
  store i64 %i.pr, ptr %i.hk, align 8, !tbaa !112
  %i.ps = add nsw i32 %i.pb, 8                    ; 3 uses
  store i32 %i.ps, ptr %i.hj, align 8, !tbaa !111
  %.old1.i.i170.i.us.us = icmp slt i32 %i.pb, 49
  br i1 %.old1.i.i170.i.us.us, label %bb.bk, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us, %bb.bj
  %.promoted.i.i141.i.us.us743.a = phi i64 [ %.promoted.i.i141.i.us.us744.a, %bb.bj ], [ %i.pr, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %.pre.i16179.i.us.us = phi i64 [ %.promoted.i.i164.i.us.us, %bb.bj ], [ %i.pr, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 2 uses
  %i.pt = phi i32 [ %i.os, %bb.bj ], [ %i.ps, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %i.pu = add nsw i32 %i.pt, -1                   ; 3 uses
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = lshr i64 %.pre.i16179.i.us.us, %i.pv
  store i32 %i.pu, ptr %i.hj, align 8, !tbaa !111
  %.not130.i.us.us = trunc i64 %i.pw to i1
  %i.px = and i32 %i.gw, %i.oy
  %i.py = icmp eq i32 %i.px, 0
  %or.cond134.i.us.us = select i1 %.not130.i.us.us, i1 %i.py, i1 false
  br i1 %or.cond134.i.us.us, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us
  %i.pz = icmp sgt i16 %i.ox, -1
  br i1 %i.pz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qa = sub i16 %i.ox, %i.ho
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.qb = add i16 %i.ox, %i.ho
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us
  %.099.i.us.us = phi i16 [ %i.qb, %bb.br ], [ %i.qa, %bb.bq ], [ %i.ox, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us ]
  store i16 %.099.i.us.us, ptr %i.ow, align 2, !tbaa !110
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bi
  %i.qc = add nsw i32 %.0103.i.us.us, -1
  %i.qd = icmp slt i32 %.0103.i.us.us, 1
  br i1 %i.qd, label %.loopexit17.i.us.us, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.promoted.i.i141.i.us.us742.a = phi i64 [ %.promoted.i.i141.i.us.us743.a, %bb.bs ], [ %.promoted.i.i141.i.us.us744.a, %bb.bt ] ; 2 uses
  %.pre.i16178.i.us.us = phi i64 [ %.pre.i16179.i.us.us, %bb.bs ], [ %.promoted.i.i164.i.us.us, %bb.bt ]
  %i.qe = phi i32 [ %i.pu, %bb.bs ], [ %i.os, %bb.bt ] ; 2 uses
  %.1104.i.us.us = phi i32 [ %.0103.i.us.us, %bb.bs ], [ %i.qc, %bb.bt ]
  %indvars.iv.next.i.us.us = add nsw i64 %indvars.iv.i.us.us, 1
  %exitcond.not.i213.us.us = icmp eq i64 %indvars.iv.i.us.us, %smax68.i.us.us
  br i1 %exitcond.not.i213.us.us, label %.loopexit17.thread.i.us.us, label %bb.bi, !llvm.loop !188

.loopexit17.thread.i.us.us:                       ; preds = %bb.bu
  %.not132128.i.us.us = icmp eq i32 %.0102.i.us.us, 0
  br i1 %.not132128.i.us.us, label %bb.bw, label %.loopexit

.loopexit17.i.us.us:                              ; preds = %bb.bt
  %i.qf = trunc nsw i64 %indvars.iv.i.us.us to i32 ; 2 uses
  %.not132.i.us.us = icmp eq i32 %.0102.i.us.us, 0
  br i1 %.not132.i.us.us, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.loopexit17.i.us.us
  %i.qg = trunc i32 %.0102.i.us.us to i16
  store i16 %i.qg, ptr %i.ow, align 2, !tbaa !110
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.loopexit17.i.us.us, %.loopexit17.thread.i.us.us
  %.promoted.i.i141.i.us.us741 = phi i64 [ %.promoted.i.i141.i.us.us744.a, %.loopexit17.i.us.us ], [ %.promoted.i.i141.i.us.us742.a, %.loopexit17.thread.i.us.us ], [ %.promoted.i.i141.i.us.us744.a, %bb.bv ]
  %.210811131.i.us.us = phi i32 [ %i.qf, %.loopexit17.i.us.us ], [ %i.or, %.loopexit17.thread.i.us.us ], [ %i.qf, %bb.bv ] ; 2 uses
  %i.qh = phi i32 [ %i.os, %.loopexit17.i.us.us ], [ %i.qe, %.loopexit17.thread.i.us.us ], [ %i.os, %bb.bv ]
  %i.qi = add nsw i32 %.210811131.i.us.us, 1      ; 2 uses
  %.not.not.i.us.us = icmp slt i32 %.210811131.i.us.us, %i.gx
  br i1 %.not.not.i.us.us, label %bb.ar, label %.loopexit19.i.us.us, !llvm.loop !189

bb.bx:                                            ; preds = %bb.bg
  %i.qj = icmp eq i32 %.010640.i.us.us, %.098.i.us.us
  %or.cond.i214.us.us = and i1 %i.hh, %i.qj
  %i.qk = icmp eq i32 %.6334598.us.us, 0
  %or.cond420.us.us = select i1 %or.cond.i214.us.us, i1 %i.qk, i1 false ; 2 uses
  %i.ql = shl nuw nsw i32 1, %i.nn
  %.not123.i.us.us = icmp eq i32 %i.nn, 0
  br i1 %.not123.i.us.us, label %.loopexit19.i.us.us, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %i.hh, label %.split.i.us.us, label %.loopexit

.split.i.us.us:                                   ; preds = %bb.by
  %i.qm = icmp slt i32 %i.ni, 17
  br i1 %i.qm, label %.preheader.i.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us

.preheader.i.i.us.us:                             ; preds = %.split.i.us.us
  %.promoted2.i.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !113
  %.promoted3.i.i.us.us = load i64, ptr %i.hm, align 8, !tbaa !114
  %i.qn = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us, %.preheader.i.i.us.us
  %i.qo = phi i32 [ %i.ni, %.preheader.i.i.us.us ], [ %i.rf, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 2 uses
  %i.qp = phi i64 [ %.promoted3.i.i.us.us, %.preheader.i.i.us.us ], [ %i.rb, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 4 uses
  %i.qq = phi i64 [ %.promoted2.i.i.us.us, %.preheader.i.i.us.us ], [ %i.rc, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 6 uses
  %i.qr = phi i64 [ %.promoted.i.i.us.us, %.preheader.i.i.us.us ], [ %i.re, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ]
  %i.qs = shl i64 %i.qr, 8                        ; 2 uses
  store i64 %i.qs, ptr %i.hk, align 8, !tbaa !112
  %.not.i.i.i240.us.us = icmp ult i64 %i.qq, %i.qp
  %i.qt = add i64 %i.qq, 1                        ; 5 uses
  store i64 %i.qt, ptr %i.hl, align 8, !tbaa !113
  br i1 %.not.i.i.i240.us.us, label %bb.ca, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.ca:                                            ; preds = %bb.bz
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qq
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !11  ; 2 uses
  %i.qw = icmp eq i8 %i.qv, -1
  br i1 %i.qw, label %bb.cb, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.cb:                                            ; preds = %bb.ca
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qt
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !11
  %i.qz = icmp eq i8 %i.qy, 0
  br i1 %i.qz, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i64 %i.qq, ptr %i.hm, align 8, !tbaa !114
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.cd:                                            ; preds = %bb.cb
  %i.ra = add i64 %i.qq, 2                        ; 2 uses
  store i64 %i.ra, ptr %i.hl, align 8, !tbaa !113
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us: ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.bz
  %i.rb = phi i64 [ %i.qp, %bb.ca ], [ %i.qp, %bb.cd ], [ %i.qq, %bb.cc ], [ %i.qp, %bb.bz ]
  %i.rc = phi i64 [ %i.qt, %bb.ca ], [ %i.ra, %bb.cd ], [ %i.qt, %bb.cc ], [ %i.qt, %bb.bz ]
  %.0.i.i.i241.us.us = phi i8 [ %i.qv, %bb.ca ], [ -1, %bb.cd ], [ -1, %bb.cc ], [ 0, %bb.bz ]
  %i.rd = zext i8 %.0.i.i.i241.us.us to i64
  %i.re = or disjoint i64 %i.qs, %i.rd            ; 3 uses
  store i64 %i.re, ptr %i.hk, align 8, !tbaa !112
  %i.rf = add nsw i32 %i.qo, 8                    ; 3 uses
  store i32 %i.rf, ptr %i.hj, align 8, !tbaa !111
  %.old1.i.i.us.us = icmp slt i32 %i.qo, 49
  br i1 %.old1.i.i.us.us, label %bb.bz, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us, %.split.i.us.us
  %i.rg = phi i32 [ %i.ni, %.split.i.us.us ], [ %i.rf, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ]
  %i.rh = phi i64 [ %.promoted.i.i.us.us, %.split.i.us.us ], [ %i.re, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ]
  %i.ri = sub nsw i32 %i.rg, %i.nn                ; 2 uses
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = lshr i64 %i.rh, %i.rj
  %i.rl = zext nneg i32 %i.nn to i64
  %notmask.i.us.us = shl nsw i64 -1, %i.rl
  %i.rm = xor i64 %notmask.i.us.us, -1
  %i.rn = and i64 %i.rk, %i.rm
  store i32 %i.ri, ptr %i.hj, align 8, !tbaa !111
  %i.ro = trunc nuw nsw i64 %i.rn to i32
  %i.rp = add nuw nsw i32 %i.ql, %i.ro
  br i1 %.010141.i.us.us, label %.loopexit, label %.thread13.i205.us.us

.loopexit19.i.us.us:                              ; preds = %bb.bw, %bb.bx
  %.17.us.us = phi i32 [ 1, %bb.bx ], [ %.6334598.us.us, %bb.bw ]
  %.6320.us.us = phi i1 [ %or.cond420.us.us, %bb.bx ], [ false, %bb.bw ]
  %.010636.i.us.us = phi i32 [ %.010640.i.us.us, %bb.bx ], [ %i.qi, %bb.bw ]
  %.010133.i.us.us = phi i1 [ %.010141.i.us.us, %bb.bx ], [ %.not121.i.us.us, %bb.bw ]
  br i1 %.010133.i.us.us, label %.loopexit, label %.thread13.i205.us.us

.thread13.i205.us.us:                             ; preds = %.loopexit19.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us, %bb.aq
  %.16.us.us = phi i32 [ %.6334598.us.us, %bb.aq ], [ %i.rp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.17.us.us, %.loopexit19.i.us.us ] ; 3 uses
  %.5319.us.us = phi i1 [ false, %bb.aq ], [ %or.cond420.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.6320.us.us, %.loopexit19.i.us.us ] ; 2 uses
  %.316.i.us.us = phi i32 [ %.098.i.us.us, %bb.aq ], [ %.010640.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.010636.i.us.us, %.loopexit19.i.us.us ] ; 2 uses
  %i.rq = icmp slt i32 %.16.us.us, 1
  %.not12446.i.us.us = icmp sgt i32 %.316.i.us.us, %i.gx
  %or.cond49.i.us.us = or i1 %i.rq, %.not12446.i.us.us
  br i1 %or.cond49.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us, label %.lr.ph48.i.us.us

.lr.ph48.i.us.us:                                 ; preds = %.thread13.i205.us.us
  %i.rr = sext i32 %.316.i.us.us to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cp, %.lr.ph48.i.us.us
  %indvars.iv73.i.us.us = phi i64 [ %i.rr, %.lr.ph48.i.us.us ], [ %indvars.iv.next74.i.us.us, %bb.cp ] ; 2 uses
  %i.rs = getelementptr inbounds [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %indvars.iv73.i.us.us
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !87
  %i.ru = zext i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.kf, i64 %i.ru ; 2 uses
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !110 ; 6 uses
  %i.rx = sext i16 %i.rw to i32
  %.not125.i.us.us = icmp eq i16 %i.rw, 0
  br i1 %.not125.i.us.us, label %bb.cp, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ry = load i32, ptr %i.hj, align 8, !tbaa !111 ; 3 uses
  %i.rz = icmp slt i32 %i.ry, 17
  %.promoted.i.i176.i.us.us = load i64, ptr %i.hk, align 8, !tbaa !112 ; 2 uses
  br i1 %i.rz, label %.preheader.i.i175.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us

.preheader.i.i175.i.us.us:                        ; preds = %bb.cf
  %.promoted2.i.i177.i.us.us = load i64, ptr %i.hl, align 8, !tbaa !113
  %.promoted3.i.i178.i.us.us = load i64, ptr %i.hm, align 8, !tbaa !114
  %i.sa = load ptr, ptr %9, align 8               ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us, %.preheader.i.i175.i.us.us
  %i.sb = phi i32 [ %i.ry, %.preheader.i.i175.i.us.us ], [ %i.ss, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ] ; 2 uses
  %i.sc = phi i64 [ %.promoted3.i.i178.i.us.us, %.preheader.i.i175.i.us.us ], [ %i.so, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ] ; 4 uses
  %i.sd = phi i64 [ %.promoted2.i.i177.i.us.us, %.preheader.i.i175.i.us.us ], [ %i.sp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ] ; 6 uses
  %i.se = phi i64 [ %.promoted.i.i176.i.us.us, %.preheader.i.i175.i.us.us ], [ %i.sr, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ]
  %i.sf = shl i64 %i.se, 8                        ; 2 uses
  store i64 %i.sf, ptr %i.hk, align 8, !tbaa !112
  %.not.i.i.i179.i.us.us = icmp ult i64 %i.sd, %i.sc
  %i.sg = add i64 %i.sd, 1                        ; 5 uses
  store i64 %i.sg, ptr %i.hl, align 8, !tbaa !113
  br i1 %.not.i.i.i179.i.us.us, label %bb.ch, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

bb.ch:                                            ; preds = %bb.cg
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sd
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !11  ; 2 uses
  %i.sj = icmp eq i8 %i.si, -1
  br i1 %i.sj, label %bb.ci, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

bb.ci:                                            ; preds = %bb.ch
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sg
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !11
  %i.sm = icmp eq i8 %i.sl, 0
  br i1 %i.sm, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i64 %i.sd, ptr %i.hm, align 8, !tbaa !114
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

bb.ck:                                            ; preds = %bb.ci
  %i.sn = add i64 %i.sd, 2                        ; 2 uses
  store i64 %i.sn, ptr %i.hl, align 8, !tbaa !113
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us: ; preds = %bb.ck, %bb.cj, %bb.ch, %bb.cg
  %i.so = phi i64 [ %i.sc, %bb.ch ], [ %i.sc, %bb.ck ], [ %i.sd, %bb.cj ], [ %i.sc, %bb.cg ]
  %i.sp = phi i64 [ %i.sg, %bb.ch ], [ %i.sn, %bb.ck ], [ %i.sg, %bb.cj ], [ %i.sg, %bb.cg ]
  %.0.i.i.i181.i.us.us = phi i8 [ %i.si, %bb.ch ], [ -1, %bb.ck ], [ -1, %bb.cj ], [ 0, %bb.cg ]
  %i.sq = zext i8 %.0.i.i.i181.i.us.us to i64
  %i.sr = or disjoint i64 %i.sf, %i.sq            ; 3 uses
  store i64 %i.sr, ptr %i.hk, align 8, !tbaa !112
  %i.ss = add nsw i32 %i.sb, 8                    ; 3 uses
  store i32 %i.ss, ptr %i.hj, align 8, !tbaa !111
  %.old1.i.i182.i.us.us = icmp slt i32 %i.sb, 49
  br i1 %.old1.i.i182.i.us.us, label %bb.cg, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us, %bb.cf
  %i.st = phi i32 [ %i.ry, %bb.cf ], [ %i.ss, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ]
  %i.su = phi i64 [ %.promoted.i.i176.i.us.us, %bb.cf ], [ %i.sr, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ]
  %i.sv = add nsw i32 %i.st, -1                   ; 2 uses
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = lshr i64 %i.su, %i.sw
  store i32 %i.sv, ptr %i.hj, align 8, !tbaa !111
  %.not126.i.us.us = trunc i64 %i.sx to i1
  %i.sy = and i32 %i.gw, %i.rx
  %i.sz = icmp eq i32 %i.sy, 0
  %or.cond137.i.us.us = select i1 %.not126.i.us.us, i1 %i.sz, i1 false
  br i1 %or.cond137.i.us.us, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us
  %i.ta = icmp sgt i16 %i.rw, -1
  br i1 %i.ta, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tb = sub i16 %i.rw, %i.ho
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.tc = add i16 %i.rw, %i.ho
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us
end_hunk_1
begin_hunk_2_@_ZN3jxl4jpeg12_GLOBAL__N_111ProcessScanEPKhmRKNSt3__16vectorINS0_17HuffmanTableEntryENS4_9allocatorIS6_EEEESB_PA64_tbPmPNS0_8JPEGDataE:bb.a
  %i.adm = phi ptr [ %i.adp, %.lr.ph.i.i.i.i.i.i.i.i.i.us.us ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.us.us.preheader1075 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.us.us = phi ptr [ %i.adn, %.lr.ph.i.i.i.i.i.i.i.i.i.us.us ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.us.us.preheader1075 ]
  %i.adn = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.us.us, i64 -4 ; 3 uses
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !87, !noalias !227
  %i.adp = getelementptr inbounds i8, ptr %i.adm, i64 -4 ; 3 uses
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !87, !noalias !227
  %.not.i.i.i.i.i.i.i.i.i.us.us = icmp eq ptr %i.adn, %i.acu
  br i1 %.not.i.i.i.i.i.i.i.i.i.us.us, label %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.us.us, !llvm.loop !201

_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.us.us, %middle.block, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.us.us
  %storemerge.i.i.us.us = phi ptr [ %i.acp, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i.us.us ], [ %i.ade, %middle.block ], [ %i.adp, %.lr.ph.i.i.i.i.i.i.i.i.i.us.us ]
  store ptr %storemerge.i.i.us.us, ptr %i.hq, align 8, !tbaa !105
  store ptr %i.acr, ptr %i.hr, align 8, !tbaa !105
  %i.adq = load ptr, ptr %i.hs, align 8, !tbaa !105
  store ptr %i.acq, ptr %i.hs, align 8, !tbaa !105
  %.not.i4.i.i.us.us = icmp eq ptr %i.acu, null
  br i1 %.not.i4.i.i.us.us, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRiEEERjDpOT_.exit.us.us, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i.us.us
  %i.adr = ptrtoint ptr %i.adq to i64
  %i.ads = ptrtoint ptr %i.acu to i64
  %i.adt = sub i64 %i.adr, %i.ads
  call void @_ZdlPvm(ptr noundef nonnull %i.acu, i64 noundef %i.adt) #17
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRiEEERjDpOT_.exit.us.us

bb.el:                                            ; preds = %bb.ei
  store i32 %.4341595.us.us, ptr %i.abx, align 4, !tbaa !87
  %i.adu = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  br label %_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRiEEERjDpOT_.exit.us.us

_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRiEEERjDpOT_.exit.us.us: ; preds = %bb.el, %bb.ek, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i.us.us
  %.0.i228.us.us = phi ptr [ %i.adu, %bb.el ], [ %i.acr, %_ZNSt3__114__split_bufferIjRNS_9allocatorIjEEE5clearB8nn180100Ev.exit.i.i.i.us.us ], [ %i.acr, %bb.ek ]
  store ptr %.0.i228.us.us, ptr %i.hr, align 8, !tbaa !104
  br label %bb.em

bb.em:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit169.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us.thread, %_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRiEEERjDpOT_.exit.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us
  %.7335.us.us903 = phi i32 [ %.7335.us.us901, %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us.thread ], [ %.7335.us.us906, %_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRiEEERjDpOT_.exit.us.us ], [ %.7335.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us ], [ %.7335.us.us904, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit169.i.us.us ] ; 2 uses
  %.0309.us.us902 = phi i32 [ %.0309.us.us.ph, %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us.thread ], [ %.0309.us.us905, %_ZNSt3__16vectorIjNS_9allocatorIjEEE12emplace_backIJRiEEERjDpOT_.exit.us.us ], [ %.0309.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us ], [ %.1310.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit169.i.us.us ] ; 3 uses
  %i.adv = icmp sgt i32 %.0309.us.us902, 0
  br i1 %i.adv, label %bb.en, label %.critedge198.us.us

bb.en:                                            ; preds = %bb.em
  %i.adw = load ptr, ptr %i.hu, align 8, !tbaa !101 ; 4 uses
  %i.adx = load ptr, ptr %i.hv, align 8, !tbaa !102 ; 2 uses
  %i.ady = icmp ult ptr %i.adw, %i.adx
  br i1 %i.ady, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.adz = load ptr, ptr %i.ht, align 8, !tbaa !100
  %i.aea = ptrtoint ptr %i.adw to i64
  %i.aeb = ptrtoint ptr %i.adz to i64             ; 2 uses
  %i.aec = sub i64 %i.aea, %i.aeb                 ; 2 uses
  %i.aed = ashr exact i64 %i.aec, 3
  %i.aee = add nsw i64 %i.aed, 1                  ; 2 uses
  %i.aef = icmp ugt i64 %i.aee, 2305843009213693951
  br i1 %i.aef, label %.split612.us, label %_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE11__recommendB8nn180100Em.exit.i.i.us.us

_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE11__recommendB8nn180100Em.exit.i.i.us.us: ; preds = %bb.eo
  %i.aeg = ptrtoint ptr %i.adx to i64
  %i.aeh = sub i64 %i.aeg, %i.aeb                 ; 2 uses
  %.not.i.i.i229.us.us = icmp ult i64 %i.aeh, 9223372036854775800
  %i.aei = ashr exact i64 %i.aeh, 2
  %.sroa.speculated.i.i.i230.us.us = call i64 @llvm.umax.i64(i64 %i.aei, i64 %i.aee)
  %.0.i.i.i231.us.us = select i1 %.not.i.i.i229.us.us, i64 %.sroa.speculated.i.i.i230.us.us, i64 2305843009213693951 ; 4 uses
  %i.aej = icmp ne i64 %.0.i.i.i231.us.us, 0
  call void @llvm.assume(i1 %i.aej)
  %i.aek = icmp ugt i64 %.0.i.i.i231.us.us, 2305843009213693951
  br i1 %i.aek, label %.split615.us, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us: ; preds = %_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE11__recommendB8nn180100Em.exit.i.i.us.us
  %i.ael = shl nuw i64 %.0.i.i.i231.us.us, 3
  %i.aem = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ael) #15 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.aec ; 4 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.aem, i64 %.0.i.i.i231.us.us
  %.sroa.5.0.insert.ext.us.us = zext nneg i32 %.0309.us.us902 to i64
  %.sroa.5.0.insert.shift.us.us = shl nuw nsw i64 %.sroa.5.0.insert.ext.us.us, 32
  %.sroa.0244.0.insert.ext.us.us = zext i32 %.4341595.us.us to i64
  %.sroa.0244.0.insert.insert.us.us = or disjoint i64 %.sroa.5.0.insert.shift.us.us, %.sroa.0244.0.insert.ext.us.us
  store i64 %.sroa.0244.0.insert.insert.us.us, ptr %i.aen, align 4
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 8 ; 3 uses
  %i.aeq = load ptr, ptr %i.hu, align 8, !tbaa !101 ; 2 uses
  %i.aer = load ptr, ptr %i.ht, align 8, !tbaa !100 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i232.us.us = icmp eq ptr %i.aeq, %i.aer
  br i1 %.not4.i.i.i.i.i.i.i.i.i232.us.us, label %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us

.lr.ph.i.i.i.i.i.i.i.i.i233.us.us:                ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us
  %i.aes = phi ptr [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us ], [ %i.aen, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i234.us.us = phi ptr [ %i.aet, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us ], [ %i.aeq, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us ]
  %i.aet = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i234.us.us, i64 -8 ; 3 uses
  %i.aeu = getelementptr inbounds i8, ptr %i.aes, i64 -8 ; 3 uses
  %i.aev = load i64, ptr %i.aet, align 4, !noalias !228
  store i64 %i.aev, ptr %i.aeu, align 4, !noalias !228
  %.not.i.i.i.i.i.i.i.i.i235.us.us = icmp eq ptr %i.aet, %i.aer
  br i1 %.not.i.i.i.i.i.i.i.i.i235.us.us, label %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us, !llvm.loop !210

_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us
  %storemerge.i.i236.us.us = phi ptr [ %i.aen, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us ], [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us ]
  store ptr %storemerge.i.i236.us.us, ptr %i.ht, align 8, !tbaa !102
  store ptr %i.aep, ptr %i.hu, align 8, !tbaa !102
  %i.aew = load ptr, ptr %i.hv, align 8, !tbaa !102
  store ptr %i.aeo, ptr %i.hv, align 8, !tbaa !102
  %.not.i4.i.i237.us.us = icmp eq ptr %i.aer, null
  br i1 %.not.i4.i.i237.us.us, label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us
  %i.aex = ptrtoint ptr %i.aew to i64
  %i.aey = ptrtoint ptr %i.aer to i64
  %i.aez = sub i64 %i.aex, %i.aey
  call void @_ZdlPvm(ptr noundef nonnull %i.aer, i64 noundef %i.aez) #17
  br label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us

bb.eq:                                            ; preds = %bb.en
  %.sroa.5.0.insert.ext250.us.us = zext nneg i32 %.0309.us.us902 to i64
  %.sroa.5.0.insert.shift251.us.us = shl nuw nsw i64 %.sroa.5.0.insert.ext250.us.us, 32
  %.sroa.0244.0.insert.ext246.us.us = zext i32 %.4341595.us.us to i64
  %.sroa.0244.0.insert.insert248.us.us = or disjoint i64 %.sroa.5.0.insert.shift251.us.us, %.sroa.0244.0.insert.ext246.us.us
  store i64 %.sroa.0244.0.insert.insert248.us.us, ptr %i.adw, align 4
  %i.afa = getelementptr inbounds nuw i8, ptr %i.adw, i64 8
  br label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us

_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us: ; preds = %bb.eq, %bb.ep, %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us
  %.0.i238.us.us = phi ptr [ %i.afa, %bb.eq ], [ %i.aep, %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us ], [ %i.aep, %bb.ep ]
  store ptr %.0.i238.us.us, ptr %i.hu, align 8, !tbaa !101
  br label %.critedge198.us.us

.critedge198.us.us:                               ; preds = %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us, %bb.em, %bb.dg, %bb.ap
  %.7335372380.us.us = phi i32 [ %.7335.us.us903, %bb.em ], [ %.7335.us.us903, %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us ], [ %.6334598.us.us, %bb.ap ], [ %.6334598.us.us, %bb.dg ] ; 3 uses
  %i.afb = add nsw i32 %.4341595.us.us, 1         ; 3 uses
  %i.afc = add nuw nsw i32 %.0173599.us.us, 1     ; 2 uses
  %exitcond737.not = icmp eq i32 %i.afc, %i.jv
  br i1 %exitcond737.not, label %..thread381_crit_edge.us.us, label %bb.ah, !llvm.loop !211

..thread381_crit_edge.us.us:                      ; preds = %.critedge198.us.us
  %i.afd = add nuw nsw i32 %.0174605.us.us, 1     ; 2 uses
  %exitcond738.not = icmp eq i32 %i.afd, %i.ju
  br i1 %exitcond738.not, label %._crit_edge606.us.loopexit, label %.preheader.us.us, !llvm.loop !212

._crit_edge606.us.loopexit:                       ; preds = %..thread381_crit_edge.us.us
  %.pre753 = load i32, ptr %i.ea, align 8, !tbaa !218 ; 2 uses
  br label %._crit_edge606.us

._crit_edge606.us:                                ; preds = %.preheader.lr.ph.us, %._crit_edge606.us.loopexit, %bb.ag
  %.pre755 = phi i32 [ %.pre756.a, %bb.ag ], [ %.pre753, %._crit_edge606.us.loopexit ], [ %.pre756.a, %.preheader.lr.ph.us ] ; 2 uses
  %i.afe = phi i32 [ %i.it, %bb.ag ], [ %.pre753, %._crit_edge606.us.loopexit ], [ %i.it, %.preheader.lr.ph.us ] ; 4 uses
  %.3340.lcssa.us = phi i32 [ %.2339618.us, %bb.ag ], [ %i.afb, %._crit_edge606.us.loopexit ], [ %.2339618.us, %.preheader.lr.ph.us ] ; 2 uses
  %.5333.lcssa.us = phi i32 [ %.4332619.us, %bb.ag ], [ %.7335372380.us.us, %._crit_edge606.us.loopexit ], [ %.4332619.us, %.preheader.lr.ph.us ] ; 2 uses
  %i.aff = add nuw nsw i64 %.0175620.us, 1        ; 2 uses
  %i.afg = zext i32 %i.afe to i64
  %i.afh = icmp samesign ult i64 %i.aff, %i.afg
  br i1 %i.afh, label %.lr.ph622.us, label %.thread397.us, !llvm.loop !213

.thread397.us:                                    ; preds = %._crit_edge606.us, %bb.af
  %.pre759 = phi i32 [ %.pre760.a, %bb.af ], [ %.pre755, %._crit_edge606.us ] ; 2 uses
  %i.afi = phi i32 [ %i.ir, %bb.af ], [ %i.afe, %._crit_edge606.us ] ; 2 uses
  %i.afj = phi i32 [ 0, %bb.af ], [ %i.afe, %._crit_edge606.us ] ; 2 uses
  %.2339.lcssa.us = phi i32 [ %.1338625.us, %bb.af ], [ %.3340.lcssa.us, %._crit_edge606.us ] ; 2 uses
  %.4332.lcssa.us = phi i32 [ %.3331.us, %bb.af ], [ %.5333.lcssa.us, %._crit_edge606.us ] ; 3 uses
  %i.afk = add nuw nsw i32 %.0176628.us, 1        ; 2 uses
  %exitcond739.not = icmp eq i32 %i.afk, %i.he
  br i1 %exitcond739.not, label %._crit_edge631.us, label %bb.x, !llvm.loop !214

._crit_edge631.us:                                ; preds = %.thread397.us
  %i.afl = add nuw nsw i32 %.0177639.us, 1        ; 2 uses
  %exitcond740.not = icmp eq i32 %i.afl, %i.hc
  br i1 %exitcond740.not, label %._crit_edge641, label %.preheader430.us, !llvm.loop !215

.split.us647:                                     ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.split.us:                                        ; preds = %bb.ej
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.hq) #16
  unreachable

.split610.us:                                     ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i.us.us
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

.split612.us:                                     ; preds = %bb.eo
  call void @_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ht) #16
  unreachable

.split615.us:                                     ; preds = %_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE11__recommendB8nn180100Em.exit.i.i.us.us
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

._crit_edge641:                                   ; preds = %._crit_edge631.us
  %i.afm = icmp sgt i32 %.4332.lcssa.us, 0
  br i1 %i.afm, label %.loopexit, label %._crit_edge641.thread

._crit_edge641.thread:                            ; preds = %.preheader430.lr.ph, %.preheader432, %._crit_edge641
  %i.afn = call fastcc noundef zeroext i1 @_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState12FinishStreamEPNS0_8JPEGDataEPm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %7, ptr noundef %6) #18
  br i1 %i.afn, label %bb.er, label %.loopexit

bb.er:                                            ; preds = %._crit_edge641.thread
  %i.afo = load i64, ptr %6, align 8, !tbaa !13
  %i.afp = icmp ugt i64 %i.afo, %1
  %spec.select421 = zext i1 %i.afp to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.ad, %bb.by, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us, %.loopexit19.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us, %bb.df, %bb.eb, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us, %bb.az, %.loopexit17.thread.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit139.i.us.us, %bb.dq, %bb.er, %._crit_edge641.thread, %._crit_edge641, %.split.us647, %.critedge196
  %.sroa.0298.16 = phi i32 [ 1, %.critedge196 ], [ 1, %bb.by ], [ 1, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit139.i.us.us ], [ 1, %._crit_edge641.thread ], [ %spec.select421, %bb.er ], [ 1, %._crit_edge641 ], [ 1, %.split.us647 ], [ 1, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us ], [ 1, %bb.ad ], [ 1, %bb.dq ], [ 1, %.loopexit17.thread.i.us.us ], [ 1, %bb.az ], [ 1, %bb.eb ], [ 1, %bb.df ], [ 1, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us ], [ 1, %.loopexit19.i.us.us ], [ 1, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit.thread

_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit, %.loopexit
  %.sroa.0297.17 = phi i32 [ %.sroa.0298.16, %.loopexit ], [ 1, %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.sroa.0297.17
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_ZN3jxl4jpeg12_GLOBAL__N_110ProcessDQTEPKhmPmPNS0_8JPEGDataE(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 2, 0) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"struct.jxl::jpeg::JPEGQuantTable", align 4 ; 12 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.b = add i64 %i.a, 2                          ; 4 uses
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %.critedge85, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %i.d, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j               ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !13
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %.critedge85, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = zext nneg i32 %i.k to i64
  %i.n = add i64 %i.a, %i.m                       ; 4 uses
  %i.o = icmp ult i64 %i.b, %i.n
  br i1 %i.o, label %.lr.ph, label %.critedge85

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 260
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !115
  br label %bb.f

.critedge87:                                      ; preds = %bb.m, %bb.l
  %i.v = phi i64 [ %i.cb, %bb.l ], [ %i.dh, %bb.m ]
  %i.w = icmp eq i64 %i.v, %i.n
  %i.x = zext i1 %i.w to i8
  store i8 %i.x, ptr %i.t, align 4, !tbaa !239
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !240  ; 2 uses
  %i.z = icmp ult ptr %i.ax, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i

bb.c:                                             ; preds = %.critedge87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(268) %i.ax, ptr noundef nonnull align 4 dereferenceable(268) %4, i64 268, i1 false), !tbaa.struct !241
  %i.aa = getelementptr inbounds nuw i8, ptr %i.ax, i64 268
  br label %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit

_ZNKSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i: ; preds = %.critedge87
  %i.ab = add nuw nsw i64 %i.bd, 1
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ac, %i.bb
  %i.ae = sdiv exact i64 %i.ad, 268               ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ae, 34415567301696924
  %i.af = shl nuw nsw i64 %i.ae, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ab)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 68831134603393849 ; 3 uses
  %i.ag = icmp ugt i64 %.0.i.i.i, 68831134603393849
  br i1 %i.ag, label %bb.d, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg14JPEGQuantTableEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg14JPEGQuantTableEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i
  %i.ah = mul nuw i64 %.0.i.i.i, 268
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bc ; 4 uses
  %i.ak = getelementptr inbounds nuw [268 x i8], ptr %i.ai, i64 %.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(268) %i.aj, ptr noundef nonnull align 4 dereferenceable(268) %4, i64 268, i1 false), !tbaa.struct !241
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 268 ; 3 uses
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !115
  %.promoted.fr.i.i.i.i.i.i = freeze ptr %i.am    ; 2 uses
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !118 ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.fr.i.i.i.i.i.i, %i.an
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg14JPEGQuantTableEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ao = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aj, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg14JPEGQuantTableEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.promoted.fr.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg14JPEGQuantTableEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ]
  %i.ap = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -268 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -268 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(265) %i.aq, ptr noundef nonnull align 4 dereferenceable(265) %i.ap, i64 265, i1 false), !tbaa.struct !241, !noalias !242
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !237

_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg14JPEGQuantTableEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg14JPEGQuantTableEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %i.p, align 8, !tbaa !240
  store ptr %i.al, ptr %i.q, align 8, !tbaa !240
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !240
  store ptr %i.ak, ptr %i.u, align 8, !tbaa !240
  %.not.i4.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i4.i.i, label %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.au) #17
  br label %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit

_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit: ; preds = %bb.c, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i, %bb.e
  %.0.i = phi ptr [ %i.aa, %bb.c ], [ %i.al, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE.exit.i.i ], [ %i.al, %bb.e ] ; 2 uses
  store ptr %.0.i, ptr %i.q, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.av = load i64, ptr %2, align 8, !tbaa !13    ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.n
  br i1 %i.aw, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit
  %i.ax = phi ptr [ %.pre, %.lr.ph ], [ %.0.i, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit ] ; 4 uses
  %i.ay = phi i64 [ %i.b, %.lr.ph ], [ %i.av, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit ] ; 4 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !118
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = sdiv exact i64 %i.bc, 268               ; 2 uses
  %i.be = icmp ult i64 %i.bd, 4
  br i1 %i.be, label %bb.g, label %.critedge.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bf = add nuw i64 %i.ay, 1                    ; 4 uses
  %.not98 = icmp ult i64 %i.ay, %1
  br i1 %.not98, label %bb.h, label %.critedge85

bb.h:                                             ; preds = %bb.g
  store i64 %i.bf, ptr %2, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11  ; 2 uses
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 4                       ; 3 uses
  %i.bk = icmp ugt i8 %i.bh, 31
  br i1 %i.bk, label %.critedge85, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = and i32 %i.bi, 15                       ; 2 uses
  %i.bm = icmp samesign ugt i32 %i.bl, 3
  br i1 %i.bm, label %.critedge85, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = shl nuw nsw i32 %i.bj, 6
  %i.bo = add nuw nsw i32 %i.bn, 64
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = add i64 %i.bf, %i.bp
  %i.br = icmp ugt i64 %i.bq, %1
  br i1 %i.br, label %.critedge85, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store i32 %i.bl, ptr %i.s, align 4, !tbaa !119
  store i32 %i.bj, ptr %i.r, align 4, !tbaa !243
  %.not80 = icmp eq i32 %i.bj, 0
  br i1 %.not80, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.k, %bb.l
  %i.bs = phi i64 [ %i.cb, %bb.l ], [ %i.bf, %bb.k ] ; 3 uses
  %.072107.us = phi i64 [ %i.ck, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.bt = add i64 %i.bs, 1                        ; 2 uses
  store i64 %i.bt, ptr %2, align 8, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11  ; 2 uses
  %.not81.us = icmp eq i8 %i.bv, 0
  br i1 %.not81.us, label %.critedge85.critedge, label %.split.us.1

.split.us.1:                                      ; preds = %.split.us
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %.072107.us
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !87
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bz
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !87
  %i.cb = add i64 %i.bs, 2                        ; 3 uses
  store i64 %i.cb, ptr %2, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11  ; 2 uses
  %.not81.us.1 = icmp eq i8 %i.cd, 0
  br i1 %.not81.us.1, label %.critedge85.critedge, label %bb.l

bb.l:                                             ; preds = %.split.us.1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %.072107.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !87
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ci
  store i32 %i.ce, ptr %i.cj, align 4, !tbaa !87
  %i.ck = add nuw nsw i64 %.072107.us, 2          ; 2 uses
  %exitcond115.1 = icmp eq i64 %i.ck, 64
  br i1 %exitcond115.1, label %.critedge87, label %.split.us, !llvm.loop !238

.split:                                           ; preds = %bb.k, %bb.m
  %i.cl = phi i64 [ %i.dh, %bb.m ], [ %i.bf, %bb.k ] ; 3 uses
end_hunk_2
