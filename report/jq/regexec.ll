Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regexec?download=true
inline.NumInlined: 83
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@match_at:bb.a

.lr.ph2306:                                       ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100  ; 5 uses
  %wide.trip.count2420 = zext i32 %i.w to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count2420, 3     ; 3 uses
  %i.z = icmp ult i32 %i.w, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph2306.new

.lr.ph2306.new:                                   ; preds = %.lr.ph2306
  %unroll_iter = and i64 %wide.trip.count2420, 4294967292
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph2306.new
  %indvars.iv2417 = phi i64 [ 0, %.lr.ph2306.new ], [ %indvars.iv.next2418.3, %bb.b ] ; 5 uses
  %.015272304 = phi ptr [ %i.p, %.lr.ph2306.new ], [ %i.ba, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph2306.new ], [ %niter.next.3, %bb.b ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv2417
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !35
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @match_at.opcode_to_label, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  store ptr %i.ae, ptr %.015272304, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %.015272304, i64 24
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv2417
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @match_at.opcode_to_label, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  store ptr %i.al, ptr %i.af, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %.015272304, i64 48
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv2417
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !35
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @match_at.opcode_to_label, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  store ptr %i.as, ptr %i.am, align 8, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %.015272304, i64 72
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv2417
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @match_at.opcode_to_label, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  store ptr %i.az, ptr %i.at, align 8, !tbaa !102
  %i.ba = getelementptr inbounds nuw i8, ptr %.015272304, i64 96 ; 2 uses
  %indvars.iv.next2418.3 = add nuw nsw i64 %indvars.iv2417, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !86 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 6 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !47
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !183 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !184 ; 2 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !90
  %i.bo = sub i64 %i.bl, %i.bn                    ; 2 uses
  %i.bp = add i64 %i.bj, -1
  %or.cond.not = icmp ult i64 %i.bp, %i.bo
  %spec.select = select i1 %or.cond.not, i64 %i.bj, i64 %i.bo
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.01520 = phi i64 [ %i.bj, %bb.c ], [ %spec.select, %bb.d ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !185
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !77 ; 4 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !84    ; 4 uses
  %.not1737 = icmp eq ptr %i.bu, null
  br i1 %.not1737, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.j, align 4, !tbaa !35
  store ptr %i.bu, ptr %i.k, align 8, !tbaa !103
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !93
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.by ; 4 uses
  store ptr %i.bz, ptr %i.l, align 8, !tbaa !104
  store ptr %i.bz, ptr %i.m, align 8, !tbaa !104
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !105
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [32 x i8], ptr %i.bz, i64 %i.cc
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !93 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 50
  br i1 %i.cg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %i.ch = zext nneg i32 %i.cf to i64
  %i.ci = shl nuw nsw i64 %i.ch, 3                ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, 5120
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.cj) #28 ; 4 uses
  store ptr %i.ck, ptr %i.k, align 8, !tbaa !103
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci ; 4 uses
  store ptr %i.cm, ptr %i.l, align 8, !tbaa !104
  store ptr %i.cm, ptr %i.m, align 8, !tbaa !104
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 5120
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  store i32 1, ptr %i.j, align 4, !tbaa !35
  %i.co = sext i32 %i.cf to i64
  %i.cp = shl nsw i64 %i.co, 3                    ; 2 uses
  %i.cq = add nsw i64 %i.cp, 5120
  %i.cr = alloca i8, i64 %i.cq, align 16          ; 3 uses
  store ptr %i.cr, ptr %i.k, align 8, !tbaa !103
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp ; 4 uses
  store ptr %i.cs, ptr %i.l, align 8, !tbaa !104
  store ptr %i.cs, ptr %i.m, align 8, !tbaa !104
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 5120
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  %.sink = phi ptr [ %i.cn, %bb.i ], [ %i.ct, %bb.j ], [ %i.cd, %bb.f ]
  %i.cu = phi ptr [ %i.cm, %bb.i ], [ %i.cs, %bb.j ], [ %i.bz, %bb.f ]
  %i.cv = phi ptr [ %i.ck, %bb.i ], [ %i.cr, %bb.j ], [ %i.bu, %bb.f ] ; 4 uses
  store ptr %.sink, ptr %i.n, align 8, !tbaa !104
  %i.cw = sext i32 %i.bt to i64                   ; 35 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.not17382169 = icmp slt i32 %i.bt, 1           ; 2 uses
  br i1 %.not17382169, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.cz = shl nuw nsw i64 %i.cw, 3
  %i.da = getelementptr i8, ptr %i.cv, i64 %i.cz
  %scevgep = getelementptr i8, ptr %i.da, i64 16
  %i.db = zext nneg i32 %i.bt to i64
  %i.dc = shl nuw nsw i64 %i.db, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 -1, i64 %i.dc, i1 false), !tbaa !62
  %scevgep2399 = getelementptr i8, ptr %i.cv, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep2399, i8 -1, i64 %i.dc, i1 false), !tbaa !62
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.k
  %i.dd = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.cu, %bb.k ] ; 3 uses
  store ptr %4, ptr %i.i, align 8, !tbaa !103
  store i32 3, ptr %i.dd, align 8, !tbaa !107
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr @match_at.FinishCode, ptr %i.de, align 8, !tbaa !62
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store ptr %i.df, ptr %i.m, align 8, !tbaa !104
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dm = and i32 %i.bc, 16777216
  %.not1832 = icmp eq i32 %i.dm, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 6 uses
  %i.do = and i32 %i.bc, 8389632
  %i.dp = icmp eq i32 %i.do, 0                    ; 3 uses
  %i.dq = and i32 %i.bc, 1024
  %.not1839 = icmp eq i32 %i.dq, 0
  %i.dr = and i32 %i.bc, 512
  %.not1841 = icmp eq i32 %i.dr, 0
  %i.ds = and i32 %i.bc, 4194816
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 14 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 16 uses
  %i.dw = and i32 %i.bc, 67108864
  %.not1923 = icmp eq i32 %i.dw, 0
  %i.dx = ptrtoint ptr %4 to i64
  %i.dy = and i32 %i.bc, 32
  %.not1924 = icmp eq i32 %i.dy, 0
  %i.dz = and i32 %i.bc, 16
  %.not1925 = icmp eq i32 %i.dz, 0                ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ed = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ef = and i32 %i.bc, 33554432
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.fj = add i64 %.01520, -1
  %i.fk = add nuw i32 %i.bt, 1
  %wide.trip.count2415 = zext i32 %i.fk to i64
  br label %.backedge

bb.l:                                             ; preds = %.backedge
  %i.fl = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.fm = icmp eq ptr %i.fl, %2
  %or.cond = select i1 %.not1923, i1 true, i1 %i.fm
  br i1 %or.cond, label %bb.m, label %backref_check_at_nested_level.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.fn = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fo = sub i64 %i.fn, %i.dx
  %i.fp = trunc i64 %i.fo to i32                  ; 7 uses
  %i.fq = icmp ne i32 %i.fp, 0
  %or.cond1952 = select i1 %i.fq, i1 true, i1 %.not1924
  br i1 %or.cond1952, label %bb.n, label %backref_check_at_nested_level.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %.not1925, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = icmp slt i32 %.31434, %i.fp
  br i1 %i.fr, label %bb.p, label %backref_check_at_nested_level.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.fs = load i32, ptr %i.ea, align 8, !tbaa !92
  %i.ft = icmp slt i32 %i.fs, %i.fp
  br i1 %i.ft, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.fp, ptr %i.ea, align 8, !tbaa !92
  store ptr %4, ptr %i.eb, align 8, !tbaa !108
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.not1926 = icmp ult ptr %i.fl, %3
  br i1 %.not1926, label %backref_check_at_nested_level.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fu = load ptr, ptr %i.eb, align 8, !tbaa !108
  %i.fv = icmp eq ptr %i.fu, %4
  br i1 %i.fv, label %.loopexit2094, label %backref_check_at_nested_level.exit.thread

