inline.NumInlined: 151
inline.NumDeleted: 43
begin_hunk_0_@_ZN2v86bigint12_GLOBAL__N_112FFTContainer17PointwiseMultiplyERKS2_:bb.a
  %i.bi = icmp samesign ult i32 %.sroa.819.0, 8
  %unroll_iter91 = and i64 %i.ao, 2147483640
  %lcmp.mod89.not = icmp eq i64 %xtraiter87, 0
  %lcmp.mod90 = icmp ne i64 %xtraiter87, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 7 uses
  %i.bj = load ptr, ptr %i.ac, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = load i32, ptr %i.d, align 8             ; 4 uses
  %i.bn = load ptr, ptr %i.ad, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load ptr, ptr %i.ae, align 8            ; 4 uses
  br i1 %i.k, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i32 %.sroa.819.0, ptr %2, align 8
  store i32 %.sroa.5.0, ptr %i.ag, align 4
  store i32 %i.ai, ptr %i.ah, align 8
  store ptr %i.bq, ptr %i.aj, align 8
  %i.br = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #12, !inline_history !16 ; 3 uses
  store ptr %i.br, ptr %i.an, align 8
  %i.bs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #12, !inline_history !16
  store ptr %i.bs, ptr %i.aq, align 8
  br i1 %.not.i.i, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  br i1 %i.bh, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 5 uses
  %.01011.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.br, %.lr.ph.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bt = load ptr, ptr %i.aq, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i.i
  store ptr %.01011.i.i, ptr %i.bu, align 8
  %i.bv = load i32, ptr %i.ah, align 8
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.01011.i.i, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.aq, align 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bx, ptr %i.ca, align 8
  %i.cb = load i32, ptr %i.ah, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.aq, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.cd, ptr %i.cg, align 8
  %i.ch = load i32, ptr %i.ah, align 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr %i.aq, align 8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cj, ptr %i.cm, align 8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cn = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.co ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !7

