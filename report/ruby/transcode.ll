inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@rb_econv_close:bb.a
bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %bb.g

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
define dso_local noundef i32 @rb_econv_convert(ptr noundef initializes((4, 8)) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
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
  br label %.thread221.i

ruby_nonempty_memcpy.exit197.i:                   ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull readonly align 1 %i.ag, i64 noundef range(i64 1, 0) %i.an, i1 noundef false) #19
  %i.ar = load ptr, ptr %.020, align 8, !tbaa !29
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.an
  store ptr %i.as, ptr %.020, align 8, !tbaa !29
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !73  ; 2 uses
  store ptr %i.at, ptr %i.n, align 8, !tbaa !75
  store ptr %i.at, ptr %i.m, align 8, !tbaa !74
  br i1 %.not182.i, label %bb.g, label %.thread221.i

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
  br label %.thread221.i

bb.i:                                             ; preds = %bb.g
  br i1 %.not188.i, label %ruby_nonempty_memcpy.exit200.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.au, ptr noundef nonnull readonly align 1 %i.ax, i64 noundef range(i64 1, 0) %..i, i1 noundef false) #19
  %.pre225.i = load ptr, ptr %.020, align 8, !tbaa !29
  br label %ruby_nonempty_memcpy.exit200.i

ruby_nonempty_memcpy.exit200.i:                   ; preds = %bb.j, %bb.i
  %i.be = phi ptr [ %.pre225.i, %bb.j ], [ %i.au, %bb.i ]
  %i.bf = getelementptr i8, ptr %i.be, i64 %..i
  store ptr %i.bf, ptr %.020, align 8, !tbaa !29
  %i.bg = load ptr, ptr %spec.select24, align 8, !tbaa !29
  %i.bh = getelementptr i8, ptr %i.bg, i64 %..i   ; 2 uses
  store ptr %i.bh, ptr %spec.select24, align 8, !tbaa !29
  %.not190.i = icmp eq ptr %i.bh, %spec.select
  br i1 %.not190.i, label %select.unfold219.i, label %.thread221.i

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
  %.pre224.i = load i32, ptr %i.i, align 8, !tbaa !48
  %.pre226.i = add i32 %.pre224.i, -1
  %.pre227.i = sext i32 %.pre226.i to i64
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
  %.pre-phi228.i = phi i64 [ %i.bk, %bb.n ], [ %.pre227.i, %bb.o ]
  %i.ch = phi ptr [ %i.bi, %bb.n ], [ %.pre.i, %bb.o ]
  store ptr %.019, ptr %.020, align 8, !tbaa !29
  %i.ci = getelementptr [48 x i8], ptr %i.ch, i64 %.pre-phi228.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !76
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.bs
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !76
  br label %.thread221.i

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
  br i1 %i.cs, label %.thread221.i, label %select.unfold219.i

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

.thread221.i:                                     ; preds = %bb.u, %.thread214.i, %ruby_nonempty_memcpy.exit200.i, %bb.h, %ruby_nonempty_memcpy.exit197.i, %ruby_nonempty_memcpy.exit.i
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

rb_econv_convert0.exit:                           ; preds = %.thread221.i, %select.unfold219.i, %bb.z
  %.5223.i = phi i32 [ %.5.ph.i, %.thread221.i ], [ %.5.i, %bb.z ], [ %.5.i, %select.unfold219.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  switch i32 %.5223.i, label %.loopexit47 [
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
end_hunk_0
begin_hunk_1_@rb_econv_insert_output
define dso_local noundef range(i32 -1, 1) i32 @rb_econv_insert_output(ptr nofree noundef captures(none) initializes((4, 8)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %rb_econv_encoding_to_insert_output.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !14
  br label %rb_econv_encoding_to_insert_output.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  br label %rb_econv_encoding_to_insert_output.exit

rb_econv_encoding_to_insert_output.exit:          ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ @.str.3, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.m = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !58
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %rb_econv_encoding_to_insert_output.exit
  %i.o = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef %.0.i, ptr noundef %3) #22
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = call fastcc ptr @allocate_converted_string(ptr noundef %3, ptr noundef %.0.i, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef %i.b) ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.ad, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g
  %.pr = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.f
  %i.s = phi i64 [ %.pr, %thread-pre-split ], [ %2, %bb.f ] ; 7 uses
  %.0117 = phi ptr [ %i.q, %thread-pre-split ], [ %1, %bb.f ] ; 6 uses
  %i.t = getelementptr i8, ptr %0, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !48   ; 3 uses
  %i.v = add i32 %i.u, -1                         ; 2 uses
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 48
  %i.y = getelementptr i8, ptr %0, i64 56
  %i.z = getelementptr i8, ptr %0, i64 64
  %i.aa = getelementptr i8, ptr %0, i64 72
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ad = sext i32 %i.v to i64
  %i.ae = getelementptr [48 x i8], ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr i8, ptr %i.ag, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.af, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !87
  %i.am = add i64 %i.al, %i.s                     ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.s
  br i1 %i.an, label %bb.ac, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %i.v, 0
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %0, i64 48
  %i.aq = getelementptr i8, ptr %0, i64 56
  %i.ar = getelementptr i8, ptr %0, i64 64
  %i.as = getelementptr i8, ptr %0, i64 72
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.at = add i32 %i.u, -2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [48 x i8], ptr %i.ac, i64 %i.au ; 4 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %i.ay = getelementptr i8, ptr %i.av, i64 24
  %i.az = getelementptr i8, ptr %i.av, i64 32
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.ae, i64 8
  %i.bb = getelementptr i8, ptr %i.ae, i64 16
  %i.bc = getelementptr i8, ptr %i.ae, i64 24
  %i.bd = getelementptr i8, ptr %i.ae, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.i
  %.0124 = phi ptr [ %i.z, %bb.i ], [ %i.ar, %bb.m ], [ %i.ay, %bb.n ], [ %i.bc, %bb.o ] ; 10 uses
  %.0123 = phi ptr [ %i.aa, %bb.i ], [ %i.as, %bb.m ], [ %i.az, %bb.n ], [ %i.bd, %bb.o ] ; 3 uses
  %.0122 = phi i64 [ %i.s, %bb.i ], [ %i.am, %bb.m ], [ %i.am, %bb.n ], [ %i.s, %bb.o ] ; 6 uses
  %.0120 = phi ptr [ %i.y, %bb.i ], [ %i.aq, %bb.m ], [ %i.ax, %bb.n ], [ %i.bb, %bb.o ] ; 5 uses
  %.0119 = phi ptr [ %i.x, %bb.i ], [ %i.ap, %bb.m ], [ %i.aw, %bb.n ], [ %i.ba, %bb.o ] ; 5 uses
  %.0118 = phi ptr [ null, %bb.i ], [ %i.af, %bb.m ], [ %i.af, %bb.n ], [ %i.af, %bb.o ] ; 5 uses
  %i.be = load ptr, ptr %.0119, align 8, !tbaa !29 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %.0122) #21 ; 5 uses
  store ptr %i.bg, ptr %.0119, align 8, !tbaa !29
  store ptr %i.bg, ptr %.0120, align 8, !tbaa !29
  store ptr %i.bg, ptr %.0124, align 8, !tbaa !29
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.0122
  br label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %.0123, align 8, !tbaa !29
  %i.bj = load ptr, ptr %.0124, align 8, !tbaa !29 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.bm, %.0122
  br i1 %i.bn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %.0120, align 8, !tbaa !29 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bl, %i.bp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.be, ptr noundef nonnull align 1 %i.bo, i64 noundef %i.bq, i1 noundef false) #19
  %i.br = load ptr, ptr %.0119, align 8, !tbaa !29 ; 3 uses
  %i.bs = load ptr, ptr %.0124, align 8, !tbaa !29
  %i.bt = load ptr, ptr %.0120, align 8, !tbaa !29
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.br, i64 %i.bw  ; 3 uses
  store ptr %i.bx, ptr %.0124, align 8, !tbaa !29
  store ptr %i.br, ptr %.0120, align 8, !tbaa !29
  %i.by = load ptr, ptr %.0123, align 8, !tbaa !29
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp ult i64 %i.cb, %.0122
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = add i64 %i.bw, %.0122                   ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %.0122
  br i1 %i.ce, label %bb.ac, label %.thread

.thread:                                          ; preds = %bb.t
  %i.cf = call nonnull ptr @ruby_xrealloc(ptr noundef %i.br, i64 noundef %i.cd) #24 ; 4 uses
  store ptr %i.cf, ptr %.0120, align 8, !tbaa !29
  %i.cg = load ptr, ptr %.0124, align 8, !tbaa !29
  %i.ch = load ptr, ptr %.0119, align 8, !tbaa !29
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.ck  ; 2 uses
  store ptr %i.cl, ptr %.0124, align 8, !tbaa !29
  store ptr %i.cf, ptr %.0119, align 8, !tbaa !29
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cd
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %.thread
  %.sink = phi ptr [ %i.cm, %.thread ], [ %i.bh, %bb.q ]
  %.ph = phi ptr [ %i.cl, %.thread ], [ %i.bg, %bb.q ]
  store ptr %.sink, ptr %.0123, align 8, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.r, %bb.s
  %i.cn = phi ptr [ %i.bx, %bb.s ], [ %i.bj, %bb.r ], [ %.ph, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cn, ptr noundef nonnull readonly align 1 %.0117, i64 noundef range(i64 1, 0) %i.s, i1 noundef false) #19
  %.pre = load ptr, ptr %.0124, align 8, !tbaa !29
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.u, %bb.v
  %i.co = phi ptr [ %.pre, %bb.v ], [ %i.cn, %bb.u ]
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.s   ; 3 uses
  store ptr %i.cp, ptr %.0124, align 8, !tbaa !29
  %.not = icmp eq ptr %.0118, null
  br i1 %.not, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.cq = load ptr, ptr %.0118, align 8, !tbaa !62 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 68
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !64
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr i8, ptr %i.cq, i64 60
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !69
  %i.cw = icmp slt i32 %i.cv, 9
  %i.cx = getelementptr i8, ptr %.0118, i64 56    ; 2 uses
  br i1 %i.cw, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !30
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.cz = phi ptr [ %i.cy, %bb.y ], [ %i.cx, %bb.x ]
  %i.da = getelementptr i8, ptr %.0118, i64 48    ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !87 ; 2 uses
  %.not.i133 = icmp eq i64 %i.db, 0
  br i1 %.not.i133, label %ruby_nonempty_memcpy.exit135, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr i8, ptr %.0118, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !88
  %i.de = getelementptr i8, ptr %i.cz, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cp, ptr noundef nonnull readonly align 1 %i.de, i64 noundef range(i64 1, 0) %i.db, i1 noundef false) #19
  %.pre137 = load i64, ptr %i.da, align 8, !tbaa !87
  %.pre138 = load ptr, ptr %.0124, align 8, !tbaa !29
  br label %ruby_nonempty_memcpy.exit135

ruby_nonempty_memcpy.exit135:                     ; preds = %bb.z, %bb.aa
  %i.df = phi ptr [ %.pre138, %bb.aa ], [ %i.cp, %bb.z ]
  %i.dg = phi i64 [ %.pre137, %bb.aa ], [ 0, %bb.z ]
  %i.dh = getelementptr i8, ptr %i.df, i64 %i.dg
  store ptr %i.dh, ptr %.0124, align 8, !tbaa !29
  store i64 0, ptr %i.da, align 8, !tbaa !87
  br label %bb.ab

