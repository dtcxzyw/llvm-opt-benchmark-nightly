Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/decNumber?download=true
inline.NumInlined: 182
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL8decExpOpP9decNumberPKS_P10decContextPj:bb.a
  %i.dc = add i64 %i.db, %.264.i301
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.dc, i1 false), !tbaa !19
  br label %_ZL14decShiftToMostPhii.exit

_ZL14decShiftToMostPhii.exit:                     ; preds = %.lr.ph91.i.preheader, %bb.p, %bb.r, %.loopexit76.i, %.lr.ph91.preheader.i
  store i32 %i.bo, ptr %0, align 4, !tbaa !18
  %i.dd = sub nsw i32 1, %i.bo
  store i32 %i.dd, ptr %i.br, align 4, !tbaa !17
  %i.de = load i32, ptr %3, align 4, !tbaa !21
  %i.df = or i32 %i.de, 2080
  store i32 %i.df, ptr %3, align 4, !tbaa !21
  br label %.thread279

bb.z:                                             ; preds = %bb.o
  %i.dg = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %4, i32 noundef 64) ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !21
  store <2 x i32> %i.dj, ptr %i.di, align 4, !tbaa !21
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.dk, align 4, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !17 ; 2 uses
  %i.dn = load i32, ptr %1, align 4, !tbaa !18    ; 7 uses
  %i.do = add nsw i32 %i.dn, %i.dm                ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 8
  br i1 %i.dp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.dq, align 8, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.dr, align 4, !tbaa !17
  store i32 1, ptr %9, align 16, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 2, ptr %i.ds, align 1, !tbaa !19
  %i.dt = load i8, ptr %i.e, align 4, !tbaa !16
  %.not217 = icmp sgt i8 %i.dt, -1
  br i1 %.not217, label %.thread242, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 -2, ptr %i.dr, align 4, !tbaa !17
  br label %.thread242

bb.ac:                                            ; preds = %bb.z
  %i.du = icmp sgt i32 %i.dn, 8
  %i.dv = zext i1 %i.du to i32
  %i.dw = sub nsw i32 8, %i.do
  %i.dx = call i32 @llvm.umin.i32(i32 %i.dw, i32 %i.dv) ; 2 uses
  %i.dy = add i32 %i.dn, %i.dx
  %i.dz = sub i32 0, %i.dy                        ; 2 uses
  %i.ea = add nsw i32 %i.dx, %i.do                ; 3 uses
  %i.eb = icmp slt i32 %i.ea, 0
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ea, i32 0) ; 2 uses
  %.not214294 = icmp eq i32 %i.dm, %i.dz
  %.not214 = or i1 %i.eb, %.not214294
  br i1 %.not214, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = icmp slt i32 %i.dn, 50
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ed = sext i32 %i.dn to i64
  %i.ee = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  %i.eg = zext i8 %i.ef to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.eh = phi i32 [ %i.eg, %bb.ae ], [ %i.dn, %bb.ad ] ; 2 uses
  %i.ei = icmp samesign ugt i32 %i.eh, 73
  br i1 %i.ei, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %narrow = add nuw i32 %i.eh, 11
  %i.ej = zext i32 %narrow to i64
  %i.ek = call noalias ptr @uprv_malloc_78(i64 noundef %i.ej) #16 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.thread291, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ag
  %.0183 = phi ptr [ null, %bb.af ], [ %i.ek, %bb.ag ]
  %.0166 = phi ptr [ %7, %bb.af ], [ %i.ek, %bb.ag ] ; 4 uses
  %i.em = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0166, ptr noundef nonnull %1) ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0166, i64 4
  store i32 %i.dz, ptr %i.en, align 4, !tbaa !17
  %.pre = load i32, ptr %.0166, align 4, !tbaa !18
  br label %bb.ah

.thread291:                                       ; preds = %bb.ag
  %i.eo = load i32, ptr %3, align 4, !tbaa !21
  %i.ep = or i32 %i.eo, 16
  store i32 %i.ep, ptr %3, align 4, !tbaa !21
  br label %.thread279

