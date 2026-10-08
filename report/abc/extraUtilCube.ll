Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilCube?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Abc_EnumerateCubeStates:bb.a
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [9 x [24 x i8]], align 16         ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 25165824, ptr %i.b, align 8, !tbaa !12
  %calloc.i = tail call dereferenceable_or_null(100663296) ptr @calloc(i64 1, i64 100663296) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %calloc.i, ptr %i.d, align 8, !tbaa !13
  store i32 25165824, ptr %i.c, align 4, !tbaa !14
  %i.e = tail call noalias dereferenceable_or_null(4294967296) ptr @calloc(i64 noundef 536870912, i64 noundef 8) #17 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #18
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %4, align 8, !tbaa !30
  %i.i = mul nsw i64 %i.h, 1000000
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31
  %i.l = sdiv i64 %i.k, 1000
  %i.m = add nsw i64 %i.l, %i.i
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.m, %bb.b ], [ -1, %bb.a ]  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  store <4 x i32> <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, ptr %calloc.i, align 4, !tbaa !32
  %i.n = getelementptr i8, ptr %calloc.i, i64 16
  store i32 319951120, ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr i8, ptr %calloc.i, i64 20
  store i32 387323156, ptr %i.o, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 3307258896
  store i64 1, ptr %i.p, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit, %bb.c
  %indvars.iv158 = phi i64 [ 0, %Abc_Clock.exit ], [ %indvars.iv.next159, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %Abc_Clock.exit ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv158 ; 30 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store <4 x i32> <i32 50462976, i32 117835012, i32 185207048, i32 252579084>, ptr %i.q, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 319951120, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  store i32 387323156, ptr %.sroa.34.0..sroa_idx, align 4
  %i.r = getelementptr inbounds nuw [72 x i8], ptr @__const.Abc_EnumerateCubeStates.pXYZ, i64 %indvars.iv158 ; 20 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !32
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1       ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.q, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1     ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !33
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !33
  store i8 %i.w, ptr %i.ab, align 1, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.q, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -1     ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !33
  store i8 %i.ao, ptr %i.ah, align 1, !tbaa !33
  store i8 %i.ai, ptr %i.an, align 1, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.q, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -1     ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %i.q, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -1     ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !33
  store i8 %i.au, ptr %i.az, align 1, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -1     ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.q, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !33
  store i8 %i.bm, ptr %i.bf, align 1, !tbaa !33
  store i8 %i.bg, ptr %i.bl, align 1, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !32
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.q, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -1     ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 36 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %i.q, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1     ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !33
  store i8 %i.by, ptr %i.br, align 1, !tbaa !33
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr i8, ptr %i.q, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -1     ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 44 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.q, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1     ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !33
  store i8 %i.ck, ptr %i.cd, align 1, !tbaa !33
  store i8 %i.ce, ptr %i.cj, align 1, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.q, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 -1     ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr %i.q, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -1     ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !33
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !33
  store i8 %i.cq, ptr %i.cv, align 1, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !32
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.q, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 -1     ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr i8, ptr %i.q, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 -1     ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !33
  store i8 %i.di, ptr %i.db, align 1, !tbaa !33
  store i8 %i.dc, ptr %i.dh, align 1, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !32
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.q, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -1     ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 68 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr i8, ptr %i.q, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1     ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !33
  store i8 %i.du, ptr %i.dn, align 1, !tbaa !33
  store i8 %i.do, ptr %i.dt, align 1, !tbaa !33
  %i.dv = load i32, ptr %i.q, align 8             ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 24
  %i.dw = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %.idx ; 9 uses
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !32
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = load <4 x i32>, ptr %.sroa.10.0..sroa_idx, align 4 ; 3 uses
  %i.dz = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  store <4 x i32> %i.dy, ptr %i.dx, align 4, !tbaa !32
  %i.ea = load i32, ptr %.sroa.34.0..sroa_idx, align 4 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dw, i64 20
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !32
  %i.ec = zext i32 %i.dv to i64
  %sext = shl i64 %i.ec, 56
  %i.ed = ashr exact i64 %sext, 56                ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !32
  %i.eg = shl i32 %i.ef, 2
  %i.eh = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ed
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !32
  %i.ej = or i32 %i.eg, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %5 = ashr i32 %i.dv, 24
  %6 = sext i32 %5 to i64                         ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %6
  %i.em = load i32, ptr %i.el, align 4, !tbaa !32
  %i.en = shl i32 %i.em, 2
  %i.eo = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %6
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !32
  %i.eq = or i32 %i.en, %i.ep
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i64 %i.er, 5
  %i.et = xor i64 %i.es, %i.ek                    ; 2 uses
  %i.eu = lshr i32 %i.dz, 16
  %i.ev = zext nneg i32 %i.eu to i64
  %sext254.a = shl i64 %i.ev, 56
  %i.ew = ashr exact i64 %sext254.a, 56           ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !32
  %i.ez = shl i32 %i.ey, 2
  %i.fa = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ew
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !32
  %i.fc = or i32 %i.ez, %i.fb
  %i.fd = sext i32 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 10
  %i.ff = extractelement <4 x i32> %i.dy, i64 1
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = zext nneg i32 %i.fg to i64
  %sext255.a = shl i64 %i.fh, 56
  %i.fi = ashr exact i64 %sext255.a, 56           ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !32
  %i.fl = shl i32 %i.fk, 2
  %i.fm = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.fi
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !32
  %i.fo = or i32 %i.fl, %i.fn
  %i.fp = sext i32 %i.fo to i64
  %i.fq = shl nsw i64 %i.fp, 15
  %i.fr = extractelement <4 x i32> %i.dy, i64 2   ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %sext256.a = shl i64 %i.fs, 56
  %i.ft = ashr exact i64 %sext256.a, 56           ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !32
  %i.fw = shl i32 %i.fv, 2
  %i.fx = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ft
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !32
  %i.fz = or i32 %i.fw, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 20
  %7 = ashr i32 %i.fr, 24
  %8 = sext i32 %7 to i64                         ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %8
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !32
  %i.ge = shl i32 %i.gd, 2
  %i.gf = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !32
  %i.gh = or i32 %i.ge, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = shl nsw i64 %i.gi, 25
  %i.gk = lshr i32 %i.ea, 8
  %i.gl = zext nneg i32 %i.gk to i64
  %sext258.a = shl i64 %i.gl, 56
  %i.gm = ashr exact i64 %sext258.a, 56           ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !32
  %i.gp = shl i32 %i.go, 2
  %i.gq = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.gm
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !32
  %i.gs = or i32 %i.gp, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = shl nsw i64 %i.gt, 30
  %i.gv = xor i64 %i.fe, %i.fq
  %i.gw = xor i64 %i.gv, %i.gb
  %i.gx = xor i64 %i.gw, %i.gj
  %i.gy = xor i64 %i.gx, %i.gu
  %i.gz = xor i64 %i.gy, %i.et
  %i.ha = and i64 %i.et, 63
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = lshr i64 %i.gz, 6
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !34
  %i.hf = xor i64 %i.he, %i.hb
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !34
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 21 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.hh = load i32, ptr %i.r, align 8, !tbaa !32
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr i8, ptr %i.hg, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -1     ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !33
  %i.hm = load i32, ptr %i.x, align 4, !tbaa !32
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr i8, ptr %i.hg, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 -1     ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !33
  store i8 %i.hq, ptr %i.hk, align 1, !tbaa !33
  store i8 %i.hl, ptr %i.hp, align 1, !tbaa !33
  %i.hr = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr i8, ptr %i.hg, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 -1     ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !33
  %i.hw = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr i8, ptr %i.hg, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 -1     ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !33
  store i8 %i.ia, ptr %i.hu, align 1, !tbaa !33
  store i8 %i.hv, ptr %i.hz, align 1, !tbaa !33
  %i.ib = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr i8, ptr %i.hg, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 -1     ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !33
  %i.ig = load i32, ptr %i.av, align 4, !tbaa !32
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr i8, ptr %i.hg, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 -1     ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !33
  store i8 %i.ik, ptr %i.ie, align 1, !tbaa !33
  store i8 %i.if, ptr %i.ij, align 1, !tbaa !33
  %i.il = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr i8, ptr %i.hg, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 -1     ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !33
  %i.iq = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr i8, ptr %i.hg, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 -1     ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !33
  store i8 %i.iu, ptr %i.io, align 1, !tbaa !33
  store i8 %i.ip, ptr %i.it, align 1, !tbaa !33
  %i.iv = load i32, ptr %i.bn, align 8, !tbaa !32
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr i8, ptr %i.hg, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 -1     ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !33
  %i.ja = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr i8, ptr %i.hg, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 -1     ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !33
  store i8 %i.je, ptr %i.iy, align 1, !tbaa !33
  store i8 %i.iz, ptr %i.jd, align 1, !tbaa !33
  %i.jf = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr i8, ptr %i.hg, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.jh, i64 -1     ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !33
  %i.jk = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr i8, ptr %i.hg, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 -1     ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !33
  store i8 %i.jo, ptr %i.ji, align 1, !tbaa !33
  store i8 %i.jj, ptr %i.jn, align 1, !tbaa !33
  %i.jp = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr i8, ptr %i.hg, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 -1     ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !33
  %i.ju = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr i8, ptr %i.hg, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 -1     ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !33
  store i8 %i.jy, ptr %i.js, align 1, !tbaa !33
  store i8 %i.jt, ptr %i.jx, align 1, !tbaa !33
  %i.jz = load i32, ptr %i.cx, align 8, !tbaa !32
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr i8, ptr %i.hg, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.kb, i64 -1     ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !33
  %i.ke = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr i8, ptr %i.hg, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 -1     ; 2 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !33
  store i8 %i.ki, ptr %i.kc, align 1, !tbaa !33
  store i8 %i.kd, ptr %i.kh, align 1, !tbaa !33
  %i.kj = load i32, ptr %i.dj, align 8, !tbaa !32
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr i8, ptr %i.hg, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 -1     ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !33
  %i.ko = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr i8, ptr %i.hg, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.kq, i64 -1     ; 2 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !33
  store i8 %i.ks, ptr %i.km, align 1, !tbaa !33
  store i8 %i.kn, ptr %i.kr, align 1, !tbaa !33
  %i.kt = load i32, ptr %i.hg, align 8            ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !32
  %i.kv = getelementptr inbounds nuw i8, ptr %i.q, i64 76 ; 2 uses
  %i.kw = getelementptr i8, ptr %i.dw, i64 28
  %i.kx = load <4 x i32>, ptr %i.kv, align 4      ; 3 uses
  %i.ky = load i32, ptr %i.kv, align 4
  store <4 x i32> %i.kx, ptr %i.kw, align 4, !tbaa !32
  %i.kz = getelementptr inbounds nuw i8, ptr %i.q, i64 92
  %i.la = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lb = getelementptr i8, ptr %i.dw, i64 44
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !32
  %i.lc = zext i32 %i.kt to i64
  %sext259.a = shl i64 %i.lc, 56
  %i.ld = ashr exact i64 %sext259.a, 56           ; 2 uses
  %i.le = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !32
  %i.lg = shl i32 %i.lf, 2
  %i.lh = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ld
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !32
  %i.lj = or i32 %i.lg, %i.li
  %i.lk = sext i32 %i.lj to i64
  %9 = ashr i32 %i.kt, 24
  %10 = sext i32 %9 to i64                        ; 2 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %10
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !32
  %i.ln = shl i32 %i.lm, 2
  %i.lo = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %10
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !32
  %i.lq = or i32 %i.ln, %i.lp
  %i.lr = sext i32 %i.lq to i64
  %i.ls = shl nsw i64 %i.lr, 5
  %i.lt = xor i64 %i.ls, %i.lk                    ; 2 uses
  %i.lu = lshr i32 %i.ky, 16
  %i.lv = zext nneg i32 %i.lu to i64
  %sext261.a = shl i64 %i.lv, 56
  %i.lw = ashr exact i64 %sext261.a, 56           ; 2 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.lw
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !32
  %i.lz = shl i32 %i.ly, 2
  %i.ma = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.lw
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !32
  %i.mc = or i32 %i.lz, %i.mb
  %i.md = sext i32 %i.mc to i64
  %i.me = shl nsw i64 %i.md, 10
  %i.mf = extractelement <4 x i32> %i.kx, i64 1
  %i.mg = lshr i32 %i.mf, 8
  %i.mh = zext nneg i32 %i.mg to i64
  %sext262.a = shl i64 %i.mh, 56
  %i.mi = ashr exact i64 %sext262.a, 56           ; 2 uses
  %i.mj = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !32
  %i.ml = shl i32 %i.mk, 2
  %i.mm = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.mi
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !32
  %i.mo = or i32 %i.ml, %i.mn
  %i.mp = sext i32 %i.mo to i64
  %i.mq = shl nsw i64 %i.mp, 15
  %i.mr = extractelement <4 x i32> %i.kx, i64 2   ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %sext263.a = shl i64 %i.ms, 56
  %i.mt = ashr exact i64 %sext263.a, 56           ; 2 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !32
  %i.mw = shl i32 %i.mv, 2
  %i.mx = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.mt
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !32
  %i.mz = or i32 %i.mw, %i.my
  %i.na = sext i32 %i.mz to i64
  %i.nb = shl nsw i64 %i.na, 20
  %11 = ashr i32 %i.mr, 24
  %12 = sext i32 %11 to i64                       ; 2 uses
  %i.nc = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %12
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !32
  %i.ne = shl i32 %i.nd, 2
  %i.nf = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %12
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !32
  %i.nh = or i32 %i.ne, %i.ng
  %i.ni = sext i32 %i.nh to i64
  %i.nj = shl nsw i64 %i.ni, 25
  %i.nk = lshr i32 %i.la, 8
  %i.nl = zext nneg i32 %i.nk to i64
  %sext265.a = shl i64 %i.nl, 56
  %i.nm = ashr exact i64 %sext265.a, 56           ; 2 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !32
  %i.np = shl i32 %i.no, 2
  %i.nq = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.nm
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !32
  %i.ns = or i32 %i.np, %i.nr
  %i.nt = sext i32 %i.ns to i64
  %i.nu = shl nsw i64 %i.nt, 30
  %i.nv = xor i64 %i.me, %i.mq
  %i.nw = xor i64 %i.nv, %i.nb
  %i.nx = xor i64 %i.nw, %i.nj
  %i.ny = xor i64 %i.nx, %i.nu
  %i.nz = xor i64 %i.ny, %i.lt
  %i.oa = and i64 %i.lt, 63
  %i.ob = shl nuw i64 1, %i.oa
  %i.oc = lshr i64 %i.nz, 6
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.oc ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !34
  %i.of = xor i64 %i.oe, %i.ob
  store i64 %i.of, ptr %i.od, align 8, !tbaa !34
  %i.og = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.og, ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i64 24, i1 false)
  %i.oh = load i32, ptr %i.r, align 8, !tbaa !32
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr i8, ptr %i.og, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 -1     ; 2 uses
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !33
  %i.om = load i32, ptr %i.x, align 4, !tbaa !32
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr i8, ptr %i.og, i64 %i.on
  %i.op = getelementptr i8, ptr %i.oo, i64 -1     ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !33
  store i8 %i.oq, ptr %i.ok, align 1, !tbaa !33
  store i8 %i.ol, ptr %i.op, align 1, !tbaa !33
  %i.or = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr i8, ptr %i.og, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 -1     ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !33
  %i.ow = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr i8, ptr %i.og, i64 %i.ox
  %i.oz = getelementptr i8, ptr %i.oy, i64 -1     ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !33
  store i8 %i.pa, ptr %i.ou, align 1, !tbaa !33
  store i8 %i.ov, ptr %i.oz, align 1, !tbaa !33
  %i.pb = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr i8, ptr %i.og, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 -1     ; 2 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !33
  %i.pg = load i32, ptr %i.av, align 4, !tbaa !32
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr i8, ptr %i.og, i64 %i.ph
  %i.pj = getelementptr i8, ptr %i.pi, i64 -1     ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !33
  store i8 %i.pk, ptr %i.pe, align 1, !tbaa !33
  store i8 %i.pf, ptr %i.pj, align 1, !tbaa !33
  %i.pl = load i32, ptr %i.bb, align 8, !tbaa !32
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr i8, ptr %i.og, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 -1     ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !33
  %i.pq = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr i8, ptr %i.og, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -1     ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !33
  store i8 %i.pu, ptr %i.po, align 1, !tbaa !33
  store i8 %i.pp, ptr %i.pt, align 1, !tbaa !33
  %i.pv = load i32, ptr %i.bn, align 8, !tbaa !32
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr i8, ptr %i.og, i64 %i.pw
  %i.py = getelementptr i8, ptr %i.px, i64 -1     ; 2 uses
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !33
  %i.qa = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr i8, ptr %i.og, i64 %i.qb
  %i.qd = getelementptr i8, ptr %i.qc, i64 -1     ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !33
  store i8 %i.qe, ptr %i.py, align 1, !tbaa !33
  store i8 %i.pz, ptr %i.qd, align 1, !tbaa !33
  %i.qf = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr i8, ptr %i.og, i64 %i.qg
  %i.qi = getelementptr i8, ptr %i.qh, i64 -1     ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !33
  %i.qk = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr i8, ptr %i.og, i64 %i.ql
  %i.qn = getelementptr i8, ptr %i.qm, i64 -1     ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !33
  store i8 %i.qo, ptr %i.qi, align 1, !tbaa !33
  store i8 %i.qj, ptr %i.qn, align 1, !tbaa !33
  %i.qp = load i32, ptr %i.cl, align 8, !tbaa !32
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr i8, ptr %i.og, i64 %i.qq
  %i.qs = getelementptr i8, ptr %i.qr, i64 -1     ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !33
  %i.qu = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr i8, ptr %i.og, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.qw, i64 -1     ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !33
  store i8 %i.qy, ptr %i.qs, align 1, !tbaa !33
  store i8 %i.qt, ptr %i.qx, align 1, !tbaa !33
  %i.qz = load i32, ptr %i.cx, align 8, !tbaa !32
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr i8, ptr %i.og, i64 %i.ra
  %i.rc = getelementptr i8, ptr %i.rb, i64 -1     ; 2 uses
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !33
  %i.re = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr i8, ptr %i.og, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -1     ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !33
  store i8 %i.ri, ptr %i.rc, align 1, !tbaa !33
  store i8 %i.rd, ptr %i.rh, align 1, !tbaa !33
  %i.rj = load i32, ptr %i.dj, align 8, !tbaa !32
  %i.rk = sext i32 %i.rj to i64
  %i.rl = getelementptr i8, ptr %i.og, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.rl, i64 -1     ; 2 uses
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !33
  %i.ro = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr i8, ptr %i.og, i64 %i.rp
  %i.rr = getelementptr i8, ptr %i.rq, i64 -1     ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !33
  store i8 %i.rs, ptr %i.rm, align 1, !tbaa !33
  store i8 %i.rn, ptr %i.rr, align 1, !tbaa !33
  %i.rt = load i32, ptr %i.og, align 8            ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  store i32 %i.rt, ptr %i.ru, align 4, !tbaa !32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.q, i64 148 ; 2 uses
  %i.rw = getelementptr i8, ptr %i.dw, i64 52
  %i.rx = load <4 x i32>, ptr %i.rv, align 4      ; 3 uses
  %i.ry = load i32, ptr %i.rv, align 4
  store <4 x i32> %i.rx, ptr %i.rw, align 4, !tbaa !32
  %i.rz = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.sa = load i32, ptr %i.rz, align 4            ; 2 uses
  %i.sb = getelementptr i8, ptr %i.dw, i64 68
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !32
  %i.sc = zext i32 %i.rt to i64
  %sext266.a = shl i64 %i.sc, 56
  %i.sd = ashr exact i64 %sext266.a, 56           ; 2 uses
  %i.se = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.sd
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !32
  %i.sg = shl i32 %i.sf, 2
  %i.sh = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.sd
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !32
  %i.sj = or i32 %i.sg, %i.si
  %i.sk = sext i32 %i.sj to i64
  %13 = ashr i32 %i.rt, 24
  %14 = sext i32 %13 to i64                       ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %14
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !32
  %i.sn = shl i32 %i.sm, 2
  %i.so = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %14
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !32
  %i.sq = or i32 %i.sn, %i.sp
  %i.sr = sext i32 %i.sq to i64
  %i.ss = shl nsw i64 %i.sr, 5
  %i.st = xor i64 %i.ss, %i.sk                    ; 2 uses
  %i.su = lshr i32 %i.ry, 16
  %i.sv = zext nneg i32 %i.su to i64
  %sext268 = shl i64 %i.sv, 56
  %i.sw = ashr exact i64 %sext268, 56             ; 2 uses
  %i.sx = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !32
  %i.sz = shl i32 %i.sy, 2
  %i.ta = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.sw
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !32
  %i.tc = or i32 %i.sz, %i.tb
  %i.td = sext i32 %i.tc to i64
  %i.te = shl nsw i64 %i.td, 10
  %i.tf = extractelement <4 x i32> %i.rx, i64 1
  %i.tg = lshr i32 %i.tf, 8
  %i.th = zext nneg i32 %i.tg to i64
  %sext269 = shl i64 %i.th, 56
  %i.ti = ashr exact i64 %sext269, 56             ; 2 uses
  %i.tj = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !32
  %i.tl = shl i32 %i.tk, 2
  %i.tm = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.ti
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !32
  %i.to = or i32 %i.tl, %i.tn
  %i.tp = sext i32 %i.to to i64
  %i.tq = shl nsw i64 %i.tp, 15
  %i.tr = extractelement <4 x i32> %i.rx, i64 2   ; 2 uses
  %i.ts = zext i32 %i.tr to i64
  %sext270 = shl i64 %i.ts, 56
  %i.tt = ashr exact i64 %sext270, 56             ; 2 uses
  %i.tu = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.tt
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !32
  %i.tw = shl i32 %i.tv, 2
  %i.tx = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.tt
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !32
  %i.tz = or i32 %i.tw, %i.ty
  %i.ua = sext i32 %i.tz to i64
  %i.ub = shl nsw i64 %i.ua, 20
  %15 = ashr i32 %i.tr, 24
  %16 = sext i32 %15 to i64                       ; 2 uses
  %i.uc = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %16
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !32
  %i.ue = shl i32 %i.ud, 2
  %i.uf = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %16
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !32
  %i.uh = or i32 %i.ue, %i.ug
  %i.ui = sext i32 %i.uh to i64
  %i.uj = shl nsw i64 %i.ui, 25
  %i.uk = lshr i32 %i.sa, 8
  %i.ul = zext nneg i32 %i.uk to i64
  %sext272 = shl i64 %i.ul, 56
  %i.um = ashr exact i64 %sext272, 56             ; 2 uses
  %i.un = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Cor, i64 %i.um
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !32
  %i.up = shl i32 %i.uo, 2
  %i.uq = getelementptr inbounds [4 x i8], ptr @Abc_CubeGenerateSign.Var2Per, i64 %i.um
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !32
  %i.us = or i32 %i.up, %i.ur
  %i.ut = sext i32 %i.us to i64
  %i.uu = shl nsw i64 %i.ut, 30
  %i.uv = xor i64 %i.te, %i.tq
  %i.uw = xor i64 %i.uv, %i.ub
  %i.ux = xor i64 %i.uw, %i.uj
  %i.uy = xor i64 %i.ux, %i.uu
  %i.uz = xor i64 %i.uy, %i.st
  %i.va = and i64 %i.st, 63
  %i.vb = shl nuw i64 1, %i.va
  %i.vc = lshr i64 %i.uz, 6
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.vc ; 2 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !34
  %i.vf = xor i64 %i.ve, %i.vb
  store i64 %i.vf, ptr %i.vd, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next159, 3
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !45

