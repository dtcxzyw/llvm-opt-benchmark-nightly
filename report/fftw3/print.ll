Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/print?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vprint:bb.a
  %i.cl = icmp ult i32 %i.ck, 41
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.f, align 8
  %i.cn = zext nneg i32 %i.ck to i64
  %i.co = getelementptr i8, ptr %i.cm, i64 %i.cn
  %i.cp = add nuw nsw i32 %i.ck, 8
  store i32 %i.cp, ptr %2, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.e, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cs = phi ptr [ %i.co, %bb.aa ], [ %i.cq, %bb.ab ]
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, 1
  br i1 %i.cu, label %.preheader, label %newline.exit

.preheader:                                       ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.cv(ptr noundef %0, i8 noundef signext 45) #4, !inline_history !21
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.cw(ptr noundef %0, i8 noundef signext 120) #4, !inline_history !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br label %bb.bl

bb.ad:                                            ; preds = %bb.c
  %i.cx = load i32, ptr %2, align 8               ; 3 uses
  %i.cy = icmp ult i32 %i.cx, 41
  br i1 %i.cy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr %i.f, align 8
  %i.da = zext nneg i32 %i.cx to i64
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = add nuw nsw i32 %i.cx, 8
  store i32 %i.dc, ptr %2, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dd = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.e, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.df = phi ptr [ %i.db, %bb.ae ], [ %i.dd, %bb.af ]
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !36 ; 2 uses
  %.not94 = icmp eq i64 %i.dg, 0                  ; 3 uses
  br i1 %.not94, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.dh(ptr noundef %0, i8 noundef signext 47) #4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.di = getelementptr inbounds nuw i8, ptr %.068, i64 3 ; 2 uses
  %i.dj = load i8, ptr %i.o, align 1, !tbaa !30   ; 2 uses
  %.not95149 = icmp eq i8 %i.dj, 61
  br i1 %.not95149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai, %bb.ak
  %i.dk = phi i8 [ %i.do, %bb.ak ], [ %i.dj, %bb.ai ]
  %i.dl = phi ptr [ %i.dn, %bb.ak ], [ %i.di, %bb.ai ] ; 2 uses
  br i1 %.not94, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.dm(ptr noundef %0, i8 noundef signext %i.dk) #4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  %i.do = load i8, ptr %i.dl, align 1, !tbaa !30  ; 2 uses
  %.not95 = icmp eq i8 %i.do, 61
  br i1 %.not95, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.ak, %bb.ai
  %.lcssa146 = phi ptr [ %i.di, %bb.ai ], [ %i.dn, %bb.ak ] ; 2 uses
  br i1 %.not94, label %newline.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.dp = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.dp(ptr noundef %0, i8 noundef signext 61) #4
  br label %myputs.exit102

bb.am:                                            ; preds = %bb.c
  %i.dq = load i32, ptr %2, align 8               ; 3 uses
  %i.dr = icmp ult i32 %i.dq, 41
  br i1 %i.dr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ds = load ptr, ptr %i.f, align 8
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr i8, ptr %i.ds, i64 %i.dt
  %i.dv = add nuw nsw i32 %i.dq, 8
  store i32 %i.dv, ptr %2, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.dw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store ptr %i.dx, ptr %i.e, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dy = phi ptr [ %i.du, %bb.an ], [ %i.dw, %bb.ao ]
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !31
  %i.ea = zext i32 %i.dz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %.015.i103 = phi i64 [ %i.ea, %bb.ap ], [ %i.ef, %bb.aq ] ; 3 uses
  %.0.i104 = phi ptr [ %i.c, %bb.ap ], [ %i.ee, %bb.aq ] ; 2 uses
  %i.eb = urem i64 %.015.i103, 10
  %i.ec = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !30
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i104, i64 1 ; 3 uses
  store i8 %i.ed, ptr %.0.i104, align 1, !tbaa !30
  %i.ef = udiv i64 %.015.i103, 10
  %.not.i105 = icmp samesign ult i64 %.015.i103, 10
  br i1 %.not.i105, label %.preheader17.i106, label %bb.aq, !llvm.loop !17

