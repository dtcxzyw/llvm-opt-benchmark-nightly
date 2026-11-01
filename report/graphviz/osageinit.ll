Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/osageinit?download=true
inline.NumInlined: 30
inline.NumDeleted: 7
begin_hunk_0_@layout:bb.a

bb.h:                                             ; preds = %bb.g
  %.pre = load i32, ptr %i.ao, align 8, !tbaa !92
  %i.ap = icmp eq i32 %.pre, 4
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !93
  %i.as = and i32 %i.ar, 2
  %.not186 = icmp eq i32 %i.as, 0
  br i1 %.not186, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = call ptr @agattr_text(ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef null) #9 ; 2 uses
  %i.au = call ptr @agattr_text(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef null) #9 ; 2 uses
  %i.av = icmp eq ptr %i.at, null
  %i.aw = icmp eq ptr %i.au, null
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = call ptr @agnameof(ptr noundef nonnull %0) #9
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.4, ptr noundef %i.ax) #9
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.j, %bb.k, %bb.i, %bb.h
  %.0171 = phi ptr [ null, %bb.k ], [ %i.au, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %.thread ] ; 2 uses
  %.0170 = phi ptr [ null, %bb.k ], [ %i.at, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 236
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !50
  %.not187307 = icmp slt i32 %i.ba, 1
  br i1 %.not187307, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.not198 = icmp eq ptr %.0170, null
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br label %bb.m

._crit_edge311:                                   ; preds = %bb.o, %bb.l
  %i.be = icmp sgt i32 %i.r, 0
  br i1 %i.be, label %bb.p, label %.loopexit

bb.m:                                             ; preds = %.lr.ph310, %bb.o
  %indvars.iv358 = phi i64 [ 1, %.lr.ph310 ], [ %indvars.iv.next359, %bb.o ] ; 3 uses
  %i.bf = phi ptr [ %i.ay, %.lr.ph310 ], [ %i.bz, %bb.o ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv358
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !tbaa.struct !94
  %i.bn = call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 32) #9
  %i.bo = load ptr, ptr %3, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !tbaa.struct !94
  br i1 %.not198, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = call i32 @late_int(ptr noundef nonnull %i.bj, ptr noundef nonnull %.0170, i32 noundef 0, i32 noundef 0) #9
  store i32 %i.bq, ptr %i.bc, align 8, !tbaa !96
  %i.br = call i64 @gv_list_append_slot_(ptr noundef nonnull %5, i64 noundef 4) #9
  %i.bs = load i32, ptr %i.bc, align 8, !tbaa !96
  %i.bt = load ptr, ptr %5, align 8, !tbaa !46
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !99
  %i.bv = call i64 @gv_list_append_slot_(ptr noundef nonnull %4, i64 noundef 8) #9
  %i.bw = load ptr, ptr %i.bd, align 8, !tbaa !99
  %i.bx = load ptr, ptr %4, align 8, !tbaa !46
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !100
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 236
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !50
  %i.cc = sext i32 %i.cb to i64
  %.not187.not = icmp slt i64 %indvars.iv358, %i.cc
  br i1 %.not187.not, label %bb.m, label %._crit_edge311, !llvm.loop !73

bb.p:                                             ; preds = %._crit_edge311
  %i.cd = call ptr @agfstnode(ptr noundef nonnull %0) #9 ; 2 uses
  %.not188312 = icmp eq ptr %i.cd, null
  br i1 %.not188312, label %.loopexit, label %.lr.ph315

.lr.ph315:                                        ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.not197 = icmp eq ptr %.0171, null
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph315, %bb.u
  %.0175313 = phi ptr [ %i.cd, %.lr.ph315 ], [ %i.dc, %bb.u ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0175313, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !14 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 152 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55
  %.not196 = icmp eq ptr %i.ck, null
  br i1 %.not196, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  store ptr %0, ptr %i.cj, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !44
  %i.cn = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.cp = load double, ptr %i.co, align 8, !tbaa !101
  store double %i.cn, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !44
  store double %i.cp, ptr %.sroa.591.0..sroa_idx, align 8, !tbaa !44
  %i.cq = call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 32) #9
  %i.cr = load ptr, ptr %3, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false), !tbaa.struct !94
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = call i32 @late_int(ptr noundef nonnull %.0175313, ptr noundef nonnull %.0171, i32 noundef 0, i32 noundef 0) #9
  store i32 %i.ct, ptr %i.cf, align 8, !tbaa !96
  %i.cu = call i64 @gv_list_append_slot_(ptr noundef nonnull %5, i64 noundef 4) #9
  %i.cv = load i32, ptr %i.cf, align 8, !tbaa !96
  %i.cw = load ptr, ptr %5, align 8, !tbaa !46
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  store ptr %.0175313, ptr %i.cg, align 8, !tbaa !99
  %i.cy = call i64 @gv_list_append_slot_(ptr noundef nonnull %4, i64 noundef 8) #9
  %i.cz = load ptr, ptr %i.cg, align 8, !tbaa !99
  %i.da = load ptr, ptr %4, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !100
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %i.dc = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.0175313) #9 ; 2 uses
  %.not188 = icmp eq ptr %i.dc, null
  br i1 %.not188, label %.loopexit, label %bb.q, !llvm.loop !74

