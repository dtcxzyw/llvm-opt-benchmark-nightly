Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genrb?download=true
inline.NumInlined: 218
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
          to label %bb.bm unwind label %bb.bd     ; 6 uses

bb.bm:                                            ; preds = %bb.bl
  %i.er = icmp slt i32 %i.eq, 32
  br i1 %i.er, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.et = load ptr, ptr %3, align 8, !tbaa !40
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.es, ptr noundef nonnull @.str.52, ptr noundef %i.et) #26 ; 0 uses
  br label %bb.dt

bb.bo:                                            ; preds = %bb.bm
  %i.ev = add nuw nsw i32 %i.eq, 15
  %i.ew = and i32 %i.ev, 2147483632
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ex) #30
          to label %bb.bp unwind label %bb.bd     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.ey, ptr @_ZL10poolBundle, align 8, !tbaa !15
  %i.ez = invoke i32 @T_FileStream_read(ptr noundef nonnull %i.el, ptr noundef nonnull %i.ey, i32 noundef %i.eq)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %.not264 = icmp eq i32 %i.ez, %i.eq
  br i1 %.not264, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fb = load ptr, ptr %3, align 8, !tbaa !40
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.54, ptr noundef %i.fb) #26 ; 0 uses
  br label %bb.dt

bb.bs:                                            ; preds = %bb.ca, %bb.by, %bb.bx, %bb.bv, %bb.bt, %bb.bp
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.bt:                                            ; preds = %bb.bq
  %i.fe = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15
  %i.ff = invoke ptr @udata_openSwapperForInputData_78(ptr noundef %i.fe, i32 noundef %i.eq, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
          to label %bb.bu unwind label %bb.bs     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.fg = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 1
  br i1 %i.fh, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fj = load ptr, ptr %3, align 8, !tbaa !40
  %i.fk = invoke ptr @u_errorName_78(i32 noundef %i.fg)
          to label %bb.bw unwind label %bb.bs

bb.bw:                                            ; preds = %bb.bv
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.55, ptr noundef %i.fj, ptr noundef %i.fk) #26 ; 0 uses
  %i.fm = load i32, ptr %i.a, align 4, !tbaa !21
  br label %bb.dt

bb.bx:                                            ; preds = %bb.bu
  %i.fn = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15 ; 2 uses
  %i.fo = invoke i32 @ures_swap_78(ptr noundef %i.ff, ptr noundef %i.fn, i32 noundef %i.eq, ptr noundef %i.fn, ptr noundef nonnull %i.a)
          to label %bb.by unwind label %bb.bs     ; 0 uses

bb.by:                                            ; preds = %bb.bx
  invoke void @udata_closeSwapper_78(ptr noundef %i.ff)
          to label %bb.bz unwind label %bb.bs

bb.bz:                                            ; preds = %bb.by
  %i.fp = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.fq = icmp slt i32 %i.fp, 1
  br i1 %i.fq, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fr = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fs = load ptr, ptr %3, align 8, !tbaa !40
  %i.ft = invoke ptr @u_errorName_78(i32 noundef %i.fp)
          to label %bb.cb unwind label %bb.bs

bb.cb:                                            ; preds = %bb.ca
  %i.fu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fr, ptr noundef nonnull @.str.56, ptr noundef %i.fs, ptr noundef %i.ft) #26 ; 0 uses
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !21
  br label %bb.dt

bb.cc:                                            ; preds = %bb.bz
  %i.fw = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !28
  %i.fz = icmp ult i8 %i.fy, 2
  br i1 %i.fz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ga = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.gb = load ptr, ptr %3, align 8, !tbaa !40
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.57, ptr noundef %i.gb) #26 ; 0 uses
  br label %bb.dt

bb.ce:                                            ; preds = %bb.cc
  %i.gd = load i16, ptr %i.fw, align 2, !tbaa !70
  %i.ge = zext i16 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ge ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  store ptr %i.gg, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 8), align 8, !tbaa !71
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !45
  %i.gi = and i32 %i.gh, 255                      ; 2 uses
  %i.gj = icmp samesign ult i32 %i.gi, 8
  br i1 %i.gj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.gl = load ptr, ptr %3, align 8, !tbaa !40
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.58, ptr noundef %i.gl) #26 ; 0 uses
  br label %bb.dt