bb.t:                                             ; preds = %bb.n, %bb.q
  %i.fw = load ptr, ptr %i.ec, align 8, !tbaa !87 ; 5 uses
  %.not1927 = icmp eq ptr %i.fw, null
  br i1 %.not1927, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = icmp ugt ptr %.41519, %i.fl
  %spec.select1953 = select i1 %i.fx, ptr %i.fl, ptr %.41519 ; 3 uses
  %i.fy = ptrtoint ptr %spec.select1953 to i64
  %i.fz = sub i64 %i.fy, %i.ed
  %i.ga = trunc i64 %i.fz to i32                  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !34 ; 3 uses
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !35
  %i.gd = sub i64 %i.fn, %i.ed
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !33 ; 3 uses
  store i32 %i.ge, ptr %i.gg, align 4, !tbaa !35
  br i1 %.not17382169, label %._crit_edge2295, label %.lr.ph2294

.lr.ph2294:                                       ; preds = %bb.u
  %i.gh = load ptr, ptr %i.l, align 8             ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2294, %bb.ac
  %indvars.iv2412 = phi i64 [ 1, %.lr.ph2294 ], [ %indvars.iv.next2413, %bb.ac ] ; 9 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.501514, i64 %indvars.iv2412 ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !62
  %.not1930 = icmp eq i64 %i.gj, -1
  br i1 %.not1930, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gk = icmp samesign ult i64 %indvars.iv2412, 32 ; 2 uses
  %i.gl = load i32, ptr %i.di, align 4, !tbaa !109
  %i.gm = trunc nuw nsw i64 %indvars.iv2412 to i32
  %i.gn = shl nuw i32 1, %i.gm
  %.sink2778 = select i1 %i.gk, i32 %i.gn, i32 1
  %i.go = and i32 %i.gl, %.sink2778
  %.not1931 = icmp eq i32 %i.go, 0
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.50, i64 %indvars.iv2412 ; 2 uses
  br i1 %.not1931, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !62
  %i.gr = getelementptr inbounds [32 x i8], ptr %i.gh, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.in1932 = phi ptr [ %i.gs, %bb.x ], [ %i.gp, %bb.w ]
  %i.gt = load ptr, ptr %.in1932, align 8, !tbaa !62
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.ed
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv2412
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !35
  %i.gy = load i32, ptr %i.dj, align 8, !tbaa !110
  %i.gz = trunc nuw nsw i64 %indvars.iv2412 to i32
  %i.ha = shl nuw i32 1, %i.gz
  %.sink2779 = select i1 %i.gk, i32 %i.ha, i32 1
  %i.hb = and i32 %i.gy, %.sink2779
  %.not1933 = icmp eq i32 %i.hb, 0
  br i1 %.not1933, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hc = load i64, ptr %i.gi, align 8, !tbaa !62
  %i.hd = getelementptr inbounds [32 x i8], ptr %i.gh, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.in1934 = phi ptr [ %i.he, %bb.z ], [ %i.gi, %bb.y ]
  %i.hf = load ptr, ptr %.in1934, align 8, !tbaa !62
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.ed
  %i.hi = trunc i64 %i.hh to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv2412
  store i32 -1, ptr %i.hj, align 4, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sink2782 = phi ptr [ %i.gg, %bb.aa ], [ %i.gc, %bb.ab ]
  %.sink2780 = phi i32 [ %i.hi, %bb.aa ], [ -1, %bb.ab ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sink2782, i64 %indvars.iv2412
  store i32 %.sink2780, ptr %i.hk, align 4, !tbaa !35
  %indvars.iv.next2413 = add nuw nsw i64 %indvars.iv2412, 1 ; 2 uses
  %exitcond2416.not = icmp eq i64 %indvars.iv.next2413, %wide.trip.count2415
  br i1 %exitcond2416.not, label %._crit_edge2295, label %bb.v, !llvm.loop !157

._crit_edge2295:                                  ; preds = %bb.ac, %bb.u
  %i.hl = load i32, ptr %i.ee, align 8, !tbaa !111
  %.not1929 = icmp eq i32 %i.hl, 0
  br i1 %.not1929, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge2295
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !30 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hp = call fastcc ptr @history_node_new()     ; 4 uses
  store ptr %i.hp, ptr %i.hm, align 8, !tbaa !30
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %.loopexit, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call fastcc void @history_tree_clear(ptr noundef %i.hn)
  %.pre2473 = load ptr, ptr %i.hm, align 8, !tbaa !30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.hr = phi ptr [ %i.hp, %bb.ae ], [ %.pre2473, %bb.af ]
  %.01541 = phi ptr [ %i.hp, %bb.ae ], [ %i.hn, %bb.af ] ; 3 uses
  store i32 0, ptr %.01541, align 8, !tbaa !44
  %i.hs = getelementptr inbounds nuw i8, ptr %.01541, i64 4
  store i32 %i.ga, ptr %i.hs, align 4, !tbaa !112
  %i.ht = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.ed
end_hunk_0
begin_hunk_1_@match_at:bb.a
  br i1 %i.acg, label %bb.ep, label %.backedge.backedge, !llvm.loop !164

bb.ex:                                            ; preds = %.backedge
  %i.ach = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.aci = load i8, ptr %i.ach, align 8, !tbaa !62
  %i.acj = getelementptr inbounds nuw i8, ptr %.71534, i64 24 ; 3 uses
  %i.ack = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.acl = icmp ult ptr %i.ack, %.11457
  br i1 %i.acl, label %.lr.ph2253, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ff, %bb.ew, %bb.en, %bb.eg, %bb.ex, %bb.eo, %bb.eh, %bb.ea, %bb.sk, %bb.sl, %bb.rc, %bb.ri, %bb.rh, %bb.qc, %bb.qd, %bb.mq, %.critedge, %bb.an, %bb.ar, %bb.aw, %bb.bc, %bb.bj, %._crit_edge2914, %bb.br, %bb.bx, %bb.cf, %._crit_edge2288, %._crit_edge2283, %._crit_edge2278, %bb.cv, %bb.da, %bb.de, %bb.dh, %bb.do, %bb.ds, %bb.dw, %bb.dz, %bb.fi, %bb.fl, %bb.fo, %bb.fr, %bb.gf, %bb.gt, %bb.gz, %bb.hc, %bb.hk, %bb.hp, %bb.hr, %bb.ht, %bb.hw, %bb.hz, %bb.ic, %bb.ie, %bb.ih, %bb.ik, %bb.io, %bb.is, %bb.it, %bb.ix, %bb.iy, %bb.jh, %bb.jv, %.loopexit2075, %bb.kq, %bb.lb, %bb.lr, %bb.lv, %bb.ma, %backref_check_at_nested_level.exit, %bb.mm, %.loopexit2083, %bb.of, %bb.og, %bb.ok, %bb.oo, %bb.op, %bb.ox, %bb.pd, %bb.pe, %bb.pl, %bb.pu, %bb.qt, %bb.rp, %bb.ry, %.loopexit2088, %bb.ss, %bb.ta, %bb.tk, %bb.ty, %.loopexit2090, %bb.vj, %.loopexit2054
  %.51540.be = phi i64 [ %.51540, %bb.eh ], [ %.51540, %bb.vj ], [ %.51540, %bb.an ], [ %.51540, %bb.ar ], [ %.51540, %bb.aw ], [ %.51540, %bb.bc ], [ %.51540, %bb.bj ], [ %.51540, %._crit_edge2914 ], [ %.51540, %bb.br ], [ %.51540, %bb.bx ], [ %.51540, %bb.cf ], [ %.51540, %._crit_edge2288 ], [ %.51540, %._crit_edge2283 ], [ %.51540, %._crit_edge2278 ], [ %.51540, %bb.cv ], [ %.51540, %bb.da ], [ %.51540, %bb.de ], [ %.51540, %bb.dh ], [ %.51540, %bb.do ], [ %.51540, %bb.ds ], [ %.51540, %bb.dw ], [ %.51540, %bb.dz ], [ %i.cbi, %bb.ry ], [ %.41539, %.loopexit2054 ], [ %.51540, %bb.sk ], [ %.51540, %bb.ea ], [ %.51540, %bb.fi ], [ %.51540, %bb.fl ], [ %.51540, %bb.fo ], [ %.51540, %bb.fr ], [ %.51540, %bb.gf ], [ %.51540, %bb.gt ], [ %.51540, %bb.gz ], [ %.51540, %bb.hc ], [ %.51540, %bb.hk ], [ %.51540, %bb.hp ], [ %.51540, %bb.hr ], [ %.51540, %bb.ht ], [ %.51540, %bb.hw ], [ %.51540, %bb.hz ], [ %.51540, %bb.ic ], [ %.51540, %bb.ie ], [ %.51540, %bb.ih ], [ %.51540, %bb.ik ], [ %.51540, %bb.io ], [ %.51540, %.loopexit2075 ], [ %.51540, %bb.kq ], [ %.51540, %bb.lb ], [ %.51540, %bb.lr ], [ %.51540, %bb.lv ], [ %.51540, %bb.ma ], [ %.51540, %backref_check_at_nested_level.exit ], [ %.51540, %bb.it ], [ %.51540, %bb.is ], [ %.51540, %bb.ix ], [ %.51540, %bb.jh ], [ %.51540, %bb.iy ], [ %.51540, %bb.jv ], [ %.51540, %bb.og ], [ %.51540, %bb.ok ], [ %.51540, %bb.oo ], [ %.51540, %bb.op ], [ %.01535, %bb.ox ], [ %.51540, %bb.pd ], [ %.51540, %bb.pe ], [ %.51540, %bb.pl ], [ %.51540, %bb.pu ], [ %.51540, %bb.mq ], [ %.51540, %bb.qt ], [ %.51540, %bb.qc ], [ %.51540, %bb.mm ], [ %.51540, %bb.eo ], [ %.51540, %.loopexit2083 ], [ %.51540, %bb.of ], [ %.51540, %.loopexit2088 ], [ %.51540, %bb.rc ], [ %.51540, %bb.ss ], [ %.51540, %bb.ta ], [ %.51540, %bb.tk ], [ %.51540, %bb.ty ], [ %.51540, %.loopexit2090 ], [ %i.bzn, %bb.rp ], [ %.51540, %.critedge ], [ %.51540, %bb.qd ], [ %.51540, %bb.rh ], [ %.51540, %bb.ri ], [ %.51540, %bb.sl ], [ %.51540, %bb.ex ], [ %.51540, %bb.ew ], [ %.51540, %bb.eg ], [ %.51540, %bb.en ], [ %.51540, %bb.ff ]
  %.71534.be = phi ptr [ %i.zo, %bb.eh ], [ %i.cmh, %bb.vj ], [ %i.is, %bb.an ], [ %i.jg, %bb.ar ], [ %i.jy, %bb.aw ], [ %i.ku, %bb.bc ], [ %i.lu, %bb.bj ], [ %i.mn, %._crit_edge2914 ], [ %i.nb, %bb.br ], [ %i.nx, %bb.bx ], [ %i.pb, %bb.cf ], [ %i.pz, %._crit_edge2288 ], [ %i.rb, %._crit_edge2283 ], [ %i.rx, %._crit_edge2278 ], [ %i.st, %bb.cv ], [ %i.tp, %bb.da ], [ %i.ul, %bb.de ], [ %i.vh, %bb.dh ], [ %i.wf, %bb.do ], [ %i.xa, %bb.ds ], [ %i.xr, %bb.dw ], [ %i.yf, %bb.dz ], [ %i.cas, %bb.ry ], [ %i.cpn, %.loopexit2054 ], [ %i.cdf, %bb.sk ], [ %i.yg, %bb.ea ], [ %i.aeh, %bb.fi ], [ %i.aeu, %bb.fl ], [ %i.afk, %bb.fo ], [ %i.afx, %bb.fr ], [ %i.ahh, %bb.gf ], [ %i.aio, %bb.gt ], [ %i.ajd, %bb.gz ], [ %i.ajl, %bb.hc ], [ %i.akg, %bb.hk ], [ %i.aks, %bb.hp ], [ %i.akv, %bb.hr ], [ %i.aky, %bb.ht ], [ %i.alb, %bb.hw ], [ %i.alg, %bb.hz ], [ %i.alj, %bb.ic ], [ %i.alm, %bb.ie ], [ %i.alp, %bb.ih ], [ %i.aly, %bb.ik ], [ %i.ame, %bb.io ], [ %i.avb, %.loopexit2075 ], [ %i.axj, %bb.kq ], [ %i.azm, %bb.lb ], [ %i.bbz, %bb.lr ], [ %i.bcn, %bb.lv ], [ %i.bdg, %bb.ma ], [ %i.bem, %backref_check_at_nested_level.exit ], [ %i.anq, %bb.it ], [ %i.ank, %bb.is ], [ %i.aow, %bb.ix ], [ %i.arc, %bb.jh ], [ %i.apc, %bb.iy ], [ %i.atd, %bb.jv ], [ %i.blr, %bb.og ], [ %i.bmn, %bb.ok ], [ %i.bnj, %bb.oo ], [ %i.bnm, %bb.op ], [ %i.boy, %bb.ox ], [ %i.bqa, %bb.pd ], [ %i.bqc, %bb.pe ], [ %i.bre, %bb.pl ], [ %i.bsw, %bb.pu ], [ %i.bfu, %bb.mq ], [ %.41531, %bb.qt ], [ %i.buo, %bb.qc ], [ %i.bfg, %bb.mm ], [ %i.aaw, %bb.eo ], [ %i.bie, %.loopexit2083 ], [ %i.bkz, %bb.of ], [ %i.cca, %.loopexit2088 ], [ %i.byl, %bb.rc ], [ %i.ceg, %bb.ss ], [ %i.cew, %bb.ta ], [ %i.cfx, %bb.tk ], [ %i.chz, %bb.ty ], [ %i.ckd, %.loopexit2090 ], [ %i.cam, %bb.rp ], [ %i.bfv, %.critedge ], [ %i.bup, %bb.qd ], [ %i.bzh, %bb.rh ], [ %i.bzj, %bb.ri ], [ %i.cdg, %bb.sl ], [ %i.acj, %bb.ex ], [ %i.aaw, %bb.ew ], [ %i.yg, %bb.eg ], [ %i.zo, %bb.en ], [ %i.acj, %bb.ff ]
  %.11522.be = phi i64 [ %.11522, %bb.eh ], [ %.11522, %bb.vj ], [ %.11522, %bb.an ], [ %.11522, %bb.ar ], [ %.11522, %bb.aw ], [ %.11522, %bb.bc ], [ %.11522, %bb.bj ], [ %.11522, %._crit_edge2914 ], [ %.11522, %bb.br ], [ %.11522, %bb.bx ], [ %.11522, %bb.cf ], [ %.11522, %._crit_edge2288 ], [ %.11522, %._crit_edge2283 ], [ %.11522, %._crit_edge2278 ], [ %.11522, %bb.cv ], [ %.11522, %bb.da ], [ %.11522, %bb.de ], [ %.11522, %bb.dh ], [ %.11522, %bb.do ], [ %.11522, %bb.ds ], [ %.11522, %bb.dw ], [ %.11522, %bb.dz ], [ %.11522, %bb.ry ], [ %i.cpq, %.loopexit2054 ], [ %.11522, %bb.sk ], [ %.11522, %bb.ea ], [ %.11522, %bb.fi ], [ %.11522, %bb.fl ], [ %.11522, %bb.fo ], [ %.11522, %bb.fr ], [ %.11522, %bb.gf ], [ %.11522, %bb.gt ], [ %.11522, %bb.gz ], [ %.11522, %bb.hc ], [ %.11522, %bb.hk ], [ %.11522, %bb.hp ], [ %.11522, %bb.hr ], [ %.11522, %bb.ht ], [ %.11522, %bb.hw ], [ %.11522, %bb.hz ], [ %.11522, %bb.ic ], [ %.11522, %bb.ie ], [ %.11522, %bb.ih ], [ %.11522, %bb.ik ], [ %.11522, %bb.io ], [ %.11522, %.loopexit2075 ], [ %.11522, %bb.kq ], [ %.11522, %bb.lb ], [ %.11522, %bb.lr ], [ %.11522, %bb.lv ], [ %.11522, %bb.ma ], [ %.11522, %backref_check_at_nested_level.exit ], [ %.11522, %bb.it ], [ %.11522, %bb.is ], [ %.11522, %bb.ix ], [ %.11522, %bb.jh ], [ %.11522, %bb.iy ], [ %.11522, %bb.jv ], [ %.11522, %bb.og ], [ %.11522, %bb.ok ], [ %.11522, %bb.oo ], [ %.11522, %bb.op ], [ %.11522, %bb.ox ], [ %.11522, %bb.pd ], [ %.11522, %bb.pe ], [ %.11522, %bb.pl ], [ %.11522, %bb.pu ], [ %.11522, %bb.mq ], [ %.11522, %bb.qt ], [ %.11522, %bb.qc ], [ %.11522, %bb.mm ], [ %.11522, %bb.eo ], [ %.11522, %.loopexit2083 ], [ %.11522, %bb.of ], [ %.11522, %.loopexit2088 ], [ %.11522, %bb.rc ], [ %.11522, %bb.ss ], [ %.11522, %bb.ta ], [ %.11522, %bb.tk ], [ %.11522, %bb.ty ], [ %.11522, %.loopexit2090 ], [ %.11522, %bb.rp ], [ %.11522, %.critedge ], [ %.11522, %bb.qd ], [ %.11522, %bb.rh ], [ %.11522, %bb.ri ], [ %.11522, %bb.sl ], [ %.11522, %bb.ex ], [ %.11522, %bb.ew ], [ %.11522, %bb.eg ], [ %.11522, %bb.en ], [ %.11522, %bb.ff ]
  %.41519.be = phi ptr [ %.41519, %bb.eh ], [ %.41519, %bb.vj ], [ %.41519, %bb.an ], [ %.41519, %bb.ar ], [ %.41519, %bb.aw ], [ %.41519, %bb.bc ], [ %.41519, %bb.bj ], [ %.41519, %._crit_edge2914 ], [ %.41519, %bb.br ], [ %.41519, %bb.bx ], [ %.41519, %bb.cf ], [ %.41519, %._crit_edge2288 ], [ %.41519, %._crit_edge2283 ], [ %.41519, %._crit_edge2278 ], [ %.41519, %bb.cv ], [ %.41519, %bb.da ], [ %.41519, %bb.de ], [ %.41519, %bb.dh ], [ %.41519, %bb.do ], [ %.41519, %bb.ds ], [ %.41519, %bb.dw ], [ %.41519, %bb.dz ], [ %.41519, %bb.ry ], [ %.31518, %.loopexit2054 ], [ %.41519, %bb.sk ], [ %.41519, %bb.ea ], [ %.41519, %bb.fi ], [ %.41519, %bb.fl ], [ %.41519, %bb.fo ], [ %.41519, %bb.fr ], [ %.41519, %bb.gf ], [ %.41519, %bb.gt ], [ %.41519, %bb.gz ], [ %.41519, %bb.hc ], [ %.41519, %bb.hk ], [ %.41519, %bb.hp ], [ %.41519, %bb.hr ], [ %.41519, %bb.ht ], [ %.41519, %bb.hw ], [ %.41519, %bb.hz ], [ %.41519, %bb.ic ], [ %.41519, %bb.ie ], [ %.41519, %bb.ih ], [ %.41519, %bb.ik ], [ %.41519, %bb.io ], [ %.41519, %.loopexit2075 ], [ %.41519, %bb.kq ], [ %.41519, %bb.lb ], [ %.41519, %bb.lr ], [ %.41519, %bb.lv ], [ %.41519, %bb.ma ], [ %.41519, %backref_check_at_nested_level.exit ], [ %.41519, %bb.it ], [ %.41519, %bb.is ], [ %.41519, %bb.ix ], [ %.41519, %bb.jh ], [ %.41519, %bb.iy ], [ %.41519, %bb.jv ], [ %.41519, %bb.og ], [ %.41519, %bb.ok ], [ %.41519, %bb.oo ], [ %.41519, %bb.op ], [ %.41519, %bb.ox ], [ %.41519, %bb.pd ], [ %.41519, %bb.pe ], [ %.41519, %bb.pl ], [ %.41519, %bb.pu ], [ %.41519, %bb.mq ], [ %.41519, %bb.qt ], [ %.41519, %bb.qc ], [ %.41519, %bb.mm ], [ %.41519, %bb.eo ], [ %.41519, %.loopexit2083 ], [ %.41519, %bb.of ], [ %.41519, %.loopexit2088 ], [ %.41519, %bb.rc ], [ %.41519, %bb.ss ], [ %.41519, %bb.ta ], [ %.41519, %bb.tk ], [ %.41519, %bb.ty ], [ %.21517, %.loopexit2090 ], [ %.41519, %bb.rp ], [ %.41519, %.critedge ], [ %.41519, %bb.qd ], [ %.41519, %bb.rh ], [ %.41519, %bb.ri ], [ %.41519, %bb.sl ], [ %.41519, %bb.ex ], [ %.41519, %bb.ew ], [ %.41519, %bb.eg ], [ %.41519, %bb.en ], [ %.41519, %bb.ff ]
  %.501514.be = phi ptr [ %.501514, %bb.eh ], [ %.481512, %bb.vj ], [ %.501514, %bb.an ], [ %.501514, %bb.ar ], [ %.501514, %bb.aw ], [ %.501514, %bb.bc ], [ %.501514, %bb.bj ], [ %.501514, %._crit_edge2914 ], [ %.501514, %bb.br ], [ %.501514, %bb.bx ], [ %.501514, %bb.cf ], [ %.501514, %._crit_edge2288 ], [ %.501514, %._crit_edge2283 ], [ %.501514, %._crit_edge2278 ], [ %.501514, %bb.cv ], [ %.501514, %bb.da ], [ %.501514, %bb.de ], [ %.501514, %bb.dh ], [ %.501514, %bb.do ], [ %.501514, %bb.ds ], [ %.501514, %bb.dw ], [ %.501514, %bb.dz ], [ %.341498, %bb.ry ], [ %.491513, %.loopexit2054 ], [ %.351499, %bb.sk ], [ %.501514, %bb.ea ], [ %.501514, %bb.fi ], [ %.501514, %bb.fl ], [ %.501514, %bb.fo ], [ %.501514, %bb.fr ], [ %.501514, %bb.gf ], [ %.501514, %bb.gt ], [ %.501514, %bb.gz ], [ %.501514, %bb.hc ], [ %.501514, %bb.hk ], [ %.501514, %bb.hp ], [ %.501514, %bb.hr ], [ %.501514, %bb.ht ], [ %.501514, %bb.hw ], [ %.501514, %bb.hz ], [ %.501514, %bb.ic ], [ %.501514, %bb.ie ], [ %.501514, %bb.ih ], [ %.501514, %bb.ik ], [ %.501514, %bb.io ], [ %.501514, %.loopexit2075 ], [ %.501514, %bb.kq ], [ %.501514, %bb.lb ], [ %.501514, %bb.lr ], [ %.501514, %bb.lv ], [ %.501514, %bb.ma ], [ %.501514, %backref_check_at_nested_level.exit ], [ %.501514, %bb.it ], [ %.101474, %bb.is ], [ %.111475, %bb.ix ], [ %.121476, %bb.jh ], [ %.501514, %bb.iy ], [ %.131477, %bb.jv ], [ %.501514, %bb.og ], [ %.161480, %bb.ok ], [ %.171481, %bb.oo ], [ %.501514, %bb.op ], [ %.501514, %bb.ox ], [ %.181482, %bb.pd ], [ %.501514, %bb.pe ], [ %.201484, %bb.pl ], [ %.231487, %bb.pu ], [ %.501514, %bb.mq ], [ %.291493, %bb.qt ], [ %.251489, %bb.qc ], [ %.141478, %bb.mm ], [ %.501514, %bb.eo ], [ %.501514, %.loopexit2083 ], [ %.151479, %bb.of ], [ %.501514, %.loopexit2088 ], [ %.301494, %bb.rc ], [ %.381502, %bb.ss ], [ %.501514, %bb.ta ], [ %.411505, %bb.tk ], [ %.451509, %bb.ty ], [ %.501514, %.loopexit2090 ], [ %.331497, %bb.rp ], [ %.501514, %.critedge ], [ %.241488, %bb.qd ], [ %.311495, %bb.rh ], [ %.301494, %bb.ri ], [ %.501514, %bb.sl ], [ %.501514, %bb.ex ], [ %.61470, %bb.ew ], [ %.11465, %bb.eg ], [ %.31467, %bb.en ], [ %.91473, %bb.ff ]
  %.50.be = phi ptr [ %.50, %bb.eh ], [ %.48, %bb.vj ], [ %.50, %bb.an ], [ %.50, %bb.ar ], [ %.50, %bb.aw ], [ %.50, %bb.bc ], [ %.50, %bb.bj ], [ %.50, %._crit_edge2914 ], [ %.50, %bb.br ], [ %.50, %bb.bx ], [ %.50, %bb.cf ], [ %.50, %._crit_edge2288 ], [ %.50, %._crit_edge2283 ], [ %.50, %._crit_edge2278 ], [ %.50, %bb.cv ], [ %.50, %bb.da ], [ %.50, %bb.de ], [ %.50, %bb.dh ], [ %.50, %bb.do ], [ %.50, %bb.ds ], [ %.50, %bb.dw ], [ %.50, %bb.dz ], [ %.34, %bb.ry ], [ %.49, %.loopexit2054 ], [ %.35, %bb.sk ], [ %.50, %bb.ea ], [ %.50, %bb.fi ], [ %.50, %bb.fl ], [ %.50, %bb.fo ], [ %.50, %bb.fr ], [ %.50, %bb.gf ], [ %.50, %bb.gt ], [ %.50, %bb.gz ], [ %.50, %bb.hc ], [ %.50, %bb.hk ], [ %.50, %bb.hp ], [ %.50, %bb.hr ], [ %.50, %bb.ht ], [ %.50, %bb.hw ], [ %.50, %bb.hz ], [ %.50, %bb.ic ], [ %.50, %bb.ie ], [ %.50, %bb.ih ], [ %.50, %bb.ik ], [ %.50, %bb.io ], [ %.50, %.loopexit2075 ], [ %.50, %bb.kq ], [ %.50, %bb.lb ], [ %.50, %bb.lr ], [ %.50, %bb.lv ], [ %.50, %bb.ma ], [ %.50, %backref_check_at_nested_level.exit ], [ %.50, %bb.it ], [ %.10, %bb.is ], [ %.11, %bb.ix ], [ %.12, %bb.jh ], [ %.50, %bb.iy ], [ %.13, %bb.jv ], [ %.50, %bb.og ], [ %.16, %bb.ok ], [ %.17, %bb.oo ], [ %.50, %bb.op ], [ %.50, %bb.ox ], [ %.18, %bb.pd ], [ %.50, %bb.pe ], [ %.20, %bb.pl ], [ %.23, %bb.pu ], [ %.50, %bb.mq ], [ %.29, %bb.qt ], [ %.25, %bb.qc ], [ %.14, %bb.mm ], [ %.50, %bb.eo ], [ %.50, %.loopexit2083 ], [ %.15, %bb.of ], [ %.50, %.loopexit2088 ], [ %.30, %bb.rc ], [ %.38, %bb.ss ], [ %.50, %bb.ta ], [ %.41, %bb.tk ], [ %.45, %bb.ty ], [ %.50, %.loopexit2090 ], [ %.33, %bb.rp ], [ %.50, %.critedge ], [ %.24, %bb.qd ], [ %.31, %bb.rh ], [ %.30, %bb.ri ], [ %.50, %bb.sl ], [ %.50, %bb.ex ], [ %.6, %bb.ew ], [ %.11459, %bb.eg ], [ %.31461, %bb.en ], [ %.9, %bb.ff ]
  %.11457.be = phi ptr [ %.11457, %bb.eh ], [ %.11457, %bb.vj ], [ %.11457, %bb.an ], [ %.11457, %bb.ar ], [ %.11457, %bb.aw ], [ %.11457, %bb.bc ], [ %.11457, %bb.bj ], [ %.11457, %._crit_edge2914 ], [ %.11457, %bb.br ], [ %.11457, %bb.bx ], [ %.11457, %bb.cf ], [ %.11457, %._crit_edge2288 ], [ %.11457, %._crit_edge2283 ], [ %.11457, %._crit_edge2278 ], [ %.11457, %bb.cv ], [ %.11457, %bb.da ], [ %.11457, %bb.de ], [ %.11457, %bb.dh ], [ %.11457, %bb.do ], [ %.11457, %bb.ds ], [ %.11457, %bb.dw ], [ %.11457, %bb.dz ], [ %.11457, %bb.ry ], [ %.11457, %.loopexit2054 ], [ %.11457, %bb.sk ], [ %.11457, %bb.ea ], [ %.11457, %bb.fi ], [ %.11457, %bb.fl ], [ %.11457, %bb.fo ], [ %.11457, %bb.fr ], [ %.11457, %bb.gf ], [ %.11457, %bb.gt ], [ %.11457, %bb.gz ], [ %.11457, %bb.hc ], [ %.11457, %bb.hk ], [ %.11457, %bb.hp ], [ %.11457, %bb.hr ], [ %.11457, %bb.ht ], [ %.11457, %bb.hw ], [ %.11457, %bb.hz ], [ %.11457, %bb.ic ], [ %.11457, %bb.ie ], [ %.11457, %bb.ih ], [ %.11457, %bb.ik ], [ %.11457, %bb.io ], [ %.11457, %.loopexit2075 ], [ %.11457, %bb.kq ], [ %.11457, %bb.lb ], [ %.11457, %bb.lr ], [ %.11457, %bb.lv ], [ %.11457, %bb.ma ], [ %.11457, %backref_check_at_nested_level.exit ], [ %.11457, %bb.it ], [ %.11457, %bb.is ], [ %.11457, %bb.ix ], [ %.11457, %bb.jh ], [ %.11457, %bb.iy ], [ %.11457, %bb.jv ], [ %.11457, %bb.og ], [ %.11457, %bb.ok ], [ %.11457, %bb.oo ], [ %.11457, %bb.op ], [ %.11457, %bb.ox ], [ %.11457, %bb.pd ], [ %.11457, %bb.pe ], [ %.11457, %bb.pl ], [ %.11457, %bb.pu ], [ %.11457, %bb.mq ], [ %.11457, %bb.qt ], [ %.11457, %bb.qc ], [ %.11457, %bb.mm ], [ %.11457, %bb.eo ], [ %.11457, %.loopexit2083 ], [ %.11457, %bb.of ], [ %.11457, %.loopexit2088 ], [ %.11457, %bb.rc ], [ %.11457, %bb.ss ], [ %.11457, %bb.ta ], [ %.11457, %bb.tk ], [ %.11457, %bb.ty ], [ %.01456, %.loopexit2090 ], [ %.11457, %bb.rp ], [ %.11457, %.critedge ], [ %.11457, %bb.qd ], [ %.11457, %bb.rh ], [ %.11457, %bb.ri ], [ %.11457, %bb.sl ], [ %.11457, %bb.ex ], [ %.11457, %bb.ew ], [ %.11457, %bb.eg ], [ %.11457, %bb.en ], [ %.11457, %bb.ff ]
  %.31434.be = phi i32 [ %.31434, %bb.eh ], [ %.31434, %bb.vj ], [ %.31434, %bb.an ], [ %.31434, %bb.ar ], [ %.31434, %bb.aw ], [ %.31434, %bb.bc ], [ %.31434, %bb.bj ], [ %.31434, %._crit_edge2914 ], [ %.31434, %bb.br ], [ %.31434, %bb.bx ], [ %.31434, %bb.cf ], [ %.31434, %._crit_edge2288 ], [ %.31434, %._crit_edge2283 ], [ %.31434, %._crit_edge2278 ], [ %.31434, %bb.cv ], [ %.31434, %bb.da ], [ %.31434, %bb.de ], [ %.31434, %bb.dh ], [ %.31434, %bb.do ], [ %.31434, %bb.ds ], [ %.31434, %bb.dw ], [ %.31434, %bb.dz ], [ %.31434, %bb.ry ], [ %.11432, %.loopexit2054 ], [ %.31434, %bb.sk ], [ %.31434, %bb.ea ], [ %.31434, %bb.fi ], [ %.31434, %bb.fl ], [ %.31434, %bb.fo ], [ %.31434, %bb.fr ], [ %.31434, %bb.gf ], [ %.31434, %bb.gt ], [ %.31434, %bb.gz ], [ %.31434, %bb.hc ], [ %.31434, %bb.hk ], [ %.31434, %bb.hp ], [ %.31434, %bb.hr ], [ %.31434, %bb.ht ], [ %.31434, %bb.hw ], [ %.31434, %bb.hz ], [ %.31434, %bb.ic ], [ %.31434, %bb.ie ], [ %.31434, %bb.ih ], [ %.31434, %bb.ik ], [ %.31434, %bb.io ], [ %.31434, %.loopexit2075 ], [ %.31434, %bb.kq ], [ %.31434, %bb.lb ], [ %.31434, %bb.lr ], [ %.31434, %bb.lv ], [ %.31434, %bb.ma ], [ %.31434, %backref_check_at_nested_level.exit ], [ %.31434, %bb.it ], [ %.31434, %bb.is ], [ %.31434, %bb.ix ], [ %.31434, %bb.jh ], [ %.31434, %bb.iy ], [ %.31434, %bb.jv ], [ %.31434, %bb.og ], [ %.31434, %bb.ok ], [ %.31434, %bb.oo ], [ %.31434, %bb.op ], [ %.31434, %bb.ox ], [ %.31434, %bb.pd ], [ %.31434, %bb.pe ], [ %.31434, %bb.pl ], [ %.31434, %bb.pu ], [ %.31434, %bb.mq ], [ %.31434, %bb.qt ], [ %.31434, %bb.qc ], [ %.31434, %bb.mm ], [ %.31434, %bb.eo ], [ %.31434, %.loopexit2083 ], [ %.31434, %bb.of ], [ %.31434, %.loopexit2088 ], [ %.31434, %bb.rc ], [ %.31434, %bb.ss ], [ %.31434, %bb.ta ], [ %.31434, %bb.tk ], [ %.31434, %bb.ty ], [ %.31434, %.loopexit2090 ], [ %.31434, %bb.rp ], [ %.31434, %.critedge ], [ %.31434, %bb.qd ], [ %.31434, %bb.rh ], [ %.31434, %bb.ri ], [ %.31434, %bb.sl ], [ %.31434, %bb.ex ], [ %.31434, %bb.ew ], [ %.31434, %bb.eg ], [ %.31434, %bb.en ], [ %.31434, %bb.ff ]
  br label %.backedge

.lr.ph2253:                                       ; preds = %bb.ex
  %i.acm = ptrtoint ptr %.11457 to i64
  br label %bb.ey

bb.ey:                                            ; preds = %.lr.ph2253, %bb.ff
  %i.acn = phi ptr [ %i.ack, %.lr.ph2253 ], [ %i.adq, %bb.ff ] ; 3 uses
  %.72251 = phi ptr [ %.50, %.lr.ph2253 ], [ %.9, %bb.ff ] ; 2 uses
  %.714712250 = phi ptr [ %.501514, %.lr.ph2253 ], [ %.91473, %bb.ff ] ; 2 uses
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !62
  %i.acp = icmp eq i8 %i.aci, %i.aco
  br i1 %i.acp, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  %i.acq = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.acr = load ptr, ptr %i.m, align 8, !tbaa !104 ; 2 uses
  %i.acs = ptrtoint ptr %i.acq to i64
  %i.act = ptrtoint ptr %i.acr to i64
  %i.acu = sub i64 %i.acs, %i.act
  %i.acv = lshr exact i64 %i.acu, 5
  %i.acw = trunc i64 %i.acv to i32
  %i.acx = icmp slt i32 %i.acw, 1
  br i1 %i.acx, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.acy = call fastcc i32 @stack_double(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.m, ptr noundef %5) ; 2 uses
  %.not1870 = icmp eq i32 %i.acy, 0
  br i1 %.not1870, label %bb.fb, label %.loopexit

bb.fb:                                            ; preds = %bb.fa
  %i.acz = load ptr, ptr %i.k, align 8, !tbaa !103 ; 2 uses
  %i.ada = getelementptr inbounds [8 x i8], ptr %i.acz, i64 %i.cw
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %.pre2465 = load ptr, ptr %i.m, align 8, !tbaa !104
  %.pre2466 = load ptr, ptr %i.i, align 8, !tbaa !103
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ez, %bb.fb
  %i.adc = phi ptr [ %.pre2466, %bb.fb ], [ %i.acn, %bb.ez ] ; 2 uses
  %i.add = phi ptr [ %.pre2465, %bb.fb ], [ %i.acr, %bb.ez ] ; 4 uses
  %.81472 = phi ptr [ %i.adb, %bb.fb ], [ %.714712250, %bb.ez ]
  %.8 = phi ptr [ %i.acz, %bb.fb ], [ %.72251, %bb.ez ]
  store i32 3, ptr %i.add, align 8, !tbaa !107
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store ptr %i.acj, ptr %i.ade, align 8, !tbaa !62
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 16
  store ptr %i.adc, ptr %i.adf, align 8, !tbaa !62
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 32
  store ptr %i.adg, ptr %i.m, align 8, !tbaa !104
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ey
  %i.adh = phi ptr [ %i.adc, %bb.fc ], [ %i.acn, %bb.ey ]
  %.91473 = phi ptr [ %.81472, %bb.fc ], [ %.714712250, %bb.ey ] ; 3 uses
  %.9 = phi ptr [ %.8, %bb.fc ], [ %.72251, %bb.ey ] ; 3 uses
  %i.adi = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.adj = call i32 %i.adi(ptr noundef %i.adh) #30 ; 2 uses
  %i.adk = icmp sgt i32 %i.adj, 1
  %i.adl = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  br i1 %i.adk, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.adm = ptrtoint ptr %i.adl to i64
  %i.adn = sub i64 %i.acm, %i.adm
  %i.ado = zext nneg i32 %i.adj to i64            ; 2 uses
  %i.adp = icmp slt i64 %i.adn, %i.ado
  br i1 %i.adp, label %backref_check_at_nested_level.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %bb.fd, %bb.fe
  %.sink2785 = phi i64 [ %i.ado, %bb.fe ], [ 1, %bb.fd ]
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adl, i64 %.sink2785 ; 3 uses
  store ptr %i.adq, ptr %i.i, align 8, !tbaa !103
  %i.adr = icmp ult ptr %i.adq, %.11457
  br i1 %i.adr, label %bb.ey, label %.backedge.backedge, !llvm.loop !165

bb.fg:                                            ; preds = %.backedge
  %i.ads = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.adt = ptrtoint ptr %.11457 to i64
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = sub i64 %i.adt, %i.adu
  %i.adw = icmp slt i64 %i.adv, 1
  br i1 %i.adw, label %backref_check_at_nested_level.exit.thread, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.adx = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.ady = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.adz = call i32 %i.ady(ptr noundef %i.ads, ptr noundef %2) #30
  %i.aea = call i32 %i.adx(i32 noundef %i.adz, i32 noundef 12) #30
  %.not1869 = icmp eq i32 %i.aea, 0
  br i1 %.not1869, label %backref_check_at_nested_level.exit.thread, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aeb = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.aec = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aed = call i32 %i.aeb(ptr noundef %i.aec) #30
  %i.aee = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aef = sext i32 %i.aed to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.aee, i64 %i.aef
  store ptr %i.aeg, ptr %i.i, align 8, !tbaa !103
  %i.aeh = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fj:                                            ; preds = %.backedge
  %i.aei = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aej = ptrtoint ptr %.11457 to i64
  %i.aek = ptrtoint ptr %i.aei to i64
  %i.ael = sub i64 %i.aej, %i.aek
  %i.aem = icmp slt i64 %i.ael, 1
  br i1 %i.aem, label %backref_check_at_nested_level.exit.thread, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aen = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.aei, ptr noundef %2) #30
  %.not1868 = icmp eq i32 %i.aen, 0
  br i1 %.not1868, label %backref_check_at_nested_level.exit.thread, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aeo = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.aep = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aeq = call i32 %i.aeo(ptr noundef %i.aep) #30
  %i.aer = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aes = sext i32 %i.aeq to i64
  %i.aet = getelementptr inbounds i8, ptr %i.aer, i64 %i.aes
  store ptr %i.aet, ptr %i.i, align 8, !tbaa !103
  %i.aeu = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fm:                                            ; preds = %.backedge
  %i.aev = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aew = ptrtoint ptr %.11457 to i64
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = sub i64 %i.aew, %i.aex
  %i.aez = icmp slt i64 %i.aey, 1
  br i1 %i.aez, label %backref_check_at_nested_level.exit.thread, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.afa = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.afb = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.afc = call i32 %i.afb(ptr noundef %i.aev, ptr noundef %2) #30
  %i.afd = call i32 %i.afa(i32 noundef %i.afc, i32 noundef 12) #30
  %.not1867 = icmp eq i32 %i.afd, 0
  br i1 %.not1867, label %bb.fo, label %backref_check_at_nested_level.exit.thread

