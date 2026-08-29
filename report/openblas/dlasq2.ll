Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq2?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlasq2_:bb.a
  %i.af = load double, ptr %1, align 8, !tbaa !9  ; 5 uses
  %i.ag = fcmp olt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -201, ptr %2, align 4, !tbaa !8
  %i.ah = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !9 ; 7 uses
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -202, ptr %2, align 4, !tbaa !8
  %i.al = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !9 ; 5 uses
  %i.ao = fcmp olt double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -203, ptr %2, align 4, !tbaa !8
  %i.ap = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.aq = fcmp ogt double %i.an, %i.af
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %i.af, ptr %i.am, align 8, !tbaa !9
  store double %i.an, ptr %1, align 8, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ar = phi double [ %i.an, %bb.l ], [ %i.af, %bb.m ] ; 7 uses
  %i.as = phi double [ %i.af, %bb.l ], [ %i.an, %bb.m ] ; 5 uses
  %i.at = fadd double %i.aj, %i.as
  %i.au = fadd double %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.au, ptr %i.av, align 8, !tbaa !9
  %i.aw = fmul double %i.y, %i.ar
  %i.ax = fcmp ogt double %i.aj, %i.aw
  br i1 %i.ax, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ay = fsub double %i.as, %i.ar
  %i.az = fadd double %i.aj, %i.ay
  %i.ba = fmul double %i.az, 5.000000e-01         ; 7 uses
  %i.bb = fdiv double %i.aj, %i.ba
  %i.bc = fmul double %i.ar, %i.bb                ; 3 uses
  %i.bd = fcmp ugt double %i.bc, %i.ba
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = fdiv double %i.bc, %i.ba
  %i.bf = fadd double %i.be, 1.000000e+00
  %i.bg = tail call double @sqrt(double noundef %i.bf) #7
  %i.bh = fadd double %i.bg, 1.000000e+00
  %i.bi = fmul double %i.ba, %i.bh
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = tail call double @sqrt(double noundef %i.ba) #7
  %i.bk = fadd double %i.ba, %i.bc
  %i.bl = tail call double @sqrt(double noundef %i.bk) #7
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.bl, double %i.ba)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn607 = phi double [ %i.bi, %bb.p ], [ %i.bm, %bb.q ]
  %.pn = fdiv double %i.aj, %.pn607
  %.0543 = fmul double %i.ar, %.pn
  %i.bn = fadd double %i.aj, %.0543
  %i.bo = fadd double %i.as, %i.bn                ; 3 uses
  %i.bp = fdiv double %i.as, %i.bo
  %i.bq = fmul double %i.ar, %i.bp                ; 2 uses
  store double %i.bq, ptr %i.am, align 8, !tbaa !9
  store double %i.bo, ptr %1, align 8, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.br = phi double [ %i.bo, %bb.r ], [ %i.as, %bb.n ]
  %i.bs = phi double [ %i.bq, %bb.r ], [ %i.ar, %bb.n ] ; 2 uses
  store double %i.bs, ptr %i.ai, align 8, !tbaa !9
  %i.bt = fadd double %i.bs, %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %i.bt, ptr %i.bu, align 8, !tbaa !9
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bv = shl nuw nsw i32 %i.z, 1                 ; 3 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr [8 x i8], ptr %i.u, i64 %i.bw ; 2 uses
  store double 0.000000e+00, ptr %i.bx, align 8, !tbaa !9
  %i.by = add nsw i32 %i.bv, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %.0552625 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cn, %bb.w ]
  %.0554624 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cm, %bb.w ]
  %i.bz = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cp, %bb.w ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !9 ; 4 uses
  %i.cc = fcmp olt double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  %i.ce = sub nuw nsw i32 -200, %i.cd
  store i32 %i.ce, ptr %2, align 4, !tbaa !8
  %i.cf = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !9 ; 2 uses
  %i.ci = fcmp olt double %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = sub nuw nsw i32 -201, %i.cj
  store i32 %i.ck, ptr %2, align 4, !tbaa !8
  %i.cl = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cm = fadd double %.0554624, %i.cb            ; 2 uses
  %i.cn = fadd double %.0552625, %i.ch            ; 3 uses
  %i.co = fcmp oge double %i.bz, %i.cb
  %i.cp = select i1 %i.co, double %i.bz, double %i.cb ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next to i32
  %.not = icmp slt i32 %i.by, %i.cq
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.w
  %i.cr = getelementptr i8, ptr %i.bx, i64 -8     ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !9 ; 4 uses
  %i.ct = fcmp olt double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.cu = sub nuw nsw i32 -199, %i.bv
  store i32 %i.cu, ptr %2, align 4, !tbaa !8
  %i.cv = tail call i32 @xerbla_(ptr noundef nonnull @.str.2, ptr noundef nonnull @c__2, i32 noundef 6) #7 ; 0 uses
  br label %.loopexit

