Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_arpack?download=true
inline.NumInlined: 114
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_Z7dsaupd_PiPKcS_S1_S_PdS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a
  %i.br = icmp eq i8 %i.bq, 65
  br i1 %i.br, label %bb.g, label %.tail195.thread

.tail191:                                         ; preds = %.tail183
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 65
  br i1 %i.bu, label %bb.g, label %.tail195.thread

.tail195:                                         ; preds = %sub_0
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 69
  br i1 %i.bx, label %bb.g, label %.tail195.thread

.tail195.thread:                                  ; preds = %sub_0, %.tail187, %.tail191, %.tail195
  store i32 -5, ptr %i.ak, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.tail195.thread, %.tail195, %.tail191, %.tail187, %.tail183, %.tail
  %.pr297 = phi i32 [ -5, %.tail195.thread ], [ %.pr298, %.tail195 ], [ %.pr298, %.tail191 ], [ %.pr298, %.tail187 ], [ %.pr298, %.tail183 ], [ %.pr298, %.tail ] ; 2 uses
  %i.by = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %i.by, label %bb.h [
    i8 73, label %bb.i
    i8 71, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store i32 -6, ptr %i.ak, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.pr296 = phi i32 [ %.pr297, %bb.g ], [ %.pr297, %bb.g ], [ -6, %bb.h ]
  %i.bz = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.ca = load i32, ptr %15, align 4, !tbaa !8
  %i.cb = add i32 %i.bz, 8
  %i.cc = mul i32 %i.cb, %i.bz
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -7, ptr %i.ak, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pr = phi i32 [ -7, %bb.j ], [ %.pr296, %bb.i ] ; 2 uses
  %i.ce = add i32 %i.av, -6
  %or.cond176 = icmp ult i32 %i.ce, -5
  br i1 %or.cond176, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp eq i32 %i.av, 1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i8, ptr %1, align 1, !tbaa !9
  %i.ch = icmp eq i8 %i.cg, 71
  br i1 %i.ch, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %or.cond177 = icmp ugt i32 %i.al, 1
  br i1 %or.cond177, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load i32, ptr %4, align 4, !tbaa !8
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %sub_0200, label %.tail199.thread

sub_0200:                                         ; preds = %bb.o
  %i.ck = load i8, ptr %3, align 1
  %.not253 = icmp eq i8 %i.ck, 66
  br i1 %.not253, label %.tail199, label %.tail199.thread

.tail199:                                         ; preds = %sub_0200
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = icmp eq i8 %i.cm, 69
  br i1 %i.cn, label %.thread.sink.split, label %.tail199.thread

.tail199.thread:                                  ; preds = %sub_0200, %bb.o, %.tail199
  %.not173 = icmp eq i32 %.pr, 0
  br i1 %.not173, label %bb.p, label %.thread

.thread.sink.split:                               ; preds = %.tail199, %bb.n, %bb.m, %bb.k
  %.sink419 = phi i32 [ -10, %bb.k ], [ -11, %bb.m ], [ -12, %bb.n ], [ -13, %.tail199 ] ; 2 uses
  store i32 %.sink419, ptr %i.ak, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.tail199.thread
  %i.co = phi i32 [ %.pr, %.tail199.thread ], [ %.sink419, %.thread.sink.split ]
  store i32 %i.co, ptr %16, align 4, !tbaa !8
  store i32 99, ptr %0, align 4, !tbaa !8
  br label %bb.eu

bb.p:                                             ; preds = %.tail199.thread
  %i.cp = icmp slt i32 %i.ar, 1
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.as, align 4, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = load double, ptr %5, align 8, !tbaa !11
  %i.cr = fcmp ugt double %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store double f0x3CB0000000000000, ptr %5, align 8, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = load i32, ptr %7, align 4, !tbaa !8
  %i.ct = load i32, ptr %4, align 4, !tbaa !8
  %i.cu = sub nsw i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.bg, align 4, !tbaa !8
  %i.cv = load i32, ptr %4, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !8
  %i.cx = load i32, ptr %7, align 4, !tbaa !8     ; 4 uses
  %i.cy = add i32 %i.cx, 8
  %i.cz = mul i32 %i.cy, %i.cx                    ; 2 uses
  %.not174245 = icmp slt i32 %i.cz, 1
  br i1 %.not174245, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %14, i8 0, i64 %i.db, i1 false), !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %i.cx, ptr %i.dc, align 4, !tbaa !8
  %i.dd = load i32, ptr %7, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 1, ptr %i.df, align 4, !tbaa !8
  %i.dg = shl i32 %i.cx, 1
  %i.dh = or disjoint i32 %i.dg, 1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 60 ; 2 uses
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !8
  %i.dj = load i32, ptr %7, align 4, !tbaa !8
  %i.dk = add nsw i32 %i.dj, %i.dh                ; 2 uses
  store i32 %i.dk, ptr %13, align 4, !tbaa !8
  %i.dl = load i32, ptr %7, align 4, !tbaa !8
  %i.dm = add nsw i32 %i.dl, %i.dk                ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !8
  %i.do = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.dp = mul nsw i32 %i.do, %i.do
  %i.dq = add nsw i32 %i.dp, %i.dm                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !8
  %i.ds = load i32, ptr %7, align 4, !tbaa !8
  %i.dt = mul nsw i32 %i.ds, 3
  %i.du = add nsw i32 %i.dt, %i.dq                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 52
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !8
  %i.dx = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !8
  %i.dz = load i32, ptr %i.di, align 4, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !8
  %i.eb = load i32, ptr %13, align 4, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !8
  %i.ed = load i32, ptr %i.dr, align 4, !tbaa !8  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !8
  %.pre301 = load i32, ptr %0, align 4, !tbaa !8
  %i.ef = icmp eq i32 %.pre301, 0
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge300, %._crit_edge
  %i.eg = phi i1 [ false, %._crit_edge300 ], [ %i.ef, %._crit_edge ]
  %i.eh = phi i32 [ %.pre, %._crit_edge300 ], [ %i.ed, %._crit_edge ]
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 25 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 25 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = sext i32 %i.eo to i64                   ; 3 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ep ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 28 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = sext i32 %i.et to i64                   ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %i.ah, i64 %i.eu ; 22 uses
  %i.ew = load i32, ptr %13, align 4, !tbaa !8
  %i.ex = sext i32 %i.ew to i64                   ; 4 uses
  %i.ey = getelementptr [8 x i8], ptr %i.ah, i64 %i.ex ; 23 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = sext i32 %i.fa to i64                   ; 4 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.fe = sext i32 %i.eh to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.fe ; 8 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #7
  store i32 1, ptr %i.ac, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #7
  store i32 0, ptr %i.ad, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #7
  %i.fh = getelementptr i8, ptr %12, i64 -8       ; 11 uses
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 -8 ; 20 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ey, i64 -8 ; 27 uses
  %i.fk = getelementptr inbounds i8, ptr %i.ev, i64 -8 ; 34 uses
  br i1 %i.eg, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 240
  store <4 x i32> <i32 1, i32 3, i32 5, i32 7>, ptr %i.fl, align 4, !tbaa !8
  %i.fm = load i32, ptr %i.ei, align 4, !tbaa !8  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !8
  %i.fo = load i32, ptr %i.ej, align 4, !tbaa !8  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 116
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !8
  %i.fq = add nsw i32 %i.fo, %i.fm
  %i.fr = getelementptr inbounds nuw i8, ptr %13, i64 104
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 108
  store i32 0, ptr %i.fs, align 4, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 100
  store i32 0, ptr %i.ft, align 4, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 84
  store i32 1, ptr %i.fu, align 4, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 92
  store i32 0, ptr %i.fv, align 4, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.fw, align 4, !tbaa !8
  store i32 0, ptr %i.fg, align 4, !tbaa !8
  %i.fx = load i32, ptr %16, align 4, !tbaa !8
  %.not.i = icmp eq i32 %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.fy, align 4, !tbaa !8
  store i32 0, ptr %16, align 4, !tbaa !8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i32 0, ptr %i.fy, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 84 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !8
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.gd = load i32, ptr %2, align 4, !tbaa !8
  %i.ge = mul nsw i32 %i.gd, 3
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [8 x i8], ptr %i.fh, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 240
  call fastcc void @_ZL7dgetv0_PiPKcS_S_S_S_PdS_S2_S2_S_S2_S_S_(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef nonnull %i.gc, ptr noundef nonnull %2, ptr noundef nonnull %i.ac, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %i.gh, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i.gi, ptr noundef %16)
  %i.gj = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %.not369.i = icmp eq i32 %i.gj, 99
  br i1 %.not369.i, label %bb.aa, label %_ZL7dsaup2_PiPKcS_S1_S_S_PdS2_S_S_S_S_S2_S_S2_S_S2_S2_S2_S_S2_S_S2_S_S_.exit

bb.aa:                                            ; preds = %bb.z
  %i.gk = load i32, ptr %2, align 4, !tbaa !8
  %i.gl = mul nsw i32 %i.gk, 3
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr [8 x i8], ptr %i.fh, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !11
  %i.gq = fcmp oeq double %i.gp, 0.000000e+00
  br i1 %i.gq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 -9, ptr %16, align 4, !tbaa !8
  br label %.sink.split268.i

bb.ac:                                            ; preds = %bb.aa
  store i32 0, ptr %i.fz, align 4, !tbaa !8
  store i32 0, ptr %0, align 4, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 92 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !8
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !8
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.do, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gx = load i32, ptr %i.fg, align 4, !tbaa !8
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %thread-pre-split1.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.ha = load i32, ptr %2, align 4, !tbaa !8
  %i.hb = mul nsw i32 %i.ha, 3
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr [8 x i8], ptr %i.fh, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 160
  %.val383.i = load i32, ptr %i.er, align 4, !tbaa !8
  call fastcc void @_ZL7dsaitr_PiPKcS_S_S_S_PdS2_S2_S_S2_S_S_S2_S_S_(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.gz, ptr noundef nonnull readonly %i.ek, ptr noundef %6, ptr noundef %i.he, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.eq, i32 %.val383.i, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i.hf, ptr noundef %16)
  %i.hg = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %.not370.i = icmp eq i32 %i.hg, 99
  br i1 %.not370.i, label %bb.ah, label %_ZL7dsaup2_PiPKcS_S1_S_S_PdS2_S_S_S_S_S2_S_S2_S_S2_S2_S2_S_S2_S_S2_S_S_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hh = load i32, ptr %16, align 4, !tbaa !8    ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.hh, ptr %i.ej, align 4, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 100
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !8
  store i32 %i.hk, ptr %i.em, align 4, !tbaa !8
  store i32 -9999, ptr %16, align 4, !tbaa !8
  br label %.sink.split268.i

bb.aj:                                            ; preds = %bb.ep, %bb.ah
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 100 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !8
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !8
  store i32 0, ptr %0, align 4, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  store i32 1, ptr %i.gr, align 4, !tbaa !8
  %i.ho = load i32, ptr %2, align 4, !tbaa !8
  %i.hp = mul nsw i32 %i.ho, 3
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr [8 x i8], ptr %i.fh, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 160
  %.val.i = load i32, ptr %i.er, align 4, !tbaa !8
  call fastcc void @_ZL7dsaitr_PiPKcS_S_S_S_PdS2_S2_S_S2_S_S_S2_S_S_(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull readonly %i.ek, ptr noundef %6, ptr noundef %i.hs, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.eq, i32 %.val.i, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i.ht, ptr noundef %16)
  %i.hu = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %.not371.i = icmp eq i32 %i.hu, 99
  br i1 %.not371.i, label %bb.al, label %_ZL7dsaup2_PiPKcS_S1_S_S_PdS2_S_S_S_S_S2_S_S2_S_S2_S2_S2_S_S2_S_S2_S_S_.exit

bb.al:                                            ; preds = %bb.ak
  %i.hv = load i32, ptr %16, align 4, !tbaa !8    ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 %i.hv, ptr %i.ej, align 4, !tbaa !8
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 100
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !8
  store i32 %i.hy, ptr %i.em, align 4, !tbaa !8
  store i32 -9999, ptr %16, align 4, !tbaa !8
  br label %.sink.split268.i

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %i.gr, align 4, !tbaa !8
  %i.hz = load i32, ptr %2, align 4, !tbaa !8
  %i.ia = mul i32 %i.hz, 3
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr [8 x i8], ptr %i.fh, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 8      ; 8 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 24 uses
  %.val384.i = load i32, ptr %i.er, align 4, !tbaa !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #7
  store i32 1, ptr %i.aa, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #7
  %narrow.i.i = xor i32 %.val384.i, -1
  %i.if = sext i32 %narrow.i.i to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.if ; 2 uses
  %i.ih = shl i32 %.val384.i, 1
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr [8 x i8], ptr %i.ig, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 8
  call void @dcopy_(ptr noundef nonnull %i.ie, ptr noundef %i.ik, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.aa)
  %i.il = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.im = add nsw i32 %i.il, -1
  store i32 %i.im, ptr %i.ab, align 4, !tbaa !8
  %i.in = sext i32 %.val384.i to i64
  %i.io = getelementptr [8 x i8], ptr %i.ig, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 16
  call void @dcopy_(ptr noundef nonnull %i.ab, ptr noundef %i.ip, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.aa)
  %i.iq = load i32, ptr %i.ie, align 4, !tbaa !8  ; 6 uses