bb.fo:                                            ; preds = %bb.fn
  %i.afe = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.aff = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.afg = call i32 %i.afe(ptr noundef %i.aff) #30
  %i.afh = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.afi = sext i32 %i.afg to i64
  %i.afj = getelementptr inbounds i8, ptr %i.afh, i64 %i.afi
  store ptr %i.afj, ptr %i.i, align 8, !tbaa !103
  %i.afk = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fp:                                            ; preds = %.backedge
  %i.afl = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.afm = ptrtoint ptr %.11457 to i64
  %i.afn = ptrtoint ptr %i.afl to i64
  %i.afo = sub i64 %i.afm, %i.afn
  %i.afp = icmp slt i64 %i.afo, 1
  br i1 %i.afp, label %backref_check_at_nested_level.exit.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afq = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.afl, ptr noundef %2) #30
  %.not1866 = icmp eq i32 %i.afq, 0
  br i1 %.not1866, label %bb.fr, label %backref_check_at_nested_level.exit.thread

bb.fr:                                            ; preds = %bb.fq
  %i.afr = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.afs = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.aft = call i32 %i.afr(ptr noundef %i.afs) #30
  %i.afu = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.afv = sext i32 %i.aft to i64
  %i.afw = getelementptr inbounds i8, ptr %i.afu, i64 %i.afv
  store ptr %i.afw, ptr %i.i, align 8, !tbaa !103
  %i.afx = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.fs:                                            ; preds = %.backedge
  %i.afy = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.afz = load i32, ptr %i.afy, align 8, !tbaa !62 ; 2 uses
  %i.aga = load ptr, ptr %i.i, align 8, !tbaa !103 ; 4 uses
  %i.agb = icmp eq ptr %i.aga, %1
  br i1 %i.agb, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.agc = ptrtoint ptr %.11457 to i64
  %i.agd = sub i64 %i.agc, %i.ed
  %i.age = icmp slt i64 %i.agd, 1
  br i1 %i.age, label %backref_check_at_nested_level.exit.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.agf = icmp eq i32 %i.afz, 0
  br i1 %i.agf, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.agg = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.agh = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.agi = call i32 %i.agh(ptr noundef %i.aga, ptr noundef %2) #30
  %i.agj = call i32 %i.agg(i32 noundef %i.agi, i32 noundef 12) #30
  %.not1865 = icmp eq i32 %i.agj, 0
  br i1 %.not1865, label %backref_check_at_nested_level.exit.thread, label %bb.gf

