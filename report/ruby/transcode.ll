inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@rb_econv_close:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.s, %bb.f ], [ %i.r, %bb.e ]
  %i.u = tail call i32 %i.n(ptr noundef %i.t) #19, !inline_history !68 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.v = getelementptr i8, ptr %i.l, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67
  %i.x = icmp ugt i64 %i.w, 8
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.k, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  tail call void @ruby_xfree(ptr noundef %i.z) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = getelementptr i8, ptr %i.l, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69
  %i.ac = icmp sgt i32 %i.ab, 8
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %i.k, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30
  tail call void @ruby_xfree(ptr noundef %i.ae) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = getelementptr i8, ptr %i.l, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !70
  %i.ah = icmp sgt i32 %i.ag, 8
  br i1 %i.ah, label %bb.m, label %rb_transcoding_close.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %i.k, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  tail call void @ruby_xfree(ptr noundef %i.aj) #19
  br label %rb_transcoding_close.exit

rb_transcoding_close.exit:                        ; preds = %bb.l, %bb.m
  tail call void @ruby_xfree(ptr noundef nonnull %i.k) #19
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.al = getelementptr [48 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !71
  tail call void @ruby_xfree(ptr noundef %i.an) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !48
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.d, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %rb_transcoding_close.exit, %bb.c
  %i.ar = getelementptr i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !73
  tail call void @ruby_xfree(ptr noundef %i.as) #19
  %i.at = getelementptr i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49
  tail call void @ruby_xfree(ptr noundef %i.au) #19
  tail call void @ruby_xfree(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_econv_convert(ptr noundef initializes((4, 8)) %0, ptr noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef captures(address_is_null) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store ptr %i.e, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !58
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %2 ; 5 uses
  %spec.select24 = select i1 %.not, ptr %i.f, ptr %1 ; 8 uses
  %.not23 = icmp eq ptr %3, null                  ; 2 uses
  %.020 = select i1 %.not23, ptr %i.f, ptr %3     ; 17 uses
  %.019 = select i1 %.not23, ptr %i.e, ptr %4     ; 9 uses
  %i.h = getelementptr i8, ptr %0, i64 112        ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.k = ptrtoint ptr %.019 to i64                ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 56         ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.o = and i32 %5, -393217
  %i.p = or disjoint i32 %i.o, 131072
  %i.q = and i32 %5, 262144
  %.not182.i = icmp eq i32 %i.q, 0                ; 4 uses
  %i.r = or disjoint i32 %5, 262144
  %i.s = ptrtoint ptr %spec.select to i64
  %i.t = and i32 %5, 131072
  %.not191.i = icmp eq i32 %i.t, 0
  %.192.i = select i1 %.not191.i, i32 4, i32 3
  %i.u = getelementptr i8, ptr %0, i64 120
  %i.v = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 32        ; 4 uses
  %i.ab = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.ac = getelementptr i8, ptr %0, i64 88        ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.h, i8 noundef 0, i64 noundef 56, i1 noundef false) #19
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.backedge
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !73
  %.not185.i = icmp eq ptr %i.af, null
  br i1 %.not185.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !74  ; 4 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !75  ; 2 uses
  %.not186.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not186.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %.020, align 8, !tbaa !29 ; 4 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.k, %i.aj                     ; 3 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = icmp slt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.e, label %ruby_nonempty_memcpy.exit197.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %.019, %i.ai
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull readonly align 1 %i.ag, i64 noundef range(i64 1, 0) %i.ak, i1 noundef false) #19
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.f, %bb.e
  store ptr %.019, ptr %.020, align 8, !tbaa !29
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ak
  store ptr %i.aq, ptr %i.m, align 8, !tbaa !74
  br label %.thread222.i

ruby_nonempty_memcpy.exit197.i:                   ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull readonly align 1 %i.ag, i64 noundef range(i64 1, 0) %i.an, i1 noundef false) #19
  %i.ar = load ptr, ptr %.020, align 8, !tbaa !29
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.an
  store ptr %i.as, ptr %.020, align 8, !tbaa !29
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !73  ; 2 uses
  store ptr %i.at, ptr %i.n, align 8, !tbaa !75
  store ptr %i.at, ptr %i.m, align 8, !tbaa !74
  br i1 %.not182.i, label %bb.g, label %.thread222.i

