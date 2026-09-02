Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/prof_data?download=true
inline.NumInlined: 149
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@prof_tdata_destroy_locked:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.056.i = phi ptr [ %4, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 8 uses
  %i.e = phi ptr [ %i.a, %.lr.ph.i ], [ %.pr.i, %bb.g ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = tail call i32 @llvm.ucmp.i32.i64(i64 %i.c, i64 %i.g)
  %i.i = icmp eq i64 %i.c, %i.g
  br i1 %i.i, label %bb.c, label %prof_tdata_comp.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = tail call i32 @llvm.ucmp.i32.i64(i64 %i.j, i64 %i.l)
  br label %prof_tdata_comp.exit.i

prof_tdata_comp.exit.i:                           ; preds = %bb.c, %bb.b
  %.0.i.i10 = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  store i32 %.0.i.i10, ptr %i.n, align 8, !tbaa !60
  %i.o = icmp slt i32 %.0.i.i10, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %prof_tdata_comp.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.056.i, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !57
  br label %bb.g

bb.e:                                             ; preds = %prof_tdata_comp.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, -2                         ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.056.i, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !57
  %i.y = icmp eq i32 %.0.i.i10, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.056.i, i64 16 ; 2 uses
  store i32 1, ptr %i.z, align 8, !tbaa !60
  %.not29857.i = icmp eq i64 %i.v, 0
  br i1 %.not29857.i, label %.loopexit.i, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %bb.f, %.lr.ph59.i
  %.158.i = phi ptr [ %i.af, %.lr.ph59.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ab = phi ptr [ %i.ae, %.lr.ph59.i ], [ %i.w, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.158.i, i64 8
  store i32 -1, ptr %i.ac, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.158.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !57
  %.not298.i = icmp eq ptr %i.ae, null
  br i1 %.not298.i, label %.loopexit.i, label %.lr.ph59.i, !llvm.loop !53

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pr.i = phi ptr [ %i.w, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.056.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %.loopexit.i, label %bb.b, !llvm.loop !54

.loopexit.i:                                      ; preds = %bb.g, %.lr.ph59.i, %bb.f, %bb.a
  %.2274.i = phi ptr [ %.056.i, %bb.f ], [ null, %bb.a ], [ %.056.i, %.lr.ph59.i ], [ null, %bb.g ] ; 6 uses
  %.3.i = phi ptr [ %i.aa, %bb.f ], [ %4, %bb.a ], [ %i.af, %.lr.ph59.i ], [ %i.ag, %bb.g ] ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.3.i, i64 -16 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57 ; 5 uses
  %.not299.i = icmp eq ptr %i.ai, %1
  br i1 %.not299.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, -2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 1                        ; 2 uses
  %i.as = or disjoint i64 %i.ar, %i.am
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !40
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !39
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, -2
  %i.az = or disjoint i64 %i.ay, %i.ar
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !40
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -2
  %i.be = and i64 %i.al, 1
  %i.bf = or disjoint i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ao, align 8, !tbaa !40
  store ptr %i.ai, ptr %.2274.i, align 8, !tbaa !57
  store ptr %1, ptr %i.ah, align 8, !tbaa !57
  %i.bh = icmp eq ptr %.2274.i, %4
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %.2274.i, align 8, !tbaa !57
  store ptr %i.bi, ptr @tdatas, align 8, !tbaa !15
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds i8, ptr %.2274.i, i64 -16 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.2274.i, i64 -8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !60
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = load ptr, ptr %.2274.i, align 8, !tbaa !57 ; 2 uses
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !39
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, 1
  %i.bw = or i64 %i.bv, %i.bq
  %i.bx = inttoptr i64 %i.bw to ptr
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !40
  br label %bb.u

bb.m:                                             ; preds = %.loopexit.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !39 ; 5 uses
  %.not300.i = icmp eq ptr %i.bz, null
  br i1 %.not300.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !40
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, -2
  %i.ce = inttoptr i64 %i.cd to ptr
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !40
  %i.cf = icmp eq ptr %i.ah, %4
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bz, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.p:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds i8, ptr %.3.i, i64 -32 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.3.i, i64 -24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !60
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.bz, ptr %i.cl, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.r:                                             ; preds = %bb.p
  %i.cm = ptrtoint ptr %i.bz to i64
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, 1
  %i.cs = or i64 %i.cr, %i.cm
  %i.ct = inttoptr i64 %i.cs to ptr
  store ptr %i.ct, ptr %i.co, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.s:                                             ; preds = %bb.m
  %i.cu = icmp eq ptr %i.ah, %4
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.u:                                             ; preds = %bb.s, %bb.l, %bb.k, %bb.i
  %i.cv = phi ptr [ %i.ai, %bb.s ], [ %1, %bb.i ], [ %1, %bb.l ], [ %1, %bb.k ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !40
  %i.cy = ptrtoint ptr %i.cx to i64
  %9 = and i64 %i.cy, 1
  %.not301.i = icmp eq i64 %9, 0
  br i1 %.not301.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds i8, ptr %.3.i, i64 -32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr null, ptr %i.db, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.w:                                             ; preds = %bb.u
  store ptr null, ptr %i.ah, align 8, !tbaa !57
  %i.dc = getelementptr inbounds i8, ptr %.3.i, i64 -32 ; 2 uses
  %.not30268.i = icmp ult ptr %i.dc, %4
  br i1 %.not30268.i, label %._crit_edge.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %bb.w, %bb.bl
  %.469.i = phi ptr [ %i.md, %bb.bl ], [ %i.dc, %bb.w ] ; 19 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.469.i, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !60
  %i.df = icmp slt i32 %i.de, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %.469.i, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !57 ; 2 uses
  br i1 %i.df, label %bb.x, label %bb.am

bb.x:                                             ; preds = %.lr.ph71.i
  %i.di = load ptr, ptr %.469.i, align 8, !tbaa !57 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !39
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 8 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !40 ; 4 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 2 uses
  %10 = and i64 %i.dm, 1
  %.not311.i = icmp eq i64 %10, 0
  br i1 %.not311.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = and i64 %i.dm, -2                       ; 2 uses
  %i.do = inttoptr i64 %i.dn to ptr               ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 6 uses
  %.not314.i = icmp eq ptr %i.dq, null
  br i1 %.not314.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !40
  %i.dt = ptrtoint ptr %i.ds to i64
  %11 = and i64 %i.dt, 1
  %.not315.i = icmp eq i64 %11, 0
  br i1 %.not315.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.do, ptr %i.dk, align 8, !tbaa !40
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !40
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, -2
  %i.dx = inttoptr i64 %i.dw to ptr
  store ptr %i.dx, ptr %i.dp, align 8, !tbaa !39
  %i.dy = and i64 %i.dv, 1
  %i.dz = or disjoint i64 %i.dy, %i.dn
  %i.ea = inttoptr i64 %i.dz to ptr
  store ptr %i.ea, ptr %i.dr, align 8, !tbaa !40
  %i.eb = ptrtoint ptr %i.dq to i64
  %i.ec = load ptr, ptr %i.dk, align 8, !tbaa !40
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = or i64 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !39
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = and i64 %i.ee, 1
  %i.ej = or i64 %i.ei, %i.eh
  %i.ek = inttoptr i64 %i.ej to ptr
  store ptr %i.ek, ptr %i.dk, align 8, !tbaa !40
  store ptr %i.di, ptr %i.ef, align 8, !tbaa !39
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.el = ptrtoint ptr %i.dq to i64
  %i.em = or i64 %i.el, 1
  %i.en = inttoptr i64 %i.em to ptr
  store ptr %i.en, ptr %i.dk, align 8, !tbaa !40
  store ptr %i.di, ptr %i.dp, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0275.i = phi ptr [ %i.dq, %bb.aa ], [ %i.do, %bb.ab ] ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %.469.i, i64 -8
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !60
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !57
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %.0275.i, ptr %i.et, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.ae:                                            ; preds = %bb.ac
  %i.eu = ptrtoint ptr %.0275.i to i64
  %i.ev = load ptr, ptr %i.eo, align 8, !tbaa !57
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !40
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, 1
  %i.fa = or i64 %i.ez, %i.eu
  %i.fb = inttoptr i64 %i.fa to ptr
  store ptr %i.fb, ptr %i.ew, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.af:                                            ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !39 ; 8 uses
  %.not312.i = icmp eq ptr %i.fd, null
  br i1 %.not312.i, label %.critedge317.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !40
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  %12 = and i64 %i.fg, 1
  %.not313.i = icmp eq i64 %12, 0
  br i1 %.not313.i, label %.critedge317.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fi = and i64 %i.fg, -2
  %i.fj = inttoptr i64 %i.fi to ptr
  store ptr %i.fj, ptr %i.fc, align 8, !tbaa !39
  store ptr %i.dl, ptr %i.fh, align 8, !tbaa !40
  %i.fk = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fl = load ptr, ptr %i.dk, align 8, !tbaa !40
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = or i64 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !39
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = and i64 %i.fn, 1
  %i.fs = or i64 %i.fr, %i.fq
  %i.ft = inttoptr i64 %i.fs to ptr
  store ptr %i.ft, ptr %i.dk, align 8, !tbaa !40
  store ptr %i.di, ptr %i.fo, align 8, !tbaa !39
  %i.fu = icmp eq ptr %.469.i, %4
  br i1 %i.fu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.fd, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fv = getelementptr inbounds i8, ptr %.469.i, i64 -16
  %i.fw = getelementptr inbounds i8, ptr %.469.i, i64 -8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !60
  %i.fy = icmp slt i32 %i.fx, 0
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !57 ; 2 uses
  br i1 %i.fy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store ptr %i.fd, ptr %i.ga, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.al:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !40
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = and i64 %i.gd, 1
  %i.gf = or disjoint i64 %i.ge, %i.fk
  %i.gg = inttoptr i64 %i.gf to ptr
  store ptr %i.gg, ptr %i.gb, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

.critedge317.i:                                   ; preds = %bb.ag, %bb.af
  %i.gh = ptrtoint ptr %i.fd to i64
  %i.gi = or i64 %i.gh, 1
  %i.gj = inttoptr i64 %i.gi to ptr
  store ptr %i.gj, ptr %i.dk, align 8, !tbaa !40
  store ptr %i.di, ptr %i.fc, align 8, !tbaa !39
  store ptr %i.dl, ptr %.469.i, align 8, !tbaa !57
  br label %bb.bl

bb.am:                                            ; preds = %.lr.ph71.i
  %i.gk = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.gl = load ptr, ptr %.469.i, align 8, !tbaa !57 ; 10 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !40
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = and i64 %i.go, 1
  %i.gq = or i64 %i.gp, %i.gk                     ; 2 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  store ptr %i.gr, ptr %i.gm, align 8, !tbaa !40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !39 ; 9 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 15 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.gx = ptrtoint ptr %i.gw to i64               ; 4 uses
  %13 = and i64 %i.gx, 1
  %.not303.i = icmp eq i64 %13, 0
  br i1 %.not303.i, label %bb.aw, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  %i.gz = and i64 %i.gx, -2
  %i.ha = inttoptr i64 %i.gz to ptr               ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !39 ; 2 uses
  %.not309.i = icmp eq ptr %i.hc, null
  br i1 %.not309.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !40
  %i.hf = ptrtoint ptr %i.he to i64               ; 2 uses
  %14 = and i64 %i.hf, 1
  %.not310.i = icmp eq i64 %14, 0
  br i1 %.not310.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hg = and i64 %i.hf, -2
  %i.hh = inttoptr i64 %i.hg to ptr
  store ptr %i.hh, ptr %i.hd, align 8, !tbaa !40
  %i.hi = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.hj = ptrtoint ptr %i.hi to i64               ; 2 uses
  %i.hk = and i64 %i.hj, -2
  %i.hl = inttoptr i64 %i.hk to ptr               ; 3 uses
  %i.hm = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.hn = and i64 %i.hj, 1
  %i.ho = or i64 %i.hn, %i.hm
  %i.hp = inttoptr i64 %i.ho to ptr
  store ptr %i.hp, ptr %i.gv, align 8, !tbaa !40
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !40
  %i.hs = ptrtoint ptr %i.hr to i64               ; 2 uses
  %i.ht = and i64 %i.hs, -2
  %i.hu = inttoptr i64 %i.ht to ptr
  store ptr %i.hu, ptr %i.gy, align 8, !tbaa !39
  %i.hv = and i64 %i.hs, 1
  %i.hw = or i64 %i.hv, %i.hm
  %i.hx = inttoptr i64 %i.hw to ptr
  store ptr %i.hx, ptr %i.hq, align 8, !tbaa !40
  %i.hy = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = and i64 %i.hz, 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 24 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !39
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = or i64 %i.ia, %i.id
  %i.if = inttoptr i64 %i.ie to ptr
  store ptr %i.if, ptr %i.gv, align 8, !tbaa !40
  store ptr %i.gt, ptr %i.ib, align 8, !tbaa !39
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ha, i64 32 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !40
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = or i64 %i.ii, 1
  %i.ik = inttoptr i64 %i.ij to ptr
  store ptr %i.ik, ptr %i.ig, align 8, !tbaa !40
  %i.il = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = and i64 %i.im, -2
  %i.io = inttoptr i64 %i.in to ptr
  store ptr %i.io, ptr %i.gy, align 8, !tbaa !39
  store ptr %i.gl, ptr %i.gv, align 8, !tbaa !40
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0271.i = phi ptr [ %i.hl, %bb.ap ], [ %i.gt, %bb.aq ] ; 3 uses
  %i.ip = icmp eq ptr %.469.i, %4
  br i1 %i.ip, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store ptr %.0271.i, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.at:                                            ; preds = %bb.ar
  %i.iq = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.469.i, i64 -8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !60
  %i.it = icmp slt i32 %i.is, 0
  br i1 %i.it, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !57
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store ptr %.0271.i, ptr %i.iv, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.av:                                            ; preds = %bb.at
  %i.iw = ptrtoint ptr %.0271.i to i64
  %i.ix = load ptr, ptr %i.iq, align 8, !tbaa !57
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !40
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = and i64 %i.ja, 1
  %i.jc = or i64 %i.jb, %i.iw
  %i.jd = inttoptr i64 %i.jc to ptr
  store ptr %i.jd, ptr %i.iy, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.aw:                                            ; preds = %bb.am
  %15 = and i64 %i.gq, 1
  %.not304.i = icmp eq i64 %15, 0
  br i1 %.not304.i, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.je = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.jg = load ptr, ptr %i.gu, align 8, !tbaa !39 ; 2 uses
  %.not307.i = icmp eq ptr %i.jg, null
  br i1 %.not307.i, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 32 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !40
  %i.jj = ptrtoint ptr %i.ji to i64
  %16 = and i64 %i.jj, 1
  %.not308.i = icmp eq i64 %16, 0
  br i1 %.not308.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jk = and i64 %i.gk, -2
  %i.jl = inttoptr i64 %i.jk to ptr
  store ptr %i.jl, ptr %i.je, align 8, !tbaa !40
  %i.jm = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = or i64 %i.jn, 1
  %i.jp = inttoptr i64 %i.jo to ptr
  store ptr %i.jp, ptr %i.gv, align 8, !tbaa !40
  %i.jq = load ptr, ptr %i.jh, align 8, !tbaa !40
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = and i64 %i.jr, -2
  %i.jt = inttoptr i64 %i.js to ptr
  store ptr %i.jt, ptr %i.jh, align 8, !tbaa !40
  %i.ju = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.jv = ptrtoint ptr %i.ju to i64               ; 2 uses
  %i.jw = and i64 %i.jv, -2
  %i.jx = inttoptr i64 %i.jw to ptr
  store ptr %i.jx, ptr %i.jf, align 8, !tbaa !39
  %i.jy = ptrtoint ptr %i.gl to i64
  %i.jz = and i64 %i.jv, 1
  %i.ka = or i64 %i.jz, %i.jy
  %i.kb = inttoptr i64 %i.ka to ptr
  store ptr %i.kb, ptr %i.gv, align 8, !tbaa !40
  %i.kc = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %.469.i, i64 -8
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !60
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kg = load ptr, ptr %i.kc, align 8, !tbaa !57
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store ptr %i.gt, ptr %i.kh, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.bb:                                            ; preds = %bb.az
  %i.ki = ptrtoint ptr %i.gt to i64
  %i.kj = load ptr, ptr %i.kc, align 8, !tbaa !57
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !40
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = and i64 %i.km, 1
  %i.ko = or i64 %i.kn, %i.ki
  %i.kp = inttoptr i64 %i.ko to ptr
  store ptr %i.kp, ptr %i.kk, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.bc:                                            ; preds = %bb.ay, %bb.ax
  %i.kq = or disjoint i64 %i.gx, 1
  %i.kr = inttoptr i64 %i.kq to ptr
  store ptr %i.kr, ptr %i.gv, align 8, !tbaa !40
  %i.ks = load ptr, ptr %i.je, align 8, !tbaa !40
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = and i64 %i.kt, -2
  %i.kv = inttoptr i64 %i.ku to ptr
  store ptr %i.kv, ptr %i.je, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.bd:                                            ; preds = %bb.aw
  %i.kw = load ptr, ptr %i.gu, align 8, !tbaa !39 ; 3 uses
  %.not305.i = icmp eq ptr %i.kw, null
  br i1 %.not305.i, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !40
  %i.kz = ptrtoint ptr %i.ky to i64               ; 2 uses
  %17 = and i64 %i.kz, 1
  %.not306.i = icmp eq i64 %17, 0
  br i1 %.not306.i, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.la = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.lc = and i64 %i.kz, -2
  %i.ld = inttoptr i64 %i.lc to ptr
  store ptr %i.ld, ptr %i.lb, align 8, !tbaa !40
  %i.le = load ptr, ptr %i.gv, align 8, !tbaa !40
  %i.lf = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lg = and i64 %i.lf, -2
  %i.lh = inttoptr i64 %i.lg to ptr
  store ptr %i.lh, ptr %i.la, align 8, !tbaa !39
  %i.li = ptrtoint ptr %i.gl to i64
  %i.lj = and i64 %i.lf, 1
  %i.lk = or i64 %i.lj, %i.li
  %i.ll = inttoptr i64 %i.lk to ptr
  store ptr %i.ll, ptr %i.gv, align 8, !tbaa !40
  %i.lm = icmp eq ptr %.469.i, %4
  br i1 %i.lm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.gt, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ln = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %.469.i, i64 -8
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !60
  %i.lq = icmp slt i32 %i.lp, 0
  br i1 %i.lq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lr = load ptr, ptr %i.ln, align 8, !tbaa !57
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  store ptr %i.gt, ptr %i.ls, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.bj:                                            ; preds = %bb.bh
  %i.lt = ptrtoint ptr %i.gt to i64
  %i.lu = load ptr, ptr %i.ln, align 8, !tbaa !57
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !40
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = and i64 %i.lx, 1
  %i.lz = or i64 %i.ly, %i.lt
  %i.ma = inttoptr i64 %i.lz to ptr
  store ptr %i.ma, ptr %i.lv, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.bk:                                            ; preds = %bb.be, %bb.bd
  %i.mb = or disjoint i64 %i.gx, 1
  %i.mc = inttoptr i64 %i.mb to ptr
  store ptr %i.mc, ptr %i.gv, align 8, !tbaa !40
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.critedge317.i
  %i.md = getelementptr inbounds i8, ptr %.469.i, i64 -16 ; 2 uses
  %.not302.i = icmp ult ptr %i.md, %4
  br i1 %.not302.i, label %._crit_edge.i, label %.lr.ph71.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.bl, %bb.w
  %i.me = load ptr, ptr %4, align 16, !tbaa !57
  store ptr %i.me, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

tdata_tree_remove.exit:                           ; preds = %bb.o, %bb.q, %bb.r, %bb.t, %bb.v, %bb.ad, %bb.ae, %bb.ai, %bb.ak, %bb.al, %bb.as, %bb.au, %bb.av, %bb.ba, %bb.bb, %bb.bc, %bb.bg, %bb.bi, %bb.bj, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @je_ckh_delete(ptr noundef %0, ptr noundef nonnull %i.mf) #11
  %i.mg = icmp eq ptr %0, null                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  br i1 %i.mg, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %tdata_tree_remove.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #11
  br label %tsdn_rtree_ctx.exit

bb.bn:                                            ; preds = %tdata_tree_remove.exit
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.bm, %bb.bn
  %.0.i8 = phi ptr [ %7, %bb.bm ], [ %i.mh, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.mi = ptrtoint ptr %1 to i64                  ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i8, i64 noundef %i.mi)
  %i.mj = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.val = load i64, ptr %i.mj, align 8, !tbaa !48
  %i.mk = and i64 %.val, 4095
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.mk
  %i.mm = load atomic ptr, ptr %i.ml monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.mg, label %bb.bo, label %bb.bp, !prof !49

bb.bo:                                            ; preds = %tsdn_rtree_ctx.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #11
  br label %tsdn_rtree_ctx.exit.i

bb.bp:                                            ; preds = %tsdn_rtree_ctx.exit
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.bp, %bb.bo
  %.0.i.i = phi ptr [ %5, %bb.bo ], [ %i.mn, %bb.bp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.mi)
  %i.mo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !50 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !51, !range !20, !noundef !21
  %i.ms = icmp eq i32 %i.mp, 232
  %i.mt = load ptr, ptr %6, align 8               ; 3 uses
  %i.mu = icmp eq ptr %i.mt, null
  %or.cond.i = select i1 %i.ms, i1 true, i1 %i.mu
  br i1 %or.cond.i, label %emap_alloc_ctx_lookup.exit, label %bb.bq

bb.bq:                                            ; preds = %tsdn_rtree_ctx.exit.i
  %.val.i = load i64, ptr %i.mt, align 8, !tbaa !48
  %i.mv = trunc i64 %.val.i to i32
  %i.mw = lshr i32 %i.mv, 20
  %i.mx = and i32 %i.mw, 255                      ; 2 uses
  %i.my = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !19, !range !20, !noundef !21
  %i.mz = trunc nuw i8 %i.my to i1
  %i.na = icmp samesign ugt i32 %i.mx, 35
  %or.cond.not.i = select i1 %i.mz, i1 %i.na, i1 false
  br i1 %or.cond.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nb = zext nneg i32 %i.mx to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.nb
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !17
  br label %emap_alloc_ctx_lookup.exit

bb.bs:                                            ; preds = %bb.bq
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !22
  %i.ng = and i64 %i.nf, -4096
  %i.nh = load i64, ptr @je_sz_large_pad, align 8, !tbaa !17
  %i.ni = sub i64 %i.ng, %i.nh
  br label %emap_alloc_ctx_lookup.exit

emap_alloc_ctx_lookup.exit:                       ; preds = %bb.bs, %bb.br, %tsdn_rtree_ctx.exit.i
  %i.nj = phi i64 [ 0, %tsdn_rtree_ctx.exit.i ], [ %i.nd, %bb.br ], [ %i.ni, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.nk = trunc nuw i8 %i.mr to i1
  br i1 %i.nk, label %bb.bt, label %emap_alloc_ctx_usize_get.exit

bb.bt:                                            ; preds = %emap_alloc_ctx_lookup.exit
  %i.nl = zext i32 %i.mp to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.nl
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !17
  br label %emap_alloc_ctx_usize_get.exit

emap_alloc_ctx_usize_get.exit:                    ; preds = %emap_alloc_ctx_lookup.exit, %bb.bt
  %.0.i9 = phi i64 [ %i.nn, %bb.bt ], [ %i.nj, %emap_alloc_ctx_lookup.exit ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.mm, i64 72
  %i.np = atomicrmw sub ptr %i.no, i64 %.0.i9 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %i.mg, label %bb.bu, label %bb.bv, !prof !49

bb.bu:                                            ; preds = %emap_alloc_ctx_usize_get.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #11
  br label %tsdn_rtree_ctx.exit.i.i

bb.bv:                                            ; preds = %emap_alloc_ctx_usize_get.exit
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.bv, %bb.bu
  %.0.i.i.i = phi ptr [ %2, %bb.bu ], [ %i.nq, %bb.bv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.mi)
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !51, !range !20, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.bw, label %emap_alloc_ctx_usize_get.exit.i, !prof !23

bb.bw:                                            ; preds = %tsdn_rtree_ctx.exit.i.i
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %arena_dalloc_no_tcache.exit

emap_alloc_ctx_usize_get.exit.i:                  ; preds = %tsdn_rtree_ctx.exit.i.i
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef nonnull %1)
  br label %arena_dalloc_no_tcache.exit

arena_dalloc_no_tcache.exit:                      ; preds = %bb.bw, %emap_alloc_ctx_usize_get.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_prof_tctx_try_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %4 = alloca [128 x %struct.tctx_tree_path_entry_t], align 16 ; 14 uses
end_hunk_0
begin_hunk_1_@je_prof_tctx_try_destroy:bb.a
  %i.bf = tail call i32 @llvm.ucmp.i32.i64(i64 %i.az, i64 %i.be)
  %i.bg = icmp eq i64 %i.az, %i.be
  br i1 %i.bg, label %bb.o, label %prof_tctx_comp.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !83 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !83 ; 2 uses
  %i.bk = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bh, i64 %i.bj)
  %i.bl = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bl, label %bb.p, label %prof_tctx_comp.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.bp = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bm, i64 %i.bo)
  br label %prof_tctx_comp.exit.i.i

prof_tctx_comp.exit.i.i:                          ; preds = %bb.p, %bb.o, %bb.n
  %.1.i.i.i = phi i32 [ %i.bf, %bb.n ], [ %i.bp, %bb.p ], [ %i.bk, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 8
  store i32 %.1.i.i.i, ptr %i.bq, align 8, !tbaa !85
  %i.br = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %prof_tctx_comp.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !86 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !81
  br label %bb.t

bb.r:                                             ; preds = %prof_tctx_comp.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, -2                       ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !81
  %i.cb = icmp eq i32 %.1.i.i.i, 0
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16 ; 2 uses
  store i32 1, ptr %i.cc, align 8, !tbaa !85
  %.not298376.i.i = icmp eq i64 %i.by, 0
  br i1 %.not298376.i.i, label %.loopexit.i.i, label %.lr.ph378.i.i

.lr.ph378.i.i:                                    ; preds = %bb.s, %.lr.ph378.i.i
  %.1377.i.i = phi ptr [ %i.ci, %.lr.ph378.i.i ], [ %i.cd, %bb.s ] ; 2 uses
  %i.ce = phi ptr [ %i.ch, %.lr.ph378.i.i ], [ %i.bz, %bb.s ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.1377.i.i, i64 8
  store i32 -1, ptr %i.cf, align 8, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !86 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1377.i.i, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !81
  %.not298.i.i = icmp eq ptr %i.ch, null
  br i1 %.not298.i.i, label %.loopexit.i.i, label %.lr.ph378.i.i, !llvm.loop !61

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pr.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.bt, %bb.q ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16 ; 2 uses
  %.not.i37.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i37.i, label %.loopexit.i.i, label %bb.n, !llvm.loop !62

.loopexit.i.i:                                    ; preds = %bb.t, %.lr.ph378.i.i, %bb.s, %bb.m
  %.2274.i.i = phi ptr [ %.0375.i.i, %bb.s ], [ null, %bb.m ], [ %.0375.i.i, %.lr.ph378.i.i ], [ null, %bb.t ] ; 6 uses
  %.3.i.i = phi ptr [ %i.cd, %bb.s ], [ %4, %bb.m ], [ %i.ci, %.lr.ph378.i.i ], [ %i.cj, %bb.t ] ; 5 uses
  %i.ck = getelementptr inbounds i8, ptr %.3.i.i, i64 -16 ; 5 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81 ; 5 uses
  %.not299.i.i = icmp eq ptr %i.cl, %1
  br i1 %.not299.i.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 120 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = and i64 %i.co, -2
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1                        ; 2 uses
  %i.cv = or disjoint i64 %i.cu, %i.cp
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !87
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !86
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !86
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -2
  %i.dc = or disjoint i64 %i.db, %i.cu
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %i.dd, ptr %i.cm, align 8, !tbaa !87
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, -2
  %i.dh = and i64 %i.co, 1
  %i.di = or disjoint i64 %i.dg, %i.dh
  %i.dj = inttoptr i64 %i.di to ptr
  store ptr %i.dj, ptr %i.cr, align 8, !tbaa !87
  store ptr %i.cl, ptr %.2274.i.i, align 8, !tbaa !81
  store ptr %1, ptr %i.ck, align 8, !tbaa !81
  %i.dk = icmp eq ptr %.2274.i.i, %4
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %.2274.i.i, align 8, !tbaa !81
  store ptr %i.dl, ptr %i.aw, align 8, !tbaa !79
  br label %bb.ah

bb.w:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds i8, ptr %.2274.i.i, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.2274.i.i, i64 -8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !85
  %i.dp = icmp slt i32 %i.do, 0
  %i.dq = load ptr, ptr %.2274.i.i, align 8, !tbaa !81 ; 2 uses
  br i1 %i.dp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !86
  br label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 120 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !87
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = or i64 %i.dy, %i.dt
  %i.ea = inttoptr i64 %i.dz to ptr
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !87
  br label %bb.ah

bb.z:                                             ; preds = %.loopexit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !86 ; 5 uses
  %.not300.i.i = icmp eq ptr %i.ec, null
  br i1 %.not300.i.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 120 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !87
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, -2
  %i.eh = inttoptr i64 %i.eg to ptr
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !87
  %i.ei = icmp eq ptr %i.ck, %4
  br i1 %i.ei, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ec, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds i8, ptr %.3.i.i, i64 -32 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.3.i.i, i64 -24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !85
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  store ptr %i.ec, ptr %i.eo, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ep = ptrtoint ptr %i.ec to i64
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !81
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = and i64 %i.et, 1
  %i.ev = or i64 %i.eu, %i.ep
  %i.ew = inttoptr i64 %i.ev to ptr
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.af:                                            ; preds = %bb.z
  %i.ex = icmp eq ptr %i.ck, %4
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.ah:                                            ; preds = %bb.af, %bb.y, %bb.x, %bb.v
  %i.ey = phi ptr [ %i.cl, %bb.af ], [ %1, %bb.v ], [ %1, %bb.y ], [ %1, %bb.x ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 120
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !87
  %i.fb = ptrtoint ptr %i.fa to i64
  %9 = and i64 %i.fb, 1
  %.not301.i.i = icmp eq i64 %9, 0
  br i1 %.not301.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds i8, ptr %.3.i.i, i64 -32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !81
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 112
  store ptr null, ptr %i.fe, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.aj:                                            ; preds = %bb.ah
  store ptr null, ptr %i.ck, align 8, !tbaa !81
  %i.ff = getelementptr inbounds i8, ptr %.3.i.i, i64 -32 ; 2 uses
  %.not302387.i.i = icmp ult ptr %i.ff, %4
  br i1 %.not302387.i.i, label %._crit_edge.i.i, label %.lr.ph390.i.i

.lr.ph390.i.i:                                    ; preds = %bb.aj, %bb.by
  %.4388.i.i = phi ptr [ %i.og, %bb.by ], [ %i.ff, %bb.aj ] ; 19 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.4388.i.i, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !85
  %i.fi = icmp slt i32 %i.fh, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %.4388.i.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !81 ; 2 uses
  br i1 %i.fi, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %.lr.ph390.i.i
  %i.fl = load ptr, ptr %.4388.i.i, align 8, !tbaa !81 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !86
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 120 ; 8 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !87 ; 4 uses
  %i.fp = ptrtoint ptr %i.fo to i64               ; 2 uses
  %10 = and i64 %i.fp, 1
  %.not311.i.i = icmp eq i64 %10, 0
  br i1 %.not311.i.i, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fq = and i64 %i.fp, -2                       ; 2 uses
  %i.fr = inttoptr i64 %i.fq to ptr               ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 112 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !86 ; 6 uses
  %.not314.i.i = icmp eq ptr %i.ft, null
  br i1 %.not314.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 120 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.fw = ptrtoint ptr %i.fv to i64
  %11 = and i64 %i.fw, 1
  %.not315.i.i = icmp eq i64 %11, 0
  br i1 %.not315.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.fr, ptr %i.fn, align 8, !tbaa !87
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !87
  %i.fy = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.fz = and i64 %i.fy, -2
  %i.ga = inttoptr i64 %i.fz to ptr
  store ptr %i.ga, ptr %i.fs, align 8, !tbaa !86
  %i.gb = and i64 %i.fy, 1
  %i.gc = or disjoint i64 %i.gb, %i.fq
  %i.gd = inttoptr i64 %i.gc to ptr
  store ptr %i.gd, ptr %i.fu, align 8, !tbaa !87
  %i.ge = ptrtoint ptr %i.ft to i64
  %i.gf = load ptr, ptr %i.fn, align 8, !tbaa !87
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = or i64 %i.gg, %i.ge
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ft, i64 112 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !86
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = and i64 %i.gh, 1
  %i.gm = or i64 %i.gl, %i.gk
  %i.gn = inttoptr i64 %i.gm to ptr
  store ptr %i.gn, ptr %i.fn, align 8, !tbaa !87
  store ptr %i.fl, ptr %i.gi, align 8, !tbaa !86
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.go = ptrtoint ptr %i.ft to i64
  %i.gp = or i64 %i.go, 1
  %i.gq = inttoptr i64 %i.gp to ptr
  store ptr %i.gq, ptr %i.fn, align 8, !tbaa !87
  store ptr %i.fl, ptr %i.fs, align 8, !tbaa !86
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0275.i.i = phi ptr [ %i.ft, %bb.an ], [ %i.fr, %bb.ao ] ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !85
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gv = load ptr, ptr %i.gr, align 8, !tbaa !81
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 112
  store ptr %.0275.i.i, ptr %i.gw, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.gx = ptrtoint ptr %.0275.i.i to i64
  %i.gy = load ptr, ptr %i.gr, align 8, !tbaa !81
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 120 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !87
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = and i64 %i.hb, 1
  %i.hd = or i64 %i.hc, %i.gx
  %i.he = inttoptr i64 %i.hd to ptr
  store ptr %i.he, ptr %i.gz, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.as:                                            ; preds = %bb.ak
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fo, i64 112 ; 3 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !86 ; 8 uses
  %.not312.i.i = icmp eq ptr %i.hg, null
  br i1 %.not312.i.i, label %.critedge317.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 120
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !87
  %i.hj = ptrtoint ptr %i.hi to i64               ; 2 uses
  %12 = and i64 %i.hj, 1
  %.not313.i.i = icmp eq i64 %12, 0
  br i1 %.not313.i.i, label %.critedge317.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 120
  %i.hl = and i64 %i.hj, -2
  %i.hm = inttoptr i64 %i.hl to ptr
  store ptr %i.hm, ptr %i.hf, align 8, !tbaa !86
  store ptr %i.fo, ptr %i.hk, align 8, !tbaa !87
  %i.hn = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.ho = load ptr, ptr %i.fn, align 8, !tbaa !87
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = or i64 %i.hp, %i.hn
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 112 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !86
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = and i64 %i.hq, 1
  %i.hv = or i64 %i.hu, %i.ht
  %i.hw = inttoptr i64 %i.hv to ptr
  store ptr %i.hw, ptr %i.fn, align 8, !tbaa !87
  store ptr %i.fl, ptr %i.hr, align 8, !tbaa !86
  %i.hx = icmp eq ptr %.4388.i.i, %4
  br i1 %i.hx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store ptr %i.hg, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16
  %i.hz = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !85
  %i.ib = icmp slt i32 %i.ia, 0
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ib, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 112
  store ptr %i.hg, ptr %i.id, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 120 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !87
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = and i64 %i.ig, 1
  %i.ii = or disjoint i64 %i.ih, %i.hn
  %i.ij = inttoptr i64 %i.ii to ptr
  store ptr %i.ij, ptr %i.ie, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

.critedge317.i.i:                                 ; preds = %bb.at, %bb.as
  %i.ik = ptrtoint ptr %i.hg to i64
  %i.il = or i64 %i.ik, 1
  %i.im = inttoptr i64 %i.il to ptr
  store ptr %i.im, ptr %i.fn, align 8, !tbaa !87
  store ptr %i.fl, ptr %i.hf, align 8, !tbaa !86
  store ptr %i.fo, ptr %.4388.i.i, align 8, !tbaa !81
  br label %bb.by

bb.az:                                            ; preds = %.lr.ph390.i.i
  %i.in = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.io = load ptr, ptr %.4388.i.i, align 8, !tbaa !81 ; 10 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 120 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !87
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = and i64 %i.ir, 1
  %i.it = or i64 %i.is, %i.in                     ; 2 uses
  %i.iu = inttoptr i64 %i.it to ptr
  store ptr %i.iu, ptr %i.ip, align 8, !tbaa !87
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 112
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !86 ; 9 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 112 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 120 ; 15 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !87
  %i.ja = ptrtoint ptr %i.iz to i64               ; 4 uses
  %13 = and i64 %i.ja, 1
  %.not303.i.i = icmp eq i64 %13, 0
  br i1 %.not303.i.i, label %bb.bj, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 112 ; 2 uses
  %i.jc = and i64 %i.ja, -2
  %i.jd = inttoptr i64 %i.jc to ptr               ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 112
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !86 ; 2 uses
  %.not309.i.i = icmp eq ptr %i.jf, null
  br i1 %.not309.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 120 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !87
  %i.ji = ptrtoint ptr %i.jh to i64               ; 2 uses
  %14 = and i64 %i.ji, 1
  %.not310.i.i = icmp eq i64 %14, 0
  br i1 %.not310.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jj = and i64 %i.ji, -2
  %i.jk = inttoptr i64 %i.jj to ptr
  store ptr %i.jk, ptr %i.jg, align 8, !tbaa !87
  %i.jl = load ptr, ptr %i.iy, align 8, !tbaa !87
  %i.jm = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.jn = and i64 %i.jm, -2
  %i.jo = inttoptr i64 %i.jn to ptr               ; 3 uses
  %i.jp = ptrtoint ptr %i.io to i64               ; 2 uses
  %i.jq = and i64 %i.jm, 1
  %i.jr = or i64 %i.jq, %i.jp
  %i.js = inttoptr i64 %i.jr to ptr
  store ptr %i.js, ptr %i.iy, align 8, !tbaa !87
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 120 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !87
  %i.jv = ptrtoint ptr %i.ju to i64               ; 2 uses
  %i.jw = and i64 %i.jv, -2
  %i.jx = inttoptr i64 %i.jw to ptr
  store ptr %i.jx, ptr %i.jb, align 8, !tbaa !86
  %i.jy = and i64 %i.jv, 1
  %i.jz = or i64 %i.jy, %i.jp
  %i.ka = inttoptr i64 %i.jz to ptr
  store ptr %i.ka, ptr %i.jt, align 8, !tbaa !87
  %i.kb = load ptr, ptr %i.iy, align 8, !tbaa !87
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = and i64 %i.kc, 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jo, i64 112 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !86
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = or i64 %i.kd, %i.kg
  %i.ki = inttoptr i64 %i.kh to ptr
  store ptr %i.ki, ptr %i.iy, align 8, !tbaa !87
  store ptr %i.iw, ptr %i.ke, align 8, !tbaa !86
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jd, i64 120 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !87
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = or i64 %i.kl, 1
  %i.kn = inttoptr i64 %i.km to ptr
  store ptr %i.kn, ptr %i.kj, align 8, !tbaa !87
  %i.ko = load ptr, ptr %i.iy, align 8, !tbaa !87
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = and i64 %i.kp, -2
  %i.kr = inttoptr i64 %i.kq to ptr
  store ptr %i.kr, ptr %i.jb, align 8, !tbaa !86
  store ptr %i.io, ptr %i.iy, align 8, !tbaa !87
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0271.i.i = phi ptr [ %i.jo, %bb.bc ], [ %i.iw, %bb.bd ] ; 3 uses
  %i.ks = icmp eq ptr %.4388.i.i, %4
  br i1 %i.ks, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store ptr %.0271.i.i, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.bg:                                            ; preds = %bb.be
  %i.kt = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !85
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kx = load ptr, ptr %i.kt, align 8, !tbaa !81
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 112
  store ptr %.0271.i.i, ptr %i.ky, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.kz = ptrtoint ptr %.0271.i.i to i64
  %i.la = load ptr, ptr %i.kt, align 8, !tbaa !81
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 120 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !87
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = and i64 %i.ld, 1
  %i.lf = or i64 %i.le, %i.kz
  %i.lg = inttoptr i64 %i.lf to ptr
  store ptr %i.lg, ptr %i.lb, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bj:                                            ; preds = %bb.az
  %15 = and i64 %i.it, 1
  %.not304.i.i = icmp eq i64 %15, 0
  br i1 %.not304.i.i, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lh = getelementptr inbounds nuw i8, ptr %i.io, i64 120 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.io, i64 112
  %i.lj = load ptr, ptr %i.ix, align 8, !tbaa !86 ; 2 uses
  %.not307.i.i = icmp eq ptr %i.lj, null
  br i1 %.not307.i.i, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 120 ; 3 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !87
  %i.lm = ptrtoint ptr %i.ll to i64
  %16 = and i64 %i.lm, 1
  %.not308.i.i = icmp eq i64 %16, 0
  br i1 %.not308.i.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ln = and i64 %i.in, -2
  %i.lo = inttoptr i64 %i.ln to ptr
  store ptr %i.lo, ptr %i.lh, align 8, !tbaa !87
  %i.lp = load ptr, ptr %i.iy, align 8, !tbaa !87
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = or i64 %i.lq, 1
  %i.ls = inttoptr i64 %i.lr to ptr
  store ptr %i.ls, ptr %i.iy, align 8, !tbaa !87
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !87
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = and i64 %i.lu, -2
  %i.lw = inttoptr i64 %i.lv to ptr
  store ptr %i.lw, ptr %i.lk, align 8, !tbaa !87
  %i.lx = load ptr, ptr %i.iy, align 8, !tbaa !87
  %i.ly = ptrtoint ptr %i.lx to i64               ; 2 uses
  %i.lz = and i64 %i.ly, -2
  %i.ma = inttoptr i64 %i.lz to ptr
  store ptr %i.ma, ptr %i.li, align 8, !tbaa !86
  %i.mb = ptrtoint ptr %i.io to i64
  %i.mc = and i64 %i.ly, 1
  %i.md = or i64 %i.mc, %i.mb
  %i.me = inttoptr i64 %i.md to ptr
  store ptr %i.me, ptr %i.iy, align 8, !tbaa !87
  %i.mf = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !85
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.mj = load ptr, ptr %i.mf, align 8, !tbaa !81
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 112
  store ptr %i.iw, ptr %i.mk, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.ml = ptrtoint ptr %i.iw to i64
  %i.mm = load ptr, ptr %i.mf, align 8, !tbaa !81
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 120 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !87
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = and i64 %i.mp, 1
  %i.mr = or i64 %i.mq, %i.ml
  %i.ms = inttoptr i64 %i.mr to ptr
  store ptr %i.ms, ptr %i.mn, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bp:                                            ; preds = %bb.bl, %bb.bk
  %i.mt = or disjoint i64 %i.ja, 1
  %i.mu = inttoptr i64 %i.mt to ptr
  store ptr %i.mu, ptr %i.iy, align 8, !tbaa !87
  %i.mv = load ptr, ptr %i.lh, align 8, !tbaa !87
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = and i64 %i.mw, -2
  %i.my = inttoptr i64 %i.mx to ptr
  store ptr %i.my, ptr %i.lh, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bq:                                            ; preds = %bb.bj
  %i.mz = load ptr, ptr %i.ix, align 8, !tbaa !86 ; 3 uses
  %.not305.i.i = icmp eq ptr %i.mz, null
  br i1 %.not305.i.i, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 120
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !87
  %i.nc = ptrtoint ptr %i.nb to i64               ; 2 uses
  %17 = and i64 %i.nc, 1
  %.not306.i.i = icmp eq i64 %17, 0
  br i1 %.not306.i.i, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nd = getelementptr inbounds nuw i8, ptr %i.io, i64 112
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 120
  %i.nf = and i64 %i.nc, -2
  %i.ng = inttoptr i64 %i.nf to ptr
  store ptr %i.ng, ptr %i.ne, align 8, !tbaa !87
  %i.nh = load ptr, ptr %i.iy, align 8, !tbaa !87
  %i.ni = ptrtoint ptr %i.nh to i64               ; 2 uses
  %i.nj = and i64 %i.ni, -2
  %i.nk = inttoptr i64 %i.nj to ptr
  store ptr %i.nk, ptr %i.nd, align 8, !tbaa !86
  %i.nl = ptrtoint ptr %i.io to i64
  %i.nm = and i64 %i.ni, 1
  %i.nn = or i64 %i.nm, %i.nl
  %i.no = inttoptr i64 %i.nn to ptr
  store ptr %i.no, ptr %i.iy, align 8, !tbaa !87
  %i.np = icmp eq ptr %.4388.i.i, %4
  br i1 %i.np, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.iw, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.nq = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %.4388.i.i, i64 -8
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !85
  %i.nt = icmp slt i32 %i.ns, 0
  br i1 %i.nt, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.nu = load ptr, ptr %i.nq, align 8, !tbaa !81
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 112
  store ptr %i.iw, ptr %i.nv, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.nw = ptrtoint ptr %i.iw to i64
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !81
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 120 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !87
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = and i64 %i.oa, 1
  %i.oc = or i64 %i.ob, %i.nw
  %i.od = inttoptr i64 %i.oc to ptr
  store ptr %i.od, ptr %i.ny, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.bx:                                            ; preds = %bb.br, %bb.bq
  %i.oe = or disjoint i64 %i.ja, 1
  %i.of = inttoptr i64 %i.oe to ptr
  store ptr %i.of, ptr %i.iy, align 8, !tbaa !87
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.critedge317.i.i
  %i.og = getelementptr inbounds i8, ptr %.4388.i.i, i64 -16 ; 2 uses
  %.not302.i.i = icmp ult ptr %i.og, %4
  br i1 %.not302.i.i, label %._crit_edge.i.i, label %.lr.ph390.i.i, !llvm.loop !63

._crit_edge.i.i:                                  ; preds = %bb.by, %bb.aj
  %i.oh = load ptr, ptr %4, align 16, !tbaa !81
  store ptr %i.oh, ptr %i.aw, align 8, !tbaa !79
  br label %tctx_tree_remove.exit.i

tctx_tree_remove.exit.i:                          ; preds = %._crit_edge.i.i, %bb.bw, %bb.bv, %bb.bt, %bb.bp, %bb.bo, %bb.bn, %bb.bi, %bb.bh, %bb.bf, %bb.ay, %bb.ax, %bb.av, %bb.ar, %bb.aq, %bb.ai, %bb.ag, %bb.ae, %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.oi = load i8, ptr @je_opt_prof_accum, align 1, !tbaa !19, !range !20, !noundef !21
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %.thread49.i, label %bb.bz

bb.bz:                                            ; preds = %tctx_tree_remove.exit.i
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !79
  %i.ok = icmp eq ptr %.val.i.i, null
  br i1 %i.ok, label %prof_gctx_should_destroy.exit.i, label %.thread49.i

prof_gctx_should_destroy.exit.i:                  ; preds = %bb.bz
  %i.ol = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !88
  %.not.i38.i = icmp eq i32 %i.om, 0
  br i1 %.not.i38.i, label %bb.ca, label %.thread49.i

bb.ca:                                            ; preds = %prof_gctx_should_destroy.exit.i
  store i32 1, ptr %i.ol, align 8, !tbaa !88
  %i.on = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  store atomic i8 0, ptr %i.oo monotonic, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 72
  %i.oq = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.op) #11 ; 0 uses
  unreachable

.thread49.i:                                      ; preds = %prof_gctx_should_destroy.exit.i, %bb.bz, %tctx_tree_remove.exit.i
  %i.or = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 64
  store atomic i8 0, ptr %i.os monotonic, align 1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 72
  %i.ou = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ot) #11 ; 0 uses
  %i.ov = icmp eq ptr %0, null                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  br i1 %i.ov, label %bb.cc, label %bb.cd

bb.cb:                                            ; preds = %malloc_mutex_lock.exit.i
  store i32 3, ptr %i.at, align 4, !tbaa !78
  %i.ow = load ptr, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  store atomic i8 0, ptr %i.ox monotonic, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 72
  %i.oz = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.oy) #11 ; 0 uses
  br label %prof_tctx_destroy.exit

bb.cc:                                            ; preds = %.thread49.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %7) #11
  br label %tsdn_rtree_ctx.exit.i

bb.cd:                                            ; preds = %.thread49.i
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.cd, %bb.cc
  %.0.i32.i = phi ptr [ %7, %bb.cc ], [ %i.pa, %bb.cd ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.pb = ptrtoint ptr %1 to i64                  ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr noundef nonnull %.0.i32.i, i64 noundef %i.pb)
  %i.pc = load ptr, ptr %8, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %.val.i = load i64, ptr %i.pc, align 8, !tbaa !48
  %i.pd = and i64 %.val.i, 4095
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.pd
  %i.pf = load atomic ptr, ptr %i.pe monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br i1 %i.ov, label %bb.ce, label %bb.cf, !prof !49

bb.ce:                                            ; preds = %tsdn_rtree_ctx.exit.i
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %5) #11
  br label %tsdn_rtree_ctx.exit.i.i

bb.cf:                                            ; preds = %tsdn_rtree_ctx.exit.i
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i.i

tsdn_rtree_ctx.exit.i.i:                          ; preds = %bb.cf, %bb.ce
  %.0.i.i.i = phi ptr [ %5, %bb.ce ], [ %i.pg, %bb.cf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef %0, ptr noundef nonnull %.0.i.i.i, i64 noundef %i.pb)
  %i.ph = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !50 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !51, !range !20, !noundef !21
  %i.pl = icmp eq i32 %i.pi, 232
  %i.pm = load ptr, ptr %6, align 8               ; 3 uses
  %i.pn = icmp eq ptr %i.pm, null
  %or.cond.i.i = select i1 %i.pl, i1 true, i1 %i.pn
  br i1 %or.cond.i.i, label %emap_alloc_ctx_lookup.exit.i, label %bb.cg

bb.cg:                                            ; preds = %tsdn_rtree_ctx.exit.i.i
  %.val.i39.i = load i64, ptr %i.pm, align 8, !tbaa !48
  %i.po = trunc i64 %.val.i39.i to i32
  %i.pp = lshr i32 %i.po, 20
  %i.pq = and i32 %i.pp, 255                      ; 2 uses
  %i.pr = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !19, !range !20, !noundef !21
  %i.ps = trunc nuw i8 %i.pr to i1
  %i.pt = icmp samesign ugt i32 %i.pq, 35
  %or.cond.not.i.i = select i1 %i.ps, i1 %i.pt, i1 false
  br i1 %or.cond.not.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pu = zext nneg i32 %i.pq to i64
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.pu
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !17
  br label %emap_alloc_ctx_lookup.exit.i

bb.ci:                                            ; preds = %bb.cg
  %i.px = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.py = load i64, ptr %i.px, align 8, !tbaa !22
  %i.pz = and i64 %i.py, -4096
  %i.qa = load i64, ptr @je_sz_large_pad, align 8, !tbaa !17
  %i.qb = sub i64 %i.pz, %i.qa
  br label %emap_alloc_ctx_lookup.exit.i

emap_alloc_ctx_lookup.exit.i:                     ; preds = %bb.ci, %bb.ch, %tsdn_rtree_ctx.exit.i.i
  %i.qc = phi i64 [ 0, %tsdn_rtree_ctx.exit.i.i ], [ %i.pw, %bb.ch ], [ %i.qb, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.qd = trunc nuw i8 %i.pk to i1
  br i1 %i.qd, label %bb.cj, label %emap_alloc_ctx_usize_get.exit.i

bb.cj:                                            ; preds = %emap_alloc_ctx_lookup.exit.i
  %i.qe = zext i32 %i.pi to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !17
  br label %emap_alloc_ctx_usize_get.exit.i

emap_alloc_ctx_usize_get.exit.i:                  ; preds = %bb.cj, %emap_alloc_ctx_lookup.exit.i
  %.0.i33.i = phi i64 [ %i.qg, %bb.cj ], [ %i.qc, %emap_alloc_ctx_lookup.exit.i ]
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pf, i64 72
  %i.qi = atomicrmw sub ptr %i.qh, i64 %.0.i33.i monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  br i1 %i.ov, label %bb.ck, label %bb.cl, !prof !49

end_hunk_1
