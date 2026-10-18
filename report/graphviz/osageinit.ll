Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/osageinit?download=true
inline.NumInlined: 30
inline.NumDeleted: 7
begin_hunk_0_@layout:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.d = icmp ugt i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph.i, label %indent.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.02.i = phi i32 [ %i.g, %.lr.ph.i ], [ %1, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.f) #10 ; 0 uses
  %i.g = add nsw i32 %.02.i, -1
  %i.h = icmp samesign ugt i32 %.02.i, 1
  br i1 %i.h, label %.lr.ph.i, label %indent.exit, !llvm.loop !0

indent.exit:                                      ; preds = %.lr.ph.i, %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.j = tail call ptr @agnameof(ptr noundef nonnull %0) #9
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.2, ptr noundef %i.j) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %indent.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 236
  %i.o = load i32, ptr %i.n, align 4, !tbaa !50
  %.not304 = icmp slt i32 %i.o, 1
  br i1 %.not304, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = add nsw i32 %1, 1
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.ad, %bb.d ]
  %i.q = tail call i32 @agnnodes(ptr noundef nonnull %0) #9
  %i.r = sub nsw i32 %i.q, %.0.lcssa              ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !14   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 236
  %i.u = load i32, ptr %i.t, align 4, !tbaa !50
  %i.v = sub i32 0, %i.u
  %i.w = icmp eq i32 %i.r, %i.v                   ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.x = phi ptr [ %i.m, %.lr.ph ], [ %i.ae, %bb.d ]
  %.0306 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  tail call fastcc void @layout(ptr noundef %i.ab, i32 noundef %i.p)
  %i.ac = tail call i32 @agnnodes(ptr noundef %i.ab) #9
  %i.ad = add nsw i32 %i.ac, %.0306               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !14  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 236
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50
  %i.ah = sext i32 %i.ag to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ah
  br i1 %.not.not, label %bb.d, label %._crit_edge, !llvm.loop !72

bb.e:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %.sroa.2112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store <2 x double> splat (double 1.800000e+01), ptr %.sroa.2112.0..sroa_idx, align 8, !tbaa !44
  br label %bb.bh

bb.g:                                             ; preds = %bb.e, %._crit_edge
  %i.am = call i32 @getPackInfo(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %2) #9
  %i.an = icmp ult i32 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.an, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  store i32 3, ptr %i.ao, align 8, !tbaa !92
  br label %bb.l

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
  %.0175313 = phi ptr [ %i.cd, %.lr.ph315 ], [ %i.da, %bb.u ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0175313, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !14 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 152 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55
  %.not196 = icmp eq ptr %i.ck, null
  br i1 %.not196, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  store ptr %0, ptr %i.cj, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %6 = load double, ptr %i.cl, align 8, !tbaa !101
  %7 = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %8 = load double, ptr %7, align 8, !tbaa !102
  %9 = fadd double %6, %8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !103
  store double %9, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !44
  store double %i.cn, ptr %.sroa.591.0..sroa_idx, align 8, !tbaa !44
  %i.co = call i64 @gv_list_append_slot_(ptr noundef nonnull %3, i64 noundef 32) #9
  %i.cp = load ptr, ptr %3, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false), !tbaa.struct !94
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = call i32 @late_int(ptr noundef nonnull %.0175313, ptr noundef nonnull %.0171, i32 noundef 0, i32 noundef 0) #9
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !96
  %i.cs = call i64 @gv_list_append_slot_(ptr noundef nonnull %5, i64 noundef 4) #9
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !96
  %i.cu = load ptr, ptr %5, align 8, !tbaa !46
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cs
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  store ptr %.0175313, ptr %i.cg, align 8, !tbaa !99
  %i.cw = call i64 @gv_list_append_slot_(ptr noundef nonnull %4, i64 noundef 8) #9
  %i.cx = load ptr, ptr %i.cg, align 8, !tbaa !99
  %i.cy = load ptr, ptr %4, align 8, !tbaa !46
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !100
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %i.da = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.0175313) #9 ; 2 uses
  %.not188 = icmp eq ptr %i.da, null
  br i1 %.not188, label %.loopexit, label %bb.q, !llvm.loop !74

