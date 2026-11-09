Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/covCore?download=true
inline.NumInlined: 110
inline.NumDeleted: 41
begin_hunk_0_@Abc_NtkCovCovers_rec:bb.a
  %.0110.i = phi ptr [ %i.eq, %bb.ah ], [ null, %bb.y ], [ null, %bb.r ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16
  %.not128.i = icmp eq i32 %i.es, 0
  br i1 %.not128.i, label %Abc_NodeCovSum.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = load i32, ptr %i.av, align 4            ; 2 uses
  %i.eu = and i32 %i.et, 16
  %.not129.i = icmp eq i32 %i.eu, 0
  br i1 %.not129.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %.val158.i = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.ey = getelementptr i8, ptr %i.aq, i64 16
  %.val159.i = load i32, ptr %i.ey, align 8, !tbaa !57
  %i.ez = getelementptr i8, ptr %.val158.i, i64 272
  %.val158.val.i = load ptr, ptr %i.ez, align 8, !tbaa !31
  %i.fa = getelementptr i8, ptr %.val158.val.i, i64 24
  %.val158.val.val.i = load ptr, ptr %i.fa, align 8, !tbaa !58
  %i.fb = getelementptr i8, ptr %.val158.val.val.i, i64 8
  %.val158.val.val.val.i = load ptr, ptr %i.fb, align 8, !tbaa !39
  %i.fc = sext i32 %.val159.i to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %.val158.val.val.val.i, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !40
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink.i = phi ptr [ %i.fe, %bb.al ], [ %i.ex, %bb.ak ]
  %i.ff = zext nneg i32 %i.cr to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !100 ; 2 uses
  %i.fi = load i32, ptr %i.bd, align 4
  %i.fj = and i32 %i.fi, 16
  %.not130.i = icmp eq i32 %i.fj, 0
  br i1 %.not130.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %.val156.i = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.fn = getelementptr i8, ptr %i.au, i64 16
  %.val157.i = load i32, ptr %i.fn, align 8, !tbaa !57
  %i.fo = getelementptr i8, ptr %.val156.i, i64 272
  %.val156.val.i = load ptr, ptr %i.fo, align 8, !tbaa !31
  %i.fp = getelementptr i8, ptr %.val156.val.i, i64 24
  %.val156.val.val.i = load ptr, ptr %i.fp, align 8, !tbaa !58
  %i.fq = getelementptr i8, ptr %.val156.val.val.i, i64 8
  %.val156.val.val.val.i = load ptr, ptr %i.fq, align 8, !tbaa !39
  %i.fr = sext i32 %.val157.i to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.val156.val.val.val.i, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !40
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink218.i = phi ptr [ %i.ft, %bb.ao ], [ %i.fm, %bb.an ]
  %i.fu = zext nneg i32 %i.ct to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sink218.i, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !100 ; 2 uses
  %i.fx = icmp ne ptr %i.fh, null
  %i.fy = icmp ne ptr %i.fw, null
  %or.cond3.i = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond3.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fz = tail call fastcc ptr @Abc_NodeCovProduct(ptr noundef nonnull %0, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fw, i32 noundef 0, i32 noundef %i.cl)
  %.pre.i = load i32, ptr %i.av, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ga = phi i32 [ %.pre.i, %bb.aq ], [ %i.et, %bb.ap ]
  %.0112.i = phi ptr [ %i.fz, %bb.aq ], [ null, %bb.ap ] ; 8 uses
  %i.gb = and i32 %i.ga, 16
  %.not131.i = icmp eq i32 %i.gb, 0
  br i1 %.not131.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %.val154.i = load ptr, ptr %i.aq, align 8, !tbaa !55
  %i.gf = getelementptr i8, ptr %i.aq, i64 16
  %.val155.i = load i32, ptr %i.gf, align 8, !tbaa !57
  %i.gg = getelementptr i8, ptr %.val154.i, i64 272
  %.val154.val.i = load ptr, ptr %i.gg, align 8, !tbaa !31
  %i.gh = getelementptr i8, ptr %.val154.val.i, i64 24
  %.val154.val.val.i = load ptr, ptr %i.gh, align 8, !tbaa !58
  %i.gi = getelementptr i8, ptr %.val154.val.val.i, i64 8
  %.val154.val.val.val.i = load ptr, ptr %i.gi, align 8, !tbaa !39
  %i.gj = sext i32 %.val155.i to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %.val154.val.val.val.i, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink220.i = phi ptr [ %i.gl, %bb.at ], [ %i.ge, %bb.as ]
  %.sink222.i = xor i32 %i.cr, 1
  %i.gm = zext nneg i32 %.sink222.i to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sink220.i, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !100 ; 2 uses
  %i.gp = load i32, ptr %i.bd, align 4
  %i.gq = and i32 %i.gp, 16
  %.not134.i = icmp eq i32 %i.gq, 0
  br i1 %.not134.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %.val152.i = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.gu = getelementptr i8, ptr %i.au, i64 16
  %.val153.i = load i32, ptr %i.gu, align 8, !tbaa !57
  %i.gv = getelementptr i8, ptr %.val152.i, i64 272
  %.val152.val.i = load ptr, ptr %i.gv, align 8, !tbaa !31
  %i.gw = getelementptr i8, ptr %.val152.val.i, i64 24
  %.val152.val.val.i = load ptr, ptr %i.gw, align 8, !tbaa !58
  %i.gx = getelementptr i8, ptr %.val152.val.val.i, i64 8
  %.val152.val.val.val.i = load ptr, ptr %i.gx, align 8, !tbaa !39
  %i.gy = sext i32 %.val153.i to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %.val152.val.val.val.i, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !40
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink223.i = phi ptr [ %i.ha, %bb.aw ], [ %i.gt, %bb.av ]
  %.sink225.i = xor i32 %i.ct, 1
  %i.hb = zext nneg i32 %.sink225.i to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sink223.i, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !100 ; 2 uses
  %i.he = icmp ne ptr %i.go, null
  %i.hf = icmp ne ptr %i.hd, null
  %or.cond5.i = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond5.i, label %bb.ay, label %Abc_NodeCovSum.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !64
  tail call void @Min_ManClean(ptr noundef %i.hh, i32 noundef %i.cl) #15
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.az

.preheader.i.i:                                   ; preds = %bb.bg
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.bh

bb.az:                                            ; preds = %bb.bg, %bb.ay
  %.07199.i.i = phi ptr [ %i.go, %bb.ay ], [ %i.jx, %bb.bg ] ; 2 uses
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !64 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !71
  %i.ho = tail call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.hn) #15 ; 4 uses
  store ptr null, ptr %i.ho, align 8, !tbaa !67
  %i.hp = load i32, ptr %i.hl, align 8, !tbaa !72
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 5 uses
  %i.hr = load i32, ptr %i.hq, align 8
  %i.hs = and i32 %i.hp, 1023                     ; 2 uses
  %i.ht = and i32 %i.hr, -1024
  %i.hu = or disjoint i32 %i.ht, %i.hs
  store i32 %i.hu, ptr %i.hq, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !73
  %i.hx = shl i32 %i.hw, 10
  %.masked.i.i.i = and i32 %i.hx, 4193280
  %i.hy = or disjoint i32 %.masked.i.i.i, %i.hs   ; 3 uses
  store i32 %i.hy, ptr %i.hq, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 12 ; 2 uses
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !73
  %i.ib = sext i32 %i.ia to i64
  %i.ic = shl nsw i64 %i.ib, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hz, i8 -1, i64 %i.ic, i1 false)
  store i32 %i.hy, ptr %i.hq, align 8
  %i.id = load ptr, ptr %i.hi, align 8, !tbaa !43 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !44
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.az
  %i.ih = getelementptr inbounds nuw i8, ptr %.07199.i.i, i64 12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %.lr.ph.i.i
  %i.ii = phi ptr [ %i.id, %.lr.ph.i.i ], [ %i.ji, %bb.bd ] ; 3 uses
  %i.ij = phi i32 [ %i.hy, %.lr.ph.i.i ], [ %i.jj, %bb.bd ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bd ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !45
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !46 ; 3 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ip = shl nsw i32 %i.in, 1
  %i.iq = ashr i32 %i.in, 4
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !46
  %i.iu = and i32 %i.ip, 30
  %i.iv = lshr i32 %i.it, %i.iu
  %i.iw = and i32 %i.iv, 3                        ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 3
  br i1 %i.ix, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iy = xor i32 %i.iw, 3
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.iz = shl nuw i32 %indvars.iv.tr.i.i, 1
  %i.ja = and i32 %i.iz, 30
  %i.jb = shl nuw i32 %i.iy, %i.ja
  %i.jc = lshr i64 %indvars.iv.i.i, 4
  %i.jd = and i64 %i.jc, 268435455
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jd ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !46
  %i.jg = xor i32 %i.jf, %i.jb
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !46
  %i.jh = add i32 %i.ij, 4194304                  ; 2 uses
  store i32 %i.jh, ptr %i.hq, align 8
  %.pre.i.i = load ptr, ptr %i.hi, align 8, !tbaa !43
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ji = phi ptr [ %i.ii, %bb.bb ], [ %i.ii, %bb.ba ], [ %.pre.i.i, %bb.bc ] ; 2 uses
  %i.jj = phi i32 [ %i.ij, %bb.bb ], [ %i.ij, %bb.ba ], [ %i.jh, %bb.bc ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !44
  %i.jm = sext i32 %i.jl to i64
  %i.jn = icmp slt i64 %indvars.iv.next.i.i, %i.jm
  br i1 %i.jn, label %bb.ba, label %._crit_edge.i.i, !llvm.loop !93

._crit_edge.i.i:                                  ; preds = %bb.bd, %bb.az
  %i.jo = load ptr, ptr %i.hg, align 8, !tbaa !64 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 80
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !74
  %i.jr = load i32, ptr %i.hj, align 4, !tbaa !75
  %i.js = icmp sgt i32 %i.jq, %i.jr
  br i1 %i.js, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %._crit_edge.i.i
  %i.jt = tail call ptr @Min_CoverCollect(ptr noundef nonnull %i.jo, i32 noundef %i.cl) #15 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i, label %Abc_NodeCovSum.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.ju = load ptr, ptr %i.hg, align 8, !tbaa !64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %.0914.i.i.i = phi ptr [ %i.jt, %.lr.ph.i.i.i ], [ %.015.i.i.i, %bb.bf ] ; 2 uses
  %.015.i.i.i = load ptr, ptr %.0914.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !71
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.jw, ptr noundef nonnull %.0914.i.i.i) #15
  %.not12.i.i.i = icmp eq ptr %.015.i.i.i, null
  br i1 %.not12.i.i.i, label %Abc_NodeCovSum.exit.i, label %bb.bf, !llvm.loop !0

bb.bg:                                            ; preds = %._crit_edge.i.i
  tail call void @Min_SopAddCube(ptr noundef nonnull %i.jo, ptr noundef nonnull %i.ho) #15
  %i.jx = load ptr, ptr %.07199.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i168.i = icmp eq ptr %i.jx, null
  br i1 %.not.i168.i, label %.preheader.i.i, label %bb.az, !llvm.loop !94

bb.bh:                                            ; preds = %bb.bo, %.preheader.i.i
  %.070104.i.i = phi ptr [ %i.hd, %.preheader.i.i ], [ %i.mk, %bb.bo ] ; 2 uses
  %i.jy = load ptr, ptr %i.hg, align 8, !tbaa !64 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !71
  %i.kb = tail call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.ka) #15 ; 4 uses
  store ptr null, ptr %i.kb, align 8, !tbaa !67
  %i.kc = load i32, ptr %i.jy, align 8, !tbaa !72
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 5 uses
  %i.ke = load i32, ptr %i.kd, align 8
  %i.kf = and i32 %i.kc, 1023                     ; 2 uses
  %i.kg = and i32 %i.ke, -1024
  %i.kh = or disjoint i32 %i.kg, %i.kf
  store i32 %i.kh, ptr %i.kd, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 4 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !73
  %i.kk = shl i32 %i.kj, 10
  %.masked.i78.i.i = and i32 %i.kk, 4193280
  %i.kl = or disjoint i32 %.masked.i78.i.i, %i.kf ; 3 uses
  store i32 %i.kl, ptr %i.kd, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kb, i64 12 ; 2 uses
  %i.kn = load i32, ptr %i.ki, align 4, !tbaa !73
  %i.ko = sext i32 %i.kn to i64
  %i.kp = shl nsw i64 %i.ko, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.km, i8 -1, i64 %i.kp, i1 false)
  store i32 %i.kl, ptr %i.kd, align 8
  %i.kq = load ptr, ptr %i.hk, align 8, !tbaa !47 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !44
  %i.kt = icmp sgt i32 %i.ks, 0
  br i1 %i.kt, label %.lr.ph102.i.i, label %._crit_edge103.i.i