.loopexit:                                        ; preds = %bb.u, %bb.p, %._crit_edge311
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.val207 = load i64, ptr %i.dd, align 8, !tbaa !49
  %i.de = icmp eq i64 %.val207, 0
  br i1 %i.de, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.df = load ptr, ptr %5, align 8, !tbaa !46
  %i.dg = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef 0) #9
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.v
  %i.di = phi ptr [ %i.dh, %bb.v ], [ null, %.loopexit ]
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !102
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.val206 = load i64, ptr %i.dk, align 8, !tbaa !49 ; 2 uses
  %i.dl = icmp eq i64 %.val206, 0
  br i1 %i.dl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %3, align 8, !tbaa !46
  %i.dn = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef 0) #9
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dn
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.dp = phi ptr [ %i.do, %bb.x ], [ null, %bb.w ]
  %i.dq = call ptr @putRects(i64 noundef %.val206, ptr noundef %i.dp, ptr noundef nonnull %2) #9 ; 2 uses
  %.val204316 = load i64, ptr %i.dk, align 8, !tbaa !49
  %.not = icmp eq i64 %.val204316, 0
  br i1 %.not, label %._crit_edge324, label %.lr.ph323

.lr.ph323:                                        ; preds = %bb.y
  %i.dr = icmp sgt i32 %1, 0                      ; 2 uses
  br label %bb.z

._crit_edge324:                                   ; preds = %bb.af, %bb.y
  %i.ds = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.y ], [ %i.ej, %bb.af ] ; 2 uses
  %i.dt = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.y ], [ %i.ei, %bb.af ] ; 2 uses
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !54 ; 3 uses
  %.not189 = icmp eq ptr %i.dw, null
  br i1 %.not189, label %bb.ak, label %bb.ag

bb.z:                                             ; preds = %.lr.ph323, %bb.af
  %.0176321 = phi i64 [ 0, %.lr.ph323 ], [ %i.ga, %bb.af ] ; 5 uses
  %i.dx = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph323 ], [ %i.ej, %bb.af ]
  %i.dy = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph323 ], [ %i.ei, %bb.af ]
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %.0176321
  %i.ea = load ptr, ptr %3, align 8, !tbaa !46
  %i.eb = load <2 x double>, ptr %i.dz, align 8, !tbaa !44 ; 2 uses
  %i.ec = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %.0176321) #9
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %i.ec ; 2 uses
  %i.ee = load <2 x double>, ptr %i.ed, align 8, !tbaa !44
  %.sroa.13.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load <2 x double>, ptr %.sroa.13.0..sroa_idx255, align 8, !tbaa !44
  %i.eg = fadd <2 x double> %i.eb, %i.ee          ; 5 uses
  %i.eh = fadd <2 x double> %i.eb, %i.ef          ; 5 uses
  %i.ei = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.dy, <2 x double> %i.eg) ; 2 uses
  %i.ej = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.dx, <2 x double> %i.eh) ; 2 uses
  %i.ek = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 236
  %i.em = load i32, ptr %i.el, align 4, !tbaa !50
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp ult i64 %.0176321, %i.en
  %i.ep = load ptr, ptr %4, align 8, !tbaa !46
  %i.eq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0176321) #9
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !100 ; 5 uses
  br i1 %i.eo, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !14 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store <2 x double> %i.eg, ptr %i.ev, align 8, !tbaa !44
  %.sroa.13.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store <2 x double> %i.eh, ptr %.sroa.13.0..sroa_idx257, align 8, !tbaa !44
  %i.ew = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.ex = icmp ugt i8 %i.ew, 1
  br i1 %i.ex, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.dr, label %.lr.ph.i210, label %indent.exit213

