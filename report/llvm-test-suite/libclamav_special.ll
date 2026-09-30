Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_special?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_check_mydoom_log:bb.a
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.bt = call noundef i32 @llvm.bswap.i32(i32 %i.bs)
  %i.bu = xor i32 %i.bt, %i.au                    ; 2 uses
  store i32 %i.bu, ptr %i.aj, align 4, !tbaa !7
  %i.bv = add nsw i32 %i.bu, %i.br
  %i.bw = xor i32 %i.bv, -1                       ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.bw) #5
  %i.bx = load i32, ptr %i.a, align 16, !tbaa !7
  %.not22.1 = icmp eq i32 %i.bx, %i.bw
  br i1 %.not22.1, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.by = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 32) #5
  %.not.2 = icmp eq i32 %i.by, 32
  br i1 %.not.2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bz = load i32, ptr %i.a, align 16, !tbaa !7
  %i.ca = xor i32 %i.bz, -1
  %i.cb = call i32 @llvm.bswap.i32(i32 %i.ca)     ; 2 uses
  store i32 %i.cb, ptr %i.a, align 16, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.cb) #5
  %i.cc = load i32, ptr %i.a, align 16, !tbaa !7  ; 7 uses
  %i.cd = load i32, ptr %i.g, align 4, !tbaa !7
  %i.ce = call noundef i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cf = xor i32 %i.ce, %i.cc                    ; 2 uses
  store i32 %i.cf, ptr %i.g, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.k, align 8, !tbaa !7
  %i.ch = call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = xor i32 %i.ch, %i.cc                    ; 2 uses
  store i32 %i.ci, ptr %i.k, align 8, !tbaa !7
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = load i32, ptr %i.p, align 4, !tbaa !7
  %i.cl = call noundef i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = xor i32 %i.cl, %i.cc                    ; 2 uses
  store i32 %i.cm, ptr %i.p, align 4, !tbaa !7
  %i.cn = add nsw i32 %i.cm, %i.cj
  %i.co = load i32, ptr %i.u, align 16, !tbaa !7
  %i.cp = call noundef i32 @llvm.bswap.i32(i32 %i.co)
  %i.cq = xor i32 %i.cp, %i.cc                    ; 2 uses
  store i32 %i.cq, ptr %i.u, align 16, !tbaa !7
  %i.cr = add nsw i32 %i.cq, %i.cn
  %i.cs = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ct = call noundef i32 @llvm.bswap.i32(i32 %i.cs)
  %i.cu = xor i32 %i.ct, %i.cc                    ; 2 uses
  store i32 %i.cu, ptr %i.z, align 4, !tbaa !7
  %i.cv = add nsw i32 %i.cu, %i.cr
  %i.cw = load i32, ptr %i.ae, align 8, !tbaa !7
  %i.cx = call noundef i32 @llvm.bswap.i32(i32 %i.cw)
  %i.cy = xor i32 %i.cx, %i.cc                    ; 2 uses
  store i32 %i.cy, ptr %i.ae, align 8, !tbaa !7
  %i.cz = add nsw i32 %i.cy, %i.cv
  %i.da = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.db = call noundef i32 @llvm.bswap.i32(i32 %i.da)
  %i.dc = xor i32 %i.db, %i.cc                    ; 2 uses
  store i32 %i.dc, ptr %i.aj, align 4, !tbaa !7
  %i.dd = add nsw i32 %i.dc, %i.cz
  %i.de = xor i32 %i.dd, -1                       ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.de) #5
  %i.df = load i32, ptr %i.a, align 16, !tbaa !7
  %.not22.2 = icmp eq i32 %i.df, %i.de
  br i1 %.not22.2, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.dg = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 32) #5
  %.not.3 = icmp eq i32 %i.dg, 32
  br i1 %.not.3, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.dh = load i32, ptr %i.a, align 16, !tbaa !7
  %i.di = xor i32 %i.dh, -1
  %i.dj = call i32 @llvm.bswap.i32(i32 %i.di)     ; 2 uses
  store i32 %i.dj, ptr %i.a, align 16, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.dj) #5
  %i.dk = load i32, ptr %i.a, align 16, !tbaa !7  ; 7 uses
  %i.dl = load i32, ptr %i.g, align 4, !tbaa !7
  %i.dm = call noundef i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = xor i32 %i.dm, %i.dk                    ; 2 uses
  store i32 %i.dn, ptr %i.g, align 4, !tbaa !7
  %i.do = load i32, ptr %i.k, align 8, !tbaa !7
  %i.dp = call noundef i32 @llvm.bswap.i32(i32 %i.do)
  %i.dq = xor i32 %i.dp, %i.dk                    ; 2 uses
  store i32 %i.dq, ptr %i.k, align 8, !tbaa !7
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = load i32, ptr %i.p, align 4, !tbaa !7
  %i.dt = call noundef i32 @llvm.bswap.i32(i32 %i.ds)
  %i.du = xor i32 %i.dt, %i.dk                    ; 2 uses
  store i32 %i.du, ptr %i.p, align 4, !tbaa !7
  %i.dv = add nsw i32 %i.du, %i.dr
  %i.dw = load i32, ptr %i.u, align 16, !tbaa !7
  %i.dx = call noundef i32 @llvm.bswap.i32(i32 %i.dw)
  %i.dy = xor i32 %i.dx, %i.dk                    ; 2 uses
  store i32 %i.dy, ptr %i.u, align 16, !tbaa !7
  %i.dz = add nsw i32 %i.dy, %i.dv
  %i.ea = load i32, ptr %i.z, align 4, !tbaa !7
  %i.eb = call noundef i32 @llvm.bswap.i32(i32 %i.ea)
  %i.ec = xor i32 %i.eb, %i.dk                    ; 2 uses
  store i32 %i.ec, ptr %i.z, align 4, !tbaa !7
  %i.ed = add nsw i32 %i.ec, %i.dz
  %i.ee = load i32, ptr %i.ae, align 8, !tbaa !7
  %i.ef = call noundef i32 @llvm.bswap.i32(i32 %i.ee)
  %i.eg = xor i32 %i.ef, %i.dk                    ; 2 uses
  store i32 %i.eg, ptr %i.ae, align 8, !tbaa !7
  %i.eh = add nsw i32 %i.eg, %i.ed
  %i.ei = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.ej = call noundef i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = xor i32 %i.ej, %i.dk                    ; 2 uses
  store i32 %i.ek, ptr %i.aj, align 4, !tbaa !7
  %i.el = add nsw i32 %i.ek, %i.eh
  %i.em = xor i32 %i.el, -1                       ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.em) #5
  %i.en = load i32, ptr %i.a, align 16, !tbaa !7
  %.not22.3 = icmp eq i32 %i.en, %i.em
  br i1 %.not22.3, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.eo = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 32) #5
  %.not.4 = icmp eq i32 %i.eo, 32
  br i1 %.not.4, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ep = load i32, ptr %i.a, align 16, !tbaa !7
  %i.eq = xor i32 %i.ep, -1
  %i.er = call i32 @llvm.bswap.i32(i32 %i.eq)     ; 2 uses
  store i32 %i.er, ptr %i.a, align 16, !tbaa !7
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %i.er) #5
  %i.es = load i32, ptr %i.a, align 16, !tbaa !7  ; 7 uses
  %i.et = load i32, ptr %i.g, align 4, !tbaa !7
  %i.eu = call noundef i32 @llvm.bswap.i32(i32 %i.et)
  %i.ev = xor i32 %i.eu, %i.es                    ; 2 uses
  store i32 %i.ev, ptr %i.g, align 4, !tbaa !7
  %i.ew = load i32, ptr %i.k, align 8, !tbaa !7
  %i.ex = call noundef i32 @llvm.bswap.i32(i32 %i.ew)
  %i.ey = xor i32 %i.ex, %i.es                    ; 2 uses
  store i32 %i.ey, ptr %i.k, align 8, !tbaa !7
  %i.ez = add nsw i32 %i.ey, %i.ev
  %i.fa = load i32, ptr %i.p, align 4, !tbaa !7
  %i.fb = call noundef i32 @llvm.bswap.i32(i32 %i.fa)
  %i.fc = xor i32 %i.fb, %i.es                    ; 2 uses
  store i32 %i.fc, ptr %i.p, align 4, !tbaa !7
  %i.fd = add nsw i32 %i.fc, %i.ez
  %i.fe = load i32, ptr %i.u, align 16, !tbaa !7
  %i.ff = call noundef i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = xor i32 %i.ff, %i.es                    ; 2 uses
  store i32 %i.fg, ptr %i.u, align 16, !tbaa !7
  %i.fh = add nsw i32 %i.fg, %i.fd
  %i.fi = load i32, ptr %i.z, align 4, !tbaa !7
  %i.fj = call noundef i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fk = xor i32 %i.fj, %i.es                    ; 2 uses
  store i32 %i.fk, ptr %i.z, align 4, !tbaa !7
  %i.fl = add nsw i32 %i.fk, %i.fh
  %i.fm = load i32, ptr %i.ae, align 8, !tbaa !7
  %i.fn = call noundef i32 @llvm.bswap.i32(i32 %i.fm)
  %i.fo = xor i32 %i.fn, %i.es                    ; 2 uses
  store i32 %i.fo, ptr %i.ae, align 8, !tbaa !7
  %i.fp = add nsw i32 %i.fo, %i.fl
  %i.fq = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.fr = call noundef i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = xor i32 %i.fr, %i.es                    ; 2 uses
  store i32 %i.fs, ptr %i.aj, align 4, !tbaa !7
  %i.ft = add nsw i32 %i.fs, %i.fp
  %i.fu = xor i32 %i.ft, -1                       ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.fu) #5
  %i.fv = load i32, ptr %i.a, align 16, !tbaa !7
  %.not22.4 = icmp eq i32 %i.fv, %i.fu
  br i1 %.not22.4, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.i, %bb.g, %bb.e, %bb.j
  %.not23 = icmp eq ptr %1, null
  br i1 %.not23, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.thread
  store ptr @.str.3, ptr %1, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.a, %bb.c, %bb.k, %.thread
  %.020 = phi i32 [ 0, %bb.a ], [ 1, %.thread ], [ 1, %bb.k ], [ 0, %bb.c ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @cli_check_jpeg_exploit(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 6 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca [14 x i8], align 1                ; 6 uses
  %i.f = alloca [4 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #5
  %i.g = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.f, i32 noundef 2) #5
  %.not = icmp eq i32 %i.g, 2
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.f, align 1, !tbaa !15
  %i.i = icmp ne i8 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp ne i8 %i.k, -40
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.f, i32 noundef 4) #5
  %.not3456 = icmp eq i32 %i.m, 4
  br i1 %.not3456, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.p = load i8, ptr %i.f, align 1, !tbaa !15
  %i.q = icmp eq i8 %i.p, -1                      ; 3 uses
  %i.r = load i8, ptr %i.j, align 1               ; 3 uses
  %i.s = icmp eq i8 %i.r, -1
  %or.cond7 = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = call i64 @lseek(i32 noundef %0, i64 noundef -3, i32 noundef 1) #5 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.ab
  %i.u = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.f, i32 noundef 4) #5
  %.not34 = icmp eq i32 %i.u, 4
  br i1 %.not34, label %bb.c, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq i8 %i.r, -2
  %or.cond11 = select i1 %i.q, i1 %i.v, i1 false
  %1 = load i16, ptr %i.n, align 1                ; 2 uses
  %2 = call i16 @llvm.bswap.i16(i16 %1)           ; 2 uses
  %3 = zext i16 %2 to i64
  %4 = and i16 %1, -257
  %5 = icmp eq i16 %4, 0
  %or.cond39 = select i1 %or.cond11, i1 %5, i1 false ; 2 uses
  %.not45 = xor i1 %i.q, true
  %brmerge = or i1 %or.cond39, %.not45
  br i1 %brmerge, label %.loopexit.split.loop.exit54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i8 %i.r, -38
  br i1 %i.w, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i16 %2, 2
  br i1 %i.x, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i64 %3, -2
  %i.z = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #5
  %i.aa = add nsw i64 %i.y, %i.z                  ; 2 uses
  %i.ab = load i8, ptr %i.j, align 1, !tbaa !15
  %i.ac = icmp eq i8 %i.ab, -19
  br i1 %i.ac, label %bb.i, label %bb.ab

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.ad = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.e, i32 noundef 14) #5, !inline_history !12
  %.not.i = icmp eq i32 %i.ad, 14
  br i1 %.not.i, label %bb.j, label %jpeg_check_photoshop.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 1
  %i.af = xor i64 %i.ae, 8027793258319931472
  %i.ag = getelementptr i8, ptr %i.e, i64 6
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = xor i64 %i.ah, 13561596004560744
  %i.aj = or i64 %i.af, %i.ai
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %bb.k, label %jpeg_check_photoshop.exit.thread

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #5, !inline_history !12
  br label %bb.l

