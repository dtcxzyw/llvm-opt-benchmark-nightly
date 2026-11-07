Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Odbg?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@H5O__debug_real:bb.a

._crit_edge:                                      ; preds = %bb.aa, %bb.s
  %.0328.lcssa = phi i64 [ 0, %bb.s ], [ %i.ej, %bb.aa ]
  %.0327.lcssa = phi i64 [ 0, %bb.s ], [ %i.en, %bb.aa ]
  %i.ey = call noalias dereferenceable_or_null(108) ptr @calloc(i64 noundef 1, i64 noundef 108) #9 ; 3 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %.thread395, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.fa = load i64, ptr %i.cl, align 8, !tbaa !42
  %.not412 = icmp eq i64 %i.fa, 0
  br i1 %.not412, label %._crit_edge409, label %.lr.ph408

.lr.ph408:                                        ; preds = %.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 21 uses
  %i.fd = add nsw i32 %4, 3                       ; 6 uses
  %i.fe = call i32 @llvm.smax.i32(i32 %5, i32 3)
  %i.ff = add nsw i32 %i.fe, -3                   ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 3 uses
  %i.fh = add nsw i32 %4, 6                       ; 2 uses
  %i.fi = call i32 @llvm.smax.i32(i32 %5, i32 6)
  %i.fj = add nsw i32 %i.fi, -6
  br label %bb.ab

.thread395:                                       ; preds = %._crit_edge
  %i.fk = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !14
  %i.fl = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.fm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__debug_real, i32 noundef 383, i64 noundef %i.fk, i64 noundef %i.fl, ptr noundef nonnull @.str.40) #8 ; 0 uses
  br label %bb.bu

bb.ab:                                            ; preds = %.lr.ph408, %bb.br
  %i.fn = phi i64 [ 0, %.lr.ph408 ], [ %i.mu, %bb.br ] ; 22 uses
  %.1326407 = phi i32 [ 0, %.lr.ph408 ], [ %i.mt, %bb.br ] ; 2 uses
  %.0329406 = phi i64 [ 0, %.lr.ph408 ], [ %.1330, %bb.br ]
  %i.fo = load i8, ptr %i.r, align 8, !tbaa !37
  %i.fp = icmp eq i8 %i.fo, 1
  br i1 %i.fp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fq = load i8, ptr %i.fb, align 1, !tbaa !38
  %i.fr = lshr i8 %i.fq, 1
  %i.fs = and i8 %i.fr, 2
  %i.ft = or disjoint i8 %i.fs, 4
  %i.fu = zext nneg i8 %i.ft to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fv = phi i64 [ 8, %bb.ac ], [ 0, %bb.ab ]
  %i.fw = phi i64 [ %i.fu, %bb.ac ], [ 8, %bb.ab ]
  %i.fx = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.fy = getelementptr inbounds nuw [48 x i8], ptr %i.fx, i64 %i.fn ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !55
  %i.gb = load ptr, ptr %i.fy, align 8, !tbaa !56
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !57
  %i.gd = icmp eq i32 %i.gc, 16
  %i.ge = select i1 %i.gd, i64 %i.fv, i64 0
  %i.gf = add i64 %i.fw, %.0329406
  %i.gg = add i64 %i.gf, %i.ga
  %.1330 = add i64 %i.gg, %i.ge                   ; 2 uses
  %i.gh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %4, ptr noundef nonnull @.str.4, i32 noundef %.1326407) #8 ; 0 uses
  %i.gi = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.gj = getelementptr inbounds nuw [48 x i8], ptr %i.gi, i64 %i.fn
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !56 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !57 ; 4 uses
  %i.gm = icmp ugt i32 %i.gl, 26
  br i1 %i.gm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef %i.gl) #8 ; 0 uses
  br label %bb.br