.lr.ph102.i.i:                                    ; preds = %bb.bh
  %i.ku = getelementptr inbounds nuw i8, ptr %.070104.i.i, i64 12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bl, %.lr.ph102.i.i
  %i.kv = phi ptr [ %i.kq, %.lr.ph102.i.i ], [ %i.lv, %bb.bl ] ; 3 uses
  %i.kw = phi i32 [ %i.kl, %.lr.ph102.i.i ], [ %i.lw, %bb.bl ] ; 3 uses
  %indvars.iv111.i.i = phi i64 [ 0, %.lr.ph102.i.i ], [ %indvars.iv.next112.i.i, %bb.bl ] ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !45
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv111.i.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !46 ; 3 uses
  %i.lb = icmp eq i32 %i.la, -1
  br i1 %i.lb, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lc = shl nsw i32 %i.la, 1
  %i.ld = ashr i32 %i.la, 4
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !46
  %i.lh = and i32 %i.lc, 30
  %i.li = lshr i32 %i.lg, %i.lh
  %i.lj = and i32 %i.li, 3                        ; 2 uses
  %i.lk = icmp eq i32 %i.lj, 3
  br i1 %i.lk, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ll = xor i32 %i.lj, 3
  %indvars.iv111.tr.i.i = trunc nuw i64 %indvars.iv111.i.i to i32
  %i.lm = shl nuw i32 %indvars.iv111.tr.i.i, 1
  %i.ln = and i32 %i.lm, 30
  %i.lo = shl nuw i32 %i.ll, %i.ln
  %i.lp = lshr i64 %indvars.iv111.i.i, 4
  %i.lq = and i64 %i.lp, 268435455
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.lq ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !46
  %i.lt = xor i32 %i.ls, %i.lo
  store i32 %i.lt, ptr %i.lr, align 4, !tbaa !46
  %i.lu = add i32 %i.kw, 4194304                  ; 2 uses
  store i32 %i.lu, ptr %i.kd, align 8
  %.pre114.i.i = load ptr, ptr %i.hk, align 8, !tbaa !47
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.lv = phi ptr [ %i.kv, %bb.bj ], [ %i.kv, %bb.bi ], [ %.pre114.i.i, %bb.bk ] ; 2 uses
  %i.lw = phi i32 [ %i.kw, %bb.bj ], [ %i.kw, %bb.bi ], [ %i.lu, %bb.bk ]
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !44
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %indvars.iv.next112.i.i, %i.lz
  br i1 %i.ma, label %bb.bi, label %._crit_edge103.i.i, !llvm.loop !95

