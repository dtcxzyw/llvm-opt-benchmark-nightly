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
  %i.gx = phi i32 [ %i.gt, %.critedge196 ], [ 63, %.thread349.thread ] ; 9 uses
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
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 25 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 25 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 25 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 25 uses
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
  %i.hw = phi i32 [ %i.afs, %._crit_edge631.us ], [ %i.hb, %.preheader430.lr.ph ]
  %i.hx = phi i32 [ %i.aft, %._crit_edge631.us ], [ %i.hb, %.preheader430.lr.ph ]
  %.0172640.us = phi i32 [ %.3.us, %._crit_edge631.us ], [ %i.fc, %.preheader430.lr.ph ]
  %.0177639.us = phi i32 [ %i.afv, %._crit_edge631.us ], [ 0, %.preheader430.lr.ph ] ; 3 uses
  %.0322638.us = phi i32 [ %.3325.us, %._crit_edge631.us ], [ 0, %.preheader430.lr.ph ]
  %.0328637.us = phi i32 [ %.4332.lcssa.us, %._crit_edge631.us ], [ -1, %.preheader430.lr.ph ]
  %.0337636.us = phi i32 [ %.2339.lcssa.us, %._crit_edge631.us ], [ 0, %.preheader430.lr.ph ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader430.us, %.thread397.us
  %.pre758 = phi i32 [ %.pre757.a, %.preheader430.us ], [ %.pre759, %.thread397.us ] ; 2 uses
  %i.hy = phi i32 [ %i.hw, %.preheader430.us ], [ %i.afs, %.thread397.us ]
  %i.hz = phi i32 [ %i.hx, %.preheader430.us ], [ %i.aft, %.thread397.us ]
  %.1629.us = phi i32 [ %.0172640.us, %.preheader430.us ], [ %.3.us, %.thread397.us ] ; 3 uses
  %.0176628.us = phi i32 [ 0, %.preheader430.us ], [ %i.afu, %.thread397.us ] ; 3 uses
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
  br i1 %.not, label %.thread397.us, label %.lr.ph622.us.preheader

.lr.ph622.us.preheader:                           ; preds = %bb.af
  %i.it = load ptr, ptr %9, align 8               ; 22 uses
  %.promoted1214 = load i32, ptr %i.hj, align 8
  %.promoted = load i64, ptr %i.hk, align 8
  %.promoted1231 = load i64, ptr %i.hl, align 8
  %.promoted1240 = load i64, ptr %i.hm, align 8
  br label %.lr.ph622.us

.lr.ph622.us:                                     ; preds = %.lr.ph622.us.preheader, %._crit_edge606.us
  %.lcssa11061168.lcssa.lcssa1242 = phi i64 [ %.lcssa11061168.lcssa.lcssa1241, %._crit_edge606.us ], [ %.promoted1240, %.lr.ph622.us.preheader ] ; 10 uses
  %.lcssa11041148.lcssa.lcssa1233 = phi i64 [ %.lcssa11041148.lcssa.lcssa1232, %._crit_edge606.us ], [ %.promoted1231, %.lr.ph622.us.preheader ] ; 10 uses
  %.lcssa11071128.lcssa.lcssa1224 = phi i64 [ %.lcssa11071128.lcssa.lcssa1223, %._crit_edge606.us ], [ %.promoted, %.lr.ph622.us.preheader ] ; 10 uses
  %.lcssa10971113.lcssa.lcssa1216 = phi i32 [ %.lcssa10971113.lcssa.lcssa1215, %._crit_edge606.us ], [ %.promoted1214, %.lr.ph622.us.preheader ] ; 10 uses
  %.pre756.a = phi i32 [ %.pre755, %._crit_edge606.us ], [ %.pre760.a, %.lr.ph622.us.preheader ] ; 2 uses
  %i.iu = phi i32 [ %i.afo, %._crit_edge606.us ], [ %i.ir, %.lr.ph622.us.preheader ] ; 2 uses
  %.0175620.us = phi i64 [ %i.afp, %._crit_edge606.us ], [ 0, %.lr.ph622.us.preheader ] ; 2 uses
  %.4332619.us = phi i32 [ %.5333.lcssa.us, %._crit_edge606.us ], [ %.3331.us, %.lr.ph622.us.preheader ] ; 3 uses
  %.2339618.us = phi i32 [ %.3340.lcssa.us, %._crit_edge606.us ], [ %.1338625.us, %.lr.ph622.us.preheader ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %.0175620.us ; 4 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !220
  %i.ix = zext i32 %i.iw to i64
  %i.iy = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.iz = getelementptr inbounds nuw [48 x i8], ptr %i.iy, i64 %i.ix ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !221
  %i.jc = shl i32 %i.jb, 10
  %i.jd = zext i32 %i.jc to i64
  %i.je = load ptr, ptr %2, align 8, !tbaa !19
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jd
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !222
  %i.ji = shl i32 %i.jh, 10
  %i.jj = zext i32 %i.ji to i64
  %i.jk = load ptr, ptr %3, align 8, !tbaa !19
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jj ; 2 uses
  br i1 %i.ec, label %bb.ag, label %.preheader.us.us.preheader

bb.ag:                                            ; preds = %.lr.ph622.us
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !82 ; 3 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.preheader.lr.ph.us, label %._crit_edge606.us

.preheader.lr.ph.us:                              ; preds = %bb.ag
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !81 ; 3 uses
  %.not194594.us = icmp sgt i32 %i.jq, 0
  %i.jr = mul nuw nsw i32 %i.jn, %.0177639.us
  %i.js = mul nuw nsw i32 %i.jq, %.0176628.us
  br i1 %.not194594.us, label %.preheader.us.us.preheader, label %._crit_edge606.us

.preheader.us.us.preheader:                       ; preds = %.lr.ph622.us, %.preheader.lr.ph.us
  %i.jt = phi i32 [ %i.js, %.preheader.lr.ph.us ], [ %.0176628.us, %.lr.ph622.us ]
  %i.ju = phi i32 [ %i.jr, %.preheader.lr.ph.us ], [ %.0177639.us, %.lr.ph622.us ]
  %i.jv = phi i32 [ %i.jn, %.preheader.lr.ph.us ], [ 1, %.lr.ph622.us ]
  %i.jw = phi i32 [ %i.jq, %.preheader.lr.ph.us ], [ 1, %.lr.ph622.us ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %..thread381_crit_edge.us.us
  %.lcssa11061168.lcssa1207 = phi i64 [ %.lcssa11061168, %..thread381_crit_edge.us.us ], [ %.lcssa11061168.lcssa.lcssa1242, %.preheader.us.us.preheader ] ; 8 uses
  %.lcssa11041148.lcssa1199 = phi i64 [ %.lcssa11041148, %..thread381_crit_edge.us.us ], [ %.lcssa11041148.lcssa.lcssa1233, %.preheader.us.us.preheader ] ; 8 uses
  %.lcssa11071128.lcssa1191 = phi i64 [ %.lcssa11071128, %..thread381_crit_edge.us.us ], [ %.lcssa11071128.lcssa.lcssa1224, %.preheader.us.us.preheader ] ; 8 uses
  %.lcssa10971113.lcssa1183 = phi i32 [ %.lcssa10971113, %..thread381_crit_edge.us.us ], [ %.lcssa10971113.lcssa.lcssa1216, %.preheader.us.us.preheader ] ; 8 uses
  %.0174605.us.us = phi i32 [ %i.afn, %..thread381_crit_edge.us.us ], [ 0, %.preheader.us.us.preheader ] ; 2 uses
  %.5333604.us.us = phi i32 [ %.7335372380.us.us, %..thread381_crit_edge.us.us ], [ %.4332619.us, %.preheader.us.us.preheader ]
  %.3340603.us.us = phi i32 [ %i.afl, %..thread381_crit_edge.us.us ], [ %.2339618.us, %.preheader.us.us.preheader ]
  %i.jz = add nuw nsw i32 %.0174605.us.us, %i.ju
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge198.us.us, %.preheader.us.us
  %.lcssa11061176 = phi i64 [ %.lcssa11061168.lcssa1207, %.preheader.us.us ], [ %.lcssa11061168, %.critedge198.us.us ] ; 8 uses
  %.lcssa11041156 = phi i64 [ %.lcssa11041148.lcssa1199, %.preheader.us.us ], [ %.lcssa11041148, %.critedge198.us.us ] ; 6 uses
  %.lcssa11071136 = phi i64 [ %.lcssa11071128.lcssa1191, %.preheader.us.us ], [ %.lcssa11071128, %.critedge198.us.us ] ; 6 uses
  %.lcssa10971112 = phi i32 [ %.lcssa10971113.lcssa1183, %.preheader.us.us ], [ %.lcssa10971113, %.critedge198.us.us ] ; 8 uses
  %.0173599.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.afm, %.critedge198.us.us ] ; 2 uses
  %.6334598.us.us = phi i32 [ %.5333604.us.us, %.preheader.us.us ], [ %.7335372380.us.us, %.critedge198.us.us ] ; 9 uses
  %.4341595.us.us = phi i32 [ %.3340603.us.us, %.preheader.us.us ], [ %i.afl, %.critedge198.us.us ] ; 5 uses
  %i.ka = add nuw nsw i32 %.0173599.us.us, %i.jt
  %i.kb = load i32, ptr %i.jx, align 8, !tbaa !84
  %i.kc = mul i32 %i.kb, %i.jz
  %i.kd = add i32 %i.ka, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = load ptr, ptr %i.jy, align 8, !tbaa !86
end_hunk_0
begin_hunk_1_@_ZN3jxl4jpeg12_GLOBAL__N_111ProcessScanEPKhmRKNSt3__16vectorINS0_17HuffmanTableEntryENS4_9allocatorIS6_EEEESB_PA64_tbPmPNS0_8JPEGDataE:bb.a
  %.lcssa11071130 = phi i64 [ %.lcssa11071136, %bb.aj ], [ %i.la, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i225.us.us ] ; 2 uses
  %i.lc = phi i32 [ %.lcssa10971112, %bb.aj ], [ %i.lb, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.i225.us.us ]
  %i.ld = add nsw i32 %i.lc, -1                   ; 2 uses
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = lshr i64 %.lcssa11071130, %i.le
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = and i32 %i.lg, 1
  %i.li = load i16, ptr %i.kg, align 2, !tbaa !110
  %i.lj = shl nuw nsw i32 %i.lh, %i.gz
  %i.lk = trunc i32 %i.lj to i16
  %i.ll = or i16 %i.li, %i.lk
  store i16 %i.ll, ptr %i.kg, align 2, !tbaa !110
  br label %bb.an

bb.an:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i219.us.us, %bb.ai
  %.lcssa11061169 = phi i64 [ %.lcssa11061170, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i219.us.us ], [ %.lcssa11061176, %bb.ai ] ; 4 uses
  %.lcssa11041149 = phi i64 [ %.lcssa11041150, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i219.us.us ], [ %.lcssa11041156, %bb.ai ] ; 4 uses
  %.lcssa11071129 = phi i64 [ %.lcssa11071130, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i219.us.us ], [ %.lcssa11071136, %bb.ai ] ; 5 uses
  %.lcssa10971109 = phi i32 [ %i.ld, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i219.us.us ], [ %.lcssa10971112, %bb.ai ] ; 4 uses
  %.098.i.us.us = phi i32 [ 1, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.i219.us.us ], [ %i.ha, %bb.ai ] ; 4 uses
  %i.lm = icmp sgt i32 %.098.i.us.us, %i.gx
  br i1 %i.lm, label %.critedge198.us.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ln = icmp slt i32 %.6334598.us.us, 1
  br i1 %i.ln, label %.lr.ph.i208.us.us, label %.thread13.i205.us.us

.lr.ph.i208.us.us:                                ; preds = %bb.ao, %bb.bn
  %.lcssa10041017.lcssa1042 = phi i64 [ %.lcssa10041017.lcssa1043, %bb.bn ], [ %.lcssa11071129, %bb.ao ]
  %.lcssa10031010.lcssa1031 = phi i64 [ %.lcssa10031010.lcssa1032, %bb.bn ], [ %.lcssa11061169, %bb.ao ] ; 3 uses
  %.lcssa10011006.lcssa1024 = phi i64 [ %.lcssa10011006.lcssa1025, %bb.bn ], [ %.lcssa11041149, %bb.ao ] ; 2 uses
  %.promoted.i.i141.i.us.us = phi i64 [ %.promoted.i.i141.i.us.us741, %bb.bn ], [ %.lcssa11071129, %bb.ao ] ; 2 uses
  %i.lo = phi i32 [ %i.qm, %bb.bn ], [ %.lcssa10971109, %bb.ao ] ; 3 uses
  %.010141.i.us.us = phi i1 [ %.not121.i.us.us, %bb.bn ], [ false, %bb.ao ] ; 2 uses
  %.010640.i.us.us = phi i32 [ %i.qn, %bb.bn ], [ %.098.i.us.us, %bb.ao ] ; 5 uses
  %i.lp = icmp slt i32 %i.lo, 17
  br i1 %i.lp, label %.preheader.i.i140.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us

.preheader.i.i140.i.us.us:                        ; preds = %.lr.ph.i208.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us
  %i.lq = phi i64 [ %i.me, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ], [ %.lcssa10031010.lcssa1031, %.lr.ph.i208.us.us ] ; 3 uses
  %i.lr = phi i32 [ %i.mj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ], [ %i.lo, %.lr.ph.i208.us.us ] ; 2 uses
  %i.ls = phi i64 [ %i.mf, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ], [ %.lcssa10031010.lcssa1031, %.lr.ph.i208.us.us ] ; 4 uses
  %i.lt = phi i64 [ %i.mg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ], [ %.lcssa10011006.lcssa1024, %.lr.ph.i208.us.us ] ; 6 uses
  %i.lu = phi i64 [ %i.mi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ], [ %.promoted.i.i141.i.us.us, %.lr.ph.i208.us.us ]
  %i.lv = shl i64 %i.lu, 8
  %.not.i.i.i144.i.us.us = icmp ult i64 %i.lt, %i.ls
  %i.lw = add i64 %i.lt, 1                        ; 4 uses
  br i1 %.not.i.i.i144.i.us.us, label %bb.ap, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.ap:                                            ; preds = %.preheader.i.i140.i.us.us
  %i.lx = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.lt
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !11  ; 2 uses
  %i.lz = icmp eq i8 %i.ly, -1
  br i1 %i.lz, label %bb.aq, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.aq:                                            ; preds = %bb.ap
  %i.ma = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.lw
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !11
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %bb.ar, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

bb.ar:                                            ; preds = %bb.aq
  %i.md = add i64 %i.lt, 2
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us: ; preds = %bb.aq, %bb.ar, %bb.ap, %.preheader.i.i140.i.us.us
  %i.me = phi i64 [ %i.lq, %bb.ap ], [ %i.lq, %bb.ar ], [ %i.lq, %.preheader.i.i140.i.us.us ], [ %i.lt, %bb.aq ] ; 2 uses
  %i.mf = phi i64 [ %i.ls, %bb.ap ], [ %i.ls, %bb.ar ], [ %i.ls, %.preheader.i.i140.i.us.us ], [ %i.lt, %bb.aq ]
  %i.mg = phi i64 [ %i.lw, %bb.ap ], [ %i.md, %bb.ar ], [ %i.lw, %.preheader.i.i140.i.us.us ], [ %i.lw, %bb.aq ] ; 2 uses
  %.0.i.i.i146.i.us.us = phi i8 [ %i.ly, %bb.ap ], [ -1, %bb.ar ], [ 0, %.preheader.i.i140.i.us.us ], [ -1, %bb.aq ]
  %i.mh = zext i8 %.0.i.i.i146.i.us.us to i64
  %i.mi = or disjoint i64 %i.lv, %i.mh            ; 3 uses
  %i.mj = add nsw i32 %i.lr, 8                    ; 2 uses
  %.old1.i.i147.i.us.us = icmp slt i32 %i.lr, 49
  br i1 %.old1.i.i147.i.us.us, label %.preheader.i.i140.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us, %.lr.ph.i208.us.us
  %.lcssa10041017.lcssa1041 = phi i64 [ %.lcssa10041017.lcssa1042, %.lr.ph.i208.us.us ], [ %i.mi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 7 uses
  %.lcssa10031010.lcssa1030 = phi i64 [ %.lcssa10031010.lcssa1031, %.lr.ph.i208.us.us ], [ %i.me, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 11 uses
  %.lcssa10011006.lcssa1023 = phi i64 [ %.lcssa10011006.lcssa1024, %.lr.ph.i208.us.us ], [ %i.mg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 9 uses
  %.promoted.i.i.us.us = phi i64 [ %.promoted.i.i141.i.us.us, %.lr.ph.i208.us.us ], [ %i.mi, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 7 uses
  %i.mk = phi i32 [ %i.lo, %.lr.ph.i208.us.us ], [ %i.mj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i145.i.us.us ] ; 3 uses
  %i.ml = add nsw i32 %i.mk, -8                   ; 2 uses
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = lshr i64 %.promoted.i.i.us.us, %i.mm
  %i.mo = and i64 %i.mn, 255
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.mo ; 4 uses
  %i.mq = load i8, ptr %i.mp, align 2, !tbaa !22  ; 3 uses
  %i.mr = icmp ugt i8 %i.mq, 8
  br i1 %i.mr, label %bb.as, label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us

bb.as:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us
  %i.ms = zext i8 %i.mq to i32                    ; 2 uses
  %i.mt = add nsw i32 %i.ms, -8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !23
  %i.mw = zext i16 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mw
  %i.my = sub nsw i32 %i.mk, %i.ms
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = lshr i64 %.promoted.i.i.us.us, %i.mz
  %notmask.i.i215.us.us = shl nsw i32 -1, %i.mt
  %i.nb = xor i32 %notmask.i.i215.us.us, -1
  %i.nc = trunc i64 %i.na to i32
  %i.nd = and i32 %i.nc, %i.nb
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ne ; 2 uses
  %.pre19.i.i216.us.us = load i8, ptr %i.nf, align 2, !tbaa !22
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us

_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us: ; preds = %bb.as, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us
  %i.ng = phi i32 [ %i.ml, %bb.as ], [ %i.mk, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us ]
  %i.nh = phi i8 [ %.pre19.i.i216.us.us, %bb.as ], [ %i.mq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us ]
  %.0.i.i212.us.us = phi ptr [ %i.nf, %bb.as ], [ %i.mp, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState13FillBitWindowEv.exit.i.i210.us.us ]
  %i.ni = zext i8 %i.nh to i32
  %i.nj = sub nsw i32 %i.ng, %i.ni                ; 11 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.i.i212.us.us, i64 2
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !23 ; 2 uses
  %i.nm = icmp ugt i16 %i.nl, 255
  br i1 %i.nm, label %.loopexit.loopexit908.a, label %bb.at

bb.at:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us
  %i.nn = zext nneg i16 %i.nl to i32              ; 2 uses
  %i.no = lshr i32 %i.nn, 4                       ; 6 uses
  %i.np = and i32 %i.nn, 15                       ; 2 uses
  %.not121.i.us.us = icmp eq i32 %i.np, 0         ; 3 uses
  br i1 %.not121.i.us.us, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not127.i.us.us = icmp eq i32 %i.np, 1
  br i1 %.not127.i.us.us, label %bb.av, label %.loopexit.loopexit908.a

bb.av:                                            ; preds = %bb.au
  %i.nq = icmp slt i32 %i.nj, 17
  br i1 %i.nq, label %.preheader.i.i151.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us

.preheader.i.i151.i.us.us:                        ; preds = %bb.av, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us
  %i.nr = phi i64 [ %i.of, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ], [ %.lcssa10031010.lcssa1030, %bb.av ] ; 3 uses
  %i.ns = phi i32 [ %i.ok, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ], [ %i.nj, %bb.av ] ; 2 uses
  %i.nt = phi i64 [ %i.og, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ], [ %.lcssa10031010.lcssa1030, %bb.av ] ; 4 uses
  %i.nu = phi i64 [ %i.oh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ], [ %.lcssa10011006.lcssa1023, %bb.av ] ; 6 uses
  %i.nv = phi i64 [ %i.oj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ], [ %.promoted.i.i.us.us, %bb.av ]
  %i.nw = shl i64 %i.nv, 8
  %.not.i.i.i155.i.us.us = icmp ult i64 %i.nu, %i.nt
  %i.nx = add i64 %i.nu, 1                        ; 4 uses
  br i1 %.not.i.i.i155.i.us.us, label %bb.aw, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.aw:                                            ; preds = %.preheader.i.i151.i.us.us
  %i.ny = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.nu
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !11  ; 2 uses
  %i.oa = icmp eq i8 %i.nz, -1
  br i1 %i.oa, label %bb.ax, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.ax:                                            ; preds = %bb.aw
  %i.ob = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.nx
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !11
  %i.od = icmp eq i8 %i.oc, 0
  br i1 %i.od, label %bb.ay, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

bb.ay:                                            ; preds = %bb.ax
  %i.oe = add i64 %i.nu, 2
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us: ; preds = %bb.ax, %bb.ay, %bb.aw, %.preheader.i.i151.i.us.us
  %i.of = phi i64 [ %i.nr, %bb.aw ], [ %i.nr, %bb.ay ], [ %i.nr, %.preheader.i.i151.i.us.us ], [ %i.nu, %bb.ax ] ; 2 uses
  %i.og = phi i64 [ %i.nt, %bb.aw ], [ %i.nt, %bb.ay ], [ %i.nt, %.preheader.i.i151.i.us.us ], [ %i.nu, %bb.ax ]
  %i.oh = phi i64 [ %i.nx, %bb.aw ], [ %i.oe, %bb.ay ], [ %i.nx, %.preheader.i.i151.i.us.us ], [ %i.nx, %bb.ax ] ; 2 uses
  %.0.i.i.i157.i.us.us = phi i8 [ %i.nz, %bb.aw ], [ -1, %bb.ay ], [ 0, %.preheader.i.i151.i.us.us ], [ -1, %bb.ax ]
  %i.oi = zext i8 %.0.i.i.i157.i.us.us to i64
  %i.oj = or disjoint i64 %i.nw, %i.oi            ; 3 uses
  %i.ok = add nsw i32 %i.ns, 8                    ; 2 uses
  %.old1.i.i158.i.us.us = icmp slt i32 %i.ns, 49
  br i1 %.old1.i.i158.i.us.us, label %.preheader.i.i151.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us, %bb.av
  %.lcssa10041017.lcssa1040 = phi i64 [ %.lcssa10041017.lcssa1041, %bb.av ], [ %i.oj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %.lcssa10031010.lcssa1029 = phi i64 [ %.lcssa10031010.lcssa1030, %bb.av ], [ %i.of, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %.lcssa10011006.lcssa1022 = phi i64 [ %.lcssa10011006.lcssa1023, %bb.av ], [ %i.oh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %.promoted.i.i141.i.us.us746.a = phi i64 [ %.promoted.i.i.us.us, %bb.av ], [ %i.oj, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ] ; 2 uses
  %i.ol = phi i32 [ %i.nj, %bb.av ], [ %i.ok, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i156.i.us.us ]
  %i.om = add nsw i32 %i.ol, -1                   ; 2 uses
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = shl nuw i64 1, %i.on
  %i.op = and i64 %i.oo, %.promoted.i.i141.i.us.us746.a
  %.not128.i.us.us = icmp eq i64 %i.op, 0
  %i.oq = select i1 %.not128.i.us.us, i32 %i.hn, i32 %i.gw
  br label %bb.ba

bb.az:                                            ; preds = %bb.at
  %.not122.i.us.us = icmp eq i32 %i.no, 15
  br i1 %.not122.i.us.us, label %bb.ba, label %bb.bo

bb.ba:                                            ; preds = %bb.az, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us
  %.lcssa10041017.lcssa1039 = phi i64 [ %.lcssa10041017.lcssa1040, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %.lcssa10041017.lcssa1041, %bb.az ]
  %.lcssa10031010.lcssa1028 = phi i64 [ %.lcssa10031010.lcssa1029, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %.lcssa10031010.lcssa1030, %bb.az ]
  %.lcssa10011006.lcssa1021 = phi i64 [ %.lcssa10011006.lcssa1022, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %.lcssa10011006.lcssa1023, %bb.az ]
  %.promoted.i.i141.i.us.us745.a = phi i64 [ %.promoted.i.i141.i.us.us746.a, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %.promoted.i.i.us.us, %bb.az ] ; 2 uses
  %i.or = phi i32 [ %i.om, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ %i.nj, %bb.az ] ; 2 uses
  %.0102.i.us.us = phi i32 [ %i.oq, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit159.i.us.us ], [ 0, %bb.az ] ; 3 uses
  %i.os = sext i32 %.010640.i.us.us to i64
  %smax.i.us.us = call i32 @llvm.smax.i32(i32 %.010640.i.us.us, i32 %i.gx)
  %i.ot = add i32 %smax.i.us.us, 1                ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bl, %bb.ba
  %.lcssa10041019 = phi i64 [ %.lcssa10041017, %bb.bl ], [ %.lcssa10041017.lcssa1039, %bb.ba ] ; 5 uses
  %i.ou = phi i32 [ %i.qi, %bb.bl ], [ %i.or, %bb.ba ] ; 4 uses
  %.lcssa10031012 = phi i64 [ %.lcssa10031010, %bb.bl ], [ %.lcssa10031010.lcssa1028, %bb.ba ] ; 7 uses
  %.lcssa10011008 = phi i64 [ %.lcssa10011006, %bb.bl ], [ %.lcssa10011006.lcssa1021, %bb.ba ] ; 6 uses
  %.promoted.i.i141.i.us.us744.a = phi i64 [ %.promoted.i.i141.i.us.us742.a, %bb.bl ], [ %.promoted.i.i141.i.us.us745.a, %bb.ba ] ; 4 uses
  %.promoted.i.i164.i.us.us = phi i64 [ %.pre.i16178.i.us.us, %bb.bl ], [ %.promoted.i.i141.i.us.us745.a, %bb.ba ] ; 3 uses
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %bb.bl ], [ %i.os, %bb.ba ] ; 3 uses
  %i.ov = phi i32 [ %i.qj, %bb.bl ], [ %i.or, %bb.ba ] ; 6 uses
  %.0103.i.us.us = phi i32 [ %.1104.i.us.us, %bb.bl ], [ %i.no, %bb.ba ] ; 3 uses
  %i.ow = getelementptr inbounds [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %indvars.iv.i.us.us
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !87
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %i.oy ; 3 uses
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !110 ; 6 uses
  %i.pb = sext i16 %i.pa to i32
  %.not129.i.us.us = icmp eq i16 %i.pa, 0
  br i1 %.not129.i.us.us, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pc = icmp slt i32 %i.ov, 17
  br i1 %i.pc, label %.preheader.i.i163.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us

.preheader.i.i163.i.us.us:                        ; preds = %bb.bc, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us
  %i.pd = phi i64 [ %i.pr, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ], [ %.lcssa10031012, %bb.bc ] ; 3 uses
  %i.pe = phi i32 [ %i.pw, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ], [ %i.ov, %bb.bc ] ; 2 uses
  %i.pf = phi i64 [ %i.ps, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ], [ %.lcssa10031012, %bb.bc ] ; 4 uses
  %i.pg = phi i64 [ %i.pt, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ], [ %.lcssa10011008, %bb.bc ] ; 6 uses
  %i.ph = phi i64 [ %i.pv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ], [ %.promoted.i.i164.i.us.us, %bb.bc ]
  %i.pi = shl i64 %i.ph, 8
  %.not.i.i.i167.i.us.us = icmp ult i64 %i.pg, %i.pf
  %i.pj = add i64 %i.pg, 1                        ; 4 uses
  br i1 %.not.i.i.i167.i.us.us, label %bb.bd, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bd:                                            ; preds = %.preheader.i.i163.i.us.us
  %i.pk = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.pg
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !11  ; 2 uses
  %i.pm = icmp eq i8 %i.pl, -1
  br i1 %i.pm, label %bb.be, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.be:                                            ; preds = %bb.bd
  %i.pn = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.pj
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !11
  %i.pp = icmp eq i8 %i.po, 0
  br i1 %i.pp, label %bb.bf, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

bb.bf:                                            ; preds = %bb.be
  %i.pq = add i64 %i.pg, 2
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us: ; preds = %bb.be, %bb.bf, %bb.bd, %.preheader.i.i163.i.us.us
  %i.pr = phi i64 [ %i.pd, %bb.bd ], [ %i.pd, %bb.bf ], [ %i.pd, %.preheader.i.i163.i.us.us ], [ %i.pg, %bb.be ] ; 2 uses
  %i.ps = phi i64 [ %i.pf, %bb.bd ], [ %i.pf, %bb.bf ], [ %i.pf, %.preheader.i.i163.i.us.us ], [ %i.pg, %bb.be ]
  %i.pt = phi i64 [ %i.pj, %bb.bd ], [ %i.pq, %bb.bf ], [ %i.pj, %.preheader.i.i163.i.us.us ], [ %i.pj, %bb.be ] ; 2 uses
  %.0.i.i.i169.i.us.us = phi i8 [ %i.pl, %bb.bd ], [ -1, %bb.bf ], [ 0, %.preheader.i.i163.i.us.us ], [ -1, %bb.be ]
  %i.pu = zext i8 %.0.i.i.i169.i.us.us to i64
  %i.pv = or disjoint i64 %i.pi, %i.pu            ; 4 uses
  %i.pw = add nsw i32 %i.pe, 8                    ; 2 uses
  %.old1.i.i170.i.us.us = icmp slt i32 %i.pe, 49
  br i1 %.old1.i.i170.i.us.us, label %.preheader.i.i163.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us, %bb.bc
  %.lcssa10041018 = phi i64 [ %.lcssa10041019, %bb.bc ], [ %i.pv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %.lcssa10031011 = phi i64 [ %.lcssa10031012, %bb.bc ], [ %i.pr, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %.lcssa10011007 = phi i64 [ %.lcssa10011008, %bb.bc ], [ %i.pt, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %.promoted.i.i141.i.us.us743.a = phi i64 [ %.promoted.i.i141.i.us.us744.a, %bb.bc ], [ %i.pv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %.pre.i16179.i.us.us = phi i64 [ %.promoted.i.i164.i.us.us, %bb.bc ], [ %i.pv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ] ; 2 uses
  %i.px = phi i32 [ %i.ov, %bb.bc ], [ %i.pw, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i168.i.us.us ]
  %i.py = add nsw i32 %i.px, -1                   ; 3 uses
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = lshr i64 %.pre.i16179.i.us.us, %i.pz
  %.not130.i.us.us = trunc i64 %i.qa to i1
  %i.qb = and i32 %i.gw, %i.pb
  %i.qc = icmp eq i32 %i.qb, 0
  %or.cond134.i.us.us = select i1 %.not130.i.us.us, i1 %i.qc, i1 false
  br i1 %or.cond134.i.us.us, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us
  %i.qd = icmp sgt i16 %i.pa, -1
  br i1 %i.qd, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qe = sub i16 %i.pa, %i.ho
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.qf = add i16 %i.pa, %i.ho
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us
  %.099.i.us.us = phi i16 [ %i.qf, %bb.bi ], [ %i.qe, %bb.bh ], [ %i.pa, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit171.i.us.us ]
  store i16 %.099.i.us.us, ptr %i.oz, align 2, !tbaa !110
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bb
  %i.qg = add nsw i32 %.0103.i.us.us, -1
  %i.qh = icmp slt i32 %.0103.i.us.us, 1
  br i1 %i.qh, label %.loopexit17.i.us.us, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.lcssa10041017 = phi i64 [ %.lcssa10041018, %bb.bj ], [ %.lcssa10041019, %bb.bk ] ; 3 uses
  %i.qi = phi i32 [ %i.py, %bb.bj ], [ %i.ou, %bb.bk ] ; 3 uses
  %.lcssa10031010 = phi i64 [ %.lcssa10031011, %bb.bj ], [ %.lcssa10031012, %bb.bk ] ; 3 uses
  %.lcssa10011006 = phi i64 [ %.lcssa10011007, %bb.bj ], [ %.lcssa10011008, %bb.bk ] ; 3 uses
  %.promoted.i.i141.i.us.us742.a = phi i64 [ %.promoted.i.i141.i.us.us743.a, %bb.bj ], [ %.promoted.i.i141.i.us.us744.a, %bb.bk ] ; 2 uses
  %.pre.i16178.i.us.us = phi i64 [ %.pre.i16179.i.us.us, %bb.bj ], [ %.promoted.i.i164.i.us.us, %bb.bk ]
  %i.qj = phi i32 [ %i.py, %bb.bj ], [ %i.ov, %bb.bk ] ; 2 uses
  %.1104.i.us.us = phi i32 [ %.0103.i.us.us, %bb.bj ], [ %i.qg, %bb.bk ]
  %indvars.iv.next.i.us.us = add nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %lftr.wideiv.i.us.us = trunc i64 %indvars.iv.next.i.us.us to i32
  %exitcond.not.i213.us.us = icmp eq i32 %i.ot, %lftr.wideiv.i.us.us
  br i1 %exitcond.not.i213.us.us, label %.loopexit17.thread.i.us.us, label %bb.bb, !llvm.loop !188

.loopexit17.thread.i.us.us:                       ; preds = %bb.bl
  %.not132128.i.us.us = icmp eq i32 %.0102.i.us.us, 0
  br i1 %.not132128.i.us.us, label %bb.bn, label %.loopexit.loopexit908.a

.loopexit17.i.us.us:                              ; preds = %bb.bk
  %i.qk = trunc nsw i64 %indvars.iv.i.us.us to i32 ; 3 uses
  %.not132.i.us.us = icmp eq i32 %.0102.i.us.us, 0
  br i1 %.not132.i.us.us, label %bb.bn, label %10

10:                                               ; preds = %.loopexit17.i.us.us
  %.not1319.i.us.us = icmp slt i32 %i.gx, %i.qk
  br i1 %.not1319.i.us.us, label %.loopexit.loopexit908.a, label %bb.bm

bb.bm:                                            ; preds = %10
  %i.ql = trunc i32 %.0102.i.us.us to i16
  store i16 %i.ql, ptr %i.oz, align 2, !tbaa !110
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.loopexit17.i.us.us, %.loopexit17.thread.i.us.us
  %.lcssa10041017.lcssa1043 = phi i64 [ %.lcssa10041017, %.loopexit17.thread.i.us.us ], [ %.lcssa10041019, %.loopexit17.i.us.us ], [ %.lcssa10041019, %bb.bm ] ; 2 uses
  %.lcssa10151037 = phi i32 [ %i.qi, %.loopexit17.thread.i.us.us ], [ %i.ou, %.loopexit17.i.us.us ], [ %i.ou, %bb.bm ]
  %.lcssa10031010.lcssa1032 = phi i64 [ %.lcssa10031010, %.loopexit17.thread.i.us.us ], [ %.lcssa10031012, %.loopexit17.i.us.us ], [ %.lcssa10031012, %bb.bm ] ; 2 uses
  %.lcssa10011006.lcssa1025 = phi i64 [ %.lcssa10011006, %.loopexit17.thread.i.us.us ], [ %.lcssa10011008, %.loopexit17.i.us.us ], [ %.lcssa10011008, %bb.bm ] ; 2 uses
  %.promoted.i.i141.i.us.us741 = phi i64 [ %.promoted.i.i141.i.us.us742.a, %.loopexit17.thread.i.us.us ], [ %.promoted.i.i141.i.us.us744.a, %.loopexit17.i.us.us ], [ %.promoted.i.i141.i.us.us744.a, %bb.bm ]
  %.210811131.i.us.us = phi i32 [ %i.ot, %.loopexit17.thread.i.us.us ], [ %i.qk, %.loopexit17.i.us.us ], [ %i.qk, %bb.bm ] ; 2 uses
  %i.qm = phi i32 [ %i.qj, %.loopexit17.thread.i.us.us ], [ %i.ov, %.loopexit17.i.us.us ], [ %i.ov, %bb.bm ]
  %i.qn = add nsw i32 %.210811131.i.us.us, 1      ; 2 uses
  %.not.not.i.us.us = icmp slt i32 %.210811131.i.us.us, %i.gx
  br i1 %.not.not.i.us.us, label %.lr.ph.i208.us.us, label %.loopexit19.i.us.us, !llvm.loop !189

bb.bo:                                            ; preds = %bb.az
  %i.qo = icmp eq i32 %.010640.i.us.us, %.098.i.us.us
  %or.cond.i214.us.us = and i1 %i.hh, %i.qo
  %i.qp = icmp eq i32 %.6334598.us.us, 0
  %or.cond420.us.us = select i1 %or.cond.i214.us.us, i1 %i.qp, i1 false ; 2 uses
  %i.qq = shl nuw nsw i32 1, %i.no
  %.not123.i.us.us = icmp eq i32 %i.no, 0
  br i1 %.not123.i.us.us, label %.loopexit19.i.us.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hh, label %.split.i.us.us, label %.loopexit.loopexit909

.split.i.us.us:                                   ; preds = %bb.bp
  %i.qr = icmp slt i32 %i.nj, 17
  br i1 %i.qr, label %.preheader.i.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us

.preheader.i.i.us.us:                             ; preds = %.split.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us
  %i.qs = phi i64 [ %i.rg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ], [ %.lcssa10031010.lcssa1030, %.split.i.us.us ] ; 3 uses
  %i.qt = phi i32 [ %i.rl, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ], [ %i.nj, %.split.i.us.us ] ; 2 uses
  %i.qu = phi i64 [ %i.rh, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ], [ %.lcssa10031010.lcssa1030, %.split.i.us.us ] ; 4 uses
  %i.qv = phi i64 [ %i.ri, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ], [ %.lcssa10011006.lcssa1023, %.split.i.us.us ] ; 6 uses
  %i.qw = phi i64 [ %i.rk, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ], [ %.promoted.i.i.us.us, %.split.i.us.us ]
  %i.qx = shl i64 %i.qw, 8
  %.not.i.i.i240.us.us = icmp ult i64 %i.qv, %i.qu
  %i.qy = add i64 %i.qv, 1                        ; 4 uses
  br i1 %.not.i.i.i240.us.us, label %bb.bq, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.bq:                                            ; preds = %.preheader.i.i.us.us
  %i.qz = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.qv
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !11  ; 2 uses
  %i.rb = icmp eq i8 %i.ra, -1
  br i1 %i.rb, label %bb.br, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.br:                                            ; preds = %bb.bq
  %i.rc = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.qy
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !11
  %i.re = icmp eq i8 %i.rd, 0
  br i1 %i.re, label %bb.bs, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

bb.bs:                                            ; preds = %bb.br
  %i.rf = add i64 %i.qv, 2
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us: ; preds = %bb.br, %bb.bs, %bb.bq, %.preheader.i.i.us.us
  %i.rg = phi i64 [ %i.qs, %bb.bq ], [ %i.qs, %bb.bs ], [ %i.qs, %.preheader.i.i.us.us ], [ %i.qv, %bb.br ] ; 2 uses
  %i.rh = phi i64 [ %i.qu, %bb.bq ], [ %i.qu, %bb.bs ], [ %i.qu, %.preheader.i.i.us.us ], [ %i.qv, %bb.br ]
  %i.ri = phi i64 [ %i.qy, %bb.bq ], [ %i.rf, %bb.bs ], [ %i.qy, %.preheader.i.i.us.us ], [ %i.qy, %bb.br ] ; 2 uses
  %.0.i.i.i241.us.us = phi i8 [ %i.ra, %bb.bq ], [ -1, %bb.bs ], [ 0, %.preheader.i.i.us.us ], [ -1, %bb.br ]
  %i.rj = zext i8 %.0.i.i.i241.us.us to i64
  %i.rk = or disjoint i64 %i.qx, %i.rj            ; 3 uses
  %i.rl = add nsw i32 %i.qt, 8                    ; 2 uses
  %.old1.i.i.us.us = icmp slt i32 %i.qt, 49
  br i1 %.old1.i.i.us.us, label %.preheader.i.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us, %.split.i.us.us
  %.lcssa11061178 = phi i64 [ %.lcssa10031010.lcssa1030, %.split.i.us.us ], [ %i.rg, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 2 uses
  %.lcssa11041158 = phi i64 [ %.lcssa10011006.lcssa1023, %.split.i.us.us ], [ %i.ri, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 2 uses
  %.lcssa11071138 = phi i64 [ %.lcssa10041017.lcssa1041, %.split.i.us.us ], [ %i.rk, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ] ; 2 uses
  %i.rm = phi i32 [ %i.nj, %.split.i.us.us ], [ %i.rl, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ]
  %i.rn = phi i64 [ %.promoted.i.i.us.us, %.split.i.us.us ], [ %i.rk, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i.us.us ]
  %i.ro = sub nsw i32 %i.rm, %i.no                ; 3 uses
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = lshr i64 %i.rn, %i.rp
  %i.rr = zext nneg i32 %i.no to i64
  %notmask.i.us.us = shl nsw i64 -1, %i.rr
  %i.rs = xor i64 %notmask.i.us.us, -1
  %i.rt = and i64 %i.rq, %i.rs
  %i.ru = trunc nuw nsw i64 %i.rt to i32
  %i.rv = add nuw nsw i32 %i.qq, %i.ru
  br i1 %.010141.i.us.us, label %.loopexit.loopexit909, label %.thread13.i205.us.us

.loopexit19.i.us.us:                              ; preds = %bb.bn, %bb.bo
  %.lcssa11061179 = phi i64 [ %.lcssa10031010.lcssa1030, %bb.bo ], [ %.lcssa10031010.lcssa1032, %bb.bn ] ; 2 uses
  %.lcssa11041159 = phi i64 [ %.lcssa10011006.lcssa1023, %bb.bo ], [ %.lcssa10011006.lcssa1025, %bb.bn ] ; 2 uses
  %.lcssa11071139 = phi i64 [ %.lcssa10041017.lcssa1041, %bb.bo ], [ %.lcssa10041017.lcssa1043, %bb.bn ] ; 2 uses
  %.lcssa10971118 = phi i32 [ %i.nj, %bb.bo ], [ %.lcssa10151037, %bb.bn ] ; 2 uses
  %.17.us.us = phi i32 [ 1, %bb.bo ], [ %.6334598.us.us, %bb.bn ]
  %.6320.us.us = phi i1 [ %or.cond420.us.us, %bb.bo ], [ false, %bb.bn ]
  %.010636.i.us.us = phi i32 [ %.010640.i.us.us, %bb.bo ], [ %i.qn, %bb.bn ]
  %.010133.i.us.us = phi i1 [ %.010141.i.us.us, %bb.bo ], [ %.not121.i.us.us, %bb.bn ]
  br i1 %.010133.i.us.us, label %.loopexit.loopexit909, label %.thread13.i205.us.us

.thread13.i205.us.us:                             ; preds = %.loopexit19.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us, %bb.ao
  %.lcssa11061167 = phi i64 [ %.lcssa11061169, %bb.ao ], [ %.lcssa11061178, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.lcssa11061179, %.loopexit19.i.us.us ] ; 2 uses
  %.lcssa11041147 = phi i64 [ %.lcssa11041149, %bb.ao ], [ %.lcssa11041158, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.lcssa11041159, %.loopexit19.i.us.us ] ; 2 uses
  %.lcssa11071127 = phi i64 [ %.lcssa11071129, %bb.ao ], [ %.lcssa11071138, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.lcssa11071139, %.loopexit19.i.us.us ] ; 2 uses
  %.lcssa10971117 = phi i32 [ %.lcssa10971109, %bb.ao ], [ %i.ro, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.lcssa10971118, %.loopexit19.i.us.us ] ; 2 uses
  %.16.us.us = phi i32 [ %.6334598.us.us, %bb.ao ], [ %i.rv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.17.us.us, %.loopexit19.i.us.us ] ; 3 uses
  %.5319.us.us = phi i1 [ false, %bb.ao ], [ %or.cond420.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.6320.us.us, %.loopexit19.i.us.us ] ; 2 uses
  %.316.i.us.us = phi i32 [ %.098.i.us.us, %bb.ao ], [ %.010640.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.010636.i.us.us, %.loopexit19.i.us.us ] ; 2 uses
  %i.rw = icmp slt i32 %.16.us.us, 1
  %.not12446.i.us.us = icmp sgt i32 %.316.i.us.us, %i.gx
  %or.cond49.i.us.us = or i1 %i.rw, %.not12446.i.us.us
  br i1 %or.cond49.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us, label %.lr.ph48.i.us.us

.lr.ph48.i.us.us:                                 ; preds = %.thread13.i205.us.us
  %i.rx = sext i32 %.316.i.us.us to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.cc, %.lr.ph48.i.us.us
  %.lcssa10511066 = phi i64 [ %.lcssa11061167, %.lr.ph48.i.us.us ], [ %.lcssa10511065, %bb.cc ] ; 4 uses
  %.lcssa10491062 = phi i64 [ %.lcssa11041147, %.lr.ph48.i.us.us ], [ %.lcssa10491061, %bb.cc ] ; 3 uses
  %.lcssa10521058 = phi i64 [ %.lcssa11071127, %.lr.ph48.i.us.us ], [ %.lcssa10521057, %bb.cc ] ; 3 uses
  %i.ry = phi i32 [ %.lcssa10971117, %.lr.ph48.i.us.us ], [ %i.tj, %bb.cc ] ; 4 uses
  %indvars.iv73.i.us.us = phi i64 [ %i.rx, %.lr.ph48.i.us.us ], [ %indvars.iv.next74.i.us.us, %bb.cc ] ; 2 uses
  %i.rz = getelementptr inbounds [4 x i8], ptr @_ZN3jxl4jpegL17kJPEGNaturalOrderE, i64 %indvars.iv73.i.us.us
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !87
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %i.sb ; 2 uses
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !110 ; 6 uses
  %i.se = sext i16 %i.sd to i32
  %.not125.i.us.us = icmp eq i16 %i.sd, 0
  br i1 %.not125.i.us.us, label %bb.cc, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.sf = icmp slt i32 %i.ry, 17
  br i1 %i.sf, label %.preheader.i.i175.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us

.preheader.i.i175.i.us.us:                        ; preds = %bb.bu, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us
  %i.sg = phi i64 [ %i.su, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ], [ %.lcssa10511066, %bb.bu ] ; 3 uses
  %i.sh = phi i32 [ %i.sz, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ], [ %i.ry, %bb.bu ] ; 2 uses
  %i.si = phi i64 [ %i.sv, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ], [ %.lcssa10511066, %bb.bu ] ; 4 uses
  %i.sj = phi i64 [ %i.sw, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ], [ %.lcssa10491062, %bb.bu ] ; 6 uses
  %i.sk = phi i64 [ %i.sy, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ], [ %.lcssa10521058, %bb.bu ]
  %i.sl = shl i64 %i.sk, 8
  %.not.i.i.i179.i.us.us = icmp ult i64 %i.sj, %i.si
  %i.sm = add i64 %i.sj, 1                        ; 4 uses
  br i1 %.not.i.i.i179.i.us.us, label %bb.bv, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

bb.bv:                                            ; preds = %.preheader.i.i175.i.us.us
  %i.sn = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.sj
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !11  ; 2 uses
  %i.sp = icmp eq i8 %i.so, -1
  br i1 %i.sp, label %bb.bw, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

bb.bw:                                            ; preds = %bb.bv
  %i.sq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.sm
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !11
  %i.ss = icmp eq i8 %i.sr, 0
  br i1 %i.ss, label %bb.bx, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

bb.bx:                                            ; preds = %bb.bw
  %i.st = add i64 %i.sj, 2
  br label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us: ; preds = %bb.bw, %bb.bx, %bb.bv, %.preheader.i.i175.i.us.us
  %i.su = phi i64 [ %i.sg, %bb.bv ], [ %i.sg, %bb.bx ], [ %i.sg, %.preheader.i.i175.i.us.us ], [ %i.sj, %bb.bw ] ; 2 uses
  %i.sv = phi i64 [ %i.si, %bb.bv ], [ %i.si, %bb.bx ], [ %i.si, %.preheader.i.i175.i.us.us ], [ %i.sj, %bb.bw ]
  %i.sw = phi i64 [ %i.sm, %bb.bv ], [ %i.st, %bb.bx ], [ %i.sm, %.preheader.i.i175.i.us.us ], [ %i.sm, %bb.bw ] ; 2 uses
  %.0.i.i.i181.i.us.us = phi i8 [ %i.so, %bb.bv ], [ -1, %bb.bx ], [ 0, %.preheader.i.i175.i.us.us ], [ -1, %bb.bw ]
  %i.sx = zext i8 %.0.i.i.i181.i.us.us to i64
  %i.sy = or disjoint i64 %i.sl, %i.sx            ; 2 uses
  %i.sz = add nsw i32 %i.sh, 8                    ; 2 uses
  %.old1.i.i182.i.us.us = icmp slt i32 %i.sh, 49
  br i1 %.old1.i.i182.i.us.us, label %.preheader.i.i175.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us

_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us: ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us, %bb.bu
  %.lcssa10511064 = phi i64 [ %.lcssa10511066, %bb.bu ], [ %i.su, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ]
  %.lcssa10491060 = phi i64 [ %.lcssa10491062, %bb.bu ], [ %i.sw, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ]
  %.lcssa10521056 = phi i64 [ %.lcssa10521058, %bb.bu ], [ %i.sy, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ] ; 2 uses
  %i.ta = phi i32 [ %i.ry, %bb.bu ], [ %i.sz, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState11GetNextByteEv.exit.i.i180.i.us.us ]
  %i.tb = add nsw i32 %i.ta, -1                   ; 2 uses
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = lshr i64 %.lcssa10521056, %i.tc
  %.not126.i.us.us = trunc i64 %i.td to i1
  %i.te = and i32 %i.gw, %i.se
  %i.tf = icmp eq i32 %i.te, 0
  %or.cond137.i.us.us = select i1 %.not126.i.us.us, i1 %i.tf, i1 false
  br i1 %or.cond137.i.us.us, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us
  %i.tg = icmp sgt i16 %i.sd, -1
  br i1 %i.tg, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.th = sub i16 %i.sd, %i.ho
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.ti = add i16 %i.sd, %i.ho
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us
  %.0.i.us.us = phi i16 [ %i.ti, %bb.ca ], [ %i.th, %bb.bz ], [ %i.sd, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit183.i.us.us ]
  store i16 %.0.i.us.us, ptr %i.sc, align 2, !tbaa !110
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bt
  %.lcssa10511065 = phi i64 [ %.lcssa10511064, %bb.cb ], [ %.lcssa10511066, %bb.bt ] ; 2 uses
  %.lcssa10491061 = phi i64 [ %.lcssa10491060, %bb.cb ], [ %.lcssa10491062, %bb.bt ] ; 2 uses
  %.lcssa10521057 = phi i64 [ %.lcssa10521056, %bb.cb ], [ %.lcssa10521058, %bb.bt ] ; 2 uses
  %i.tj = phi i32 [ %i.tb, %bb.cb ], [ %i.ry, %bb.bt ] ; 2 uses
  %indvars.iv.next74.i.us.us = add nsw i64 %indvars.iv73.i.us.us, 1 ; 2 uses
  %lftr.wideiv76.i.us.us = trunc i64 %indvars.iv.next74.i.us.us to i32
  %exitcond77.not.i.us.us = icmp eq i32 %i.hp, %lftr.wideiv76.i.us.us
  br i1 %exitcond77.not.i.us.us, label %_ZN3jxl4jpeg12_GLOBAL__N_114DecodeDCTBlockEPKNS0_17HuffmanTableEntryES4_iiiPiPbS5_PNS1_14BitReaderStateEPNS0_8JPEGDataEPsSB_.exit.us.us, label %bb.bt, !llvm.loop !190
end_hunk_1
begin_hunk_2_@_ZN3jxl4jpeg12_GLOBAL__N_111ProcessScanEPKhmRKNSt3__16vectorINS0_17HuffmanTableEntryENS4_9allocatorIS6_EEEESB_PA64_tbPmPNS0_8JPEGDataE:bb.a
  %.not4.i.i.i.i.i.i.i.i.i232.us.us = icmp eq ptr %i.afa, %i.afb
  br i1 %.not4.i.i.i.i.i.i.i.i.i232.us.us, label %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us

.lr.ph.i.i.i.i.i.i.i.i.i233.us.us:                ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us
  %i.afc = phi ptr [ %i.afe, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us ], [ %i.aex, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i234.us.us = phi ptr [ %i.afd, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us ], [ %i.afa, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us ]
  %i.afd = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i234.us.us, i64 -8 ; 3 uses
  %i.afe = getelementptr inbounds i8, ptr %i.afc, i64 -8 ; 3 uses
  %i.aff = load i64, ptr %i.afd, align 4, !noalias !228
  store i64 %i.aff, ptr %i.afe, align 4, !noalias !228
  %.not.i.i.i.i.i.i.i.i.i235.us.us = icmp eq ptr %i.afd, %i.afb
  br i1 %.not.i.i.i.i.i.i.i.i.i235.us.us, label %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us, !llvm.loop !210

_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us
  %storemerge.i.i236.us.us = phi ptr [ %i.aex, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i.i.us.us ], [ %i.afe, %.lr.ph.i.i.i.i.i.i.i.i.i233.us.us ]
  store ptr %storemerge.i.i236.us.us, ptr %i.ht, align 8, !tbaa !102
  store ptr %i.aez, ptr %i.hu, align 8, !tbaa !102
  %i.afg = load ptr, ptr %i.hv, align 8, !tbaa !102
  store ptr %i.aey, ptr %i.hv, align 8, !tbaa !102
  %.not.i4.i.i237.us.us = icmp eq ptr %i.afb, null
  br i1 %.not.i4.i.i237.us.us, label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us
  %i.afh = ptrtoint ptr %i.afg to i64
  %i.afi = ptrtoint ptr %i.afb to i64
  %i.afj = sub i64 %i.afh, %i.afi
  call void @_ZdlPvm(ptr noundef nonnull %i.afb, i64 noundef %i.afj) #17
  br label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us

bb.ds:                                            ; preds = %bb.dp
  %.sroa.5.0.insert.ext250.us.us = zext nneg i32 %.0309.us.us902 to i64
  %.sroa.5.0.insert.shift251.us.us = shl nuw nsw i64 %.sroa.5.0.insert.ext250.us.us, 32
  %.sroa.0244.0.insert.ext246.us.us = zext i32 %.4341595.us.us to i64
  %.sroa.0244.0.insert.insert248.us.us = or disjoint i64 %.sroa.5.0.insert.shift251.us.us, %.sroa.0244.0.insert.ext246.us.us
  store i64 %.sroa.0244.0.insert.insert248.us.us, ptr %i.aeg, align 4
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  br label %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us

_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us: ; preds = %bb.ds, %bb.dr, %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us
  %.0.i238.us.us = phi ptr [ %i.afk, %bb.ds ], [ %i.aez, %_ZNSt3__114__split_bufferIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i.i.us.us ], [ %i.aez, %bb.dr ]
  store ptr %.0.i238.us.us, ptr %i.hu, align 8, !tbaa !101
  br label %.critedge198.us.us

.critedge198.us.us:                               ; preds = %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us, %bb.do, %bb.cp, %bb.an
  %.lcssa11061168 = phi i64 [ %.lcssa11061164, %bb.do ], [ %.lcssa11061164, %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us ], [ %.lcssa11061169, %bb.an ], [ %.lcssa11061172, %bb.cp ] ; 3 uses
  %.lcssa11041148 = phi i64 [ %.lcssa11041144, %bb.do ], [ %.lcssa11041144, %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us ], [ %.lcssa11041149, %bb.an ], [ %.lcssa11041152, %bb.cp ] ; 3 uses
  %.lcssa11071128 = phi i64 [ %.lcssa11071124, %bb.do ], [ %.lcssa11071124, %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us ], [ %.lcssa11071129, %bb.an ], [ %.lcssa11071132, %bb.cp ] ; 3 uses
  %.lcssa10971113 = phi i32 [ %.lcssa10971114, %bb.do ], [ %.lcssa10971114, %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us ], [ %.lcssa10971109, %bb.an ], [ %.lcssa10971111, %bb.cp ] ; 3 uses
  %.7335372380.us.us = phi i32 [ %.7335.us.us903, %bb.do ], [ %.7335.us.us903, %_ZNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE9push_backB8nn180100ERKS4_.exit.us.us ], [ %.6334598.us.us, %bb.an ], [ %.6334598.us.us, %bb.cp ] ; 3 uses
  %i.afl = add nsw i32 %.4341595.us.us, 1         ; 3 uses
  %i.afm = add nuw nsw i32 %.0173599.us.us, 1     ; 2 uses
  %exitcond737.not = icmp eq i32 %i.afm, %i.jw
  br i1 %exitcond737.not, label %..thread381_crit_edge.us.us, label %bb.ah, !llvm.loop !211

..thread381_crit_edge.us.us:                      ; preds = %.critedge198.us.us
  %i.afn = add nuw nsw i32 %.0174605.us.us, 1     ; 2 uses
  %exitcond738.not = icmp eq i32 %i.afn, %i.jv
  br i1 %exitcond738.not, label %._crit_edge606.us.loopexit, label %.preheader.us.us, !llvm.loop !212

._crit_edge606.us.loopexit:                       ; preds = %..thread381_crit_edge.us.us
  %.pre753 = load i32, ptr %i.ea, align 8, !tbaa !218 ; 2 uses
  br label %._crit_edge606.us

._crit_edge606.us:                                ; preds = %.preheader.lr.ph.us, %._crit_edge606.us.loopexit, %bb.ag
  %.lcssa11061168.lcssa.lcssa1241 = phi i64 [ %.lcssa11061168.lcssa.lcssa1242, %bb.ag ], [ %.lcssa11061168, %._crit_edge606.us.loopexit ], [ %.lcssa11061168.lcssa.lcssa1242, %.preheader.lr.ph.us ] ; 2 uses
  %.lcssa11041148.lcssa.lcssa1232 = phi i64 [ %.lcssa11041148.lcssa.lcssa1233, %bb.ag ], [ %.lcssa11041148, %._crit_edge606.us.loopexit ], [ %.lcssa11041148.lcssa.lcssa1233, %.preheader.lr.ph.us ] ; 2 uses
  %.lcssa11071128.lcssa.lcssa1223 = phi i64 [ %.lcssa11071128.lcssa.lcssa1224, %bb.ag ], [ %.lcssa11071128, %._crit_edge606.us.loopexit ], [ %.lcssa11071128.lcssa.lcssa1224, %.preheader.lr.ph.us ] ; 2 uses
  %.lcssa10971113.lcssa.lcssa1215 = phi i32 [ %.lcssa10971113.lcssa.lcssa1216, %bb.ag ], [ %.lcssa10971113, %._crit_edge606.us.loopexit ], [ %.lcssa10971113.lcssa.lcssa1216, %.preheader.lr.ph.us ] ; 2 uses
  %.pre755 = phi i32 [ %.pre756.a, %bb.ag ], [ %.pre753, %._crit_edge606.us.loopexit ], [ %.pre756.a, %.preheader.lr.ph.us ] ; 2 uses
  %i.afo = phi i32 [ %i.iu, %bb.ag ], [ %.pre753, %._crit_edge606.us.loopexit ], [ %i.iu, %.preheader.lr.ph.us ] ; 4 uses
  %.3340.lcssa.us = phi i32 [ %.2339618.us, %bb.ag ], [ %i.afl, %._crit_edge606.us.loopexit ], [ %.2339618.us, %.preheader.lr.ph.us ] ; 2 uses
  %.5333.lcssa.us = phi i32 [ %.4332619.us, %bb.ag ], [ %.7335372380.us.us, %._crit_edge606.us.loopexit ], [ %.4332619.us, %.preheader.lr.ph.us ] ; 2 uses
  %i.afp = add nuw nsw i64 %.0175620.us, 1        ; 2 uses
  %i.afq = zext i32 %i.afo to i64
  %i.afr = icmp samesign ult i64 %i.afp, %i.afq
  br i1 %i.afr, label %.lr.ph622.us, label %.thread397.us.loopexit, !llvm.loop !213

.thread397.us.loopexit:                           ; preds = %._crit_edge606.us
  store i32 %.lcssa10971113.lcssa.lcssa1215, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1223, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1232, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1241, ptr %i.hm, align 8
  br label %.thread397.us

.thread397.us:                                    ; preds = %.thread397.us.loopexit, %bb.af
  %.pre759 = phi i32 [ %.pre760.a, %bb.af ], [ %.pre755, %.thread397.us.loopexit ] ; 2 uses
  %i.afs = phi i32 [ %i.ir, %bb.af ], [ %i.afo, %.thread397.us.loopexit ] ; 2 uses
  %i.aft = phi i32 [ 0, %bb.af ], [ %i.afo, %.thread397.us.loopexit ] ; 2 uses
  %.2339.lcssa.us = phi i32 [ %.1338625.us, %bb.af ], [ %.3340.lcssa.us, %.thread397.us.loopexit ] ; 2 uses
  %.4332.lcssa.us = phi i32 [ %.3331.us, %bb.af ], [ %.5333.lcssa.us, %.thread397.us.loopexit ] ; 3 uses
  %i.afu = add nuw nsw i32 %.0176628.us, 1        ; 2 uses
  %exitcond739.not = icmp eq i32 %i.afu, %i.he
  br i1 %exitcond739.not, label %._crit_edge631.us, label %bb.x, !llvm.loop !214

._crit_edge631.us:                                ; preds = %.thread397.us
  %i.afv = add nuw nsw i32 %.0177639.us, 1        ; 2 uses
  %exitcond740.not = icmp eq i32 %i.afv, %i.hc
  br i1 %exitcond740.not, label %._crit_edge641, label %.preheader430.us, !llvm.loop !215

.split.us647:                                     ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

.split.us:                                        ; preds = %bb.dl
  store i32 %.lcssa10971113.lcssa.lcssa1216, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1224, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1233, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1242, ptr %i.hm, align 8
  store i32 %.lcssa10971113.lcssa1183, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa1191, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa1199, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa1207, ptr %i.hm, align 8
  store i32 %.lcssa10971115, ptr %i.hj, align 8
  store i64 %.lcssa11071125, ptr %i.hk, align 8
  store i64 %.lcssa11041145, ptr %i.hl, align 8
  store i64 %.lcssa11061165, ptr %i.hm, align 8
  call void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.hq) #16
  unreachable

.split610.us:                                     ; preds = %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8nn180100Em.exit.i.i.us.us
  store i32 %.lcssa10971113.lcssa.lcssa1216, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1224, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1233, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1242, ptr %i.hm, align 8
  store i32 %.lcssa10971113.lcssa1183, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa1191, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa1199, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa1207, ptr %i.hm, align 8
  store i32 %.lcssa10971115, ptr %i.hj, align 8
  store i64 %.lcssa11071125, ptr %i.hk, align 8
  store i64 %.lcssa11041145, ptr %i.hl, align 8
  store i64 %.lcssa11061165, ptr %i.hm, align 8
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

.split612.us:                                     ; preds = %bb.dq
  store i32 %.lcssa10971113.lcssa.lcssa1216, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1224, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1233, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1242, ptr %i.hm, align 8
  store i32 %.lcssa10971113.lcssa1183, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa1191, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa1199, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa1207, ptr %i.hm, align 8
  store i32 %.lcssa10971114, ptr %i.hj, align 8
  store i64 %.lcssa11071124, ptr %i.hk, align 8
  store i64 %.lcssa11041144, ptr %i.hl, align 8
  store i64 %.lcssa11061164, ptr %i.hm, align 8
  call void @_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ht) #16
  unreachable

.split615.us:                                     ; preds = %_ZNKSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEE11__recommendB8nn180100Em.exit.i.i.us.us
  store i32 %.lcssa10971113.lcssa.lcssa1216, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1224, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1233, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1242, ptr %i.hm, align 8
  store i32 %.lcssa10971113.lcssa1183, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa1191, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa1199, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa1207, ptr %i.hm, align 8
  store i32 %.lcssa10971114, ptr %i.hj, align 8
  store i64 %.lcssa11071124, ptr %i.hk, align 8
  store i64 %.lcssa11041144, ptr %i.hl, align 8
  store i64 %.lcssa11061164, ptr %i.hm, align 8
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #16
  unreachable

._crit_edge641:                                   ; preds = %._crit_edge631.us
  %i.afw = icmp sgt i32 %.4332.lcssa.us, 0
  br i1 %i.afw, label %.loopexit, label %._crit_edge641.thread

._crit_edge641.thread:                            ; preds = %.preheader430.lr.ph, %.preheader432, %._crit_edge641
  %i.afx = call fastcc noundef zeroext i1 @_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState12FinishStreamEPNS0_8JPEGDataEPm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %7, ptr noundef %6) #18
  br i1 %i.afx, label %bb.dt, label %.loopexit

bb.dt:                                            ; preds = %._crit_edge641.thread
  %i.afy = load i64, ptr %6, align 8, !tbaa !13
  %i.afz = icmp ugt i64 %i.afy, %1
  %spec.select421 = zext i1 %i.afz to i32
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.cw, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit139.i.us.us
  store i32 %.lcssa10971113.lcssa.lcssa1216, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1224, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1233, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1242, ptr %i.hm, align 8
  store i32 %.lcssa10971113.lcssa1183, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa1191, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa1199, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa1207, ptr %i.hm, align 8
  store i32 %.lcssa10971111, ptr %i.hj, align 8
  store i64 %.lcssa11071132, ptr %i.hk, align 8
  store i64 %.lcssa11041152, ptr %i.hl, align 8
  store i64 %.lcssa11061172, ptr %i.hm, align 8
  store i64 %.lcssa10791086, ptr %i.hl, align 8
  store i64 %.lcssa10811093, ptr %i.hm, align 8
  store i32 %i.yw, ptr %i.hj, align 8, !tbaa !111
  store i64 %.lcssa10821102, ptr %i.hk, align 8
  br label %.loopexit

.loopexit.loopexit908.a:                          ; preds = %10, %.loopexit17.thread.i.us.us, %bb.au, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us
  %.lcssa10041017.lcssa1044 = phi i64 [ %.lcssa10041019, %10 ], [ %.lcssa10041017, %.loopexit17.thread.i.us.us ], [ %.lcssa10041017.lcssa1041, %bb.au ], [ %.lcssa10041017.lcssa1041, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us ]
  %.lcssa10151035 = phi i32 [ %i.ou, %10 ], [ %i.qi, %.loopexit17.thread.i.us.us ], [ %i.nj, %bb.au ], [ %i.nj, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us ]
  %.lcssa10031010.lcssa1033 = phi i64 [ %.lcssa10031012, %10 ], [ %.lcssa10031010, %.loopexit17.thread.i.us.us ], [ %.lcssa10031010.lcssa1030, %bb.au ], [ %.lcssa10031010.lcssa1030, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us ]
  %.lcssa10011006.lcssa1026 = phi i64 [ %.lcssa10011008, %10 ], [ %.lcssa10011006, %.loopexit17.thread.i.us.us ], [ %.lcssa10011006.lcssa1023, %bb.au ], [ %.lcssa10011006.lcssa1023, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i211.us.us ]
  store i32 %.lcssa10971113.lcssa.lcssa1216, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1224, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1233, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1242, ptr %i.hm, align 8
  store i32 %.lcssa10971113.lcssa1183, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa1191, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa1199, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa1207, ptr %i.hm, align 8
  store i32 %.lcssa10971109, ptr %i.hj, align 8
  store i64 %.lcssa11071129, ptr %i.hk, align 8
  store i64 %.lcssa11041149, ptr %i.hl, align 8
  store i64 %.lcssa11061169, ptr %i.hm, align 8
  store i64 %.lcssa10011006.lcssa1026, ptr %i.hl, align 8
  store i64 %.lcssa10031010.lcssa1033, ptr %i.hm, align 8
  store i32 %.lcssa10151035, ptr %i.hj, align 8
  store i64 %.lcssa10041017.lcssa1044, ptr %i.hk, align 8
  br label %.loopexit

.loopexit.loopexit909:                            ; preds = %bb.df, %bb.co, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us, %.loopexit19.i.us.us, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us, %bb.bp
  %.lcssa11061180 = phi i64 [ %.lcssa10811093, %bb.df ], [ %.lcssa11061174, %bb.co ], [ %.lcssa11061175, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us ], [ %.lcssa11061179, %.loopexit19.i.us.us ], [ %.lcssa11061178, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.lcssa10031010.lcssa1030, %bb.bp ]
  %.lcssa11041160 = phi i64 [ %.lcssa10791086, %bb.df ], [ %.lcssa11041154, %bb.co ], [ %.lcssa11041155, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us ], [ %.lcssa11041159, %.loopexit19.i.us.us ], [ %.lcssa11041158, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.lcssa10011006.lcssa1023, %bb.bp ]
  %.lcssa11071140 = phi i64 [ %.lcssa10821102, %bb.df ], [ %.lcssa11071134, %bb.co ], [ %.lcssa11071135, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us ], [ %.lcssa11071139, %.loopexit19.i.us.us ], [ %.lcssa11071138, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %.lcssa10041017.lcssa1041, %bb.bp ]
  %.lcssa10971120 = phi i32 [ %i.yw, %bb.df ], [ %.lcssa10971119, %bb.co ], [ %i.vh, %_ZN3jxl4jpeg12_GLOBAL__N_110ReadSymbolEPKNS0_17HuffmanTableEntryEPNS1_14BitReaderStateE.exit.i.us.us ], [ %.lcssa10971118, %.loopexit19.i.us.us ], [ %i.ro, %_ZN3jxl4jpeg12_GLOBAL__N_114BitReaderState8ReadBitsEi.exit.us.us ], [ %i.nj, %bb.bp ]
  store i32 %.lcssa10971113.lcssa.lcssa1216, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa.lcssa1224, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa.lcssa1233, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa.lcssa1242, ptr %i.hm, align 8
  store i32 %.lcssa10971113.lcssa1183, ptr %i.hj, align 8
  store i64 %.lcssa11071128.lcssa1191, ptr %i.hk, align 8
  store i64 %.lcssa11041148.lcssa1199, ptr %i.hl, align 8
  store i64 %.lcssa11061168.lcssa1207, ptr %i.hm, align 8
  store i32 %.lcssa10971120, ptr %i.hj, align 8
  store i64 %.lcssa11071140, ptr %i.hk, align 8
  store i64 %.lcssa11041160, ptr %i.hl, align 8
  store i64 %.lcssa11061180, ptr %i.hm, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.v, %bb.ad, %.loopexit.loopexit909, %.loopexit.loopexit908.a, %.loopexit.loopexit, %bb.dt, %._crit_edge641.thread, %._crit_edge641, %.split.us647, %.critedge196
  %.sroa.0297.16 = phi i32 [ 1, %.critedge196 ], [ 1, %bb.ad ], [ 1, %.loopexit.loopexit ], [ 1, %._crit_edge641.thread ], [ %spec.select421, %bb.dt ], [ 1, %._crit_edge641 ], [ 1, %.split.us647 ], [ 1, %.loopexit.loopexit909 ], [ 1, %.loopexit.loopexit908.a ], [ 1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit.thread

_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit, %.loopexit
  %.sroa.0297.17 = phi i32 [ %.sroa.0297.16, %.loopexit ], [ 1, %_ZN3jxl4jpeg12_GLOBAL__N_110ProcessSOSEPKhmPmPNS0_8JPEGDataE.exit ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
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
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !112
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
  %i.am = load ptr, ptr %i.q, align 8, !tbaa !112
  %.promoted.fr.i.i.i.i.i.i = freeze ptr %i.am    ; 2 uses
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !115 ; 5 uses
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
  store ptr %.0.i, ptr %i.q, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.av = load i64, ptr %2, align 8, !tbaa !13    ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.n
  br i1 %i.aw, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %.lr.ph, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit
  %i.ax = phi ptr [ %.pre, %.lr.ph ], [ %.0.i, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit ] ; 4 uses
  %i.ay = phi i64 [ %i.b, %.lr.ph ], [ %i.av, %_ZNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEE9push_backB8nn180100ERKS3_.exit ] ; 4 uses
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !115
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
  store i32 %i.bl, ptr %i.s, align 4, !tbaa !116
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
end_hunk_2
