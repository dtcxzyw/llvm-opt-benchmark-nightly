inline.NumInlined: 21
inline.NumDeleted: 4
begin_hunk_0_@mbedtls_base64_decode:bb.a
  %i.k = icmp ugt i64 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %.179.lcssa ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10    ; 5 uses
  %i.n = icmp eq i8 %i.m, 13
  %or.cond138 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond138, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.k, label %.thread132

._crit_edge:                                      ; preds = %bb.d
  %i.r = icmp eq i8 %i.m, 10
  br i1 %i.r, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.s = icmp slt i8 %i.m, 0
  %or.cond93 = or i1 %i.d, %i.s
  br i1 %or.cond93, label %.loopexit, label %bb.g

.thread132:                                       ; preds = %bb.e
  br i1 %i.d, label %.loopexit, label %.thread134

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i8 %i.m, 61
  br i1 %i.t, label %bb.h, label %.thread134

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i32 %.069102, 1
  %i.v = icmp ugt i32 %.069102, 1
  br i1 %i.v, label %.loopexit, label %bb.j

.thread134:                                       ; preds = %.thread132, %bb.g
  %i.w = phi i8 [ %i.m, %bb.g ], [ 13, %.thread132 ] ; 6 uses
  %.not88 = icmp eq i32 %.069102, 0
  br i1 %.not88, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.thread134
  %i.x = add nsw i8 %i.w, -64
  %i.y = zext nneg i8 %i.w to i64                 ; 5 uses
  %i.z = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.y) #6, !srcloc !11
  %i.aa = zext i8 %i.x to i64
  %i.ab = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.aa) #6, !srcloc !11
  %i.ac = add nsw i8 %i.w, -70
  %i.ad = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.y) #6, !srcloc !11
  %i.ae = zext i8 %i.ac to i64
  %i.af = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ae) #6, !srcloc !11
  %i.ag = add nuw i8 %i.w, 5
  %i.ah = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.y) #6, !srcloc !11
  %i.ai = zext i8 %i.ag to i64
  %i.aj = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.ai) #6, !srcloc !11
  %i.ak = add nuw i8 %i.w, 20
  %i.al = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.y) #6, !srcloc !11
  %i.am = zext i8 %i.ak to i64
  %i.an = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.am) #6, !srcloc !11
  %i.ao = trunc i64 %i.ad to i16
  %i.ap = insertelement <4 x i16> poison, i16 %i.ao, i64 0
  %i.aq = trunc i64 %i.z to i16
  %i.ar = insertelement <4 x i16> %i.ap, i16 %i.aq, i64 1
  %i.as = trunc i64 %i.ah to i16
  %i.at = insertelement <4 x i16> %i.ar, i16 %i.as, i64 2
  %i.au = trunc i64 %i.al to i16
  %i.av = insertelement <4 x i16> %i.at, i16 %i.au, i64 3
  %i.aw = trunc i64 %i.af to i8
  %i.ax = insertelement <4 x i8> poison, i8 %i.aw, i64 0
  %i.ay = trunc i64 %i.ab to i8
  %i.az = insertelement <4 x i8> %i.ax, i8 %i.ay, i64 1
  %i.ba = trunc i64 %i.aj to i8
  %i.bb = insertelement <4 x i8> %i.az, i8 %i.ba, i64 2
  %i.bc = trunc i64 %i.an to i8
  %i.bd = insertelement <4 x i8> %i.bb, i8 %i.bc, i64 3
  %i.be = and <4 x i16> %i.av, splat (i16 255)    ; 2 uses
  %i.bf = sub nsw <4 x i16> <i16 96, i16 64, i16 47, i16 42>, %i.be
  %i.bg = add nsw <4 x i16> %i.be, <i16 -123, i16 -91, i16 -58, i16 -44>
  %i.bh = and <4 x i16> %i.bf, %i.bg
  %i.bi = lshr <4 x i16> %i.bh, splat (i16 8)
  %i.bj = trunc nuw <4 x i16> %i.bi to <4 x i8>
  %i.bk = and <4 x i8> %i.bd, %i.bj
  %i.bl = add nuw i8 %i.w, 17
  %i.bm = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.y) #6, !srcloc !11
  %i.bn = trunc i64 %i.bm to i16
  %i.bo = zext i8 %i.bl to i64
  %i.bp = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.bo) #6, !srcloc !11
  %i.bq = trunc i64 %i.bp to i8
  %i.br = and i16 %i.bn, 255                      ; 2 uses
  %i.bs = sub nsw i16 46, %i.br
  %i.bt = add nsw i16 %i.br, -48
  %i.bu = and i16 %i.bs, %i.bt
  %i.bv = lshr i16 %i.bu, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  %i.bx = and i8 %i.bw, %i.bq
  %i.by = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.bk)
  %op.rdx139 = or i8 %i.by, %i.bx
  %i.bz = add i8 %op.rdx139, -1
  %i.ca = icmp slt i8 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.170 = phi i32 [ %i.u, %bb.h ], [ 0, %bb.i ]
  %i.cb = add i64 %.076101, 1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.e, %bb.j
  %.177 = phi i64 [ %.076101, %bb.e ], [ %.076101, %._crit_edge ], [ %i.cb, %bb.j ] ; 2 uses
  %.271 = phi i32 [ %.069102, %bb.e ], [ %.069102, %._crit_edge ], [ %.170, %bb.j ] ; 2 uses
  %i.cc = add i64 %.179.lcssa, 1                  ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %4
  br i1 %i.cd, label %.preheader95, label %.critedge._crit_edge.loopexit, !llvm.loop !16

