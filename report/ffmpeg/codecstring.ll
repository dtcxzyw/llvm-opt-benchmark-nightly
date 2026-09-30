Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/codecstring?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_make_codec_str:bb.a
  %6 = alloca %struct.AV1SequenceParameters, align 1 ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16
  switch i32 %i.f, label %.critedge178 [
    i32 139, label %bb.g
    i32 166, label %bb.b
    i32 86021, label %.fold.split
    i32 86076, label %.fold.split219
    i32 86028, label %.fold.split220
    i32 27, label %bb.h
    i32 172, label %bb.p
    i32 98316, label %bb.z
    i32 222, label %bb.ac
    i32 12, label %bb.ah
    i32 86016, label %bb.aj
    i32 86017, label %bb.ak
    i32 86018, label %bb.al
    i32 86019, label %bb.aq
    i32 86056, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.g = call i32 @ff_isom_get_vpcc_features(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, ptr noundef %2, ptr noundef nonnull %4) #6
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %4, align 4, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m) #6
  br label %set_vp9_codec_str.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.18) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.19) #6
  br label %set_vp9_codec_str.exit

set_vp9_codec_str.exit:                           ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %.critedge178

.fold.split:                                      ; preds = %bb.a
  br label %bb.g

.fold.split219:                                   ; preds = %bb.a
  br label %bb.g

.fold.split220:                                   ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.fold.split220, %.fold.split219, %.fold.split
  %.lcssa.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @codecs, i64 36), %.fold.split219 ], [ getelementptr inbounds nuw (i8, ptr @codecs, i64 24), %.fold.split ], [ @codecs, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @codecs, i64 48), %.fold.split220 ]
  %i.n = getelementptr inbounds nuw i8, ptr %.lcssa.ph, i64 4
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %i.n) #6
  br label %.critedge178

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 6 uses
  %.not176 = icmp eq ptr %i.p, null
  br i1 %.not176, label %.critedge178, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %i.p, align 1              ; 6 uses
  %i.r = icmp eq i32 %i.q, 16777216
  %i.s = lshr i32 %i.q, 16
  br i1 %i.r, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %i.v = and i8 %i.u, 31
  %i.w = icmp eq i8 %i.v, 7
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.y = shl i32 %i.q, 16
  %i.z = and i32 %i.y, 16711680
  %i.aa = and i32 %i.q, 65280
  %i.ab = or disjoint i32 %i.aa, %i.z
  %i.ac = and i32 %i.s, 255
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = and i32 %i.q, 520093696
  %i.ag = icmp eq i32 %i.af, 117440512
  %or.cond222 = and i1 %i.ae, %i.ag
  br i1 %or.cond222, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.aj = and i32 %i.q, 255
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.o, label %.critedge178

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.0140 = phi ptr [ %i.x, %bb.k ], [ %i.ah, %bb.m ], [ %i.ai, %bb.n ] ; 3 uses
  %i.al = load i8, ptr %.0140, align 1, !tbaa !22
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.0140, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0140, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !22
  %i.as = zext i8 %i.ar to i32
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.as) #6
  br label %.critedge178

bb.p:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 0, ptr %i.a, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !23 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24 ; 4 uses
  %.not172197 = icmp eq ptr %i.au, null
  br i1 %.not172197, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.az = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25 ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp sgt i32 %i.bb, 19
  br i1 %i.bd, label %.lr.ph225.preheader, label %.critedge