bb.ab:                                            ; preds = %ruby_nonempty_memcpy.exit135, %bb.w, %ruby_nonempty_memcpy.exit
  %i.di = icmp ne ptr %.0117, %1
  %i.dj = icmp ne ptr %.0117, %i.a
  %or.cond = and i1 %i.di, %i.dj
  br i1 %or.cond, label %.sink.split148, label %bb.ad

bb.ac:                                            ; preds = %bb.t, %bb.k
  %i.dk = icmp ne ptr %.0117, %1
  %i.dl = icmp ne ptr %.0117, %i.a
  %or.cond5 = and i1 %i.dk, %i.dl
  br i1 %or.cond5, label %.sink.split148, label %bb.ad

.sink.split148:                                   ; preds = %bb.ac, %bb.ab
  %.0.ph = phi i32 [ 0, %bb.ab ], [ -1, %bb.ac ]
  call void @ruby_xfree(ptr noundef %.0117) #19
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split148, %bb.ac, %bb.ab, %bb.g, %rb_econv_encoding_to_insert_output.exit
  %.0 = phi i32 [ 0, %rb_econv_encoding_to_insert_output.exit ], [ 0, %bb.ab ], [ -1, %bb.g ], [ -1, %bb.ac ], [ %.0.ph, %.sink.split148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @allocate_converted_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef range(i64 0, 4097) %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %. = tail call i64 @llvm.umax.i64(i64 %3, i64 1) ; 2 uses
  %.050 = select i1 %.not, i64 %., i64 %5         ; 2 uses
  %i.c = tail call ptr @rb_econv_open(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %.) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.049 = phi ptr [ %i.e, %bb.c ], [ %4, %bb.b ]  ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !29
  store ptr %.049, ptr %i.b, align 8, !tbaa !29
  %i.f = getelementptr i8, ptr %2, i64 %3
  %i.g = getelementptr i8, ptr %.049, i64 %.050
  br label %bb.e

bb.e:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.d
  %.sink = phi ptr [ %i.s, %ruby_nonempty_memcpy.exit ], [ %i.g, %bb.d ]
  %.2.sink = phi ptr [ %.2, %ruby_nonempty_memcpy.exit ], [ %.049, %bb.d ] ; 7 uses
  %.151 = phi i64 [ %i.n, %ruby_nonempty_memcpy.exit ], [ %.050, %bb.d ] ; 4 uses
  %i.h = call i32 @rb_econv_convert(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef %i.f, ptr noundef nonnull %i.b, ptr noundef %.sink, i32 noundef 0)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.2.sink to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  switch i32 %i.h, label %bb.l [
    i32 2, label %bb.f
    i32 4, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = icmp slt i64 %.151, 0
  br i1 %i.m, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw i64 %.151, 1                     ; 4 uses
  %i.o = icmp eq ptr %.2.sink, %4
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.n) #21 ; 3 uses
  %.not.i = icmp eq i64 %.151, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.p, ptr noundef nonnull readonly align 1 %.2.sink, i64 noundef range(i64 1, 0) %.151, i1 noundef false) #19
  br label %ruby_nonempty_memcpy.exit

bb.j:                                             ; preds = %bb.g
  %i.q = call nonnull ptr @ruby_xrealloc(ptr noundef nonnull %.2.sink, i64 noundef %i.n) #24
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.i, %bb.h, %bb.j
  %.2 = phi ptr [ %i.q, %bb.j ], [ %i.p, %bb.h ], [ %i.p, %bb.i ] ; 3 uses
  %i.r = getelementptr i8, ptr %.2, i64 %i.l
  store ptr %i.r, ptr %i.b, align 8, !tbaa !29
  %i.s = getelementptr i8, ptr %.2, i64 %i.n
  br label %bb.e, !llvm.loop !89

bb.k:                                             ; preds = %bb.e
  call void @rb_econv_close(ptr noundef nonnull %i.c)
  store i64 %i.l, ptr %6, align 8, !tbaa !25
  br label %bb.o

bb.l:                                             ; preds = %bb.e, %bb.f
  %.not57 = icmp eq ptr %.2.sink, %4
  br i1 %.not57, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @ruby_xfree(ptr noundef nonnull %.2.sink) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @rb_econv_close(ptr noundef nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.k
  %.0 = phi ptr [ %.2.sink, %bb.k ], [ null, %bb.n ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0
}

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: allocsize(1)
declare nonnull ptr @ruby_xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_econv_memsize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81
  %i.e = add i64 %i.d, 184
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.021 = phi i64 [ %i.e, %bb.b ], [ 184, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.125 = phi i64 [ %.021, %.lr.ph ], [ %.2, %bb.f ]
  %i.k = getelementptr [48 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %.val = load ptr, ptr %i.l, align 8, !tbaa !62  ; 3 uses
  %i.m = getelementptr i8, ptr %.val, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67   ; 2 uses
  %i.o = icmp ugt i64 %i.n, 8
  %i.p = add i64 %i.n, 96
  %spec.select.i = select i1 %i.o, i64 %i.p, i64 96
  %i.q = getelementptr i8, ptr %.val, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 8
  %narrow.i = select i1 %i.s, i32 %i.r, i32 0
  %i.t = zext i32 %narrow.i to i64
  %i.u = getelementptr i8, ptr %.val, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !70   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 8
  %narrow1.i = select i1 %i.w, i32 %i.v, i32 0
  %i.x = zext i32 %narrow1.i to i64
  %.1.i = add i64 %spec.select.i, %.125
  %.2.i = add i64 %.1.i, %i.t
  %i.y = add i64 %.2.i, %i.x                      ; 2 uses
  %i.z = getelementptr i8, ptr %i.k, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71  ; 2 uses
  %.not23 = icmp eq ptr %i.aa, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.k, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.y, %i.ae
  %i.ag = add i64 %i.af, %i.ad
  br label %bb.f
end_hunk_1
begin_hunk_2_@rb_trans_conv:bb.a
  %i.aw = getelementptr i8, ptr %i.ah, i64 24     ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !77
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ptrtoint ptr %i.at to i64
  %.neg.i = sub i64 %i.bb, %i.az
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.at, ptr noundef nonnull align 1 %i.av, i64 noundef %i.ba, i1 noundef false) #19
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !71
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !76
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !77
  %i.be = getelementptr i8, ptr %i.bd, i64 %.neg.i
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = getelementptr i8, ptr %i.ah, i64 24
  %i.bg = getelementptr i8, ptr %i.ah, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !90
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph._crit_edge.i
  %.074.i = phi ptr [ %i.bf, %bb.j ], [ %3, %.lr.ph._crit_edge.i ] ; 3 uses
  %.073.i = phi ptr [ %i.bh, %bb.j ], [ %4, %.lr.ph._crit_edge.i ]
  %i.bi = load i32, ptr %i.aa, align 4, !tbaa !50
  %.not80.i = icmp eq i32 %i.bi, %.pre-phi.i
  %i.bj = or i32 %.16298.i, 131072
  %spec.select.i = select i1 %.not80.i, i32 %.16298.i, i32 %i.bj ; 2 uses
  %i.bk = and i32 %.16298.i, 262144
  %.not81.i = icmp eq i32 %i.bk, 0
  %or.cond.i = select i1 %i.ai, i1 true, i1 %.not81.i
  %i.bl = and i32 %.16298.i, -262145
  %.266.i = select i1 %or.cond.i, i32 %.16597.i, i32 1 ; 2 uses
  %.263.i = select i1 %i.ai, i32 %.16298.i, i32 %i.bl ; 2 uses
  %i.bm = and i32 %spec.select.i, -262145
  %.172.i = select i1 %i.ai, i32 %i.bm, i32 %spec.select.i
  %i.bn = load ptr, ptr %.075.i, align 8, !tbaa !29
  %i.bo = load ptr, ptr %.074.i, align 8, !tbaa !29
  %i.bp = load ptr, ptr %i.ah, align 8, !tbaa !60
  %i.bq = call fastcc range(i32 0, 7) i32 @transcode_restartable(ptr noundef nonnull %.075.i, ptr noundef nonnull %.074.i, ptr noundef %.076.i, ptr noundef %.073.i, ptr noundef %i.bp, i32 noundef %.172.i) ; 2 uses
  %i.br = getelementptr i8, ptr %i.ah, i64 40
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !187
  %i.bs = load ptr, ptr %.075.i, align 8, !tbaa !29
  %.not83.i = icmp eq ptr %i.bn, %i.bs
  br i1 %.not83.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %.074.i, align 8, !tbaa !29
  %.not84.i = icmp eq ptr %i.bo, %i.bt
  br i1 %.not84.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.269.i = phi i32 [ 1, %bb.m ], [ %.16896.i, %bb.l ] ; 2 uses
  switch i32 %i.bq, label %._crit_edge.i [
    i32 0, label %trans_sweep.exit
    i32 6, label %trans_sweep.exit
    i32 1, label %trans_sweep.exit
    i32 5, label %trans_sweep.exit
    i32 4, label %bb.o
  ]

._crit_edge.i:                                    ; preds = %bb.n
  %.pre110.i = add nsw i64 %indvars.iv.i, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = add nsw i64 %indvars.iv.i, 1            ; 2 uses
  %i.bv = trunc nsw i64 %i.bu to i32
  store i32 %i.bv, ptr %i.aa, align 4, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre110.i, %._crit_edge.i ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bw = load i32, ptr %i.h, align 8, !tbaa !48  ; 4 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next.pre-phi.i, %i.bx
  br i1 %i.by, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !191

trans_sweep.exit:                                 ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %.not71 = icmp eq i32 %.pre-phi.i, -1
  %.pre.pre = load i32, ptr %i.h, align 8, !tbaa !48 ; 4 uses
  br i1 %.not71, label %.critedge, label %bb.q

bb.q:                                             ; preds = %trans_sweep.exit
  %i.bz = add nuw i32 %.pre-phi.i, 1
  %i.ca = add i32 %.pre.pre, -1
  %.not72 = icmp eq i32 %.pre-phi.i, %i.ca
  br i1 %.not72, label %.critedge, label %.preheader.i.backedge

.critedge:                                        ; preds = %trans_sweep.exit, %bb.q, %.loopexit.i, %.preheader.i
  %i.cb = phi i32 [ %i.bw, %.loopexit.i ], [ %i.ac, %.preheader.i ], [ %.pre.pre, %bb.q ], [ %.pre.pre, %trans_sweep.exit ]
  %i.cc = zext i32 %i.cb to i64
  %indvars.iv.next112147 = add nsw i64 %i.cc, -1  ; 2 uses
  %indvars148 = trunc i64 %indvars.iv.next112147 to i32 ; 2 uses
  %i.cd = icmp sgt i32 %indvars148, -1
  br i1 %i.cd, label %.lr.ph151.preheader, label %._crit_edge152

.lr.ph151.preheader:                              ; preds = %.critedge
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !49
  br label %.lr.ph151

bb.r:                                             ; preds = %.lr.ph151
  %indvars.iv.next112 = add nsw i64 %indvars.iv.next112149, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next112 to i32 ; 2 uses
  %i.cf = icmp sgt i32 %indvars, -1
  br i1 %i.cf, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %bb.r
  %indvars150 = phi i32 [ %indvars, %bb.r ], [ %indvars148, %.lr.ph151.preheader ]
  %indvars.iv.next112149 = phi i64 [ %indvars.iv.next112, %bb.r ], [ %indvars.iv.next112147, %.lr.ph151.preheader ] ; 2 uses
  %i.cg = and i64 %indvars.iv.next112149, 2147483647
  %i.ch = getelementptr [48 x i8], ptr %i.ce, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 40
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !187 ; 2 uses
  switch i32 %i.cj, label %.loopexit [
    i32 3, label %bb.r
    i32 6, label %bb.s
    i32 5, label %bb.s
    i32 1, label %bb.s
    i32 0, label %bb.s
  ]

bb.s:                                             ; preds = %.lr.ph151, %.lr.ph151, %.lr.ph151, %.lr.ph151
  %i.ck = getelementptr i8, ptr %i.ch, i64 40
  store i32 3, ptr %i.ck, align 8, !tbaa !187
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph151, %bb.s
  store i32 %indvars150, ptr %6, align 4, !tbaa !7
  br label %bb.t

._crit_edge152:                                   ; preds = %bb.r, %.critedge
  store i32 -1, ptr %6, align 4, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge152, %.loopexit, %bb.f
  %.1 = phi i32 [ %i.cj, %.loopexit ], [ 3, %._crit_edge152 ], [ %., %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 7) i32 @transcode_restartable(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %4, i64 48         ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !87   ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = alloca i8, i64 %i.c, align 16            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %i.d, ptr %i.a, align 8, !tbaa !29
  %i.e = getelementptr i8, ptr %i.d, i64 %i.c     ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !62
  %i.g = getelementptr i8, ptr %i.f, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69
  %i.i = icmp slt i32 %i.h, 9
  %i.j = getelementptr i8, ptr %4, i64 56         ; 2 uses
  br i1 %i.i, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %i.m = getelementptr i8, ptr %4, i64 40         ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !88
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.d, ptr noundef nonnull readonly align 1 %i.o, i64 noundef range(i64 1, 0) %i.c, i1 noundef false) #19
  store i64 0, ptr %i.b, align 8, !tbaa !87
  %i.p = or i32 %5, 131072
  %i.q = call fastcc i32 @transcode_restartable0(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %i.e, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %i.p) ; 2 uses
  %.not36.not = icmp eq i32 %i.q, 3
  br i1 %.not36.not, label %.thread, label %bb.d

.thread:                                          ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.d:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.r = load ptr, ptr %4, align 8, !tbaa !62
  %i.s = getelementptr i8, ptr %i.r, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !69
  %i.u = icmp slt i32 %i.t, 9
  %i.v = getelementptr i8, ptr %4, i64 56         ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  %6 = load i64, ptr %i.b, align 8, !tbaa !87     ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.z = ptrtoint ptr %i.e to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %.not.i37 = icmp eq ptr %i.e, %i.y
  br i1 %.not.i37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !88
  %i.ad = getelementptr i8, ptr %i.x, i64 %i.ac
  %7 = getelementptr i8, ptr %i.ad, i64 %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %7, ptr noundef nonnull readonly align 1 %i.y, i64 noundef range(i64 1, 0) %i.ab, i1 noundef false) #19
  %.pre = load i64, ptr %i.b, align 8, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %8 = phi i64 [ %.pre, %bb.g ], [ %6, %bb.f ]
  %i.ae = add i64 %8, %i.ab
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.j

bb.i:                                             ; preds = %.thread, %bb.a
  %i.af = call fastcc i32 @transcode_restartable0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.af, %bb.i ], [ %i.q, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 7) i32 @transcode_restartable0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !62     ; 19 uses
  %i.b = getelementptr i8, ptr %i.a, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !29     ; 57 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !29     ; 31 uses
  %i.f = getelementptr i8, ptr %4, i64 12         ; 35 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !186
  switch i32 %i.g, label %.loopexit [
    i32 34, label %bb.jl
    i32 33, label %bb.ii
    i32 32, label %bb.et
    i32 3, label %bb.t
    i32 4, label %bb.la
    i32 5, label %bb.aq
    i32 6, label %bb.lv
    i32 31, label %bb.el
    i32 8, label %bb.kd
    i32 9, label %bb.ax
    i32 10, label %bb.be
    i32 11, label %bb.bt
    i32 12, label %bb.cq
    i32 13, label %bb.fw
    i32 14, label %bb.gw
    i32 15, label %bb.cb
    i32 16, label %bb.cj
    i32 17, label %bb.cy
    i32 18, label %bb.dg
    i32 19, label %bb.do
    i32 20, label %bb.gn
    i32 21, label %bb.bm
    i32 22, label %bb.hz
    i32 23, label %bb.lr
    i32 24, label %bb.d
    i32 25, label %bb.aj
    i32 26, label %bb.jx
    i32 30, label %bb.ed
    i32 28, label %bb.fd
    i32 29, label %bb.dv
  ], !llvm.loop !193

