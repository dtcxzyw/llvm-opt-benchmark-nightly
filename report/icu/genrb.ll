Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genrb?download=true
inline.NumInlined: 218
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
          to label %bb.bm unwind label %bb.bd     ; 6 uses

bb.bm:                                            ; preds = %bb.bl
  %i.ez = icmp slt i32 %i.ey, 32
  br i1 %i.ez, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fb = load ptr, ptr %3, align 8, !tbaa !40
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.52, ptr noundef %i.fb) #26 ; 0 uses
  br label %bb.dt

bb.bo:                                            ; preds = %bb.bm
  %i.fd = add nuw nsw i32 %i.ey, 15
  %i.fe = and i32 %i.fd, 2147483632
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ff) #30
          to label %bb.bp unwind label %bb.bd     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  store ptr %i.fg, ptr @_ZL10poolBundle, align 8, !tbaa !15
  %i.fh = invoke i32 @T_FileStream_read(ptr noundef nonnull %i.et, ptr noundef nonnull %i.fg, i32 noundef %i.ey)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %.not264 = icmp eq i32 %i.fh, %i.ey
  br i1 %.not264, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fj = load ptr, ptr %3, align 8, !tbaa !40
  %i.fk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.54, ptr noundef %i.fj) #26 ; 0 uses
  br label %bb.dt

bb.bs:                                            ; preds = %bb.ca, %bb.by, %bb.bx, %bb.bv, %bb.bt, %bb.bp
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.bt:                                            ; preds = %bb.bq
  %i.fm = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15
  %i.fn = invoke ptr @udata_openSwapperForInputData_78(ptr noundef %i.fm, i32 noundef %i.ey, i8 noundef signext 0, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
          to label %bb.bu unwind label %bb.bs     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  %i.fo = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.fp = icmp slt i32 %i.fo, 1
  br i1 %i.fp, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.fr = load ptr, ptr %3, align 8, !tbaa !40
  %i.fs = invoke ptr @u_errorName_78(i32 noundef %i.fo)
          to label %bb.bw unwind label %bb.bs

bb.bw:                                            ; preds = %bb.bv
  %i.ft = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fq, ptr noundef nonnull @.str.55, ptr noundef %i.fr, ptr noundef %i.fs) #26 ; 0 uses
  %i.fu = load i32, ptr %i.a, align 4, !tbaa !21
  br label %bb.dt

bb.bx:                                            ; preds = %bb.bu
  %i.fv = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15 ; 2 uses
  %i.fw = invoke i32 @ures_swap_78(ptr noundef %i.fn, ptr noundef %i.fv, i32 noundef %i.ey, ptr noundef %i.fv, ptr noundef nonnull %i.a)
          to label %bb.by unwind label %bb.bs     ; 0 uses

bb.by:                                            ; preds = %bb.bx
  invoke void @udata_closeSwapper_78(ptr noundef %i.fn)
          to label %bb.bz unwind label %bb.bs

bb.bz:                                            ; preds = %bb.by
  %i.fx = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  %i.fy = icmp slt i32 %i.fx, 1
  br i1 %i.fy, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ga = load ptr, ptr %3, align 8, !tbaa !40
  %i.gb = invoke ptr @u_errorName_78(i32 noundef %i.fx)
          to label %bb.cb unwind label %bb.bs

bb.cb:                                            ; preds = %bb.ca
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.56, ptr noundef %i.ga, ptr noundef %i.gb) #26 ; 0 uses
  %i.gd = load i32, ptr %i.a, align 4, !tbaa !21
  br label %bb.dt

bb.cc:                                            ; preds = %bb.bz
  %i.ge = load ptr, ptr @_ZL10poolBundle, align 8, !tbaa !15 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !28
  %i.gh = icmp ult i8 %i.gg, 2
  br i1 %i.gh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.gj = load ptr, ptr %3, align 8, !tbaa !40
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.57, ptr noundef %i.gj) #26 ; 0 uses
  br label %bb.dt

bb.ce:                                            ; preds = %bb.cc
  %i.gl = load i16, ptr %i.ge, align 2, !tbaa !70
  %i.gm = zext i16 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gm ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  store ptr %i.go, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 8), align 8, !tbaa !71
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !45
  %i.gq = and i32 %i.gp, 255                      ; 2 uses
  %i.gr = icmp samesign ult i32 %i.gq, 8
  br i1 %i.gr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.gt = load ptr, ptr %3, align 8, !tbaa !40
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gs, ptr noundef nonnull @.str.58, ptr noundef %i.gt) #26 ; 0 uses
  br label %bb.dt