_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.3, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i.loopexit.unr-lcssa ]
  %.01011.i.i.epil.init = phi ptr [ %i.br, %.lr.ph.i.i.preheader ], [ %i.cp, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01011.i.i.epil = phi ptr [ %i.cu, %.lr.ph.i.i.epil ], [ %.01011.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.cq = load ptr, ptr %i.aq, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.i.i.epil
  store ptr %.01011.i.i.epil, ptr %i.cr, align 8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.cs = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.01011.i.i.epil, i64 %i.ct
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !17

_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i: ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e
  %i.cv = phi i32 [ %i.ai, %bb.e ], [ %i.cn, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph.i.i.epil ]
  %i.cw = shl i32 %i.cv, 1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #12, !inline_history !16
  store ptr %i.cz, ptr %i.ar, align 8
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer13Start_DefaultENS0_6DigitsEjii(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %i.bl, i32 %i.bm, i32 noundef %.sroa.12.0, i32 noundef %.sroa.16.0, i32 noundef %i.af), !inline_history !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 %.sroa.819.0, ptr %3, align 8
  store i32 %.sroa.5.0, ptr %i.as, align 4
  store i32 %i.ai, ptr %i.at, align 8
  store ptr %i.bq, ptr %i.au, align 8
  %i.da = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #12, !inline_history !16 ; 4 uses
  store ptr %i.da, ptr %i.av, align 8
  %i.db = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #12, !inline_history !16 ; 11 uses
  store ptr %i.db, ptr %i.aw, align 8
  br i1 %.not.i.i, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i, label %.lr.ph.i36.i.preheader

.lr.ph.i36.i.preheader:                           ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i
  br i1 %i.bi, label %.lr.ph.i36.i.epil.preheader, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %.lr.ph.i36.i.preheader, %.lr.ph.i36.i
  %indvars.iv.i37.i = phi i64 [ %indvars.iv.next.i39.i.7, %.lr.ph.i36.i ], [ 0, %.lr.ph.i36.i.preheader ] ; 9 uses
  %.01011.i38.i = phi ptr [ %i.dy, %.lr.ph.i36.i ], [ %i.da, %.lr.ph.i36.i.preheader ] ; 2 uses
  %niter92 = phi i64 [ %niter92.next.7, %.lr.ph.i36.i ], [ 0, %.lr.ph.i36.i.preheader ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  store ptr %.01011.i38.i, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.01011.i38.i, i64 %i.ax ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ax ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ax ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store ptr %i.dj, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ax ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store ptr %i.dm, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.ax ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store ptr %i.dp, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ax ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store ptr %i.ds, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ax ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store ptr %i.dv, ptr %i.dx, align 8
  %indvars.iv.next.i39.i.7 = add nuw nsw i64 %indvars.iv.i37.i, 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ax ; 2 uses
  %niter92.next.7 = add i64 %niter92, 8           ; 2 uses
  %niter92.ncmp.7 = icmp eq i64 %niter92.next.7, %unroll_iter91
  br i1 %niter92.ncmp.7, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i.loopexit.unr-lcssa, label %.lr.ph.i36.i, !llvm.loop !7

_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i36.i
  br i1 %lcmp.mod89.not, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i, label %.lr.ph.i36.i.epil.preheader

.lr.ph.i36.i.epil.preheader:                      ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i.loopexit.unr-lcssa, %.lr.ph.i36.i.preheader
  %indvars.iv.i37.i.epil.init = phi i64 [ 0, %.lr.ph.i36.i.preheader ], [ %indvars.iv.next.i39.i.7, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i.loopexit.unr-lcssa ]
  %.01011.i38.i.epil.init = phi ptr [ %i.da, %.lr.ph.i36.i.preheader ], [ %i.dy, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i36.i.epil

.lr.ph.i36.i.epil:                                ; preds = %.lr.ph.i36.i.epil, %.lr.ph.i36.i.epil.preheader
  %indvars.iv.i37.i.epil = phi i64 [ %indvars.iv.next.i39.i.epil, %.lr.ph.i36.i.epil ], [ %indvars.iv.i37.i.epil.init, %.lr.ph.i36.i.epil.preheader ] ; 2 uses
  %.01011.i38.i.epil = phi ptr [ %i.ea, %.lr.ph.i36.i.epil ], [ %.01011.i38.i.epil.init, %.lr.ph.i36.i.epil.preheader ] ; 2 uses
  %epil.iter88 = phi i64 [ %epil.iter88.next, %.lr.ph.i36.i.epil ], [ 0, %.lr.ph.i36.i.epil.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i37.i.epil
  store ptr %.01011.i38.i.epil, ptr %i.dz, align 8
  %indvars.iv.next.i39.i.epil = add nuw nsw i64 %indvars.iv.i37.i.epil, 1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.01011.i38.i.epil, i64 %i.ax
  %epil.iter88.next = add i64 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i64 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i, label %.lr.ph.i36.i.epil, !llvm.loop !18

_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i: ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i.loopexit.unr-lcssa, %.lr.ph.i36.i.epil, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit.i
  %i.eb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.az) #12, !inline_history !16 ; 2 uses
  store ptr %i.eb, ptr %i.ba, align 8
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer13Start_DefaultENS0_6DigitsEjii(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %i.bp, i32 %i.bm, i32 noundef %.sroa.12.0, i32 noundef %.sroa.16.0, i32 noundef %i.af), !inline_history !16
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer17PointwiseMultiplyERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3), !inline_history !16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = icmp eq i32 %i.ed, 1
  br i1 %i.ee, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i
  %i.ef = load ptr, ptr %i.ar, align 8
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer22BackwardFFT_ThreadsafeEjjiPm(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 0, i32 noundef %.sroa.819.0, i32 noundef %i.af, ptr noundef %i.ef), !inline_history !16
  call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.bc, i1 false)
  %i.eg = load i32, ptr %2, align 8               ; 2 uses
  %.not.i42.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i42.i, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit.i, label %.lr.ph160.i.i.preheader

.lr.ph160.i.i.preheader:                          ; preds = %bb.f
  %.pre = load ptr, ptr %i.ar, align 8
  br label %.lr.ph160.i.i

.lr.ph160.i.i:                                    ; preds = %.lr.ph160.i.i.preheader, %.loopexit.i.i
  %i.eh = phi ptr [ %i.ev, %.loopexit.i.i ], [ %.pre, %.lr.ph160.i.i.preheader ]
  %indvars.iv183.i.i = phi i64 [ %indvars.iv.next184.i.i, %.loopexit.i.i ], [ 0, %.lr.ph160.i.i.preheader ] ; 4 uses
  %i.ei = phi i32 [ %i.kt, %.loopexit.i.i ], [ %i.eg, %.lr.ph160.i.i.preheader ]
  %.064158.i.i = phi i32 [ %i.ks, %.loopexit.i.i ], [ 0, %.lr.ph160.i.i.preheader ] ; 11 uses
  %i.ej = trunc nuw i64 %indvars.iv183.i.i to i32
  %i.ek = mul i32 %.sroa.16.0, %i.ej
  %i.el = add i32 %i.ek, %.sroa.017.0             ; 2 uses
  %i.em = sub i32 0, %i.el                        ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  %i.eo = mul i32 %i.ei, %i.af
  %i.ep = sub i32 %i.eo, %i.el
  %.069.i.i = select i1 %i.en, i32 %i.ep, i32 %i.em
  %i.eq = load ptr, ptr %i.aq, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv183.i.i
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = load i32, ptr %i.ag, align 4
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj(ptr noundef %i.eh, ptr noundef %i.es, i32 noundef %.069.i.i, i32 noundef %i.et, i32 noundef 2147483647), !inline_history !16
  %i.eu = sub i32 %i.ab, %.064158.i.i
  %.fr76 = freeze i32 %i.eu                       ; 9 uses
  %i.ev = load ptr, ptr %i.ar, align 8            ; 9 uses
  %i.ew = load i32, ptr %i.ah, align 8            ; 7 uses
  %indvars.iv.next184.i.i = add nuw nsw i64 %indvars.iv183.i.i, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.be
  %i.ey = load i64, ptr %i.ex, align 8
  %.not.i.not.i.i = icmp ugt i64 %i.ey, %indvars.iv183.i.i
  br i1 %.not.i.not.i.i, label %.loopexit131.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph160.i.i
  %i.ez = icmp ult i32 %i.bf, %i.ew
  br i1 %i.ez, label %.lr.ph.i.i.i, label %_ZN2v86bigint12_GLOBAL__N_116ShouldBeNegativeEPKmjmi.exit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i = icmp eq i32 %i.ew, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN2v86bigint12_GLOBAL__N_116ShouldBeNegativeEPKmjmi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !19

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.h ], [ %i.bg, %bb.g ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i
  %i.fb = load i64, ptr %i.fa, align 8
  %.not12.not.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not12.not.i.i.i, label %bb.h, label %.loopexit131.i.i

.loopexit131.i.i:                                 ; preds = %.lr.ph.i.i.i, %.lr.ph160.i.i
  %i.fc = load i64, ptr %i.ev, align 8
  %i.fd = zext i64 %i.fc to i128
  %i.fe = sub nsw i128 1, %i.fd                   ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc nuw i128 %i.ff to i64
  %i.fh = zext i32 %.064158.i.i to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fh ; 2 uses
  %.0.copyload.i.i.i = load i64, ptr %i.fi, align 4
  %i.fj = zext i64 %.0.copyload.i.i.i to i128
  %i.fk = and i128 %i.fe, 18446744073709551615
  %i.fl = sub nsw i128 %i.fj, %i.fk               ; 2 uses
  %i.fm = lshr i128 %i.fl, 64
  %i.fn = trunc nuw i128 %i.fm to i64
  %i.fo = trunc i128 %i.fl to i64
  store i64 %i.fo, ptr %i.fi, align 4
  %.0111132.i.i = and i64 %i.fn, 1                ; 2 uses
  %.0114133.i.i = and i64 %i.fg, 1                ; 2 uses
  %i.fp = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 1
  %i.fr = icmp ugt i32 %.fr76, 1
  %i.fs = and i1 %i.fq, %i.fr
  br i1 %i.fs, label %.lr.ph.preheader.i.i, label %.preheader130.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit131.i.i
  %i.ft = call i32 @llvm.umin.i32(i32 %i.fp, i32 %.fr76)
  %invariant.umin73.a = zext i32 %i.ft to i64
  br label %.lr.ph.i43.i

.preheader130.loopexit.i.i:                       ; preds = %.lr.ph.i43.i
  %i.fu = trunc nuw i64 %indvars.iv.next.i45.i to i32
  br label %.preheader130.i.i

.preheader130.i.i:                                ; preds = %.preheader130.loopexit.i.i, %.loopexit131.i.i
  %.066.lcssa.i.i = phi i32 [ 1, %.loopexit131.i.i ], [ %i.fu, %.preheader130.loopexit.i.i ] ; 4 uses
  %.0111.lcssa.i.i = phi i64 [ %.0111132.i.i, %.loopexit131.i.i ], [ %.0111.i.i, %.preheader130.loopexit.i.i ] ; 2 uses
  %.0114.lcssa.i.i = phi i64 [ %.0114133.i.i, %.loopexit131.i.i ], [ %.0114.i.i, %.preheader130.loopexit.i.i ]
  %i.fv = icmp ult i32 %.066.lcssa.i.i, %i.ew
  %i.fw = icmp ult i32 %.066.lcssa.i.i, %.fr76
  %i.fx = and i1 %i.fv, %i.fw
  br i1 %i.fx, label %.lr.ph142.preheader.i.i, label %.preheader128.i.i

.lr.ph142.preheader.i.i:                          ; preds = %.preheader130.i.i
  %i.fy = zext i32 %.066.lcssa.i.i to i64
  %i.fz = call i32 @llvm.umin.i32(i32 %i.ew, i32 %.fr76)
  %invariant.umin75 = zext i32 %i.fz to i64
  br label %.lr.ph142.i.i

.lr.ph.i43.i:                                     ; preds = %.lr.ph.i43.i, %.lr.ph.preheader.i.i
  %indvars.iv.i44.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i45.i, %.lr.ph.i43.i ] ; 3 uses
  %.0114136.i.i = phi i64 [ %.0114133.i.i, %.lr.ph.preheader.i.i ], [ %.0114.i.i, %.lr.ph.i43.i ]
  %.0111135.i.i = phi i64 [ %.0111132.i.i, %.lr.ph.preheader.i.i ], [ %.0111.i.i, %.lr.ph.i43.i ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i44.i
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = zext i64 %i.gb to i128
  %i.gd = zext nneg i64 %.0114136.i.i to i128
  %i.ge = add nuw nsw i128 %i.gd, %i.gc
  %i.gf = sub nsw i128 0, %i.ge                   ; 2 uses
  %i.gg = lshr i128 %i.gf, 64
  %i.gh = trunc nuw i128 %i.gg to i64
  %i.gi = trunc nuw i64 %indvars.iv.i44.i to i32
  %i.gj = add i32 %.064158.i.i, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gk ; 2 uses
  %.0.copyload.i73.i.i = load i64, ptr %i.gl, align 4
  %i.gm = and i128 %i.gf, 18446744073709551615
  %i.gn = zext nneg i64 %.0111135.i.i to i128
  %i.go = zext i64 %.0.copyload.i73.i.i to i128
  %i.gp = add nuw nsw i128 %i.gm, %i.gn
  %i.gq = sub nsw i128 %i.go, %i.gp               ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = trunc nuw i128 %i.gr to i64
  %i.gt = trunc i128 %i.gq to i64
  store i64 %i.gt, ptr %i.gl, align 4
  %indvars.iv.next.i45.i = add nuw nsw i64 %indvars.iv.i44.i, 1 ; 3 uses
  %.0111.i.i = and i64 %i.gs, 1                   ; 2 uses
  %.0114.i.i = and i64 %i.gh, 1                   ; 2 uses
  %i.gu = icmp samesign ult i64 %indvars.iv.next.i45.i, %invariant.umin73.a
  br i1 %i.gu, label %.lr.ph.i43.i, label %.preheader130.loopexit.i.i, !llvm.loop !20

.preheader128.loopexit.i.i:                       ; preds = %.lr.ph142.i.i
  %i.gv = trunc nuw i64 %indvars.iv.next172.i.i to i32
  br label %.preheader128.i.i

.preheader128.i.i:                                ; preds = %.preheader128.loopexit.i.i, %.preheader130.i.i
  %.1112.lcssa.i.i = phi i64 [ %.0111.lcssa.i.i, %.preheader130.i.i ], [ %i.hv, %.preheader128.loopexit.i.i ]
  %.167.lcssa.i.i = phi i32 [ %.066.lcssa.i.i, %.preheader130.i.i ], [ %i.gv, %.preheader128.loopexit.i.i ] ; 2 uses
  %i.gw = icmp ne i64 %.1112.lcssa.i.i, 0
  %i.gx = icmp ult i32 %.167.lcssa.i.i, %.fr76
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %i.gy, label %.lr.ph147.preheader.i.i, label %.loopexit.i.i

.lr.ph147.preheader.i.i:                          ; preds = %.preheader128.i.i
  %i.gz = zext i32 %.167.lcssa.i.i to i64
  %i.ha = zext i32 %.fr76 to i64
  br label %.lr.ph147.i.i

.lr.ph142.i.i:                                    ; preds = %.lr.ph142.i.i, %.lr.ph142.preheader.i.i
  %indvars.iv171.i.i = phi i64 [ %i.fy, %.lr.ph142.preheader.i.i ], [ %indvars.iv.next172.i.i, %.lr.ph142.i.i ] ; 3 uses
  %.1112140.i.i = phi i64 [ %.0111.lcssa.i.i, %.lr.ph142.preheader.i.i ], [ %i.hv, %.lr.ph142.i.i ]
  %.1115139.i.i = phi i64 [ %.0114.lcssa.i.i, %.lr.ph142.preheader.i.i ], [ %i.hj, %.lr.ph142.i.i ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv171.i.i
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = zext i64 %i.hc to i128
  %i.he = zext nneg i64 %.1115139.i.i to i128
  %i.hf = add nuw nsw i128 %i.he, %i.hd
  %i.hg = sub nsw i128 1, %i.hf                   ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = trunc nuw i128 %i.hh to i64
  %i.hj = and i64 %i.hi, 1
  %i.hk = trunc nuw i64 %indvars.iv171.i.i to i32
  %i.hl = add i32 %.064158.i.i, %i.hk
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %.0.copyload.i74.i.i = load i64, ptr %i.hn, align 4
  %i.ho = and i128 %i.hg, 18446744073709551615
  %i.hp = zext nneg i64 %.1112140.i.i to i128
  %i.hq = zext i64 %.0.copyload.i74.i.i to i128
  %i.hr = add nuw nsw i128 %i.ho, %i.hp
  %i.hs = sub nsw i128 %i.hq, %i.hr               ; 2 uses
  %i.ht = lshr i128 %i.hs, 64
  %i.hu = trunc nuw i128 %i.ht to i64
  %i.hv = and i64 %i.hu, 1                        ; 2 uses
  %i.hw = trunc i128 %i.hs to i64
  store i64 %i.hw, ptr %i.hn, align 4
  %indvars.iv.next172.i.i = add nuw nsw i64 %indvars.iv171.i.i, 1 ; 3 uses
  %i.hx = icmp samesign ult i64 %indvars.iv.next172.i.i, %invariant.umin75
  br i1 %i.hx, label %.lr.ph142.i.i, label %.preheader128.loopexit.i.i, !llvm.loop !21

.lr.ph147.i.i:                                    ; preds = %.lr.ph147.i.i, %.lr.ph147.preheader.i.i
  %indvars.iv174.i.i = phi i64 [ %i.gz, %.lr.ph147.preheader.i.i ], [ %indvars.iv.next175.i.i, %.lr.ph147.i.i ] ; 2 uses
  %.2113145.i.i = phi i64 [ 1, %.lr.ph147.preheader.i.i ], [ %i.ih, %.lr.ph147.i.i ]
  %i.hy = trunc nuw i64 %indvars.iv174.i.i to i32
  %i.hz = add i32 %.064158.i.i, %i.hy
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ia ; 2 uses
  %.0.copyload.i75.i.i = load i64, ptr %i.ib, align 4
  %i.ic = zext i64 %.0.copyload.i75.i.i to i128
  %i.id = zext nneg i64 %.2113145.i.i to i128
  %i.ie = sub nsw i128 %i.ic, %i.id               ; 2 uses
  %i.if = lshr i128 %i.ie, 64                     ; 2 uses
  %i.ig = trunc nuw i128 %i.if to i64
  %i.ih = and i64 %i.ig, 1
  %i.ii = trunc i128 %i.ie to i64
  store i64 %i.ii, ptr %i.ib, align 4
  %indvars.iv.next175.i.i = add nuw nsw i64 %indvars.iv174.i.i, 1 ; 2 uses
  %i.ij = trunc i128 %i.if to i1
  %i.ik = icmp samesign ult i64 %indvars.iv.next175.i.i, %i.ha
  %i.il = select i1 %i.ij, i1 %i.ik, i1 false
  br i1 %i.il, label %.lr.ph147.i.i, label %.loopexit.i.i, !llvm.loop !22

_ZN2v86bigint12_GLOBAL__N_116ShouldBeNegativeEPKmjmi.exit.i.i: ; preds = %bb.h, %bb.g
  %i.im = icmp ne i32 %i.ew, 0
  %i.in = icmp ne i32 %i.ab, %.064158.i.i
  %i.io = select i1 %i.im, i1 %i.in, i1 false
  br i1 %i.io, label %.lr.ph150.preheader.i.i, label %.loopexit.i.i

.lr.ph150.preheader.i.i:                          ; preds = %_ZN2v86bigint12_GLOBAL__N_116ShouldBeNegativeEPKmjmi.exit.i.i
  %i.ip = zext i32 %.fr76 to i64
  %i.iq = call i32 @llvm.umin.i32(i32 %i.ew, i32 %.fr76) ; 2 uses
  %i.ir = call i32 @llvm.umax.i32(i32 %i.iq, i32 1) ; 2 uses
  %umax = zext i32 %i.ir to i64                   ; 2 uses
  %xtraiter93 = and i64 %umax, 1
  %i.is = icmp ult i32 %i.iq, 2
  br i1 %i.is, label %.lr.ph150.i.i.epil.preheader, label %.lr.ph150.preheader.i.i.new

.lr.ph150.preheader.i.i.new:                      ; preds = %.lr.ph150.preheader.i.i
  %unroll_iter99 = and i64 %umax, 4294967294
  br label %.lr.ph150.i.i

.preheader127.i.i.unr-lcssa:                      ; preds = %.lr.ph150.i.i
  %lcmp.mod95.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod95.not, label %.preheader127.i.i, label %.lr.ph150.i.i.epil.preheader

.lr.ph150.i.i.epil.preheader:                     ; preds = %.preheader127.i.i.unr-lcssa, %.lr.ph150.preheader.i.i
  %indvars.iv177.i.i.epil.init = phi i64 [ 0, %.lr.ph150.preheader.i.i ], [ %indvars.iv.next178.i.i.1, %.preheader127.i.i.unr-lcssa ] ; 3 uses
  %.0116148.i.i.epil.init = phi i64 [ 0, %.lr.ph150.preheader.i.i ], [ %i.kj, %.preheader127.i.i.unr-lcssa ]
  %lcmp.mod98 = trunc i32 %i.ir to i1
  call void @llvm.assume(i1 %lcmp.mod98)
  %i.it = trunc nuw i64 %indvars.iv177.i.i.epil.init to i32
  %i.iu = add i32 %.064158.i.i, %i.it
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.iv ; 2 uses
  %.0.copyload.i76.i.i.epil = load i64, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv177.i.i.epil.init
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = zext i64 %.0.copyload.i76.i.i.epil to i128
  %i.ja = zext i64 %i.iy to i128
  %i.jb = zext nneg i64 %.0116148.i.i.epil.init to i128
  %i.jc = add nuw nsw i128 %i.iz, %i.jb
  %i.jd = add nuw nsw i128 %i.jc, %i.ja           ; 2 uses
  %i.je = lshr i128 %i.jd, 64
  %i.jf = trunc i128 %i.jd to i64
  store i64 %i.jf, ptr %i.iw, align 4
  %indvars.iv.next178.i.i.epil = add nuw nsw i64 %indvars.iv177.i.i.epil.init, 1
  br label %.preheader127.i.i

.preheader127.i.i:                                ; preds = %.preheader127.i.i.unr-lcssa, %.lr.ph150.i.i.epil.preheader
  %.lcssa82 = phi i128 [ %i.ki, %.preheader127.i.i.unr-lcssa ], [ %i.je, %.lr.ph150.i.i.epil.preheader ]
  %indvars.iv.next178.i.i.lcssa = phi i64 [ %indvars.iv.next178.i.i.1, %.preheader127.i.i.unr-lcssa ], [ %indvars.iv.next178.i.i.epil, %.lr.ph150.i.i.epil.preheader ]
  %i.jg = trunc nuw i64 %indvars.iv.next178.i.i.lcssa to i32
  %i.jh = icmp ne i128 %.lcssa82, 0
  %i.ji = call i32 @llvm.umax.i32(i32 %i.ew, i32 %i.jg) ; 2 uses
  %i.jj = icmp ult i32 %i.ji, %.fr76
  %i.jk = select i1 %i.jh, i1 %i.jj, i1 false
  br i1 %i.jk, label %.lr.ph156.preheader.i.i, label %.loopexit.i.i

.lr.ph150.i.i:                                    ; preds = %.lr.ph150.i.i, %.lr.ph150.preheader.i.i.new
  %indvars.iv177.i.i = phi i64 [ 0, %.lr.ph150.preheader.i.i.new ], [ %indvars.iv.next178.i.i.1, %.lr.ph150.i.i ] ; 4 uses
  %.0116148.i.i = phi i64 [ 0, %.lr.ph150.preheader.i.i.new ], [ %i.kj, %.lr.ph150.i.i ]
  %niter100 = phi i64 [ 0, %.lr.ph150.preheader.i.i.new ], [ %niter100.next.1, %.lr.ph150.i.i ]
  %i.jl = trunc nuw i64 %indvars.iv177.i.i to i32
  %i.jm = add i32 %.064158.i.i, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.jn ; 2 uses
  %.0.copyload.i76.i.i = load i64, ptr %i.jo, align 4
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv177.i.i
  %i.jq = load i64, ptr %i.jp, align 8
  %i.jr = zext i64 %.0.copyload.i76.i.i to i128
  %i.js = zext i64 %i.jq to i128
  %i.jt = zext nneg i64 %.0116148.i.i to i128
  %i.ju = add nuw nsw i128 %i.jr, %i.jt
  %i.jv = add nuw nsw i128 %i.ju, %i.js           ; 2 uses
  %i.jw = lshr i128 %i.jv, 64
  %i.jx = trunc i128 %i.jv to i64
  store i64 %i.jx, ptr %i.jo, align 4
  %indvars.iv.next178.i.i = or disjoint i64 %indvars.iv177.i.i, 1 ; 2 uses
  %i.jy = trunc nuw i64 %indvars.iv.next178.i.i to i32
  %i.jz = add i32 %.064158.i.i, %i.jy
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %.0.copyload.i76.i.i.1 = load i64, ptr %i.kb, align 4
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.next178.i.i
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = zext i64 %.0.copyload.i76.i.i.1 to i128
  %i.kf = zext i64 %i.kd to i128
  %i.kg = add nuw nsw i128 %i.jw, %i.ke
  %i.kh = add nuw nsw i128 %i.kg, %i.kf           ; 2 uses
  %i.ki = lshr i128 %i.kh, 64                     ; 2 uses
  %i.kj = trunc nuw nsw i128 %i.ki to i64         ; 2 uses
  %i.kk = trunc i128 %i.kh to i64
  store i64 %i.kk, ptr %i.kb, align 4
  %indvars.iv.next178.i.i.1 = add nuw nsw i64 %indvars.iv177.i.i, 2 ; 3 uses
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1.not = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1.not, label %.preheader127.i.i.unr-lcssa, label %.lr.ph150.i.i, !llvm.loop !23

.lr.ph156.preheader.i.i:                          ; preds = %.preheader127.i.i
  %umax180.i.i = zext i32 %i.ji to i64
  br label %.lr.ph156.i.i

.lr.ph156.i.i:                                    ; preds = %.lr.ph156.i.i, %.lr.ph156.preheader.i.i
  %indvars.iv181.i.i = phi i64 [ %umax180.i.i, %.lr.ph156.preheader.i.i ], [ %indvars.iv.next182.i.i, %.lr.ph156.i.i ] ; 2 uses
  %.1117154.i.i = phi i64 [ 1, %.lr.ph156.preheader.i.i ], [ %i.kp, %.lr.ph156.i.i ]
  %i.kl = trunc nuw i64 %indvars.iv181.i.i to i32
  %i.km = add i32 %.064158.i.i, %i.kl
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.kn ; 2 uses
  %.0.copyload.i77.i.i = load i64, ptr %i.ko, align 4 ; 2 uses
  %add.narrowed.i.i.i = add i64 %.0.copyload.i77.i.i, %.1117154.i.i ; 2 uses
  %add.narrowed.overflow.i.i.i = icmp ult i64 %add.narrowed.i.i.i, %.0.copyload.i77.i.i ; 2 uses
  %i.kp = zext i1 %add.narrowed.overflow.i.i.i to i64
  store i64 %add.narrowed.i.i.i, ptr %i.ko, align 4
  %indvars.iv.next182.i.i = add nuw nsw i64 %indvars.iv181.i.i, 1 ; 2 uses
  %i.kq = icmp samesign ult i64 %indvars.iv.next182.i.i, %i.ip
  %i.kr = select i1 %add.narrowed.overflow.i.i.i, i1 %i.kq, i1 false
  br i1 %i.kr, label %.lr.ph156.i.i, label %.loopexit.i.i, !llvm.loop !24

.loopexit.i.i:                                    ; preds = %.lr.ph156.i.i, %.lr.ph147.i.i, %.preheader127.i.i, %_ZN2v86bigint12_GLOBAL__N_116ShouldBeNegativeEPKmjmi.exit.i.i, %.preheader128.i.i
  %i.ks = add i32 %.064158.i.i, %.sroa.12.0
  %i.kt = load i32, ptr %2, align 8               ; 2 uses
  %i.ku = zext i32 %i.kt to i64
  %i.kv = icmp samesign ult i64 %indvars.iv.next184.i.i, %i.ku
  br i1 %i.kv, label %.lr.ph160.i.i, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit.i, !llvm.loop !25

_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit.i: ; preds = %.loopexit.i.i, %bb.f, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerC2EjjPNS0_13ProcessorImplE.exit41.i
  call void @_ZdaPv(ptr noundef nonnull %i.da) #13, !inline_history !16
  call void @_ZdaPv(ptr noundef nonnull %i.db) #13, !inline_history !16
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #13, !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.kw = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.kw) #13, !inline_history !16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v86bigint12_GLOBAL__N_112FFTContainerD2Ev.exit.i
  %i.ky = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ky) #13, !inline_history !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.la = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %_ZN2v86bigint12_GLOBAL__N_117MultiplyFFT_InnerENS0_8RWDigitsENS0_6DigitsES3_RKNS1_10ParametersEPNS0_13ProcessorImplE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.la) #13, !inline_history !16
  br label %_ZN2v86bigint12_GLOBAL__N_117MultiplyFFT_InnerENS0_8RWDigitsENS0_6DigitsES3_RKNS1_10ParametersEPNS0_13ProcessorImplE.exit

_ZN2v86bigint12_GLOBAL__N_117MultiplyFFT_InnerENS0_8RWDigitsENS0_6DigitsES3_RKNS1_10ParametersEPNS0_13ProcessorImplE.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  store ptr %i.bp, ptr %4, align 8
  store i32 %i.bm, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr %i.c, i32 %i.ab, ptr %i.bl, i32 %i.bm, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %4) #11, !inline_history !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN2v86bigint12_GLOBAL__N_117MultiplyFFT_InnerENS0_8RWDigitsENS0_6DigitsES3_RKNS1_10ParametersEPNS0_13ProcessorImplE.exit
  %i.lc = load ptr, ptr %i.ae, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load i32, ptr %i.ld, align 8
  %i.lf = icmp eq i32 %i.le, 1
  br i1 %i.lf, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer25DoPointwiseMultiplicationERKS2_jjPm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lg = load ptr, ptr %i.ac, align 8
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv
  %i.li = load ptr, ptr %i.lh, align 8            ; 5 uses
  %i.lj = load i32, ptr %i.d, align 8             ; 2 uses
  %i.lk = add i32 %i.lj, -1                       ; 8 uses
  %.not.i3 = icmp eq i32 %i.lk, 0
  br i1 %.not.i3, label %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit, label %.lr.ph.preheader.i4

.lr.ph.preheader.i4:                              ; preds = %bb.p
  %wide.trip.count.i5 = zext i32 %i.lk to i64     ; 4 uses
  %xtraiter101 = and i64 %wide.trip.count.i5, 1
  %i.ll = icmp eq i32 %i.lk, 1
  br i1 %i.ll, label %.lr.ph.i6.epil.preheader, label %.lr.ph.preheader.i4.new

.lr.ph.preheader.i4.new:                          ; preds = %.lr.ph.preheader.i4
  %unroll_iter106 = and i64 %wide.trip.count.i5, 4294967294
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6, %.lr.ph.preheader.i4.new
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.preheader.i4.new ], [ %indvars.iv.next.i8.1, %.lr.ph.i6 ] ; 5 uses
  %.01821.i = phi i64 [ 0, %.lr.ph.preheader.i4.new ], [ %i.mp, %.lr.ph.i6 ]
  %niter107 = phi i64 [ 0, %.lr.ph.preheader.i4.new ], [ %niter107.next.1, %.lr.ph.i6 ]
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i7
  %i.ln = load i64, ptr %i.lm, align 8
  %i.lo = trunc nuw i64 %indvars.iv.i7 to i32
  %i.lp = add i32 %i.lk, %i.lo
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.lq
  %i.ls = load i64, ptr %i.lr, align 8
  %i.lt = zext i64 %i.ls to i128
  %i.lu = zext nneg i64 %.01821.i to i128
  %i.lv = zext i64 %i.ln to i128
  %i.lw = add nuw nsw i128 %i.lu, %i.lt
  %i.lx = sub nsw i128 %i.lv, %i.lw               ; 2 uses
  %i.ly = lshr i128 %i.lx, 64
  %i.lz = trunc i128 %i.lx to i64
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i7
  store i64 %i.lz, ptr %i.ma, align 8
  %indvars.iv.next.i8 = or disjoint i64 %indvars.iv.i7, 1 ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i8
  %i.mc = load i64, ptr %i.mb, align 8
  %i.md = trunc nuw i64 %indvars.iv.next.i8 to i32
  %i.me = add i32 %i.lk, %i.md
  %i.mf = zext i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mf
  %i.mh = load i64, ptr %i.mg, align 8
  %i.mi = zext i64 %i.mh to i128
  %i.mj = and i128 %i.ly, 1
  %i.mk = zext i64 %i.mc to i128
  %i.ml = add nuw nsw i128 %i.mj, %i.mi
  %i.mm = sub nsw i128 %i.mk, %i.ml               ; 2 uses
  %i.mn = lshr i128 %i.mm, 64
  %i.mo = trunc nuw i128 %i.mn to i64
  %i.mp = and i64 %i.mo, 1                        ; 3 uses
  %i.mq = trunc i128 %i.mm to i64
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.next.i8
  store i64 %i.mq, ptr %i.mr, align 8
  %indvars.iv.next.i8.1 = add nuw nsw i64 %indvars.iv.i7, 2 ; 2 uses
  %niter107.next.1 = add i64 %niter107, 2         ; 2 uses
  %niter107.ncmp.1 = icmp eq i64 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa, label %.lr.ph.i6, !llvm.loop !27