.loopexit:                                        ; preds = %bb.l, %bb.gg, %bb.ga, %bb.hs, %bb.hg, %bb.je, %bb.is, %bb.ew, %bb.s, %bb.a, %bb.eu, %bb.dp, %bb.ck, %bb.bn, %bb.ay
  %.01129 = phi ptr [ %i.d, %bb.a ], [ %.31132, %bb.s ], [ %.291158, %bb.je ], [ %.61135, %bb.ay ], [ %.81137, %bb.bn ], [ %.111140, %bb.ck ], [ %.151144, %bb.dp ], [ %.191148, %bb.eu ], [ %.201149, %bb.ew ], [ %.221151, %bb.ga ], [ %.231152, %bb.gg ], [ %.251154, %bb.hg ], [ %.261155, %bb.hs ], [ %.281157, %bb.is ], [ %.21131, %bb.l ] ; 3 uses
  %.01093 = phi ptr [ %i.e, %bb.a ], [ %.31096, %bb.s ], [ %.291122, %bb.je ], [ %i.gs, %bb.ay ], [ %i.ir, %bb.bn ], [ %i.lp, %bb.ck ], [ %i.pn, %bb.dp ], [ %i.to, %bb.eu ], [ %.201113, %bb.ew ], [ %i.ye, %bb.ga ], [ %.231116, %bb.gg ], [ %i.acm, %bb.hg ], [ %.261119, %bb.hs ], [ %i.ahu, %bb.is ], [ %.21095, %bb.l ] ; 4 uses
  %i.h = getelementptr i8, ptr %4, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !88
  %i.i = getelementptr i8, ptr %i.a, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !194
  %i.k = getelementptr i8, ptr %4, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !195
  %i.l = and i32 %5, 262144
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.m = load ptr, ptr %1, align 8, !tbaa !29
  %.not1214 = icmp eq ptr %i.m, %.01093
  br i1 %.not1214, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 24, ptr %i.f, align 4, !tbaa !186
  store ptr %.01129, ptr %0, align 8, !tbaa !29
  store ptr %.01093, ptr %1, align 8, !tbaa !29
  br label %bb.ma

bb.d:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.11094 = phi ptr [ %.01093, %bb.b ], [ %.01093, %.loopexit ], [ %i.e, %bb.a ] ; 4 uses
  %.01091 = phi ptr [ %.01129, %bb.b ], [ %.01129, %.loopexit ], [ %i.d, %bb.a ] ; 8 uses
  %.not1215 = icmp ugt ptr %2, %.01091
  br i1 %.not1215, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %5, 131072
  %.not1230 = icmp eq i32 %i.n, 0
  br i1 %.not1230, label %bb.kx, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %i.f, align 4, !tbaa !186
  store ptr %.01091, ptr %0, align 8, !tbaa !29
  store ptr %.11094, ptr %1, align 8, !tbaa !29
  br label %bb.ma

bb.g:                                             ; preds = %bb.d
  %i.o = load i8, ptr %.01091, align 1, !tbaa !30 ; 2 uses
  %i.p = getelementptr i8, ptr %4, i64 32
  store i8 %i.o, ptr %i.p, align 8, !tbaa !196
  %.phi.trans.insert = getelementptr i8, ptr %4, i64 16
  %.pre1291 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !195
  br label %bb.h

bb.h:                                             ; preds = %bb.ar, %bb.g
  %i.q = phi i32 [ %.pre1291, %bb.g ], [ %i.fr, %bb.ar ]
  %i.r = phi i8 [ %i.o, %bb.g ], [ %i.fn, %bb.ar ] ; 3 uses
  %.01091.pn = phi ptr [ %.01091, %bb.g ], [ %.51134, %bb.ar ] ; 3 uses
  %.21095 = phi ptr [ %.11094, %bb.g ], [ %.51098, %bb.ar ] ; 21 uses
  %.1 = phi ptr [ %.01091, %bb.g ], [ %.4, %bb.ar ] ; 28 uses
  %.01091.pn1288 = ptrtoint ptr %.01091.pn to i64
  %.21131 = getelementptr i8, ptr %.01091.pn, i64 1 ; 20 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr %i.a, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !197
  %i.v = getelementptr i8, ptr %i.a, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198  ; 2 uses
  %i.x = lshr i32 %i.q, 2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !30  ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = icmp ult i8 %i.r, %i.ad
  br i1 %i.af, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30
  %i.ai = icmp ult i8 %i.ah, %i.r
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.z, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = lshr i32 %i.ak, 2
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr %i.w, i64 %i.am
  %i.ao = add nuw nsw i64 %i.s, 2
  %i.ap = sub nsw i64 %i.ao, %i.ae
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.an, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = zext i32 %i.au to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sink = phi i64 [ %i.av, %bb.j ], [ 7, %bb.i ], [ 7, %bb.h ] ; 2 uses
  %i.aw = getelementptr i8, ptr %4, i64 24
  store i64 %.sink, ptr %i.aw, align 8, !tbaa !199
  %i.ax = getelementptr i8, ptr %4, i64 24
  %i.ay = ptrtoint ptr %.1 to i64                 ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 40        ; 11 uses
  %i.ba = getelementptr i8, ptr %4, i64 56        ; 10 uses
  %.not.i.i = icmp eq ptr %.21131, %.1
  %i.bb = ptrtoint ptr %.21131 to i64
  %i.bc = sub i64 %i.bb, %i.ay                    ; 13 uses
  %i.bd = getelementptr i8, ptr %i.a, i64 104
  %i.be = getelementptr i8, ptr %4, i64 88        ; 4 uses
  %i.bf = getelementptr i8, ptr %i.a, i64 96
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %bb.k
  %i.bg = phi i64 [ %storemerge, %.backedge ], [ %.sink, %bb.k ] ; 3 uses
  %i.bh = and i64 %i.bg, 31
  switch i64 %i.bh, label %bb.kg [
    i64 1, label %bb.m
    i64 0, label %bb.ac
    i64 4, label %bb.ac
    i64 8, label %bb.ac
    i64 12, label %bb.ac
    i64 16, label %bb.ac
    i64 20, label %bb.ac
    i64 24, label %bb.ac
    i64 28, label %bb.ac
    i64 10, label %.loopexit
    i64 2, label %.loopexit1279
    i64 3, label %.loopexit1280
    i64 5, label %.loopexit1281
    i64 6, label %.loopexit1282
    i64 18, label %.loopexit1283
    i64 17, label %bb.ev
    i64 11, label %bb.ff
    i64 13, label %bb.fi
    i64 14, label %.loopexit1284
    i64 15, label %.loopexit1285
    i64 19, label %.loopexit1286
    i64 7, label %bb.jp
    i64 9, label %bb.ks
  ]

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr i8, ptr %4, i64 64        ; 9 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !200
end_hunk_2
begin_hunk_3_@transcode_restartable0:bb.a
  br i1 %i.sq, label %bb.eo, label %bb.eu

