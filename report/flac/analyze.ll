Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/analyze?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@flac__analyze_frame:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = add i32 %.1135190, 1                    ; 2 uses
  %.1135.highbits = lshr i32 %i.bt, %i.bf
  %i.bu = icmp eq i32 %.1135.highbits, 0
  br i1 %i.bu, label %bb.i, label %bb.m, !llvm.loop !25

bb.m:                                             ; preds = %bb.l
  br i1 %.not141, label %.loopexit168, label %.preheader167

.preheader167:                                    ; preds = %bb.m
  %i.bv = load i32, ptr %0, align 8, !tbaa !42
  %i.bw = load i32, ptr %i.aq, align 8, !tbaa !47
  %.not233 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not233, label %.loopexit168, label %.lr.ph192

.lr.ph192:                                        ; preds = %.preheader167
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph192, %bb.n
  %indvars.iv259 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next260, %bb.n ] ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv259
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16
  %i.cb = trunc nuw i64 %indvars.iv259 to i32
  %i.cc = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.cb, i32 noundef %i.ca) #10 ; 0 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.cd = load i32, ptr %0, align 8, !tbaa !42
  %i.ce = load i32, ptr %i.aq, align 8, !tbaa !47
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp samesign ult i64 %indvars.iv.next260, %i.cg
  br i1 %i.ch, label %bb.n, label %.loopexit168, !llvm.loop !26

bb.o:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 6 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !47
  %i.co = select i1 %i.ad, ptr @.str.5, ptr @.str.6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !47
  %i.cr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.cj, i32 noundef %i.cl, i32 noundef %i.cn, ptr noundef nonnull %i.co, i32 noundef %i.cq) #10 ; 0 uses
  %i.cs = load i32, ptr %i.ci, align 8, !tbaa !47
  %.not229 = icmp eq i32 %i.cs, 0
  br i1 %.not229, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  br label %bb.p

.preheader171:                                    ; preds = %bb.p
  %i.cu = icmp eq i32 %i.da, 0
  br i1 %i.cu, label %._crit_edge, label %.lr.ph182

.lr.ph182:                                        ; preds = %.preheader171
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 176
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.cy = trunc nuw i64 %indvars.iv to i32
  %i.cz = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.cy, i32 noundef %i.cx) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = load i32, ptr %i.ci, align 8, !tbaa !47 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.p, label %.preheader171, !llvm.loop !27

bb.q:                                             ; preds = %.lr.ph182, %bb.q
  %indvars.iv250 = phi i64 [ 0, %.lr.ph182 ], [ %indvars.iv.next251, %bb.q ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv250
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !47
  %i.df = trunc nuw i64 %indvars.iv250 to i32
  %i.dg = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %i.df, i64 noundef %i.de) #10 ; 0 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.dh = load i32, ptr %i.ci, align 8, !tbaa !47
  %i.di = zext i32 %i.dh to i64
  %i.dj = icmp samesign ult i64 %indvars.iv.next251, %i.di
  br i1 %i.dj, label %bb.q, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.q, %bb.o, %.preheader171
  %i.dk = load i32, ptr %i.cp, align 8, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.u
  %.5183 = phi i32 [ 0, %._crit_edge ], [ %i.dy, %bb.u ] ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !47 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !53
  %i.do = zext i32 %.5183 to i64                  ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !16 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, %i.ae
  br i1 %i.dr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.do
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !16
  %i.dw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %.5183, i32 noundef %i.dv) #10 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dx = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %.5183, i32 noundef %i.dq) #10 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dy = add i32 %.5183, 1                       ; 2 uses
  %.5.highbits = lshr i32 %i.dy, %i.dk
  %i.dz = icmp eq i32 %.5.highbits, 0
  br i1 %i.dz, label %bb.r, label %bb.v, !llvm.loop !29

bb.v:                                             ; preds = %bb.u
  br i1 %.not141, label %.loopexit168, label %.preheader169