_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i6
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit, label %.lr.ph.i6.epil.preheader

.lr.ph.i6.epil.preheader:                         ; preds = %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i4
  %indvars.iv.i7.epil.init = phi i64 [ 0, %.lr.ph.preheader.i4 ], [ %indvars.iv.next.i8.1, %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01821.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i4 ], [ %i.mp, %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa ]
  %lcmp.mod105 = trunc i32 %i.lk to i1
  call void @llvm.assume(i1 %lcmp.mod105)
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i7.epil.init
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = trunc nuw i64 %indvars.iv.i7.epil.init to i32
  %i.mv = add i32 %i.lk, %i.mu
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8
  %i.mz = zext i64 %i.my to i128
  %i.na = zext nneg i64 %.01821.i.epil.init to i128
  %i.nb = zext i64 %i.mt to i128
  %i.nc = add nuw nsw i128 %i.na, %i.mz
  %i.nd = sub nsw i128 %i.nb, %i.nc               ; 2 uses
  %i.ne = lshr i128 %i.nd, 64
  %i.nf = trunc nuw i128 %i.ne to i64
  %i.ng = and i64 %i.nf, 1
  %i.nh = trunc i128 %i.nd to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i7.epil.init
  store i64 %i.nh, ptr %i.ni, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit

_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit: ; preds = %.lr.ph.i6.epil.preheader, %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa, %bb.p
  %.pre-phi.i = phi i64 [ 0, %bb.p ], [ %wide.trip.count.i5, %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa ], [ %wide.trip.count.i5, %.lr.ph.i6.epil.preheader ]
  %.018.lcssa.i = phi i64 [ 0, %bb.p ], [ %i.mp, %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit.loopexit.unr-lcssa ], [ %i.ng, %.lr.ph.i6.epil.preheader ]
  %i.nj = shl i32 %i.lk, 1
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8
  %i.nn = add i64 %.018.lcssa.i, %i.nm
  %i.no = sub i64 0, %i.nn
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %.pre-phi.i
  store i64 %i.no, ptr %i.np, align 8
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.li, i32 noundef %i.lj)
  %i.nq = and i64 %indvars.iv, 1
  %.not.i = icmp eq i64 %i.nq, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit
  %i.nr = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ns = add nuw i64 %indvars.iv, 4294967295
  %i.nt = and i64 %i.ns, 4294967294
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8            ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv
  %i.nx = load ptr, ptr %i.nw, align 8            ; 2 uses
  %i.ny = load i32, ptr %i.d, align 8             ; 4 uses
  %.not.i2 = icmp eq i32 %i.ny, 0
  br i1 %.not.i2, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.q
  %wide.trip.count.i = zext i32 %i.ny to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.02025.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.oq, %.lr.ph.i ]
  %.02124.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.oj, %.lr.ph.i ]
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %indvars.iv.i ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8
  %i.od = zext i64 %i.oa to i128                  ; 2 uses
  %i.oe = zext i64 %i.oc to i128                  ; 2 uses
  %i.of = zext nneg i64 %.02124.i to i128
  %i.og = add nuw nsw i128 %i.od, %i.of
  %i.oh = add nuw nsw i128 %i.og, %i.oe           ; 2 uses
  %i.oi = lshr i128 %i.oh, 64
  %i.oj = trunc nuw nsw i128 %i.oi to i64
  %i.ok = trunc i128 %i.oh to i64
  store i64 %i.ok, ptr %i.nz, align 8
  %i.ol = zext nneg i64 %.02025.i to i128
  %i.om = add nuw nsw i128 %i.ol, %i.oe
  %i.on = sub nsw i128 %i.od, %i.om               ; 2 uses
  %i.oo = lshr i128 %i.on, 64
  %i.op = trunc nuw i128 %i.oo to i64
  %i.oq = and i64 %i.op, 1
  %i.or = trunc i128 %i.on to i64
  store i64 %i.or, ptr %i.ob, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit, label %.lr.ph.i, !llvm.loop !28