._crit_edge103.i.i:                               ; preds = %bb.bl, %bb.bh
  %i.mb = load ptr, ptr %i.hg, align 8, !tbaa !64 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 80
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !74
  %i.me = load i32, ptr %i.hj, align 4, !tbaa !75
  %i.mf = icmp sgt i32 %i.md, %i.me
  br i1 %i.mf, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %._crit_edge103.i.i
  %i.mg = tail call ptr @Min_CoverCollect(ptr noundef nonnull %i.mb, i32 noundef %i.cl) #15 ; 2 uses
  %.not.i79.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i79.i.i, label %Abc_NodeCovSum.exit.i, label %.lr.ph.i80.i.i

.lr.ph.i80.i.i:                                   ; preds = %bb.bm
  %i.mh = load ptr, ptr %i.hg, align 8, !tbaa !64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i80.i.i
  %.0914.i81.i.i = phi ptr [ %i.mg, %.lr.ph.i80.i.i ], [ %.015.i82.i.i, %bb.bn ] ; 2 uses
  %.015.i82.i.i = load ptr, ptr %.0914.i81.i.i, align 8, !tbaa !67 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !71
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.mj, ptr noundef nonnull %.0914.i81.i.i) #15
  %.not12.i83.i.i = icmp eq ptr %.015.i82.i.i, null
  br i1 %.not12.i83.i.i, label %Abc_NodeCovSum.exit.i, label %bb.bn, !llvm.loop !0

