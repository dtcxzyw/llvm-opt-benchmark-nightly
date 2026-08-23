Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@main:bb.a
  %i.bp = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8, ptr noundef nonnull @main.bet, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.bet, i64 8), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.bet, i64 16), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.bet, i64 24), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.bet, i64 32), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.bet, i64 40), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.bet, i64 48)) #19 ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  store i32 1, ptr @main.i__, align 4, !tbaa !13
  %i.br = load i32, ptr @main.nidim, align 4, !tbaa !13
  %.not56155 = icmp slt i32 %i.br, 1
  br i1 %.not56155, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.f, %.lr.ph158
  %storemerge55156 = phi i32 [ %i.by, %.lr.ph158 ], [ 1, %bb.f ]
  %i.bs = sext i32 %storemerge55156 to i64
  %i.bt = getelementptr [4 x i8], ptr @main.idim, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !13
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.bv) ; 0 uses
  %i.bx = load i32, ptr @main.i__, align 4, !tbaa !13 ; 2 uses
  %i.by = add nsw i32 %i.bx, 1                    ; 2 uses
  store i32 %i.by, ptr @main.i__, align 4, !tbaa !13
  %i.bz = load i32, ptr @main.nidim, align 4, !tbaa !13
  %.not56.not = icmp slt i32 %i.bx, %i.bz
  br i1 %.not56.not, label %.lr.ph158, label %._crit_edge159, !llvm.loop !17

._crit_edge159:                                   ; preds = %.lr.ph158, %bb.f
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  store i32 1, ptr @main.i__, align 4, !tbaa !13
  %i.cb = load i32, ptr @main.nalf, align 4, !tbaa !13
  %.not58160 = icmp slt i32 %i.cb, 1
  br i1 %.not58160, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %._crit_edge159, %.lr.ph163
  %storemerge57161 = phi i32 [ %i.ci, %.lr.ph163 ], [ 1, %._crit_edge159 ]
  %i.cc = sext i32 %storemerge57161 to i64
  %i.cd = getelementptr [8 x i8], ptr @main.alf, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.cf) ; 0 uses
  %i.ch = load i32, ptr @main.i__, align 4, !tbaa !13 ; 2 uses
  %i.ci = add nsw i32 %i.ch, 1                    ; 2 uses
  store i32 %i.ci, ptr @main.i__, align 4, !tbaa !13
  %i.cj = load i32, ptr @main.nalf, align 4, !tbaa !13
  %.not58.not = icmp slt i32 %i.ch, %i.cj
  br i1 %.not58.not, label %.lr.ph163, label %._crit_edge164, !llvm.loop !20

._crit_edge164:                                   ; preds = %.lr.ph163, %._crit_edge159
  %putchar59 = call i32 @putchar(i32 10)          ; 0 uses
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  store i32 1, ptr @main.i__, align 4, !tbaa !13
  %i.cl = load i32, ptr @main.nbet, align 4, !tbaa !13
  %.not61165 = icmp slt i32 %i.cl, 1
  br i1 %.not61165, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %._crit_edge164, %.lr.ph168
  %storemerge60166 = phi i32 [ %i.cs, %.lr.ph168 ], [ 1, %._crit_edge164 ]
  %i.cm = sext i32 %storemerge60166 to i64
  %i.cn = getelementptr [8 x i8], ptr @main.bet, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !18
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.cp) ; 0 uses
  %i.cr = load i32, ptr @main.i__, align 4, !tbaa !13 ; 2 uses
  %i.cs = add nsw i32 %i.cr, 1                    ; 2 uses
  store i32 %i.cs, ptr @main.i__, align 4, !tbaa !13
  %i.ct = load i32, ptr @main.nbet, align 4, !tbaa !13
  %.not61.not = icmp slt i32 %i.cr, %i.ct
  br i1 %.not61.not, label %.lr.ph168, label %._crit_edge169, !llvm.loop !21