.lr.ph.i210:                                      ; preds = %bb.ab, %.lr.ph.i210
  %.02.i211 = phi i32 [ %i.ez, %.lr.ph.i210 ], [ %1, %bb.ab ] ; 2 uses
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i212 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ey) #10 ; 0 uses
  %i.ez = add nsw i32 %.02.i211, -1
  %i.fa = icmp samesign ugt i32 %.02.i211, 1
  br i1 %i.fa, label %.lr.ph.i210, label %indent.exit213, !llvm.loop !0

indent.exit213:                                   ; preds = %.lr.ph.i210, %bb.ab
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.fc = call ptr @agnameof(ptr noundef nonnull %i.es) #9
  %i.fd = extractelement <2 x double> %i.eh, i64 0
  %i.fe = extractelement <2 x double> %i.eh, i64 1
  %i.ff = extractelement <2 x double> %i.eg, i64 0
  %i.fg = extractelement <2 x double> %i.eg, i64 1
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.5, ptr noundef %i.fc, double noundef %i.ff, double noundef %i.fg, double noundef %i.fd, double noundef %i.fe) #11 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  %.not195 = icmp eq ptr %i.es, null
  br i1 %.not195, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = fadd <2 x double> %i.eg, %i.eh
  %i.fm = fmul <2 x double> %i.fl, splat (double 5.000000e-01)
  store <2 x double> %i.fm, ptr %i.fk, align 8, !tbaa !44
  %i.fn = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.fo = icmp ugt i8 %i.fn, 1
  br i1 %i.fo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dr, label %.lr.ph.i216, label %indent.exit219

.lr.ph.i216:                                      ; preds = %bb.ae, %.lr.ph.i216
  %.02.i217 = phi i32 [ %i.fq, %.lr.ph.i216 ], [ %1, %bb.ae ] ; 2 uses
  %i.fp = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i218 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.fp) #10 ; 0 uses
  %i.fq = add nsw i32 %.02.i217, -1
  %i.fr = icmp samesign ugt i32 %.02.i217, 1
  br i1 %i.fr, label %.lr.ph.i216, label %indent.exit219, !llvm.loop !0

indent.exit219:                                   ; preds = %.lr.ph.i216, %bb.ae
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.ft = call ptr @agnameof(ptr noundef nonnull %i.es) #9
  %i.fu = load ptr, ptr %i.fi, align 8, !tbaa !14 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !43
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !45
  %i.fz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.6, ptr noundef %i.ft, double noundef %i.fw, double noundef %i.fy) #11 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %indent.exit219, %bb.ad, %bb.aa, %indent.exit213
  %i.ga = add nuw i64 %.0176321, 1                ; 2 uses
  %.val204 = load i64, ptr %i.dk, align 8, !tbaa !49
  %i.gb = icmp ult i64 %i.ga, %.val204
  br i1 %i.gb, label %bb.z, label %._crit_edge324, !llvm.loop !75

bb.ag:                                            ; preds = %._crit_edge324
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %.sroa.049.0.copyload = load double, ptr %i.gc, align 8, !tbaa !44 ; 2 uses
  br i1 %i.w, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44
  %6 = insertelement <2 x double> poison, double %.sroa.049.0.copyload, i64 0
  %7 = insertelement <2 x double> %6, double %.sroa.5.0.copyload, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gd = phi <2 x double> [ %7, %bb.ah ], [ %i.ds, %bb.ag ] ; 4 uses
  %i.ge = phi <2 x double> [ zeroinitializer, %bb.ah ], [ %i.dt, %bb.ag ] ; 4 uses
  %foldExtExtBinop = fsub <2 x double> %i.gd, %i.ge
  %i.gf = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gg = fsub double %.sroa.049.0.copyload, %i.gf ; 2 uses
  %i.gh = fcmp ogt double %i.gg, 0.000000e+00
  br i1 %i.gh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gi = extractelement <2 x double> %i.ge, i64 0
  %i.gj = extractelement <2 x double> %i.gd, i64 0
  %i.gk = fmul nnan double %i.gg, 5.000000e-01    ; 2 uses
  %i.gl = fsub double %i.gi, %i.gk
  %i.gm = fadd double %i.gj, %i.gk
  %i.gn = insertelement <2 x double> %i.gd, double %i.gm, i64 0
  %i.go = insertelement <2 x double> %i.ge, double %i.gl, i64 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %._crit_edge324
  %i.gp = phi <2 x double> [ %i.ds, %._crit_edge324 ], [ %i.gn, %bb.aj ], [ %i.gd, %bb.ai ]
  %i.gq = phi <2 x double> [ %i.dt, %._crit_edge324 ], [ %i.go, %bb.aj ], [ %i.ge, %bb.ai ]
  %i.gr = icmp sgt i32 %1, 0                      ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = uitofp i32 %i.gt to double
  %i.gv = fmul nnan double %i.gu, 5.000000e-01
  %i.gw = select i1 %i.gr, double %i.gv, double 0.000000e+00 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !103
  %i.gz = fadd double %i.gy, %i.gw
  %i.ha = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1 ; 2 uses
  %i.hc = fsub <2 x double> %i.gq, %i.hb          ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.he = load double, ptr %i.hd, align 8, !tbaa !103
  %i.hf = fadd double %i.he, %i.gw
  %i.hg = insertelement <2 x double> %i.hb, double %i.hf, i64 1
  %i.hh = fadd <2 x double> %i.gp, %i.hg          ; 3 uses
  %i.hi = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.hj = icmp ugt i8 %i.hi, 1
  br i1 %i.hj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br i1 %i.gr, label %.lr.ph.i220, label %indent.exit223