_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit: ; preds = %.lr.ph.i, %bb.q
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.nv, i32 noundef %i.ny)
  call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.nx, i32 noundef %i.ny)
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_116ModFnDoubleWidthEPmPKmj.exit, %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer25DoPointwiseMultiplicationERKS2_jjPm.exit, label %bb.d, !llvm.loop !29

_ZN2v86bigint12_GLOBAL__N_112FFTContainer25DoPointwiseMultiplicationERKS2_jjPm.exit: ; preds = %bb.r, %bb.o, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer13Start_DefaultENS0_6DigitsEjii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree readonly captures(none) %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3                  ; 3 uses
  %i.e = load i32, ptr %0, align 8                ; 3 uses
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp ne i32 %2, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.e
  %i.l = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.m = phi i32 [ %i.e, %bb.a ], [ %i.as, %.preheader.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %.preheader.loopexit ] ; 2 uses
  %i.n = icmp ult i32 %.0.lcssa, %i.m
  br i1 %i.n, label %.lr.ph45, label %._crit_edge

.lr.ph45:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = zext i32 %.0.lcssa to i64
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.q = phi i32 [ %i.e, %.lr.ph ], [ %i.as, %bb.e ]
  %.01942 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.e ] ; 3 uses
  %.02041 = phi ptr [ %1, %.lr.ph ], [ %i.ap, %bb.e ] ; 3 uses
  %.03640 = phi i32 [ %2, %.lr.ph ], [ %i.aq, %bb.e ] ; 3 uses
  %.03739 = phi i32 [ %3, %.lr.ph ], [ %.138, %bb.e ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.03640, i32 %.03739) ; 2 uses
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = icmp eq i64 %indvars.iv, %i.s
  %i.u = add i32 %.sroa.speculated, 1             ; 2 uses
  %i.v = icmp eq i32 %.03640, %i.u
  %i.w = select i1 %i.t, i1 %i.v, i1 false
  %.138 = select i1 %i.w, i32 %i.u, i32 %.sroa.speculated ; 6 uses
  %.not = icmp eq i32 %.01942, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.y = sext i32 %.138 to i64                    ; 2 uses
  %i.z = shl nsw i64 %i.y, 3                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.x, ptr readonly align 1 %.02041, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  %i.ab = sub nsw i64 %i.d, %i.z
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ab, i1 false)
  %i.ac = load ptr, ptr %i.j, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.i, align 8
  %i.ag = load i32, ptr %i.k, align 4
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj(ptr noundef %i.ae, ptr noundef %i.af, i32 noundef %.01942, i32 noundef %i.ag, i32 noundef %.138)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.j, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = sext i32 %.138 to i64                   ; 2 uses
  %i.al = shl nsw i64 %i.ak, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aj, ptr readonly align 1 %.02041, i64 %i.al, i1 false)
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.an = sub nsw i64 %i.d, %i.al
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.an, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = zext i32 %.138 to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.02041, i64 %i.ao
  %i.aq = sub i32 %.03640, %.138                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ar = add nsw i32 %.01942, %4
  %i.as = load i32, ptr %0, align 8               ; 3 uses
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  %i.av = icmp ne i32 %i.aq, 0
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.b, label %.preheader.loopexit, !llvm.loop !30