bb.cg:                                            ; preds = %bb.ce
  %i.gv = add nuw nsw i32 %i.gq, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !45 ; 3 uses
  %i.gy = zext nneg i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gy ; 4 uses
  store ptr %i.gz, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 16), align 8, !tbaa !72
  %i.ha = sub nsw i32 %i.gx, %i.gv                ; 2 uses
  %i.hb = shl i32 %i.ha, 2                        ; 2 uses
  store i32 %i.hb, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 24), align 8, !tbaa !73
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !45
  store i32 %i.hd, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 44), align 4, !tbaa !74
  %i.he = icmp sgt i32 %i.ha, 0
  br i1 %i.he, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.cg
  %.promoted = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.hb, i32 1) ; 3 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hf = icmp eq i32 %smax, 1
  br i1 %i.hf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.cj, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.cj ] ; 3 uses
  %i.hg = phi i32 [ %.promoted, %.lr.ph.preheader.new ], [ %i.hr, %bb.cj ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.cj ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !28
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.ch, label %.lr.ph.1

bb.ch:                                            ; preds = %.lr.ph
  %i.hk = add nsw i32 %i.hg, 1                    ; 2 uses
  store i32 %i.hk, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4, !tbaa !75
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.ch
  %i.hl = phi i32 [ %i.hg, %.lr.ph ], [ %i.hk, %bb.ch ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !28
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.1
  %i.hq = add nsw i32 %i.hl, 1                    ; 2 uses
  store i32 %i.hq, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4, !tbaa !75
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph.1
  %i.hr = phi i32 [ %i.hl, %.lr.ph.1 ], [ %i.hq, %bb.ci ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !61

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.cj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted, %.lr.ph.preheader ], [ %i.hr, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod373 = trunc i32 %smax to i1
  call void @llvm.assume(i1 %lcmp.mod373)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv.epil.init
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !28
  %i.hu = icmp eq i8 %i.ht, 0
  br i1 %i.hu, label %bb.ck, label %._crit_edge

bb.ck:                                            ; preds = %.lr.ph.epil.preheader
  %i.hv = add nsw i32 %.epil.init, 1
  store i32 %i.hv, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 28), align 4, !tbaa !75
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ck, %.lr.ph.epil.preheader, %bb.cg
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !45
  %i.hy = sub nsw i32 %i.hx, %i.gx                ; 2 uses
  %i.hz = shl nsw i32 %i.hy, 1                    ; 2 uses
  %i.ia = icmp sgt i32 %i.hy, 0
  br i1 %i.ia, label %bb.cl, label %bb.do

bb.cl:                                            ; preds = %._crit_edge
  %i.ib = invoke i32 @getFormatVersion()
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.ic = icmp sgt i32 %i.ib, 2
  br i1 %i.ic, label %bb.cn, label %bb.do

bb.cn:                                            ; preds = %bb.cm
  %i.id = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30
          to label %bb.co unwind label %bb.cq     ; 6 uses

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN9SResourceC2EP7SRBRootPKcaPK7UStringR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.id, ptr noundef null, ptr noundef null, i8 noundef signext 2, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  store i32 0, ptr %i.ie, align 8, !tbaa !80
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  store ptr null, ptr %i.if, align 8, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV18PseudoListResource, i64 16), ptr %i.id, align 8, !tbaa !18
  store ptr %i.id, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %bb.cs, label %bb.ct

bb.cq:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.cn, %bb.cl
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.cr:                                            ; preds = %bb.co
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 72) #24
  br label %bb.dw

bb.cs:                                            ; preds = %bb.cp
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #32
  unreachable

bb.ct:                                            ; preds = %bb.cp
  %i.ik = sext i32 %i.gx to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.ik
  br label %bb.cu

bb.cu:                                            ; preds = %bb.dm, %bb.ct
  %.0177 = phi ptr [ %i.il, %bb.ct ], [ %i.kj, %bb.dm ] ; 7 uses
  %.0174 = phi i32 [ %i.hz, %bb.ct ], [ %i.kk, %bb.dm ] ; 8 uses
  %i.im = load i16, ptr %.0177, align 2, !tbaa !83 ; 4 uses
  %i.in = zext i16 %i.im to i32                   ; 3 uses
  %i.io = and i32 %i.in, 64512
  %i.ip = icmp eq i32 %i.io, 56320
  br i1 %i.ip, label %bb.cw, label %.preheader