.preheader169:                                    ; preds = %bb.v
  %i.ea = load i32, ptr %0, align 8, !tbaa !42
  %i.eb = load i32, ptr %i.ci, align 8, !tbaa !47
  %.not231 = icmp eq i32 %i.ea, %i.eb
  br i1 %.not231, label %.loopexit168, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader169
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aa, i64 432
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph185, %bb.w
  %indvars.iv253 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next254, %bb.w ] ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !47
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv253
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !16
  %i.eg = trunc nuw i64 %indvars.iv253 to i32
  %i.eh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.eg, i32 noundef %i.ef) #10 ; 0 uses
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.ei = load i32, ptr %0, align 8, !tbaa !42
  %i.ej = load i32, ptr %i.ci, align 8, !tbaa !47
  %i.ek = sub i32 %i.ei, %i.ej
  %i.el = zext i32 %i.ek to i64
  %i.em = icmp samesign ult i64 %indvars.iv.next254, %i.el
  br i1 %i.em, label %bb.w, label %.loopexit168, !llvm.loop !30

bb.x:                                             ; preds = %bb.e
  %i.en = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @.str.13) #10 ; 0 uses
  br label %.loopexit168

.loopexit168:                                     ; preds = %bb.w, %bb.n, %.preheader169, %.preheader167, %bb.v, %bb.m, %bb.x, %bb.f, %bb.e
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge196, label %bb.e, !llvm.loop !31

._crit_edge196:                                   ; preds = %.loopexit168
  %.not139 = icmp ugt i64 %5, 4294967295
  br i1 %.not139, label %.lr.ph227, label %.loopexit166

.lr.ph227:                                        ; preds = %._crit_edge196
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 524280 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 524284 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 524288
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 524296 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 524304
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 524312
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 524328
  %wide.trip.count283 = zext i32 %i.c to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph227, %.thread
  %indvars.iv280 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next281, %.thread ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [448 x i8], ptr %i.eo, i64 %indvars.iv280 ; 5 uses
  store i32 -1, ptr %i.ep, align 8, !tbaa !11
  store i32 0, ptr %i.eq, align 4, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i8 0, i64 16, i1 false)
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !50
  switch i32 %i.ex, label %.thread [
    i32 2, label %bb.z
    i32 3, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  %i.ey = load i32, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !47 ; 2 uses
  %i.fb = sub i32 %i.ey, %i.fa                    ; 2 uses
  %.not235 = icmp eq i32 %i.ey, %i.fa
  br i1 %.not235, label %.thread, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.z
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !47
  %wide.trip.count273 = zext i32 %i.fb to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph208, %update_stats.exit
  %8 = phi i32 [ -1, %.lr.ph208 ], [ %i.gf, %update_stats.exit ] ; 3 uses
  %i.fe = phi i32 [ 0, %.lr.ph208 ], [ %i.fx, %update_stats.exit ] ; 5 uses
  %indvars.iv270 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next271, %update_stats.exit ] ; 2 uses
  %i.ff = phi double [ 0.000000e+00, %.lr.ph208 ], [ %i.fl, %update_stats.exit ]
  %i.fg = phi double [ 0.000000e+00, %.lr.ph208 ], [ %i.fk, %update_stats.exit ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv270
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !16 ; 3 uses
  %i.fj = sitofp i32 %i.fi to double              ; 3 uses
  %i.fk = fadd double %i.fg, %i.fj                ; 2 uses
  %i.fl = call double @llvm.fmuladd.f64(double %i.fj, double %i.fj, double %i.ff) ; 2 uses
  %.not.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %wide.trip.count.i = zext i32 %i.fe to i64      ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ac ] ; 4 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !18
  %i.fo = icmp eq i32 %i.fn, %i.fi
  br i1 %i.fo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.fq = trunc nuw i64 %indvars.iv.i to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !19
  %i.ft = add i32 %i.fs, 1                        ; 2 uses
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !19
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !32

