Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/matcher-ac?download=true
inline.NumInlined: 24
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cli_ac_addsig:bb.a
  br i1 %.not588, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fc = or i32 %i.ey, 48
  store i32 %i.fc, ptr %i.cw, align 4, !tbaa !131
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.fd, ptr noundef nonnull %i.dd) #20
  br label %.backedge

.tail693:                                         ; preds = %sub_0
  %i.fe = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.bo, label %.tail693.thread

bb.bo:                                            ; preds = %.tail693
  %i.fh = load i8, ptr %i.dr, align 1, !tbaa !46
  %.not590 = icmp eq i8 %i.fh, 0
  br i1 %.not590, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.fi = load i32, ptr %i.cw, align 4, !tbaa !131 ; 2 uses
  %i.fj = or i32 %i.fi, 1024
  store i32 %i.fj, ptr %i.cw, align 4, !tbaa !131
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.fl = load i16, ptr %i.fk, align 8, !tbaa !130
  %.not591 = icmp eq i16 %i.fl, 0
  br i1 %.not591, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fm = or i32 %i.fi, 3072
  store i32 %i.fm, ptr %i.cw, align 4, !tbaa !131
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.fn, ptr noundef nonnull %i.dd) #20
  br label %.backedge

bb.bs:                                            ; preds = %bb.bo
  %i.fo = icmp eq ptr %i.da, %.0507
  br i1 %i.fo, label %bb.bt, label %.tail693.thread

bb.bt:                                            ; preds = %bb.bs
  %i.fp = load i32, ptr %i.cw, align 4, !tbaa !131 ; 2 uses
  %i.fq = or i32 %i.fp, 256
  store i32 %i.fq, ptr %i.cw, align 4, !tbaa !131
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.fs = load i16, ptr %i.fr, align 8, !tbaa !130
  %.not592 = icmp eq i16 %i.fs, 0
  br i1 %.not592, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ft = or i32 %i.fp, 768
  store i32 %i.ft, ptr %i.cw, align 4, !tbaa !131
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.fu = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.fu, ptr noundef nonnull %i.dd) #20
  br label %.backedge

.tail693.thread:                                  ; preds = %sub_0, %.tail689, %.tail, %bb.bk, %bb.bs, %.tail693, %bb.bc
  %i.fv = call i64 @cli_strlcat(ptr noundef nonnull %i.ct, ptr noundef nonnull @.str.57, i64 noundef %i.cs) #20 ; 0 uses
  %i.fw = load i16, ptr %i.cx, align 4, !tbaa !69
  %i.fx = add i16 %i.fw, 1                        ; 2 uses
  store i16 %i.fx, ptr %i.cx, align 4, !tbaa !69
  %i.fy = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.fz = load ptr, ptr %i.cy, align 8, !tbaa !73
  %i.ga = zext i16 %i.fx to i64
  %i.gb = shl nuw nsw i64 %i.ga, 3
  %i.gc = call ptr @mpool_realloc(ptr noundef %i.fy, ptr noundef %i.fz, i64 noundef %i.gb) #20 ; 3 uses
  %.not593 = icmp eq ptr %i.gc, null
  %i.gd = load i16, ptr %i.cx, align 4, !tbaa !69 ; 2 uses
  br i1 %.not593, label %bb.bw, label %sub_0698

bb.bw:                                            ; preds = %.tail693.thread
  %i.ge = add i16 %i.gd, -1
  store i16 %i.ge, ptr %i.cx, align 4, !tbaa !69
  %i.gf = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.gf, ptr noundef %i.dd) #20
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.58) #20
  br label %.loopexit712

sub_0698:                                         ; preds = %.tail693.thread
  %i.gg = zext i16 %i.gd to i64
  %i.gh = getelementptr [8 x i8], ptr %i.gc, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  store ptr %i.dd, ptr %i.gi, align 8, !tbaa !75
  store ptr %i.gc, ptr %i.cy, align 8, !tbaa !73
  %i.gj = load i8, ptr %i.db, align 1
  switch i8 %i.gj, label %.tail705.thread [
    i8 66, label %.tail697
    i8 76, label %.tail701
    i8 87, label %.tail705
  ]

.tail697:                                         ; preds = %sub_0698
  %i.gk = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = icmp eq i8 %i.gl, 0
  br i1 %i.gm, label %bb.bx, label %.tail705.thread

bb.bx:                                            ; preds = %.tail697
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dd, i64 14
  store i16 5, ptr %i.gn, align 2, !tbaa !77
  br label %.backedge

.tail701:                                         ; preds = %sub_0698
  %i.go = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.by, label %.tail705.thread

bb.by:                                            ; preds = %.tail701
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dd, i64 14
  store i16 4, ptr %i.gr, align 2, !tbaa !77
  br label %.backedge

.tail705:                                         ; preds = %sub_0698
  %i.gs = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.bz, label %.tail705.thread

