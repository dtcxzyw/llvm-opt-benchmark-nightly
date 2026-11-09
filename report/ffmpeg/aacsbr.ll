Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr?download=true
inline.NumInlined: 185
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ff_aac_sbr_apply:bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.l, i32 noundef %i.n, ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %i.j) #12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 166068
  store i32 0, ptr %i.o, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 166080
  store i32 0, ptr %i.p, align 16, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 166072
  store i32 0, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 166152
  store i32 32, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 166160
  store i32 0, ptr %i.s, align 16, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 269512
  store i32 -1, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 180760
  store i32 -1, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 166092
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.v, i8 -1, i64 6, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 166068
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 166068
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !43
  %i.x = icmp eq i32 %.pre, 0
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 166068 ; 4 uses
  br i1 %i.x, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 166072 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !44
  %.not161 = icmp eq i32 %i.aa, 0
  br i1 %.not161, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ac, i32 noundef 16, ptr noundef nonnull @.str.2) #12
  store i32 0, ptr %i.y, align 4, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 166080
  store i32 0, ptr %i.ad, align 16, !tbaa !23
  store i32 0, ptr %i.z, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 166152
  store i32 32, ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 166160
  store i32 0, ptr %i.af, align 16, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 269512
  store i32 -1, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 180760
  store i32 -1, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 166092
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.ai, i8 -1, i64 6, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.c, %bb.b
  %i.aj = phi ptr [ %i.y, %bb.d ], [ %i.y, %bb.c ], [ %i.y, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  %.not163 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ true, %bb.b ], [ true, %.thread ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 166164 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !41
  %.not162 = icmp eq i32 %i.al, 0
  br i1 %.not162, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 166148
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 166152
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !13
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 166156
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 166160
  %i.ar = load i32, ptr %i.aq, align 16, !tbaa !13
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.ak, align 4, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not163, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.g, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 166124
  %i.at = load i32, ptr %i.as, align 4, !tbaa !48
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 166276 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %.not137.i = icmp eq i32 %i.av, 0
  %i.aw = select i1 %.not137.i, i32 24, i32 12    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 166184 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !49 ; 2 uses
  %.not138174.i = icmp eq i32 %i.ay, 0
  br i1 %.not138174.i, label %.preheader170.i, label %.preheader172.lr.ph.i

.preheader172.lr.ph.i:                            ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 477792 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 166188
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 252656
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 341408
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 253088
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 341840
  br label %.preheader172.i

.preheader172.i:                                  ; preds = %._crit_edge.i, %.preheader172.lr.ph.i
  %i.bf = phi i32 [ %i.ay, %.preheader172.lr.ph.i ], [ %i.eh, %._crit_edge.i ]
  %indvars.iv199.i = phi i64 [ 1, %.preheader172.lr.ph.i ], [ %indvars.iv.next200.i, %._crit_edge.i ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv199.i ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !12  ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !13
  %.not193.i = icmp eq i32 %i.bk, 0
  br i1 %.not193.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader172.i
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %indvars.iv199.i
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %indvars.iv199.i ; 2 uses
  %i.bn = getelementptr inbounds nuw [192 x i8], ptr %i.bd, i64 %indvars.iv199.i
  %i.bo = getelementptr inbounds nuw [192 x i8], ptr %i.be, i64 %indvars.iv199.i
  br label %bb.l

.preheader170.i:                                  ; preds = %._crit_edge.i, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 166200
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !52 ; 2 uses
  %.not139179.i = icmp eq i32 %i.bq, 0
  br i1 %.not139179.i, label %sbr_dequant.exit, label %.preheader169.lr.ph.i

.preheader169.lr.ph.i:                            ; preds = %.preheader170.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 477800
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !45 ; 2 uses
  %.not194.i = icmp eq i32 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 254816
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 343568
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 254832
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 343584
  br i1 %.not194.i, label %sbr_dequant.exit, label %.preheader169.preheader.i

.preheader169.preheader.i:                        ; preds = %.preheader169.lr.ph.i
  %i.bx = add i32 %i.bq, 1
  %wide.trip.count208.i = zext i32 %i.bx to i64
  %wide.trip.count.i = zext i32 %i.bs to i64
  br label %.preheader169.i

bb.l:                                             ; preds = %bb.q, %.lr.ph.i
  %i.by = phi i8 [ %i.bh, %.lr.ph.i ], [ %i.dw, %bb.q ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 6 uses
  %i.bz = load i32, ptr %i.au, align 4, !tbaa !51
  %.not140.i = icmp eq i32 %i.bz, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !12  ; 5 uses
  br i1 %.not140.i, label %exp2fi.exit156.i, label %exp2fi.exit165.i

exp2fi.exit165.i:                                 ; preds = %bb.l
  %i.cc = zext i8 %i.cb to i32
  %or.cond.i163.i = icmp ult i8 %i.cb, 122
  %i.cd = shl nuw nsw i32 %i.cc, 23
  %i.ce = add nuw i32 %i.cd, 1124073472
  %i.cf = bitcast i32 %i.ce to float
  %.0.i164.i = select nsz i1 %or.cond.i163.i, float %i.cf, float +inf ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !12
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 %i.aw, %i.ci                ; 4 uses
  %i.ck = add nsw i32 %i.cj, 126
  %or.cond.i160.i = icmp ult i32 %i.ck, 255
  br i1 %or.cond.i160.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %exp2fi.exit165.i
  %i.cl = shl nsw i32 %i.cj, 23
  %i.cm = add nsw i32 %i.cl, 1065353216
  %i.cn = bitcast i32 %i.cm to float
  br label %exp2fi.exit162.i

bb.n:                                             ; preds = %exp2fi.exit165.i
  %i.co = icmp samesign ugt i32 %i.cj, -150
  br i1 %i.co, label %bb.o, label %exp2fi.exit162.i

bb.o:                                             ; preds = %bb.n
  %i.cp = add nsw i32 %i.cj, 149
  %i.cq = shl nuw nsw i32 1, %i.cp
  %i.cr = bitcast i32 %i.cq to float
  br label %exp2fi.exit162.i

exp2fi.exit156.i:                                 ; preds = %bb.l
  %i.cs = lshr i8 %i.cb, 1
  %narrow141.i = add nuw i8 %i.cs, 7
  %i.ct = zext i8 %narrow141.i to i32
  %or.cond.i157.i = icmp ult i8 %i.cb, -12
  %i.cu = shl nuw nsw i32 %i.ct, 23
  %i.cv = add nuw nsw i32 %i.cu, 1065353216
  %i.cw = bitcast i32 %i.cv to float
  %i.cx = fpext nsz float %i.cw to double
  %i.cy = select i1 %or.cond.i157.i, double %i.cx, double +inf
  %i.cz = and i8 %i.cb, 1
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @sbr_dequant.exp2_tab, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !247
  %i.dd = fmul nsz double %i.cy, %i.dc
  %i.de = fptrunc nsz double %i.dd to float
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !12  ; 2 uses
  %i.dh = zext i8 %i.dg to i32
  %i.di = sub nsw i32 %i.aw, %i.dh
  %i.dj = shl nsw i32 %i.di, 22
  %i.dk = and i32 %i.dj, -8388608
  %i.dl = add nsw i32 %i.dk, 1065353216
  %i.dm = bitcast i32 %i.dl to float
  %i.dn = fpext nnan nsz float %i.dm to double
  %i.do = and i8 %i.dg, 1
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @sbr_dequant.exp2_tab, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !247
  %i.ds = fmul nsz double %i.dr, %i.dn
  %i.dt = fptrunc nsz double %i.ds to float
  br label %exp2fi.exit162.i

exp2fi.exit162.i:                                 ; preds = %exp2fi.exit156.i, %bb.o, %bb.n, %bb.m
  %.0126.i = phi nsz float [ %i.de, %exp2fi.exit156.i ], [ %.0.i164.i, %bb.m ], [ %.0.i164.i, %bb.o ], [ %.0.i164.i, %bb.n ] ; 2 uses
  %.0.i = phi nsz float [ %i.dt, %exp2fi.exit156.i ], [ %i.cn, %bb.m ], [ %i.cr, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.du = fpext nsz float %.0126.i to double
  %i.dv = fcmp nsz ogt double %i.du, 1.000000e+20
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %exp2fi.exit162.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.32) #12
  %.pre.i = load i8, ptr %i.bg, align 1, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %exp2fi.exit162.i
  %i.dw = phi i8 [ %.pre.i, %bb.p ], [ %i.by, %exp2fi.exit162.i ] ; 2 uses
  %.1.i = phi nsz float [ 1.000000e+00, %bb.p ], [ %.0126.i, %exp2fi.exit162.i ]
  %i.dx = fadd nsz float %.0.i, 1.000000e+00
  %i.dy = fdiv nsz float %.1.i, %i.dx             ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  store float %i.dy, ptr %i.dz, align 4, !tbaa !26
  %i.ea = fmul nsz float %.0.i, %i.dy
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  store float %i.ea, ptr %i.eb, align 4, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ec = zext i8 %i.dw to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !13
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp samesign ult i64 %indvars.iv.next.i, %i.ef
  br i1 %i.eg, label %bb.l, label %._crit_edge.loopexit.i, !llvm.loop !189

._crit_edge.loopexit.i:                           ; preds = %bb.q
  %.pre231.i = load i32, ptr %i.ax, align 8, !tbaa !49
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader172.i
  %i.eh = phi i32 [ %.pre231.i, %._crit_edge.loopexit.i ], [ %i.bf, %.preheader172.i ] ; 2 uses
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1
  %i.ei = zext i32 %i.eh to i64
  %.not138.not.i = icmp samesign ult i64 %indvars.iv199.i, %i.ei
  br i1 %.not138.not.i, label %.preheader172.i, label %.preheader170.i, !llvm.loop !190

.preheader169.i:                                  ; preds = %._crit_edge178.i, %.preheader169.preheader.i
  %indvars.iv205.i = phi i64 [ 1, %.preheader169.preheader.i ], [ %indvars.iv.next206.i, %._crit_edge178.i ] ; 5 uses
  %i.ej = getelementptr inbounds nuw [5 x i8], ptr %i.bt, i64 %indvars.iv205.i
  %i.ek = getelementptr inbounds nuw [5 x i8], ptr %i.bu, i64 %indvars.iv205.i
  %i.el = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %indvars.iv205.i
  %i.em = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %indvars.iv205.i
  br label %bb.r

bb.r:                                             ; preds = %bb.z, %.preheader169.i
  %indvars.iv202.i = phi i64 [ 0, %.preheader169.i ], [ %indvars.iv.next203.i, %bb.z ] ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv202.i
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !12  ; 2 uses
  %i.ep = zext i8 %i.eo to i32                    ; 2 uses
  %i.eq = sub nsw i32 7, %i.ep                    ; 2 uses
  %or.cond.i151.i = icmp ult i8 %i.eo, -122
  br i1 %or.cond.i151.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.er = shl nsw i32 %i.eq, 23
  %i.es = add nsw i32 %i.er, 1065353216
  %i.et = bitcast i32 %i.es to float
  br label %exp2fi.exit153.i

bb.t:                                             ; preds = %bb.r
  %i.eu = icmp samesign ugt i32 %i.eq, -150
  br i1 %i.eu, label %bb.u, label %exp2fi.exit153.i

bb.u:                                             ; preds = %bb.t
  %i.ev = sub nsw i32 156, %i.ep
  %i.ew = shl nuw nsw i32 1, %i.ev
  %i.ex = bitcast i32 %i.ew to float
  br label %exp2fi.exit153.i

exp2fi.exit153.i:                                 ; preds = %bb.u, %bb.t, %bb.s
  %.0.i152.i = phi nsz float [ %i.et, %bb.s ], [ 0.000000e+00, %bb.t ], [ %i.ex, %bb.u ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv202.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !12  ; 2 uses
  %i.fa = zext i8 %i.ez to i32                    ; 2 uses
  %i.fb = sub nsw i32 12, %i.fa                   ; 2 uses
  %or.cond.i148.i = icmp ult i8 %i.ez, -117
  br i1 %or.cond.i148.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %exp2fi.exit153.i
  %i.fc = shl nsw i32 %i.fb, 23
  %i.fd = add nsw i32 %i.fc, 1065353216
  %i.fe = bitcast i32 %i.fd to float
  br label %exp2fi.exit150.i

bb.w:                                             ; preds = %exp2fi.exit153.i
  %i.ff = icmp samesign ugt i32 %i.fb, -150
  br i1 %i.ff, label %bb.x, label %exp2fi.exit150.i

bb.x:                                             ; preds = %bb.w
  %i.fg = sub nsw i32 161, %i.fa
  %i.fh = shl nuw nsw i32 1, %i.fg
  %i.fi = bitcast i32 %i.fh to float
  br label %exp2fi.exit150.i

exp2fi.exit150.i:                                 ; preds = %bb.x, %bb.w, %bb.v
  %.0.i149.i = phi nsz float [ %i.fe, %bb.v ], [ 0.000000e+00, %bb.w ], [ %i.fi, %bb.x ] ; 2 uses
  %i.fj = fpext nsz float %.0.i152.i to double
  %i.fk = fcmp nsz ugt double %i.fj, 1.000000e+20
  br i1 %i.fk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %exp2fi.exit150.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 120) #12
  tail call void @abort() #13
  unreachable

bb.z:                                             ; preds = %exp2fi.exit150.i
  %i.fl = fadd nsz float %.0.i149.i, 1.000000e+00
  %i.fm = fdiv nsz float %.0.i152.i, %i.fl        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv202.i
  store float %i.fm, ptr %i.fn, align 4, !tbaa !26
  %i.fo = fmul nsz float %.0.i149.i, %i.fm
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv202.i
  store float %i.fo, ptr %i.fp, align 4, !tbaa !26
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next203.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge178.i, label %bb.r, !llvm.loop !191

._crit_edge178.i:                                 ; preds = %bb.z
  %indvars.iv.next206.i = add nuw nsw i64 %indvars.iv205.i, 1 ; 2 uses
  %exitcond209.not.i = icmp eq i64 %indvars.iv.next206.i, %wide.trip.count208.i
  br i1 %exitcond209.not.i, label %sbr_dequant.exit, label %.preheader169.i, !llvm.loop !192

bb.aa:                                            ; preds = %bb.j, %bb.i
  %wide.trip.count229.i = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 166176
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 477792 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 477800
  br label %.preheader168.i

.preheader168.i:                                  ; preds = %._crit_edge191.split.i, %bb.aa
  %indvars.iv226.i = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next227.i, %._crit_edge191.split.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [88752 x i8], ptr %i.fq, i64 %indvars.iv226.i ; 8 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !49 ; 2 uses
  %.not134184.i = icmp eq i32 %i.fv, 0
  br i1 %.not134184.i, label %.preheader167.i, label %.preheader166.lr.ph.i

.preheader166.lr.ph.i:                            ; preds = %.preheader168.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 100
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 86480
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 86912
  br label %.preheader166.i

.preheader167.i:                                  ; preds = %._crit_edge183.i, %.preheader168.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !52 ; 2 uses
  %.not135189.i = icmp eq i32 %i.gb, 0
  br i1 %.not135189.i, label %._crit_edge191.split.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader167.i
  %i.gc = load i32, ptr %i.fs, align 8, !tbaa !45 ; 2 uses
  %.not196.i = icmp eq i32 %i.gc, 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ft, i64 88640
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 88656
  br i1 %.not196.i, label %._crit_edge191.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.gf = add i32 %i.gb, 1
  %wide.trip.count224.i = zext i32 %i.gf to i64
  %wide.trip.count219.i = zext i32 %i.gc to i64
  br label %.preheader.i

.preheader166.i:                                  ; preds = %._crit_edge183.i, %.preheader166.lr.ph.i
  %i.gg = phi i32 [ %i.fv, %.preheader166.lr.ph.i ], [ %i.hs, %._crit_edge183.i ]
  %indvars.iv213.i = phi i64 [ 1, %.preheader166.lr.ph.i ], [ %indvars.iv.next214.i, %._crit_edge183.i ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv213.i ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !12  ; 2 uses
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !13
  %.not195.i = icmp eq i32 %i.gl, 0
  br i1 %.not195.i, label %._crit_edge183.i, label %.lr.ph182.i

.lr.ph182.i:                                      ; preds = %.preheader166.i
  %i.gm = getelementptr inbounds nuw [48 x i8], ptr %i.fy, i64 %indvars.iv213.i
  %i.gn = getelementptr inbounds nuw [192 x i8], ptr %i.fz, i64 %indvars.iv213.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph182.i
  %i.go = phi i8 [ %i.gi, %.lr.ph182.i ], [ %i.hm, %bb.ae ]
  %indvars.iv210.i = phi i64 [ 0, %.lr.ph182.i ], [ %indvars.iv.next211.i, %bb.ae ] ; 3 uses
  %i.gp = load i32, ptr %i.fx, align 4, !tbaa !51
  %.not136.i = icmp eq i32 %i.gp, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv210.i
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !12  ; 5 uses
  br i1 %.not136.i, label %exp2fi.exit144.i, label %exp2fi.exit147.i

exp2fi.exit147.i:                                 ; preds = %bb.ab
  %i.gs = zext i8 %i.gr to i32
  %or.cond.i145.i = icmp ult i8 %i.gr, 123
  %i.gt = shl nuw nsw i32 %i.gs, 23
  %i.gu = add nuw i32 %i.gt, 1115684864
  %i.gv = bitcast i32 %i.gu to float
  %.0.i146.i = select nsz i1 %or.cond.i145.i, float %i.gv, float +inf
  br label %bb.ac

exp2fi.exit144.i:                                 ; preds = %bb.ab
  %i.gw = lshr i8 %i.gr, 1
  %narrow.i = add nuw i8 %i.gw, 6
  %i.gx = zext i8 %narrow.i to i32
  %or.cond.i142.i = icmp ult i8 %i.gr, -10
  %i.gy = shl nuw nsw i32 %i.gx, 23
  %i.gz = add nuw nsw i32 %i.gy, 1065353216
  %i.ha = bitcast i32 %i.gz to float
  %i.hb = fpext nsz float %i.ha to double
  %i.hc = select i1 %or.cond.i142.i, double %i.hb, double +inf
  %i.hd = and i8 %i.gr, 1
  %i.he = zext nneg i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr @sbr_dequant.exp2_tab, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !247
  %i.hh = fmul nsz double %i.hc, %i.hg
  %i.hi = fptrunc nsz double %i.hh to float
  br label %bb.ac

bb.ac:                                            ; preds = %exp2fi.exit144.i, %exp2fi.exit147.i
  %.sink.i = phi float [ %i.hi, %exp2fi.exit144.i ], [ %.0.i146.i, %exp2fi.exit147.i ] ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv210.i ; 2 uses
  store float %.sink.i, ptr %i.hj, align 4, !tbaa !26
  %i.hk = fpext nsz float %.sink.i to double
  %i.hl = fcmp nsz ogt double %i.hk, 1.000000e+20
  br i1 %i.hl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.32) #12
  store float 1.000000e+00, ptr %i.hj, align 4, !tbaa !26
  %.pre232.i = load i8, ptr %i.gh, align 1, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hm = phi i8 [ %i.go, %bb.ac ], [ %.pre232.i, %bb.ad ] ; 2 uses
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !13
  %i.hq = zext i32 %i.hp to i64
  %i.hr = icmp samesign ult i64 %indvars.iv.next211.i, %i.hq
  br i1 %i.hr, label %bb.ab, label %._crit_edge183.loopexit.i, !llvm.loop !193

._crit_edge183.loopexit.i:                        ; preds = %bb.ae
  %.pre233.i = load i32, ptr %i.fu, align 8, !tbaa !49
  br label %._crit_edge183.i

._crit_edge183.i:                                 ; preds = %._crit_edge183.loopexit.i, %.preheader166.i
  %i.hs = phi i32 [ %.pre233.i, %._crit_edge183.loopexit.i ], [ %i.gg, %.preheader166.i ] ; 2 uses
  %indvars.iv.next214.i = add nuw nsw i64 %indvars.iv213.i, 1
  %i.ht = zext i32 %i.hs to i64
  %.not134.not.i = icmp samesign ult i64 %indvars.iv213.i, %i.ht
  br i1 %.not134.not.i, label %.preheader166.i, label %.preheader167.i, !llvm.loop !194

.preheader.i:                                     ; preds = %._crit_edge188.i, %.preheader.preheader.i
  %indvars.iv221.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next222.i, %._crit_edge188.i ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [5 x i8], ptr %i.gd, i64 %indvars.iv221.i
  %i.hv = getelementptr inbounds nuw [20 x i8], ptr %i.ge, i64 %indvars.iv221.i
  br label %bb.af

bb.af:                                            ; preds = %exp2fi.exit.i, %.preheader.i
  %indvars.iv216.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next217.i, %exp2fi.exit.i ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %indvars.iv216.i
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !12  ; 2 uses
  %i.hy = zext i8 %i.hx to i32                    ; 2 uses
  %i.hz = sub nsw i32 6, %i.hy                    ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.hx, -123
  br i1 %or.cond.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ia = shl nsw i32 %i.hz, 23
  %i.ib = add nsw i32 %i.ia, 1065353216
  %i.ic = bitcast i32 %i.ib to float
  br label %exp2fi.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.id = icmp samesign ugt i32 %i.hz, -150
  br i1 %i.id, label %bb.ai, label %exp2fi.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.ie = sub nsw i32 155, %i.hy
  %i.if = shl nuw nsw i32 1, %i.ie
  %i.ig = bitcast i32 %i.if to float
  br label %exp2fi.exit.i

exp2fi.exit.i:                                    ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0.i.i = phi nsz float [ %i.ic, %bb.ag ], [ 0.000000e+00, %bb.ah ], [ %i.ig, %bb.ai ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv216.i
  store float %.0.i.i, ptr %i.ih, align 4, !tbaa !26
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond220.not.i = icmp eq i64 %indvars.iv.next217.i, %wide.trip.count219.i
  br i1 %exitcond220.not.i, label %._crit_edge188.i, label %bb.af, !llvm.loop !195

._crit_edge188.i:                                 ; preds = %exp2fi.exit.i
  %indvars.iv.next222.i = add nuw nsw i64 %indvars.iv221.i, 1 ; 2 uses
  %exitcond225.not.i = icmp eq i64 %indvars.iv.next222.i, %wide.trip.count224.i
  br i1 %exitcond225.not.i, label %._crit_edge191.split.i, label %.preheader.i, !llvm.loop !196

._crit_edge191.split.i:                           ; preds = %._crit_edge188.i, %.preheader.lr.ph.i, %.preheader167.i
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %sbr_dequant.exit, label %.preheader168.i, !llvm.loop !197

sbr_dequant.exit:                                 ; preds = %._crit_edge178.i, %._crit_edge191.split.i, %.preheader170.i, %.preheader169.lr.ph.i
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 166072
  store i32 0, ptr %i.ii, align 8, !tbaa !44
  br label %bb.aj

bb.aj:                                            ; preds = %sbr_dequant.exit, %bb.h
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 9536 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 559680
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 559688
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 559712 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 166176
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 558400 ; 7 uses
  %i.ip = shl nuw nsw i32 %i.h, 6
  %i.iq = zext nneg i32 %i.ip to i64              ; 2 uses
  %i.ir = shl nuw nsw i64 %i.iq, 2
  %i.is = shl nuw nsw i32 %i.h, 1
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 559736
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 558656
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 559744
  %wide.trip.count.i169 = zext nneg i32 %i.is to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 559824
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 478144 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 559848
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 547776 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 548288 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 166128
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 477800 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 488384 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 166152 ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 478128 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 478132
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 478138
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 478054 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 559776
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 166160 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 477792 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 477956 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 477906
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 548800 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 550336 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 477796 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 551872 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 166080
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 166072
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 269512
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 180760
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 166092
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 552256 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 166116
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 559720 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 477804
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 478066 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 553792
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 555328
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 556864
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 166112
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 559832
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 559840
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 508864 ; 4 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.bt
  %.not165 = phi i1 [ true, %bb.aj ], [ false, %bb.bt ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.aj ], [ 1, %bb.bt ] ; 4 uses
  %i.kk = load ptr, ptr %i.ij, align 16, !tbaa !12
  %i.kl = load ptr, ptr %i.ik, align 16, !tbaa !248
  %i.km = load ptr, ptr %i.il, align 8, !tbaa !249
  %i.kn = select i1 %.not165, ptr %4, ptr %5
  %i.ko = getelementptr inbounds nuw [88752 x i8], ptr %i.in, i64 %indvars.iv ; 27 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 9328 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 14608 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 30992 ; 6 uses
  %i.ks = load i32, ptr %i.kr, align 16, !tbaa !250
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1152) %i.kp, ptr noundef nonnull align 4 dereferenceable(1152) %i.kt, i64 1152, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 10480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ku, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.kn, i64 %i.ir, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  %i.kw = sext i32 %i.ks to i64
  %i.kx = getelementptr inbounds [8192 x i8], ptr %i.kq, i64 %i.kw
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.i170 = phi i64 [ 0, %bb.ak ], [ %indvars.iv.next.i171, %bb.al ] ; 2 uses
  %.02627.i = phi ptr [ %i.kp, %bb.ak ], [ %i.ld, %bb.al ] ; 2 uses
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !251
  tail call void %i.ky(ptr noundef nonnull %i.io, ptr noundef nonnull @sbr_qmf_window_ds, ptr noundef nonnull %.02627.i, i32 noundef 320) #12, !inline_history !198
  %i.kz = load ptr, ptr %i.im, align 16, !tbaa !252
  tail call void %i.kz(ptr noundef nonnull %i.io) #12, !inline_history !198
  %i.la = load ptr, ptr %i.it, align 8, !tbaa !253
  tail call void %i.la(ptr noundef nonnull %i.io) #12, !inline_history !198
  tail call void %i.km(ptr noundef %i.kl, ptr noundef nonnull %i.io, ptr noundef nonnull %i.iu, i64 noundef 4) #12, !inline_history !198
  %i.lb = load ptr, ptr %i.iv, align 16, !tbaa !254
  %i.lc = getelementptr inbounds nuw [256 x i8], ptr %i.kx, i64 %indvars.iv.i170
  tail call void %i.lb(ptr noundef nonnull %i.lc, ptr noundef nonnull %i.io) #12, !inline_history !198
  %i.ld = getelementptr inbounds nuw i8, ptr %.02627.i, i64 128
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i170, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count.i169
  br i1 %exitcond.not.i172, label %sbr_qmf_analysis.exit, label %bb.al, !llvm.loop !199

sbr_qmf_analysis.exit:                            ; preds = %bb.al
  %i.le = load ptr, ptr %i.iw, align 16, !tbaa !255
  %i.lf = load i32, ptr %i.kr, align 16, !tbaa !250
  %i.lg = tail call i32 %i.le(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ix, ptr noundef nonnull %i.kq, i32 noundef %i.lf, i32 noundef %i.h) #12 ; 0 uses
  %i.lh = load i32, ptr %i.kr, align 16, !tbaa !250
  %i.li = xor i32 %i.lh, 1
  store i32 %i.li, ptr %i.kr, align 16, !tbaa !250
  %i.lj = load i32, ptr %i.aj, align 4, !tbaa !43
  %.not166 = icmp eq i32 %i.lj, 0
  br i1 %.not166, label %bb.bt, label %bb.am

bb.am:                                            ; preds = %sbr_qmf_analysis.exit
  %i.lk = load ptr, ptr %i.iy, align 8, !tbaa !256
  %i.ll = load i32, ptr %i.jb, align 16, !tbaa !13
  tail call void %i.lk(ptr noundef nonnull %i.im, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.ja, ptr noundef nonnull %i.ix, i32 noundef %i.ll) #12
  %i.lm = load i32, ptr %i.jc, align 8, !tbaa !45 ; 2 uses
  %.not.i173 = icmp eq i32 %i.lm, 0
  br i1 %.not.i173, label %sbr_chirp.exit, label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %bb.am
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ko, i64 39
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ko, i64 44
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ko, i64 14588
  %wide.trip.count.i175 = zext i32 %i.lm to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.as, %.lr.ph.i174
  %indvars.iv.i176 = phi i64 [ 0, %.lr.ph.i174 ], [ %indvars.iv.next.i179, %bb.as ] ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %indvars.iv.i176
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !12  ; 2 uses
  %i.ls = zext i8 %i.lr to i32
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 %indvars.iv.i176
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !12
  %i.lv = zext i8 %i.lu to i32
  %i.lw = add nuw nsw i32 %i.lv, %i.ls
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ly = zext i8 %i.lr to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr @sbr_chirp.bw_tab, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i177 = phi nsz float [ %i.ma, %bb.ao ], [ 6.000000e-01, %bb.an ] ; 3 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i176 ; 2 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !26 ; 3 uses
  %i.md = fcmp nsz olt float %.0.i177, %i.mc
  br i1 %i.md, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.me = fmul nsz float %i.mc, 2.500000e-01
  %i.mf = tail call nsz float @llvm.fmuladd.f32(float %.0.i177, float 7.500000e-01, float %i.me)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.mg = fmul nsz float %i.mc, 9.375000e-02
  %i.mh = tail call nsz float @llvm.fmuladd.f32(float %.0.i177, float 9.062500e-01, float %i.mg)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i178 = phi nsz float [ %i.mf, %bb.aq ], [ %i.mh, %bb.ar ] ; 2 uses
  %i.mi = fcmp nsz olt float %.1.i178, 1.562500e-02
  %i.mj = select nsz i1 %i.mi, float 0.000000e+00, float %.1.i178
  store float %i.mj, ptr %i.mb, align 4, !tbaa !26
  %indvars.iv.next.i179 = add nuw nsw i64 %indvars.iv.i176, 1 ; 2 uses
  %exitcond.not.i180 = icmp eq i64 %indvars.iv.next.i179, %wide.trip.count.i175
  br i1 %exitcond.not.i180, label %sbr_chirp.exit, label %bb.an, !llvm.loop !200

sbr_chirp.exit:                                   ; preds = %bb.as, %bb.am
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 5 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !49 ; 2 uses
  %.not167 = icmp eq i32 %i.ml, 0
  br i1 %.not167, label %bb.at, label %bb.au

bb.at:                                            ; preds = %sbr_chirp.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1733) #12
  tail call void @abort() #13
  unreachable

bb.au:                                            ; preds = %sbr_chirp.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ko, i64 14588
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ko, i64 88716 ; 7 uses
  %i.mo = load i32, ptr %i.je, align 8, !tbaa !13 ; 3 uses
  %i.mp = load i32, ptr %i.jf, align 16, !tbaa !78 ; 2 uses
  %.not74.i = icmp eq i32 %i.mp, 0
  br i1 %.not74.i, label %._crit_edge72.i, label %.preheader.lr.ph.i182

.preheader.lr.ph.i182:                            ; preds = %bb.au
  %i.mq = sext i32 %i.ml to i64
  %i.mr = getelementptr inbounds i8, ptr %i.mn, i64 %i.mq
  br label %.preheader.i183

.preheader.i183:                                  ; preds = %._crit_edge.i190, %.preheader.lr.ph.i182
  %i.ms = phi i32 [ %i.mp, %.preheader.lr.ph.i182 ], [ %i.og, %._crit_edge.i190 ]
  %indvars.iv83.i = phi i64 [ 0, %.preheader.lr.ph.i182 ], [ %indvars.iv.next84.i, %._crit_edge.i190 ] ; 3 uses
  %.04571.i = phi i32 [ %i.mo, %.preheader.lr.ph.i182 ], [ %.1.lcssa.i, %._crit_edge.i190 ] ; 2 uses
  %.04670.i = phi i32 [ 0, %.preheader.lr.ph.i182 ], [ %.147.lcssa.i, %._crit_edge.i190 ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jg, i64 %indvars.iv83.i ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !12
  %.not75.i = icmp eq i8 %i.mu, 0
  br i1 %.not75.i, label %._crit_edge.i190, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.preheader.i183
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv83.i
  %i.mw = sext i32 %.04571.i to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %.lr.ph66.i
  %indvars.iv79.i = phi i64 [ %i.mw, %.lr.ph66.i ], [ %indvars.iv.next80.i, %bb.ay ] ; 4 uses
  %.14764.i = phi i32 [ %.04670.i, %.lr.ph66.i ], [ %i.nj, %bb.ay ] ; 3 uses
  %.04863.i = phi i32 [ 0, %.lr.ph66.i ], [ %i.ob, %bb.ay ] ; 2 uses
  %i.mx = load i8, ptr %i.mv, align 1, !tbaa !12
  %i.my = zext i8 %i.mx to i32
  %i.mz = add nuw nsw i32 %.04863.i, %i.my
  %i.na = load i32, ptr %i.jc, align 8, !tbaa !45 ; 2 uses
  %.not59.i = icmp ugt i32 %.14764.i, %i.na
  br i1 %.not59.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.av
  %i.nb = zext nneg i32 %.14764.i to i64
  br label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %bb.aw, %.lr.ph.preheader.i
  %indvars.iv.i185 = phi i64 [ %i.nb, %.lr.ph.preheader.i ], [ %indvars.iv.next.i186, %bb.aw ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %indvars.iv.i185
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !74
  %i.ne = zext i16 %i.nd to i64
  %.not55.i = icmp slt i64 %indvars.iv79.i, %i.ne
  br i1 %.not55.i, label %.critedge.loopexit.split.loop.exit92.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i184
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i185, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i186 to i32 ; 2 uses
  %.not.i187 = icmp ult i32 %i.na, %indvars.i
  br i1 %.not.i187, label %.critedge.i, label %.lr.ph.i184, !llvm.loop !201

.critedge.loopexit.split.loop.exit92.i:           ; preds = %.lr.ph.i184
  %i.nf = trunc nuw nsw i64 %indvars.iv.i185 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.aw, %.critedge.loopexit.split.loop.exit92.i, %bb.av
  %.2.lcssa.i = phi i32 [ %.14764.i, %bb.av ], [ %i.nf, %.critedge.loopexit.split.loop.exit92.i ], [ %indvars.i, %bb.aw ] ; 2 uses
  %i.ng = icmp sgt i32 %.2.lcssa.i, 0
  br i1 %i.ng, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i
  %i.nh = trunc nsw i64 %indvars.iv79.i to i32
  %i.ni = load ptr, ptr %i.jk, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ni, i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %i.nh) #12
  br label %sbr_hf_gen.exit

bb.ay:                                            ; preds = %.critedge.i
  %i.nj = add nsw i32 %.2.lcssa.i, -1             ; 3 uses
  %i.nk = load ptr, ptr %i.jj, align 16, !tbaa !257
  %i.nl = getelementptr inbounds [320 x i8], ptr %i.jd, i64 %indvars.iv79.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = zext nneg i32 %i.mz to i64              ; 3 uses
  %i.no = getelementptr inbounds nuw [320 x i8], ptr %i.ix, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.nn
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.nn
  %i.ns = zext nneg i32 %i.nj to i64
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ns
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !26
  %i.nv = load i8, ptr %i.mn, align 4, !tbaa !12
  %i.nw = zext i8 %i.nv to i32
  %i.nx = shl nuw nsw i32 %i.nw, 1
  %i.ny = load i8, ptr %i.mr, align 1, !tbaa !12
  %i.nz = zext i8 %i.ny to i32
  %i.oa = shl nuw nsw i32 %i.nz, 1
  tail call void %i.nk(ptr noundef nonnull %i.nm, ptr noundef nonnull %i.np, ptr noundef nonnull %i.nq, ptr noundef nonnull %i.nr, float noundef %i.nu, i32 noundef %i.nx, i32 noundef %i.oa) #12, !inline_history !202
  %i.ob = add nuw nsw i32 %.04863.i, 1            ; 2 uses
  %indvars.iv.next80.i = add nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %i.oc = load i8, ptr %i.mt, align 1, !tbaa !12
  %i.od = zext i8 %i.oc to i32
  %i.oe = icmp samesign ult i32 %i.ob, %i.od
  br i1 %i.oe, label %bb.av, label %._crit_edge.loopexit.i188, !llvm.loop !203

._crit_edge.loopexit.i188:                        ; preds = %bb.ay
  %i.of = trunc nsw i64 %indvars.iv.next80.i to i32
  %.pre.i189 = load i32, ptr %i.jf, align 16, !tbaa !78
  br label %._crit_edge.i190

._crit_edge.i190:                                 ; preds = %._crit_edge.loopexit.i188, %.preheader.i183
  %i.og = phi i32 [ %i.ms, %.preheader.i183 ], [ %.pre.i189, %._crit_edge.loopexit.i188 ] ; 2 uses
  %.147.lcssa.i = phi i32 [ %.04670.i, %.preheader.i183 ], [ %i.nj, %._crit_edge.loopexit.i188 ]
  %.1.lcssa.i = phi i32 [ %.04571.i, %.preheader.i183 ], [ %i.of, %._crit_edge.loopexit.i188 ] ; 2 uses
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %i.oh = zext i32 %i.og to i64
  %i.oi = icmp samesign ult i64 %indvars.iv.next84.i, %i.oh
  br i1 %i.oi, label %.preheader.i183, label %._crit_edge72.loopexit.i, !llvm.loop !204

._crit_edge72.loopexit.i:                         ; preds = %._crit_edge.i190
  %.pre87.i = load i32, ptr %i.je, align 8, !tbaa !13
  br label %._crit_edge72.i

._crit_edge72.i:                                  ; preds = %._crit_edge72.loopexit.i, %bb.au
  %i.oj = phi i32 [ %i.mo, %bb.au ], [ %.pre87.i, %._crit_edge72.loopexit.i ]
  %.045.lcssa.i = phi i32 [ %i.mo, %bb.au ], [ %.1.lcssa.i, %._crit_edge72.loopexit.i ] ; 3 uses
  %i.ok = load i32, ptr %i.jl, align 16, !tbaa !13
  %i.ol = add i32 %i.ok, %i.oj                    ; 2 uses
  %i.om = icmp ult i32 %.045.lcssa.i, %i.ol
  br i1 %i.om, label %bb.az, label %sbr_hf_gen.exit

bb.az:                                            ; preds = %._crit_edge72.i
  %i.on = sext i32 %.045.lcssa.i to i64
  %i.oo = getelementptr inbounds [320 x i8], ptr %i.jd, i64 %i.on
  %i.op = sub nuw i32 %i.ol, %.045.lcssa.i
  %i.oq = zext i32 %i.op to i64
  %i.or = mul nuw nsw i64 %i.oq, 320
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.oo, i8 0, i64 %i.or, i1 false)
  br label %sbr_hf_gen.exit

sbr_hf_gen.exit:                                  ; preds = %bb.ax, %._crit_edge72.i, %bb.az
  %i.os = getelementptr inbounds nuw i8, ptr %i.ko, i64 14580 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ko, i64 86048 ; 5 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ko, i64 86096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.ou, i8 0, i64 336, i1 false)
  %i.ov = load i32, ptr %i.mk, align 8, !tbaa !49 ; 2 uses
  %.not150.i = icmp eq i32 %i.ov, 0
  %.pre250 = load i32, ptr %i.je, align 8, !tbaa !13 ; 20 uses
  br i1 %.not150.i, label %.loopexit, label %.lr.ph148.i

.lr.ph148.i:                                      ; preds = %sbr_hf_gen.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ko, i64 86912
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ko, i64 88727
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ko, i64 88656
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ko, i64 49
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ko, i64 14584
  %invariant.op = sub i32 1, %.pre250
  %invariant.op576 = sub i32 2, %.pre250
  %invariant.op578 = sub i32 3, %.pre250
  %invariant.op580 = sub i32 1, %.pre250
  %invariant.op582 = sub i32 2, %.pre250
  %invariant.op584 = sub i32 3, %.pre250
  br label %bb.ba

.loopexit114.loopexit.i:                          ; preds = %._crit_edge137.i
  %.pre190.i = load i32, ptr %i.mk, align 8, !tbaa !49
  br label %.loopexit114.i

.loopexit114.i:                                   ; preds = %.preheader.i193, %.loopexit114.loopexit.i
  %i.pe = phi i32 [ %.pre190.i, %.loopexit114.loopexit.i ], [ %i.ph, %.preheader.i193 ] ; 3 uses
  %i.pf = zext i32 %i.pe to i64                   ; 2 uses
  %i.pg = icmp samesign ult i64 %indvars.iv.next185.i, %i.pf
  br i1 %i.pg, label %bb.ba, label %.loopexit, !llvm.loop !205

bb.ba:                                            ; preds = %.loopexit114.i, %.lr.ph148.i
  %i.ph = phi i32 [ %i.ov, %.lr.ph148.i ], [ %i.pe, %.loopexit114.i ]
  %indvars.iv184.i = phi i64 [ 0, %.lr.ph148.i ], [ %indvars.iv.next185.i, %.loopexit114.i ] ; 6 uses
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 6 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ow, i64 %indvars.iv.next185.i
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !12  ; 2 uses
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !13 ; 3 uses
  %.not.i191 = icmp eq i8 %i.pj, 0
  %i.pn = select i1 %.not.i191, ptr %i.jo, ptr %i.jn ; 4 uses
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !74 ; 2 uses
  %i.pp = zext i16 %i.po to i32
  %.not108.i = icmp eq i32 %.pre250, %i.pp
  br i1 %.not108.i, label %.preheader116.i, label %sbr_mapping.exit

.preheader116.i:                                  ; preds = %bb.ba
  %.not151.i = icmp eq i32 %i.pm, 0               ; 2 uses
  br i1 %.not151.i, label %._crit_edge.i192, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader116.i
  %i.pq = getelementptr inbounds nuw [192 x i8], ptr %i.ox, i64 %indvars.iv.next185.i
  %i.pr = getelementptr inbounds nuw [192 x i8], ptr %i.jp, i64 %indvars.iv184.i ; 6 uses
  %wide.trip.count159.i = zext i32 %i.pm to i64
  br label %bb.bb

.loopexit113.i:                                   ; preds = %scalar.ph542.prol.loopexit, %scalar.ph542, %middle.block551, %bb.bb
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count159.i
  br i1 %exitcond160.not.i, label %._crit_edge.i192, label %bb.bb, !llvm.loop !206

bb.bb:                                            ; preds = %.loopexit113.i, %.lr.ph125.i
  %i.ps = phi i16 [ %i.po, %.lr.ph125.i ], [ %i.pu, %.loopexit113.i ] ; 3 uses
  %indvars.iv156.i = phi i64 [ 0, %.lr.ph125.i ], [ %indvars.iv.next157.i, %.loopexit113.i ] ; 2 uses
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 3 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv.next157.i
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !74 ; 3 uses
  %i.pv = icmp ult i16 %i.ps, %i.pu
  br i1 %i.pv, label %.lr.ph.i195, label %.loopexit113.i

.lr.ph.i195:                                      ; preds = %bb.bb
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv156.i
  %i.px = zext i16 %i.ps to i64                   ; 6 uses
  %wide.trip.count.i196 = zext i16 %i.pu to i64   ; 5 uses
  %.pre.i197 = load float, ptr %i.pw, align 4, !tbaa !26 ; 6 uses
  %i.py = sub nsw i64 %wide.trip.count.i196, %i.px ; 3 uses
  %min.iters.check543 = icmp ult i64 %i.py, 20
  br i1 %min.iters.check543, label %scalar.ph542.preheader, label %vector.scevcheck541

vector.scevcheck541:                              ; preds = %.lr.ph.i195
  %i.pz = xor i64 %i.px, -1
  %i.qa = add nsw i64 %i.pz, %wide.trip.count.i196 ; 2 uses
  %i.qb = zext i16 %i.ps to i32
  %i.qc = trunc nsw i64 %i.qa to i32
  %i.qd = xor i32 %i.qb, -1
  %i.qe = add i32 %.pre250, %i.qd
  %i.qf = icmp ult i32 %i.qe, %i.qc
  %i.qg = icmp ugt i64 %i.qa, 4294967295
  %i.qh = or i1 %i.qf, %i.qg
  br i1 %i.qh, label %scalar.ph542.preheader, label %vector.ph544

vector.ph544:                                     ; preds = %vector.scevcheck541
  %n.vec545 = and i64 %i.py, -8                   ; 3 uses
  %i.qi = add nsw i64 %n.vec545, %i.px
  %broadcast.splatinsert546 = insertelement <4 x float> poison, float %.pre.i197, i64 0
  %broadcast.splat547 = shufflevector <4 x float> %broadcast.splatinsert546, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph544
  %index549 = phi i64 [ 0, %vector.ph544 ], [ %index.next550, %vector.body548 ] ; 2 uses
  %i.qj = add nuw i64 %index549, %i.px
  %i.qk = trunc nuw nsw i64 %i.qj to i32
  %i.ql = sub i32 %i.qk, %.pre250
  %i.qm = zext i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qm ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store <4 x float> %broadcast.splat547, ptr %i.qn, align 4, !tbaa !26
  store <4 x float> %broadcast.splat547, ptr %i.qo, align 4, !tbaa !26
  %index.next550 = add nuw i64 %index549, 8       ; 2 uses
  %i.qp = icmp eq i64 %index.next550, %n.vec545
  br i1 %i.qp, label %middle.block551, label %vector.body548, !llvm.loop !207

middle.block551:                                  ; preds = %vector.body548
  %cmp.n552 = icmp eq i64 %i.py, %n.vec545
  br i1 %cmp.n552, label %.loopexit113.i, label %scalar.ph542.preheader

scalar.ph542.preheader:                           ; preds = %vector.scevcheck541, %.lr.ph.i195, %middle.block551
  %indvars.iv.i198.ph = phi i64 [ %i.px, %vector.scevcheck541 ], [ %i.px, %.lr.ph.i195 ], [ %i.qi, %middle.block551 ] ; 4 uses
  %i.qq = sub nsw i64 %wide.trip.count.i196, %indvars.iv.i198.ph
  %xtraiter = and i64 %i.qq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph542.prol.loopexit, label %scalar.ph542.prol

scalar.ph542.prol:                                ; preds = %scalar.ph542.preheader, %scalar.ph542.prol
  %indvars.iv.i198.prol = phi i64 [ %indvars.iv.next.i199.prol, %scalar.ph542.prol ], [ %indvars.iv.i198.ph, %scalar.ph542.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph542.prol ], [ 0, %scalar.ph542.preheader ]
  %i.qr = trunc nuw nsw i64 %indvars.iv.i198.prol to i32
  %i.qs = sub i32 %i.qr, %.pre250
  %i.qt = zext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.qt
  store float %.pre.i197, ptr %i.qu, align 4, !tbaa !26
  %indvars.iv.next.i199.prol = add nuw nsw i64 %indvars.iv.i198.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph542.prol.loopexit, label %scalar.ph542.prol, !llvm.loop !208
end_hunk_0
begin_hunk_1_@ff_aac_sbr_apply:bb.a
  %prol.iter567.cmp.not = icmp eq i64 %prol.iter567.next, %xtraiter565
  br i1 %prol.iter567.cmp.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol, !llvm.loop !212

scalar.ph529.prol.loopexit:                       ; preds = %scalar.ph529.prol, %scalar.ph529.preheader
  %indvars.iv161.i.unr = phi i64 [ %indvars.iv161.i.ph, %scalar.ph529.preheader ], [ %indvars.iv.next162.i.prol, %scalar.ph529.prol ]
  %i.tb = sub nsw i64 %indvars.iv161.i.ph, %wide.trip.count164.i
  %i.tc = icmp ugt i64 %i.tb, -4
  br i1 %i.tc, label %.loopexit.i, label %scalar.ph529

scalar.ph529:                                     ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i.3, %scalar.ph529 ], [ %indvars.iv161.i.unr, %scalar.ph529.prol.loopexit ] ; 5 uses
  %i.td = trunc nuw nsw i64 %indvars.iv161.i to i32
  %i.te = sub i32 %i.td, %.pre250
  %i.tf = zext i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.tf
  store float %.pre188.i, ptr %i.tg, align 4, !tbaa !26
  %i.th = trunc i64 %indvars.iv161.i to i32
  %.reass581 = add i32 %i.th, %invariant.op580
  %i.ti = zext i32 %.reass581 to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.ti
  store float %.pre188.i, ptr %i.tj, align 4, !tbaa !26
  %i.tk = trunc i64 %indvars.iv161.i to i32
  %.reass583 = add i32 %i.tk, %invariant.op582
  %i.tl = zext i32 %.reass583 to i64
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.tl
  store float %.pre188.i, ptr %i.tm, align 4, !tbaa !26
  %i.tn = trunc i64 %indvars.iv161.i to i32
  %.reass585 = add i32 %i.tn, %invariant.op584
  %i.to = zext i32 %.reass585 to i64
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.to
  store float %.pre188.i, ptr %i.tp, align 4, !tbaa !26
  %indvars.iv.next162.i.3 = add nuw nsw i64 %indvars.iv161.i, 4 ; 2 uses
  %exitcond165.not.i.3 = icmp eq i64 %indvars.iv.next162.i.3, %wide.trip.count164.i
  br i1 %exitcond165.not.i.3, label %.loopexit.i, label %scalar.ph529, !llvm.loop !213