bb.y:                                             ; preds = %._crit_edge
  %i.cw = fadd double %i.cm, %i.cs                ; 2 uses
  %i.cx = fcmp oge double %i.cp, %i.cs
  %i.cy = select i1 %i.cx, double %i.cp, double %i.cs
  store double %i.cy, ptr %i.e, align 8, !tbaa !9
  %i.cz = fcmp oeq double %i.cn, 0.000000e+00
  br i1 %i.cz, label %.preheader, label %bb.z

.preheader:                                       ; preds = %bb.y
  %.not606738 = icmp slt i32 %i.z, 2
  br i1 %.not606738, label %._crit_edge741, label %iter.check946

iter.check946:                                    ; preds = %.preheader
  %i.da = add nuw i32 %i.z, 1
  %wide.trip.count801 = zext i32 %i.da to i64     ; 4 uses
  %i.db = add nsw i64 %wide.trip.count801, -2     ; 6 uses
  %min.iters.check929 = icmp ult i64 %i.db, 5
  br i1 %min.iters.check929, label %.lr.ph740.preheader, label %vector.scevcheck925

vector.scevcheck925:                              ; preds = %iter.check946
  %i.dc = add nsw i64 %wide.trip.count801, -3     ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %mul.result927 = shl i32 %i.dd, 1
  %i.de = icmp ugt i32 %mul.result927, 2147483643
  %i.df = icmp ugt i64 %i.dc, 2147483647
  %i.dg = or i1 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph740.preheader, label %vector.main.loop.iter.check930

vector.main.loop.iter.check930:                   ; preds = %vector.scevcheck925
  %min.iters.check931 = icmp ult i64 %i.db, 17
  br i1 %min.iters.check931, label %vec.epilog.ph950, label %vector.ph932

vector.ph932:                                     ; preds = %vector.main.loop.iter.check930
  %i.dh = and i64 %i.db, 15                       ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.di, i64 16, i64 %i.dh      ; 2 uses
  %n.vec933 = sub nsw i64 %i.db, %i.dj            ; 3 uses
  %i.dk = add nsw i64 %n.vec933, 2
  br label %vector.body934