bb.ah:                                            ; preds = %.thread, %bb.ac
  %i.eq = phi i32 [ %.pre, %.thread ], [ %i.dn, %bb.ac ]
  %.1188 = phi ptr [ %.0166, %.thread ], [ %1, %bb.ac ] ; 2 uses
  %.2185 = phi ptr [ %.0183, %.thread ], [ null, %bb.ac ] ; 4 uses
  %i.er = load i32, ptr %2, align 4, !tbaa !26
  %. = call i32 @llvm.smax.i32(i32 %i.eq, i32 %i.er)
  %i.es = add nsw i32 %., %spec.select            ; 4 uses
  %i.et = add nsw i32 %i.es, 2                    ; 5 uses
  %i.eu = shl nsw i32 %i.et, 1                    ; 3 uses
  %i.ev = icmp slt i32 %i.es, 23
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !19
  %i.ez = zext i8 %i.ey to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.fa = phi i32 [ %i.ez, %bb.ai ], [ %i.eu, %bb.ah ]
  %i.fb = add i32 %i.fa, 11                       ; 2 uses
  %i.fc = icmp ugt i32 %i.fb, 180
  br i1 %i.fc, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fd = zext i32 %i.fb to i64
  %i.fe = call noalias ptr @uprv_malloc_78(i64 noundef %i.fd) #16 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fg = load i32, ptr %3, align 4, !tbaa !21
  %i.fh = or i32 %i.fg, 16
  store i32 %i.fh, ptr %3, align 4, !tbaa !21
  br label %uprv_decNumberCopy_78.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.0172 = phi ptr [ null, %bb.aj ], [ %i.fe, %bb.ak ] ; 3 uses
  %.0170 = phi ptr [ %9, %bb.aj ], [ %i.fe, %bb.ak ] ; 9 uses
  %i.fi = add nsw i32 %i.es, 4                    ; 2 uses
  %i.fj = icmp slt i32 %i.es, 46
  br i1 %i.fj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fk = sext i32 %i.fi to i64
  %i.fl = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !19
  %i.fn = zext i8 %i.fm to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.fo = phi i32 [ %i.fn, %bb.an ], [ %i.fi, %bb.am ] ; 2 uses
  %i.fp = icmp samesign ugt i32 %i.fo, 85
  br i1 %i.fp, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fq = add nuw i32 %i.fo, 11
  %i.fr = zext i32 %i.fq to i64
  %i.fs = call noalias ptr @uprv_malloc_78(i64 noundef %i.fr) #16 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load i32, ptr %3, align 4, !tbaa !21
  %i.fv = or i32 %i.fu, 16
  store i32 %i.fv, ptr %3, align 4, !tbaa !21
  br label %uprv_decNumberCopy_78.exit

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.0179 = phi ptr [ null, %bb.ao ], [ %i.fs, %bb.ap ] ; 2 uses
  %.0176 = phi ptr [ %8, %bb.ao ], [ %i.fs, %bb.ap ] ; 9 uses
  %i.fw = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0176, ptr noundef nonnull %.1188) ; 0 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0170, i64 8
  store i8 0, ptr %i.fx, align 4, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %.0170, i64 4 ; 2 uses
  store i32 0, ptr %i.fy, align 4, !tbaa !17
  store i32 1, ptr %.0170, align 4, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %.0170, i64 9
  store i8 1, ptr %i.fz, align 1, !tbaa !19
  store i8 0, ptr %i.be, align 8, !tbaa !16
  store i32 0, ptr %i.bf, align 4, !tbaa !17
  store i32 1, ptr %10, align 16, !tbaa !18
  store i8 2, ptr %i.bg, align 1, !tbaa !19
  %i.ga = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.ga, align 4, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.gb, align 4, !tbaa !17
  store i32 1, ptr %11, align 4, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 9
  store i8 1, ptr %i.gc, align 1, !tbaa !19
  %i.gd = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %5, i32 noundef 64) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef nonnull align 4 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !36
  store i32 %i.eu, ptr %4, align 4, !tbaa !26
  store i32 %i.et, ptr %5, align 4, !tbaa !26
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -999999999, ptr %i.ge, align 4, !tbaa !28
  %i.gf = getelementptr inbounds nuw i8, ptr %.0176, i64 4
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.gg = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %.0170, ptr noundef nonnull %.0170, ptr noundef nonnull %.0176, ptr noundef nonnull %4, i8 noundef zeroext 0, ptr noundef %3) ; 0 uses
  %i.gh = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.0176, ptr noundef nonnull %.0176, ptr noundef nonnull %.1188, ptr noundef nonnull %5, ptr noundef %i.c) ; 0 uses
  %i.gi = call fastcc noundef ptr @_ZL11decDivideOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %.0176, ptr noundef nonnull %.0176, ptr noundef nonnull %10, ptr noundef nonnull %5, i8 noundef zeroext -128, ptr noundef %i.c) ; 0 uses
  %i.gj = load i32, ptr %.0170, align 4, !tbaa !18 ; 3 uses
  %i.gk = load i32, ptr %i.fy, align 4, !tbaa !17
  %i.gl = add nsw i32 %i.gk, %i.gj
  %i.gm = load i32, ptr %.0176, align 4, !tbaa !18
  %i.gn = load i32, ptr %i.gf, align 4, !tbaa !17
  %i.go = add i32 %i.gm, %i.et
  %i.gp = add i32 %i.go, %i.gn
  %.not215.not = icmp sle i32 %i.gl, %i.gp
  %.not216 = icmp slt i32 %i.gj, %i.et
  %or.cond = or i1 %.not216, %.not215.not
  br i1 %or.cond, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gq = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef %i.c) ; 0 uses
  br label %bb.as, !llvm.loop !90