.preheader:                                       ; preds = %bb.cu
  %10 = icmp sgt i32 %.0174, 0
  br i1 %10, label %.lr.ph318.preheader, label %.critedge

.lr.ph318.preheader:                              ; preds = %.preheader
  %i.iq = zext nneg i32 %.0174 to i64
  br label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph318.preheader, %bb.cv
  %indvars.iv327 = phi i64 [ 0, %.lr.ph318.preheader ], [ %indvars.iv.next328, %bb.cv ] ; 3 uses
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %.0177, i64 %indvars.iv327
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !83
  %.not268 = icmp eq i16 %i.is, 0
  br i1 %.not268, label %.critedge.loopexit.split.loop.exit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph318
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next328, %i.iq
  br i1 %exitcond330.not, label %.critedge, label %.lr.ph318, !llvm.loop !62

bb.cw:                                            ; preds = %bb.cu
  %i.it = icmp ult i16 %i.im, -8209
  br i1 %i.it, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.iu = and i32 %i.in, 1023
  br label %.critedge

bb.cy:                                            ; preds = %bb.cw
  %i.iv = icmp samesign ult i16 %i.im, -8193
  %11 = icmp sgt i32 %.0174, 1
  %or.cond22 = select i1 %i.iv, i1 %11, i1 false
  br i1 %or.cond22, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.iw = shl nuw i32 %i.in, 16
  %i.ix = add nsw i32 %i.iw, 537985024
  %i.iy = getelementptr inbounds nuw i8, ptr %.0177, i64 2
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !83
  %i.ja = zext i16 %i.iz to i32
  %i.jb = or disjoint i32 %i.ix, %i.ja
  br label %.critedge

bb.da:                                            ; preds = %bb.cy
  %i.jc = icmp eq i16 %i.im, -8193
  %12 = icmp sgt i32 %.0174, 2
  %or.cond24 = select i1 %i.jc, i1 %12, i1 false
  br i1 %or.cond24, label %bb.db, label %.thread308

bb.db:                                            ; preds = %bb.da
  %i.jd = getelementptr inbounds nuw i8, ptr %.0177, i64 2
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !83
  %i.jf = zext i16 %i.je to i32
  %i.jg = shl nuw i32 %i.jf, 16
  %i.jh = getelementptr inbounds nuw i8, ptr %.0177, i64 4
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !83
  %i.jj = zext i16 %i.ji to i32
  %i.jk = or disjoint i32 %i.jg, %i.jj
  br label %.critedge

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph318
  %i.jl = trunc nuw nsw i64 %indvars.iv327 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.cv, %.critedge.loopexit.split.loop.exit, %.preheader, %bb.cx, %bb.db, %bb.cz
  %.0173 = phi i8 [ 1, %bb.cx ], [ 2, %bb.cz ], [ 3, %bb.db ], [ 0, %.preheader ], [ 0, %.critedge.loopexit.split.loop.exit ], [ 0, %bb.cv ] ; 3 uses
  %.1172 = phi i32 [ %i.iu, %bb.cx ], [ %i.jb, %bb.cz ], [ %i.jk, %bb.db ], [ 0, %.preheader ], [ %i.jl, %.critedge.loopexit.split.loop.exit ], [ %.0174, %bb.cv ] ; 5 uses
  %i.jm = zext nneg i8 %.0173 to i32              ; 2 uses
  %i.jn = add i32 %.1172, %i.jm                   ; 3 uses
  %.not269 = icmp slt i32 %i.jn, %.0174
  br i1 %.not269, label %bb.dc, label %.thread308

bb.dc:                                            ; preds = %.critedge
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [2 x i8], ptr %.0177, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !83
  %.not270 = icmp eq i16 %i.jq, 0
  br i1 %.not270, label %bb.dd, label %.thread308

bb.dd:                                            ; preds = %bb.dc
  %i.jr = sub nsw i32 %i.hz, %.0174               ; 2 uses
  %i.js = add i32 %i.jn, %i.jr                    ; 2 uses
  %i.jt = icmp sgt i32 %i.js, 268435455
  br i1 %i.jt, label %.thread308, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ju = zext nneg i8 %.0173 to i64
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %.0177, i64 %i.ju ; 2 uses
  %.not271 = icmp eq i32 %.1172, 0
  br i1 %.not271, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jw = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
          to label %bb.dg unwind label %bb.dh     ; 8 uses

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN18StringBaseResourceC2EaPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(141) %i.jw, i8 noundef signext 0, ptr noundef nonnull %i.jv, i32 noundef %.1172, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.dj unwind label %bb.di