vector.body934:                                   ; preds = %vector.body934, %vector.ph932
  %index935 = phi i64 [ 0, %vector.ph932 ], [ %index.next942, %vector.body934 ] ; 2 uses
  %i.dl = or disjoint i64 %index935, 2            ; 2 uses
  %i.dm = trunc i64 %i.dl to i32                  ; 4 uses
  %i.dn = shl nuw i32 %i.dm, 1
  %i.do = shl i32 %i.dm, 1
  %i.dp = shl i32 %i.dm, 1
  %i.dq = shl i32 %i.dm, 1
  %i.dr = sext i32 %i.dn to i64
  %i.ds = getelementptr [8 x i8], ptr %i.u, i64 %i.dr
  %i.dt = sext i32 %i.do to i64
  %i.du = getelementptr [8 x i8], ptr %i.u, i64 %i.dt
  %i.dv = sext i32 %i.dp to i64
  %i.dw = getelementptr [8 x i8], ptr %i.u, i64 %i.dv
  %i.dx = sext i32 %i.dq to i64
  %i.dy = getelementptr [8 x i8], ptr %i.u, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.ds, i64 -8
  %i.ea = getelementptr i8, ptr %i.du, i64 56
  %i.eb = getelementptr i8, ptr %i.dw, i64 120
  %i.ec = getelementptr i8, ptr %i.dy, i64 184
  %wide.vec = load <8 x double>, ptr %i.dz, align 8, !tbaa !9
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec936 = load <8 x double>, ptr %i.ea, align 8, !tbaa !9
  %strided.vec937 = shufflevector <8 x double> %wide.vec936, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec938 = load <8 x double>, ptr %i.eb, align 8, !tbaa !9
  %strided.vec939 = shufflevector <8 x double> %wide.vec938, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec940 = load <8 x double>, ptr %i.ec, align 8, !tbaa !9
  %strided.vec941 = shufflevector <8 x double> %wide.vec940, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.dl ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store <4 x double> %strided.vec, ptr %i.ed, align 8, !tbaa !9
  store <4 x double> %strided.vec937, ptr %i.ee, align 8, !tbaa !9
  store <4 x double> %strided.vec939, ptr %i.ef, align 8, !tbaa !9
  store <4 x double> %strided.vec941, ptr %i.eg, align 8, !tbaa !9
  %index.next942 = add nuw i64 %index935, 16      ; 2 uses
  %i.eh = icmp eq i64 %index.next942, %n.vec933
  br i1 %i.eh, label %vec.epilog.iter.check948, label %vector.body934, !llvm.loop !13

vec.epilog.iter.check948:                         ; preds = %vector.body934
  %min.epilog.iters.check949 = icmp samesign ult i64 %i.dj, 5
  br i1 %min.epilog.iters.check949, label %.lr.ph740.preheader, label %vec.epilog.ph950, !prof !16

vec.epilog.ph950:                                 ; preds = %vector.main.loop.iter.check930, %vec.epilog.iter.check948
  %vec.epilog.resume.val944 = phi i64 [ %n.vec933, %vec.epilog.iter.check948 ], [ 0, %vector.main.loop.iter.check930 ]
  %i.ei = and i64 %i.db, 3                        ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  %i.ek = select i1 %i.ej, i64 4, i64 %i.ei
  %n.vec951 = sub nsw i64 %i.db, %i.ek            ; 2 uses
  %i.el = add nsw i64 %n.vec951, 2
  br label %vec.epilog.vector.body952

vec.epilog.vector.body952:                        ; preds = %vec.epilog.vector.body952, %vec.epilog.ph950
  %index953 = phi i64 [ %vec.epilog.resume.val944, %vec.epilog.ph950 ], [ %index.next956, %vec.epilog.vector.body952 ] ; 2 uses
  %i.em = add i64 %index953, 2                    ; 2 uses
  %i.en = trunc i64 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr [8 x i8], ptr %i.u, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -8
  %wide.vec954 = load <8 x double>, ptr %i.er, align 8, !tbaa !9
  %strided.vec955 = shufflevector <8 x double> %wide.vec954, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.em
  store <4 x double> %strided.vec955, ptr %i.es, align 8, !tbaa !9
  %index.next956 = add nuw i64 %index953, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next956, %n.vec951
  br i1 %i.et, label %.lr.ph740.preheader, label %vec.epilog.vector.body952, !llvm.loop !17

.lr.ph740.preheader:                              ; preds = %vec.epilog.vector.body952, %vector.scevcheck925, %iter.check946, %vec.epilog.iter.check948
  %indvars.iv798.ph = phi i64 [ 2, %iter.check946 ], [ 2, %vector.scevcheck925 ], [ %i.dk, %vec.epilog.iter.check948 ], [ %i.el, %vec.epilog.vector.body952 ] ; 4 uses
  %i.eu = sub nsw i64 %wide.trip.count801, %indvars.iv798.ph
  %i.ev = zext nneg i32 %i.z to i64
  %i.ew = sub nsw i64 %i.ev, %indvars.iv798.ph
  %xtraiter998 = and i64 %i.eu, 7                 ; 2 uses
  %lcmp.mod999.not = icmp eq i64 %xtraiter998, 0
  br i1 %lcmp.mod999.not, label %.lr.ph740.prol.loopexit, label %.lr.ph740.prol

