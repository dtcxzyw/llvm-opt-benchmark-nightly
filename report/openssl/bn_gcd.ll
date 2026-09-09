Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_gcd?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BN_mod_inverse:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @BN_CTX_new_ex(ptr noundef null) #4 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 525, ptr noundef nonnull @__func__.BN_mod_inverse) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524291, ptr noundef null) #4
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %.09 = phi ptr [ %i.c, %bb.b ], [ %3, %bb.a ]
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = call ptr @int_bn_mod_inverse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.09, ptr noundef nonnull %i.a)
  %i.f = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @__func__.BN_mod_inverse) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 108, ptr noundef null) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @BN_CTX_free(ptr noundef %.0) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.010 = phi ptr [ null, %bb.c ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %.010
}

declare ptr @BN_CTX_new_ex(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_are_coprime(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @BN_CTX_start(ptr noundef %2) #4
  %i.a = tail call ptr @BN_CTX_get(ptr noundef %2) #4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ERR_set_mark() #4         ; 0 uses
  tail call void @BN_set_flags(ptr noundef %0, i32 noundef 4) #4
  %i.d = tail call ptr @BN_mod_inverse(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.e = icmp ne ptr %i.d, null
  %i.f = zext i1 %i.e to i32
  %i.g = tail call i32 @ERR_pop_to_mark() #4      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  tail call void @BN_CTX_end(ptr noundef %2) #4
  ret i32 %.0
}

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare void @BN_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_gcd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_is_zero(ptr noundef %2) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %1) #4
  %i.c = icmp ne ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !12
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_is_zero(ptr noundef %1) #4
  %.not118 = icmp eq i32 %i.f, 0
  br i1 %.not118, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %2) #4
  %i.h = icmp ne ptr %i.g, null
  %i.i = zext i1 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !12
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  tail call void @BN_CTX_start(ptr noundef %3) #4
  %i.k = tail call ptr @BN_CTX_get(ptr noundef %3) #4 ; 3 uses
  %i.l = tail call ptr @BN_CTX_get(ptr noundef %3) #4 ; 17 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @BN_lshift1(ptr noundef nonnull %i.l, ptr noundef %2) #4
  %.not119 = icmp eq i32 %i.n, 0
  br i1 %.not119, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @BN_lshift1(ptr noundef %0, ptr noundef %1) #4
  %.not120 = icmp eq i32 %i.o, 0
  br i1 %.not120, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22
  %smax = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count146 = zext nneg i32 %i.q to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.0105133 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.i ] ; 2 uses
  %.0110131 = phi i64 [ 1, %.lr.ph ], [ %i.ac, %bb.i ] ; 3 uses
  %.0112130 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.i ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17
  %i.aa = or i64 %i.z, %i.w                       ; 2 uses
  %sext = add nsw i64 %.0110131, -1
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 %.0110131, i64 0   ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = add nuw nsw i32 %.0105133, %i.ad        ; 2 uses
  %i.af = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %sext) #5, !srcloc !23
  %i.ag = and i64 %i.af, %.0112130
  %i.ah = sub nsw i64 0, %.0110131
  %i.ai = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ah) #5, !srcloc !23
  %i.aj = and i64 %i.ai, %i.aa
  %i.ak = or i64 %i.aj, %i.ag                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next, %wide.trip.count146
  br i1 %exitcond147.not, label %.critedge.loopexit, label %bb.h, !llvm.loop !20