.critedge._crit_edge.loopexit:                    ; preds = %.critedge, %bb.k
  %.076.lcssa.ph = phi i64 [ %.177, %bb.k ], [ %.076101, %.critedge ]
  %.069.lcssa.ph = phi i32 [ %.271, %bb.k ], [ %.069102, %.critedge ]
  %.280.ph = phi i64 [ %i.cc, %bb.k ], [ %4, %.critedge ]
  %i.ce = zext nneg i32 %.069.lcssa.ph to i64
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit, %bb.a
  %.076.lcssa = phi i64 [ 0, %bb.a ], [ %.076.lcssa.ph, %.critedge._crit_edge.loopexit ] ; 3 uses
  %.069.lcssa = phi i64 [ 0, %bb.a ], [ %i.ce, %.critedge._crit_edge.loopexit ] ; 3 uses
  %.280 = phi i64 [ 0, %bb.a ], [ %.280.ph, %.critedge._crit_edge.loopexit ] ; 2 uses
  %i.cf = sub i64 %.076.lcssa, %.069.lcssa
  %i.cg = and i64 %i.cf, 3
  %i.ch = icmp ne i64 %i.cg, 1
  %i.ci = and i64 %.076.lcssa, 3
  %.not89 = icmp eq i64 %i.ci, 0
  %or.cond94 = and i1 %i.ch, %.not89
  br i1 %or.cond94, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.critedge._crit_edge
  %i.cj = lshr exact i64 %.076.lcssa, 2
  %i.ck = mul nuw i64 %i.cj, 3                    ; 2 uses
  %i.cl = sub i64 %i.ck, %.069.lcssa              ; 2 uses
  store i64 %i.cl, ptr %2, align 8, !tbaa !8
  %i.cm = icmp ne i64 %i.ck, %.069.lcssa
  %i.cn = icmp eq ptr %0, null
  %or.cond = and i1 %i.cn, %i.cm
  %i.co = icmp ult i64 %1, %i.cl
  %or.cond92 = or i1 %or.cond, %i.co
  br i1 %or.cond92, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.l
  %.not90108 = icmp eq i64 %.280, 0
  br i1 %.not90108, label %._crit_edge114.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.0113 = phi ptr [ %.1, %bb.o ], [ %0, %.preheader ] ; 9 uses
  %.072112 = phi i32 [ %.173, %bb.o ], [ 0, %.preheader ] ; 5 uses
  %.074111 = phi i32 [ %.175, %bb.o ], [ 0, %.preheader ] ; 5 uses
  %.3110 = phi i64 [ %i.fg, %bb.o ], [ %.280, %.preheader ]
  %.082109 = phi ptr [ %i.fh, %bb.o ], [ %3, %.preheader ] ; 2 uses
  %i.cp = load i8, ptr %.082109, align 1, !tbaa !10 ; 7 uses
  switch i8 %i.cp, label %bb.m [
    i8 13, label %bb.o
    i8 10, label %bb.o
    i8 32, label %bb.o
    i8 61, label %._crit_edge114
  ]

