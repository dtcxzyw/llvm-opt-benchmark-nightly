inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@VSIM_RedisCommand:bb.a
  %i.w = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.x = tail call i32 %i.w(ptr noundef %i.v) #22
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @RedisModule_ReplyWithEmptyArray, align 8, !tbaa !13
  %i.aa = tail call i32 %i.z(ptr noundef %0) #22
  br label %bb.bj

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.ac = tail call ptr %i.ab(ptr noundef %i.v) #22
  %i.ad = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.af = tail call i32 %i.ae(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.bj

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.ah = tail call ptr %i.ag(ptr noundef %i.v) #22 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 0, ptr %i.e, align 8, !tbaa !92
  %i.ai = tail call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.58) #25
  %.not220 = icmp eq i32 %i.ai, 0
  br i1 %.not220, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115
  %i.al = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.ao = tail call ptr %i.al(ptr noundef %i.an, ptr noundef %i.ak, ptr noundef null) #22 ; 2 uses
  %.not221.not = icmp eq ptr %i.ao, null
  br i1 %.not221.not, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.ap = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.aq = tail call i32 %i.ap(ptr noundef %0, ptr noundef nonnull @.str.59) #22
  br label %.thread262

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !128
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = tail call ptr %i.ar(i64 noundef %i.aw) #22 ; 2 uses
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !99
  tail call void @hnsw_get_node_vector(ptr noundef %i.ay, ptr noundef nonnull %i.ao, ptr noundef %i.ax) #22
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !128
  %i.bc = zext i32 %i.bb to i64
  store i64 %i.bc, ptr %i.e, align 8, !tbaa !92
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.bd = call ptr @parseVector(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f) ; 6 uses
  %.not222 = icmp eq ptr %i.bd, null
  br i1 %.not222, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.bf = call i32 %i.be(ptr noundef %0, ptr noundef nonnull @.str.39) #22
  br label %.thread248

bb.l:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101 ; 2 uses
  %.not223 = icmp eq ptr %i.bh, null
  br i1 %.not223, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !92  ; 3 uses
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !128 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.not224 = icmp eq i64 %i.bi, %i.bm
  br i1 %.not224, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !102 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.not225 = icmp eq i64 %i.bi, %i.bp
  br i1 %.not225, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.bq(ptr noundef nonnull %i.bd) #22
  %i.br = load ptr, ptr @RedisModule_ReplyWithErrorFormat, align 8, !tbaa !13
  %i.bs = trunc i64 %i.bi to i32
  %i.bt = load i32, ptr %i.bn, align 8, !tbaa !102
  %i.bu = call i32 (ptr, ptr, ...) %i.br(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %i.bs, i32 noundef %i.bt) #22
  br label %.thread248

bb.p:                                             ; preds = %bb.n
  %i.bv = call ptr @applyProjection(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bh, i32 noundef %i.bo, i32 noundef %i.bl)
  %i.bw = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.bw(ptr noundef nonnull %i.bd) #22
  %i.bx = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !128
  %i.ca = zext i32 %i.bz to i64
  store i64 %i.ca, ptr %i.e, align 8, !tbaa !92
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.l
  %.1201 = phi ptr [ %i.bv, %bb.p ], [ %i.bd, %bb.m ], [ %i.bd, %bb.l ] ; 4 uses
  %i.cb = call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.35) #25
  %.not226 = icmp eq i32 %i.cb, 0
  br i1 %.not226, label %.thread253, label %bb.r

.thread253:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cc = call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.36) #25
  %.not227 = icmp eq i32 %i.cc, 0
  br i1 %.not227, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.cd = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !115
  %i.cg = call i32 %i.cd(ptr noundef %i.cf, ptr noundef nonnull %i.g) #22
  %.not228 = icmp eq i32 %i.cg, 0
  br i1 %.not228, label %.thread258, label %bb.u

.thread258:                                       ; preds = %bb.s
  %i.ch = load i64, ptr %i.g, align 8, !tbaa !116
  %i.ci = trunc i64 %i.ch to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.cj = add i32 %i.ci, 4
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.ck(ptr noundef %.1201) #22
  %i.cl = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.cm = call i32 %i.cl(ptr noundef %0, ptr noundef nonnull @.str.61) #22
  br label %.thread248