.lr.ph225.preheader:                              ; preds = %.lr.ph
  %invariant.op = sub i64 19, %i.az
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %bb.x
  %.0139198224 = phi ptr [ %i.bf, %bb.x ], [ %i.au, %.lr.ph225.preheader ] ; 6 uses
  %i.be = load i8, ptr %.0139198224, align 1, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %.0139198224, i64 1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = or i8 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %.0139198224, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bk = or i8 %i.bh, %i.bj
  %.not173 = icmp eq i8 %i.bk, 0
  br i1 %.not173, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph225
  %i.bl = getelementptr inbounds nuw i8, ptr %.0139198224, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.0139198224, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22
  %i.bq = and i8 %i.bp, 126
  %i.br = icmp eq i8 %i.bq, 66
  br i1 %i.br, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %.0139198224, i64 6 ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %.neg = sub i64 %i.az, %i.bt
  %i.bu = trunc i64 %.neg to i32
  %i.bv = add i32 %i.bb, %i.bu
  %i.bw = call ptr @ff_nal_unit_extract_rbsp(ptr noundef nonnull %i.bs, i32 noundef %i.bv, ptr noundef nonnull %i.c, i32 noundef 0) #6 ; 6 uses
  store ptr %i.bw, ptr %i.b, align 8, !tbaa !27
  %.not174.not = icmp eq ptr %i.bw, null
  br i1 %.not174.not, label %.critedge180, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !26
  %i.by = icmp slt i32 %i.bx, 13
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @av_freep(ptr noundef nonnull %i.b) #6
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22  ; 2 uses
  %7 = lshr i8 %i.ca, 3
  %8 = and i8 %7, 4
  %9 = xor i8 %8, 76
  %10 = and i8 %i.ca, 31
  %11 = zext nneg i8 %10 to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !22
  %i.cd = call i32 @llvm.bswap.i32(i32 %i.cc)
  %i.ce = call i32 @llvm.bitreverse.i32(i32 %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 7
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !22
  %i.ch = lshr i8 %i.cg, 4                        ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %.not175 = icmp eq i8 %i.ch, 0
  %i.cj = select i1 %.not175, ptr @.str.3, ptr @.str.2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !22
  %i.cm = zext i8 %i.cl to i32
  %i.cn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull %i.cj, i32 noundef %i.cm, i32 noundef %i.ci) #6 ; 0 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !22
  %i.cr = zext i8 %i.cq to i32
  call void @av_freep(ptr noundef nonnull %i.b) #6
  %.pre.pre = load i8, ptr %i.a, align 8
  %i.cs = icmp ne i8 %.pre.pre, 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre = phi i1 [ false, %bb.u ], [ %i.cs, %bb.v ]
  %.1137 = phi i32 [ %i.aw, %bb.u ], [ %11, %bb.v ]
  %.0134 = phi i32 [ -99, %bb.u ], [ %i.ce, %bb.v ]
  %.0132 = phi i8 [ 0, %bb.u ], [ %9, %bb.v ]
  %.1 = phi i32 [ %i.ay, %bb.u ], [ %i.cr, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.critedge

bb.x:                                             ; preds = %bb.r, %bb.q, %.lr.ph225
  %i.ct = ptrtoint ptr %i.bf to i64
  %.reass.reass = add i64 %i.ct, %invariant.op
  %i.cu = icmp slt i64 %.reass.reass, %i.bc
  br i1 %i.cu, label %.lr.ph225, label %.critedge

.critedge:                                        ; preds = %bb.x, %.lr.ph, %bb.p, %bb.w
  %i.cv = phi i1 [ %.pre, %bb.w ], [ false, %bb.p ], [ false, %.lr.ph ], [ false, %bb.x ]
  %.2138 = phi i32 [ %.1137, %bb.w ], [ %i.aw, %bb.p ], [ %i.aw, %.lr.ph ], [ %i.aw, %bb.x ] ; 2 uses
  %.1135 = phi i32 [ %.0134, %bb.w ], [ -99, %bb.p ], [ -99, %.lr.ph ], [ -99, %bb.x ] ; 2 uses
  %.1133 = phi i8 [ %.0132, %bb.w ], [ 0, %bb.p ], [ 0, %.lr.ph ], [ 0, %bb.x ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.w ], [ %i.ay, %bb.p ], [ %i.ay, %.lr.ph ], [ %i.ay, %bb.x ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !28
  %i.cy = icmp eq i32 %i.cx, 828601960
  %i.cz = icmp ne i32 %.2138, -99
  %or.cond = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = icmp ne i32 %.1135, -99
  %or.cond8 = select i1 %or.cond, i1 %i.da, i1 false
  %i.db = icmp ne i8 %.1133, 0
  %or.cond11 = select i1 %or.cond8, i1 %i.db, i1 false
  %i.dc = icmp ne i32 %.2, -99
  %or.cond13 = select i1 %or.cond11, i1 %i.dc, i1 false
  %or.cond17 = select i1 %or.cond13, i1 %i.cv, i1 false
  br i1 %or.cond17, label %.critedge182, label %bb.y

.critedge182:                                     ; preds = %.critedge
  %12 = zext nneg i8 %.1133 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.dd = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.d, i32 noundef 828601960) #6
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %i.dd, i32 noundef %.2138, i32 noundef %.1135, i32 noundef %12, i32 noundef %.2, ptr noundef nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.critedge178

.critedge180:                                     ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.y

bb.y:                                             ; preds = %.critedge, %.critedge180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.critedge178

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !25 ; 2 uses
  %.not169 = icmp eq i32 %i.df, 0
  br i1 %.not169, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !21
  %i.di = call i32 @ff_lcvec_parse_config_record(ptr noundef nonnull %5, ptr noundef %i.dh, i32 noundef %i.df, ptr noundef %0) #6 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.z, %bb.aa
  %.5150.ph = phi i32 [ %i.di, %bb.aa ], [ -22, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %.critedge178

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load i8, ptr %5, align 4, !tbaa !30
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !31
  %i.do = zext i8 %i.dn to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %i.dl, i32 noundef %i.do) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %.critedge178

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !25 ; 2 uses
  %.not166 = icmp eq i32 %i.dq, 0
  br i1 %.not166, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !21
  %i.dt = call i32 @ff_av1_parse_seq_header(ptr noundef nonnull %6, ptr noundef %i.ds, i32 noundef %i.dq) #6 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = load i8, ptr %6, align 1, !tbaa !33
  %i.dw = zext i8 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !34
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !35
  %.not167 = icmp eq i8 %i.eb, 0
  %i.ec = select i1 %.not167, ptr @.str.8, ptr @.str.7
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !36
  %i.ef = zext i8 %i.ee to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %i.dw, i32 noundef %i.dz, ptr noundef nonnull %i.ec, i32 noundef %i.ef) #6
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !37
  %.not168 = icmp eq i8 %i.eh, 0
  br i1 %.not168, label %.thread187, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !38
  %i.ek = zext i8 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.em = load i8, ptr %i.el, align 1, !tbaa !39
  %i.en = zext i8 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !40
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 7
  %i.es = load i8, ptr %i.er, align 1, !tbaa !41
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !42
  %i.ew = zext i8 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !43
  %i.ez = zext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 11
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !44
  %i.fc = zext i8 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !45
  %i.ff = zext i8 %i.fe to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %i.ek, i32 noundef %i.en, i32 noundef %i.eq, i32 noundef %i.et, i32 noundef %i.ew, i32 noundef %i.ez, i32 noundef %i.fc, i32 noundef %i.ff) #6
  br label %.thread187