.preheader17.i106:                                ; preds = %bb.aq
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.eg, %i.k                     ; 2 uses
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i110, label %.preheader.i107.preheader

.lr.ph.i110:                                      ; preds = %.preheader17.i106, %.lr.ph.i110
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %.lr.ph.i110 ], [ 0, %.preheader17.i106 ]
  %i.ej = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.ej(ptr noundef %0, i8 noundef signext 48) #4, !inline_history !18
  %indvars.iv.next.i112 = add nsw i64 %indvars.iv.i111, -1 ; 2 uses
  %i.ek = icmp slt i64 %i.eh, %indvars.iv.next.i112
  br i1 %i.ek, label %.lr.ph.i110, label %.preheader.i107.preheader, !llvm.loop !19

.preheader.i107.preheader:                        ; preds = %.lr.ph.i110, %.preheader17.i106
  br label %.preheader.i107

.preheader.i107:                                  ; preds = %.preheader.i107.preheader, %.preheader.i107
  %.1.i108 = phi ptr [ %i.em, %.preheader.i107 ], [ %i.ee, %.preheader.i107.preheader ]
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.em = getelementptr inbounds i8, ptr %.1.i108, i64 -1 ; 3 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !30
  call void %i.el(ptr noundef %0, i8 noundef signext %i.en) #4, !inline_history !18
  %.not16.i109 = icmp eq ptr %i.em, %i.c
  br i1 %.not16.i109, label %putulong.exit113, label %.preheader.i107, !llvm.loop !20

putulong.exit113:                                 ; preds = %.preheader.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %newline.exit

bb.ar:                                            ; preds = %bb.c
  %i.eo = load i32, ptr %2, align 8               ; 3 uses
  %i.ep = icmp ult i32 %i.eo, 41
  br i1 %i.ep, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eq = load ptr, ptr %i.f, align 8
  %i.er = zext nneg i32 %i.eo to i64
  %i.es = getelementptr i8, ptr %i.eq, i64 %i.er
  %i.et = add nuw nsw i32 %i.eo, 8
  store i32 %i.et, ptr %2, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 8
  store ptr %i.ev, ptr %i.e, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ew = phi ptr [ %i.es, %bb.as ], [ %i.eu, %bb.at ]
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !31
  %i.ey = zext i32 %i.ex to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.015.i114 = phi i64 [ %i.ey, %bb.au ], [ %i.fd, %bb.av ] ; 3 uses
  %.0.i115 = phi ptr [ %i.b, %bb.au ], [ %i.fc, %bb.av ] ; 2 uses
  %i.ez = and i64 %.015.i114, 15
  %i.fa = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i115, i64 1 ; 3 uses
  store i8 %i.fb, ptr %.0.i115, align 1, !tbaa !30
  %i.fd = lshr i64 %.015.i114, 4
  %.not.i116 = icmp samesign ult i64 %.015.i114, 16
  br i1 %.not.i116, label %.preheader17.i117, label %bb.av, !llvm.loop !17

.preheader17.i117:                                ; preds = %bb.av
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fe, %i.j
  %i.fg = icmp slt i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i121, label %.preheader.i118.preheader

.lr.ph.i121:                                      ; preds = %.preheader17.i117
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.fh(ptr noundef %0, i8 noundef signext 48) #4, !inline_history !18
  br label %.preheader.i118.preheader

.preheader.i118.preheader:                        ; preds = %.lr.ph.i121, %.preheader17.i117
  br label %.preheader.i118

.preheader.i118:                                  ; preds = %.preheader.i118.preheader, %.preheader.i118
  %.1.i119 = phi ptr [ %i.fj, %.preheader.i118 ], [ %i.fc, %.preheader.i118.preheader ]
  %i.fi = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.fj = getelementptr inbounds i8, ptr %.1.i119, i64 -1 ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !30
  call void %i.fi(ptr noundef %0, i8 noundef signext %i.fk) #4, !inline_history !18
  %.not16.i120 = icmp eq ptr %i.fj, %i.b
  br i1 %.not16.i120, label %putulong.exit124, label %.preheader.i118, !llvm.loop !20

