Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/decode?download=true
inline.NumInlined: 144
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@arch_decode_instruction:bb.a
  br label %.critedge

bb.n:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.cq = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not623 = icmp eq ptr %i.cq, null
  br i1 %.not623, label %bb.do, label %.split756.us.a

.split756.us.a:                                   ; preds = %bb.n
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !117
  %i.cr = and i8 %i.av, 7
  %i.cs = shl nuw nsw i8 %.0514, 3
  %i.ct = or disjoint i8 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i8 %i.ct, ptr %i.cu, align 4, !tbaa !122
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i32 3, ptr %i.cv, align 8, !tbaa !124
  br label %.critedge

bb.o:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %i.cw = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not621 = icmp eq ptr %i.cw, null
  br i1 %.not621, label %bb.do, label %.split754.us.a

.split754.us.a:                                   ; preds = %bb.o
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !117
  %i.cx = and i8 %i.av, 7
  %i.cy = shl nuw nsw i8 %.0514, 3
  %i.cz = or disjoint i8 %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  store i32 3, ptr %i.da, align 4, !tbaa !121
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i8 %i.cz, ptr %i.db, align 4, !tbaa !123
  br label %.critedge

bb.p:                                             ; preds = %bb.k, %bb.k
  %i.dc = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not619 = icmp eq ptr %i.dc, null
  br i1 %.not619, label %bb.do, label %.split752.us.a

.split752.us.a:                                   ; preds = %bb.p
  store ptr %i.dc, ptr %i.a, align 8, !tbaa !117
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  store i32 2, ptr %i.dd, align 4, !tbaa !121
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 3, ptr %i.de, align 8, !tbaa !124
  br label %.critedge