bb.fw:                                            ; preds = %bb.fu
  %i.agk = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.aga, ptr noundef %2) #30
  %.not1864 = icmp eq i32 %i.agk, 0
  br i1 %.not1864, label %backref_check_at_nested_level.exit.thread, label %bb.gf

bb.fx:                                            ; preds = %bb.fs
  %i.agl = call ptr @onigenc_get_prev_char_head(ptr noundef %i.r, ptr noundef %1, ptr noundef %i.aga) #30 ; 4 uses
  %i.agm = load ptr, ptr %i.i, align 8, !tbaa !103 ; 3 uses
  %i.agn = icmp eq ptr %i.agm, %2
  %i.ago = icmp eq i32 %i.afz, 0                  ; 2 uses
  br i1 %i.agn, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  br i1 %i.ago, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.agp = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.agq = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.agr = call i32 %i.agq(ptr noundef %i.agl, ptr noundef %2) #30
  %i.ags = call i32 %i.agp(i32 noundef %i.agr, i32 noundef 12) #30
  %.not1863 = icmp eq i32 %i.ags, 0
  br i1 %.not1863, label %backref_check_at_nested_level.exit.thread, label %bb.gf

bb.ga:                                            ; preds = %bb.fy
  %i.agt = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.agl, ptr noundef %2) #30
  %.not1862 = icmp eq i32 %i.agt, 0
  br i1 %.not1862, label %backref_check_at_nested_level.exit.thread, label %bb.gf