.lr.ph740.prol:                                   ; preds = %.lr.ph740.preheader, %.lr.ph740.prol
  %indvars.iv798.prol = phi i64 [ %indvars.iv.next799.prol, %.lr.ph740.prol ], [ %indvars.iv798.ph, %.lr.ph740.preheader ] ; 3 uses
  %prol.iter1000 = phi i64 [ %prol.iter1000.next, %.lr.ph740.prol ], [ 0, %.lr.ph740.preheader ]
  %indvars.iv798.tr.prol = trunc nuw i64 %indvars.iv798.prol to i32
  %i.ex = shl nuw i32 %indvars.iv798.tr.prol, 1
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr [8 x i8], ptr %i.u, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !9
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv798.prol
  store double %i.fb, ptr %i.fc, align 8, !tbaa !9
  %indvars.iv.next799.prol = add nuw nsw i64 %indvars.iv798.prol, 1 ; 2 uses
  %prol.iter1000.next = add i64 %prol.iter1000, 1 ; 2 uses
  %prol.iter1000.cmp.not = icmp eq i64 %prol.iter1000.next, %xtraiter998
  br i1 %prol.iter1000.cmp.not, label %.lr.ph740.prol.loopexit, label %.lr.ph740.prol, !llvm.loop !18

.lr.ph740.prol.loopexit:                          ; preds = %.lr.ph740.prol, %.lr.ph740.preheader
  %indvars.iv798.unr = phi i64 [ %indvars.iv798.ph, %.lr.ph740.preheader ], [ %indvars.iv.next799.prol, %.lr.ph740.prol ]
  %i.fd = icmp ult i64 %i.ew, 7
  br i1 %i.fd, label %._crit_edge741, label %.lr.ph740

.lr.ph740:                                        ; preds = %.lr.ph740.prol.loopexit, %.lr.ph740
  %indvars.iv798 = phi i64 [ %indvars.iv.next799.7, %.lr.ph740 ], [ %indvars.iv798.unr, %.lr.ph740.prol.loopexit ] ; 11 uses
  %indvars.iv798.tr = trunc nuw i64 %indvars.iv798 to i32
  %i.fe = shl nuw i32 %indvars.iv798.tr, 1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [8 x i8], ptr %i.u, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv798
  store double %i.fi, ptr %i.fj, align 8, !tbaa !9
  %i.fk = trunc i64 %indvars.iv798 to i32
  %indvars.iv798.tr.1 = shl i32 %i.fk, 1
  %i.fl = add i32 %indvars.iv798.tr.1, 2
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %i.u, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !9
  %i.fq = getelementptr [8 x i8], ptr %1, i64 %indvars.iv798
  store double %i.fp, ptr %i.fq, align 8, !tbaa !9
  %indvars.iv.next799.1 = add nuw nsw i64 %indvars.iv798, 2 ; 2 uses
  %indvars.iv798.tr.2 = trunc nuw i64 %indvars.iv.next799.1 to i32
  %i.fr = shl nuw i32 %indvars.iv798.tr.2, 1
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %i.u, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !9
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.1
  store double %i.fv, ptr %i.fw, align 8, !tbaa !9
  %indvars.iv.next799.2 = add nuw nsw i64 %indvars.iv798, 3 ; 2 uses
  %indvars.iv798.tr.3 = trunc nuw i64 %indvars.iv.next799.2 to i32
  %i.fx = shl nuw i32 %indvars.iv798.tr.3, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr [8 x i8], ptr %i.u, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 -8
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !9
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.2
  store double %i.gb, ptr %i.gc, align 8, !tbaa !9
  %indvars.iv.next799.3 = add nuw nsw i64 %indvars.iv798, 4 ; 2 uses
  %indvars.iv798.tr.4 = trunc nuw i64 %indvars.iv.next799.3 to i32
  %i.gd = shl nuw i32 %indvars.iv798.tr.4, 1
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr [8 x i8], ptr %i.u, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -8
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !9
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.3
  store double %i.gh, ptr %i.gi, align 8, !tbaa !9
  %indvars.iv.next799.4 = add nuw nsw i64 %indvars.iv798, 5 ; 2 uses
  %indvars.iv798.tr.5 = trunc nuw i64 %indvars.iv.next799.4 to i32
  %i.gj = shl nuw i32 %indvars.iv798.tr.5, 1
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr [8 x i8], ptr %i.u, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 -8
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.4
  store double %i.gn, ptr %i.go, align 8, !tbaa !9
  %indvars.iv.next799.5 = add nuw nsw i64 %indvars.iv798, 6 ; 2 uses
  %indvars.iv798.tr.6 = trunc nuw i64 %indvars.iv.next799.5 to i32
  %i.gp = shl nuw i32 %indvars.iv798.tr.6, 1
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr [8 x i8], ptr %i.u, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -8
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !9
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.5
  store double %i.gt, ptr %i.gu, align 8, !tbaa !9
  %indvars.iv.next799.6 = add nuw nsw i64 %indvars.iv798, 7 ; 2 uses
  %indvars.iv798.tr.7 = trunc nuw i64 %indvars.iv.next799.6 to i32
  %i.gv = shl nuw i32 %indvars.iv798.tr.7, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr [8 x i8], ptr %i.u, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next799.6
  store double %i.gz, ptr %i.ha, align 8, !tbaa !9
  %indvars.iv.next799.7 = add nuw nsw i64 %indvars.iv798, 8 ; 2 uses
  %exitcond802.not.7 = icmp eq i64 %indvars.iv.next799.7, %wide.trip.count801
  br i1 %exitcond802.not.7, label %._crit_edge741, label %.lr.ph740, !llvm.loop !20