bb.dh:                                            ; preds = %bb.dj, %bb.df
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.di:                                            ; preds = %bb.dg
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef 144) #24
  br label %bb.dw

bb.dj:                                            ; preds = %bb.dg
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14StringResource, i64 16), ptr %i.jw, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 120
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jz, i8 0, i64 20, i1 false)
  store i8 %.0173, ptr %i.ka, align 4, !tbaa !87
  %i.kb = or i32 %i.jr, 1610612736
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !88
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 9
  store i8 1, ptr %i.kd, align 1, !tbaa !89
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16
  invoke void @_ZN18PseudoListResource3addEP9SResource(ptr noundef nonnull align 8 dereferenceable(72) %i.ke, ptr noundef nonnull %i.jw)
          to label %bb.dk unwind label %bb.dh

bb.dk:                                            ; preds = %bb.dj
  store i32 %i.js, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 40), align 8, !tbaa !90
  %i.kf = load i32, ptr %i.a, align 4, !tbaa !21
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 503, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #32
  unreachable

bb.dm:                                            ; preds = %bb.de, %bb.dk
  %i.kh = sext i32 %.1172 to i64
  %i.ki = getelementptr [2 x i8], ptr %i.jv, i64 %i.kh
  %i.kj = getelementptr i8, ptr %i.ki, i64 2
  %.neg313 = xor i32 %.1172, -1
  %.neg314 = sub i32 %.0174, %i.jm
  %i.kk = add i32 %.neg314, %.neg313              ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %bb.cu, label %.thread308, !llvm.loop !63

.thread308:                                       ; preds = %bb.dd, %bb.dc, %.critedge, %bb.da, %bb.dm
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !80
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.thread308
  %i.kq = load ptr, ptr %i.km, align 8, !tbaa !18
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(72) %i.km) #25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8, !tbaa !16
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.thread308, %bb.cm, %._crit_edge
  invoke void @T_FileStream_close(ptr noundef nonnull %i.et)
          to label %bb.dp unwind label %bb.cq

bb.dp:                                            ; preds = %bb.do
  invoke void @setUsePoolBundle(i8 noundef signext 1)
          to label %bb.dq unwind label %bb.cq

bb.dq:                                            ; preds = %bb.dp
  %i.kt = invoke signext i8 @isVerbose()
          to label %bb.dr unwind label %bb.cq

bb.dr:                                            ; preds = %bb.dq
  %i.ku = icmp ne i8 %i.kt, 0
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8 ; 2 uses
  %i.kw = icmp ne ptr %i.kv, null
  %or.cond26 = select i1 %i.ku, i1 %i.kw, i1 false
  br i1 %or.cond26, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !80
  %i.kz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %i.ky) ; 0 uses
  %i.la = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 40), align 8, !tbaa !90
  %i.lb = add nsw i32 %i.la, 1                    ; 2 uses
  %i.lc = shl nsw i32 %i.lb, 1
  %i.ld = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %i.lb, i32 noundef %i.lc) ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.bh, %bb.br, %bb.bw, %bb.cb, %bb.cd, %bb.ds, %bb.dr, %bb.cf, %bb.bn, %bb.bk
  %.8204 = phi i1 [ true, %bb.dr ], [ false, %bb.bk ], [ false, %bb.bn ], [ false, %bb.br ], [ false, %bb.bw ], [ false, %bb.cb ], [ false, %bb.cd ], [ false, %bb.cf ], [ false, %bb.bh ], [ true, %bb.ds ]
  %.11 = phi i32 [ 0, %bb.dr ], [ 1, %bb.bk ], [ 1, %bb.bn ], [ 1, %bb.br ], [ %i.fu, %bb.bw ], [ %i.gd, %bb.cb ], [ 3, %bb.cd ], [ 3, %bb.cf ], [ %i.eq, %bb.bh ], [ 0, %bb.ds ]
  %i.le = load i8, ptr %i.ef, align 4, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.le, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lf = load ptr, ptr %3, align 8, !tbaa !40
  invoke void @uprv_free_78(ptr noundef %i.lf)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #32
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.8204, label %bb.dx, label %bb.fe