._crit_edge.i:                                    ; preds = %bb.ac, %bb.aa
  %.pre-phi.i = phi i64 [ 0, %bb.aa ], [ %wide.trip.count.i, %bb.ac ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.pre-phi.i ; 2 uses
  store i32 %i.fi, ptr %i.fu, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 1, ptr %i.fv, align 4, !tbaa !19
  %i.fw = add i32 %i.fe, 1                        ; 2 uses
  store i32 %i.fw, ptr %i.eq, align 4, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i, %bb.ab
  %i.fx = phi i32 [ %i.fe, %bb.ab ], [ %i.fw, %._crit_edge.i ] ; 2 uses
  %i.fy = phi i32 [ %i.ft, %bb.ab ], [ 1, %._crit_edge.i ]
  %.1.i = phi i32 [ %i.fq, %bb.ab ], [ %i.fe, %._crit_edge.i ] ; 2 uses
  %i.fz = icmp slt i32 %8, 0
  br i1 %i.fz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = zext nneg i32 %8 to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !19
  %i.ge = icmp ugt i32 %i.fy, %i.gd
  br i1 %i.ge, label %bb.af, label %update_stats.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 %.1.i, ptr %i.ep, align 8, !tbaa !11
  br label %update_stats.exit

update_stats.exit:                                ; preds = %bb.ae, %bb.af
  %i.gf = phi i32 [ %8, %bb.ae ], [ %.1.i, %bb.af ]
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %.loopexit, label %bb.aa, !llvm.loop !33

bb.ag:                                            ; preds = %bb.y
  %i.gg = load i32, ptr %0, align 8, !tbaa !42    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !47 ; 2 uses
  %i.gj = sub i32 %i.gg, %i.gi                    ; 2 uses
  %.not234 = icmp eq i32 %i.gg, %i.gi
  br i1 %.not234, label %.thread, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ew, i64 432
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !47
  %wide.trip.count268 = zext i32 %i.gj to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph200, %update_stats.exit153
  %9 = phi i32 [ -1, %.lr.ph200 ], [ %i.hn, %update_stats.exit153 ] ; 3 uses
  %i.gm = phi i32 [ 0, %.lr.ph200 ], [ %i.hf, %update_stats.exit153 ] ; 5 uses
  %indvars.iv265 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next266, %update_stats.exit153 ] ; 2 uses
  %i.gn = phi double [ 0.000000e+00, %.lr.ph200 ], [ %i.gt, %update_stats.exit153 ]
  %i.go = phi double [ 0.000000e+00, %.lr.ph200 ], [ %i.gs, %update_stats.exit153 ]
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv265
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !16 ; 3 uses
  %i.gr = sitofp i32 %i.gq to double              ; 3 uses
  %i.gs = fadd double %i.go, %i.gr                ; 2 uses
  %i.gt = call double @llvm.fmuladd.f64(double %i.gr, double %i.gr, double %i.gn) ; 2 uses
  %.not.i143 = icmp eq i32 %i.gm, 0
  br i1 %.not.i143, label %._crit_edge.i150, label %.lr.ph.preheader.i144

.lr.ph.preheader.i144:                            ; preds = %bb.ah
  %wide.trip.count.i145 = zext i32 %i.gm to i64   ; 2 uses
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %bb.aj, %.lr.ph.preheader.i144
  %indvars.iv.i147 = phi i64 [ 0, %.lr.ph.preheader.i144 ], [ %indvars.iv.next.i148, %bb.aj ] ; 4 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i147
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !18
  %i.gw = icmp eq i32 %i.gv, %i.gq
  br i1 %i.gw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i146
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i147
  %i.gy = trunc nuw i64 %indvars.iv.i147 to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !19
  %i.hb = add i32 %i.ha, 1                        ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !19
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i146
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i147, 1 ; 2 uses
  %exitcond.not.i149 = icmp eq i64 %indvars.iv.next.i148, %wide.trip.count.i145
  br i1 %exitcond.not.i149, label %._crit_edge.i150, label %.lr.ph.i146, !llvm.loop !32