bb.eo:                                            ; preds = %bb.en
  store i32 32, ptr %i.f, align 4, !tbaa !186
  %i.sr = ptrtoint ptr %.191148 to i64
  %i.ss = ptrtoint ptr %.18 to i64
  %i.st = sub i64 %i.sr, %i.ss                    ; 3 uses
  %i.su = icmp sgt i64 %i.st, 0
  br i1 %i.su, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.sv = load ptr, ptr %4, align 8, !tbaa !62
  %i.sw = getelementptr i8, ptr %i.sv, i64 60
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !69
  %i.sy = icmp slt i32 %i.sx, 9
  %i.sz = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.sy, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !30
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq
  %i.tb = phi ptr [ %i.ta, %bb.eq ], [ %i.sz, %bb.ep ]
  %i.tc = getelementptr i8, ptr %4, i64 40
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !88
  %i.te = getelementptr i8, ptr %i.tb, i64 %i.td
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.te, ptr noundef nonnull align 1 %.18, i64 noundef %i.st, i1 noundef false) #19
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eo
  store ptr %.191148, ptr %0, align 8, !tbaa !29
  store ptr %.191112, ptr %1, align 8, !tbaa !29
  %i.tf = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !88
  %i.th = add i64 %i.tg, %i.st
  store i64 %i.th, ptr %i.tf, align 8, !tbaa !88
  br label %bb.ma

bb.et:                                            ; preds = %bb.a
  %.pre1337 = ptrtoint ptr %3 to i64
  br label %bb.en, !llvm.loop !218

bb.eu:                                            ; preds = %bb.en
  %i.ti = getelementptr i8, ptr %4, i64 24
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !199
  %i.tk = trunc i64 %i.tj to i32
  %i.tl = lshr i32 %i.tk, 28
  %i.tm = trunc nuw nsw i32 %i.tl to i8
  %i.tn = or disjoint i8 %i.tm, 48
  %i.to = getelementptr i8, ptr %.191112, i64 1
  store i8 %i.tn, ptr %.191112, align 1, !tbaa !30
  br label %.loopexit

bb.ev:                                            ; preds = %bb.l
  %i.tp = getelementptr i8, ptr %4, i64 36
  store i32 0, ptr %i.tp, align 4, !tbaa !219
  br label %bb.ew

bb.ew:                                            ; preds = %bb.fe, %bb.ev
  %i.tq = phi i64 [ %i.bg, %bb.ev ], [ %.pre1316, %bb.fe ]
  %i.tr = phi i32 [ 0, %bb.ev ], [ %i.vj, %bb.fe ]
  %.201149 = phi ptr [ %.21131, %bb.ev ], [ %.211150, %bb.fe ] ; 2 uses
  %.201113 = phi ptr [ %.21095, %bb.ev ], [ %i.vh, %bb.fe ] ; 2 uses
  %.19 = phi ptr [ %.1, %bb.ev ], [ %.20, %bb.fe ]
  %i.ts = getelementptr i8, ptr %i.a, i64 24
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !197
  %i.tu = lshr i64 %i.tq, 6
  %i.tv = getelementptr i8, ptr %i.tt, i64 %i.tu
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !30
  %i.tx = zext i8 %i.tw to i32
  %i.ty = add nuw nsw i32 %i.tx, 4
  %i.tz = icmp ult i32 %i.tr, %i.ty
  br i1 %i.tz, label %bb.ex, label %.loopexit

bb.ex:                                            ; preds = %bb.ew, %bb.fd
  %.211150 = phi ptr [ %.201149, %bb.ew ], [ %i.d, %bb.fd ] ; 3 uses
  %.211114 = phi ptr [ %.201113, %bb.ew ], [ %i.e, %bb.fd ] ; 4 uses
  %.20 = phi ptr [ %.19, %bb.ew ], [ %i.d, %bb.fd ] ; 3 uses
  %i.ua = ptrtoint ptr %3 to i64
  %i.ub = ptrtoint ptr %.211114 to i64
  %i.uc = sub i64 %i.ua, %i.ub
  %i.ud = icmp slt i64 %i.uc, 1
  br i1 %i.ud, label %bb.ey, label %bb.fe

bb.ey:                                            ; preds = %bb.ex
  store i32 28, ptr %i.f, align 4, !tbaa !186
  %i.ue = ptrtoint ptr %.211150 to i64
  %i.uf = ptrtoint ptr %.20 to i64
  %i.ug = sub i64 %i.ue, %i.uf                    ; 3 uses
  %i.uh = icmp sgt i64 %i.ug, 0
  br i1 %i.uh, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %i.ui = load ptr, ptr %4, align 8, !tbaa !62
  %i.uj = getelementptr i8, ptr %i.ui, i64 60
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !69
  %i.ul = icmp slt i32 %i.uk, 9
  %i.um = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.ul, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !30
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.uo = phi ptr [ %i.un, %bb.fa ], [ %i.um, %bb.ez ]
  %i.up = getelementptr i8, ptr %4, i64 40
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !88
  %i.ur = getelementptr i8, ptr %i.uo, i64 %i.uq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ur, ptr noundef nonnull align 1 %.20, i64 noundef %i.ug, i1 noundef false) #19
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ey
  store ptr %.211150, ptr %0, align 8, !tbaa !29
  store ptr %.211114, ptr %1, align 8, !tbaa !29
  %i.us = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !88
  %i.uu = add i64 %i.ut, %i.ug
  store i64 %i.uu, ptr %i.us, align 8, !tbaa !88
  br label %bb.ma

bb.fd:                                            ; preds = %bb.a
  br label %bb.ex, !llvm.loop !220

bb.fe:                                            ; preds = %bb.ex
  %i.uv = getelementptr i8, ptr %i.a, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !197
  %i.ux = getelementptr i8, ptr %4, i64 24        ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !199
  %i.uz = lshr i64 %i.uy, 6
  %i.va = getelementptr i8, ptr %i.uw, i64 %i.uz
  %i.vb = getelementptr i8, ptr %4, i64 36        ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !219
  %i.vd = add i32 %i.vc, 1
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr i8, ptr %i.va, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !30
  %i.vh = getelementptr i8, ptr %.211114, i64 1
  store i8 %i.vg, ptr %.211114, align 1, !tbaa !30
  %i.vi = load i32, ptr %i.vb, align 4, !tbaa !219
  %i.vj = add i32 %i.vi, 1                        ; 2 uses
  store i32 %i.vj, ptr %i.vb, align 4, !tbaa !219
  %.pre1316 = load i64, ptr %i.ux, align 8, !tbaa !199
  br label %bb.ew, !llvm.loop !221

bb.ff:                                            ; preds = %bb.l
  %i.vk = load ptr, ptr %i.bf, align 8, !tbaa !222
  %i.vl = load ptr, ptr %4, align 8, !tbaa !62
  %i.vm = getelementptr i8, ptr %i.vl, i64 72
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !67
  %i.vo = icmp ult i64 %i.vn, 9
  br i1 %i.vo, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.vp = load ptr, ptr %i.be, align 8, !tbaa !30
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %i.vq = phi ptr [ %i.vp, %bb.fg ], [ %i.be, %bb.ff ]
  %i.vr = tail call i64 %i.vk(ptr noundef %i.vq, i64 noundef %i.bg) #19
  br label %.backedge

.backedge:                                        ; preds = %bb.fh, %bb.fq
  %storemerge = phi i64 [ %i.wt, %bb.fq ], [ %i.vr, %bb.fh ] ; 2 uses
  store i64 %storemerge, ptr %i.ax, align 8, !tbaa !199
  br label %bb.l

bb.fi:                                            ; preds = %bb.l
  %i.vs = load ptr, ptr %0, align 8, !tbaa !29
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = sub i64 %i.ay, %i.vt
  %i.vv = load i64, ptr %i.az, align 8, !tbaa !88 ; 3 uses
  %i.vw = icmp slt i64 %i.vu, %i.vv
  br i1 %i.vw, label %bb.fj, label %bb.fo

bb.fj:                                            ; preds = %bb.fi
  %i.vx = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 60
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !69 ; 2 uses
  %i.wa = icmp slt i32 %i.vz, 9
  br i1 %i.wa, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.wb = load ptr, ptr %i.ba, align 8, !tbaa !30
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.wc = phi ptr [ %i.wb, %bb.fk ], [ %i.ba, %bb.fj ]
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wd = getelementptr i8, ptr %i.wc, i64 %i.vv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.wd, ptr noundef nonnull readonly align 1 %.1, i64 noundef range(i64 1, 0) %i.bc, i1 noundef false) #19
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !62  ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i, i64 60
  %.pre21.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !69
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.fm, %bb.fl
  %i.we = phi ptr [ %.pre.i, %bb.fm ], [ %i.vx, %bb.fl ] ; 2 uses
  %i.wf = phi i32 [ %.pre21.i, %bb.fm ], [ %i.vz, %bb.fl ]
  %i.wg = icmp slt i32 %i.wf, 9
  br i1 %i.wg, label %transcode_char_start.exit, label %bb.fn

bb.fn:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.wh = load ptr, ptr %i.ba, align 8, !tbaa !30
  br label %transcode_char_start.exit

bb.fo:                                            ; preds = %bb.fi
  %i.wi = sub i64 0, %i.vv
  %i.wj = getelementptr i8, ptr %.1, i64 %i.wi
  %.pre1314 = load ptr, ptr %4, align 8, !tbaa !62
  br label %transcode_char_start.exit

transcode_char_start.exit:                        ; preds = %ruby_nonempty_memcpy.exit.i, %bb.fn, %bb.fo
  %i.wk = phi ptr [ %.pre1314, %bb.fo ], [ %i.we, %bb.fn ], [ %i.we, %ruby_nonempty_memcpy.exit.i ]
  %.0.i = phi ptr [ %i.wj, %bb.fo ], [ %i.wh, %bb.fn ], [ %i.ba, %ruby_nonempty_memcpy.exit.i ]
  %i.wl = load i64, ptr %i.az, align 8, !tbaa !88
  %i.wm = add i64 %i.bc, %i.wl
  %i.wn = load ptr, ptr %i.bd, align 8, !tbaa !223
  %i.wo = getelementptr i8, ptr %i.wk, i64 72
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !67
  %i.wq = icmp ult i64 %i.wp, 9
  br i1 %i.wq, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %transcode_char_start.exit
  %i.wr = load ptr, ptr %i.be, align 8, !tbaa !30
  br label %bb.fq

bb.fq:                                            ; preds = %transcode_char_start.exit, %bb.fp
  %i.ws = phi ptr [ %i.wr, %bb.fp ], [ %i.be, %transcode_char_start.exit ]
  %i.wt = tail call i64 %i.wn(ptr noundef %i.ws, ptr noundef %.0.i, i64 noundef %i.wm) #19
  br label %.backedge

.loopexit1284:                                    ; preds = %bb.l, %bb.fw
  %.221151 = phi ptr [ %i.d, %bb.fw ], [ %.21131, %bb.l ] ; 4 uses
  %.221115 = phi ptr [ %i.e, %bb.fw ], [ %.21095, %bb.l ] ; 5 uses
  %.21 = phi ptr [ %i.d, %bb.fw ], [ %.1, %bb.l ] ; 3 uses
  %i.wu = ptrtoint ptr %3 to i64
  %i.wv = ptrtoint ptr %.221115 to i64
  %i.ww = sub i64 %i.wu, %i.wv                    ; 3 uses
  %i.wx = icmp slt i64 %i.ww, 1
  br i1 %i.wx, label %bb.fr, label %bb.fx