.preheader.i193:                                  ; preds = %.lr.ph133.split._crit_edge.i, %.lr.ph133.i, %.preheader115.i
  br i1 %.not151.i, label %.loopexit114.i, label %.lr.ph145.i

.lr.ph145.i:                                      ; preds = %.preheader.i193
  %i.tq = getelementptr inbounds nuw [48 x i8], ptr %i.ot, i64 %indvars.iv.next185.i
  %i.tr = getelementptr inbounds nuw [48 x i8], ptr %i.js, i64 %indvars.iv184.i
  %wide.trip.count182.i = zext i32 %i.pm to i64
  br label %bb.bg

.lr.ph133.split.i:                                ; preds = %.lr.ph133.split.i.preheader, %.lr.ph133.split._crit_edge.i
  %indvars.iv171.i = phi i64 [ %indvars.iv.next172.i, %.lr.ph133.split._crit_edge.i ], [ 0, %.lr.ph133.split.i.preheader ] ; 3 uses
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv171.i ; 2 uses
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !74
  %i.tu = zext i16 %i.tt to i32
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !74
  %i.tx = zext i16 %i.tw to i32
  %i.ty = add nuw nsw i32 %i.tx, %i.tu
  %i.tz = lshr i32 %i.ty, 1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.pc, i64 %indvars.iv171.i
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !12  ; 2 uses
  %i.uc = sub i32 %i.tz, %.pre250
  %i.ud = zext i32 %i.uc to i64                   ; 2 uses
  br i1 %.not111.i, label %bb.bf, label %.lr.ph133.split._crit_edge.i