.thread248:                                       ; preds = %bb.o, %bb.t, %bb.k
  %.3.ph = phi i32 [ %i.bf, %bb.k ], [ %i.cm, %bb.t ], [ %i.bu, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %.thread262

bb.u:                                             ; preds = %bb.s
  %i.cn = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.cn(ptr noundef %.1201) #22
  %i.co = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.cp = call i32 %i.co(ptr noundef %0, ptr noundef nonnull @.str.60) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %.thread262

bb.v:                                             ; preds = %.thread258, %.thread253, %bb.i
  %.4208 = phi i32 [ %i.cj, %.thread258 ], [ 4, %bb.i ], [ 4, %.thread253 ] ; 2 uses
  %.3203 = phi ptr [ %.1201, %.thread258 ], [ %i.ax, %bb.i ], [ %.1201, %.thread253 ] ; 10 uses
  %i.cq = load i64, ptr %i.e, align 8, !tbaa !92
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !128
  %i.cu = zext i32 %i.ct to i64
  %.not229 = icmp eq i64 %i.cq, %i.cu
  br i1 %.not229, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.v
  %i.cv = icmp slt i32 %.4208, %2
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

bb.w:                                             ; preds = %bb.v
  %i.cw = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.cw(ptr noundef %.3203) #22
  %i.cx = load ptr, ptr @RedisModule_ReplyWithErrorFormat, align 8, !tbaa !13
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !92
  %i.cz = trunc i64 %i.cy to i32
  %i.da = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !128
  %i.dd = call i32 (ptr, ptr, ...) %i.cx(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %i.cz, i32 noundef %i.dc) #22
  br label %.thread262

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %.0175310 = phi i32 [ %.0175.be, %.backedge ], [ 0, %.preheader ] ; 8 uses
  %.0179309 = phi i32 [ %.0179.be, %.backedge ], [ 0, %.preheader ] ; 8 uses
  %.0182308 = phi i64 [ %.0182.be, %.backedge ], [ 0, %.preheader ] ; 8 uses
  %.0185307 = phi i1 [ %.0185.be, %.backedge ], [ false, %.preheader ] ; 8 uses
  %.0188306 = phi i32 [ %.0188.be, %.backedge ], [ %.4208, %.preheader ] ; 15 uses
  %.0192305 = phi ptr [ %.0192.be, %.backedge ], [ null, %.preheader ] ; 8 uses
  %i.de = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.df = sext i32 %.0188306 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !115
  %i.di = call ptr %i.de(ptr noundef %i.dh, ptr noundef null) #22 ; 9 uses
  %i.dj = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.62) #25
  %.not233 = icmp eq i32 %i.dj, 0
  br i1 %.not233, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.dk = add nsw i32 %.0188306, 1
  br label %.backedge

bb.y:                                             ; preds = %.lr.ph
  %i.dl = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.63) #25
  %.not234 = icmp eq i32 %i.dl, 0
  br i1 %.not234, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dm = add nsw i32 %.0188306, 1
  br label %.backedge

bb.aa:                                            ; preds = %bb.y
  %i.dn = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.64) #25
  %.not235 = icmp eq i32 %i.dn, 0
  br i1 %.not235, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.do = add nsw i32 %.0188306, 1
  br label %.backedge

bb.ac:                                            ; preds = %bb.aa
  %i.dp = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.65) #25
  %.not236 = icmp eq i32 %i.dp, 0
  br i1 %.not236, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add nsw i32 %.0188306, 1
  br label %.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.dr = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.66) #25
  %.not237 = icmp eq i32 %i.dr, 0
  br i1 %.not237, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ds = add nsw i32 %.0188306, 1                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %2
  br i1 %i.dt, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.du = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.dv = sext i32 %i.ds to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !115
  %i.dy = call i32 %i.du(ptr noundef %i.dx, ptr noundef nonnull %i.a) #22
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = load i64, ptr %i.a, align 8
  %i.eb = icmp slt i64 %i.ea, 1
  %or.cond = select i1 %i.dz, i1 true, i1 %i.eb
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.ec(ptr noundef %.3203) #22
  %i.ed = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.ee = call i32 %i.ed(ptr noundef %0, ptr noundef nonnull @.str.67) #22
  br label %.thread262