._crit_edge.i150:                                 ; preds = %bb.aj, %bb.ah
  %.pre-phi.i151 = phi i64 [ 0, %bb.ah ], [ %wide.trip.count.i145, %bb.aj ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.pre-phi.i151 ; 2 uses
  store i32 %i.gq, ptr %i.hc, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 1, ptr %i.hd, align 4, !tbaa !19
  %i.he = add i32 %i.gm, 1                        ; 2 uses
  store i32 %i.he, ptr %i.eq, align 4, !tbaa !12
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i150, %bb.ai
  %i.hf = phi i32 [ %i.gm, %bb.ai ], [ %i.he, %._crit_edge.i150 ] ; 2 uses
  %i.hg = phi i32 [ %i.hb, %bb.ai ], [ 1, %._crit_edge.i150 ]
  %.1.i152 = phi i32 [ %i.gy, %bb.ai ], [ %i.gm, %._crit_edge.i150 ] ; 2 uses
  %i.hh = icmp slt i32 %9, 0
  br i1 %i.hh, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hi = zext nneg i32 %9 to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !19
  %i.hm = icmp ugt i32 %i.hg, %i.hl
  br i1 %i.hm, label %bb.am, label %update_stats.exit153

bb.am:                                            ; preds = %bb.al, %bb.ak
  store i32 %.1.i152, ptr %i.ep, align 8, !tbaa !11
  br label %update_stats.exit153

update_stats.exit153:                             ; preds = %bb.al, %bb.am
  %i.hn = phi i32 [ %9, %bb.al ], [ %.1.i152, %bb.am ]
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %.loopexit, label %bb.ah, !llvm.loop !34

.loopexit:                                        ; preds = %update_stats.exit153, %update_stats.exit
  %.sink = phi i32 [ %i.fb, %update_stats.exit ], [ %i.gj, %update_stats.exit153 ] ; 2 uses
  %.lcssa304.sink = phi double [ %i.fk, %update_stats.exit ], [ %i.gs, %update_stats.exit153 ] ; 4 uses
  %.lcssa303.sink = phi double [ %i.fl, %update_stats.exit ], [ %i.gt, %update_stats.exit153 ] ; 2 uses
  %i.ho = phi i32 [ %i.fx, %update_stats.exit ], [ %i.hf, %update_stats.exit153 ] ; 2 uses
  store i32 %.sink, ptr %i.er, align 8, !tbaa !13
  store double %.lcssa304.sink, ptr %i.es, align 8, !tbaa !20
  store double %.lcssa303.sink, ptr %i.et, align 8, !tbaa !21
  %.not236 = icmp eq i32 %i.ho, 0
  br i1 %.not236, label %bb.at, label %.lr.ph218

.lr.ph218:                                        ; preds = %.loopexit
  %.promoted220 = load i32, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524288), align 8, !tbaa !13
  %.promoted222 = load double, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524296), align 8, !tbaa !20
  %.promoted224 = load double, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524304), align 8, !tbaa !21
  %wide.trip.count278 = zext i32 %i.ho to i64
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524284), align 4, !tbaa !12
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph218, %update_stats.exit164
  %i.hp = phi i32 [ %.pre, %.lr.ph218 ], [ %i.io, %update_stats.exit164 ] ; 5 uses
  %indvars.iv275.a = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next276.a, %update_stats.exit164 ] ; 2 uses
  %i.hq = phi double [ %.promoted224, %.lr.ph218 ], [ %i.ic, %update_stats.exit164 ]
  %i.hr = phi double [ %.promoted222, %.lr.ph218 ], [ %i.ib, %update_stats.exit164 ]
  %i.hs = phi i32 [ %.promoted220, %.lr.ph218 ], [ %i.ia, %update_stats.exit164 ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv275.a ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !18 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !19 ; 5 uses
  %i.hx = sitofp i32 %i.hu to double              ; 2 uses
  %i.hy = uitofp i32 %i.hw to double
  %i.hz = fmul nnan double %i.hx, %i.hy           ; 2 uses
  %i.ia = add i32 %i.hs, %i.hw                    ; 2 uses
  %i.ib = fadd double %i.hz, %i.hr                ; 2 uses
  %i.ic = call double @llvm.fmuladd.f64(double %i.hz, double %i.hx, double %i.hq) ; 2 uses
  %.not.i154 = icmp eq i32 %i.hp, 0
  br i1 %.not.i154, label %._crit_edge.i161, label %.lr.ph.preheader.i155

.lr.ph.preheader.i155:                            ; preds = %bb.an
  %wide.trip.count.i156 = zext i32 %i.hp to i64   ; 2 uses
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.ap, %.lr.ph.preheader.i155
  %indvars.iv.i158 = phi i64 [ 0, %.lr.ph.preheader.i155 ], [ %indvars.iv.next.i159, %bb.ap ] ; 4 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr @all_, i64 %indvars.iv.i158
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !18
  %i.if = icmp eq i32 %i.ie, %i.hu
  br i1 %i.if, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i157
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr @all_, i64 %indvars.iv.i158
  %i.ih = trunc nuw i64 %indvars.iv.i158 to i32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !19
  %i.ik = add i32 %i.ij, %i.hw                    ; 2 uses
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !19
  br label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i157
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %indvars.iv.next.i159, %wide.trip.count.i156
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %.lr.ph.i157, !llvm.loop !32

._crit_edge.i161:                                 ; preds = %bb.ap, %bb.an
  %.pre-phi.i162 = phi i64 [ 0, %bb.an ], [ %wide.trip.count.i156, %bb.ap ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr @all_, i64 %.pre-phi.i162 ; 2 uses
  store i32 %i.hu, ptr %i.il, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store i32 %i.hw, ptr %i.im, align 4, !tbaa !19
  %i.in = add i32 %i.hp, 1                        ; 2 uses
  store i32 %i.in, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524284), align 4, !tbaa !12
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i161, %bb.ao
  %i.io = phi i32 [ %i.hp, %bb.ao ], [ %i.in, %._crit_edge.i161 ]
  %i.ip = phi i32 [ %i.ik, %bb.ao ], [ %i.hw, %._crit_edge.i161 ]
  %.1.i163 = phi i32 [ %i.ih, %bb.ao ], [ %i.hp, %._crit_edge.i161 ]
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524280), align 8, !tbaa !11 ; 2 uses
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.is = zext nneg i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr @all_, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !19
  %i.iw = icmp ugt i32 %i.ip, %i.iv
  br i1 %i.iw, label %bb.as, label %update_stats.exit164

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store i32 %.1.i163, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524280), align 8, !tbaa !11
  br label %update_stats.exit164

