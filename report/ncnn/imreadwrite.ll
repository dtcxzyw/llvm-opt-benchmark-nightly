Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data:bb.a
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ]
  %.not = icmp eq i8 %.0.i, 66
  br i1 %.not, label %bb.g, label %_ZL10stbi__get8P13stbi__context.exit.thread

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !33
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit125

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %.not.i120 = icmp eq i32 %i.an, 0
  br i1 %.not.i120, label %_ZL10stbi__get8P13stbi__context.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !5 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !31
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i122

bb.l:                                             ; preds = %bb.j
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i121 = load i8, ptr %i.as, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i122

_ZL19stbi__refill_bufferP13stbi__context.exit.i122: ; preds = %bb.l, %bb.k
  %i.bk = phi i8 [ 0, %bb.k ], [ %.pre.i121, %bb.l ]
  %.sink.i.i123 = phi ptr [ %i.bh, %bb.k ], [ %i.bj, %bb.l ]
  store ptr %.sink.i.i123, ptr %i.c, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit125

_ZL10stbi__get8P13stbi__context.exit125:          ; preds = %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i122
  %.0.i124 = phi i8 [ %i.al, %bb.h ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i122 ]
  %.not115 = icmp eq i8 %.0.i124, 77
  br i1 %.not115, label %bb.m, label %_ZL10stbi__get8P13stbi__context.exit.thread