bb.bz:                                            ; preds = %.tail705
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dd, i64 14
  store i16 6, ptr %i.gv, align 2, !tbaa !77
  br label %.backedge

.tail705.thread:                                  ; preds = %sub_0698, %.tail701, %.tail697, %.tail705
  %i.gw = call fastcc i32 @ac_special_altstr(ptr noundef %i.db, i8 noundef zeroext %3, ptr noundef %i.dd, ptr noundef %0) ; 2 uses
  %.not597 = icmp eq i32 %i.gw, 0
  br i1 %.not597, label %.backedge, label %.loopexit712

.thread676:                                       ; preds = %bb.aq, %bb.au
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.51) #20
  %i.gx = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.gx, ptr noundef %i.dd) #20
  call void @free(ptr noundef %.0507) #20
  br label %bb.ca

.loopexit712:                                     ; preds = %.backedge, %.tail705.thread, %.preheader711, %bb.bw, %bb.ax, %bb.av, %bb.am
  %.1649.ph = phi ptr [ %i.dr, %bb.bw ], [ %i.dr, %bb.ax ], [ %i.dr, %bb.av ], [ %.0648747, %bb.am ], [ %.0507, %.preheader711 ], [ %i.dr, %.tail705.thread ], [ %i.dr, %.backedge ]
  %.4.ph = phi i32 [ 20, %bb.bw ], [ 4, %bb.ax ], [ 4, %bb.av ], [ 20, %bb.am ], [ 0, %.preheader711 ], [ 0, %.backedge ], [ %i.gw, %.tail705.thread ] ; 2 uses
  %i.gy = call i64 @cli_strlcat(ptr noundef nonnull %i.ct, ptr noundef nonnull %.1649.ph, i64 noundef %i.cs) #20 ; 0 uses
  call void @free(ptr noundef %.0507) #20
  %.not599 = icmp eq i32 %.4.ph, 0
  br i1 %.not599, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %.thread676, %.loopexit712
  %.4675679 = phi i32 [ 4, %.thread676 ], [ %.4.ph, %.loopexit712 ]
  call void @free(ptr noundef %i.ct) #20
  %i.gz = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !69
  %.not600 = icmp eq i16 %i.ha, 0
  br i1 %.not600, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hb = load ptr, ptr %i.i, align 8, !tbaa !37
  call fastcc void @ac_free_special(ptr noundef %i.hb, ptr noundef nonnull %i.k)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.hc, ptr noundef nonnull %i.k) #20
  br label %.thread681

bb.cd:                                            ; preds = %.loopexit712, %.thread655, %bb.ag
  %.6514 = phi ptr [ null, %.thread655 ], [ %i.cl, %bb.ag ], [ %i.ct, %.loopexit712 ] ; 5 uses
  %i.hd = load ptr, ptr %i.i, align 8, !tbaa !37
  %.not601 = icmp eq ptr %.6514, null
  %i.he = select i1 %.not601, ptr %2, ptr %.6514  ; 2 uses
  %i.hf = call ptr @cli_mpool_hex2ui(ptr noundef %i.hd, ptr noundef nonnull %i.he) #20 ; 3 uses
  store ptr %i.hf, ptr %i.k, align 8, !tbaa !34
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.hi = load i16, ptr %i.hh, align 4, !tbaa !69
  %.not629 = icmp eq i16 %i.hi, 0
  br i1 %.not629, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hj = load ptr, ptr %i.i, align 8, !tbaa !37
  call fastcc void @ac_free_special(ptr noundef %i.hj, ptr noundef nonnull %i.k)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.hk = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.hk, ptr noundef nonnull %i.k) #20
  call void @free(ptr noundef %.6514) #20
  br label %.thread681

bb.ch:                                            ; preds = %bb.cd
  %i.hl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.he) #26
  %14 = lshr i64 %i.hl, 1                         ; 2 uses
  %i.hm = trunc i64 %14 to i16
  %15 = and i16 %i.hm, 32767                      ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store i16 %15, ptr %i.hn, align 8, !tbaa !30
  %i.ho = zext nneg i16 %15 to i32                ; 2 uses
  %i.hp = load i8, ptr %i.e, align 8, !tbaa !35
  %i.hq = zext i8 %i.hp to i32                    ; 2 uses
  %i.hr = icmp samesign ult i32 %i.ho, %i.hq
  br i1 %i.hr, label %bb.ci, label %.preheader710

.preheader710:                                    ; preds = %bb.ch
  %.not819 = icmp eq i16 %15, 0
  br i1 %.not819, label %._crit_edge, label %.lr.ph754