._crit_edge741:                                   ; preds = %.lr.ph740.prol.loopexit, %.lr.ph740, %.preheader
  call void @dlasrt_(ptr noundef nonnull @.str.3, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.l) #7
  %i.hb = load i32, ptr %0, align 4, !tbaa !8
  %i.hc = shl i32 %i.hb, 1
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [8 x i8], ptr %i.u, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  store double %i.cw, ptr %i.hf, align 8, !tbaa !9
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.hg = fadd double %i.cn, %i.cw                ; 2 uses
  %i.hh = fcmp oeq double %i.hg, 0.000000e+00
  br i1 %i.hh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store double 0.000000e+00, ptr %i.cr, align 8, !tbaa !9
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.hi = tail call i32 @ilaenv_(ptr noundef nonnull @c__10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @c__1, ptr noundef nonnull @c__2, ptr noundef nonnull @c__3, ptr noundef nonnull @c__4, i32 noundef 6, i32 noundef 1) #7
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hk = tail call i32 @ilaenv_(ptr noundef nonnull @c__11, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @c__1, ptr noundef nonnull @c__2, ptr noundef nonnull @c__3, ptr noundef nonnull @c__4, i32 noundef 6, i32 noundef 1) #7
  %i.hl = icmp eq i32 %i.hk, 1
  %i.hm = zext i1 %i.hl to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hn = phi i32 [ 0, %bb.ab ], [ %i.hm, %bb.ac ]
  store i32 %i.hn, ptr %i.a, align 4, !tbaa !8
  %i.ho = load i32, ptr %0, align 4, !tbaa !8     ; 6 uses
  %i.hp = shl i32 %i.ho, 1                        ; 5 uses
  %i.hq = icmp sgt i32 %i.hp, 1
  br i1 %i.hq, label %.lr.ph630.preheader, label %._crit_edge631

.lr.ph630.preheader:                              ; preds = %bb.ad
  %i.hr = zext nneg i32 %i.hp to i64
  br label %.lr.ph630