bb.bf:                                            ; preds = %.lr.ph133.split.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !12
  %i.ug = icmp eq i8 %i.uf, 1
  %i.uh = select i1 %i.ug, i8 %i.ub, i8 0
  br label %.lr.ph133.split._crit_edge.i

.lr.ph133.split._crit_edge.i:                     ; preds = %bb.bf, %.lr.ph133.split.i
  %i.ui = phi i8 [ %i.uh, %bb.bf ], [ %i.ub, %.lr.ph133.split.i ]
  %i.uj = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.ud
  store i8 %i.ui, ptr %i.uj, align 1, !tbaa !12
  %indvars.iv.next172.i = add nuw nsw i64 %indvars.iv171.i, 1 ; 2 uses
  %i.uk = load i32, ptr %i.jr, align 4, !tbaa !13
  %i.ul = zext i32 %i.uk to i64
  %i.um = icmp samesign ult i64 %indvars.iv.next172.i, %i.ul
  br i1 %i.um, label %.lr.ph133.split.i, label %.preheader.i193, !llvm.loop !214

bb.bg:                                            ; preds = %._crit_edge137.i, %.lr.ph145.i
  %indvars.iv179.i = phi i64 [ 0, %.lr.ph145.i ], [ %indvars.iv.next180.i, %._crit_edge137.i ] ; 2 uses
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv179.i
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !74 ; 3 uses
  %i.up = zext i16 %i.uo to i32                   ; 2 uses
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 3 uses
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %i.pn, i64 %indvars.iv.next180.i
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !74 ; 3 uses
  %i.us = zext i16 %i.ur to i32
  %i.ut = icmp ult i16 %i.uo, %i.ur
  br i1 %i.ut, label %.lr.ph136.i, label %._crit_edge137.i