bb.l:                                             ; preds = %jpeg_check_photoshop_8bim.exit, %bb.k
  %i.am = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #5, !inline_history !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.an = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 4) #5, !inline_history !13
  %.not.i40 = icmp eq i32 %i.an, 4
  br i1 %.not.i40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11) #5, !inline_history !13
  br label %jpeg_check_photoshop_8bim.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.a, align 1
  %i.ap = icmp ne i32 %i.ao, 1296646712
  %i.aq = zext i1 %i.ap to i32
  %.not18.i = icmp eq i32 %i.aq, 0
  br i1 %.not18.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.o, align 1, !tbaa !15
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a) #5, !inline_history !13
  br label %jpeg_check_photoshop_8bim.exit

bb.p:                                             ; preds = %bb.n
  %i.ar = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 2) #5, !inline_history !13
  %.not19.i = icmp eq i32 %i.ar, 2
  br i1 %.not19.i, label %bb.q, label %jpeg_check_photoshop_8bim.exit

bb.q:                                             ; preds = %bb.p
  %i.as = load i16, ptr %i.b, align 2, !tbaa !17
  %rev.i = call i16 @llvm.bswap.i16(i16 %i.as)    ; 2 uses
  store i16 %rev.i, ptr %i.b, align 2, !tbaa !17
  %i.at = zext i16 %rev.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14, i32 noundef %i.at) #5, !inline_history !13
  %i.au = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 1) #5, !inline_history !13
  %.not20.i = icmp eq i32 %i.au, 1
  br i1 %.not20.i, label %bb.r, label %jpeg_check_photoshop_8bim.exit

