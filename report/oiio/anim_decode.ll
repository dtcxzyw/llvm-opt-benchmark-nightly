inline.NumInlined: 25
inline.NumDeleted: 16
begin_hunk_0_@WebPAnimDecoderGetNext:bb.a
bb.a:
  %3 = alloca %struct.WebPIterator, align 8       ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.t, label %WebPAnimDecoderHasMoreFrames.exit

WebPAnimDecoderHasMoreFrames.exit:                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33
  %.not139 = icmp sgt i32 %i.e, %i.g
  br i1 %.not139, label %bb.t, label %bb.b

bb.b:                                             ; preds = %WebPAnimDecoderHasMoreFrames.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29   ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.k = load i32, ptr %i.j, align 4, !tbaa !30   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !28
  %i.o = call i32 @WebPDemuxGetFrame(ptr noundef %i.n, i32 noundef %i.e, ptr noundef nonnull %3) #9
  %.not108 = icmp eq i32 %i.o, 0
  br i1 %.not108, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %i.t = add nsw i32 %i.s, %i.q                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41
  %i.x = load i32, ptr %3, align 8, !tbaa !42
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %IsKeyFrame.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  %or.cond134 = select i1 %.not.i, i1 true, i1 %i.ad
  br i1 %or.cond134, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.ai = icmp ne i32 %i.af, %i.i
  %i.aj = icmp ne i32 %i.ah, %i.k
  %.not16.i = or i1 %i.ai, %i.aj
  br i1 %.not16.i, label %bb.f, label %IsKeyFrame.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !46
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %IsKeyFrame.exit, label %IsKeyFrame.exit.thread128

IsKeyFrame.exit:                                  ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !45
  %i.ar = icmp eq i32 %i.ao, %i.i
  %i.as = icmp eq i32 %i.aq, %i.k
  %i.at = and i1 %i.ar, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = or i32 %i.w, %i.au
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %IsKeyFrame.exit.thread128, label %IsKeyFrame.exit.thread

IsKeyFrame.exit.thread:                           ; preds = %bb.c, %bb.e, %IsKeyFrame.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34
  %i.ay = zext i32 %i.i to i64
  %i.az = zext i32 %i.k to i64
  %i.ba = shl nuw nsw i64 %i.ay, 2
  %i.bb = mul i64 %i.ba, %i.az
  call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 0, i64 %i.bb, i1 false)
  br label %bb.g

IsKeyFrame.exit.thread128:                        ; preds = %bb.f, %IsKeyFrame.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = zext i32 %i.i to i64
  %i.bh = zext i32 %i.k to i64
  %i.bi = shl nuw nsw i64 %i.bg, 2
  %i.bj = mul i64 %i.bi, %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr readonly align 1 %i.bd, i64 %i.bj, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %IsKeyFrame.exit.thread128, %IsKeyFrame.exit.thread
  %.0.i114126 = phi i32 [ 0, %IsKeyFrame.exit.thread128 ], [ 1, %IsKeyFrame.exit.thread ] ; 2 uses
  %i.bk = shl i32 %i.i, 2                         ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !45
  %i.br = sext i32 %i.bq to i64
  %i.bs = zext i32 %i.bk to i64                   ; 2 uses
  %i.bt = mul nsw i64 %i.br, %i.bs
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %i.bv, %i.bs
  %i.bx = load i32, ptr %i.bm, align 8, !tbaa !48
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !50
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bk, ptr %i.ce, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bt, ptr %i.cf, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bw
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.bz
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !54
  %i.ck = call i32 @WebPDecode(ptr noundef %i.cd, i64 noundef %i.cb, ptr noundef nonnull %i.bp) #9
  %.not109 = icmp eq i32 %i.ck, 0
  br i1 %.not109, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.cl = load i32, ptr %3, align 8, !tbaa !42
  %i.cm = icmp slt i32 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = or i32 %i.co, %.0.i114126
  %i.cq = icmp ne i32 %i.cp, 0
  %or.cond8 = select i1 %i.cm, i1 true, i1 %i.cq
  br i1 %or.cond8, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !55
  %i.ct = icmp eq i32 %i.cs, 0
  %i.cu = load i32, ptr %i.bn, align 4, !tbaa !45
  %i.cv = icmp sgt i32 %i.cu, 0                   ; 2 uses
  br i1 %i.ct, label %.preheader, label %.preheader140

.preheader140:                                    ; preds = %bb.i
  br i1 %i.cv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader140
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.k

.preheader:                                       ; preds = %bb.i
  br i1 %i.cv, label %.lr.ph144, label %.loopexit