.lr.ph136.i:                                      ; preds = %bb.bg
  %i.uu = zext i16 %i.uo to i64
  %wide.trip.count177.i = zext i16 %i.ur to i64
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next175.i = add nuw nsw i64 %indvars.iv174.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next175.i, %wide.trip.count177.i
  br i1 %exitcond178.not.i, label %._crit_edge137.i, label %bb.bi, !llvm.loop !215

bb.bi:                                            ; preds = %bb.bh, %.lr.ph136.i
  %indvars.iv174.i = phi i64 [ %i.uu, %.lr.ph136.i ], [ %indvars.iv.next175.i, %bb.bh ] ; 2 uses
  %i.uv = trunc nuw nsw i64 %indvars.iv174.i to i32
  %i.uw = sub i32 %i.uv, %.pre250
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !12
  %.not109.i = icmp eq i8 %i.uz, 0
  br i1 %.not109.i, label %bb.bh, label %._crit_edge137.i

._crit_edge137.i:                                 ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0.i194 = phi i8 [ 0, %bb.bg ], [ 0, %bb.bh ], [ 1, %bb.bi ]
  %i.va = sub nsw i32 %i.up, %.pre250
  %i.vb = zext i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.vb
  %i.vd = sub nsw i32 %i.us, %i.up
  %i.ve = sext i32 %i.vd to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.vc, i8 %.0.i194, i64 %i.ve, i1 false)
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %wide.trip.count182.i
  br i1 %exitcond183.not.i, label %.loopexit114.loopexit.i, label %bb.bg, !llvm.loop !216

sbr_mapping.exit:                                 ; preds = %bb.ba
  %i.vf = load ptr, ptr %i.jk, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vf, i32 noundef 16, ptr noundef nonnull @.str.36) #12
  store i32 0, ptr %i.aj, align 4, !tbaa !43
  store i32 0, ptr %i.jt, align 16, !tbaa !23
  store i32 0, ptr %i.ju, align 8, !tbaa !44
  store i32 32, ptr %i.je, align 8, !tbaa !13
  store i32 0, ptr %i.jl, align 16, !tbaa !13
  store i32 -1, ptr %i.jv, align 8, !tbaa !13
  store i32 -1, ptr %i.jw, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.jx, i8 -1, i64 6, i1 false)
  br label %bb.bt

.loopexit:                                        ; preds = %.loopexit114.i, %sbr_hf_gen.exit
  %i.vg = phi i32 [ 0, %sbr_hf_gen.exit ], [ %i.pe, %.loopexit114.i ] ; 3 uses
  %.lcssa120.i = phi i64 [ 0, %sbr_hf_gen.exit ], [ %i.pf, %.loopexit114.i ]
  %i.vh = getelementptr inbounds nuw [48 x i8], ptr %i.ot, i64 %.lcssa120.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ot, ptr noundef nonnull align 16 dereferenceable(48) %i.vh, i64 48, i1 false)
  %i.vi = load i32, ptr %i.jz, align 4, !tbaa !72
  %.not.i201 = icmp eq i32 %i.vi, 0
  %.not95120.not.i = icmp eq i32 %i.vg, 0         ; 2 uses
  br i1 %.not.i201, label %.preheader100.i, label %.preheader103.i

.preheader103.i:                                  ; preds = %.loopexit
  br i1 %.not95120.not.i, label %sbr_gain_calc.exit, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader103.i
  %i.vj = sext i32 %.pre250 to i64
  %invariant.gep156.i = getelementptr [320 x i8], ptr %i.jd, i64 %i.vj
  br label %bb.bj

.preheader100.i:                                  ; preds = %.loopexit
  br i1 %.not95120.not.i, label %sbr_gain_calc.exit, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %.preheader100.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.vl = sext i32 %.pre250 to i64                ; 2 uses
  br label %bb.bl

.loopexit102.loopexit.i:                          ; preds = %bb.bk
  %.pre.i206 = load i32, ptr %i.mk, align 8, !tbaa !49
  br label %.loopexit102.i

.loopexit102.i:                                   ; preds = %.preheader101.i, %.loopexit102.loopexit.i
  %i.vm = phi i32 [ %.pre.i206, %.loopexit102.loopexit.i ], [ %i.vp, %.preheader101.i ] ; 3 uses
  %i.vn = zext i32 %i.vm to i64
  %i.vo = icmp samesign ult i64 %indvars.iv.next132.i, %i.vn
  br i1 %i.vo, label %bb.bj, label %sbr_env_estimate.exit, !llvm.loop !217

bb.bj:                                            ; preds = %.loopexit102.i, %.lr.ph107.i
  %i.vp = phi i32 [ %i.vg, %.lr.ph107.i ], [ %i.vm, %.loopexit102.i ] ; 2 uses
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph107.i ], [ %indvars.iv.next132.i, %.loopexit102.i ] ; 3 uses
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.next132.i
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !12
  %i.vs = zext i8 %i.vr to i32
  %i.vt = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv131.i
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !12  ; 2 uses
  %i.vv = zext i8 %i.vu to i32                    ; 2 uses
  %i.vw = sub nsw i32 %i.vs, %i.vv                ; 2 uses
  %i.vx = sitofp nsz i32 %i.vw to float
  %i.vy = fdiv nnan nsz float 5.000000e-01, %i.vx
  %i.vz = shl nuw nsw i32 %i.vv, 1
  %i.wa = icmp ult i8 %i.vu, 19
  br i1 %i.wa, label %.preheader101.i, label %sbr_env_estimate.exit

.preheader101.i:                                  ; preds = %bb.bj
  %i.wb = load i32, ptr %i.jl, align 16, !tbaa !13
  %.not125.i = icmp eq i32 %i.wb, 0
  br i1 %.not125.i, label %.loopexit102.i, label %.lr.ph.i203

.lr.ph.i203:                                      ; preds = %.preheader101.i
  %i.wc = zext nneg i32 %i.vz to i64
  %i.wd = shl nsw i32 %i.vw, 1
  %i.we = getelementptr inbounds nuw [192 x i8], ptr %i.jy, i64 %indvars.iv131.i
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep156.i, i64 %i.wc
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i203
  %indvars.iv.i204 = phi i64 [ 0, %.lr.ph.i203 ], [ %indvars.iv.next.i205, %bb.bk ] ; 3 uses
  %i.wf = load ptr, ptr %i.ka, align 8, !tbaa !258
  %gep155.i = getelementptr [320 x i8], ptr %gep.i, i64 %indvars.iv.i204
  %i.wg = getelementptr inbounds nuw i8, ptr %gep155.i, i64 16
  %i.wh = tail call nsz float %i.wf(ptr noundef nonnull %i.wg, i32 noundef %i.wd) #12, !inline_history !218
  %i.wi = fmul nsz float %i.vy, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv.i204
  store float %i.wi, ptr %i.wj, align 4, !tbaa !26
  %indvars.iv.next.i205 = add nuw nsw i64 %indvars.iv.i204, 1 ; 2 uses
  %i.wk = load i32, ptr %i.jl, align 16, !tbaa !13
  %i.wl = trunc nuw nsw i64 %indvars.iv.next.i205 to i32
  %i.wm = icmp ugt i32 %i.wk, %i.wl
  br i1 %i.wm, label %bb.bk, label %.loopexit102.loopexit.i, !llvm.loop !219

.loopexit99.loopexit.i:                           ; preds = %.loopexit.i209
  %.pre147.i = load i32, ptr %i.mk, align 8, !tbaa !49
  br label %.loopexit99.i

.loopexit99.i:                                    ; preds = %.preheader.i207, %.loopexit99.loopexit.i
  %i.wn = phi i32 [ %.pre147.i, %.loopexit99.loopexit.i ], [ %i.wp, %.preheader.i207 ] ; 3 uses
  %i.wo = zext i32 %i.wn to i64
  %.not95.i = icmp samesign ult i64 %indvars.iv.next144.i, %i.wo
  br i1 %.not95.i, label %bb.bl, label %sbr_env_estimate.exit, !llvm.loop !220

bb.bl:                                            ; preds = %.loopexit99.i, %.lr.ph122.i
  %i.wp = phi i32 [ %i.vg, %.lr.ph122.i ], [ %i.wn, %.loopexit99.i ] ; 2 uses
  %indvars.iv143.i = phi i64 [ 0, %.lr.ph122.i ], [ %indvars.iv.next144.i, %.loopexit99.i ] ; 3 uses
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv.next144.i
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !12
  %i.ws = zext i8 %i.wr to i32
  %i.wt = getelementptr inbounds nuw i8, ptr %i.mn, i64 %indvars.iv143.i
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !12  ; 2 uses
  %i.wv = zext i8 %i.wu to i32                    ; 2 uses
  %i.ww = sub nsw i32 %i.ws, %i.wv
  %i.wx = shl nsw i32 %i.ww, 1                    ; 2 uses
  %i.wy = shl nuw nsw i32 %i.wv, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vk, i64 %indvars.iv.next144.i ; 2 uses
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !12  ; 2 uses
  %.not94.i = icmp eq i8 %i.xa, 0
  %.v.i = select i1 %.not94.i, i64 311842, i64 311892
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.v.i ; 3 uses
  %i.xc = icmp ult i8 %i.wu, 19
  br i1 %i.xc, label %.preheader.i207, label %sbr_env_estimate.exit

.preheader.i207:                                  ; preds = %bb.bl
  %i.xd = zext i8 %i.xa to i64
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !13
  %.not126.i = icmp eq i32 %i.xf, 0
  br i1 %.not126.i, label %.loopexit99.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.preheader.i207
  %i.xg = zext nneg i32 %i.wy to i64
  %invariant.gep113.i = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.xg
  %i.xh = getelementptr inbounds nuw [192 x i8], ptr %i.jy, i64 %indvars.iv143.i ; 2 uses
  %.pre146.i = load i16, ptr %i.xb, align 2, !tbaa !74
  br label %bb.bm

.loopexit.i209:                                   ; preds = %.lr.ph117.i, %middle.block526, %._crit_edge.i208
  %i.xi = load i8, ptr %i.wz, align 1, !tbaa !12
  %i.xj = zext i8 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.xj
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !13
  %i.xm = zext i32 %i.xl to i64
  %i.xn = icmp samesign ult i64 %indvars.iv.next141.i, %i.xm
  br i1 %i.xn, label %bb.bm, label %.loopexit99.loopexit.i, !llvm.loop !221

bb.bm:                                            ; preds = %.loopexit.i209, %.lr.ph119.i
  %i.xo = phi i16 [ %.pre146.i, %.lr.ph119.i ], [ %i.yg, %.loopexit.i209 ] ; 3 uses
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph119.i ], [ %indvars.iv.next141.i, %.loopexit.i209 ] ; 2 uses
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 3 uses
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %i.xb, i64 %indvars.iv.next141.i ; 2 uses
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !74 ; 3 uses
  %i.xr = zext i16 %i.xq to i32                   ; 2 uses
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xb, i64 %indvars.iv140.i
  %i.xt = zext i16 %i.xo to i32
  %i.xu = sub nsw i32 %i.xr, %i.xt
  %i.xv = mul nsw i32 %i.xu, %i.wx
  %i.xw = icmp ult i16 %i.xo, %i.xq
  br i1 %i.xw, label %.lr.ph111.preheader.i, label %._crit_edge.i208

