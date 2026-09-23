Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data:bb.a
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !82
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit125

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !79
  %.not.i120 = icmp eq i32 %i.an, 0
  br i1 %.not.i120, label %_ZL10stbi__get8P13stbi__context.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !78
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !12 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !81
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !80
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !80
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i122

bb.l:                                             ; preds = %bb.j
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i121 = load i8, ptr %i.as, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i122

_ZL19stbi__refill_bufferP13stbi__context.exit.i122: ; preds = %bb.l, %bb.k
  %i.bk = phi i8 [ 0, %bb.k ], [ %.pre.i121, %bb.l ]
  %.sink.i.i123 = phi ptr [ %i.bh, %bb.k ], [ %i.bj, %bb.l ]
  store ptr %.sink.i.i123, ptr %i.c, align 8, !tbaa !85
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit125

_ZL10stbi__get8P13stbi__context.exit125:          ; preds = %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i122
  %.0.i124 = phi i8 [ %i.al, %bb.h ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i122 ]
  %.not115 = icmp eq i8 %.0.i124, 77
  br i1 %.not115, label %bb.m, label %_ZL10stbi__get8P13stbi__context.exit.thread

_ZL10stbi__get8P13stbi__context.exit.thread:      ; preds = %bb.i, %bb.c, %_ZL10stbi__get8P13stbi__context.exit125, %_ZL10stbi__get8P13stbi__context.exit
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.40, ptr %i.bm, align 8, !tbaa !71
  br label %.critedge