._crit_edge169:                                   ; preds = %.lr.ph168, %._crit_edge164
  %putchar62 = call i32 @putchar(i32 10)          ; 0 uses
  %i.cu = load i32, ptr @main.tsterr, align 4, !tbaa !13
  %.not63 = icmp eq i32 %i.cu, 0
  br i1 %.not63, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge169
  %puts64 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge169
  %i.cv = load double, ptr @main.thresh, align 8, !tbaa !18
  %i.cw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.cv) ; 0 uses
  store i1 false, ptr @main.rorder, align 4
  store i1 false, ptr @main.corder, align 4
  %i.cx = load i32, ptr @main.layout, align 4, !tbaa !13
  switch i32 %i.cx, label %.preheader147 [
    i32 2, label %bb.i
    i32 1, label %.preheader147.sink.split
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @main.rorder, align 4
  br label %.preheader147.sink.split

bb.j:                                             ; preds = %bb.h
  br label %.preheader147.sink.split

.preheader147.sink.split:                         ; preds = %bb.h, %bb.i, %bb.j
  %main.rorder.sink = phi ptr [ @main.corder, %bb.i ], [ @main.corder, %bb.j ], [ @main.rorder, %bb.h ]
  %str.3.sink = phi ptr [ @str.4, %bb.i ], [ @str.2, %bb.j ], [ @str.3, %bb.h ]
  store i1 true, ptr %main.rorder.sink, align 4
  %puts66 = call i32 @puts(ptr nonnull dereferenceable(1) %str.3.sink) ; 0 uses
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.sink.split, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @main.ltest, i8 0, i64 24, i1 false), !tbaa !13
  store i32 7, ptr @main.i__, align 4, !tbaa !13
  %i.cy = load ptr, ptr @stdin, align 8, !tbaa !10
  %i.cz = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 80, ptr noundef %i.cy)
  %.not69173 = icmp eq ptr %i.cz, null
  br i1 %.not69173, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader147, %bb.l
  %i.da = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.22, ptr noundef nonnull @main.snamet, ptr noundef nonnull %i.a) #19
  %i.db = load i8, ptr %i.a, align 1, !tbaa !14
  %i.dc = icmp eq i8 %i.db, 84
  %spec.store.select6 = zext i1 %i.dc to i32
  %i.dd = icmp slt i32 %i.da, 2
  br i1 %i.dd, label %._crit_edge175, label %.preheader146.preheader

.preheader146.preheader:                          ; preds = %.lr.ph174
  %i.de = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @main.snamet, ptr noundef nonnull dereferenceable(1) @main.snames, i64 noundef 12) #20
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.l, label %.preheader146.1

.preheader146.1:                                  ; preds = %.preheader146.preheader
  %i.dg = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @main.snamet, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @main.snames, i64 13), i64 noundef 12) #20
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.l, label %.preheader146.2

.preheader146.2:                                  ; preds = %.preheader146.1
  %i.di = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @main.snamet, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @main.snames, i64 26), i64 noundef 12) #20
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.l, label %.preheader146.3

.preheader146.3:                                  ; preds = %.preheader146.2
  %i.dk = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @main.snamet, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @main.snames, i64 39), i64 noundef 12) #20
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.l, label %.preheader146.4

.preheader146.4:                                  ; preds = %.preheader146.3
  %i.dm = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @main.snamet, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @main.snames, i64 52), i64 noundef 12) #20
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.l, label %.preheader146.5

.preheader146.5:                                  ; preds = %.preheader146.4
  %i.do = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @main.snamet, ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @main.snames, i64 65), i64 noundef 12) #20
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader146.5
  store i32 7, ptr @main.i__, align 4, !tbaa !13
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @main.snamet) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.l:                                             ; preds = %.preheader146.5, %.preheader146.4, %.preheader146.3, %.preheader146.2, %.preheader146.1, %.preheader146.preheader
  %storemerge70172.lcssa.wide = phi i32 [ 1, %.preheader146.preheader ], [ 2, %.preheader146.1 ], [ 3, %.preheader146.2 ], [ 4, %.preheader146.3 ], [ 5, %.preheader146.4 ], [ 6, %.preheader146.5 ]
  %.lcssa208 = phi i64 [ 0, %.preheader146.preheader ], [ 1, %.preheader146.1 ], [ 2, %.preheader146.2 ], [ 3, %.preheader146.3 ], [ 4, %.preheader146.4 ], [ 5, %.preheader146.5 ]
  store i32 %storemerge70172.lcssa.wide, ptr @main.i__, align 4, !tbaa !13
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @main.ltest, i64 %.lcssa208
  store i32 %spec.store.select6, ptr %i.dr, align 4, !tbaa !13
  %i.ds = load ptr, ptr @stdin, align 8, !tbaa !10
  %i.dt = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 80, ptr noundef %i.ds)
  %.not69 = icmp eq ptr %i.dt, null
  br i1 %.not69, label %._crit_edge175, label %.lr.ph174