bb.au:                                            ; preds = %bb.as
  %.not295 = icmp slt i32 %i.ea, 1
  br i1 %.not295, label %.loopexit, label %.thread242

.thread242:                                       ; preds = %bb.ab, %bb.aa, %bb.au
  %.1169259 = phi i32 [ %spec.select, %bb.au ], [ 8, %bb.aa ], [ 8, %bb.ab ]
  %.2258 = phi ptr [ %.0170, %bb.au ], [ %9, %bb.aa ], [ %9, %bb.ab ]
  %.2174257 = phi ptr [ %.0172, %bb.au ], [ null, %bb.aa ], [ null, %bb.ab ]
  %.2178255 = phi ptr [ %.0176, %bb.au ], [ %8, %bb.aa ], [ %8, %bb.ab ] ; 12 uses
  %.2181254 = phi ptr [ %.0179, %bb.au ], [ null, %bb.aa ], [ null, %bb.ab ]
  %.4252 = phi ptr [ %.2185, %bb.au ], [ null, %bb.aa ], [ null, %bb.ab ]
  %.1190250 = phi i32 [ %i.et, %bb.au ], [ 9, %bb.aa ], [ 9, %bb.ab ]
  %i.gr = zext nneg i32 %.1169259 to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !21
  %i.gu = add nsw i32 %.1190250, 2
  store i32 %i.gu, ptr %4, align 4, !tbaa !26
  %i.gv = getelementptr inbounds nuw i8, ptr %.2178255, i64 8 ; 2 uses
  store i8 0, ptr %i.gv, align 4, !tbaa !16
  %i.gw = getelementptr inbounds nuw i8, ptr %.2178255, i64 4
  store i32 0, ptr %i.gw, align 4, !tbaa !17
  store i32 1, ptr %.2178255, align 4, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %.2178255, i64 9 ; 2 uses
  store i8 1, ptr %i.gx, align 1, !tbaa !19
  br label %bb.av

bb.av:                                            ; preds = %bb.bd, %.thread242
  %.0163 = phi i32 [ 0, %.thread242 ], [ %.1262267, %bb.bd ]
  %.0162 = phi i32 [ 1, %.thread242 ], [ %i.ho, %bb.bd ] ; 3 uses
  %.0 = phi i32 [ %i.gt, %.thread242 ], [ %i.hi, %bb.bd ]
  %i.gy = load i32, ptr %3, align 4, !tbaa !21    ; 2 uses
  %i.gz = and i32 %i.gy, 8704
  %.not218 = icmp eq i32 %i.gz, 0
  br i1 %.not218, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ha = and i32 %i.gy, 512
  %.not219 = icmp eq i32 %i.ha, 0
  br i1 %.not219, label %bb.ax, label %.loopexit.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !19
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hd = load i32, ptr %.2178255, align 4, !tbaa !18
  %i.he = icmp eq i32 %i.hd, 1
  br i1 %i.he, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hf = load i8, ptr %i.gv, align 4, !tbaa !16
  %i.hg = and i8 %i.hf, 112
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %.loopexit.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.ay, %bb.az, %bb.av
  %i.hi = shl i32 %.0, 1                          ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %.thread260, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hk = icmp eq i32 %.0162, 31
  br i1 %i.hk, label %.loopexit.loopexit, label %bb.bc