.lr.ph111.preheader.i:                            ; preds = %bb.bm
  %i.xx = zext i16 %i.xo to i64
  br label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph111.i, %.lr.ph111.preheader.i
  %indvars.iv134.i = phi i64 [ %i.xx, %.lr.ph111.preheader.i ], [ %indvars.iv.next135.i, %.lr.ph111.i ] ; 2 uses
  %.0110.i = phi float [ 0.000000e+00, %.lr.ph111.preheader.i ], [ %i.yb, %.lr.ph111.i ]
  %i.xy = load ptr, ptr %i.ka, align 8, !tbaa !258
  %gep114.i = getelementptr inbounds nuw [320 x i8], ptr %invariant.gep113.i, i64 %indvars.iv134.i
  %i.xz = getelementptr inbounds nuw i8, ptr %gep114.i, i64 16
  %i.ya = tail call nsz float %i.xy(ptr noundef nonnull %i.xz, i32 noundef %i.wx) #12, !inline_history !218
  %i.yb = fadd nsz float %.0110.i, %i.ya          ; 2 uses
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1 ; 2 uses
  %i.yc = load i16, ptr %i.xp, align 2, !tbaa !74 ; 3 uses
  %i.yd = zext i16 %i.yc to i64
  %i.ye = icmp samesign ult i64 %indvars.iv.next135.i, %i.yd
  br i1 %i.ye, label %.lr.ph111.i, label %._crit_edge.loopexit.i212, !llvm.loop !222

._crit_edge.loopexit.i212:                        ; preds = %.lr.ph111.i
  %i.yf = zext i16 %i.yc to i32
  br label %._crit_edge.i208

._crit_edge.i208:                                 ; preds = %._crit_edge.loopexit.i212, %bb.bm
  %i.yg = phi i16 [ %i.xq, %bb.bm ], [ %i.yc, %._crit_edge.loopexit.i212 ]
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.bm ], [ %i.yb, %._crit_edge.loopexit.i212 ]
  %.lcssa.i = phi i32 [ %i.xr, %bb.bm ], [ %i.yf, %._crit_edge.loopexit.i212 ] ; 2 uses
  %i.yh = sitofp nsz i32 %i.xv to float
  %i.yi = fdiv nsz float %.0.lcssa.i, %i.yh       ; 2 uses
  %i.yj = load i16, ptr %i.xs, align 2, !tbaa !74 ; 2 uses
  %i.yk = zext i16 %i.yj to i32
  %i.yl = icmp samesign ugt i32 %.lcssa.i, %i.yk
  br i1 %i.yl, label %.lr.ph117.preheader.i, label %.loopexit.i209

.lr.ph117.preheader.i:                            ; preds = %._crit_edge.i208
  %i.ym = zext i16 %i.yj to i64                   ; 4 uses
  %wide.trip.count.i210 = zext nneg i32 %.lcssa.i to i64 ; 2 uses
  %i.yn = sub nsw i64 %wide.trip.count.i210, %i.ym ; 3 uses
  %min.iters.check518 = icmp ult i64 %i.yn, 8
  br i1 %min.iters.check518, label %.lr.ph117.i.preheader, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph117.preheader.i
  %n.vec520 = and i64 %i.yn, -8                   ; 3 uses
  %i.yo = add nsw i64 %n.vec520, %i.ym
  %broadcast.splatinsert521 = insertelement <4 x float> poison, float %i.yi, i64 0
  %broadcast.splat522 = shufflevector <4 x float> %broadcast.splatinsert521, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op586 = sub i64 %i.ym, %i.vl
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph519
  %index524 = phi i64 [ 0, %vector.ph519 ], [ %index.next525, %vector.body523 ] ; 2 uses
  %.reass587 = add i64 %index524, %invariant.op586
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %.reass587 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  store <4 x float> %broadcast.splat522, ptr %i.yp, align 4, !tbaa !26
  store <4 x float> %broadcast.splat522, ptr %i.yq, align 4, !tbaa !26
  %index.next525 = add nuw i64 %index524, 8       ; 2 uses
  %i.yr = icmp eq i64 %index.next525, %n.vec520
  br i1 %i.yr, label %middle.block526, label %vector.body523, !llvm.loop !223

middle.block526:                                  ; preds = %vector.body523
  %cmp.n527 = icmp eq i64 %i.yn, %n.vec520
  br i1 %cmp.n527, label %.loopexit.i209, label %.lr.ph117.i.preheader

.lr.ph117.i.preheader:                            ; preds = %.lr.ph117.preheader.i, %middle.block526
  %indvars.iv137.i.ph = phi i64 [ %i.ym, %.lr.ph117.preheader.i ], [ %i.yo, %middle.block526 ]
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.preheader, %.lr.ph117.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.lr.ph117.i ], [ %indvars.iv137.i.ph, %.lr.ph117.i.preheader ] ; 2 uses
  %i.ys = sub nsw i64 %indvars.iv137.i, %i.vl
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.ys
  store float %i.yi, ptr %i.yt, align 4, !tbaa !26
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond.not.i211 = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count.i210
  br i1 %exitcond.not.i211, label %.loopexit.i209, label %.lr.ph117.i, !llvm.loop !224

sbr_env_estimate.exit:                            ; preds = %.loopexit102.i, %bb.bj, %.loopexit99.i, %bb.bl
  %.pr = phi i32 [ %i.wn, %.loopexit99.i ], [ %i.wp, %bb.bl ], [ %i.vm, %.loopexit102.i ], [ %i.vp, %bb.bj ] ; 2 uses
  %.not.i213 = icmp eq i32 %.pr, 0
  br i1 %.not.i213, label %sbr_gain_calc.exit, label %.lr.ph224.i

.lr.ph224.i:                                      ; preds = %sbr_env_estimate.exit
  %i.yu = load i32, ptr %i.kb, align 4, !tbaa !82 ; 2 uses
  %.not226.i = icmp eq i32 %i.yu, 0
  br i1 %.not226.i, label %sbr_gain_calc.exit, label %.lr.ph224.split.us.i

.lr.ph224.split.us.i:                             ; preds = %.lr.ph224.i
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ko, i64 14584
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !13
  %i.yx = load i32, ptr %i.je, align 8, !tbaa !13 ; 2 uses
  %i.yy = load i32, ptr %i.kg, align 16, !tbaa !71
  %i.yz = zext i32 %i.yy to i64
  %i.za = getelementptr inbounds nuw [4 x i8], ptr @sbr_gain_calc.limgain, i64 %i.yz
  %i.zb = load float, ptr %i.za, align 4, !tbaa !26
  %i.zc = zext i32 %i.yw to i64
  %wide.trip.count250.i = zext i32 %.pr to i64
  %wide.trip.count.i214 = zext i32 %i.yu to i64
  %.pre.i215 = load i16, ptr %i.kc, align 2, !tbaa !74
  %i.zd = mul nuw nsw i64 %indvars.iv, 88752      ; 2 uses
  %i.ze = getelementptr i8, ptr %1, i64 %i.zd
  %i.zf = getelementptr i8, ptr %i.ze, i64 252272
  %i.zg = getelementptr i8, ptr %1, i64 %i.zd
  %i.zh = getelementptr i8, ptr %i.zg, i64 252273
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge221.us.i, %.lr.ph224.split.us.i
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i, %._crit_edge221.us.i ], [ 0, %.lr.ph224.split.us.i ] ; 13 uses
  %i.zi = mul nuw nsw i64 %indvars.iv247.i, 192   ; 12 uses
  %i.zj = mul nuw nsw i64 %indvars.iv247.i, 48    ; 4 uses
  %i.zk = icmp eq i64 %indvars.iv247.i, %i.zc
  br i1 %i.zk, label %.lr.ph220.us.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.zl = load i32, ptr %i.os, align 4, !tbaa !13
  %i.zm = zext i32 %i.zl to i64
  %i.zn = icmp ne i64 %indvars.iv247.i, %i.zm
  br label %.lr.ph220.us.i

.lr.ph220.us.i:                                   ; preds = %bb.bo, %bb.bn
  %i.zo = phi i1 [ false, %bb.bn ], [ %i.zn, %bb.bo ] ; 2 uses
  %i.zp = getelementptr inbounds nuw [192 x i8], ptr %i.jp, i64 %indvars.iv247.i ; 4 uses
  %i.zq = getelementptr inbounds nuw [192 x i8], ptr %i.jq, i64 %indvars.iv247.i ; 2 uses
  %i.zr = getelementptr inbounds nuw [192 x i8], ptr %i.kd, i64 %indvars.iv247.i ; 7 uses
  %i.zs = getelementptr inbounds nuw [48 x i8], ptr %i.ko, i64 %indvars.iv247.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 86096 ; 2 uses
  %i.zu = getelementptr inbounds nuw [192 x i8], ptr %i.ke, i64 %indvars.iv247.i ; 5 uses
  %i.zv = getelementptr inbounds nuw [48 x i8], ptr %i.js, i64 %indvars.iv247.i ; 2 uses
  %i.zw = getelementptr inbounds nuw [192 x i8], ptr %i.jy, i64 %indvars.iv247.i ; 5 uses
  %i.zx = getelementptr inbounds nuw [192 x i8], ptr %i.kf, i64 %indvars.iv247.i ; 7 uses
  %i.zy = uitofp i1 %i.zo to float                ; 2 uses
  %i.zz = getelementptr i8, ptr %1, i64 %i.zi
  %i.aaa = getelementptr i8, ptr %i.zz, i64 553792
  %i.aab = getelementptr i8, ptr %1, i64 %i.zi
  %i.aac = getelementptr i8, ptr %i.aab, i64 553796
  %i.aad = getelementptr i8, ptr %1, i64 %i.zi
  %i.aae = getelementptr i8, ptr %i.aad, i64 555328
  %i.aaf = getelementptr i8, ptr %1, i64 %i.zi
  %i.aag = getelementptr i8, ptr %i.aaf, i64 555332
  %i.aah = getelementptr i8, ptr %1, i64 %i.zi
  %i.aai = getelementptr i8, ptr %i.aah, i64 556864
  %i.aaj = getelementptr i8, ptr %1, i64 %i.zi
  %i.aak = getelementptr i8, ptr %i.aaj, i64 556868
  %i.aal = getelementptr i8, ptr %1, i64 %i.zi
  %i.aam = getelementptr i8, ptr %i.aal, i64 548800
  %i.aan = getelementptr i8, ptr %1, i64 %i.zi
  %i.aao = getelementptr i8, ptr %i.aan, i64 548804
  %i.aap = getelementptr i8, ptr %1, i64 %i.zi
  %i.aaq = getelementptr i8, ptr %i.aap, i64 550336
  %i.aar = getelementptr i8, ptr %1, i64 %i.zi
  %i.aas = getelementptr i8, ptr %i.aar, i64 550340
  %i.aat = getelementptr i8, ptr %i.zf, i64 %i.zj
  %i.aau = getelementptr i8, ptr %i.zh, i64 %i.zj
  %i.aav = getelementptr i8, ptr %1, i64 %i.zj
  %i.aaw = getelementptr i8, ptr %i.aav, i64 551872
  %i.aax = getelementptr i8, ptr %1, i64 %i.zj
  %i.aay = getelementptr i8, ptr %i.aax, i64 551873
  %i.aaz = getelementptr i8, ptr %1, i64 %i.zi
  %i.aba = getelementptr i8, ptr %i.aaz, i64 552256
  %i.abb = getelementptr i8, ptr %1, i64 %i.zi
  %i.abc = getelementptr i8, ptr %i.abb, i64 552260
  %broadcast.splatinsert505 = insertelement <4 x float> poison, float %i.zy, i64 0
  %broadcast.splat506 = shufflevector <4 x float> %broadcast.splatinsert505, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit.us.i, %.lr.ph220.us.i
  %i.abd = phi i16 [ %.pre.i215, %.lr.ph220.us.i ], [ %i.abh, %.loopexit.us.i ]
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph220.us.i ], [ %indvars.iv.next245.i, %.loopexit.us.i ]
  %i.abe = zext i16 %i.abd to i32                 ; 4 uses
  %i.abf = sub i32 %i.abe, %i.yx                  ; 2 uses
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 3 uses
  %i.abg = getelementptr inbounds nuw [2 x i8], ptr %i.kc, i64 %indvars.iv.next245.i
  %i.abh = load i16, ptr %i.abg, align 2, !tbaa !74 ; 2 uses
  %i.abi = zext i16 %i.abh to i32                 ; 4 uses
  %i.abj = sub i32 %i.abi, %i.yx                  ; 6 uses
  %i.abk = icmp ult i32 %i.abf, %i.abj
  br i1 %i.abk, label %.lr.ph.us.preheader.i, label %.loopexit.us.i