bb.af:                                            ; preds = %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !58
  %i.gq = zext nneg i32 %i.gl to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !59 ; 2 uses
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !59
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %i.fd, ptr noundef nonnull @.str.4, i32 noundef %i.ff, ptr noundef nonnull @.str.44, i32 noundef %i.gl, ptr noundef %i.gp, i32 noundef %i.gs) #8 ; 0 uses
  %i.gv = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %i.gv, i64 %i.fn
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !60, !range !10, !noundef !11
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = select i1 %i.gz, ptr @.str.7, ptr @.str.8
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %i.fd, ptr noundef nonnull @.str.4, i32 noundef %i.ff, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ha) #8 ; 0 uses
  %i.hc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %i.fd, ptr noundef nonnull @.str.4, i32 noundef %i.ff, ptr noundef nonnull @.str.46) #8 ; 0 uses
  %i.hd = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.he = getelementptr inbounds nuw [48 x i8], ptr %i.hd, i64 %i.fn
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 9
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !61  ; 3 uses
  %.not351 = icmp eq i8 %i.hg, 0
  br i1 %.not351, label %bb.ay, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hh = and i8 %i.hg, 1
  %.not353 = icmp eq i8 %i.hh, 0
  br i1 %.not353, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.49) #8 ; 0 uses
  %.pre418 = load ptr, ptr %i.fc, align 8, !tbaa !53
  %.phi.trans.insert = getelementptr inbounds nuw [48 x i8], ptr %.pre418, i64 %i.fn
  %.phi.trans.insert419 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 9
  %.pre420 = load i8, ptr %.phi.trans.insert419, align 1, !tbaa !61
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hj = phi i8 [ %.pre420, %bb.ah ], [ %i.hg, %bb.ag ] ; 2 uses
  %.0 = phi i8 [ 1, %bb.ah ], [ 0, %bb.ag ]       ; 2 uses
  %i.hk = and i8 %i.hj, 2
  %.not354 = icmp eq i8 %i.hk, 0
  br i1 %.not354, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hl = trunc nuw i8 %.0 to i1
  %i.hm = select i1 %i.hl, ptr @.str.48, ptr @.str.49
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.hm) #8 ; 0 uses
  %.pre421 = load ptr, ptr %i.fc, align 8, !tbaa !53
  %.phi.trans.insert422 = getelementptr inbounds nuw [48 x i8], ptr %.pre421, i64 %i.fn
  %.phi.trans.insert423 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert422, i64 9
  %.pre424 = load i8, ptr %.phi.trans.insert423, align 1, !tbaa !61
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ho = phi i8 [ %.pre424, %bb.aj ], [ %i.hj, %bb.ai ] ; 2 uses
  %.1 = phi i8 [ 1, %bb.aj ], [ %.0, %bb.ai ]     ; 2 uses
  %i.hp = and i8 %i.ho, 4
  %.not355 = icmp eq i8 %i.hp, 0
  br i1 %.not355, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hq = trunc nuw i8 %.1 to i1
  %i.hr = select i1 %i.hq, ptr @.str.48, ptr @.str.49
  %i.hs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.hr) #8 ; 0 uses
  %.pre425 = load ptr, ptr %i.fc, align 8, !tbaa !53
  %.phi.trans.insert426 = getelementptr inbounds nuw [48 x i8], ptr %.pre425, i64 %i.fn
  %.phi.trans.insert427 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert426, i64 9
  %.pre428 = load i8, ptr %.phi.trans.insert427, align 1, !tbaa !61
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ht = phi i8 [ %.pre428, %bb.al ], [ %i.ho, %bb.ak ] ; 2 uses
  %.2 = phi i8 [ 1, %bb.al ], [ %.1, %bb.ak ]     ; 2 uses
  %i.hu = and i8 %i.ht, 8
  %.not356 = icmp eq i8 %i.hu, 0
  br i1 %.not356, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hv = trunc nuw i8 %.2 to i1
  %i.hw = select i1 %i.hv, ptr @.str.48, ptr @.str.49
  %i.hx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.hw) #8 ; 0 uses
  %.pre429 = load ptr, ptr %i.fc, align 8, !tbaa !53
  %.phi.trans.insert430 = getelementptr inbounds nuw [48 x i8], ptr %.pre429, i64 %i.fn
  %.phi.trans.insert431 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert430, i64 9
  %.pre432 = load i8, ptr %.phi.trans.insert431, align 1, !tbaa !61
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hy = phi i8 [ %.pre432, %bb.an ], [ %i.ht, %bb.am ] ; 2 uses
  %.3 = phi i8 [ 1, %bb.an ], [ %.2, %bb.am ]     ; 2 uses
  %i.hz = and i8 %i.hy, 16
  %.not357 = icmp eq i8 %i.hz, 0
  br i1 %.not357, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ia = trunc nuw i8 %.3 to i1
  %i.ib = select i1 %i.ia, ptr @.str.48, ptr @.str.49
  %i.ic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.ib) #8 ; 0 uses
  %.pre433 = load ptr, ptr %i.fc, align 8, !tbaa !53
  %.phi.trans.insert434 = getelementptr inbounds nuw [48 x i8], ptr %.pre433, i64 %i.fn
  %.phi.trans.insert435 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert434, i64 9
  %.pre436 = load i8, ptr %.phi.trans.insert435, align 1, !tbaa !61
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.id = phi i8 [ %.pre436, %bb.ap ], [ %i.hy, %bb.ao ] ; 2 uses
  %.4 = phi i8 [ 1, %bb.ap ], [ %.3, %bb.ao ]     ; 2 uses
  %i.ie = and i8 %i.id, 32
  %.not358 = icmp eq i8 %i.ie, 0
  br i1 %.not358, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.if = trunc nuw i8 %.4 to i1
  %i.ig = select i1 %i.if, ptr @.str.48, ptr @.str.49
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.ig) #8 ; 0 uses
  %.pre437 = load ptr, ptr %i.fc, align 8, !tbaa !53
  %.phi.trans.insert438 = getelementptr inbounds nuw [48 x i8], ptr %.pre437, i64 %i.fn
  %.phi.trans.insert439 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert438, i64 9
  %.pre440 = load i8, ptr %.phi.trans.insert439, align 1, !tbaa !61
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ii = phi i8 [ %.pre440, %bb.ar ], [ %i.id, %bb.aq ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.ar ], [ %.4, %bb.aq ]     ; 2 uses
  %i.ij = and i8 %i.ii, 64
  %.not359 = icmp eq i8 %i.ij, 0
  br i1 %.not359, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ik = trunc nuw i8 %.5 to i1
  %i.il = select i1 %i.ik, ptr @.str.48, ptr @.str.49
  %i.im = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.il) #8 ; 0 uses
  %.pre441 = load ptr, ptr %i.fc, align 8, !tbaa !53
  %.phi.trans.insert442 = getelementptr inbounds nuw [48 x i8], ptr %.pre441, i64 %i.fn
  %.phi.trans.insert443 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert442, i64 9
  %.pre444 = load i8, ptr %.phi.trans.insert443, align 1, !tbaa !61
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %10 = phi i8 [ %.pre444, %bb.at ], [ %i.ii, %bb.as ]
  %.6 = phi i8 [ 1, %bb.at ], [ %.5, %bb.as ]
  %.not360 = icmp sgt i8 %10, -1
  %11 = trunc nuw i8 %.6 to i1                    ; 2 uses
  br i1 %.not360, label %bb.av, label %.thread