.loopexit:                                        ; preds = %bb.u, %bb.p, %._crit_edge311
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.val207 = load i64, ptr %i.db, align 8, !tbaa !49
  %i.dc = icmp eq i64 %.val207, 0
  br i1 %i.dc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  %i.dd = load ptr, ptr %5, align 8, !tbaa !46
  %i.de = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef 0) #9
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.v
  %i.dg = phi ptr [ %i.df, %bb.v ], [ null, %.loopexit ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !104
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.val206 = load i64, ptr %i.di, align 8, !tbaa !49 ; 2 uses
  %i.dj = icmp eq i64 %.val206, 0
  br i1 %i.dj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %3, align 8, !tbaa !46
  %i.dl = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef 0) #9
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dl
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.dn = phi ptr [ %i.dm, %bb.x ], [ null, %bb.w ]
  %i.do = call ptr @putRects(i64 noundef %.val206, ptr noundef %i.dn, ptr noundef nonnull %2) #9 ; 2 uses
  %.val204316 = load i64, ptr %i.di, align 8, !tbaa !49
  %.not = icmp eq i64 %.val204316, 0
  br i1 %.not, label %._crit_edge324, label %.lr.ph323

.lr.ph323:                                        ; preds = %bb.y
  %i.dp = icmp sgt i32 %1, 0                      ; 2 uses
  br label %bb.z

._crit_edge324:                                   ; preds = %bb.af, %bb.y
  %i.dq = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %bb.y ], [ %i.eh, %bb.af ] ; 2 uses
  %i.dr = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.y ], [ %i.eg, %bb.af ] ; 2 uses
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !14  ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !54 ; 3 uses
  %.not189 = icmp eq ptr %i.du, null
  br i1 %.not189, label %bb.ak, label %bb.ag

bb.z:                                             ; preds = %.lr.ph323, %bb.af
  %.0176321 = phi i64 [ 0, %.lr.ph323 ], [ %i.fy, %bb.af ] ; 5 uses
  %i.dv = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph323 ], [ %i.eh, %bb.af ]
  %i.dw = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph323 ], [ %i.eg, %bb.af ]
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %.0176321
  %i.dy = load ptr, ptr %3, align 8, !tbaa !46
  %i.dz = load <2 x double>, ptr %i.dx, align 8, !tbaa !44 ; 2 uses
  %i.ea = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %.0176321) #9
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  %i.ec = load <2 x double>, ptr %i.eb, align 8, !tbaa !44
  %.sroa.13.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load <2 x double>, ptr %.sroa.13.0..sroa_idx255, align 8, !tbaa !44
  %i.ee = fadd <2 x double> %i.dz, %i.ec          ; 5 uses
  %i.ef = fadd <2 x double> %i.dz, %i.ed          ; 5 uses
  %i.eg = call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.dw, <2 x double> %i.ee) ; 2 uses
  %i.eh = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.dv, <2 x double> %i.ef) ; 2 uses
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 236
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !50
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp ult i64 %.0176321, %i.el
  %i.en = load ptr, ptr %4, align 8, !tbaa !46
  %i.eo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0176321) #9
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !100 ; 5 uses
  br i1 %i.em, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !14 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store <2 x double> %i.ee, ptr %i.et, align 8, !tbaa !44
  %.sroa.13.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store <2 x double> %i.ef, ptr %.sroa.13.0..sroa_idx257, align 8, !tbaa !44
  %i.eu = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.ev = icmp ugt i8 %i.eu, 1
  br i1 %i.ev, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.dp, label %.lr.ph.i210, label %indent.exit213

.lr.ph.i210:                                      ; preds = %bb.ab, %.lr.ph.i210
  %.02.i211 = phi i32 [ %i.ex, %.lr.ph.i210 ], [ %1, %bb.ab ] ; 2 uses
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i212 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ew) #10 ; 0 uses
  %i.ex = add nsw i32 %.02.i211, -1
  %i.ey = icmp samesign ugt i32 %.02.i211, 1
  br i1 %i.ey, label %.lr.ph.i210, label %indent.exit213, !llvm.loop !0