bb.fr:                                            ; preds = %.loopexit1284
  store i32 13, ptr %i.f, align 4, !tbaa !186
  %i.wy = ptrtoint ptr %.221151 to i64
  %i.wz = ptrtoint ptr %.21 to i64
  %i.xa = sub i64 %i.wy, %i.wz                    ; 3 uses
  %i.xb = icmp sgt i64 %i.xa, 0
  br i1 %i.xb, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %i.xc = load ptr, ptr %4, align 8, !tbaa !62
  %i.xd = getelementptr i8, ptr %i.xc, i64 60
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !69
  %i.xf = icmp slt i32 %i.xe, 9
  %i.xg = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.xf, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !30
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fs, %bb.ft
  %i.xi = phi ptr [ %i.xh, %bb.ft ], [ %i.xg, %bb.fs ]
  %i.xj = getelementptr i8, ptr %4, i64 40
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !88
  %i.xl = getelementptr i8, ptr %i.xi, i64 %i.xk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.xl, ptr noundef nonnull align 1 %.21, i64 noundef %i.xa, i1 noundef false) #19
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fr
  store ptr %.221151, ptr %0, align 8, !tbaa !29
  store ptr %.221115, ptr %1, align 8, !tbaa !29
  %i.xm = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !88
  %i.xo = add i64 %i.xn, %i.xa
  store i64 %i.xo, ptr %i.xm, align 8, !tbaa !88
  br label %bb.ma

bb.fw:                                            ; preds = %bb.a
  br label %.loopexit1284, !llvm.loop !224

bb.fx:                                            ; preds = %.loopexit1284
  %i.xp = getelementptr i8, ptr %i.a, i64 64
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !70
  %i.xr = sext i32 %i.xq to i64
  %.not1225 = icmp slt i64 %i.ww, %i.xr
  %i.xs = getelementptr i8, ptr %i.a, i64 112
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !225 ; 2 uses
  %i.xu = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.xv = getelementptr i8, ptr %i.xu, i64 72
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !67
  %i.xx = icmp ult i64 %i.xw, 9                   ; 2 uses
  %i.xy = getelementptr i8, ptr %4, i64 88        ; 4 uses
  br i1 %.not1225, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.xx, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !30
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  %i.ya = phi ptr [ %i.xz, %bb.fz ], [ %i.xy, %bb.fy ]
  %i.yb = getelementptr i8, ptr %4, i64 24
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !199
  %i.yd = tail call i64 %i.xt(ptr noundef %i.ya, i64 noundef %i.yc, ptr noundef %.221115, i64 noundef %i.ww) #19
  %i.ye = getelementptr i8, ptr %.221115, i64 %i.yd
  br label %.loopexit

bb.gb:                                            ; preds = %bb.fx
  br i1 %i.xx, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.yf = load ptr, ptr %i.xy, align 8, !tbaa !30
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gb, %bb.gc
  %i.yg = phi ptr [ %i.yf, %bb.gc ], [ %i.xy, %bb.gb ]
  %i.yh = getelementptr i8, ptr %4, i64 24
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !199
  %i.yj = getelementptr i8, ptr %i.xu, i64 64
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !70 ; 2 uses
  %i.yl = icmp slt i32 %i.yk, 9
  %i.ym = getelementptr i8, ptr %4, i64 80        ; 2 uses
  br i1 %i.yl, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !30
  %i.yo = zext nneg i32 %i.yk to i64
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge
  %narrow1270 = phi i64 [ %i.yo, %bb.ge ], [ 8, %bb.gd ]
  %i.yp = phi ptr [ %i.yn, %bb.ge ], [ %i.ym, %bb.gd ]
  %i.yq = tail call i64 %i.xt(ptr noundef %i.yg, i64 noundef %i.yi, ptr noundef %i.yp, i64 noundef %narrow1270) #19 ; 2 uses
  %i.yr = getelementptr i8, ptr %4, i64 72
  store i64 %i.yq, ptr %i.yr, align 8, !tbaa !202
  %i.ys = getelementptr i8, ptr %4, i64 64
  store i64 0, ptr %i.ys, align 8, !tbaa !200
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gq, %bb.gf
  %i.yt = phi i64 [ %i.yq, %bb.gf ], [ %.pre1313.a, %bb.gq ]
  %i.yu = phi i64 [ 0, %bb.gf ], [ %.pre1311.a, %bb.gq ]
  %.231152 = phi ptr [ %.221151, %bb.gf ], [ %.241153, %bb.gq ] ; 2 uses
  %.231116 = phi ptr [ %.221115, %bb.gf ], [ %i.aad, %bb.gq ] ; 2 uses
  %.22 = phi ptr [ %.21, %bb.gf ], [ %.23, %bb.gq ]
  %i.yv = icmp slt i64 %i.yu, %i.yt
  br i1 %i.yv, label %bb.gh, label %.loopexit

bb.gh:                                            ; preds = %bb.gg, %bb.gn
  %.241153 = phi ptr [ %.231152, %bb.gg ], [ %i.d, %bb.gn ] ; 3 uses
  %.241117 = phi ptr [ %.231116, %bb.gg ], [ %i.e, %bb.gn ] ; 4 uses
  %.23 = phi ptr [ %.22, %bb.gg ], [ %i.d, %bb.gn ] ; 3 uses
  %i.yw = ptrtoint ptr %3 to i64
  %i.yx = ptrtoint ptr %.241117 to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = icmp slt i64 %i.yy, 1
  br i1 %i.yz, label %bb.gi, label %bb.go

bb.gi:                                            ; preds = %bb.gh
  store i32 20, ptr %i.f, align 4, !tbaa !186
  %i.za = ptrtoint ptr %.241153 to i64
  %i.zb = ptrtoint ptr %.23 to i64
  %i.zc = sub i64 %i.za, %i.zb                    ; 3 uses
  %i.zd = icmp sgt i64 %i.zc, 0
  br i1 %i.zd, label %bb.gj, label %bb.gm

bb.gj:                                            ; preds = %bb.gi
  %i.ze = load ptr, ptr %4, align 8, !tbaa !62
  %i.zf = getelementptr i8, ptr %i.ze, i64 60
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !69
  %i.zh = icmp slt i32 %i.zg, 9
  %i.zi = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.zh, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !30
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %i.zk = phi ptr [ %i.zj, %bb.gk ], [ %i.zi, %bb.gj ]
  %i.zl = getelementptr i8, ptr %4, i64 40
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !88
  %i.zn = getelementptr i8, ptr %i.zk, i64 %i.zm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.zn, ptr noundef nonnull align 1 %.23, i64 noundef %i.zc, i1 noundef false) #19
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gi
  store ptr %.241153, ptr %0, align 8, !tbaa !29
  store ptr %.241117, ptr %1, align 8, !tbaa !29
  %i.zo = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !88
  %i.zq = add i64 %i.zp, %i.zc
  store i64 %i.zq, ptr %i.zo, align 8, !tbaa !88
  br label %bb.ma

bb.gn:                                            ; preds = %bb.a
  br label %bb.gh, !llvm.loop !226

bb.go:                                            ; preds = %bb.gh
  %i.zr = load ptr, ptr %4, align 8, !tbaa !62
  %i.zs = getelementptr i8, ptr %i.zr, i64 64
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !70
  %i.zu = icmp slt i32 %i.zt, 9
  %i.zv = getelementptr i8, ptr %4, i64 80        ; 2 uses
  br i1 %i.zu, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !30
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gp
  %i.zx = phi ptr [ %i.zw, %bb.gp ], [ %i.zv, %bb.go ]
  %i.zy = getelementptr i8, ptr %4, i64 64        ; 3 uses
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !200 ; 2 uses
  %i.aaa = add i64 %i.zz, 1
  store i64 %i.aaa, ptr %i.zy, align 8, !tbaa !200
  %i.aab = getelementptr i8, ptr %i.zx, i64 %i.zz
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !30
  %i.aad = getelementptr i8, ptr %.241117, i64 1
  store i8 %i.aac, ptr %.241117, align 1, !tbaa !30
  %.pre1311.a = load i64, ptr %i.zy, align 8, !tbaa !200
  %.phi.trans.insert1312.a = getelementptr i8, ptr %4, i64 72
  %.pre1313.a = load i64, ptr %.phi.trans.insert1312.a, align 8, !tbaa !202
  br label %bb.gg, !llvm.loop !227

.loopexit1285:                                    ; preds = %bb.l, %bb.gw
  %.251154 = phi ptr [ %i.d, %bb.gw ], [ %.21131, %bb.l ] ; 10 uses
  %.251118 = phi ptr [ %i.e, %bb.gw ], [ %.21095, %bb.l ] ; 5 uses
  %.24 = phi ptr [ %i.d, %bb.gw ], [ %.1, %bb.l ] ; 10 uses
  %i.aae = ptrtoint ptr %3 to i64
  %i.aaf = ptrtoint ptr %.251118 to i64
  %i.aag = sub i64 %i.aae, %i.aaf                 ; 3 uses
  %i.aah = icmp slt i64 %i.aag, 1
  br i1 %i.aah, label %bb.gr, label %bb.gx

bb.gr:                                            ; preds = %.loopexit1285
  store i32 14, ptr %i.f, align 4, !tbaa !186
  %i.aai = ptrtoint ptr %.251154 to i64
  %i.aaj = ptrtoint ptr %.24 to i64
  %i.aak = sub i64 %i.aai, %i.aaj                 ; 3 uses
  %i.aal = icmp sgt i64 %i.aak, 0
  br i1 %i.aal, label %bb.gs, label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.aam = load ptr, ptr %4, align 8, !tbaa !62
  %i.aan = getelementptr i8, ptr %i.aam, i64 60
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !69
  %i.aap = icmp slt i32 %i.aao, 9
  %i.aaq = getelementptr i8, ptr %4, i64 56       ; 2 uses
  br i1 %i.aap, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !30
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %i.aas = phi ptr [ %i.aar, %bb.gt ], [ %i.aaq, %bb.gs ]
  %i.aat = getelementptr i8, ptr %4, i64 40
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !88
  %i.aav = getelementptr i8, ptr %i.aas, i64 %i.aau
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aav, ptr noundef nonnull align 1 %.24, i64 noundef %i.aak, i1 noundef false) #19
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gr
  store ptr %.251154, ptr %0, align 8, !tbaa !29
  store ptr %.251118, ptr %1, align 8, !tbaa !29
  %i.aaw = getelementptr i8, ptr %4, i64 40       ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !88
  %i.aay = add i64 %i.aax, %i.aak
  store i64 %i.aay, ptr %i.aaw, align 8, !tbaa !88
  br label %bb.ma

bb.gw:                                            ; preds = %bb.a
  br label %.loopexit1285, !llvm.loop !228

bb.gx:                                            ; preds = %.loopexit1285
  %i.aaz = getelementptr i8, ptr %i.a, i64 64
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !70
  %i.abb = sext i32 %i.aba to i64
  %.not1224 = icmp slt i64 %i.aag, %i.abb
  %i.abc = load ptr, ptr %0, align 8, !tbaa !29
  %i.abd = ptrtoint ptr %.24 to i64               ; 5 uses
  %i.abe = ptrtoint ptr %i.abc to i64
  %i.abf = sub i64 %i.abd, %i.abe
  %i.abg = getelementptr i8, ptr %4, i64 40       ; 3 uses
  %i.abh = load i64, ptr %i.abg, align 8, !tbaa !88 ; 5 uses
  %i.abi = icmp slt i64 %i.abf, %i.abh            ; 2 uses
  br i1 %.not1224, label %bb.hh, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  br i1 %i.abi, label %bb.gz, label %bb.he