.thread:                                          ; preds = %bb.au
  %12 = select i1 %11, ptr @.str.48, ptr @.str.49
  %i.in = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.56, ptr noundef nonnull %12) #8 ; 0 uses
  br label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %11, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %fputc = call i32 @fputc(i32 45, ptr %3)        ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.thread, %bb.aw, %bb.av
  %fwrite362 = call i64 @fwrite(ptr nonnull @.str.58, i64 2, i64 1, ptr %3) ; 0 uses
  br label %bb.az

bb.ay:                                            ; preds = %bb.af
  %fwrite352 = call i64 @fwrite(ptr nonnull @.str.61, i64 7, i64 1, ptr %3) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.io = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.ip = getelementptr inbounds nuw [48 x i8], ptr %i.io, i64 %i.fn
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !62
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %i.fd, ptr noundef nonnull @.str.4, i32 noundef %i.ff, ptr noundef nonnull @.str.62, i32 noundef %i.ir) #8 ; 0 uses
  %i.it = load ptr, ptr %i.fc, align 8, !tbaa !53 ; 2 uses
  %i.iu = getelementptr inbounds nuw [48 x i8], ptr %i.it, i64 %i.fn
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !62
  %i.ix = zext i32 %i.iw to i64                   ; 3 uses
  %i.iy = load i64, ptr %i.cq, align 8, !tbaa !44
  %.not363 = icmp ugt i64 %i.iy, %i.ix
  br i1 %.not363, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %fwrite364 = call i64 @fwrite(ptr nonnull @.str.63, i64 21, i64 1, ptr %3) ; 0 uses
  %.pre445 = load ptr, ptr %i.fc, align 8, !tbaa !53
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.iz = phi ptr [ %.pre445, %bb.ba ], [ %i.it, %bb.az ]
  %i.ja = getelementptr inbounds nuw [48 x i8], ptr %i.iz, i64 %i.fn ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !63
  %i.jd = load ptr, ptr %i.fg, align 8, !tbaa !46
  %i.je = getelementptr inbounds nuw [40 x i8], ptr %i.jd, i64 %i.ix
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !64
  %i.jh = ptrtoint ptr %i.jc to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !55
  %i.jm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %i.fd, ptr noundef nonnull @.str.4, i32 noundef %i.ff, ptr noundef nonnull @.str.65, i64 noundef %i.jj, i64 noundef %i.jl) #8 ; 0 uses
  %i.jn = load ptr, ptr %i.fc, align 8, !tbaa !53 ; 2 uses
  %i.jo = getelementptr inbounds nuw [48 x i8], ptr %i.jn, i64 %i.fn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !63 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !55
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.js
  %i.ju = load ptr, ptr %i.fg, align 8, !tbaa !46
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %i.ju, i64 %i.ix ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !64 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !50
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jz
  %i.kb = icmp ugt ptr %i.jt, %i.ka
  %i.kc = icmp ult ptr %i.jq, %i.jx
  %or.cond378 = or i1 %i.kc, %i.kb
  br i1 %or.cond378, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %fwrite365 = call i64 @fwrite(ptr nonnull @.str.66, i64 28, i64 1, ptr %3) ; 0 uses
  %.pre446 = load ptr, ptr %i.fc, align 8, !tbaa !53
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.kd = phi ptr [ %i.jn, %bb.bb ], [ %.pre446, %bb.bc ]
  %i.ke = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %i.fn ; 5 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !56 ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !65
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.be, label %bb.bn