bb.f:                                             ; preds = %.lr.ph45, %bb.f
  %indvars.iv50 = phi i64 [ %i.p, %.lr.ph45 ], [ %indvars.iv.next51, %bb.f ] ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv50
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.d, i1 false)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.ba = load i32, ptr %0, align 8               ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next51, %i.bb
  br i1 %i.bc, label %bb.f, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.lcssa = phi i32 [ %i.m, %.preheader ], [ %i.ba, %bb.f ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer28FFT_ReturnShuffledThreadsafeEjjiPm(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0, i32 noundef %.lcssa, i32 noundef %5, ptr noundef %i.be)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = sdiv i32 %2, 64                          ; 3 uses
  %i.d = srem i32 %2, 64                          ; 10 uses
  %i.e = shl i32 %3, 1                            ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvar = phi i32 [ %indvar.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.0112 = phi i32 [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 30 uses
  %.not = icmp ult i32 %.0112, %i.e
  %i.f = sub nuw i32 %.0112, %i.e
  %indvar.next = add i32 %indvar, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  %.not128 = icmp ult i32 %.0112, %3
  br i1 %.not128, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sub nuw i32 %.0112, %3                   ; 15 uses
  %i.h = icmp eq i32 %i.d, 0
  br i1 %i.h, label %.preheader144.i, label %bb.f

.preheader144.i:                                  ; preds = %bb.d
  %.not175.i = icmp eq i32 %.0112, %3
  br i1 %.not175.i, label %._crit_edge161.i, label %.lr.ph160.i

.lr.ph160.i:                                      ; preds = %.preheader144.i
  %i.i = sub i32 %3, %i.g                         ; 3 uses
  %wide.trip.count189.i = zext i32 %i.g to i64    ; 4 uses
  %xtraiter381 = and i64 %wide.trip.count189.i, 1
  %i.j = icmp eq i32 %i.g, 1
  br i1 %i.j, label %.epil.preheader380, label %.lr.ph160.i.new

.lr.ph160.i.new:                                  ; preds = %.lr.ph160.i
  %unroll_iter385 = and i64 %wide.trip.count189.i, 4294967294
  br label %bb.e

._crit_edge161.i.loopexit.unr-lcssa:              ; preds = %bb.e
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %._crit_edge161.i, label %.epil.preheader380

.epil.preheader380:                               ; preds = %._crit_edge161.i.loopexit.unr-lcssa, %.lr.ph160.i
  %indvars.iv186.i.epil.init = phi i64 [ 0, %.lr.ph160.i ], [ %indvars.iv.next187.i.1, %._crit_edge161.i.loopexit.unr-lcssa ] ; 2 uses
  %.0134158.i.epil.init = phi i64 [ 1, %.lr.ph160.i ], [ %i.bg, %._crit_edge161.i.loopexit.unr-lcssa ]
  %lcmp.mod384 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod384)
  %i.k = trunc nuw i64 %indvars.iv186.i.epil.init to i32
  %i.l = add i32 %i.i, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %add.narrowed.i.i.epil = add i64 %i.o, %.0134158.i.epil.init ; 2 uses
  %add.narrowed.overflow.i.i.epil = icmp ult i64 %add.narrowed.i.i.epil, %i.o
  %i.p = zext i1 %add.narrowed.overflow.i.i.epil to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv186.i.epil.init
  store i64 %add.narrowed.i.i.epil, ptr %i.q, align 8
  br label %._crit_edge161.i

._crit_edge161.i:                                 ; preds = %.epil.preheader380, %._crit_edge161.i.loopexit.unr-lcssa, %.preheader144.i
  %.pre-phi204.i = phi i64 [ 0, %.preheader144.i ], [ %wide.trip.count189.i, %._crit_edge161.i.loopexit.unr-lcssa ], [ %wide.trip.count189.i, %.epil.preheader380 ]
  %.0134.lcssa.i = phi i64 [ 1, %.preheader144.i ], [ %i.bg, %._crit_edge161.i.loopexit.unr-lcssa ], [ %i.p, %.epil.preheader380 ]
  %i.r = zext i32 %3 to i64                       ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, %.0134.lcssa.i
  %i.v = load i64, ptr %1, align 8
  %i.w = zext i64 %i.u to i128
  %i.x = zext i64 %i.v to i128
  %i.y = sub nsw i128 %i.w, %i.x                  ; 2 uses
  %i.z = lshr i128 %i.y, 64                       ; 2 uses
  %i.aa = trunc nuw i128 %i.z to i64
  %i.ab = trunc i128 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi204.i
  store i64 %i.ab, ptr %i.ac, align 8
  %.0135163.i = and i64 %i.aa, 1                  ; 2 uses
  %.0109164.i = add nuw i32 %i.g, 1               ; 2 uses
  %i.ad = icmp ult i32 %.0109164.i, %3
  br i1 %i.ad, label %.lr.ph168.preheader.i, label %.loopexit.i

.lr.ph168.preheader.i:                            ; preds = %._crit_edge161.i
  %i.ae = zext i32 %.0109164.i to i64             ; 3 uses
  %i.af = shl i32 %3, 1
  %i.ag = mul i32 %i.af, %indvar
  %i.ah = add i32 %i.e, -2
  %.neg = sub i32 %i.c, %i.ah
  %i.ai = and i32 %i.c, 1
  %lcmp.mod388.not.not = icmp eq i32 %i.ai, 0
  br i1 %lcmp.mod388.not.not, label %.lr.ph168.i.prol, label %.lr.ph168.i.prol.loopexit

.lr.ph168.i.prol:                                 ; preds = %.lr.ph168.preheader.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = zext i64 %i.ak to i128
  %i.am = and i128 %i.z, 1
  %i.an = add nuw nsw i128 %i.am, %i.al
  %i.ao = sub nsw i128 0, %i.an                   ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = trunc nuw i128 %i.ap to i64
  %i.ar = trunc i128 %i.ao to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  store i64 %i.ar, ptr %i.as, align 8
  %.0135.i.prol = and i64 %i.aq, 1                ; 2 uses
  %indvars.iv.next192.i.prol = add nuw nsw i64 %i.ae, 1
  br label %.lr.ph168.i.prol.loopexit

.lr.ph168.i.prol.loopexit:                        ; preds = %.lr.ph168.i.prol, %.lr.ph168.preheader.i
  %.0135.i.lcssa.unr = phi i64 [ poison, %.lr.ph168.preheader.i ], [ %.0135.i.prol, %.lr.ph168.i.prol ]
  %indvars.iv191.i.unr = phi i64 [ %i.ae, %.lr.ph168.preheader.i ], [ %indvars.iv.next192.i.prol, %.lr.ph168.i.prol ]
  %.0135165.i.unr = phi i64 [ %.0135163.i, %.lr.ph168.preheader.i ], [ %.0135.i.prol, %.lr.ph168.i.prol ]
  %i.at = icmp eq i32 %i.ag, %.neg
  br i1 %i.at, label %.loopexit.i, label %.lr.ph168.i

bb.e:                                             ; preds = %bb.e, %.lr.ph160.i.new
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph160.i.new ], [ %indvars.iv.next187.i.1, %bb.e ] ; 4 uses
  %.0134158.i = phi i64 [ 1, %.lr.ph160.i.new ], [ %i.bg, %bb.e ]
  %niter386 = phi i64 [ 0, %.lr.ph160.i.new ], [ %niter386.next.1, %bb.e ]
  %i.au = trunc nuw i64 %indvars.iv186.i to i32
  %i.av = add i32 %i.i, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %add.narrowed.i.i = add i64 %i.ay, %.0134158.i  ; 2 uses
  %add.narrowed.overflow.i.i = icmp ult i64 %add.narrowed.i.i, %i.ay
  %i.az = zext i1 %add.narrowed.overflow.i.i to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv186.i
  store i64 %add.narrowed.i.i, ptr %i.ba, align 8
  %indvars.iv.next187.i = or disjoint i64 %indvars.iv186.i, 1 ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv.next187.i to i32
  %i.bc = add i32 %i.i, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %add.narrowed.i.i.1 = add i64 %i.bf, %i.az      ; 2 uses
  %add.narrowed.overflow.i.i.1 = icmp ult i64 %add.narrowed.i.i.1, %i.bf
  %i.bg = zext i1 %add.narrowed.overflow.i.i.1 to i64 ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next187.i
  store i64 %add.narrowed.i.i.1, ptr %i.bh, align 8
  %indvars.iv.next187.i.1 = add nuw nsw i64 %indvars.iv186.i, 2 ; 2 uses
  %niter386.next.1 = add i64 %niter386, 2         ; 2 uses
  %niter386.ncmp.1 = icmp eq i64 %niter386.next.1, %unroll_iter385
  br i1 %niter386.ncmp.1, label %._crit_edge161.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !33

.lr.ph168.i:                                      ; preds = %.lr.ph168.i.prol.loopexit, %.lr.ph168.i
  %indvars.iv191.i = phi i64 [ %indvars.iv.next192.i.1, %.lr.ph168.i ], [ %indvars.iv191.i.unr, %.lr.ph168.i.prol.loopexit ] ; 4 uses
  %.0135165.i = phi i64 [ %.0135.i.1, %.lr.ph168.i ], [ %.0135165.i.unr, %.lr.ph168.i.prol.loopexit ]
  %i.bi = trunc nuw i64 %indvars.iv191.i to i32
  %i.bj = sub i32 %i.bi, %i.g
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = zext i64 %i.bm to i128
  %i.bo = zext nneg i64 %.0135165.i to i128
  %i.bp = add nuw nsw i128 %i.bo, %i.bn
  %i.bq = sub nsw i128 0, %i.bp                   ; 2 uses
  %i.br = trunc i128 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv191.i
  store i64 %i.br, ptr %i.bs, align 8
  %indvars.iv.next192.i = add nuw nsw i64 %indvars.iv191.i, 1 ; 2 uses
  %i.bt = trunc nuw i64 %indvars.iv.next192.i to i32
  %i.bu = sub i32 %i.bt, %i.g
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = zext i64 %i.bx to i128
  %i.bz = shl i128 %i.bq, 63
  %i.ca = ashr i128 %i.bz, 127
  %.neg410 = sub nsw i128 %i.ca, %i.by            ; 2 uses
  %i.cb = lshr i128 %.neg410, 64
  %i.cc = trunc nuw i128 %i.cb to i64
  %i.cd = trunc i128 %.neg410 to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next192.i
  store i64 %i.cd, ptr %i.ce, align 8
  %.0135.i.1 = and i64 %i.cc, 1                   ; 2 uses
  %indvars.iv.next192.i.1 = add nuw nsw i64 %indvars.iv191.i, 2 ; 2 uses
  %lftr.wideiv194.i.1 = trunc i64 %indvars.iv.next192.i.1 to i32
  %exitcond195.not.i.1 = icmp eq i32 %3, %lftr.wideiv194.i.1
  br i1 %exitcond195.not.i.1, label %.loopexit.i, label %.lr.ph168.i, !llvm.loop !34

bb.f:                                             ; preds = %bb.d
  %i.cf = xor i32 %i.g, -1
  %i.cg = add i32 %3, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = sub nsw i32 64, %i.d
  %i.cl = zext nneg i32 %i.ck to i64              ; 8 uses
  %.0110146.i = lshr i64 %i.cj, %i.cl             ; 3 uses
  %.not.i = icmp eq i32 %.0112, %3
  br i1 %.not.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.f
  %.pre205.i = zext i32 %i.d to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.cm = sub i32 %3, %i.g                        ; 3 uses
  %i.cn = zext i32 %i.d to i64                    ; 5 uses
  %wide.trip.count.i = zext i32 %i.g to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.co = icmp eq i32 %i.g, 1
  br i1 %i.co, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.g

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_0
begin_hunk_1_@_ZN2v86bigint12_GLOBAL__N_110ShiftModFnEPmPKmijj:bb.a
  %i.ni = add i32 %.0112, %i.nh
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nj
  store i64 %i.ng, ptr %i.nk, align 8
  %i.nl = lshr i64 %i.ne, %i.ls
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.nn = load i64, ptr %i.nm, align 8            ; 2 uses
  %i.no = shl i64 %i.nn, %i.lq
  %i.np = or i64 %i.no, %i.nl
  %i.nq = trunc nuw i64 %indvars.iv.next to i32
  %i.nr = add i32 %.0112, %i.nq
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ns
  store i64 %i.np, ptr %i.nt, align 8
  %i.nu = lshr i64 %i.nn, %i.ls                   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter396.next.1 = add i64 %niter396, 2         ; 2 uses
  %niter396.ncmp.1.not = icmp eq i64 %niter396.next.1, %unroll_iter395
  br i1 %niter396.ncmp.1.not, label %.preheader206.loopexit.unr-lcssa, label %bb.p, !llvm.loop !48

.lr.ph215:                                        ; preds = %.lr.ph215.preheader372, %.lr.ph215
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %.lr.ph215 ], [ %indvars.iv278.ph, %.lr.ph215.preheader372 ] ; 2 uses
  %i.nv = trunc nuw i64 %indvars.iv278 to i32
  %i.nw = add i32 %.0112, %i.nv
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nx
  store i64 0, ptr %i.ny, align 8
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 3 uses
  %i.nz = icmp samesign ult i64 %indvars.iv.next279, %i.mh
  br i1 %i.nz, label %.lr.ph215, label %._crit_edge.loopexit, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph215, %middle.block, %.lr.ph215.preheader
  %.lcssa272.wide = phi i64 [ %indvars.iv.next279.peel, %.lr.ph215.preheader ], [ %i.mv, %middle.block ], [ %indvars.iv.next279, %.lr.ph215 ]
  %i.oa = trunc nuw i64 %.lcssa272.wide to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader206
  %.1119.lcssa = phi i64 [ %.0118.lcssa, %.preheader206 ], [ 0, %._crit_edge.loopexit ] ; 2 uses
  %.1115.lcssa = phi i32 [ %.0114.lcssa, %.preheader206 ], [ %i.oa, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.speculated154 = tail call i32 @llvm.umin.i32(i32 %4, i32 %3) ; 3 uses
  %i.ob = icmp ult i32 %.1115.lcssa, %.sroa.speculated154
  br i1 %i.ob, label %.lr.ph222, label %._crit_edge223

.lr.ph222:                                        ; preds = %._crit_edge
  %i.oc = zext nneg i32 %i.d to i64
  %i.od = sub i32 %.0112, %3
  %i.oe = sub nsw i32 64, %i.d
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = zext i32 %.1115.lcssa to i64
  %wide.trip.count = zext i32 %.sroa.speculated154 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph222, %bb.q
  %indvars.iv282 = phi i64 [ %i.og, %.lr.ph222 ], [ %indvars.iv.next283, %bb.q ] ; 3 uses
  %.2120219 = phi i64 [ %.1119.lcssa, %.lr.ph222 ], [ %i.ox, %bb.q ]
  %.2191218 = phi i64 [ 0, %.lr.ph222 ], [ %i.or, %bb.q ]
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv282
  %i.oi = load i64, ptr %i.oh, align 8            ; 2 uses
  %i.oj = shl i64 %i.oi, %i.oc
  %i.ok = or i64 %i.oj, %.2120219
  %i.ol = zext i64 %i.ok to i128
  %i.om = zext nneg i64 %.2191218 to i128
  %i.on = add nuw nsw i128 %i.om, %i.ol
  %i.oo = sub nsw i128 0, %i.on                   ; 2 uses
  %i.op = lshr i128 %i.oo, 64
  %i.oq = trunc nuw i128 %i.op to i64
  %i.or = and i64 %i.oq, 1                        ; 2 uses
  %i.os = trunc i128 %i.oo to i64
  %i.ot = trunc nuw i64 %indvars.iv282 to i32
  %i.ou = add i32 %i.od, %i.ot
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ov
  store i64 %i.os, ptr %i.ow, align 8
  %i.ox = lshr i64 %i.oi, %i.of                   ; 2 uses
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge223, label %bb.q, !llvm.loop !50

._crit_edge223:                                   ; preds = %bb.q, %._crit_edge
  %.2191.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.or, %bb.q ] ; 2 uses
  %.2120.lcssa = phi i64 [ %.1119.lcssa, %._crit_edge ], [ %i.ox, %bb.q ] ; 2 uses
  %.2116.lcssa = phi i32 [ %.1115.lcssa, %._crit_edge ], [ %.sroa.speculated154, %bb.q ] ; 4 uses
  %i.oy = icmp ult i32 %.2116.lcssa, %3
  br i1 %i.oy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge223
  %i.oz = zext nneg i64 %.2120.lcssa to i128
  %i.pa = zext nneg i64 %.2191.lcssa to i128
  %i.pb = add nuw nsw i128 %i.pa, %i.oz
  %i.pc = sub nsw i128 0, %i.pb                   ; 2 uses
  %i.pd = lshr i128 %i.pc, 64
  %i.pe = trunc nuw i128 %i.pd to i64
  %i.pf = and i64 %i.pe, 1
  %i.pg = trunc nsw i128 %i.pc to i64
  %i.ph = sub i32 %.0112, %3
  %i.pi = add i32 %i.ph, %.2116.lcssa
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pj
  store i64 %i.pg, ptr %i.pk, align 8
  %i.pl = add nuw i32 %.2116.lcssa, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge223
  %.3192 = phi i64 [ %i.pf, %bb.r ], [ %.2191.lcssa, %._crit_edge223 ] ; 3 uses
  %.3121 = phi i64 [ 0, %bb.r ], [ %.2120.lcssa, %._crit_edge223 ]
  %.3117 = phi i32 [ %i.pl, %bb.r ], [ %.2116.lcssa, %._crit_edge223 ] ; 3 uses
  %i.pm = icmp ult i32 %.3117, %3
  br i1 %i.pm, label %.lr.ph230, label %.._crit_edge231_crit_edge