indent.exit213:                                   ; preds = %.lr.ph.i210, %bb.ab
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.fa = call ptr @agnameof(ptr noundef nonnull %i.eq) #9
  %i.fb = extractelement <2 x double> %i.ef, i64 0
  %i.fc = extractelement <2 x double> %i.ef, i64 1
  %i.fd = extractelement <2 x double> %i.ee, i64 0
  %i.fe = extractelement <2 x double> %i.ee, i64 1
  %i.ff = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.5, ptr noundef %i.fa, double noundef %i.fd, double noundef %i.fe, double noundef %i.fb, double noundef %i.fc) #11 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  %.not195 = icmp eq ptr %i.eq, null
  br i1 %.not195, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = fadd <2 x double> %i.ee, %i.ef
  %i.fk = fmul <2 x double> %i.fj, splat (double 5.000000e-01)
  store <2 x double> %i.fk, ptr %i.fi, align 8, !tbaa !44
  %i.fl = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.fm = icmp ugt i8 %i.fl, 1
  br i1 %i.fm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dp, label %.lr.ph.i216, label %indent.exit219

.lr.ph.i216:                                      ; preds = %bb.ae, %.lr.ph.i216
  %.02.i217 = phi i32 [ %i.fo, %.lr.ph.i216 ], [ %1, %bb.ae ] ; 2 uses
  %i.fn = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i218 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.fn) #10 ; 0 uses
  %i.fo = add nsw i32 %.02.i217, -1
  %i.fp = icmp samesign ugt i32 %.02.i217, 1
  br i1 %i.fp, label %.lr.ph.i216, label %indent.exit219, !llvm.loop !0

indent.exit219:                                   ; preds = %.lr.ph.i216, %bb.ae
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.fr = call ptr @agnameof(ptr noundef nonnull %i.eq) #9
  %i.fs = load ptr, ptr %i.fg, align 8, !tbaa !14 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !43
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !45
  %i.fx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fq, ptr noundef nonnull @.str.6, ptr noundef %i.fr, double noundef %i.fu, double noundef %i.fw) #11 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %indent.exit219, %bb.ad, %bb.aa, %indent.exit213
  %i.fy = add nuw i64 %.0176321, 1                ; 2 uses
  %.val204 = load i64, ptr %i.di, align 8, !tbaa !49
  %i.fz = icmp ult i64 %i.fy, %.val204
  br i1 %i.fz, label %bb.z, label %._crit_edge324, !llvm.loop !75

bb.ag:                                            ; preds = %._crit_edge324
  %i.ga = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %.sroa.049.0.copyload = load double, ptr %i.ga, align 8, !tbaa !44 ; 2 uses
  br i1 %i.w, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44
  %i.gb = insertelement <2 x double> poison, double %.sroa.049.0.copyload, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %.sroa.5.0.copyload, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gd = phi <2 x double> [ %i.gc, %bb.ah ], [ %i.dq, %bb.ag ] ; 4 uses
  %i.ge = phi <2 x double> [ zeroinitializer, %bb.ah ], [ %i.dr, %bb.ag ] ; 4 uses
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
  %i.gp = phi <2 x double> [ %i.dq, %._crit_edge324 ], [ %i.gn, %bb.aj ], [ %i.gd, %bb.ai ]
  %i.gq = phi <2 x double> [ %i.dr, %._crit_edge324 ], [ %i.go, %bb.aj ], [ %i.ge, %bb.ai ]
  %i.gr = icmp sgt i32 %1, 0                      ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = uitofp i32 %i.gt to double
  %i.gv = fmul nnan double %i.gu, 5.000000e-01
  %i.gw = select i1 %i.gr, double %i.gv, double 0.000000e+00 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !105
  %i.gz = fadd double %i.gy, %i.gw
  %i.ha = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1 ; 2 uses
  %i.hc = fsub <2 x double> %i.gq, %i.hb          ; 6 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ds, i64 104
  %i.he = load double, ptr %i.hd, align 8, !tbaa !105
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
  %.val202334 = load i64, ptr %i.db, align 8, !tbaa !49
  %.not350 = icmp eq i64 %.val202334, 0
  br i1 %.not350, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %bb.au
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %bb.av

._crit_edge338:                                   ; preds = %bb.ay, %bb.au
  call void @gv_list_clear_(ptr noundef nonnull %5, i64 noundef 4) #9
  call void @gv_list_free_(ptr noundef nonnull %5) #9
  %.val201339 = load i64, ptr %i.di, align 8, !tbaa !49
  %.not351 = icmp eq i64 %.val201339, 0
  br i1 %.not351, label %._crit_edge343, label %.lr.ph342

.lr.ph342:                                        ; preds = %._crit_edge338
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.az