bb.bo:                                            ; preds = %._crit_edge103.i.i
  tail call void @Min_SopAddCube(ptr noundef nonnull %i.mb, ptr noundef nonnull %i.kb) #15
  %i.mk = load ptr, ptr %.070104.i.i, align 8, !tbaa !67 ; 2 uses
  %.not77.i.i = icmp eq ptr %i.mk, null
  br i1 %.not77.i.i, label %bb.bp, label %bb.bh, !llvm.loop !96

bb.bp:                                            ; preds = %bb.bo
  %i.ml = load ptr, ptr %i.hg, align 8, !tbaa !64
  tail call void @Min_SopMinimize(ptr noundef %i.ml) #15
  %i.mm = load ptr, ptr %i.hg, align 8, !tbaa !64
  %i.mn = tail call ptr @Min_CoverCollect(ptr noundef %i.mm, i32 noundef %i.cl) #15 ; 4 uses
  %.not5.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not5.i.i.i, label %Abc_NodeCovSum.exit.i, label %.lr.ph.i85.i.i

.lr.ph.i85.i.i:                                   ; preds = %bb.bp, %.lr.ph.i85.i.i
  %.07.i.i.i = phi i32 [ %i.mo, %.lr.ph.i85.i.i ], [ 0, %bb.bp ] ; 2 uses
  %.046.i.i.i = phi ptr [ %i.mp, %.lr.ph.i85.i.i ], [ %i.mn, %bb.bp ]
  %i.mo = add nuw nsw i32 %.07.i.i.i, 1
  %i.mp = load ptr, ptr %.046.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i86.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i86.i.i, label %Min_CoverCountCubes.exit.thread.i.i, label %.lr.ph.i85.i.i, !llvm.loop !1

Min_CoverCountCubes.exit.thread.i.i:              ; preds = %.lr.ph.i85.i.i
  %i.mq = load i32, ptr %0, align 8, !tbaa !63
  %.not94.i.i = icmp slt i32 %.07.i.i.i, %i.mq
  br i1 %.not94.i.i, label %Abc_NodeCovPropagate.exit, label %.lr.ph.i88.i.i

.lr.ph.i88.i.i:                                   ; preds = %Min_CoverCountCubes.exit.thread.i.i
  %i.mr = load ptr, ptr %i.hg, align 8, !tbaa !64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i88.i.i
  %.0914.i89.i.i = phi ptr [ %i.mn, %.lr.ph.i88.i.i ], [ %.015.i90.i.i, %bb.bq ] ; 2 uses
  %.015.i90.i.i = load ptr, ptr %.0914.i89.i.i, align 8, !tbaa !67 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !71
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.mt, ptr noundef nonnull %.0914.i89.i.i) #15
  %.not12.i91.i.i = icmp eq ptr %.015.i90.i.i, null
  br i1 %.not12.i91.i.i, label %Abc_NodeCovSum.exit.i, label %bb.bq, !llvm.loop !0

Abc_NodeCovSum.exit.i:                            ; preds = %bb.bq, %bb.bn, %bb.bf, %bb.bp, %bb.bm, %bb.be, %bb.ax, %bb.ai
  %.1.i = phi ptr [ null, %bb.ai ], [ %.0112.i, %bb.ax ], [ %.0112.i, %bb.be ], [ %.0112.i, %bb.bf ], [ %.0112.i, %bb.bm ], [ %.0112.i, %bb.bn ], [ %.0112.i, %bb.bp ], [ %.0112.i, %bb.bq ] ; 2 uses
  %i.mu = icmp ne ptr %.0110.i, null
  %i.mv = icmp ne ptr %.1.i, null
  %or.cond7.i = select i1 %i.mu, i1 true, i1 %i.mv
  br i1 %or.cond7.i, label %Abc_NodeCovPropagate.exit, label %bb.br