bb.ai:                                            ; preds = %bb.ag
  %i.ef = add nsw i32 %.0188306, 2
  br label %.backedge

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.eg = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.68) #25
  %.not238 = icmp eq i32 %i.eg, 0
  br i1 %.not238, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.eh = add nsw i32 %.0188306, 1                ; 2 uses
  %i.ei = icmp slt i32 %i.eh, %2
  br i1 %i.ei, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr @RedisModule_StringToDouble, align 8, !tbaa !13
  %i.ek = sext i32 %i.eh to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !115
  %i.en = call i32 %i.ej(ptr noundef %i.em, ptr noundef nonnull %i.c) #22
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = load double, ptr %i.c, align 8
  %i.eq = fcmp ole double %i.ep, 0.000000e+00
  %or.cond7 = select i1 %i.eo, i1 true, i1 %i.eq
  br i1 %or.cond7, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.er = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.er(ptr noundef %.3203) #22
  %i.es = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.et = call i32 %i.es(ptr noundef %0, ptr noundef nonnull @.str.69) #22
  br label %.thread262

bb.an:                                            ; preds = %bb.al
  %i.eu = add nsw i32 %.0188306, 2
  br label %.backedge

bb.ao:                                            ; preds = %bb.ak, %bb.aj
  %i.ev = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.41) #25
  %.not239 = icmp eq i32 %i.ev, 0
  br i1 %.not239, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ew = add nsw i32 %.0188306, 1                ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %2
  br i1 %i.ex, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ey = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !115
  %i.fc = call i32 %i.ey(ptr noundef %i.fb, ptr noundef nonnull %i.b) #22
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = load i64, ptr %i.b, align 8
  %i.ff = add i64 %i.fe, -1000001
  %i.fg = icmp ult i64 %i.ff, -1000000
  %or.cond11 = select i1 %i.fd, i1 true, i1 %i.fg
  br i1 %or.cond11, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %i.fh = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.fh(ptr noundef %.3203) #22
  %i.fi = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.fj = call i32 %i.fi(ptr noundef %0, ptr noundef nonnull @.str.42) #22
  br label %.thread262

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.fk = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.70) #25
  %.not240 = icmp eq i32 %i.fk, 0
  br i1 %.not240, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0188306, 1                ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %2
  br i1 %i.fm, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fn = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.fo = sext i32 %i.fl to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !115
  %i.fr = call i32 %i.fn(ptr noundef %i.fq, ptr noundef nonnull %i.d) #22
  %i.fs = icmp ne i32 %i.fr, 0
  %i.ft = load i64, ptr %i.d, align 8
  %i.fu = icmp slt i64 %i.ft, 1
  %or.cond13 = select i1 %i.fs, i1 true, i1 %i.fu
  br i1 %or.cond13, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fv = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.fv(ptr noundef %.3203) #22
  %i.fw = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.fx = call i32 %i.fw(ptr noundef %0, ptr noundef nonnull @.str.71) #22
  br label %.thread262

bb.aw:                                            ; preds = %bb.au
  %i.fy = add nsw i32 %.0188306, 2
  br label %.backedge

bb.ax:                                            ; preds = %bb.at, %bb.as
  %i.fz = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.72) #25
  %.not241 = icmp eq i32 %i.fz, 0
  br i1 %.not241, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.ga = add nsw i32 %.0188306, 1                ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %2
  br i1 %i.gb, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.gf = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.gg = call ptr %i.gf(ptr noundef %i.ge, ptr noundef nonnull %i.h) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gh = call ptr @exprCompile(ptr noundef %i.gg, ptr noundef nonnull %i.i) ; 2 uses
  %.not243 = icmp eq ptr %i.gh, null
  br i1 %.not243, label %.thread271, label %bb.ba