bb.gz:                                            ; preds = %bb.gy
  %i.abj = load ptr, ptr %4, align 8, !tbaa !62   ; 2 uses
  %i.abk = getelementptr i8, ptr %i.abj, i64 60
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !69 ; 2 uses
  %i.abm = icmp slt i32 %i.abl, 9
  %i.abn = getelementptr i8, ptr %4, i64 56       ; 4 uses
  br i1 %i.abm, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !30
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.abp = phi ptr [ %i.abo, %bb.ha ], [ %i.abn, %bb.gz ]
  %.not.i.i1237 = icmp eq ptr %.251154, %.24
  br i1 %.not.i.i1237, label %ruby_nonempty_memcpy.exit.i1241, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %6 = getelementptr i8, ptr %i.abp, i64 %i.abh
  %i.abq = ptrtoint ptr %.251154 to i64
  %i.abr = sub i64 %i.abq, %i.abd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %6, ptr noundef nonnull readonly align 1 %.24, i64 noundef range(i64 1, 0) %i.abr, i1 noundef false) #19
  %.pre.i1238 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1239 = getelementptr i8, ptr %.pre.i1238, i64 60
  %.pre21.i1240 = load i32, ptr %.phi.trans.insert.i1239, align 4, !tbaa !69
  br label %ruby_nonempty_memcpy.exit.i1241

ruby_nonempty_memcpy.exit.i1241:                  ; preds = %bb.hc, %bb.hb
  %i.abs = phi ptr [ %.pre.i1238, %bb.hc ], [ %i.abj, %bb.hb ] ; 2 uses
  %i.abt = phi i32 [ %.pre21.i1240, %bb.hc ], [ %i.abl, %bb.hb ]
  %i.abu = icmp slt i32 %i.abt, 9
  br i1 %i.abu, label %transcode_char_start.exit1242, label %bb.hd

bb.hd:                                            ; preds = %ruby_nonempty_memcpy.exit.i1241
  %i.abv = load ptr, ptr %i.abn, align 8, !tbaa !30
  br label %transcode_char_start.exit1242

bb.he:                                            ; preds = %bb.gy
  %i.abw = sub i64 0, %i.abh
  %i.abx = getelementptr i8, ptr %.24, i64 %i.abw
  %.pre1304 = load ptr, ptr %4, align 8, !tbaa !62
  br label %transcode_char_start.exit1242

transcode_char_start.exit1242:                    ; preds = %ruby_nonempty_memcpy.exit.i1241, %bb.hd, %bb.he
  %i.aby = phi ptr [ %.pre1304, %bb.he ], [ %i.abs, %bb.hd ], [ %i.abs, %ruby_nonempty_memcpy.exit.i1241 ]
  %.0.i1236 = phi ptr [ %i.abx, %bb.he ], [ %i.abv, %bb.hd ], [ %i.abn, %ruby_nonempty_memcpy.exit.i1241 ]
  %i.abz = load i64, ptr %i.abg, align 8, !tbaa !88
  %i.aca = ptrtoint ptr %.251154 to i64
  %i.acb = sub i64 %i.aca, %i.abd
  %i.acc = add i64 %i.acb, %i.abz
  %i.acd = getelementptr i8, ptr %i.a, i64 120
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !229
  %i.acf = getelementptr i8, ptr %i.aby, i64 72
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !67
  %i.ach = icmp ult i64 %i.acg, 9
  %i.aci = getelementptr i8, ptr %4, i64 88       ; 2 uses
  br i1 %i.ach, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %transcode_char_start.exit1242
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !30
  br label %bb.hg

bb.hg:                                            ; preds = %transcode_char_start.exit1242, %bb.hf
  %i.ack = phi ptr [ %i.acj, %bb.hf ], [ %i.aci, %transcode_char_start.exit1242 ]
  %i.acl = tail call i64 %i.ace(ptr noundef %i.ack, ptr noundef %.0.i1236, i64 noundef %i.acc, ptr noundef %.251118, i64 noundef %i.aag) #19
  %i.acm = getelementptr i8, ptr %.251118, i64 %i.acl
  br label %.loopexit

bb.hh:                                            ; preds = %bb.gx
  br i1 %i.abi, label %bb.hi, label %bb.hn

bb.hi:                                            ; preds = %bb.hh
  %i.acn = load ptr, ptr %4, align 8, !tbaa !62   ; 2 uses
  %i.aco = getelementptr i8, ptr %i.acn, i64 60
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !69 ; 2 uses
  %i.acq = icmp slt i32 %i.acp, 9
  %i.acr = getelementptr i8, ptr %4, i64 56       ; 4 uses
  br i1 %i.acq, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !30
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.act = phi ptr [ %i.acs, %bb.hj ], [ %i.acr, %bb.hi ]
  %.not.i.i1244 = icmp eq ptr %.251154, %.24
  br i1 %.not.i.i1244, label %ruby_nonempty_memcpy.exit.i1248, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %7 = getelementptr i8, ptr %i.act, i64 %i.abh
  %i.acu = ptrtoint ptr %.251154 to i64
  %i.acv = sub i64 %i.acu, %i.abd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %7, ptr noundef nonnull readonly align 1 %.24, i64 noundef range(i64 1, 0) %i.acv, i1 noundef false) #19
  %.pre.i1245 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1246 = getelementptr i8, ptr %.pre.i1245, i64 60
  %.pre21.i1247 = load i32, ptr %.phi.trans.insert.i1246, align 4, !tbaa !69
  br label %ruby_nonempty_memcpy.exit.i1248

ruby_nonempty_memcpy.exit.i1248:                  ; preds = %bb.hl, %bb.hk
  %i.acw = phi ptr [ %.pre.i1245, %bb.hl ], [ %i.acn, %bb.hk ] ; 2 uses
  %i.acx = phi i32 [ %.pre21.i1247, %bb.hl ], [ %i.acp, %bb.hk ]
  %i.acy = icmp slt i32 %i.acx, 9
  br i1 %i.acy, label %transcode_char_start.exit1249, label %bb.hm

bb.hm:                                            ; preds = %ruby_nonempty_memcpy.exit.i1248
  %i.acz = load ptr, ptr %i.acr, align 8, !tbaa !30
  br label %transcode_char_start.exit1249

bb.hn:                                            ; preds = %bb.hh
  %i.ada = sub i64 0, %i.abh
  %i.adb = getelementptr i8, ptr %.24, i64 %i.ada
  %.pre1305.a = load ptr, ptr %4, align 8, !tbaa !62
  br label %transcode_char_start.exit1249

transcode_char_start.exit1249:                    ; preds = %ruby_nonempty_memcpy.exit.i1248, %bb.hm, %bb.hn
  %i.adc = phi ptr [ %.pre1305.a, %bb.hn ], [ %i.acw, %bb.hm ], [ %i.acw, %ruby_nonempty_memcpy.exit.i1248 ] ; 2 uses
  %.0.i1243 = phi ptr [ %i.adb, %bb.hn ], [ %i.acz, %bb.hm ], [ %i.acr, %ruby_nonempty_memcpy.exit.i1248 ]
  %i.add = load i64, ptr %i.abg, align 8, !tbaa !88
  %i.ade = ptrtoint ptr %.251154 to i64
  %i.adf = sub i64 %i.ade, %i.abd
  %i.adg = add i64 %i.adf, %i.add
  %i.adh = getelementptr i8, ptr %i.a, i64 120
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !229
  %i.adj = getelementptr i8, ptr %i.adc, i64 72
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !67
  %i.adl = icmp ult i64 %i.adk, 9
  %i.adm = getelementptr i8, ptr %4, i64 88       ; 2 uses
  br i1 %i.adl, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %transcode_char_start.exit1249
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !30
  br label %bb.hp

bb.hp:                                            ; preds = %transcode_char_start.exit1249, %bb.ho
  %i.ado = phi ptr [ %i.adn, %bb.ho ], [ %i.adm, %transcode_char_start.exit1249 ]
  %i.adp = getelementptr i8, ptr %i.adc, i64 64
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !70 ; 2 uses
  %i.adr = icmp slt i32 %i.adq, 9
  %i.ads = getelementptr i8, ptr %4, i64 80       ; 2 uses
  br i1 %i.adr, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !30
  %i.adu = zext nneg i32 %i.adq to i64
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hp, %bb.hq
  %narrow1269 = phi i64 [ %i.adu, %bb.hq ], [ 8, %bb.hp ]
  %i.adv = phi ptr [ %i.adt, %bb.hq ], [ %i.ads, %bb.hp ]
  %i.adw = tail call i64 %i.adi(ptr noundef %i.ado, ptr noundef %.0.i1243, i64 noundef %i.adg, ptr noundef %i.adv, i64 noundef %narrow1269) #19 ; 2 uses
  %i.adx = getelementptr i8, ptr %4, i64 72
  store i64 %i.adw, ptr %i.adx, align 8, !tbaa !202
  %i.ady = getelementptr i8, ptr %4, i64 64
  store i64 0, ptr %i.ady, align 8, !tbaa !200
  br label %bb.hs

bb.hs:                                            ; preds = %bb.ic, %bb.hr
  %i.adz = phi i64 [ %i.adw, %bb.hr ], [ %.pre1309, %bb.ic ]
  %i.aea = phi i64 [ 0, %bb.hr ], [ %.pre1307.a, %bb.ic ]
  %.261155 = phi ptr [ %.251154, %bb.hr ], [ %.271156, %bb.ic ] ; 2 uses
  %.261119 = phi ptr [ %.251118, %bb.hr ], [ %i.afj, %bb.ic ] ; 2 uses
  %.25 = phi ptr [ %.24, %bb.hr ], [ %.26, %bb.ic ]
  %i.aeb = icmp slt i64 %i.aea, %i.adz
  br i1 %i.aeb, label %bb.ht, label %.loopexit

bb.ht:                                            ; preds = %bb.hs, %bb.hz
  %.271156 = phi ptr [ %.261155, %bb.hs ], [ %i.d, %bb.hz ] ; 3 uses
  %.271120 = phi ptr [ %.261119, %bb.hs ], [ %i.e, %bb.hz ] ; 4 uses
  %.26 = phi ptr [ %.25, %bb.hs ], [ %i.d, %bb.hz ] ; 3 uses
  %i.aec = ptrtoint ptr %3 to i64
  %i.aed = ptrtoint ptr %.271120 to i64
  %i.aee = sub i64 %i.aec, %i.aed
  %i.aef = icmp slt i64 %i.aee, 1
  br i1 %i.aef, label %bb.hu, label %bb.ia

bb.hu:                                            ; preds = %bb.ht
  store i32 22, ptr %i.f, align 4, !tbaa !186
  %i.aeg = ptrtoint ptr %.271156 to i64
  %i.aeh = ptrtoint ptr %.26 to i64
  %i.aei = sub i64 %i.aeg, %i.aeh                 ; 3 uses
  %i.aej = icmp sgt i64 %i.aei, 0
  br i1 %i.aej, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  %i.aek = load ptr, ptr %4, align 8, !tbaa !62
  %i.ael = getelementptr i8, ptr %i.aek, i64 60
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !69
  %i.aen = icmp slt i32 %i.aem, 9
  %i.aeo = getelementptr i8, ptr %4, i64 56       ; 2 uses
  br i1 %i.aen, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !30
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hv, %bb.hw
  %i.aeq = phi ptr [ %i.aep, %bb.hw ], [ %i.aeo, %bb.hv ]
  %i.aer = getelementptr i8, ptr %4, i64 40
  %i.aes = load i64, ptr %i.aer, align 8, !tbaa !88
  %i.aet = getelementptr i8, ptr %i.aeq, i64 %i.aes
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aet, ptr noundef nonnull align 1 %.26, i64 noundef %i.aei, i1 noundef false) #19
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hu
  store ptr %.271156, ptr %0, align 8, !tbaa !29
  store ptr %.271120, ptr %1, align 8, !tbaa !29
  %i.aeu = getelementptr i8, ptr %4, i64 40       ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !88
  %i.aew = add i64 %i.aev, %i.aei
  store i64 %i.aew, ptr %i.aeu, align 8, !tbaa !88
  br label %bb.ma

