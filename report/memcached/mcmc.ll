Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/mcmc?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
begin_hunk_0_@mcmc_parse_buf:bb.a
  %i.bg = getelementptr i8, ptr %0, i64 %i.bc
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23
  %i.bj = icmp eq i8 %i.bi, 13
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bk = add i64 %i.be, -2
  store i64 %i.bk, ptr %i.bf, align 8, !tbaa !23
  br label %bb.at

bb.ab:                                            ; preds = %bb.z
  %i.bl = add i64 %i.be, -1
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !23
  br label %bb.at

bb.ac:                                            ; preds = %bb.y, %.thread.i
  %.1140.i = phi i32 [ -19, %.thread.i ], [ %.1.i, %bb.y ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.at

bb.ad:                                            ; preds = %bb.g
  %i.bn = load i16, ptr %0, align 1
  %i.bo = xor i16 %i.bn, 20037
  %i.bp = getelementptr i8, ptr %0, i64 2
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i16
  %i.bs = xor i16 %i.br, 68
  %i.bt = or i16 %i.bo, %i.bs
  %i.bu = icmp ne i16 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.thread146.sink.split.i, label %.thread141.i

bb.ae:                                            ; preds = %bb.g
  %i.bx = load i32, ptr %0, align 1
  %i.by = icmp ne i32 %i.bx, 1413567571
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %.thread141.i

bb.af:                                            ; preds = %bb.ae
  store i16 102, ptr %2, align 8, !tbaa !34
  %i.cb = tail call fastcc i32 @_mcmc_parse_stat_line(ptr noundef nonnull %0, ptr noundef nonnull %2)
  br label %bb.at

bb.ag:                                            ; preds = %bb.g
  %i.cc = load i32, ptr %0, align 1
  %i.cd = xor i32 %i.cc, 1431060822
  %i.ce = getelementptr i8, ptr %0, i64 4
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = xor i32 %i.cg, 69
  %i.ci = or i32 %i.cd, %i.ch
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not123.i, label %.thread141.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = tail call fastcc i32 @_mcmc_parse_value_line(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2)
  br label %bb.at

bb.aj:                                            ; preds = %bb.ag
  %i.cn = load i32, ptr %0, align 1
  %i.co = xor i32 %i.cn, 1330795077
  %i.cp = getelementptr i8, ptr %0, i64 4
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = xor i32 %i.cr, 82
  %i.ct = or i32 %i.co, %i.cs
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.thread141.sink.split.i, label %.thread141.i

bb.ak:                                            ; preds = %bb.g
  %i.cx = load i32, ptr %0, align 1
  %i.cy = xor i32 %i.cx, 1380930643
  %i.cz = getelementptr i8, ptr %0, i64 4
  %i.da = load i16, ptr %i.cz, align 1
  %i.db = zext i16 %i.da to i32
  %i.dc = xor i32 %i.db, 17477
  %i.dd = or i32 %i.cy, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %.thread146.sink.split.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dh = load i32, ptr %0, align 1
  %i.di = xor i32 %i.dh, 1397315653
  %i.dj = getelementptr i8, ptr %0, i64 4
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i32
  %i.dm = xor i32 %i.dl, 21332
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %.thread146.sink.split.i, label %.thread141.i

bb.am:                                            ; preds = %bb.g
  %i.dr = load i32, ptr %0, align 1
  %i.ds = xor i32 %i.dr, 1162626372
  %i.dt = getelementptr i8, ptr %0, i64 3
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = xor i32 %i.du, 1145394245
  %i.dw = or i32 %i.ds, %i.dv
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.thread146.sink.split.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ea = load i32, ptr %0, align 1
  %i.eb = xor i32 %i.ea, 1129664340
  %i.ec = getelementptr i8, ptr %0, i64 3
  %i.ed = load i32, ptr %i.ec, align 1
  %i.ee = xor i32 %i.ed, 1145391171
  %i.ef = or i32 %i.eb, %i.ee
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.thread146.sink.split.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ej = load i32, ptr %0, align 1
  %i.ek = xor i32 %i.ej, 1397900630
  %i.el = getelementptr i8, ptr %0, i64 3
  %i.em = load i32, ptr %i.el, align 1
  %i.en = xor i32 %i.em, 1313818963
  %i.eo = or i32 %i.ek, %i.en
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = zext i1 %i.ep to i32
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %.thread146.sink.split.i, label %.thread141.i

bb.ap:                                            ; preds = %bb.g
  %i.es = load i64, ptr %0, align 1
  %i.et = xor i64 %i.es, 5644504871644450638
  %i.eu = getelementptr i8, ptr %0, i64 8
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i64
  %i.ex = xor i64 %i.ew, 68
  %i.ey = or i64 %i.et, %i.ex
  %i.ez = icmp ne i64 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %.thread146.sink.split.i, label %.thread141.i

bb.aq:                                            ; preds = %bb.g
  %i.fc = load i64, ptr %0, align 1
  %i.fd = xor i64 %i.fc, 5931051951328612174
  %i.fe = getelementptr i8, ptr %0, i64 8
  %i.ff = load i16, ptr %i.fe, align 1
  %i.fg = zext i16 %i.ff to i64
  %i.fh = xor i64 %i.fg, 17477
  %i.fi = or i64 %i.fd, %i.fh
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.thread146.sink.split.i, label %.thread141.i

bb.ar:                                            ; preds = %bb.g
  %i.fm = load i64, ptr %0, align 1
  %i.fn = xor i64 %i.fm, 4998804569158993235
  %i.fo = getelementptr i8, ptr %0, i64 8
  %i.fp = load i32, ptr %i.fo, align 1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = xor i64 %i.fq, 1380930130
  %i.fs = or i64 %i.fn, %i.fr
  %i.ft = icmp ne i64 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.thread141.sink.split.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fw = load i64, ptr %0, align 1
  %i.fx = xor i64 %i.fw, 4998806806551153731
  %i.fy = getelementptr i8, ptr %0, i64 8
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = zext i32 %i.fz to i64
  %i.gb = xor i64 %i.ga, 1380930130
  %i.gc = or i64 %i.fx, %i.gb
  %i.gd = icmp ne i64 %i.gc, 0
  %i.ge = zext i1 %i.gd to i32
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread141.sink.split.i, label %.thread141.i

bb.at:                                            ; preds = %bb.ai, %bb.af, %bb.ac, %bb.ab, %bb.aa
  %.2.i = phi i32 [ %.1140.i, %bb.ac ], [ %i.cb, %bb.af ], [ %i.cm, %bb.ai ], [ %.1.i, %bb.aa ], [ %.1.i, %bb.ab ] ; 3 uses
  %i.gg = icmp slt i32 %.2.i, 0
  br i1 %i.gg, label %.thread141.i, label %.thread146.i

.thread141.sink.split.i:                          ; preds = %bb.as, %bb.ar, %bb.aj
  %.2143.ph.i = phi i32 [ -21, %bb.aj ], [ -23, %bb.ar ], [ -22, %bb.as ]
  store i16 108, ptr %2, align 8, !tbaa !34
  br label %.thread141.i

.thread141.i:                                     ; preds = %.thread141.sink.split.i, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.al, %bb.aj, %bb.ah, %bb.ae, %bb.ad
  %.2143.i = phi i32 [ %.2.i, %bb.at ], [ -19, %bb.ah ], [ -1, %bb.ap ], [ -1, %bb.ao ], [ -1, %bb.al ], [ -1, %bb.aj ], [ -1, %bb.as ], [ -1, %bb.aq ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ %.2143.ph.i, %.thread141.sink.split.i ]
  %i.gh = trunc nsw i32 %.2143.i to i16
  %i.gi = sub nsw i16 0, %i.gh
  br label %_mcmc_parse_response.exit

.thread146.sink.split.i:                          ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ad
  %.sink.i = phi i16 [ 104, %bb.an ], [ 104, %bb.am ], [ 104, %bb.al ], [ 106, %bb.ao ], [ 104, %bb.ap ], [ 104, %bb.ak ], [ 105, %bb.ad ], [ 104, %bb.aq ]
  %.2148.ph.i = phi i32 [ 11, %bb.an ], [ 10, %bb.am ], [ 9, %bb.al ], [ 12, %bb.ao ], [ 13, %bb.ap ], [ 8, %bb.ak ], [ 17, %bb.ad ], [ 14, %bb.aq ]
  store i16 %.sink.i, ptr %2, align 8, !tbaa !34
  br label %.thread146.i

.thread146.i:                                     ; preds = %.thread146.sink.split.i, %bb.at
  %.2148.i = phi i32 [ %.2.i, %bb.at ], [ %.2148.ph.i, %.thread146.sink.split.i ]
  %i.gj = trunc nuw nsw i32 %.2148.i to i16
  br label %_mcmc_parse_response.exit

_mcmc_parse_response.exit:                        ; preds = %.thread146.i, %.thread141.i, %bb.f, %bb.e, %bb.a
  %.sink161.i.sink = phi i16 [ 5, %bb.a ], [ %i.gi, %.thread141.i ], [ %i.gj, %.thread146.i ], [ 15, %bb.e ], [ 18, %bb.f ]
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %.thread141.i ], [ 0, %.thread146.i ], [ 0, %bb.e ], [ -1, %bb.f ]
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %.sink161.i.sink, ptr %i.gk, align 2, !tbaa !48
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @mcmc_fd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @mcmc_size(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  ret i64 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @mcmc_min_buffer_size(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  ret i64 2048
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mcmc_check_nonblock_connect(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 4, ptr %i.a, align 4, !tbaa !29
  %i.b = load i32, ptr %0, align 8, !tbaa !39
  %i.c = call i32 @getsockopt(i32 noundef %i.b, i32 noundef 1, i32 noundef 4, ptr noundef %1, ptr noundef nonnull %i.a) #20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !29
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #18
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  store i32 %i.h, ptr %1, align 4, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 4) i32 @mcmc_connect(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.addrinfo, align 8           ; 7 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !55
  %i.e = call i32 @getaddrinfo(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr %i.c, align 4, !tbaa !54
  %i.f = call i32 @getaddrinfo(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not50 = icmp eq i32 %i.f, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !56
  br label %.thread59

bb.d:                                             ; preds = %bb.b, %bb.a
  %.04073 = load ptr, ptr %i.a, align 8, !tbaa !51 ; 4 uses
  %.not5174 = icmp eq ptr %.04073, null
  br i1 %.not5174, label %.thread59.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = and i32 %3, 2
  %.not52 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = and i32 %3, 1
  %.not53 = icmp eq i32 %i.i, 0
  br i1 %.not53, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not52, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.g
  %.04075.us.us = phi ptr [ %.040.us.us, %bb.g ], [ %.04073, %.lr.ph.split.us ] ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = call i32 @socket(i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o) #20 ; 4 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split.us
  %i.r = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !59
  %i.v = call i32 @connect(i32 noundef %i.p, ptr noundef %i.s, i32 noundef %i.u) #20
  %.not54.us.us = icmp eq i32 %i.v, -1
  br i1 %.not54.us.us, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @close(i32 noundef %i.p) #20    ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.04075.us.us, i64 40
  %.040.us.us = load ptr, ptr %i.x, align 8, !tbaa !51 ; 2 uses
  %.not51.us.us = icmp eq ptr %.040.us.us, null
  br i1 %.not51.us.us, label %.thread59, label %.lr.ph.split.us.split.us, !llvm.loop !49

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.j
  %.04075.us = phi ptr [ %.040.us, %bb.j ], [ %.04073, %.lr.ph.split.us ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04075.us, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %.04075.us, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %.04075.us, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !57
  %i.ae = call i32 @socket(i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad) #20 ; 6 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.us.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 1, ptr %i.b, align 4, !tbaa !29
  %i.ag = call i32 @setsockopt(i32 noundef %i.ae, i32 noundef 1, i32 noundef 9, ptr noundef nonnull %i.b, i32 noundef 4) #20
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %.split.us, label %.thread.us

.thread.us:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %.04075.us, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.04075.us, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.am = call i32 @connect(i32 noundef %i.ae, ptr noundef %i.aj, i32 noundef %i.al) #20
  %.not54.us = icmp eq i32 %i.am, -1
  br i1 %.not54.us, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.thread.us
  %i.an = call i32 @close(i32 noundef %i.ae) #20  ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.split
  %i.ao = getelementptr inbounds nuw i8, ptr %.04075.us, i64 40
  %.040.us = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %.not51.us = icmp eq ptr %.040.us, null
  br i1 %.not51.us, label %.thread59, label %.lr.ph.split.us.split, !llvm.loop !49

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %.04075 = phi ptr [ %.040, %bb.r ], [ %.04073, %.lr.ph ] ; 6 uses
end_hunk_0