bb.g:                                             ; preds = %ruby_nonempty_memcpy.exit197.i, %bb.c, %bb.b
  %i.au = load ptr, ptr %.020, align 8, !tbaa !29 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.k, %i.av
  %i.ax = load ptr, ptr %spec.select24, align 8, !tbaa !29 ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.s, %i.ay
  %..i = call i64 @llvm.smin.i64(i64 %i.aw, i64 %i.az) ; 4 uses
  %.not188.i = icmp eq i64 %..i, 0                ; 2 uses
  %or.cond.i = or i1 %.not182.i, %.not188.i
  br i1 %or.cond.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr i8, ptr %i.ax, i64 1
  store ptr %i.ba, ptr %spec.select24, align 8, !tbaa !29
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !30
  %i.bc = load ptr, ptr %.020, align 8, !tbaa !29 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %.020, align 8, !tbaa !29
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !30
  br label %.thread222.i

bb.i:                                             ; preds = %bb.g
  br i1 %.not188.i, label %ruby_nonempty_memcpy.exit200.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.au, ptr noundef nonnull readonly align 1 %i.ax, i64 noundef range(i64 1, 0) %..i, i1 noundef false) #19
  %.pre227.i.a = load ptr, ptr %.020, align 8, !tbaa !29
  br label %ruby_nonempty_memcpy.exit200.i

ruby_nonempty_memcpy.exit200.i:                   ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %i.au, %bb.i ], [ %.pre227.i.a, %bb.j ]
  %i.bf = getelementptr i8, ptr %i.be, i64 %..i
  store ptr %i.bf, ptr %.020, align 8, !tbaa !29
  %i.bg = load ptr, ptr %spec.select24, align 8, !tbaa !29
  %i.bh = getelementptr i8, ptr %i.bg, i64 %..i   ; 2 uses
  store ptr %i.bh, ptr %spec.select24, align 8, !tbaa !29
  %.not190.i = icmp eq ptr %i.bh, %spec.select
  br i1 %.not190.i, label %select.unfold219.i, label %.thread222.i

bb.k:                                             ; preds = %.backedge
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.bj = add i32 %i.ad, -1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr [48 x i8], ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 5 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bl, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !77 ; 2 uses
  %.not176.i = icmp eq ptr %i.bn, %i.bp
  br i1 %.not176.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %.020, align 8, !tbaa !29 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.k, %i.br                     ; 3 uses
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %.not177.i = icmp slt i64 %i.bs, %i.bv
  br i1 %.not177.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not.i201.i = icmp eq ptr %.019, %i.bq
  br i1 %.not.i201.i, label %.thread214.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bq, ptr noundef nonnull readonly align 1 %i.bn, i64 noundef range(i64 1, 0) %i.bs, i1 noundef false) #19
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !49
  %.pre226.i.a = load i32, ptr %i.i, align 8, !tbaa !48
  %.pre228.i = add i32 %.pre226.i.a, -1
  %.pre229.i = sext i32 %.pre228.i to i64
  br label %.thread214.i

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bq, ptr noundef nonnull readonly align 1 %i.bn, i64 noundef range(i64 1, 0) %i.bv, i1 noundef false) #19
  %i.bw = load ptr, ptr %.020, align 8, !tbaa !29
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bv
  store ptr %i.bx, ptr %.020, align 8, !tbaa !29
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bz = load i32, ptr %i.i, align 8, !tbaa !48
  %i.ca = add i32 %i.bz, -1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [48 x i8], ptr %i.by, i64 %i.cb ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !71 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cc, i64 24
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !77
  %i.cg = getelementptr i8, ptr %i.cc, i64 16
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !76
  br label %.thread.i

.thread214.i:                                     ; preds = %bb.o, %bb.n
  %.pre-phi230.i = phi i64 [ %i.bk, %bb.n ], [ %.pre229.i, %bb.o ]
  %i.ch = phi ptr [ %i.bi, %bb.n ], [ %.pre.i, %bb.o ]
  store ptr %.019, ptr %.020, align 8, !tbaa !29
  %i.ci = getelementptr [48 x i8], ptr %i.ch, i64 %.pre-phi230.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !76
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.bs
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !76
  br label %.thread222.i

.thread.i:                                        ; preds = %bb.p, %bb.l, %bb.k
  %.not181.i = phi i1 [ true, %bb.k ], [ true, %bb.l ], [ %.not182.i, %bb.p ]
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !73
  %.not178.i = icmp eq ptr %i.cm, null
  br i1 %.not178.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.thread.i
  %i.cn = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.co = load ptr, ptr %i.n, align 8, !tbaa !75  ; 2 uses
  %.not179.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not179.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = call fastcc i32 @rb_trans_conv(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef %i.co, ptr noundef nonnull %.020, ptr noundef %.019, i32 noundef %i.p, ptr noundef %i.d) ; 2 uses
  %.not180.i = icmp eq i32 %i.cp, 3
  br i1 %.not180.i, label %bb.s, label %select.unfold219.i