._crit_edge175:                                   ; preds = %bb.l, %.lr.ph174, %.preheader147
  %i.du = load double, ptr @c_b90, align 8, !tbaa !18 ; 2 uses
  %i.dv = fcmp oeq double %i.du, 2.000000e+00
  br i1 %i.dv, label %._crit_edge181, label %.lr.ph180

.lr.ph180:                                        ; preds = %._crit_edge175, %.lr.ph180
  %storemerge71178 = phi double [ %i.dw, %.lr.ph180 ], [ 1.000000e+00, %._crit_edge175 ]
  %i.dw = fmul double %storemerge71178, 5.000000e-01 ; 4 uses
  %i.dx = fadd double %i.dw, 1.000000e+00
  %i.dy = fsub double %i.dx, %i.du
  %i.dz = fcmp oeq double %i.dy, 0.000000e+00
  br i1 %i.dz, label %._crit_edge181.loopexit, label %.lr.ph180

._crit_edge181.loopexit:                          ; preds = %.lr.ph180
  %i.ea = fadd double %i.dw, %i.dw
  br label %._crit_edge181

._crit_edge181:                                   ; preds = %._crit_edge181.loopexit, %._crit_edge175
  %storemerge71.lcssa177 = phi double [ 2.000000e+00, %._crit_edge175 ], [ %i.ea, %._crit_edge181.loopexit ] ; 2 uses
  store double %storemerge71.lcssa177, ptr @main.eps, align 8, !tbaa !18
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %storemerge71.lcssa177) ; 0 uses
  store i32 32, ptr @main.n, align 4, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @main.c__, i8 0, i64 256, i1 false), !tbaa !18
  br label %.preheader145