bb.av:                                            ; preds = %.lr.ph337, %bb.ay
  %.0169335 = phi i64 [ 0, %.lr.ph337 ], [ %i.km, %bb.ay ] ; 2 uses
  %i.kg = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef %.0169335) #9
  %i.kh = load ptr, ptr %i.ke, align 8, !tbaa !106 ; 2 uses
  %magicptr = ptrtoint ptr %i.kh to i64
  switch i64 %magicptr, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite193 = call i64 @fwrite(ptr nonnull @.str.7, i64 66, i64 1, ptr %i.ki) #10 ; 0 uses
  call void @abort() #12
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.kj = load ptr, ptr %5, align 8, !tbaa !46
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kg
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !97
  call void %i.kh(i32 noundef %i.kl) #9
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %i.km = add nuw i64 %.0169335, 1                ; 2 uses
  %.val202 = load i64, ptr %i.db, align 8, !tbaa !49
  %i.kn = icmp ult i64 %i.km, %.val202
  br i1 %i.kn, label %bb.av, label %._crit_edge338, !llvm.loop !77

._crit_edge343:                                   ; preds = %bb.bc, %._crit_edge338
  call void @gv_list_clear_(ptr noundef nonnull %3, i64 noundef 32) #9
  call void @gv_list_free_(ptr noundef nonnull %3) #9
  %.val344 = load i64, ptr %i.hu, align 8, !tbaa !49
  %.not352 = icmp eq i64 %.val344, 0
  br i1 %.not352, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %._crit_edge343
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.bd

bb.az:                                            ; preds = %.lr.ph342, %bb.bc
  %.0168340 = phi i64 [ 0, %.lr.ph342 ], [ %i.ku, %bb.bc ] ; 2 uses
  %i.kp = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %3, i64 noundef %.0168340) #9
  %i.kq = load ptr, ptr %i.kf, align 8, !tbaa !108 ; 2 uses
  %magicptr199 = ptrtoint ptr %i.kq to i64
  switch i64 %magicptr199, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  %i.kr = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite = call i64 @fwrite(ptr nonnull @.str.7, i64 66, i64 1, ptr %i.kr) #10 ; 0 uses
  call void @abort() #12
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ks = load ptr, ptr %3, align 8, !tbaa !46
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %i.ks, i64 %i.kp
  call void %i.kq(ptr noundef byval(%struct.boxf) align 8 %i.kt) #9
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb
  %i.ku = add nuw i64 %.0168340, 1                ; 2 uses
  %.val201 = load i64, ptr %i.di, align 8, !tbaa !49
  %i.kv = icmp ult i64 %i.ku, %.val201
  br i1 %i.kv, label %bb.az, label %._crit_edge343, !llvm.loop !78

._crit_edge348:                                   ; preds = %bb.bg, %._crit_edge343
  call void @gv_list_clear_(ptr noundef nonnull %4, i64 noundef 8) #9
  call void @gv_list_free_(ptr noundef nonnull %4) #9
  call void @free(ptr noundef %i.do) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.bh

bb.bd:                                            ; preds = %.lr.ph347, %bb.bg
  %.0167345 = phi i64 [ 0, %.lr.ph347 ], [ %i.ld, %bb.bg ] ; 2 uses
  %i.kw = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.0167345) #9 ; 2 uses
  %i.kx = load ptr, ptr %i.ko, align 8, !tbaa !109 ; 2 uses
  %magicptr200 = ptrtoint ptr %i.kx to i64
  switch i64 %magicptr200, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  %i.ky = load ptr, ptr %4, align 8, !tbaa !46
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kw
  %.0.copyload = load ptr, ptr %i.kz, align 8
  call void @free(ptr noundef %.0.copyload) #9
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.la = load ptr, ptr %4, align 8, !tbaa !46
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.kw
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !100
  call void %i.kx(ptr noundef %i.lc) #9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.bf, %bb.be
  %i.ld = add nuw i64 %.0167345, 1                ; 2 uses
  %.val = load i64, ptr %i.hu, align 8, !tbaa !49
  %i.le = icmp ult i64 %i.ld, %.val
  br i1 %i.le, label %bb.bd, label %._crit_edge348, !llvm.loop !79