putulong.exit124:                                 ; preds = %.preheader.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %newline.exit

bb.aw:                                            ; preds = %bb.c
  %i.fl = load i32, ptr %i.g, align 4, !tbaa !14
  %i.fm = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fn = add nsw i32 %i.fm, %i.fl
  store i32 %i.fn, ptr %i.h, align 8, !tbaa !13
  %i.fo = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.fo(ptr noundef %0, i8 noundef signext 10) #4, !inline_history !24
  %i.fp = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.lr.ph.i125, label %newline.exit

.lr.ph.i125:                                      ; preds = %bb.aw, %.lr.ph.i125
  %.06.i = phi i32 [ %i.fs, %.lr.ph.i125 ], [ 0, %bb.aw ]
  %i.fr = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.fr(ptr noundef nonnull %0, i8 noundef signext 32) #4, !inline_history !24
  %i.fs = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %i.ft = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph.i125, label %newline.exit, !llvm.loop !25

bb.ax:                                            ; preds = %bb.c
  %i.fv = load i32, ptr %i.g, align 4, !tbaa !14
  %i.fw = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fx = sub nsw i32 %i.fw, %i.fv
  store i32 %i.fx, ptr %i.h, align 8, !tbaa !13
  br label %newline.exit

bb.ay:                                            ; preds = %bb.c
  %i.fy = load i32, ptr %2, align 8               ; 3 uses
  %i.fz = icmp ult i32 %i.fy, 41
  br i1 %i.fz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ga = load ptr, ptr %i.f, align 8
  %i.gb = zext nneg i32 %i.fy to i64
  %i.gc = getelementptr i8, ptr %i.ga, i64 %i.gb
  %i.gd = add nuw nsw i32 %i.fy, 8
  store i32 %i.gd, ptr %2, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ge = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  store ptr %i.gf, ptr %i.e, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gg = phi ptr [ %i.gc, %bb.az ], [ %i.ge, %bb.ba ]
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !38 ; 3 uses
  %.not93 = icmp eq ptr %i.gh, null
  br i1 %.not93, label %myputs.exit, label %.thread

.thread:                                          ; preds = %bb.bb
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !42
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !44
  call void %i.gk(ptr noundef nonnull %i.gh, ptr noundef %0) #4
  br label %newline.exit

bb.bc:                                            ; preds = %bb.c
  %i.gl = load i32, ptr %2, align 8               ; 3 uses
  %i.gm = icmp ult i32 %i.gl, 41
  br i1 %i.gm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gn = load ptr, ptr %i.f, align 8
  %i.go = zext nneg i32 %i.gl to i64
  %i.gp = getelementptr i8, ptr %i.gn, i64 %i.go
  %i.gq = add nuw nsw i32 %i.gl, 8
  store i32 %i.gq, ptr %2, align 8
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  store ptr %i.gs, ptr %i.e, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gt = phi ptr [ %i.gp, %bb.bd ], [ %i.gr, %bb.be ]
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !46 ; 3 uses
  %.not92 = icmp eq ptr %i.gu, null
  br i1 %.not92, label %myputs.exit, label %.thread136

.thread136:                                       ; preds = %bb.bf
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !48
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !50
  call void %i.gx(ptr noundef nonnull %i.gu, ptr noundef %0) #4
  br label %newline.exit