bb.q:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  store i8 0, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.r:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %.not612 = icmp eq i8 %.0512, 0
  br i1 %.not612, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = icmp eq i32 %.0509, 3
  %i.dg = icmp eq i8 %.0505, 4
  %or.cond8 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond8, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = and i8 %i.av, 3
  %or.cond639 = icmp eq i8 %i.dk, 2
  %i.dl = shl i64 %i.dj, 56
  %i.dm = ashr exact i64 %i.dl, 56
  %.0499 = select i1 %or.cond639, i64 %i.dm, i64 %i.dj ; 2 uses
  %i.dn = and i8 %.0504, 7
  switch i8 %i.dn, label %.critedge [
    i8 5, label %bb.u
    i8 0, label %bb.v
    i8 4, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.do = sub nsw i64 0, %.0499
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1 = phi i64 [ %i.do, %bb.u ], [ %.0499, %bb.t ]
  %i.dp = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not617 = icmp eq ptr %i.dp, null
  br i1 %.not617, label %bb.do, label %.split750.us.a

.split750.us.a:                                   ; preds = %bb.v
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !117
  %i.dq = trunc i64 %.1 to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store i32 5, ptr %i.dr, align 4, !tbaa !121
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i8 4, ptr %i.ds, align 4, !tbaa !122
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  store i32 %i.dq, ptr %i.dt, align 4, !tbaa !125
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i8 4, ptr %i.du, align 4, !tbaa !123
  br label %.critedge

bb.w:                                             ; preds = %bb.t
  %i.dv = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not615 = icmp eq ptr %i.dv, null
  br i1 %.not615, label %bb.do, label %.split748.us.a

.split748.us.a:                                   ; preds = %bb.w
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !117
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  store i32 6, ptr %i.dw, align 4, !tbaa !121
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i8 4, ptr %i.dx, align 4, !tbaa !122
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  store i32 %i.di, ptr %i.dy, align 4, !tbaa !125
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i8 4, ptr %i.dz, align 4, !tbaa !123
  br label %.critedge

bb.x:                                             ; preds = %bb.k
  %.not599 = icmp eq i8 %.0512, 0
  br i1 %.not599, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = icmp eq i32 %.0509, 3
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eb = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not610 = icmp eq ptr %i.eb, null
  br i1 %.not610, label %bb.do, label %.split746.us.a

.split746.us.a:                                   ; preds = %bb.z
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !117
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i8 %.0504, ptr %i.ec, align 4, !tbaa !122
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i8 %.0505, ptr %i.ed, align 4, !tbaa !123
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  %i.ee = and i8 %.0505, 7                        ; 2 uses
  %i.ef = icmp eq i8 %i.ee, 5
  %i.eg = icmp eq i32 %.0509, 0
  %or.cond11 = select i1 %i.ef, i1 %i.eg, i1 false
  br i1 %or.cond11, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = icmp ne i8 %i.ee, 4                     ; 2 uses
  %brmerge = select i1 %i.eh, i1 true, i1 %.0503
  %.0505.mux = select i1 %i.eh, i8 %.0505, i8 %.0502 ; 2 uses
  br i1 %brmerge, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.ei = icmp eq i8 %.0504, 4
  br i1 %i.ei, label %bb.ad, label %.thread661

bb.ad:                                            ; preds = %bb.ac
  %i.ej = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not608 = icmp eq ptr %i.ej, null
  br i1 %.not608, label %bb.do, label %.split744.us.a

.split744.us.a:                                   ; preds = %bb.ad
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !117
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i8 4, ptr %i.em, align 4, !tbaa !122
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 1, ptr %i.en, align 8, !tbaa !124
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i8 %.0505.mux, ptr %i.eo, align 4, !tbaa !123
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i32 %i.el, ptr %i.ep, align 8, !tbaa !126
  br label %.critedge

bb.ae:                                            ; preds = %bb.k
  %.not601 = icmp eq i8 %.0512, 0
  %.not602 = icmp eq i32 %.0509, 3
  %or.cond687 = select i1 %.not601, i1 true, i1 %.not602
  br i1 %or.cond687, label %.critedge, label %.thread661

.thread661:                                       ; preds = %bb.ae, %bb.ac
  %.2507660664 = phi i8 [ %.0505, %bb.ae ], [ %.0505.mux, %bb.ac ] ; 2 uses
  %i.eq = and i8 %.2507660664, 7                  ; 2 uses
  %i.er = icmp eq i8 %i.eq, 5
  %i.es = icmp eq i32 %.0509, 0                   ; 2 uses
  %or.cond17 = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond17, label %.critedge, label %bb.af

bb.af:                                            ; preds = %.thread661
  %i.et = icmp eq i8 %i.eq, 4
  br i1 %i.et, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eu = icmp eq i8 %.0502, 5
  %or.cond23 = select i1 %i.eu, i1 %.0503, i1 false
  %or.cond23.not = xor i1 %or.cond23, true
  %or.cond631 = select i1 %or.cond23.not, i1 true, i1 %i.es
  br i1 %or.cond631, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  switch i8 %.2507660664, label %.critedge [
    i8 5, label %bb.ai
    i8 4, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ev = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not604 = icmp eq ptr %i.ev, null
  br i1 %.not604, label %bb.do, label %.split740.us.a

.split740.us.a:                                   ; preds = %bb.ai
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !117
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i8 %.0504, ptr %i.ey, align 4, !tbaa !122
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 1, ptr %i.ez, align 8, !tbaa !124
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i8 5, ptr %i.fa, align 4, !tbaa !123
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i32 %i.ex, ptr %i.fb, align 8, !tbaa !126
  br label %.critedge

bb.aj:                                            ; preds = %bb.ag
  %i.fc = icmp eq i8 %.0502, 4
  %or.cond35 = select i1 %i.fc, i1 %.0503, i1 false
  br i1 %or.cond35, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %bb.ah, %bb.aj
  %i.fd = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not606 = icmp eq ptr %i.fd, null
  br i1 %.not606, label %bb.do, label %.split742.us.a

.split742.us.a:                                   ; preds = %bb.ak
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !117
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !27
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i8 %.0504, ptr %i.fg, align 4, !tbaa !122
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 1, ptr %i.fh, align 8, !tbaa !124
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i8 4, ptr %i.fi, align 4, !tbaa !123
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i32 %i.ff, ptr %i.fj, align 8, !tbaa !126
  br label %.critedge

bb.al:                                            ; preds = %bb.k
  %.not592 = icmp eq i8 %.0512, 0
  %.not593 = icmp eq i32 %.0509, 3
  %or.cond688 = select i1 %.not592, i1 true, i1 %.not593
  br i1 %or.cond688, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fk = and i8 %.0505, 7                        ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 5
  %i.fm = icmp eq i32 %.0509, 0                   ; 2 uses
  %or.cond41 = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond41, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = icmp eq i8 %i.fk, 4
  br i1 %i.fn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fo = icmp eq i8 %.0502, 5
  %or.cond47 = select i1 %i.fo, i1 %.0503, i1 false
  %or.cond47.not = xor i1 %or.cond47, true
  %or.cond632 = select i1 %or.cond47.not, i1 true, i1 %i.fm
  br i1 %or.cond632, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.an
  switch i8 %.0505, label %.critedge [
    i8 5, label %bb.aq
    i8 4, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fp = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not595 = icmp eq ptr %i.fp, null
  br i1 %.not595, label %bb.do, label %.split736.us.a

.split736.us.a:                                   ; preds = %bb.aq
  store ptr %i.fp, ptr %i.a, align 8, !tbaa !117
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  store i32 1, ptr %i.fs, align 4, !tbaa !121
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i8 5, ptr %i.ft, align 4, !tbaa !122
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 28
  store i32 %i.fr, ptr %i.fu, align 4, !tbaa !125
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i8 %.0504, ptr %i.fv, align 4, !tbaa !123
  br label %.critedge

bb.ar:                                            ; preds = %bb.ao
  %i.fw = icmp eq i8 %.0502, 4
  %or.cond59 = select i1 %i.fw, i1 %.0503, i1 false
  br i1 %or.cond59, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ap, %bb.ar
  %i.fx = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not597 = icmp eq ptr %i.fx, null
  br i1 %.not597, label %bb.do, label %.split738.us.a

.split738.us.a:                                   ; preds = %bb.as
  store ptr %i.fx, ptr %i.a, align 8, !tbaa !117
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !27
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  store i32 1, ptr %i.ga, align 4, !tbaa !121
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i8 4, ptr %i.gb, align 4, !tbaa !122
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 28
  store i32 %i.fz, ptr %i.gc, align 4, !tbaa !125
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i8 %.0504, ptr %i.gd, align 4, !tbaa !123
  br label %.critedge

bb.at:                                            ; preds = %bb.k
  %i.ge = icmp eq i32 %.0509, 3
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !81
  %i.gg = load ptr, ptr @objname, align 8, !tbaa !82 ; 2 uses
  %.not591 = icmp eq ptr %i.gg, null              ; 2 uses
  %..str.1963 = select i1 %.not591, ptr @.str.19, ptr %i.gg
  %i.gh = select i1 %.not591, ptr @.str.19, ptr @.str.20
  %i.gi = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 89), align 1, !tbaa !128, !range !129, !noundef !130
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = select i1 %i.gj, ptr @.str.21, ptr @.str.23
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !114
  %i.gn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gf, ptr noundef nonnull @.str.22, ptr noundef nonnull %..str.1963, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.gk, ptr noundef %i.gm, i64 noundef %2) #20 ; 0 uses
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  %.not586 = icmp eq i8 %.0512, 0
  br i1 %.not586, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.go = and i8 %.0505, 7
  %i.gp = icmp ne i8 %i.go, 4                     ; 2 uses
  %brmerge636 = select i1 %i.gp, i1 true, i1 %.0503
  %.0505.mux637 = select i1 %i.gp, i8 %.0505, i8 %.0502 ; 2 uses
  br i1 %brmerge636, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %bb.aw
  %i.gq = and i8 %.0505.mux637, 7
  %i.gr = icmp eq i8 %i.gq, 5
  %i.gs = icmp eq i32 %.0509, 0
  %or.cond69 = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond69, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i8 17, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.az:                                            ; preds = %bb.ax
  %i.gt = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not588 = icmp eq ptr %i.gt, null
  br i1 %.not588, label %bb.do, label %.split734.us.a

.split734.us.a:                                   ; preds = %bb.az
  store ptr %i.gt, ptr %i.a, align 8, !tbaa !117
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !27 ; 2 uses
  %.not590 = icmp eq i32 %i.gv, 0
  %. = select i1 %.not590, i32 0, i32 5
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !125
  store i32 %., ptr %i.gw, align 4, !tbaa !121
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store i8 %.0505.mux637, ptr %i.gy, align 4, !tbaa !122
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i8 %.0504, ptr %i.gz, align 4, !tbaa !123
  br label %.critedge

bb.ba:                                            ; preds = %bb.k
  %i.ha = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not584 = icmp eq ptr %i.ha, null
  br i1 %.not584, label %bb.do, label %.split732.us.a

.split732.us.a:                                   ; preds = %bb.ba
  store ptr %i.ha, ptr %i.a, align 8, !tbaa !117
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 20
  store i32 3, ptr %i.hb, align 4, !tbaa !121
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i32 2, ptr %i.hc, align 8, !tbaa !124
  br label %.critedge

bb.bb:                                            ; preds = %bb.k
  %i.hd = icmp ne i8 %.0514, 0
  %i.he = icmp eq i8 %i.at, -13
  %or.cond109 = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond109, label %.critedge, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 10, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.bd:                                            ; preds = %bb.k
  %i.hf = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not582 = icmp eq ptr %i.hf, null
  br i1 %.not582, label %bb.do, label %.split730.us.a

.split730.us.a:                                   ; preds = %bb.bd
  store ptr %i.hf, ptr %i.a, align 8, !tbaa !117
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 20
  store i32 2, ptr %i.hg, align 4, !tbaa !121
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i32 4, ptr %i.hh, align 8, !tbaa !124
  br label %.critedge

bb.be:                                            ; preds = %bb.k
  %i.hi = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not580 = icmp eq ptr %i.hi, null
  br i1 %.not580, label %bb.do, label %.split728.us.a

.split728.us.a:                                   ; preds = %bb.be
  store ptr %i.hi, ptr %i.a, align 8, !tbaa !117
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 20
  store i32 4, ptr %i.hj, align 4, !tbaa !121
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 2, ptr %i.hk, align 8, !tbaa !124
  br label %.critedge

bb.bf:                                            ; preds = %bb.k
  %i.hl = icmp eq i8 %i.ax, 1
  br i1 %i.hl, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.hm = call fastcc i32 @insn_last_prefix_id(ptr noundef nonnull %5)
  %switch.not = icmp samesign ult i32 %i.hm, 2
  br i1 %switch.not, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hn = icmp eq i32 %.0510, 202
  br i1 %i.hn, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh
  store i8 8, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.bj:                                            ; preds = %bb.bg
  %trunc = trunc nuw i32 %.0510 to i8
  switch i8 %trunc, label %.critedge [
    i8 -54, label %bb.bk
    i8 -53, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  store i8 12, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.bl:                                            ; preds = %bb.bj
  store i8 11, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.bm:                                            ; preds = %bb.bf
  %or.cond72 = icmp slt i8 %i.ax, -112
  br i1 %or.cond72, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.bo:                                            ; preds = %bb.bm
  switch i8 %i.ax, label %bb.bw [
    i8 52, label %bb.bp
    i8 5, label %bb.bp
    i8 53, label %bb.bq
    i8 7, label %bb.bq
    i8 -71, label %bb.br
    i8 11, label %bb.br
    i8 31, label %bb.bs
    i8 30, label %bb.bu
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo
  store i8 7, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.bq:                                            ; preds = %bb.bo, %bb.bo
  store i8 8, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.br:                                            ; preds = %bb.bo, %bb.bo
  store i8 9, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.bs:                                            ; preds = %bb.bo
  %i.ho = icmp eq i8 %.0504, 0
  br i1 %i.ho, label %bb.bt, label %.critedge

bb.bt:                                            ; preds = %bb.bs
  store i8 10, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

end_hunk_0
begin_hunk_1_@arch_decode_instruction:bb.a
  %i.ld = mul i64 %i.lc, %.val.val.i643
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ld ; 2 uses
  br i1 %i.ks, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !59
  %i.lh = sext i32 %i.lg to i64
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !62
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.lk = phi i64 [ %i.lh, %bb.cq ], [ %i.lj, %bb.cr ]
  %i.ll = tail call ptr @find_symbol_by_offset(ptr noundef %i.kp, i64 noundef %i.lk) #19 ; 2 uses
  %.not569 = icmp eq ptr %i.ll, null
  br i1 %.not569, label %bb.ct, label %.thread670

.thread670:                                       ; preds = %reloc_addend.exit, %bb.cs
  %.0673 = phi ptr [ %i.ll, %bb.cs ], [ %i.kk, %reloc_addend.exit ]
  %i.lm = tail call i32 @objtool_pv_add(ptr noundef nonnull %0, i32 noundef %i.ki, ptr noundef nonnull %.0673) #19 ; 0 uses
  br label %.critedge

bb.ct:                                            ; preds = %bb.cs
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !81
  %i.lo = load ptr, ptr @objname, align 8, !tbaa !82 ; 2 uses
  %.not570 = icmp eq ptr %i.lo, null              ; 2 uses
  %..str.19101 = select i1 %.not570, ptr @.str.19, ptr %i.lo
  %i.lp = select i1 %.not570, ptr @.str.19, ptr @.str.20
  %i.lq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ln, ptr noundef nonnull @.str.27, ptr noundef nonnull %..str.19101, ptr noundef nonnull %i.lp, ptr noundef nonnull @.str.21) #20 ; 0 uses
  br label %bb.do

bb.cu:                                            ; preds = %bb.k
  %i.lr = tail call ptr @find_symbol_containing(ptr noundef nonnull %1, i64 noundef %2) #19 ; 2 uses
  %.not563 = icmp eq ptr %i.lr, null
  br i1 %.not563, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 177
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !134
  %i.lu = icmp eq i8 %i.lt, 2
  br i1 %i.lu, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lv = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 6 uses
  %.not564 = icmp eq ptr %i.lv, null
  br i1 %.not564, label %bb.do, label %.split716.us

.split716.us:                                     ; preds = %bb.cw
  store ptr %i.lv, ptr %i.a, align 8, !tbaa !117
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 20
  store i32 5, ptr %i.lw, align 4, !tbaa !121
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store i8 4, ptr %i.lx, align 4, !tbaa !122
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 28
  store i32 40, ptr %i.ly, align 4, !tbaa !125
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  store i8 4, ptr %i.lz, align 4, !tbaa !123
  br label %.critedge

bb.cx:                                            ; preds = %bb.cu, %bb.cv, %bb.k, %bb.k
  store i8 8, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.cy:                                            ; preds = %bb.k
  store i8 9, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.cz:                                            ; preds = %bb.k, %bb.k, %bb.k
  store i8 0, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.da:                                            ; preds = %bb.k
  store i8 4, ptr %i.aq, align 2, !tbaa !115
  %i.ma = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not561 = icmp eq ptr %i.ma, null
  br i1 %.not561, label %bb.do, label %.split714.us

.split714.us:                                     ; preds = %bb.da
  store ptr %i.ma, ptr %i.a, align 8, !tbaa !117
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 20
  store i32 2, ptr %i.mb, align 4, !tbaa !121
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i32 3, ptr %i.mc, align 8, !tbaa !124
  br label %.critedge

bb.db:                                            ; preds = %bb.k
  store i8 14, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.dc:                                            ; preds = %bb.k
  store i8 13, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.dd:                                            ; preds = %bb.k
  %i.md = and i8 %.0504, -2
  %or.cond104 = icmp eq i8 %i.md, 2
  br i1 %or.cond104, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  store i8 5, ptr %i.aq, align 2, !tbaa !115
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !131 ; 2 uses
  %.not.i645 = icmp eq i8 %i.mf, 0
  br i1 %.not.i645, label %.critedge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.de
  %wide.trip.count.i = zext i8 %i.mf to i64
  br label %.lr.ph.i

bb.df:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %.lr.ph.i, !llvm.loop !104

.lr.ph.i:                                         ; preds = %bb.df, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.df ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.i
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !27
  %i.mi = icmp eq i8 %i.mh, 62
  br i1 %i.mi, label %has_notrack_prefix.exit, label %bb.df

has_notrack_prefix.exit:                          ; preds = %.lr.ph.i
  %i.mj = load ptr, ptr @stderr, align 8, !tbaa !81
  %i.mk = load ptr, ptr @objname, align 8, !tbaa !82 ; 2 uses
  %.not560 = icmp eq ptr %i.mk, null              ; 2 uses
  %..str.19105 = select i1 %.not560, ptr @.str.19, ptr %i.mk
  %i.ml = select i1 %.not560, ptr @.str.19, ptr @.str.20
  %i.mm = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 89), align 1, !tbaa !128, !range !129, !noundef !130
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = select i1 %i.mn, ptr @.str.21, ptr @.str.23
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !114
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mj, ptr noundef nonnull @.str.28, ptr noundef nonnull %..str.19105, ptr noundef nonnull %i.ml, ptr noundef nonnull %i.mo, ptr noundef %i.mq, i64 noundef %2) #20 ; 0 uses
  br label %.critedge

