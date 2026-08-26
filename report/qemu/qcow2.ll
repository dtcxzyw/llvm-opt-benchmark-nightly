Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2?download=true
inline.NumInlined: 276
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@qcow2_do_open:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 4
  %i.as = call noundef i64 @llvm.bswap.i64(i64 %i.ar)
  store i64 %i.as, ptr %i.aq, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = call noundef i32 @llvm.bswap.i32(i32 %i.au)
  store i32 %i.av, ptr %i.at, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 4
  %i.ay = call noundef i64 @llvm.bswap.i64(i64 %i.ax)
  store i64 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = call noundef i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bb, ptr %i.az, align 4
  %.not = icmp eq i32 %i.q, -79083951
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1435, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.150) #20
  br label %bb.cq

bb.e:                                             ; preds = %bb.c
  %i.bc = and i32 %i.u, -2
  %or.cond4.not = icmp eq i32 %i.bc, 2
  br i1 %or.cond4.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1440, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.151, i32 noundef %i.u) #20
  br label %bb.cq

bb.g:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 324
  store i32 %i.u, ptr %i.bd, align 4
  %i.be = add i32 %i.ag, -22
  %or.cond7 = icmp ult i32 %i.be, -13
  br i1 %or.cond7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1451, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.152, i32 noundef %i.ag) #20
  br label %bb.cq

bb.i:                                             ; preds = %bb.g
  store i32 %i.ag, ptr %i.h, align 8
  %i.bf = shl nuw nsw i32 1, %i.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 7 uses
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = load i32, ptr %i.s, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 3 uses
  br i1 %i.bi, label %.thread449, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i64, ptr %i.bj, align 4
  %i.bl = call noundef i64 @llvm.bswap.i64(i64 %i.bk)
  store i64 %i.bl, ptr %i.bj, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 4
  %i.bo = call noundef i64 @llvm.bswap.i64(i64 %i.bn)
  store i64 %i.bo, ptr %i.bm, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 4
  %i.br = call noundef i64 @llvm.bswap.i64(i64 %i.bq)
  store i64 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = call noundef i32 @llvm.bswap.i32(i32 %i.bt)
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 100 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = call noundef i32 @llvm.bswap.i32(i32 %i.bw) ; 5 uses
  store i32 %i.bx, ptr %i.bv, align 4
  %i.by = icmp ult i32 %i.bx, 104
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1475, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.153) #20
  br label %bb.cq

bb.l:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 100 ; 2 uses
  %i.ca = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.cb = icmp ugt i32 %i.bx, %i.ca
  br i1 %i.cb, label %bb.m, label %bb.n

.thread449:                                       ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  store i32 4, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 100
  store i32 72, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 100
  %i.cf = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.cg = icmp ult i32 %i.cf, 72
  br i1 %i.cg, label %bb.m, label %.thread450

bb.m:                                             ; preds = %.thread449, %bb.l
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1482, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.154) #20
  br label %bb.cq

bb.n:                                             ; preds = %bb.l
  %i.ch = icmp ugt i32 %i.bx, 112
  br i1 %i.ch, label %bb.o, label %.thread450

bb.o:                                             ; preds = %bb.n
  %i.ci = zext i32 %i.bx to i64
  %i.cj = add nsw i64 %i.ci, -112                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 408 ; 2 uses
  store i64 %i.cj, ptr %i.ck, align 8
  %i.cl = call noalias ptr @g_malloc(i64 noundef %i.cj) #23 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  store ptr %i.cl, ptr %i.cm, align 8
  %i.cn = load ptr, ptr %i.i, align 8
  %i.co = load i64, ptr %i.ck, align 8
  %i.cp = call i32 @bdrv_co_pread(ptr noundef %i.cn, i64 noundef 112, i64 noundef %i.co, ptr noundef %i.cl, i32 noundef 0) ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i32, ptr %i.bg, align 4
  br label %.thread450