bb.hz:                                            ; preds = %bb.a
  br label %bb.ht, !llvm.loop !230

bb.ia:                                            ; preds = %bb.ht
  %i.aex = load ptr, ptr %4, align 8, !tbaa !62
  %i.aey = getelementptr i8, ptr %i.aex, i64 64
  %i.aez = load i32, ptr %i.aey, align 8, !tbaa !70
  %i.afa = icmp slt i32 %i.aez, 9
  %i.afb = getelementptr i8, ptr %4, i64 80       ; 2 uses
  br i1 %i.afa, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !30
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ia, %bb.ib
  %i.afd = phi ptr [ %i.afc, %bb.ib ], [ %i.afb, %bb.ia ]
  %i.afe = getelementptr i8, ptr %4, i64 64       ; 3 uses
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !200 ; 2 uses
  %i.afg = add i64 %i.aff, 1
  store i64 %i.afg, ptr %i.afe, align 8, !tbaa !200
  %i.afh = getelementptr i8, ptr %i.afd, i64 %i.aff
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !30
  %i.afj = getelementptr i8, ptr %.271120, i64 1
  store i8 %i.afi, ptr %.271120, align 1, !tbaa !30
  %.pre1307.a = load i64, ptr %i.afe, align 8, !tbaa !200
  %.phi.trans.insert1308 = getelementptr i8, ptr %4, i64 72
  %.pre1309 = load i64, ptr %.phi.trans.insert1308, align 8, !tbaa !202
  br label %bb.hs, !llvm.loop !231

.loopexit1286:                                    ; preds = %bb.l, %bb.ii
  %.281157 = phi ptr [ %i.d, %bb.ii ], [ %.21131, %bb.l ] ; 10 uses
  %.281121 = phi ptr [ %i.e, %bb.ii ], [ %.21095, %bb.l ] ; 5 uses
  %.27 = phi ptr [ %i.d, %bb.ii ], [ %.1, %bb.l ] ; 10 uses
  %i.afk = ptrtoint ptr %3 to i64
  %i.afl = ptrtoint ptr %.281121 to i64
  %i.afm = sub i64 %i.afk, %i.afl                 ; 3 uses
  %i.afn = icmp slt i64 %i.afm, 1
  br i1 %i.afn, label %bb.id, label %bb.ij

bb.id:                                            ; preds = %.loopexit1286
  store i32 33, ptr %i.f, align 4, !tbaa !186
  %i.afo = ptrtoint ptr %.281157 to i64
  %i.afp = ptrtoint ptr %.27 to i64
  %i.afq = sub i64 %i.afo, %i.afp                 ; 3 uses
  %i.afr = icmp sgt i64 %i.afq, 0
  br i1 %i.afr, label %bb.ie, label %bb.ih

bb.ie:                                            ; preds = %bb.id
  %i.afs = load ptr, ptr %4, align 8, !tbaa !62
  %i.aft = getelementptr i8, ptr %i.afs, i64 60
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !69
  %i.afv = icmp slt i32 %i.afu, 9
  %i.afw = getelementptr i8, ptr %4, i64 56       ; 2 uses
  br i1 %i.afv, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !30
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %i.afy = phi ptr [ %i.afx, %bb.if ], [ %i.afw, %bb.ie ]
  %i.afz = getelementptr i8, ptr %4, i64 40
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !88
  %i.agb = getelementptr i8, ptr %i.afy, i64 %i.aga
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.agb, ptr noundef nonnull align 1 %.27, i64 noundef %i.afq, i1 noundef false) #19
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.id
  store ptr %.281157, ptr %0, align 8, !tbaa !29
  store ptr %.281121, ptr %1, align 8, !tbaa !29
  %i.agc = getelementptr i8, ptr %4, i64 40       ; 2 uses
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !88
  %i.age = add i64 %i.agd, %i.afq
  store i64 %i.age, ptr %i.agc, align 8, !tbaa !88
  br label %bb.ma

bb.ii:                                            ; preds = %bb.a
  br label %.loopexit1286, !llvm.loop !232

bb.ij:                                            ; preds = %.loopexit1286
  %i.agf = getelementptr i8, ptr %i.a, i64 64
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !70
  %i.agh = sext i32 %i.agg to i64
  %.not1223 = icmp slt i64 %i.afm, %i.agh
  %i.agi = load ptr, ptr %0, align 8, !tbaa !29
  %i.agj = ptrtoint ptr %.27 to i64               ; 5 uses
  %i.agk = ptrtoint ptr %i.agi to i64
  %i.agl = sub i64 %i.agj, %i.agk
  %i.agm = getelementptr i8, ptr %4, i64 40       ; 3 uses
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !88 ; 5 uses
  %i.ago = icmp slt i64 %i.agl, %i.agn            ; 2 uses
  br i1 %.not1223, label %bb.it, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  br i1 %i.ago, label %bb.il, label %bb.iq

bb.il:                                            ; preds = %bb.ik
  %i.agp = load ptr, ptr %4, align 8, !tbaa !62   ; 2 uses
  %i.agq = getelementptr i8, ptr %i.agp, i64 60
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !69 ; 2 uses
  %i.ags = icmp slt i32 %i.agr, 9
  %i.agt = getelementptr i8, ptr %4, i64 56       ; 4 uses
  br i1 %i.ags, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !30
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.agv = phi ptr [ %i.agu, %bb.im ], [ %i.agt, %bb.il ]
  %.not.i.i1251 = icmp eq ptr %.281157, %.27
  br i1 %.not.i.i1251, label %ruby_nonempty_memcpy.exit.i1255, label %bb.io

bb.io:                                            ; preds = %bb.in
  %8 = getelementptr i8, ptr %i.agv, i64 %i.agn
  %i.agw = ptrtoint ptr %.281157 to i64
  %i.agx = sub i64 %i.agw, %i.agj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %8, ptr noundef nonnull readonly align 1 %.27, i64 noundef range(i64 1, 0) %i.agx, i1 noundef false) #19
  %.pre.i1252 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1253 = getelementptr i8, ptr %.pre.i1252, i64 60
  %.pre21.i1254 = load i32, ptr %.phi.trans.insert.i1253, align 4, !tbaa !69
  br label %ruby_nonempty_memcpy.exit.i1255

ruby_nonempty_memcpy.exit.i1255:                  ; preds = %bb.io, %bb.in
  %i.agy = phi ptr [ %.pre.i1252, %bb.io ], [ %i.agp, %bb.in ] ; 2 uses
  %i.agz = phi i32 [ %.pre21.i1254, %bb.io ], [ %i.agr, %bb.in ]
  %i.aha = icmp slt i32 %i.agz, 9
  br i1 %i.aha, label %transcode_char_start.exit1256, label %bb.ip

bb.ip:                                            ; preds = %ruby_nonempty_memcpy.exit.i1255
  %i.ahb = load ptr, ptr %i.agt, align 8, !tbaa !30
  br label %transcode_char_start.exit1256

bb.iq:                                            ; preds = %bb.ik
  %i.ahc = sub i64 0, %i.agn
  %i.ahd = getelementptr i8, ptr %.27, i64 %i.ahc
  %.pre1298 = load ptr, ptr %4, align 8, !tbaa !62
  br label %transcode_char_start.exit1256

transcode_char_start.exit1256:                    ; preds = %ruby_nonempty_memcpy.exit.i1255, %bb.ip, %bb.iq
  %i.ahe = phi ptr [ %.pre1298, %bb.iq ], [ %i.agy, %bb.ip ], [ %i.agy, %ruby_nonempty_memcpy.exit.i1255 ]
  %.0.i1250 = phi ptr [ %i.ahd, %bb.iq ], [ %i.ahb, %bb.ip ], [ %i.agt, %ruby_nonempty_memcpy.exit.i1255 ]
  %i.ahf = load i64, ptr %i.agm, align 8, !tbaa !88
  %i.ahg = ptrtoint ptr %.281157 to i64
  %i.ahh = sub i64 %i.ahg, %i.agj
  %i.ahi = add i64 %i.ahh, %i.ahf
  %i.ahj = getelementptr i8, ptr %i.a, i64 152
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !233
  %i.ahl = getelementptr i8, ptr %i.ahe, i64 72
  %i.ahm = load i64, ptr %i.ahl, align 8, !tbaa !67
  %i.ahn = icmp ult i64 %i.ahm, 9
  %i.aho = getelementptr i8, ptr %4, i64 88       ; 2 uses
  br i1 %i.ahn, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %transcode_char_start.exit1256
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !30
  br label %bb.is

bb.is:                                            ; preds = %transcode_char_start.exit1256, %bb.ir
  %i.ahq = phi ptr [ %i.ahp, %bb.ir ], [ %i.aho, %transcode_char_start.exit1256 ]
  %i.ahr = getelementptr i8, ptr %4, i64 24
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !199
  %i.aht = tail call i64 %i.ahk(ptr noundef %i.ahq, ptr noundef %.0.i1250, i64 noundef %i.ahi, i64 noundef %i.ahs, ptr noundef %.281121, i64 noundef %i.afm) #19
  %i.ahu = getelementptr i8, ptr %.281121, i64 %i.aht
  br label %.loopexit

bb.it:                                            ; preds = %bb.ij
  br i1 %i.ago, label %bb.iu, label %bb.iz

bb.iu:                                            ; preds = %bb.it
  %i.ahv = load ptr, ptr %4, align 8, !tbaa !62   ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.ahv, i64 60
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !69 ; 2 uses
  %i.ahy = icmp slt i32 %i.ahx, 9
  %i.ahz = getelementptr i8, ptr %4, i64 56       ; 4 uses
  br i1 %i.ahy, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !30
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  %i.aib = phi ptr [ %i.aia, %bb.iv ], [ %i.ahz, %bb.iu ]
  %.not.i.i1258 = icmp eq ptr %.281157, %.27
  br i1 %.not.i.i1258, label %ruby_nonempty_memcpy.exit.i1262, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %9 = getelementptr i8, ptr %i.aib, i64 %i.agn
  %i.aic = ptrtoint ptr %.281157 to i64
  %i.aid = sub i64 %i.aic, %i.agj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull readonly align 1 %.27, i64 noundef range(i64 1, 0) %i.aid, i1 noundef false) #19
  %.pre.i1259 = load ptr, ptr %4, align 8, !tbaa !62 ; 2 uses
  %.phi.trans.insert.i1260 = getelementptr i8, ptr %.pre.i1259, i64 60
  %.pre21.i1261 = load i32, ptr %.phi.trans.insert.i1260, align 4, !tbaa !69
  br label %ruby_nonempty_memcpy.exit.i1262