bb.bh:                                            ; preds = %._crit_edge348, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reposition(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load <2 x double>, ptr %i.c, align 8, !tbaa !44 ; 4 uses
  %i.e = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.f = icmp ugt i8 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.lr.ph.i, label %indent.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.02.i = phi i32 [ %i.i, %.lr.ph.i ], [ %1, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.h) #10 ; 0 uses
  %i.i = add nsw i32 %.02.i, -1
  %i.j = icmp samesign ugt i32 %.02.i, 1
  br i1 %i.j, label %.lr.ph.i, label %indent.exit, !llvm.loop !0

indent.exit:                                      ; preds = %.lr.ph.i, %bb.b
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.l = tail call ptr @agnameof(ptr noundef nonnull %0) #9
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.9, ptr noundef %i.l) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %indent.exit, %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit.thread71, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @agfstnode(ptr noundef nonnull %0) #9 ; 3 uses
  %.not4556 = icmp eq ptr %i.n, null
  br i1 %.not4556, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.o = icmp sgt i32 %1, 0
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.04357.us = phi ptr [ %i.ab, %bb.f ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04357.us, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55
  %.not47.us = icmp eq ptr %i.s, %0
  br i1 %.not47.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !44
  %i.v = fadd <2 x double> %i.d, %i.u
  store <2 x double> %i.v, ptr %i.t, align 8, !tbaa !44
  %i.w = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.x = icmp ugt i8 %i.w, 1
  br i1 %i.x, label %.lr.ph.i48.us, label %bb.f

.lr.ph.i48.us:                                    ; preds = %bb.e, %.lr.ph.i48.us
  %.02.i49.us = phi i32 [ %i.z, %.lr.ph.i48.us ], [ %1, %bb.e ] ; 2 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i50.us = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.y) #10 ; 0 uses
  %i.z = add nsw i32 %.02.i49.us, -1
  %i.aa = icmp samesign ugt i32 %.02.i49.us, 1
  br i1 %i.aa, label %.lr.ph.i48.us, label %indent.exit51.loopexit.us, !llvm.loop !0

bb.f:                                             ; preds = %indent.exit51.loopexit.us, %bb.e, %.lr.ph.split.us
  %i.ab = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.04357.us) #9 ; 2 uses
  %.not45.us = icmp eq ptr %i.ab, null
  br i1 %.not45.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !110

indent.exit51.loopexit.us:                        ; preds = %.lr.ph.i48.us
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.ad = tail call ptr @agnameof(ptr noundef nonnull %.04357.us) #9
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !14  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load double, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !45
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.6, ptr noundef %i.ad, double noundef %i.ag, double noundef %i.ai) #11 ; 0 uses
  br label %bb.f

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.04357 = phi ptr [ %i.bb, %bb.h ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.04357, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  %.not47 = icmp eq ptr %i.an, %0
  br i1 %.not47, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.ap = load <2 x double>, ptr %i.ao, align 8, !tbaa !44
  %i.aq = fadd <2 x double> %i.d, %i.ap
  store <2 x double> %i.aq, ptr %i.ao, align 8, !tbaa !44
  %i.ar = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.as = icmp ugt i8 %i.ar, 1
  br i1 %i.as, label %indent.exit51, label %bb.h

indent.exit51:                                    ; preds = %bb.g
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.au = tail call ptr @agnameof(ptr noundef nonnull %.04357) #9
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !14 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.az = load double, ptr %i.ay, align 8, !tbaa !45
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.6, ptr noundef %i.au, double noundef %i.ax, double noundef %i.az) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %indent.exit51, %.lr.ph.split
  %i.bb = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.04357) #9 ; 2 uses
  %.not45 = icmp eq ptr %i.bb, null
  br i1 %.not45, label %.loopexit, label %.lr.ph.split, !llvm.loop !110

.loopexit:                                        ; preds = %bb.h, %bb.f
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 236
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !50
  %.not4658 = icmp slt i32 %i.be, 1
  br i1 %.not4658, label %._crit_edge, label %.lr.ph60.split.preheader

.loopexit.thread71:                               ; preds = %bb.c
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 236
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50
  %.not465872 = icmp slt i32 %i.bh, 1
  br i1 %.not465872, label %._crit_edge, label %.lr.ph60.split.us

.loopexit.thread:                                 ; preds = %bb.d
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 236
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !50
  %.not465870 = icmp slt i32 %i.bk, 1
  br i1 %.not465870, label %._crit_edge, label %.lr.ph60.split.preheader

.lr.ph60.split.preheader:                         ; preds = %.loopexit, %.loopexit.thread
  %i.bl = phi ptr [ %i.bi, %.loopexit.thread ], [ %i.bc, %.loopexit ]
  %i.bm = icmp sgt i32 %1, 0
  %i.bn = add nsw i32 %1, 1
  br label %.lr.ph60.split