.._crit_edge231_crit_edge:                        ; preds = %bb.s
  %.pre307 = zext i32 %3 to i64
  br label %._crit_edge231

.lr.ph230:                                        ; preds = %bb.s
  %i.pn = sub i32 %.0112, %3                      ; 3 uses
  %i.po = zext i32 %.3117 to i64                  ; 4 uses
  %wide.trip.count288 = zext i32 %3 to i64        ; 5 uses
  %i.pp = sub nsw i64 %wide.trip.count288, %i.po
  %xtraiter397 = and i64 %i.pp, 1
  %lcmp.mod398.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod398.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph230
  %i.pq = zext nneg i64 %.3192 to i128
  %i.pr = sub nsw i128 0, %i.pq                   ; 2 uses
  %i.ps = lshr i128 %i.pr, 64
  %i.pt = trunc nuw i128 %i.ps to i64
  %i.pu = and i64 %i.pt, 1                        ; 2 uses
  %i.pv = trunc nsw i128 %i.pr to i64
  %i.pw = add i32 %i.pn, %.3117
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.px
  store i64 %i.pv, ptr %i.py, align 8
  %indvars.iv.next286.prol = add nuw nsw i64 %i.po, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph230
  %.lcssa369.unr = phi i64 [ poison, %.lr.ph230 ], [ %i.pu, %.prol.loopexit.unr-lcssa ]
  %indvars.iv285.unr = phi i64 [ %i.po, %.lr.ph230 ], [ %indvars.iv.next286.prol, %.prol.loopexit.unr-lcssa ]
  %.4193227.unr = phi i64 [ %.3192, %.lr.ph230 ], [ %i.pu, %.prol.loopexit.unr-lcssa ]
  %i.pz = add nsw i64 %wide.trip.count288, -1
  %i.qa = icmp eq i64 %i.pz, %i.po
  br i1 %i.qa, label %._crit_edge231, label %.lr.ph230.new