bb.bg:                                            ; preds = %bb.c
  %i.gy = load i32, ptr %2, align 8               ; 3 uses
  %i.gz = icmp ult i32 %i.gy, 41
  br i1 %i.gz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ha = load ptr, ptr %i.f, align 8
  %i.hb = zext nneg i32 %i.gy to i64
  %i.hc = getelementptr i8, ptr %i.ha, i64 %i.hb
  %i.hd = add nuw nsw i32 %i.gy, 8
  store i32 %i.hd, ptr %2, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.he = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  store ptr %i.hf, ptr %i.e, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.hg = phi ptr [ %i.hc, %bb.bh ], [ %i.he, %bb.bi ]
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !51 ; 2 uses
  %.not91 = icmp eq ptr %i.hh, null
  br i1 %.not91, label %myputs.exit, label %.thread138

.thread138:                                       ; preds = %bb.bj
  call void @fftw_tensor_print(ptr noundef nonnull %i.hh, ptr noundef %0) #4
  br label %newline.exit

myputs.exit:                                      ; preds = %bb.bj, %bb.bf, %bb.bb, %bb.p
  %i.hi = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hi(ptr noundef %0, i8 noundef signext 40) #4, !inline_history !21
  %i.hj = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hj(ptr noundef %0, i8 noundef signext 110) #4, !inline_history !21
  %i.hk = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hk(ptr noundef %0, i8 noundef signext 117) #4, !inline_history !21
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hl(ptr noundef %0, i8 noundef signext 108) #4, !inline_history !21
  %i.hm = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hm(ptr noundef %0, i8 noundef signext 108) #4, !inline_history !21
  %i.hn = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hn(ptr noundef %0, i8 noundef signext 41) #4, !inline_history !21
  br label %newline.exit

myputs.exit102:                                   ; preds = %bb.al, %bb.y, %bb.u
  %.270 = phi ptr [ %i.o, %bb.u ], [ %i.o, %bb.y ], [ %.lcssa146, %bb.al ] ; 2 uses
  %.067 = phi i64 [ %i.bz, %bb.u ], [ %i.cj, %bb.y ], [ %i.dg, %bb.al ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.ho = icmp slt i64 %.067, 0
  br i1 %i.ho, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %myputs.exit102
  %i.hp = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hp(ptr noundef %0, i8 noundef signext 45) #4, !inline_history !26
  %i.hq = sub nsw i64 0, %.067
  br label %bb.bl

bb.bl:                                            ; preds = %.preheader, %bb.bk, %myputs.exit102
  %.270142 = phi ptr [ %.270, %bb.bk ], [ %.270, %myputs.exit102 ], [ %i.o, %.preheader ]
  %.011.i = phi i64 [ %i.hq, %bb.bk ], [ %.067, %myputs.exit102 ], [ %i.ct, %.preheader ]
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.112.i = phi i64 [ %.011.i, %bb.bl ], [ %i.hv, %bb.bm ] ; 3 uses
  %.0.i130 = phi ptr [ %i.a, %bb.bl ], [ %i.hu, %bb.bm ] ; 2 uses
  %i.hr = urem i64 %.112.i, 10
  %i.hs = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !30
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i130, i64 1 ; 2 uses
  store i8 %i.ht, ptr %.0.i130, align 1, !tbaa !30
  %i.hv = udiv i64 %.112.i, 10
  %.not.i131 = icmp samesign ult i64 %.112.i, 10
  br i1 %.not.i131, label %.preheader.i132, label %bb.bm, !llvm.loop !27

.preheader.i132:                                  ; preds = %bb.bm, %.preheader.i132
  %.1.i133 = phi ptr [ %i.hx, %.preheader.i132 ], [ %i.hu, %bb.bm ]
  %i.hw = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.hx = getelementptr inbounds i8, ptr %.1.i133, i64 -1 ; 3 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !30
  call void %i.hw(ptr noundef %0, i8 noundef signext %i.hy) #4, !inline_history !26
  %.not15.i = icmp eq ptr %i.hx, %i.a
  br i1 %.not15.i, label %putint.exit, label %.preheader.i132, !llvm.loop !28

putint.exit:                                      ; preds = %.preheader.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %newline.exit

bb.bn:                                            ; preds = %bb.b
  %i.hz = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.hz(ptr noundef %0, i8 noundef signext %i.n) #4
  br label %newline.exit

end_hunk_0