bb.dg:                                            ; preds = %bb.dd
  switch i8 %.0504, label %.critedge [
    i8 4, label %bb.dh
    i8 5, label %bb.dj
    i8 6, label %bb.dk
  ]

bb.dh:                                            ; preds = %bb.dg
  store i8 2, ptr %i.aq, align 2, !tbaa !115
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !131 ; 2 uses
  %.not.i646 = icmp eq i8 %i.mt, 0
  br i1 %.not.i646, label %.critedge, label %.lr.ph.preheader.i647

.lr.ph.preheader.i647:                            ; preds = %bb.dh
  %wide.trip.count.i648 = zext i8 %i.mt to i64
  br label %.lr.ph.i649

bb.di:                                            ; preds = %.lr.ph.i649
  %indvars.iv.next.i651 = add nuw nsw i64 %indvars.iv.i650, 1 ; 2 uses
  %exitcond.not.i652 = icmp eq i64 %indvars.iv.next.i651, %wide.trip.count.i648
  br i1 %exitcond.not.i652, label %.critedge, label %.lr.ph.i649, !llvm.loop !104

.lr.ph.i649:                                      ; preds = %bb.di, %.lr.ph.preheader.i647
  %indvars.iv.i650 = phi i64 [ 0, %.lr.ph.preheader.i647 ], [ %indvars.iv.next.i651, %bb.di ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.i650
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !27
  %i.mw = icmp eq i8 %i.mv, 62
  br i1 %i.mw, label %has_notrack_prefix.exit654, label %bb.di

has_notrack_prefix.exit654:                       ; preds = %.lr.ph.i649
  %i.mx = load ptr, ptr @stderr, align 8, !tbaa !81
  %i.my = load ptr, ptr @objname, align 8, !tbaa !82 ; 2 uses
  %.not559 = icmp eq ptr %i.my, null              ; 2 uses
  %..str.19106 = select i1 %.not559, ptr @.str.19, ptr %i.my
  %i.mz = select i1 %.not559, ptr @.str.19, ptr @.str.20
  %i.na = load i8, ptr getelementptr inbounds nuw (i8, ptr @opts, i64 89), align 1, !tbaa !128, !range !129, !noundef !130
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = select i1 %i.nb, ptr @.str.21, ptr @.str.23
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !114
  %i.nf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mx, ptr noundef nonnull @.str.28, ptr noundef nonnull %..str.19106, ptr noundef nonnull %i.mz, ptr noundef nonnull %i.nc, ptr noundef %i.ne, i64 noundef %2) #20 ; 0 uses
  br label %.critedge