bb.br:                                            ; preds = %Abc_NodeCovSum.exit.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !45 ; 2 uses
  %.not.i169.i = icmp eq ptr %i.mx, null
  br i1 %.not.i169.i, label %Abc_NodeCovPropagate.exit.thread.sink.split, label %Abc_NodeCovPropagate.exit.thread.sink.split.sink.split

Abc_NodeCovPropagate.exit:                        ; preds = %Min_CoverCountCubes.exit.thread.i.i, %Abc_NodeCovSum.exit.i
  %.0111176.i = phi ptr [ null, %Abc_NodeCovSum.exit.i ], [ %i.mn, %Min_CoverCountCubes.exit.thread.i.i ]
  %.1175.i = phi ptr [ %.1.i, %Abc_NodeCovSum.exit.i ], [ %.0112.i, %Min_CoverCountCubes.exit.thread.i.i ]
  %.val160.i = load ptr, ptr %1, align 8, !tbaa !55
  %i.my = getelementptr i8, ptr %1, i64 16
  %.val161.i = load i32, ptr %i.my, align 8, !tbaa !57
  %i.mz = getelementptr i8, ptr %.val160.i, i64 272
  %.val160.val.i = load ptr, ptr %i.mz, align 8, !tbaa !31
  %i.na = getelementptr i8, ptr %.val160.val.i, i64 24
  %.val160.val.val.i = load ptr, ptr %i.na, align 8, !tbaa !58
  %i.nb = getelementptr i8, ptr %.val160.val.val.i, i64 8
  %.val160.val.val.val.i = load ptr, ptr %i.nb, align 8, !tbaa !39
  %i.nc = sext i32 %.val161.i to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %.val160.val.val.val.i, i64 %i.nc ; 4 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !40
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store ptr %i.cj, ptr %i.nf, align 8, !tbaa !60
  %i.ng = load ptr, ptr %i.nd, align 8, !tbaa !40
  store ptr %.1175.i, ptr %i.ng, align 8, !tbaa !100
  %i.nh = load ptr, ptr %i.nd, align 8, !tbaa !40
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %.0111176.i, ptr %i.ni, align 8, !tbaa !100
  %i.nj = load ptr, ptr %i.nd, align 8, !tbaa !40
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store ptr %.0110.i, ptr %i.nk, align 8, !tbaa !100
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !61
  %i.nn = add nsw i32 %i.nm, 1                    ; 2 uses
  store i32 %i.nn, ptr %i.nl, align 8, !tbaa !61
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !62
  %i.nq = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.np, i32 range(i32 -2147483647, -2147483648) %i.nn)
  store i32 %i.nq, ptr %i.no, align 4, !tbaa !62
  br label %bb.cp

Abc_NodeCovPropagate.exit.thread.sink.split.sink.split: ; preds = %bb.br, %bb.q
  %.sink = phi ptr [ %i.cp, %bb.q ], [ %i.mx, %bb.br ]
  tail call void @free(ptr noundef nonnull %.sink) #15
  br label %Abc_NodeCovPropagate.exit.thread.sink.split

Abc_NodeCovPropagate.exit.thread.sink.split:      ; preds = %Abc_NodeCovPropagate.exit.thread.sink.split.sink.split, %bb.br, %bb.q
  tail call void @free(ptr noundef nonnull %i.cj) #15
  br label %Abc_NodeCovPropagate.exit.thread

Abc_NodeCovPropagate.exit.thread:                 ; preds = %Abc_NodeCovPropagate.exit.thread.sink.split, %bb.e, %bb.c
  %i.nr = load i32, ptr %i.o, align 4
  %i.ns = and i32 %i.nr, 16
  %.not31 = icmp eq i32 %i.ns, 0
  br i1 %.not31, label %bb.bs, label %bb.cd

bb.bs:                                            ; preds = %Abc_NodeCovPropagate.exit.thread
  %.val38 = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.nt = getelementptr i8, ptr %i.j, i64 16
  %.val39 = load i32, ptr %i.nt, align 8, !tbaa !57
  %i.nu = getelementptr i8, ptr %.val38, i64 272
  %.val38.val = load ptr, ptr %i.nu, align 8, !tbaa !31
  %i.nv = getelementptr i8, ptr %.val38.val, i64 24
  %.val38.val.val = load ptr, ptr %i.nv, align 8, !tbaa !58
  %i.nw = getelementptr i8, ptr %.val38.val.val, i64 8
  %.val38.val.val.val = load ptr, ptr %i.nw, align 8, !tbaa !39
  %i.nx = sext i32 %.val39 to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %.val38.val.val.val, i64 %i.nx
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !40
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !60
  %.not32 = icmp eq ptr %i.ob, null
  br i1 %.not32, label %bb.cd, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !38 ; 7 uses
  %i.oe = load i32, ptr %2, align 8, !tbaa !50
  %i.of = icmp eq i32 %i.od, %i.oe
  br i1 %i.of, label %bb.bu, label %Vec_PtrPush.exit