.thread187:                                       ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %.critedge178

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %.6 = phi i32 [ -22, %bb.ac ], [ %i.dt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %.critedge178

bb.ah:                                            ; preds = %bb.a
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.10) #6
  %.not165 = icmp eq ptr %0, null
  br i1 %.not165, label %.critedge178, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.11) #6
  br label %.critedge178

bb.aj:                                            ; preds = %bb.a
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.12) #6
  br label %.critedge178

bb.ak:                                            ; preds = %bb.a
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.13) #6
  br label %.critedge178

bb.al:                                            ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !25
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !21 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !22
  %i.fm = lshr i8 %i.fl, 3                        ; 2 uses
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = icmp eq i8 %i.fm, 31
  br i1 %i.fo, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fp = load i16, ptr %i.fk, align 1, !tbaa !22
  %i.fq = tail call i16 @llvm.bswap.i16(i16 %i.fp)
  %i.fr = lshr i16 %i.fq, 5
  %i.fs = and i16 %i.fr, 63
  %narrow = add nuw nsw i16 %i.fs, 32
  %i.ft = zext nneg i16 %narrow to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.al
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !23 ; 2 uses
  %.not164 = icmp eq i32 %i.fv, -99
  %i.fw = add nsw i32 %i.fv, 1
  %spec.select183 = select i1 %.not164, i32 2, i32 %i.fw
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.an
  %.0 = phi i32 [ %i.ft, %bb.an ], [ %i.fn, %bb.am ], [ %spec.select183, %bb.ao ]
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %.0) #6
  br label %.critedge178

bb.aq:                                            ; preds = %bb.a
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.15) #6
  br label %.critedge178

bb.ar:                                            ; preds = %bb.a
  tail call void (ptr, ptr, ...) @av_bprintf(ptr noundef %3, ptr noundef nonnull @.str.16) #6
  br label %.critedge178

.critedge178:                                     ; preds = %bb.a, %bb.ai, %bb.ah, %bb.ak, %bb.aq, %bb.ar, %bb.ap, %bb.aj, %bb.o, %.critedge182, %bb.ab, %.thread187, %bb.ag, %.thread, %bb.n, %bb.h, %bb.y, %set_vp9_codec_str.exit, %bb.g
  %.7 = phi i32 [ 0, %set_vp9_codec_str.exit ], [ -22, %bb.n ], [ -22, %bb.a ], [ -22, %bb.y ], [ %.5150.ph, %.thread ], [ %.6, %bb.ag ], [ 0, %bb.g ], [ -22, %bb.h ], [ 0, %.thread187 ], [ 0, %bb.ab ], [ 0, %.critedge182 ], [ 0, %bb.o ], [ 0, %bb.aj ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ 0, %bb.ai ]
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @ff_nal_unit_extract_rbsp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @av_fourcc_make_string(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_lcvec_parse_config_record(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

end_hunk_0