bb.m:                                             ; preds = %.lr.ph
  %i.cq = shl i32 %.074111, 6
  %i.cr = add i8 %i.cp, -64
  %i.cs = zext i8 %i.cp to i64                    ; 5 uses
  %i.ct = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cs) #6, !srcloc !11
  %i.cu = zext i8 %i.cr to i64
  %i.cv = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cu) #6, !srcloc !11
  %i.cw = add i8 %i.cp, -70
  %i.cx = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cs) #6, !srcloc !11
  %i.cy = zext i8 %i.cw to i64
  %i.cz = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cy) #6, !srcloc !11
  %i.da = add i8 %i.cp, 5
  %i.db = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cs) #6, !srcloc !11
  %i.dc = zext i8 %i.da to i64
  %i.dd = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.dc) #6, !srcloc !11
  %i.de = add i8 %i.cp, 20
  %i.df = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cs) #6, !srcloc !11
  %i.dg = zext i8 %i.de to i64
  %i.dh = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.dg) #6, !srcloc !11
  %i.di = trunc i64 %i.cx to i16
  %i.dj = insertelement <4 x i16> poison, i16 %i.di, i64 0
  %i.dk = trunc i64 %i.ct to i16
  %i.dl = insertelement <4 x i16> %i.dj, i16 %i.dk, i64 1
  %i.dm = trunc i64 %i.db to i16
  %i.dn = insertelement <4 x i16> %i.dl, i16 %i.dm, i64 2
  %i.do = trunc i64 %i.df to i16
  %i.dp = insertelement <4 x i16> %i.dn, i16 %i.do, i64 3
  %i.dq = trunc i64 %i.cz to i8
  %i.dr = insertelement <4 x i8> poison, i8 %i.dq, i64 0
  %i.ds = trunc i64 %i.cv to i8
  %i.dt = insertelement <4 x i8> %i.dr, i8 %i.ds, i64 1
  %i.du = trunc i64 %i.dd to i8
  %i.dv = insertelement <4 x i8> %i.dt, i8 %i.du, i64 2
  %i.dw = trunc i64 %i.dh to i8
  %i.dx = insertelement <4 x i8> %i.dv, i8 %i.dw, i64 3
  %i.dy = and <4 x i16> %i.dp, splat (i16 255)    ; 2 uses
  %i.dz = sub nsw <4 x i16> <i16 96, i16 64, i16 47, i16 42>, %i.dy
  %i.ea = add nsw <4 x i16> %i.dy, <i16 -123, i16 -91, i16 -58, i16 -44>
  %i.eb = and <4 x i16> %i.dz, %i.ea
  %i.ec = lshr <4 x i16> %i.eb, splat (i16 8)
  %i.ed = add i8 %i.cp, 17
  %i.ee = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.cs) #6, !srcloc !11
  %i.ef = trunc i64 %i.ee to i16
  %i.eg = zext i8 %i.ed to i64
  %i.eh = tail call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 256) %i.eg) #6, !srcloc !11
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = and i16 %i.ef, 255                      ; 2 uses
  %i.ek = sub nsw i16 46, %i.ej
  %i.el = add nsw i16 %i.ej, -48
  %i.em = and i16 %i.ek, %i.el
  %i.en = lshr i16 %i.em, 8
  %i.eo = zext nneg i16 %i.en to i32
  %i.ep = and i32 %i.eo, %i.ei
  %i.eq = zext <4 x i8> %i.dx to <4 x i16>
  %5 = and <4 x i16> %i.ec, %i.eq
  %i.er = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %5)
  %i.es = zext nneg i16 %i.er to i32
  %op.rdx = or i32 %i.ep, %i.es
  %i.et = shl nuw i32 %op.rdx, 24
  %sext = add i32 %i.et, -16777216
  %i.eu = ashr exact i32 %sext, 24
  %i.ev = or i32 %i.eu, %i.cq                     ; 5 uses
  %i.ew = add i32 %.072112, 1                     ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 4
  br i1 %i.ex, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ey = lshr i32 %i.ev, 16
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %.0113, i64 1
  store i8 %i.ez, ptr %.0113, align 1, !tbaa !10
  %i.fb = lshr i32 %i.ev, 8
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0113, i64 2
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !10
  %i.fe = trunc i32 %i.ev to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.0113, i64 3
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.m, %bb.n
  %.175 = phi i32 [ %.074111, %.lr.ph ], [ %.074111, %.lr.ph ], [ %.074111, %.lr.ph ], [ %i.ev, %bb.n ], [ %i.ev, %bb.m ] ; 2 uses
  %.173 = phi i32 [ %.072112, %.lr.ph ], [ %.072112, %.lr.ph ], [ %.072112, %.lr.ph ], [ 0, %bb.n ], [ %i.ew, %bb.m ] ; 2 uses
  %.1 = phi ptr [ %.0113, %.lr.ph ], [ %.0113, %.lr.ph ], [ %.0113, %.lr.ph ], [ %i.ff, %bb.n ], [ %.0113, %bb.m ] ; 2 uses
  %i.fg = add i64 %.3110, -1                      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.082109, i64 1
  %.not90 = icmp eq i64 %i.fg, 0
  br i1 %.not90, label %._crit_edge114, label %.lr.ph, !llvm.loop !17