bb.m:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit125
  %i.bn = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bo = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.bp = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.bq = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.br = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.bs = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.bt = shl nuw i32 %i.bs, 16
  %i.bu = or disjoint i32 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !286
  %i.bw = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.bx = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.by = shl nuw i32 %i.bx, 16
  %i.bz = or disjoint i32 %i.by, %i.bw            ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !285
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  store i32 14, ptr %i.cf, align 4, !tbaa !287
  %i.cg = load i32, ptr %i.bv, align 4, !tbaa !286
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.41, ptr %i.ci, align 8, !tbaa !71
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %.not131 = icmp eq i32 %i.bz, 12
  %i.cj = add i32 %i.bz, -12                      ; 2 uses
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cj, i32 30)
  switch i32 %i.ck, label %bb.p [
    i32 0, label %bb.q
    i32 7, label %bb.r
    i32 11, label %bb.r
    i32 24, label %bb.r
    i32 28, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.cl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.42, ptr %i.cl, align 8, !tbaa !71
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.cm = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  store i32 %i.cm, ptr %0, align 8, !tbaa !115
  %i.cn = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.co = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cp = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = or disjoint i32 %i.cq, %i.co
  store i32 %i.cr, ptr %0, align 8, !tbaa !115
  %i.cs = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.ct = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.cu = shl nuw i32 %i.ct, 16
  %i.cv = or disjoint i32 %i.cu, %i.cs
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ %i.cv, %bb.r ], [ %i.cn, %bb.q ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink, ptr %i.cw, align 4, !tbaa !116
  %i.cx = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  %.not116 = icmp eq i32 %i.cx, 1
  br i1 %.not116, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.41, ptr %i.cy, align 8, !tbaa !71
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.cz = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  store i32 %i.cz, ptr %1, align 4, !tbaa !122
  br i1 %.not131, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.db = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.dc = shl nuw i32 %i.db, 16
  %i.dd = or disjoint i32 %i.dc, %i.da            ; 5 uses
  %i.de = add i32 %i.dd, -1
  %or.cond10 = icmp ult i32 %i.de, 2
  br i1 %or.cond10, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.df = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.43, ptr %i.df, align 8, !tbaa !71
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.dg = icmp sgt i32 %i.dd, 3
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.44, ptr %i.dh, align 8, !tbaa !71
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.di = icmp eq i32 %i.dd, 3                    ; 3 uses
  br i1 %i.di, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dj = load i32, ptr %1, align 4, !tbaa !122
  switch i32 %i.dj, label %bb.ab [
    i32 16, label %bb.ac
    i32 32, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.41, ptr %i.dk, align 8, !tbaa !71
  br label %.critedge

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.z
  %i.dl = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dm = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dn = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.do = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dp = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dq = add i32 %i.bz, -40                      ; 2 uses
  %i.dr = tail call i32 @llvm.fshl.i32(i32 %i.dq, i32 %i.dq, i32 30)
  switch i32 %i.dr, label %bb.an [
    i32 4, label %bb.ad
    i32 0, label %bb.ae
    i32 21, label %bb.ao
    i32 17, label %bb.ao
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ds = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dt = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.du = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.dv = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dw = load i32, ptr %1, align 4, !tbaa !122   ; 2 uses
  switch i32 %i.dw, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit [
    i32 16, label %bb.af
    i32 32, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.dx = icmp eq i32 %i.dd, 0
  br i1 %i.dx, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  switch i32 %i.dw, label %bb.aj [
    i32 16, label %bb.ah
    i32 32, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  store i32 31744, ptr %i.ce, align 4, !tbaa !281
  store i32 992, ptr %i.cd, align 4, !tbaa !282
  store i32 31, ptr %i.cc, align 4, !tbaa !283
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.ai:                                            ; preds = %bb.ag
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.ce, align 4, !tbaa !72
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.dy, align 4, !tbaa !121
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.aj:                                            ; preds = %bb.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

bb.ak:                                            ; preds = %bb.af
  br i1 %i.di, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dz = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.dz, ptr %i.ce, align 4, !tbaa !281
  %i.ea = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ea, ptr %i.cd, align 4, !tbaa !282
  %i.eb = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 2 uses
  store i32 %i.eb, ptr %i.cc, align 4, !tbaa !283
  %i.ec = load i32, ptr %i.cf, align 4, !tbaa !287
  %i.ed = add nsw i32 %i.ec, 12
  store i32 %i.ed, ptr %i.cf, align 4, !tbaa !287
  %i.ee = load i32, ptr %i.ce, align 4, !tbaa !281
  %i.ef = load i32, ptr %i.cd, align 4, !tbaa !282 ; 2 uses
  %i.eg = icmp eq i32 %i.ee, %i.ef
  %i.eh = icmp eq i32 %i.ef, %i.eb
  %or.cond = and i1 %i.eg, %i.eh
  br i1 %or.cond, label %2, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit

2:                                                ; preds = %bb.al
  %3 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.41, ptr %3, align 8, !tbaa !71
  br label %.critedge

bb.am:                                            ; preds = %bb.ak
  %i.ei = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.41, ptr %i.ei, align 8, !tbaa !71
  br label %.critedge

bb.an:                                            ; preds = %bb.ac
  %i.ej = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.41, ptr %i.ej, align 8, !tbaa !71
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ac, %bb.ac
  %i.ek = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ek, ptr %i.ce, align 4, !tbaa !281
  %i.el = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.el, ptr %i.cd, align 4, !tbaa !282
  %i.em = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.em, ptr %i.cc, align 4, !tbaa !283
  %i.en = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.en, ptr %i.cb, align 4, !tbaa !284
  br i1 %i.di, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai(ptr noundef %1, i32 noundef %i.dd)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.eo = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
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
  %i.fe = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.ff = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fg = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fh = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fi = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fj = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fk = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fl = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  %i.fm = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0) ; 0 uses
  switch i32 %i.bz, label %.critedge [
    i32 124, label %.thread
    i32 108, label %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit
  ]

.thread:                                          ; preds = %bb.aq
  %i.fn = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fo = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fp = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.fq = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.thread, %bb.an
  %4 = add i32 %i.bz, -108
  %switch.and = and i32 %4, -17
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %5 = select i1 %switch.selectcmp, ptr inttoptr (i64 1 to ptr), ptr null
  br label %.critedge

_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.aq, %bb.ae, %bb.al
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.w, %bb.y, %bb.ab, %2, %bb.am, %bb.u, %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit, %bb.t, %bb.p, %bb.n, %_ZL10stbi__get8P13stbi__context.exit.thread
  %.3 = phi ptr [ null, %_ZL10stbi__get8P13stbi__context.exit.thread ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai.exit ], [ null, %bb.aq ], [ null, %bb.am ], [ null, %2 ], [ null, %bb.ab ], [ null, %bb.y ], [ null, %bb.w ], [ %5, %bb.ar ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 -1, 32) i32 @_ZL14stbi__high_bitj(i32 noundef %0) unnamed_addr #28 {
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
define internal fastcc noundef range(i32 0, 64) i32 @_ZL14stbi__bitcountj(i32 noundef %0) unnamed_addr #28 {
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
define internal fastcc void @_ZL27stbi__bmp_set_mask_defaultsP14stbi__bmp_datai(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483648, 3) %1) unnamed_addr #29 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  switch i32 %i.b, label %bb.e [
    i32 16, label %bb.c
    i32 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 31744, ptr %i.c, align 4, !tbaa !281
  store i32 992, ptr %i.d, align 4, !tbaa !282
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 31, ptr %i.e, align 4, !tbaa !283
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.c, align 4, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.f, align 4, !tbaa !121
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL19stbi__gif_load_nextP13stbi__contextP9stbi__gifPiiPh(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %.not179 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not179, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i32 @_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %.not166 = icmp eq i32 %i.c, 0
  br i1 %.not166, label %_ZL10stbi__skipP13stbi__contexti.exit221.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8, !tbaa !98     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !99   ; 4 uses
  %.not23.i = icmp ugt i32 %i.d, 536870911
  br i1 %.not23.i, label %_ZL10stbi__skipP13stbi__contexti.exit221.thread.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %bb.c
  %i.g = shl nuw nsw i32 %i.d, 2
  %or.cond.not.i10.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i, label %bb.d, label %_ZL10stbi__skipP13stbi__contexti.exit221.thread.sink.split

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.d
  %i.i = udiv i32 2147483647, %i.f
  %.not.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i, label %_ZL10stbi__skipP13stbi__contexti.exit221.thread.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i, %bb.d
  %i.j = mul nuw nsw i32 %i.f, %i.d               ; 3 uses
  %i.k = shl nsw i32 %i.j, 2
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #54 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !101
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #54 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !103
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.p) #54 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !102
  %.not168 = icmp eq ptr %i.m, null
  br i1 %.not168, label %_ZL10stbi__skipP13stbi__contexti.exit221.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %.not169 = icmp eq ptr %i.n, null
  %.not170 = icmp eq ptr %i.q, null
  %or.cond180 = or i1 %.not169, %.not170
  br i1 %or.cond180, label %_ZL10stbi__skipP13stbi__contexti.exit221.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !971
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !99
  %i.z = mul i32 %i.y, %i.w                       ; 8 uses
  %i.aa = icmp eq i32 %i.v, 3
  %i.ab = icmp eq ptr %3, null
  %or.cond = and i1 %i.ab, %i.aa
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.v
  switch i32 %spec.store.select, label %.loopexit [
    i32 3, label %.preheader252
    i32 2, label %.preheader253
  ]

.preheader253:                                    ; preds = %bb.g
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader253
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.z, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

.preheader252:                                    ; preds = %bb.g
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph267, label %.loopexit

end_hunk_0