.lr.ph230.new:                                    ; preds = %.prol.loopexit
  %invariant.op = add i32 1, %i.pn
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph230.new
  %indvars.iv285 = phi i64 [ %indvars.iv285.unr, %.lr.ph230.new ], [ %indvars.iv.next286.1, %bb.t ] ; 3 uses
  %.4193227 = phi i64 [ %.4193227.unr, %.lr.ph230.new ], [ %i.qk, %bb.t ]
  %i.qb = zext nneg i64 %.4193227 to i128
  %i.qc = sub nsw i128 0, %i.qb                   ; 2 uses
  %i.qd = trunc nsw i128 %i.qc to i64
  %i.qe = trunc nuw i64 %indvars.iv285 to i32
  %i.qf = add i32 %i.pn, %i.qe
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.qg
  store i64 %i.qd, ptr %i.qh, align 8
  %i.qi = ashr i128 %i.qc, 127                    ; 2 uses
  %i.qj = trunc nsw i128 %i.qi to i64
  %i.qk = and i64 %i.qj, 1                        ; 2 uses
  %i.ql = trunc nsw i128 %i.qi to i64
  %i.qm = trunc i64 %indvars.iv285 to i32
  %.reass = add i32 %i.qm, %invariant.op
  %i.qn = zext i32 %.reass to i64
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.qn
  store i64 %i.ql, ptr %i.qo, align 8
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond289.not.1 = icmp eq i64 %indvars.iv.next286.1, %wide.trip.count288
  br i1 %exitcond289.not.1, label %._crit_edge231, label %bb.t, !llvm.loop !51

._crit_edge231:                                   ; preds = %.prol.loopexit, %bb.t, %.._crit_edge231_crit_edge
  %.pre-phi308 = phi i64 [ %.pre307, %.._crit_edge231_crit_edge ], [ %wide.trip.count288, %bb.t ], [ %wide.trip.count288, %.prol.loopexit ] ; 2 uses
  %.4193.lcssa = phi i64 [ %.3192, %.._crit_edge231_crit_edge ], [ %.lcssa369.unr, %.prol.loopexit ], [ %i.qk, %bb.t ]
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi308
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = zext i32 %.0112 to i64
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.qr ; 2 uses
  %i.qt = load i64, ptr %i.qs, align 8
  %i.qu = zext nneg i32 %i.d to i64
  %i.qv = shl i64 %i.qq, %i.qu
  %i.qw = or i64 %i.qv, %.3121
  %i.qx = zext i64 %i.qw to i128
  %i.qy = zext nneg i64 %.4193.lcssa to i128
  %i.qz = zext i64 %i.qt to i128
  %i.ra = add nuw nsw i128 %i.qy, %i.qx
  %i.rb = sub nsw i128 %i.qz, %i.ra               ; 2 uses
  %i.rc = lshr i128 %i.rb, 64
  %i.rd = trunc nuw i128 %i.rc to i64
  %i.re = trunc i128 %i.rb to i64
  store i64 %i.re, ptr %i.qs, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge231, %._crit_edge250
  %.pre-phi = phi i64 [ %.pre-phi308, %._crit_edge231 ], [ %.pre-phi306, %._crit_edge250 ]
  %.5.in = phi i64 [ %i.rd, %._crit_edge231 ], [ %i.lm, %._crit_edge250 ] ; 2 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi ; 3 uses
  store i64 0, ptr %i.rf, align 8
  %5 = icmp ult i32 %.0112, %3
  %i.rg = trunc i64 %.5.in to i1                  ; 2 uses
  %i.rh = select i1 %5, i1 %i.rg, i1 false
  br i1 %i.rh, label %.lr.ph256.preheader, label %._crit_edge257