bb.dj:                                            ; preds = %bb.dg
  store i8 8, ptr %i.aq, align 2, !tbaa !115
  br label %.critedge

bb.dk:                                            ; preds = %bb.dg
  %i.ng = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #21 ; 4 uses
  %.not557 = icmp eq ptr %i.ng, null
  br i1 %.not557, label %bb.do, label %.split.us

.split.us:                                        ; preds = %bb.dk
  store ptr %i.ng, ptr %i.a, align 8, !tbaa !117
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 20
  store i32 2, ptr %i.nh, align 4, !tbaa !121
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  store i32 3, ptr %i.ni, align 8, !tbaa !124
  br label %.critedge

.critedge:                                        ; preds = %bb.di, %bb.df, %.split.us, %.split714.us, %.split716.us, %.split722.us.a, %.split724.us.a, %.split726.us, %.split728.us.a, %.split730.us.a, %.split732.us.a, %.split734.us.a, %.split736.us.a, %.split738.us.a, %.split740.us.a, %.split742.us.a, %.split744.us.a, %.split746.us.a, %.split748.us.a, %.split750.us.a, %.split752.us.a, %.split754.us.a, %.split756.us.a, %.split758.us.a, %bb.ap, %bb.ah, %bb.bz, %bb.dh, %bb.de, %bb.cl, %bb.ck, %.thread670, %bb.cj, %bb.am, %.thread661, %bb.dg, %bb.bj, %bb.aw, %bb.ab, %bb.k, %has_notrack_prefix.exit, %bb.dj, %has_notrack_prefix.exit654, %bb.ci, %bb.ch, %bb.bk, %bb.bl, %bb.bh, %bb.bi, %bb.bp, %bb.br, %bb.bv, %bb.bu, %bb.bx, %bb.by, %bb.bs, %bb.bt, %bb.bq, %bb.bn, %bb.bb, %bb.av, %bb.ar, %bb.al, %bb.aj, %bb.ae, %bb.aa, %bb.x, %bb.t, %bb.s, %bb.r, %bb.l, %bb.dc, %bb.db, %bb.cz, %bb.cy, %bb.cx, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.bc, %bb.ay, %bb.au, %bb.q
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !27  ; 2 uses
  %.not627 = icmp eq i8 %i.nk, 0
  br i1 %.not627, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.critedge
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !27
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.nn, ptr %i.no, align 8, !tbaa !78
  %i.np = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4
  %i.nr = and i8 %i.nk, 15
  %i.ns = zext nneg i8 %i.nr to i32
  %i.nt = shl nuw nsw i32 %i.ns, 8
  %i.nu = and i32 %i.nq, -3841
  %i.nv = or disjoint i32 %i.nu, %i.nt
  store i32 %i.nv, ptr %i.np, align 4
  br label %bb.do