bb.gb:                                            ; preds = %bb.fx
  br i1 %i.ago, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.agu = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.agv = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.agw = call i32 %i.agv(ptr noundef %i.agm, ptr noundef %2) #30
  %i.agx = call i32 %i.agu(i32 noundef %i.agw, i32 noundef 12) #30
  %i.agy = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.agz = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.aha = call i32 %i.agz(ptr noundef %i.agl, ptr noundef %2) #30
  %i.ahb = call i32 %i.agy(i32 noundef %i.aha, i32 noundef 12) #30
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.ahc = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.agm, ptr noundef %2) #30
  %i.ahd = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.agl, ptr noundef %2) #30
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.ahe = phi i32 [ %i.agx, %bb.gc ], [ %i.ahc, %bb.gd ]
  %i.ahf = phi i32 [ %i.ahb, %bb.gc ], [ %i.ahd, %bb.gd ]
  %i.ahg = icmp eq i32 %i.ahe, %i.ahf
  br i1 %i.ahg, label %backref_check_at_nested_level.exit.thread, label %bb.gf

bb.gf:                                            ; preds = %bb.ga, %bb.fz, %bb.ge, %bb.fv, %bb.fw
  %i.ahh = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.gg:                                            ; preds = %.backedge
  %i.ahi = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !62 ; 2 uses
  %i.ahk = load ptr, ptr %i.i, align 8, !tbaa !103 ; 4 uses
  %i.ahl = icmp eq ptr %i.ahk, %1
  br i1 %i.ahl, label %bb.gh, label %bb.gl