bb.bu:                                            ; preds = %bb.bt
  %i.og = icmp slt i32 %i.od, 16
  br i1 %i.og, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.oi, null
  br i1 %.not9.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oj = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.oi, i64 noundef 128) #16
  br label %Vec_PtrGrow.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.ok = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.bx, %bb.bw
  %i.ol = phi ptr [ %i.oj, %bb.bw ], [ %i.ok, %bb.bx ]
  store ptr %i.ol, ptr %i.oh, align 8, !tbaa !39
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.by:                                            ; preds = %bb.bu
  %i.om = icmp samesign ult i32 %i.od, 1073741823
  %i.on = shl nuw nsw i32 %i.od, 1
  %spec.select.i = select i1 %i.om, i32 %i.on, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.od, %spec.select.i
  br i1 %.not.i10.i, label %bb.bz, label %Vec_PtrPush.exit

bb.bz:                                            ; preds = %bb.by
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !39 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.op, null
  %i.oq = zext nneg i32 %spec.select.i to i64
  %i.or = shl nuw nsw i64 %i.oq, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
end_hunk_0
begin_hunk_1_@Abc_NtkCovCovers_rec:bb.a

bb.cj:                                            ; preds = %bb.ch
  %i.pv = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i52

Vec_PtrGrow.exit.i52:                             ; preds = %bb.cj, %bb.ci
  %i.pw = phi ptr [ %i.pu, %bb.ci ], [ %i.pv, %bb.cj ]
  store ptr %i.pw, ptr %i.ps, align 8, !tbaa !39
  br label %Vec_PtrGrow.exit12.sink.split.i49

bb.ck:                                            ; preds = %bb.cg
  %i.px = icmp samesign ult i32 %i.po, 1073741823
  %i.py = shl nuw nsw i32 %i.po, 1
  %spec.select.i46 = select i1 %i.px, i32 %i.py, i32 2147483647 ; 3 uses
  %.not.i10.i47 = icmp samesign ult i32 %i.po, %spec.select.i46
  br i1 %.not.i10.i47, label %bb.cl, label %Vec_PtrPush.exit53

bb.cl:                                            ; preds = %bb.ck
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !39 ; 2 uses
  %.not9.i11.i48 = icmp eq ptr %i.qa, null
  %i.qb = zext nneg i32 %spec.select.i46 to i64
  %i.qc = shl nuw nsw i64 %i.qb, 3                ; 2 uses
  br i1 %.not9.i11.i48, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qd = tail call ptr @realloc(ptr noundef nonnull %i.qa, i64 noundef %i.qc) #16
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.qe = tail call noalias ptr @malloc(i64 noundef %i.qc) #17
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.qf = phi ptr [ %i.qd, %bb.cm ], [ %i.qe, %bb.cn ]
  store ptr %i.qf, ptr %i.pz, align 8, !tbaa !39
  br label %Vec_PtrGrow.exit12.sink.split.i49

Vec_PtrGrow.exit12.sink.split.i49:                ; preds = %bb.co, %Vec_PtrGrow.exit.i52
  %spec.select.sink.i50 = phi i32 [ %spec.select.i46, %bb.co ], [ 16, %Vec_PtrGrow.exit.i52 ]
  store i32 %spec.select.sink.i50, ptr %2, align 8, !tbaa !50
  %.pre66 = load i32, ptr %i.pn, align 4, !tbaa !38
  br label %Vec_PtrPush.exit53

Vec_PtrPush.exit53:                               ; preds = %bb.cf, %bb.ck, %Vec_PtrGrow.exit12.sink.split.i49
  %i.qg = phi i32 [ %i.po, %bb.cf ], [ %i.po, %bb.ck ], [ %.pre66, %Vec_PtrGrow.exit12.sink.split.i49 ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !39
  %i.qj = add nsw i32 %i.qg, 1
  store i32 %i.qj, ptr %i.pn, align 4, !tbaa !38
  %i.qk = sext i32 %i.qg to i64
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.qi, i64 %i.qk
  store ptr %i.n, ptr %i.ql, align 8, !tbaa !40
  br label %bb.cp

bb.cp:                                            ; preds = %Abc_NodeCovPropagate.exit, %bb.cd, %bb.ce, %Vec_PtrPush.exit53, %bb.a
  ret void
}

declare void @Extra_ProgressBarStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @Extra_ProgressBarUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @Abc_NodeCovProduct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  tail call void @Min_ManClean(ptr noundef %i.b, i32 noundef %4) #15
  %.not97 = icmp eq ptr %1, null
  br i1 %.not97, label %._crit_edge99, label %.preheader87.lr.ph