.critedge.loopexit:                               ; preds = %bb.i, %bb.h
  %.0112.lcssa.ph = phi i64 [ %.0112130, %bb.h ], [ %i.ak, %bb.i ]
  %.0105.lcssa.ph = phi i32 [ %.0105133, %bb.h ], [ %i.ae, %bb.i ]
  %i.al = xor i64 %.0112.lcssa.ph, -1
  %i.am = shl nsw i32 %.0105.lcssa.ph, 6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.0112.lcssa = phi i64 [ -1, %.preheader ], [ %i.al, %.critedge.loopexit ] ; 64 uses
  %.0105.lcssa = phi i32 [ 0, %.preheader ], [ %i.am, %.critedge.loopexit ]
  %i.an = and i64 %.0112.lcssa, 1                 ; 2 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = or disjoint i32 %.0105.lcssa, %i.ao
  %i.aq = lshr i64 %.0112.lcssa, 1
  %i.ar = and i64 %i.an, %i.aq                    ; 2 uses
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = add nuw nsw i32 %i.ap, %i.as
  %i.au = lshr i64 %.0112.lcssa, 2
  %i.av = and i64 %i.ar, %i.au                    ; 2 uses
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = add nuw nsw i32 %i.at, %i.aw
  %i.ay = lshr i64 %.0112.lcssa, 3
  %i.az = and i64 %i.av, %i.ay                    ; 2 uses
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = add nuw nsw i32 %i.ax, %i.ba
  %i.bc = lshr i64 %.0112.lcssa, 4
  %i.bd = and i64 %i.az, %i.bc                    ; 2 uses
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.bb, %i.be
  %i.bg = lshr i64 %.0112.lcssa, 5
  %i.bh = and i64 %i.bd, %i.bg                    ; 2 uses
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi
  %i.bk = lshr i64 %.0112.lcssa, 6
  %i.bl = and i64 %i.bh, %i.bk                    ; 2 uses
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bj, %i.bm
  %i.bo = lshr i64 %.0112.lcssa, 7
  %i.bp = and i64 %i.bl, %i.bo                    ; 2 uses
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bn, %i.bq
  %i.bs = lshr i64 %.0112.lcssa, 8
  %i.bt = and i64 %i.bp, %i.bs                    ; 2 uses
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.br, %i.bu
  %i.bw = lshr i64 %.0112.lcssa, 9
  %i.bx = and i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.bv, %i.by
  %i.ca = lshr i64 %.0112.lcssa, 10
  %i.cb = and i64 %i.bx, %i.ca                    ; 2 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.bz, %i.cc
  %i.ce = lshr i64 %.0112.lcssa, 11
  %i.cf = and i64 %i.cb, %i.ce                    ; 2 uses
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = add nuw nsw i32 %i.cd, %i.cg
  %i.ci = lshr i64 %.0112.lcssa, 12
  %i.cj = and i64 %i.cf, %i.ci                    ; 2 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ch, %i.ck
  %i.cm = lshr i64 %.0112.lcssa, 13
  %i.cn = and i64 %i.cj, %i.cm                    ; 2 uses
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = add nuw nsw i32 %i.cl, %i.co
  %i.cq = lshr i64 %.0112.lcssa, 14
  %i.cr = and i64 %i.cn, %i.cq                    ; 2 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = add nuw nsw i32 %i.cp, %i.cs
  %i.cu = lshr i64 %.0112.lcssa, 15
  %i.cv = and i64 %i.cr, %i.cu                    ; 2 uses
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.ct, %i.cw
  %i.cy = lshr i64 %.0112.lcssa, 16
  %i.cz = and i64 %i.cv, %i.cy                    ; 2 uses
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = add nuw nsw i32 %i.cx, %i.da
  %i.dc = lshr i64 %.0112.lcssa, 17
  %i.dd = and i64 %i.cz, %i.dc                    ; 2 uses
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = add nuw nsw i32 %i.db, %i.de
  %i.dg = lshr i64 %.0112.lcssa, 18
  %i.dh = and i64 %i.dd, %i.dg                    ; 2 uses
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = add nuw nsw i32 %i.df, %i.di
  %i.dk = lshr i64 %.0112.lcssa, 19
  %i.dl = and i64 %i.dh, %i.dk                    ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dj, %i.dm
  %i.do = lshr i64 %.0112.lcssa, 20
  %i.dp = and i64 %i.dl, %i.do                    ; 2 uses
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = add nuw nsw i32 %i.dn, %i.dq
  %i.ds = lshr i64 %.0112.lcssa, 21
  %i.dt = and i64 %i.dp, %i.ds                    ; 2 uses
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = add nuw nsw i32 %i.dr, %i.du
  %i.dw = lshr i64 %.0112.lcssa, 22
  %i.dx = and i64 %i.dt, %i.dw                    ; 2 uses
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dv, %i.dy
  %i.ea = lshr i64 %.0112.lcssa, 23
  %i.eb = and i64 %i.dx, %i.ea                    ; 2 uses
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = add nuw nsw i32 %i.dz, %i.ec
  %i.ee = lshr i64 %.0112.lcssa, 24
  %i.ef = and i64 %i.eb, %i.ee                    ; 2 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = add nuw nsw i32 %i.ed, %i.eg
  %i.ei = lshr i64 %.0112.lcssa, 25
  %i.ej = and i64 %i.ef, %i.ei                    ; 2 uses
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = add nuw nsw i32 %i.eh, %i.ek
  %i.em = lshr i64 %.0112.lcssa, 26
  %i.en = and i64 %i.ej, %i.em                    ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = add nuw nsw i32 %i.el, %i.eo
  %i.eq = lshr i64 %.0112.lcssa, 27
  %i.er = and i64 %i.en, %i.eq                    ; 2 uses
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = add nuw nsw i32 %i.ep, %i.es
  %i.eu = lshr i64 %.0112.lcssa, 28
  %i.ev = and i64 %i.er, %i.eu                    ; 2 uses
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = add nuw nsw i32 %i.et, %i.ew
  %i.ey = lshr i64 %.0112.lcssa, 29
  %i.ez = and i64 %i.ev, %i.ey                    ; 2 uses
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = add nuw nsw i32 %i.ex, %i.fa
  %i.fc = lshr i64 %.0112.lcssa, 30
  %i.fd = and i64 %i.ez, %i.fc                    ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = add nuw nsw i32 %i.fb, %i.fe
  %i.fg = lshr i64 %.0112.lcssa, 31
  %i.fh = and i64 %i.fd, %i.fg                    ; 2 uses
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = add nuw nsw i32 %i.ff, %i.fi
  %i.fk = lshr i64 %.0112.lcssa, 32
  %i.fl = and i64 %i.fh, %i.fk                    ; 2 uses
  %i.fm = trunc nuw nsw i64 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fj, %i.fm
  %i.fo = lshr i64 %.0112.lcssa, 33
  %i.fp = and i64 %i.fl, %i.fo                    ; 2 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = add nuw nsw i32 %i.fn, %i.fq
  %i.fs = lshr i64 %.0112.lcssa, 34
  %i.ft = and i64 %i.fp, %i.fs                    ; 2 uses
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = add nuw nsw i32 %i.fr, %i.fu
  %i.fw = lshr i64 %.0112.lcssa, 35
  %i.fx = and i64 %i.ft, %i.fw                    ; 2 uses
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = add nuw nsw i32 %i.fv, %i.fy
  %i.ga = lshr i64 %.0112.lcssa, 36
  %i.gb = and i64 %i.fx, %i.ga                    ; 2 uses
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = add nuw nsw i32 %i.fz, %i.gc
  %i.ge = lshr i64 %.0112.lcssa, 37
  %i.gf = and i64 %i.gb, %i.ge                    ; 2 uses
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = add nuw nsw i32 %i.gd, %i.gg
  %i.gi = lshr i64 %.0112.lcssa, 38
  %i.gj = and i64 %i.gf, %i.gi                    ; 2 uses
  %i.gk = trunc nuw nsw i64 %i.gj to i32
  %i.gl = add nuw nsw i32 %i.gh, %i.gk
  %i.gm = lshr i64 %.0112.lcssa, 39
  %i.gn = and i64 %i.gj, %i.gm                    ; 2 uses
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = add nuw nsw i32 %i.gl, %i.go
  %i.gq = lshr i64 %.0112.lcssa, 40
  %i.gr = and i64 %i.gn, %i.gq                    ; 2 uses
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = add nuw nsw i32 %i.gp, %i.gs
  %i.gu = lshr i64 %.0112.lcssa, 41
  %i.gv = and i64 %i.gr, %i.gu                    ; 2 uses
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = add nuw nsw i32 %i.gt, %i.gw
  %i.gy = lshr i64 %.0112.lcssa, 42
  %i.gz = and i64 %i.gv, %i.gy                    ; 2 uses
  %i.ha = trunc nuw nsw i64 %i.gz to i32
  %i.hb = add nuw nsw i32 %i.gx, %i.ha
  %i.hc = lshr i64 %.0112.lcssa, 43
  %i.hd = and i64 %i.gz, %i.hc                    ; 2 uses
  %i.he = trunc nuw nsw i64 %i.hd to i32
  %i.hf = add nuw nsw i32 %i.hb, %i.he
  %i.hg = lshr i64 %.0112.lcssa, 44
  %i.hh = and i64 %i.hd, %i.hg                    ; 2 uses
  %i.hi = trunc nuw nsw i64 %i.hh to i32
  %i.hj = add nuw nsw i32 %i.hf, %i.hi
  %i.hk = lshr i64 %.0112.lcssa, 45
  %i.hl = and i64 %i.hh, %i.hk                    ; 2 uses
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = add nuw nsw i32 %i.hj, %i.hm
  %i.ho = lshr i64 %.0112.lcssa, 46
  %i.hp = and i64 %i.hl, %i.ho                    ; 2 uses
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = add nuw nsw i32 %i.hn, %i.hq
  %i.hs = lshr i64 %.0112.lcssa, 47
  %i.ht = and i64 %i.hp, %i.hs                    ; 2 uses
  %i.hu = trunc nuw nsw i64 %i.ht to i32
  %i.hv = add nuw nsw i32 %i.hr, %i.hu
  %i.hw = lshr i64 %.0112.lcssa, 48
  %i.hx = and i64 %i.ht, %i.hw                    ; 2 uses
  %i.hy = trunc nuw nsw i64 %i.hx to i32
  %i.hz = add nuw nsw i32 %i.hv, %i.hy
  %i.ia = lshr i64 %.0112.lcssa, 49
  %i.ib = and i64 %i.hx, %i.ia                    ; 2 uses
  %i.ic = trunc nuw nsw i64 %i.ib to i32
  %i.id = add nuw nsw i32 %i.hz, %i.ic
  %i.ie = lshr i64 %.0112.lcssa, 50
  %i.if = and i64 %i.ib, %i.ie                    ; 2 uses
  %i.ig = trunc nuw nsw i64 %i.if to i32
  %i.ih = add nuw nsw i32 %i.id, %i.ig
  %i.ii = lshr i64 %.0112.lcssa, 51
  %i.ij = and i64 %i.if, %i.ii                    ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = add nuw nsw i32 %i.ih, %i.ik
  %i.im = lshr i64 %.0112.lcssa, 52
  %i.in = and i64 %i.ij, %i.im                    ; 2 uses
  %i.io = trunc nuw nsw i64 %i.in to i32
  %i.ip = add nuw nsw i32 %i.il, %i.io
  %i.iq = lshr i64 %.0112.lcssa, 53
  %i.ir = and i64 %i.in, %i.iq                    ; 2 uses
  %i.is = trunc nuw nsw i64 %i.ir to i32
  %i.it = add nuw nsw i32 %i.ip, %i.is
  %i.iu = lshr i64 %.0112.lcssa, 54
  %i.iv = and i64 %i.ir, %i.iu                    ; 2 uses
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = add nuw nsw i32 %i.it, %i.iw
  %i.iy = lshr i64 %.0112.lcssa, 55
  %i.iz = and i64 %i.iv, %i.iy                    ; 2 uses
  %i.ja = trunc nuw nsw i64 %i.iz to i32
  %i.jb = add nuw nsw i32 %i.ix, %i.ja
  %i.jc = lshr i64 %.0112.lcssa, 56
  %i.jd = and i64 %i.iz, %i.jc                    ; 2 uses
  %i.je = trunc nuw nsw i64 %i.jd to i32
  %i.jf = add nuw nsw i32 %i.jb, %i.je
  %i.jg = lshr i64 %.0112.lcssa, 57
  %i.jh = and i64 %i.jd, %i.jg                    ; 2 uses
  %i.ji = trunc nuw nsw i64 %i.jh to i32
  %i.jj = add nuw nsw i32 %i.jf, %i.ji
  %i.jk = lshr i64 %.0112.lcssa, 58
  %i.jl = and i64 %i.jh, %i.jk                    ; 2 uses
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %i.jn = add nuw nsw i32 %i.jj, %i.jm
  %i.jo = lshr i64 %.0112.lcssa, 59
  %i.jp = and i64 %i.jl, %i.jo                    ; 2 uses
  %i.jq = trunc nuw nsw i64 %i.jp to i32
  %i.jr = add nuw nsw i32 %i.jn, %i.jq
  %i.js = lshr i64 %.0112.lcssa, 60
  %i.jt = and i64 %i.jp, %i.js                    ; 2 uses
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  %i.jv = add nuw nsw i32 %i.jr, %i.ju
  %i.jw = lshr i64 %.0112.lcssa, 61
  %i.jx = and i64 %i.jt, %i.jw                    ; 2 uses
  %i.jy = trunc nuw nsw i64 %i.jx to i32
  %i.jz = add nuw nsw i32 %i.jv, %i.jy
  %i.ka = lshr i64 %.0112.lcssa, 62
  %i.kb = and i64 %i.jx, %i.ka                    ; 2 uses
  %i.kc = trunc nuw nsw i64 %i.kb to i32
  %i.kd = add nuw nsw i32 %i.jz, %i.kc
  %i.ke = lshr i64 %.0112.lcssa, 63
  %i.kf = and i64 %i.kb, %i.ke
  %i.kg = trunc nuw nsw i64 %i.kf to i32
  %i.kh = add nuw nsw i32 %i.kd, %i.kg            ; 3 uses
  %i.ki = tail call i32 @BN_rshift(ptr noundef %0, ptr noundef %0, i32 noundef %i.kh) #4
  %.not121 = icmp eq i32 %i.ki, 0
  br i1 %.not121, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.kj = tail call i32 @BN_rshift(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, i32 noundef %i.kh) #4
  %.not122 = icmp eq i32 %i.kj, 0
  br i1 %.not122, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !14
  %i.km = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !14
  %. = tail call i32 @llvm.smax.i32(i32 %i.kl, i32 %i.kn)
  %i.ko = add nsw i32 %., 1                       ; 6 uses
  %i.kp = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.ko) #4
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kr = tail call ptr @bn_wexpand(ptr noundef nonnull %i.l, i32 noundef %i.ko) #4
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kt = tail call ptr @bn_wexpand(ptr noundef %i.k, i32 noundef %i.ko) #4
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kv = load ptr, ptr %0, align 8, !tbaa !15
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.kx = and i64 %i.kw, 1
  %i.ky = xor i64 %i.kx, 1
  tail call void @BN_consttime_swap(i64 noundef %i.ky, ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef %i.ko) #4
  %i.kz = tail call i32 @BN_num_bits(ptr noundef nonnull %0) #4
  %i.la = tail call i32 @BN_num_bits(ptr noundef nonnull %i.l) #4
  %i.lb = tail call i32 @llvm.smax.i32(i32 %i.kz, i32 %i.la) ; 2 uses
  %i.lc = icmp sgt i32 %i.lb, -2
  br i1 %i.lc, label %.lr.ph144, label %._crit_edge