bb.p:                                             ; preds = %bb.o
  %i.cr = sub i32 0, %i.cp
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1495, ptr noundef nonnull @__func__.qcow2_do_open, i32 noundef %i.cr, ptr noundef nonnull @.str.155) #20
  br label %bb.cq

.thread450:                                       ; preds = %.thread449, %._crit_edge, %bb.n
  %i.cs = phi ptr [ %i.bz, %._crit_edge ], [ %i.bz, %bb.n ], [ %i.ce, %.thread449 ] ; 3 uses
  %i.ct = phi i32 [ %.pre, %._crit_edge ], [ %i.ca, %bb.n ], [ %i.cf, %.thread449 ]
  %i.cu = load i64, ptr %i.v, align 4             ; 3 uses
  %i.cv = sext i32 %i.ct to i64
  %i.cw = icmp ugt i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread450
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1501, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.156) #20
  br label %bb.cq

bb.r:                                             ; preds = %.thread450
  %.not334 = icmp eq i64 %i.cu, 0
  %i.cx = load i32, ptr %i.ae, align 4
  %i.cy = shl nuw i32 1, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %.0296 = select i1 %.not334, i64 %i.cz, i64 %i.cu ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 384 ; 7 uses
  %i.dc = load <2 x i64>, ptr %i.da, align 4
  store <2 x i64> %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.de = load i64, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 400 ; 4 uses
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = load i32, ptr %i.cs, align 1
  %i.dh = icmp ugt i32 %i.dg, 104
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.dj = load i8, ptr %i.di, align 4
  %i.dk = zext i8 %i.dj to i32
  %.sink = select i1 %i.dh, i32 %i.dk, i32 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 516
  store i32 %.sink, ptr %i.dl, align 4
  %i.dm = call fastcc i32 @validate_compression_type(ptr noundef nonnull %i.h, ptr noundef nonnull %spec.select) ; 2 uses
  %.not335 = icmp eq i32 %i.dm, 0
  br i1 %.not335, label %bb.s, label %bb.cq

bb.s:                                             ; preds = %bb.r
  %i.dn = load i64, ptr %i.db, align 8            ; 4 uses
  %.not336 = icmp ult i64 %i.dn, 32
  br i1 %.not336, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8
  %i.do = load i32, ptr %i.cs, align 1
  %i.dp = zext i32 %i.do to i64
  %i.dq = call i32 @qcow2_read_extensions(ptr noundef nonnull %0, i64 noundef %i.dp, i64 noundef %.0296, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef null, ptr noundef null) ; 0 uses
  %i.dr = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ds = load i64, ptr %i.db, align 8
  %i.dt = and i64 %i.ds, -32
  call fastcc void @report_unsupported_feature(ptr noundef nonnull %spec.select, ptr noundef %i.dr, i64 noundef %i.dt)
  call void @g_free(ptr noundef %i.dr) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.cq

bb.u:                                             ; preds = %bb.s
  %i.du = and i64 %i.dn, 2
  %.not337 = icmp ne i64 %i.du, 0
  %i.dv = and i32 %2, 4096                        ; 2 uses
  %.not339 = icmp eq i32 %i.dv, 0                 ; 3 uses
  %i.dw = and i32 %2, 4098
  %i.dx = icmp eq i32 %i.dw, 2
  %or.cond365 = and i1 %i.dx, %.not337
  br i1 %or.cond365, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1551, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.157) #20
  br label %bb.cq

bb.w:                                             ; preds = %bb.u
  %.not397 = icmp samesign ult i64 %i.dn, 16      ; 2 uses
  %i.dy = select i1 %.not397, i32 1, i32 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 %i.dy, ptr %i.dz, align 4
  %i.ea = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.eb = sdiv i32 %i.ea, 32
  %10 = select i1 %.not397, i32 %i.ea, i32 %i.eb  ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %10, ptr %i.ec, align 8
  %i.ed = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %10, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.ed, ptr %i.ee, align 4
  %i.ef = icmp slt i32 %10, 512
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1563, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.158, i32 noundef %10) #20
  br label %bb.cq