.preheader87.lr.ph:                               ; preds = %bb.a
  %.not7393 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = icmp sgt i32 %4, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not74 = icmp eq i32 %3, 0
  br i1 %.not7393, label %._crit_edge99, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %.preheader87.lr.ph
  %wide.trip.count106 = zext nneg i32 %4 to i64
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge96
  %.06798 = phi ptr [ %i.dg, %._crit_edge96 ], [ %1, %.preheader87.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06798, i64 12 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader87, %.thread
  %.06694 = phi ptr [ %2, %.preheader87 ], [ %i.df, %.thread ] ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %.06694, i64 12
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !103

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !46   ; 2 uses
  %i.v = shl nsw i32 %i.u, 1
  %i.w = ashr i32 %i.u, 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46
  %i.aa = and i32 %i.v, 30
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46 ; 2 uses
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = ashr i32 %i.ad, 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46
  %i.aj = and i32 %i.ae, 30
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = and i32 %i.ab, 3
  %i.am = and i32 %i.al, %i.ak
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !64  ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !74
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !75
  %i.as = icmp sgt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.at = tail call ptr @Min_CoverCollect(ptr noundef nonnull %i.ao, i32 noundef %4) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %Min_CoverRecycle.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0914.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.015.i, %bb.e ] ; 2 uses
  %.015.i = load ptr, ptr %.0914.i, align 8, !tbaa !67 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !71
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.aw, ptr noundef nonnull %.0914.i) #15
  %.not12.i = icmp eq ptr %.015.i, null
  br i1 %.not12.i, label %Min_CoverRecycle.exit, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.az = tail call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.ay) #15 ; 5 uses
  store ptr null, ptr %i.az, align 8, !tbaa !67
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = and i32 %i.ba, 1023                     ; 2 uses
  %i.be = and i32 %i.bc, -1024
  %i.bf = or disjoint i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.bb, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !73
  %i.bi = shl i32 %i.bh, 10
  %.masked.i = and i32 %i.bi, 4193280
  %i.bj = or disjoint i32 %.masked.i, %i.bd       ; 3 uses
  store i32 %i.bj, ptr %i.bb, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !73
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 -1, i64 %i.bn, i1 false)
  store i32 %i.bj, ptr %i.bb, align 8
  br i1 %i.f, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.06694, i64 12
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph91, %bb.m
  %i.bp = phi i32 [ %i.bj, %.lr.ph91 ], [ %i.dd, %bb.m ] ; 2 uses
  %indvars.iv103 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next104, %bb.m ] ; 5 uses
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv103
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !46 ; 3 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = shl nsw i32 %i.bu, 1
  %i.bx = ashr i32 %i.bu, 4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.cb = and i32 %i.bw, 30
  %i.cc = lshr i32 %i.ca, %i.cb
  %i.cd = and i32 %i.cc, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.064 = phi i32 [ %i.cd, %bb.h ], [ 3, %bb.g ]
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv103
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !46 ; 3 uses
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = shl nsw i32 %i.ci, 1
  %i.cl = ashr i32 %i.ci, 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !46
  %i.cp = and i32 %i.ck, 30
  %i.cq = lshr i32 %i.co, %i.cp
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i32 [ %i.cq, %bb.j ], [ 3, %bb.i ]
  %i.cr = and i32 %.0, %.064                      ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 3
  br i1 %i.cs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = xor i32 %i.cr, 3
  %indvars.iv103.tr = trunc nuw i64 %indvars.iv103 to i32
  %i.cu = shl nuw i32 %indvars.iv103.tr, 1
  %i.cv = and i32 %i.cu, 30
  %i.cw = shl nuw i32 %i.ct, %i.cv
  %i.cx = lshr i64 %indvars.iv103, 4
  %i.cy = and i64 %i.cx, 268435455
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !46
  %i.db = xor i32 %i.da, %i.cw
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !46
  %i.dc = add i32 %i.bp, 4194304                  ; 2 uses
  store i32 %i.dc, ptr %i.bb, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dd = phi i32 [ %i.bp, %bb.k ], [ %i.dc, %bb.l ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge92, label %bb.g, !llvm.loop !104

._crit_edge92:                                    ; preds = %bb.m, %bb.f
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  br i1 %.not74, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge92
  tail call void @Min_EsopAddCube(ptr noundef %i.de, ptr noundef nonnull %i.az) #15
  br label %.thread

bb.o:                                             ; preds = %._crit_edge92
  tail call void @Min_SopAddCube(ptr noundef %i.de, ptr noundef nonnull %i.az) #15
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.n, %bb.o
  %i.df = load ptr, ptr %.06694, align 8, !tbaa !67 ; 2 uses
  %.not73 = icmp eq ptr %i.df, null
  br i1 %.not73, label %._crit_edge96, label %.preheader, !llvm.loop !105

._crit_edge96:                                    ; preds = %.thread
  %i.dg = load ptr, ptr %.06798, align 8, !tbaa !67 ; 2 uses
  %.not = icmp eq ptr %i.dg, null
  br i1 %.not, label %._crit_edge99, label %.preheader87, !llvm.loop !106

._crit_edge99:                                    ; preds = %._crit_edge96, %.preheader87.lr.ph, %bb.a
  %.not72 = icmp eq i32 %3, 0
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  br i1 %.not72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge99
  tail call void @Min_EsopMinimize(ptr noundef %i.dh) #15
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge99
  tail call void @Min_SopMinimize(ptr noundef %i.dh) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.dj = tail call ptr @Min_CoverCollect(ptr noundef %i.di, i32 noundef %4) #15 ; 4 uses
  %.not5.i = icmp eq ptr %i.dj, null
  br i1 %.not5.i, label %Min_CoverRecycle.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.r, %.lr.ph.i75
  %.07.i = phi i32 [ %i.dk, %.lr.ph.i75 ], [ 0, %bb.r ] ; 2 uses
  %.046.i = phi ptr [ %i.dl, %.lr.ph.i75 ], [ %i.dj, %bb.r ]
  %i.dk = add nuw nsw i32 %.07.i, 1
  %i.dl = load ptr, ptr %.046.i, align 8, !tbaa !67 ; 2 uses
  %.not.i76 = icmp eq ptr %i.dl, null
  br i1 %.not.i76, label %Min_CoverCountCubes.exit.thread, label %.lr.ph.i75, !llvm.loop !1

Min_CoverCountCubes.exit.thread:                  ; preds = %.lr.ph.i75
  %i.dm = load i32, ptr %0, align 8, !tbaa !63
  %.not85 = icmp slt i32 %.07.i, %i.dm
  br i1 %.not85, label %Min_CoverRecycle.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %Min_CoverCountCubes.exit.thread
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i78
  %.0914.i79 = phi ptr [ %i.dj, %.lr.ph.i78 ], [ %.015.i80, %bb.s ] ; 2 uses
  %.015.i80 = load ptr, ptr %.0914.i79, align 8, !tbaa !67 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !71
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.dp, ptr noundef nonnull %.0914.i79) #15
  %.not12.i81 = icmp eq ptr %.015.i80, null
  br i1 %.not12.i81, label %Min_CoverRecycle.exit, label %bb.s, !llvm.loop !0