.preheader145:                                    ; preds = %._crit_edge181, %.preheader145
  %indvars.iv228 = phi i64 [ 1, %._crit_edge181 ], [ %indvars.iv.next229, %.preheader145 ] ; 12 uses
  %i.ec = mul nuw nsw i64 %indvars.iv228, 65      ; 9 uses
  %i.ed = trunc i64 %indvars.iv228 to i32
  %i.ee = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eg = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.eh = getelementptr i8, ptr %i.eg, i64 -520
  %i.ei = sub <4 x i32> <i32 1, i32 2, i32 3, i32 4>, %i.ef
  %i.ej = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ei, <4 x i32> splat (i32 -1))
  %i.ek = add nsw <4 x i32> %i.ej, splat (i32 1)
  %i.el = uitofp <4 x i32> %i.ek to <4 x double>
  store <4 x double> %i.el, ptr %i.eh, align 8, !tbaa !18
  %i.em = trunc i64 %indvars.iv228 to i32
  %i.en = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %i.eo = shufflevector <4 x i32> %i.en, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ep = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.eq = getelementptr i8, ptr %i.ep, i64 -488
  %i.er = sub <4 x i32> <i32 5, i32 6, i32 7, i32 8>, %i.eo
  %i.es = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.er, <4 x i32> splat (i32 -1))
  %i.et = add nsw <4 x i32> %i.es, splat (i32 1)
  %i.eu = uitofp <4 x i32> %i.et to <4 x double>
  store <4 x double> %i.eu, ptr %i.eq, align 8, !tbaa !18
  %i.ev = trunc i64 %indvars.iv228 to i32
  %i.ew = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.ex = shufflevector <4 x i32> %i.ew, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ey = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.ez = getelementptr i8, ptr %i.ey, i64 -456
  %i.fa = sub <4 x i32> <i32 9, i32 10, i32 11, i32 12>, %i.ex
  %i.fb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fa, <4 x i32> splat (i32 -1))
  %i.fc = add nsw <4 x i32> %i.fb, splat (i32 1)
  %i.fd = uitofp <4 x i32> %i.fc to <4 x double>
  store <4 x double> %i.fd, ptr %i.ez, align 8, !tbaa !18
  %i.fe = trunc i64 %indvars.iv228 to i32
  %i.ff = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fh = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.fi = getelementptr i8, ptr %i.fh, i64 -424
  %i.fj = sub <4 x i32> <i32 13, i32 14, i32 15, i32 16>, %i.fg
  %i.fk = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fj, <4 x i32> splat (i32 -1))
  %i.fl = add nsw <4 x i32> %i.fk, splat (i32 1)
  %i.fm = uitofp <4 x i32> %i.fl to <4 x double>
  store <4 x double> %i.fm, ptr %i.fi, align 8, !tbaa !18
  %i.fn = trunc i64 %indvars.iv228 to i32
  %i.fo = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fp = shufflevector <4 x i32> %i.fo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fq = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.fr = getelementptr i8, ptr %i.fq, i64 -392
  %i.fs = sub <4 x i32> <i32 17, i32 18, i32 19, i32 20>, %i.fp
  %i.ft = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fs, <4 x i32> splat (i32 -1))
  %i.fu = add nsw <4 x i32> %i.ft, splat (i32 1)
  %i.fv = uitofp <4 x i32> %i.fu to <4 x double>
  store <4 x double> %i.fv, ptr %i.fr, align 8, !tbaa !18
  %i.fw = trunc i64 %indvars.iv228 to i32
  %i.fx = insertelement <4 x i32> poison, i32 %i.fw, i64 0
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fz = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.ga = getelementptr i8, ptr %i.fz, i64 -360
  %i.gb = sub <4 x i32> <i32 21, i32 22, i32 23, i32 24>, %i.fy
  %i.gc = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gb, <4 x i32> splat (i32 -1))
  %i.gd = add nsw <4 x i32> %i.gc, splat (i32 1)
  %i.ge = uitofp <4 x i32> %i.gd to <4 x double>
  store <4 x double> %i.ge, ptr %i.ga, align 8, !tbaa !18
  %i.gf = trunc i64 %indvars.iv228 to i32
  %i.gg = insertelement <4 x i32> poison, i32 %i.gf, i64 0
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gi = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.gj = getelementptr i8, ptr %i.gi, i64 -328
  %i.gk = sub <4 x i32> <i32 25, i32 26, i32 27, i32 28>, %i.gh
  %i.gl = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gk, <4 x i32> splat (i32 -1))
  %i.gm = add nsw <4 x i32> %i.gl, splat (i32 1)
  %i.gn = uitofp <4 x i32> %i.gm to <4 x double>
  store <4 x double> %i.gn, ptr %i.gj, align 8, !tbaa !18
  %i.go = trunc i64 %indvars.iv228 to i32
  %i.gp = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %i.gq = shufflevector <4 x i32> %i.gp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gr = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.gs = getelementptr i8, ptr %i.gr, i64 -296
  %i.gt = sub <4 x i32> <i32 29, i32 30, i32 31, i32 32>, %i.gq
  %i.gu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gt, <4 x i32> splat (i32 -1))
  %i.gv = add nsw <4 x i32> %i.gu, splat (i32 1)
  %i.gw = uitofp <4 x i32> %i.gv to <4 x double>
  store <4 x double> %i.gw, ptr %i.gs, align 8, !tbaa !18
  %i.gx = trunc nuw nsw i64 %indvars.iv228 to i32
  %i.gy = uitofp nneg i32 %i.gx to double         ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv228
  %i.ha = getelementptr i8, ptr %i.gz, i64 33792
  store double %i.gy, ptr %i.ha, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr @main.ab, i64 %i.ec
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 33280
  store double %i.gy, ptr %i.hc, align 8, !tbaa !18
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next229, 33
  br i1 %exitcond231.not, label %.preheader144, label %.preheader145, !llvm.loop !22