bb.cg:                                            ; preds = %bb.ce
  %i.gn = add nuw nsw i32 %i.gi, 1                ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !45 ; 3 uses
  %i.gq = zext nneg i32 %i.gn to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gq ; 4 uses
  store ptr %i.gr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 16), align 8, !tbaa !72
  %i.gs = sub nsw i32 %i.gp, %i.gn                ; 2 uses
  %i.gt = shl i32 %i.gs, 2                        ; 2 uses
  store i32 %i.gt, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 24), align 8, !tbaa !73
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !45
  store i32 %i.gv, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 44), align 4, !tbaa !74
  %i.gw = icmp sgt i32 %i.gs, 0
  br i1 %i.gw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cg
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.gt, i32 1) ; 3 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gx = icmp eq i32 %smax, 1
  br i1 %i.gx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.cj, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.cj ] ; 3 uses
  %i.gy = phi i32 [ %.promoted, %.lr.ph.preheader.new ], [ %i.hj, %bb.cj ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.cj ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !28
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.ch, label %.lr.ph.1

bb.ch:                                            ; preds = %.lr.ph
  %i.hc = add nsw i32 %i.gy, 1                    ; 2 uses
  store i32 %i.hc, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4, !tbaa !75
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.ch
  %i.hd = phi i32 [ %i.gy, %.lr.ph ], [ %i.hc, %bb.ch ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !28
  %i.hh = icmp eq i8 %i.hg, 0
  br i1 %i.hh, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.1
  %i.hi = add nsw i32 %i.hd, 1                    ; 2 uses
  store i32 %i.hi, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4, !tbaa !75
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph.1
  %i.hj = phi i32 [ %i.hd, %.lr.ph.1 ], [ %i.hi, %bb.ci ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !61

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.cj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted, %.lr.ph.preheader ], [ %i.hj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod380 = trunc i32 %smax to i1
  call void @llvm.assume(i1 %lcmp.mod380)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.epil.init
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !28
  %i.hm = icmp eq i8 %i.hl, 0
  br i1 %i.hm, label %bb.ck, label %._crit_edge

bb.ck:                                            ; preds = %.lr.ph.epil.preheader
  %i.hn = add nsw i32 %.epil.init, 1
  store i32 %i.hn, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ck, %.lr.ph.epil.preheader, %bb.cg
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !45
  %i.hq = sub nsw i32 %i.hp, %i.gp                ; 2 uses
  %i.hr = shl nuw nsw i32 %i.hq, 1                ; 2 uses
  %i.hs = icmp sgt i32 %i.hq, 0
  br i1 %i.hs, label %bb.cl, label %bb.do

bb.cl:                                            ; preds = %._crit_edge
  %i.ht = invoke i32 @getFormatVersion()
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.hu = icmp sgt i32 %i.ht, 2
  br i1 %i.hu, label %bb.cn, label %bb.do

bb.cn:                                            ; preds = %bb.cm
  %i.hv = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30
          to label %bb.co unwind label %bb.cq     ; 6 uses

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN9SResourceC2EP7SRBRootPKcaPK7UStringR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.hv, ptr noundef null, ptr noundef null, i8 noundef signext 2, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  store i32 0, ptr %i.hw, align 8, !tbaa !80
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 64
  store ptr null, ptr %i.hx, align 8, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV18PseudoListResource, i64 16), ptr %i.hv, align 8, !tbaa !18
  store ptr %i.hv, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16
  %i.hy = load i32, ptr %i.a, align 4, !tbaa !21
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %bb.cs, label %bb.ct

bb.cq:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.cn, %bb.cl
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.cr:                                            ; preds = %bb.co
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef 72) #24
  br label %bb.dw

bb.cs:                                            ; preds = %bb.cp
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #32
  unreachable

bb.ct:                                            ; preds = %bb.cp
  %i.ic = sext i32 %i.gp to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.ic
  br label %bb.cu

bb.cu:                                            ; preds = %bb.dm, %bb.ct
  %.0177 = phi ptr [ %i.id, %bb.ct ], [ %i.kb, %bb.dm ] ; 7 uses
  %.0174 = phi i32 [ %i.hr, %bb.ct ], [ %i.kc, %bb.dm ] ; 8 uses
  %i.ie = load i16, ptr %.0177, align 2, !tbaa !83 ; 4 uses
  %i.if = zext i16 %i.ie to i32                   ; 3 uses
  %i.ig = and i32 %i.if, 64512
  %i.ih = icmp eq i32 %i.ig, 56320
  br i1 %i.ih, label %bb.cw, label %.preheader

.preheader:                                       ; preds = %bb.cu
  %.not332 = icmp eq i32 %.0174, 0
  br i1 %.not332, label %.critedge, label %.lr.ph325.preheader

.lr.ph325.preheader:                              ; preds = %.preheader
  %i.ii = zext nneg i32 %.0174 to i64
  br label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %bb.cv
  %indvars.iv334 = phi i64 [ 0, %.lr.ph325.preheader ], [ %indvars.iv.next335, %bb.cv ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.0177, i64 %indvars.iv334
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !83
  %.not268 = icmp eq i16 %i.ik, 0
  br i1 %.not268, label %.critedge.loopexit.split.loop.exit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph325
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond337.not = icmp eq i64 %indvars.iv.next335, %i.ii
  br i1 %exitcond337.not, label %.critedge, label %.lr.ph325, !llvm.loop !62

bb.cw:                                            ; preds = %bb.cu
  %i.il = icmp ult i16 %i.ie, -8209
  br i1 %i.il, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.im = and i32 %i.if, 1023
  br label %.critedge

bb.cy:                                            ; preds = %bb.cw
  %i.in = icmp samesign ult i16 %i.ie, -8193
  %10 = icmp samesign ugt i32 %.0174, 1
  %or.cond22 = select i1 %i.in, i1 %10, i1 false
  br i1 %or.cond22, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.io = shl nuw i32 %i.if, 16
  %i.ip = add nsw i32 %i.io, 537985024
  %i.iq = getelementptr inbounds nuw i8, ptr %.0177, i64 2
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !83
  %i.is = zext i16 %i.ir to i32
  %i.it = or disjoint i32 %i.ip, %i.is
  br label %.critedge

bb.da:                                            ; preds = %bb.cy
  %i.iu = icmp eq i16 %i.ie, -8193
  %11 = icmp samesign ugt i32 %.0174, 2
  %or.cond24 = select i1 %i.iu, i1 %11, i1 false
  br i1 %or.cond24, label %bb.db, label %.thread315

bb.db:                                            ; preds = %bb.da
  %i.iv = getelementptr inbounds nuw i8, ptr %.0177, i64 2
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !83
  %i.ix = zext i16 %i.iw to i32
  %i.iy = shl nuw i32 %i.ix, 16
  %i.iz = getelementptr inbounds nuw i8, ptr %.0177, i64 4
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !83
  %i.jb = zext i16 %i.ja to i32
  %i.jc = or disjoint i32 %i.iy, %i.jb
  br label %.critedge

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph325
  %i.jd = trunc nuw nsw i64 %indvars.iv334 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.cv, %.critedge.loopexit.split.loop.exit, %.preheader, %bb.cx, %bb.db, %bb.cz
  %.0173 = phi i8 [ 1, %bb.cx ], [ 2, %bb.cz ], [ 3, %bb.db ], [ 0, %.preheader ], [ 0, %.critedge.loopexit.split.loop.exit ], [ 0, %bb.cv ] ; 3 uses
  %.1172 = phi i32 [ %i.im, %bb.cx ], [ %i.it, %bb.cz ], [ %i.jc, %bb.db ], [ 0, %.preheader ], [ %i.jd, %.critedge.loopexit.split.loop.exit ], [ %.0174, %bb.cv ] ; 5 uses
  %i.je = zext nneg i8 %.0173 to i32              ; 2 uses
  %i.jf = add i32 %.1172, %i.je                   ; 3 uses
  %.not269 = icmp slt i32 %i.jf, %.0174
  br i1 %.not269, label %bb.dc, label %.thread315

bb.dc:                                            ; preds = %.critedge
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0177, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !83
  %.not270 = icmp eq i16 %i.ji, 0
  br i1 %.not270, label %bb.dd, label %.thread315

bb.dd:                                            ; preds = %bb.dc
  %i.jj = sub nsw i32 %i.hr, %.0174               ; 2 uses
  %i.jk = add i32 %i.jf, %i.jj                    ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, 268435455
  br i1 %i.jl, label %.thread315, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jm = zext nneg i8 %.0173 to i64
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %.0177, i64 %i.jm ; 2 uses
  %.not271 = icmp eq i32 %.1172, 0
  br i1 %.not271, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jo = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
          to label %bb.dg unwind label %bb.dh     ; 8 uses

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN18StringBaseResourceC2EaPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(141) %i.jo, i8 noundef signext 0, ptr noundef nonnull %i.jn, i32 noundef %.1172, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.dj unwind label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.df
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.di:                                            ; preds = %bb.dg
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef 144) #24
  br label %bb.dw

bb.dj:                                            ; preds = %bb.dg
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14StringResource, i64 16), ptr %i.jo, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 120
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jr, i8 0, i64 20, i1 false)
  store i8 %.0173, ptr %i.js, align 4, !tbaa !87
  %i.jt = or i32 %i.jj, 1610612736
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !88
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 9
  store i8 1, ptr %i.jv, align 1, !tbaa !89
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16
  invoke void @_ZN18PseudoListResource3addEP9SResource(ptr noundef nonnull align 8 dereferenceable(72) %i.jw, ptr noundef nonnull %i.jo)
          to label %bb.dk unwind label %bb.dh

