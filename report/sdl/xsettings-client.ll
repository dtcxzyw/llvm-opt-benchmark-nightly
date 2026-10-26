Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/xsettings-client?download=true
inline.NumInlined: 27
inline.NumDeleted: 7
begin_hunk_0_@xsettings_client_process_event:bb.a
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [128 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.b, %i.k
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %1, align 8
  %i.n = icmp eq i32 %i.m, 33
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @check_manager_window(ptr noundef nonnull %0)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.b, %i.z
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %1, align 8
  switch i32 %i.ab, label %bb.j [
    i32 17, label %bb.h
    i32 28, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @check_manager_window(ptr noundef nonnull %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @read_settings(ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.f, %bb.g, %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_settings(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  store ptr null, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @X11_XSetErrorHandler, align 8
  %i.k = tail call ptr %i.j(ptr noundef nonnull @ignore_errors) #14
  %i.l = load ptr, ptr @X11_XGetWindowProperty, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = load i64, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = call i32 %i.l(ptr noundef %i.m, i64 noundef %i.n, i64 noundef %i.p, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef 0, i64 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14
  %i.r = load ptr, ptr @X11_XSetErrorHandler, align 8
  %i.s = call ptr %i.r(ptr noundef %i.k) #14      ; 0 uses
  %i.t = icmp eq i32 %i.q, 0
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.o, align 8
  %.not15 = icmp eq i64 %i.u, %i.w
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr @stderr, align 8
  %fwrite = call i64 @fwrite(ptr nonnull @.str.3, i64 35, i64 1, ptr %i.x) #17 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.b, align 4              ; 2 uses
  %.not16 = icmp eq i32 %i.y, 8
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr @stderr, align 8
  %i.aa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.4, i32 noundef %i.y) #18 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.e, align 8             ; 4 uses
  %i.ac = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %i.ae = ptrtoint ptr %i.ad to i64               ; 13 uses
  %i.af = icmp slt i64 %i.ac, 1
  br i1 %i.af, label %fetch_card8.exit.thread.i, label %fetch_card8.exit.i

fetch_card8.exit.i:                               ; preds = %bb.g
  %i.ag = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %or.cond.i = icmp ugt i8 %i.ag, 1
  br i1 %or.cond.i, label %.thread, label %fetch_card8.exit.thread.i

.thread:                                          ; preds = %fetch_card8.exit.i
  %i.ai = load ptr, ptr @stderr, align 8
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.5, i64 41, i64 1, ptr %i.ai) #17 ; 0 uses
  br label %parse_settings.exit

fetch_card8.exit.thread.i:                        ; preds = %fetch_card8.exit.i, %bb.g
  %.0191197.i = phi i8 [ %i.ag, %fetch_card8.exit.i ], [ 0, %bb.g ]
  %.sroa.44.3196.i = phi ptr [ %i.ah, %fetch_card8.exit.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.44.3196.i, i64 3
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ae, %i.ak
  %i.am = icmp slt i64 %i.al, 4
  br i1 %i.am, label %fetch_card32.exit.thread256.i, label %bb.h

bb.h:                                             ; preds = %fetch_card8.exit.thread.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.44.3196.i, i64 7 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ae, %i.ao
  %i.aq = icmp slt i64 %i.ap, 4
  br i1 %i.aq, label %fetch_card32.exit.thread256.i, label %fetch_card32.exit96.i

fetch_card32.exit96.i:                            ; preds = %bb.h
  %i.ar = load i32, ptr %i.an, align 4            ; 2 uses
  %i.as = icmp eq i8 %.0191197.i, 0               ; 9 uses
  %i.at = call i32 @llvm.bswap.i32(i32 %i.ar)
  %storemerge.i94.i = select i1 %i.as, i32 %i.ar, i32 %i.at ; 2 uses
  %.not.i = icmp eq i32 %storemerge.i94.i, 0
  br i1 %.not.i, label %parse_settings.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %fetch_card32.exit96.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.44.3196.i, i64 11
  br label %bb.i

bb.i:                                             ; preds = %fetch_card8.exit98.i, %.lr.ph.i
  %.0 = phi ptr [ null, %.lr.ph.i ], [ %.6, %fetch_card8.exit98.i ] ; 18 uses
  %.047285.i = phi i32 [ 0, %.lr.ph.i ], [ %i.es, %fetch_card8.exit98.i ]
  %.sroa.44.0284.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.sroa.44.1.i, %fetch_card8.exit98.i ] ; 4 uses
  %i.av = ptrtoint ptr %.sroa.44.0284.i to i64
  %i.aw = sub i64 %i.ae, %i.av
  %i.ax = icmp slt i64 %i.aw, 1
  br i1 %i.ax, label %fetch_card32.exit.thread256.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i8, ptr %.sroa.44.0284.i, align 1  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.44.0284.i, i64 2 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ae, %i.ba
  %i.bc = icmp slt i64 %i.bb, 2
  br i1 %i.bc, label %fetch_card32.exit.thread256.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = load i16, ptr %i.az, align 2            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.44.0284.i, i64 4 ; 3 uses
  %i.bf = call i16 @llvm.bswap.i16(i16 %i.bd)
  %storemerge.i99.i = select i1 %i.as, i16 %i.bd, i16 %i.bf
  %i.bg = zext i16 %storemerge.i99.i to i64       ; 4 uses
  %i.bh = add nuw nsw i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 131068                   ; 2 uses
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = sub i64 %i.ae, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bi
  br i1 %i.bl, label %fetch_card32.exit.thread256.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #15 ; 23 uses
  %.not76.i = icmp eq ptr %i.bm, null
  br i1 %.not76.i, label %fetch_card32.exit.thread273.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store i32 0, ptr %i.bn, align 8
  %i.bo = add nuw nsw i64 %i.bg, 1
  %i.bp = call noalias ptr @malloc(i64 noundef %i.bo) #15 ; 7 uses
  store ptr %i.bp, ptr %i.bm, align 8
  %.not77.i = icmp eq ptr %i.bp, null
  br i1 %.not77.i, label %fetch_card32.exit.thread273.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 2 %i.be, i64 %i.bg, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bg
  store i8 0, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 9 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.ae, %i.bs
  %i.bu = icmp slt i64 %i.bt, 4
  br i1 %i.bu, label %fetch_card32.exit.thread256.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 7 uses
  %i.bx = call i32 @llvm.bswap.i32(i32 %i.bv)
  %storemerge.i101.i = select i1 %i.as, i32 %i.bv, i32 %i.bx
  %i.by = zext i32 %storemerge.i101.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %i.by, ptr %i.bz, align 8
  switch i8 %i.ay, label %bb.z [
    i8 0, label %bb.p
    i8 1, label %bb.r
    i8 2, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.ae, %i.ca
  %i.cc = icmp slt i64 %i.cb, 4
  br i1 %i.cc, label %fetch_card32.exit.thread256.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cf = call i32 @llvm.bswap.i32(i32 %i.cd)
  %storemerge.i104.i = select i1 %i.as, i32 %i.cd, i32 %i.cf
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 %storemerge.i104.i, ptr %i.cg, align 8
  br label %bb.z

bb.r:                                             ; preds = %bb.o
  %i.ch = ptrtoint ptr %i.bw to i64
  %i.ci = sub i64 %i.ae, %i.ch
  %i.cj = icmp slt i64 %i.ci, 4
  br i1 %i.cj, label %fetch_card32.exit.thread256.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.ck)
  %storemerge.i107.i = select i1 %i.as, i32 %i.ck, i32 %i.cm ; 3 uses
  %i.cn = add i32 %storemerge.i107.i, 3
  %i.co = and i32 %i.cn, -4
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = add i32 %storemerge.i107.i, 1           ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = ptrtoint ptr %i.cl to i64
  %i.ct = sub i64 %i.ae, %i.cs
  %i.cu = icmp ult i64 %i.ct, %i.cp
  %or.cond281.i = select i1 %i.cr, i1 true, i1 %i.cu
  br i1 %or.cond281.i, label %fetch_card32.exit.thread256.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = zext i32 %i.cq to i64
  %i.cw = call noalias ptr @malloc(i64 noundef %i.cv) #15 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.cw, ptr %i.cx, align 8
  %.not84.i = icmp eq ptr %i.cw, null
  br i1 %.not84.i, label %fetch_card32.exit.thread273.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = zext i32 %storemerge.i107.i to i64      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 4 %i.cl, i64 %i.cy, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cy
  store i8 0, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp
  br label %bb.z

bb.v:                                             ; preds = %bb.o
  %i.db = ptrtoint ptr %i.bw to i64
  %i.dc = sub i64 %i.ae, %i.db
  %i.dd = icmp slt i64 %i.dc, 2
  br i1 %i.dd, label %fetch_card32.exit.thread256.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.df = load i16, ptr %i.bw, align 4            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.br, i64 6 ; 2 uses
  %i.dh = call i16 @llvm.bswap.i16(i16 %i.df)
  %storemerge.i.i.i = select i1 %i.as, i16 %i.df, i16 %i.dh
  store i16 %storemerge.i.i.i, ptr %i.de, align 8
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.ae, %i.di
  %i.dk = icmp slt i64 %i.dj, 2
  br i1 %i.dk, label %fetch_card32.exit.thread256.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 18
  %i.dm = load i16, ptr %i.dg, align 2            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.do = call i16 @llvm.bswap.i16(i16 %i.dm)
  %storemerge.i.i110.i = select i1 %i.as, i16 %i.dm, i16 %i.do
  store i16 %storemerge.i.i110.i, ptr %i.dl, align 2
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.ae, %i.dp
  %i.dr = icmp slt i64 %i.dq, 2
  br i1 %i.dr, label %fetch_card32.exit.thread256.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.dt = load i16, ptr %i.dn, align 4            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.br, i64 10 ; 2 uses
  %i.dv = call i16 @llvm.bswap.i16(i16 %i.dt)
  %storemerge.i.i113.i = select i1 %i.as, i16 %i.dt, i16 %i.dv
  store i16 %storemerge.i.i113.i, ptr %i.ds, align 4
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.ae, %i.dw
  %i.dy = icmp slt i64 %i.dx, 2
  br i1 %i.dy, label %fetch_card32.exit.thread256.i, label %fetch_ushort.exit118.thread.i

fetch_ushort.exit118.thread.i:                    ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bm, i64 22
  %i.ea = load i16, ptr %i.du, align 2            ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.ec = call i16 @llvm.bswap.i16(i16 %i.ea)
  %storemerge.i.i116.i = select i1 %i.as, i16 %i.ea, i16 %i.ec
  store i16 %storemerge.i.i116.i, ptr %i.dz, align 2
  br label %bb.z

bb.z:                                             ; preds = %fetch_ushort.exit118.thread.i, %bb.u, %bb.q, %bb.o
  %.sroa.44.1.i = phi ptr [ %i.bw, %bb.o ], [ %i.ce, %bb.q ], [ %i.da, %bb.u ], [ %i.eb, %fetch_ushort.exit118.thread.i ]
  %i.ed = zext i8 %i.ay to i32
  store i32 %i.ed, ptr %i.bn, align 8
  %i.ee = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 7 uses
  %.not.i27 = icmp eq ptr %i.ee, null
  br i1 %.not.i27, label %fetch_card32.exit.thread273.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bm, ptr %i.ee, align 8
  %.not2941.i = icmp eq ptr %.0, null
  br i1 %.not2941.i, label %fetch_card8.exit98.i, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.aa
  %i.ef = load ptr, ptr %.0, align 8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.eg) #16 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %fetch_card8.exit98.i, label %.lr.ph

bb.ab:                                            ; preds = %bb.ac
  %i.ej = load ptr, ptr %.021.i, align 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.ek) #16 ; 2 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %.thread34.thread54.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i28, %bb.ab
  %i.en = phi i32 [ %i.el, %bb.ab ], [ %i.eh, %.lr.ph.i28 ]
  %.02143.i52 = phi ptr [ %.021.i, %bb.ab ], [ %.0, %.lr.ph.i28 ] ; 2 uses
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %.02143.i52, i64 8
  %.021.i = load ptr, ptr %i.ep, align 8          ; 4 uses
  %.not29.i = icmp eq ptr %.021.i, null
  br i1 %.not29.i, label %.thread34.thread54.i, label %bb.ab

.thread34.thread54.i:                             ; preds = %bb.ac, %bb.ab
  %.021.i.lcssa = phi ptr [ null, %bb.ac ], [ %.021.i, %bb.ab ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.02143.i52, i64 8
  store ptr %i.ee, ptr %i.eq, align 8
  br label %fetch_card8.exit98.i

fetch_card8.exit98.i:                             ; preds = %.lr.ph.i28, %.thread34.thread54.i, %bb.aa
  %.6 = phi ptr [ %.0, %.thread34.thread54.i ], [ %i.ee, %bb.aa ], [ %i.ee, %.lr.ph.i28 ] ; 2 uses
  %.021.lcssa52.i = phi ptr [ %.021.i.lcssa, %.thread34.thread54.i ], [ null, %bb.aa ], [ %.0, %.lr.ph.i28 ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %.021.lcssa52.i, ptr %i.er, align 8
  %i.es = add nuw i32 %.047285.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.es, %storemerge.i94.i
  br i1 %exitcond.not.i, label %parse_settings.exit, label %bb.i, !llvm.loop !7

fetch_card32.exit.thread273.i:                    ; preds = %bb.z, %bb.t, %bb.m, %bb.l
  %.lcssa = phi ptr [ %i.bm, %bb.z ], [ %i.bm, %bb.t ], [ %i.bm, %bb.m ], [ null, %bb.l ]
  %i.et = load ptr, ptr @stderr, align 8
  %fwrite89.i = call i64 @fwrite(ptr nonnull @.str.6, i64 41, i64 1, ptr %i.et) #17 ; 0 uses
  br label %.loopexit.i

fetch_card32.exit.thread256.i:                    ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.s, %bb.r, %bb.p, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %fetch_card8.exit.thread.i
  %.1 = phi ptr [ null, %fetch_card8.exit.thread.i ], [ null, %bb.h ], [ %.0, %bb.i ], [ %.0, %bb.j ], [ %.0, %bb.k ], [ %.0, %bb.n ], [ %.0, %bb.p ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.v ], [ %.0, %bb.w ], [ %.0, %bb.x ], [ %.0, %bb.y ]
  %.2259.i = phi ptr [ null, %fetch_card8.exit.thread.i ], [ null, %bb.h ], [ %i.bm, %bb.y ], [ %i.bm, %bb.x ], [ %i.bm, %bb.w ], [ %i.bm, %bb.v ], [ %i.bm, %bb.s ], [ %i.bm, %bb.r ], [ %i.bm, %bb.p ], [ %i.bm, %bb.n ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ]
  %i.eu = load ptr, ptr @stderr, align 8
  %fwrite88.i = call i64 @fwrite(ptr nonnull @.str.7, i64 42, i64 1, ptr %i.eu) #17 ; 0 uses
  br label %.loopexit.i

bb.ad:                                            ; preds = %.lr.ph
  call void @free(ptr noundef %i.ee) #14
  %i.ev = load ptr, ptr @stderr, align 8
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.bp) #18 ; 0 uses
  br label %.loopexit.thread.i

.loopexit.i:                                      ; preds = %fetch_card32.exit.thread256.i, %fetch_card32.exit.thread273.i
  %.2 = phi ptr [ %.1, %fetch_card32.exit.thread256.i ], [ %.0, %fetch_card32.exit.thread273.i ] ; 2 uses
  %.2260.i = phi ptr [ %.2259.i, %fetch_card32.exit.thread256.i ], [ %.lcssa, %fetch_card32.exit.thread273.i ] ; 2 uses
  %.not90.i = icmp eq ptr %.2260.i, null
  br i1 %.not90.i, label %bb.af, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %bb.ad
  %.3 = phi ptr [ %.2, %.loopexit.i ], [ %.0, %bb.ad ]
  %.2260300.i = phi ptr [ %.2260.i, %.loopexit.i ], [ %i.bm, %bb.ad ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.2260300.i, i64 8
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.ae, label %xsettings_setting_free.exit.i

bb.ae:                                            ; preds = %.loopexit.thread.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.2260300.i, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  call void @free(ptr noundef %i.fb) #14
  br label %xsettings_setting_free.exit.i

xsettings_setting_free.exit.i:                    ; preds = %bb.ae, %.loopexit.thread.i
  %i.fc = load ptr, ptr %.2260300.i, align 8
  call void @free(ptr noundef %i.fc) #14
  call void @free(ptr noundef nonnull %.2260300.i) #14
  br label %bb.af

bb.af:                                            ; preds = %xsettings_setting_free.exit.i, %.loopexit.i
  %.4 = phi ptr [ %.2, %.loopexit.i ], [ %.3, %xsettings_setting_free.exit.i ] ; 2 uses
  %.not5.i.i = icmp eq ptr %.4, null
  br i1 %.not5.i.i, label %parse_settings.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af, %xsettings_setting_free.exit.i.i
  %.06.i.i = phi ptr [ %i.fe, %xsettings_setting_free.exit.i.i ], [ %.4, %bb.af ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = load ptr, ptr %.06.i.i, align 8         ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = icmp eq i32 %i.fh, 1
  br i1 %i.fi, label %bb.ag, label %xsettings_setting_free.exit.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void @free(ptr noundef %i.fk) #14
  br label %xsettings_setting_free.exit.i.i

xsettings_setting_free.exit.i.i:                  ; preds = %bb.ag, %.lr.ph.i.i
  %i.fl = load ptr, ptr %i.ff, align 8
  call void @free(ptr noundef %i.fl) #14
  call void @free(ptr noundef nonnull %i.ff) #14
  call void @free(ptr noundef nonnull %.06.i.i) #14
  %.not.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i, label %parse_settings.exit, label %.lr.ph.i.i, !llvm.loop !0

parse_settings.exit:                              ; preds = %fetch_card8.exit98.i, %xsettings_setting_free.exit.i.i, %.thread, %fetch_card32.exit96.i, %bb.af
  %i.fm = phi ptr [ null, %.thread ], [ null, %fetch_card32.exit96.i ], [ null, %xsettings_setting_free.exit.i.i ], [ null, %bb.af ], [ %.6, %fetch_card8.exit98.i ]
  store ptr %i.fm, ptr %i.f, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.f, %parse_settings.exit, %bb.d
  %i.fn = load ptr, ptr @X11_XFree, align 8
  %i.fo = load ptr, ptr %i.e, align 8
  %i.fp = call i32 %i.fn(ptr noundef %i.fo) #14   ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.ah, %bb.a
  %i.fq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %.not.i17 = icmp eq ptr %i.fs, null
  br i1 %.not.i17, label %notify_changes.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ai
  %i.ft = icmp ne ptr %i.g, null                  ; 2 uses
  %i.fu = icmp ne ptr %i.fq, null                 ; 2 uses
  %i.fv = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %i.fv, label %.lr.ph.i19, label %xsettings_list_free.exit

.lr.ph.i19:                                       ; preds = %.preheader.i
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.as, %.lr.ph.i19
  %i.fx = phi i1 [ %i.fu, %.lr.ph.i19 ], [ %i.ii, %bb.as ] ; 2 uses
  %i.fy = phi i1 [ %i.ft, %.lr.ph.i19 ], [ %i.ih, %bb.as ] ; 2 uses
  %.02951.i = phi ptr [ %i.fq, %.lr.ph.i19 ], [ %.1.i, %bb.as ] ; 3 uses
  %.03050.i = phi ptr [ %i.g, %.lr.ph.i19 ], [ %.13145.i, %bb.as ] ; 5 uses
  %or.cond.i20 = select i1 %i.fy, i1 %i.fx, i1 false
  br i1 %or.cond.i20, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.pre53.i = load ptr, ptr %i.fr, align 8        ; 2 uses
  br i1 %i.fy, label %..thread_crit_edge54.i, label %.thread43.critedge.i

..thread_crit_edge54.i:                           ; preds = %bb.ak
  %.pre55.i = load ptr, ptr %.03050.i, align 8
  %.pre56.i = load ptr, ptr %.pre55.i, align 8
  br label %.thread.i21

bb.al:                                            ; preds = %bb.aj
  %i.fz = load ptr, ptr %.03050.i, align 8        ; 8 uses
  %i.ga = load ptr, ptr %i.fz, align 8            ; 3 uses
  %i.gb = load ptr, ptr %.02951.i, align 8        ; 10 uses
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ga, ptr noundef nonnull dereferenceable(1) %i.gc) #16 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %..thread_crit_edge.i, label %bb.am

..thread_crit_edge.i:                             ; preds = %bb.al
  %.pre.i23 = load ptr, ptr %i.fr, align 8
  br label %.thread.i21

bb.am:                                            ; preds = %bb.al
  %i.gf = icmp eq i32 %i.gd, 0
  br i1 %i.gf, label %bb.an, label %.thread37.i

bb.an:                                            ; preds = %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gh = load i32, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gj = load i32, ptr %i.gi, align 8
  %.not.i.i22 = icmp eq i32 %i.gh, %i.gj
  br i1 %.not.i.i22, label %bb.ao, label %xsettings_setting_equal.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  switch i32 %i.gh, label %xsettings_setting_equal.exit.thread.i [
    i32 0, label %xsettings_setting_equal.exit.i
    i32 2, label %bb.ap
    i32 1, label %.split.i
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gl = load i16, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gn = load i16, ptr %i.gm, align 8
  %i.go = icmp eq i16 %i.gl, %i.gn
  br i1 %i.go, label %bb.aq, label %xsettings_setting_equal.exit.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 18
  %i.gq = load i16, ptr %i.gp, align 2
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 18
  %i.gs = load i16, ptr %i.gr, align 2
  %i.gt = icmp eq i16 %i.gq, %i.gs
  br i1 %i.gt, label %bb.ar, label %xsettings_setting_equal.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  %i.gv = load i16, ptr %i.gu, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  %i.gx = load i16, ptr %i.gw, align 4
  %i.gy = icmp eq i16 %i.gv, %i.gx
  br i1 %i.gy, label %.split58.i, label %xsettings_setting_equal.exit.thread.i

.split58.i:                                       ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fz, i64 22
  %i.ha = load i16, ptr %i.gz, align 2
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 22
  %i.hc = load i16, ptr %i.hb, align 2
  %i.hd = icmp eq i16 %i.ha, %i.hc
  br i1 %i.hd, label %.thread49.i, label %xsettings_setting_equal.exit.thread.i

.split.i:                                         ; preds = %bb.ao
  %i.he = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hf, ptr noundef nonnull dereferenceable(1) %i.hh) #16
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %.thread49.i, label %xsettings_setting_equal.exit.thread.i

xsettings_setting_equal.exit.i:                   ; preds = %bb.ao
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.hl = load i32, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.hn = load i32, ptr %i.hm, align 8
  %i.ho = icmp eq i32 %i.hl, %i.hn
  br i1 %i.ho, label %.thread49.i, label %xsettings_setting_equal.exit.thread.i

xsettings_setting_equal.exit.thread.i:            ; preds = %xsettings_setting_equal.exit.i, %.split.i, %.split58.i, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.hp = load ptr, ptr %i.fr, align 8
  %i.hq = load ptr, ptr %i.fw, align 8
  call void %i.hp(ptr noundef nonnull %i.ga, i32 noundef 1, ptr noundef nonnull %i.gb, ptr noundef %i.hq) #14, !inline_history !8
  br label %.thread49.i

.thread37.i:                                      ; preds = %bb.am
  %i.hr = load ptr, ptr %i.fr, align 8
  %i.hs = load ptr, ptr %i.fw, align 8
  call void %i.hr(ptr noundef nonnull %i.gc, i32 noundef 0, ptr noundef nonnull %i.gb, ptr noundef %i.hs) #14, !inline_history !8
  %i.ht = getelementptr inbounds nuw i8, ptr %.03050.i, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  br label %.thread43.i

.thread49.i:                                      ; preds = %xsettings_setting_equal.exit.thread.i, %xsettings_setting_equal.exit.i, %.split.i, %.split58.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.03050.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  br label %.thread43.i

.thread.i21:                                      ; preds = %..thread_crit_edge.i, %..thread_crit_edge54.i
  %i.hx = phi ptr [ %i.ga, %..thread_crit_edge.i ], [ %.pre56.i, %..thread_crit_edge54.i ]
  %i.hy = phi ptr [ %.pre.i23, %..thread_crit_edge.i ], [ %.pre53.i, %..thread_crit_edge54.i ]
end_hunk_0