bb.s:                                             ; preds = %bb.r, %bb.q, %.thread.i
  br i1 %.not181.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %spec.select24, align 8, !tbaa !29 ; 2 uses
  %.not183.i = icmp eq ptr %i.cq, %spec.select
  br i1 %.not183.i, label %.thread217.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = call fastcc i32 @rb_trans_conv(ptr noundef nonnull %0, ptr noundef nonnull %spec.select24, ptr noundef %i.cq, ptr noundef nonnull %.020, ptr noundef %.019, i32 noundef %5, ptr noundef %i.d) ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 3
  br i1 %i.cs, label %.thread222.i, label %select.unfold219.i

bb.v:                                             ; preds = %bb.s
  br i1 %.not182.i, label %bb.w, label %.thread217.i

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.i, align 8, !tbaa !48
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.thread217.i, label %.preheader62

.thread217.i:                                     ; preds = %bb.w, %bb.v, %bb.t
  %i.cv = call fastcc i32 @rb_trans_conv(ptr noundef nonnull %0, ptr noundef nonnull %spec.select24, ptr noundef %spec.select, ptr noundef nonnull %.020, ptr noundef %.019, i32 noundef %5, ptr noundef %i.d)
  br label %select.unfold219.i

.preheader62:                                     ; preds = %bb.w, %.preheader62
  %i.cw = call fastcc i32 @rb_trans_conv(ptr noundef nonnull %0, ptr noundef nonnull %spec.select24, ptr noundef %spec.select, ptr noundef nonnull %.020, ptr noundef %.019, i32 noundef %i.r, ptr noundef %i.d) ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 5
  br i1 %i.cx, label %.preheader62, label %select.unfold219.i, !llvm.loop !78

.thread222.i:                                     ; preds = %bb.u, %.thread214.i, %ruby_nonempty_memcpy.exit200.i, %bb.h, %ruby_nonempty_memcpy.exit197.i, %ruby_nonempty_memcpy.exit.i
  %.5.ph.i = phi i32 [ 2, %.thread214.i ], [ 5, %ruby_nonempty_memcpy.exit197.i ], [ 5, %bb.h ], [ 2, %ruby_nonempty_memcpy.exit200.i ], [ 2, %ruby_nonempty_memcpy.exit.i ], [ 5, %bb.u ] ; 2 uses
  store i32 %.5.ph.i, ptr %i.h, align 8, !tbaa !52
  br label %rb_econv_convert0.exit

select.unfold219.i:                               ; preds = %.preheader62, %.thread217.i, %bb.u, %bb.r, %ruby_nonempty_memcpy.exit200.i
  %.5.i = phi i32 [ %.192.i, %ruby_nonempty_memcpy.exit200.i ], [ %i.cp, %bb.r ], [ %i.cr, %bb.u ], [ %i.cv, %.thread217.i ], [ %i.cw, %.preheader62 ] ; 4 uses
  store i32 %.5.i, ptr %i.h, align 8, !tbaa !52
  switch i32 %.5.i, label %rb_econv_convert0.exit [
    i32 6, label %bb.x
    i32 1, label %bb.x
    i32 0, label %bb.x
  ]