.thread260:                                       ; preds = %bb.ba
  %i.hl = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.2178255, ptr noundef nonnull %.2178255, ptr noundef nonnull %.2258, ptr noundef nonnull %4, ptr noundef %3) ; 0 uses
  %i.hm = icmp eq i32 %.0162, 31
  br i1 %i.hm, label %.loopexit.loopexit, label %.thread263

bb.bc:                                            ; preds = %bb.bb
  %.not220 = icmp eq i32 %.0163, 0
  br i1 %.not220, label %bb.bd, label %.thread263

.thread263:                                       ; preds = %.thread260, %bb.bc
  %i.hn = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.2178255, ptr noundef nonnull %.2178255, ptr noundef nonnull %.2178255, ptr noundef nonnull %4, ptr noundef %3) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread263
  %.1262267 = phi i32 [ 0, %bb.bc ], [ 1, %.thread263 ]
  %i.ho = add nuw nsw i32 %.0162, 1
  br label %bb.av, !llvm.loop !91

.loopexit.loopexit:                               ; preds = %bb.bb, %bb.aw, %bb.az, %.thread260
  %.pre302.pre = load i32, ptr %.2178255, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.au
  %.pre302 = phi i32 [ %i.gj, %bb.au ], [ %.pre302.pre, %.loopexit.loopexit ] ; 2 uses
  %.2174256 = phi ptr [ %.0172, %bb.au ], [ %.2174257, %.loopexit.loopexit ]
  %.2181253 = phi ptr [ %.0179, %bb.au ], [ %.2181254, %.loopexit.loopexit ]
  %.4251 = phi ptr [ %.2185, %bb.au ], [ %.4252, %.loopexit.loopexit ]
  %.3 = phi ptr [ %.0170, %bb.au ], [ %.2178255, %.loopexit.loopexit ] ; 4 uses
  store i32 1, ptr %i.d, align 4, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %.3, i64 9 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !19
  %i.hr = icmp eq i8 %i.hq, 0
  %i.hs = icmp eq i32 %.pre302, 1
  %or.cond324 = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond324, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %.loopexit
  %i.ht = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.hu = load i8, ptr %i.ht, align 4, !tbaa !16
  %i.hv = and i8 %i.hu, 112
  %i.hw = icmp eq i8 %i.hv, 0
  br i1 %i.hw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.d, align 4, !tbaa !21
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %.loopexit
  %i.hx = load i32, ptr %2, align 4, !tbaa !26
  store i32 %i.hx, ptr %4, align 4, !tbaa !26
  %i.hy = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.hz = load i8, ptr %i.hy, align 4, !tbaa !16
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.hz, ptr %i.ia, align 4, !tbaa !16
  %i.ib = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !17
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef %0, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.hp, i32 noundef %.pre302, ptr noundef nonnull %i.d, ptr noundef nonnull %3)
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %i.d, ptr noundef %3)
  br label %uprv_decNumberCopy_78.exit

uprv_decNumberCopy_78.exit:                       ; preds = %bb.aq, %bb.al, %bb.bg
  %.5 = phi ptr [ %.4251, %bb.bg ], [ %.2185, %bb.al ], [ %.2185, %bb.aq ] ; 2 uses
  %.3182 = phi ptr [ %.2181253, %bb.bg ], [ null, %bb.al ], [ null, %bb.aq ] ; 2 uses
  %.3175 = phi ptr [ %.2174256, %bb.bg ], [ null, %bb.al ], [ %.0172, %bb.aq ] ; 2 uses
  %.not223 = icmp eq ptr %.5, null
  br i1 %.not223, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %uprv_decNumberCopy_78.exit
  call void @uprv_free_78(ptr noundef nonnull %.5)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %uprv_decNumberCopy_78.exit
  %.not224 = icmp eq ptr %.3175, null
  br i1 %.not224, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @uprv_free_78(ptr noundef nonnull %.3175)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.not225 = icmp eq ptr %.3182, null
  br i1 %.not225, label %.thread279, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @uprv_free_78(ptr noundef nonnull %.3182)
  br label %.thread279