.thread271:                                       ; preds = %bb.az
  %i.gi = load i32, ptr %i.i, align 4, !tbaa !9   ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = load i64, ptr %i.h, align 8, !tbaa !92
  %.not242 = icmp ugt i64 %i.gk, %i.gj
  %spec.store.select = select i1 %.not242, i32 %i.gi, i32 0
  store i32 %spec.store.select, ptr %i.i, align 4
  %i.gl = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.gl(ptr noundef %.3203) #22
  %i.gm = load ptr, ptr @RedisModule_ReplyWithErrorFormat, align 8, !tbaa !13
  %i.gn = load i32, ptr %i.i, align 4, !tbaa !9
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %i.gg, i64 %i.go
  %i.gq = call i32 (ptr, ptr, ...) %i.gm(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef %i.gp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %.thread262

bb.ba:                                            ; preds = %bb.az
  %i.gr = add nsw i32 %.0188306, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %.backedge

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.gs = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.gs(ptr noundef %.3203) #22
  %i.gt = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.gu = call i32 %i.gt(ptr noundef %0, ptr noundef nonnull @.str.74) #22
  br label %.thread262

bb.bc:                                            ; preds = %bb.aq
  %i.gv = add nsw i32 %.0188306, 2
  br label %.backedge

.backedge:                                        ; preds = %bb.bc, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.ai, %bb.an, %bb.aw, %bb.ba
  %.0192.be = phi ptr [ %i.gh, %bb.ba ], [ %.0192305, %bb.bc ], [ %.0192305, %bb.aw ], [ %.0192305, %bb.an ], [ %.0192305, %bb.ad ], [ %.0192305, %bb.z ], [ %.0192305, %bb.x ], [ %.0192305, %bb.ab ], [ %.0192305, %bb.ai ] ; 2 uses
  %.0188.be = phi i32 [ %i.gr, %bb.ba ], [ %i.gv, %bb.bc ], [ %i.fy, %bb.aw ], [ %i.eu, %bb.an ], [ %i.dq, %bb.ad ], [ %i.dm, %bb.z ], [ %i.dk, %bb.x ], [ %i.do, %bb.ab ], [ %i.ef, %bb.ai ] ; 2 uses
  %.0185.be = phi i1 [ %.0185307, %bb.ba ], [ %.0185307, %bb.bc ], [ %.0185307, %bb.aw ], [ %.0185307, %bb.an ], [ true, %bb.ad ], [ %.0185307, %bb.z ], [ %.0185307, %bb.x ], [ %.0185307, %bb.ab ], [ %.0185307, %bb.ai ] ; 2 uses
  %.0182.be = phi i64 [ %.0182308, %bb.ba ], [ %.0182308, %bb.bc ], [ %.0182308, %bb.aw ], [ %.0182308, %bb.an ], [ %.0182308, %bb.ad ], [ %.0182308, %bb.z ], [ %.0182308, %bb.x ], [ 1, %bb.ab ], [ %.0182308, %bb.ai ] ; 2 uses
  %.0179.be = phi i32 [ %.0179309, %bb.ba ], [ %.0179309, %bb.bc ], [ %.0179309, %bb.aw ], [ %.0179309, %bb.an ], [ %.0179309, %bb.ad ], [ 1, %bb.z ], [ %.0179309, %bb.x ], [ %.0179309, %bb.ab ], [ %.0179309, %bb.ai ] ; 2 uses
  %.0175.be = phi i32 [ %.0175310, %bb.ba ], [ %.0175310, %bb.bc ], [ %.0175310, %bb.aw ], [ %.0175310, %bb.an ], [ %.0175310, %bb.ad ], [ %.0175310, %bb.z ], [ 1, %bb.x ], [ %.0175310, %bb.ab ], [ %.0175310, %bb.ai ] ; 2 uses
  %i.gw = icmp slt i32 %.0188.be, %2
  br i1 %i.gw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !132

._crit_edge.loopexit:                             ; preds = %.backedge
  %i.gx = zext nneg i32 %.0175.be to i64
  %i.gy = zext nneg i32 %.0179.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0192.lcssa = phi ptr [ null, %.preheader ], [ %.0192.be, %._crit_edge.loopexit ] ; 3 uses
  %.0185.lcssa = phi i1 [ false, %.preheader ], [ %.0185.be, %._crit_edge.loopexit ]
  %.0182.lcssa = phi i64 [ 0, %.preheader ], [ %.0182.be, %._crit_edge.loopexit ] ; 3 uses
  %.0179.lcssa = phi i64 [ 0, %.preheader ], [ %i.gy, %._crit_edge.loopexit ] ; 3 uses
  %.0175.lcssa = phi i64 [ 0, %.preheader ], [ %i.gx, %._crit_edge.loopexit ] ; 3 uses
  %i.gz = load i64, ptr %i.d, align 8, !tbaa !116 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge
  %i.hb = load i64, ptr %i.a, align 8, !tbaa !116
  %i.hc = mul nsw i64 %i.hb, 100                  ; 2 uses
  store i64 %i.hc, ptr %i.d, align 8, !tbaa !116
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge
  %i.hd = phi i64 [ %i.hc, %bb.bd ], [ %i.gz, %._crit_edge ]
  %i.he = load i32, ptr @VSGlobalConfig, align 4
  %i.hf = icmp ne i32 %i.he, 0
  %or.cond15 = select i1 %.0185.lcssa, i1 true, i1 %i.hf
  br i1 %or.cond15, label %.critedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hg = load ptr, ptr @RedisModule_GetContextFlags, align 8, !tbaa !13
  %i.hh = call i32 %i.hg(ptr noundef %0) #22
  %i.hi = and i32 %i.hh, 3
  %.not230 = icmp eq i32 %i.hi, 0
  br i1 %.not230, label %bb.bg, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.bf
  %.pre = load i64, ptr %i.d, align 8, !tbaa !116
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.be
  %i.hj = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.hd, %bb.be ]
  %i.hk = load i64, ptr %i.a, align 8, !tbaa !116
  %i.hl = load double, ptr %i.c, align 8, !tbaa !118
  %i.hm = fptrunc double %i.hl to float
  %i.hn = load i64, ptr %i.b, align 8, !tbaa !116
  %i.ho = trunc nuw nsw i64 %.0182.lcssa to i32
  call void @VSIM_execute(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef %.3203, i64 noundef %i.hk, float noundef %i.hm, i64 noundef %.0175.lcssa, i64 noundef %.0179.lcssa, i64 noundef %i.hn, ptr noundef %.0192.lcssa, i64 noundef %i.hj, i32 noundef %i.ho)
  br label %.thread262