bb.dk:                                            ; preds = %bb.dj
  store i32 %i.jk, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 40), align 8, !tbaa !90
  %i.jx = load i32, ptr %i.a, align 4, !tbaa !21
  %i.jy = icmp sgt i32 %i.jx, 0
  br i1 %i.jy, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 503, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #32
  unreachable

bb.dm:                                            ; preds = %bb.de, %bb.dk
  %i.jz = sext i32 %.1172 to i64
  %i.ka = getelementptr [2 x i8], ptr %i.jn, i64 %i.jz
  %i.kb = getelementptr i8, ptr %i.ka, i64 2
  %.neg320 = xor i32 %.1172, -1
  %.neg321 = sub nsw i32 %.0174, %i.je
  %i.kc = add i32 %.neg321, %.neg320              ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %bb.cu, label %.thread315, !llvm.loop !63

.thread315:                                       ; preds = %bb.dd, %bb.dc, %.critedge, %bb.da, %bb.dm
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !80
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.thread315
  %i.ki = load ptr, ptr %i.ke, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(72) %i.ke) #25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.thread315, %bb.cm, %._crit_edge
  invoke void @T_FileStream_close(ptr noundef nonnull %i.el)
          to label %bb.dp unwind label %bb.cq

bb.dp:                                            ; preds = %bb.do
  invoke void @setUsePoolBundle(i8 noundef signext 1)
          to label %bb.dq unwind label %bb.cq