update_stats.exit164:                             ; preds = %bb.ar, %bb.as
  %indvars.iv.next276.a = add nuw nsw i64 %indvars.iv275.a, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276.a, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge219, label %bb.an, !llvm.loop !35

._crit_edge219:                                   ; preds = %update_stats.exit164
  store i32 %i.ia, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524288), align 8, !tbaa !13
  store double %i.ib, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524296), align 8, !tbaa !20
  store double %i.ic, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524304), align 8, !tbaa !21
  br label %bb.at

bb.at:                                            ; preds = %.loopexit, %._crit_edge219
  %i.ix = trunc nuw i64 %indvars.iv280 to i32
  %i.iy = call i32 (ptr, i64, ptr, ...) @flac_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.14, i32 noundef %1, i32 noundef %i.ix) #10 ; 0 uses
  %i.iz = uitofp i32 %.sink to double             ; 2 uses
  %i.ja = fmul double %.lcssa304.sink, %.lcssa304.sink
  %i.jb = fdiv double %i.ja, %i.iz
  %i.jc = fsub double %.lcssa303.sink, %i.jb
  %i.jd = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.je = insertelement <2 x double> %i.jd, double %.lcssa304.sink, i64 1
  %i.jf = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jh = fdiv <2 x double> %i.je, %i.jg          ; 2 uses
  store <2 x double> %i.jh, ptr %i.eu, align 8, !tbaa !22
  %i.ji = extractelement <2 x double> %i.jh, i64 0
  %i.jj = call double @sqrt(double noundef %i.ji) #10
  store double %i.jj, ptr %i.ev, align 8, !tbaa !23
  call fastcc void @dump_stats(ptr noundef nonnull %7, ptr noundef nonnull %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.z, %bb.y, %bb.at
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %.loopexit166, label %bb.y, !llvm.loop !36

.loopexit166:                                     ; preds = %.thread, %bb.d, %._crit_edge196
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @flac_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @dump_stats(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524320 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !56 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524328
  %i.d = load double, ptr %i.c, align 8, !tbaa !23 ; 7 uses
  %i.e = fmul double %i.d, 2.000000e+00           ; 2 uses
  %i.f = fmul double %i.d, 3.000000e+00           ; 2 uses
  %i.g = fmul double %i.d, 4.000000e+00           ; 2 uses
  %i.h = fmul double %i.d, 5.000000e+00           ; 2 uses
  %i.i = fmul double %i.d, 6.000000e+00           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 524280
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = uitofp i32 %i.o to double                ; 7 uses
  %i.q = tail call noalias ptr @fopen64(ptr noundef %1, ptr noundef nonnull @.str.16) ; 13 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.t = tail call ptr @__errno_location() #11
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16
  %i.v = tail call ptr @strerror(i32 noundef %i.u) #10
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef %i.v) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.x = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.18) #10 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 524284 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19
  %i.ae = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %i.ab, i32 noundef %i.ad) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr %i.y, align 4, !tbaa !12
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.20) #10 ; 0 uses
  %i.aj = load double, ptr %i.a, align 8, !tbaa !56
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.21, double noundef %i.aj, double noundef %i.p) #10 ; 0 uses
  %i.al = fsub double %i.b, %i.d
  %i.am = fmul nnan double %i.p, 8.000000e-01     ; 2 uses
  %i.an = fadd double %i.b, %i.d
  %i.ao = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.22, double noundef %i.al, double noundef %i.am, double noundef %i.an, double noundef %i.am) #10 ; 0 uses
  %i.ap = fsub double %i.b, %i.e
  %i.aq = fmul nnan double %i.p, f0x3FE6666666666666 ; 2 uses
  %i.ar = fadd double %i.b, %i.e
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.22, double noundef %i.ap, double noundef %i.aq, double noundef %i.ar, double noundef %i.aq) #10 ; 0 uses
  %i.at = fsub double %i.b, %i.f
  %i.au = fmul nnan double %i.p, 6.000000e-01     ; 2 uses
  %i.av = fadd double %i.b, %i.f
  %i.aw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.22, double noundef %i.at, double noundef %i.au, double noundef %i.av, double noundef %i.au) #10 ; 0 uses
  %i.ax = fsub double %i.b, %i.g
  %i.ay = fmul nnan double %i.p, 5.000000e-01     ; 2 uses
  %i.az = fadd double %i.b, %i.g
  %i.ba = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.22, double noundef %i.ax, double noundef %i.ay, double noundef %i.az, double noundef %i.ay) #10 ; 0 uses
  %i.bb = fsub double %i.b, %i.h
  %i.bc = fmul nnan double %i.p, 4.000000e-01     ; 2 uses
  %i.bd = fadd double %i.b, %i.h
  %i.be = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.22, double noundef %i.bb, double noundef %i.bc, double noundef %i.bd, double noundef %i.bc) #10 ; 0 uses
  %i.bf = fsub double %i.b, %i.i
  %i.bg = fmul nnan double %i.p, 3.000000e-01     ; 2 uses
  %i.bh = fadd double %i.b, %i.i
  %i.bi = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.22, double noundef %i.bf, double noundef %i.bg, double noundef %i.bh, double noundef %i.bg) #10 ; 0 uses
  %i.bj = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.q, i32 noundef 1, ptr noundef nonnull @.str.23) #10 ; 0 uses
  %i.bk = tail call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @flac__analyze_finish(i64 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %0, 4294967295
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524288), align 8 ; 2 uses
  %i.c = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524296), align 8, !tbaa !20 ; 3 uses
  %i.e = uitofp i32 %i.b to double                ; 2 uses
  %i.f = load double, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524304), align 8, !tbaa !21
  %i.g = fmul double %i.d, %i.d
  %i.h = fdiv double %i.g, %i.e
  %i.i = fsub double %i.f, %i.h
  %i.j = insertelement <2 x double> poison, double %i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.d, i64 1
  %i.l = insertelement <2 x double> poison, double %i.e, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = fdiv <2 x double> %i.k, %i.m             ; 2 uses
  store <2 x double> %i.n, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524312), align 8, !tbaa !22
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = tail call double @sqrt(double noundef %i.o) #10
  store double %i.p, ptr getelementptr inbounds nuw (i8, ptr @all_, i64 524328), align 8, !tbaa !23
  tail call fastcc void @dump_stats(ptr noundef nonnull @all_, ptr noundef nonnull @.str.15)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!"", !5, i64 0, !6, i64 524280, !6, i64 524284, !6, i64 524288, !9, i64 524296, !9, i64 524304, !9, i64 524312, !9, i64 524320, !9, i64 524328}
!11 = !{!10, !6, i64 524280}
!12 = !{!10, !6, i64 524284}
!13 = !{!10, !6, i64 524288}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!6, !6, i64 0}
!17 = !{!"", !6, i64 0, !6, i64 4}
!18 = !{!17, !6, i64 0}
!19 = !{!17, !6, i64 4}
!20 = !{!10, !9, i64 524296}
!21 = !{!10, !9, i64 524304}
!22 = !{!9, !9, i64 0}
end_hunk_0