bb.be:                                            ; preds = %bb.bd
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !66 ; 2 uses
  %.not366 = icmp eq ptr %i.kk, null
  br i1 %.not366, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 1, ptr %i.e, align 4, !tbaa !59
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 9
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !61
  %i.kn = zext i8 %i.km to i32
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 40
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !55
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !63
  %i.ks = call ptr %i.kk(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.kn, ptr noundef nonnull %i.e, i64 noundef %i.kp, ptr noundef %i.kr) #8 ; 2 uses
  %i.kt = load ptr, ptr %i.fc, align 8, !tbaa !53 ; 2 uses
  %i.ku = getelementptr inbounds nuw [48 x i8], ptr %i.kt, i64 %i.fn
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !65
  %i.kw = icmp eq ptr %i.ks, null
  br i1 %i.kw, label %.thread397, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kx = load i32, ptr %i.e, align 4, !tbaa !59
  %i.ky = and i32 %i.kx, 2
  %.not367 = icmp eq i32 %i.ky, 0
  br i1 %.not367, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kz = call i32 @H5F_get_intent(ptr noundef %0) #8
  %i.la = and i32 %i.kz, 1
  %.not368 = icmp eq i32 %i.la, 0
  %.pre447 = load ptr, ptr %i.fc, align 8, !tbaa !53 ; 3 uses
  br i1 %.not368, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lb = getelementptr inbounds nuw [48 x i8], ptr %.pre447, i64 %i.fn
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i8 1, ptr %i.lc, align 8, !tbaa !60
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.ld = phi ptr [ %.pre447, %bb.bi ], [ %.pre447, %bb.bh ], [ %i.kt, %bb.bg ]
  %i.le = getelementptr inbounds nuw [48 x i8], ptr %i.ld, i64 %i.fn ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 9
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !61
  %i.lh = and i8 %i.lg, 64
  %.not369 = icmp eq i8 %i.lh, 0
  br i1 %.not369, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !65 ; 4 uses
  store i32 3, ptr %i.lj, align 8, !tbaa !68
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store ptr %0, ptr %i.lk, align 8, !tbaa !69
  %i.ll = load i32, ptr %i.kf, align 8, !tbaa !57
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !70
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !71
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  store i32 %i.lo, ptr %i.lp, align 8, !tbaa !72
  %i.lq = load ptr, ptr %i.fg, align 8, !tbaa !46
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !49
  %i.ls = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.lt = getelementptr inbounds nuw [48 x i8], ptr %i.ls, i64 %i.fn
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !65
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  store i64 %i.lr, ptr %i.lw, align 8, !tbaa !72
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kf, i64 144
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !73 ; 2 uses
  %.not370 = icmp eq ptr %i.ly, null
  br i1 %.not370, label %.thread386, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lz = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.ma = getelementptr inbounds nuw [48 x i8], ptr %i.lz, i64 %i.fn ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !65
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %i.me = load i32, ptr %i.md, align 4, !tbaa !71
  %i.mf = call i32 %i.ly(ptr noundef %i.mc, i32 noundef %i.me) #8
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %.thread397, label %.thread386