.lr.ph.i220:                                      ; preds = %bb.al, %.lr.ph.i220
  %.02.i221 = phi i32 [ %i.hl, %.lr.ph.i220 ], [ %1, %bb.al ] ; 2 uses
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i222 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.hk) #10 ; 0 uses
  %i.hl = add nsw i32 %.02.i221, -1
  %i.hm = icmp samesign ugt i32 %.02.i221, 1
  br i1 %i.hm, label %.lr.ph.i220, label %indent.exit223, !llvm.loop !0

indent.exit223:                                   ; preds = %.lr.ph.i220, %bb.al
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.ho = call ptr @agnameof(ptr noundef nonnull %0) #9
  %i.hp = extractelement <2 x double> %i.hh, i64 0
  %i.hq = extractelement <2 x double> %i.hh, i64 1
  %i.hr = extractelement <2 x double> %i.hc, i64 0
  %i.hs = extractelement <2 x double> %i.hc, i64 1
  %i.ht = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.5, ptr noundef %i.ho, double noundef %i.hr, double noundef %i.hs, double noundef %i.hp, double noundef %i.hq) #11 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %indent.exit223, %bb.ak
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %.val203329 = load i64, ptr %i.hu, align 8, !tbaa !49
  %.not349 = icmp eq i64 %.val203329, 0
  br i1 %.not349, label %._crit_edge333, label %.lr.ph332

._crit_edge333:                                   ; preds = %bb.as, %bb.am
  %i.hv = fsub <2 x double> %i.hh, %i.hc          ; 3 uses
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i8 0, i64 16, i1 false)
  store <2 x double> %i.hv, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !44
  %i.hy = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.hz = icmp ugt i8 %i.hy, 1
  br i1 %i.hz, label %bb.at, label %bb.au

.lr.ph332:                                        ; preds = %bb.am, %bb.as
  %.0173330 = phi i64 [ %i.ju, %bb.as ], [ 0, %bb.am ] ; 3 uses
  %i.ia = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 236
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !50
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp ult i64 %.0173330, %i.id
  %i.if = load ptr, ptr %4, align 8, !tbaa !46
  %i.ig = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0173330) #9
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !100 ; 5 uses
  br i1 %i.ie, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.lr.ph332
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !14 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 48 ; 2 uses
  %i.im = load <2 x double>, ptr %i.il, align 8, !tbaa !44
  %i.in = fsub <2 x double> %i.im, %i.hc          ; 3 uses
  store <2 x double> %i.in, ptr %i.il, align 8, !tbaa !44
  %i.io = load <2 x double>, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !44
  %i.ip = fsub <2 x double> %i.io, %i.hc          ; 3 uses
  store <2 x double> %i.ip, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !44
  %i.iq = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.ir = icmp ugt i8 %i.iq, 1
  br i1 %i.ir, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  br i1 %i.gr, label %.lr.ph.i230, label %indent.exit233