.lr.ph60.split.us:                                ; preds = %.loopexit.thread71, %.lr.ph60.split.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph60.split.us ], [ 1, %.loopexit.thread71 ] ; 3 uses
  %i.bo = phi ptr [ %i.bt, %.lr.ph60.split.us ], [ %i.bf, %.loopexit.thread71 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !47
  tail call fastcc void @reposition(ptr noundef %i.bs, i32 noundef 1)
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 236
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !50
  %i.bw = sext i32 %i.bv to i64
  %.not46.us.not = icmp slt i64 %indvars.iv64, %i.bw
  br i1 %.not46.us.not, label %.lr.ph60.split.us, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.j, %.lr.ph60.split.us, %.loopexit.thread71, %.loopexit.thread, %.loopexit
  ret void

.lr.ph60.split:                                   ; preds = %.lr.ph60.split.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph60.split.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.bx = phi ptr [ %i.bl, %.lr.ph60.split.preheader ], [ %i.cx, %bb.j ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 240
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !14 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load <2 x double>, ptr %i.ce, align 8, !tbaa !44
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cg = load <2 x double>, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !44
  %i.ch = fadd <2 x double> %i.d, %i.cf           ; 3 uses
  %i.ci = fadd <2 x double> %i.d, %i.cg           ; 3 uses
  %i.cj = load i8, ptr @Verbose, align 1, !tbaa !46
  %i.ck = icmp ugt i8 %i.cj, 1
  br i1 %i.ck, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph60.split
  br i1 %i.bm, label %.lr.ph.i52, label %indent.exit55

.lr.ph.i52:                                       ; preds = %bb.i, %.lr.ph.i52
  %.02.i53 = phi i32 [ %i.cm, %.lr.ph.i52 ], [ %1, %bb.i ] ; 2 uses
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !52
  %fwrite.i54 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.cl) #10 ; 0 uses
  %i.cm = add nsw i32 %.02.i53, -1
  %i.cn = icmp samesign ugt i32 %.02.i53, 1
  br i1 %i.cn, label %.lr.ph.i52, label %indent.exit55, !llvm.loop !0

indent.exit55:                                    ; preds = %.lr.ph.i52, %bb.i
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.cp = tail call ptr @agnameof(ptr noundef nonnull %i.cb) #9
  %i.cq = extractelement <2 x double> %i.ch, i64 0
  %i.cr = extractelement <2 x double> %i.ch, i64 1
  %i.cs = extractelement <2 x double> %i.ci, i64 0
  %i.ct = extractelement <2 x double> %i.ci, i64 1
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.5, ptr noundef %i.cp, double noundef %i.cq, double noundef %i.cr, double noundef %i.cs, double noundef %i.ct) #11 ; 0 uses
  %.pre = load ptr, ptr %i.cc, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %indent.exit55, %.lr.ph60.split
  %i.cv = phi ptr [ %.pre, %indent.exit55 ], [ %i.cd, %.lr.ph60.split ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store <2 x double> %i.ch, ptr %i.cw, align 8, !tbaa !44
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store <2 x double> %i.ci, ptr %.sroa.10.0..sroa_idx6, align 8, !tbaa !44
  tail call fastcc void @reposition(ptr noundef nonnull %i.cb, i32 noundef %i.bn)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 236
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !50
  %i.da = sext i32 %i.cz to i64
  %.not46.not = icmp slt i64 %indvars.iv, %i.da
  br i1 %.not46.not, label %.lr.ph60.split, label %._crit_edge, !llvm.loop !111
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @spline_edges0(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @spline_edges1(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dotneato_postprocess(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @osage_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @agfstnode(ptr noundef %0) #9 ; 2 uses
  %.not16 = icmp eq ptr %i.a, null
  br i1 %.not16, label %._crit_edge20, label %.lr.ph19

._crit_edge20:                                    ; preds = %._crit_edge, %bb.a
  tail call fastcc void @cleanup_graphs(ptr noundef %0)
  ret void

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %.01217 = phi ptr [ %i.c, %._crit_edge ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = tail call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.01217) #9 ; 2 uses
  %.not1314 = icmp eq ptr %i.b, null
  br i1 %.not1314, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph19
  tail call void @gv_cleanup_node(ptr noundef nonnull %.01217) #9
  %i.c = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.01217) #9 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge20, label %.lr.ph19, !llvm.loop !112

.lr.ph:                                           ; preds = %.lr.ph19, %.lr.ph
  %.015 = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %.lr.ph19 ] ; 2 uses
  tail call void @gv_cleanup_edge(ptr noundef nonnull %.015) #9
  %i.d = tail call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.015) #9 ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !113
}

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gv_cleanup_edge(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gv_cleanup_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cleanup_graphs(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.d = load i32, ptr %i.c, align 4, !tbaa !50
  %.not7 = icmp slt i32 %i.d, 1
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.p, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.lcssa, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.f) #9
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.p, %.lr.ph ], [ %i.b, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  tail call void @free_label(ptr noundef %i.o) #9
  tail call fastcc void @cleanup_graphs(ptr noundef %i.k)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 236
  %i.r = load i32, ptr %i.q, align 4, !tbaa !50
  %i.s = sext i32 %i.r to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.s
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !114
}