bb.gh:                                            ; preds = %bb.gg
  %i.ahm = icmp ult ptr %1, %.11457
  br i1 %i.ahm, label %bb.gi, label %bb.gt

bb.gi:                                            ; preds = %bb.gh
  %i.ahn = icmp eq i32 %i.ahj, 0
  br i1 %i.ahn, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.aho = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.ahp = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.ahq = call i32 %i.ahp(ptr noundef %i.ahk, ptr noundef %2) #30
  %i.ahr = call i32 %i.aho(i32 noundef %i.ahq, i32 noundef 12) #30
  %.not1861 = icmp eq i32 %i.ahr, 0
  br i1 %.not1861, label %bb.gt, label %backref_check_at_nested_level.exit.thread

bb.gk:                                            ; preds = %bb.gi
  %i.ahs = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.ahk, ptr noundef %2) #30
  %.not1860 = icmp eq i32 %i.ahs, 0
  br i1 %.not1860, label %bb.gt, label %backref_check_at_nested_level.exit.thread

bb.gl:                                            ; preds = %bb.gg
  %i.aht = call ptr @onigenc_get_prev_char_head(ptr noundef %i.r, ptr noundef %1, ptr noundef %i.ahk) #30 ; 4 uses
  %i.ahu = load ptr, ptr %i.i, align 8, !tbaa !103 ; 3 uses
  %i.ahv = icmp eq ptr %i.ahu, %2
  %i.ahw = icmp eq i32 %i.ahj, 0                  ; 2 uses
  br i1 %i.ahv, label %bb.gm, label %bb.gp