ruby_nonempty_memcpy.exit.i1262:                  ; preds = %bb.ix, %bb.iw
  %i.aie = phi ptr [ %.pre.i1259, %bb.ix ], [ %i.ahv, %bb.iw ] ; 2 uses
  %i.aif = phi i32 [ %.pre21.i1261, %bb.ix ], [ %i.ahx, %bb.iw ]
  %i.aig = icmp slt i32 %i.aif, 9
  br i1 %i.aig, label %transcode_char_start.exit1263, label %bb.iy

bb.iy:                                            ; preds = %ruby_nonempty_memcpy.exit.i1262
  %i.aih = load ptr, ptr %i.ahz, align 8, !tbaa !30
  br label %transcode_char_start.exit1263

bb.iz:                                            ; preds = %bb.it
  %i.aii = sub i64 0, %i.agn
  %i.aij = getelementptr i8, ptr %.27, i64 %i.aii
  %.pre1299.a = load ptr, ptr %4, align 8, !tbaa !62
  br label %transcode_char_start.exit1263

transcode_char_start.exit1263:                    ; preds = %ruby_nonempty_memcpy.exit.i1262, %bb.iy, %bb.iz
  %i.aik = phi ptr [ %.pre1299.a, %bb.iz ], [ %i.aie, %bb.iy ], [ %i.aie, %ruby_nonempty_memcpy.exit.i1262 ] ; 2 uses
  %.0.i1257 = phi ptr [ %i.aij, %bb.iz ], [ %i.aih, %bb.iy ], [ %i.ahz, %ruby_nonempty_memcpy.exit.i1262 ]
  %i.ail = load i64, ptr %i.agm, align 8, !tbaa !88
  %i.aim = ptrtoint ptr %.281157 to i64
  %i.ain = sub i64 %i.aim, %i.agj
  %i.aio = add i64 %i.ain, %i.ail
  %i.aip = getelementptr i8, ptr %i.a, i64 152
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !233
  %i.air = getelementptr i8, ptr %i.aik, i64 72
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !67
  %i.ait = icmp ult i64 %i.ais, 9
  %i.aiu = getelementptr i8, ptr %4, i64 88       ; 2 uses
  br i1 %i.ait, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %transcode_char_start.exit1263
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !30
  br label %bb.jb

bb.jb:                                            ; preds = %transcode_char_start.exit1263, %bb.ja
  %i.aiw = phi ptr [ %i.aiv, %bb.ja ], [ %i.aiu, %transcode_char_start.exit1263 ]
  %i.aix = getelementptr i8, ptr %4, i64 24
  %i.aiy = load i64, ptr %i.aix, align 8, !tbaa !199
  %i.aiz = getelementptr i8, ptr %i.aik, i64 64
  %i.aja = load i32, ptr %i.aiz, align 8, !tbaa !70 ; 2 uses
  %i.ajb = icmp slt i32 %i.aja, 9
  %i.ajc = getelementptr i8, ptr %4, i64 80       ; 2 uses
  br i1 %i.ajb, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !30
  %i.aje = zext nneg i32 %i.aja to i64
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jb, %bb.jc
  %narrow1268 = phi i64 [ %i.aje, %bb.jc ], [ 8, %bb.jb ]
  %i.ajf = phi ptr [ %i.ajd, %bb.jc ], [ %i.ajc, %bb.jb ]
  %i.ajg = tail call i64 %i.aiq(ptr noundef %i.aiw, ptr noundef %.0.i1257, i64 noundef %i.aio, i64 noundef %i.aiy, ptr noundef %i.ajf, i64 noundef %narrow1268) #19 ; 2 uses
  %i.ajh = getelementptr i8, ptr %4, i64 72
  store i64 %i.ajg, ptr %i.ajh, align 8, !tbaa !202
  %i.aji = getelementptr i8, ptr %4, i64 64
  store i64 0, ptr %i.aji, align 8, !tbaa !200
  br label %bb.je

bb.je:                                            ; preds = %bb.jo, %bb.jd
  %i.ajj = phi i64 [ %i.ajg, %bb.jd ], [ %.pre1303, %bb.jo ]
  %i.ajk = phi i64 [ 0, %bb.jd ], [ %.pre1301.a, %bb.jo ]
  %.291158 = phi ptr [ %.281157, %bb.jd ], [ %.301159, %bb.jo ] ; 2 uses
  %.291122 = phi ptr [ %.281121, %bb.jd ], [ %i.akt, %bb.jo ] ; 2 uses
  %.28 = phi ptr [ %.27, %bb.jd ], [ %.29, %bb.jo ]
  %i.ajl = icmp slt i64 %i.ajk, %i.ajj
  br i1 %i.ajl, label %bb.jf, label %.loopexit

bb.jf:                                            ; preds = %bb.je, %bb.jl
  %.301159 = phi ptr [ %.291158, %bb.je ], [ %i.d, %bb.jl ] ; 3 uses
  %.301123 = phi ptr [ %.291122, %bb.je ], [ %i.e, %bb.jl ] ; 4 uses
  %.29 = phi ptr [ %.28, %bb.je ], [ %i.d, %bb.jl ] ; 3 uses
  %i.ajm = ptrtoint ptr %3 to i64
  %i.ajn = ptrtoint ptr %.301123 to i64
  %i.ajo = sub i64 %i.ajm, %i.ajn
  %i.ajp = icmp slt i64 %i.ajo, 1
  br i1 %i.ajp, label %bb.jg, label %bb.jm

bb.jg:                                            ; preds = %bb.jf
  store i32 34, ptr %i.f, align 4, !tbaa !186
  %i.ajq = ptrtoint ptr %.301159 to i64
  %i.ajr = ptrtoint ptr %.29 to i64
  %i.ajs = sub i64 %i.ajq, %i.ajr                 ; 3 uses
  %i.ajt = icmp sgt i64 %i.ajs, 0
  br i1 %i.ajt, label %bb.jh, label %bb.jk

bb.jh:                                            ; preds = %bb.jg
  %i.aju = load ptr, ptr %4, align 8, !tbaa !62
  %i.ajv = getelementptr i8, ptr %i.aju, i64 60
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !69
  %i.ajx = icmp slt i32 %i.ajw, 9
  %i.ajy = getelementptr i8, ptr %4, i64 56       ; 2 uses
  br i1 %i.ajx, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !30
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jh, %bb.ji
  %i.aka = phi ptr [ %i.ajz, %bb.ji ], [ %i.ajy, %bb.jh ]
  %i.akb = getelementptr i8, ptr %4, i64 40
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !88
  %i.akd = getelementptr i8, ptr %i.aka, i64 %i.akc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.akd, ptr noundef nonnull align 1 %.29, i64 noundef %i.ajs, i1 noundef false) #19
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.jg
  store ptr %.301159, ptr %0, align 8, !tbaa !29
  store ptr %.301123, ptr %1, align 8, !tbaa !29
  %i.ake = getelementptr i8, ptr %4, i64 40       ; 2 uses
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !88
  %i.akg = add i64 %i.akf, %i.ajs
  store i64 %i.akg, ptr %i.ake, align 8, !tbaa !88
  br label %bb.ma

bb.jl:                                            ; preds = %bb.a
  br label %bb.jf, !llvm.loop !234

bb.jm:                                            ; preds = %bb.jf
  %i.akh = load ptr, ptr %4, align 8, !tbaa !62
  %i.aki = getelementptr i8, ptr %i.akh, i64 64
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !70
  %i.akk = icmp slt i32 %i.akj, 9
  %i.akl = getelementptr i8, ptr %4, i64 80       ; 2 uses
  br i1 %i.akk, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !30
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jm, %bb.jn
  %i.akn = phi ptr [ %i.akm, %bb.jn ], [ %i.akl, %bb.jm ]
  %i.ako = getelementptr i8, ptr %4, i64 64       ; 3 uses
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !200 ; 2 uses
  %i.akq = add i64 %i.akp, 1
  store i64 %i.akq, ptr %i.ako, align 8, !tbaa !200
  %i.akr = getelementptr i8, ptr %i.akn, i64 %i.akp
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !30
  %i.akt = getelementptr i8, ptr %.301123, i64 1
  store i8 %i.aks, ptr %.301123, align 1, !tbaa !30
  %.pre1301.a = load i64, ptr %i.ako, align 8, !tbaa !200
  %.phi.trans.insert1302 = getelementptr i8, ptr %4, i64 72
  %.pre1303 = load i64, ptr %.phi.trans.insert1302, align 8, !tbaa !202
  br label %bb.je, !llvm.loop !235

bb.jp:                                            ; preds = %bb.l
  %i.aku = load i64, ptr %i.az, align 8, !tbaa !88 ; 3 uses
  %i.akv = add i64 %i.aku, %i.bc
  %.fr1217 = freeze i64 %i.akv                    ; 4 uses
  %i.akw = sext i32 %i.c to i64                   ; 3 uses
  %.not1216 = icmp sgt i64 %.fr1217, %i.akw
  br i1 %.not1216, label %bb.kf, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.akx = icmp sge i64 %.fr1217, %i.akw
  %i.aky = and i32 %5, 262144
  %.not1218 = icmp eq i32 %i.aky, 0
  %or.cond = or i1 %.not1218, %i.akx
  br i1 %or.cond, label %bb.jx, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.akz = load ptr, ptr %1, align 8, !tbaa !29
  %.not1219 = icmp eq ptr %i.akz, %.21095
  br i1 %.not1219, label %bb.jx, label %bb.js

bb.js:                                            ; preds = %bb.jr
  store i32 26, ptr %i.f, align 4, !tbaa !186
  %i.ala = icmp sgt i64 %i.bc, 0
  br i1 %i.ala, label %bb.jt, label %bb.jw

bb.jt:                                            ; preds = %bb.js
  %i.alb = load ptr, ptr %4, align 8, !tbaa !62
  %i.alc = getelementptr i8, ptr %i.alb, i64 60
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !69
  %i.ale = icmp slt i32 %i.ald, 9
  br i1 %i.ale, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.alf = load ptr, ptr %i.ba, align 8, !tbaa !30
  br label %bb.jv

bb.jv:                                            ; preds = %bb.jt, %bb.ju
  %i.alg = phi ptr [ %i.alf, %bb.ju ], [ %i.ba, %bb.jt ]
  %i.alh = getelementptr i8, ptr %i.alg, i64 %i.aku
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.alh, ptr noundef nonnull align 1 %.1, i64 noundef %i.bc, i1 noundef false) #19
  %.pre1292 = load i64, ptr %i.az, align 8, !tbaa !88
  %.pre1356.a = add i64 %.pre1292, %i.bc
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.js
  %.pre-phi1357 = phi i64 [ %.pre1356.a, %bb.jv ], [ %.fr1217, %bb.js ]
  store ptr %.21131, ptr %0, align 8, !tbaa !29
  store ptr %.21095, ptr %1, align 8, !tbaa !29
  store i64 %.pre-phi1357, ptr %i.az, align 8, !tbaa !88
  br label %bb.ma

bb.jx:                                            ; preds = %bb.jq, %bb.a, %bb.jr, %bb.kd
  %.311124 = phi ptr [ %.21095, %bb.jr ], [ %i.e, %bb.a ], [ %.21095, %bb.jq ], [ %i.e, %bb.kd ] ; 3 uses
  %.30 = phi ptr [ %.1, %bb.jr ], [ %i.d, %bb.a ], [ %.1, %bb.jq ], [ %i.d, %bb.kd ] ; 5 uses
  %i.ali = and i32 %5, 131072
  %.not1220 = icmp ne i32 %i.ali, 0
  %.phi.trans.insert1294 = getelementptr i8, ptr %4, i64 40 ; 3 uses
end_hunk_3