end_hunk_0
begin_hunk_1_@_Z7dsaupd_PiPKcS_S1_S_PdS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a
  %i.akz = fmul double %i.aky, %i.akw
  store double %i.akz, ptr %i.akx, align 8, !tbaa !11
  %i.ala = getelementptr [8 x i8], ptr %i.ev, i64 %indvars.iv134.i
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !11
  %i.alc = call noundef double @llvm.fabs.f64(double %i.alb) ; 2 uses
  %i.ald = fcmp olt double %i.alc, f0x3DC428A2F98D7292
  %i.ale = select i1 %i.ald, double f0x3DC428A2F98D7292, double %i.alc
  %i.alf = getelementptr [8 x i8], ptr %i.ey, i64 %indvars.iv134.i ; 2 uses
  %i.alg = load double, ptr %i.alf, align 8, !tbaa !11
  %i.alh = fmul double %i.alg, %i.ale
  store double %i.alh, ptr %i.alf, align 8, !tbaa !11
  %indvars.iv.next135.i.1 = add nuw nsw i64 %indvars.iv134.i, 2 ; 2 uses
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next135.i.1
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !11
  %i.alk = call noundef double @llvm.fabs.f64(double %i.alj) ; 2 uses
  %i.all = fcmp olt double %i.alk, f0x3DC428A2F98D7292
  %i.alm = select i1 %i.all, double f0x3DC428A2F98D7292, double %i.alk
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next135.i.1 ; 2 uses
  %i.alo = load double, ptr %i.aln, align 8, !tbaa !11
  %i.alp = fmul double %i.alo, %i.alm
  store double %i.alp, ptr %i.aln, align 8, !tbaa !11
  %indvars.iv.next135.i.2 = add nuw nsw i64 %indvars.iv134.i, 3 ; 2 uses
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next135.i.2
  %i.alr = load double, ptr %i.alq, align 8, !tbaa !11
  %i.als = call noundef double @llvm.fabs.f64(double %i.alr) ; 2 uses
  %i.alt = fcmp olt double %i.als, f0x3DC428A2F98D7292
  %i.alu = select i1 %i.alt, double f0x3DC428A2F98D7292, double %i.als
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next135.i.2 ; 2 uses
  %i.alw = load double, ptr %i.alv, align 8, !tbaa !11
  %i.alx = fmul double %i.alw, %i.alu
  store double %i.alx, ptr %i.alv, align 8, !tbaa !11
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %exitcond138.not.i.3 = icmp eq i64 %indvars.iv.next135.i.3, %wide.trip.count137.i
  br i1 %exitcond138.not.i.3, label %sub_020.i, label %.lr.ph75.i, !llvm.loop !55

sub_020.i:                                        ; preds = %.lr.ph75.i.prol.loopexit, %.lr.ph75.i, %middle.block680, %vec.epilog.middle.block694, %._crit_edge71.i
  %i.aly = load i8, ptr %3, align 1
  %.not82.i = icmp eq i8 %i.aly, 66
  br i1 %.not82.i, label %.tail19.i, label %.tail19.thread.i

.tail19.i:                                        ; preds = %sub_020.i
  %i.alz = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ama = load i8, ptr %i.alz, align 1
  %i.amb = icmp eq i8 %i.ama, 69
  br i1 %i.amb, label %bb.cz, label %.tail19.thread.i

bb.cz:                                            ; preds = %.tail19.i
  store i16 16716, ptr %i.ag, align 2
  br label %.tail19.thread.i

.tail19.thread.i:                                 ; preds = %bb.cz, %.tail19.i, %sub_020.i
  %.sink266.i = phi ptr [ %i.ag, %bb.cz ], [ %3, %sub_020.i ], [ %3, %.tail19.i ]
  %.val386.i = load i32, ptr %i.aag, align 4, !tbaa !8
  call fastcc void @_ZL7dsortr_PKcPiS1_PdS2_(ptr noundef nonnull %.sink266.i, i32 %.val389.i, i32 %.val386.i, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey)
  %i.amc = load i32, ptr %2, align 4, !tbaa !8
  %i.amd = mul nsw i32 %i.amc, 3
  %i.ame = sext i32 %i.amd to i64
  %i.amf = getelementptr [8 x i8], ptr %i.fh, i64 %i.ame
  %i.amg = getelementptr i8, ptr %i.amf, i64 8
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !11
  store double %i.amh, ptr %i.eq, align 8, !tbaa !11
  %i.ami = getelementptr inbounds nuw i8, ptr %13, i64 100 ; 2 uses
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !8
  %i.amk = load i32, ptr %i.em, align 4, !tbaa !8
  %i.aml = icmp sgt i32 %i.amj, %i.amk
  %.pre140.pre141.i = load i32, ptr %i.aag, align 4, !tbaa !8 ; 3 uses
  br i1 %i.aml, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %.tail19.thread.i
  %i.amm = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.amn = icmp slt i32 %.pre140.pre141.i, %i.amm
  br i1 %i.amn, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 1, ptr %16, align 4, !tbaa !8
  %.pre140.pre.i = load i32, ptr %i.aag, align 4, !tbaa !8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %.tail19.thread.i
  %.pre140.i = phi i32 [ %.pre140.pre.i, %bb.db ], [ %.pre140.pre141.i, %bb.da ], [ %.pre140.pre141.i, %.tail19.thread.i ] ; 3 uses
  %i.amo = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.amp = icmp eq i32 %i.amo, 0
  br i1 %i.amp, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.amq = load i32, ptr %i.zs, align 4, !tbaa !8
  %i.amr = icmp slt i32 %.pre140.i, %i.amq
  br i1 %i.amr, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 2, ptr %16, align 4, !tbaa !8
  %.pre139.i = load i32, ptr %i.aag, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.ams = phi i32 [ %.pre139.i, %bb.de ], [ %.pre140.i, %bb.dd ], [ %.pre140.i, %bb.dc ] ; 2 uses
  store i32 %i.ams, ptr %i.ej, align 4, !tbaa !8
  %i.amt = load i32, ptr %i.ami, align 4, !tbaa !8
  store i32 %i.amt, ptr %i.em, align 4, !tbaa !8
  store i32 %i.ams, ptr %i.ei, align 4, !tbaa !8
  br label %.sink.split268.i

bb.dg:                                            ; preds = %bb.cv
  %i.amu = icmp slt i32 %.pre.i, %i.adl
  %.pr.i.pre303 = load i32, ptr %i.el, align 4, !tbaa !8 ; 2 uses
  %i.amv = icmp eq i32 %.pr.i.pre303, 1
  %or.cond422 = select i1 %i.amu, i1 %i.amv, i1 false
  br i1 %or.cond422, label %bb.dh, label %thread-pre-split.i

bb.dh:                                            ; preds = %bb.dg
  store i32 %.pre.i, ptr %i.ae, align 4, !tbaa !8
  %i.amw = sdiv i32 %i.adm, 2
  %i.amx = call i32 @llvm.smin.i32(i32 %.pre.i, i32 %i.amw)
  %i.amy = add nsw i32 %i.adl, %i.amx             ; 3 uses
  store i32 %i.amy, ptr %i.ei, align 4, !tbaa !8
  %i.amz = icmp eq i32 %i.amy, 1
  %.pre302 = load i32, ptr %i.ie, align 4, !tbaa !8 ; 4 uses
  br i1 %i.amz, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.ana = icmp sgt i32 %.pre302, 5
  br i1 %i.ana, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.anb = lshr i32 %.pre302, 1
  br label %.sink.split.i

bb.dk:                                            ; preds = %bb.di
  %i.anc = icmp sgt i32 %.pre302, 2
  br i1 %i.anc, label %.sink.split.i, label %bb.dl

.sink.split.i:                                    ; preds = %bb.dk, %bb.dj
  %.sink267.i = phi i32 [ %i.anb, %bb.dj ], [ 2, %bb.dk ] ; 2 uses
  store i32 %.sink267.i, ptr %i.ei, align 4, !tbaa !8
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split.i, %bb.dk, %bb.dh
  %i.and = phi i32 [ %i.amy, %bb.dh ], [ 1, %bb.dk ], [ %.sink267.i, %.sink.split.i ] ; 2 uses
  %i.ane = sub nsw i32 %.pre302, %i.and
  store i32 %i.ane, ptr %i.ej, align 4, !tbaa !8
  %i.anf = icmp slt i32 %i.adl, %i.and
  br i1 %i.anf, label %bb.dm, label %.thread373

bb.dm:                                            ; preds = %bb.dl
  call fastcc void @_ZL7dsgets_PiPKcS_S_PdS2_S2_(ptr noundef nonnull readonly %i.el, ptr noundef readonly %3, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ff)
  %.pr.i.pre = load i32, ptr %i.el, align 4, !tbaa !8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.dg, %bb.dm
  %i.ang = phi i32 [ %.pr.i.pre303, %bb.dg ], [ %.pr.i.pre, %bb.dm ]
  %i.anh = icmp eq i32 %i.ang, 0
  br i1 %i.anh, label %bb.dn, label %.thread373

bb.dn:                                            ; preds = %thread-pre-split.i
  %i.ani = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 1, ptr %i.ani, align 4, !tbaa !8
  br label %.sink.split268.i

.thread373:                                       ; preds = %thread-pre-split.i, %bb.dl
  %i.anj = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.anj, align 4, !tbaa !8
  br label %bb.dq

bb.do:                                            ; preds = %bb.ae
  %.pre306 = load i32, ptr %i.el, align 4, !tbaa !8
  %i.ank = icmp eq i32 %.pre306, 0
  %i.anl = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.anl, align 4, !tbaa !8
  br i1 %i.ank, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @dcopy_(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ac)
  br label %bb.dq

bb.dq:                                            ; preds = %.thread373, %bb.dp, %bb.do
  %.val395.i = load i32, ptr %i.er, align 4, !tbaa !8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store double -1.000000e+00, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 1, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.anm = load i32, ptr %9, align 4, !tbaa !8    ; 5 uses
  %narrow332.i.i = xor i32 %i.anm, -1
  %i.ann = sext i32 %narrow332.i.i to i64
  %i.ano = getelementptr inbounds [8 x i8], ptr %8, i64 %i.ann ; 4 uses
  %narrow.i401.i = xor i32 %.val395.i, -1
  %i.anp = sext i32 %narrow.i401.i to i64         ; 5 uses
  %i.anq = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.anp ; 12 uses
  %i.anr = load i32, ptr %i.fd, align 4, !tbaa !8 ; 8 uses
  %narrow329.i.i = xor i32 %i.anr, -1
  %i.ans = sext i32 %narrow329.i.i to i64         ; 4 uses
  %i.ant = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ans ; 8 uses
  %i.anu = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.anv = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.anw = add nsw i32 %i.anv, %i.anu
  store i32 %i.anw, ptr %i.k, align 4, !tbaa !8
  call void @dlaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fd)
  %i.anx = load i32, ptr %i.ej, align 4, !tbaa !8 ; 3 uses
  %i.any = icmp eq i32 %i.anx, 0
  br i1 %i.any, label %_ZL7dsapps_PiS_S_PdS0_S_S0_S_S0_S0_S_S0_.exit.i, label %.preheader3.i.i

.preheader3.i.i:                                  ; preds = %bb.dq
  %.not28.i.i = icmp slt i32 %i.anx, 1
  br i1 %.not28.i.i, label %.preheader3.._crit_edge31_crit_edge.i.i, label %.preheader.lr.ph.i.i