._crit_edge114:                                   ; preds = %bb.o, %.lr.ph
  %.074.lcssa = phi i32 [ %.074111, %.lr.ph ], [ %.175, %bb.o ] ; 2 uses
  %.072.lcssa = phi i32 [ %.072112, %.lr.ph ], [ %.173, %bb.o ]
  %.0.lcssa = phi ptr [ %.0113, %.lr.ph ], [ %.1, %bb.o ] ; 6 uses
  switch i32 %.072.lcssa, label %._crit_edge114.thread [
    i32 3, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %._crit_edge114
  %i.fi = shl i32 %.074.lcssa, 6                  ; 2 uses
  %i.fj = lshr i32 %i.fi, 16
  %i.fk = trunc i32 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %i.fk, ptr %.0.lcssa, align 1, !tbaa !10
  %i.fm = lshr i32 %i.fi, 8
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !10
  br label %._crit_edge114.thread

bb.q:                                             ; preds = %._crit_edge114
  %i.fp = lshr i32 %.074.lcssa, 4
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  store i8 %i.fq, ptr %.0.lcssa, align 1, !tbaa !10
  br label %._crit_edge114.thread

._crit_edge114.thread:                            ; preds = %.preheader, %._crit_edge114, %bb.q, %bb.p
  %.2 = phi ptr [ %i.fo, %bb.p ], [ %i.fr, %bb.q ], [ %.0.lcssa, %._crit_edge114 ], [ %0, %.preheader ]
  %i.fs = load i64, ptr %2, align 8, !tbaa !8
  %i.ft = ptrtoint ptr %.2 to i64
  %i.fu = ptrtoint ptr %0 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %.not91 = icmp eq i64 %i.fs, %i.fv
  %. = select i1 %.not91, i32 0, i32 -110
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.thread134, %bb.h, %bb.f, %.thread132, %._crit_edge114.thread, %bb.l, %.critedge._crit_edge
  %.081 = phi i32 [ %., %._crit_edge114.thread ], [ -44, %.critedge._crit_edge ], [ -42, %bb.l ], [ -44, %.thread132 ], [ -44, %bb.f ], [ -44, %bb.h ], [ -44, %.thread134 ], [ -44, %bb.i ]
  ret i32 %.081
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mbedtls_base64_self_test(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp eq i32 %0, 0                       ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = call i32 @mbedtls_base64_encode(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull %i.a, ptr noundef nonnull @base64_test_dec, i64 noundef 64)
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(88) @base64_test_enc, ptr noundef nonnull dereferenceable(88) %i.b, i64 88)
  %.not8 = icmp eq i32 %bcmp, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not, label %bb.l, label %.sink.split

bb.f:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = call i32 @mbedtls_base64_decode(ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull %i.a, ptr noundef nonnull @base64_test_enc, i64 noundef 88)
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %bcmp10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) @base64_test_dec, ptr noundef nonnull dereferenceable(64) %i.b, i64 64)
  %.not11 = icmp eq i32 %bcmp10, 0
  br i1 %.not11, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not, label %bb.l, label %.sink.split

bb.k:                                             ; preds = %bb.i
  br i1 %.not, label %bb.l, label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.e
  %str.sink = phi ptr [ @str.2, %bb.j ], [ @str.2, %bb.e ], [ @str, %bb.k ]
  %.0.ph = phi i32 [ 1, %bb.j ], [ 1, %bb.e ], [ 0, %bb.k ]
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.sink) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k, %bb.j, %bb.e
  %.0 = phi i32 [ 1, %bb.j ], [ 1, %bb.e ], [ 0, %bb.k ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{i64 947730}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13, !15}
!15 = !{!"llvm.loop.peeled.count", i32 1}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
end_hunk_0