Min_CoverRecycle.exit:                            ; preds = %bb.e, %bb.s, %bb.r, %Min_CoverCountCubes.exit.thread, %bb.d
  %.068 = phi ptr [ null, %bb.s ], [ %i.dj, %Min_CoverCountCubes.exit.thread ], [ null, %bb.d ], [ null, %bb.r ], [ null, %bb.e ]
  ret ptr %.068
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @Min_ManClean(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Min_CoverCollect(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Min_EsopAddCube(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Min_SopAddCube(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Min_EsopMinimize(ptr noundef) local_unnamed_addr #2

declare void @Min_SopMinimize(ptr noundef) local_unnamed_addr #2

declare void @Extra_MmFixedEntryRecycle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Extra_MmFixedEntryFetch(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS10Vec_Int_t_", !10, i64 0}
!12 = !{!"p1 _ZTS10Vec_Ptr_t_", !10, i64 0}
!13 = !{!"p1 _ZTS10Min_Man_t_", !10, i64 0}
!14 = !{!"Cov_Man_t_", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16, !12, i64 24, !10, i64 32, !13, i64 40, !7, i64 48, !7, i64 52, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116}
!15 = !{!14, !7, i64 48}
!16 = !{!14, !7, i64 52}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"p1 _ZTS9Nm_Man_t_", !10, i64 0}
!19 = !{!"p1 _ZTS10Abc_Ntk_t_", !10, i64 0}
!20 = !{!"p1 _ZTS10Abc_Des_t_", !10, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"p1 int", !10, i64 0}
!23 = !{!"Vec_Int_t_", !7, i64 0, !7, i64 4, !22, i64 8}
!24 = !{!"p1 _ZTS12Mem_Fixed_t_", !10, i64 0}
!25 = !{!"p1 _ZTS11Mem_Step_t_", !10, i64 0}
!26 = !{!"p1 _ZTS14Abc_ManTime_t_", !10, i64 0}
!27 = !{!"float", !6, i64 0}
!28 = !{!"p1 _ZTS10Abc_Cex_t_", !10, i64 0}
!29 = !{!"p1 float", !10, i64 0}
!30 = !{!"Abc_Ntk_t_", !7, i64 0, !7, i64 4, !17, i64 8, !17, i64 16, !18, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !19, i64 160, !7, i64 168, !20, i64 176, !19, i64 184, !7, i64 192, !7, i64 196, !7, i64 200, !21, i64 208, !7, i64 216, !23, i64 224, !24, i64 240, !25, i64 248, !10, i64 256, !26, i64 264, !10, i64 272, !27, i64 280, !7, i64 284, !11, i64 288, !12, i64 296, !22, i64 304, !28, i64 312, !12, i64 320, !19, i64 328, !10, i64 336, !10, i64 344, !19, i64 352, !10, i64 360, !10, i64 368, !11, i64 376, !11, i64 384, !17, i64 392, !29, i64 400, !12, i64 408, !11, i64 416, !11, i64 424, !12, i64 432, !11, i64 440, !11, i64 448, !11, i64 456}
!31 = !{!30, !10, i64 272}
!32 = !{!"long", !6, i64 0}
!33 = !{!"timespec", !32, i64 0, !32, i64 8}
!34 = !{!33, !32, i64 0}
!35 = !{!33, !32, i64 8}
!36 = !{!"any p2 pointer", !10, i64 0}
!37 = !{!"Vec_Ptr_t_", !7, i64 0, !7, i64 4, !36, i64 8}
!38 = !{!37, !7, i64 4}
!39 = !{!37, !36, i64 8}
!40 = !{!10, !10, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!30, !12, i64 32}
!43 = !{!14, !11, i64 56}
!44 = !{!23, !7, i64 4}
!45 = !{!23, !22, i64 8}
!46 = !{!7, !7, i64 0}
!47 = !{!14, !11, i64 64}
!48 = !{!14, !11, i64 72}
!49 = !{!14, !11, i64 80}
!50 = !{!37, !7, i64 0}
end_hunk_1