declare void @setEdgeType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @neato_init_node(ptr noundef) local_unnamed_addr #2

declare ptr @agbindrec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @common_init_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @is_a_cluster(ptr noundef) local_unnamed_addr #2

declare void @do_graph_label(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #2

declare hidden void @gv_list_shrink_to_fit_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_detach_(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @agnameof(ptr noundef) local_unnamed_addr #2

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #2

declare i32 @getPackInfo(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @late_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @putRects(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @free_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !36}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"Agtag_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !9, i64 8}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS7Agrec_s", !11, i64 0}
!13 = !{!"Agobj_s", !10, i64 0, !12, i64 16}
!14 = !{!13, !12, i64 16}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"Agrec_s", !15, i64 0, !12, i64 8}
!17 = !{!"p1 _ZTS8layout_t", !11, i64 0}
!18 = !{!"p1 _ZTS11textlabel_t", !11, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!"pointf_s", !19, i64 0, !19, i64 8}
!21 = !{!"", !20, i64 0, !20, i64 16}
!22 = !{!"_Bool", !5, i64 0}
!23 = !{!"short", !5, i64 0}
!24 = !{!"p1 _ZTS5GVC_s", !11, i64 0}
!25 = !{!"any p2 pointer", !11, i64 0}
!26 = !{!"p2 _ZTS8Agnode_s", !25, i64 0}
!27 = !{!"p2 double", !25, i64 0}
!28 = !{!"any p3 pointer", !25, i64 0}
!29 = !{!"p3 double", !28, i64 0}
!30 = !{!"p2 _ZTS8Agraph_s", !25, i64 0}
!31 = !{!"p1 _ZTS8Agraph_s", !11, i64 0}
!32 = !{!"p1 _ZTS8Agnode_s", !11, i64 0}
!33 = !{!"p1 _ZTS6rank_t", !11, i64 0}
!34 = !{!"nlist_t", !26, i64 0, !9, i64 8}
!35 = !{!"Agraphinfo_t", !16, i64 0, !17, i64 16, !18, i64 24, !21, i64 32, !5, i64 64, !5, i64 128, !5, i64 129, !22, i64 130, !5, i64 131, !6, i64 132, !19, i64 136, !19, i64 144, !23, i64 152, !11, i64 160, !24, i64 168, !11, i64 176, !26, i64 184, !6, i64 192, !27, i64 200, !27, i64 208, !27, i64 216, !29, i64 224, !23, i64 232, !23, i64 234, !6, i64 236, !30, i64 240, !31, i64 248, !32, i64 256, !33, i64 264, !31, i64 272, !6, i64 280, !32, i64 288, !32, i64 296, !34, i64 304, !32, i64 320, !32, i64 328, !6, i64 336, !6, i64 340, !22, i64 344, !5, i64 345, !6, i64 348, !6, i64 352, !6, i64 356, !32, i64 360, !32, i64 368, !32, i64 376, !26, i64 384, !22, i64 392, !5, i64 393, !5, i64 394, !5, i64 395, !22, i64 396}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"p1 _ZTS10shape_desc", !11, i64 0}
!38 = !{!"p1 double", !11, i64 0}
!39 = !{!"p2 _ZTS8Agedge_s", !25, i64 0}
!40 = !{!"elist", !39, i64 0, !9, i64 8}
!41 = !{!"p1 _ZTS8Agedge_s", !11, i64 0}
!42 = !{!"Agnodeinfo_t", !16, i64 0, !37, i64 16, !11, i64 24, !20, i64 32, !19, i64 48, !19, i64 56, !21, i64 64, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !18, i64 136, !18, i64 144, !11, i64 152, !5, i64 160, !5, i64 161, !22, i64 162, !5, i64 163, !6, i64 164, !6, i64 168, !6, i64 172, !38, i64 176, !19, i64 184, !5, i64 192, !22, i64 193, !32, i64 200, !32, i64 208, !5, i64 216, !9, i64 224, !5, i64 232, !5, i64 233, !5, i64 234, !32, i64 240, !32, i64 248, !40, i64 256, !40, i64 272, !40, i64 288, !40, i64 304, !40, i64 320, !31, i64 336, !6, i64 344, !32, i64 352, !6, i64 360, !6, i64 364, !19, i64 368, !40, i64 376, !40, i64 392, !40, i64 408, !40, i64 424, !41, i64 440, !6, i64 448, !6, i64 452, !6, i64 456, !5, i64 464}
!43 = !{!42, !19, i64 32}
!44 = !{!19, !19, i64 0}
!45 = !{!42, !19, i64 40}
!46 = !{!5, !5, i64 0}
!47 = !{!31, !31, i64 0}
!48 = !{!"", !11, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!49 = !{!48, !9, i64 16}
!50 = !{!35, !6, i64 236}
!51 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!35, !30, i64 240}
!54 = !{!35, !18, i64 24}
!55 = !{!42, !11, i64 152}
!56 = distinct !{!56, !36}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = distinct !{!59, !36}
!60 = !{!35, !23, i64 232}
!61 = !{!23, !23, i64 0}
!62 = !{!35, !17, i64 16}
!63 = !{!"layout_t", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !20, i64 32, !20, i64 48, !20, i64 64, !22, i64 80, !22, i64 81, !22, i64 82, !6, i64 84, !11, i64 88, !15, i64 96}
!64 = !{!63, !6, i64 84}
!65 = !{!42, !38, i64 176}
!66 = !{!35, !23, i64 152}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = !{!"", !5, i64 0, !11, i64 32, !31, i64 40}
!70 = !{!69, !31, i64 40}
!71 = !{!69, !11, i64 32}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = !{!"Agdesc_s", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0}
!81 = !{!"p1 _ZTS9dtlink_s_", !11, i64 0}
!82 = !{!"dtlink_s_", !81, i64 0, !5, i64 8}
!83 = !{!"p1 _ZTS5dt_s_", !11, i64 0}
!84 = !{!"p1 _ZTS17graphviz_node_set", !11, i64 0}
!85 = !{!"p1 _ZTS8Agclos_s", !11, i64 0}
!86 = !{!"Agraph_s", !13, i64 0, !80, i64 24, !82, i64 32, !82, i64 48, !83, i64 64, !84, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !31, i64 112, !31, i64 120, !85, i64 128}
!87 = !{!86, !31, i64 120}
!88 = !{!"float", !5, i64 0}
!89 = !{!"p1 _Bool", !11, i64 0}
!90 = !{!"p1 int", !11, i64 0}
!91 = !{!"", !88, i64 0, !6, i64 4, !6, i64 8, !22, i64 12, !6, i64 16, !89, i64 24, !90, i64 32, !6, i64 40}
!92 = !{!91, !6, i64 16}
!93 = !{!91, !6, i64 40}
!94 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44}
!95 = !{!"", !5, i64 0, !11, i64 32, !6, i64 40}
!96 = !{!95, !6, i64 40}
!97 = !{!6, !6, i64 0}
!98 = !{!"", !5, i64 0, !11, i64 32, !11, i64 40}
!99 = !{!98, !11, i64 40}
!100 = !{!11, !11, i64 0}
!101 = !{!42, !19, i64 104}
!102 = !{!42, !19, i64 112}
!103 = !{!42, !19, i64 96}
!104 = !{!91, !90, i64 32}
!105 = !{!20, !19, i64 8}
!106 = !{!95, !11, i64 32}
!107 = !{!"", !5, i64 0, !11, i64 32, !21, i64 40}
!108 = !{!107, !11, i64 32}
!109 = !{!98, !11, i64 32}
!110 = distinct !{!110, !36}
!111 = distinct !{!111, !36}
!112 = distinct !{!112, !36}
!113 = distinct !{!113, !36}
!114 = distinct !{!114, !36}
end_hunk_0