_ZL10stbi__get8P13stbi__context.exit.thread:      ; preds = %bb.i, %bb.c, %_ZL10stbi__get8P13stbi__context.exit125, %_ZL10stbi__get8P13stbi__context.exit
  store ptr @.str.35, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.m:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit125
  %i.bm = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bn = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bo = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.bp = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.bq = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.br = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.bs = shl nuw i32 %i.br, 16
  %i.bt = or disjoint i32 %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !64
  %i.bv = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.bw = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.bx = shl nuw i32 %i.bw, 16
  %i.by = or disjoint i32 %i.bx, %i.bv            ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store i32 14, ptr %i.ce, align 4, !tbaa !65
  %i.cf = load i32, ptr %i.bu, align 4, !tbaa !64
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr @.str.36, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %.not131 = icmp eq i32 %i.by, 12
  %i.ch = add i32 %i.by, -12                      ; 2 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 30)
  switch i32 %i.ci, label %bb.p [
    i32 0, label %bb.q
    i32 7, label %bb.r
    i32 11, label %bb.r
    i32 24, label %bb.r
    i32 28, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  store ptr @.str.37, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.cj = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  store i32 %i.cj, ptr %0, align 8, !tbaa !51
  %i.ck = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.cl = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cm = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cn = shl nuw i32 %i.cm, 16
  %i.co = or disjoint i32 %i.cn, %i.cl
  store i32 %i.co, ptr %0, align 8, !tbaa !51
  %i.cp = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cq = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cr = shl nuw i32 %i.cq, 16
  %i.cs = or disjoint i32 %i.cr, %i.cp
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ %i.cs, %bb.r ], [ %i.ck, %bb.q ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.ct, align 4, !tbaa !52
  %i.cu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %.not116 = icmp eq i32 %i.cu, 1
  br i1 %.not116, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @.str.36, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.cv = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  store i32 %i.cv, ptr %1, align 4, !tbaa !63
  br i1 %.not131, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cx = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = or disjoint i32 %i.cy, %i.cw            ; 5 uses
  %i.da = add i32 %i.cz, -1
  %or.cond10 = icmp ult i32 %i.da, 2
  br i1 %or.cond10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr @.str.38, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.db = icmp sgt i32 %i.cz, 3
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr @.str.39, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.dc = icmp eq i32 %i.cz, 3                    ; 3 uses
  br i1 %i.dc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i32, ptr %1, align 4, !tbaa !63
  switch i32 %i.dd, label %bb.ab [
    i32 16, label %bb.ac
    i32 32, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str.36, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.z
  %i.de = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.df = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dg = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dh = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.di = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dj = add i32 %i.by, -40                      ; 2 uses
  %i.dk = tail call i32 @llvm.fshl.i32(i32 %i.dj, i32 %i.dj, i32 30)
  switch i32 %i.dk, label %bb.an [
    i32 4, label %bb.ad
    i32 0, label %bb.ae
    i32 21, label %bb.ao
    i32 17, label %bb.ao
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dm = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dn = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.do = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dp = load i32, ptr %1, align 4, !tbaa !63    ; 2 uses
  switch i32 %i.dp, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit [
    i32 16, label %bb.af
    i32 32, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.dq = icmp eq i32 %i.cz, 0
  br i1 %i.dq, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.dp, label %bb.aj [
    i32 16, label %bb.ah
    i32 32, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store i32 31744, ptr %i.cd, align 4, !tbaa !58
  store i32 992, ptr %i.cc, align 4, !tbaa !59
  store i32 31, ptr %i.cb, align 4, !tbaa !60
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.ai:                                            ; preds = %bb.ag
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.cd, align 4, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.dr, align 4, !tbaa !57
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.aj:                                            ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.ak:                                            ; preds = %bb.af
  br i1 %i.dc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ds = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ds, ptr %i.cd, align 4, !tbaa !58
  %i.dt = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.dt, ptr %i.cc, align 4, !tbaa !59
  %i.du = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 2 uses
  store i32 %i.du, ptr %i.cb, align 4, !tbaa !60
  %i.dv = load i32, ptr %i.ce, align 4, !tbaa !65
  %i.dw = add nsw i32 %i.dv, 12
  store i32 %i.dw, ptr %i.ce, align 4, !tbaa !65
  %i.dx = load i32, ptr %i.cd, align 4, !tbaa !58
  %i.dy = load i32, ptr %i.cc, align 4, !tbaa !59 ; 2 uses
  %i.dz = icmp eq i32 %i.dx, %i.dy
  %i.ea = icmp eq i32 %i.dy, %i.du
  %or.cond = and i1 %i.dz, %i.ea
  br i1 %or.cond, label %2, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

2:                                                ; preds = %bb.al
  store ptr @.str.36, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.am:                                            ; preds = %bb.ak
  store ptr @.str.36, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.critedge

bb.an:                                            ; preds = %bb.ac
  store ptr @.str.36, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ac, %bb.ac
  %i.eb = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.eb, ptr %i.cd, align 4, !tbaa !58
  %i.ec = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ec, ptr %i.cc, align 4, !tbaa !59
  %i.ed = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ed, ptr %i.cb, align 4, !tbaa !60
  %i.ee = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ee, ptr %i.ca, align 4, !tbaa !61
  br i1 %i.dc, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai(ptr noundef %1, i32 noundef %i.cz)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ef = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.eg = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.eh = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ei = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ej = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ek = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.el = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.em = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.en = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.eo = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ep = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.eq = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.er = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.es = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.et = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.eu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ev = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ew = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ex = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ey = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ez = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fa = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fb = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fc = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fd = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  switch i32 %i.by, label %.critedge [
    i32 124, label %.thread
    i32 108, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit
  ]

.thread:                                          ; preds = %bb.aq
  %i.fe = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ff = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fg = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fh = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.an
  %3 = add i32 %i.by, -108
  %switch.and = and i32 %3, -17
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %4 = select i1 %switch.selectcmp, ptr inttoptr (i64 1 to ptr), ptr null
  br label %.critedge

_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.aq, %bb.ae, %bb.al
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.w, %bb.y, %bb.ab, %2, %bb.am, %bb.u, %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit, %bb.t, %bb.p, %bb.n, %_ZL10stbi__get8P13stbi__context.exit.thread
  %.3 = phi ptr [ null, %_ZL10stbi__get8P13stbi__context.exit.thread ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit ], [ null, %bb.aq ], [ null, %bb.am ], [ null, %2 ], [ null, %bb.ab ], [ null, %bb.y ], [ null, %bb.w ], [ %4, %bb.ar ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 -1, 32) i32 @_ZL14stbi__high_bitj(i32 noundef %0) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 65535                   ; 2 uses
  %i.c = lshr i32 %0, 16
  %spec.select = select i1 %i.b, i32 %i.c, i32 %0 ; 3 uses
  %spec.select23 = select i1 %i.b, i32 16, i32 0  ; 2 uses
  %i.d = icmp samesign ugt i32 %spec.select, 255  ; 2 uses
  %i.e = or disjoint i32 %spec.select23, 8
  %i.f = lshr i32 %spec.select, 8
  %.118 = select i1 %i.d, i32 %i.f, i32 %spec.select ; 3 uses
  %.1 = select i1 %i.d, i32 %i.e, i32 %spec.select23 ; 2 uses
  %i.g = icmp samesign ugt i32 %.118, 15          ; 2 uses
  %i.h = or disjoint i32 %.1, 4
  %i.i = lshr i32 %.118, 4
  %.219 = select i1 %i.g, i32 %i.i, i32 %.118     ; 3 uses
  %.2 = select i1 %i.g, i32 %i.h, i32 %.1         ; 2 uses
  %i.j = icmp samesign ugt i32 %.219, 3           ; 2 uses
  %i.k = or disjoint i32 %.2, 2
  %i.l = lshr i32 %.219, 2
  %.320 = select i1 %i.j, i32 %i.l, i32 %.219
  %.3 = select i1 %i.j, i32 %i.k, i32 %.2
  %i.m = icmp samesign ugt i32 %.320, 1
  %i.n = zext i1 %i.m to i32
  %.4 = add nuw nsw i32 %.3, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ %.4, %bb.b ], [ -1, %bb.a ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 64) i32 @_ZL14stbi__bitcountj(i32 noundef %0) unnamed_addr #17 {
bb.a:
  %i.a = and i32 %0, 1431655765
  %i.b = lshr i32 %0, 1
  %i.c = and i32 %i.b, 1431655765
  %i.d = add nuw i32 %i.c, %i.a                   ; 2 uses
  %i.e = and i32 %i.d, 858993459
  %i.f = lshr i32 %i.d, 2
  %i.g = and i32 %i.f, 858993459
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = and i32 %i.j, 252645135                  ; 2 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = add nuw nsw i32 %i.l, %i.k               ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = add nuw nsw i32 %i.n, %i.m
  %i.p = and i32 %i.o, 63
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483648, 3) %1) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  switch i32 %i.b, label %bb.e [
    i32 16, label %bb.c
    i32 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31744, ptr %i.c, align 4, !tbaa !58
  store i32 992, ptr %i.d, align 4, !tbaa !59
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 31, ptr %i.e, align 4, !tbaa !60
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.c, align 4, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.f, align 4, !tbaa !57
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL24stbi__decode_jpeg_headerP10stbi__jpegi(ptr nofree noundef nonnull captures(none) initializes((18472, 18473), (18504, 18512)) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i32 0, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18508
  store i32 -1, ptr %i.b, align 4, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 -1, ptr %i.c, align 8, !tbaa !72
  %i.d = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef %0)
  %i.e = icmp eq i8 %i.d, -40
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.40, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.loopexit30

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %.loopexit30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef %0) ; 3 uses
  %.034 = zext i8 %i.g to i32                     ; 2 uses
  %i.h = and i32 %.034, 254
  %or.cond35 = icmp ne i32 %i.h, 192
  %i.i = icmp ne i8 %i.g, -62
  %spec.select36 = and i1 %i.i, %or.cond35
  br i1 %spec.select36, label %.lr.ph38, label %._crit_edge

.loopexit:                                        ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread, %bb.e
  %.1.in.lcssa = phi i8 [ %i.m, %bb.e ], [ %i.ad, %_ZL12stbi__at_eofP13stbi__context.exit.thread ] ; 3 uses
  %.0 = zext i8 %.1.in.lcssa to i32               ; 2 uses
  %i.j = and i32 %.0, 254
  %or.cond = icmp ne i32 %i.j, 192
  %i.k = icmp ne i8 %.1.in.lcssa, -62
  %spec.select = and i1 %i.k, %or.cond
  br i1 %spec.select, label %.lr.ph38, label %._crit_edge, !llvm.loop !427

.lr.ph38:                                         ; preds = %bb.d, %.loopexit
  %.037 = phi i32 [ %.0, %.loopexit ], [ %.034, %bb.d ]
  %i.l = tail call fastcc noundef i32 @_ZL20stbi__process_markerP10stbi__jpegi(ptr noundef %0, i32 noundef %.037)
  %.not23 = icmp eq i32 %i.l, 0
  br i1 %.not23, label %.loopexit30, label %bb.e

bb.e:                                             ; preds = %.lr.ph38
  %i.m = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef %0) ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %_ZL12stbi__at_eofP13stbi__context.exit.thread
  %i.o = load ptr, ptr %0, align 8, !tbaa !70     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZL12stbi__at_eofP13stbi__context.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.v = tail call noundef i32 %i.s(ptr noundef %i.u), !inline_history !6
  %.not6.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !30
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZL12stbi__at_eofP13stbi__context.exit.thread27, label %_ZL12stbi__at_eofP13stbi__context.exit

_ZL12stbi__at_eofP13stbi__context.exit:           ; preds = %.lr.ph, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %.not = icmp ult ptr %i.aa, %i.ac
  br i1 %.not, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %_ZL12stbi__at_eofP13stbi__context.exit.thread27

_ZL12stbi__at_eofP13stbi__context.exit.thread27:  ; preds = %bb.g, %_ZL12stbi__at_eofP13stbi__context.exit
  store ptr @.str.41, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.loopexit30

_ZL12stbi__at_eofP13stbi__context.exit.thread:    ; preds = %bb.f, %_ZL12stbi__at_eofP13stbi__context.exit
  %i.ad = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef %0) ; 2 uses
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !428

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.0.in.lcssa = phi i8 [ %i.g, %bb.d ], [ %.1.in.lcssa, %.loopexit ]
  %i.af = icmp eq i8 %.0.in.lcssa, -62
  %i.ag = zext i1 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18480
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !80
  %i.ai = tail call fastcc noundef i32 @_ZL26stbi__process_frame_headerP10stbi__jpegi(ptr noundef %0, i32 noundef %1)
  br label %.loopexit30

.loopexit30:                                      ; preds = %.lr.ph38, %._crit_edge, %bb.c, %_ZL12stbi__at_eofP13stbi__context.exit.thread27, %bb.b
  %.021 = phi i32 [ 0, %bb.b ], [ 0, %_ZL12stbi__at_eofP13stbi__context.exit.thread27 ], [ 1, %bb.c ], [ %i.ai, %._crit_edge ], [ 0, %.lr.ph38 ]
  ret i32 %.021
}

end_hunk_0