bb.dw:                                            ; preds = %bb.bs, %bb.cq, %bb.cr, %bb.di, %bb.dh, %bb.bd
  %.pn280 = phi { ptr, i32 } [ %i.ei, %bb.bd ], [ %i.fl, %bb.bs ], [ %i.jy, %bb.di ], [ %i.ii, %bb.cq ], [ %i.ij, %bb.cr ], [ %i.jx, %bb.dh ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.fg

bb.dx:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.ba
  %i.li = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 754), align 2, !tbaa !27
  %.not283 = icmp eq i8 %i.li, 0
  br i1 %.not283, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.lj = invoke i32 @getFormatVersion()
          to label %bb.dz unwind label %.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dy
  %i.lk = icmp ne i32 %i.lj, 3
  %i.ll = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL10poolBundle, i64 32), align 8
  %i.lm = icmp ne ptr %i.ll, null
  %or.cond28.not286 = select i1 %i.lk, i1 true, i1 %i.lm
  %i.ln = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 794), align 2
  %i.lo = icmp ne i8 %i.ln, 0
  %or.cond30 = select i1 %or.cond28.not286, i1 true, i1 %i.lo
  br i1 %or.cond30, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  invoke void @setFormatVersion(i32 noundef 2)
          to label %bb.eb unwind label %.loopexit.split-lp

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dx
  %i.lp = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 874), align 2, !tbaa !27
  %.not287 = icmp eq i8 %i.lp, 0
  br i1 %.not287, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.lq = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.65) ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.lr = add nsw i32 %i.c, -1                    ; 2 uses
  %.not288 = icmp eq i32 %i.lr, 1
  br i1 %.not288, label %.lr.ph323, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ls = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %i.lr) ; 0 uses
  %i.lt = icmp sgt i32 %i.c, 1
  br i1 %i.lt, label %.lr.ph323, label %_ZN6icu_7810CharStringD2Ev.exit306._crit_edge

.lr.ph323:                                        ; preds = %bb.ed, %bb.ee
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lw = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.not289 = icmp eq ptr %spec.select300, null
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %wide.trip.count334 = zext nneg i32 %i.c to i64
  br label %bb.ef

bb.ef:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit306, %.lr.ph323
  %indvars.iv331 = phi i64 [ 1, %.lr.ph323 ], [ %indvars.iv.next332, %_ZN6icu_7810CharStringD2Ev.exit306 ] ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv331
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26
  %i.mc = invoke ptr @getLongPathname(ptr noundef %i.mb)
          to label %bb.eg unwind label %.loopexit ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.lu, ptr %7, align 8, !tbaa !40
  store i32 40, ptr %i.lv, align 8, !tbaa !41
  store i8 0, ptr %i.lw, align 4, !tbaa !42
  store i32 0, ptr %i.lx, align 8, !tbaa !44
  store i8 0, ptr %i.lu, align 1, !tbaa !28
  br i1 %.not289, label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit304, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %i.cm)
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.md = load ptr, ptr %8, align 8
  %i.me = load i32, ptr %i.ly, align 8
  %i.mf = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.md, i32 noundef %i.me, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit304 unwind label %bb.ej ; 0 uses

bb.ej:                                            ; preds = %bb.ei, %bb.ep, %bb.em, %bb.ek, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit304, %bb.eh
  %i.mg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.fg

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit304: ; preds = %bb.ei, %bb.eg
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef %i.mc)
          to label %bb.ek unwind label %bb.ej

bb.ek:                                            ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit304
  %i.mh = load ptr, ptr %9, align 8
  %i.mi = load i32, ptr %i.lz, align 8
  %i.mj = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr %i.mh, i32 %i.mi, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.el unwind label %bb.ej     ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.mk = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ml = icmp sgt i32 %i.mk, 0                   ; 2 uses
  br i1 %i.ml, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.mm = load ptr, ptr %7, align 8, !tbaa !40
  store ptr %i.mm, ptr @gCurrentFileName, align 8, !tbaa !26
  %i.mn = invoke signext i8 @isVerbose()
          to label %bb.en unwind label %bb.ej

bb.en:                                            ; preds = %bb.em
  %.not291 = icmp eq i8 %i.mn, 0
  br i1 %.not291, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.mo = load ptr, ptr %7, align 8, !tbaa !40
  %i.mp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef %i.mo) ; 0 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.mq = load i8, ptr getelementptr inbounds nuw (i8, ptr @options, i64 634), align 2, !tbaa !27
  invoke void @_Z11processFilePKcS0_S0_S0_S0_S0_P7SRBRootaR10UErrorCode(ptr noundef %i.mc, ptr noundef %.0214, ptr noundef %spec.select300, ptr noundef %.0217, ptr noundef %.0215, ptr noundef null, ptr noundef %i.eb, i8 noundef signext %i.mq, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.eq unwind label %bb.ej

bb.eq:                                            ; preds = %bb.ep, %bb.el
end_hunk_0