.lr.ph754:                                        ; preds = %.preheader710
  %i.hs = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %16 = and i64 %14, 32767
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.59, i32 noundef %i.ho, i32 noundef %i.hq) #20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.hw = load i16, ptr %i.hv, align 4, !tbaa !69
  %.not628 = icmp eq i16 %i.hw, 0
  br i1 %.not628, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hx = load ptr, ptr %i.i, align 8, !tbaa !37
  call fastcc void @ac_free_special(ptr noundef %i.hx, ptr noundef nonnull %i.k)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.hy = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.hz = load ptr, ptr %i.k, align 8, !tbaa !34
  call void @mpool_free(ptr noundef %i.hy, ptr noundef %i.hz) #20
  %i.ia = load ptr, ptr %i.i, align 8, !tbaa !37
  call void @mpool_free(ptr noundef %i.ia, ptr noundef nonnull %i.k) #20
  call void @free(ptr noundef %.6514) #20
  br label %.thread681

bb.cl:                                            ; preds = %.lr.ph754, %bb.co
  %indvars.iv = phi i64 [ 0, %.lr.ph754 ], [ %indvars.iv.next, %bb.co ] ; 2 uses
  %.0496753 = phi i16 [ 0, %.lr.ph754 ], [ %.1497, %bb.co ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %indvars.iv
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !30
  %i.id = and i16 %i.ic, -256
  %i.ie = icmp eq i16 %i.id, 512
  br i1 %i.ie, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.if = load ptr, ptr %i.hu, align 8, !tbaa !73
  %i.ig = zext i16 %.0496753 to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !75 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i16, ptr %i.ij, align 8, !tbaa !30
  %i.il = load i16, ptr %i.hs, align 2, !tbaa !30
  %i.im = add i16 %i.il, %i.ik
  store i16 %i.im, ptr %i.hs, align 2, !tbaa !30
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 10
  %i.io = load i16, ptr %i.in, align 2, !tbaa !30
  %i.ip = load i16, ptr %i.ht, align 4, !tbaa !30
  %i.iq = add i16 %i.ip, %i.io
  store i16 %i.iq, ptr %i.ht, align 4, !tbaa !30
  %i.ir = add i16 %.0496753, 1
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.is = load <2 x i16>, ptr %i.hs, align 2, !tbaa !30
  %i.it = add <2 x i16> %i.is, splat (i16 1)
  store <2 x i16> %i.it, ptr %i.hs, align 2, !tbaa !30
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.1497 = phi i16 [ %i.ir, %bb.cm ], [ %.0496753, %bb.cn ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.iu = icmp samesign ult i64 %indvars.iv.next, %16
  br i1 %i.iu, label %bb.cl, label %._crit_edge

._crit_edge:                                      ; preds = %bb.co, %.preheader710
  call void @free(ptr noundef %.6514) #20
  %i.iv = getelementptr inbounds nuw i8, ptr %i.k, i64 129
  store i8 %3, ptr %i.iv, align 1, !tbaa !56
  %i.iw = and i8 %3, 1
  %.not602 = icmp eq i8 %i.iw, 0
  br i1 %.not602, label %.loopexit, label %.preheader709

.preheader709:                                    ; preds = %._crit_edge
  %i.ix = load i16, ptr %i.hn, align 8, !tbaa !30 ; 2 uses
  %.not820 = icmp eq i16 %i.ix, 0
  br i1 %.not820, label %.loopexit, label %.lr.ph756

.lr.ph756:                                        ; preds = %.preheader709
  %i.iy = load ptr, ptr %i.k, align 8, !tbaa !34
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph756, %bb.cr
  %i.iz = phi i16 [ %i.ix, %.lr.ph756 ], [ %i.jj, %bb.cr ]
  %indvars.iv855 = phi i64 [ 0, %.lr.ph756 ], [ %indvars.iv.next856, %bb.cr ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %indvars.iv855 ; 2 uses
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !30 ; 2 uses
  %i.jc = icmp ult i16 %i.jb, 256
  br i1 %i.jc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.jd = tail call ptr @__ctype_tolower_loc() #21
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !58
  %i.jf = zext nneg i16 %i.jb to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jf
  %.0466 = load i32, ptr %i.jg, align 4, !tbaa !59
  %i.jh = trunc i32 %.0466 to i16
  %i.ji = add i16 %i.jh, 4096
  store i16 %i.ji, ptr %i.ja, align 2, !tbaa !30
  %.pre881 = load i16, ptr %i.hn, align 8, !tbaa !30
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %i.jj = phi i16 [ %i.iz, %bb.cp ], [ %.pre881, %bb.cq ] ; 2 uses
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %i.jk = zext i16 %i.jj to i64
  %i.jl = icmp samesign ult i64 %indvars.iv.next856, %i.jk
  br i1 %i.jl, label %bb.cp, label %.loopexit

.loopexit:                                        ; preds = %bb.cr, %.preheader709, %._crit_edge
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !61 ; 2 uses
  %.not603 = icmp eq ptr %i.jn, null
  br i1 %.not603, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.loopexit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %1, ptr %i.jo, align 8, !tbaa !68
  %i.jp = call i32 @filter_add_acpatt(ptr noundef nonnull %i.jn, ptr noundef nonnull %i.k) #20
  %i.jq = icmp eq i32 %i.jp, -1
  br i1 %i.jq, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.60) #20
  %i.jr = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.js = load ptr, ptr %i.jm, align 8, !tbaa !61
  call void @mpool_free(ptr noundef %i.jr, ptr noundef %i.js) #20
  store ptr null, ptr %i.jm, align 8, !tbaa !61
  br label %.thread681

bb.cu:                                            ; preds = %bb.cs, %.loopexit
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 313
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !29  ; 6 uses
  %.not821 = icmp eq i8 %i.ju, 0
  br i1 %.not821, label %.critedge..critedge.thread_crit_edge, label %.lr.ph760

.lr.ph760:                                        ; preds = %bb.cu
  %i.jv = load i16, ptr %i.hn, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count = zext i16 %i.jv to i64
  %wide.trip.count860 = zext i8 %i.ju to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph760, %bb.cx
  %indvars.iv858 = phi i64 [ 0, %.lr.ph760 ], [ %indvars.iv.next859, %bb.cx ] ; 3 uses
  %.0483758 = phi i8 [ 1, %.lr.ph760 ], [ %.1484, %bb.cx ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv858, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jw = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %indvars.iv858
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !30 ; 2 uses
  %i.jz = and i16 %i.jy, 3840
  %.not604 = icmp eq i16 %i.jz, 0
  br i1 %.not604, label %bb.cx, label %.critedge.thread

bb.cx:                                            ; preds = %bb.cw
  %.not606 = icmp eq i16 %i.jy, 0
  %.1484 = select i1 %.not606, i8 %.0483758, i8 0 ; 2 uses
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 1 ; 2 uses
  %exitcond861.not = icmp eq i64 %indvars.iv.next859, %wide.trip.count860
  br i1 %exitcond861.not, label %.critedge, label %bb.cv

.critedge:                                        ; preds = %bb.cv, %bb.cx
  %.0483.lcssa.ph = phi i8 [ %.0483758, %bb.cv ], [ %.1484, %bb.cx ]
  %i.ka = icmp eq i8 %.0483.lcssa.ph, 0
  br i1 %i.ka, label %.critedge._crit_edge, label %.critedge..critedge.thread_crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.phi.trans.insert887 = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.pre888 = load i16, ptr %.phi.trans.insert887, align 4, !tbaa !30
  %.phi.trans.insert889 = getelementptr inbounds nuw i8, ptr %i.k, i64 26
  %.pre890 = load i16, ptr %.phi.trans.insert889, align 2, !tbaa !30
  br label %bb.du

.critedge..critedge.thread_crit_edge:             ; preds = %bb.cu, %.critedge
  %.pre882 = load i16, ptr %i.hn, align 8, !tbaa !30
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.cw, %.critedge..critedge.thread_crit_edge
  %i.kb = phi i16 [ %.pre882, %.critedge..critedge.thread_crit_edge ], [ %i.jv, %bb.cw ] ; 5 uses
  %i.kc = load i8, ptr %i.e, align 8, !tbaa !35   ; 5 uses
  %i.kd = zext i8 %i.kc to i16                    ; 2 uses
  %i.ke = add i16 %i.kb, 1                        ; 2 uses
  %.not822 = icmp eq i16 %i.ke, %i.kd
  br i1 %.not822, label %.thread972, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge.thread
  %i.kf = sub i16 %i.ke, %i.kd
  %i.kg = zext i8 %i.ju to i32
  %i.kh = zext i16 %i.kb to i32                   ; 2 uses
  %i.ki = zext i16 %i.kb to i64
  %wide.trip.count868 = zext i16 %i.kf to i64
  %i.kj = icmp ne i8 %i.ju, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.dh
  %indvars.iv866 = phi i32 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next867, %bb.dh ] ; 6 uses
  %indvars.iv862 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next863, %bb.dh ] ; 2 uses
  %.0474791 = phi i8 [ 0, %.preheader.lr.ph ], [ %.1475.lcssa, %bb.dh ] ; 2 uses
  %.0478790 = phi i8 [ 0, %.preheader.lr.ph ], [ %.3481, %bb.dh ] ; 2 uses
  %.0486789 = phi i16 [ 0, %.preheader.lr.ph ], [ %.1487.lcssa, %bb.dh ] ; 2 uses
  %.0490788 = phi i16 [ 0, %.preheader.lr.ph ], [ %.3493, %bb.dh ] ; 2 uses
  %i.kk = add nuw nsw i32 %indvars.iv866, %i.kg
  %i.kl = icmp samesign ult i32 %indvars.iv866, %i.kh
  %or.cond686766 = and i1 %i.kl, %i.kj
  br i1 %or.cond686766, label %.lr.ph772, label %.critedge12

.lr.ph772:                                        ; preds = %.preheader
  %i.km = load ptr, ptr %i.k, align 8, !tbaa !34  ; 3 uses
  %i.kn = trunc nuw i32 %indvars.iv866 to i16
  %invariant.op = sub i32 1, %indvars.iv866
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph772, %bb.de
  %indvars.iv864 = phi i64 [ %indvars.iv862, %.lr.ph772 ], [ %indvars.iv.next865, %bb.de ] ; 2 uses
  %i.ko = phi i32 [ %indvars.iv866, %.lr.ph772 ], [ %i.ld, %bb.de ]
  %.1475771 = phi i8 [ %.0474791, %.lr.ph772 ], [ %.2476, %bb.de ] ; 6 uses
  %.1479770 = phi i8 [ %.0478790, %.lr.ph772 ], [ %spec.select631, %bb.de ] ; 2 uses
  %.1487769 = phi i16 [ %.0486789, %.lr.ph772 ], [ %.2488, %bb.de ] ; 5 uses
  %.1491768 = phi i16 [ %.0490788, %.lr.ph772 ], [ %spec.select, %bb.de ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %indvars.iv864
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !30
  %i.kr = and i16 %i.kq, 3840
  %.not607 = icmp eq i16 %i.kr, 0
  br i1 %.not607, label %bb.cz, label %.critedge12

bb.cz:                                            ; preds = %bb.cy
  %.reass.reass.reass = add i32 %i.ko, %invariant.op ; 2 uses
  %i.ks = zext i8 %.1479770 to i32                ; 2 uses
  %.not608 = icmp samesign ult i32 %.reass.reass.reass, %i.ks
  %spec.select = select i1 %.not608, i16 %.1491768, i16 %i.kn ; 6 uses
  %spec.select631688 = call i32 @llvm.smax.i32(i32 %.reass.reass.reass, i32 %i.ks)
  %spec.select631 = trunc i32 %spec.select631688 to i8 ; 7 uses
  %i.kt = zext i16 %spec.select to i64
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.kt
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !30
  %.not609 = icmp eq i16 %i.kv, 0
  br i1 %.not609, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.kw = zext i16 %spec.select to i32
  %i.kx = add nuw nsw i32 %i.kw, 1                ; 2 uses
  %i.ky = icmp samesign ult i32 %i.kx, %i.kh
  br i1 %i.ky, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.kz = zext nneg i32 %i.kx to i64
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.kz
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !30
  %.not610 = icmp eq i16 %i.lb, 0
  br i1 %.not610, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %.not611 = icmp ugt i8 %i.ju, %spec.select631
  br i1 %.not611, label %bb.dd, label %.critedge12

bb.dd:                                            ; preds = %bb.dc
  %.not612 = icmp ule i8 %i.kc, %spec.select631
  %i.lc = icmp ult i8 %.1475771, %spec.select631
  %or.cond632 = select i1 %.not612, i1 %i.lc, i1 false ; 2 uses
  %spec.select635 = select i1 %or.cond632, i16 %spec.select, i16 %.1487769
  %spec.select636 = select i1 %or.cond632, i8 %spec.select631, i8 %.1475771
end_hunk_0
begin_hunk_1_@ac_special_altexpand:bb.a

bb.n:                                             ; preds = %bb.l
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #26 ; 2 uses
  %.not24.i = icmp eq i64 %i.z, 0
  br i1 %.not24.i, label %.thread.sink.split, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %bb.n, %bb.r
  %.023.i = phi i64 [ %.1.i135, %bb.r ], [ 0, %bb.n ] ; 4 uses
  %.01721.i = phi i64 [ %i.ae, %bb.r ], [ 0, %bb.n ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01721.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !46
  switch i8 %i.ab, label %bb.r [
    i8 40, label %bb.o
    i8 41, label %bb.p
  ]

bb.o:                                             ; preds = %.lr.ph.i133
  %i.ac = add i64 %.023.i, 1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i133
  %.not.i134 = icmp eq i64 %.023.i, 0
  br i1 %.not.i134, label %find_paren_end.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = add i64 %.023.i, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph.i133
  %.1.i135 = phi i64 [ %i.ac, %bb.o ], [ %i.ad, %bb.q ], [ %.023.i, %.lr.ph.i133 ]
  %i.ae = add nuw i64 %.01721.i, 1                ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %i.ae, %i.z
  br i1 %exitcond.not.i136, label %.thread.sink.split, label %.lr.ph.i133

find_paren_end.exit:                              ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01721.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = tail call fastcc i32 @ac_special_altexpand(ptr noundef nonnull %i.ag, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %i.n, i32 noundef %3, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not128 = icmp eq i32 %i.ah, 0
  br i1 %.not128, label %.sink.split, label %.thread

bb.s:                                             ; preds = %bb.k
  br i1 %i.m, label %.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = tail call fastcc i32 @ac_special_altexpand(ptr noundef nonnull %i.x, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %i.n, i32 noundef %3, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not125 = icmp eq i32 %i.ai, 0
  br i1 %.not125, label %.loopexit161, label %.thread

bb.u:                                             ; preds = %bb.k
  br i1 %i.s, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #26 ; 2 uses
  %.not24.i137 = icmp eq i64 %i.aj, 0
  br i1 %.not24.i137, label %.thread.sink.split, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.v, %bb.z
  %.023.i139 = phi i64 [ %.1.i144, %bb.z ], [ 0, %bb.v ] ; 4 uses
  %.01721.i141 = phi i64 [ %i.ao, %bb.z ], [ 0, %bb.v ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01721.i141
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !46
  switch i8 %i.al, label %bb.z [
    i8 40, label %bb.w
    i8 41, label %bb.x
  ]

bb.w:                                             ; preds = %.lr.ph.i138
  %i.am = add i64 %.023.i139, 1
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph.i138
  %.not.i142 = icmp eq i64 %.023.i139, 0
  br i1 %.not.i142, label %find_paren_end.exit147, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = add i64 %.023.i139, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w, %.lr.ph.i138
  %.1.i144 = phi i64 [ %i.am, %bb.w ], [ %i.an, %bb.y ], [ %.023.i139, %.lr.ph.i138 ]
  %i.ao = add nuw i64 %.01721.i141, 1             ; 2 uses
  %exitcond.not.i145 = icmp eq i64 %i.ao, %i.aj
  br i1 %exitcond.not.i145, label %.thread.sink.split, label %.lr.ph.i138

find_paren_end.exit147:                           ; preds = %bb.x
  %i.ap = tail call fastcc i32 @ac_special_altexpand(ptr noundef nonnull %i.x, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %i.o, i32 noundef %i.o, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not121 = icmp eq i32 %i.ap, 0
  br i1 %.not121, label %.outer.preheader, label %.thread

.outer.preheader:                                 ; preds = %find_paren_end.exit147
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.01721.i141
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.outer.preheader
  %.295196255.sink.ph = phi ptr [ %i.aq, %.outer.preheader ], [ %.295196, %.outer.outer.backedge ]
  %.088195.ph.ph = phi i32 [ 0, %.outer.preheader ], [ %.088195.ph.ph.be, %.outer.outer.backedge ] ; 3 uses
  %.not124.not = icmp eq i32 %.088195.ph.ph, 0
  br label %.outer

.outer:                                           ; preds = %bb.aa, %.outer.outer
  %.295196255.sink = phi ptr [ %.295196255.sink.ph, %.outer.outer ], [ %.295196, %bb.aa ]
  %.295 = getelementptr inbounds nuw i8, ptr %.295196255.sink, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %.outer, %.split
  %.295196 = phi ptr [ %.295239, %.split ], [ %.295, %.outer ] ; 6 uses
  %i.ar = load i8, ptr %.295196, align 1, !tbaa !46
  switch i8 %i.ar, label %.outer [
    i8 0, label %.sink.split
    i8 124, label %.split
    i8 40, label %bb.ab
    i8 41, label %bb.ac
  ]

.split:                                           ; preds = %bb.aa
  %.295239 = getelementptr inbounds nuw i8, ptr %.295196, i64 1 ; 3 uses
  br i1 %.not124.not, label %split, label %bb.aa

bb.ab:                                            ; preds = %bb.aa
  %i.as = add nsw i32 %.088195.ph.ph, 1
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.ab, %bb.ac
  %.088195.ph.ph.be = phi i32 [ %i.at, %bb.ac ], [ %i.as, %bb.ab ]
  br label %.outer.outer

bb.ac:                                            ; preds = %bb.aa
  %i.at = add nsw i32 %.088195.ph.ph, -1
  br label %.outer.outer.backedge

split:                                            ; preds = %.split
  %.pre = load i8, ptr %.295239, align 1, !tbaa !46
  %.pre.fr = freeze i8 %.pre
  %i.au = icmp eq i8 %.pre.fr, 124
  %i.av = getelementptr inbounds nuw i8, ptr %.295196, i64 2
  %spec.select = select i1 %i.au, ptr %i.av, ptr %.295239
  br label %.sink.split

bb.ad:                                            ; preds = %bb.u
  %i.aw = icmp eq i8 %i.q, 0
  br i1 %i.aw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ax = tail call fastcc i32 @ac_addspecial_add_alt_node(ptr noundef %1, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7) ; 2 uses
  %.not119 = icmp eq i32 %i.ax, 0
  br i1 %.not119, label %.loopexit161, label %.thread

.sink.split:                                      ; preds = %bb.aa, %split, %bb.m, %find_paren_end.exit
  %.2.ph = phi ptr [ %i.x, %bb.m ], [ %i.x, %find_paren_end.exit ], [ %spec.select, %split ], [ %.295196, %bb.aa ]
  store i8 0, ptr %i.b, align 1, !tbaa !46
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ad
  %.2 = phi ptr [ %i.x, %bb.ad ], [ %.2.ph, %.sink.split ]
  br i1 %.not130, label %bb.f, label %.thread

.loopexit161:                                     ; preds = %bb.f, %ac_analyze_expr.exit, %bb.ae, %bb.t
  %.197 = phi i32 [ %i.p, %bb.t ], [ %i.p, %bb.ae ], [ %smax, %ac_analyze_expr.exit ], [ %smax, %bb.f ]
  %.not126 = icmp eq i32 %.197, %.04979.i
  br i1 %.not126, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.v, %bb.n, %bb.j, %bb.i, %bb.r, %bb.z, %.loopexit161, %bb.s
  %.str.99.sink = phi ptr [ @.str.100, %bb.s ], [ @.str.101, %.loopexit161 ], [ @.str.99, %bb.r ], [ @.str.99, %bb.z ], [ @.str.97, %bb.i ], [ @.str.99, %bb.n ], [ @.str.99, %bb.v ], [ @.str.98, %bb.j ]
  %.3101.ph = phi i32 [ 27, %bb.s ], [ 4, %.loopexit161 ], [ 4, %bb.r ], [ 4, %bb.z ], [ 4, %bb.i ], [ 4, %bb.n ], [ 4, %bb.v ], [ 20, %bb.j ]
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull %.str.99.sink) #20
  br label %.thread

.thread:                                          ; preds = %find_paren_end.exit147, %bb.af, %find_paren_end.exit, %bb.m, %.thread.sink.split, %.loopexit161, %bb.ae, %bb.t
  %.3101 = phi i32 [ 0, %.loopexit161 ], [ %.3101.ph, %.thread.sink.split ], [ %i.ai, %bb.t ], [ %i.ax, %bb.ae ], [ %i.y, %bb.m ], [ %i.ap, %find_paren_end.exit147 ], [ 0, %bb.af ], [ %i.ah, %find_paren_end.exit ]
  ret i32 %.3101
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 21) i32 @ac_addspecial_add_alt_node(ptr noundef nonnull %0, i8 noundef zeroext %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call ptr @mpool_calloc(ptr noundef %i.b, i64 noundef 1, i64 noundef 24) #20 ; 9 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.102) #20
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.e = tail call ptr @cli_mpool_hex2ui(ptr noundef %i.d, ptr noundef nonnull %0) #20 ; 3 uses
  %.not74 = icmp eq ptr %i.e, null
  br i1 %.not74, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !37
  tail call void @mpool_free(ptr noundef %i.f, ptr noundef nonnull %i.c) #20
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  store ptr %i.e, ptr %i.c, align 8, !tbaa !83
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %4 = lshr i64 %i.g, 1
  %i.h = trunc i64 %4 to i16
  %5 = and i16 %i.h, 32767                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i16 %5, ptr %i.i, align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  store i8 1, ptr %i.j, align 2, !tbaa !133
  %i.k = and i8 %1, 1
  %.not75 = icmp eq i8 %i.k, 0
  %.not126 = icmp eq i16 %5, 0
  %or.cond = select i1 %.not75, i1 true, i1 %.not126
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %i.l = phi i16 [ %i.v, %bb.g ], [ %5, %bb.e ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !30   ; 2 uses
  %i.o = icmp ult i16 %i.n, 256
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.p = tail call ptr @__ctype_tolower_loc() #21
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = zext nneg i16 %i.n to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %.068 = load i32, ptr %i.s, align 4, !tbaa !59
  %i.t = trunc i32 %.068 to i16
  %i.u = add i16 %i.t, 4096
  store i16 %i.u, ptr %i.m, align 2, !tbaa !30
  %.pre = load i16, ptr %i.i, align 8, !tbaa !132
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.v = phi i16 [ %i.l, %.lr.ph ], [ %.pre, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = zext i16 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e
  %.070120 = load ptr, ptr %2, align 8, !tbaa !46 ; 2 uses
  %.not76121 = icmp eq ptr %.070120, null
  br i1 %.not76121, label %._crit_edge, label %.lr.ph125

.lr.ph125:                                        ; preds = %.loopexit, %ac_uicmp.exit.thread
  %.070124 = phi ptr [ %.070, %ac_uicmp.exit.thread ], [ %.070120, %.loopexit ] ; 5 uses
  %.079122 = phi i32 [ %.182, %ac_uicmp.exit.thread ], [ 0, %.loopexit ] ; 10 uses
  %i.y = load ptr, ptr %.070124, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %.070124, i64 8
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !132 ; 3 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !83  ; 2 uses
  %i.ac = load i16, ptr %i.i, align 8, !tbaa !132 ; 3 uses
  %i.ad = tail call i16 @llvm.umin.i16(i16 %i.aa, i16 %i.ac) ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %.not163.i = icmp eq i16 %i.ad, 0
  br i1 %.not163.i, label %ac_uicmp.exit.thread84.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph125, %.thread.i
  %.0162.i = phi i64 [ %i.by, %.thread.i ], [ 0, %.lr.ph125 ] ; 3 uses
  %.093161.i = phi i16 [ %.1116.i, %.thread.i ], [ 0, %.lr.ph125 ] ; 13 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.0162.i
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !30 ; 2 uses
  %i.ah = zext i16 %i.ag to i32                   ; 9 uses
  %i.ai = and i16 %i.ag, 3840                     ; 5 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.0162.i
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !30 ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 9 uses
  %i.am = and i16 %i.ak, 3840                     ; 4 uses
  %i.an = icmp eq i16 %i.ai, %i.am
  br i1 %i.an, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph.i
  %i.ao = lshr exact i16 %i.ai, 8
  switch i16 %i.ao, label %bb.l [
    i16 0, label %bb.i
    i16 1, label %.thread.i
    i16 3, label %bb.j
    i16 4, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ap = xor i32 %i.al, %i.ah
  %i.aq = and i32 %i.ap, 255
  %.not114.i = icmp eq i32 %i.aq, 0
  br i1 %.not114.i, label %.thread.i, label %ac_uicmp.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ar = xor i32 %i.al, %i.ah
  %i.as = and i32 %i.ar, 240
  %.not113.i = icmp eq i32 %i.as, 0
  br i1 %.not113.i, label %.thread.i, label %ac_uicmp.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.at = xor i32 %i.al, %i.ah
  %i.au = and i32 %i.at, 15
  %.not112.i = icmp eq i32 %i.au, 0
  br i1 %.not112.i, label %.thread.i, label %ac_uicmp.exit.thread

bb.l:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.103) #20
  br label %ac_uicmp.exit.thread

bb.m:                                             ; preds = %.lr.ph.i
  %i.av = icmp eq i16 %i.ai, 0
  br i1 %i.av, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  switch i16 %i.am, label %bb.v [
    i16 256, label %bb.o
    i16 768, label %bb.p
    i16 1024, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.aw = or i16 %.093161.i, 2
  br label %select.unfold.i

bb.p:                                             ; preds = %bb.n
  %i.ax = and i32 %i.ah, 240
  %i.ay = and i32 %i.al, 240                      ; 2 uses
  %.not111.i = icmp eq i32 %i.ax, %i.ay
  br i1 %.not111.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = and i32 %i.ah, 255
  %i.ba = sub nsw i32 %i.ay, %i.az
  br label %ac_uicmp.exit

bb.r:                                             ; preds = %bb.p
  %i.bb = or i16 %.093161.i, 2
  br label %select.unfold.i

bb.s:                                             ; preds = %bb.n
  %i.bc = and i32 %i.ah, 15
  %i.bd = and i32 %i.al, 15                       ; 2 uses
  %.not110.i = icmp eq i32 %i.bc, %i.bd
  br i1 %.not110.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = and i32 %i.ah, 255
  %i.bf = sub nsw i32 %i.bd, %i.be
  br label %ac_uicmp.exit

bb.u:                                             ; preds = %bb.s
  %i.bg = or i16 %.093161.i, 2
  br label %select.unfold.i

bb.v:                                             ; preds = %bb.n
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.103) #20
  br label %ac_uicmp.exit.thread

bb.w:                                             ; preds = %bb.m
  %i.bh = icmp eq i16 %i.am, 0
  br i1 %i.bh, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  switch i16 %i.ai, label %bb.af [
    i16 256, label %bb.y
    i16 768, label %bb.z
    i16 1024, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.bi = or i16 %.093161.i, 1
  br label %select.unfold.i

bb.z:                                             ; preds = %bb.x
  %i.bj = and i32 %i.ah, 240                      ; 2 uses
  %i.bk = and i32 %i.al, 240
  %.not109.i = icmp eq i32 %i.bj, %i.bk
  br i1 %.not109.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = and i32 %i.al, 255
  %i.bm = sub nsw i32 %i.bl, %i.bj
  br label %ac_uicmp.exit

bb.ab:                                            ; preds = %bb.z
  %i.bn = or i16 %.093161.i, 1
  br label %select.unfold.i

bb.ac:                                            ; preds = %bb.x
  %i.bo = and i32 %i.ah, 15                       ; 2 uses
  %i.bp = and i32 %i.al, 15
  %.not.i = icmp eq i32 %i.bo, %i.bp
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bq = and i32 %i.al, 255
  %i.br = sub nsw i32 %i.bq, %i.bo
  br label %ac_uicmp.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bs = or i16 %.093161.i, 1
  br label %select.unfold.i

bb.af:                                            ; preds = %bb.x
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.104) #20
  br label %ac_uicmp.exit.thread

bb.ag:                                            ; preds = %bb.w
  %i.bt = icmp eq i16 %i.ai, 256                  ; 2 uses
  %i.bu = icmp eq i16 %i.am, 256                  ; 2 uses
  %or.cond.i78 = or i1 %i.bt, %i.bu
  br i1 %or.cond.i78, label %bb.ah, label %ac_uicmp.exit.thread

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bv = or i16 %.093161.i, 1
  br label %select.unfold.i

bb.aj:                                            ; preds = %bb.ah
end_hunk_1