.preheader3.._crit_edge31_crit_edge.i.i:          ; preds = %.preheader3.i.i
  %.pre79.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  br label %._crit_edge31.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader3.i.i
  %i.anz = shl i32 %.val395.i, 1                  ; 3 uses
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = sext i32 %.val395.i to i64             ; 3 uses
  %i.aoc = sext i32 %i.anr to i64                 ; 5 uses
  %i.aod = add nuw i32 %i.anx, 1
  %wide.trip.count68.i.i = zext i32 %i.aod to i64
  %.pre.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.anq, i64 %i.aoa ; 3 uses
  %invariant.gep110.i.i = getelementptr [8 x i8], ptr %i.anq, i64 %i.aob ; 3 uses
  %i.aoe = shl nsw i64 %i.fb, 3                   ; 4 uses
  %i.aof = shl nsw i64 %i.ans, 3                  ; 4 uses
  %i.aog = shl nsw i64 %i.aoc, 3
  %i.aoh = shl nsw i64 %i.aoc, 3
  %i.aoi = shl nsw i64 %i.aoc, 3
  %invariant.op831 = add nsw i64 %i.fb, %i.ans
  %invariant.op832 = add nsw i64 %i.fb, %i.ans
  %i.aoj = getelementptr i8, ptr %14, i64 %i.aoe
  %i.aok = getelementptr i8, ptr %i.aoj, i64 %i.aof
  %i.aol = getelementptr i8, ptr %14, i64 %i.aoe
  %i.aom = getelementptr i8, ptr %i.aol, i64 %i.aof
  %i.aon = getelementptr i8, ptr %i.aom, i64 -8
  %i.aoo = getelementptr i8, ptr %14, i64 %i.aoe
  %i.aop = getelementptr i8, ptr %i.aoo, i64 %i.aof
  %i.aoq = getelementptr i8, ptr %14, i64 %i.aoe
  %i.aor = getelementptr i8, ptr %i.aoq, i64 %i.aof
  %i.aos = getelementptr i8, ptr %i.aor, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge24.i.i, %.preheader.lr.ph.i.i
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %.preheader.lr.ph.i.i ], [ %.pre82.i.i, %._crit_edge24.i.i ] ; 2 uses
  %indvars.iv65.i.i = phi i64 [ 1, %.preheader.lr.ph.i.i ], [ %indvars.iv.next66.i.i, %._crit_edge24.i.i ] ; 3 uses
  %.031730.i.i = phi i32 [ 1, %.preheader.lr.ph.i.i ], [ %.1.lcssa.i.i, %._crit_edge24.i.i ] ; 4 uses
  %indvars128.i = trunc i64 %indvars.iv65.i.i to i32 ; 2 uses
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv65.i.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dy, %.preheader.i.i
  %.pre84.i.i = phi i32 [ %.pre82.i.i, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ]
  %i.aou = phi i32 [ %i.axw, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi i32 [ %i.axl, %bb.dy ], [ %.031730.i.i, %.preheader.i.i ] ; 9 uses
  %i.aov = sext i32 %.0.i.i to i64                ; 3 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %i.aou)
  %wide.trip.count.i402.i = sext i32 %smax.i.i to i64
  %exitcond.not.i404.i472.not = icmp slt i32 %.0.i.i, %i.aou
  br i1 %exitcond.not.i404.i472.not, label %.lr.ph475, label %.loopexit2.i.i

bb.ds:                                            ; preds = %.lr.ph475
  %exitcond.not.i404.i = icmp eq i64 %indvars.iv.next.i405.i, %wide.trip.count.i402.i
  br i1 %exitcond.not.i404.i, label %.loopexit2.i.i, label %.lr.ph475, !llvm.loop !56

.lr.ph475:                                        ; preds = %bb.dr, %bb.ds
  %indvars.iv.i403.i473 = phi i64 [ %indvars.iv.next.i405.i, %bb.ds ], [ %i.aov, %bb.dr ] ; 3 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i403.i473
  %indvars.iv.next.i405.i = add nsw i64 %indvars.iv.i403.i473, 1 ; 3 uses
  %i.aow = load <2 x double>, ptr %gep.i.i, align 8, !tbaa !11
  %i.aox = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aow) ; 2 uses
  %shift698 = shufflevector <2 x double> %i.aox, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop699 = fadd <2 x double> %i.aox, %shift698
  %i.aoy = extractelement <2 x double> %foldExtExtBinop699, i64 0
  %i.aoz = getelementptr [8 x i8], ptr %i.anq, i64 %indvars.iv.next.i405.i ; 2 uses
  %i.apa = getelementptr [8 x i8], ptr %i.aoz, i64 %i.aob
  %i.apb = load double, ptr %i.apa, align 8, !tbaa !11
  %i.apc = fmul double %i.aoy, f0x3CB0000000000000
  %i.apd = fcmp ugt double %i.apb, %i.apc
  br i1 %i.apd, label %bb.ds, label %bb.dt, !llvm.loop !56

bb.dt:                                            ; preds = %.lr.ph475
  %i.ape = getelementptr [8 x i8], ptr %i.aoz, i64 %i.aob
  %i.apf = trunc nsw i64 %indvars.iv.i403.i473 to i32
  store double 0.000000e+00, ptr %i.ape, align 8, !tbaa !11
  br label %.loopexit2.i.i

.loopexit2.i.i:                                   ; preds = %bb.ds, %bb.dr, %bb.dt
  %.0318.i.i = phi i32 [ %i.apf, %bb.dt ], [ %i.aou, %bb.dr ], [ %i.aou, %bb.ds ] ; 7 uses
  %i.apg = icmp slt i32 %.0.i.i, %.0318.i.i
  br i1 %i.apg, label %bb.du, label %.loopexit1.i.i

bb.du:                                            ; preds = %.loopexit2.i.i
  %i.aph = add nsw i32 %.0.i.i, %i.anz
  %i.api = sext i32 %i.aph to i64
  %i.apj = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %i.api ; 3 uses
  %i.apk = load double, ptr %i.apj, align 8, !tbaa !11
  %i.apl = load double, ptr %i.aot, align 8, !tbaa !11
  %i.apm = fsub double %i.apk, %i.apl
  store double %i.apm, ptr %i.g, align 8, !tbaa !11
  %i.apn = add nsw i32 %.0.i.i, 1                 ; 3 uses
  %i.apo = add nsw i32 %i.apn, %.val395.i
  %i.app = sext i32 %i.apo to i64
  %i.apq = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %i.app ; 3 uses
  %i.apr = load double, ptr %i.apq, align 8, !tbaa !11
  store double %i.apr, ptr %i.h, align 8, !tbaa !11
  call void @dlartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.aps = load double, ptr %i.f, align 8, !tbaa !11 ; 19 uses
  %i.apt = load double, ptr %i.apj, align 8, !tbaa !11 ; 2 uses
  %i.apu = load double, ptr %i.j, align 8, !tbaa !11 ; 14 uses
  %i.apv = load double, ptr %i.apq, align 8, !tbaa !11 ; 3 uses
  %i.apw = fmul double %i.apu, %i.apv             ; 2 uses
  %i.apx = call double @llvm.fmuladd.f64(double %i.aps, double %i.apt, double %i.apw)
  %i.apy = add nsw i32 %i.apn, %i.anz
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %i.apz ; 2 uses
  %i.aqb = load double, ptr %i.aqa, align 8, !tbaa !11 ; 2 uses
  %i.aqc = fmul double %i.apu, %i.aqb
  %i.aqd = call double @llvm.fmuladd.f64(double %i.aps, double %i.apv, double %i.aqc)
  %i.aqe = fneg double %i.apw
  %i.aqf = call double @llvm.fmuladd.f64(double %i.aps, double %i.aqb, double %i.aqe) ; 2 uses
  %i.aqg = fneg double %i.apt
  %i.aqh = fmul double %i.apu, %i.aqg
  %i.aqi = call double @llvm.fmuladd.f64(double %i.aps, double %i.apv, double %i.aqh) ; 2 uses
  %i.aqj = fmul double %i.apu, %i.aqd
  %i.aqk = call double @llvm.fmuladd.f64(double %i.aps, double %i.apx, double %i.aqj)
  store double %i.aqk, ptr %i.apj, align 8, !tbaa !11
  %i.aql = fneg double %i.aqi
  %i.aqm = fmul double %i.apu, %i.aql
  %i.aqn = call double @llvm.fmuladd.f64(double %i.aps, double %i.aqf, double %i.aqm)
  store double %i.aqn, ptr %i.aqa, align 8, !tbaa !11
  %i.aqo = fmul double %i.apu, %i.aqf
  %i.aqp = call double @llvm.fmuladd.f64(double %i.aps, double %i.aqi, double %i.aqo)
  store double %i.aqp, ptr %i.apq, align 8, !tbaa !11
  %i.aqq = add i32 %.0.i.i, %indvars128.i
  %i.aqr = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  %i.aqs = call i32 @llvm.smin.i32(i32 %i.aqq, i32 %i.aqr) ; 5 uses
  %.not3347.i.i = icmp slt i32 %i.aqs, 1
  br i1 %.not3347.i.i, label %._crit_edge.i.i, label %.lr.ph.i406.i

.lr.ph.i406.i:                                    ; preds = %bb.du
  %i.aqt = mul nsw i32 %.0.i.i, %i.anr
  %i.aqu = mul nsw i32 %i.apn, %i.anr
  %i.aqv = fneg double %i.apu                     ; 6 uses
  %i.aqw = sext i32 %i.aqt to i64                 ; 2 uses
  %i.aqx = sext i32 %i.aqu to i64                 ; 2 uses
  %invariant.gep102.i.i = getelementptr [8 x i8], ptr %i.ant, i64 %i.aqw ; 6 uses
  %invariant.gep104.i.i = getelementptr [8 x i8], ptr %i.ant, i64 %i.aqx ; 6 uses
  %narrow.i = add nuw i32 %i.aqs, 1               ; 4 uses
  %i.aqy = zext i32 %narrow.i to i64              ; 3 uses
  %i.aqz = zext nneg i32 %i.aqs to i64            ; 2 uses
  %min.iters.check530 = icmp ult i32 %i.aqs, 8
  br i1 %min.iters.check530, label %scalar.ph529.preheader, label %vector.memcheck531

vector.memcheck531:                               ; preds = %.lr.ph.i406.i
  %.reass = add nsw i64 %i.aqx, %invariant.op831
  %i.ara = shl nsw i64 %.reass, 3                 ; 2 uses
  %i.arb = getelementptr i8, ptr %14, i64 %i.ara
  %i.arc = shl nuw nsw i64 %i.aqy, 3              ; 2 uses
  %17 = getelementptr i8, ptr %14, i64 %i.ara
  %i.ard = getelementptr i8, ptr %17, i64 %i.arc
  %i.are = getelementptr i8, ptr %i.ard, i64 -8
  %.reass833 = add nsw i64 %i.aqw, %invariant.op832
  %i.arf = shl nsw i64 %.reass833, 3              ; 2 uses
  %18 = getelementptr i8, ptr %14, i64 %i.arf
  %i.arg = getelementptr i8, ptr %14, i64 %i.arf
  %i.arh = getelementptr i8, ptr %i.arg, i64 %i.arc
  %i.ari = getelementptr i8, ptr %i.arh, i64 -8
  %bound0532 = icmp ult ptr %i.arb, %i.ari
  %bound1533 = icmp ult ptr %18, %i.are
  %found.conflict534 = and i1 %bound0532, %bound1533
  br i1 %found.conflict534, label %scalar.ph529.preheader, label %vector.ph535

vector.ph535:                                     ; preds = %vector.memcheck531
  %n.vec536 = and i64 %i.aqz, 2147483640          ; 3 uses
  %i.arj = or disjoint i64 %n.vec536, 1
  %broadcast.splatinsert537 = insertelement <4 x double> poison, double %i.aqv, i64 0
  %broadcast.splat538 = shufflevector <4 x double> %broadcast.splatinsert537, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert539 = insertelement <4 x double> poison, double %i.apu, i64 0
  %broadcast.splat540 = shufflevector <4 x double> %broadcast.splatinsert539, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert541 = insertelement <4 x double> poison, double %i.aps, i64 0
  %broadcast.splat542 = shufflevector <4 x double> %broadcast.splatinsert541, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body543

vector.body543:                                   ; preds = %vector.body543, %vector.ph535
  %index544 = phi i64 [ 0, %vector.ph535 ], [ %index.next549, %vector.body543 ] ; 2 uses
  %i.ark = or disjoint i64 %index544, 1           ; 2 uses
  %i.arl = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %i.ark ; 3 uses
  %i.arm = getelementptr i8, ptr %i.arl, i64 32   ; 2 uses
  %wide.load545 = load <4 x double>, ptr %i.arl, align 8, !tbaa !11, !alias.scope !86 ; 2 uses
  %wide.load546 = load <4 x double>, ptr %i.arm, align 8, !tbaa !11, !alias.scope !86 ; 2 uses
  %i.arn = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %i.ark ; 3 uses
  %i.aro = getelementptr i8, ptr %i.arn, i64 32   ; 2 uses
  %wide.load547 = load <4 x double>, ptr %i.arn, align 8, !tbaa !11, !alias.scope !87, !noalias !86 ; 2 uses
  %wide.load548 = load <4 x double>, ptr %i.aro, align 8, !tbaa !11, !alias.scope !87, !noalias !86 ; 2 uses
  %i.arp = fmul <4 x double> %broadcast.splat540, %wide.load547
  %i.arq = fmul <4 x double> %broadcast.splat540, %wide.load548
  %i.arr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat542, <4 x double> %wide.load545, <4 x double> %i.arp)
  %i.ars = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat542, <4 x double> %wide.load546, <4 x double> %i.arq)
  %i.art = fmul <4 x double> %broadcast.splat542, %wide.load547
  %i.aru = fmul <4 x double> %broadcast.splat542, %wide.load548
  %i.arv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %wide.load545, <4 x double> %i.art)
  %i.arw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %wide.load546, <4 x double> %i.aru)
  store <4 x double> %i.arv, ptr %i.arn, align 8, !tbaa !11, !alias.scope !87, !noalias !86
  store <4 x double> %i.arw, ptr %i.aro, align 8, !tbaa !11, !alias.scope !87, !noalias !86
  store <4 x double> %i.arr, ptr %i.arl, align 8, !tbaa !11, !alias.scope !86
  store <4 x double> %i.ars, ptr %i.arm, align 8, !tbaa !11, !alias.scope !86
  %index.next549 = add nuw i64 %index544, 8       ; 2 uses
  %i.arx = icmp eq i64 %index.next549, %n.vec536
  br i1 %i.arx, label %middle.block550, label %vector.body543, !llvm.loop !60