.lr.ph.i230:                                      ; preds = %bb.ao, %.lr.ph.i230
  %.02.i231 = phi i32 [ %i.it, %.lr.ph.i230 ], [ %1, %bb.ao ] ; 2 uses
  %i.is = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i232 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.is) #10 ; 0 uses
  %i.it = add nsw i32 %.02.i231, -1
  %i.iu = icmp samesign ugt i32 %.02.i231, 1
  br i1 %i.iu, label %.lr.ph.i230, label %indent.exit233, !llvm.loop !0

indent.exit233:                                   ; preds = %.lr.ph.i230, %bb.ao
  %i.iv = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.iw = call ptr @agnameof(ptr noundef nonnull %i.ii) #9
  %i.ix = extractelement <2 x double> %i.in, i64 0
  %i.iy = extractelement <2 x double> %i.in, i64 1
  %i.iz = extractelement <2 x double> %i.ip, i64 0
  %i.ja = extractelement <2 x double> %i.ip, i64 1
  %i.jb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.5, ptr noundef %i.iw, double noundef %i.ix, double noundef %i.iy, double noundef %i.iz, double noundef %i.ja) #11 ; 0 uses
  br label %bb.as

bb.ap:                                            ; preds = %.lr.ph332
  %.not194 = icmp eq ptr %i.ii, null
  br i1 %.not194, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !14
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32 ; 2 uses
  %i.jf = load <2 x double>, ptr %i.je, align 8
  %i.jg = fsub <2 x double> %i.jf, %i.hc
  store <2 x double> %i.jg, ptr %i.je, align 8, !tbaa !44
  %i.jh = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.ji = icmp ugt i8 %i.jh, 1
  br i1 %i.ji, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.gr, label %.lr.ph.i236, label %indent.exit239

.lr.ph.i236:                                      ; preds = %bb.ar, %.lr.ph.i236
  %.02.i237 = phi i32 [ %i.jk, %.lr.ph.i236 ], [ %1, %bb.ar ] ; 2 uses
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i238 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.jj) #10 ; 0 uses
  %i.jk = add nsw i32 %.02.i237, -1
  %i.jl = icmp samesign ugt i32 %.02.i237, 1
  br i1 %i.jl, label %.lr.ph.i236, label %indent.exit239, !llvm.loop !0

indent.exit239:                                   ; preds = %.lr.ph.i236, %bb.ar
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.jn = call ptr @agnameof(ptr noundef nonnull %i.ii) #9
  %i.jo = load ptr, ptr %i.jc, align 8, !tbaa !14 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !43
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.js = load double, ptr %i.jr, align 8, !tbaa !45
  %i.jt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jm, ptr noundef nonnull @.str.6, ptr noundef %i.jn, double noundef %i.jq, double noundef %i.js) #11 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %indent.exit239, %bb.aq, %bb.an, %indent.exit233
  %i.ju = add nuw i64 %.0173330, 1                ; 2 uses
  %.val203 = load i64, ptr %i.hu, align 8, !tbaa !49
  %i.jv = icmp ult i64 %i.ju, %.val203
  br i1 %i.jv, label %.lr.ph332, label %._crit_edge333, !llvm.loop !76

bb.at:                                            ; preds = %._crit_edge333
  br i1 %i.gr, label %.lr.ph.i240, label %indent.exit243

.lr.ph.i240:                                      ; preds = %bb.at, %.lr.ph.i240
  %.02.i241 = phi i32 [ %i.jx, %.lr.ph.i240 ], [ %1, %bb.at ] ; 2 uses
  %i.jw = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i242 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.jw) #10 ; 0 uses
  %i.jx = add nsw i32 %.02.i241, -1
  %i.jy = icmp samesign ugt i32 %.02.i241, 1
  br i1 %i.jy, label %.lr.ph.i240, label %indent.exit243, !llvm.loop !0

indent.exit243:                                   ; preds = %.lr.ph.i240, %bb.at
  %i.jz = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.ka = call ptr @agnameof(ptr noundef nonnull %0) #9
  %i.kb = extractelement <2 x double> %i.hv, i64 0
  %i.kc = extractelement <2 x double> %i.hv, i64 1
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jz, ptr noundef nonnull @.str.5, ptr noundef %i.ka, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.kb, double noundef %i.kc) #11 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %indent.exit243, %._crit_edge333
  %.val202334 = load i64, ptr %i.dd, align 8, !tbaa !49
  %.not350 = icmp eq i64 %.val202334, 0
  br i1 %.not350, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.au
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.av

._crit_edge338:                                   ; preds = %bb.ay, %bb.au
end_hunk_0
