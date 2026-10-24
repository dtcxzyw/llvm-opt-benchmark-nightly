Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_auto_possess?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@compare_opcodes:bb.a
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.1274, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 120
  br i1 %i.ai, label %.preheader402, label %.loopexit403, !llvm.loop !27

.loopexit403:                                     ; preds = %.preheader402, %.backedge
  %.2275 = phi ptr [ %.0273, %.backedge ], [ %i.ag, %.preheader402 ] ; 12 uses
  %.0268 = phi i8 [ %i.l, %.backedge ], [ %i.ah, %.preheader402 ] ; 4 uses
  switch i8 %.0268, label %bb.r [
    i8 0, label %bb.d
    i8 121, label %bb.e
    i8 124, label %bb.e
    i8 -123, label %bb.l
    i8 -121, label %bb.l
    i8 -119, label %bb.l
    i8 -105, label %bb.n
    i8 -104, label %bb.n
  ]

bb.d:                                             ; preds = %.loopexit403
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !12
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  br label %.thread366

bb.e:                                             ; preds = %.loopexit403, %.loopexit403
  %i.am = load i32, ptr %i.e, align 4, !tbaa !12
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread366, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.2275, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.aq = zext i8 %i.ap to i64
  %.neg = mul nsw i64 %i.aq, -256
  %i.ar = getelementptr inbounds nuw i8, ptr %.2275, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.at = zext i8 %i.as to i64
  %.neg301 = sub nsw i64 %.neg, %i.at             ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.2275, i64 %.neg301
  %i.av = load i8, ptr %i.au, align 1, !tbaa !21
  switch i8 %i.av, label %bb.k [
    i8 -119, label %bb.g
    i8 -114, label %bb.g
    i8 -118, label %bb.g
    i8 -113, label %bb.g
    i8 -122, label %bb.h
    i8 127, label %bb.i
    i8 -128, label %bb.i
    i8 -123, label %bb.i
    i8 -127, label %bb.j
    i8 -126, label %bb.j
    i8 -125, label %.thread366
    i8 -124, label %.thread366
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !34
  %.not306 = icmp eq i32 %i.aw, 0
  br i1 %.not306, label %bb.k, label %.thread366

bb.h:                                             ; preds = %bb.f
  %i.ax = load i32, ptr %4, align 4, !tbaa !12
  %.off = add i32 %i.ax, -29
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.k, label %.thread366

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ay = xor i32 %.0247, 1
  br label %.thread366

bb.j:                                             ; preds = %bb.f, %bb.f
  %i.az = getelementptr inbounds i8, ptr %.2275, i64 %.neg301
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = icmp ne i8 %i.bb, 126
  %.not302 = icmp eq i32 %.0247, 0
  %narrow = and i1 %i.bc, %.not302
  %i.bd = zext i1 %narrow to i32
  br label %.thread366

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.be = zext nneg i8 %.0268 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.2275, i64 %i.bh
  br label %.backedge.backedge

bb.l:                                             ; preds = %.loopexit403, %.loopexit403, %.loopexit403
  %i.bj = getelementptr inbounds nuw i8, ptr %.2275, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !21
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.2275, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !21
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.2275, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp ; 2 uses
  %i.bs = zext i8 %.0268 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.2275, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !21
  %i.by = icmp eq i8 %i.bx, 120
  br i1 %i.by, label %.lr.ph, label %.backedge.backedge

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.0259425 = phi ptr [ %i.cj, %bb.m ], [ %i.br, %bb.l ] ; 4 uses
  %.3276424 = phi ptr [ %i.cb, %bb.m ], [ %i.bw, %bb.l ]
  %i.bz = call fastcc i32 @compare_opcodes(ptr noundef nonnull %.3276424, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.not300 = icmp eq i32 %i.bz, 0
  br i1 %.not300, label %.thread366, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %.0259425, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.0259425, i64 3 ; 2 uses
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.0259425, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %.0259425, i64 %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !21
  %i.cl = icmp eq i8 %i.ck, 120
  br i1 %i.cl, label %.lr.ph, label %.backedge.backedge, !llvm.loop !28

bb.n:                                             ; preds = %.loopexit403, %.loopexit403
  %i.cm = getelementptr inbounds nuw i8, ptr %.2275, i64 1 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  switch i8 %i.cn, label %.thread366 [
    i8 -121, label %.preheader558
    i8 -119, label %.preheader558
    i8 -123, label %.preheader558
  ]

.preheader558:                                    ; preds = %bb.n, %bb.n, %bb.n
  br label %bb.o

bb.o:                                             ; preds = %.preheader558, %bb.o
  %.1260 = phi ptr [ %i.cw, %bb.o ], [ %i.cm, %.preheader558 ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1260, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.1260, i64 2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !21
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.1260, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !21
  %i.cy = icmp eq i8 %i.cx, 120
  br i1 %i.cy, label %bb.o, label %bb.p, !llvm.loop !29

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  %i.da = call fastcc i32 @compare_opcodes(ptr noundef nonnull %i.cz, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %.not299 = icmp eq i32 %i.da, 0
  br i1 %.not299, label %.thread366, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = zext i8 %.0268 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @_pcre2_OP_lengths_8, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !21
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.2275, i64 %i.de
  br label %.backedge.backedge

bb.r:                                             ; preds = %.loopexit403
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.dh = call fastcc ptr @get_chr_property_list(ptr noundef nonnull %.2275, i32 noundef %1, i32 noundef %2, ptr noundef %i.dg, ptr noundef %i.a) ; 10 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.thread366, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = load i32, ptr %4, align 4, !tbaa !12    ; 10 uses
  %i.dk = icmp eq i32 %i.dj, 29
  br i1 %i.dk, label %bb.bm, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = load i32, ptr %i.a, align 16, !tbaa !12 ; 10 uses
  %i.dm = icmp eq i32 %i.dl, 29
  br i1 %i.dm, label %bb.bm, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dn = icmp eq i32 %i.dj, 110                  ; 2 uses
  %i.do = icmp eq i32 %i.dl, 110
  %or.cond = or i1 %i.dn, %i.do
  br i1 %or.cond, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not307, label %bb.w, label %bb.ao

bb.w:                                             ; preds = %bb.v
  %i.dp = icmp eq i32 %i.dj, 111
  %i.dq = icmp eq i32 %i.dl, 111
  %or.cond5 = or i1 %i.dp, %i.dq
  br i1 %or.cond5, label %bb.x, label %bb.ao

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.dr = icmp eq i32 %i.dj, 111
  %or.cond335 = and i1 %.not307, %i.dr
  %or.cond426 = or i1 %i.dn, %or.cond335
  br i1 %or.cond426, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ds = load i32, ptr %.1262.sroa.gep340, align 4, !tbaa !12
  %i.dt = zext i32 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds i8, ptr %5, i64 %i.du
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dw = load i32, ptr %.1262.sroa.gep, align 8, !tbaa !12
  %i.dx = zext i32 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dh, i64 %i.dy
  %i.ea = select i1 %i.k, ptr %i.dh, ptr %5
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eb = phi i32 [ %i.dl, %bb.y ], [ %i.dj, %bb.z ]
  %.0261.sroa.phi = phi ptr [ %.1262.sroa.gep, %bb.y ], [ %.1262.sroa.gep340, %bb.z ] ; 2 uses
  %.0261 = phi ptr [ %i.dh, %bb.y ], [ %i.ea, %bb.z ] ; 2 uses
  %.0256 = phi ptr [ %i.dv, %bb.y ], [ %i.dz, %bb.z ] ; 64 uses
  switch i32 %i.eb, label %.thread366 [
    i32 110, label %bb.ab
    i32 111, label %bb.ab
    i32 112, label %bb.ac
    i32 6, label %bb.ah
    i32 7, label %bb.ai
    i32 8, label %bb.aj
    i32 9, label %bb.ak
    i32 10, label %bb.al
    i32 11, label %bb.am
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.ec = load i32, ptr %.0261.sroa.phi, align 4, !tbaa !12
  %i.ed = zext i32 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %.0261, i64 %i.ee
  br label %.preheader394.preheader

bb.ac:                                            ; preds = %bb.aa
  %i.eg = load i32, ptr %.0261.sroa.phi, align 4, !tbaa !12
  %i.eh = zext i32 %i.eg to i64
  %i.ei = sub nsw i64 0, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %.0261, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !21
  %i.em = zext i8 %i.el to i32                    ; 3 uses
  %i.en = and i32 %i.em, 4
  %.not322 = icmp eq i32 %i.en, 0
  br i1 %.not322, label %bb.ad, label %.thread366

bb.ad:                                            ; preds = %bb.ac
  %i.eo = and i32 %i.em, 2
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eq = load i32, ptr %i.h, align 4, !tbaa !12
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.af, label %.backedge.backedge

bb.af:                                            ; preds = %bb.ae
  %i.es = and i32 %i.em, 1
  %i.et = xor i32 %i.es, 1
  br label %.thread366

bb.ag:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  br label %.preheader394.preheader

bb.ah:                                            ; preds = %bb.aa
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.aa
  %.0249 = phi i32 [ 1, %bb.ah ], [ 0, %bb.aa ]
  %i.ev = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  br label %bb.an

bb.aj:                                            ; preds = %bb.aa
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.aa
  %.1250 = phi i32 [ 1, %bb.aj ], [ 0, %bb.aa ]
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !35
  br label %bb.an

bb.al:                                            ; preds = %bb.aa
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aa
  %.2 = phi i32 [ 1, %bb.al ], [ 0, %bb.aa ]
  %i.ey = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 160
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.ai
  %.0253 = phi ptr [ %i.ex, %bb.ak ], [ %i.ez, %bb.am ], [ %i.ew, %bb.ai ] ; 33 uses
  %.3 = phi i32 [ %.1250, %bb.ak ], [ %.2, %bb.am ], [ %.0249, %bb.ai ]
  %.not323 = icmp eq i32 %.3, 0
  br i1 %.not323, label %.preheader394.preheader, label %.preheader397.preheader

.preheader397.preheader:                          ; preds = %bb.an
  %i.fa = load i8, ptr %.0256, align 1, !tbaa !21
  %i.fb = zext i8 %i.fa to i32
  %i.fc = load i8, ptr %.0253, align 1, !tbaa !21
  %i.fd = zext i8 %i.fc to i32
  %i.fe = xor i32 %i.fd, -1
  %i.ff = and i32 %i.fe, %i.fb
  %.not325 = icmp eq i32 %i.ff, 0
  br i1 %.not325, label %.preheader397.1, label %.thread366

.preheader394.preheader:                          ; preds = %bb.ag, %bb.ab, %bb.an
  %.0253484 = phi ptr [ %.0253, %bb.an ], [ %i.eu, %bb.ag ], [ %i.ef, %bb.ab ] ; 32 uses
  %i.fg = load i8, ptr %.0256, align 1, !tbaa !21
  %i.fh = load i8, ptr %.0253484, align 1, !tbaa !21
  %i.fi = and i8 %i.fh, %i.fg
  %.not324 = icmp eq i8 %i.fi, 0
  br i1 %.not324, label %.preheader394.1, label %.thread366

.preheader397.1:                                  ; preds = %.preheader397.preheader
  %i.fj = getelementptr inbounds nuw i8, ptr %.0253, i64 1
  %.1257.ptr.1 = getelementptr inbounds nuw i8, ptr %.0256, i64 1
  %i.fk = load i8, ptr %.1257.ptr.1, align 1, !tbaa !21
  %i.fl = zext i8 %i.fk to i32
  %i.fm = load i8, ptr %i.fj, align 1, !tbaa !21
  %i.fn = zext i8 %i.fm to i32
  %i.fo = xor i32 %i.fn, -1
  %i.fp = and i32 %i.fo, %i.fl
  %.not325.1 = icmp eq i32 %i.fp, 0
  br i1 %.not325.1, label %.preheader397.2, label %.thread366

.preheader397.2:                                  ; preds = %.preheader397.1
  %i.fq = getelementptr inbounds nuw i8, ptr %.0253, i64 2
  %.1257.ptr.2 = getelementptr inbounds nuw i8, ptr %.0256, i64 2
  %i.fr = load i8, ptr %.1257.ptr.2, align 1, !tbaa !21
  %i.fs = zext i8 %i.fr to i32
  %i.ft = load i8, ptr %i.fq, align 1, !tbaa !21
  %i.fu = zext i8 %i.ft to i32
  %i.fv = xor i32 %i.fu, -1
  %i.fw = and i32 %i.fv, %i.fs
  %.not325.2 = icmp eq i32 %i.fw, 0
  br i1 %.not325.2, label %.preheader397.3, label %.thread366

.preheader397.3:                                  ; preds = %.preheader397.2
  %i.fx = getelementptr inbounds nuw i8, ptr %.0253, i64 3
  %.1257.ptr.3 = getelementptr inbounds nuw i8, ptr %.0256, i64 3
  %i.fy = load i8, ptr %.1257.ptr.3, align 1, !tbaa !21
  %i.fz = zext i8 %i.fy to i32
  %i.ga = load i8, ptr %i.fx, align 1, !tbaa !21
  %i.gb = zext i8 %i.ga to i32
  %i.gc = xor i32 %i.gb, -1
  %i.gd = and i32 %i.gc, %i.fz
  %.not325.3 = icmp eq i32 %i.gd, 0
  br i1 %.not325.3, label %.preheader397.4, label %.thread366

.preheader397.4:                                  ; preds = %.preheader397.3
  %i.ge = getelementptr inbounds nuw i8, ptr %.0253, i64 4
  %.1257.ptr.4 = getelementptr inbounds nuw i8, ptr %.0256, i64 4
  %i.gf = load i8, ptr %.1257.ptr.4, align 1, !tbaa !21
  %i.gg = zext i8 %i.gf to i32
  %i.gh = load i8, ptr %i.ge, align 1, !tbaa !21
  %i.gi = zext i8 %i.gh to i32
  %i.gj = xor i32 %i.gi, -1
  %i.gk = and i32 %i.gj, %i.gg
  %.not325.4 = icmp eq i32 %i.gk, 0
  br i1 %.not325.4, label %.preheader397.5, label %.thread366

.preheader397.5:                                  ; preds = %.preheader397.4
  %i.gl = getelementptr inbounds nuw i8, ptr %.0253, i64 5
  %.1257.ptr.5 = getelementptr inbounds nuw i8, ptr %.0256, i64 5
  %i.gm = load i8, ptr %.1257.ptr.5, align 1, !tbaa !21
  %i.gn = zext i8 %i.gm to i32
  %i.go = load i8, ptr %i.gl, align 1, !tbaa !21
  %i.gp = zext i8 %i.go to i32
  %i.gq = xor i32 %i.gp, -1
  %i.gr = and i32 %i.gq, %i.gn
  %.not325.5 = icmp eq i32 %i.gr, 0
  br i1 %.not325.5, label %.preheader397.6, label %.thread366

.preheader397.6:                                  ; preds = %.preheader397.5
  %i.gs = getelementptr inbounds nuw i8, ptr %.0253, i64 6
  %.1257.ptr.6 = getelementptr inbounds nuw i8, ptr %.0256, i64 6
  %i.gt = load i8, ptr %.1257.ptr.6, align 1, !tbaa !21
  %i.gu = zext i8 %i.gt to i32
  %i.gv = load i8, ptr %i.gs, align 1, !tbaa !21
  %i.gw = zext i8 %i.gv to i32
  %i.gx = xor i32 %i.gw, -1
  %i.gy = and i32 %i.gx, %i.gu
  %.not325.6 = icmp eq i32 %i.gy, 0
  br i1 %.not325.6, label %.preheader397.7, label %.thread366

.preheader397.7:                                  ; preds = %.preheader397.6
  %i.gz = getelementptr inbounds nuw i8, ptr %.0253, i64 7
  %.1257.ptr.7 = getelementptr inbounds nuw i8, ptr %.0256, i64 7
  %i.ha = load i8, ptr %.1257.ptr.7, align 1, !tbaa !21
  %i.hb = zext i8 %i.ha to i32
  %i.hc = load i8, ptr %i.gz, align 1, !tbaa !21
  %i.hd = zext i8 %i.hc to i32
  %i.he = xor i32 %i.hd, -1
  %i.hf = and i32 %i.he, %i.hb
  %.not325.7 = icmp eq i32 %i.hf, 0
  br i1 %.not325.7, label %.preheader397.8, label %.thread366

.preheader397.8:                                  ; preds = %.preheader397.7
  %i.hg = getelementptr inbounds nuw i8, ptr %.0253, i64 8
  %.1257.ptr.8 = getelementptr inbounds nuw i8, ptr %.0256, i64 8
  %i.hh = load i8, ptr %.1257.ptr.8, align 1, !tbaa !21
end_hunk_0