bb.y:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.eh = load i32, ptr %i.eg, align 4            ; 4 uses
  %i.ei = icmp ugt i32 %i.eh, 6
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1571, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.159) #20
  br label %bb.cq

bb.aa:                                            ; preds = %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 332 ; 2 uses
  store i32 %i.eh, ptr %i.ej, align 4
  %i.ek = shl nuw nsw i32 1, %i.eh                ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store i32 %i.ek, ptr %i.el, align 8
  %i.em = add nsw i32 %i.ek, -1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %reass.add = shl i64 2, %i.en
  %i.ep = add i64 %reass.add, -1
  store i64 %i.ep, ptr %i.eo, align 8
  %i.eq = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.h, i64 268 ; 3 uses
  store i32 %i.eq, ptr %i.er, align 4
  %.not340 = icmp eq i32 %i.eq, 0
  br i1 %.not340, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = call zeroext i1 @bdrv_uses_whitelist() #20
  %i.et = load i32, ptr %i.er, align 4
  %i.eu = icmp eq i32 %i.et, 1                    ; 2 uses
  br i1 %i.es, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.eu, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1586, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.160) #20
  call void (ptr, ptr, ...) @error_append_hint(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.161) #20
  br label %bb.cq

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.eu, label %bb.af, label %.thread

.thread:                                          ; preds = %bb.ac, %bb.ae
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread
  %.sink454 = phi i8 [ 1, %.thread ], [ 0, %bb.ae ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  store i8 %.sink454, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %i.ew, align 4
  %.val374.pre = load i64, ptr %i.db, align 8
  %.pre418 = load i32, ptr %i.ej, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %i.ex = phi i32 [ %.pre418, %bb.af ], [ %i.eh, %bb.aa ]
  %.val374 = phi i64 [ %.val374.pre, %bb.af ], [ %i.dn, %bb.aa ]
  %i.ey = load i32, ptr %i.h, align 8             ; 2 uses
  %i.ez = and i64 %.val374, 16
  %.not.i = icmp eq i64 %i.ez, 0
  %.neg = select i1 %.not.i, i32 -3, i32 -4
  %i.fa = add i32 %.neg, %i.ey                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i32 %i.fa, ptr %i.fb, align 8
  %i.fc = shl nuw i32 1, %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.fc, ptr %i.fd, align 4
  %.neg402 = add i32 %i.ey, 3
  %i.fe = sub i32 %.neg402, %i.ex                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 %i.fe, ptr %i.ff, align 8
  %i.fg = shl nuw i32 1, %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.fg, ptr %i.fh, align 4
  %i.fi = load i64, ptr %i.ab, align 4
  %i.fj = lshr i64 %i.fi, 9
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16880
  store i64 %i.fj, ptr %i.fk, align 8
  %i.fl = load i32, ptr %i.h, align 8             ; 3 uses
  %i.fm = sub i32 70, %i.fl                       ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = add i32 %i.fl, -8
  %notmask = shl nsw i32 -1, %i.fo
  %i.fp = xor i32 %notmask, -1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %i.fp, ptr %i.fq, align 4
  %i.fr = zext nneg i32 %i.fm to i64
  %notmask341 = shl nsw i64 -1, %i.fr
  %i.fs = xor i64 %notmask341, -1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.fs, ptr %i.ft, align 8
  %i.fu = load i64, ptr %i.aq, align 4            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 %i.fu, ptr %i.fv, align 8
  %i.fw = load i32, ptr %i.at, align 4            ; 3 uses
  %i.fx = add i32 %i.fl, -3
  %i.fy = shl i32 %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store i32 %i.fy, ptr %i.fz, align 8
  %i.ga = or i32 %i.fw, %i.dv
  %or.cond366 = icmp eq i32 %i.ga, 0
  br i1 %or.cond366, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1623, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.162) #20
  br label %bb.cq