.lr.ph144:                                        ; preds = %bb.n
  %i.ld = mul i32 %i.lb, 3
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lf = add i32 %i.ld, 3
  %smax149 = tail call i32 @llvm.smax.i32(i32 %i.lf, i32 0)
  br label %bb.p

bb.o:                                             ; preds = %bb.q
  %i.lg = icmp eq i32 %i.lx, 0
  %i.lh = select i1 %i.lg, i32 %.0106143, i32 0
  %i.li = sub nsw i32 0, %i.lx
  %i.lj = and i32 %i.li, %i.ln
  %i.lk = or i32 %i.lh, %i.lj
  %i.ll = add nsw i32 %i.lk, 1
  %i.lm = add nuw i32 %.1109142, 1
  %exitcond150.not = icmp eq i32 %.1109142, %smax149
  br i1 %exitcond150.not, label %._crit_edge, label %bb.p, !llvm.loop !21

bb.p:                                             ; preds = %.lr.ph144, %bb.o
  %.0106143 = phi i32 [ 1, %.lr.ph144 ], [ %i.ll, %bb.o ] ; 2 uses
  %.1109142 = phi i32 [ 0, %.lr.ph144 ], [ %i.lm, %bb.o ] ; 2 uses
  %i.ln = sub nsw i32 0, %.0106143                ; 2 uses
  %i.lo = lshr i32 %i.ln, 31
  %i.lp = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !17
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = and i32 %i.lo, %i.lr
  %i.lt = load i32, ptr %i.km, align 8, !tbaa !14
  %i.lu = add nsw i32 %i.lt, -1
  %i.lv = lshr i32 %i.lu, 31
  %i.lw = xor i32 %i.lv, -1
  %i.lx = and i32 %i.ls, %i.lw                    ; 4 uses
  %i.ly = load i32, ptr %i.le, align 8, !tbaa !12
  %i.lz = xor i32 %i.lx, %i.ly
  store i32 %i.lz, ptr %i.le, align 8, !tbaa !12
  %i.ma = zext nneg i32 %i.lx to i64
  tail call void @BN_consttime_swap(i64 noundef %i.ma, ptr noundef nonnull %0, ptr noundef nonnull %i.l, i32 noundef %i.ko) #4
  %i.mb = tail call i32 @BN_add(ptr noundef %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %0) #4
  %.not127 = icmp eq i32 %i.mb, 0
  br i1 %.not127, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mc = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !17
  %i.me = trunc i64 %i.md to i32
  %i.mf = and i32 %i.me, 1
  %i.mg = load i32, ptr %i.km, align 8, !tbaa !14
  %i.mh = add nsw i32 %i.mg, -1
  %i.mi = lshr i32 %i.mh, 31
  %i.mj = xor i32 %i.mi, -1
  %i.mk = and i32 %i.mf, %i.mj
  %i.ml = zext nneg i32 %i.mk to i64
  tail call void @BN_consttime_swap(i64 noundef %i.ml, ptr noundef nonnull %i.l, ptr noundef %i.k, i32 noundef %i.ko) #4
  %i.mm = tail call i32 @BN_rshift1(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l) #4
  %.not128 = icmp eq i32 %i.mm, 0
  br i1 %.not128, label %.loopexit, label %bb.o

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.mn, align 8, !tbaa !12
  %i.mo = tail call i32 @BN_lshift(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %i.kh) #4
  %.not125 = icmp eq i32 %i.mo, 0
  br i1 %.not125, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.mp = tail call i32 @BN_rshift1(ptr noundef nonnull %0, ptr noundef nonnull %0) #4
  %.not126 = icmp ne i32 %i.mp, 0
  %spec.select = zext i1 %.not126 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.p, %bb.r, %._crit_edge, %bb.k, %bb.l, %bb.m, %.critedge, %bb.j, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ 0, %bb.e ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %.critedge ], [ 0, %bb.g ], [ 0, %bb.f ], [ %spec.select, %bb.r ], [ 0, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %bb.q ]
  tail call void @BN_CTX_end(ptr noundef %3) #4
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.d, %bb.b
  %.0114 = phi i32 [ %i.d, %bb.b ], [ %i.i, %bb.d ], [ %.0, %.loopexit ]
  ret i32 %.0114
}

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BN_consttime_swap(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_init(ptr noundef) local_unnamed_addr #2

declare void @BN_with_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 long", !9, i64 0}
!11 = !{!"bignum_st", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!12 = !{!11, !5, i64 16}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!11, !5, i64 8}
!15 = !{!11, !10, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!11, !5, i64 12}
!23 = !{i64 1388011}
end_hunk_0