.lr.ph256.preheader:                              ; preds = %bb.u
  %.0111252 = add nuw i32 %.0112, 1
  br label %.lr.ph256

._crit_edge257:                                   ; preds = %.lr.ph256, %bb.u
  %.lcssa = phi i1 [ %i.rg, %bb.u ], [ %i.rs, %.lr.ph256 ]
  br i1 %.lcssa, label %.preheader, label %_ZN2v86bigint12_GLOBAL__N_116ShiftModFn_LargeEPmPKmjij.exit

.lr.ph256:                                        ; preds = %.lr.ph256.preheader, %.lr.ph256
  %.0111254 = phi i32 [ %.0111, %.lr.ph256 ], [ %.0111252, %.lr.ph256.preheader ] ; 2 uses
  %.6.in253 = phi i64 [ %i.rp, %.lr.ph256 ], [ %.5.in, %.lr.ph256.preheader ]
  %.6 = and i64 %.6.in253, 1
  %i.ri = zext i32 %.0111254 to i64
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ri ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8
  %i.rl = zext i64 %i.rk to i128
  %i.rm = zext nneg i64 %.6 to i128
  %i.rn = sub nsw i128 %i.rl, %i.rm               ; 2 uses
  %i.ro = lshr i128 %i.rn, 64                     ; 2 uses
  %i.rp = trunc nuw i128 %i.ro to i64
  %i.rq = trunc i128 %i.rn to i64
  store i64 %i.rq, ptr %i.rj, align 8
  %.0111 = add i32 %.0111254, 1                   ; 2 uses
  %i.rr = icmp ule i32 %.0111, %3
  %i.rs = trunc i128 %i.ro to i1                  ; 2 uses
  %i.rt = select i1 %i.rr, i1 %i.rs, i1 false
  br i1 %i.rt, label %.lr.ph256, label %._crit_edge257, !llvm.loop !52

.preheader:                                       ; preds = %._crit_edge257, %.preheader
  %.0259 = phi i32 [ %i.rx, %.preheader ], [ 0, %._crit_edge257 ] ; 2 uses
  %i.ru = zext i32 %.0259 to i64
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ru ; 2 uses
  %i.rw = load i64, ptr %i.rv, align 8            ; 2 uses
  %add.narrowed.i = add i64 %i.rw, 1
  %add.narrowed.overflow.i.not = icmp ne i64 %i.rw, -1
  store i64 %add.narrowed.i, ptr %i.rv, align 8
  %i.rx = add i32 %.0259, 1                       ; 2 uses
  %.not129 = icmp ugt i32 %i.rx, %3
  %or.cond = or i1 %add.narrowed.overflow.i.not, %.not129
  br i1 %or.cond, label %bb.v, label %.preheader, !llvm.loop !53

bb.v:                                             ; preds = %.preheader
  %i.ry = load i64, ptr %i.rf, align 8
  %add.narrowed.i133 = add i64 %i.ry, 1
  store i64 %add.narrowed.i133, ptr %i.rf, align 8
  br label %_ZN2v86bigint12_GLOBAL__N_116ShiftModFn_LargeEPmPKmjij.exit

_ZN2v86bigint12_GLOBAL__N_116ShiftModFn_LargeEPmPKmjij.exit: ; preds = %.lr.ph171.i, %._crit_edge257, %bb.v, %._crit_edge174.i, %.loopexit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer28FFT_ReturnShuffledThreadsafeEjjiPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge, %bb.a
  %.tr40 = phi i32 [ %1, %bb.a ], [ %i.i, %._crit_edge ] ; 4 uses
  %.tr41 = phi i32 [ %2, %bb.a ], [ %i.d, %._crit_edge ] ; 2 uses
  %.tr42 = phi i32 [ %3, %bb.a ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.d = lshr i32 %.tr41, 1                       ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = zext i32 %.tr40 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = add i32 %i.d, %.tr40                     ; 3 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load i32, ptr %i.b, align 8              ; 4 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %tailrecurse
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.02025.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ae, %.lr.ph.i ]
  %.02124.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.x, %.lr.ph.i ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = zext i64 %i.o to i128                    ; 2 uses
  %i.s = zext i64 %i.q to i128                    ; 2 uses
  %i.t = zext nneg i64 %.02124.i to i128
  %i.u = add nuw nsw i128 %i.r, %i.t
  %i.v = add nuw nsw i128 %i.u, %i.s              ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = trunc nuw nsw i128 %i.w to i64
  %i.y = trunc i128 %i.v to i64
  store i64 %i.y, ptr %i.n, align 8
  %i.z = zext nneg i64 %.02025.i to i128
  %i.aa = add nuw nsw i128 %i.z, %i.s
  %i.ab = sub nsw i128 %i.r, %i.aa                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = trunc nuw i128 %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %i.af = trunc i128 %i.ab to i64
  store i64 %i.af, ptr %i.p, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit, label %.lr.ph.i, !llvm.loop !28

_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit: ; preds = %.lr.ph.i, %tailrecurse
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.h, i32 noundef %i.m)
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj(ptr noundef %i.l, i32 noundef %i.m)
  %i.ag = icmp ugt i32 %.tr41, 3
  br i1 %i.ag, label %.lr.ph.preheader, label %_ZN2v86bigint12_GLOBAL__N_112FFTContainer11FFT_RecurseEjjiPm.exit

.lr.ph.preheader:                                 ; preds = %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj.exit112
  %i.ah = shl nsw i32 %.tr42, 1                   ; 2 uses
  tail call fastcc void @_ZN2v86bigint12_GLOBAL__N_112FFTContainer28FFT_ReturnShuffledThreadsafeEjjiPm(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.tr40, i32 noundef range(i32 0, -2147483648) %i.d, i32 noundef %i.ah, ptr noundef nonnull %4), !inline_history !15
  br label %tailrecurse

_ZN2v86bigint12_GLOBAL__N_112FFTContainer11FFT_RecurseEjjiPm.exit: ; preds = %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj.exit112
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj.exit112 ] ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ak = add i32 %.tr40, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 16 uses
  %i.ao = add i32 %i.i, %i.aj
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %i.b, align 8             ; 19 uses
  %.not.i30 = icmp eq i32 %i.as, 0                ; 5 uses
  br i1 %.not.i30, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit39, label %.lr.ph.preheader.i31

.lr.ph.preheader.i31:                             ; preds = %.lr.ph
  %wide.trip.count.i32 = zext i32 %i.as to i64
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i33, %.lr.ph.preheader.i31
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.preheader.i31 ], [ %indvars.iv.next.i37, %.lr.ph.i33 ] ; 4 uses
  %.02025.i35 = phi i64 [ 0, %.lr.ph.preheader.i31 ], [ %i.bk, %.lr.ph.i33 ]
  %.02124.i36 = phi i64 [ 0, %.lr.ph.preheader.i31 ], [ %i.bd, %.lr.ph.i33 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i34 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i34
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = zext i64 %i.au to i128                  ; 2 uses
  %i.ay = zext i64 %i.aw to i128                  ; 2 uses
  %i.az = zext nneg i64 %.02124.i36 to i128
  %i.ba = add nuw nsw i128 %i.ax, %i.az
  %i.bb = add nuw nsw i128 %i.ba, %i.ay           ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = trunc nuw nsw i128 %i.bc to i64
  %i.be = trunc i128 %i.bb to i64
  store i64 %i.be, ptr %i.at, align 8
  %i.bf = zext nneg i64 %.02025.i35 to i128
  %i.bg = add nuw nsw i128 %i.bf, %i.ay
  %i.bh = sub nsw i128 %i.ax, %i.bg               ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = trunc nuw i128 %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %i.bl = trunc i128 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i34
  store i64 %i.bl, ptr %i.bm, align 8
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, %wide.trip.count.i32
  br i1 %exitcond.not.i38, label %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit39, label %.lr.ph.i33, !llvm.loop !28

_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit39: ; preds = %.lr.ph.i33, %.lr.ph
  %i.bn = add i32 %i.as, -1
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bo ; 6 uses
  %i.bq = load i64, ptr %i.bp, align 8            ; 5 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj.exit, label %bb.b

bb.b:                                             ; preds = %_ZN2v86bigint12_GLOBAL__N_17SumDiffEPmS2_PKmS4_j.exit39
  %i.bs = icmp sgt i64 %i.bq, 0
  store i64 0, ptr %i.bp, align 8
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i30, label %_ZN2v86bigint12_GLOBAL__N_15ModFnEPmj.exit, label %.lr.ph33.preheader.i.i

.lr.ph33.preheader.i.i:                           ; preds = %bb.c
  %wide.trip.count42.i.i = zext i32 %i.as to i64
  %i.bt = load i64, ptr %i.an, align 8
  %i.bu = zext i64 %i.bt to i128
  %i.bv = zext nneg i64 %i.bq to i128
  %i.bw = sub nsw i128 %i.bu, %i.bv               ; 2 uses
  %i.bx = trunc i128 %i.bw to i64
  store i64 %i.bx, ptr %i.an, align 8
  %i.by = and i128 %i.bw, 18446744073709551616
  %i.bz = icmp eq i128 %i.by, 0
  %exitcond43.peel.not.i.i = icmp eq i32 %i.as, 1
  %or.cond.i.i = or i1 %exitcond43.peel.not.i.i, %i.bz
  br i1 %or.cond.i.i, label %_ZN2v86bigint12_GLOBAL__N_112ModFn_HelperEPmjl.exit.i, label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph33.preheader.i.i, %.lr.ph33.i.i
end_hunk_1