middle.block550:                                  ; preds = %vector.body543
  %cmp.n551 = icmp eq i64 %n.vec536, %i.aqz
  br i1 %cmp.n551, label %._crit_edge.i.i, label %scalar.ph529.preheader

scalar.ph529.preheader:                           ; preds = %vector.memcheck531, %.lr.ph.i406.i, %middle.block550
  %indvars.iv49.i.i.ph = phi i64 [ 1, %vector.memcheck531 ], [ 1, %.lr.ph.i406.i ], [ %i.arj, %middle.block550 ] ; 4 uses
  %i.ary = sub nsw i64 %i.aqy, %indvars.iv49.i.i.ph
  %i.arz = zext nneg i32 %i.aqs to i64
  %i.asa = sub nsw i64 %i.arz, %indvars.iv49.i.i.ph
  %xtraiter776 = and i64 %i.ary, 3                ; 2 uses
  %lcmp.mod777.not = icmp eq i64 %xtraiter776, 0
  br i1 %lcmp.mod777.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol

scalar.ph529.prol:                                ; preds = %scalar.ph529.preheader, %scalar.ph529.prol
  %indvars.iv49.i.i.prol = phi i64 [ %indvars.iv.next50.i.i.prol, %scalar.ph529.prol ], [ %indvars.iv49.i.i.ph, %scalar.ph529.preheader ] ; 3 uses
  %prol.iter778 = phi i64 [ %prol.iter778.next, %scalar.ph529.prol ], [ 0, %scalar.ph529.preheader ]
  %gep103.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.asb = load double, ptr %gep103.i.i.prol, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.asc = load double, ptr %gep105.i.i.prol, align 8, !tbaa !11 ; 2 uses
  %i.asd = fmul double %i.apu, %i.asc
  %i.ase = call double @llvm.fmuladd.f64(double %i.aps, double %i.asb, double %i.asd)
  %i.asf = fmul double %i.aps, %i.asc
  %i.asg = call double @llvm.fmuladd.f64(double %i.aqv, double %i.asb, double %i.asf)
  store double %i.asg, ptr %gep105.i.i.prol, align 8, !tbaa !11
  store double %i.ase, ptr %gep103.i.i.prol, align 8, !tbaa !11
  %indvars.iv.next50.i.i.prol = add nuw nsw i64 %indvars.iv49.i.i.prol, 1 ; 2 uses
  %prol.iter778.next = add i64 %prol.iter778, 1   ; 2 uses
  %prol.iter778.cmp.not = icmp eq i64 %prol.iter778.next, %xtraiter776
  br i1 %prol.iter778.cmp.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol, !llvm.loop !61

scalar.ph529.prol.loopexit:                       ; preds = %scalar.ph529.prol, %scalar.ph529.preheader
  %indvars.iv49.i.i.unr = phi i64 [ %indvars.iv49.i.i.ph, %scalar.ph529.preheader ], [ %indvars.iv.next50.i.i.prol, %scalar.ph529.prol ]
  %i.ash = icmp ult i64 %i.asa, 3
  br i1 %i.ash, label %._crit_edge.i.i, label %scalar.ph529

scalar.ph529:                                     ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i.3, %scalar.ph529 ], [ %indvars.iv49.i.i.unr, %scalar.ph529.prol.loopexit ] ; 6 uses
  %gep103.i.i = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.asi = load double, ptr %gep103.i.i, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.asj = load double, ptr %gep105.i.i, align 8, !tbaa !11 ; 2 uses
  %i.ask = fmul double %i.apu, %i.asj
  %i.asl = call double @llvm.fmuladd.f64(double %i.aps, double %i.asi, double %i.ask)
  %i.asm = fmul double %i.aps, %i.asj
  %i.asn = call double @llvm.fmuladd.f64(double %i.aqv, double %i.asi, double %i.asm)
  store double %i.asn, ptr %gep105.i.i, align 8, !tbaa !11
  store double %i.asl, ptr %gep103.i.i, align 8, !tbaa !11
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %gep103.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.aso = load double, ptr %gep103.i.i.1, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.asp = load double, ptr %gep105.i.i.1, align 8, !tbaa !11 ; 2 uses
  %i.asq = fmul double %i.apu, %i.asp
  %i.asr = call double @llvm.fmuladd.f64(double %i.aps, double %i.aso, double %i.asq)
  %i.ass = fmul double %i.aps, %i.asp
  %i.ast = call double @llvm.fmuladd.f64(double %i.aqv, double %i.aso, double %i.ass)
  store double %i.ast, ptr %gep105.i.i.1, align 8, !tbaa !11
  store double %i.asr, ptr %gep103.i.i.1, align 8, !tbaa !11
  %indvars.iv.next50.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i, 2 ; 2 uses
  %gep103.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.asu = load double, ptr %gep103.i.i.2, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.asv = load double, ptr %gep105.i.i.2, align 8, !tbaa !11 ; 2 uses
  %i.asw = fmul double %i.apu, %i.asv
  %i.asx = call double @llvm.fmuladd.f64(double %i.aps, double %i.asu, double %i.asw)
  %i.asy = fmul double %i.aps, %i.asv
  %i.asz = call double @llvm.fmuladd.f64(double %i.aqv, double %i.asu, double %i.asy)
  store double %i.asz, ptr %gep105.i.i.2, align 8, !tbaa !11
  store double %i.asx, ptr %gep103.i.i.2, align 8, !tbaa !11
  %indvars.iv.next50.i.i.2 = add nuw nsw i64 %indvars.iv49.i.i, 3 ; 2 uses
  %gep103.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.ata = load double, ptr %gep103.i.i.3, align 8, !tbaa !11 ; 2 uses
  %gep105.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.atb = load double, ptr %gep105.i.i.3, align 8, !tbaa !11 ; 2 uses
  %i.atc = fmul double %i.apu, %i.atb
  %i.atd = call double @llvm.fmuladd.f64(double %i.aps, double %i.ata, double %i.atc)
  %i.ate = fmul double %i.aps, %i.atb
  %i.atf = call double @llvm.fmuladd.f64(double %i.aqv, double %i.ata, double %i.ate)
  store double %i.atf, ptr %gep105.i.i.3, align 8, !tbaa !11
  store double %i.atd, ptr %gep103.i.i.3, align 8, !tbaa !11
  %indvars.iv.next50.i.i.3 = add nuw nsw i64 %indvars.iv49.i.i, 4 ; 2 uses
  %exitcond124.not.i.3 = icmp eq i64 %indvars.iv.next50.i.i.3, %i.aqy
  br i1 %exitcond124.not.i.3, label %._crit_edge.i.i, label %scalar.ph529, !llvm.loop !62

._crit_edge.i.i:                                  ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529, %middle.block550, %bb.du
  %.0320.lcssa.i.i = phi i32 [ 1, %bb.du ], [ %narrow.i, %middle.block550 ], [ %narrow.i, %scalar.ph529 ], [ %narrow.i, %scalar.ph529.prol.loopexit ]
  %i.atg = add nsw i32 %.0318.i.i, -1             ; 2 uses
  store i32 %i.atg, ptr %i.e, align 4, !tbaa !8
  %.not33514.not.i.i = icmp slt i32 %.0.i.i, %i.atg
  br i1 %.not33514.not.i.i, label %.lr.ph18.preheader.i.i, label %.loopexit1.i.i

.lr.ph18.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.ath = add nsw i64 %i.aov, 1                  ; 2 uses
  %i.ati = sext i32 %.0318.i.i to i64
  %i.atj = mul i64 %i.aog, %i.ath                 ; 2 uses
  %i.atk = add nsw i64 %i.aov, 2
  %i.atl = mul i64 %i.aoh, %i.atk                 ; 2 uses
  %i.atm = getelementptr i8, ptr %i.aok, i64 %i.atl
  %i.atn = getelementptr i8, ptr %i.aon, i64 %i.atl
  %i.ato = getelementptr i8, ptr %i.aop, i64 %i.atj
  %i.atp = getelementptr i8, ptr %i.aos, i64 %i.atj
  br label %.lr.ph18.i.i

.loopexit.i.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block515, %bb.dw
  %.2.lcssa.i.i = phi i32 [ 1, %bb.dw ], [ %narrow184.i, %middle.block515 ], [ %narrow184.i, %scalar.ph ], [ %narrow184.i, %scalar.ph.prol.loopexit ]
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next56.i.i, %i.ati
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond127.not.i, label %.loopexit1.i.i, label %.lr.ph18.i.i, !llvm.loop !63

.lr.ph18.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph18.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %.lr.ph18.preheader.i.i ] ; 2 uses
  %i.atq = phi double [ %i.auc, %.loopexit.i.i ], [ %i.aps, %.lr.ph18.preheader.i.i ]
  %i.atr = phi double [ %i.aub, %.loopexit.i.i ], [ %i.apu, %.lr.ph18.preheader.i.i ]
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.loopexit.i.i ], [ %i.ath, %.lr.ph18.preheader.i.i ] ; 4 uses
  %.132116.i.i = phi i32 [ %.2.lcssa.i.i, %.loopexit.i.i ], [ %.0320.lcssa.i.i, %.lr.ph18.preheader.i.i ]
  %gep111.i.i = getelementptr [8 x i8], ptr %invariant.gep110.i.i, i64 %indvars.iv55.i.i ; 2 uses
  %i.ats = load double, ptr %gep111.i.i, align 8, !tbaa !11
  store double %i.ats, ptr %i.g, align 8, !tbaa !11
  %indvars.iv.next56.i.i = add nsw i64 %indvars.iv55.i.i, 1 ; 5 uses
  %gep113.i.i = getelementptr [8 x i8], ptr %invariant.gep110.i.i, i64 %indvars.iv.next56.i.i ; 4 uses
  %i.att = load double, ptr %gep113.i.i, align 8, !tbaa !11 ; 2 uses
  %i.atu = fmul double %i.atr, %i.att
  store double %i.atu, ptr %i.h, align 8, !tbaa !11
  %i.atv = fmul double %i.atq, %i.att
  store double %i.atv, ptr %gep113.i.i, align 8, !tbaa !11
  call void @dlartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.atw = load double, ptr %i.i, align 8, !tbaa !11 ; 3 uses
  %i.atx = fcmp olt double %i.atw, 0.000000e+00
  %.pre76.i.i = load double, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %.pre77.i.i = load double, ptr %i.j, align 8, !tbaa !11 ; 2 uses
  br i1 %i.atx, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph18.i.i
  %i.aty = fneg double %i.atw                     ; 2 uses
  store double %i.aty, ptr %i.i, align 8, !tbaa !11
  %i.atz = fneg double %.pre76.i.i                ; 2 uses
  store double %i.atz, ptr %i.f, align 8, !tbaa !11
  %i.aua = fneg double %.pre77.i.i                ; 2 uses
  store double %i.aua, ptr %i.j, align 8, !tbaa !11
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph18.i.i
  %i.aub = phi double [ %i.aua, %bb.dv ], [ %.pre77.i.i, %.lr.ph18.i.i ] ; 14 uses
  %i.auc = phi double [ %i.atz, %bb.dv ], [ %.pre76.i.i, %.lr.ph18.i.i ] ; 19 uses
  %i.aud = phi double [ %i.aty, %bb.dv ], [ %i.atw, %.lr.ph18.i.i ]
  store double %i.aud, ptr %gep111.i.i, align 8, !tbaa !11
  %gep115.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv55.i.i ; 2 uses
  %i.aue = load double, ptr %gep115.i.i, align 8, !tbaa !11 ; 2 uses
  %i.auf = load double, ptr %gep113.i.i, align 8, !tbaa !11 ; 3 uses
  %i.aug = fmul double %i.aub, %i.auf             ; 2 uses
  %i.auh = call double @llvm.fmuladd.f64(double %i.auc, double %i.aue, double %i.aug)
  %gep117.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next56.i.i ; 2 uses
  %i.aui = load double, ptr %gep117.i.i, align 8, !tbaa !11 ; 2 uses
  %i.auj = fmul double %i.aub, %i.aui
  %i.auk = call double @llvm.fmuladd.f64(double %i.auc, double %i.auf, double %i.auj)
  %i.aul = fneg double %i.aue
  %i.aum = fmul double %i.aub, %i.aul
  %i.aun = call double @llvm.fmuladd.f64(double %i.auc, double %i.auf, double %i.aum) ; 2 uses
end_hunk_1
begin_hunk_2_@_Z7ssaupd_PiPKcS_S1_S_PfS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a
  %i.br = icmp eq i8 %i.bq, 65
  br i1 %i.br, label %bb.g, label %.tail195.thread

.tail191:                                         ; preds = %.tail183
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 65
  br i1 %i.bu, label %bb.g, label %.tail195.thread

.tail195:                                         ; preds = %sub_0
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = icmp eq i8 %i.bw, 69
  br i1 %i.bx, label %bb.g, label %.tail195.thread