bb.ai:                                            ; preds = %bb.ag
  %i.gb = zext i32 %i.fw to i64
  %i.gc = load i32, ptr %i.bg, align 4
  %i.gd = sext i32 %i.gc to i64
  %i.ge = call i32 @qcow2_validate_table(ptr noundef nonnull %0, i64 noundef %i.fu, i64 noundef %i.gb, i64 noundef %i.gd, i64 noundef 8388608, ptr noundef nonnull @.str.163, ptr noundef nonnull %spec.select) ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.cq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not339, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gg = load i64, ptr %i.aw, align 4
  %i.gh = load i32, ptr %i.az, align 4
  %i.gi = zext i32 %i.gh to i64
  %i.gj = call i32 @qcow2_validate_table(ptr noundef nonnull %0, i64 noundef %i.gg, i64 noundef %i.gi, i64 noundef 40, i64 noundef 2621440, ptr noundef nonnull @.str.164, ptr noundef nonnull %spec.select) ; 2 uses
  %i.gk = icmp slt i32 %i.gj, 0
  br i1 %i.gk, label %bb.cq, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gl = load i64, ptr %i.ak, align 4
  %i.gm = load i32, ptr %i.an, align 4
  %i.gn = zext i32 %i.gm to i64
  %i.go = call i32 @qcow2_validate_table(ptr noundef nonnull %0, i64 noundef %i.gl, i64 noundef %i.gn, i64 noundef 8, i64 noundef 33554432, ptr noundef nonnull @.str.165, ptr noundef nonnull %spec.select) ; 2 uses
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %bb.cq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gq = load i32, ptr %i.an, align 4            ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  store i32 %i.gq, ptr %i.gr, align 8
  %i.gs = load i64, ptr %i.ak, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 %i.gs, ptr %i.gt, align 8
  %i.gu = load i64, ptr %i.ab, align 4
  %.val375 = load i32, ptr %i.h, align 8
  %.val376 = load i32, ptr %i.fb, align 8
  %i.gv = add i32 %.val376, %.val375
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = add i64 %i.gu, -1
  %i.gz = add i64 %i.gy, %i.gx
  %i.ha = lshr i64 %i.gz, %i.gw                   ; 2 uses
  %i.hb = icmp ugt i64 %i.ha, 2147483647
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1666, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.166) #20
  br label %bb.cq

bb.ao:                                            ; preds = %bb.am
  %i.hc = trunc nuw nsw i64 %i.ha to i32          ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %i.hc, ptr %i.hd, align 4
  %i.he = icmp slt i32 %i.gq, %i.hc
  br i1 %i.he, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1675, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.167) #20
  br label %bb.cq

bb.aq:                                            ; preds = %bb.ao
  %.not398 = icmp eq i32 %i.gq, 0
  br i1 %.not398, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = load ptr, ptr %i.i, align 8
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = zext nneg i32 %i.gq to i64
  %i.hi = shl nuw nsw i64 %i.hh, 3
  %i.hj = call ptr @qemu_try_blockalign(ptr noundef %i.hg, i64 noundef %i.hi) #20 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 2 uses
  store ptr %i.hj, ptr %i.hk, align 8
  %i.hl = icmp eq ptr %i.hj, null
  br i1 %i.hl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.1, i32 noundef 1683, ptr noundef nonnull @__func__.qcow2_do_open, ptr noundef nonnull @.str.168) #20
  br label %bb.cq

bb.at:                                            ; preds = %bb.ar
  %i.hm = load ptr, ptr %i.i, align 8
  %i.hn = load i64, ptr %i.gt, align 8
  %i.ho = load i32, ptr %i.gr, align 8
  %i.hp = sext i32 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 3
end_hunk_0