bb.gm:                                            ; preds = %bb.gl
  br i1 %i.ahw, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.ahx = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.ahy = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.ahz = call i32 %i.ahy(ptr noundef %i.aht, ptr noundef %2) #30
  %i.aia = call i32 %i.ahx(i32 noundef %i.ahz, i32 noundef 12) #30
  %.not1859 = icmp eq i32 %i.aia, 0
  br i1 %.not1859, label %bb.gt, label %backref_check_at_nested_level.exit.thread

bb.go:                                            ; preds = %bb.gm
  %i.aib = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.aht, ptr noundef %2) #30
  %.not1858 = icmp eq i32 %i.aib, 0
  br i1 %.not1858, label %bb.gt, label %backref_check_at_nested_level.exit.thread

bb.gp:                                            ; preds = %bb.gl
  br i1 %i.ahw, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.aic = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.aid = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.aie = call i32 %i.aid(ptr noundef %i.ahu, ptr noundef %2) #30
  %i.aif = call i32 %i.aic(i32 noundef %i.aie, i32 noundef 12) #30
  %i.aig = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.aih = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.aii = call i32 %i.aih(ptr noundef %i.aht, ptr noundef %2) #30
  %i.aij = call i32 %i.aig(i32 noundef %i.aii, i32 noundef 12) #30
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.aik = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.ahu, ptr noundef %2) #30
  %i.ail = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.aht, ptr noundef %2) #30
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.aim = phi i32 [ %i.aif, %bb.gq ], [ %i.aik, %bb.gr ]
  %i.ain = phi i32 [ %i.aij, %bb.gq ], [ %i.ail, %bb.gr ]
  %.not1857 = icmp eq i32 %i.aim, %i.ain
  br i1 %.not1857, label %bb.gt, label %backref_check_at_nested_level.exit.thread