.thread386:                                       ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %bb.bn

bb.bn:                                            ; preds = %.thread386, %bb.be, %bb.bd
  %i.mh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.69, i32 noundef %i.fd, ptr noundef nonnull @.str.4, i32 noundef %i.ff, ptr noundef nonnull @.str.70) #8 ; 0 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kf, i64 152
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !19 ; 2 uses
  %.not371 = icmp eq ptr %i.mj, null
  br i1 %.not371, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.mk = load ptr, ptr %i.fc, align 8, !tbaa !53
  %i.ml = getelementptr inbounds nuw [48 x i8], ptr %i.mk, i64 %i.fn
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !65 ; 2 uses
  %.not372 = icmp eq ptr %i.mn, null
  br i1 %.not372, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mo = call i32 %i.mj(ptr noundef %0, ptr noundef nonnull %i.mn, ptr noundef %3, i32 noundef %i.fh, i32 noundef %i.fj) #8 ; 0 uses
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.mp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %i.fh, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.br

.thread397:                                       ; preds = %bb.bm, %bb.bf
  %H5E_CANTSET_g.sink = phi ptr [ @H5E_CANTDECODE_g, %bb.bf ], [ @H5E_CANTSET_g, %bb.bm ]
  %.str.68.sink = phi ptr [ @.str.67, %bb.bf ], [ @.str.68, %bb.bm ]
  %i.mq = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.mr = load i64, ptr %H5E_CANTSET_g.sink, align 8, !tbaa !14
  %i.ms = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__debug_real, i32 noundef 480, i64 noundef %i.mq, i64 noundef %i.mr, ptr noundef nonnull %.str.68.sink) #8 ; 0 uses
end_hunk_0