.lr.ph630:                                        ; preds = %.lr.ph630.preheader, %.lr.ph630
  %indvars.iv750 = phi i64 [ %i.hr, %.lr.ph630.preheader ], [ %indvars.iv.next751, %.lr.ph630 ] ; 4 uses
  %.idx = shl i64 %indvars.iv750, 4
  %i.hs = getelementptr i8, ptr %i.u, i64 %.idx   ; 3 uses
  store double 0.000000e+00, ptr %i.hs, align 8, !tbaa !9
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv750 ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !9
  %i.hv = getelementptr i8, ptr %i.hs, i64 -8
  store double %i.hu, ptr %i.hv, align 8, !tbaa !9
  %i.hw = getelementptr i8, ptr %i.ht, i64 -8
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !9
  %i.hy = getelementptr i8, ptr %i.hs, i64 -24
  %i.hz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hx, i64 0
  store <2 x double> %i.hz, ptr %i.hy, align 8, !tbaa !9
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, -2
  %i.ia = icmp samesign ugt i64 %indvars.iv750, 3
  br i1 %i.ia, label %.lr.ph630, label %._crit_edge631, !llvm.loop !21

._crit_edge631:                                   ; preds = %.lr.ph630, %bb.ad
  store i32 1, ptr %i.m, align 4, !tbaa !8
  store i32 %i.ho, ptr %i.n, align 4, !tbaa !8
  %i.ib = load double, ptr %1, align 8, !tbaa !9
  %i.ic = fmul double %i.ib, 1.500000e+00
  %i.id = shl i32 %i.ho, 2                        ; 9 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.u, i64 %i.ie ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 -24    ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !9 ; 3 uses
  %i.ii = fcmp olt double %i.ic, %i.ih
  br i1 %i.ii, label %bb.ae, label %.loopexit614

bb.ae:                                            ; preds = %._crit_edge631
  %i.ij = add i32 %i.id, 4
  %.not594632 = icmp slt i32 %i.hp, 4
  br i1 %.not594632, label %.loopexit614, label %.lr.ph635.preheader

.lr.ph635.preheader:                              ; preds = %bb.ae
  %i.ik = zext nneg i32 %i.hp to i64
  br label %.lr.ph635

.lr.ph635:                                        ; preds = %.lr.ph635.preheader, %.lr.ph635
  %indvars.iv753 = phi i64 [ 4, %.lr.ph635.preheader ], [ %indvars.iv.next754, %.lr.ph635 ] ; 3 uses
  %i.il = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv753 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -24    ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !9
  %i.io = trunc nuw nsw i64 %indvars.iv753 to i32
  %i.ip = sub i32 %i.ij, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr [8 x i8], ptr %i.u, i64 %i.iq ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -24    ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !9
  store double %i.it, ptr %i.im, align 8, !tbaa !9
  store double %i.in, ptr %i.is, align 8, !tbaa !9
  %i.iu = getelementptr i8, ptr %i.il, i64 -8     ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !9
  %i.iw = getelementptr i8, ptr %i.ir, i64 -40    ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !9
  store double %i.ix, ptr %i.iu, align 8, !tbaa !9
  store double %i.iv, ptr %i.iw, align 8, !tbaa !9
  %indvars.iv.next754 = add nuw nsw i64 %indvars.iv753, 4 ; 2 uses
  %.not594 = icmp samesign ugt i64 %indvars.iv.next754, %i.ik
  br i1 %.not594, label %.loopexit614.loopexit, label %.lr.ph635, !llvm.loop !22

.loopexit614.loopexit:                            ; preds = %.lr.ph635
  %.pre = load double, ptr %i.ig, align 8, !tbaa !9
  br label %.loopexit614

.loopexit614:                                     ; preds = %.loopexit614.loopexit, %bb.ae, %._crit_edge631
  %i.iy = phi double [ %.pre, %.loopexit614.loopexit ], [ %i.ih, %bb.ae ], [ %i.ih, %._crit_edge631 ] ; 4 uses
  store i32 0, ptr %i.q, align 4, !tbaa !8
  %i.iz = add i32 %i.id, -4                       ; 3 uses
  %.not603636 = icmp slt i32 %i.iz, 4             ; 2 uses
  br i1 %.not603636, label %._crit_edge641.thread, label %.lr.ph640.preheader

._crit_edge641.thread:                            ; preds = %.loopexit614
  %i.ja = load double, ptr %1, align 8, !tbaa !9
  br label %._crit_edge648