bb.r:                                             ; preds = %bb.q
  %i.av = load i8, ptr %i.c, align 1, !tbaa !15   ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = and i8 %i.av, 1
  %i.ay = xor i8 %i.ax, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = call i64 @lseek(i32 noundef %0, i64 noundef %i.ba, i32 noundef 1) #5, !inline_history !13 ; 0 uses
  %i.bc = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.d, i32 noundef 4) #5, !inline_history !13
  %.not21.i = icmp eq i32 %i.bc, 4
  br i1 %.not21.i, label %bb.s, label %jpeg_check_photoshop_8bim.exit

bb.s:                                             ; preds = %bb.r
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  %i.be = call i32 @llvm.bswap.i32(i32 %i.bd)     ; 4 uses
  store i32 %i.be, ptr %i.d, align 4, !tbaa !7
  %i.bf = icmp eq i32 %i.bd, 0
  br i1 %i.bf, label %jpeg_check_photoshop_8bim.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = and i32 %i.be, 1
  %.not23.i = icmp eq i32 %i.bg, 0
  br i1 %.not23.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr %i.d, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = phi i32 [ %i.bh, %bb.u ], [ %i.be, %bb.t ]
  %i.bj = load i16, ptr %i.b, align 2, !tbaa !17
  switch i16 %i.bj, label %bb.w [
    i16 1036, label %bb.x
    i16 1033, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.bk = zext i32 %i.bi to i64
  %i.bl = call i64 @lseek(i32 noundef %0, i64 noundef %i.bk, i32 noundef 1) #5, !inline_history !13 ; 0 uses
  br label %jpeg_check_photoshop_8bim.exit

bb.x:                                             ; preds = %bb.v, %bb.v
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #5, !inline_history !13
  %i.bm = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #5, !inline_history !13
  %i.bn = call i64 @lseek(i32 noundef %0, i64 noundef 28, i32 noundef 1) #5, !inline_history !13 ; 0 uses
  %i.bo = call i32 @cli_check_jpeg_exploit(i32 noundef %0), !inline_history !13 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16) #5, !inline_history !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !7
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nsw i64 %i.bm, %i.br
  %i.bt = call i64 @lseek(i32 noundef %0, i64 noundef %i.bs, i32 noundef 0) #5, !inline_history !13 ; 0 uses
  br label %jpeg_check_photoshop_8bim.exit