bb.bg:                                            ; preds = %bb.bf
  %i.hp = load ptr, ptr @RedisModule_BlockClient, align 8, !tbaa !13
  %i.hq = call ptr %i.hp(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 0) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.hr = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.hs = call ptr %i.hr(i64 noundef 88) #22      ; 13 uses
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !13
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.ah, ptr %i.ht, align 8, !tbaa !13
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store ptr %.3203, ptr %i.hu, align 8, !tbaa !13
  %i.hv = load i64, ptr %i.a, align 8, !tbaa !116
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !13
  %i.hy = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.hz = call ptr %i.hy(i64 noundef 4) #22       ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 32 ; 2 uses
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !13
  %i.ib = load double, ptr %i.c, align 8, !tbaa !118
  %i.ic = fptrunc double %i.ib to float
  store float %i.ic, ptr %i.hz, align 4, !tbaa !85
  %i.id = inttoptr i64 %.0175.lcssa to ptr
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !13
  %i.if = inttoptr i64 %.0179.lcssa to ptr
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !13
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !116
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  store ptr %.0192.lcssa, ptr %i.ik, align 8, !tbaa !13
  %i.il = load i64, ptr %i.d, align 8, !tbaa !116
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  store ptr %i.im, ptr %i.in, align 8, !tbaa !13
  %i.io = inttoptr i64 %.0182.lcssa to ptr
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !13
  %i.iq = load ptr, ptr @RedisModule_BlockedClientMeasureTimeStart, align 8, !tbaa !13
  %i.ir = call i32 %i.iq(ptr noundef %i.hq) #22   ; 0 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ah, i64 104 ; 2 uses
  %i.it = atomicrmw add ptr %i.is, i32 1 seq_cst, align 8 ; 0 uses
  %i.iu = call i32 @pthread_create(ptr noundef nonnull %i.j, ptr noundef null, ptr noundef nonnull @VSIM_thread, ptr noundef nonnull %i.hs) #22
  %.not232 = icmp eq i32 %i.iu, 0
  br i1 %.not232, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iv = atomicrmw sub ptr %i.is, i32 1 seq_cst, align 8 ; 0 uses
  %i.iw = load ptr, ptr @RedisModule_AbortBlock, align 8, !tbaa !13
  %i.ix = call i32 %i.iw(ptr noundef %i.hq) #22   ; 0 uses
  %i.iy = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  %i.iz = load ptr, ptr %i.ia, align 8, !tbaa !13
  call void %i.iy(ptr noundef %i.iz) #22
  %i.ja = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.ja(ptr noundef nonnull %i.hs) #22
  %i.jb = load i64, ptr %i.a, align 8, !tbaa !116
  %i.jc = load double, ptr %i.c, align 8, !tbaa !118
  %i.jd = fptrunc double %i.jc to float
  %i.je = load i64, ptr %i.b, align 8, !tbaa !116
  %i.jf = load i64, ptr %i.d, align 8, !tbaa !116
  %i.jg = trunc nuw nsw i64 %.0182.lcssa to i32
  call void @VSIM_execute(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef %.3203, i64 noundef %i.jb, float noundef %i.jd, i64 noundef %.0175.lcssa, i64 noundef %.0179.lcssa, i64 noundef %i.je, ptr noundef %.0192.lcssa, i64 noundef %i.jf, i32 noundef %i.jg)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  br label %.thread262