.preheader144:                                    ; preds = %.preheader145
  store i32 33, ptr @main.i__, align 4, !tbaa !13
  store <4 x double> <double 1.000000e+00, double 4.000000e+00, double 1.000000e+01, double 2.000000e+01>, ptr @main.cc, align 32, !tbaa !18
  store <4 x double> <double 3.500000e+01, double 5.600000e+01, double 8.400000e+01, double 1.200000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 32), align 32, !tbaa !18
  store <4 x double> <double 1.650000e+02, double 2.200000e+02, double 2.860000e+02, double 3.640000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 64), align 32, !tbaa !18
  store <4 x double> <double 4.550000e+02, double 5.600000e+02, double 6.800000e+02, double 8.160000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 96), align 32, !tbaa !18
  store <4 x double> <double 9.690000e+02, double 1.140000e+03, double 1.330000e+03, double 1.540000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 128), align 32, !tbaa !18
  store <4 x double> <double 1.771000e+03, double 2.024000e+03, double 2.300000e+03, double 2.600000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 160), align 32, !tbaa !18
  store <4 x double> <double 2.925000e+03, double 3.276000e+03, double 3.654000e+03, double 4.060000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 192), align 32, !tbaa !18
  store <4 x double> <double 4.495000e+03, double 4.960000e+03, double 5.456000e+03, double 5.984000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 224), align 32, !tbaa !18
  store i8 78, ptr @main.transa, align 1, !tbaa !14
  store i8 78, ptr @main.transb, align 1, !tbaa !14
  %i.hd = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.he = load i32, ptr @main.n, align 4, !tbaa !13 ; 2 uses
  %.not7.i = icmp slt i32 %i.he, 1
  br i1 %.not7.i, label %lde_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader144
  %i.hf = add nuw i32 %i.he, 1
  %wide.trip.count.i = zext i32 %i.hf to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !18
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !18
  %i.hk = fcmp une double %i.hh, %i.hj
  br i1 %i.hk, label %lde_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lde_.exit, label %.lr.ph.i, !llvm.loop !23

lde_.exit.thread:                                 ; preds = %.lr.ph.i
  store i32 0, ptr @main.same, align 4, !tbaa !13
  br label %bb.n

lde_.exit:                                        ; preds = %bb.m, %.preheader144
  store i32 1, ptr @main.same, align 4, !tbaa !13
  %i.hl = load double, ptr @main.err, align 8
  %i.hm = fcmp une double %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %lde_.exit.thread, %lde_.exit
  %puts91 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.hn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb) ; 0 uses
  %i.ho = load i32, ptr @main.same, align 4, !tbaa !13
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = select i1 %i.hp, i32 70, i32 84
  %i.hr = load double, ptr @main.err, align 8, !tbaa !18
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.hq, double noundef %i.hr) ; 0 uses
  %puts92 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.o:                                             ; preds = %lde_.exit
  store i8 84, ptr @main.transb, align 1, !tbaa !14
  %i.ht = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.hu = load i32, ptr @main.n, align 4, !tbaa !13 ; 9 uses
  %.not7.i100 = icmp slt i32 %i.hu, 1
  br i1 %.not7.i100, label %lde_.exit110.thread270, label %.lr.ph.preheader.i101

.lr.ph.preheader.i101:                            ; preds = %bb.o
  %i.hv = add nuw i32 %i.hu, 1
  %wide.trip.count.i102 = zext i32 %i.hv to i64
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %bb.p, %.lr.ph.preheader.i101
  %indvars.iv.i104 = phi i64 [ 1, %.lr.ph.preheader.i101 ], [ %indvars.iv.next.i105, %bb.p ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i104
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !18
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i104
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !18
  %i.ia = fcmp une double %i.hx, %i.hz
  br i1 %i.ia, label %lde_.exit110.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i103
  %indvars.iv.next.i105 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i106 = icmp eq i64 %indvars.iv.next.i105, %wide.trip.count.i102
  br i1 %exitcond.not.i106, label %lde_.exit110, label %.lr.ph.i103, !llvm.loop !23

lde_.exit110.thread:                              ; preds = %.lr.ph.i103
  store i32 0, ptr @main.same, align 4, !tbaa !13
  br label %bb.q

lde_.exit110:                                     ; preds = %bb.p
  store i32 1, ptr @main.same, align 4, !tbaa !13
  %i.ib = load double, ptr @main.err, align 8
  %i.ic = fcmp une double %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.q, label %.lr.ph190

lde_.exit110.thread270:                           ; preds = %bb.o
  store i32 1, ptr @main.same, align 4, !tbaa !13
  %i.id = load double, ptr @main.err, align 8
  %i.ie = fcmp une double %i.id, 0.000000e+00
  br i1 %i.ie, label %bb.q, label %._crit_edge195

.lr.ph190:                                        ; preds = %lde_.exit110
  %i.if = add nuw i32 %i.hu, 1                    ; 5 uses
  %i.ig = zext nneg i32 %i.hu to i64              ; 2 uses
  %xtraiter = and i64 %i.ig, 3                    ; 3 uses
  %i.ih = icmp ult i32 %i.hu, 4
  br i1 %i.ih, label %.epil.preheader, label %.lr.ph190.new

.lr.ph190.new:                                    ; preds = %.lr.ph190
  %unroll_iter = and i64 %i.ig, 2147483644
  br label %bb.s

bb.q:                                             ; preds = %lde_.exit110.thread270, %lde_.exit110.thread, %lde_.exit110
  %puts88 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ii = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb) ; 0 uses
  %i.ij = load i32, ptr @main.same, align 4, !tbaa !13
  %i.ik = icmp eq i32 %i.ij, 0
  %i.il = select i1 %i.ik, i32 70, i32 84
  %i.im = load double, ptr @main.err, align 8, !tbaa !18
  %i.in = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.il, double noundef %i.im) ; 0 uses
  %puts89 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts90 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