.lr.ph.us.preheader.i:                            ; preds = %bb.bp
  %i.abl = sext i32 %i.abf to i64                 ; 17 uses
  %i.abm = xor i32 %i.abe, -1
  %i.abn = add nsw i32 %i.abm, %i.abi             ; 2 uses
  %i.abo = zext i32 %i.abn to i64                 ; 4 uses
  %i.abp = add nuw nsw i64 %i.abo, 1              ; 2 uses
  %min.iters.check432 = icmp ult i32 %i.abn, 7
  br i1 %min.iters.check432, label %.lr.ph.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.preheader.i
  %i.abq = shl nsw i64 %i.abl, 2                  ; 12 uses
  %i.abr = getelementptr i8, ptr %i.aaa, i64 %i.abq ; 7 uses
  %i.abs = shl nuw nsw i64 %i.abo, 2              ; 6 uses
  %i.abt = getelementptr i8, ptr %i.aac, i64 %i.abq
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.abs ; 7 uses
  %i.abv = getelementptr i8, ptr %i.aae, i64 %i.abq ; 7 uses
  %i.abw = getelementptr i8, ptr %i.aag, i64 %i.abq
  %i.abx = getelementptr i8, ptr %i.abw, i64 %i.abs ; 7 uses
  %i.aby = getelementptr i8, ptr %i.aai, i64 %i.abq ; 7 uses
  %i.abz = getelementptr i8, ptr %i.aak, i64 %i.abq
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.abs ; 7 uses
  %i.acb = getelementptr i8, ptr %i.aam, i64 %i.abq ; 3 uses
  %i.acc = getelementptr i8, ptr %i.aao, i64 %i.abq
  %i.acd = getelementptr i8, ptr %i.acc, i64 %i.abs ; 3 uses
  %i.ace = getelementptr i8, ptr %i.aaq, i64 %i.abq ; 3 uses
  %i.acf = getelementptr i8, ptr %i.aas, i64 %i.abq
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.abs ; 3 uses
  %i.ach = getelementptr i8, ptr %i.aat, i64 %i.abl ; 3 uses
  %i.aci = getelementptr i8, ptr %i.aau, i64 %i.abl
  %i.acj = getelementptr i8, ptr %i.aci, i64 %i.abo ; 3 uses
  %i.ack = getelementptr i8, ptr %i.aaw, i64 %i.abl ; 3 uses
  %i.acl = getelementptr i8, ptr %i.aay, i64 %i.abl
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.abo ; 3 uses
  %i.acn = getelementptr i8, ptr %i.aba, i64 %i.abq ; 3 uses
  %i.aco = getelementptr i8, ptr %i.abc, i64 %i.abq
  %i.acp = getelementptr i8, ptr %i.aco, i64 %i.abs ; 3 uses
  %bound0 = icmp ult ptr %i.abr, %i.abx
  %bound1 = icmp ult ptr %i.abv, %i.abu
  %found.conflict = and i1 %bound0, %bound1
  %bound0433 = icmp ult ptr %i.abr, %i.aca
  %bound1434 = icmp ult ptr %i.aby, %i.abu
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx = or i1 %found.conflict, %found.conflict435
  %bound0436 = icmp ult ptr %i.abr, %i.acd
  %bound1437 = icmp ult ptr %i.acb, %i.abu
  %found.conflict438 = and i1 %bound0436, %bound1437
  %conflict.rdx439 = or i1 %conflict.rdx, %found.conflict438
  %bound0440 = icmp ult ptr %i.abr, %i.acg
  %bound1441 = icmp ult ptr %i.ace, %i.abu
  %found.conflict442 = and i1 %bound0440, %bound1441
  %conflict.rdx443 = or i1 %conflict.rdx439, %found.conflict442
  %bound0444 = icmp ult ptr %i.abr, %i.acj
  %bound1445 = icmp ult ptr %i.ach, %i.abu
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx447 = or i1 %conflict.rdx443, %found.conflict446
  %bound0448 = icmp ult ptr %i.abr, %i.acm
  %bound1449 = icmp ult ptr %i.ack, %i.abu
  %found.conflict450 = and i1 %bound0448, %bound1449
  %conflict.rdx451 = or i1 %conflict.rdx447, %found.conflict450
  %bound0452 = icmp ult ptr %i.abr, %i.acp
  %bound1453 = icmp ult ptr %i.acn, %i.abu
  %found.conflict454 = and i1 %bound0452, %bound1453
  %conflict.rdx455 = or i1 %conflict.rdx451, %found.conflict454
  %bound0457 = icmp ult ptr %i.abv, %i.aca
  %bound1458 = icmp ult ptr %i.aby, %i.abx
  %found.conflict459 = and i1 %bound0457, %bound1458
  %conflict.rdx460 = or i1 %conflict.rdx455, %found.conflict459
  %bound0461 = icmp ult ptr %i.abv, %i.acd
  %bound1462 = icmp ult ptr %i.acb, %i.abx
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx464 = or i1 %conflict.rdx460, %found.conflict463
  %bound0465 = icmp ult ptr %i.abv, %i.acg
  %bound1466 = icmp ult ptr %i.ace, %i.abx
  %found.conflict467 = and i1 %bound0465, %bound1466
  %conflict.rdx468 = or i1 %conflict.rdx464, %found.conflict467
  %bound0469 = icmp ult ptr %i.abv, %i.acj
  %bound1470 = icmp ult ptr %i.ach, %i.abx
  %found.conflict471 = and i1 %bound0469, %bound1470
  %conflict.rdx472 = or i1 %conflict.rdx468, %found.conflict471
  %bound0473 = icmp ult ptr %i.abv, %i.acm
  %bound1474 = icmp ult ptr %i.ack, %i.abx
  %found.conflict475 = and i1 %bound0473, %bound1474
  %conflict.rdx476 = or i1 %conflict.rdx472, %found.conflict475
  %bound0477 = icmp ult ptr %i.abv, %i.acp
  %bound1478 = icmp ult ptr %i.acn, %i.abx
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %conflict.rdx476, %found.conflict479
  %bound0482 = icmp ult ptr %i.aby, %i.acd
  %bound1483 = icmp ult ptr %i.acb, %i.aca
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx480, %found.conflict484
  %bound0486 = icmp ult ptr %i.aby, %i.acg
  %bound1487 = icmp ult ptr %i.ace, %i.aca
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %i.aby, %i.acj
  %bound1491 = icmp ult ptr %i.ach, %i.aca
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  %bound0494 = icmp ult ptr %i.aby, %i.acm
  %bound1495 = icmp ult ptr %i.ack, %i.aca
  %found.conflict496 = and i1 %bound0494, %bound1495
  %conflict.rdx497 = or i1 %conflict.rdx493, %found.conflict496
  %bound0498 = icmp ult ptr %i.aby, %i.acp
  %bound1499 = icmp ult ptr %i.acn, %i.aca
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx497, %found.conflict500
  br i1 %conflict.rdx501, label %.lr.ph.us.i.preheader, label %vector.ph503

vector.ph503:                                     ; preds = %vector.memcheck
  %n.vec504 = and i64 %i.abp, 8589934588          ; 3 uses
  %i.acq = add nsw i64 %n.vec504, %i.abl
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph503
  %index508 = phi i64 [ 0, %vector.ph503 ], [ %index.next513, %vector.body507 ] ; 2 uses
  %i.acr = add nuw i64 %index508, %i.abl          ; 8 uses
  %i.acs = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.acr
  %wide.load509 = load <4 x float>, ptr %i.acs, align 4, !tbaa !26, !alias.scope !259 ; 3 uses
  %i.act = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %i.acr
  %wide.load510 = load <4 x float>, ptr %i.act, align 4, !tbaa !26, !alias.scope !260 ; 4 uses
  %i.acu = fadd nsz <4 x float> %wide.load510, splat (float 1.000000e+00) ; 2 uses
  %i.acv = fdiv nsz <4 x float> %wide.load509, %i.acu ; 2 uses
  %i.acw = fmul nsz <4 x float> %wide.load510, %i.acv
  %i.acx = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.acw)
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.acr
  store <4 x float> %i.acx, ptr %i.acy, align 4, !tbaa !26, !alias.scope !261, !noalias !262
  %i.acz = getelementptr inbounds i8, ptr %i.zt, i64 %i.acr
  %wide.load511 = load <4 x i8>, ptr %i.acz, align 1, !tbaa !12, !alias.scope !263
  %i.ada = uitofp <4 x i8> %wide.load511 to <4 x float>
  %i.adb = fmul nsz <4 x float> %i.acv, %i.ada
  %i.adc = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.adb)
  %i.add = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %i.acr
  store <4 x float> %i.adc, ptr %i.add, align 4, !tbaa !26, !alias.scope !264, !noalias !265
  %i.ade = getelementptr inbounds i8, ptr %i.zv, i64 %i.acr
  %wide.load512 = load <4 x i8>, ptr %i.ade, align 1, !tbaa !12, !alias.scope !266
  %i.adf = icmp eq <4 x i8> %wide.load512, zeroinitializer
  %i.adg = fmul nsz <4 x float> %wide.load509, %wide.load510
  %i.adh = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %i.acr
  %i.adi = load <4 x float>, ptr %i.adh, align 4, !tbaa !26
  %i.adj = fadd nsz <4 x float> %i.adi, splat (float 1.000000e+00) ; 2 uses
  %i.adk = fmul nsz <4 x float> %i.acu, %i.adj
  %i.adl = fdiv nsz <4 x float> %i.adg, %i.adk
  %i.adm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load510, <4 x float> %broadcast.splat506, <4 x float> splat (float 1.000000e+00))
  %i.adn = fmul nsz <4 x float> %i.adm, %i.adj
  %i.ado = fdiv nsz <4 x float> %wide.load509, %i.adn
  %predphi = select <4 x i1> %i.adf, <4 x float> %i.ado, <4 x float> %i.adl
  %i.adp = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %predphi)
  %i.adq = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %i.acr
  %i.adr = fadd nsz <4 x float> %i.adp, splat (float f0x00800000)
  store <4 x float> %i.adr, ptr %i.adq, align 4, !tbaa !26, !alias.scope !267, !noalias !268
  %index.next513 = add nuw i64 %index508, 4       ; 2 uses
  %i.ads = icmp eq i64 %index.next513, %n.vec504
  br i1 %i.ads, label %middle.block514, label %vector.body507, !llvm.loop !235

middle.block514:                                  ; preds = %vector.body507
  %cmp.n515 = icmp eq i64 %i.abp, %n.vec504
  br i1 %cmp.n515, label %.lr.ph202.us.i.preheader, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph.us.preheader.i, %middle.block514
  %indvars.iv.i217.ph = phi i64 [ %i.abl, %vector.memcheck ], [ %i.abl, %.lr.ph.us.preheader.i ], [ %i.acq, %middle.block514 ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %bb.bs
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i219, %bb.bs ], [ %indvars.iv.i217.ph, %.lr.ph.us.i.preheader ] ; 10 uses
  %i.adt = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv.i217
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !26 ; 3 uses
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.zq, i64 %indvars.iv.i217
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !26 ; 4 uses
  %i.adx = fadd nsz float %i.adw, 1.000000e+00    ; 2 uses
  %i.ady = fdiv nsz float %i.adu, %i.adx          ; 2 uses
  %i.adz = fmul nsz float %i.adw, %i.ady
  %i.aea = tail call nsz float @llvm.sqrt.f32(float %i.adz)
  %i.aeb = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %indvars.iv.i217
  store float %i.aea, ptr %i.aeb, align 4, !tbaa !26
  %i.aec = getelementptr inbounds i8, ptr %i.zt, i64 %indvars.iv.i217
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !12
  %i.aee = uitofp i8 %i.aed to float
  %i.aef = fmul nsz float %i.ady, %i.aee
  %i.aeg = tail call nsz float @llvm.sqrt.f32(float %i.aef)
  %i.aeh = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %indvars.iv.i217
  store float %i.aeg, ptr %i.aeh, align 4, !tbaa !26
  %i.aei = getelementptr inbounds i8, ptr %i.zv, i64 %indvars.iv.i217
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !12
  %.not.us.i = icmp eq i8 %i.aej, 0
  br i1 %.not.us.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.us.i
  %i.aek = fmul nsz float %i.adu, %i.adw
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv.i217
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !26
  %i.aen = fadd nsz float %i.aem, 1.000000e+00
  %i.aeo = fmul nsz float %i.adx, %i.aen
  %i.aep = fdiv nsz float %i.aek, %i.aeo
  br label %bb.bs

bb.br:                                            ; preds = %.lr.ph.us.i
  %i.aeq = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv.i217
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !26
  %i.aes = fadd nsz float %i.aer, 1.000000e+00
  %i.aet = tail call nsz float @llvm.fmuladd.f32(float %i.adw, float %i.zy, float 1.000000e+00)
  %i.aeu = fmul nsz float %i.aet, %i.aes
  %i.aev = fdiv nsz float %i.adu, %i.aeu
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink.i218 = phi float [ %i.aev, %bb.br ], [ %i.aep, %bb.bq ]
  %i.aew = tail call nsz float @llvm.sqrt.f32(float %.sink.i218)
  %i.aex = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %indvars.iv.i217
  %i.aey = fadd nsz float %i.aew, f0x00800000
  store float %i.aey, ptr %i.aex, align 4, !tbaa !26
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %i.aez = trunc nsw i64 %indvars.iv.next.i219 to i32
  %i.afa = icmp ugt i32 %i.abj, %i.aez
  br i1 %i.afa, label %.lr.ph.us.i, label %.lr.ph202.us.i.preheader, !llvm.loop !236

.lr.ph202.us.i.preheader:                         ; preds = %bb.bs, %middle.block514
  br label %.lr.ph202.us.i

.lr.ph202.us.i:                                   ; preds = %.lr.ph202.us.i.preheader, %.lr.ph202.us.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %.lr.ph202.us.i ], [ %i.abl, %.lr.ph202.us.i.preheader ] ; 3 uses
  %i.afb = phi <2 x float> [ %i.afi, %.lr.ph202.us.i ], [ zeroinitializer, %.lr.ph202.us.i.preheader ]
  %i.afc = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv232.i
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !26
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv232.i
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !26
  %i.afg = insertelement <2 x float> poison, float %i.afd, i64 0
  %i.afh = insertelement <2 x float> %i.afg, float %i.aff, i64 1
  %i.afi = fadd nsz <2 x float> %i.afb, %i.afh    ; 2 uses
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %i.afj = trunc nsw i64 %indvars.iv.next233.i to i32
  %i.afk = icmp ugt i32 %i.abj, %i.afj
  br i1 %i.afk, label %.lr.ph202.us.i, label %.lr.ph207.us.preheader.i, !llvm.loop !237