.lr.ph144:                                        ; preds = %.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph144, %bb.j
  %.0101143 = phi i32 [ 0, %.lr.ph144 ], [ %i.dp, %bb.j ] ; 2 uses
  %i.de = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.df = add nsw i32 %i.de, %.0101143
  %i.dg = mul i32 %i.df, %i.i
  %i.dh = load i32, ptr %i.bm, align 8, !tbaa !48
  %i.di = add i32 %i.dg, %i.dh
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = load ptr, ptr %i.dc, align 8, !tbaa !35
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dj
  %i.do = load i32, ptr %i.dd, align 8, !tbaa !44
  call void %i.m(ptr noundef %i.dl, ptr noundef %i.dn, i32 noundef %i.do) #9
  %i.dp = add nuw nsw i32 %.0101143, 1            ; 2 uses
  %i.dq = load i32, ptr %i.bn, align 4, !tbaa !45
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.j, label %.loopexit, !llvm.loop !56

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %.0102142 = phi i32 [ 0, %.lr.ph ], [ %i.ey, %bb.o ] ; 2 uses
  %i.ds = load i32, ptr %i.bl, align 4, !tbaa !47
  %i.dt = add nsw i32 %i.ds, %.0102142            ; 4 uses
  %i.du = load i32, ptr %i.bm, align 8, !tbaa !48 ; 5 uses
  %i.dv = load i32, ptr %i.cw, align 8, !tbaa !44 ; 2 uses
  %i.dw = add nsw i32 %i.dv, %i.du                ; 3 uses
  %i.dx = load i32, ptr %i.cx, align 8, !tbaa !48 ; 4 uses
  %i.dy = load i32, ptr %i.cy, align 8, !tbaa !44
  %i.dz = add nsw i32 %i.dy, %i.dx                ; 4 uses
  %i.ea = load i32, ptr %i.cz, align 4, !tbaa !47 ; 2 uses
  %i.eb = load i32, ptr %i.da, align 4, !tbaa !45
  %i.ec = icmp sge i32 %i.dt, %i.ea
  %i.ed = add nsw i32 %i.eb, %i.ea
  %.not.i115 = icmp slt i32 %i.dt, %i.ed
  %or.cond.i = select i1 %i.ec, i1 %.not.i115, i1 false
  %.not39.i = icmp slt i32 %i.du, %i.dz
  %or.cond43.i = select i1 %or.cond.i, i1 %.not39.i, i1 false
  %.not40.i = icmp sgt i32 %i.dw, %i.dx
  %or.cond135 = select i1 %or.cond43.i, i1 %.not40.i, i1 false
  br i1 %or.cond135, label %bb.l, label %FindBlendRangeAtRow.exit

bb.l:                                             ; preds = %bb.k
  %i.ee = icmp slt i32 %i.du, %i.dx
  %i.ef = sub nsw i32 %i.dx, %i.du
  %i.eg = icmp sgt i32 %i.dw, %i.dz               ; 2 uses
  %i.eh = sub nsw i32 %i.dw, %i.dz
  %spec.select137 = select i1 %i.eg, i32 %i.dz, i32 -1 ; 2 uses
  %spec.select138 = select i1 %i.eg, i32 %i.eh, i32 0 ; 2 uses
  br i1 %i.ee, label %FindBlendRangeAtRow.exit, label %FindBlendRangeAtRow.exit.thread

FindBlendRangeAtRow.exit:                         ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %i.dv, %bb.k ], [ %i.ef, %bb.l ] ; 2 uses
  %.0120 = phi i32 [ -1, %bb.k ], [ %spec.select137, %bb.l ] ; 2 uses
  %.0119 = phi i32 [ 0, %bb.k ], [ %spec.select138, %bb.l ] ; 2 uses
  %i.ei = icmp sgt i32 %.1, 0
  br i1 %i.ei, label %bb.m, label %FindBlendRangeAtRow.exit.thread

bb.m:                                             ; preds = %FindBlendRangeAtRow.exit
  %i.ej = mul i32 %i.dt, %i.i
  %i.ek = add i32 %i.du, %i.ej
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.el
  %i.eo = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.el
  call void %i.m(ptr noundef %i.en, ptr noundef %i.ep, i32 noundef %.1) #9
  br label %FindBlendRangeAtRow.exit.thread

FindBlendRangeAtRow.exit.thread:                  ; preds = %bb.l, %bb.m, %FindBlendRangeAtRow.exit
  %.0119161 = phi i32 [ %.0119, %FindBlendRangeAtRow.exit ], [ %.0119, %bb.m ], [ %spec.select138, %bb.l ] ; 2 uses
  %.0120160 = phi i32 [ %.0120, %FindBlendRangeAtRow.exit ], [ %.0120, %bb.m ], [ %spec.select137, %bb.l ]
  %i.eq = icmp sgt i32 %.0119161, 0
  br i1 %i.eq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %FindBlendRangeAtRow.exit.thread
  %i.er = mul i32 %i.dt, %i.i
  %i.es = add i32 %.0120160, %i.er
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load ptr, ptr %i.db, align 8, !tbaa !35
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.et
  call void %i.m(ptr noundef %i.ev, ptr noundef %i.ex, i32 noundef %.0119161) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %FindBlendRangeAtRow.exit.thread
  %i.ey = add nuw nsw i32 %.0102142, 1            ; 2 uses
  %i.ez = load i32, ptr %i.bn, align 4, !tbaa !45
  %i.fa = icmp slt i32 %i.ey, %i.ez
  br i1 %i.fa, label %bb.k, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %bb.o, %bb.j, %.preheader140, %.preheader, %bb.h
  store i32 %i.t, ptr %i.p, align 8, !tbaa !36
  call void @WebPDemuxReleaseIterator(ptr noundef nonnull %i.u) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false), !tbaa.struct !59
  store i32 %.0.i114126, ptr %i.v, align 8, !tbaa !41
  %i.fb = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !35
  %i.fe = zext i32 %i.i to i64
  %i.ff = zext i32 %i.k to i64
  %i.fg = shl nuw nsw i64 %i.fe, 2
  %i.fh = mul i64 %i.fg, %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr readonly align 1 %i.fb, i64 %i.fh, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !55
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.p, label %ZeroFillFrameRect.exit