bb.x:                                             ; preds = %select.unfold219.i, %select.unfold219.i, %select.unfold219.i
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.cz = load i32, ptr %i.d, align 4, !tbaa !7
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr [48 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !60 ; 4 uses
  store ptr %i.dc, ptr %i.u, align 8, !tbaa !79
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !62 ; 2 uses
  %i.de = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !29
  store <2 x ptr> %i.de, ptr %i.v, align 8, !tbaa !29
  %i.df = getelementptr i8, ptr %i.dd, i64 60
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !69
  %i.dh = icmp slt i32 %i.dg, 9
  %i.di = getelementptr i8, ptr %i.dc, i64 56     ; 2 uses
  br i1 %i.dh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dk = phi ptr [ %i.dj, %bb.y ], [ %i.di, %bb.x ]
  store ptr %i.dk, ptr %i.w, align 8, !tbaa !80
  %i.dl = getelementptr i8, ptr %i.dc, i64 40
  %i.dm = load <2 x i64>, ptr %i.dl, align 8, !tbaa !25
  store <2 x i64> %i.dm, ptr %i.x, align 8, !tbaa !25
  br label %rb_econv_convert0.exit

rb_econv_convert0.exit:                           ; preds = %.thread222.i, %select.unfold219.i, %bb.z
  %.5224.i = phi i32 [ %.5.ph.i, %.thread222.i ], [ %.5.i, %bb.z ], [ %.5.i, %select.unfold219.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  switch i32 %.5224.i, label %.loopexit47 [
    i32 6, label %bb.aa
    i32 0, label %bb.aa
    i32 1, label %bb.aj
  ]

bb.aa:                                            ; preds = %rb_econv_convert0.exit, %rb_econv_convert0.exit
  %i.dn = load i32, ptr %0, align 8, !tbaa !54
  %i.do = and i32 %i.dn, 15
  %cond = icmp eq i32 %i.do, 2
  br i1 %cond, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !65  ; 2 uses
  %.not.i28 = icmp eq ptr %i.dp, null
  br i1 %.not.i28, label %bb.ac, label %.make_replacement.exit_crit_edge

.make_replacement.exit_crit_edge:                 ; preds = %bb.ab
  %.pre = load i64, ptr %i.aa, align 8, !tbaa !81
  %.pre76 = load ptr, ptr %i.ab, align 8, !tbaa !82
  br label %make_replacement.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dq = load ptr, ptr %i.z, align 8, !tbaa !51  ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %rb_econv_encoding_to_insert_output.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !62 ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 68
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !64
  %i.dv = icmp eq i32 %i.du, 2
  br i1 %i.dv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !14
  br label %rb_econv_encoding_to_insert_output.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.dx = getelementptr i8, ptr %i.ds, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !19
  br label %rb_econv_encoding_to_insert_output.exit.i

rb_econv_encoding_to_insert_output.exit.i:        ; preds = %bb.af, %bb.ae, %bb.ac
  %.0.i.i = phi ptr [ %i.dy, %bb.af ], [ %i.dw, %bb.ae ], [ @.str.3, %bb.ac ] ; 2 uses
  %i.dz = load i8, ptr %.0.i.i, align 1, !tbaa !30
  %.not13.i = icmp eq i8 %i.dz, 0
  br i1 %.not13.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %rb_econv_encoding_to_insert_output.exit.i
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !62
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !19
  %i.ed = call ptr @rb_enc_find(ptr noundef %i.ec) #19 ; 0 uses
  %i.ee = call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull readonly %.0.i.i, ptr noundef nonnull @.str.91) #22
  %i.ef = icmp eq i32 %i.ee, 0                    ; 3 uses
  %..i.i = select i1 %i.ef, i64 3, i64 1
  %.str.91..str.83.i.i = select i1 %i.ef, ptr @.str.91, ptr @.str.83
  %.str.92..str.90.i.i = select i1 %i.ef, ptr @.str.92, ptr @.str.90
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %rb_econv_encoding_to_insert_output.exit.i
  %.014.i = phi ptr [ %.str.91..str.83.i.i, %bb.ag ], [ @.str.3, %rb_econv_encoding_to_insert_output.exit.i ] ; 2 uses
  %.0.i29 = phi i64 [ %..i.i, %bb.ag ], [ 1, %rb_econv_encoding_to_insert_output.exit.i ] ; 2 uses
  %.012.i = phi ptr [ %.str.92..str.90.i.i, %bb.ag ], [ @.str.90, %rb_econv_encoding_to_insert_output.exit.i ] ; 2 uses
  store ptr %.012.i, ptr %i.y, align 8, !tbaa !65
  store i64 %.0.i29, ptr %i.aa, align 8, !tbaa !81
  store ptr %.014.i, ptr %i.ab, align 8, !tbaa !82
  store i32 0, ptr %i.ac, align 8, !tbaa !42
  br label %make_replacement.exit

make_replacement.exit:                            ; preds = %.make_replacement.exit_crit_edge, %bb.ah
  %i.eg = phi ptr [ %.pre76, %.make_replacement.exit_crit_edge ], [ %.014.i, %bb.ah ]
  %i.eh = phi i64 [ %.pre, %.make_replacement.exit_crit_edge ], [ %.0.i29, %bb.ah ]
  %i.ei = phi ptr [ %i.dp, %.make_replacement.exit_crit_edge ], [ %.012.i, %bb.ah ]
  %i.ej = call i32 @rb_econv_insert_output(ptr noundef nonnull %0, ptr noundef %i.ei, i64 noundef %i.eh, ptr noundef %i.eg), !inline_history !83
  %.not45 = icmp eq i32 %i.ej, -1
  br i1 %.not45, label %bb.ai, label %.backedge.backedge

.backedge.backedge:                               ; preds = %make_replacement.exit, %make_replacement.exit40, %output_hex_charref.exit
  br label %.backedge

bb.ai:                                            ; preds = %bb.aa, %make_replacement.exit
  %i.ek = icmp eq i32 %.5224.i, 1
  br i1 %i.ek, label %bb.aj, label %.loopexit47

bb.aj:                                            ; preds = %rb_econv_convert0.exit, %bb.ai
  %i.el = load i32, ptr %0, align 8, !tbaa !54
  %i.em = trunc i32 %i.el to i8
  %trunc = and i8 %i.em, -16
  switch i8 %trunc, label %.loopexit47 [
    i8 32, label %bb.ak
    i8 48, label %bb.ar
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.en = load ptr, ptr %i.y, align 8, !tbaa !65  ; 2 uses
  %.not.i30 = icmp eq ptr %i.en, null
  br i1 %.not.i30, label %bb.al, label %.make_replacement.exit40_crit_edge

.make_replacement.exit40_crit_edge:               ; preds = %bb.ak
  %.pre77 = load i64, ptr %i.aa, align 8, !tbaa !81
  %.pre78 = load ptr, ptr %i.ab, align 8, !tbaa !82
  br label %make_replacement.exit40

bb.al:                                            ; preds = %bb.ak
  %i.eo = load ptr, ptr %i.z, align 8, !tbaa !51  ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %rb_econv_encoding_to_insert_output.exit.i31, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !62 ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 68
  %i.es = load i32, ptr %i.er, align 4, !tbaa !64
  %i.et = icmp eq i32 %i.es, 2
  br i1 %i.et, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !14
  br label %rb_econv_encoding_to_insert_output.exit.i31

bb.ao:                                            ; preds = %bb.am
  %i.ev = getelementptr i8, ptr %i.eq, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !19
  br label %rb_econv_encoding_to_insert_output.exit.i31

rb_econv_encoding_to_insert_output.exit.i31:      ; preds = %bb.ao, %bb.an, %bb.al
  %.0.i.i32 = phi ptr [ %i.ew, %bb.ao ], [ %i.eu, %bb.an ], [ @.str.3, %bb.al ] ; 2 uses
  %i.ex = load i8, ptr %.0.i.i32, align 1, !tbaa !30
  %.not13.i33 = icmp eq i8 %i.ex, 0
  br i1 %.not13.i33, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %rb_econv_encoding_to_insert_output.exit.i31
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !19
  %i.fb = call ptr @rb_enc_find(ptr noundef %i.fa) #19 ; 0 uses
  %i.fc = call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull readonly %.0.i.i32, ptr noundef nonnull @.str.91) #22
  %i.fd = icmp eq i32 %i.fc, 0                    ; 3 uses
  %..i.i34 = select i1 %i.fd, i64 3, i64 1
  %.str.91..str.83.i.i35 = select i1 %i.fd, ptr @.str.91, ptr @.str.83
  %.str.92..str.90.i.i36 = select i1 %i.fd, ptr @.str.92, ptr @.str.90
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %rb_econv_encoding_to_insert_output.exit.i31
  %.014.i37 = phi ptr [ %.str.91..str.83.i.i35, %bb.ap ], [ @.str.3, %rb_econv_encoding_to_insert_output.exit.i31 ] ; 2 uses
  %.0.i38 = phi i64 [ %..i.i34, %bb.ap ], [ 1, %rb_econv_encoding_to_insert_output.exit.i31 ] ; 2 uses
  %.012.i39 = phi ptr [ %.str.92..str.90.i.i36, %bb.ap ], [ @.str.90, %rb_econv_encoding_to_insert_output.exit.i31 ] ; 2 uses
  store ptr %.012.i39, ptr %i.y, align 8, !tbaa !65
  store i64 %.0.i38, ptr %i.aa, align 8, !tbaa !81
  store ptr %.014.i37, ptr %i.ab, align 8, !tbaa !82
  store i32 0, ptr %i.ac, align 8, !tbaa !42
  br label %make_replacement.exit40

make_replacement.exit40:                          ; preds = %.make_replacement.exit40_crit_edge, %bb.aq
  %i.fe = phi ptr [ %.pre78, %.make_replacement.exit40_crit_edge ], [ %.014.i37, %bb.aq ]
  %i.ff = phi i64 [ %.pre77, %.make_replacement.exit40_crit_edge ], [ %.0.i38, %bb.aq ]
  %i.fg = phi ptr [ %i.en, %.make_replacement.exit40_crit_edge ], [ %.012.i39, %bb.aq ]
  %i.fh = call i32 @rb_econv_insert_output(ptr noundef nonnull %0, ptr noundef %i.fg, i64 noundef %i.ff, ptr noundef %i.fe), !inline_history !83
  %.not46 = icmp eq i32 %i.fh, -1
  br i1 %.not46, label %.loopexit47, label %.backedge.backedge

end_hunk_0