.lr.ph207.us.preheader.i:                         ; preds = %.lr.ph202.us.i
  %i.afl = fadd nsz <2 x float> %i.afi, splat (float f0x34000000) ; 2 uses
  %i.afm = extractelement <2 x float> %i.afl, i64 0
  %i.afn = extractelement <2 x float> %i.afl, i64 1
  %i.afo = fdiv nsz float %i.afm, %i.afn
  %i.afp = tail call nsz float @llvm.sqrt.f32(float %i.afo)
  %i.afq = fmul nsz float %i.zb, %i.afp           ; 2 uses
  %i.afr = fcmp nsz olt float %i.afq, 1.000000e+05
  %i.afs = select nsz i1 %i.afr, float %i.afq, float 1.000000e+05 ; 4 uses
  %i.aft = xor i32 %i.abe, -1
  %i.afu = add nsw i32 %i.aft, %i.abi             ; 2 uses
  %i.afv = zext i32 %i.afu to i64
  %i.afw = add nuw nsw i64 %i.afv, 1              ; 2 uses
  %min.iters.check319 = icmp ult i32 %i.afu, 3
  br i1 %min.iters.check319, label %.lr.ph207.us.i.preheader, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph207.us.preheader.i
  %n.vec321 = and i64 %i.afw, 8589934588          ; 3 uses
  %i.afx = add nsw i64 %n.vec321, %i.abl
  %broadcast.splatinsert322 = insertelement <4 x float> poison, float %i.afs, i64 0
  %broadcast.splat323 = shufflevector <4 x float> %broadcast.splatinsert322, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph320
  %index325 = phi i64 [ 0, %vector.ph320 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %i.afy = add nuw i64 %index325, %i.abl          ; 2 uses
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.afy ; 2 uses
  %wide.load326 = load <4 x float>, ptr %i.afz, align 4, !tbaa !26 ; 3 uses
  %i.aga = fmul nsz <4 x float> %broadcast.splat323, %wide.load326
  %i.agb = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %i.afy ; 2 uses
  %wide.load327 = load <4 x float>, ptr %i.agb, align 4, !tbaa !26 ; 3 uses
  %i.agc = fdiv nsz <4 x float> %i.aga, %wide.load327 ; 2 uses
  %i.agd = fcmp nsz ogt <4 x float> %wide.load326, %i.agc
  %i.age = select nsz <4 x i1> %i.agd, <4 x float> %i.agc, <4 x float> %wide.load326
  store <4 x float> %i.age, ptr %i.afz, align 4, !tbaa !26
  %i.agf = fcmp nsz ogt <4 x float> %wide.load327, %broadcast.splat323
  %i.agg = select nsz <4 x i1> %i.agf, <4 x float> %broadcast.splat323, <4 x float> %wide.load327
  store <4 x float> %i.agg, ptr %i.agb, align 4, !tbaa !26
  %index.next328 = add nuw i64 %index325, 4       ; 2 uses
  %i.agh = icmp eq i64 %index.next328, %n.vec321
  br i1 %i.agh, label %middle.block329, label %vector.body324, !llvm.loop !238

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %i.afw, %n.vec321
  br i1 %cmp.n330, label %.lr.ph211.us.i.preheader, label %.lr.ph207.us.i.preheader

.lr.ph207.us.i.preheader:                         ; preds = %.lr.ph207.us.preheader.i, %middle.block329
  %indvars.iv235.i.ph = phi i64 [ %i.abl, %.lr.ph207.us.preheader.i ], [ %i.afx, %middle.block329 ]
  br label %.lr.ph207.us.i

.lr.ph207.us.i:                                   ; preds = %.lr.ph207.us.i.preheader, %.lr.ph207.us.i
  %indvars.iv235.i = phi i64 [ %indvars.iv.next236.i, %.lr.ph207.us.i ], [ %indvars.iv235.i.ph, %.lr.ph207.us.i.preheader ] ; 3 uses
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %indvars.iv235.i ; 2 uses
  %i.agj = load float, ptr %i.agi, align 4, !tbaa !26 ; 3 uses
  %i.agk = fmul nsz float %i.afs, %i.agj
  %i.agl = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %indvars.iv235.i ; 2 uses
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !26 ; 3 uses
  %i.agn = fdiv nsz float %i.agk, %i.agm          ; 2 uses
  %i.ago = fcmp nsz ogt float %i.agj, %i.agn
  %..us.i = select nsz i1 %i.ago, float %i.agn, float %i.agj
  store float %..us.i, ptr %i.agi, align 4, !tbaa !26
  %i.agp = fcmp nsz ogt float %i.agm, %i.afs
  %i.agq = select nsz i1 %i.agp, float %i.afs, float %i.agm
  store float %i.agq, ptr %i.agl, align 4, !tbaa !26
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %i.agr = trunc nsw i64 %indvars.iv.next236.i to i32
  %i.ags = icmp ugt i32 %i.abj, %i.agr
  br i1 %i.ags, label %.lr.ph207.us.i, label %.lr.ph211.us.i.preheader, !llvm.loop !239

.lr.ph211.us.i.preheader:                         ; preds = %.lr.ph207.us.i, %middle.block329
  br label %.lr.ph211.us.i

.lr.ph211.us.i:                                   ; preds = %.lr.ph211.us.i.preheader, %.lr.ph211.us.i
  %indvars.iv238.i = phi i64 [ %indvars.iv.next239.i, %.lr.ph211.us.i ], [ %i.abl, %.lr.ph211.us.i.preheader ] ; 6 uses
  %i.agt = phi <2 x float> [ %i.aho, %.lr.ph211.us.i ], [ zeroinitializer, %.lr.ph211.us.i.preheader ]
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %indvars.iv238.i
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !26
  %i.agw = getelementptr inbounds [4 x i8], ptr %i.zw, i64 %indvars.iv238.i
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !26
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %indvars.iv238.i
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !26 ; 2 uses
  %i.aha = fmul nsz float %i.agx, %i.agz
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %indvars.iv238.i
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !26 ; 3 uses
  %i.ahd = fmul nsz float %i.ahc, %i.ahc
  %i.ahe = tail call nsz float @llvm.fmuladd.f32(float %i.aha, float %i.agz, float %i.ahd)
  %i.ahf = fcmp nsz oeq float %i.ahc, 0.000000e+00
  %i.ahg = uitofp i1 %i.ahf to float
  %i.ahh = select i1 %i.zo, float %i.ahg, float 0.000000e+00
  %i.ahi = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %indvars.iv238.i
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !26 ; 2 uses
  %i.ahk = fmul nsz float %i.ahj, %i.ahh
  %i.ahl = tail call nsz float @llvm.fmuladd.f32(float %i.ahk, float %i.ahj, float %i.ahe)
  %i.ahm = insertelement <2 x float> poison, float %i.agv, i64 0
  %i.ahn = insertelement <2 x float> %i.ahm, float %i.ahl, i64 1
  %i.aho = fadd nsz <2 x float> %i.agt, %i.ahn    ; 2 uses
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %i.ahp = trunc nsw i64 %indvars.iv.next239.i to i32
  %i.ahq = icmp ugt i32 %i.abj, %i.ahp
  br i1 %i.ahq, label %.lr.ph211.us.i, label %.lr.ph217.us.preheader.i, !llvm.loop !240

.lr.ph217.us.preheader.i:                         ; preds = %.lr.ph211.us.i
  %i.ahr = fadd nsz <2 x float> %i.aho, splat (float f0x34000000) ; 2 uses
  %i.ahs = extractelement <2 x float> %i.ahr, i64 0
  %i.aht = extractelement <2 x float> %i.ahr, i64 1
  %i.ahu = fdiv nsz float %i.ahs, %i.aht
  %i.ahv = tail call nsz float @llvm.sqrt.f32(float %i.ahu) ; 2 uses
  %i.ahw = fcmp nsz olt float %i.ahv, f0x3FCADDC8
  %i.ahx = select nsz i1 %i.ahw, float %i.ahv, float f0x3FCADDC8 ; 4 uses
  %i.ahy = xor i32 %i.abe, -1
  %i.ahz = add nsw i32 %i.ahy, %i.abi             ; 2 uses
  %i.aia = zext i32 %i.ahz to i64
  %i.aib = add nuw nsw i64 %i.aia, 1              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ahz, 3
  br i1 %min.iters.check, label %.lr.ph217.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph217.us.preheader.i
  %n.vec = and i64 %i.aib, 8589934588             ; 3 uses
  %i.aic = add nsw i64 %n.vec, %i.abl
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ahx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aid = add nuw i64 %index, %i.abl             ; 3 uses
  %i.aie = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %i.aid ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aie, align 4, !tbaa !26
  %i.aif = fmul nsz <4 x float> %broadcast.splat, %wide.load
  store <4 x float> %i.aif, ptr %i.aie, align 4, !tbaa !26
  %i.aig = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.aid ; 2 uses
  %wide.load316 = load <4 x float>, ptr %i.aig, align 4, !tbaa !26
  %i.aih = fmul nsz <4 x float> %broadcast.splat, %wide.load316
  store <4 x float> %i.aih, ptr %i.aig, align 4, !tbaa !26
  %i.aii = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %i.aid ; 2 uses
  %wide.load317 = load <4 x float>, ptr %i.aii, align 4, !tbaa !26
  %i.aij = fmul nsz <4 x float> %broadcast.splat, %wide.load317
  store <4 x float> %i.aij, ptr %i.aii, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aik = icmp eq i64 %index.next, %n.vec
  br i1 %i.aik, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aib, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %.lr.ph217.us.i.preheader

.lr.ph217.us.i.preheader:                         ; preds = %.lr.ph217.us.preheader.i, %middle.block
  %indvars.iv241.i.ph = phi i64 [ %i.abl, %.lr.ph217.us.preheader.i ], [ %i.aic, %middle.block ]
  br label %.lr.ph217.us.i

.lr.ph217.us.i:                                   ; preds = %.lr.ph217.us.i.preheader, %.lr.ph217.us.i
  %indvars.iv241.i = phi i64 [ %indvars.iv.next242.i, %.lr.ph217.us.i ], [ %indvars.iv241.i.ph, %.lr.ph217.us.i.preheader ] ; 4 uses
  %i.ail = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %indvars.iv241.i ; 2 uses
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !26
  %i.ain = fmul nsz float %i.ahx, %i.aim
  store float %i.ain, ptr %i.ail, align 4, !tbaa !26
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %indvars.iv241.i ; 2 uses
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !26
  %i.aiq = fmul nsz float %i.ahx, %i.aip
  store float %i.aiq, ptr %i.aio, align 4, !tbaa !26
  %i.air = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %indvars.iv241.i ; 2 uses
  %i.ais = load float, ptr %i.air, align 4, !tbaa !26
  %i.ait = fmul nsz float %i.ahx, %i.ais
  store float %i.ait, ptr %i.air, align 4, !tbaa !26
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %i.aiu = trunc nsw i64 %indvars.iv.next242.i to i32
  %i.aiv = icmp ugt i32 %i.abj, %i.aiu
  br i1 %i.aiv, label %.lr.ph217.us.i, label %.loopexit.us.i, !llvm.loop !242

.loopexit.us.i:                                   ; preds = %.lr.ph217.us.i, %middle.block, %bb.bp
  %exitcond.not.i216 = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count.i214
  br i1 %exitcond.not.i216, label %._crit_edge221.us.i, label %bb.bp, !llvm.loop !243

._crit_edge221.us.i:                              ; preds = %.loopexit.us.i
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %exitcond251.not.i = icmp eq i64 %indvars.iv.next248.i, %wide.trip.count250.i
  br i1 %exitcond251.not.i, label %sbr_gain_calc.exit, label %bb.bn, !llvm.loop !244

sbr_gain_calc.exit:                               ; preds = %._crit_edge221.us.i, %.preheader100.i, %.preheader103.i, %sbr_env_estimate.exit, %.lr.ph224.i
  %i.aiw = load ptr, ptr %i.kh, align 8, !tbaa !269
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ko, i64 31008
  %i.aiy = load i32, ptr %i.kr, align 16, !tbaa !250
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [19456 x i8], ptr %i.aix, i64 %i.aiz
  tail call void %i.aiw(ptr noundef nonnull %i.aja, ptr noundef nonnull %i.jd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.os) #12
  br label %bb.bt

bb.bt:                                            ; preds = %sbr_mapping.exit, %sbr_gain_calc.exit, %sbr_qmf_analysis.exit
  %i.ajb = load ptr, ptr %i.ki, align 16, !tbaa !270
  %i.ajc = getelementptr inbounds nuw [19456 x i8], ptr %i.kj, i64 %indvars.iv
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ko, i64 31008 ; 2 uses
  %i.aje = load i32, ptr %i.kr, align 16, !tbaa !250 ; 2 uses
  %i.ajf = sub nsw i32 1, %i.aje
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds [19456 x i8], ptr %i.ajd, i64 %i.ajg
  %i.aji = sext i32 %i.aje to i64
  %i.ajj = getelementptr inbounds [19456 x i8], ptr %i.ajd, i64 %i.aji
  %i.ajk = trunc nuw nsw i64 %indvars.iv to i32
  %i.ajl = tail call i32 %i.ajb(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ajc, ptr noundef nonnull %i.ajh, ptr noundef nonnull %i.ajj, ptr noundef nonnull %i.ix, i32 noundef %i.ajk, i32 noundef %i.h) #12 ; 0 uses
  %i.ajm = and i1 %i.g, %.not165
  br i1 %i.ajm, label %bb.ak, label %bb.bu, !llvm.loop !245

bb.bu:                                            ; preds = %bb.bt
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 23296
  %i.ajo = load i32, ptr %i.ajn, align 16, !tbaa !62
  %i.ajp = icmp eq i32 %i.ajo, 1
  br i1 %i.ajp, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 343680 ; 2 uses
  %i.ajr = load i32, ptr %i.ajq, align 16, !tbaa !271
  %.not164 = icmp eq i32 %i.ajr, 0
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 528320 ; 2 uses
  br i1 %.not164, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ajt = load i32, ptr %i.je, align 8, !tbaa !13
  %i.aju = load i32, ptr %i.jl, align 16, !tbaa !13
  %i.ajv = add i32 %i.aju, %i.ajt
  %i.ajw = tail call i32 @ff_ps_apply(ptr noundef nonnull %i.ajq, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.ajs, i32 noundef %i.ajv) #12 ; 0 uses
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(19456) %i.ajs, ptr noundef nonnull align 16 dereferenceable(19456) %i.kj, i64 19456, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.bu
  %.0 = phi i1 [ %i.g, %bb.bu ], [ true, %bb.bx ], [ true, %bb.bw ]
  %i.ajx = getelementptr inbounds nuw i8, ptr %1, i64 559696 ; 2 uses
  %i.ajy = load ptr, ptr %i.ajx, align 16, !tbaa !272
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 559704 ; 2 uses
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !273
  %i.akb = load ptr, ptr %i.ij, align 16, !tbaa !12
  %i.akc = getelementptr inbounds nuw i8, ptr %1, i64 166288
  %i.akd = getelementptr inbounds nuw i8, ptr %1, i64 180752
  tail call fastcc void @sbr_qmf_synthesis(ptr noundef %i.ajy, ptr noundef %i.aka, ptr noundef nonnull %i.im, ptr noundef %i.akb, ptr noundef %4, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.io, ptr noundef nonnull %i.akc, ptr noundef nonnull %i.akd, i32 noundef %i.h, i32 noundef %i.f)
  br i1 %.0, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ake = load ptr, ptr %i.ajx, align 16, !tbaa !272
  %i.akf = load ptr, ptr %i.ajz, align 8, !tbaa !273
  %i.akg = load ptr, ptr %i.ij, align 16, !tbaa !12
  %i.akh = getelementptr inbounds nuw i8, ptr %1, i64 528320
  %i.aki = getelementptr inbounds nuw i8, ptr %1, i64 255040
  %i.akj = getelementptr inbounds nuw i8, ptr %1, i64 269504
  tail call fastcc void @sbr_qmf_synthesis(ptr noundef %i.ake, ptr noundef %i.akf, ptr noundef nonnull %i.im, ptr noundef %i.akg, ptr noundef %5, ptr noundef nonnull %i.akh, ptr noundef nonnull %i.io, ptr noundef nonnull %i.aki, ptr noundef nonnull %i.akj, i32 noundef %i.h, i32 noundef %i.f)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare i32 @ff_ps_apply(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sbr_qmf_synthesis(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef captures(none) %8, i32 noundef range(i32 15, 17) %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %10, 0                      ; 2 uses
  %i.a = select i1 %.not, ptr @sbr_qmf_window_us, ptr @sbr_qmf_window_ds ; 10 uses
  %i.b = lshr exact i32 128, %10                  ; 3 uses
  %i.c = shl nuw nsw i32 %9, 1
  %i.d = lshr exact i32 1152, %10                 ; 2 uses
  %i.e = sub nuw nsw i32 2304, %i.d               ; 2 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.f
  %i.h = shl nuw nsw i32 %i.d, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 9728
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = lshr exact i32 64, %10                   ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 9 uses
  %i.q = lshr exact i32 192, %10
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = zext nneg i32 %i.o to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %i.u = lshr exact i32 256, %10
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = zext nneg i32 %i.b to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w
  %i.y = lshr exact i32 448, %10
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r
  %i.ab = lshr exact i32 512, %10
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v
  %i.ae = lshr exact i32 704, %10
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr exact i32 320, %10
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ah
  %i.aj = lshr exact i32 768, %10
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr exact i32 384, %10
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.am
  %i.ao = lshr exact i32 960, %10
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z
  %i.ar = lshr exact i32 1024, %10
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ac
  %i.au = lshr exact i32 1216, %10
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = lshr exact i32 576, %10
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.0143 = phi ptr [ %4, %bb.a ], [ %i.ee, %bb.f ] ; 20 uses
  %i.az = load i32, ptr %8, align 4, !tbaa !13    ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.b
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(1) %7, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pn = phi i32 [ %i.e, %bb.c ], [ %i.az, %bb.b ]
  %storemerge = sub nsw i32 %.pn, %i.b            ; 2 uses
  store i32 %storemerge, ptr %8, align 4, !tbaa !13
  %i.bb = sext i32 %storemerge to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bb ; 12 uses
  %i.bd = getelementptr inbounds nuw [256 x i8], ptr %i.j, i64 %indvars.iv ; 10 uses
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.be = getelementptr inbounds nuw [256 x i8], ptr %5, i64 %indvars.iv ; 18 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load <4 x float>, ptr %i.be, align 4, !tbaa !26
  %i.bh = fneg nsz <4 x float> %i.bg
  store <4 x float> %i.bh, ptr %i.be, align 4, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bj = load <4 x float>, ptr %i.bi, align 4, !tbaa !26
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bk, ptr %i.bf, align 4, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.bn = load <4 x float>, ptr %i.bl, align 4, !tbaa !26
  %i.bo = fneg nsz <4 x float> %i.bn
  store <4 x float> %i.bo, ptr %i.bl, align 4, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bq = load <4 x float>, ptr %i.bp, align 4, !tbaa !26
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.br, ptr %i.bm, align 4, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  %i.bu = load <4 x float>, ptr %i.bs, align 4, !tbaa !26
  %i.bv = fneg nsz <4 x float> %i.bu
  store <4 x float> %i.bv, ptr %i.bs, align 4, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bx = load <4 x float>, ptr %i.bw, align 4, !tbaa !26
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.by, ptr %i.bt, align 4, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  %i.cb = load <4 x float>, ptr %i.bz, align 4, !tbaa !26
  %i.cc = fneg nsz <4 x float> %i.cb
  store <4 x float> %i.cc, ptr %i.bz, align 4, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.ce = load <4 x float>, ptr %i.cd, align 4, !tbaa !26
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.cf, ptr %i.ca, align 4, !tbaa !26
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %i.ci = load <4 x float>, ptr %i.cg, align 4, !tbaa !26
  %i.cj = fneg nsz <4 x float> %i.ci
  store <4 x float> %i.cj, ptr %i.cg, align 4, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.cl = load <4 x float>, ptr %i.ck, align 4, !tbaa !26
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.cm, ptr %i.ch, align 4, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 208
  %i.cp = load <4 x float>, ptr %i.cn, align 4, !tbaa !26
  %i.cq = fneg nsz <4 x float> %i.cp
  store <4 x float> %i.cq, ptr %i.cn, align 4, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.cs = load <4 x float>, ptr %i.cr, align 4, !tbaa !26
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.ct, ptr %i.co, align 4, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.be, i64 224
  %i.cw = load <4 x float>, ptr %i.cu, align 4, !tbaa !26
  %i.cx = fneg nsz <4 x float> %i.cw
  store <4 x float> %i.cx, ptr %i.cu, align 4, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cz = load <4 x float>, ptr %i.cy, align 4, !tbaa !26
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.da, ptr %i.cv, align 4, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 112 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.be, i64 240
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f32
!34 = !{!"MPEG4AudioConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48}
!35 = !{!"AVChannelLayout", !8, i64 0, !8, i64 4, !7, i64 8, !11, i64 16}
!36 = !{!"short", !7, i64 0}
!37 = !{!"", !7, i64 0, !7, i64 2, !7, i64 3842, !7, i64 3844, !8, i64 7684}
!38 = !{!"AACUSACConfig", !7, i64 0, !36, i64 2, !36, i64 4, !7, i64 8, !8, i64 4616, !37, i64 4620}
!39 = !{!"OutputConfiguration", !34, i64 0, !7, i64 52, !8, i64 820, !35, i64 824, !8, i64 848, !38, i64 856}
!40 = !{!39, !8, i64 28}
!41 = !{!21, !8, i64 100}
!42 = !{!29, !28, i64 0}
!43 = !{!21, !8, i64 4}
!44 = !{!21, !8, i64 8}
!45 = !{!21, !8, i64 311736}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!24, !8, i64 4}
!48 = !{!21, !8, i64 60}
!49 = !{!24, !8, i64 8}
!50 = !{!24, !7, i64 88725}
!51 = !{!24, !8, i64 100}
!52 = !{!24, !8, i64 24}
!53 = !{!24, !8, i64 0}
!54 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!55 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!56 = !{!"AACDecDSP", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112}
!57 = !{!"AACDecProc", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!58 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!59 = !{!"DynamicRangeControl", !8, i64 0, !7, i64 4, !7, i64 72, !7, i64 140, !8, i64 396, !8, i64 400, !7, i64 404, !8, i64 472}
!60 = !{!"AACDecContext", !54, i64 0, !55, i64 8, !56, i64 16, !57, i64 136, !58, i64 184, !8, i64 192, !59, i64 196, !7, i64 672, !7, i64 2720, !8, i64 4768, !8, i64 4772, !7, i64 4784, !7, i64 8880, !18, i64 9392, !18, i64 9400, !18, i64 9408, !18, i64 9416, !18, i64 9424, !18, i64 9432, !18, i64 9440, !18, i64 9448, !18, i64 9456, !11, i64 9464, !11, i64 9472, !11, i64 9480, !11, i64 9488, !11, i64 9496, !11, i64 9504, !11, i64 9512, !11, i64 9520, !11, i64 9528, !7, i64 9536, !8, i64 9544, !7, i64 9552, !8, i64 10064, !8, i64 10068, !8, i64 10072, !8, i64 10076, !8, i64 10080, !7, i64 10088, !8, i64 36424, !8, i64 36428, !8, i64 36432, !8, i64 36436, !8, i64 36440}
!61 = !{!60, !55, i64 8}
!62 = !{!39, !8, i64 40}
!63 = !{!21, !8, i64 44}
!64 = !{!21, !8, i64 36}
!65 = !{!21, !7, i64 28}
!66 = !{!21, !7, i64 29}
!67 = !{!21, !7, i64 30}
!68 = !{!21, !7, i64 31}
!69 = !{!21, !7, i64 32}
!70 = !{!21, !7, i64 33}
!71 = !{!21, !8, i64 48}
!72 = !{!21, !8, i64 52}
!73 = !{!21, !8, i64 56}
!74 = !{!36, !36, i64 0}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!21, !8, i64 312064}
!79 = !{!"llvm.loop.peeled.count", i32 1}
!80 = !{!24, !8, i64 88732}
!81 = !{!21, !8, i64 20}
!82 = !{!21, !8, i64 311740}
!83 = !{!"AVFloatDSPContext", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!84 = !{!"p1 _ZTS14ChannelElement", !11, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!24, !8, i64 14576}
!87 = distinct !{!87, !46}
!88 = !{!28, !28, i64 0}
!89 = !{i64 0, i64 8, !88, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 4, !13}
!90 = !{!39, !8, i64 8}
!91 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!92 = !{!"p1 _ZTS15AVCodecInternal", !11, i64 0}
!93 = !{!"long", !7, i64 0}
!94 = !{!"AVRational", !8, i64 0, !8, i64 4}
!95 = !{!"p1 short", !11, i64 0}
!96 = !{!"p1 _ZTS10RcOverride", !11, i64 0}
!97 = !{!"p1 _ZTS9AVHWAccel", !11, i64 0}
!98 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!99 = !{!"p1 _ZTS17AVCodecDescriptor", !11, i64 0}
!100 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!101 = !{!"p1 int", !11, i64 0}
!102 = !{!"any p2 pointer", !11, i64 0}
!103 = !{!"p2 _ZTS15AVFrameSideData", !102, i64 0}
!104 = !{!"AVCodecContext", !54, i64 0, !8, i64 8, !8, i64 12, !91, i64 16, !8, i64 24, !8, i64 28, !11, i64 32, !92, i64 40, !11, i64 48, !93, i64 56, !8, i64 64, !8, i64 68, !28, i64 72, !8, i64 80, !94, i64 84, !94, i64 92, !94, i64 100, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !94, i64 128, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184, !11, i64 192, !8, i64 200, !25, i64 204, !25, i64 208, !25, i64 212, !25, i64 216, !25, i64 220, !25, i64 224, !25, i64 228, !25, i64 232, !25, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !95, i64 288, !95, i64 296, !95, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !35, i64 352, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !11, i64 408, !8, i64 416, !8, i64 420, !8, i64 424, !25, i64 428, !25, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !96, i64 456, !93, i64 464, !93, i64 472, !25, i64 480, !25, i64 484, !8, i64 488, !8, i64 492, !28, i64 496, !28, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !97, i64 536, !11, i64 544, !98, i64 552, !98, i64 560, !8, i64 568, !8, i64 572, !7, i64 576, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !11, i64 672, !11, i64 680, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716, !8, i64 720, !99, i64 728, !28, i64 736, !8, i64 744, !8, i64 748, !28, i64 752, !28, i64 760, !28, i64 768, !100, i64 776, !8, i64 784, !8, i64 788, !93, i64 792, !8, i64 800, !8, i64 804, !93, i64 808, !11, i64 816, !93, i64 824, !101, i64 832, !8, i64 840, !103, i64 848, !8, i64 856, !8, i64 860}
!105 = !{!104, !8, i64 688}
!106 = !{!60, !8, i64 36436}
!107 = distinct !{!107, !46}
!108 = distinct !{!108, !46}
!109 = distinct !{!109, !46}
!110 = distinct !{!110, !46}
!111 = distinct !{!111, !46}
!112 = distinct !{!112, !46}
!113 = distinct !{!113, !75}
!114 = distinct !{!114, !46, !76, !77}
!115 = distinct !{!115, !46, !76, !77}
!116 = distinct !{!116, !46, !77, !76}
!117 = distinct !{!117, !46}
!118 = distinct !{!118, !46}
!119 = distinct !{!119, !75}
!120 = distinct !{!120, !46}
!121 = distinct !{!121, !46}
!122 = distinct !{!122, !46}
!123 = distinct !{!123, !46}
!124 = distinct !{!124, !46}
!125 = distinct !{!125, !46}
!126 = distinct !{!126, !75}
!127 = distinct !{!127, !46, !76, !77}
!128 = distinct !{!128, !46, !77, !76}
!129 = distinct !{!129, !46}
!130 = distinct !{!130, !46}
!131 = distinct !{!131, !46}
!132 = distinct !{!132, !46}
!133 = distinct !{!133, !46}
!134 = distinct !{!134, !46}
!135 = distinct !{!135, !46}
!136 = distinct !{!136, !46}
!137 = distinct !{!137, !46}
!138 = distinct !{!138, !46}
!139 = distinct !{!139, !46}
!140 = distinct !{!140, !75}
!141 = distinct !{!141, !46, !76, !77}
!142 = distinct !{!142, !46, !77, !76}
!143 = distinct !{!143, !46}
!144 = distinct !{!144, !46}
!145 = distinct !{!145, !46, !79}
!146 = distinct !{!146, !46}
!147 = !{!14, !7, i64 0}
!148 = !{!14, !7, i64 1}
!149 = !{!14, !7, i64 3}
!150 = !{!14, !7, i64 4}
!151 = !{!21, !8, i64 104}
!152 = !{!"branch_weights", i32 4, i32 12}
!153 = !{!21, !8, i64 40}
!154 = !{!"", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 7}
!155 = !{!"", !8, i64 0, !7, i64 4, !7, i64 4, !7, i64 4, !154, i64 5}
!156 = !{!"", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8, !7, i64 9, !7, i64 9}
!157 = !{!"", !8, i64 0, !7, i64 4, !8, i64 8, !8, i64 12, !28, i64 16}
!158 = !{!"", !8, i64 0, !8, i64 4}
!159 = !{!"", !158, i64 0}
!160 = !{!"AACUsacElemConfig", !8, i64 0, !7, i64 4, !7, i64 4, !7, i64 5, !155, i64 8, !156, i64 24, !157, i64 40, !159, i64 64}
!161 = !{!160, !7, i64 13}
!162 = !{!160, !7, i64 14}
!163 = !{!160, !7, i64 15}
!164 = !{!160, !7, i64 17}
!165 = !{!160, !7, i64 18}
!166 = !{!160, !7, i64 19}
!167 = distinct !{!167, !46}
!168 = distinct !{!168, !75}
!169 = distinct !{!169, !46}
!170 = distinct !{!170, !46}
!171 = distinct !{!171, !46}
!172 = distinct !{!172, !46}
!173 = distinct !{!173, !46}
!174 = distinct !{!174, !46}
!175 = distinct !{!175, !46}
!176 = distinct !{!176, !46}
!177 = distinct !{!177, !75}
!178 = distinct !{!178, !46}
!179 = distinct !{!179, !46}
!180 = distinct !{!180, !46}
!181 = distinct !{!181, !46, !79}
!182 = distinct !{!182, !46}
!183 = distinct !{!183, !46}
!184 = !{!"p1 _ZTS7VLCElem", !11, i64 0}
!185 = !{!184, !184, i64 0}
!186 = distinct !{!186, !46}
!187 = distinct !{!187, !46}
!188 = distinct !{!188, !46}
!189 = distinct !{!189, !46}
!190 = distinct !{!190, !46}
!191 = distinct !{!191, !46}
!192 = distinct !{!192, !46}
!193 = distinct !{!193, !46}
!194 = distinct !{!194, !46}
!195 = distinct !{!195, !46}
!196 = distinct !{!196, !46}
!197 = distinct !{!197, !46}
!198 = distinct !{null}
!199 = distinct !{!199, !46}
!200 = distinct !{!200, !46}
!201 = distinct !{!201, !46}
!202 = distinct !{null}
!203 = distinct !{!203, !46}
!204 = distinct !{!204, !46}
!205 = distinct !{!205, !46}
!206 = distinct !{!206, !46}
!207 = distinct !{!207, !46, !76, !77}
!208 = distinct !{!208, !75}
!209 = distinct !{!209, !46, !76}
!210 = distinct !{!210, !46}
!211 = distinct !{!211, !46, !76, !77}
!212 = distinct !{!212, !75}
!213 = distinct !{!213, !46, !76}
!214 = distinct !{!214, !46}
!215 = distinct !{!215, !46}
!216 = distinct !{!216, !46}
!217 = distinct !{!217, !46}
!218 = distinct !{null}
!219 = distinct !{!219, !46}
!220 = distinct !{!220, !46}
!221 = distinct !{!221, !46}
!222 = distinct !{!222, !46}
!223 = distinct !{!223, !46, !76, !77}
!224 = distinct !{!224, !46, !77, !76}
!225 = distinct !{!225, i1 false, !"LVerDomain"}
!226 = distinct !{!226, !225}
!227 = distinct !{!227, !225}
!228 = distinct !{!228, !225}
!229 = distinct !{!229, !225}
!230 = distinct !{!230, !225}
!231 = distinct !{!231, !225}
!232 = distinct !{!232, !225}
!233 = distinct !{!233, !225}
!234 = distinct !{!234, !225}
!235 = distinct !{!235, !46, !76, !77}
!236 = distinct !{!236, !46, !76}
!237 = distinct !{!237, !46}
!238 = distinct !{!238, !46, !76, !77}
!239 = distinct !{!239, !46, !77, !76}
!240 = distinct !{!240, !46}
!241 = distinct !{!241, !46, !76, !77}
!242 = distinct !{!242, !46, !77, !76}
!243 = distinct !{!243, !46}
!244 = distinct !{!244, !46}
!245 = distinct !{!245, !46}
!246 = !{!"double", !7, i64 0}
!247 = !{!246, !246, i64 0}
!248 = !{!21, !18, i64 393616}
!249 = !{!21, !11, i64 393624}
!250 = !{!24, !8, i64 30992}
!251 = !{!83, !11, i64 56}
!252 = !{!19, !11, i64 0}
!253 = !{!19, !11, i64 24}
!254 = !{!19, !11, i64 32}
!255 = !{!21, !11, i64 393760}
!256 = !{!21, !11, i64 393784}
!257 = !{!21, !11, i64 393712}
!258 = !{!21, !11, i64 393656}
!259 = !{!226}
!260 = !{!227}
!261 = !{!228}
!262 = !{!234, !233, !226, !227, !232, !231, !230, !229}
!263 = !{!232}
!264 = !{!234}
!265 = !{!233, !226, !227, !232, !231, !230, !229}
!266 = !{!231}
!267 = !{!233}
!268 = !{!226, !227, !232, !231, !230, !229}
!269 = !{!21, !11, i64 393768}
!270 = !{!21, !11, i64 393776}
!271 = !{!21, !8, i64 177616}
!272 = !{!21, !18, i64 393632}
!273 = !{!21, !11, i64 393640}
!274 = distinct !{!274, !46}
!275 = !{!19, !11, i64 40}
!276 = !{!19, !11, i64 16}
!277 = !{!19, !11, i64 48}
!278 = !{!83, !11, i64 0}
!279 = !{!83, !11, i64 48}
!280 = distinct !{!280, !46}
!281 = distinct !{!281, !46}
!282 = distinct !{!282, !46}
!283 = distinct !{!283, !46}
!284 = distinct !{!284, !46}
!285 = distinct !{!285, !46}
!286 = distinct !{!286, !46}
!287 = distinct !{!287, i1 false, !"LVerDomain"}
!288 = distinct !{!288, !287}
!289 = distinct !{!289, !287}
!290 = distinct !{!290, !46, !76, !77}
!291 = distinct !{!291, !46, !76}
!292 = distinct !{!292, !46}
!293 = !{!24, !8, i64 88736}
!294 = !{!21, !11, i64 393720}
!295 = !{!288}
!296 = !{!289}
!297 = distinct !{!297, !46}
!298 = distinct !{!298, !46}
!299 = distinct !{!299, !46}
!300 = distinct !{!300, !46}
!301 = distinct !{!301, !46}
!302 = distinct !{!302, !46}
!303 = distinct !{!303, !46}
!304 = distinct !{!304, !46}
!305 = distinct !{!305, !46}
!306 = !{!19, !11, i64 56}
end_hunk_2