.tail195.thread:                                  ; preds = %sub_0, %.tail187, %.tail191, %.tail195
  store i32 -5, ptr %i.ak, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.tail195.thread, %.tail195, %.tail191, %.tail187, %.tail183, %.tail
  %.pr297 = phi i32 [ -5, %.tail195.thread ], [ %.pr298, %.tail195 ], [ %.pr298, %.tail191 ], [ %.pr298, %.tail187 ], [ %.pr298, %.tail183 ], [ %.pr298, %.tail ] ; 2 uses
  %i.by = load i8, ptr %1, align 1, !tbaa !9
  switch i8 %i.by, label %bb.h [
    i8 73, label %bb.i
    i8 71, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  store i32 -6, ptr %i.ak, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.h
  %.pr296 = phi i32 [ %.pr297, %bb.g ], [ %.pr297, %bb.g ], [ -6, %bb.h ]
  %i.bz = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.ca = load i32, ptr %15, align 4, !tbaa !8
  %i.cb = add i32 %i.bz, 8
  %i.cc = mul i32 %i.cb, %i.bz
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -7, ptr %i.ak, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pr = phi i32 [ -7, %bb.j ], [ %.pr296, %bb.i ] ; 2 uses
  %i.ce = add i32 %i.av, -6
  %or.cond176 = icmp ult i32 %i.ce, -5
  br i1 %or.cond176, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = icmp eq i32 %i.av, 1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i8, ptr %1, align 1, !tbaa !9
  %i.ch = icmp eq i8 %i.cg, 71
  br i1 %i.ch, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %or.cond177 = icmp ugt i32 %i.al, 1
  br i1 %or.cond177, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load i32, ptr %4, align 4, !tbaa !8
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %sub_0200, label %.tail199.thread

sub_0200:                                         ; preds = %bb.o
  %i.ck = load i8, ptr %3, align 1
  %.not253 = icmp eq i8 %i.ck, 66
  br i1 %.not253, label %.tail199, label %.tail199.thread

.tail199:                                         ; preds = %sub_0200
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = icmp eq i8 %i.cm, 69
  br i1 %i.cn, label %.thread.sink.split, label %.tail199.thread

.tail199.thread:                                  ; preds = %sub_0200, %bb.o, %.tail199
  %.not173 = icmp eq i32 %.pr, 0
  br i1 %.not173, label %bb.p, label %.thread

.thread.sink.split:                               ; preds = %.tail199, %bb.n, %bb.m, %bb.k
  %.sink419 = phi i32 [ -10, %bb.k ], [ -11, %bb.m ], [ -12, %bb.n ], [ -13, %.tail199 ] ; 2 uses
  store i32 %.sink419, ptr %i.ak, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.tail199.thread
  %i.co = phi i32 [ %.pr, %.tail199.thread ], [ %.sink419, %.thread.sink.split ]
  store i32 %i.co, ptr %16, align 4, !tbaa !8
  store i32 99, ptr %0, align 4, !tbaa !8
  br label %bb.eu

bb.p:                                             ; preds = %.tail199.thread
  %i.cp = icmp slt i32 %i.ar, 1
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.as, align 4, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = load float, ptr %5, align 4, !tbaa !19
  %i.cr = fcmp ugt float %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store float f0x34000000, ptr %5, align 4, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = load i32, ptr %7, align 4, !tbaa !8
  %i.ct = load i32, ptr %4, align 4, !tbaa !8
  %i.cu = sub nsw i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.bg, align 4, !tbaa !8
  %i.cv = load i32, ptr %4, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !8
  %i.cx = load i32, ptr %7, align 4, !tbaa !8     ; 4 uses
  %i.cy = add i32 %i.cx, 8
  %i.cz = mul i32 %i.cy, %i.cx                    ; 2 uses
  %.not174245 = icmp slt i32 %i.cz, 1
  br i1 %.not174245, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %i.db, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %i.cx, ptr %i.dc, align 4, !tbaa !8
  %i.dd = load i32, ptr %7, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 1, ptr %i.df, align 4, !tbaa !8
  %i.dg = shl i32 %i.cx, 1
  %i.dh = or disjoint i32 %i.dg, 1                ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 60 ; 2 uses
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !8
  %i.dj = load i32, ptr %7, align 4, !tbaa !8
  %i.dk = add nsw i32 %i.dj, %i.dh                ; 2 uses
  store i32 %i.dk, ptr %13, align 4, !tbaa !8
  %i.dl = load i32, ptr %7, align 4, !tbaa !8
  %i.dm = add nsw i32 %i.dl, %i.dk                ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !8
  %i.do = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.dp = mul nsw i32 %i.do, %i.do
  %i.dq = add nsw i32 %i.dp, %i.dm                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !8
  %i.ds = load i32, ptr %7, align 4, !tbaa !8
  %i.dt = mul nsw i32 %i.ds, 3
  %i.du = add nsw i32 %i.dt, %i.dq                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 52
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !8
  %i.dx = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !8
  %i.dz = load i32, ptr %i.di, align 4, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !8
  %i.eb = load i32, ptr %13, align 4, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !8
  %i.ed = load i32, ptr %i.dr, align 4, !tbaa !8  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !8
  %.pre301 = load i32, ptr %0, align 4, !tbaa !8
  %i.ef = icmp eq i32 %.pre301, 0
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge300, %._crit_edge
  %i.eg = phi i1 [ false, %._crit_edge300 ], [ %i.ef, %._crit_edge ]
  %i.eh = phi i32 [ %.pre, %._crit_edge300 ], [ %i.ed, %._crit_edge ]
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 25 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 25 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = sext i32 %i.eo to i64                   ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ep ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 28 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 60
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = sext i32 %i.et to i64                   ; 3 uses
  %i.ev = getelementptr [4 x i8], ptr %i.ah, i64 %i.eu ; 22 uses
  %i.ew = load i32, ptr %13, align 4, !tbaa !8
  %i.ex = sext i32 %i.ew to i64                   ; 4 uses
  %i.ey = getelementptr [4 x i8], ptr %i.ah, i64 %i.ex ; 23 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = sext i32 %i.fa to i64                   ; 4 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.fe = sext i32 %i.eh to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.fe ; 8 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #7
  store i32 1, ptr %i.ac, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #7
  store i32 0, ptr %i.ad, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #7
  %i.fh = getelementptr i8, ptr %12, i64 -4       ; 11 uses
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 -4 ; 20 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ey, i64 -4 ; 27 uses
  %i.fk = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 34 uses
  br i1 %i.eg, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 240
  store <4 x i32> <i32 1, i32 3, i32 5, i32 7>, ptr %i.fl, align 4, !tbaa !8
  %i.fm = load i32, ptr %i.ei, align 4, !tbaa !8  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !8
  %i.fo = load i32, ptr %i.ej, align 4, !tbaa !8  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 116
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !8
  %i.fq = add nsw i32 %i.fo, %i.fm
  %i.fr = getelementptr inbounds nuw i8, ptr %13, i64 104
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 108
  store i32 0, ptr %i.fs, align 4, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 100
  store i32 0, ptr %i.ft, align 4, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 84
  store i32 1, ptr %i.fu, align 4, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 92
  store i32 0, ptr %i.fv, align 4, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.fw, align 4, !tbaa !8
  store i32 0, ptr %i.fg, align 4, !tbaa !8
  %i.fx = load i32, ptr %16, align 4, !tbaa !8
  %.not.i = icmp eq i32 %i.fx, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.fy, align 4, !tbaa !8
  store i32 0, ptr %16, align 4, !tbaa !8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i32 0, ptr %i.fy, align 4, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 84 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !8
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.gd = load i32, ptr %2, align 4, !tbaa !8
  %i.ge = mul nsw i32 %i.gd, 3
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr [4 x i8], ptr %i.fh, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 240
  call fastcc void @_ZL7sgetv0_PiPKcS_S_S_S_PfS_S2_S2_S_S2_S_S_(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef nonnull %i.gc, ptr noundef nonnull %2, ptr noundef nonnull %i.ac, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %i.gh, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i.gi, ptr noundef %16)
  %i.gj = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %.not369.i = icmp eq i32 %i.gj, 99
  br i1 %.not369.i, label %bb.aa, label %_ZL7ssaup2_PiPKcS_S1_S_S_PfS2_S_S_S_S_S2_S_S2_S_S2_S2_S2_S_S2_S_S2_S_S_.exit

bb.aa:                                            ; preds = %bb.z
  %i.gk = load i32, ptr %2, align 4, !tbaa !8
  %i.gl = mul nsw i32 %i.gk, 3
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr [4 x i8], ptr %i.fh, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %i.gp = load float, ptr %i.go, align 4, !tbaa !19
  %i.gq = fcmp oeq float %i.gp, 0.000000e+00
  br i1 %i.gq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 -9, ptr %16, align 4, !tbaa !8
  br label %.sink.split268.i

bb.ac:                                            ; preds = %bb.aa
  store i32 0, ptr %i.fz, align 4, !tbaa !8
  store i32 0, ptr %0, align 4, !tbaa !8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 92 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !8
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !8
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.do, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gx = load i32, ptr %i.fg, align 4, !tbaa !8
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %thread-pre-split1.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 112
  %i.ha = load i32, ptr %2, align 4, !tbaa !8
  %i.hb = mul nsw i32 %i.ha, 3
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr [4 x i8], ptr %i.fh, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 160
  %.val383.i = load i32, ptr %i.er, align 4, !tbaa !8
  call fastcc void @_ZL7ssaitr_PiPKcS_S_S_S_PfS2_S2_S_S2_S_S_S2_S_S_(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.gz, ptr noundef nonnull readonly %i.ek, ptr noundef %6, ptr noundef %i.he, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.eq, i32 %.val383.i, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i.hf, ptr noundef %16)
  %i.hg = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %.not370.i = icmp eq i32 %i.hg, 99
  br i1 %.not370.i, label %bb.ah, label %_ZL7ssaup2_PiPKcS_S1_S_S_PfS2_S_S_S_S_S2_S_S2_S_S2_S2_S2_S_S2_S_S2_S_S_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hh = load i32, ptr %16, align 4, !tbaa !8    ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.hh, ptr %i.ej, align 4, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 100
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !8
  store i32 %i.hk, ptr %i.em, align 4, !tbaa !8
  store i32 -9999, ptr %16, align 4, !tbaa !8
  br label %.sink.split268.i

bb.aj:                                            ; preds = %bb.ep, %bb.ah
  %i.hl = getelementptr inbounds nuw i8, ptr %13, i64 100 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !8
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !8
  store i32 0, ptr %0, align 4, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  store i32 1, ptr %i.gr, align 4, !tbaa !8
  %i.ho = load i32, ptr %2, align 4, !tbaa !8
  %i.hp = mul nsw i32 %i.ho, 3
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr [4 x i8], ptr %i.fh, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 160
  %.val.i = load i32, ptr %i.er, align 4, !tbaa !8
  call fastcc void @_ZL7ssaitr_PiPKcS_S_S_S_PfS2_S2_S_S2_S_S_S2_S_S_(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull readonly %i.ek, ptr noundef %6, ptr noundef %i.hs, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull %i.eq, i32 %.val.i, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i.ht, ptr noundef %16)
  %i.hu = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %.not371.i = icmp eq i32 %i.hu, 99
  br i1 %.not371.i, label %bb.al, label %_ZL7ssaup2_PiPKcS_S1_S_S_PfS2_S_S_S_S_S2_S_S2_S_S2_S2_S2_S_S2_S_S2_S_S_.exit

bb.al:                                            ; preds = %bb.ak
  %i.hv = load i32, ptr %16, align 4, !tbaa !8    ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 %i.hv, ptr %i.ej, align 4, !tbaa !8
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 100
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !8
  store i32 %i.hy, ptr %i.em, align 4, !tbaa !8
  store i32 -9999, ptr %16, align 4, !tbaa !8
  br label %.sink.split268.i

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %i.gr, align 4, !tbaa !8
  %i.hz = load i32, ptr %2, align 4, !tbaa !8
  %i.ia = mul i32 %i.hz, 3
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr [4 x i8], ptr %i.fh, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 4      ; 8 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 24 uses
  %.val384.i = load i32, ptr %i.er, align 4, !tbaa !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #7
  store i32 1, ptr %i.aa, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #7
  %narrow.i.i = xor i32 %.val384.i, -1
  %i.if = sext i32 %narrow.i.i to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.if ; 2 uses
  %i.ih = shl i32 %.val384.i, 1
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr [4 x i8], ptr %i.ig, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 4
  call void @scopy_(ptr noundef nonnull %i.ie, ptr noundef %i.ik, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.aa)
  %i.il = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.im = add nsw i32 %i.il, -1
  store i32 %i.im, ptr %i.ab, align 4, !tbaa !8
  %i.in = sext i32 %.val384.i to i64
  %i.io = getelementptr [4 x i8], ptr %i.ig, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  call void @scopy_(ptr noundef nonnull %i.ab, ptr noundef %i.ip, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.aa)
  %i.iq = load i32, ptr %i.ie, align 4, !tbaa !8  ; 6 uses
end_hunk_2
begin_hunk_3_@_Z7ssaupd_PiPKcS_S1_S_PfS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a
  %i.alr = fmul float %i.alq, %i.alo
  store float %i.alr, ptr %i.alp, align 4, !tbaa !19
  %i.als = getelementptr [4 x i8], ptr %i.ev, i64 %indvars.iv134.i
  %i.alt = load float, ptr %i.als, align 4, !tbaa !19
  %i.alu = call noundef float @llvm.fabs.f32(float %i.alt) ; 2 uses
  %i.alv = fcmp olt float %i.alu, f0x37CB2FF1
  %i.alw = select i1 %i.alv, float f0x37CB2FF1, float %i.alu
  %i.alx = getelementptr [4 x i8], ptr %i.ey, i64 %indvars.iv134.i ; 2 uses
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !19
  %i.alz = fmul float %i.aly, %i.alw
  store float %i.alz, ptr %i.alx, align 4, !tbaa !19
  %indvars.iv.next135.i.1 = add nuw nsw i64 %indvars.iv134.i, 2 ; 2 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next135.i.1
  %i.amb = load float, ptr %i.ama, align 4, !tbaa !19
  %i.amc = call noundef float @llvm.fabs.f32(float %i.amb) ; 2 uses
  %i.amd = fcmp olt float %i.amc, f0x37CB2FF1
  %i.ame = select i1 %i.amd, float f0x37CB2FF1, float %i.amc
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next135.i.1 ; 2 uses
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !19
  %i.amh = fmul float %i.amg, %i.ame
  store float %i.amh, ptr %i.amf, align 4, !tbaa !19
  %indvars.iv.next135.i.2 = add nuw nsw i64 %indvars.iv134.i, 3 ; 2 uses
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv.next135.i.2
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !19
  %i.amk = call noundef float @llvm.fabs.f32(float %i.amj) ; 2 uses
  %i.aml = fcmp olt float %i.amk, f0x37CB2FF1
  %i.amm = select i1 %i.aml, float f0x37CB2FF1, float %i.amk
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv.next135.i.2 ; 2 uses
  %i.amo = load float, ptr %i.amn, align 4, !tbaa !19
  %i.amp = fmul float %i.amo, %i.amm
  store float %i.amp, ptr %i.amn, align 4, !tbaa !19
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %exitcond138.not.i.3 = icmp eq i64 %indvars.iv.next135.i.3, %wide.trip.count137.i
  br i1 %exitcond138.not.i.3, label %sub_020.i, label %.lr.ph75.i, !llvm.loop !200

sub_020.i:                                        ; preds = %.lr.ph75.i.prol.loopexit, %.lr.ph75.i, %middle.block720, %vec.epilog.middle.block734, %._crit_edge71.i
  %i.amq = load i8, ptr %3, align 1
  %.not82.i = icmp eq i8 %i.amq, 66
  br i1 %.not82.i, label %.tail19.i, label %.tail19.thread.i

.tail19.i:                                        ; preds = %sub_020.i
  %i.amr = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ams = load i8, ptr %i.amr, align 1
  %i.amt = icmp eq i8 %i.ams, 69
  br i1 %i.amt, label %bb.cz, label %.tail19.thread.i

bb.cz:                                            ; preds = %.tail19.i
  store i16 16716, ptr %i.ag, align 2
  br label %.tail19.thread.i

.tail19.thread.i:                                 ; preds = %bb.cz, %.tail19.i, %sub_020.i
  %.sink266.i = phi ptr [ %i.ag, %bb.cz ], [ %3, %sub_020.i ], [ %3, %.tail19.i ]
  %.val386.i = load i32, ptr %i.aay, align 4, !tbaa !8
  call fastcc void @_ZL7ssortr_PKcPiS1_PfS2_(ptr noundef nonnull %.sink266.i, i32 %.val389.i, i32 %.val386.i, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey)
  %i.amu = load i32, ptr %2, align 4, !tbaa !8
  %i.amv = mul nsw i32 %i.amu, 3
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr [4 x i8], ptr %i.fh, i64 %i.amw
  %i.amy = getelementptr i8, ptr %i.amx, i64 4
  %i.amz = load float, ptr %i.amy, align 4, !tbaa !19
  store float %i.amz, ptr %i.eq, align 4, !tbaa !19
  %i.ana = getelementptr inbounds nuw i8, ptr %13, i64 100 ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !8
  %i.anc = load i32, ptr %i.em, align 4, !tbaa !8
  %i.and = icmp sgt i32 %i.anb, %i.anc
  %.pre140.pre141.i = load i32, ptr %i.aay, align 4, !tbaa !8 ; 3 uses
  br i1 %i.and, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %.tail19.thread.i
  %i.ane = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.anf = icmp slt i32 %.pre140.pre141.i, %i.ane
  br i1 %i.anf, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 1, ptr %16, align 4, !tbaa !8
  %.pre140.pre.i = load i32, ptr %i.aay, align 4, !tbaa !8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %.tail19.thread.i
  %.pre140.i = phi i32 [ %.pre140.pre.i, %bb.db ], [ %.pre140.pre141.i, %bb.da ], [ %.pre140.pre141.i, %.tail19.thread.i ] ; 3 uses
  %i.ang = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.anh = icmp eq i32 %i.ang, 0
  br i1 %i.anh, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.ani = load i32, ptr %i.aak, align 4, !tbaa !8
  %i.anj = icmp slt i32 %.pre140.i, %i.ani
  br i1 %i.anj, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 2, ptr %16, align 4, !tbaa !8
  %.pre139.i = load i32, ptr %i.aay, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.ank = phi i32 [ %.pre139.i, %bb.de ], [ %.pre140.i, %bb.dd ], [ %.pre140.i, %bb.dc ] ; 2 uses
  store i32 %i.ank, ptr %i.ej, align 4, !tbaa !8
  %i.anl = load i32, ptr %i.ana, align 4, !tbaa !8
  store i32 %i.anl, ptr %i.em, align 4, !tbaa !8
  store i32 %i.ank, ptr %i.ei, align 4, !tbaa !8
  br label %.sink.split268.i

bb.dg:                                            ; preds = %bb.cv
  %i.anm = icmp slt i32 %.pre.i, %i.aed
  %.pr.i.pre303 = load i32, ptr %i.el, align 4, !tbaa !8 ; 2 uses
  %i.ann = icmp eq i32 %.pr.i.pre303, 1
  %or.cond422 = select i1 %i.anm, i1 %i.ann, i1 false
  br i1 %or.cond422, label %bb.dh, label %thread-pre-split.i

bb.dh:                                            ; preds = %bb.dg
  store i32 %.pre.i, ptr %i.ae, align 4, !tbaa !8
  %i.ano = sdiv i32 %i.aee, 2
  %i.anp = call i32 @llvm.smin.i32(i32 %.pre.i, i32 %i.ano)
  %i.anq = add nsw i32 %i.aed, %i.anp             ; 3 uses
  store i32 %i.anq, ptr %i.ei, align 4, !tbaa !8
  %i.anr = icmp eq i32 %i.anq, 1
  %.pre302 = load i32, ptr %i.ie, align 4, !tbaa !8 ; 4 uses
  br i1 %i.anr, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.ans = icmp sgt i32 %.pre302, 5
  br i1 %i.ans, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ant = lshr i32 %.pre302, 1
  br label %.sink.split.i

bb.dk:                                            ; preds = %bb.di
  %i.anu = icmp sgt i32 %.pre302, 2
  br i1 %i.anu, label %.sink.split.i, label %bb.dl

.sink.split.i:                                    ; preds = %bb.dk, %bb.dj
  %.sink267.i = phi i32 [ %i.ant, %bb.dj ], [ 2, %bb.dk ] ; 2 uses
  store i32 %.sink267.i, ptr %i.ei, align 4, !tbaa !8
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split.i, %bb.dk, %bb.dh
  %i.anv = phi i32 [ %i.anq, %bb.dh ], [ 1, %bb.dk ], [ %.sink267.i, %.sink.split.i ] ; 2 uses
  %i.anw = sub nsw i32 %.pre302, %i.anv
  store i32 %i.anw, ptr %i.ej, align 4, !tbaa !8
  %i.anx = icmp slt i32 %i.aed, %i.anv
  br i1 %i.anx, label %bb.dm, label %.thread373

bb.dm:                                            ; preds = %bb.dl
  call fastcc void @_ZL7ssgets_PiPKcS_S_PfS2_S2_(ptr noundef nonnull readonly %i.el, ptr noundef readonly %3, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ff)
  %.pr.i.pre = load i32, ptr %i.el, align 4, !tbaa !8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.dg, %bb.dm
  %i.any = phi i32 [ %.pr.i.pre303, %bb.dg ], [ %.pr.i.pre, %bb.dm ]
  %i.anz = icmp eq i32 %i.any, 0
  br i1 %i.anz, label %bb.dn, label %.thread373

bb.dn:                                            ; preds = %thread-pre-split.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 1, ptr %i.aoa, align 4, !tbaa !8
  br label %.sink.split268.i

.thread373:                                       ; preds = %thread-pre-split.i, %bb.dl
  %i.aob = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.aob, align 4, !tbaa !8
  br label %bb.dq

bb.do:                                            ; preds = %bb.ae
  %.pre306 = load i32, ptr %i.el, align 4, !tbaa !8
  %i.aoc = icmp eq i32 %.pre306, 0
  %i.aod = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.aod, align 4, !tbaa !8
  br i1 %i.aoc, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @scopy_(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ac)
  br label %bb.dq

bb.dq:                                            ; preds = %.thread373, %bb.dp, %bb.do
  %.val395.i = load i32, ptr %i.er, align 4, !tbaa !8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store float -1.000000e+00, ptr %i.c, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 1, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.aoe = load i32, ptr %9, align 4, !tbaa !8    ; 5 uses
  %narrow330.i.i = xor i32 %i.aoe, -1
  %i.aof = sext i32 %narrow330.i.i to i64
  %i.aog = getelementptr inbounds [4 x i8], ptr %8, i64 %i.aof ; 4 uses
  %narrow.i401.i = xor i32 %.val395.i, -1
  %i.aoh = sext i32 %narrow.i401.i to i64         ; 5 uses
  %i.aoi = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.aoh ; 12 uses
  %i.aoj = load i32, ptr %i.fd, align 4, !tbaa !8 ; 8 uses
  %narrow327.i.i = xor i32 %i.aoj, -1
  %i.aok = sext i32 %narrow327.i.i to i64         ; 4 uses
  %i.aol = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.aok ; 8 uses
  %i.aom = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.aon = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.aoo = add nsw i32 %i.aon, %i.aom
  store i32 %i.aoo, ptr %i.k, align 4, !tbaa !8
  call void @slaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fd)
  %i.aop = load i32, ptr %i.ej, align 4, !tbaa !8 ; 3 uses
  %i.aoq = icmp eq i32 %i.aop, 0
  br i1 %i.aoq, label %_ZL7ssapps_PiS_S_PfS0_S_S0_S_S0_S0_S_S0_.exit.i, label %.preheader3.i.i