bb.p:                                             ; preds = %.loopexit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !63 ; 4 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph.i, label %ZeroFillFrameRect.exit

.lr.ph.i:                                         ; preds = %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !65
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !66
  %i.fu = load ptr, ptr %i.fc, align 8, !tbaa !35
  %i.fv = mul nsw i32 %i.fr, %i.bk
  %i.fw = shl nsw i32 %i.ft, 2
  %i.fx = add nsw i32 %i.fw, %i.fv
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fu, i64 %i.fy ; 2 uses
  %i.ga = shl nsw i32 %i.fp, 2
  %i.gb = sext i32 %i.ga to i64                   ; 9 uses
  %i.gc = sext i32 %i.bk to i64                   ; 9 uses
  %xtraiter = and i32 %i.fm, 7                    ; 3 uses
  %i.gd = icmp ult i32 %i.fm, 8
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.fm, 2147483640
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.new
  %.01011.i = phi ptr [ %i.fz, %.lr.ph.i.new ], [ %i.gl, %bb.q ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.q ]
  call void @llvm.memset.p0.i64(ptr align 1 %.01011.i, i8 0, i64 %i.gb, i1 false)
  %i.ge = getelementptr inbounds i8, ptr %.01011.i, i64 %i.gc ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ge, i8 0, i64 %i.gb, i1 false)
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.gc ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gf, i8 0, i64 %i.gb, i1 false)
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.gc ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gg, i8 0, i64 %i.gb, i1 false)
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.gc ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gh, i8 0, i64 %i.gb, i1 false)
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.gc ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gi, i8 0, i64 %i.gb, i1 false)
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %i.gc ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gj, i8 0, i64 %i.gb, i1 false)
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gc ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.gk, i8 0, i64 %i.gb, i1 false)
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %i.gc ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %ZeroFillFrameRect.exit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !67

ZeroFillFrameRect.exit.loopexit.unr-lcssa:        ; preds = %bb.q
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZeroFillFrameRect.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ZeroFillFrameRect.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01011.i.epil.init = phi ptr [ %i.fz, %.lr.ph.i ], [ %i.gl, %ZeroFillFrameRect.exit.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %.01011.i.epil = phi ptr [ %.01011.i.epil.init, %.epil.preheader ], [ %i.gm, %bb.r ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  call void @llvm.memset.p0.i64(ptr align 1 %.01011.i.epil, i8 0, i64 %i.gb, i1 false)
  %i.gm = getelementptr inbounds i8, ptr %.01011.i.epil, i64 %i.gc
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZeroFillFrameRect.exit, label %bb.r, !llvm.loop !68

ZeroFillFrameRect.exit:                           ; preds = %ZeroFillFrameRect.exit.loopexit.unr-lcssa, %bb.r, %bb.p, %.loopexit
  %i.gn = load i32, ptr %i.d, align 4, !tbaa !37
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.d, align 4, !tbaa !37
  %i.gp = load ptr, ptr %i.cg, align 8, !tbaa !34
  store ptr %i.gp, ptr %1, align 8, !tbaa !60
  store i32 %i.t, ptr %2, align 4, !tbaa !3
  br label %bb.t

bb.s:                                             ; preds = %bb.g
  call void @WebPDemuxReleaseIterator(ptr noundef nonnull %3) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %WebPAnimDecoderHasMoreFrames.exit, %bb.a, %bb.s, %ZeroFillFrameRect.exit
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %ZeroFillFrameRect.exit ], [ 0, %bb.s ], [ 0, %WebPAnimDecoderHasMoreFrames.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @WebPAnimDecoderHasMoreFrames(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = icmp sle i32 %i.c, %i.e
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @WebPDemuxGetFrame(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPDecode(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @WebPDemuxReleaseIterator(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @WebPAnimDecoderGetDemuxer(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @WebPDemuxDelete(ptr noundef) local_unnamed_addr #3

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @BlendPixelRowNonPremult(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

end_hunk_0