bb.dq:                                            ; preds = %bb.dp
  %i.kl = invoke signext i8 @isVerbose()
          to label %bb.dr unwind label %bb.cq

bb.dr:                                            ; preds = %bb.dq
  %i.km = icmp ne i8 %i.kl, 0
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8 ; 2 uses
  %i.ko = icmp ne ptr %i.kn, null
  %or.cond26 = select i1 %i.km, i1 %i.ko, i1 false
  br i1 %or.cond26, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !80
  %i.kr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %i.kq) ; 0 uses
  %i.ks = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 40), align 8, !tbaa !90
  %i.kt = add nsw i32 %i.ks, 1                    ; 2 uses
  %i.ku = shl nsw i32 %i.kt, 1
  %i.kv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %i.kt, i32 noundef %i.ku) ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.bh, %bb.br, %bb.bw, %bb.cb, %bb.cd, %bb.ds, %bb.dr, %bb.cf, %bb.bn, %bb.bk
  %.8204 = phi i1 [ true, %bb.dr ], [ false, %bb.bk ], [ false, %bb.bn ], [ false, %bb.br ], [ false, %bb.bw ], [ false, %bb.cb ], [ false, %bb.cd ], [ false, %bb.cf ], [ false, %bb.bh ], [ true, %bb.ds ]
  %.11 = phi i32 [ 0, %bb.dr ], [ 1, %bb.bk ], [ 1, %bb.bn ], [ 1, %bb.br ], [ %i.fm, %bb.bw ], [ %i.fv, %bb.cb ], [ 3, %bb.cd ], [ 3, %bb.cf ], [ %i.ei, %bb.bh ], [ 0, %bb.ds ]
  %i.kw = load i8, ptr %i.dx, align 4, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.kw, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kx = load ptr, ptr %3, align 8, !tbaa !40
  invoke void @uprv_free_78(ptr noundef %i.kx)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  %i.kz = extractvalue { ptr, i32 } %i.ky, 0
  call void @__clang_call_terminate(ptr %i.kz) #32
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.8204, label %bb.dx, label %bb.fe