.preheader3.i.i:                                  ; preds = %bb.dq
  %.not28.i.i = icmp slt i32 %i.aop, 1
  br i1 %.not28.i.i, label %.preheader3.._crit_edge31_crit_edge.i.i, label %.preheader.lr.ph.i.i

.preheader3.._crit_edge31_crit_edge.i.i:          ; preds = %.preheader3.i.i
  %.pre79.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  br label %._crit_edge31.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader3.i.i
  %i.aor = shl i32 %.val395.i, 1                  ; 3 uses
  %i.aos = sext i32 %i.aor to i64
  %i.aot = sext i32 %.val395.i to i64             ; 3 uses
  %i.aou = sext i32 %i.aoj to i64                 ; 5 uses
  %i.aov = add nuw i32 %i.aop, 1
  %wide.trip.count68.i.i = zext i32 %i.aov to i64
  %.pre.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.aoi, i64 %i.aos ; 3 uses
  %invariant.gep110.i.i = getelementptr [4 x i8], ptr %i.aoi, i64 %i.aot ; 3 uses
  %i.aow = shl nsw i64 %i.fb, 2                   ; 4 uses
  %i.aox = shl nsw i64 %i.aok, 2                  ; 4 uses
  %i.aoy = shl nsw i64 %i.aou, 2
  %i.aoz = shl nsw i64 %i.aou, 2
  %i.apa = shl nsw i64 %i.aou, 2
  %invariant.op871 = add nsw i64 %i.fb, %i.aok
  %invariant.op872 = add nsw i64 %i.fb, %i.aok
  %i.apb = getelementptr i8, ptr %14, i64 %i.aow
  %i.apc = getelementptr i8, ptr %i.apb, i64 %i.aox
  %i.apd = getelementptr i8, ptr %14, i64 %i.aow
  %i.ape = getelementptr i8, ptr %i.apd, i64 %i.aox
  %i.apf = getelementptr i8, ptr %i.ape, i64 -4
  %i.apg = getelementptr i8, ptr %14, i64 %i.aow
  %i.aph = getelementptr i8, ptr %i.apg, i64 %i.aox
  %i.api = getelementptr i8, ptr %14, i64 %i.aow
  %i.apj = getelementptr i8, ptr %i.api, i64 %i.aox
  %i.apk = getelementptr i8, ptr %i.apj, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge24.i.i, %.preheader.lr.ph.i.i
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %.preheader.lr.ph.i.i ], [ %.pre82.i.i, %._crit_edge24.i.i ] ; 2 uses
  %indvars.iv65.i.i = phi i64 [ 1, %.preheader.lr.ph.i.i ], [ %indvars.iv.next66.i.i, %._crit_edge24.i.i ] ; 3 uses
  %.031730.i.i = phi i32 [ 1, %.preheader.lr.ph.i.i ], [ %.1.lcssa.i.i, %._crit_edge24.i.i ] ; 4 uses
  %indvars128.i = trunc i64 %indvars.iv65.i.i to i32 ; 2 uses
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv65.i.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dy, %.preheader.i.i
  %.pre84.i.i = phi i32 [ %.pre82.i.i, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ]
  %i.apm = phi i32 [ %i.azi, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi i32 [ %i.ayx, %bb.dy ], [ %.031730.i.i, %.preheader.i.i ] ; 9 uses
  %i.apn = sext i32 %.0.i.i to i64                ; 3 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %i.apm)
  %wide.trip.count.i402.i = sext i32 %smax.i.i to i64
  %exitcond.not.i404.i472.not = icmp slt i32 %.0.i.i, %i.apm
  br i1 %exitcond.not.i404.i472.not, label %.lr.ph475, label %.loopexit2.i.i