.lr.ph194.preheader.unr-lcssa:                    ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph194.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph194.preheader.unr-lcssa, %.lr.ph190
  %indvars.iv236.epil.init = phi i64 [ 1, %.lr.ph190 ], [ %indvars.iv.next237.3, %.lr.ph194.preheader.unr-lcssa ]
  %lcmp.mod296 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod296)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv236.epil = phi i64 [ %indvars.iv236.epil.init, %.epil.preheader ], [ %indvars.iv.next237.epil, %bb.r ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.io = trunc nuw nsw i64 %indvars.iv236.epil to i32
  %i.ip = sub i32 %i.if, %i.io
  %i.iq = sitofp i32 %i.ip to double              ; 2 uses
  %i.ir = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv236.epil
  %i.is = getelementptr i8, ptr %i.ir, i64 33792
  store double %i.iq, ptr %i.is, align 8, !tbaa !18
  %i.it = mul i64 %indvars.iv236.epil, 279172874240
  %sext.epil = add i64 %i.it, 17867063951360
  %i.iu = ashr exact i64 %sext.epil, 29
  %i.iv = getelementptr inbounds i8, ptr @main.ab, i64 %i.iu
  store double %i.iq, ptr %i.iv, align 8, !tbaa !18
  %indvars.iv.next237.epil = add nuw nsw i64 %indvars.iv236.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph194.preheader, label %bb.r, !llvm.loop !24

.lr.ph194.preheader:                              ; preds = %bb.r, %.lr.ph194.preheader.unr-lcssa
  %i.iw = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.ix = add nuw i32 %i.hu, 1
  %wide.trip.count246 = zext i32 %i.ix to i64
  %i.iy = zext nneg i32 %i.hu to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.hu, 4
  br i1 %min.iters.check, label %.lr.ph194.preheader294, label %vector.ph282

vector.ph282:                                     ; preds = %.lr.ph194.preheader
  %n.vec = and i64 %i.iy, 2147483644              ; 3 uses
  %i.iz = or disjoint i64 %n.vec, 1
  %invariant.gep = getelementptr [8 x i8], ptr @main.cc, i64 %i.iw
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph282
  %index284 = phi i64 [ 0, %vector.ph282 ], [ %index.next288, %vector.body283 ] ; 2 uses
  %vec.ind285 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph282 ], [ %vec.ind.next289, %vector.body283 ] ; 2 uses
  %vec.ind286 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph282 ], [ %vec.ind.next290, %vector.body283 ] ; 3 uses
  %vec.ind287 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph282 ], [ %vec.ind.next291, %vector.body283 ] ; 2 uses
  %.neg293 = xor i64 %index284, -1
  %i.ja = trunc <4 x i64> %vec.ind285 to <4 x i32>
  %i.jb = add <4 x i32> %i.ja, splat (i32 1)
  %i.jc = mul nuw nsw <4 x i32> %i.jb, %vec.ind286 ; 2 uses
  %i.jd = mul nuw nsw <4 x i32> %i.jc, %vec.ind286
  %i.je = lshr <4 x i32> %i.jd, splat (i32 1)
  %i.jf = add <4 x i32> %vec.ind287, splat (i32 -1)
  %i.jg = mul nsw <4 x i32> %i.jc, %i.jf
  %i.jh = sdiv <4 x i32> %i.jg, splat (i32 -3)
  %i.ji = add nsw <4 x i32> %i.jh, %i.je
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.neg293
  %i.jj = getelementptr inbounds i8, ptr %gep, i64 -24
  %i.jk = shufflevector <4 x i32> %i.ji, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
end_hunk_0