bb.dw:                                            ; preds = %bb.bs, %bb.cq, %bb.cr, %bb.di, %bb.dh, %bb.bd
  %.pn280 = phi { ptr, i32 } [ %i.ea, %bb.bd ], [ %i.fd, %bb.bs ], [ %i.jq, %bb.di ], [ %i.ia, %bb.cq ], [ %i.ib, %bb.cr ], [ %i.jp, %bb.dh ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.fg

bb.dx:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.ba
  %i.la = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 754), align 2, !tbaa !27
  %.not283 = icmp eq i8 %i.la, 0
  br i1 %.not283, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.lb = invoke i32 @getFormatVersion()
          to label %bb.dz unwind label %.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dy
  %i.lc = icmp ne i32 %i.lb, 3
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8
  %i.le = icmp ne ptr %i.ld, null
  %or.cond28.not286 = select i1 %i.lc, i1 true, i1 %i.le
  %i.lf = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 794), align 2
  %i.lg = icmp ne i8 %i.lf, 0
  %or.cond30 = select i1 %or.cond28.not286, i1 true, i1 %i.lg
  br i1 %or.cond30, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  invoke void @setFormatVersion(i32 noundef 2)
          to label %bb.eb unwind label %.loopexit.split-lp

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dx
  %i.lh = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 874), align 2, !tbaa !27
  %.not287 = icmp eq i8 %i.lh, 0
  br i1 %.not287, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.li = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.65) ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.lj = add nsw i32 %i.c, -1                    ; 2 uses
  %.not288 = icmp eq i32 %i.lj, 1
  br i1 %.not288, label %.lr.ph330, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.lk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.lj) ; 0 uses
  %i.ll = icmp sgt i32 %i.c, 1
  br i1 %i.ll, label %.lr.ph330, label %_ZN6icu_7810CharStringD2Ev.exit313._crit_edge

.lr.ph330:                                        ; preds = %bb.ed, %bb.ee
  %i.lm = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.not289 = icmp eq ptr %spec.select307, null
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %wide.trip.count341 = zext nneg i32 %i.c to i64
  br label %bb.ef

bb.ef:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit313, %.lr.ph330
  %indvars.iv338 = phi i64 [ 1, %.lr.ph330 ], [ %indvars.iv.next339, %_ZN6icu_7810CharStringD2Ev.exit313 ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv338
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !26
  %i.lu = invoke ptr @getLongPathname(ptr noundef %i.lt)
          to label %bb.eg unwind label %.loopexit ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.lm, ptr %7, align 8, !tbaa !40
  store i32 40, ptr %i.ln, align 8, !tbaa !41
  store i8 0, ptr %i.lo, align 4, !tbaa !42
  store i32 0, ptr %i.lp, align 8, !tbaa !44
  store i8 0, ptr %i.lm, align 1, !tbaa !28
  br i1 %.not289, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %i.cf)
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.lv = load ptr, ptr %8, align 8
  %i.lw = load i32, ptr %i.lq, align 8
  %i.lx = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.lv, i32 noundef %i.lw, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311 unwind label %bb.ej ; 0 uses

bb.ej:                                            ; preds = %bb.ei, %bb.ep, %bb.em, %bb.ek, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311, %bb.eh
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.fg

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311: ; preds = %bb.ei, %bb.eg
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef %i.lu)
          to label %bb.ek unwind label %bb.ej

bb.ek:                                            ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit311
  %i.lz = load ptr, ptr %9, align 8
  %i.ma = load i32, ptr %i.lr, align 8
  %i.mb = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr %i.lz, i32 %i.ma, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.el unwind label %bb.ej     ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.mc = load i32, ptr %i.a, align 4, !tbaa !21
  %i.md = icmp sgt i32 %i.mc, 0                   ; 2 uses
  br i1 %i.md, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.me = load ptr, ptr %7, align 8, !tbaa !40
  store ptr %i.me, ptr @gCurrentFileName, align 8, !tbaa !26
  %i.mf = invoke signext i8 @isVerbose()
          to label %bb.en unwind label %bb.ej

bb.en:                                            ; preds = %bb.em
  %.not291 = icmp eq i8 %i.mf, 0
  br i1 %.not291, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.mg = load ptr, ptr %7, align 8, !tbaa !40
  %i.mh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef %i.mg) ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.mi = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 634), align 2, !tbaa !27
  invoke void @_Z11processFilePKcS0_S0_S0_S0_S0_P7SRBRootaR10UErrorCode(ptr noundef %i.lu, ptr noundef %.0214, ptr noundef %spec.select307, ptr noundef %.0217, ptr noundef %.0215, ptr noundef null, ptr noundef %i.dt, i8 noundef signext %i.mi, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.eq unwind label %bb.ej

bb.eq:                                            ; preds = %bb.ep, %bb.el
end_hunk_0