bb.gt:                                            ; preds = %bb.go, %bb.gn, %bb.gs, %bb.gh, %bb.gj, %bb.gk
  %i.aio = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.gu:                                            ; preds = %.backedge
  %i.aip = load ptr, ptr %i.i, align 8, !tbaa !103 ; 3 uses
  %i.aiq = icmp ult ptr %i.aip, %.11457
  br i1 %i.aiq, label %bb.gv, label %backref_check_at_nested_level.exit.thread

bb.gv:                                            ; preds = %bb.gu
  %i.air = getelementptr inbounds nuw i8, ptr %.71534, i64 8
  %i.ais = load i32, ptr %i.air, align 8, !tbaa !62
  %i.ait = icmp eq i32 %i.ais, 0
  br i1 %i.ait, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.aiu = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.aiv = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.aiw = call i32 %i.aiv(ptr noundef %i.aip, ptr noundef %2) #30
  %i.aix = call i32 %i.aiu(i32 noundef %i.aiw, i32 noundef 12) #30
  %.not1854 = icmp eq i32 %i.aix, 0
  br i1 %.not1854, label %backref_check_at_nested_level.exit.thread, label %bb.gy

bb.gx:                                            ; preds = %bb.gv
  %i.aiy = call i32 @onigenc_is_mbc_word_ascii(ptr noundef %i.r, ptr noundef %i.aip, ptr noundef %2) #30
  %.not1853 = icmp eq i32 %i.aiy, 0
  br i1 %.not1853, label %backref_check_at_nested_level.exit.thread, label %.thread2008

bb.gy:                                            ; preds = %bb.gw
  %i.aiz = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.aja = icmp eq ptr %i.aiz, %1
  br i1 %i.aja, label %bb.gz, label %bb.ha

.thread2008:                                      ; preds = %bb.gx
  %i.ajb = load ptr, ptr %i.i, align 8, !tbaa !103 ; 2 uses
  %i.ajc = icmp eq ptr %i.ajb, %1
  br i1 %i.ajc, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %.thread2008, %bb.gy
  %i.ajd = getelementptr inbounds nuw i8, ptr %.71534, i64 24
  br label %.backedge.backedge

bb.ha:                                            ; preds = %bb.gy
  %i.aje = call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %i.r, ptr noundef %1, ptr noundef %i.aiz) #30
  %i.ajf = load ptr, ptr %i.du, align 8, !tbaa !186
  %i.ajg = load ptr, ptr %i.dv, align 8, !tbaa !115
  %i.ajh = call i32 %i.ajg(ptr noundef %i.aje, ptr noundef %2) #30
  %i.aji = call i32 %i.ajf(i32 noundef %i.ajh, i32 noundef 12) #30
  %.not1856 = icmp eq i32 %i.aji, 0
  br i1 %.not1856, label %bb.hc, label %backref_check_at_nested_level.exit.thread

bb.hb:                                            ; preds = %.thread2008
end_hunk_1