jpeg_check_photoshop_8bim.exit:                   ; preds = %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.w, %bb.z
  %.0.i41 = phi i32 [ -1, %bb.m ], [ -1, %bb.o ], [ %i.bo, %bb.z ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.r ], [ 0, %bb.w ], [ -1, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.bu = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #5, !inline_history !12
  %i.bv = icmp sgt i64 %i.bu, %i.am
  %i.bw = icmp eq i32 %.0.i41, 0                  ; 2 uses
  %or.cond.i = and i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %bb.l, label %bb.aa, !llvm.loop !14

bb.aa:                                            ; preds = %jpeg_check_photoshop_8bim.exit
  %i.bx = icmp eq i32 %.0.i41, -1
  br i1 %i.bx, label %jpeg_check_photoshop.exit.thread, label %jpeg_check_photoshop.exit

jpeg_check_photoshop.exit.thread:                 ; preds = %bb.i, %bb.j, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.ab

jpeg_check_photoshop.exit:                        ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br i1 %i.bw, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %jpeg_check_photoshop.exit.thread, %jpeg_check_photoshop.exit, %bb.h
  %i.by = call i64 @lseek(i32 noundef %0, i64 noundef %i.aa, i32 noundef 0) #5
  %.not37 = icmp eq i64 %i.by, %i.aa
  br i1 %.not37, label %.backedge, label %.loopexit

.loopexit.split.loop.exit54:                      ; preds = %bb.e
  %.mux.le = select i1 %or.cond39, i32 1, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.f, %bb.g, %jpeg_check_photoshop.exit, %bb.ab, %.loopexit.split.loop.exit54, %.preheader, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.preheader ], [ %.mux.le, %.loopexit.split.loop.exit54 ], [ 0, %.backedge ], [ 1, %bb.g ], [ 1, %jpeg_check_photoshop.exit ], [ 0, %bb.f ], [ -1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 3) i32 @cli_check_riff_exploit(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #5
  %i.d = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 4) #5
  %.not = icmp eq i32 %i.d, 4
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 4) #5
  %.not20 = icmp eq i32 %i.e, 4
  br i1 %.not20, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.c, i32 noundef 4) #5
  %.not21 = icmp eq i32 %i.f, 4
  br i1 %.not21, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %lhsv = load i32, ptr %i.a, align 4
  switch i32 %lhsv, label %bb.i [
    i32 1179011410, label %bb.e
end_hunk_0