.thread279:                                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.thread291, %bb.f, %bb.e, %_ZL14decShiftToMostPhii.exit, %bb.n, %bb.l, %bb.i, %bb.d, %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @uprv_decNumberFMA_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.decContext, align 4         ; 7 uses
  %6 = alloca [7 x %struct.decNumber], align 16   ; 3 uses
  %7 = alloca %struct.decNumber, align 4          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !16
  %i.d = and i8 %i.c, 112
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %4, align 4, !tbaa !26
  %i.f = icmp sgt i32 %i.e, 999999
  br i1 %i.f, label %.thread.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %i.i = icmp sgt i32 %i.h, 999999
  br i1 %i.i, label %.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28
  %i.l = icmp slt i32 %i.k, -999999
  br i1 %i.l, label %.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 999999
  br i1 %i.n, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = add i32 %i.m, -1000001
  %i.r = add i32 %i.q, %i.p
  %or.cond.i = icmp ult i32 %i.r, -2999997
  br i1 %or.cond.i, label %bb.g, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %i.u = icmp eq i8 %i.t, 0
  %i.v = icmp eq i32 %i.m, 1
  %or.cond16.i = and i1 %i.v, %i.u
  br i1 %or.cond16.i, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit.thread, label %.thread.thread

_ZL12decCheckMathPK9decNumberP10decContextPj.exit.thread: ; preds = %bb.g, %bb.f, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i8, ptr %i.w, align 4, !tbaa !16
  %i.y = and i8 %i.x, 112
  %.not38 = icmp eq i8 %i.y, 0
  br i1 %.not38, label %bb.h, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit50.thread

bb.h:                                             ; preds = %_ZL12decCheckMathPK9decNumberP10decContextPj.exit.thread
  %i.z = load i32, ptr %4, align 4, !tbaa !26
  %i.aa = icmp sgt i32 %i.z, 999999
  br i1 %i.aa, label %.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = icmp sgt i32 %i.ac, 999999
  br i1 %i.ad, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = icmp slt i32 %i.af, -999999
  br i1 %i.ag, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %2, align 4, !tbaa !18    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 999999
  br i1 %i.ai, label %.thread.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.al = add i32 %i.ah, -1000001
  %i.am = add i32 %i.al, %i.ak
  %or.cond.i46 = icmp ult i32 %i.am, -2999997
  br i1 %or.cond.i46, label %bb.m, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit50.thread

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  %i.ap = icmp eq i8 %i.ao, 0
  %i.aq = icmp eq i32 %i.ah, 1
  %or.cond16.i47 = and i1 %i.aq, %i.ap
  br i1 %or.cond16.i47, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit50.thread, label %.thread.thread

_ZL12decCheckMathPK9decNumberP10decContextPj.exit50.thread: ; preds = %bb.m, %bb.l, %_ZL12decCheckMathPK9decNumberP10decContextPj.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !16
  %i.at = and i8 %i.as, 112
  %.not40 = icmp eq i8 %i.at, 0
  br i1 %.not40, label %bb.n, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit55.thread

bb.n:                                             ; preds = %_ZL12decCheckMathPK9decNumberP10decContextPj.exit50.thread
  %i.au = load i32, ptr %4, align 4, !tbaa !26
  %i.av = icmp sgt i32 %i.au, 999999
  br i1 %i.av, label %.thread.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ay = icmp sgt i32 %i.ax, 999999
  br i1 %i.ay, label %.thread.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28
  %i.bb = icmp slt i32 %i.ba, -999999
  br i1 %i.bb, label %.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %3, align 4, !tbaa !18    ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 999999
  br i1 %i.bd, label %.thread.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !17
  %i.bg = add i32 %i.bc, -1000001
  %i.bh = add i32 %i.bg, %i.bf
  %or.cond.i51 = icmp ult i32 %i.bh, -2999997
  br i1 %or.cond.i51, label %bb.s, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit55.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bk = icmp eq i8 %i.bj, 0
  %i.bl = icmp eq i32 %i.bc, 1
  %or.cond16.i52 = and i1 %i.bl, %i.bk
  br i1 %or.cond16.i52, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit55.thread, label %.thread.thread

_ZL12decCheckMathPK9decNumberP10decContextPj.exit55.thread: ; preds = %bb.s, %bb.r, %_ZL12decCheckMathPK9decNumberP10decContextPj.exit50.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !36
  %i.bm = load i32, ptr %1, align 4, !tbaa !18
  %i.bn = load i32, ptr %2, align 4, !tbaa !18
  %i.bo = add nsw i32 %i.bn, %i.bm                ; 4 uses
  store i32 %i.bo, ptr %5, align 4, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 999999999, ptr %i.bp, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -999999999, ptr %i.bq, align 4, !tbaa !28
end_hunk_0