.thread262:                                       ; preds = %bb.am, %bb.ar, %bb.av, %bb.ah, %bb.bb, %.thread271, %bb.u, %.thread248, %.thread, %.critedge, %bb.bi, %bb.w
  %.10 = phi i32 [ %i.dd, %bb.w ], [ %i.aq, %.thread ], [ %i.cp, %bb.u ], [ %i.gq, %.thread271 ], [ 0, %.critedge ], [ 0, %bb.bi ], [ %.3.ph, %.thread248 ], [ %i.et, %bb.am ], [ %i.fj, %bb.ar ], [ %i.fx, %bb.av ], [ %i.ee, %bb.ah ], [ %i.gu, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.bj

bb.bj:                                            ; preds = %.thread262, %bb.f, %bb.d
  %.11 = phi i32 [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %.10, %.thread262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.b
  %.12 = phi i32 [ %i.n, %bb.b ], [ %.11, %bb.bj ]
  ret i32 %.12
}

declare void @hnsw_get_node_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @VDIM_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.c = tail call i32 %i.b(ptr noundef %0) #22
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = tail call ptr %i.d(ptr noundef %0, ptr noundef %i.f, i32 noundef 1) #22 ; 3 uses
  %i.h = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.i = tail call i32 %i.h(ptr noundef %i.g) #22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.l = tail call i32 %i.k(ptr noundef %0, ptr noundef nonnull @.str.75) #22
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.n = tail call ptr %i.m(ptr noundef %i.g) #22
  %i.o = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not13 = icmp eq ptr %i.n, %i.o
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.q = tail call i32 %i.p(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.s = tail call ptr %i.r(ptr noundef %i.g) #22
  %i.t = load ptr, ptr @RedisModule_ReplyWithLongLong, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !128
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i32 %i.t(ptr noundef %0, i64 noundef %i.x) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.l, %bb.d ], [ %i.q, %bb.f ], [ %i.y, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @VCARD_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.c = tail call i32 %i.b(ptr noundef %0) #22
  br label %bb.h
end_hunk_0