bb.ds:                                            ; preds = %.lr.ph475
  %exitcond.not.i404.i = icmp eq i64 %indvars.iv.next.i405.i, %wide.trip.count.i402.i
  br i1 %exitcond.not.i404.i, label %.loopexit2.i.i, label %.lr.ph475, !llvm.loop !201

.lr.ph475:                                        ; preds = %bb.dr, %bb.ds
  %indvars.iv.i403.i473 = phi i64 [ %indvars.iv.next.i405.i, %bb.ds ], [ %i.apn, %bb.dr ] ; 3 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i403.i473
  %indvars.iv.next.i405.i = add nsw i64 %indvars.iv.i403.i473, 1 ; 3 uses
  %i.apo = load <2 x float>, ptr %gep.i.i, align 4, !tbaa !19
  %i.app = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.apo) ; 2 uses
  %shift738 = shufflevector <2 x float> %i.app, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop739 = fadd <2 x float> %i.app, %shift738
  %i.apq = extractelement <2 x float> %foldExtExtBinop739, i64 0
  %i.apr = getelementptr [4 x i8], ptr %i.aoi, i64 %indvars.iv.next.i405.i ; 2 uses
  %i.aps = getelementptr [4 x i8], ptr %i.apr, i64 %i.aot
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !19
  %i.apu = fmul float %i.apq, f0x34000000
  %i.apv = fcmp ugt float %i.apt, %i.apu
  br i1 %i.apv, label %bb.ds, label %bb.dt, !llvm.loop !201

bb.dt:                                            ; preds = %.lr.ph475
  %i.apw = getelementptr [4 x i8], ptr %i.apr, i64 %i.aot
  %i.apx = trunc nsw i64 %indvars.iv.i403.i473 to i32
  store float 0.000000e+00, ptr %i.apw, align 4, !tbaa !19
  br label %.loopexit2.i.i

.loopexit2.i.i:                                   ; preds = %bb.ds, %bb.dr, %bb.dt
  %.0318.i.i = phi i32 [ %i.apx, %bb.dt ], [ %i.apm, %bb.dr ], [ %i.apm, %bb.ds ] ; 7 uses
  %i.apy = icmp slt i32 %.0.i.i, %.0318.i.i
  br i1 %i.apy, label %bb.du, label %.loopexit1.i.i

bb.du:                                            ; preds = %.loopexit2.i.i
  %i.apz = add nsw i32 %.0.i.i, %i.aor
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.aqa ; 3 uses
  %i.aqc = load float, ptr %i.aqb, align 4, !tbaa !19
  %i.aqd = load float, ptr %i.apl, align 4, !tbaa !19
  %i.aqe = fsub float %i.aqc, %i.aqd
  store float %i.aqe, ptr %i.g, align 4, !tbaa !19
  %i.aqf = add nsw i32 %.0.i.i, 1                 ; 3 uses
  %i.aqg = add nsw i32 %i.aqf, %.val395.i
  %i.aqh = sext i32 %i.aqg to i64
  %i.aqi = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.aqh ; 3 uses
  %i.aqj = load float, ptr %i.aqi, align 4, !tbaa !19
  store float %i.aqj, ptr %i.h, align 4, !tbaa !19
  call void @slartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.aqk = load float, ptr %i.f, align 4, !tbaa !19 ; 20 uses
  %i.aql = load float, ptr %i.aqb, align 4, !tbaa !19 ; 2 uses
  %i.aqm = load float, ptr %i.j, align 4, !tbaa !19 ; 15 uses
  %i.aqn = load float, ptr %i.aqi, align 4, !tbaa !19 ; 3 uses
  %i.aqo = fmul float %i.aqm, %i.aqn              ; 2 uses
  %i.aqp = call float @llvm.fmuladd.f32(float %i.aqk, float %i.aql, float %i.aqo)
  %i.aqq = add nsw i32 %i.aqf, %i.aor
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.aqr ; 2 uses
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !19 ; 2 uses
  %i.aqu = fmul float %i.aqm, %i.aqt
  %i.aqv = call float @llvm.fmuladd.f32(float %i.aqk, float %i.aqn, float %i.aqu)
  %i.aqw = fneg float %i.aqo
  %i.aqx = call float @llvm.fmuladd.f32(float %i.aqk, float %i.aqt, float %i.aqw) ; 2 uses
  %i.aqy = fneg float %i.aql
  %i.aqz = fmul float %i.aqm, %i.aqy
  %i.ara = call float @llvm.fmuladd.f32(float %i.aqk, float %i.aqn, float %i.aqz) ; 2 uses
  %i.arb = fmul float %i.aqm, %i.aqv
  %i.arc = call float @llvm.fmuladd.f32(float %i.aqk, float %i.aqp, float %i.arb)
  store float %i.arc, ptr %i.aqb, align 4, !tbaa !19
  %i.ard = fneg float %i.ara
  %i.are = fmul float %i.aqm, %i.ard
  %i.arf = call float @llvm.fmuladd.f32(float %i.aqk, float %i.aqx, float %i.are)
  store float %i.arf, ptr %i.aqs, align 4, !tbaa !19
  %i.arg = fmul float %i.aqm, %i.aqx
  %i.arh = call float @llvm.fmuladd.f32(float %i.aqk, float %i.ara, float %i.arg)
  store float %i.arh, ptr %i.aqi, align 4, !tbaa !19
  %i.ari = add i32 %.0.i.i, %indvars128.i
  %i.arj = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  %i.ark = call i32 @llvm.smin.i32(i32 %i.ari, i32 %i.arj) ; 6 uses
  %.not3327.i.i = icmp slt i32 %i.ark, 1
  br i1 %.not3327.i.i, label %._crit_edge.i.i, label %iter.check575

iter.check575:                                    ; preds = %bb.du
  %i.arl = mul nsw i32 %.0.i.i, %i.aoj
  %i.arm = mul nsw i32 %i.aqf, %i.aoj
  %i.arn = fneg float %i.aqm                      ; 7 uses
  %i.aro = sext i32 %i.arl to i64                 ; 2 uses
  %i.arp = sext i32 %i.arm to i64                 ; 2 uses
  %invariant.gep102.i.i = getelementptr [4 x i8], ptr %i.aol, i64 %i.aro ; 7 uses
  %invariant.gep104.i.i = getelementptr [4 x i8], ptr %i.aol, i64 %i.arp ; 7 uses
  %narrow.i = add nuw i32 %i.ark, 1               ; 5 uses
  %i.arq = zext i32 %narrow.i to i64              ; 3 uses
  %i.arr = zext nneg i32 %i.ark to i64            ; 5 uses
  %min.iters.check551 = icmp ult i32 %i.ark, 4
  br i1 %min.iters.check551, label %vec.epilog.scalar.ph577.preheader, label %vector.memcheck552

vector.memcheck552:                               ; preds = %iter.check575
  %.reass = add nsw i64 %i.arp, %invariant.op871
  %i.ars = shl nsw i64 %.reass, 2                 ; 2 uses
  %i.art = getelementptr i8, ptr %14, i64 %i.ars
  %i.aru = shl nuw nsw i64 %i.arq, 2              ; 2 uses
  %17 = getelementptr i8, ptr %14, i64 %i.ars
  %i.arv = getelementptr i8, ptr %17, i64 %i.aru
  %i.arw = getelementptr i8, ptr %i.arv, i64 -4
  %.reass873 = add nsw i64 %i.aro, %invariant.op872
  %i.arx = shl nsw i64 %.reass873, 2              ; 2 uses
  %18 = getelementptr i8, ptr %14, i64 %i.arx
  %i.ary = getelementptr i8, ptr %14, i64 %i.arx
  %i.arz = getelementptr i8, ptr %i.ary, i64 %i.aru
  %i.asa = getelementptr i8, ptr %i.arz, i64 -4
  %bound0553 = icmp ult ptr %i.art, %i.asa
  %bound1554 = icmp ult ptr %18, %i.arw
  %found.conflict555 = and i1 %bound0553, %bound1554
  br i1 %found.conflict555, label %vec.epilog.scalar.ph577.preheader, label %vector.main.loop.iter.check556

vector.main.loop.iter.check556:                   ; preds = %vector.memcheck552
  %min.iters.check557 = icmp ult i32 %i.ark, 16
  br i1 %min.iters.check557, label %vec.epilog.ph579, label %vector.ph558

vector.ph558:                                     ; preds = %vector.main.loop.iter.check556
  %i.asb = and i64 %i.arr, 12
  %n.vec559 = and i64 %i.arr, 2147483632          ; 4 uses
  %i.asc = or disjoint i64 %n.vec559, 1
  %broadcast.splatinsert560 = insertelement <8 x float> poison, float %i.arn, i64 0
  %broadcast.splat561 = shufflevector <8 x float> %broadcast.splatinsert560, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert562 = insertelement <8 x float> poison, float %i.aqm, i64 0
  %broadcast.splat563 = shufflevector <8 x float> %broadcast.splatinsert562, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert564 = insertelement <8 x float> poison, float %i.aqk, i64 0
  %broadcast.splat565 = shufflevector <8 x float> %broadcast.splatinsert564, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body566

vector.body566:                                   ; preds = %vector.ph558, %vector.body566
  %index567 = phi i64 [ 0, %vector.ph558 ], [ %index.next572, %vector.body566 ] ; 2 uses
  %i.asd = or disjoint i64 %index567, 1           ; 2 uses
  %i.ase = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %i.asd ; 3 uses
  %i.asf = getelementptr i8, ptr %i.ase, i64 32   ; 2 uses
  %wide.load568 = load <8 x float>, ptr %i.ase, align 4, !tbaa !19, !alias.scope !233 ; 2 uses
  %wide.load569 = load <8 x float>, ptr %i.asf, align 4, !tbaa !19, !alias.scope !233 ; 2 uses
  %i.asg = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %i.asd ; 3 uses
  %i.ash = getelementptr i8, ptr %i.asg, i64 32   ; 2 uses
  %wide.load570 = load <8 x float>, ptr %i.asg, align 4, !tbaa !19, !alias.scope !234, !noalias !233 ; 2 uses
  %wide.load571 = load <8 x float>, ptr %i.ash, align 4, !tbaa !19, !alias.scope !234, !noalias !233 ; 2 uses
  %i.asi = fmul <8 x float> %broadcast.splat563, %wide.load570
  %i.asj = fmul <8 x float> %broadcast.splat563, %wide.load571
  %i.ask = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat565, <8 x float> %wide.load568, <8 x float> %i.asi)
  %i.asl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat565, <8 x float> %wide.load569, <8 x float> %i.asj)
  %i.asm = fmul <8 x float> %broadcast.splat565, %wide.load570
  %i.asn = fmul <8 x float> %broadcast.splat565, %wide.load571
  %i.aso = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat561, <8 x float> %wide.load568, <8 x float> %i.asm)
  %i.asp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat561, <8 x float> %wide.load569, <8 x float> %i.asn)
  store <8 x float> %i.aso, ptr %i.asg, align 4, !tbaa !19, !alias.scope !234, !noalias !233
  store <8 x float> %i.asp, ptr %i.ash, align 4, !tbaa !19, !alias.scope !234, !noalias !233
  store <8 x float> %i.ask, ptr %i.ase, align 4, !tbaa !19, !alias.scope !233
  store <8 x float> %i.asl, ptr %i.asf, align 4, !tbaa !19, !alias.scope !233
  %index.next572 = add nuw i64 %index567, 16      ; 2 uses
  %i.asq = icmp eq i64 %index.next572, %n.vec559
  br i1 %i.asq, label %middle.block573, label %vector.body566, !llvm.loop !205