bb.d:                                             ; preds = %bb.c
  %i.vg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.vh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #18
  %i.vi = icmp slt i32 %i.vh, 0
  br i1 %i.vi, label %Abc_Clock.exit130, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.vj = load i64, ptr %3, align 8, !tbaa !30
  %i.vk = mul nsw i64 %i.vj, 1000000
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !31
  %i.vn = sdiv i64 %i.vm, 1000
  %i.vo = add nsw i64 %i.vn, %i.vk
  br label %Abc_Clock.exit130

Abc_Clock.exit130:                                ; preds = %bb.d, %bb.e
  %.0.i129 = phi i64 [ %i.vo, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.vp = sub nsw i64 %.0.i129, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2)
  %i.vq = sitofp i64 %i.vp to double
  %i.vr = fdiv double %i.vq, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, double noundef %i.vr)
  %i.vs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1, i32 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.vt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #18
  %i.vu = icmp slt i32 %i.vt, 0
  br i1 %i.vu, label %Abc_Clock.exit132, label %bb.f

bb.f:                                             ; preds = %Abc_Clock.exit130
  %i.vv = load i64, ptr %2, align 8, !tbaa !30
  %i.vw = mul nsw i64 %i.vv, 1000000
  %i.vx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !31
  %i.vz = sdiv i64 %i.vy, 1000
  %i.wa = add nsw i64 %i.vz, %i.vw
  br label %Abc_Clock.exit132