bb.dm:                                            ; preds = %.critedge
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 53
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !136 ; 2 uses
  %.not628 = icmp eq i8 %i.nx, 0
  br i1 %.not628, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ny = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !27
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.oa, ptr %i.ob, align 8, !tbaa !78
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 4
  %i.oe = and i8 %i.nx, 15
  %i.of = zext nneg i8 %i.oe to i32
  %i.og = shl nuw nsw i32 %i.of, 8
  %i.oh = and i32 %i.od, -3841
  %i.oi = or disjoint i32 %i.oh, %i.og
  store i32 %i.oi, ptr %i.oc, align 4
  br label %bb.do

bb.do:                                            ; preds = %bb.ct, %is_x86_64.exit, %bb.dl, %bb.dn, %bb.dm, %bb.dk, %bb.da, %bb.cw, %.split718.us, %bb.cc, %bb.cb, %bb.ca, %bb.be, %bb.bd, %bb.ba, %bb.az, %bb.as, %bb.aq, %bb.ak, %bb.ai, %bb.ad, %bb.z, %bb.w, %bb.v, %bb.p, %bb.o, %bb.n, %bb.m, %insn_decode.exit, %insn_complete.exit.thread.i
  %.1516 = phi i32 [ -1, %bb.da ], [ -1, %insn_complete.exit.thread.i ], [ -1, %is_x86_64.exit ], [ -1, %bb.dk ], [ 0, %insn_decode.exit ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.z ], [ -1, %bb.ai ], [ -1, %bb.ad ], [ -1, %bb.aq ], [ -1, %bb.ak ], [ -1, %bb.as ], [ -1, %bb.az ], [ -1, %bb.ba ], [ -1, %bb.bd ], [ -1, %bb.be ], [ -1, %bb.ca ], [ -1, %bb.cc ], [ -1, %bb.cb ], [ -1, %bb.ct ], [ -1, %.split718.us ], [ -1, %bb.cw ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.1516
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare ptr @find_reloc_by_dest(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare i32 @pv_ops_idx_off(ptr noundef) local_unnamed_addr #14

declare ptr @find_symbol_by_offset(ptr noundef, i64 noundef) local_unnamed_addr #14

declare i32 @objtool_pv_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

declare ptr @find_symbol_containing(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 -15, 256) i64 @arch_jump_opcode_bytes(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = load i32, ptr %i.d, align 4
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 15
  %i.h = sub nsw i32 %i.c, %i.g
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.q, i64 %i.i, i1 false)
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @arch_initial_func_cfi_state(ptr nofree noundef writeonly captures(none) initializes((0, 144)) %0) local_unnamed_addr #3 {
bb.a:
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %0, align 4, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.e, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x i32> <i32 -2, i32 -8, i32 4, i32 8>, ptr %i.h, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @arch_nop_insn(i32 noundef %0) local_unnamed_addr #16 {
bb.a:
  %i.a = add i32 %0, -6
  %or.cond = icmp ult i32 %i.a, -5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !81
  %i.c = load ptr, ptr @objname, align 8, !tbaa !82 ; 2 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %..str.19 = select i1 %.not, ptr @.str.19, ptr %i.c
  %i.d = select i1 %.not, ptr @.str.19, ptr @.str.20
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.29, ptr noundef nonnull %..str.19, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.21, i32 noundef %0) #20 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr [5 x i8], ptr @arch_nop_insn.nops, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @arch_ret_insn(i32 noundef %0) local_unnamed_addr #16 {
bb.a:
  %i.a = add i32 %0, -6
  %or.cond = icmp ult i32 %i.a, -5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !81
  %i.c = load ptr, ptr @objname, align 8, !tbaa !82 ; 2 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %..str.19 = select i1 %.not, ptr @.str.19, ptr %i.c
  %i.d = select i1 %.not, ptr @.str.19, ptr @.str.20
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.30, ptr noundef nonnull %..str.19, ptr noundef nonnull %i.d, ptr noundef nonnull @.str.21, i32 noundef %0) #20 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr [5 x i8], ptr @arch_ret_insn.ret, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local range(i32 -1, 1) i32 @arch_decode_hint_reg(i8 noundef zeroext %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i8 %0, 11
  br i1 %i.a, label %switch.hole_check, label %bb.b

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %0 to i16
  %switch.shifted = lshr i16 1791, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.b = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.arch_decode_hint_reg, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  store i32 %switch.load, ptr %1, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a, %switch.lookup
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %switch.lookup ], [ -1, %switch.hole_check ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @arch_is_retpoline(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(16) @.str.31, i64 noundef 15) #18
  %.not = icmp eq i32 %i.c, 0
end_hunk_1