.lr.ph640.preheader:                              ; preds = %.loopexit614
  %i.jb = zext nneg i32 %i.iz to i64              ; 4 uses
  %i.jc = add nsw i64 %i.jb, -4                   ; 2 uses
  %i.jd = and i64 %i.jc, 4
  %lcmp.mod.not.not = icmp eq i64 %i.jd, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph640.prol, label %.lr.ph640.prol.loopexit

.lr.ph640.prol:                                   ; preds = %.lr.ph640.preheader
  %i.je = getelementptr [8 x i8], ptr %i.u, i64 %i.jb ; 3 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 -8     ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !9 ; 2 uses
  %i.jh = fmul double %i.y, %i.iy
  %i.ji = fcmp ugt double %i.jg, %i.jh
  br i1 %i.ji, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph640.prol
  store double 0.000000e+00, ptr %i.jf, align 8, !tbaa !9
  %i.jj = getelementptr i8, ptr %i.je, i64 -24
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !9
  br label %.lr.ph640.prol.loopexit.unr-lcssa

bb.ag:                                            ; preds = %.lr.ph640.prol
  %i.jl = getelementptr i8, ptr %i.je, i64 -24
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !9
  %i.jn = fadd double %i.iy, %i.jg
  %i.jo = fdiv double %i.iy, %i.jn
  %i.jp = fmul double %i.jo, %i.jm
  br label %.lr.ph640.prol.loopexit.unr-lcssa

.lr.ph640.prol.loopexit.unr-lcssa:                ; preds = %bb.ag, %bb.af
  %.2556.prol = phi double [ %i.jk, %bb.af ], [ %i.jp, %bb.ag ]
  %indvars.iv.next757.prol = add nsw i64 %i.jb, -4
  br label %.lr.ph640.prol.loopexit

.lr.ph640.prol.loopexit:                          ; preds = %.lr.ph640.prol.loopexit.unr-lcssa, %.lr.ph640.preheader
  %indvars.iv756.unr = phi i64 [ %i.jb, %.lr.ph640.preheader ], [ %indvars.iv.next757.prol, %.lr.ph640.prol.loopexit.unr-lcssa ]
  %.1555637.unr = phi double [ %i.iy, %.lr.ph640.preheader ], [ %.2556.prol, %.lr.ph640.prol.loopexit.unr-lcssa ]
  %i.jq = icmp eq i64 %i.jc, 0
  br i1 %i.jq, label %.lr.ph647, label %.lr.ph640

.lr.ph640:                                        ; preds = %.lr.ph640.prol.loopexit, %bb.al
  %indvars.iv756 = phi i64 [ %indvars.iv.next757.1986, %bb.al ], [ %indvars.iv756.unr, %.lr.ph640.prol.loopexit ] ; 4 uses
  %.1555637 = phi double [ %.2556.1985, %bb.al ], [ %.1555637.unr, %.lr.ph640.prol.loopexit ] ; 3 uses
  %i.jr = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv756 ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 -8     ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !9 ; 2 uses
  %i.ju = fmul double %i.y, %.1555637
  %i.jv = fcmp ugt double %i.jt, %i.ju
  br i1 %i.jv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph640
  store double 0.000000e+00, ptr %i.js, align 8, !tbaa !9
  %i.jw = getelementptr i8, ptr %i.jr, i64 -24
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !9
  br label %.lr.ph640.1984

bb.ai:                                            ; preds = %.lr.ph640
  %i.jy = getelementptr i8, ptr %i.jr, i64 -24
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !9
  %i.ka = fadd double %.1555637, %i.jt
  %i.kb = fdiv double %.1555637, %i.ka
  %i.kc = fmul double %i.kb, %i.jz
  br label %.lr.ph640.1984

.lr.ph640.1984:                                   ; preds = %bb.ah, %bb.ai
  %.2556 = phi double [ %i.jx, %bb.ah ], [ %i.kc, %bb.ai ] ; 3 uses
  %i.kd = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv756 ; 3 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 -40    ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !9 ; 2 uses
  %i.kg = fmul double %i.y, %.2556
end_hunk_0