Abc_Clock.exit132:                                ; preds = %Abc_Clock.exit130, %bb.f
  %.0.i131 = phi i64 [ %i.wa, %bb.f ], [ -1, %Abc_Clock.exit130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.wb = sub nsw i64 %.0.i131, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2)
  %i.wc = sitofp i64 %i.wb to double
  %i.wd = fdiv double %i.wc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.5, double noundef %i.wd)
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader

.preheader:                                       ; preds = %Abc_Clock.exit132, %Abc_Clock.exit136
  %.1152 = phi i32 [ 10, %Abc_Clock.exit132 ], [ %.2.lcssa, %Abc_Clock.exit136 ] ; 6 uses
  %.0114150 = phi i32 [ 1, %Abc_Clock.exit132 ], [ %.1152, %Abc_Clock.exit136 ] ; 2 uses
  %.1122149 = phi i32 [ 2, %Abc_Clock.exit132 ], [ %i.afu, %Abc_Clock.exit136 ] ; 3 uses
  %i.wf = icmp slt i32 %.0114150, %.1152
  br i1 %i.wf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !13 ; 2 uses
  %i.wg = sext i32 %.0114150 to i64
  %wide.trip.count = sext i32 %.1152 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv167 = phi i64 [ %i.wg, %.lr.ph ], [ %indvars.iv.next168, %bb.n ] ; 2 uses
  %.2148 = phi i32 [ %.1152, %.lr.ph ], [ %.4, %bb.n ]
  %.idx273 = mul nsw i64 %indvars.iv167, 24
  %i.wh = getelementptr inbounds i8, ptr %.val125, i64 %.idx273 ; 24 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.k
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next164, 9
  br i1 %exitcond166.not, label %bb.n, label %bb.i, !llvm.loop !46

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv163 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next164, %bb.h ] ; 2 uses
  %.3146 = phi i32 [ %.2148, %bb.g ], [ %.4, %bb.h ] ; 3 uses
  %i.wi = mul nsw i32 %.3146, 6
  %i.wj = sext i32 %i.wi to i64
  %i.wk = getelementptr inbounds [4 x i8], ptr %.val125, i64 %i.wj ; 24 uses
  %i.wl = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv163 ; 24 uses
  %i.wm = load i8, ptr %i.wl, align 8, !tbaa !33
  %i.wn = sext i8 %i.wm to i64
  %i.wo = getelementptr inbounds i8, ptr %i.wh, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !33  ; 2 uses
  store i8 %i.wp, ptr %i.wk, align 1, !tbaa !33
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 1
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !33
  %i.ws = sext i8 %i.wr to i64
  %i.wt = getelementptr inbounds i8, ptr %i.wh, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !33
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !33
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wl, i64 2
  %i.wx = load i8, ptr %i.ww, align 2, !tbaa !33
  %i.wy = sext i8 %i.wx to i64
  %i.wz = getelementptr inbounds i8, ptr %i.wh, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !33
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !33
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wl, i64 3
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !33
  %i.xe = sext i8 %i.xd to i64
  %i.xf = getelementptr inbounds i8, ptr %i.wh, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !33  ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wk, i64 3
  store i8 %i.xg, ptr %i.xh, align 1, !tbaa !33
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.xj = load i8, ptr %i.xi, align 4, !tbaa !33
  %i.xk = sext i8 %i.xj to i64
  %i.xl = getelementptr inbounds i8, ptr %i.wh, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !33
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wk, i64 4
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !33
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wl, i64 5
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !33
  %i.xq = sext i8 %i.xp to i64
  %i.xr = getelementptr inbounds i8, ptr %i.wh, i64 %i.xq
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !33
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wk, i64 5
  store i8 %i.xs, ptr %i.xt, align 1, !tbaa !33
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wl, i64 6
  %i.xv = load i8, ptr %i.xu, align 2, !tbaa !33
  %i.xw = sext i8 %i.xv to i64
  %i.xx = getelementptr inbounds i8, ptr %i.wh, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !33  ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wk, i64 6
  store i8 %i.xy, ptr %i.xz, align 1, !tbaa !33
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wl, i64 7
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !33
  %i.yc = sext i8 %i.yb to i64
  %i.yd = getelementptr inbounds i8, ptr %i.wh, i64 %i.yc
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !33
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wk, i64 7
  store i8 %i.ye, ptr %i.yf, align 1, !tbaa !33
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.yh = load i8, ptr %i.yg, align 8, !tbaa !33
  %i.yi = sext i8 %i.yh to i64
  %i.yj = getelementptr inbounds i8, ptr %i.wh, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !33
  %i.yl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  store i8 %i.yk, ptr %i.yl, align 1, !tbaa !33
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wl, i64 9
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !33
  %i.yo = sext i8 %i.yn to i64
  %i.yp = getelementptr inbounds i8, ptr %i.wh, i64 %i.yo
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !33  ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wk, i64 9
  store i8 %i.yq, ptr %i.yr, align 1, !tbaa !33
  %i.ys = getelementptr inbounds nuw i8, ptr %i.wl, i64 10
  %i.yt = load i8, ptr %i.ys, align 2, !tbaa !33
  %i.yu = sext i8 %i.yt to i64
  %i.yv = getelementptr inbounds i8, ptr %i.wh, i64 %i.yu
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !33
  %i.yx = getelementptr inbounds nuw i8, ptr %i.wk, i64 10
  store i8 %i.yw, ptr %i.yx, align 1, !tbaa !33
  %i.yy = getelementptr inbounds nuw i8, ptr %i.wl, i64 11
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !33
  %i.za = sext i8 %i.yz to i64
  %i.zb = getelementptr inbounds i8, ptr %i.wh, i64 %i.za
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !33
  %i.zd = getelementptr inbounds nuw i8, ptr %i.wk, i64 11
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !33
  %i.ze = getelementptr inbounds nuw i8, ptr %i.wl, i64 12
  %i.zf = load i8, ptr %i.ze, align 4, !tbaa !33
  %i.zg = sext i8 %i.zf to i64
end_hunk_0