middle.block573:                                  ; preds = %vector.body566
  %cmp.n574 = icmp eq i64 %n.vec559, %i.arr
  br i1 %cmp.n574, label %._crit_edge.i.i, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block573
  %min.epilog.iters.check578 = icmp eq i64 %i.asb, 0
  br i1 %min.epilog.iters.check578, label %vec.epilog.scalar.ph577.preheader, label %vec.epilog.ph579, !prof !17

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check556, %vec.epilog.iter.check576
  %vec.epilog.resume.val580 = phi i64 [ %n.vec559, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check556 ]
  %n.vec581 = and i64 %i.arr, 2147483644          ; 3 uses
  %i.asr = or disjoint i64 %n.vec581, 1
  %broadcast.splatinsert582 = insertelement <4 x float> poison, float %i.arn, i64 0
  %broadcast.splat583 = shufflevector <4 x float> %broadcast.splatinsert582, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert584 = insertelement <4 x float> poison, float %i.aqm, i64 0
  %broadcast.splat585 = shufflevector <4 x float> %broadcast.splatinsert584, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert586 = insertelement <4 x float> poison, float %i.aqk, i64 0
  %broadcast.splat587 = shufflevector <4 x float> %broadcast.splatinsert586, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body588

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph579
  %index589 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph579 ], [ %index.next592, %vec.epilog.vector.body588 ] ; 2 uses
  %i.ass = or disjoint i64 %index589, 1           ; 2 uses
  %i.ast = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %i.ass ; 2 uses
  %wide.load590 = load <4 x float>, ptr %i.ast, align 4, !tbaa !19, !alias.scope !233 ; 2 uses
  %i.asu = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %i.ass ; 2 uses
  %wide.load591 = load <4 x float>, ptr %i.asu, align 4, !tbaa !19, !alias.scope !234, !noalias !233 ; 2 uses
  %i.asv = fmul <4 x float> %broadcast.splat585, %wide.load591
  %i.asw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat587, <4 x float> %wide.load590, <4 x float> %i.asv)
  %i.asx = fmul <4 x float> %broadcast.splat587, %wide.load591
  %i.asy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat583, <4 x float> %wide.load590, <4 x float> %i.asx)
  store <4 x float> %i.asy, ptr %i.asu, align 4, !tbaa !19, !alias.scope !234, !noalias !233
  store <4 x float> %i.asw, ptr %i.ast, align 4, !tbaa !19, !alias.scope !233
  %index.next592 = add nuw i64 %index589, 4       ; 2 uses
  %i.asz = icmp eq i64 %index.next592, %n.vec581
  br i1 %i.asz, label %vec.epilog.middle.block593, label %vec.epilog.vector.body588, !llvm.loop !206

vec.epilog.middle.block593:                       ; preds = %vec.epilog.vector.body588
  %cmp.n594 = icmp eq i64 %n.vec581, %i.arr
  br i1 %cmp.n594, label %._crit_edge.i.i, label %vec.epilog.scalar.ph577.preheader

vec.epilog.scalar.ph577.preheader:                ; preds = %iter.check575, %vector.memcheck552, %vec.epilog.iter.check576, %vec.epilog.middle.block593
  %indvars.iv49.i.i.ph = phi i64 [ 1, %iter.check575 ], [ 1, %vector.memcheck552 ], [ %i.asc, %vec.epilog.iter.check576 ], [ %i.asr, %vec.epilog.middle.block593 ] ; 4 uses
  %i.ata = sub nsw i64 %i.arq, %indvars.iv49.i.i.ph
  %i.atb = zext nneg i32 %i.ark to i64
  %i.atc = sub nsw i64 %i.atb, %indvars.iv49.i.i.ph
  %xtraiter816 = and i64 %i.ata, 3                ; 2 uses
  %lcmp.mod817.not = icmp eq i64 %xtraiter816, 0
  br i1 %lcmp.mod817.not, label %vec.epilog.scalar.ph577.prol.loopexit, label %vec.epilog.scalar.ph577.prol

vec.epilog.scalar.ph577.prol:                     ; preds = %vec.epilog.scalar.ph577.preheader, %vec.epilog.scalar.ph577.prol
  %indvars.iv49.i.i.prol = phi i64 [ %indvars.iv.next50.i.i.prol, %vec.epilog.scalar.ph577.prol ], [ %indvars.iv49.i.i.ph, %vec.epilog.scalar.ph577.preheader ] ; 3 uses
  %prol.iter818 = phi i64 [ %prol.iter818.next, %vec.epilog.scalar.ph577.prol ], [ 0, %vec.epilog.scalar.ph577.preheader ]
  %gep103.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.atd = load float, ptr %gep103.i.i.prol, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.ate = load float, ptr %gep105.i.i.prol, align 4, !tbaa !19 ; 2 uses
  %i.atf = fmul float %i.aqm, %i.ate
  %i.atg = call float @llvm.fmuladd.f32(float %i.aqk, float %i.atd, float %i.atf)
  %i.ath = fmul float %i.aqk, %i.ate
  %i.ati = call float @llvm.fmuladd.f32(float %i.arn, float %i.atd, float %i.ath)
  store float %i.ati, ptr %gep105.i.i.prol, align 4, !tbaa !19
  store float %i.atg, ptr %gep103.i.i.prol, align 4, !tbaa !19
  %indvars.iv.next50.i.i.prol = add nuw nsw i64 %indvars.iv49.i.i.prol, 1 ; 2 uses
  %prol.iter818.next = add i64 %prol.iter818, 1   ; 2 uses
  %prol.iter818.cmp.not = icmp eq i64 %prol.iter818.next, %xtraiter816
  br i1 %prol.iter818.cmp.not, label %vec.epilog.scalar.ph577.prol.loopexit, label %vec.epilog.scalar.ph577.prol, !llvm.loop !207

vec.epilog.scalar.ph577.prol.loopexit:            ; preds = %vec.epilog.scalar.ph577.prol, %vec.epilog.scalar.ph577.preheader
  %indvars.iv49.i.i.unr = phi i64 [ %indvars.iv49.i.i.ph, %vec.epilog.scalar.ph577.preheader ], [ %indvars.iv.next50.i.i.prol, %vec.epilog.scalar.ph577.prol ]
  %i.atj = icmp ult i64 %i.atc, 3
  br i1 %i.atj, label %._crit_edge.i.i, label %vec.epilog.scalar.ph577

vec.epilog.scalar.ph577:                          ; preds = %vec.epilog.scalar.ph577.prol.loopexit, %vec.epilog.scalar.ph577
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i.3, %vec.epilog.scalar.ph577 ], [ %indvars.iv49.i.i.unr, %vec.epilog.scalar.ph577.prol.loopexit ] ; 6 uses
  %gep103.i.i = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.atk = load float, ptr %gep103.i.i, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv49.i.i ; 2 uses
  %i.atl = load float, ptr %gep105.i.i, align 4, !tbaa !19 ; 2 uses
  %i.atm = fmul float %i.aqm, %i.atl
  %i.atn = call float @llvm.fmuladd.f32(float %i.aqk, float %i.atk, float %i.atm)
  %i.ato = fmul float %i.aqk, %i.atl
  %i.atp = call float @llvm.fmuladd.f32(float %i.arn, float %i.atk, float %i.ato)
  store float %i.atp, ptr %gep105.i.i, align 4, !tbaa !19
  store float %i.atn, ptr %gep103.i.i, align 4, !tbaa !19
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %gep103.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.atq = load float, ptr %gep103.i.i.1, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i ; 2 uses
  %i.atr = load float, ptr %gep105.i.i.1, align 4, !tbaa !19 ; 2 uses
  %i.ats = fmul float %i.aqm, %i.atr
  %i.att = call float @llvm.fmuladd.f32(float %i.aqk, float %i.atq, float %i.ats)
  %i.atu = fmul float %i.aqk, %i.atr
  %i.atv = call float @llvm.fmuladd.f32(float %i.arn, float %i.atq, float %i.atu)
  store float %i.atv, ptr %gep105.i.i.1, align 4, !tbaa !19
  store float %i.att, ptr %gep103.i.i.1, align 4, !tbaa !19
  %indvars.iv.next50.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i, 2 ; 2 uses
  %gep103.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.atw = load float, ptr %gep103.i.i.2, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.1 ; 2 uses
  %i.atx = load float, ptr %gep105.i.i.2, align 4, !tbaa !19 ; 2 uses
  %i.aty = fmul float %i.aqm, %i.atx
  %i.atz = call float @llvm.fmuladd.f32(float %i.aqk, float %i.atw, float %i.aty)
  %i.aua = fmul float %i.aqk, %i.atx
  %i.aub = call float @llvm.fmuladd.f32(float %i.arn, float %i.atw, float %i.aua)
  store float %i.aub, ptr %gep105.i.i.2, align 4, !tbaa !19
  store float %i.atz, ptr %gep103.i.i.2, align 4, !tbaa !19
  %indvars.iv.next50.i.i.2 = add nuw nsw i64 %indvars.iv49.i.i, 3 ; 2 uses
  %gep103.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep102.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.auc = load float, ptr %gep103.i.i.3, align 4, !tbaa !19 ; 2 uses
  %gep105.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep104.i.i, i64 %indvars.iv.next50.i.i.2 ; 2 uses
  %i.aud = load float, ptr %gep105.i.i.3, align 4, !tbaa !19 ; 2 uses
  %i.aue = fmul float %i.aqm, %i.aud
  %i.auf = call float @llvm.fmuladd.f32(float %i.aqk, float %i.auc, float %i.aue)
  %i.aug = fmul float %i.aqk, %i.aud
  %i.auh = call float @llvm.fmuladd.f32(float %i.arn, float %i.auc, float %i.aug)
  store float %i.auh, ptr %gep105.i.i.3, align 4, !tbaa !19
  store float %i.auf, ptr %gep103.i.i.3, align 4, !tbaa !19
  %indvars.iv.next50.i.i.3 = add nuw nsw i64 %indvars.iv49.i.i, 4 ; 2 uses
  %exitcond124.not.i.3 = icmp eq i64 %indvars.iv.next50.i.i.3, %i.arq
  br i1 %exitcond124.not.i.3, label %._crit_edge.i.i, label %vec.epilog.scalar.ph577, !llvm.loop !208

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph577.prol.loopexit, %vec.epilog.scalar.ph577, %middle.block573, %vec.epilog.middle.block593, %bb.du
  %.0320.lcssa.i.i = phi i32 [ 1, %bb.du ], [ %narrow.i, %middle.block573 ], [ %narrow.i, %vec.epilog.middle.block593 ], [ %narrow.i, %vec.epilog.scalar.ph577 ], [ %narrow.i, %vec.epilog.scalar.ph577.prol.loopexit ]
  %i.aui = add nsw i32 %.0318.i.i, -1             ; 2 uses
  store i32 %i.aui, ptr %i.e, align 4, !tbaa !8
  %.not33314.not.i.i = icmp slt i32 %.0.i.i, %i.aui
  br i1 %.not33314.not.i.i, label %.lr.ph18.preheader.i.i, label %.loopexit1.i.i

.lr.ph18.preheader.i.i:                           ; preds = %._crit_edge.i.i
  %i.auj = add nsw i64 %i.apn, 1                  ; 2 uses
  %i.auk = sext i32 %.0318.i.i to i64
  %i.aul = mul i64 %i.aoy, %i.auj                 ; 2 uses
  %i.aum = add nsw i64 %i.apn, 2
  %i.aun = mul i64 %i.aoz, %i.aum                 ; 2 uses
  %i.auo = getelementptr i8, ptr %i.apc, i64 %i.aun
  %i.aup = getelementptr i8, ptr %i.apf, i64 %i.aun
  %i.auq = getelementptr i8, ptr %i.aph, i64 %i.aul
  %i.aur = getelementptr i8, ptr %i.apk, i64 %i.aul
  br label %.lr.ph18.i.i

.loopexit.i.i:                                    ; preds = %vec.epilog.scalar.ph521.prol.loopexit, %vec.epilog.scalar.ph521, %middle.block517, %vec.epilog.middle.block537, %bb.dw
  %.2.lcssa.i.i = phi i32 [ 1, %bb.dw ], [ %narrow184.i, %middle.block517 ], [ %narrow184.i, %vec.epilog.middle.block537 ], [ %narrow184.i, %vec.epilog.scalar.ph521 ], [ %narrow184.i, %vec.epilog.scalar.ph521.prol.loopexit ]
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next56.i.i, %i.auk
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond127.not.i, label %.loopexit1.i.i, label %.lr.ph18.i.i, !llvm.loop !209

.lr.ph18.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph18.preheader.i.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i.i ], [ 0, %.lr.ph18.preheader.i.i ] ; 2 uses
  %i.aus = phi float [ %i.ave, %.loopexit.i.i ], [ %i.aqk, %.lr.ph18.preheader.i.i ]
  %i.aut = phi float [ %i.avd, %.loopexit.i.i ], [ %i.aqm, %.lr.ph18.preheader.i.i ]
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.loopexit.i.i ], [ %i.auj, %.lr.ph18.preheader.i.i ] ; 4 uses
  %.132116.i.i = phi i32 [ %.2.lcssa.i.i, %.loopexit.i.i ], [ %.0320.lcssa.i.i, %.lr.ph18.preheader.i.i ]
  %gep111.i.i = getelementptr [4 x i8], ptr %invariant.gep110.i.i, i64 %indvars.iv55.i.i ; 2 uses
end_hunk_3
