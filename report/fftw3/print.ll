Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/print?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vprint:bb.a
  br i1 %.not96, label %myputs.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !30  ; 2 uses
  %.not4.i = icmp eq i8 %i.bk, 0
  br i1 %.not4.i, label %newline.exit, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.q, %.lr.ph.i97
  %i.bl = phi i8 [ %i.bo, %.lr.ph.i97 ], [ %i.bk, %bb.q ]
  %.05.i = phi ptr [ %i.bm, %.lr.ph.i97 ], [ %i.bj, %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i, i64 1 ; 2 uses
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.bn(ptr noundef %0, i8 noundef signext %i.bl) #4, !inline_history !21
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !30  ; 2 uses
  %.not.i98 = icmp eq i8 %i.bo, 0
  br i1 %.not.i98, label %newline.exit, label %.lr.ph.i97, !llvm.loop !22

bb.r:                                             ; preds = %bb.c
  %i.bp = load i32, ptr %2, align 8               ; 3 uses
  %i.bq = icmp ult i32 %i.bp, 41
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.f, align 8
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = getelementptr i8, ptr %i.br, i64 %i.bs
  %i.bu = add nuw nsw i32 %i.bp, 8
  store i32 %i.bu, ptr %2, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  store ptr %i.bw, ptr %i.e, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bx = phi ptr [ %i.bt, %bb.s ], [ %i.bv, %bb.t ]
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !31
  %i.bz = sext i32 %i.by to i64
  br label %myputs.exit102

bb.v:                                             ; preds = %bb.c
  %i.ca = load i32, ptr %2, align 8               ; 3 uses
  %i.cb = icmp ult i32 %i.ca, 41
  br i1 %i.cb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.f, align 8
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = getelementptr i8, ptr %i.cc, i64 %i.cd
  %i.cf = add nuw nsw i32 %i.ca, 8
  store i32 %i.cf, ptr %2, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.e, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ci = phi ptr [ %i.ce, %bb.w ], [ %i.cg, %bb.x ]
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !36
  br label %myputs.exit102

bb.z:                                             ; preds = %bb.c
  %i.ck = load i32, ptr %2, align 8               ; 3 uses
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
  %i.eh = sub i64 %i.eg, %i.k
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i110, label %.preheader.i107.preheader

.lr.ph.i110:                                      ; preds = %.preheader17.i106
  %i.ej = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.ej(ptr noundef %0, i8 noundef signext 48) #4, !inline_history !18
  br label %.preheader.i107.preheader

.preheader.i107.preheader:                        ; preds = %.lr.ph.i110, %.preheader17.i106
  br label %.preheader.i107

.preheader.i107:                                  ; preds = %.preheader.i107.preheader, %.preheader.i107
  %.1.i108 = phi ptr [ %i.el, %.preheader.i107 ], [ %i.ee, %.preheader.i107.preheader ]
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.el = getelementptr inbounds i8, ptr %.1.i108, i64 -1 ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !30
  call void %i.ek(ptr noundef %0, i8 noundef signext %i.em) #4, !inline_history !18
  %.not16.i109 = icmp eq ptr %i.el, %i.c
  br i1 %.not16.i109, label %putulong.exit113, label %.preheader.i107, !llvm.loop !20

putulong.exit113:                                 ; preds = %.preheader.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %newline.exit

bb.ar:                                            ; preds = %bb.c
  %i.en = load i32, ptr %2, align 8               ; 3 uses
  %i.eo = icmp ult i32 %i.en, 41
  br i1 %i.eo, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ep = load ptr, ptr %i.f, align 8
  %i.eq = zext nneg i32 %i.en to i64
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.eq
  %i.es = add nuw nsw i32 %i.en, 8
  store i32 %i.es, ptr %2, align 8
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.et = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  store ptr %i.eu, ptr %i.e, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ev = phi ptr [ %i.er, %bb.as ], [ %i.et, %bb.at ]
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !31
  %i.ex = zext i32 %i.ew to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.015.i114 = phi i64 [ %i.ex, %bb.au ], [ %i.fc, %bb.av ] ; 3 uses
  %.0.i115 = phi ptr [ %i.b, %bb.au ], [ %i.fb, %bb.av ] ; 2 uses
  %i.ey = and i64 %.015.i114, 15
  %i.ez = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i115, i64 1 ; 3 uses
  store i8 %i.fa, ptr %.0.i115, align 1, !tbaa !30
  %i.fc = lshr i64 %.015.i114, 4
  %.not.i116 = icmp samesign ult i64 %.015.i114, 16
  br i1 %.not.i116, label %.preheader17.i117, label %bb.av, !llvm.loop !17

.preheader17.i117:                                ; preds = %bb.av
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fd, %i.j
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %.lr.ph.i121.preheader, label %.preheader.i118.preheader

.lr.ph.i121.preheader:                            ; preds = %.preheader17.i117
  %i.fg = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.fg(ptr noundef %0, i8 noundef signext 48) #4, !inline_history !18
  br label %.preheader.i118.preheader

.preheader.i118.preheader:                        ; preds = %.lr.ph.i121.preheader, %.preheader17.i117
  br label %.preheader.i118

.preheader.i118:                                  ; preds = %.preheader.i118.preheader, %.preheader.i118
  %.1.i119 = phi ptr [ %i.fi, %.preheader.i118 ], [ %i.fb, %.preheader.i118.preheader ]
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.fi = getelementptr inbounds i8, ptr %.1.i119, i64 -1 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !30
  call void %i.fh(ptr noundef %0, i8 noundef signext %i.fj) #4, !inline_history !18
  %.not16.i120 = icmp eq ptr %i.fi, %i.b
  br i1 %.not16.i120, label %putulong.exit124, label %.preheader.i118, !llvm.loop !20

putulong.exit124:                                 ; preds = %.preheader.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %newline.exit

bb.aw:                                            ; preds = %bb.c
  %i.fk = load i32, ptr %i.g, align 4, !tbaa !14
  %i.fl = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fm = add nsw i32 %i.fl, %i.fk
  store i32 %i.fm, ptr %i.h, align 8, !tbaa !13
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.fn(ptr noundef %0, i8 noundef signext 10) #4, !inline_history !24
  %i.fo = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i125, label %newline.exit

.lr.ph.i125:                                      ; preds = %bb.aw, %.lr.ph.i125
  %.06.i = phi i32 [ %i.fr, %.lr.ph.i125 ], [ 0, %bb.aw ]
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !11
  call void %i.fq(ptr noundef nonnull %0, i8 noundef signext 32) #4, !inline_history !24
  %i.fr = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %i.fs = load i32, ptr %i.h, align 8, !tbaa !13
  %i.ft = icmp slt i32 %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph.i125, label %newline.exit, !llvm.loop !25

bb.ax:                                            ; preds = %bb.c
  %i.fu = load i32, ptr %i.g, align 4, !tbaa !14
  %i.fv = load i32, ptr %i.h, align 8, !tbaa !13
  %i.fw = sub nsw i32 %i.fv, %i.fu
  store i32 %i.fw, ptr %i.h, align 8, !tbaa !13
  br label %newline.exit

bb.ay:                                            ; preds = %bb.c
  %i.fx = load i32, ptr %2, align 8               ; 3 uses
  %i.fy = icmp ult i32 %i.fx, 41
  br i1 %i.fy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fz = load ptr, ptr %i.f, align 8
  %i.ga = zext nneg i32 %i.fx to i64
  %i.gb = getelementptr i8, ptr %i.fz, i64 %i.ga
  %i.gc = add nuw nsw i32 %i.fx, 8
  store i32 %i.gc, ptr %2, align 8
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.gd = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  store ptr %i.ge, ptr %i.e, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.gf = phi ptr [ %i.gb, %bb.az ], [ %i.gd, %bb.ba ]
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !38 ; 3 uses
  %.not93 = icmp eq ptr %i.gg, null
  br i1 %.not93, label %myputs.exit, label %.thread

.thread:                                          ; preds = %bb.bb
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !42
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !44
  call void %i.gj(ptr noundef nonnull %i.gg, ptr noundef %0) #4
  br label %newline.exit

bb.bc:                                            ; preds = %bb.c
  %i.gk = load i32, ptr %2, align 8               ; 3 uses
  %i.gl = icmp ult i32 %i.gk, 41
  br i1 %i.gl, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gm = load ptr, ptr %i.f, align 8
  %i.gn = zext nneg i32 %i.gk to i64
  %i.go = getelementptr i8, ptr %i.gm, i64 %i.gn
  %i.gp = add nuw nsw i32 %i.gk, 8
  store i32 %i.gp, ptr %2, align 8
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.gq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  store ptr %i.gr, ptr %i.e, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gs = phi ptr [ %i.go, %bb.bd ], [ %i.gq, %bb.be ]
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !46 ; 3 uses
  %.not92 = icmp eq ptr %i.gt, null
  br i1 %.not92, label %myputs.exit, label %.thread136

.thread136:                                       ; preds = %bb.bf
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !48
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !50
  call void %i.gw(ptr noundef nonnull %i.gt, ptr noundef %0) #4
  br label %newline.exit

bb.bg:                                            ; preds = %bb.c
  %i.gx = load i32, ptr %2, align 8               ; 3 uses
  %i.gy = icmp ult i32 %i.gx, 41
  br i1 %i.gy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gz = load ptr, ptr %i.f, align 8
  %i.ha = zext nneg i32 %i.gx to i64
  %i.hb = getelementptr i8, ptr %i.gz, i64 %i.ha
  %i.hc = add nuw nsw i32 %i.gx, 8
  store i32 %i.hc, ptr %2, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hd = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  store ptr %i.he, ptr %i.e, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.hf = phi ptr [ %i.hb, %bb.bh ], [ %i.hd, %bb.bi ]
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !51 ; 2 uses
  %.not91 = icmp eq ptr %i.hg, null
  br i1 %.not91, label %myputs.exit, label %.thread138

.thread138:                                       ; preds = %bb.bj
  call void @fftw_tensor_print(ptr noundef nonnull %i.hg, ptr noundef %0) #4
end_hunk_0
