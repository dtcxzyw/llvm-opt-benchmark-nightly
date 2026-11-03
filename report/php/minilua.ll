Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/minilua?download=true
begin_hunk_0_@luaD_precall:bb.a
  %i.fb = phi ptr [ %i.ey, %bb.x ], [ %54, %bb.y ]
  store ptr %i.fb, ptr %i.l, align 8
  %i.fc = load ptr, ptr %i.b, align 8
  %55 = getelementptr inbounds nuw %struct.lua_State, ptr %i.fc, i32 0, i32 10
  %i.fd = load ptr, ptr %55, align 8
  %i.fe = load i64, ptr %i.f, align 8
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe
  %i.fg = load ptr, ptr %i.l, align 8
  %56 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.fg, i32 0, i32 1
  store ptr %i.ff, ptr %56, align 8
  %i.fh = load ptr, ptr %i.l, align 8
  %57 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.fh, i32 0, i32 1
  %i.fi = load ptr, ptr %57, align 8
  %58 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fi, i64 1 ; 2 uses
  %i.fj = load ptr, ptr %i.l, align 8
  %59 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.fj, i32 0, i32 0
  store ptr %58, ptr %59, align 8
  %i.fk = load ptr, ptr %i.b, align 8
  %60 = getelementptr inbounds nuw %struct.lua_State, ptr %i.fk, i32 0, i32 5
  store ptr %58, ptr %60, align 8
  %i.fl = load ptr, ptr %i.b, align 8
  %61 = getelementptr inbounds nuw %struct.lua_State, ptr %i.fl, i32 0, i32 4
  %i.fm = load ptr, ptr %61, align 8
  %62 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fm, i64 20
  %i.fn = load ptr, ptr %i.l, align 8
  %63 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.fn, i32 0, i32 2
  store ptr %62, ptr %63, align 8
  %i.fo = load i32, ptr %i.d, align 4
  %i.fp = load ptr, ptr %i.l, align 8
  %64 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.fp, i32 0, i32 4
  store i32 %i.fo, ptr %64, align 8
  %i.fq = load ptr, ptr %i.b, align 8
  %65 = getelementptr inbounds nuw %struct.lua_State, ptr %i.fq, i32 0, i32 7
  %i.fr = load ptr, ptr %65, align 8
  %66 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.fr, i32 0, i32 1
  %i.fs = load ptr, ptr %66, align 8
  %67 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fs, i32 0, i32 0
  %i.ft = load ptr, ptr %67, align 8
  %68 = getelementptr inbounds nuw %struct.CClosure, ptr %i.ft, i32 0, i32 7
  %i.fu = load ptr, ptr %68, align 8
  %i.fv = load ptr, ptr %i.b, align 8
  %i.fw = call i32 %i.fu(ptr noundef %i.fv)
  store i32 %i.fw, ptr %i.m, align 4
  %i.fx = load i32, ptr %i.m, align 4
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 2, ptr %i.a, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.fz = load ptr, ptr %i.b, align 8
  %i.ga = load ptr, ptr %i.b, align 8
  %69 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ga, i32 0, i32 4
  %i.gb = load ptr, ptr %69, align 8
  %i.gc = load i32, ptr %i.m, align 4
  %i.gd = sext i32 %i.gc to i64
  %i.ge = sub nsw i64 0, %i.gd
  %70 = getelementptr inbounds %struct.lua_TValue, ptr %i.gb, i64 %i.ge
  %i.gf = call i32 @luaD_poscall(ptr noundef %i.fz, ptr noundef %70) ; 0 uses
  store i32 1, ptr %i.a, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.s
  %i.gg = load i32, ptr %i.a, align 4
  ret i32 %i.gg
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaV_execute(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 122 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 63 uses
  %i.e = alloca ptr, align 8                      ; 26 uses
  %i.f = alloca ptr, align 8                      ; 73 uses
  %i.g = alloca i32, align 4                      ; 110 uses
  %i.h = alloca ptr, align 8                      ; 72 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca ptr, align 8                      ; 3 uses
  %i.l = alloca ptr, align 8                      ; 3 uses
  %i.m = alloca ptr, align 8                      ; 3 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 2 uses
  %i.p = alloca ptr, align 8                      ; 3 uses
  %i.q = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.lua_TValue, align 8         ; 2 uses
  %i.r = alloca ptr, align 8                      ; 2 uses
  %i.s = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %struct.lua_TValue, align 8         ; 2 uses
  %i.t = alloca ptr, align 8                      ; 3 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca ptr, align 8                      ; 3 uses
  %i.w = alloca ptr, align 8                      ; 3 uses
  %i.x = alloca i32, align 4                      ; 2 uses
  %i.y = alloca i32, align 4                      ; 2 uses
  %i.z = alloca ptr, align 8                      ; 3 uses
  %i.aa = alloca ptr, align 8                     ; 3 uses
  %i.ab = alloca ptr, align 8                     ; 3 uses
  %i.ac = alloca ptr, align 8                     ; 3 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca ptr, align 8                     ; 4 uses
  %i.af = alloca double, align 8                  ; 2 uses
  %i.ag = alloca double, align 8                  ; 2 uses
  %i.ah = alloca ptr, align 8                     ; 3 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca double, align 8                  ; 2 uses
  %i.al = alloca double, align 8                  ; 2 uses
  %i.am = alloca ptr, align 8                     ; 3 uses
  %i.an = alloca ptr, align 8                     ; 4 uses
  %i.ao = alloca ptr, align 8                     ; 4 uses
  %i.ap = alloca double, align 8                  ; 2 uses
  %i.aq = alloca double, align 8                  ; 2 uses
  %i.ar = alloca ptr, align 8                     ; 3 uses
  %i.as = alloca ptr, align 8                     ; 4 uses
  %i.at = alloca ptr, align 8                     ; 4 uses
  %i.au = alloca double, align 8                  ; 2 uses
  %i.av = alloca double, align 8                  ; 2 uses
  %i.aw = alloca ptr, align 8                     ; 3 uses
  %i.ax = alloca ptr, align 8                     ; 4 uses
  %i.ay = alloca ptr, align 8                     ; 4 uses
  %i.az = alloca double, align 8                  ; 3 uses
  %i.ba = alloca double, align 8                  ; 3 uses
  %i.bb = alloca ptr, align 8                     ; 3 uses
  %i.bc = alloca ptr, align 8                     ; 4 uses
  %i.bd = alloca ptr, align 8                     ; 4 uses
  %i.be = alloca double, align 8                  ; 2 uses
  %i.bf = alloca double, align 8                  ; 2 uses
  %i.bg = alloca ptr, align 8                     ; 3 uses
  %i.bh = alloca ptr, align 8                     ; 5 uses
  %i.bi = alloca double, align 8                  ; 2 uses
  %i.bj = alloca ptr, align 8                     ; 3 uses
  %i.bk = alloca i32, align 4                     ; 2 uses
  %i.bl = alloca ptr, align 8                     ; 3 uses
  %i.bm = alloca ptr, align 8                     ; 6 uses
  %i.bn = alloca ptr, align 8                     ; 3 uses
  %i.bo = alloca ptr, align 8                     ; 3 uses
  %i.bp = alloca i32, align 4                     ; 3 uses
  %i.bq = alloca i32, align 4                     ; 3 uses
  %i.br = alloca ptr, align 8                     ; 3 uses
  %i.bs = alloca ptr, align 8                     ; 3 uses
  %i.bt = alloca ptr, align 8                     ; 3 uses
  %i.bu = alloca ptr, align 8                     ; 3 uses
  %i.bv = alloca ptr, align 8                     ; 5 uses
  %i.bw = alloca ptr, align 8                     ; 3 uses
  %i.bx = alloca ptr, align 8                     ; 3 uses
  %i.by = alloca i32, align 4                     ; 3 uses
  %i.bz = alloca i32, align 4                     ; 3 uses
  %i.ca = alloca i32, align 4                     ; 3 uses
  %i.cb = alloca ptr, align 8                     ; 10 uses
  %i.cc = alloca i32, align 4                     ; 7 uses
  %i.cd = alloca ptr, align 8                     ; 3 uses
  %i.ce = alloca ptr, align 8                     ; 4 uses
  %i.cf = alloca ptr, align 8                     ; 3 uses
  %i.cg = alloca ptr, align 8                     ; 3 uses
  %i.ch = alloca i32, align 4                     ; 5 uses
  %i.ci = alloca double, align 8                  ; 3 uses
  %i.cj = alloca double, align 8                  ; 5 uses
  %i.ck = alloca double, align 8                  ; 3 uses
  %i.cl = alloca ptr, align 8                     ; 3 uses
  %i.cm = alloca ptr, align 8                     ; 3 uses
  %i.cn = alloca ptr, align 8                     ; 4 uses
  %i.co = alloca ptr, align 8                     ; 4 uses
  %i.cp = alloca ptr, align 8                     ; 5 uses
  %i.cq = alloca ptr, align 8                     ; 3 uses
  %i.cr = alloca ptr, align 8                     ; 10 uses
  %i.cs = alloca ptr, align 8                     ; 3 uses
  %i.ct = alloca ptr, align 8                     ; 3 uses
  %i.cu = alloca ptr, align 8                     ; 3 uses
  %i.cv = alloca ptr, align 8                     ; 3 uses
  %i.cw = alloca ptr, align 8                     ; 3 uses
  %i.cx = alloca ptr, align 8                     ; 3 uses
  %i.cy = alloca ptr, align 8                     ; 3 uses
  %i.cz = alloca ptr, align 8                     ; 3 uses
  %i.da = alloca i32, align 4                     ; 8 uses
  %i.db = alloca i32, align 4                     ; 4 uses
  %i.dc = alloca i32, align 4                     ; 5 uses
  %i.dd = alloca ptr, align 8                     ; 6 uses
  %i.de = alloca ptr, align 8                     ; 4 uses
  %i.df = alloca ptr, align 8                     ; 3 uses
  %i.dg = alloca ptr, align 8                     ; 3 uses
  %i.dh = alloca ptr, align 8                     ; 3 uses
  %i.di = alloca ptr, align 8                     ; 5 uses
  %i.dj = alloca i32, align 4                     ; 3 uses
  %i.dk = alloca i32, align 4                     ; 6 uses
  %i.dl = alloca ptr, align 8                     ; 3 uses
  %i.dm = alloca i32, align 4                     ; 4 uses
  %i.dn = alloca i32, align 4                     ; 8 uses
  %i.do = alloca ptr, align 8                     ; 4 uses
  %i.dp = alloca i32, align 4                     ; 7 uses
  %i.dq = alloca ptr, align 8                     ; 3 uses
  %i.dr = alloca ptr, align 8                     ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i32 1, ptr %i.b, align 4
  br label %bb.b

bb.b:                                             ; preds = %.backedge1, %bb.a
  %i.ds = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ds, i32 0, i32 8
  %i.dt = load ptr, ptr %4, align 8
  store ptr %i.dt, ptr %i.f, align 8
  %i.du = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.lua_State, ptr %i.du, i32 0, i32 7
  %i.dv = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.dv, i32 0, i32 1
  %i.dw = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.dw, i32 0, i32 0
  %i.dx = load ptr, ptr %7, align 8
  store ptr %i.dx, ptr %i.c, align 8
  %i.dy = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.lua_State, ptr %i.dy, i32 0, i32 5
  %i.dz = load ptr, ptr %8, align 8
  store ptr %i.dz, ptr %i.d, align 8
  %i.ea = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.LClosure, ptr %i.ea, i32 0, i32 7
  %i.eb = load ptr, ptr %9, align 8
  %10 = getelementptr inbounds nuw %struct.Proto, ptr %i.eb, i32 0, i32 3
  %i.ec = load ptr, ptr %10, align 8
  store ptr %i.ec, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %i.ed = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ee = getelementptr inbounds nuw i32, ptr %i.ed, i32 1
  store ptr %i.ee, ptr %i.f, align 8
  %i.ef = load i32, ptr %i.ed, align 4
  store i32 %i.ef, ptr %i.g, align 4
  %i.eg = load ptr, ptr %i.d, align 8
  %i.eh = load i32, ptr %i.g, align 4
  %i.ei = lshr i32 %i.eh, 6
  %i.ej = and i32 %i.ei, 255
  %i.ek = zext nneg i32 %i.ej to i64
  %11 = getelementptr inbounds %struct.lua_TValue, ptr %i.eg, i64 %i.ek
  store ptr %11, ptr %i.h, align 8
  %i.el = load i32, ptr %i.g, align 4
  %i.em = lshr i32 %i.el, 0
  %i.en = and i32 %i.em, 63
  switch i32 %i.en, label %bb.ix [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.i
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.s
    i32 8, label %bb.t
    i32 9, label %bb.y
    i32 10, label %bb.af
    i32 11, label %bb.ai
    i32 12, label %bb.am
    i32 13, label %bb.ax
    i32 14, label %bb.bi
    i32 15, label %bb.bt
    i32 16, label %bb.ce
    i32 17, label %bb.cp
    i32 18, label %bb.da
    i32 19, label %bb.de
    i32 20, label %bb.dj
    i32 21, label %bb.dq
    i32 22, label %bb.dt
    i32 23, label %bb.du
    i32 24, label %bb.ef
    i32 25, label %bb.eo
    i32 26, label %bb.ex
    i32 27, label %bb.fe
    i32 28, label %bb.fl
    i32 29, label %bb.ft
    i32 30, label %bb.gf
    i32 31, label %bb.go
    i32 32, label %bb.gt
    i32 33, label %bb.hf
    i32 34, label %bb.hi
    i32 35, label %bb.hz
    i32 36, label %bb.ia
    i32 37, label %bb.ik
  ]

bb.d:                                             ; preds = %bb.c
  %i.eo = load ptr, ptr %i.d, align 8
  %i.ep = load i32, ptr %i.g, align 4
  %i.eq = lshr i32 %i.ep, 23
  %i.er = zext nneg i32 %i.eq to i64
  %12 = getelementptr inbounds %struct.lua_TValue, ptr %i.eo, i64 %i.er
  store ptr %12, ptr %i.i, align 8
  %i.es = load ptr, ptr %i.h, align 8
  store ptr %i.es, ptr %i.j, align 8
  %i.et = load ptr, ptr %i.j, align 8
  %13 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.et, i32 0, i32 0
  %i.eu = load ptr, ptr %i.i, align 8
  %14 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.eu, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 8, i1 false)
  %i.ev = load ptr, ptr %i.i, align 8
  %15 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ev, i32 0, i32 1
  %i.ew = load i32, ptr %15, align 8
  %i.ex = load ptr, ptr %i.j, align 8
  %16 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ex, i32 0, i32 1
  store i32 %i.ew, ptr %16, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.d, %bb.e, %bb.h, %bb.l, %bb.m, %bb.n, %bb.r, %bb.s, %bb.x, %bb.ae, %bb.ah, %bb.al, %bb.aw, %bb.bh, %bb.bs, %bb.cd, %bb.co, %bb.cz, %bb.dd, %bb.di, %bb.dp, %bb.ds, %bb.dt, %bb.ee, %bb.en, %bb.ew, %bb.fd, %bb.fk, %bb.fr, %bb.gd, %bb.gs, %bb.he, %bb.hh, %bb.hy, %bb.hz, %bb.ij, %bb.iw, %bb.ix
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.ey = load ptr, ptr %i.e, align 8
  %i.ez = load i32, ptr %i.g, align 4
  %i.fa = lshr i32 %i.ez, 14
  %i.fb = zext nneg i32 %i.fa to i64
  %17 = getelementptr inbounds %struct.lua_TValue, ptr %i.ey, i64 %i.fb
  store ptr %17, ptr %i.k, align 8
  %i.fc = load ptr, ptr %i.h, align 8
  store ptr %i.fc, ptr %i.l, align 8
  %i.fd = load ptr, ptr %i.l, align 8
  %18 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fd, i32 0, i32 0
  %i.fe = load ptr, ptr %i.k, align 8
  %19 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fe, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %19, i64 8, i1 false)
  %i.ff = load ptr, ptr %i.k, align 8
  %20 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ff, i32 0, i32 1
  %i.fg = load i32, ptr %20, align 8
  %i.fh = load ptr, ptr %i.l, align 8
  %21 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fh, i32 0, i32 1
  store i32 %i.fg, ptr %21, align 8
  br label %.backedge

bb.f:                                             ; preds = %bb.c
  %i.fi = load ptr, ptr %i.h, align 8
  store ptr %i.fi, ptr %i.m, align 8
  %i.fj = load i32, ptr %i.g, align 4
  %i.fk = lshr i32 %i.fj, 23
  %i.fl = load ptr, ptr %i.m, align 8
  %22 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fl, i32 0, i32 0
  store i32 %i.fk, ptr %22, align 8
  %i.fm = load ptr, ptr %i.m, align 8
  %23 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fm, i32 0, i32 1
  store i32 1, ptr %23, align 8
  %i.fn = load i32, ptr %i.g, align 4
  %i.fo = lshr i32 %i.fn, 14
  %i.fp = and i32 %i.fo, 511
  %i.fq = icmp ne i32 %i.fp, 0
  br i1 %i.fq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fr = load ptr, ptr %i.f, align 8
  %i.fs = getelementptr inbounds nuw i32, ptr %i.fr, i32 1
  store ptr %i.fs, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.backedge

bb.i:                                             ; preds = %bb.c
  %i.ft = load ptr, ptr %i.d, align 8
  %i.fu = load i32, ptr %i.g, align 4
  %i.fv = lshr i32 %i.fu, 23
  %i.fw = zext nneg i32 %i.fv to i64
  %24 = getelementptr inbounds %struct.lua_TValue, ptr %i.ft, i64 %i.fw
  store ptr %24, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.fx = load ptr, ptr %i.n, align 8             ; 2 uses
  %25 = getelementptr inbounds %struct.lua_TValue, ptr %i.fx, i32 -1
  store ptr %25, ptr %i.n, align 8
  %26 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.fx, i32 0, i32 1
  store i32 0, ptr %26, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fy = load ptr, ptr %i.n, align 8
  %i.fz = load ptr, ptr %i.h, align 8
  %i.ga = icmp uge ptr %i.fy, %i.fz
  br i1 %i.ga, label %bb.j, label %bb.l, !llvm.loop !27

bb.l:                                             ; preds = %bb.k
  br label %.backedge

bb.m:                                             ; preds = %bb.c
  %i.gb = load i32, ptr %i.g, align 4
  %i.gc = lshr i32 %i.gb, 23
  store i32 %i.gc, ptr %i.o, align 4
  %i.gd = load ptr, ptr %i.c, align 8
  %27 = getelementptr inbounds nuw %struct.LClosure, ptr %i.gd, i32 0, i32 8
  %i.ge = load i32, ptr %i.o, align 4
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [1 x ptr], ptr %27, i64 0, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8
  %28 = getelementptr inbounds nuw %struct.UpVal, ptr %i.gh, i32 0, i32 3
  %i.gi = load ptr, ptr %28, align 8
  store ptr %i.gi, ptr %i.p, align 8
  %i.gj = load ptr, ptr %i.h, align 8
  store ptr %i.gj, ptr %i.q, align 8
  %i.gk = load ptr, ptr %i.q, align 8
  %29 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.gk, i32 0, i32 0
  %i.gl = load ptr, ptr %i.p, align 8
  %30 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.gl, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %29, ptr align 8 %30, i64 8, i1 false)
  %i.gm = load ptr, ptr %i.p, align 8
  %31 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.gm, i32 0, i32 1
  %i.gn = load i32, ptr %31, align 8
  %i.go = load ptr, ptr %i.q, align 8
  %32 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.go, i32 0, i32 1
  store i32 %i.gn, ptr %32, align 8
  br label %.backedge

bb.n:                                             ; preds = %bb.c
  %i.gp = load ptr, ptr %i.e, align 8
  %i.gq = load i32, ptr %i.g, align 4
  %i.gr = lshr i32 %i.gq, 14
  %i.gs = zext nneg i32 %i.gr to i64
  %33 = getelementptr inbounds %struct.lua_TValue, ptr %i.gp, i64 %i.gs
  store ptr %33, ptr %i.r, align 8
  store ptr %2, ptr %i.s, align 8
  %i.gt = load ptr, ptr %i.c, align 8
  %34 = getelementptr inbounds nuw %struct.LClosure, ptr %i.gt, i32 0, i32 6
  %i.gu = load ptr, ptr %34, align 8
  %i.gv = load ptr, ptr %i.s, align 8
  %35 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.gv, i32 0, i32 0
  store ptr %i.gu, ptr %35, align 8
  %i.gw = load ptr, ptr %i.s, align 8
  %36 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.gw, i32 0, i32 1
  store i32 5, ptr %36, align 8
  %i.gx = load ptr, ptr %i.f, align 8
  %i.gy = load ptr, ptr %i.a, align 8
  %37 = getelementptr inbounds nuw %struct.lua_State, ptr %i.gy, i32 0, i32 8
  store ptr %i.gx, ptr %37, align 8
  %i.gz = load ptr, ptr %i.a, align 8
  %i.ha = load ptr, ptr %i.r, align 8
  %i.hb = load ptr, ptr %i.h, align 8
  call void @luaV_gettable(ptr noundef %i.gz, ptr noundef %2, ptr noundef %i.ha, ptr noundef %i.hb)
  %i.hc = load ptr, ptr %i.a, align 8
  %38 = getelementptr inbounds nuw %struct.lua_State, ptr %i.hc, i32 0, i32 5
  %i.hd = load ptr, ptr %38, align 8
  store ptr %i.hd, ptr %i.d, align 8
  br label %.backedge

bb.o:                                             ; preds = %bb.c
  %i.he = load ptr, ptr %i.f, align 8
  %i.hf = load ptr, ptr %i.a, align 8
  %39 = getelementptr inbounds nuw %struct.lua_State, ptr %i.hf, i32 0, i32 8
  store ptr %i.he, ptr %39, align 8
  %i.hg = load ptr, ptr %i.a, align 8
  %i.hh = load ptr, ptr %i.d, align 8
  %i.hi = load i32, ptr %i.g, align 4
  %i.hj = lshr i32 %i.hi, 23
  %i.hk = zext nneg i32 %i.hj to i64
  %40 = getelementptr inbounds %struct.lua_TValue, ptr %i.hh, i64 %i.hk
  %i.hl = load i32, ptr %i.g, align 4
  %i.hm = lshr i32 %i.hl, 14
  %i.hn = and i32 %i.hm, 511
  %i.ho = and i32 %i.hn, 256
  %i.hp = icmp ne i32 %i.ho, 0
  br i1 %i.hp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hq = load ptr, ptr %i.e, align 8
  %i.hr = load i32, ptr %i.g, align 4
  %i.hs = lshr i32 %i.hr, 14
  %i.ht = and i32 %i.hs, 511
  %i.hu = and i32 %i.ht, -257
  %i.hv = zext nneg i32 %i.hu to i64
  %41 = getelementptr inbounds %struct.lua_TValue, ptr %i.hq, i64 %i.hv
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.hw = load ptr, ptr %i.d, align 8
  %i.hx = load i32, ptr %i.g, align 4
  %i.hy = lshr i32 %i.hx, 14
  %i.hz = and i32 %i.hy, 511
  %i.ia = zext nneg i32 %i.hz to i64
  %42 = getelementptr inbounds %struct.lua_TValue, ptr %i.hw, i64 %i.ia
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ib = phi ptr [ %41, %bb.p ], [ %42, %bb.q ]
  %i.ic = load ptr, ptr %i.h, align 8
  call void @luaV_gettable(ptr noundef %i.hg, ptr noundef %40, ptr noundef %i.ib, ptr noundef %i.ic)
  %i.id = load ptr, ptr %i.a, align 8
  %43 = getelementptr inbounds nuw %struct.lua_State, ptr %i.id, i32 0, i32 5
  %i.ie = load ptr, ptr %43, align 8
  store ptr %i.ie, ptr %i.d, align 8
  br label %.backedge

bb.s:                                             ; preds = %bb.c
  store ptr %3, ptr %i.t, align 8
  %i.if = load ptr, ptr %i.c, align 8
  %44 = getelementptr inbounds nuw %struct.LClosure, ptr %i.if, i32 0, i32 6
  %i.ig = load ptr, ptr %44, align 8
  %i.ih = load ptr, ptr %i.t, align 8
  %45 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ih, i32 0, i32 0
  store ptr %i.ig, ptr %45, align 8
  %i.ii = load ptr, ptr %i.t, align 8
  %46 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ii, i32 0, i32 1
  store i32 5, ptr %46, align 8
  %i.ij = load ptr, ptr %i.f, align 8
  %i.ik = load ptr, ptr %i.a, align 8
  %47 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ik, i32 0, i32 8
  store ptr %i.ij, ptr %47, align 8
  %i.il = load ptr, ptr %i.a, align 8
  %i.im = load ptr, ptr %i.e, align 8
  %i.in = load i32, ptr %i.g, align 4
  %i.io = lshr i32 %i.in, 14
  %i.ip = zext nneg i32 %i.io to i64
  %48 = getelementptr inbounds %struct.lua_TValue, ptr %i.im, i64 %i.ip
  %i.iq = load ptr, ptr %i.h, align 8
  call void @luaV_settable(ptr noundef %i.il, ptr noundef %3, ptr noundef %48, ptr noundef %i.iq)
  %i.ir = load ptr, ptr %i.a, align 8
  %49 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ir, i32 0, i32 5
  %i.is = load ptr, ptr %49, align 8
  store ptr %i.is, ptr %i.d, align 8
  br label %.backedge

bb.t:                                             ; preds = %bb.c
  %i.it = load ptr, ptr %i.c, align 8
  %50 = getelementptr inbounds nuw %struct.LClosure, ptr %i.it, i32 0, i32 8
  %i.iu = load i32, ptr %i.g, align 4
  %i.iv = lshr i32 %i.iu, 23
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds [1 x ptr], ptr %50, i64 0, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8
  store ptr %i.iy, ptr %i.u, align 8
  %i.iz = load ptr, ptr %i.h, align 8
  store ptr %i.iz, ptr %i.v, align 8
  %i.ja = load ptr, ptr %i.u, align 8
  %51 = getelementptr inbounds nuw %struct.UpVal, ptr %i.ja, i32 0, i32 3
  %i.jb = load ptr, ptr %51, align 8
  store ptr %i.jb, ptr %i.w, align 8
  %i.jc = load ptr, ptr %i.w, align 8
  %52 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.jc, i32 0, i32 0
  %i.jd = load ptr, ptr %i.v, align 8
  %53 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.jd, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr align 8 %53, i64 8, i1 false)
  %i.je = load ptr, ptr %i.v, align 8
  %54 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.je, i32 0, i32 1
  %i.jf = load i32, ptr %54, align 8
  %i.jg = load ptr, ptr %i.w, align 8
  %55 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.jg, i32 0, i32 1
  store i32 %i.jf, ptr %55, align 8
  %i.jh = load ptr, ptr %i.h, align 8
  %56 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.jh, i32 0, i32 1
  %i.ji = load i32, ptr %56, align 8
  %i.jj = icmp sge i32 %i.ji, 4
  br i1 %i.jj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.jk = load ptr, ptr %i.h, align 8
  %57 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.jk, i32 0, i32 0
  %i.jl = load ptr, ptr %57, align 8
  %58 = getelementptr inbounds nuw %struct.GCheader, ptr %i.jl, i32 0, i32 2
  %i.jm = load i8, ptr %58, align 1
  %i.jn = zext i8 %i.jm to i32
  %i.jo = and i32 %i.jn, 3
  %i.jp = icmp ne i32 %i.jo, 0
  br i1 %i.jp, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.jq = load ptr, ptr %i.u, align 8
  %59 = getelementptr inbounds nuw %struct.GCheader, ptr %i.jq, i32 0, i32 2
  %i.jr = load i8, ptr %59, align 1
  %i.js = zext i8 %i.jr to i32
  %i.jt = and i32 %i.js, 4
  %i.ju = icmp ne i32 %i.jt, 0
  br i1 %i.ju, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jv = load ptr, ptr %i.a, align 8
  %i.jw = load ptr, ptr %i.u, align 8
  %i.jx = load ptr, ptr %i.h, align 8
  %60 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.jx, i32 0, i32 0
  %i.jy = load ptr, ptr %60, align 8
  call void @luaC_barrierf(ptr noundef %i.jv, ptr noundef %i.jw, ptr noundef %i.jy)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  br label %.backedge

bb.y:                                             ; preds = %bb.c
  %i.jz = load ptr, ptr %i.f, align 8
  %i.ka = load ptr, ptr %i.a, align 8
  %61 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ka, i32 0, i32 8
  store ptr %i.jz, ptr %61, align 8
  %i.kb = load ptr, ptr %i.a, align 8
  %i.kc = load ptr, ptr %i.h, align 8
  %i.kd = load i32, ptr %i.g, align 4
  %i.ke = lshr i32 %i.kd, 23
  %i.kf = and i32 %i.ke, 256
  %i.kg = icmp ne i32 %i.kf, 0
  br i1 %i.kg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.kh = load ptr, ptr %i.e, align 8
  %i.ki = load i32, ptr %i.g, align 4
  %i.kj = lshr i32 %i.ki, 23
  %i.kk = and i32 %i.kj, -257
  %i.kl = zext nneg i32 %i.kk to i64
  %62 = getelementptr inbounds %struct.lua_TValue, ptr %i.kh, i64 %i.kl
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.km = load ptr, ptr %i.d, align 8
  %i.kn = load i32, ptr %i.g, align 4
  %i.ko = lshr i32 %i.kn, 23
  %i.kp = zext nneg i32 %i.ko to i64
  %63 = getelementptr inbounds %struct.lua_TValue, ptr %i.km, i64 %i.kp
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.kq = phi ptr [ %62, %bb.z ], [ %63, %bb.aa ]
  %i.kr = load i32, ptr %i.g, align 4
  %i.ks = lshr i32 %i.kr, 14
  %i.kt = and i32 %i.ks, 511
  %i.ku = and i32 %i.kt, 256
  %i.kv = icmp ne i32 %i.ku, 0
  br i1 %i.kv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kw = load ptr, ptr %i.e, align 8
  %i.kx = load i32, ptr %i.g, align 4
  %i.ky = lshr i32 %i.kx, 14
  %i.kz = and i32 %i.ky, 511
  %i.la = and i32 %i.kz, -257
  %i.lb = zext nneg i32 %i.la to i64
  %64 = getelementptr inbounds %struct.lua_TValue, ptr %i.kw, i64 %i.lb
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.lc = load ptr, ptr %i.d, align 8
  %i.ld = load i32, ptr %i.g, align 4
  %i.le = lshr i32 %i.ld, 14
  %i.lf = and i32 %i.le, 511
  %i.lg = zext nneg i32 %i.lf to i64
  %65 = getelementptr inbounds %struct.lua_TValue, ptr %i.lc, i64 %i.lg
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.lh = phi ptr [ %64, %bb.ac ], [ %65, %bb.ad ]
  call void @luaV_settable(ptr noundef %i.kb, ptr noundef %i.kc, ptr noundef %i.kq, ptr noundef %i.lh)
  %i.li = load ptr, ptr %i.a, align 8
  %66 = getelementptr inbounds nuw %struct.lua_State, ptr %i.li, i32 0, i32 5
  %i.lj = load ptr, ptr %66, align 8
  store ptr %i.lj, ptr %i.d, align 8
  br label %.backedge

bb.af:                                            ; preds = %bb.c
  %i.lk = load i32, ptr %i.g, align 4
  %i.ll = lshr i32 %i.lk, 23
  store i32 %i.ll, ptr %i.x, align 4
  %i.lm = load i32, ptr %i.g, align 4
  %i.ln = lshr i32 %i.lm, 14
  %i.lo = and i32 %i.ln, 511
  store i32 %i.lo, ptr %i.y, align 4
  %i.lp = load ptr, ptr %i.h, align 8
  store ptr %i.lp, ptr %i.z, align 8
  %i.lq = load ptr, ptr %i.a, align 8
  %i.lr = load i32, ptr %i.x, align 4
  %i.ls = call i32 @luaO_fb2int(i32 noundef %i.lr)
  %i.lt = load i32, ptr %i.y, align 4
  %i.lu = call i32 @luaO_fb2int(i32 noundef %i.lt)
  %i.lv = call ptr @luaH_new(ptr noundef %i.lq, i32 noundef %i.ls, i32 noundef %i.lu)
  %i.lw = load ptr, ptr %i.z, align 8
  %67 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.lw, i32 0, i32 0
  store ptr %i.lv, ptr %67, align 8
  %i.lx = load ptr, ptr %i.z, align 8
  %68 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.lx, i32 0, i32 1
  store i32 5, ptr %68, align 8
  %i.ly = load ptr, ptr %i.f, align 8
  %i.lz = load ptr, ptr %i.a, align 8
  %69 = getelementptr inbounds nuw %struct.lua_State, ptr %i.lz, i32 0, i32 8
  store ptr %i.ly, ptr %69, align 8
  %i.ma = load ptr, ptr %i.a, align 8
  %70 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ma, i32 0, i32 6
  %i.mb = load ptr, ptr %70, align 8
  %71 = getelementptr inbounds nuw %struct.global_State, ptr %i.mb, i32 0, i32 14
  %i.mc = load i64, ptr %71, align 8
  %i.md = load ptr, ptr %i.a, align 8
  %72 = getelementptr inbounds nuw %struct.lua_State, ptr %i.md, i32 0, i32 6
  %i.me = load ptr, ptr %72, align 8
  %73 = getelementptr inbounds nuw %struct.global_State, ptr %i.me, i32 0, i32 13
  %i.mf = load i64, ptr %73, align 8
  %i.mg = icmp uge i64 %i.mc, %i.mf
  br i1 %i.mg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mh = load ptr, ptr %i.a, align 8
  call void @luaC_step(ptr noundef %i.mh)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mi = load ptr, ptr %i.a, align 8
  %74 = getelementptr inbounds nuw %struct.lua_State, ptr %i.mi, i32 0, i32 5
  %i.mj = load ptr, ptr %74, align 8
  store ptr %i.mj, ptr %i.d, align 8
  br label %.backedge

bb.ai:                                            ; preds = %bb.c
  %i.mk = load ptr, ptr %i.d, align 8
  %i.ml = load i32, ptr %i.g, align 4
  %i.mm = lshr i32 %i.ml, 23
  %i.mn = zext nneg i32 %i.mm to i64
  %75 = getelementptr inbounds %struct.lua_TValue, ptr %i.mk, i64 %i.mn
  store ptr %75, ptr %i.aa, align 8
  %i.mo = load ptr, ptr %i.aa, align 8
  store ptr %i.mo, ptr %i.ab, align 8
  %i.mp = load ptr, ptr %i.h, align 8
  %76 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.mp, i64 1
  store ptr %76, ptr %i.ac, align 8
  %i.mq = load ptr, ptr %i.ac, align 8
  %77 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.mq, i32 0, i32 0
  %i.mr = load ptr, ptr %i.ab, align 8
  %78 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.mr, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %77, ptr align 8 %78, i64 8, i1 false)
  %i.ms = load ptr, ptr %i.ab, align 8
  %79 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ms, i32 0, i32 1
  %i.mt = load i32, ptr %79, align 8
  %i.mu = load ptr, ptr %i.ac, align 8
  %80 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.mu, i32 0, i32 1
  store i32 %i.mt, ptr %80, align 8
  %i.mv = load ptr, ptr %i.f, align 8
  %i.mw = load ptr, ptr %i.a, align 8
  %81 = getelementptr inbounds nuw %struct.lua_State, ptr %i.mw, i32 0, i32 8
  store ptr %i.mv, ptr %81, align 8
  %i.mx = load ptr, ptr %i.a, align 8
  %i.my = load ptr, ptr %i.aa, align 8
  %i.mz = load i32, ptr %i.g, align 4
  %i.na = lshr i32 %i.mz, 14
  %i.nb = and i32 %i.na, 511
  %i.nc = and i32 %i.nb, 256
  %i.nd = icmp ne i32 %i.nc, 0
  br i1 %i.nd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ne = load ptr, ptr %i.e, align 8
  %i.nf = load i32, ptr %i.g, align 4
  %i.ng = lshr i32 %i.nf, 14
  %i.nh = and i32 %i.ng, 511
  %i.ni = and i32 %i.nh, -257
  %i.nj = zext nneg i32 %i.ni to i64
  %82 = getelementptr inbounds %struct.lua_TValue, ptr %i.ne, i64 %i.nj
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.nk = load ptr, ptr %i.d, align 8
  %i.nl = load i32, ptr %i.g, align 4
  %i.nm = lshr i32 %i.nl, 14
  %i.nn = and i32 %i.nm, 511
  %i.no = zext nneg i32 %i.nn to i64
  %83 = getelementptr inbounds %struct.lua_TValue, ptr %i.nk, i64 %i.no
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.np = phi ptr [ %82, %bb.aj ], [ %83, %bb.ak ]
  %i.nq = load ptr, ptr %i.h, align 8
  call void @luaV_gettable(ptr noundef %i.mx, ptr noundef %i.my, ptr noundef %i.np, ptr noundef %i.nq)
  %i.nr = load ptr, ptr %i.a, align 8
  %84 = getelementptr inbounds nuw %struct.lua_State, ptr %i.nr, i32 0, i32 5
  %i.ns = load ptr, ptr %84, align 8
  store ptr %i.ns, ptr %i.d, align 8
  br label %.backedge

bb.am:                                            ; preds = %bb.c
  %i.nt = load i32, ptr %i.g, align 4
  %i.nu = lshr i32 %i.nt, 23
  %i.nv = and i32 %i.nu, 256
  %i.nw = icmp ne i32 %i.nv, 0
  br i1 %i.nw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nx = load ptr, ptr %i.e, align 8
  %i.ny = load i32, ptr %i.g, align 4
  %i.nz = lshr i32 %i.ny, 23
  %i.oa = and i32 %i.nz, -257
  %i.ob = zext nneg i32 %i.oa to i64
  %85 = getelementptr inbounds %struct.lua_TValue, ptr %i.nx, i64 %i.ob
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.oc = load ptr, ptr %i.d, align 8
  %i.od = load i32, ptr %i.g, align 4
  %i.oe = lshr i32 %i.od, 23
  %i.of = zext nneg i32 %i.oe to i64
  %86 = getelementptr inbounds %struct.lua_TValue, ptr %i.oc, i64 %i.of
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.og = phi ptr [ %85, %bb.an ], [ %86, %bb.ao ]
  store ptr %i.og, ptr %i.ad, align 8
  %i.oh = load i32, ptr %i.g, align 4
  %i.oi = lshr i32 %i.oh, 14
  %i.oj = and i32 %i.oi, 511
  %i.ok = and i32 %i.oj, 256
  %i.ol = icmp ne i32 %i.ok, 0
  br i1 %i.ol, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.om = load ptr, ptr %i.e, align 8
  %i.on = load i32, ptr %i.g, align 4
  %i.oo = lshr i32 %i.on, 14
  %i.op = and i32 %i.oo, 511
  %i.oq = and i32 %i.op, -257
  %i.or = zext nneg i32 %i.oq to i64
  %87 = getelementptr inbounds %struct.lua_TValue, ptr %i.om, i64 %i.or
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.os = load ptr, ptr %i.d, align 8
  %i.ot = load i32, ptr %i.g, align 4
  %i.ou = lshr i32 %i.ot, 14
  %i.ov = and i32 %i.ou, 511
  %i.ow = zext nneg i32 %i.ov to i64
  %88 = getelementptr inbounds %struct.lua_TValue, ptr %i.os, i64 %i.ow
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ox = phi ptr [ %87, %bb.aq ], [ %88, %bb.ar ]
  store ptr %i.ox, ptr %i.ae, align 8
  %i.oy = load ptr, ptr %i.ad, align 8
  %89 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.oy, i32 0, i32 1
  %i.oz = load i32, ptr %89, align 8
  %i.pa = icmp eq i32 %i.oz, 3
  br i1 %i.pa, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.pb = load ptr, ptr %i.ae, align 8
  %90 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.pb, i32 0, i32 1
  %i.pc = load i32, ptr %90, align 8
  %i.pd = icmp eq i32 %i.pc, 3
  br i1 %i.pd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.pe = load ptr, ptr %i.ad, align 8
  %91 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.pe, i32 0, i32 0
  %i.pf = load double, ptr %91, align 8
  store double %i.pf, ptr %i.af, align 8
  %i.pg = load ptr, ptr %i.ae, align 8
  %92 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.pg, i32 0, i32 0
  %i.ph = load double, ptr %92, align 8
  store double %i.ph, ptr %i.ag, align 8
  %i.pi = load ptr, ptr %i.h, align 8
  store ptr %i.pi, ptr %i.ah, align 8
  %i.pj = load double, ptr %i.af, align 8
  %i.pk = load double, ptr %i.ag, align 8
  %i.pl = fadd double %i.pj, %i.pk
  %i.pm = load ptr, ptr %i.ah, align 8
  %93 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.pm, i32 0, i32 0
  store double %i.pl, ptr %93, align 8
  %i.pn = load ptr, ptr %i.ah, align 8
  %94 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.pn, i32 0, i32 1
  store i32 3, ptr %94, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.po = load ptr, ptr %i.f, align 8
  %i.pp = load ptr, ptr %i.a, align 8
  %95 = getelementptr inbounds nuw %struct.lua_State, ptr %i.pp, i32 0, i32 8
  store ptr %i.po, ptr %95, align 8
  %i.pq = load ptr, ptr %i.a, align 8
  %i.pr = load ptr, ptr %i.h, align 8
  %i.ps = load ptr, ptr %i.ad, align 8
  %i.pt = load ptr, ptr %i.ae, align 8
  call void @Arith(ptr noundef %i.pq, ptr noundef %i.pr, ptr noundef %i.ps, ptr noundef %i.pt, i32 noundef 5)
  %i.pu = load ptr, ptr %i.a, align 8
  %96 = getelementptr inbounds nuw %struct.lua_State, ptr %i.pu, i32 0, i32 5
  %i.pv = load ptr, ptr %96, align 8
  store ptr %i.pv, ptr %i.d, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  br label %.backedge

bb.ax:                                            ; preds = %bb.c
  %i.pw = load i32, ptr %i.g, align 4
  %i.px = lshr i32 %i.pw, 23
  %i.py = and i32 %i.px, 256
  %i.pz = icmp ne i32 %i.py, 0
  br i1 %i.pz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.qa = load ptr, ptr %i.e, align 8
  %i.qb = load i32, ptr %i.g, align 4
  %i.qc = lshr i32 %i.qb, 23
  %i.qd = and i32 %i.qc, -257
  %i.qe = zext nneg i32 %i.qd to i64
  %97 = getelementptr inbounds %struct.lua_TValue, ptr %i.qa, i64 %i.qe
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.qf = load ptr, ptr %i.d, align 8
  %i.qg = load i32, ptr %i.g, align 4
  %i.qh = lshr i32 %i.qg, 23
  %i.qi = zext nneg i32 %i.qh to i64
  %98 = getelementptr inbounds %struct.lua_TValue, ptr %i.qf, i64 %i.qi
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.qj = phi ptr [ %97, %bb.ay ], [ %98, %bb.az ]
  store ptr %i.qj, ptr %i.ai, align 8
  %i.qk = load i32, ptr %i.g, align 4
  %i.ql = lshr i32 %i.qk, 14
  %i.qm = and i32 %i.ql, 511
  %i.qn = and i32 %i.qm, 256
  %i.qo = icmp ne i32 %i.qn, 0
  br i1 %i.qo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.qp = load ptr, ptr %i.e, align 8
  %i.qq = load i32, ptr %i.g, align 4
  %i.qr = lshr i32 %i.qq, 14
  %i.qs = and i32 %i.qr, 511
  %i.qt = and i32 %i.qs, -257
  %i.qu = zext nneg i32 %i.qt to i64
  %99 = getelementptr inbounds %struct.lua_TValue, ptr %i.qp, i64 %i.qu
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.qv = load ptr, ptr %i.d, align 8
  %i.qw = load i32, ptr %i.g, align 4
  %i.qx = lshr i32 %i.qw, 14
  %i.qy = and i32 %i.qx, 511
  %i.qz = zext nneg i32 %i.qy to i64
  %100 = getelementptr inbounds %struct.lua_TValue, ptr %i.qv, i64 %i.qz
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ra = phi ptr [ %99, %bb.bb ], [ %100, %bb.bc ]
  store ptr %i.ra, ptr %i.aj, align 8
  %i.rb = load ptr, ptr %i.ai, align 8
  %101 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.rb, i32 0, i32 1
  %i.rc = load i32, ptr %101, align 8
  %i.rd = icmp eq i32 %i.rc, 3
  br i1 %i.rd, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.re = load ptr, ptr %i.aj, align 8
  %102 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.re, i32 0, i32 1
  %i.rf = load i32, ptr %102, align 8
  %i.rg = icmp eq i32 %i.rf, 3
  br i1 %i.rg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rh = load ptr, ptr %i.ai, align 8
  %103 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.rh, i32 0, i32 0
  %i.ri = load double, ptr %103, align 8
  store double %i.ri, ptr %i.ak, align 8
  %i.rj = load ptr, ptr %i.aj, align 8
  %104 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.rj, i32 0, i32 0
  %i.rk = load double, ptr %104, align 8
  store double %i.rk, ptr %i.al, align 8
  %i.rl = load ptr, ptr %i.h, align 8
  store ptr %i.rl, ptr %i.am, align 8
  %i.rm = load double, ptr %i.ak, align 8
  %i.rn = load double, ptr %i.al, align 8
  %i.ro = fsub double %i.rm, %i.rn
  %i.rp = load ptr, ptr %i.am, align 8
  %105 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.rp, i32 0, i32 0
  store double %i.ro, ptr %105, align 8
  %i.rq = load ptr, ptr %i.am, align 8
  %106 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.rq, i32 0, i32 1
  store i32 3, ptr %106, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.rr = load ptr, ptr %i.f, align 8
  %i.rs = load ptr, ptr %i.a, align 8
  %107 = getelementptr inbounds nuw %struct.lua_State, ptr %i.rs, i32 0, i32 8
  store ptr %i.rr, ptr %107, align 8
  %i.rt = load ptr, ptr %i.a, align 8
  %i.ru = load ptr, ptr %i.h, align 8
  %i.rv = load ptr, ptr %i.ai, align 8
  %i.rw = load ptr, ptr %i.aj, align 8
  call void @Arith(ptr noundef %i.rt, ptr noundef %i.ru, ptr noundef %i.rv, ptr noundef %i.rw, i32 noundef 6)
  %i.rx = load ptr, ptr %i.a, align 8
  %108 = getelementptr inbounds nuw %struct.lua_State, ptr %i.rx, i32 0, i32 5
  %i.ry = load ptr, ptr %108, align 8
  store ptr %i.ry, ptr %i.d, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br label %.backedge

bb.bi:                                            ; preds = %bb.c
  %i.rz = load i32, ptr %i.g, align 4
  %i.sa = lshr i32 %i.rz, 23
  %i.sb = and i32 %i.sa, 256
  %i.sc = icmp ne i32 %i.sb, 0
  br i1 %i.sc, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.sd = load ptr, ptr %i.e, align 8
  %i.se = load i32, ptr %i.g, align 4
  %i.sf = lshr i32 %i.se, 23
  %i.sg = and i32 %i.sf, -257
  %i.sh = zext nneg i32 %i.sg to i64
  %109 = getelementptr inbounds %struct.lua_TValue, ptr %i.sd, i64 %i.sh
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.si = load ptr, ptr %i.d, align 8
  %i.sj = load i32, ptr %i.g, align 4
  %i.sk = lshr i32 %i.sj, 23
  %i.sl = zext nneg i32 %i.sk to i64
  %110 = getelementptr inbounds %struct.lua_TValue, ptr %i.si, i64 %i.sl
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.sm = phi ptr [ %109, %bb.bj ], [ %110, %bb.bk ]
  store ptr %i.sm, ptr %i.an, align 8
  %i.sn = load i32, ptr %i.g, align 4
  %i.so = lshr i32 %i.sn, 14
  %i.sp = and i32 %i.so, 511
  %i.sq = and i32 %i.sp, 256
  %i.sr = icmp ne i32 %i.sq, 0
  br i1 %i.sr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ss = load ptr, ptr %i.e, align 8
  %i.st = load i32, ptr %i.g, align 4
  %i.su = lshr i32 %i.st, 14
  %i.sv = and i32 %i.su, 511
  %i.sw = and i32 %i.sv, -257
  %i.sx = zext nneg i32 %i.sw to i64
  %111 = getelementptr inbounds %struct.lua_TValue, ptr %i.ss, i64 %i.sx
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.sy = load ptr, ptr %i.d, align 8
  %i.sz = load i32, ptr %i.g, align 4
  %i.ta = lshr i32 %i.sz, 14
  %i.tb = and i32 %i.ta, 511
  %i.tc = zext nneg i32 %i.tb to i64
  %112 = getelementptr inbounds %struct.lua_TValue, ptr %i.sy, i64 %i.tc
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.td = phi ptr [ %111, %bb.bm ], [ %112, %bb.bn ]
  store ptr %i.td, ptr %i.ao, align 8
  %i.te = load ptr, ptr %i.an, align 8
  %113 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.te, i32 0, i32 1
  %i.tf = load i32, ptr %113, align 8
  %i.tg = icmp eq i32 %i.tf, 3
  br i1 %i.tg, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.th = load ptr, ptr %i.ao, align 8
  %114 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.th, i32 0, i32 1
  %i.ti = load i32, ptr %114, align 8
  %i.tj = icmp eq i32 %i.ti, 3
  br i1 %i.tj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.tk = load ptr, ptr %i.an, align 8
  %115 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.tk, i32 0, i32 0
  %i.tl = load double, ptr %115, align 8
  store double %i.tl, ptr %i.ap, align 8
  %i.tm = load ptr, ptr %i.ao, align 8
  %116 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.tm, i32 0, i32 0
  %i.tn = load double, ptr %116, align 8
  store double %i.tn, ptr %i.aq, align 8
  %i.to = load ptr, ptr %i.h, align 8
  store ptr %i.to, ptr %i.ar, align 8
  %i.tp = load double, ptr %i.ap, align 8
  %i.tq = load double, ptr %i.aq, align 8
  %i.tr = fmul double %i.tp, %i.tq
  %i.ts = load ptr, ptr %i.ar, align 8
  %117 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ts, i32 0, i32 0
  store double %i.tr, ptr %117, align 8
  %i.tt = load ptr, ptr %i.ar, align 8
  %118 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.tt, i32 0, i32 1
  store i32 3, ptr %118, align 8
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %i.tu = load ptr, ptr %i.f, align 8
  %i.tv = load ptr, ptr %i.a, align 8
  %119 = getelementptr inbounds nuw %struct.lua_State, ptr %i.tv, i32 0, i32 8
  store ptr %i.tu, ptr %119, align 8
  %i.tw = load ptr, ptr %i.a, align 8
  %i.tx = load ptr, ptr %i.h, align 8
  %i.ty = load ptr, ptr %i.an, align 8
  %i.tz = load ptr, ptr %i.ao, align 8
  call void @Arith(ptr noundef %i.tw, ptr noundef %i.tx, ptr noundef %i.ty, ptr noundef %i.tz, i32 noundef 7)
  %i.ua = load ptr, ptr %i.a, align 8
  %120 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ua, i32 0, i32 5
  %i.ub = load ptr, ptr %120, align 8
  store ptr %i.ub, ptr %i.d, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  br label %.backedge

bb.bt:                                            ; preds = %bb.c
  %i.uc = load i32, ptr %i.g, align 4
  %i.ud = lshr i32 %i.uc, 23
  %i.ue = and i32 %i.ud, 256
  %i.uf = icmp ne i32 %i.ue, 0
  br i1 %i.uf, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ug = load ptr, ptr %i.e, align 8
  %i.uh = load i32, ptr %i.g, align 4
  %i.ui = lshr i32 %i.uh, 23
  %i.uj = and i32 %i.ui, -257
  %i.uk = zext nneg i32 %i.uj to i64
  %121 = getelementptr inbounds %struct.lua_TValue, ptr %i.ug, i64 %i.uk
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ul = load ptr, ptr %i.d, align 8
  %i.um = load i32, ptr %i.g, align 4
  %i.un = lshr i32 %i.um, 23
  %i.uo = zext nneg i32 %i.un to i64
  %122 = getelementptr inbounds %struct.lua_TValue, ptr %i.ul, i64 %i.uo
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.up = phi ptr [ %121, %bb.bu ], [ %122, %bb.bv ]
  store ptr %i.up, ptr %i.as, align 8
  %i.uq = load i32, ptr %i.g, align 4
  %i.ur = lshr i32 %i.uq, 14
  %i.us = and i32 %i.ur, 511
  %i.ut = and i32 %i.us, 256
  %i.uu = icmp ne i32 %i.ut, 0
  br i1 %i.uu, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.uv = load ptr, ptr %i.e, align 8
  %i.uw = load i32, ptr %i.g, align 4
  %i.ux = lshr i32 %i.uw, 14
  %i.uy = and i32 %i.ux, 511
  %i.uz = and i32 %i.uy, -257
  %i.va = zext nneg i32 %i.uz to i64
  %123 = getelementptr inbounds %struct.lua_TValue, ptr %i.uv, i64 %i.va
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.vb = load ptr, ptr %i.d, align 8
  %i.vc = load i32, ptr %i.g, align 4
  %i.vd = lshr i32 %i.vc, 14
  %i.ve = and i32 %i.vd, 511
  %i.vf = zext nneg i32 %i.ve to i64
  %124 = getelementptr inbounds %struct.lua_TValue, ptr %i.vb, i64 %i.vf
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.vg = phi ptr [ %123, %bb.bx ], [ %124, %bb.by ]
  store ptr %i.vg, ptr %i.at, align 8
  %i.vh = load ptr, ptr %i.as, align 8
  %125 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.vh, i32 0, i32 1
  %i.vi = load i32, ptr %125, align 8
  %i.vj = icmp eq i32 %i.vi, 3
  br i1 %i.vj, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.vk = load ptr, ptr %i.at, align 8
  %126 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.vk, i32 0, i32 1
  %i.vl = load i32, ptr %126, align 8
  %i.vm = icmp eq i32 %i.vl, 3
  br i1 %i.vm, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.vn = load ptr, ptr %i.as, align 8
  %127 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.vn, i32 0, i32 0
  %i.vo = load double, ptr %127, align 8
  store double %i.vo, ptr %i.au, align 8
  %i.vp = load ptr, ptr %i.at, align 8
  %128 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.vp, i32 0, i32 0
  %i.vq = load double, ptr %128, align 8
  store double %i.vq, ptr %i.av, align 8
  %i.vr = load ptr, ptr %i.h, align 8
  store ptr %i.vr, ptr %i.aw, align 8
  %i.vs = load double, ptr %i.au, align 8
  %i.vt = load double, ptr %i.av, align 8
  %i.vu = fdiv double %i.vs, %i.vt
  %i.vv = load ptr, ptr %i.aw, align 8
  %129 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.vv, i32 0, i32 0
  store double %i.vu, ptr %129, align 8
  %i.vw = load ptr, ptr %i.aw, align 8
  %130 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.vw, i32 0, i32 1
  store i32 3, ptr %130, align 8
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %i.vx = load ptr, ptr %i.f, align 8
  %i.vy = load ptr, ptr %i.a, align 8
  %131 = getelementptr inbounds nuw %struct.lua_State, ptr %i.vy, i32 0, i32 8
  store ptr %i.vx, ptr %131, align 8
  %i.vz = load ptr, ptr %i.a, align 8
  %i.wa = load ptr, ptr %i.h, align 8
  %i.wb = load ptr, ptr %i.as, align 8
  %i.wc = load ptr, ptr %i.at, align 8
  call void @Arith(ptr noundef %i.vz, ptr noundef %i.wa, ptr noundef %i.wb, ptr noundef %i.wc, i32 noundef 8)
  %i.wd = load ptr, ptr %i.a, align 8
  %132 = getelementptr inbounds nuw %struct.lua_State, ptr %i.wd, i32 0, i32 5
  %i.we = load ptr, ptr %132, align 8
  store ptr %i.we, ptr %i.d, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br label %.backedge

bb.ce:                                            ; preds = %bb.c
  %i.wf = load i32, ptr %i.g, align 4
  %i.wg = lshr i32 %i.wf, 23
  %i.wh = and i32 %i.wg, 256
  %i.wi = icmp ne i32 %i.wh, 0
  br i1 %i.wi, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.wj = load ptr, ptr %i.e, align 8
  %i.wk = load i32, ptr %i.g, align 4
  %i.wl = lshr i32 %i.wk, 23
  %i.wm = and i32 %i.wl, -257
  %i.wn = zext nneg i32 %i.wm to i64
  %133 = getelementptr inbounds %struct.lua_TValue, ptr %i.wj, i64 %i.wn
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.wo = load ptr, ptr %i.d, align 8
  %i.wp = load i32, ptr %i.g, align 4
  %i.wq = lshr i32 %i.wp, 23
  %i.wr = zext nneg i32 %i.wq to i64
  %134 = getelementptr inbounds %struct.lua_TValue, ptr %i.wo, i64 %i.wr
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.ws = phi ptr [ %133, %bb.cf ], [ %134, %bb.cg ]
  store ptr %i.ws, ptr %i.ax, align 8
  %i.wt = load i32, ptr %i.g, align 4
  %i.wu = lshr i32 %i.wt, 14
  %i.wv = and i32 %i.wu, 511
  %i.ww = and i32 %i.wv, 256
  %i.wx = icmp ne i32 %i.ww, 0
  br i1 %i.wx, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.wy = load ptr, ptr %i.e, align 8
  %i.wz = load i32, ptr %i.g, align 4
  %i.xa = lshr i32 %i.wz, 14
  %i.xb = and i32 %i.xa, 511
  %i.xc = and i32 %i.xb, -257
  %i.xd = zext nneg i32 %i.xc to i64
  %135 = getelementptr inbounds %struct.lua_TValue, ptr %i.wy, i64 %i.xd
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.xe = load ptr, ptr %i.d, align 8
  %i.xf = load i32, ptr %i.g, align 4
  %i.xg = lshr i32 %i.xf, 14
  %i.xh = and i32 %i.xg, 511
  %i.xi = zext nneg i32 %i.xh to i64
  %136 = getelementptr inbounds %struct.lua_TValue, ptr %i.xe, i64 %i.xi
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.xj = phi ptr [ %135, %bb.ci ], [ %136, %bb.cj ]
  store ptr %i.xj, ptr %i.ay, align 8
  %i.xk = load ptr, ptr %i.ax, align 8
  %137 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.xk, i32 0, i32 1
  %i.xl = load i32, ptr %137, align 8
  %i.xm = icmp eq i32 %i.xl, 3
  br i1 %i.xm, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.xn = load ptr, ptr %i.ay, align 8
  %138 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.xn, i32 0, i32 1
  %i.xo = load i32, ptr %138, align 8
  %i.xp = icmp eq i32 %i.xo, 3
  br i1 %i.xp, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xq = load ptr, ptr %i.ax, align 8
  %139 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.xq, i32 0, i32 0
  %i.xr = load double, ptr %139, align 8
  store double %i.xr, ptr %i.az, align 8
  %i.xs = load ptr, ptr %i.ay, align 8
  %140 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.xs, i32 0, i32 0
  %i.xt = load double, ptr %140, align 8
  store double %i.xt, ptr %i.ba, align 8
  %i.xu = load ptr, ptr %i.h, align 8
  store ptr %i.xu, ptr %i.bb, align 8
  %i.xv = load double, ptr %i.az, align 8
  %i.xw = load double, ptr %i.az, align 8
  %i.xx = load double, ptr %i.ba, align 8
  %i.xy = fdiv double %i.xw, %i.xx
  %i.xz = call double @llvm.floor.f64(double %i.xy)
  %i.ya = load double, ptr %i.ba, align 8
  %i.yb = fneg double %i.xz
  %i.yc = call double @llvm.fmuladd.f64(double %i.yb, double %i.ya, double %i.xv)
  %i.yd = load ptr, ptr %i.bb, align 8
  %141 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.yd, i32 0, i32 0
  store double %i.yc, ptr %141, align 8
  %i.ye = load ptr, ptr %i.bb, align 8
  %142 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ye, i32 0, i32 1
  store i32 3, ptr %142, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl, %bb.ck
  %i.yf = load ptr, ptr %i.f, align 8
  %i.yg = load ptr, ptr %i.a, align 8
  %143 = getelementptr inbounds nuw %struct.lua_State, ptr %i.yg, i32 0, i32 8
  store ptr %i.yf, ptr %143, align 8
  %i.yh = load ptr, ptr %i.a, align 8
  %i.yi = load ptr, ptr %i.h, align 8
  %i.yj = load ptr, ptr %i.ax, align 8
  %i.yk = load ptr, ptr %i.ay, align 8
  call void @Arith(ptr noundef %i.yh, ptr noundef %i.yi, ptr noundef %i.yj, ptr noundef %i.yk, i32 noundef 9)
  %i.yl = load ptr, ptr %i.a, align 8
  %144 = getelementptr inbounds nuw %struct.lua_State, ptr %i.yl, i32 0, i32 5
  %i.ym = load ptr, ptr %144, align 8
  store ptr %i.ym, ptr %i.d, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br label %.backedge

bb.cp:                                            ; preds = %bb.c
  %i.yn = load i32, ptr %i.g, align 4
  %i.yo = lshr i32 %i.yn, 23
  %i.yp = and i32 %i.yo, 256
  %i.yq = icmp ne i32 %i.yp, 0
  br i1 %i.yq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.yr = load ptr, ptr %i.e, align 8
  %i.ys = load i32, ptr %i.g, align 4
  %i.yt = lshr i32 %i.ys, 23
  %i.yu = and i32 %i.yt, -257
  %i.yv = zext nneg i32 %i.yu to i64
  %145 = getelementptr inbounds %struct.lua_TValue, ptr %i.yr, i64 %i.yv
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.yw = load ptr, ptr %i.d, align 8
  %i.yx = load i32, ptr %i.g, align 4
  %i.yy = lshr i32 %i.yx, 23
  %i.yz = zext nneg i32 %i.yy to i64
  %146 = getelementptr inbounds %struct.lua_TValue, ptr %i.yw, i64 %i.yz
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.za = phi ptr [ %145, %bb.cq ], [ %146, %bb.cr ]
  store ptr %i.za, ptr %i.bc, align 8
  %i.zb = load i32, ptr %i.g, align 4
  %i.zc = lshr i32 %i.zb, 14
  %i.zd = and i32 %i.zc, 511
  %i.ze = and i32 %i.zd, 256
  %i.zf = icmp ne i32 %i.ze, 0
  br i1 %i.zf, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.zg = load ptr, ptr %i.e, align 8
  %i.zh = load i32, ptr %i.g, align 4
  %i.zi = lshr i32 %i.zh, 14
  %i.zj = and i32 %i.zi, 511
  %i.zk = and i32 %i.zj, -257
  %i.zl = zext nneg i32 %i.zk to i64
  %147 = getelementptr inbounds %struct.lua_TValue, ptr %i.zg, i64 %i.zl
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.zm = load ptr, ptr %i.d, align 8
  %i.zn = load i32, ptr %i.g, align 4
  %i.zo = lshr i32 %i.zn, 14
  %i.zp = and i32 %i.zo, 511
  %i.zq = zext nneg i32 %i.zp to i64
  %148 = getelementptr inbounds %struct.lua_TValue, ptr %i.zm, i64 %i.zq
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.zr = phi ptr [ %147, %bb.ct ], [ %148, %bb.cu ]
  store ptr %i.zr, ptr %i.bd, align 8
  %i.zs = load ptr, ptr %i.bc, align 8
  %149 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.zs, i32 0, i32 1
  %i.zt = load i32, ptr %149, align 8
  %i.zu = icmp eq i32 %i.zt, 3
  br i1 %i.zu, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.zv = load ptr, ptr %i.bd, align 8
  %150 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.zv, i32 0, i32 1
  %i.zw = load i32, ptr %150, align 8
  %i.zx = icmp eq i32 %i.zw, 3
  br i1 %i.zx, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.zy = load ptr, ptr %i.bc, align 8
  %151 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.zy, i32 0, i32 0
  %i.zz = load double, ptr %151, align 8
  store double %i.zz, ptr %i.be, align 8
  %i.aaa = load ptr, ptr %i.bd, align 8
  %152 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aaa, i32 0, i32 0
  %i.aab = load double, ptr %152, align 8
  store double %i.aab, ptr %i.bf, align 8
  %i.aac = load ptr, ptr %i.h, align 8
  store ptr %i.aac, ptr %i.bg, align 8
  %i.aad = load double, ptr %i.be, align 8
  %i.aae = load double, ptr %i.bf, align 8
  %i.aaf = call double @pow(double noundef %i.aad, double noundef %i.aae) #21
  %i.aag = load ptr, ptr %i.bg, align 8
  %153 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aag, i32 0, i32 0
  store double %i.aaf, ptr %153, align 8
  %i.aah = load ptr, ptr %i.bg, align 8
  %154 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aah, i32 0, i32 1
  store i32 3, ptr %154, align 8
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %bb.cv
  %i.aai = load ptr, ptr %i.f, align 8
  %i.aaj = load ptr, ptr %i.a, align 8
  %155 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aaj, i32 0, i32 8
  store ptr %i.aai, ptr %155, align 8
  %i.aak = load ptr, ptr %i.a, align 8
  %i.aal = load ptr, ptr %i.h, align 8
  %i.aam = load ptr, ptr %i.bc, align 8
  %i.aan = load ptr, ptr %i.bd, align 8
  call void @Arith(ptr noundef %i.aak, ptr noundef %i.aal, ptr noundef %i.aam, ptr noundef %i.aan, i32 noundef 10)
  %i.aao = load ptr, ptr %i.a, align 8
  %156 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aao, i32 0, i32 5
  %i.aap = load ptr, ptr %156, align 8
  store ptr %i.aap, ptr %i.d, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br label %.backedge

bb.da:                                            ; preds = %bb.c
  %i.aaq = load ptr, ptr %i.d, align 8
  %i.aar = load i32, ptr %i.g, align 4
  %i.aas = lshr i32 %i.aar, 23
  %i.aat = zext nneg i32 %i.aas to i64
  %157 = getelementptr inbounds %struct.lua_TValue, ptr %i.aaq, i64 %i.aat
  store ptr %157, ptr %i.bh, align 8
  %i.aau = load ptr, ptr %i.bh, align 8
  %158 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aau, i32 0, i32 1
  %i.aav = load i32, ptr %158, align 8
  %i.aaw = icmp eq i32 %i.aav, 3
  br i1 %i.aaw, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aax = load ptr, ptr %i.bh, align 8
  %159 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aax, i32 0, i32 0
  %i.aay = load double, ptr %159, align 8
  store double %i.aay, ptr %i.bi, align 8
  %i.aaz = load ptr, ptr %i.h, align 8
  store ptr %i.aaz, ptr %i.bj, align 8
  %i.aba = load double, ptr %i.bi, align 8
  %i.abb = fneg double %i.aba
  %i.abc = load ptr, ptr %i.bj, align 8
  %160 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.abc, i32 0, i32 0
  store double %i.abb, ptr %160, align 8
  %i.abd = load ptr, ptr %i.bj, align 8
  %161 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.abd, i32 0, i32 1
  store i32 3, ptr %161, align 8
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.abe = load ptr, ptr %i.f, align 8
  %i.abf = load ptr, ptr %i.a, align 8
  %162 = getelementptr inbounds nuw %struct.lua_State, ptr %i.abf, i32 0, i32 8
  store ptr %i.abe, ptr %162, align 8
  %i.abg = load ptr, ptr %i.a, align 8
  %i.abh = load ptr, ptr %i.h, align 8
  %i.abi = load ptr, ptr %i.bh, align 8
  %i.abj = load ptr, ptr %i.bh, align 8
  call void @Arith(ptr noundef %i.abg, ptr noundef %i.abh, ptr noundef %i.abi, ptr noundef %i.abj, i32 noundef 11)
  %i.abk = load ptr, ptr %i.a, align 8
  %163 = getelementptr inbounds nuw %struct.lua_State, ptr %i.abk, i32 0, i32 5
  %i.abl = load ptr, ptr %163, align 8
  store ptr %i.abl, ptr %i.d, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  br label %.backedge

bb.de:                                            ; preds = %bb.c
  %i.abm = load ptr, ptr %i.d, align 8
  %i.abn = load i32, ptr %i.g, align 4
  %i.abo = lshr i32 %i.abn, 23
  %i.abp = zext nneg i32 %i.abo to i64
  %164 = getelementptr inbounds %struct.lua_TValue, ptr %i.abm, i64 %i.abp
  %165 = getelementptr inbounds nuw %struct.lua_TValue, ptr %164, i32 0, i32 1
  %i.abq = load i32, ptr %165, align 8
  %i.abr = icmp eq i32 %i.abq, 0
  br i1 %i.abr, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.abs = load ptr, ptr %i.d, align 8
  %i.abt = load i32, ptr %i.g, align 4
  %i.abu = lshr i32 %i.abt, 23
  %i.abv = zext nneg i32 %i.abu to i64
  %166 = getelementptr inbounds %struct.lua_TValue, ptr %i.abs, i64 %i.abv
  %167 = getelementptr inbounds nuw %struct.lua_TValue, ptr %166, i32 0, i32 1
  %i.abw = load i32, ptr %167, align 8
  %i.abx = icmp eq i32 %i.abw, 1
  br i1 %i.abx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.aby = load ptr, ptr %i.d, align 8
  %i.abz = load i32, ptr %i.g, align 4
  %i.aca = lshr i32 %i.abz, 23
  %i.acb = zext nneg i32 %i.aca to i64
  %168 = getelementptr inbounds %struct.lua_TValue, ptr %i.aby, i64 %i.acb
  %169 = getelementptr inbounds nuw %struct.lua_TValue, ptr %168, i32 0, i32 0
  %i.acc = load i32, ptr %169, align 8
  %i.acd = icmp eq i32 %i.acc, 0
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.ace = phi i1 [ false, %bb.df ], [ %i.acd, %bb.dg ]
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.de
  %i.acf = phi i1 [ true, %bb.de ], [ %i.ace, %bb.dh ]
  %i.acg = zext i1 %i.acf to i32
  store i32 %i.acg, ptr %i.bk, align 4
  %i.ach = load ptr, ptr %i.h, align 8
  store ptr %i.ach, ptr %i.bl, align 8
  %i.aci = load i32, ptr %i.bk, align 4
  %i.acj = load ptr, ptr %i.bl, align 8
  %170 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.acj, i32 0, i32 0
  store i32 %i.aci, ptr %170, align 8
  %i.ack = load ptr, ptr %i.bl, align 8
  %171 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ack, i32 0, i32 1
  store i32 1, ptr %171, align 8
  br label %.backedge

bb.dj:                                            ; preds = %bb.c
  %i.acl = load ptr, ptr %i.d, align 8
  %i.acm = load i32, ptr %i.g, align 4
  %i.acn = lshr i32 %i.acm, 23
  %i.aco = zext nneg i32 %i.acn to i64
  %172 = getelementptr inbounds %struct.lua_TValue, ptr %i.acl, i64 %i.aco
  store ptr %172, ptr %i.bm, align 8
  %i.acp = load ptr, ptr %i.bm, align 8
  %173 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.acp, i32 0, i32 1
  %i.acq = load i32, ptr %173, align 8
  switch i32 %i.acq, label %bb.dm [
    i32 5, label %bb.dk
    i32 4, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.acr = load ptr, ptr %i.h, align 8
  store ptr %i.acr, ptr %i.bn, align 8
  %i.acs = load ptr, ptr %i.bm, align 8
  %174 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.acs, i32 0, i32 0
  %i.act = load ptr, ptr %174, align 8
  %i.acu = call i32 @luaH_getn(ptr noundef %i.act)
  %i.acv = sitofp i32 %i.acu to double
  %i.acw = load ptr, ptr %i.bn, align 8
  %175 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.acw, i32 0, i32 0
  store double %i.acv, ptr %175, align 8
  %i.acx = load ptr, ptr %i.bn, align 8
  %176 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.acx, i32 0, i32 1
  store i32 3, ptr %176, align 8
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dj
  %i.acy = load ptr, ptr %i.h, align 8
  store ptr %i.acy, ptr %i.bo, align 8
  %i.acz = load ptr, ptr %i.bm, align 8
  %177 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.acz, i32 0, i32 0
  %i.ada = load ptr, ptr %177, align 8
  %178 = getelementptr inbounds nuw %struct.anon.0, ptr %i.ada, i32 0, i32 5
  %i.adb = load i64, ptr %178, align 8
  %i.adc = uitofp i64 %i.adb to double
  %i.add = load ptr, ptr %i.bo, align 8
  %179 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.add, i32 0, i32 0
  store double %i.adc, ptr %179, align 8
  %i.ade = load ptr, ptr %i.bo, align 8
  %180 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ade, i32 0, i32 1
  store i32 3, ptr %180, align 8
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dj
  %i.adf = load ptr, ptr %i.f, align 8
  %i.adg = load ptr, ptr %i.a, align 8
  %181 = getelementptr inbounds nuw %struct.lua_State, ptr %i.adg, i32 0, i32 8
  store ptr %i.adf, ptr %181, align 8
  %i.adh = load ptr, ptr %i.a, align 8
  %i.adi = load ptr, ptr %i.bm, align 8
  %i.adj = load ptr, ptr %i.h, align 8
  %i.adk = call i32 @call_binTM(ptr noundef %i.adh, ptr noundef %i.adi, ptr noundef @luaO_nilobject_, ptr noundef %i.adj, i32 noundef 12)
  %i.adl = icmp ne i32 %i.adk, 0
  br i1 %i.adl, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.adm = load ptr, ptr %i.a, align 8
  %i.adn = load ptr, ptr %i.bm, align 8
  call void @luaG_typeerror(ptr noundef %i.adm, ptr noundef %i.adn, ptr noundef @.str.33)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ado = load ptr, ptr %i.a, align 8
  %182 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ado, i32 0, i32 5
  %i.adp = load ptr, ptr %182, align 8
  store ptr %i.adp, ptr %i.d, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dl, %bb.dk
  br label %.backedge

bb.dq:                                            ; preds = %bb.c
  %i.adq = load i32, ptr %i.g, align 4
  %i.adr = lshr i32 %i.adq, 23
  store i32 %i.adr, ptr %i.bp, align 4
  %i.ads = load i32, ptr %i.g, align 4
  %i.adt = lshr i32 %i.ads, 14
  %i.adu = and i32 %i.adt, 511
  store i32 %i.adu, ptr %i.bq, align 4
  %i.adv = load ptr, ptr %i.f, align 8
  %i.adw = load ptr, ptr %i.a, align 8
  %183 = getelementptr inbounds nuw %struct.lua_State, ptr %i.adw, i32 0, i32 8
  store ptr %i.adv, ptr %183, align 8
  %i.adx = load ptr, ptr %i.a, align 8
  %i.ady = load i32, ptr %i.bq, align 4
  %i.adz = load i32, ptr %i.bp, align 4
  %i.aea = sub nsw i32 %i.ady, %i.adz
  %i.aeb = add nsw i32 %i.aea, 1
  %i.aec = load i32, ptr %i.bq, align 4
  call void @luaV_concat(ptr noundef %i.adx, i32 noundef %i.aeb, i32 noundef %i.aec)
  %i.aed = load ptr, ptr %i.a, align 8
  %184 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aed, i32 0, i32 6
  %i.aee = load ptr, ptr %184, align 8
  %185 = getelementptr inbounds nuw %struct.global_State, ptr %i.aee, i32 0, i32 14
  %i.aef = load i64, ptr %185, align 8
  %i.aeg = load ptr, ptr %i.a, align 8
  %186 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aeg, i32 0, i32 6
  %i.aeh = load ptr, ptr %186, align 8
  %187 = getelementptr inbounds nuw %struct.global_State, ptr %i.aeh, i32 0, i32 13
  %i.aei = load i64, ptr %187, align 8
  %i.aej = icmp uge i64 %i.aef, %i.aei
  br i1 %i.aej, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.aek = load ptr, ptr %i.a, align 8
  call void @luaC_step(ptr noundef %i.aek)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.ael = load ptr, ptr %i.a, align 8
  %188 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ael, i32 0, i32 5
  %i.aem = load ptr, ptr %188, align 8
  store ptr %i.aem, ptr %i.d, align 8
  %i.aen = load ptr, ptr %i.d, align 8
  %i.aeo = load i32, ptr %i.bp, align 4
  %i.aep = sext i32 %i.aeo to i64
  %189 = getelementptr inbounds %struct.lua_TValue, ptr %i.aen, i64 %i.aep
  store ptr %189, ptr %i.br, align 8
  %i.aeq = load ptr, ptr %i.d, align 8
  %i.aer = load i32, ptr %i.g, align 4
  %i.aes = lshr i32 %i.aer, 6
  %i.aet = and i32 %i.aes, 255
  %i.aeu = zext nneg i32 %i.aet to i64
  %190 = getelementptr inbounds %struct.lua_TValue, ptr %i.aeq, i64 %i.aeu
  store ptr %190, ptr %i.bs, align 8
  %i.aev = load ptr, ptr %i.bs, align 8
  %191 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aev, i32 0, i32 0
  %i.aew = load ptr, ptr %i.br, align 8
  %192 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aew, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %191, ptr align 8 %192, i64 8, i1 false)
  %i.aex = load ptr, ptr %i.br, align 8
  %193 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aex, i32 0, i32 1
  %i.aey = load i32, ptr %193, align 8
  %i.aez = load ptr, ptr %i.bs, align 8
  %194 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aez, i32 0, i32 1
  store i32 %i.aey, ptr %194, align 8
  br label %.backedge

bb.dt:                                            ; preds = %bb.c
  %i.afa = load i32, ptr %i.g, align 4
  %i.afb = lshr i32 %i.afa, 14
  %i.afc = sub nsw i32 %i.afb, 131071
  %i.afd = load ptr, ptr %i.f, align 8
  %i.afe = sext i32 %i.afc to i64
  %i.aff = getelementptr inbounds i32, ptr %i.afd, i64 %i.afe
  store ptr %i.aff, ptr %i.f, align 8
  br label %.backedge

bb.du:                                            ; preds = %bb.c
  %i.afg = load i32, ptr %i.g, align 4
  %i.afh = lshr i32 %i.afg, 23
  %i.afi = and i32 %i.afh, 256
  %i.afj = icmp ne i32 %i.afi, 0
  br i1 %i.afj, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.afk = load ptr, ptr %i.e, align 8
  %i.afl = load i32, ptr %i.g, align 4
  %i.afm = lshr i32 %i.afl, 23
  %i.afn = and i32 %i.afm, -257
  %i.afo = zext nneg i32 %i.afn to i64
  %195 = getelementptr inbounds %struct.lua_TValue, ptr %i.afk, i64 %i.afo
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.afp = load ptr, ptr %i.d, align 8
  %i.afq = load i32, ptr %i.g, align 4
  %i.afr = lshr i32 %i.afq, 23
  %i.afs = zext nneg i32 %i.afr to i64
  %196 = getelementptr inbounds %struct.lua_TValue, ptr %i.afp, i64 %i.afs
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.aft = phi ptr [ %195, %bb.dv ], [ %196, %bb.dw ]
  store ptr %i.aft, ptr %i.bt, align 8
  %i.afu = load i32, ptr %i.g, align 4
  %i.afv = lshr i32 %i.afu, 14
  %i.afw = and i32 %i.afv, 511
  %i.afx = and i32 %i.afw, 256
  %i.afy = icmp ne i32 %i.afx, 0
  br i1 %i.afy, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.afz = load ptr, ptr %i.e, align 8
  %i.aga = load i32, ptr %i.g, align 4
  %i.agb = lshr i32 %i.aga, 14
  %i.agc = and i32 %i.agb, 511
  %i.agd = and i32 %i.agc, -257
  %i.age = zext nneg i32 %i.agd to i64
  %197 = getelementptr inbounds %struct.lua_TValue, ptr %i.afz, i64 %i.age
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.agf = load ptr, ptr %i.d, align 8
  %i.agg = load i32, ptr %i.g, align 4
  %i.agh = lshr i32 %i.agg, 14
  %i.agi = and i32 %i.agh, 511
  %i.agj = zext nneg i32 %i.agi to i64
  %198 = getelementptr inbounds %struct.lua_TValue, ptr %i.agf, i64 %i.agj
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.agk = phi ptr [ %197, %bb.dy ], [ %198, %bb.dz ]
  store ptr %i.agk, ptr %i.bu, align 8
  %i.agl = load ptr, ptr %i.f, align 8
  %i.agm = load ptr, ptr %i.a, align 8
  %199 = getelementptr inbounds nuw %struct.lua_State, ptr %i.agm, i32 0, i32 8
  store ptr %i.agl, ptr %199, align 8
  %i.agn = load ptr, ptr %i.bt, align 8
  %200 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.agn, i32 0, i32 1
  %i.ago = load i32, ptr %200, align 8
  %i.agp = load ptr, ptr %i.bu, align 8
  %201 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.agp, i32 0, i32 1
  %i.agq = load i32, ptr %201, align 8
  %i.agr = icmp eq i32 %i.ago, %i.agq
  br i1 %i.agr, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ags = load ptr, ptr %i.a, align 8
  %i.agt = load ptr, ptr %i.bt, align 8
  %i.agu = load ptr, ptr %i.bu, align 8
  %i.agv = call i32 @luaV_equalval(ptr noundef %i.ags, ptr noundef %i.agt, ptr noundef %i.agu)
  %i.agw = icmp ne i32 %i.agv, 0
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.agx = phi i1 [ false, %bb.ea ], [ %i.agw, %bb.eb ]
  %i.agy = zext i1 %i.agx to i32
  %i.agz = load i32, ptr %i.g, align 4
  %i.aha = lshr i32 %i.agz, 6
  %i.ahb = and i32 %i.aha, 255
  %i.ahc = icmp eq i32 %i.agy, %i.ahb
  br i1 %i.ahc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ahd = load ptr, ptr %i.f, align 8
  %i.ahe = load i32, ptr %i.ahd, align 4
  %i.ahf = lshr i32 %i.ahe, 14
  %i.ahg = sub nsw i32 %i.ahf, 131071
  %i.ahh = load ptr, ptr %i.f, align 8
  %i.ahi = sext i32 %i.ahg to i64
  %i.ahj = getelementptr inbounds i32, ptr %i.ahh, i64 %i.ahi
  store ptr %i.ahj, ptr %i.f, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.ahk = load ptr, ptr %i.a, align 8
  %202 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ahk, i32 0, i32 5
  %i.ahl = load ptr, ptr %202, align 8
  store ptr %i.ahl, ptr %i.d, align 8
  %i.ahm = load ptr, ptr %i.f, align 8
  %i.ahn = getelementptr inbounds nuw i32, ptr %i.ahm, i32 1
  store ptr %i.ahn, ptr %i.f, align 8
  br label %.backedge

bb.ef:                                            ; preds = %bb.c
  %i.aho = load ptr, ptr %i.f, align 8
  %i.ahp = load ptr, ptr %i.a, align 8
  %203 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ahp, i32 0, i32 8
  store ptr %i.aho, ptr %203, align 8
  %i.ahq = load ptr, ptr %i.a, align 8
  %i.ahr = load i32, ptr %i.g, align 4
  %i.ahs = lshr i32 %i.ahr, 23
  %i.aht = and i32 %i.ahs, 256
  %i.ahu = icmp ne i32 %i.aht, 0
  br i1 %i.ahu, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ahv = load ptr, ptr %i.e, align 8
  %i.ahw = load i32, ptr %i.g, align 4
  %i.ahx = lshr i32 %i.ahw, 23
  %i.ahy = and i32 %i.ahx, -257
  %i.ahz = zext nneg i32 %i.ahy to i64
  %204 = getelementptr inbounds %struct.lua_TValue, ptr %i.ahv, i64 %i.ahz
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %i.aia = load ptr, ptr %i.d, align 8
  %i.aib = load i32, ptr %i.g, align 4
  %i.aic = lshr i32 %i.aib, 23
  %i.aid = zext nneg i32 %i.aic to i64
  %205 = getelementptr inbounds %struct.lua_TValue, ptr %i.aia, i64 %i.aid
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.aie = phi ptr [ %204, %bb.eg ], [ %205, %bb.eh ]
  %i.aif = load i32, ptr %i.g, align 4
  %i.aig = lshr i32 %i.aif, 14
  %i.aih = and i32 %i.aig, 511
  %i.aii = and i32 %i.aih, 256
  %i.aij = icmp ne i32 %i.aii, 0
  br i1 %i.aij, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aik = load ptr, ptr %i.e, align 8
  %i.ail = load i32, ptr %i.g, align 4
  %i.aim = lshr i32 %i.ail, 14
  %i.ain = and i32 %i.aim, 511
  %i.aio = and i32 %i.ain, -257
  %i.aip = zext nneg i32 %i.aio to i64
  %206 = getelementptr inbounds %struct.lua_TValue, ptr %i.aik, i64 %i.aip
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.aiq = load ptr, ptr %i.d, align 8
  %i.air = load i32, ptr %i.g, align 4
  %i.ais = lshr i32 %i.air, 14
  %i.ait = and i32 %i.ais, 511
  %i.aiu = zext nneg i32 %i.ait to i64
  %207 = getelementptr inbounds %struct.lua_TValue, ptr %i.aiq, i64 %i.aiu
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aiv = phi ptr [ %206, %bb.ej ], [ %207, %bb.ek ]
  %i.aiw = call i32 @luaV_lessthan(ptr noundef %i.ahq, ptr noundef %i.aie, ptr noundef %i.aiv)
  %i.aix = load i32, ptr %i.g, align 4
  %i.aiy = lshr i32 %i.aix, 6
  %i.aiz = and i32 %i.aiy, 255
  %i.aja = icmp eq i32 %i.aiw, %i.aiz
  br i1 %i.aja, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ajb = load ptr, ptr %i.f, align 8
  %i.ajc = load i32, ptr %i.ajb, align 4
  %i.ajd = lshr i32 %i.ajc, 14
  %i.aje = sub nsw i32 %i.ajd, 131071
  %i.ajf = load ptr, ptr %i.f, align 8
  %i.ajg = sext i32 %i.aje to i64
  %i.ajh = getelementptr inbounds i32, ptr %i.ajf, i64 %i.ajg
  store ptr %i.ajh, ptr %i.f, align 8
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.aji = load ptr, ptr %i.a, align 8
  %208 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aji, i32 0, i32 5
  %i.ajj = load ptr, ptr %208, align 8
  store ptr %i.ajj, ptr %i.d, align 8
  %i.ajk = load ptr, ptr %i.f, align 8
  %i.ajl = getelementptr inbounds nuw i32, ptr %i.ajk, i32 1
  store ptr %i.ajl, ptr %i.f, align 8
  br label %.backedge

bb.eo:                                            ; preds = %bb.c
  %i.ajm = load ptr, ptr %i.f, align 8
  %i.ajn = load ptr, ptr %i.a, align 8
  %209 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ajn, i32 0, i32 8
  store ptr %i.ajm, ptr %209, align 8
  %i.ajo = load ptr, ptr %i.a, align 8
  %i.ajp = load i32, ptr %i.g, align 4
  %i.ajq = lshr i32 %i.ajp, 23
  %i.ajr = and i32 %i.ajq, 256
  %i.ajs = icmp ne i32 %i.ajr, 0
  br i1 %i.ajs, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ajt = load ptr, ptr %i.e, align 8
  %i.aju = load i32, ptr %i.g, align 4
  %i.ajv = lshr i32 %i.aju, 23
  %i.ajw = and i32 %i.ajv, -257
  %i.ajx = zext nneg i32 %i.ajw to i64
  %210 = getelementptr inbounds %struct.lua_TValue, ptr %i.ajt, i64 %i.ajx
  br label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %i.ajy = load ptr, ptr %i.d, align 8
  %i.ajz = load i32, ptr %i.g, align 4
  %i.aka = lshr i32 %i.ajz, 23
  %i.akb = zext nneg i32 %i.aka to i64
  %211 = getelementptr inbounds %struct.lua_TValue, ptr %i.ajy, i64 %i.akb
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.akc = phi ptr [ %210, %bb.ep ], [ %211, %bb.eq ]
  %i.akd = load i32, ptr %i.g, align 4
  %i.ake = lshr i32 %i.akd, 14
  %i.akf = and i32 %i.ake, 511
  %i.akg = and i32 %i.akf, 256
  %i.akh = icmp ne i32 %i.akg, 0
  br i1 %i.akh, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aki = load ptr, ptr %i.e, align 8
  %i.akj = load i32, ptr %i.g, align 4
  %i.akk = lshr i32 %i.akj, 14
  %i.akl = and i32 %i.akk, 511
  %i.akm = and i32 %i.akl, -257
  %i.akn = zext nneg i32 %i.akm to i64
  %212 = getelementptr inbounds %struct.lua_TValue, ptr %i.aki, i64 %i.akn
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.ako = load ptr, ptr %i.d, align 8
  %i.akp = load i32, ptr %i.g, align 4
  %i.akq = lshr i32 %i.akp, 14
  %i.akr = and i32 %i.akq, 511
  %i.aks = zext nneg i32 %i.akr to i64
  %213 = getelementptr inbounds %struct.lua_TValue, ptr %i.ako, i64 %i.aks
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.akt = phi ptr [ %212, %bb.es ], [ %213, %bb.et ]
  %i.aku = call i32 @lessequal(ptr noundef %i.ajo, ptr noundef %i.akc, ptr noundef %i.akt)
  %i.akv = load i32, ptr %i.g, align 4
  %i.akw = lshr i32 %i.akv, 6
  %i.akx = and i32 %i.akw, 255
  %i.aky = icmp eq i32 %i.aku, %i.akx
  br i1 %i.aky, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.akz = load ptr, ptr %i.f, align 8
  %i.ala = load i32, ptr %i.akz, align 4
  %i.alb = lshr i32 %i.ala, 14
  %i.alc = sub nsw i32 %i.alb, 131071
  %i.ald = load ptr, ptr %i.f, align 8
  %i.ale = sext i32 %i.alc to i64
  %i.alf = getelementptr inbounds i32, ptr %i.ald, i64 %i.ale
  store ptr %i.alf, ptr %i.f, align 8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.alg = load ptr, ptr %i.a, align 8
  %214 = getelementptr inbounds nuw %struct.lua_State, ptr %i.alg, i32 0, i32 5
  %i.alh = load ptr, ptr %214, align 8
  store ptr %i.alh, ptr %i.d, align 8
  %i.ali = load ptr, ptr %i.f, align 8
  %i.alj = getelementptr inbounds nuw i32, ptr %i.ali, i32 1
  store ptr %i.alj, ptr %i.f, align 8
  br label %.backedge

bb.ex:                                            ; preds = %bb.c
  %i.alk = load ptr, ptr %i.h, align 8
  %215 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.alk, i32 0, i32 1
  %i.all = load i32, ptr %215, align 8
  %i.alm = icmp eq i32 %i.all, 0
  br i1 %i.alm, label %bb.fb, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aln = load ptr, ptr %i.h, align 8
  %216 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aln, i32 0, i32 1
  %i.alo = load i32, ptr %216, align 8
  %i.alp = icmp eq i32 %i.alo, 1
  br i1 %i.alp, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.alq = load ptr, ptr %i.h, align 8
  %217 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.alq, i32 0, i32 0
  %i.alr = load i32, ptr %217, align 8
  %i.als = icmp eq i32 %i.alr, 0
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.alt = phi i1 [ false, %bb.ey ], [ %i.als, %bb.ez ]
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ex
  %i.alu = phi i1 [ true, %bb.ex ], [ %i.alt, %bb.fa ]
  %i.alv = zext i1 %i.alu to i32
  %i.alw = load i32, ptr %i.g, align 4
  %i.alx = lshr i32 %i.alw, 14
  %i.aly = and i32 %i.alx, 511
  %i.alz = icmp ne i32 %i.alv, %i.aly
  br i1 %i.alz, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.ama = load ptr, ptr %i.f, align 8
  %i.amb = load i32, ptr %i.ama, align 4
  %i.amc = lshr i32 %i.amb, 14
  %i.amd = sub nsw i32 %i.amc, 131071
  %i.ame = load ptr, ptr %i.f, align 8
  %i.amf = sext i32 %i.amd to i64
  %i.amg = getelementptr inbounds i32, ptr %i.ame, i64 %i.amf
  store ptr %i.amg, ptr %i.f, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.amh = load ptr, ptr %i.f, align 8
  %i.ami = getelementptr inbounds nuw i32, ptr %i.amh, i32 1
  store ptr %i.ami, ptr %i.f, align 8
  br label %.backedge

bb.fe:                                            ; preds = %bb.c
  %i.amj = load ptr, ptr %i.d, align 8
  %i.amk = load i32, ptr %i.g, align 4
  %i.aml = lshr i32 %i.amk, 23
  %i.amm = zext nneg i32 %i.aml to i64
  %218 = getelementptr inbounds %struct.lua_TValue, ptr %i.amj, i64 %i.amm
  store ptr %218, ptr %i.bv, align 8
  %i.amn = load ptr, ptr %i.bv, align 8
  %219 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.amn, i32 0, i32 1
  %i.amo = load i32, ptr %219, align 8
  %i.amp = icmp eq i32 %i.amo, 0
  br i1 %i.amp, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.amq = load ptr, ptr %i.bv, align 8
  %220 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.amq, i32 0, i32 1
  %i.amr = load i32, ptr %220, align 8
  %i.ams = icmp eq i32 %i.amr, 1
  br i1 %i.ams, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.amt = load ptr, ptr %i.bv, align 8
  %221 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.amt, i32 0, i32 0
  %i.amu = load i32, ptr %221, align 8
  %i.amv = icmp eq i32 %i.amu, 0
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.amw = phi i1 [ false, %bb.ff ], [ %i.amv, %bb.fg ]
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fe
  %i.amx = phi i1 [ true, %bb.fe ], [ %i.amw, %bb.fh ]
  %i.amy = zext i1 %i.amx to i32
  %i.amz = load i32, ptr %i.g, align 4
  %i.ana = lshr i32 %i.amz, 14
  %i.anb = and i32 %i.ana, 511
  %i.anc = icmp ne i32 %i.amy, %i.anb
  br i1 %i.anc, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.and = load ptr, ptr %i.bv, align 8
  store ptr %i.and, ptr %i.bw, align 8
  %i.ane = load ptr, ptr %i.h, align 8
  store ptr %i.ane, ptr %i.bx, align 8
  %i.anf = load ptr, ptr %i.bx, align 8
  %222 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.anf, i32 0, i32 0
  %i.ang = load ptr, ptr %i.bw, align 8
  %223 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ang, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %222, ptr align 8 %223, i64 8, i1 false)
  %i.anh = load ptr, ptr %i.bw, align 8
  %224 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.anh, i32 0, i32 1
  %i.ani = load i32, ptr %224, align 8
  %i.anj = load ptr, ptr %i.bx, align 8
  %225 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.anj, i32 0, i32 1
  store i32 %i.ani, ptr %225, align 8
  %i.ank = load ptr, ptr %i.f, align 8
  %i.anl = load i32, ptr %i.ank, align 4
  %i.anm = lshr i32 %i.anl, 14
  %i.ann = sub nsw i32 %i.anm, 131071
  %i.ano = load ptr, ptr %i.f, align 8
  %i.anp = sext i32 %i.ann to i64
  %i.anq = getelementptr inbounds i32, ptr %i.ano, i64 %i.anp
  store ptr %i.anq, ptr %i.f, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.anr = load ptr, ptr %i.f, align 8
  %i.ans = getelementptr inbounds nuw i32, ptr %i.anr, i32 1
  store ptr %i.ans, ptr %i.f, align 8
  br label %.backedge

bb.fl:                                            ; preds = %bb.c
  %i.ant = load i32, ptr %i.g, align 4
  %i.anu = lshr i32 %i.ant, 23
  store i32 %i.anu, ptr %i.by, align 4
  %i.anv = load i32, ptr %i.g, align 4
  %i.anw = lshr i32 %i.anv, 14
  %i.anx = and i32 %i.anw, 511
  %i.any = sub nsw i32 %i.anx, 1
  store i32 %i.any, ptr %i.bz, align 4
  %i.anz = load i32, ptr %i.by, align 4
  %i.aoa = icmp ne i32 %i.anz, 0
  br i1 %i.aoa, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aob = load ptr, ptr %i.h, align 8
  %i.aoc = load i32, ptr %i.by, align 4
  %i.aod = sext i32 %i.aoc to i64
  %226 = getelementptr inbounds %struct.lua_TValue, ptr %i.aob, i64 %i.aod
  %i.aoe = load ptr, ptr %i.a, align 8
  %227 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aoe, i32 0, i32 4
  store ptr %226, ptr %227, align 8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.aof = load ptr, ptr %i.f, align 8
  %i.aog = load ptr, ptr %i.a, align 8
  %228 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aog, i32 0, i32 8
  store ptr %i.aof, ptr %228, align 8
  %i.aoh = load ptr, ptr %i.a, align 8
  %i.aoi = load ptr, ptr %i.h, align 8
  %i.aoj = load i32, ptr %i.bz, align 4
  %i.aok = call i32 @luaD_precall(ptr noundef %i.aoh, ptr noundef %i.aoi, i32 noundef %i.aoj)
  switch i32 %i.aok, label %bb.fs [
    i32 0, label %bb.fo
    i32 1, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.aol = load i32, ptr %i.b, align 4
  %i.aom = add nsw i32 %i.aol, 1
  store i32 %i.aom, ptr %i.b, align 4
  br label %.backedge1

.backedge1:                                       ; preds = %bb.fo, %bb.gc, %bb.gn
  br label %bb.b

bb.fp:                                            ; preds = %bb.fn
  %i.aon = load i32, ptr %i.bz, align 4
  %i.aoo = icmp sge i32 %i.aon, 0
  br i1 %i.aoo, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aop = load ptr, ptr %i.a, align 8
  %229 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aop, i32 0, i32 7
  %i.aoq = load ptr, ptr %229, align 8
  %230 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.aoq, i32 0, i32 2
  %i.aor = load ptr, ptr %230, align 8
  %i.aos = load ptr, ptr %i.a, align 8
  %231 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aos, i32 0, i32 4
  store ptr %i.aor, ptr %231, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.aot = load ptr, ptr %i.a, align 8
  %232 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aot, i32 0, i32 5
  %i.aou = load ptr, ptr %232, align 8
  store ptr %i.aou, ptr %i.d, align 8
  br label %.backedge

bb.fs:                                            ; preds = %bb.fn
  br label %bb.iy

bb.ft:                                            ; preds = %bb.c
  %i.aov = load i32, ptr %i.g, align 4
  %i.aow = lshr i32 %i.aov, 23
  store i32 %i.aow, ptr %i.ca, align 4
  %i.aox = load i32, ptr %i.ca, align 4
  %i.aoy = icmp ne i32 %i.aox, 0
  br i1 %i.aoy, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.aoz = load ptr, ptr %i.h, align 8
  %i.apa = load i32, ptr %i.ca, align 4
  %i.apb = sext i32 %i.apa to i64
  %233 = getelementptr inbounds %struct.lua_TValue, ptr %i.aoz, i64 %i.apb
  %i.apc = load ptr, ptr %i.a, align 8
  %234 = getelementptr inbounds nuw %struct.lua_State, ptr %i.apc, i32 0, i32 4
  store ptr %233, ptr %234, align 8
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.apd = load ptr, ptr %i.f, align 8
  %i.ape = load ptr, ptr %i.a, align 8
  %235 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ape, i32 0, i32 8
  store ptr %i.apd, ptr %235, align 8
  %i.apf = load ptr, ptr %i.a, align 8
  %i.apg = load ptr, ptr %i.h, align 8
  %i.aph = call i32 @luaD_precall(ptr noundef %i.apf, ptr noundef %i.apg, i32 noundef -1)
  switch i32 %i.aph, label %bb.ge [
    i32 0, label %bb.fw
    i32 1, label %bb.gd
  ]

bb.fw:                                            ; preds = %bb.fv
  %i.api = load ptr, ptr %i.a, align 8
  %236 = getelementptr inbounds nuw %struct.lua_State, ptr %i.api, i32 0, i32 7
  %i.apj = load ptr, ptr %236, align 8
  %237 = getelementptr inbounds %struct.CallInfo, ptr %i.apj, i64 -1
  store ptr %237, ptr %i.cb, align 8
  %i.apk = load ptr, ptr %i.cb, align 8
  %238 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.apk, i32 0, i32 1
  %i.apl = load ptr, ptr %238, align 8
  store ptr %i.apl, ptr %i.cd, align 8
  %i.apm = load ptr, ptr %i.cb, align 8
  %239 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.apm, i64 1
  %240 = getelementptr inbounds nuw %struct.CallInfo, ptr %239, i32 0, i32 1
  %i.apn = load ptr, ptr %240, align 8
  store ptr %i.apn, ptr %i.ce, align 8
  %i.apo = load ptr, ptr %i.a, align 8
  %241 = getelementptr inbounds nuw %struct.lua_State, ptr %i.apo, i32 0, i32 24
  %i.app = load ptr, ptr %241, align 8
  %i.apq = icmp ne ptr %i.app, null
  br i1 %i.apq, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.apr = load ptr, ptr %i.a, align 8
  %i.aps = load ptr, ptr %i.cb, align 8
  %242 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.aps, i32 0, i32 0
  %i.apt = load ptr, ptr %242, align 8
  call void @luaF_close(ptr noundef %i.apr, ptr noundef %i.apt)
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.apu = load ptr, ptr %i.cb, align 8
  %243 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.apu, i32 0, i32 1
  %i.apv = load ptr, ptr %243, align 8
  %i.apw = load ptr, ptr %i.cb, align 8
  %244 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.apw, i64 1
  %245 = getelementptr inbounds nuw %struct.CallInfo, ptr %244, i32 0, i32 0
  %i.apx = load ptr, ptr %245, align 8
  %i.apy = load ptr, ptr %i.ce, align 8
  %i.apz = ptrtoint ptr %i.apx to i64
  %i.aqa = ptrtoint ptr %i.apy to i64
  %i.aqb = sub i64 %i.apz, %i.aqa
  %i.aqc = sdiv exact i64 %i.aqb, 16
  %246 = getelementptr inbounds %struct.lua_TValue, ptr %i.apv, i64 %i.aqc ; 2 uses
  %i.aqd = load ptr, ptr %i.cb, align 8
  %247 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.aqd, i32 0, i32 0
  store ptr %246, ptr %247, align 8
  %i.aqe = load ptr, ptr %i.a, align 8
  %248 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aqe, i32 0, i32 5
  store ptr %246, ptr %248, align 8
  store i32 0, ptr %i.cc, align 4
  br label %bb.fz

bb.fz:                                            ; preds = %bb.gb, %bb.fy
  %i.aqf = load ptr, ptr %i.ce, align 8
  %i.aqg = load i32, ptr %i.cc, align 4
  %i.aqh = sext i32 %i.aqg to i64
  %249 = getelementptr inbounds %struct.lua_TValue, ptr %i.aqf, i64 %i.aqh
  %i.aqi = load ptr, ptr %i.a, align 8
  %250 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aqi, i32 0, i32 4
  %i.aqj = load ptr, ptr %250, align 8
  %i.aqk = icmp ult ptr %249, %i.aqj
  br i1 %i.aqk, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.aql = load ptr, ptr %i.ce, align 8
  %i.aqm = load i32, ptr %i.cc, align 4
  %i.aqn = sext i32 %i.aqm to i64
  %251 = getelementptr inbounds %struct.lua_TValue, ptr %i.aql, i64 %i.aqn
  store ptr %251, ptr %i.cf, align 8
  %i.aqo = load ptr, ptr %i.cd, align 8
  %i.aqp = load i32, ptr %i.cc, align 4
  %i.aqq = sext i32 %i.aqp to i64
  %252 = getelementptr inbounds %struct.lua_TValue, ptr %i.aqo, i64 %i.aqq
  store ptr %252, ptr %i.cg, align 8
  %i.aqr = load ptr, ptr %i.cg, align 8
  %253 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aqr, i32 0, i32 0
  %i.aqs = load ptr, ptr %i.cf, align 8
  %254 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aqs, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %253, ptr align 8 %254, i64 8, i1 false)
  %i.aqt = load ptr, ptr %i.cf, align 8
  %255 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aqt, i32 0, i32 1
  %i.aqu = load i32, ptr %255, align 8
  %i.aqv = load ptr, ptr %i.cg, align 8
  %256 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aqv, i32 0, i32 1
  store i32 %i.aqu, ptr %256, align 8
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aqw = load i32, ptr %i.cc, align 4
  %i.aqx = add nsw i32 %i.aqw, 1
  store i32 %i.aqx, ptr %i.cc, align 4
  br label %bb.fz, !llvm.loop !28

bb.gc:                                            ; preds = %bb.fz
  %i.aqy = load ptr, ptr %i.cd, align 8
  %i.aqz = load i32, ptr %i.cc, align 4
  %i.ara = sext i32 %i.aqz to i64
  %257 = getelementptr inbounds %struct.lua_TValue, ptr %i.aqy, i64 %i.ara ; 2 uses
  %i.arb = load ptr, ptr %i.a, align 8
  %258 = getelementptr inbounds nuw %struct.lua_State, ptr %i.arb, i32 0, i32 4
  store ptr %257, ptr %258, align 8
  %i.arc = load ptr, ptr %i.cb, align 8
  %259 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.arc, i32 0, i32 2
  store ptr %257, ptr %259, align 8
  %i.ard = load ptr, ptr %i.a, align 8
  %260 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ard, i32 0, i32 8
  %i.are = load ptr, ptr %260, align 8
  %i.arf = load ptr, ptr %i.cb, align 8
  %261 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.arf, i32 0, i32 3
  store ptr %i.are, ptr %261, align 8
  %i.arg = load ptr, ptr %i.cb, align 8
  %262 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.arg, i32 0, i32 5 ; 2 uses
  %i.arh = load i32, ptr %262, align 4
  %i.ari = add nsw i32 %i.arh, 1
  store i32 %i.ari, ptr %262, align 4
  %i.arj = load ptr, ptr %i.a, align 8
  %263 = getelementptr inbounds nuw %struct.lua_State, ptr %i.arj, i32 0, i32 7 ; 2 uses
  %i.ark = load ptr, ptr %263, align 8
  %264 = getelementptr inbounds %struct.CallInfo, ptr %i.ark, i32 -1
  store ptr %264, ptr %263, align 8
  br label %.backedge1

bb.gd:                                            ; preds = %bb.fv
  %i.arl = load ptr, ptr %i.a, align 8
  %265 = getelementptr inbounds nuw %struct.lua_State, ptr %i.arl, i32 0, i32 5
  %i.arm = load ptr, ptr %265, align 8
  store ptr %i.arm, ptr %i.d, align 8
  br label %.backedge

bb.ge:                                            ; preds = %bb.fv
  br label %bb.iy

bb.gf:                                            ; preds = %bb.c
  %i.arn = load i32, ptr %i.g, align 4
  %i.aro = lshr i32 %i.arn, 23
  store i32 %i.aro, ptr %i.ch, align 4
  %i.arp = load i32, ptr %i.ch, align 4
  %i.arq = icmp ne i32 %i.arp, 0
  br i1 %i.arq, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.arr = load ptr, ptr %i.h, align 8
  %i.ars = load i32, ptr %i.ch, align 4
  %i.art = sext i32 %i.ars to i64
  %266 = getelementptr inbounds %struct.lua_TValue, ptr %i.arr, i64 %i.art
  %267 = getelementptr inbounds %struct.lua_TValue, ptr %266, i64 -1
  %i.aru = load ptr, ptr %i.a, align 8
  %268 = getelementptr inbounds nuw %struct.lua_State, ptr %i.aru, i32 0, i32 4
  store ptr %267, ptr %268, align 8
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.arv = load ptr, ptr %i.a, align 8
  %269 = getelementptr inbounds nuw %struct.lua_State, ptr %i.arv, i32 0, i32 24
  %i.arw = load ptr, ptr %269, align 8
  %i.arx = icmp ne ptr %i.arw, null
  br i1 %i.arx, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.ary = load ptr, ptr %i.a, align 8
  %i.arz = load ptr, ptr %i.d, align 8
  call void @luaF_close(ptr noundef %i.ary, ptr noundef %i.arz)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.asa = load ptr, ptr %i.f, align 8
  %i.asb = load ptr, ptr %i.a, align 8
  %270 = getelementptr inbounds nuw %struct.lua_State, ptr %i.asb, i32 0, i32 8
  store ptr %i.asa, ptr %270, align 8
  %i.asc = load ptr, ptr %i.a, align 8
  %i.asd = load ptr, ptr %i.h, align 8
  %i.ase = call i32 @luaD_poscall(ptr noundef %i.asc, ptr noundef %i.asd)
  store i32 %i.ase, ptr %i.ch, align 4
  %i.asf = load i32, ptr %i.b, align 4
  %i.asg = add nsw i32 %i.asf, -1                 ; 2 uses
  store i32 %i.asg, ptr %i.b, align 4
  %i.ash = icmp eq i32 %i.asg, 0
  br i1 %i.ash, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  br label %bb.iy

bb.gl:                                            ; preds = %bb.gj
  %i.asi = load i32, ptr %i.ch, align 4
  %i.asj = icmp ne i32 %i.asi, 0
  br i1 %i.asj, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.ask = load ptr, ptr %i.a, align 8
  %271 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ask, i32 0, i32 7
  %i.asl = load ptr, ptr %271, align 8
  %272 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.asl, i32 0, i32 2
  %i.asm = load ptr, ptr %272, align 8
  %i.asn = load ptr, ptr %i.a, align 8
  %273 = getelementptr inbounds nuw %struct.lua_State, ptr %i.asn, i32 0, i32 4
  store ptr %i.asm, ptr %273, align 8
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  br label %.backedge1

bb.go:                                            ; preds = %bb.c
  %i.aso = load ptr, ptr %i.h, align 8
  %274 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aso, i64 2
  %275 = getelementptr inbounds nuw %struct.lua_TValue, ptr %274, i32 0, i32 0
  %i.asp = load double, ptr %275, align 8
  store double %i.asp, ptr %i.ci, align 8
  %i.asq = load ptr, ptr %i.h, align 8
  %276 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.asq, i32 0, i32 0
  %i.asr = load double, ptr %276, align 8
  %i.ass = load double, ptr %i.ci, align 8
  %i.ast = fadd double %i.asr, %i.ass
  store double %i.ast, ptr %i.cj, align 8
  %i.asu = load ptr, ptr %i.h, align 8
  %277 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.asu, i64 1
  %278 = getelementptr inbounds nuw %struct.lua_TValue, ptr %277, i32 0, i32 0
  %i.asv = load double, ptr %278, align 8
  store double %i.asv, ptr %i.ck, align 8
  %i.asw = load double, ptr %i.ci, align 8
  %i.asx = fcmp olt double 0.000000e+00, %i.asw
  br i1 %i.asx, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.asy = load double, ptr %i.cj, align 8
  %i.asz = load double, ptr %i.ck, align 8
  %i.ata = fcmp ole double %i.asy, %i.asz
  br i1 %i.ata, label %bb.gr, label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %i.atb = load double, ptr %i.ck, align 8
  %i.atc = load double, ptr %i.cj, align 8
  %i.atd = fcmp ole double %i.atb, %i.atc
  br i1 %i.atd, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.ate = load i32, ptr %i.g, align 4
  %i.atf = lshr i32 %i.ate, 14
  %i.atg = sub nsw i32 %i.atf, 131071
  %i.ath = load ptr, ptr %i.f, align 8
  %i.ati = sext i32 %i.atg to i64
  %i.atj = getelementptr inbounds i32, ptr %i.ath, i64 %i.ati
  store ptr %i.atj, ptr %i.f, align 8
  %i.atk = load ptr, ptr %i.h, align 8
  store ptr %i.atk, ptr %i.cl, align 8
  %i.atl = load double, ptr %i.cj, align 8
  %i.atm = load ptr, ptr %i.cl, align 8
  %279 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.atm, i32 0, i32 0
  store double %i.atl, ptr %279, align 8
  %i.atn = load ptr, ptr %i.cl, align 8
  %280 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.atn, i32 0, i32 1
  store i32 3, ptr %280, align 8
  %i.ato = load ptr, ptr %i.h, align 8
  %281 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ato, i64 3
  store ptr %281, ptr %i.cm, align 8
  %i.atp = load double, ptr %i.cj, align 8
  %i.atq = load ptr, ptr %i.cm, align 8
  %282 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.atq, i32 0, i32 0
  store double %i.atp, ptr %282, align 8
  %i.atr = load ptr, ptr %i.cm, align 8
  %283 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.atr, i32 0, i32 1
  store i32 3, ptr %283, align 8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.gp
  br label %.backedge

bb.gt:                                            ; preds = %bb.c
  %i.ats = load ptr, ptr %i.h, align 8
  store ptr %i.ats, ptr %i.cn, align 8
  %i.att = load ptr, ptr %i.h, align 8
  %284 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.att, i64 1
  store ptr %284, ptr %i.co, align 8
  %i.atu = load ptr, ptr %i.h, align 8
  %285 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.atu, i64 2
  store ptr %285, ptr %i.cp, align 8
  %i.atv = load ptr, ptr %i.f, align 8
  %i.atw = load ptr, ptr %i.a, align 8
  %286 = getelementptr inbounds nuw %struct.lua_State, ptr %i.atw, i32 0, i32 8
  store ptr %i.atv, ptr %286, align 8
  %i.atx = load ptr, ptr %i.cn, align 8
  %287 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.atx, i32 0, i32 1
  %i.aty = load i32, ptr %287, align 8
  %i.atz = icmp eq i32 %i.aty, 3
  br i1 %i.atz, label %bb.gw, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aua = load ptr, ptr %i.cn, align 8
  %i.aub = load ptr, ptr %i.h, align 8
  %i.auc = call ptr @luaV_tonumber(ptr noundef %i.aua, ptr noundef %i.aub) ; 2 uses
  store ptr %i.auc, ptr %i.cn, align 8
  %i.aud = icmp ne ptr %i.auc, null
  br i1 %i.aud, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aue = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %i.aue, ptr noundef @.str.34)
  br label %bb.he

bb.gw:                                            ; preds = %bb.gu, %bb.gt
  %i.auf = load ptr, ptr %i.co, align 8
  %288 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.auf, i32 0, i32 1
  %i.aug = load i32, ptr %288, align 8
  %i.auh = icmp eq i32 %i.aug, 3
  br i1 %i.auh, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aui = load ptr, ptr %i.co, align 8
  %i.auj = load ptr, ptr %i.h, align 8
  %289 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.auj, i64 1
  %i.auk = call ptr @luaV_tonumber(ptr noundef %i.aui, ptr noundef %289) ; 2 uses
  store ptr %i.auk, ptr %i.co, align 8
  %i.aul = icmp ne ptr %i.auk, null
  br i1 %i.aul, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aum = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %i.aum, ptr noundef @.str.35)
  br label %bb.hd

bb.gz:                                            ; preds = %bb.gx, %bb.gw
  %i.aun = load ptr, ptr %i.cp, align 8
  %290 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aun, i32 0, i32 1
  %i.auo = load i32, ptr %290, align 8
  %i.aup = icmp eq i32 %i.auo, 3
  br i1 %i.aup, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.auq = load ptr, ptr %i.cp, align 8
  %i.aur = load ptr, ptr %i.h, align 8
  %291 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.aur, i64 2
  %i.aus = call ptr @luaV_tonumber(ptr noundef %i.auq, ptr noundef %291) ; 2 uses
  store ptr %i.aus, ptr %i.cp, align 8
  %i.aut = icmp ne ptr %i.aus, null
  br i1 %i.aut, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.auu = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %i.auu, ptr noundef @.str.36)
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.gz
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gy
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.gv
  %i.auv = load ptr, ptr %i.h, align 8
  store ptr %i.auv, ptr %i.cq, align 8
  %i.auw = load ptr, ptr %i.h, align 8
  %292 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.auw, i32 0, i32 0
  %i.aux = load double, ptr %292, align 8
  %i.auy = load ptr, ptr %i.cp, align 8
  %293 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.auy, i32 0, i32 0
  %i.auz = load double, ptr %293, align 8
  %i.ava = fsub double %i.aux, %i.auz
  %i.avb = load ptr, ptr %i.cq, align 8
  %294 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avb, i32 0, i32 0
  store double %i.ava, ptr %294, align 8
  %i.avc = load ptr, ptr %i.cq, align 8
  %295 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avc, i32 0, i32 1
  store i32 3, ptr %295, align 8
  %i.avd = load i32, ptr %i.g, align 4
  %i.ave = lshr i32 %i.avd, 14
  %i.avf = sub nsw i32 %i.ave, 131071
  %i.avg = load ptr, ptr %i.f, align 8
  %i.avh = sext i32 %i.avf to i64
  %i.avi = getelementptr inbounds i32, ptr %i.avg, i64 %i.avh
  store ptr %i.avi, ptr %i.f, align 8
  br label %.backedge

bb.hf:                                            ; preds = %bb.c
  %i.avj = load ptr, ptr %i.h, align 8
  %296 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avj, i64 3
  store ptr %296, ptr %i.cr, align 8
  %i.avk = load ptr, ptr %i.h, align 8
  %297 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avk, i64 2
  store ptr %297, ptr %i.cs, align 8
  %i.avl = load ptr, ptr %i.cr, align 8
  %298 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avl, i64 2
  store ptr %298, ptr %i.ct, align 8
  %i.avm = load ptr, ptr %i.ct, align 8
  %299 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avm, i32 0, i32 0
  %i.avn = load ptr, ptr %i.cs, align 8
  %300 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avn, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %299, ptr align 8 %300, i64 8, i1 false)
  %i.avo = load ptr, ptr %i.cs, align 8
  %301 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avo, i32 0, i32 1
  %i.avp = load i32, ptr %301, align 8
  %i.avq = load ptr, ptr %i.ct, align 8
  %302 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avq, i32 0, i32 1
  store i32 %i.avp, ptr %302, align 8
  %i.avr = load ptr, ptr %i.h, align 8
  %303 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avr, i64 1
  store ptr %303, ptr %i.cu, align 8
  %i.avs = load ptr, ptr %i.cr, align 8
  %304 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avs, i64 1
  store ptr %304, ptr %i.cv, align 8
  %i.avt = load ptr, ptr %i.cv, align 8
  %305 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avt, i32 0, i32 0
  %i.avu = load ptr, ptr %i.cu, align 8
  %306 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avu, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %305, ptr align 8 %306, i64 8, i1 false)
  %i.avv = load ptr, ptr %i.cu, align 8
  %307 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avv, i32 0, i32 1
  %i.avw = load i32, ptr %307, align 8
  %i.avx = load ptr, ptr %i.cv, align 8
  %308 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.avx, i32 0, i32 1
  store i32 %i.avw, ptr %308, align 8
  %i.avy = load ptr, ptr %i.h, align 8
  store ptr %i.avy, ptr %i.cw, align 8
  %i.avz = load ptr, ptr %i.cr, align 8
  store ptr %i.avz, ptr %i.cx, align 8
  %i.awa = load ptr, ptr %i.cx, align 8
  %309 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.awa, i32 0, i32 0
  %i.awb = load ptr, ptr %i.cw, align 8
  %310 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.awb, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %309, ptr align 8 %310, i64 8, i1 false)
  %i.awc = load ptr, ptr %i.cw, align 8
  %311 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.awc, i32 0, i32 1
  %i.awd = load i32, ptr %311, align 8
  %i.awe = load ptr, ptr %i.cx, align 8
  %312 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.awe, i32 0, i32 1
  store i32 %i.awd, ptr %312, align 8
  %i.awf = load ptr, ptr %i.cr, align 8
  %313 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.awf, i64 3
  %i.awg = load ptr, ptr %i.a, align 8
  %314 = getelementptr inbounds nuw %struct.lua_State, ptr %i.awg, i32 0, i32 4
  store ptr %313, ptr %314, align 8
  %i.awh = load ptr, ptr %i.f, align 8
  %i.awi = load ptr, ptr %i.a, align 8
  %315 = getelementptr inbounds nuw %struct.lua_State, ptr %i.awi, i32 0, i32 8
  store ptr %i.awh, ptr %315, align 8
  %i.awj = load ptr, ptr %i.a, align 8
  %i.awk = load ptr, ptr %i.cr, align 8
  %i.awl = load i32, ptr %i.g, align 4
  %i.awm = lshr i32 %i.awl, 14
  %i.awn = and i32 %i.awm, 511
  call void @luaD_call(ptr noundef %i.awj, ptr noundef %i.awk, i32 noundef %i.awn)
  %i.awo = load ptr, ptr %i.a, align 8
  %316 = getelementptr inbounds nuw %struct.lua_State, ptr %i.awo, i32 0, i32 5
  %i.awp = load ptr, ptr %316, align 8
  store ptr %i.awp, ptr %i.d, align 8
  %i.awq = load ptr, ptr %i.a, align 8
  %317 = getelementptr inbounds nuw %struct.lua_State, ptr %i.awq, i32 0, i32 7
  %i.awr = load ptr, ptr %317, align 8
  %318 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.awr, i32 0, i32 2
  %i.aws = load ptr, ptr %318, align 8
  %i.awt = load ptr, ptr %i.a, align 8
  %319 = getelementptr inbounds nuw %struct.lua_State, ptr %i.awt, i32 0, i32 4
  store ptr %i.aws, ptr %319, align 8
  %i.awu = load ptr, ptr %i.d, align 8
  %i.awv = load i32, ptr %i.g, align 4
  %i.aww = lshr i32 %i.awv, 6
  %i.awx = and i32 %i.aww, 255
  %i.awy = zext nneg i32 %i.awx to i64
  %320 = getelementptr inbounds %struct.lua_TValue, ptr %i.awu, i64 %i.awy
  %321 = getelementptr inbounds nuw %struct.lua_TValue, ptr %320, i64 3
  store ptr %321, ptr %i.cr, align 8
  %i.awz = load ptr, ptr %i.cr, align 8
  %322 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.awz, i32 0, i32 1
  %i.axa = load i32, ptr %322, align 8
  %i.axb = icmp eq i32 %i.axa, 0
  br i1 %i.axb, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.axc = load ptr, ptr %i.cr, align 8
  store ptr %i.axc, ptr %i.cy, align 8
  %i.axd = load ptr, ptr %i.cr, align 8
  %323 = getelementptr inbounds %struct.lua_TValue, ptr %i.axd, i64 -1
  store ptr %323, ptr %i.cz, align 8
  %i.axe = load ptr, ptr %i.cz, align 8
  %324 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.axe, i32 0, i32 0
  %i.axf = load ptr, ptr %i.cy, align 8
  %325 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.axf, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %324, ptr align 8 %325, i64 8, i1 false)
  %i.axg = load ptr, ptr %i.cy, align 8
  %326 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.axg, i32 0, i32 1
  %i.axh = load i32, ptr %326, align 8
  %i.axi = load ptr, ptr %i.cz, align 8
  %327 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.axi, i32 0, i32 1
  store i32 %i.axh, ptr %327, align 8
  %i.axj = load ptr, ptr %i.f, align 8
  %i.axk = load i32, ptr %i.axj, align 4
  %i.axl = lshr i32 %i.axk, 14
  %i.axm = sub nsw i32 %i.axl, 131071
  %i.axn = load ptr, ptr %i.f, align 8
  %i.axo = sext i32 %i.axm to i64
  %i.axp = getelementptr inbounds i32, ptr %i.axn, i64 %i.axo
  store ptr %i.axp, ptr %i.f, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.axq = load ptr, ptr %i.f, align 8
  %i.axr = getelementptr inbounds nuw i32, ptr %i.axq, i32 1
  store ptr %i.axr, ptr %i.f, align 8
  br label %.backedge

bb.hi:                                            ; preds = %bb.c
  %i.axs = load i32, ptr %i.g, align 4
  %i.axt = lshr i32 %i.axs, 23
  store i32 %i.axt, ptr %i.da, align 4
  %i.axu = load i32, ptr %i.g, align 4
  %i.axv = lshr i32 %i.axu, 14
  %i.axw = and i32 %i.axv, 511
  store i32 %i.axw, ptr %i.db, align 4
  %i.axx = load i32, ptr %i.da, align 4
  %i.axy = icmp eq i32 %i.axx, 0
  br i1 %i.axy, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.axz = load ptr, ptr %i.a, align 8
  %328 = getelementptr inbounds nuw %struct.lua_State, ptr %i.axz, i32 0, i32 4
  %i.aya = load ptr, ptr %328, align 8
  %i.ayb = load ptr, ptr %i.h, align 8
  %i.ayc = ptrtoint ptr %i.aya to i64
  %i.ayd = ptrtoint ptr %i.ayb to i64
  %i.aye = sub i64 %i.ayc, %i.ayd
  %i.ayf = sdiv exact i64 %i.aye, 16
  %i.ayg = trunc i64 %i.ayf to i32
  %i.ayh = sub nsw i32 %i.ayg, 1
  store i32 %i.ayh, ptr %i.da, align 4
  %i.ayi = load ptr, ptr %i.a, align 8
  %329 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ayi, i32 0, i32 7
  %i.ayj = load ptr, ptr %329, align 8
  %330 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.ayj, i32 0, i32 2
  %i.ayk = load ptr, ptr %330, align 8
  %i.ayl = load ptr, ptr %i.a, align 8
  %331 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ayl, i32 0, i32 4
  store ptr %i.ayk, ptr %331, align 8
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.aym = load i32, ptr %i.db, align 4
  %i.ayn = icmp eq i32 %i.aym, 0
  br i1 %i.ayn, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.ayo = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.ayp = getelementptr inbounds nuw i32, ptr %i.ayo, i32 1
  store ptr %i.ayp, ptr %i.f, align 8
  %i.ayq = load i32, ptr %i.ayo, align 4
  store i32 %i.ayq, ptr %i.db, align 4
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.ayr = load ptr, ptr %i.h, align 8
  %332 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ayr, i32 0, i32 1
  %i.ays = load i32, ptr %332, align 8
  %i.ayt = icmp eq i32 %i.ays, 5
  br i1 %i.ayt, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  br label %bb.ix

bb.ho:                                            ; preds = %bb.hm
  %i.ayu = load ptr, ptr %i.h, align 8
  %333 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ayu, i32 0, i32 0
  %i.ayv = load ptr, ptr %333, align 8
  store ptr %i.ayv, ptr %i.dd, align 8
  %i.ayw = load i32, ptr %i.db, align 4
  %i.ayx = sub nsw i32 %i.ayw, 1
  %i.ayy = mul nsw i32 %i.ayx, 50
  %i.ayz = load i32, ptr %i.da, align 4
  %i.aza = add nsw i32 %i.ayy, %i.ayz
  store i32 %i.aza, ptr %i.dc, align 4
  %i.azb = load i32, ptr %i.dc, align 4
  %i.azc = load ptr, ptr %i.dd, align 8
  %334 = getelementptr inbounds nuw %struct.Table, ptr %i.azc, i32 0, i32 10
  %i.azd = load i32, ptr %334, align 8
  %i.aze = icmp sgt i32 %i.azb, %i.azd
  br i1 %i.aze, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.azf = load ptr, ptr %i.a, align 8
  %i.azg = load ptr, ptr %i.dd, align 8
  %i.azh = load i32, ptr %i.dc, align 4
  call void @luaH_resizearray(ptr noundef %i.azf, ptr noundef %i.azg, i32 noundef %i.azh)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hx, %bb.hq
  %i.azi = load i32, ptr %i.da, align 4
  %i.azj = icmp sgt i32 %i.azi, 0
  br i1 %i.azj, label %bb.hs, label %bb.hy

bb.hs:                                            ; preds = %bb.hr
  %i.azk = load ptr, ptr %i.h, align 8
  %i.azl = load i32, ptr %i.da, align 4
  %i.azm = sext i32 %i.azl to i64
  %335 = getelementptr inbounds %struct.lua_TValue, ptr %i.azk, i64 %i.azm
  store ptr %335, ptr %i.de, align 8
  %i.azn = load ptr, ptr %i.de, align 8
  store ptr %i.azn, ptr %i.df, align 8
  %i.azo = load ptr, ptr %i.a, align 8
  %i.azp = load ptr, ptr %i.dd, align 8
  %i.azq = load i32, ptr %i.dc, align 4           ; 2 uses
  %i.azr = add nsw i32 %i.azq, -1
  store i32 %i.azr, ptr %i.dc, align 4
  %i.azs = call ptr @luaH_setnum(ptr noundef %i.azo, ptr noundef %i.azp, i32 noundef %i.azq)
  store ptr %i.azs, ptr %i.dg, align 8
  %i.azt = load ptr, ptr %i.dg, align 8
  %336 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.azt, i32 0, i32 0
  %i.azu = load ptr, ptr %i.df, align 8
  %337 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.azu, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %336, ptr align 8 %337, i64 8, i1 false)
  %i.azv = load ptr, ptr %i.df, align 8
  %338 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.azv, i32 0, i32 1
  %i.azw = load i32, ptr %338, align 8
  %i.azx = load ptr, ptr %i.dg, align 8
  %339 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.azx, i32 0, i32 1
  store i32 %i.azw, ptr %339, align 8
  %i.azy = load ptr, ptr %i.de, align 8
  %340 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.azy, i32 0, i32 1
  %i.azz = load i32, ptr %340, align 8
  %i.baa = icmp sge i32 %i.azz, 4
  br i1 %i.baa, label %bb.ht, label %bb.hw

bb.ht:                                            ; preds = %bb.hs
  %i.bab = load ptr, ptr %i.de, align 8
  %341 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bab, i32 0, i32 0
  %i.bac = load ptr, ptr %341, align 8
  %342 = getelementptr inbounds nuw %struct.GCheader, ptr %i.bac, i32 0, i32 2
  %i.bad = load i8, ptr %342, align 1
  %i.bae = zext i8 %i.bad to i32
  %i.baf = and i32 %i.bae, 3
  %i.bag = icmp ne i32 %i.baf, 0
  br i1 %i.bag, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.bah = load ptr, ptr %i.dd, align 8
  %343 = getelementptr inbounds nuw %struct.GCheader, ptr %i.bah, i32 0, i32 2
  %i.bai = load i8, ptr %343, align 1
  %i.baj = zext i8 %i.bai to i32
  %i.bak = and i32 %i.baj, 4
  %i.bal = icmp ne i32 %i.bak, 0
  br i1 %i.bal, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.bam = load ptr, ptr %i.a, align 8
  %i.ban = load ptr, ptr %i.dd, align 8
  call void @luaC_barrierback(ptr noundef %i.bam, ptr noundef %i.ban)
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hs
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.bao = load i32, ptr %i.da, align 4
  %i.bap = add nsw i32 %i.bao, -1
  store i32 %i.bap, ptr %i.da, align 4
  br label %bb.hr, !llvm.loop !29

bb.hy:                                            ; preds = %bb.hr
  br label %.backedge

bb.hz:                                            ; preds = %bb.c
  %i.baq = load ptr, ptr %i.a, align 8
  %i.bar = load ptr, ptr %i.h, align 8
  call void @luaF_close(ptr noundef %i.baq, ptr noundef %i.bar)
  br label %.backedge

bb.ia:                                            ; preds = %bb.c
  %i.bas = load ptr, ptr %i.c, align 8
  %344 = getelementptr inbounds nuw %struct.LClosure, ptr %i.bas, i32 0, i32 7
  %i.bat = load ptr, ptr %344, align 8
  %345 = getelementptr inbounds nuw %struct.Proto, ptr %i.bat, i32 0, i32 5
  %i.bau = load ptr, ptr %345, align 8
  %i.bav = load i32, ptr %i.g, align 4
  %i.baw = lshr i32 %i.bav, 14
  %i.bax = zext nneg i32 %i.baw to i64
  %i.bay = getelementptr inbounds ptr, ptr %i.bau, i64 %i.bax
  %i.baz = load ptr, ptr %i.bay, align 8
  store ptr %i.baz, ptr %i.dh, align 8
  %i.bba = load ptr, ptr %i.dh, align 8
  %346 = getelementptr inbounds nuw %struct.Proto, ptr %i.bba, i32 0, i32 19
  %i.bbb = load i8, ptr %346, align 8
  %i.bbc = zext i8 %i.bbb to i32
  store i32 %i.bbc, ptr %i.dj, align 4
  %i.bbd = load ptr, ptr %i.a, align 8
  %i.bbe = load i32, ptr %i.dj, align 4
  %i.bbf = load ptr, ptr %i.c, align 8
  %347 = getelementptr inbounds nuw %struct.LClosure, ptr %i.bbf, i32 0, i32 6
  %i.bbg = load ptr, ptr %347, align 8
  %i.bbh = call ptr @luaF_newLclosure(ptr noundef %i.bbd, i32 noundef %i.bbe, ptr noundef %i.bbg)
  store ptr %i.bbh, ptr %i.di, align 8
  %i.bbi = load ptr, ptr %i.dh, align 8
  %i.bbj = load ptr, ptr %i.di, align 8
  %348 = getelementptr inbounds nuw %struct.LClosure, ptr %i.bbj, i32 0, i32 7
  store ptr %i.bbi, ptr %348, align 8
  store i32 0, ptr %i.dk, align 4
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ig, %bb.ia
  %i.bbk = load i32, ptr %i.dk, align 4
  %i.bbl = load i32, ptr %i.dj, align 4
  %i.bbm = icmp slt i32 %i.bbk, %i.bbl
  br i1 %i.bbm, label %bb.ic, label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  %i.bbn = load ptr, ptr %i.f, align 8
  %i.bbo = load i32, ptr %i.bbn, align 4
  %i.bbp = lshr i32 %i.bbo, 0
  %i.bbq = and i32 %i.bbp, 63
  %i.bbr = icmp eq i32 %i.bbq, 4
  br i1 %i.bbr, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.bbs = load ptr, ptr %i.c, align 8
  %349 = getelementptr inbounds nuw %struct.LClosure, ptr %i.bbs, i32 0, i32 8
  %i.bbt = load ptr, ptr %i.f, align 8
  %i.bbu = load i32, ptr %i.bbt, align 4
  %i.bbv = lshr i32 %i.bbu, 23
  %i.bbw = zext nneg i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds [1 x ptr], ptr %349, i64 0, i64 %i.bbw
  %i.bby = load ptr, ptr %i.bbx, align 8
  %i.bbz = load ptr, ptr %i.di, align 8
  %350 = getelementptr inbounds nuw %struct.LClosure, ptr %i.bbz, i32 0, i32 8
  %i.bca = load i32, ptr %i.dk, align 4
  %i.bcb = sext i32 %i.bca to i64
  %i.bcc = getelementptr inbounds [1 x ptr], ptr %350, i64 0, i64 %i.bcb
  store ptr %i.bby, ptr %i.bcc, align 8
  br label %bb.if

bb.ie:                                            ; preds = %bb.ic
  %i.bcd = load ptr, ptr %i.a, align 8
  %i.bce = load ptr, ptr %i.d, align 8
  %i.bcf = load ptr, ptr %i.f, align 8
  %i.bcg = load i32, ptr %i.bcf, align 4
  %i.bch = lshr i32 %i.bcg, 23
  %i.bci = zext nneg i32 %i.bch to i64
  %351 = getelementptr inbounds %struct.lua_TValue, ptr %i.bce, i64 %i.bci
  %i.bcj = call ptr @luaF_findupval(ptr noundef %i.bcd, ptr noundef %351)
  %i.bck = load ptr, ptr %i.di, align 8
  %352 = getelementptr inbounds nuw %struct.LClosure, ptr %i.bck, i32 0, i32 8
  %i.bcl = load i32, ptr %i.dk, align 4
  %i.bcm = sext i32 %i.bcl to i64
  %i.bcn = getelementptr inbounds [1 x ptr], ptr %352, i64 0, i64 %i.bcm
  store ptr %i.bcj, ptr %i.bcn, align 8
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.bco = load i32, ptr %i.dk, align 4
  %i.bcp = add nsw i32 %i.bco, 1
  store i32 %i.bcp, ptr %i.dk, align 4
  %i.bcq = load ptr, ptr %i.f, align 8
  %i.bcr = getelementptr inbounds nuw i32, ptr %i.bcq, i32 1
  store ptr %i.bcr, ptr %i.f, align 8
  br label %bb.ib, !llvm.loop !30

bb.ih:                                            ; preds = %bb.ib
  %i.bcs = load ptr, ptr %i.h, align 8
  store ptr %i.bcs, ptr %i.dl, align 8
  %i.bct = load ptr, ptr %i.di, align 8
  %i.bcu = load ptr, ptr %i.dl, align 8
  %353 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bcu, i32 0, i32 0
  store ptr %i.bct, ptr %353, align 8
  %i.bcv = load ptr, ptr %i.dl, align 8
  %354 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bcv, i32 0, i32 1
  store i32 6, ptr %354, align 8
  %i.bcw = load ptr, ptr %i.f, align 8
  %i.bcx = load ptr, ptr %i.a, align 8
  %355 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bcx, i32 0, i32 8
  store ptr %i.bcw, ptr %355, align 8
  %i.bcy = load ptr, ptr %i.a, align 8
  %356 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bcy, i32 0, i32 6
  %i.bcz = load ptr, ptr %356, align 8
  %357 = getelementptr inbounds nuw %struct.global_State, ptr %i.bcz, i32 0, i32 14
  %i.bda = load i64, ptr %357, align 8
  %i.bdb = load ptr, ptr %i.a, align 8
  %358 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bdb, i32 0, i32 6
  %i.bdc = load ptr, ptr %358, align 8
  %359 = getelementptr inbounds nuw %struct.global_State, ptr %i.bdc, i32 0, i32 13
  %i.bdd = load i64, ptr %359, align 8
  %i.bde = icmp uge i64 %i.bda, %i.bdd
  br i1 %i.bde, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.bdf = load ptr, ptr %i.a, align 8
  call void @luaC_step(ptr noundef %i.bdf)
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.bdg = load ptr, ptr %i.a, align 8
  %360 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bdg, i32 0, i32 5
  %i.bdh = load ptr, ptr %360, align 8
  store ptr %i.bdh, ptr %i.d, align 8
  br label %.backedge

bb.ik:                                            ; preds = %bb.c
  %i.bdi = load i32, ptr %i.g, align 4
  %i.bdj = lshr i32 %i.bdi, 23
  %i.bdk = sub nsw i32 %i.bdj, 1
  store i32 %i.bdk, ptr %i.dm, align 4
  %i.bdl = load ptr, ptr %i.a, align 8
  %361 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bdl, i32 0, i32 7
  %i.bdm = load ptr, ptr %361, align 8
  store ptr %i.bdm, ptr %i.do, align 8
  %i.bdn = load ptr, ptr %i.do, align 8
  %362 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.bdn, i32 0, i32 0
  %i.bdo = load ptr, ptr %362, align 8
  %i.bdp = load ptr, ptr %i.do, align 8
  %363 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.bdp, i32 0, i32 1
  %i.bdq = load ptr, ptr %363, align 8
  %i.bdr = ptrtoint ptr %i.bdo to i64
  %i.bds = ptrtoint ptr %i.bdq to i64
  %i.bdt = sub i64 %i.bdr, %i.bds
  %i.bdu = sdiv exact i64 %i.bdt, 16
  %i.bdv = trunc i64 %i.bdu to i32
  %i.bdw = load ptr, ptr %i.c, align 8
  %364 = getelementptr inbounds nuw %struct.LClosure, ptr %i.bdw, i32 0, i32 7
  %i.bdx = load ptr, ptr %364, align 8
  %365 = getelementptr inbounds nuw %struct.Proto, ptr %i.bdx, i32 0, i32 20
  %i.bdy = load i8, ptr %365, align 1
  %i.bdz = zext i8 %i.bdy to i32
  %i.bea = sub nsw i32 %i.bdv, %i.bdz
  %i.beb = sub nsw i32 %i.bea, 1
  store i32 %i.beb, ptr %i.dp, align 4
  %i.bec = load i32, ptr %i.dm, align 4
  %i.bed = icmp eq i32 %i.bec, -1
  br i1 %i.bed, label %bb.il, label %bb.ip

bb.il:                                            ; preds = %bb.ik
  %i.bee = load ptr, ptr %i.f, align 8
  %i.bef = load ptr, ptr %i.a, align 8
  %366 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bef, i32 0, i32 8
  store ptr %i.bee, ptr %366, align 8
  %i.beg = load ptr, ptr %i.a, align 8
  %367 = getelementptr inbounds nuw %struct.lua_State, ptr %i.beg, i32 0, i32 9
  %i.beh = load ptr, ptr %367, align 8
  %i.bei = load ptr, ptr %i.a, align 8
  %368 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bei, i32 0, i32 4
  %i.bej = load ptr, ptr %368, align 8
  %i.bek = ptrtoint ptr %i.beh to i64
  %i.bel = ptrtoint ptr %i.bej to i64
  %i.bem = sub i64 %i.bek, %i.bel
  %i.ben = load i32, ptr %i.dp, align 4
  %i.beo = mul nsw i32 %i.ben, 16
  %i.bep = sext i32 %i.beo to i64
  %i.beq = icmp sle i64 %i.bem, %i.bep
  br i1 %i.beq, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.ber = load ptr, ptr %i.a, align 8
  %i.bes = load i32, ptr %i.dp, align 4
  call void @luaD_growstack(ptr noundef %i.ber, i32 noundef %i.bes)
  br label %bb.io

bb.in:                                            ; preds = %bb.il
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %i.bet = load ptr, ptr %i.a, align 8
  %369 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bet, i32 0, i32 5
  %i.beu = load ptr, ptr %369, align 8
  store ptr %i.beu, ptr %i.d, align 8
  %i.bev = load ptr, ptr %i.d, align 8
  %i.bew = load i32, ptr %i.g, align 4
  %i.bex = lshr i32 %i.bew, 6
  %i.bey = and i32 %i.bex, 255
  %i.bez = zext nneg i32 %i.bey to i64
  %370 = getelementptr inbounds %struct.lua_TValue, ptr %i.bev, i64 %i.bez
  store ptr %370, ptr %i.h, align 8
  %i.bfa = load i32, ptr %i.dp, align 4
  store i32 %i.bfa, ptr %i.dm, align 4
  %i.bfb = load ptr, ptr %i.h, align 8
  %i.bfc = load i32, ptr %i.dp, align 4
  %i.bfd = sext i32 %i.bfc to i64
  %371 = getelementptr inbounds %struct.lua_TValue, ptr %i.bfb, i64 %i.bfd
  %i.bfe = load ptr, ptr %i.a, align 8
  %372 = getelementptr inbounds nuw %struct.lua_State, ptr %i.bfe, i32 0, i32 4
  store ptr %371, ptr %372, align 8
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.ik
  store i32 0, ptr %i.dn, align 4
  br label %bb.iq

bb.iq:                                            ; preds = %bb.iv, %bb.ip
  %i.bff = load i32, ptr %i.dn, align 4
  %i.bfg = load i32, ptr %i.dm, align 4
  %i.bfh = icmp slt i32 %i.bff, %i.bfg
  br i1 %i.bfh, label %bb.ir, label %bb.iw

bb.ir:                                            ; preds = %bb.iq
  %i.bfi = load i32, ptr %i.dn, align 4
  %i.bfj = load i32, ptr %i.dp, align 4
  %i.bfk = icmp slt i32 %i.bfi, %i.bfj
  br i1 %i.bfk, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.bfl = load ptr, ptr %i.do, align 8
  %373 = getelementptr inbounds nuw %struct.CallInfo, ptr %i.bfl, i32 0, i32 0
  %i.bfm = load ptr, ptr %373, align 8
  %i.bfn = load i32, ptr %i.dp, align 4
  %i.bfo = sext i32 %i.bfn to i64
  %i.bfp = sub nsw i64 0, %i.bfo
  %374 = getelementptr inbounds %struct.lua_TValue, ptr %i.bfm, i64 %i.bfp
  %i.bfq = load i32, ptr %i.dn, align 4
  %i.bfr = sext i32 %i.bfq to i64
  %375 = getelementptr inbounds %struct.lua_TValue, ptr %374, i64 %i.bfr
  store ptr %375, ptr %i.dq, align 8
  %i.bfs = load ptr, ptr %i.h, align 8
  %i.bft = load i32, ptr %i.dn, align 4
  %i.bfu = sext i32 %i.bft to i64
  %376 = getelementptr inbounds %struct.lua_TValue, ptr %i.bfs, i64 %i.bfu
  store ptr %376, ptr %i.dr, align 8
  %i.bfv = load ptr, ptr %i.dr, align 8
  %377 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bfv, i32 0, i32 0
  %i.bfw = load ptr, ptr %i.dq, align 8
  %378 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bfw, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %377, ptr align 8 %378, i64 8, i1 false)
  %i.bfx = load ptr, ptr %i.dq, align 8
  %379 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bfx, i32 0, i32 1
  %i.bfy = load i32, ptr %379, align 8
  %i.bfz = load ptr, ptr %i.dr, align 8
  %380 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bfz, i32 0, i32 1
  store i32 %i.bfy, ptr %380, align 8
  br label %bb.iu

bb.it:                                            ; preds = %bb.ir
  %i.bga = load ptr, ptr %i.h, align 8
  %i.bgb = load i32, ptr %i.dn, align 4
  %i.bgc = sext i32 %i.bgb to i64
  %381 = getelementptr inbounds %struct.lua_TValue, ptr %i.bga, i64 %i.bgc
  %382 = getelementptr inbounds nuw %struct.lua_TValue, ptr %381, i32 0, i32 1
  store i32 0, ptr %382, align 8
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.bgd = load i32, ptr %i.dn, align 4
  %i.bge = add nsw i32 %i.bgd, 1
  store i32 %i.bge, ptr %i.dn, align 4
  br label %bb.iq, !llvm.loop !31

bb.iw:                                            ; preds = %bb.iq
  br label %.backedge

bb.ix:                                            ; preds = %bb.hn, %bb.c
  br label %.backedge

bb.iy:                                            ; preds = %bb.gk, %bb.ge, %bb.fs
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaC_step(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 16 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.lua_State, ptr %i.d, i32 0, i32 6
  %i.e = load ptr, ptr %1, align 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.global_State, ptr %i.f, i32 0, i32 18
  %i.g = load i32, ptr %2, align 4
  %i.h = mul i32 10, %i.g
  %i.i = zext i32 %i.h to i64
  store i64 %i.i, ptr %i.c, align 8
  %i.j = load i64, ptr %i.c, align 8
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 9223372036854775806, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.global_State, ptr %i.l, i32 0, i32 14
  %i.m = load i64, ptr %3, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.global_State, ptr %i.n, i32 0, i32 13
  %i.o = load i64, ptr %4, align 8
  %i.p = sub i64 %i.m, %i.o
  %i.q = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.global_State, ptr %i.q, i32 0, i32 16 ; 2 uses
  %i.r = load i64, ptr %5, align 8
  %i.s = add i64 %i.r, %i.p
  store i64 %i.s, ptr %5, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = call i64 @singlestep(ptr noundef %i.t)
  %i.v = load i64, ptr %i.c, align 8
  %i.w = sub nsw i64 %i.v, %i.u
  store i64 %i.w, ptr %i.c, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.global_State, ptr %i.x, i32 0, i32 4
  %i.y = load i8, ptr %6, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.c, align 8
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.g
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.e
  %i.ad = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.global_State, ptr %i.ad, i32 0, i32 4
  %i.ae = load i8, ptr %7, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = icmp ne i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.global_State, ptr %i.ah, i32 0, i32 16
  %i.ai = load i64, ptr %8, align 8
  %i.aj = icmp ult i64 %i.ai, 1024
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.global_State, ptr %i.ak, i32 0, i32 14
  %i.al = load i64, ptr %9, align 8
  %i.am = add i64 %i.al, 1024
  %i.an = load ptr, ptr %i.b, align 8
  %10 = getelementptr inbounds nuw %struct.global_State, ptr %i.an, i32 0, i32 13
  store i64 %i.am, ptr %10, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.global_State, ptr %i.ao, i32 0, i32 16 ; 2 uses
  %i.ap = load i64, ptr %11, align 8
  %i.aq = sub i64 %i.ap, 1024
  store i64 %i.aq, ptr %11, align 8
  %i.ar = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct.global_State, ptr %i.ar, i32 0, i32 14
  %i.as = load i64, ptr %12, align 8
  %i.at = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct.global_State, ptr %i.at, i32 0, i32 13
  store i64 %i.as, ptr %13, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.b, align 8
  %14 = getelementptr inbounds nuw %struct.global_State, ptr %i.au, i32 0, i32 15
  %i.av = load i64, ptr %14, align 8
  %i.aw = udiv i64 %i.av, 100
  %i.ax = load ptr, ptr %i.b, align 8
  %15 = getelementptr inbounds nuw %struct.global_State, ptr %i.ax, i32 0, i32 17
  %i.ay = load i32, ptr %15, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.aw, %i.az
  %i.bb = load ptr, ptr %i.b, align 8
  %16 = getelementptr inbounds nuw %struct.global_State, ptr %i.bb, i32 0, i32 13
  store i64 %i.ba, ptr %16, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @tryfuncTM(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call ptr @luaT_gettmbyobj(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 16)
  store ptr %i.l, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.lua_State, ptr %i.n, i32 0, i32 10
  %i.o = load ptr, ptr %2, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  store i64 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.s, i32 0, i32 1
  %i.t = load i32, ptr %3, align 8
  %i.u = icmp eq i32 %i.t, 6
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = load ptr, ptr %i.b, align 8
  call void @luaG_typeerror(ptr noundef %i.v, ptr noundef %i.w, ptr noundef @.str.19)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.lua_State, ptr %i.x, i32 0, i32 4
  %i.y = load ptr, ptr %4, align 8
  store ptr %i.y, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = icmp ugt ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.d, align 8
  %5 = getelementptr inbounds %struct.lua_TValue, ptr %i.ac, i64 -1
  store ptr %5, ptr %i.f, align 8
  %i.ad = load ptr, ptr %i.d, align 8
  store ptr %i.ad, ptr %i.g, align 8
  %i.ae = load ptr, ptr %i.g, align 8
  %6 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ae, i32 0, i32 0
  %i.af = load ptr, ptr %i.f, align 8
  %7 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.af, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %7, i64 8, i1 false)
  %i.ag = load ptr, ptr %i.f, align 8
  %8 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ag, i32 0, i32 1
  %i.ah = load i32, ptr %8, align 8
  %i.ai = load ptr, ptr %i.g, align 8
  %9 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ai, i32 0, i32 1
  store i32 %i.ah, ptr %9, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.d, align 8
  %10 = getelementptr inbounds %struct.lua_TValue, ptr %i.aj, i32 -1
  store ptr %10, ptr %i.d, align 8
  br label %bb.d, !llvm.loop !33

bb.g:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct.lua_State, ptr %i.ak, i32 0, i32 9
  %i.al = load ptr, ptr %11, align 8
  %i.am = load ptr, ptr %i.a, align 8
  %12 = getelementptr inbounds nuw %struct.lua_State, ptr %i.am, i32 0, i32 4
  %i.an = load ptr, ptr %12, align 8
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp sle i64 %i.aq, 16
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.a, align 8
  call void @luaD_growstack(ptr noundef %i.as, i32 noundef 1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %i.a, align 8
  %13 = getelementptr inbounds nuw %struct.lua_State, ptr %i.at, i32 0, i32 4 ; 2 uses
  %i.au = load ptr, ptr %13, align 8
  %14 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.au, i32 1
  store ptr %14, ptr %13, align 8
  %i.av = load ptr, ptr %i.a, align 8
  %15 = getelementptr inbounds nuw %struct.lua_State, ptr %i.av, i32 0, i32 10
  %i.aw = load ptr, ptr %15, align 8
  %i.ax = load i64, ptr %i.e, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  store ptr %i.ay, ptr %i.b, align 8
  %i.az = load ptr, ptr %i.c, align 8
  store ptr %i.az, ptr %i.h, align 8
  %i.ba = load ptr, ptr %i.b, align 8
  store ptr %i.ba, ptr %i.i, align 8
  %i.bb = load ptr, ptr %i.i, align 8
  %16 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bb, i32 0, i32 0
  %i.bc = load ptr, ptr %i.h, align 8
  %17 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bc, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %17, i64 8, i1 false)
  %i.bd = load ptr, ptr %i.h, align 8
  %18 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bd, i32 0, i32 1
  %i.be = load i32, ptr %18, align 8
  %i.bf = load ptr, ptr %i.i, align 8
  %19 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bf, i32 0, i32 1
  store i32 %i.be, ptr %19, align 8
  %i.bg = load ptr, ptr %i.b, align 8
  ret ptr %i.bg
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @adjust_varargs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  %i.h = alloca ptr, align 8                      ; 3 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
end_hunk_0
begin_hunk_1_@newkey:bb.a
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.ay = load ptr, ptr %i.e, align 8
  %22 = getelementptr inbounds nuw %struct.Node, ptr %i.ay, i32 0, i32 1
  %23 = getelementptr inbounds nuw %struct.anon.2, ptr %22, i32 0, i32 0
  %i.az = load ptr, ptr %i.d, align 8
  %24 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.az, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %24, i64 8, i1 false)
  %i.ba = load ptr, ptr %i.d, align 8
  %25 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ba, i32 0, i32 1
  %i.bb = load i32, ptr %25, align 8
  %i.bc = load ptr, ptr %i.e, align 8
  %26 = getelementptr inbounds nuw %struct.Node, ptr %i.bc, i32 0, i32 1
  %27 = getelementptr inbounds nuw %struct.anon.2, ptr %26, i32 0, i32 1
  store i32 %i.bb, ptr %27, align 8
  %i.bd = load ptr, ptr %i.d, align 8
  %28 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bd, i32 0, i32 1
  %i.be = load i32, ptr %28, align 8
  %i.bf = icmp sge i32 %i.be, 4
  br i1 %i.bf, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.d, align 8
  %29 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bg, i32 0, i32 0
  %i.bh = load ptr, ptr %29, align 8
  %30 = getelementptr inbounds nuw %struct.GCheader, ptr %i.bh, i32 0, i32 2
  %i.bi = load i8, ptr %30, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = and i32 %i.bj, 3
  %i.bl = icmp ne i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.c, align 8
  %31 = getelementptr inbounds nuw %struct.GCheader, ptr %i.bm, i32 0, i32 2
  %i.bn = load i8, ptr %31, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = and i32 %i.bo, 4
  %i.bq = icmp ne i32 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.b, align 8
  %i.bs = load ptr, ptr %i.c, align 8
  call void @luaC_barrierback(ptr noundef %i.br, ptr noundef %i.bs)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.bt = load ptr, ptr %i.e, align 8
  %32 = getelementptr inbounds nuw %struct.Node, ptr %i.bt, i32 0, i32 0
  store ptr %32, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %i.bu = load ptr, ptr %i.a, align 8
  ret ptr %i.bu
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @getfreepos(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Table, ptr %i.c, i32 0, i32 8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %2 = getelementptr inbounds %struct.Node, ptr %i.d, i32 -1
  store ptr %2, ptr %1, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Table, ptr %i.e, i32 0, i32 7
  %i.f = load ptr, ptr %3, align 8
  %i.g = icmp ugt ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Table, ptr %i.h, i32 0, i32 8
  %i.i = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %i.i, i32 0, i32 1
  %6 = getelementptr inbounds nuw %struct.anon.2, ptr %5, i32 0, i32 1
  %i.j = load i32, ptr %6, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Table, ptr %i.l, i32 0, i32 8
  %i.m = load ptr, ptr %7, align 8
  store ptr %i.m, ptr %i.a, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  br label %bb.b, !llvm.loop !48

bb.f:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.n = load ptr, ptr %i.a, align 8
  ret ptr %i.n
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca [31 x i32], align 16              ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  store i32 0, ptr %i.g, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = load i32, ptr %i.g, align 4
  %i.j = icmp sle i32 %i.i, 30
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [31 x i32], ptr %i.f, i64 0, i64 %i.l
  store i32 0, ptr %i.m, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.g, align 4
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 4
  br label %bb.b, !llvm.loop !49

bb.e:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw [31 x i32], ptr %i.f, i64 0, i64 0
  %i.r = call i32 @numusearray(ptr noundef %i.p, ptr noundef %i.q)
  store i32 %i.r, ptr %i.d, align 4
  %i.s = load i32, ptr %i.d, align 4
  store i32 %i.s, ptr %i.h, align 4
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw [31 x i32], ptr %i.f, i64 0, i64 0
  %i.v = call i32 @numusehash(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.d)
  %i.w = load i32, ptr %i.h, align 4
  %i.x = add nsw i32 %i.w, %i.v
  store i32 %i.x, ptr %i.h, align 4
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw [31 x i32], ptr %i.f, i64 0, i64 0
  %i.aa = call i32 @countint(ptr noundef %i.y, ptr noundef %i.z)
  %i.ab = load i32, ptr %i.d, align 4
  %i.ac = add nsw i32 %i.ab, %i.aa
  store i32 %i.ac, ptr %i.d, align 4
  %i.ad = load i32, ptr %i.h, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.h, align 4
  %i.af = getelementptr inbounds nuw [31 x i32], ptr %i.f, i64 0, i64 0
  %i.ag = call i32 @computesizes(ptr noundef %i.af, ptr noundef %i.d)
  store i32 %i.ag, ptr %i.e, align 4
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = load i32, ptr %i.d, align 4
  %i.ak = load i32, ptr %i.h, align 4
  %i.al = load i32, ptr %i.e, align 4
  %i.am = sub nsw i32 %i.ak, %i.al
  call void @resize(ptr noundef %i.ah, ptr noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.am)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numusearray(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 0, ptr %i.e, align 4
  store i32 1, ptr %i.f, align 4
  store i32 0, ptr %i.c, align 4
  store i32 1, ptr %i.d, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.i = load i32, ptr %i.c, align 4
  %i.j = icmp sle i32 %i.i, 30
  br i1 %i.j, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 4
  %i.k = load i32, ptr %i.d, align 4
  store i32 %i.k, ptr %i.h, align 4
  %i.l = load i32, ptr %i.h, align 4
  %i.m = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.Table, ptr %i.m, i32 0, i32 10
  %i.n = load i32, ptr %2, align 8
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Table, ptr %i.p, i32 0, i32 10
  %i.q = load i32, ptr %3, align 8
  store i32 %i.q, ptr %i.h, align 4
  %i.r = load i32, ptr %i.f, align 4
  %i.s = load i32, ptr %i.h, align 4
  %i.t = icmp sgt i32 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %i.u = load i32, ptr %i.f, align 4
  %i.v = load i32, ptr %i.h, align 4
  %i.w = icmp sle i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Table, ptr %i.x, i32 0, i32 6
  %i.y = load ptr, ptr %4, align 8
  %i.z = load i32, ptr %i.f, align 4
  %i.aa = sub nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %5 = getelementptr inbounds %struct.lua_TValue, ptr %i.y, i64 %i.ab
  %6 = getelementptr inbounds nuw %struct.lua_TValue, ptr %5, i32 0, i32 1
  %i.ac = load i32, ptr %6, align 8
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.g, align 4
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.g, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr %i.f, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.f, align 4
  br label %bb.h, !llvm.loop !50

bb.m:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.g, align 4
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i32, ptr %i.aj, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add nsw i32 %i.an, %i.ai
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = load i32, ptr %i.g, align 4
  %i.aq = load i32, ptr %i.e, align 4
  %i.ar = add nsw i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.e, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.c, align 4
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.c, align 4
  %i.au = load i32, ptr %i.d, align 4
  %i.av = mul nsw i32 %i.au, 2
  store i32 %i.av, ptr %i.d, align 4
  br label %bb.b, !llvm.loop !51

.loopexit:                                        ; preds = %bb.b
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.e
  %i.aw = load i32, ptr %i.e, align 4
  ret i32 %i.aw
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numusehash(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  store i32 0, ptr %i.d, align 4
  store i32 0, ptr %i.e, align 4
  %i.h = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.Table, ptr %i.h, i32 0, i32 4
  %i.i = load i8, ptr %3, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %i.f, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.n = load i32, ptr %i.f, align 4              ; 2 uses
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.f, align 4
  %i.p = icmp ne i32 %i.n, 0
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.Table, ptr %i.q, i32 0, i32 7
  %i.r = load ptr, ptr %4, align 8
  %i.s = load i32, ptr %i.f, align 4
  %i.t = sext i32 %i.s to i64
  %5 = getelementptr inbounds %struct.Node, ptr %i.r, i64 %i.t
  store ptr %5, ptr %i.g, align 8
  %i.u = load ptr, ptr %i.g, align 8
  %6 = getelementptr inbounds nuw %struct.Node, ptr %i.u, i32 0, i32 0
  %7 = getelementptr inbounds nuw %struct.lua_TValue, ptr %6, i32 0, i32 1
  %i.v = load i32, ptr %7, align 8
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.g, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %i.x, i32 0, i32 1
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = call i32 @countint(ptr noundef %8, ptr noundef %i.y)
  %i.aa = load i32, ptr %i.e, align 4
  %i.ab = add nsw i32 %i.aa, %i.z
  store i32 %i.ab, ptr %i.e, align 4
  %i.ac = load i32, ptr %i.d, align 4
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.d, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.b, !llvm.loop !52

bb.f:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.e, align 4
  %i.af = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = load i32, ptr %i.d, align 4
  ret i32 %i.ai
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countint(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = call i32 @arrayindex(ptr noundef %i.e)
  store i32 %i.f, ptr %i.d, align 4
  %i.g = load i32, ptr %i.d, align 4
  %i.h = icmp slt i32 0, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.d, align 4
  %i.j = icmp sle i32 %i.i, 1073741824
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = load i32, ptr %i.d, align 4
  %i.m = sub nsw i32 %i.l, 1
  %i.n = call i32 @luaO_log2(i32 noundef %i.m)
  %i.o = add nsw i32 %i.n, 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i32, ptr %i.k, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4
  store i32 1, ptr %i.a, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = load i32, ptr %i.a, align 4
  ret i32 %i.t
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @computesizes(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 0, ptr %i.e, align 4
  store i32 0, ptr %i.f, align 4
  store i32 0, ptr %i.g, align 4
  store i32 0, ptr %i.c, align 4
  store i32 1, ptr %i.d, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.h = load i32, ptr %i.d, align 4
  %i.i = sdiv i32 %i.h, 2
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load i32, ptr %i.c, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i32, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load i32, ptr %i.c, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i32, ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = load i32, ptr %i.e, align 4
  %i.y = add nsw i32 %i.x, %i.w
  store i32 %i.y, ptr %i.e, align 4
  %i.z = load i32, ptr %i.e, align 4
  %i.aa = load i32, ptr %i.d, align 4
  %i.ab = sdiv i32 %i.aa, 2
  %i.ac = icmp sgt i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.d, align 4
  store i32 %i.ad, ptr %i.g, align 4
  %i.ae = load i32, ptr %i.e, align 4
  store i32 %i.ae, ptr %i.f, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.af = load i32, ptr %i.e, align 4
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.c, align 4
  %i.al = load i32, ptr %i.d, align 4
  %i.am = mul nsw i32 %i.al, 2
  store i32 %i.am, ptr %i.d, align 4
  br label %bb.b, !llvm.loop !53

.loopexit:                                        ; preds = %bb.b
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.h
  %i.an = load i32, ptr %i.g, align 4
  %i.ao = load ptr, ptr %i.b, align 8
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = load i32, ptr %i.f, align 4
  ret i32 %i.ap
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 3 uses
  %i.m = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 %2, ptr %i.c, align 4
  store i32 %3, ptr %i.d, align 4
  %i.n = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Table, ptr %i.n, i32 0, i32 10
  %i.o = load i32, ptr %4, align 8
  store i32 %i.o, ptr %i.f, align 4
  %i.p = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Table, ptr %i.p, i32 0, i32 4
  %i.q = load i8, ptr %5, align 1
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.g, align 4
  %i.s = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Table, ptr %i.s, i32 0, i32 7
  %i.t = load ptr, ptr %6, align 8
  store ptr %i.t, ptr %i.h, align 8
  %i.u = load i32, ptr %i.c, align 4
  %i.v = load i32, ptr %i.f, align 4
  %i.w = icmp sgt i32 %i.u, %i.v
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = load i32, ptr %i.c, align 4
  call void @setarrayvector(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.z)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = load i32, ptr %i.d, align 4
  call void @setnodevector(ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef %i.ac)
  %i.ad = load i32, ptr %i.c, align 4
  %i.ae = load i32, ptr %i.f, align 4
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Table, ptr %i.ah, i32 0, i32 10
  store i32 %i.ag, ptr %7, align 8
  %i.ai = load i32, ptr %i.c, align 4
  store i32 %i.ai, ptr %i.e, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.aj = load i32, ptr %i.e, align 4
  %i.ak = load i32, ptr %i.f, align 4
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.Table, ptr %i.am, i32 0, i32 6
  %i.an = load ptr, ptr %8, align 8
  %i.ao = load i32, ptr %i.e, align 4
  %i.ap = sext i32 %i.ao to i64
  %9 = getelementptr inbounds %struct.lua_TValue, ptr %i.an, i64 %i.ap
  %10 = getelementptr inbounds nuw %struct.lua_TValue, ptr %9, i32 0, i32 1
  %i.aq = load i32, ptr %10, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.Table, ptr %i.as, i32 0, i32 6
  %i.at = load ptr, ptr %11, align 8
  %i.au = load i32, ptr %i.e, align 4
  %i.av = sext i32 %i.au to i64
  %12 = getelementptr inbounds %struct.lua_TValue, ptr %i.at, i64 %i.av
  store ptr %12, ptr %i.i, align 8
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = load ptr, ptr %i.b, align 8
  %i.ay = load i32, ptr %i.e, align 4
  %i.az = add nsw i32 %i.ay, 1
  %i.ba = call ptr @luaH_setnum(ptr noundef %i.aw, ptr noundef %i.ax, i32 noundef %i.az)
  store ptr %i.ba, ptr %i.j, align 8
  %i.bb = load ptr, ptr %i.j, align 8
  %13 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bb, i32 0, i32 0
  %i.bc = load ptr, ptr %i.i, align 8
  %14 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bc, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 8, i1 false)
  %i.bd = load ptr, ptr %i.i, align 8
  %15 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bd, i32 0, i32 1
  %i.be = load i32, ptr %15, align 8
  %i.bf = load ptr, ptr %i.j, align 8
  %16 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.bf, i32 0, i32 1
  store i32 %i.be, ptr %16, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.e, align 4
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.e, align 4
  br label %bb.e, !llvm.loop !54

bb.j:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.c, align 4
  %i.bj = add nsw i32 %i.bi, 1
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp ule i64 %i.bk, 1152921504606846975
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = load ptr, ptr %i.b, align 8
  %17 = getelementptr inbounds nuw %struct.Table, ptr %i.bn, i32 0, i32 6
  %i.bo = load ptr, ptr %17, align 8
  %i.bp = load i32, ptr %i.f, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %i.bq, 16
  %i.bs = load i32, ptr %i.c, align 4
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i64 %i.bt, 16
  %i.bv = call ptr @luaM_realloc_(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.br, i64 noundef %i.bu)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = call ptr @luaM_toobig(ptr noundef %i.bw) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.by = phi ptr [ %i.bv, %bb.k ], [ null, %bb.l ]
  %i.bz = load ptr, ptr %i.b, align 8
  %18 = getelementptr inbounds nuw %struct.Table, ptr %i.bz, i32 0, i32 6
  store ptr %i.by, ptr %18, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.ca = load i32, ptr %i.g, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = sub i64 %i.cc, 1
  %i.ce = trunc i64 %i.cd to i32
  store i32 %i.ce, ptr %i.e, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.cf = load i32, ptr %i.e, align 4
  %i.cg = icmp sge i32 %i.cf, 0
  br i1 %i.cg, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr %i.h, align 8
  %i.ci = load i32, ptr %i.e, align 4
  %i.cj = sext i32 %i.ci to i64
  %19 = getelementptr inbounds %struct.Node, ptr %i.ch, i64 %i.cj
  store ptr %19, ptr %i.k, align 8
  %i.ck = load ptr, ptr %i.k, align 8
  %20 = getelementptr inbounds nuw %struct.Node, ptr %i.ck, i32 0, i32 0
  %21 = getelementptr inbounds nuw %struct.lua_TValue, ptr %20, i32 0, i32 1
  %i.cl = load i32, ptr %21, align 8
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.k, align 8
  %22 = getelementptr inbounds nuw %struct.Node, ptr %i.cn, i32 0, i32 0
  store ptr %22, ptr %i.l, align 8
  %i.co = load ptr, ptr %i.a, align 8
  %i.cp = load ptr, ptr %i.b, align 8
  %i.cq = load ptr, ptr %i.k, align 8
  %23 = getelementptr inbounds nuw %struct.Node, ptr %i.cq, i32 0, i32 1
  %i.cr = call ptr @luaH_set(ptr noundef %i.co, ptr noundef %i.cp, ptr noundef %23)
  store ptr %i.cr, ptr %i.m, align 8
  %i.cs = load ptr, ptr %i.m, align 8
  %24 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.cs, i32 0, i32 0
  %i.ct = load ptr, ptr %i.l, align 8
  %25 = getelementptr inbounds nuw %struct.lua_TValue, ptr %i.ct, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %25, i64 8, i1 false)
end_hunk_1
begin_hunk_2_@close_func:bb.a
  %i.em = load ptr, ptr %i.d, align 8
  %41 = getelementptr inbounds nuw %struct.Proto, ptr %i.em, i32 0, i32 10
  %i.en = load i32, ptr %41, align 8
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul nsw i64 %i.eo, 8
  %i.eq = load ptr, ptr %i.d, align 8
  %42 = getelementptr inbounds nuw %struct.Proto, ptr %i.eq, i32 0, i32 19
  %i.er = load i8, ptr %42, align 8
  %i.es = zext i8 %i.er to i64
  %i.et = mul nuw nsw i64 %i.es, 8
  %i.eu = call ptr @luaM_realloc_(ptr noundef %i.ej, ptr noundef %i.el, i64 noundef %i.ep, i64 noundef %i.et)
  br label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ev = load ptr, ptr %i.d, align 8
  %43 = getelementptr inbounds nuw %struct.Proto, ptr %i.ev, i32 0, i32 8
  store ptr %i.eu, ptr %43, align 8
  %i.ew = load ptr, ptr %i.d, align 8
  %44 = getelementptr inbounds nuw %struct.Proto, ptr %i.ew, i32 0, i32 19
  %i.ex = load i8, ptr %44, align 8
  %i.ey = zext i8 %i.ex to i32
  %i.ez = load ptr, ptr %i.d, align 8
  %45 = getelementptr inbounds nuw %struct.Proto, ptr %i.ez, i32 0, i32 10
  store i32 %i.ey, ptr %45, align 8
  %i.fa = load ptr, ptr %i.c, align 8
  %46 = getelementptr inbounds nuw %struct.FuncState, ptr %i.fa, i32 0, i32 2
  %i.fb = load ptr, ptr %46, align 8
  %i.fc = load ptr, ptr %i.a, align 8
  %47 = getelementptr inbounds nuw %struct.LexState, ptr %i.fc, i32 0, i32 5
  store ptr %i.fb, ptr %47, align 8
  %i.fd = load ptr, ptr %i.c, align 8
  %i.fe = icmp ne ptr %i.fd, null
  br i1 %i.fe, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ff = load ptr, ptr %i.a, align 8
  call void @anchor_token(ptr noundef %i.ff)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fg = load ptr, ptr %i.b, align 8
  %48 = getelementptr inbounds nuw %struct.lua_State, ptr %i.fg, i32 0, i32 4 ; 2 uses
  %i.fh = load ptr, ptr %48, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, ptr %i.fh, i64 -2
  store ptr %49, ptr %48, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaZ_fill(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Zio, ptr %i.f, i32 0, i32 4
  %i.g = load ptr, ptr %1, align 8
  store ptr %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Zio, ptr %i.h, i32 0, i32 2
  %i.i = load ptr, ptr %2, align 8
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Zio, ptr %i.k, i32 0, i32 3
  %i.l = load ptr, ptr %3, align 8
  %i.m = call ptr %i.i(ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.c)
  store ptr %i.m, ptr %i.e, align 8
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.c, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 -1, ptr %i.a, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.c, align 8
  %i.s = sub i64 %i.r, 1
  %i.t = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Zio, ptr %i.t, i32 0, i32 0
  store i64 %i.s, ptr %4, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Zio, ptr %i.v, i32 0, i32 1
  store ptr %i.u, ptr %5, align 8
  %i.w = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Zio, ptr %i.w, i32 0, i32 1 ; 2 uses
  %i.x = load ptr, ptr %6, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i32 1
  store ptr %i.y, ptr %6, align 8
  %i.z = load i8, ptr %i.x, align 1
  %i.aa = zext i8 %i.z to i32
  store i32 %i.aa, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i32, ptr %i.a, align 4
  ret i32 %i.ab
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @luaF_newproto(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 22 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = call ptr @luaM_realloc_(ptr noundef %i.c, ptr noundef null, i64 noundef 0, i64 noundef 120)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.b, align 8
  call void @luaC_link(ptr noundef %i.e, ptr noundef %i.f, i8 noundef zeroext 9)
  %i.g = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.Proto, ptr %i.g, i32 0, i32 3
  store ptr null, ptr %1, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.Proto, ptr %i.h, i32 0, i32 11
  store i32 0, ptr %2, align 4
  %i.i = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.Proto, ptr %i.i, i32 0, i32 5
  store ptr null, ptr %3, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.Proto, ptr %i.j, i32 0, i32 14
  store i32 0, ptr %4, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.Proto, ptr %i.k, i32 0, i32 4
  store ptr null, ptr %5, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.Proto, ptr %i.l, i32 0, i32 12
  store i32 0, ptr %6, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.Proto, ptr %i.m, i32 0, i32 13
  store i32 0, ptr %7, align 4
  %i.n = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.Proto, ptr %i.n, i32 0, i32 10
  store i32 0, ptr %8, align 8
  %i.o = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.Proto, ptr %i.o, i32 0, i32 19
  store i8 0, ptr %9, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %10 = getelementptr inbounds nuw %struct.Proto, ptr %i.p, i32 0, i32 8
  store ptr null, ptr %10, align 8
  %i.q = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.Proto, ptr %i.q, i32 0, i32 20
  store i8 0, ptr %11, align 1
  %i.r = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct.Proto, ptr %i.r, i32 0, i32 21
  store i8 0, ptr %12, align 2
  %i.s = load ptr, ptr %i.b, align 8
  %13 = getelementptr inbounds nuw %struct.Proto, ptr %i.s, i32 0, i32 22
  store i8 0, ptr %13, align 1
  %i.t = load ptr, ptr %i.b, align 8
  %14 = getelementptr inbounds nuw %struct.Proto, ptr %i.t, i32 0, i32 6
  store ptr null, ptr %14, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %15 = getelementptr inbounds nuw %struct.Proto, ptr %i.u, i32 0, i32 15
  store i32 0, ptr %15, align 4
  %i.v = load ptr, ptr %i.b, align 8
  %16 = getelementptr inbounds nuw %struct.Proto, ptr %i.v, i32 0, i32 7
  store ptr null, ptr %16, align 8
  %i.w = load ptr, ptr %i.b, align 8
  %17 = getelementptr inbounds nuw %struct.Proto, ptr %i.w, i32 0, i32 16
  store i32 0, ptr %17, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %18 = getelementptr inbounds nuw %struct.Proto, ptr %i.x, i32 0, i32 17
  store i32 0, ptr %18, align 4
  %i.y = load ptr, ptr %i.b, align 8
  %19 = getelementptr inbounds nuw %struct.Proto, ptr %i.y, i32 0, i32 9
  store ptr null, ptr %19, align 8
  %i.z = load ptr, ptr %i.b, align 8
  ret ptr %i.z
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llex(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca ptr, align 8                      ; 101 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.h = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.LexState, ptr %i.h, i32 0, i32 8
  %i.i = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.i, i32 0, i32 1
  store i64 0, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.j = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.LexState, ptr %i.j, i32 0, i32 0
  %i.k = load i32, ptr %4, align 8
  switch i32 %i.k, label %bb.cb [
    i32 10, label %bb.c
    i32 13, label %bb.c
    i32 45, label %bb.d
    i32 91, label %bb.z
    i32 61, label %bb.af
    i32 60, label %bb.ao
    i32 62, label %bb.ax
    i32 126, label %bb.bg
    i32 34, label %bb.bp
    i32 39, label %bb.bp
    i32 46, label %bb.bq
    i32 -1, label %bb.ca
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.l = load ptr, ptr %i.b, align 8
  call void @inclinenumber(ptr noundef %i.l)
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.n, %bb.y, %bb.cf
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.LexState, ptr %i.m, i32 0, i32 7
  %i.n = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Zio, ptr %i.n, i32 0, i32 0 ; 2 uses
  %i.o = load i64, ptr %6, align 8                ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %6, align 8
  %i.q = icmp ugt i64 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.LexState, ptr %i.r, i32 0, i32 7
  %i.s = load ptr, ptr %7, align 8
  %8 = getelementptr inbounds nuw %struct.Zio, ptr %i.s, i32 0, i32 1 ; 2 uses
  %i.t = load ptr, ptr %8, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i32 1
  store ptr %i.u, ptr %8, align 8
  %i.v = load i8, ptr %i.t, align 1
  %i.w = zext i8 %i.v to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8
  %9 = getelementptr inbounds nuw %struct.LexState, ptr %i.x, i32 0, i32 7
  %i.y = load ptr, ptr %9, align 8
  %i.z = call i32 @luaZ_fill(ptr noundef %i.y)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi i32 [ %i.w, %bb.e ], [ %i.z, %bb.f ]
  %i.ab = load ptr, ptr %i.b, align 8
  %10 = getelementptr inbounds nuw %struct.LexState, ptr %i.ab, i32 0, i32 0
  store i32 %i.aa, ptr %10, align 8
  %i.ac = load ptr, ptr %i.b, align 8
  %11 = getelementptr inbounds nuw %struct.LexState, ptr %i.ac, i32 0, i32 0
  %i.ad = load i32, ptr %11, align 8
  %i.ae = icmp ne i32 %i.ad, 45
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 45, ptr %i.a, align 4
  br label %bb.cz

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.b, align 8
  %12 = getelementptr inbounds nuw %struct.LexState, ptr %i.af, i32 0, i32 7
  %i.ag = load ptr, ptr %12, align 8
  %13 = getelementptr inbounds nuw %struct.Zio, ptr %i.ag, i32 0, i32 0 ; 2 uses
  %i.ah = load i64, ptr %13, align 8              ; 2 uses
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %13, align 8
  %i.aj = icmp ugt i64 %i.ah, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.b, align 8
  %14 = getelementptr inbounds nuw %struct.LexState, ptr %i.ak, i32 0, i32 7
  %i.al = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds nuw %struct.Zio, ptr %i.al, i32 0, i32 1 ; 2 uses
  %i.am = load ptr, ptr %15, align 8              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i32 1
  store ptr %i.an, ptr %15, align 8
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.b, align 8
  %16 = getelementptr inbounds nuw %struct.LexState, ptr %i.aq, i32 0, i32 7
  %i.ar = load ptr, ptr %16, align 8
  %i.as = call i32 @luaZ_fill(ptr noundef %i.ar)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = phi i32 [ %i.ap, %bb.j ], [ %i.as, %bb.k ]
  %i.au = load ptr, ptr %i.b, align 8
  %17 = getelementptr inbounds nuw %struct.LexState, ptr %i.au, i32 0, i32 0
  store i32 %i.at, ptr %17, align 8
  %i.av = load ptr, ptr %i.b, align 8
  %18 = getelementptr inbounds nuw %struct.LexState, ptr %i.av, i32 0, i32 0
  %i.aw = load i32, ptr %18, align 8
  %i.ax = icmp eq i32 %i.aw, 91
  br i1 %i.ax, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = call i32 @skip_sep(ptr noundef %i.ay)
  store i32 %i.az, ptr %i.d, align 4
  %i.ba = load ptr, ptr %i.b, align 8
  %19 = getelementptr inbounds nuw %struct.LexState, ptr %i.ba, i32 0, i32 8
  %i.bb = load ptr, ptr %19, align 8
  %20 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.bb, i32 0, i32 1
  store i64 0, ptr %20, align 8
  %i.bc = load i32, ptr %i.d, align 4
  %i.bd = icmp sge i32 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.b, align 8
  %i.bf = load i32, ptr %i.d, align 4
  call void @read_long_string(ptr noundef %i.be, ptr noundef null, i32 noundef %i.bf)
  %i.bg = load ptr, ptr %i.b, align 8
  %21 = getelementptr inbounds nuw %struct.LexState, ptr %i.bg, i32 0, i32 8
  %i.bh = load ptr, ptr %21, align 8
  %22 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.bh, i32 0, i32 1
  store i64 0, ptr %22, align 8
  br label %.backedge

bb.o:                                             ; preds = %bb.m
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  br label %bb.q

bb.q:                                             ; preds = %bb.x, %bb.p
  %i.bi = load ptr, ptr %i.b, align 8
  %23 = getelementptr inbounds nuw %struct.LexState, ptr %i.bi, i32 0, i32 0
  %i.bj = load i32, ptr %23, align 8
  %i.bk = icmp eq i32 %i.bj, 10
  br i1 %i.bk, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.b, align 8
  %24 = getelementptr inbounds nuw %struct.LexState, ptr %i.bl, i32 0, i32 0
  %i.bm = load i32, ptr %24, align 8
  %i.bn = icmp eq i32 %i.bm, 13
  br i1 %i.bn, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %i.b, align 8
  %25 = getelementptr inbounds nuw %struct.LexState, ptr %i.bo, i32 0, i32 0
  %i.bp = load i32, ptr %25, align 8
  %i.bq = icmp ne i32 %i.bp, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.br = phi i1 [ false, %bb.r ], [ false, %bb.q ], [ %i.bq, %bb.s ]
  br i1 %i.br, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.b, align 8
  %26 = getelementptr inbounds nuw %struct.LexState, ptr %i.bs, i32 0, i32 7
  %i.bt = load ptr, ptr %26, align 8
  %27 = getelementptr inbounds nuw %struct.Zio, ptr %i.bt, i32 0, i32 0 ; 2 uses
  %i.bu = load i64, ptr %27, align 8              ; 2 uses
  %i.bv = add i64 %i.bu, -1
  store i64 %i.bv, ptr %27, align 8
  %i.bw = icmp ugt i64 %i.bu, 0
  br i1 %i.bw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %i.b, align 8
  %28 = getelementptr inbounds nuw %struct.LexState, ptr %i.bx, i32 0, i32 7
  %i.by = load ptr, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Zio, ptr %i.by, i32 0, i32 1 ; 2 uses
  %i.bz = load ptr, ptr %29, align 8              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i32 1
  store ptr %i.ca, ptr %29, align 8
  %i.cb = load i8, ptr %i.bz, align 1
  %i.cc = zext i8 %i.cb to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.b, align 8
  %30 = getelementptr inbounds nuw %struct.LexState, ptr %i.cd, i32 0, i32 7
  %i.ce = load ptr, ptr %30, align 8
  %i.cf = call i32 @luaZ_fill(ptr noundef %i.ce)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cg = phi i32 [ %i.cc, %bb.v ], [ %i.cf, %bb.w ]
  %i.ch = load ptr, ptr %i.b, align 8
  %31 = getelementptr inbounds nuw %struct.LexState, ptr %i.ch, i32 0, i32 0
  store i32 %i.cg, ptr %31, align 8
  br label %bb.q, !llvm.loop !94

bb.y:                                             ; preds = %bb.t
  br label %.backedge

bb.z:                                             ; preds = %bb.b
  %i.ci = load ptr, ptr %i.b, align 8
  %i.cj = call i32 @skip_sep(ptr noundef %i.ci)
  store i32 %i.cj, ptr %i.e, align 4
  %i.ck = load i32, ptr %i.e, align 4
  %i.cl = icmp sge i32 %i.ck, 0
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.b, align 8
  %i.cn = load ptr, ptr %i.c, align 8
  %i.co = load i32, ptr %i.e, align 4
  call void @read_long_string(ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef %i.co)
  store i32 286, ptr %i.a, align 4
  br label %bb.cz

bb.ab:                                            ; preds = %bb.z
  %i.cp = load i32, ptr %i.e, align 4
  %i.cq = icmp ne i32 %i.cp, -1
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.b, align 8
  call void @luaX_lexerror(ptr noundef %i.cr, ptr noundef @.str.134, i32 noundef 286)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 91, ptr %i.a, align 4
  br label %bb.cz

bb.af:                                            ; preds = %bb.b
  %i.cs = load ptr, ptr %i.b, align 8
  %32 = getelementptr inbounds nuw %struct.LexState, ptr %i.cs, i32 0, i32 7
  %i.ct = load ptr, ptr %32, align 8
  %33 = getelementptr inbounds nuw %struct.Zio, ptr %i.ct, i32 0, i32 0 ; 2 uses
  %i.cu = load i64, ptr %33, align 8              ; 2 uses
  %i.cv = add i64 %i.cu, -1
  store i64 %i.cv, ptr %33, align 8
  %i.cw = icmp ugt i64 %i.cu, 0
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cx = load ptr, ptr %i.b, align 8
  %34 = getelementptr inbounds nuw %struct.LexState, ptr %i.cx, i32 0, i32 7
  %i.cy = load ptr, ptr %34, align 8
  %35 = getelementptr inbounds nuw %struct.Zio, ptr %i.cy, i32 0, i32 1 ; 2 uses
  %i.cz = load ptr, ptr %35, align 8              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i32 1
  store ptr %i.da, ptr %35, align 8
  %i.db = load i8, ptr %i.cz, align 1
  %i.dc = zext i8 %i.db to i32
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dd = load ptr, ptr %i.b, align 8
  %36 = getelementptr inbounds nuw %struct.LexState, ptr %i.dd, i32 0, i32 7
  %i.de = load ptr, ptr %36, align 8
  %i.df = call i32 @luaZ_fill(ptr noundef %i.de)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.dg = phi i32 [ %i.dc, %bb.ag ], [ %i.df, %bb.ah ]
  %i.dh = load ptr, ptr %i.b, align 8
  %37 = getelementptr inbounds nuw %struct.LexState, ptr %i.dh, i32 0, i32 0
  store i32 %i.dg, ptr %37, align 8
  %i.di = load ptr, ptr %i.b, align 8
  %38 = getelementptr inbounds nuw %struct.LexState, ptr %i.di, i32 0, i32 0
  %i.dj = load i32, ptr %38, align 8
  %i.dk = icmp ne i32 %i.dj, 61
  br i1 %i.dk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 61, ptr %i.a, align 4
  br label %bb.cz

bb.ak:                                            ; preds = %bb.ai
  %i.dl = load ptr, ptr %i.b, align 8
  %39 = getelementptr inbounds nuw %struct.LexState, ptr %i.dl, i32 0, i32 7
  %i.dm = load ptr, ptr %39, align 8
  %40 = getelementptr inbounds nuw %struct.Zio, ptr %i.dm, i32 0, i32 0 ; 2 uses
  %i.dn = load i64, ptr %40, align 8              ; 2 uses
  %i.do = add i64 %i.dn, -1
  store i64 %i.do, ptr %40, align 8
  %i.dp = icmp ugt i64 %i.dn, 0
  br i1 %i.dp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dq = load ptr, ptr %i.b, align 8
  %41 = getelementptr inbounds nuw %struct.LexState, ptr %i.dq, i32 0, i32 7
  %i.dr = load ptr, ptr %41, align 8
  %42 = getelementptr inbounds nuw %struct.Zio, ptr %i.dr, i32 0, i32 1 ; 2 uses
  %i.ds = load ptr, ptr %42, align 8              ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i32 1
  store ptr %i.dt, ptr %42, align 8
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i32
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dw = load ptr, ptr %i.b, align 8
  %43 = getelementptr inbounds nuw %struct.LexState, ptr %i.dw, i32 0, i32 7
  %i.dx = load ptr, ptr %43, align 8
  %i.dy = call i32 @luaZ_fill(ptr noundef %i.dx)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dz = phi i32 [ %i.dv, %bb.al ], [ %i.dy, %bb.am ]
  %i.ea = load ptr, ptr %i.b, align 8
  %44 = getelementptr inbounds nuw %struct.LexState, ptr %i.ea, i32 0, i32 0
  store i32 %i.dz, ptr %44, align 8
  store i32 280, ptr %i.a, align 4
  br label %bb.cz

bb.ao:                                            ; preds = %bb.b
  %i.eb = load ptr, ptr %i.b, align 8
  %45 = getelementptr inbounds nuw %struct.LexState, ptr %i.eb, i32 0, i32 7
  %i.ec = load ptr, ptr %45, align 8
  %46 = getelementptr inbounds nuw %struct.Zio, ptr %i.ec, i32 0, i32 0 ; 2 uses
  %i.ed = load i64, ptr %46, align 8              ; 2 uses
  %i.ee = add i64 %i.ed, -1
  store i64 %i.ee, ptr %46, align 8
  %i.ef = icmp ugt i64 %i.ed, 0
  br i1 %i.ef, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eg = load ptr, ptr %i.b, align 8
  %47 = getelementptr inbounds nuw %struct.LexState, ptr %i.eg, i32 0, i32 7
  %i.eh = load ptr, ptr %47, align 8
  %48 = getelementptr inbounds nuw %struct.Zio, ptr %i.eh, i32 0, i32 1 ; 2 uses
  %i.ei = load ptr, ptr %48, align 8              ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i32 1
  store ptr %i.ej, ptr %48, align 8
  %i.ek = load i8, ptr %i.ei, align 1
  %i.el = zext i8 %i.ek to i32
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.em = load ptr, ptr %i.b, align 8
  %49 = getelementptr inbounds nuw %struct.LexState, ptr %i.em, i32 0, i32 7
  %i.en = load ptr, ptr %49, align 8
  %i.eo = call i32 @luaZ_fill(ptr noundef %i.en)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ep = phi i32 [ %i.el, %bb.ap ], [ %i.eo, %bb.aq ]
  %i.eq = load ptr, ptr %i.b, align 8
  %50 = getelementptr inbounds nuw %struct.LexState, ptr %i.eq, i32 0, i32 0
  store i32 %i.ep, ptr %50, align 8
  %i.er = load ptr, ptr %i.b, align 8
  %51 = getelementptr inbounds nuw %struct.LexState, ptr %i.er, i32 0, i32 0
  %i.es = load i32, ptr %51, align 8
  %i.et = icmp ne i32 %i.es, 61
  br i1 %i.et, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 60, ptr %i.a, align 4
  br label %bb.cz

bb.at:                                            ; preds = %bb.ar
  %i.eu = load ptr, ptr %i.b, align 8
  %52 = getelementptr inbounds nuw %struct.LexState, ptr %i.eu, i32 0, i32 7
  %i.ev = load ptr, ptr %52, align 8
  %53 = getelementptr inbounds nuw %struct.Zio, ptr %i.ev, i32 0, i32 0 ; 2 uses
  %i.ew = load i64, ptr %53, align 8              ; 2 uses
  %i.ex = add i64 %i.ew, -1
  store i64 %i.ex, ptr %53, align 8
  %i.ey = icmp ugt i64 %i.ew, 0
  br i1 %i.ey, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ez = load ptr, ptr %i.b, align 8
  %54 = getelementptr inbounds nuw %struct.LexState, ptr %i.ez, i32 0, i32 7
  %i.fa = load ptr, ptr %54, align 8
  %55 = getelementptr inbounds nuw %struct.Zio, ptr %i.fa, i32 0, i32 1 ; 2 uses
  %i.fb = load ptr, ptr %55, align 8              ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i32 1
  store ptr %i.fc, ptr %55, align 8
  %i.fd = load i8, ptr %i.fb, align 1
  %i.fe = zext i8 %i.fd to i32
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ff = load ptr, ptr %i.b, align 8
  %56 = getelementptr inbounds nuw %struct.LexState, ptr %i.ff, i32 0, i32 7
  %i.fg = load ptr, ptr %56, align 8
  %i.fh = call i32 @luaZ_fill(ptr noundef %i.fg)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fi = phi i32 [ %i.fe, %bb.au ], [ %i.fh, %bb.av ]
  %i.fj = load ptr, ptr %i.b, align 8
  %57 = getelementptr inbounds nuw %struct.LexState, ptr %i.fj, i32 0, i32 0
  store i32 %i.fi, ptr %57, align 8
  store i32 282, ptr %i.a, align 4
  br label %bb.cz

end_hunk_2
begin_hunk_3_@llex:bb.a
bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.hh = phi i32 [ %i.hd, %bb.bh ], [ %i.hg, %bb.bi ]
  %i.hi = load ptr, ptr %i.b, align 8
  %76 = getelementptr inbounds nuw %struct.LexState, ptr %i.hi, i32 0, i32 0
  store i32 %i.hh, ptr %76, align 8
  %i.hj = load ptr, ptr %i.b, align 8
  %77 = getelementptr inbounds nuw %struct.LexState, ptr %i.hj, i32 0, i32 0
  %i.hk = load i32, ptr %77, align 8
  %i.hl = icmp ne i32 %i.hk, 61
  br i1 %i.hl, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 126, ptr %i.a, align 4
  br label %bb.cz

bb.bl:                                            ; preds = %bb.bj
  %i.hm = load ptr, ptr %i.b, align 8
  %78 = getelementptr inbounds nuw %struct.LexState, ptr %i.hm, i32 0, i32 7
  %i.hn = load ptr, ptr %78, align 8
  %79 = getelementptr inbounds nuw %struct.Zio, ptr %i.hn, i32 0, i32 0 ; 2 uses
  %i.ho = load i64, ptr %79, align 8              ; 2 uses
  %i.hp = add i64 %i.ho, -1
  store i64 %i.hp, ptr %79, align 8
  %i.hq = icmp ugt i64 %i.ho, 0
  br i1 %i.hq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hr = load ptr, ptr %i.b, align 8
  %80 = getelementptr inbounds nuw %struct.LexState, ptr %i.hr, i32 0, i32 7
  %i.hs = load ptr, ptr %80, align 8
  %81 = getelementptr inbounds nuw %struct.Zio, ptr %i.hs, i32 0, i32 1 ; 2 uses
  %i.ht = load ptr, ptr %81, align 8              ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i32 1
  store ptr %i.hu, ptr %81, align 8
  %i.hv = load i8, ptr %i.ht, align 1
  %i.hw = zext i8 %i.hv to i32
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.hx = load ptr, ptr %i.b, align 8
  %82 = getelementptr inbounds nuw %struct.LexState, ptr %i.hx, i32 0, i32 7
  %i.hy = load ptr, ptr %82, align 8
  %i.hz = call i32 @luaZ_fill(ptr noundef %i.hy)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ia = phi i32 [ %i.hw, %bb.bm ], [ %i.hz, %bb.bn ]
  %i.ib = load ptr, ptr %i.b, align 8
  %83 = getelementptr inbounds nuw %struct.LexState, ptr %i.ib, i32 0, i32 0
  store i32 %i.ia, ptr %83, align 8
  store i32 283, ptr %i.a, align 4
  br label %bb.cz

bb.bp:                                            ; preds = %bb.b, %bb.b
  %i.ic = load ptr, ptr %i.b, align 8
  %i.id = load ptr, ptr %i.b, align 8
  %84 = getelementptr inbounds nuw %struct.LexState, ptr %i.id, i32 0, i32 0
  %i.ie = load i32, ptr %84, align 8
  %i.if = load ptr, ptr %i.c, align 8
  call void @read_string(ptr noundef %i.ic, i32 noundef %i.ie, ptr noundef %i.if)
  store i32 286, ptr %i.a, align 4
  br label %bb.cz

bb.bq:                                            ; preds = %bb.b
  %i.ig = load ptr, ptr %i.b, align 8
  %i.ih = load ptr, ptr %i.b, align 8
  %85 = getelementptr inbounds nuw %struct.LexState, ptr %i.ih, i32 0, i32 0
  %i.ii = load i32, ptr %85, align 8
  call void @save(ptr noundef %i.ig, i32 noundef %i.ii)
  %i.ij = load ptr, ptr %i.b, align 8
  %86 = getelementptr inbounds nuw %struct.LexState, ptr %i.ij, i32 0, i32 7
  %i.ik = load ptr, ptr %86, align 8
  %87 = getelementptr inbounds nuw %struct.Zio, ptr %i.ik, i32 0, i32 0 ; 2 uses
  %i.il = load i64, ptr %87, align 8              ; 2 uses
  %i.im = add i64 %i.il, -1
  store i64 %i.im, ptr %87, align 8
  %i.in = icmp ugt i64 %i.il, 0
  br i1 %i.in, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.io = load ptr, ptr %i.b, align 8
  %88 = getelementptr inbounds nuw %struct.LexState, ptr %i.io, i32 0, i32 7
  %i.ip = load ptr, ptr %88, align 8
  %89 = getelementptr inbounds nuw %struct.Zio, ptr %i.ip, i32 0, i32 1 ; 2 uses
  %i.iq = load ptr, ptr %89, align 8              ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i32 1
  store ptr %i.ir, ptr %89, align 8
  %i.is = load i8, ptr %i.iq, align 1
  %i.it = zext i8 %i.is to i32
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.iu = load ptr, ptr %i.b, align 8
  %90 = getelementptr inbounds nuw %struct.LexState, ptr %i.iu, i32 0, i32 7
  %i.iv = load ptr, ptr %90, align 8
  %i.iw = call i32 @luaZ_fill(ptr noundef %i.iv)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ix = phi i32 [ %i.it, %bb.br ], [ %i.iw, %bb.bs ]
  %i.iy = load ptr, ptr %i.b, align 8
  %91 = getelementptr inbounds nuw %struct.LexState, ptr %i.iy, i32 0, i32 0
  store i32 %i.ix, ptr %91, align 8
  %i.iz = load ptr, ptr %i.b, align 8
  %i.ja = call i32 @check_next(ptr noundef %i.iz, ptr noundef @.str.135)
  %i.jb = icmp ne i32 %i.ja, 0
  br i1 %i.jb, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.jc = load ptr, ptr %i.b, align 8
  %i.jd = call i32 @check_next(ptr noundef %i.jc, ptr noundef @.str.135)
  %i.je = icmp ne i32 %i.jd, 0
  br i1 %i.je, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 279, ptr %i.a, align 4
  br label %bb.cz

bb.bw:                                            ; preds = %bb.bu
  store i32 278, ptr %i.a, align 4
  br label %bb.cz

bb.bx:                                            ; preds = %bb.bt
  %i.jf = call ptr @__ctype_b_loc() #26
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = load ptr, ptr %i.b, align 8
  %92 = getelementptr inbounds nuw %struct.LexState, ptr %i.jh, i32 0, i32 0
  %i.ji = load i32, ptr %92, align 8
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds i16, ptr %i.jg, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2
  %i.jm = zext i16 %i.jl to i32
  %i.jn = and i32 %i.jm, 2048
  %i.jo = icmp ne i32 %i.jn, 0
  br i1 %i.jo, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 46, ptr %i.a, align 4
  br label %bb.cz

bb.bz:                                            ; preds = %bb.bx
  %i.jp = load ptr, ptr %i.b, align 8
  %i.jq = load ptr, ptr %i.c, align 8
  call void @read_numeral(ptr noundef %i.jp, ptr noundef %i.jq)
  store i32 284, ptr %i.a, align 4
  br label %bb.cz

bb.ca:                                            ; preds = %bb.b
  store i32 287, ptr %i.a, align 4
  br label %bb.cz

bb.cb:                                            ; preds = %bb.b
  %i.jr = call ptr @__ctype_b_loc() #26
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = load ptr, ptr %i.b, align 8
  %93 = getelementptr inbounds nuw %struct.LexState, ptr %i.jt, i32 0, i32 0
  %i.ju = load i32, ptr %93, align 8
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds i16, ptr %i.js, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2
  %i.jy = zext i16 %i.jx to i32
  %i.jz = and i32 %i.jy, 8192
  %i.ka = icmp ne i32 %i.jz, 0
  br i1 %i.ka, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.kb = load ptr, ptr %i.b, align 8
  %94 = getelementptr inbounds nuw %struct.LexState, ptr %i.kb, i32 0, i32 7
  %i.kc = load ptr, ptr %94, align 8
  %95 = getelementptr inbounds nuw %struct.Zio, ptr %i.kc, i32 0, i32 0 ; 2 uses
  %i.kd = load i64, ptr %95, align 8              ; 2 uses
  %i.ke = add i64 %i.kd, -1
  store i64 %i.ke, ptr %95, align 8
  %i.kf = icmp ugt i64 %i.kd, 0
  br i1 %i.kf, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kg = load ptr, ptr %i.b, align 8
  %96 = getelementptr inbounds nuw %struct.LexState, ptr %i.kg, i32 0, i32 7
  %i.kh = load ptr, ptr %96, align 8
  %97 = getelementptr inbounds nuw %struct.Zio, ptr %i.kh, i32 0, i32 1 ; 2 uses
  %i.ki = load ptr, ptr %97, align 8              ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i32 1
  store ptr %i.kj, ptr %97, align 8
  %i.kk = load i8, ptr %i.ki, align 1
  %i.kl = zext i8 %i.kk to i32
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.km = load ptr, ptr %i.b, align 8
  %98 = getelementptr inbounds nuw %struct.LexState, ptr %i.km, i32 0, i32 7
  %i.kn = load ptr, ptr %98, align 8
  %i.ko = call i32 @luaZ_fill(ptr noundef %i.kn)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.kp = phi i32 [ %i.kl, %bb.cd ], [ %i.ko, %bb.ce ]
  %i.kq = load ptr, ptr %i.b, align 8
  %99 = getelementptr inbounds nuw %struct.LexState, ptr %i.kq, i32 0, i32 0
  store i32 %i.kp, ptr %99, align 8
  br label %.backedge

bb.cg:                                            ; preds = %bb.cb
  %i.kr = call ptr @__ctype_b_loc() #26
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = load ptr, ptr %i.b, align 8
  %100 = getelementptr inbounds nuw %struct.LexState, ptr %i.kt, i32 0, i32 0
  %i.ku = load i32, ptr %100, align 8
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i16, ptr %i.ks, i64 %i.kv
  %i.kx = load i16, ptr %i.kw, align 2
  %i.ky = zext i16 %i.kx to i32
  %i.kz = and i32 %i.ky, 2048
  %i.la = icmp ne i32 %i.kz, 0
  br i1 %i.la, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.lb = load ptr, ptr %i.b, align 8
  %i.lc = load ptr, ptr %i.c, align 8
  call void @read_numeral(ptr noundef %i.lb, ptr noundef %i.lc)
  store i32 284, ptr %i.a, align 4
  br label %bb.cz

bb.ci:                                            ; preds = %bb.cg
  %i.ld = call ptr @__ctype_b_loc() #26
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = load ptr, ptr %i.b, align 8
  %101 = getelementptr inbounds nuw %struct.LexState, ptr %i.lf, i32 0, i32 0
  %i.lg = load i32, ptr %101, align 8
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds i16, ptr %i.le, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2
  %i.lk = zext i16 %i.lj to i32
  %i.ll = and i32 %i.lk, 1024
  %i.lm = icmp ne i32 %i.ll, 0
  br i1 %i.lm, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ln = load ptr, ptr %i.b, align 8
  %102 = getelementptr inbounds nuw %struct.LexState, ptr %i.ln, i32 0, i32 0
  %i.lo = load i32, ptr %102, align 8
  %i.lp = icmp eq i32 %i.lo, 95
  br i1 %i.lp, label %bb.ck, label %bb.cv

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cr, %bb.ck
  %i.lq = load ptr, ptr %i.b, align 8
  %i.lr = load ptr, ptr %i.b, align 8
  %103 = getelementptr inbounds nuw %struct.LexState, ptr %i.lr, i32 0, i32 0
  %i.ls = load i32, ptr %103, align 8
  call void @save(ptr noundef %i.lq, i32 noundef %i.ls)
  %i.lt = load ptr, ptr %i.b, align 8
  %104 = getelementptr inbounds nuw %struct.LexState, ptr %i.lt, i32 0, i32 7
  %i.lu = load ptr, ptr %104, align 8
  %105 = getelementptr inbounds nuw %struct.Zio, ptr %i.lu, i32 0, i32 0 ; 2 uses
  %i.lv = load i64, ptr %105, align 8             ; 2 uses
  %i.lw = add i64 %i.lv, -1
  store i64 %i.lw, ptr %105, align 8
  %i.lx = icmp ugt i64 %i.lv, 0
  br i1 %i.lx, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ly = load ptr, ptr %i.b, align 8
  %106 = getelementptr inbounds nuw %struct.LexState, ptr %i.ly, i32 0, i32 7
  %i.lz = load ptr, ptr %106, align 8
  %107 = getelementptr inbounds nuw %struct.Zio, ptr %i.lz, i32 0, i32 1 ; 2 uses
  %i.ma = load ptr, ptr %107, align 8             ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i32 1
  store ptr %i.mb, ptr %107, align 8
  %i.mc = load i8, ptr %i.ma, align 1
  %i.md = zext i8 %i.mc to i32
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.me = load ptr, ptr %i.b, align 8
  %108 = getelementptr inbounds nuw %struct.LexState, ptr %i.me, i32 0, i32 7
  %i.mf = load ptr, ptr %108, align 8
  %i.mg = call i32 @luaZ_fill(ptr noundef %i.mf)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.mh = phi i32 [ %i.md, %bb.cm ], [ %i.mg, %bb.cn ]
  %i.mi = load ptr, ptr %i.b, align 8
  %109 = getelementptr inbounds nuw %struct.LexState, ptr %i.mi, i32 0, i32 0
  store i32 %i.mh, ptr %109, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mj = call ptr @__ctype_b_loc() #26
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = load ptr, ptr %i.b, align 8
  %110 = getelementptr inbounds nuw %struct.LexState, ptr %i.ml, i32 0, i32 0
  %i.mm = load i32, ptr %110, align 8
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds i16, ptr %i.mk, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2
  %i.mq = zext i16 %i.mp to i32
  %i.mr = and i32 %i.mq, 8
  %i.ms = icmp ne i32 %i.mr, 0
  br i1 %i.ms, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mt = load ptr, ptr %i.b, align 8
  %111 = getelementptr inbounds nuw %struct.LexState, ptr %i.mt, i32 0, i32 0
  %i.mu = load i32, ptr %111, align 8
  %i.mv = icmp eq i32 %i.mu, 95
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.mw = phi i1 [ true, %bb.cp ], [ %i.mv, %bb.cq ]
  br i1 %i.mw, label %bb.cl, label %bb.cs, !llvm.loop !95

bb.cs:                                            ; preds = %bb.cr
  %i.mx = load ptr, ptr %i.b, align 8
  %i.my = load ptr, ptr %i.b, align 8
  %112 = getelementptr inbounds nuw %struct.LexState, ptr %i.my, i32 0, i32 8
  %i.mz = load ptr, ptr %112, align 8
  %113 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.mz, i32 0, i32 0
  %i.na = load ptr, ptr %113, align 8
  %i.nb = load ptr, ptr %i.b, align 8
  %114 = getelementptr inbounds nuw %struct.LexState, ptr %i.nb, i32 0, i32 8
  %i.nc = load ptr, ptr %114, align 8
  %115 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.nc, i32 0, i32 1
  %i.nd = load i64, ptr %115, align 8
  %i.ne = call ptr @luaX_newstring(ptr noundef %i.mx, ptr noundef %i.na, i64 noundef %i.nd)
  store ptr %i.ne, ptr %i.f, align 8
  %i.nf = load ptr, ptr %i.f, align 8
  %116 = getelementptr inbounds nuw %struct.anon.0, ptr %i.nf, i32 0, i32 3
  %i.ng = load i8, ptr %116, align 2
  %i.nh = zext i8 %i.ng to i32
  %i.ni = icmp sgt i32 %i.nh, 0
  br i1 %i.ni, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.nj = load ptr, ptr %i.f, align 8
  %117 = getelementptr inbounds nuw %struct.anon.0, ptr %i.nj, i32 0, i32 3
  %i.nk = load i8, ptr %117, align 2
  %i.nl = zext i8 %i.nk to i32
  %i.nm = sub nsw i32 %i.nl, 1
  %i.nn = add nsw i32 %i.nm, 257
  store i32 %i.nn, ptr %i.a, align 4
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cs
  %i.no = load ptr, ptr %i.f, align 8
  %i.np = load ptr, ptr %i.c, align 8
  store ptr %i.no, ptr %i.np, align 8
  store i32 285, ptr %i.a, align 4
  br label %bb.cz

bb.cv:                                            ; preds = %bb.cj
  %i.nq = load ptr, ptr %i.b, align 8
  %118 = getelementptr inbounds nuw %struct.LexState, ptr %i.nq, i32 0, i32 0
  %i.nr = load i32, ptr %118, align 8
  store i32 %i.nr, ptr %i.g, align 4
  %i.ns = load ptr, ptr %i.b, align 8
  %119 = getelementptr inbounds nuw %struct.LexState, ptr %i.ns, i32 0, i32 7
  %i.nt = load ptr, ptr %119, align 8
  %120 = getelementptr inbounds nuw %struct.Zio, ptr %i.nt, i32 0, i32 0 ; 2 uses
  %i.nu = load i64, ptr %120, align 8             ; 2 uses
  %i.nv = add i64 %i.nu, -1
  store i64 %i.nv, ptr %120, align 8
  %i.nw = icmp ugt i64 %i.nu, 0
  br i1 %i.nw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.nx = load ptr, ptr %i.b, align 8
  %121 = getelementptr inbounds nuw %struct.LexState, ptr %i.nx, i32 0, i32 7
  %i.ny = load ptr, ptr %121, align 8
  %122 = getelementptr inbounds nuw %struct.Zio, ptr %i.ny, i32 0, i32 1 ; 2 uses
  %i.nz = load ptr, ptr %122, align 8             ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i32 1
  store ptr %i.oa, ptr %122, align 8
  %i.ob = load i8, ptr %i.nz, align 1
  %i.oc = zext i8 %i.ob to i32
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.od = load ptr, ptr %i.b, align 8
  %123 = getelementptr inbounds nuw %struct.LexState, ptr %i.od, i32 0, i32 7
  %i.oe = load ptr, ptr %123, align 8
  %i.of = call i32 @luaZ_fill(ptr noundef %i.oe)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.og = phi i32 [ %i.oc, %bb.cw ], [ %i.of, %bb.cx ]
  %i.oh = load ptr, ptr %i.b, align 8
  %124 = getelementptr inbounds nuw %struct.LexState, ptr %i.oh, i32 0, i32 0
  store i32 %i.og, ptr %124, align 8
  %i.oi = load i32, ptr %i.g, align 4
  store i32 %i.oi, ptr %i.a, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cu, %bb.ct, %bb.ch, %bb.ca, %bb.bz, %bb.by, %bb.bw, %bb.bv, %bb.bp, %bb.bo, %bb.bk, %bb.bf, %bb.bb, %bb.aw, %bb.as, %bb.an, %bb.aj, %bb.ae, %bb.aa, %bb.h
  %i.oj = load i32, ptr %i.a, align 4
  ret i32 %i.oj
}

; Function Attrs: noinline nounwind optnone uwtable
end_hunk_3
begin_hunk_4_@read_long_string:bb.a
  %i.cb = load ptr, ptr %26, align 8              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i32 1
  store ptr %i.cc, ptr %26, align 8
  %i.cd = load i8, ptr %i.cb, align 1
  %i.ce = zext i8 %i.cd to i32
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.a, align 8
  %27 = getelementptr inbounds nuw %struct.LexState, ptr %i.cf, i32 0, i32 7
  %i.cg = load ptr, ptr %27, align 8
  %i.ch = call i32 @luaZ_fill(ptr noundef %i.cg)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ci = phi i32 [ %i.ce, %bb.u ], [ %i.ch, %bb.v ]
  %i.cj = load ptr, ptr %i.a, align 8
  %28 = getelementptr inbounds nuw %struct.LexState, ptr %i.cj, i32 0, i32 0
  store i32 %i.ci, ptr %28, align 8
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %i.a, align 8
  %29 = getelementptr inbounds nuw %struct.LexState, ptr %i.ck, i32 0, i32 7
  %i.cl = load ptr, ptr %29, align 8
  %30 = getelementptr inbounds nuw %struct.Zio, ptr %i.cl, i32 0, i32 0 ; 2 uses
  %i.cm = load i64, ptr %30, align 8              ; 2 uses
  %i.cn = add i64 %i.cm, -1
  store i64 %i.cn, ptr %30, align 8
  %i.co = icmp ugt i64 %i.cm, 0
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.a, align 8
  %31 = getelementptr inbounds nuw %struct.LexState, ptr %i.cp, i32 0, i32 7
  %i.cq = load ptr, ptr %31, align 8
  %32 = getelementptr inbounds nuw %struct.Zio, ptr %i.cq, i32 0, i32 1 ; 2 uses
  %i.cr = load ptr, ptr %32, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i32 1
  store ptr %i.cs, ptr %32, align 8
  %i.ct = load i8, ptr %i.cr, align 1
  %i.cu = zext i8 %i.ct to i32
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cv = load ptr, ptr %i.a, align 8
  %33 = getelementptr inbounds nuw %struct.LexState, ptr %i.cv, i32 0, i32 7
  %i.cw = load ptr, ptr %33, align 8
  %i.cx = call i32 @luaZ_fill(ptr noundef %i.cw)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cy = phi i32 [ %i.cu, %bb.y ], [ %i.cx, %bb.z ]
  %i.cz = load ptr, ptr %i.a, align 8
  %34 = getelementptr inbounds nuw %struct.LexState, ptr %i.cz, i32 0, i32 0
  store i32 %i.cy, ptr %34, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.r, %bb.o, %bb.i
  br label %bb.h

bb.ad:                                            ; preds = %bb.n
  %i.da = load ptr, ptr %i.b, align 8
  %i.db = icmp ne ptr %i.da, null
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.a, align 8
  %i.dd = load ptr, ptr %i.a, align 8
  %35 = getelementptr inbounds nuw %struct.LexState, ptr %i.dd, i32 0, i32 8
  %i.de = load ptr, ptr %35, align 8
  %36 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.de, i32 0, i32 0
  %i.df = load ptr, ptr %36, align 8
  %i.dg = load i32, ptr %i.c, align 4
  %i.dh = add nsw i32 2, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %i.di
  %i.dk = load ptr, ptr %i.a, align 8
  %37 = getelementptr inbounds nuw %struct.LexState, ptr %i.dk, i32 0, i32 8
  %i.dl = load ptr, ptr %37, align 8
  %38 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.dl, i32 0, i32 1
  %i.dm = load i64, ptr %38, align 8
  %i.dn = load i32, ptr %i.c, align 4
  %i.do = add nsw i32 2, %i.dn
  %i.dp = mul nsw i32 2, %i.do
  %i.dq = sext i32 %i.dp to i64
  %i.dr = sub i64 %i.dm, %i.dq
  %i.ds = call ptr @luaX_newstring(ptr noundef %i.dc, ptr noundef %i.dj, i64 noundef %i.dr)
  %i.dt = load ptr, ptr %i.b, align 8
  store ptr %i.ds, ptr %i.dt, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaX_lexerror(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca [80 x i8], align 16               ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 %2, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 0, i64 0
  %i.f = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.LexState, ptr %i.f, i32 0, i32 9
  %i.g = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds nuw %union.TString, ptr %i.g, i64 1
  call void @luaO_chunkid(ptr noundef %i.e, ptr noundef %4, i64 noundef 80)
  %i.h = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.LexState, ptr %i.h, i32 0, i32 6
  %i.i = load ptr, ptr %5, align 8
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 0, i64 0
  %i.k = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.LexState, ptr %i.k, i32 0, i32 1
  %i.l = load i32, ptr %6, align 4
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.i, ptr noundef @.str.6, ptr noundef %i.j, i32 noundef %i.l, ptr noundef %i.m)
  store ptr %i.n, ptr %i.b, align 8
  %i.o = load i32, ptr %i.c, align 4
  %i.p = icmp ne i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.LexState, ptr %i.q, i32 0, i32 6
  %i.r = load ptr, ptr %7, align 8
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load i32, ptr %i.c, align 4
  %i.v = call ptr @txtToken(ptr noundef %i.t, i32 noundef %i.u)
  %i.w = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.r, ptr noundef @.str.139, ptr noundef %i.s, ptr noundef %i.v) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.LexState, ptr %i.x, i32 0, i32 6
  %i.y = load ptr, ptr %8, align 8
  call void @luaD_throw(ptr noundef %i.y, i32 noundef 3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_string(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 53 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 13 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store ptr %2, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.LexState, ptr %i.g, i32 0, i32 0
  %i.h = load i32, ptr %3, align 8
  call void @save(ptr noundef %i.f, i32 noundef %i.h)
  %i.i = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.LexState, ptr %i.i, i32 0, i32 7
  %i.j = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds nuw %struct.Zio, ptr %i.j, i32 0, i32 0 ; 2 uses
  %i.k = load i64, ptr %5, align 8                ; 2 uses
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %5, align 8
  %i.m = icmp ugt i64 %i.k, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.LexState, ptr %i.n, i32 0, i32 7
  %i.o = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Zio, ptr %i.o, i32 0, i32 1 ; 2 uses
  %i.p = load ptr, ptr %7, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i32 1
  store ptr %i.q, ptr %7, align 8
  %i.r = load i8, ptr %i.p, align 1
  %i.s = zext i8 %i.r to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.a, align 8
  %8 = getelementptr inbounds nuw %struct.LexState, ptr %i.t, i32 0, i32 7
  %i.u = load ptr, ptr %8, align 8
  %i.v = call i32 @luaZ_fill(ptr noundef %i.u)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = phi i32 [ %i.s, %bb.b ], [ %i.v, %bb.c ]
  %i.x = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct.LexState, ptr %i.x, i32 0, i32 0
  store i32 %i.w, ptr %9, align 8
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.y = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.LexState, ptr %i.y, i32 0, i32 0
  %i.z = load i32, ptr %10, align 8
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = icmp ne i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.av

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct.LexState, ptr %i.ac, i32 0, i32 0
  %i.ad = load i32, ptr %11, align 8
  switch i32 %i.ad, label %bb.aq [
    i32 -1, label %bb.g
    i32 10, label %bb.h
    i32 13, label %bb.h
    i32 92, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.a, align 8
  call void @luaX_lexerror(ptr noundef %i.ae, ptr noundef @.str.142, i32 noundef 287)
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.h, %bb.t, %bb.u, %bb.al, %bb.ap, %bb.au
  br label %bb.e, !llvm.loop !97

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.af = load ptr, ptr %i.a, align 8
  call void @luaX_lexerror(ptr noundef %i.af, ptr noundef @.str.142, i32 noundef 286)
  br label %.backedge

bb.i:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.a, align 8
  %12 = getelementptr inbounds nuw %struct.LexState, ptr %i.ag, i32 0, i32 7
  %i.ah = load ptr, ptr %12, align 8
  %13 = getelementptr inbounds nuw %struct.Zio, ptr %i.ah, i32 0, i32 0 ; 2 uses
  %i.ai = load i64, ptr %13, align 8              ; 2 uses
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %13, align 8
  %i.ak = icmp ugt i64 %i.ai, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.a, align 8
  %14 = getelementptr inbounds nuw %struct.LexState, ptr %i.al, i32 0, i32 7
  %i.am = load ptr, ptr %14, align 8
  %15 = getelementptr inbounds nuw %struct.Zio, ptr %i.am, i32 0, i32 1 ; 2 uses
  %i.an = load ptr, ptr %15, align 8              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i32 1
  store ptr %i.ao, ptr %15, align 8
  %i.ap = load i8, ptr %i.an, align 1
  %i.aq = zext i8 %i.ap to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.a, align 8
  %16 = getelementptr inbounds nuw %struct.LexState, ptr %i.ar, i32 0, i32 7
  %i.as = load ptr, ptr %16, align 8
  %i.at = call i32 @luaZ_fill(ptr noundef %i.as)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = phi i32 [ %i.aq, %bb.j ], [ %i.at, %bb.k ]
  %i.av = load ptr, ptr %i.a, align 8
  %17 = getelementptr inbounds nuw %struct.LexState, ptr %i.av, i32 0, i32 0
  store i32 %i.au, ptr %17, align 8
  %i.aw = load ptr, ptr %i.a, align 8
  %18 = getelementptr inbounds nuw %struct.LexState, ptr %i.aw, i32 0, i32 0
  %i.ax = load i32, ptr %18, align 8
  switch i32 %i.ax, label %bb.v [
    i32 97, label %bb.m
    i32 98, label %bb.n
    i32 102, label %bb.o
    i32 110, label %bb.p
    i32 114, label %bb.q
    i32 116, label %bb.r
    i32 118, label %bb.s
    i32 10, label %bb.t
    i32 13, label %bb.t
    i32 -1, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  store i32 7, ptr %i.d, align 4
  br label %bb.am

bb.n:                                             ; preds = %bb.l
  store i32 8, ptr %i.d, align 4
  br label %bb.am

bb.o:                                             ; preds = %bb.l
  store i32 12, ptr %i.d, align 4
  br label %bb.am

bb.p:                                             ; preds = %bb.l
  store i32 10, ptr %i.d, align 4
  br label %bb.am

bb.q:                                             ; preds = %bb.l
  store i32 13, ptr %i.d, align 4
  br label %bb.am

bb.r:                                             ; preds = %bb.l
  store i32 9, ptr %i.d, align 4
  br label %bb.am

bb.s:                                             ; preds = %bb.l
  store i32 11, ptr %i.d, align 4
  br label %bb.am

bb.t:                                             ; preds = %bb.l, %bb.l
  %i.ay = load ptr, ptr %i.a, align 8
  call void @save(ptr noundef %i.ay, i32 noundef 10)
  %i.az = load ptr, ptr %i.a, align 8
  call void @inclinenumber(ptr noundef %i.az)
  br label %.backedge

bb.u:                                             ; preds = %bb.l
  br label %.backedge

bb.v:                                             ; preds = %bb.l
  %i.ba = call ptr @__ctype_b_loc() #26
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.a, align 8
  %19 = getelementptr inbounds nuw %struct.LexState, ptr %i.bc, i32 0, i32 0
  %i.bd = load i32, ptr %19, align 8
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i16, ptr %i.bb, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bg to i32
  %i.bi = and i32 %i.bh, 2048
  %i.bj = icmp ne i32 %i.bi, 0
  br i1 %i.bj, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = load ptr, ptr %i.a, align 8
  %20 = getelementptr inbounds nuw %struct.LexState, ptr %i.bl, i32 0, i32 0
  %i.bm = load i32, ptr %20, align 8
  call void @save(ptr noundef %i.bk, i32 noundef %i.bm)
  %i.bn = load ptr, ptr %i.a, align 8
  %21 = getelementptr inbounds nuw %struct.LexState, ptr %i.bn, i32 0, i32 7
  %i.bo = load ptr, ptr %21, align 8
  %22 = getelementptr inbounds nuw %struct.Zio, ptr %i.bo, i32 0, i32 0 ; 2 uses
  %i.bp = load i64, ptr %22, align 8              ; 2 uses
  %i.bq = add i64 %i.bp, -1
  store i64 %i.bq, ptr %22, align 8
  %i.br = icmp ugt i64 %i.bp, 0
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bs = load ptr, ptr %i.a, align 8
  %23 = getelementptr inbounds nuw %struct.LexState, ptr %i.bs, i32 0, i32 7
  %i.bt = load ptr, ptr %23, align 8
  %24 = getelementptr inbounds nuw %struct.Zio, ptr %i.bt, i32 0, i32 1 ; 2 uses
  %i.bu = load ptr, ptr %24, align 8              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i32 1
  store ptr %i.bv, ptr %24, align 8
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.a, align 8
  %25 = getelementptr inbounds nuw %struct.LexState, ptr %i.by, i32 0, i32 7
  %i.bz = load ptr, ptr %25, align 8
  %i.ca = call i32 @luaZ_fill(ptr noundef %i.bz)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cb = phi i32 [ %i.bx, %bb.x ], [ %i.ca, %bb.y ]
  %i.cc = load ptr, ptr %i.a, align 8
  %26 = getelementptr inbounds nuw %struct.LexState, ptr %i.cc, i32 0, i32 0
  store i32 %i.cb, ptr %26, align 8
  br label %bb.al

bb.aa:                                            ; preds = %bb.v
  store i32 0, ptr %i.e, align 4
  store i32 0, ptr %i.d, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %bb.aa
  %i.cd = load i32, ptr %i.d, align 4
  %i.ce = mul nsw i32 10, %i.cd
  %i.cf = load ptr, ptr %i.a, align 8
  %27 = getelementptr inbounds nuw %struct.LexState, ptr %i.cf, i32 0, i32 0
  %i.cg = load i32, ptr %27, align 8
  %i.ch = sub nsw i32 %i.cg, 48
  %i.ci = add nsw i32 %i.ce, %i.ch
  store i32 %i.ci, ptr %i.d, align 4
  %i.cj = load ptr, ptr %i.a, align 8
  %28 = getelementptr inbounds nuw %struct.LexState, ptr %i.cj, i32 0, i32 7
  %i.ck = load ptr, ptr %28, align 8
  %29 = getelementptr inbounds nuw %struct.Zio, ptr %i.ck, i32 0, i32 0 ; 2 uses
  %i.cl = load i64, ptr %29, align 8              ; 2 uses
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %29, align 8
  %i.cn = icmp ugt i64 %i.cl, 0
  br i1 %i.cn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.a, align 8
  %30 = getelementptr inbounds nuw %struct.LexState, ptr %i.co, i32 0, i32 7
  %i.cp = load ptr, ptr %30, align 8
  %31 = getelementptr inbounds nuw %struct.Zio, ptr %i.cp, i32 0, i32 1 ; 2 uses
  %i.cq = load ptr, ptr %31, align 8              ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i32 1
  store ptr %i.cr, ptr %31, align 8
  %i.cs = load i8, ptr %i.cq, align 1
  %i.ct = zext i8 %i.cs to i32
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load ptr, ptr %i.a, align 8
  %32 = getelementptr inbounds nuw %struct.LexState, ptr %i.cu, i32 0, i32 7
  %i.cv = load ptr, ptr %32, align 8
  %i.cw = call i32 @luaZ_fill(ptr noundef %i.cv)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cx = phi i32 [ %i.ct, %bb.ac ], [ %i.cw, %bb.ad ]
  %i.cy = load ptr, ptr %i.a, align 8
  %33 = getelementptr inbounds nuw %struct.LexState, ptr %i.cy, i32 0, i32 0
  store i32 %i.cx, ptr %33, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = load i32, ptr %i.e, align 4
  %i.da = add nsw i32 %i.cz, 1                    ; 2 uses
  store i32 %i.da, ptr %i.e, align 4
  %i.db = icmp slt i32 %i.da, 3
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = call ptr @__ctype_b_loc() #26
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.a, align 8
  %34 = getelementptr inbounds nuw %struct.LexState, ptr %i.de, i32 0, i32 0
  %i.df = load i32, ptr %34, align 8
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i16, ptr %i.dd, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = zext i16 %i.di to i32
  %i.dk = and i32 %i.dj, 2048
  %i.dl = icmp ne i32 %i.dk, 0
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dm = phi i1 [ false, %bb.af ], [ %i.dl, %bb.ag ]
  br i1 %i.dm, label %bb.ab, label %bb.ai, !llvm.loop !98

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load i32, ptr %i.d, align 4
  %i.do = icmp sgt i32 %i.dn, 255
  br i1 %i.do, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dp = load ptr, ptr %i.a, align 8
  call void @luaX_lexerror(ptr noundef %i.dp, ptr noundef @.str.143, i32 noundef 286)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = load i32, ptr %i.d, align 4
  call void @save(ptr noundef %i.dq, i32 noundef %i.dr)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.z
  br label %.backedge

bb.am:                                            ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.ds = load ptr, ptr %i.a, align 8
  %i.dt = load i32, ptr %i.d, align 4
  call void @save(ptr noundef %i.ds, i32 noundef %i.dt)
  %i.du = load ptr, ptr %i.a, align 8
  %35 = getelementptr inbounds nuw %struct.LexState, ptr %i.du, i32 0, i32 7
  %i.dv = load ptr, ptr %35, align 8
  %36 = getelementptr inbounds nuw %struct.Zio, ptr %i.dv, i32 0, i32 0 ; 2 uses
  %i.dw = load i64, ptr %36, align 8              ; 2 uses
  %i.dx = add i64 %i.dw, -1
  store i64 %i.dx, ptr %36, align 8
  %i.dy = icmp ugt i64 %i.dw, 0
  br i1 %i.dy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dz = load ptr, ptr %i.a, align 8
  %37 = getelementptr inbounds nuw %struct.LexState, ptr %i.dz, i32 0, i32 7
  %i.ea = load ptr, ptr %37, align 8
  %38 = getelementptr inbounds nuw %struct.Zio, ptr %i.ea, i32 0, i32 1 ; 2 uses
  %i.eb = load ptr, ptr %38, align 8              ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i32 1
  store ptr %i.ec, ptr %38, align 8
  %i.ed = load i8, ptr %i.eb, align 1
  %i.ee = zext i8 %i.ed to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ef = load ptr, ptr %i.a, align 8
  %39 = getelementptr inbounds nuw %struct.LexState, ptr %i.ef, i32 0, i32 7
  %i.eg = load ptr, ptr %39, align 8
  %i.eh = call i32 @luaZ_fill(ptr noundef %i.eg)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ei = phi i32 [ %i.ee, %bb.an ], [ %i.eh, %bb.ao ]
  %i.ej = load ptr, ptr %i.a, align 8
  %40 = getelementptr inbounds nuw %struct.LexState, ptr %i.ej, i32 0, i32 0
  store i32 %i.ei, ptr %40, align 8
  br label %.backedge

bb.aq:                                            ; preds = %bb.f
  %i.ek = load ptr, ptr %i.a, align 8
  %i.el = load ptr, ptr %i.a, align 8
  %41 = getelementptr inbounds nuw %struct.LexState, ptr %i.el, i32 0, i32 0
  %i.em = load i32, ptr %41, align 8
  call void @save(ptr noundef %i.ek, i32 noundef %i.em)
  %i.en = load ptr, ptr %i.a, align 8
  %42 = getelementptr inbounds nuw %struct.LexState, ptr %i.en, i32 0, i32 7
  %i.eo = load ptr, ptr %42, align 8
  %43 = getelementptr inbounds nuw %struct.Zio, ptr %i.eo, i32 0, i32 0 ; 2 uses
  %i.ep = load i64, ptr %43, align 8              ; 2 uses
  %i.eq = add i64 %i.ep, -1
  store i64 %i.eq, ptr %43, align 8
  %i.er = icmp ugt i64 %i.ep, 0
  br i1 %i.er, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.es = load ptr, ptr %i.a, align 8
  %44 = getelementptr inbounds nuw %struct.LexState, ptr %i.es, i32 0, i32 7
  %i.et = load ptr, ptr %44, align 8
  %45 = getelementptr inbounds nuw %struct.Zio, ptr %i.et, i32 0, i32 1 ; 2 uses
  %i.eu = load ptr, ptr %45, align 8              ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i32 1
  store ptr %i.ev, ptr %45, align 8
  %i.ew = load i8, ptr %i.eu, align 1
  %i.ex = zext i8 %i.ew to i32
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ey = load ptr, ptr %i.a, align 8
  %46 = getelementptr inbounds nuw %struct.LexState, ptr %i.ey, i32 0, i32 7
  %i.ez = load ptr, ptr %46, align 8
  %i.fa = call i32 @luaZ_fill(ptr noundef %i.ez)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fb = phi i32 [ %i.ex, %bb.ar ], [ %i.fa, %bb.as ]
  %i.fc = load ptr, ptr %i.a, align 8
  %47 = getelementptr inbounds nuw %struct.LexState, ptr %i.fc, i32 0, i32 0
  store i32 %i.fb, ptr %47, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at
  br label %.backedge

bb.av:                                            ; preds = %bb.e
  %i.fd = load ptr, ptr %i.a, align 8
  %i.fe = load ptr, ptr %i.a, align 8
  %48 = getelementptr inbounds nuw %struct.LexState, ptr %i.fe, i32 0, i32 0
  %i.ff = load i32, ptr %48, align 8
  call void @save(ptr noundef %i.fd, i32 noundef %i.ff)
  %i.fg = load ptr, ptr %i.a, align 8
  %49 = getelementptr inbounds nuw %struct.LexState, ptr %i.fg, i32 0, i32 7
  %i.fh = load ptr, ptr %49, align 8
  %50 = getelementptr inbounds nuw %struct.Zio, ptr %i.fh, i32 0, i32 0 ; 2 uses
  %i.fi = load i64, ptr %50, align 8              ; 2 uses
  %i.fj = add i64 %i.fi, -1
  store i64 %i.fj, ptr %50, align 8
  %i.fk = icmp ugt i64 %i.fi, 0
  br i1 %i.fk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fl = load ptr, ptr %i.a, align 8
  %51 = getelementptr inbounds nuw %struct.LexState, ptr %i.fl, i32 0, i32 7
  %i.fm = load ptr, ptr %51, align 8
  %52 = getelementptr inbounds nuw %struct.Zio, ptr %i.fm, i32 0, i32 1 ; 2 uses
  %i.fn = load ptr, ptr %52, align 8              ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i32 1
  store ptr %i.fo, ptr %52, align 8
  %i.fp = load i8, ptr %i.fn, align 1
  %i.fq = zext i8 %i.fp to i32
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.fr = load ptr, ptr %i.a, align 8
  %53 = getelementptr inbounds nuw %struct.LexState, ptr %i.fr, i32 0, i32 7
  %i.fs = load ptr, ptr %53, align 8
  %i.ft = call i32 @luaZ_fill(ptr noundef %i.fs)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fu = phi i32 [ %i.fq, %bb.aw ], [ %i.ft, %bb.ax ]
  %i.fv = load ptr, ptr %i.a, align 8
  %54 = getelementptr inbounds nuw %struct.LexState, ptr %i.fv, i32 0, i32 0
  store i32 %i.fu, ptr %54, align 8
  %i.fw = load ptr, ptr %i.a, align 8
  %i.fx = load ptr, ptr %i.a, align 8
  %55 = getelementptr inbounds nuw %struct.LexState, ptr %i.fx, i32 0, i32 8
  %i.fy = load ptr, ptr %55, align 8
  %56 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.fy, i32 0, i32 0
  %i.fz = load ptr, ptr %56, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gb = load ptr, ptr %i.a, align 8
  %57 = getelementptr inbounds nuw %struct.LexState, ptr %i.gb, i32 0, i32 8
  %i.gc = load ptr, ptr %57, align 8
  %58 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.gc, i32 0, i32 1
  %i.gd = load i64, ptr %58, align 8
  %i.ge = sub i64 %i.gd, 2
  %i.gf = call ptr @luaX_newstring(ptr noundef %i.fw, ptr noundef %i.ga, i64 noundef %i.ge)
  %i.gg = load ptr, ptr %i.c, align 8
  store ptr %i.gf, ptr %i.gg, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.e = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.LexState, ptr %i.e, i32 0, i32 8
  %i.f = load ptr, ptr %2, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %3 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.g, i32 0, i32 1
  %i.h = load i64, ptr %3, align 8
  %i.i = add i64 %i.h, 1
  %i.j = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.j, i32 0, i32 2
  %i.k = load i64, ptr %4, align 8
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8
  %5 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.m, i32 0, i32 2
  %i.n = load i64, ptr %5, align 8
  %i.o = icmp uge i64 %i.n, 9223372036854775806
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8
  call void @luaX_lexerror(ptr noundef %i.p, ptr noundef @.str.144, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = load ptr, ptr %i.c, align 8
  %6 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.q, i32 0, i32 2
  %i.r = load i64, ptr %6, align 8
  %i.s = mul i64 %i.r, 2
  store i64 %i.s, ptr %i.d, align 8
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  %i.v = icmp ule i64 %i.u, -3
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.LexState, ptr %i.w, i32 0, i32 6
  %i.x = load ptr, ptr %7, align 8
  %i.y = load ptr, ptr %i.c, align 8
  %8 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.y, i32 0, i32 0
  %i.z = load ptr, ptr %8, align 8
  %i.aa = load ptr, ptr %i.c, align 8
  %9 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.aa, i32 0, i32 2
  %i.ab = load i64, ptr %9, align 8
  %i.ac = mul nuw nsw i64 %i.ab, 1
  %i.ad = load i64, ptr %i.d, align 8
  %i.ae = mul nuw nsw i64 %i.ad, 1
  %i.af = call ptr @luaM_realloc_(ptr noundef %i.x, ptr noundef %i.z, i64 noundef %i.ac, i64 noundef %i.ae)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.LexState, ptr %i.ag, i32 0, i32 6
  %i.ah = load ptr, ptr %10, align 8
  %i.ai = call ptr @luaM_toobig(ptr noundef %i.ah) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = phi ptr [ %i.af, %bb.e ], [ null, %bb.f ]
  %i.ak = load ptr, ptr %i.c, align 8
  %11 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.ak, i32 0, i32 0
  store ptr %i.aj, ptr %11, align 8
  %i.al = load i64, ptr %i.d, align 8
  %i.am = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.am, i32 0, i32 2
  store i64 %i.al, ptr %12, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.an = load i32, ptr %i.b, align 4
  %i.ao = trunc i32 %i.an to i8
  %i.ap = load ptr, ptr %i.c, align 8
  %13 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.ap, i32 0, i32 0
  %i.aq = load ptr, ptr %13, align 8
  %i.ar = load ptr, ptr %i.c, align 8
  %14 = getelementptr inbounds nuw %struct.Mbuffer, ptr %i.ar, i32 0, i32 1 ; 2 uses
  %i.as = load i64, ptr %14, align 8              ; 2 uses
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %14, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  store i8 %i.ao, ptr %i.au, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_next(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.LexState, ptr %i.e, i32 0, i32 0
  %i.f = load i32, ptr %2, align 8
  %i.g = call ptr @strchr(ptr noundef %i.d, i32 noundef %i.f) #22
  %i.h = icmp ne ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.LexState, ptr %i.j, i32 0, i32 0
  %i.k = load i32, ptr %3, align 8
  call void @save(ptr noundef %i.i, i32 noundef %i.k)
  %i.l = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.LexState, ptr %i.l, i32 0, i32 7
  %i.m = load ptr, ptr %4, align 8
  %5 = getelementptr inbounds nuw %struct.Zio, ptr %i.m, i32 0, i32 0 ; 2 uses
  %i.n = load i64, ptr %5, align 8                ; 2 uses
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %5, align 8
  %i.p = icmp ugt i64 %i.n, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.LexState, ptr %i.q, i32 0, i32 7
  %i.r = load ptr, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.Zio, ptr %i.r, i32 0, i32 1 ; 2 uses
  %i.s = load ptr, ptr %7, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i32 1
  store ptr %i.t, ptr %7, align 8
end_hunk_4
begin_hunk_5_@discharge2anyreg:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removevalues(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp ne i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = load i32, ptr %i.b, align 4
  %i.g = call i32 @patchtestreg(ptr noundef %i.e, i32 noundef %i.f, i32 noundef 255) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = load i32, ptr %i.b, align 4
  %i.j = call i32 @getjump(ptr noundef %i.h, i32 noundef %i.i)
  store i32 %i.j, ptr %i.b, align 4
  br label %bb.b, !llvm.loop !110

bb.e:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_exp(ptr noundef %0, i32 noundef range(i32 0, 15) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.c, align 4
  %i.d = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.expdesc, ptr %i.d, i32 0, i32 2
  store i32 -1, ptr %3, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.expdesc, ptr %i.e, i32 0, i32 3
  store i32 -1, ptr %4, align 4
  %i.f = load i32, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.expdesc, ptr %i.g, i32 0, i32 0
  store i32 %i.f, ptr %5, align 8
  %i.h = load i32, ptr %i.c, align 4
  %i.i = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.expdesc, ptr %i.i, i32 0, i32 1
  %7 = getelementptr inbounds nuw %struct.anon.4, ptr %6, i32 0, i32 0
  store i32 %i.h, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codestring(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.LexState, ptr %i.e, i32 0, i32 5
  %i.f = load ptr, ptr %3, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call i32 @luaK_stringK(ptr noundef %i.f, ptr noundef %i.g)
  call void @init_exp(ptr noundef %i.d, i32 noundef 4, i32 noundef %i.h)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @constructor(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.ConsControl, align 8        ; 13 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.LexState, ptr %i.f, i32 0, i32 5
  %i.g = load ptr, ptr %3, align 8
  store ptr %i.g, ptr %i.c, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.LexState, ptr %i.h, i32 0, i32 1
  %i.i = load i32, ptr %4, align 4
  store i32 %i.i, ptr %i.d, align 4
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = call i32 @luaK_codeABC(ptr noundef %i.j, i32 noundef 10, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  store i32 %i.k, ptr %i.e, align 4
  %5 = getelementptr inbounds nuw %struct.ConsControl, ptr %2, i32 0, i32 4
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.ConsControl, ptr %2, i32 0, i32 2
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.ConsControl, ptr %2, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %i.l = load ptr, ptr %i.b, align 8
  %8 = getelementptr inbounds nuw %struct.ConsControl, ptr %2, i32 0, i32 1
  store ptr %i.l, ptr %8, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load i32, ptr %i.e, align 4
  call void @init_exp(ptr noundef %i.m, i32 noundef 11, i32 noundef %i.n)
  %9 = getelementptr inbounds nuw %struct.ConsControl, ptr %2, i32 0, i32 0
  call void @init_exp(ptr noundef %9, i32 noundef 0, i32 noundef 0)
  %i.o = load ptr, ptr %i.a, align 8
  %10 = getelementptr inbounds nuw %struct.LexState, ptr %i.o, i32 0, i32 5
  %i.p = load ptr, ptr %10, align 8
  %i.q = load ptr, ptr %i.b, align 8
  call void @luaK_exp2nextreg(ptr noundef %i.p, ptr noundef %i.q)
  %i.r = load ptr, ptr %i.a, align 8
  call void @checknext(ptr noundef %i.r, i32 noundef 123)
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.s = load ptr, ptr %i.a, align 8
  %11 = getelementptr inbounds nuw %struct.LexState, ptr %i.s, i32 0, i32 3
  %12 = getelementptr inbounds nuw %struct.Token, ptr %11, i32 0, i32 0
  %i.t = load i32, ptr %12, align 8
  %i.u = icmp eq i32 %i.t, 125
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.c, align 8
  call void @closelistfield(ptr noundef %i.v, ptr noundef %2)
  %i.w = load ptr, ptr %i.a, align 8
  %13 = getelementptr inbounds nuw %struct.LexState, ptr %i.w, i32 0, i32 3
  %14 = getelementptr inbounds nuw %struct.Token, ptr %13, i32 0, i32 0
  %i.x = load i32, ptr %14, align 8
  switch i32 %i.x, label %bb.j [
    i32 285, label %bb.e
    i32 91, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8
  call void @luaX_lookahead(ptr noundef %i.y)
  %i.z = load ptr, ptr %i.a, align 8
  %15 = getelementptr inbounds nuw %struct.LexState, ptr %i.z, i32 0, i32 4
  %16 = getelementptr inbounds nuw %struct.Token, ptr %15, i32 0, i32 0
  %i.aa = load i32, ptr %16, align 8
  %i.ab = icmp ne i32 %i.aa, 61
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.a, align 8
  call void @listfield(ptr noundef %i.ac, ptr noundef %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.a, align 8
  call void @recfield(ptr noundef %i.ad, ptr noundef %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.a, align 8
  call void @recfield(ptr noundef %i.ae, ptr noundef %2)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.a, align 8
  call void @listfield(ptr noundef %i.af, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = call i32 @testnext(ptr noundef %i.ag, i32 noundef 44)
  %i.ai = icmp ne i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call i32 @testnext(ptr noundef %i.aj, i32 noundef 59)
  %i.al = icmp ne i32 %i.ak, 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = phi i1 [ true, %bb.l ], [ %i.al, %bb.m ]
  br i1 %i.am, label %bb.b, label %.loopexit, !llvm.loop !111

.loopexit:                                        ; preds = %bb.n
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.c
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = load i32, ptr %i.d, align 4
  call void @check_match(ptr noundef %i.an, i32 noundef 125, i32 noundef 123, i32 noundef %i.ao)
  %i.ap = load ptr, ptr %i.c, align 8
  call void @lastlistfield(ptr noundef %i.ap, ptr noundef %2)
  %i.aq = load ptr, ptr %i.c, align 8
  %17 = getelementptr inbounds nuw %struct.FuncState, ptr %i.aq, i32 0, i32 0
  %i.ar = load ptr, ptr %17, align 8
  %18 = getelementptr inbounds nuw %struct.Proto, ptr %i.ar, i32 0, i32 4
  %i.as = load ptr, ptr %18, align 8
  %i.at = load i32, ptr %i.e, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i32, ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, 8388607
  %19 = getelementptr inbounds nuw %struct.ConsControl, ptr %2, i32 0, i32 3
  %i.ay = load i32, ptr %19, align 4
  %i.az = call i32 @luaO_int2fb(i32 noundef %i.ay)
  %i.ba = shl i32 %i.az, 23
  %i.bb = and i32 %i.ba, -8388608
  %i.bc = or i32 %i.ax, %i.bb
  %i.bd = load ptr, ptr %i.c, align 8
  %20 = getelementptr inbounds nuw %struct.FuncState, ptr %i.bd, i32 0, i32 0
  %i.be = load ptr, ptr %20, align 8
  %21 = getelementptr inbounds nuw %struct.Proto, ptr %i.be, i32 0, i32 4
  %i.bf = load ptr, ptr %21, align 8
  %i.bg = load i32, ptr %i.e, align 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i32, ptr %i.bf, i64 %i.bh
  store i32 %i.bc, ptr %i.bi, align 4
  %i.bj = load ptr, ptr %i.c, align 8
  %22 = getelementptr inbounds nuw %struct.FuncState, ptr %i.bj, i32 0, i32 0
  %i.bk = load ptr, ptr %22, align 8
  %23 = getelementptr inbounds nuw %struct.Proto, ptr %i.bk, i32 0, i32 4
  %i.bl = load ptr, ptr %23, align 8
  %i.bm = load i32, ptr %i.e, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i32, ptr %i.bl, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, -8372225
  %24 = getelementptr inbounds nuw %struct.ConsControl, ptr %2, i32 0, i32 2
  %i.br = load i32, ptr %24, align 8
  %i.bs = call i32 @luaO_int2fb(i32 noundef %i.br)
  %i.bt = shl i32 %i.bs, 14
  %i.bu = and i32 %i.bt, 8372224
  %i.bv = or i32 %i.bq, %i.bu
  %i.bw = load ptr, ptr %i.c, align 8
  %25 = getelementptr inbounds nuw %struct.FuncState, ptr %i.bw, i32 0, i32 0
  %i.bx = load ptr, ptr %25, align 8
  %26 = getelementptr inbounds nuw %struct.Proto, ptr %i.bx, i32 0, i32 4
  %i.by = load ptr, ptr %26, align 8
  %i.bz = load i32, ptr %i.e, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i32, ptr %i.by, i64 %i.ca
  store i32 %i.bv, ptr %i.cb, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @body(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %4 = alloca %struct.FuncState, align 8          ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 %2, ptr %i.c, align 4
  store i32 %3, ptr %i.d, align 4
  %i.e = load ptr, ptr %i.a, align 8
  call void @open_func(ptr noundef %i.e, ptr noundef %4)
  %i.f = load i32, ptr %i.d, align 4
  %5 = getelementptr inbounds nuw %struct.FuncState, ptr %4, i32 0, i32 0
  %i.g = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.Proto, ptr %i.g, i32 0, i32 16
  store i32 %i.f, ptr %6, align 8
  %i.h = load ptr, ptr %i.a, align 8
  call void @checknext(ptr noundef %i.h, i32 noundef 40)
  %i.i = load i32, ptr %i.c, align 4
  %i.j = icmp ne i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call ptr @luaX_newstring(ptr noundef %i.l, ptr noundef @.str.157, i64 noundef 4)
  call void @new_localvar(ptr noundef %i.k, ptr noundef %i.m, i32 noundef 0)
  %i.n = load ptr, ptr %i.a, align 8
  call void @adjustlocalvars(ptr noundef %i.n, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.a, align 8
  call void @parlist(ptr noundef %i.o)
  %i.p = load ptr, ptr %i.a, align 8
  call void @checknext(ptr noundef %i.p, i32 noundef 41)
  %i.q = load ptr, ptr %i.a, align 8
  call void @chunk(ptr noundef %i.q)
  %i.r = load ptr, ptr %i.a, align 8
  %7 = getelementptr inbounds nuw %struct.LexState, ptr %i.r, i32 0, i32 1
  %i.s = load i32, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.FuncState, ptr %4, i32 0, i32 0
  %i.t = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.Proto, ptr %i.t, i32 0, i32 17
  store i32 %i.s, ptr %9, align 4
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i32, ptr %i.d, align 4
  call void @check_match(ptr noundef %i.u, i32 noundef 262, i32 noundef 265, i32 noundef %i.v)
  %i.w = load ptr, ptr %i.a, align 8
  call void @close_func(ptr noundef %i.w)
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load ptr, ptr %i.b, align 8
  call void @pushclosure(ptr noundef %i.x, ptr noundef %4, ptr noundef %i.y)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @primaryexp(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.expdesc, align 8            ; 2 uses
  %3 = alloca %struct.expdesc, align 8            ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.LexState, ptr %i.d, i32 0, i32 5
  %i.e = load ptr, ptr %4, align 8
  store ptr %i.e, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = load ptr, ptr %i.b, align 8
  call void @prefixexp(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.h = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.LexState, ptr %i.h, i32 0, i32 3
  %6 = getelementptr inbounds nuw %struct.Token, ptr %5, i32 0, i32 0
  %i.i = load i32, ptr %6, align 8
  switch i32 %i.i, label %bb.g [
    i32 46, label %bb.c
    i32 91, label %bb.d
    i32 58, label %bb.e
    i32 40, label %bb.f
    i32 286, label %bb.f
    i32 123, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load ptr, ptr %i.b, align 8
  call void @field(ptr noundef %i.j, ptr noundef %i.k)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = call i32 @luaK_exp2anyreg(ptr noundef %i.l, ptr noundef %i.m) ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8
  call void @yindex(ptr noundef %i.o, ptr noundef %2)
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = load ptr, ptr %i.b, align 8
  call void @luaK_indexed(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %2)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8
  call void @luaX_next(ptr noundef %i.r)
  %i.s = load ptr, ptr %i.a, align 8
  call void @checkname(ptr noundef %i.s, ptr noundef %3)
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.b, align 8
  call void @luaK_self(ptr noundef %i.t, ptr noundef %i.u, ptr noundef %3)
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = load ptr, ptr %i.b, align 8
  call void @funcargs(ptr noundef %i.v, ptr noundef %i.w)
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = load ptr, ptr %i.b, align 8
  call void @luaK_exp2nextreg(ptr noundef %i.x, ptr noundef %i.y)
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = load ptr, ptr %i.b, align 8
  call void @funcargs(ptr noundef %i.z, ptr noundef %i.aa)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  br label %bb.b
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaK_stringK(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
end_hunk_5
begin_hunk_6_@luaL_pushresult:bb.a
  %i.h = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.h, i32 0, i32 1
  store i32 1, ptr %3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaL_addvalue(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.e, i32 0, i32 2
  %i.f = load ptr, ptr %1, align 8
  store ptr %i.f, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = call ptr @lua_tolstring(ptr noundef %i.g, i32 noundef -1, ptr noundef %i.c)
  store ptr %i.h, ptr %i.d, align 8
  %i.i = load i64, ptr %i.c, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.j, i32 0, i32 0
  %i.k = load ptr, ptr %2, align 8
  %i.l = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.l, i32 0, i32 3
  %i.m = getelementptr inbounds nuw [8192 x i8], ptr %3, i64 0, i64 0
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sub nsw i64 8192, %i.p
  %i.r = icmp ule i64 %i.i, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.s, i32 0, i32 0
  %i.t = load ptr, ptr %4, align 8
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = load i64, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.v, i1 false)
  %i.w = load i64, ptr %i.c, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.x, i32 0, i32 0 ; 2 uses
  %i.y = load ptr, ptr %5, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store ptr %i.z, ptr %5, align 8
  %i.aa = load ptr, ptr %i.b, align 8
  call void @lua_settop(ptr noundef %i.aa, i32 noundef -2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = call i32 @emptybuffer(ptr noundef %i.ab)
  %i.ad = icmp ne i32 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.b, align 8
  call void @lua_insert(ptr noundef %i.ae, i32 noundef -2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.af, i32 0, i32 1 ; 2 uses
  %i.ag = load i32, ptr %6, align 8
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %6, align 8
  %i.ai = load ptr, ptr %i.a, align 8
  call void @adjuststack(ptr noundef %i.ai)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emptybuffer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.d, i32 0, i32 0
  %i.e = load ptr, ptr %1, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.f, i32 0, i32 3
  %i.g = getelementptr inbounds nuw [8192 x i8], ptr %2, i64 0, i64 0
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  store i64 %i.j, ptr %i.c, align 8
  %i.k = load i64, ptr %i.c, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.m, i32 0, i32 2
  %i.n = load ptr, ptr %3, align 8
  %i.o = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.o, i32 0, i32 3
  %i.p = getelementptr inbounds nuw [8192 x i8], ptr %4, i64 0, i64 0
  %i.q = load i64, ptr %i.c, align 8
  call void @lua_pushlstring(ptr noundef %i.n, ptr noundef %i.p, i64 noundef %i.q)
  %i.r = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.r, i32 0, i32 3
  %i.s = getelementptr inbounds nuw [8192 x i8], ptr %5, i64 0, i64 0
  %i.t = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.t, i32 0, i32 0
  store ptr %i.s, ptr %6, align 8
  %i.u = load ptr, ptr %i.b, align 8
  %7 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.u, i32 0, i32 1 ; 2 uses
  %i.v = load i32, ptr %7, align 8
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %7, align 8
  store i32 1, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = load i32, ptr %i.a, align 4
  ret i32 %i.x
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjuststack(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.f, i32 0, i32 1
  %i.g = load i32, ptr %1, align 8
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.i, i32 0, i32 2
  %i.j = load ptr, ptr %2, align 8
  store ptr %i.j, ptr %i.b, align 8
  store i32 1, ptr %i.c, align 4
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call i64 @lua_objlen(ptr noundef %i.k, i32 noundef -1)
  store i64 %i.l, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load i32, ptr %i.c, align 4
  %i.o = add nsw i32 %i.n, 1
  %i.p = sub nsw i32 0, %i.o
  %i.q = call i64 @lua_objlen(ptr noundef %i.m, i32 noundef %i.p)
  store i64 %i.q, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.r, i32 0, i32 1
  %i.s = load i32, ptr %3, align 8
  %i.t = load i32, ptr %i.c, align 4
  %i.u = sub nsw i32 %i.s, %i.t
  %i.v = add nsw i32 %i.u, 1
  %i.w = icmp sge i32 %i.v, 10
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.d, align 8
  %i.y = load i64, ptr %i.e, align 8
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load i64, ptr %i.e, align 8
  %i.ab = load i64, ptr %i.d, align 8
  %i.ac = add i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.d, align 8
  %i.ad = load i32, ptr %i.c, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.c, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.c, align 4
  %i.ag = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.ag, i32 0, i32 1
  %i.ah = load i32, ptr %4, align 8
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.c, label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = load i32, ptr %i.c, align 4
  call void @lua_concat(ptr noundef %i.aj, i32 noundef %i.ak)
  %i.al = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.al, i32 0, i32 1
  %i.am = load i32, ptr %5, align 8
  %i.an = load i32, ptr %i.c, align 4
  %i.ao = sub nsw i32 %i.am, %i.an
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.aq, i32 0, i32 1
  store i32 %i.ap, ptr %6, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @luaL_prepbuffer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call i32 @emptybuffer(ptr noundef %i.b)
  %i.d = icmp ne i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  call void @adjuststack(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %i.f, i32 0, i32 3
  %i.g = getelementptr inbounds nuw [8192 x i8], ptr %1, i64 0, i64 0
  ret ptr %i.g
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaL_checkstack(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store ptr %2, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load i32, ptr %i.b, align 4
  %i.f = call i32 @lua_checkstack(ptr noundef %i.d, i32 noundef %i.e)
  %i.g = icmp ne i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.h, ptr noundef @.str.195, ptr noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsort(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 33 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca i32, align 4                      ; 22 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.ag, %bb.a
  %i.f = load i32, ptr %i.b, align 4
  %i.g = load i32, ptr %i.c, align 4
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = load i32, ptr %i.b, align 4
  call void @lua_rawgeti(ptr noundef %i.i, i32 noundef 1, i32 noundef %i.j)
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load i32, ptr %i.c, align 4
  call void @lua_rawgeti(ptr noundef %i.k, i32 noundef 1, i32 noundef %i.l)
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = call i32 @sort_comp(ptr noundef %i.m, i32 noundef -1, i32 noundef -2)
  %i.o = icmp ne i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load i32, ptr %i.b, align 4
  %i.r = load i32, ptr %i.c, align 4
  call void @set2(ptr noundef %i.p, i32 noundef %i.q, i32 noundef %i.r)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.a, align 8
  call void @lua_settop(ptr noundef %i.s, i32 noundef -3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = load i32, ptr %i.c, align 4
  %i.u = load i32, ptr %i.b, align 4
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.ah

bb.h:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.b, align 4
  %i.y = load i32, ptr %i.c, align 4
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = sdiv i32 %i.z, 2
  store i32 %i.aa, ptr %i.d, align 4
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load i32, ptr %i.d, align 4
  call void @lua_rawgeti(ptr noundef %i.ab, i32 noundef 1, i32 noundef %i.ac)
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = load i32, ptr %i.b, align 4
  call void @lua_rawgeti(ptr noundef %i.ad, i32 noundef 1, i32 noundef %i.ae)
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = call i32 @sort_comp(ptr noundef %i.af, i32 noundef -2, i32 noundef -1)
  %i.ah = icmp ne i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = load i32, ptr %i.d, align 4
  %i.ak = load i32, ptr %i.b, align 4
  call void @set2(ptr noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.a, align 8
  call void @lua_settop(ptr noundef %i.al, i32 noundef -2)
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = load i32, ptr %i.c, align 4
  call void @lua_rawgeti(ptr noundef %i.am, i32 noundef 1, i32 noundef %i.an)
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = call i32 @sort_comp(ptr noundef %i.ao, i32 noundef -1, i32 noundef -2)
  %i.aq = icmp ne i32 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = load i32, ptr %i.d, align 4
  %i.at = load i32, ptr %i.c, align 4
  call void @set2(ptr noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.a, align 8
  call void @lua_settop(ptr noundef %i.au, i32 noundef -3)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = load i32, ptr %i.b, align 4
  %i.ax = sub nsw i32 %i.av, %i.aw
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.ah

bb.p:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = load i32, ptr %i.d, align 4
  call void @lua_rawgeti(ptr noundef %i.az, i32 noundef 1, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.a, align 8
  call void @lua_pushvalue(ptr noundef %i.bb, i32 noundef -1)
  %i.bc = load ptr, ptr %i.a, align 8
  %i.bd = load i32, ptr %i.c, align 4
  %i.be = sub nsw i32 %i.bd, 1
  call void @lua_rawgeti(ptr noundef %i.bc, i32 noundef 1, i32 noundef %i.be)
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = load i32, ptr %i.d, align 4
  %i.bh = load i32, ptr %i.c, align 4
  %i.bi = sub nsw i32 %i.bh, 1
  call void @set2(ptr noundef %i.bf, i32 noundef %i.bg, i32 noundef %i.bi)
  %i.bj = load i32, ptr %i.b, align 4
  store i32 %i.bj, ptr %i.d, align 4
  %i.bk = load i32, ptr %i.c, align 4
  %i.bl = sub nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.e, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.ac, %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = load i32, ptr %i.d, align 4
  %i.bo = add nsw i32 %i.bn, 1                    ; 2 uses
  store i32 %i.bo, ptr %i.d, align 4
  call void @lua_rawgeti(ptr noundef %i.bm, i32 noundef 1, i32 noundef %i.bo)
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = call i32 @sort_comp(ptr noundef %i.bp, i32 noundef -1, i32 noundef -2)
  %i.br = icmp ne i32 %i.bq, 0
  br i1 %i.br, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bs = load i32, ptr %i.d, align 4
  %i.bt = load i32, ptr %i.c, align 4
  %i.bu = icmp sgt i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bv, ptr noundef @.str.196) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bx = load ptr, ptr %i.a, align 8
  call void @lua_settop(ptr noundef %i.bx, i32 noundef -2)
  br label %bb.r, !llvm.loop !136

bb.v:                                             ; preds = %bb.r
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %i.by = load ptr, ptr %i.a, align 8
  %i.bz = load i32, ptr %i.e, align 4
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.e, align 4
  call void @lua_rawgeti(ptr noundef %i.by, i32 noundef 1, i32 noundef %i.ca)
  %i.cb = load ptr, ptr %i.a, align 8
  %i.cc = call i32 @sort_comp(ptr noundef %i.cb, i32 noundef -3, i32 noundef -1)
  %i.cd = icmp ne i32 %i.cc, 0
  br i1 %i.cd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ce = load i32, ptr %i.e, align 4
  %i.cf = load i32, ptr %i.b, align 4
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ch = load ptr, ptr %i.a, align 8
  %i.ci = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.ch, ptr noundef @.str.196) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cj = load ptr, ptr %i.a, align 8
  call void @lua_settop(ptr noundef %i.cj, i32 noundef -2)
  br label %bb.w, !llvm.loop !137

bb.aa:                                            ; preds = %bb.w
  %i.ck = load i32, ptr %i.e, align 4
  %i.cl = load i32, ptr %i.d, align 4
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.a, align 8
  call void @lua_settop(ptr noundef %i.cn, i32 noundef -4)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %i.a, align 8
  %i.cp = load i32, ptr %i.d, align 4
  %i.cq = load i32, ptr %i.e, align 4
  call void @set2(ptr noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq)
  br label %bb.q

bb.ad:                                            ; preds = %bb.ab
  %i.cr = load ptr, ptr %i.a, align 8
  %i.cs = load i32, ptr %i.c, align 4
  %i.ct = sub nsw i32 %i.cs, 1
  call void @lua_rawgeti(ptr noundef %i.cr, i32 noundef 1, i32 noundef %i.ct)
  %i.cu = load ptr, ptr %i.a, align 8
  %i.cv = load i32, ptr %i.d, align 4
  call void @lua_rawgeti(ptr noundef %i.cu, i32 noundef 1, i32 noundef %i.cv)
  %i.cw = load ptr, ptr %i.a, align 8
  %i.cx = load i32, ptr %i.c, align 4
  %i.cy = sub nsw i32 %i.cx, 1
  %i.cz = load i32, ptr %i.d, align 4
  call void @set2(ptr noundef %i.cw, i32 noundef %i.cy, i32 noundef %i.cz)
  %i.da = load i32, ptr %i.d, align 4
  %i.db = load i32, ptr %i.b, align 4
  %i.dc = sub nsw i32 %i.da, %i.db
  %i.dd = load i32, ptr %i.c, align 4
  %i.de = load i32, ptr %i.d, align 4
  %i.df = sub nsw i32 %i.dd, %i.de
  %i.dg = icmp slt i32 %i.dc, %i.df
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load i32, ptr %i.b, align 4
  store i32 %i.dh, ptr %i.e, align 4
  %i.di = load i32, ptr %i.d, align 4
  %i.dj = sub nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.d, align 4
  %i.dk = load i32, ptr %i.d, align 4
  %i.dl = add nsw i32 %i.dk, 2
  store i32 %i.dl, ptr %i.b, align 4
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dm = load i32, ptr %i.d, align 4
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.e, align 4
  %i.do = load i32, ptr %i.c, align 4
  store i32 %i.do, ptr %i.d, align 4
  %i.dp = load i32, ptr %i.e, align 4
  %i.dq = sub nsw i32 %i.dp, 2
  store i32 %i.dq, ptr %i.c, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dr = load ptr, ptr %i.a, align 8
  %i.ds = load i32, ptr %i.e, align 4
  %i.dt = load i32, ptr %i.d, align 4
  call void @auxsort(ptr noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.dt)
  br label %bb.b, !llvm.loop !138

.loopexit:                                        ; preds = %bb.b
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %bb.o, %bb.g
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort_comp(ptr noundef %0, i32 noundef range(i32 -3, 0) %1, i32 noundef range(i32 -2, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store i32 %1, ptr %i.c, align 4
  store i32 %2, ptr %i.d, align 4
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = call i32 @lua_type(ptr noundef %i.f, i32 noundef 2)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  call void @lua_pushvalue(ptr noundef %i.i, i32 noundef 2)
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i32, ptr %i.c, align 4
  %i.l = sub nsw i32 %i.k, 1
  call void @lua_pushvalue(ptr noundef %i.j, i32 noundef %i.l)
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = load i32, ptr %i.d, align 4
  %i.o = sub nsw i32 %i.n, 2
  call void @lua_pushvalue(ptr noundef %i.m, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.b, align 8
  call void @lua_call(ptr noundef %i.p, i32 noundef 2, i32 noundef 1)
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = call i32 @lua_toboolean(ptr noundef %i.q, i32 noundef -1)
  store i32 %i.r, ptr %i.e, align 4
  %i.s = load ptr, ptr %i.b, align 8
  call void @lua_settop(ptr noundef %i.s, i32 noundef -2)
  %i.t = load i32, ptr %i.e, align 4
  store i32 %i.t, ptr %i.a, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = load i32, ptr %i.c, align 4
  %i.w = load i32, ptr %i.d, align 4
  %i.x = call i32 @lua_lessthan(ptr noundef %i.u, i32 noundef %i.v, i32 noundef %i.w)
  store i32 %i.x, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = load i32, ptr %i.a, align 4
  ret i32 %i.y
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set2(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.c, align 4
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load i32, ptr %i.b, align 4
  call void @lua_rawseti(ptr noundef %i.d, i32 noundef 1, i32 noundef %i.e)
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = load i32, ptr %i.c, align 4
  call void @lua_rawseti(ptr noundef %i.f, i32 noundef 1, i32 noundef %i.g)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_lessthan(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  store i32 %2, ptr %i.c, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = load i32, ptr %i.b, align 4
  %i.i = call ptr @index2adr(ptr noundef %i.g, i32 noundef %i.h)
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = load i32, ptr %i.c, align 4
  %i.l = call ptr @index2adr(ptr noundef %i.j, i32 noundef %i.k)
  store ptr %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = icmp eq ptr %i.m, @luaO_nilobject_
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = icmp eq ptr %i.o, @luaO_nilobject_
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = call i32 @luaV_lessthan(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ 0, %bb.c ], [ %i.t, %bb.d ]
  store i32 %i.u, ptr %i.f, align 4
  %i.v = load i32, ptr %i.f, align 4
  ret i32 %i.v
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @createmeta(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call i32 @luaL_newmetatable(ptr noundef %i.b, ptr noundef @.str.201) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8
  call void @lua_pushvalue(ptr noundef %i.d, i32 noundef -1)
  %i.e = load ptr, ptr %i.a, align 8
  call void @lua_setfield(ptr noundef %i.e, i32 noundef -2, ptr noundef @.str.48)
  %i.f = load ptr, ptr %i.a, align 8
  call void @luaL_register(ptr noundef %i.f, ptr noundef null, ptr noundef @flib)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newfenv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.c = load ptr, ptr %i.a, align 8
  call void @lua_createtable(ptr noundef %i.c, i32 noundef 0, i32 noundef 1)
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.b, align 8
  call void @lua_pushcclosure(ptr noundef %i.d, ptr noundef %i.e, i32 noundef 0)
  %i.f = load ptr, ptr %i.a, align 8
  call void @lua_setfield(ptr noundef %i.f, i32 noundef -2, ptr noundef @.str.208)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_fclose(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call ptr @luaL_checkudata(ptr noundef %i.d, i32 noundef 1, ptr noundef @.str.201)
  store ptr %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i32 @fclose(ptr noundef %i.g)
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  store i32 %i.j, ptr %i.c, align 4
  %i.k = load ptr, ptr %i.b, align 8
  store ptr null, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load i32, ptr %i.c, align 4
  %i.n = call i32 @pushresult(ptr noundef %i.l, i32 noundef %i.m, ptr noundef null)
  ret i32 %i.n
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lua_replace(ptr noundef %0, i32 noundef range(i32 -10005, -10000) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 22 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  store i32 %1, ptr %i.b, align 4
  %i.g = load i32, ptr %i.b, align 4
  %i.h = icmp eq i32 %i.g, -10001
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8
  %2 = getelementptr inbounds nuw %struct.lua_State, ptr %i.i, i32 0, i32 7
  %i.j = load ptr, ptr %2, align 8
  %i.k = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.lua_State, ptr %i.k, i32 0, i32 12
  %i.l = load ptr, ptr %3, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

end_hunk_6
begin_hunk_7_@str_byte:bb.a
  store i64 %i.y, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = load i64, ptr %i.e, align 8
  %i.aa = load i64, ptr %i.f, align 8
  %i.ab = icmp sgt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.f, align 8
  %i.ad = load i64, ptr %i.e, align 8
  %i.ae = sub nsw i64 %i.ac, %i.ad
  %i.af = add nsw i64 %i.ae, 1
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.g, align 4
  %i.ah = load i64, ptr %i.e, align 8
  %i.ai = load i32, ptr %i.g, align 4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.ah, %i.aj
  %i.al = load i64, ptr %i.f, align 8
  %i.am = icmp sle i64 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.an, ptr noundef @.str.238) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = load ptr, ptr %i.b, align 8
  %i.aq = load i32, ptr %i.g, align 4
  call void @luaL_checkstack(ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef @.str.238)
  store i32 0, ptr %i.h, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ar = load i32, ptr %i.h, align 4
  %i.as = load i32, ptr %i.g, align 4
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = load ptr, ptr %i.d, align 8
  %i.aw = load i64, ptr %i.e, align 8
  %i.ax = load i32, ptr %i.h, align 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %i.aw, %i.ay
  %i.ba = sub nsw i64 %i.az, 1
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  call void @lua_pushinteger(ptr noundef %i.au, i64 noundef %i.bd)
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.h, align 4
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.h, align 4
  br label %bb.j, !llvm.loop !142

bb.m:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %i.g, align 4
  store i32 %i.bg, ptr %i.a, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.bh = load i32, ptr %i.a, align 4
  ret i32 %i.bh
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_char(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %1 = alloca %struct.luaL_Buffer, align 8        ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call i32 @lua_gettop(ptr noundef %i.e)
  store i32 %i.f, ptr %i.b, align 4
  %i.g = load ptr, ptr %i.a, align 8
  call void @luaL_buffinit(ptr noundef %i.g, ptr noundef %1)
  store i32 1, ptr %i.c, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.h = load i32, ptr %i.c, align 4
  %i.i = load i32, ptr %i.b, align 4
  %i.j = icmp sle i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = load i32, ptr %i.c, align 4
  %i.m = call i64 @luaL_checkinteger(ptr noundef %i.k, i32 noundef %i.l)
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %i.d, align 4
  %i.o = load i32, ptr %i.d, align 4
  %i.p = trunc i32 %i.o to i8
  %i.q = zext i8 %i.p to i32
  %i.r = load i32, ptr %i.d, align 4
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load i32, ptr %i.c, align 4
  %i.v = call i32 @luaL_argerror(ptr noundef %i.t, i32 noundef %i.u, ptr noundef @.str.239)
  %i.w = icmp ne i32 %i.v, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi i1 [ true, %bb.c ], [ %i.w, %bb.d ]
  %i.y = zext i1 %i.x to i32                      ; 0 uses
  %2 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0
  %i.z = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 3
  %i.aa = getelementptr inbounds nuw [8192 x i8], ptr %3, i64 0, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8192
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = call ptr @luaL_prepbuffer(ptr noundef %1)
  %i.ae = icmp ne ptr %i.ad, null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.af = phi i1 [ true, %bb.e ], [ %i.ae, %bb.f ]
  %i.ag = zext i1 %i.af to i32                    ; 0 uses
  %i.ah = load i32, ptr %i.d, align 4
  %i.ai = trunc i32 %i.ah to i8
  %4 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0 ; 2 uses
  %i.aj = load ptr, ptr %4, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i32 1
  store ptr %i.ak, ptr %4, align 8
  store i8 %i.ai, ptr %i.aj, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %i.c, align 4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.c, align 4
  br label %bb.b, !llvm.loop !143

bb.i:                                             ; preds = %bb.b
  call void @luaL_pushresult(ptr noundef %1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call i32 @str_find_aux(ptr noundef %i.b, i32 noundef 1)
  ret i32 %i.c
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_format(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca i64, align 8                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 15 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  %1 = alloca %struct.luaL_Buffer, align 8        ; 13 uses
  %i.h = alloca [18 x i8], align 16               ; 9 uses
  %i.i = alloca [512 x i8], align 16              ; 7 uses
  %i.j = alloca i64, align 8                      ; 2 uses
  %i.k = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = call i32 @lua_gettop(ptr noundef %i.l)
  store i32 %i.m, ptr %i.c, align 4
  store i32 1, ptr %i.d, align 4
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load i32, ptr %i.d, align 4
  %i.p = call ptr @luaL_checklstring(ptr noundef %i.n, i32 noundef %i.o, ptr noundef %i.e)
  store ptr %i.p, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = load i64, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %i.g, align 8
  %i.t = load ptr, ptr %i.b, align 8
  call void @luaL_buffinit(ptr noundef %i.t, ptr noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load i8, ptr %i.x, align 1
  %i.z = sext i8 %i.y to i32
  %i.aa = icmp ne i32 %i.z, 37
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %2 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0
  %i.ab = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 3
  %i.ac = getelementptr inbounds nuw [8192 x i8], ptr %3, i64 0, i64 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8192
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call ptr @luaL_prepbuffer(ptr noundef %1)
  %i.ag = icmp ne ptr %i.af, null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = phi i1 [ true, %bb.d ], [ %i.ag, %bb.e ]
  %i.ai = zext i1 %i.ah to i32                    ; 0 uses
  %i.aj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i32 1
  store ptr %i.ak, ptr %i.f, align 8
  %i.al = load i8, ptr %i.aj, align 1
  %4 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0 ; 2 uses
  %i.am = load ptr, ptr %4, align 8               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i32 1
  store ptr %i.an, ptr %4, align 8
  store i8 %i.al, ptr %i.am, align 1
  br label %bb.z

bb.g:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i32 1 ; 2 uses
  store ptr %i.ap, ptr %i.f, align 8
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = sext i8 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 37
  br i1 %i.as, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %5 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0
  %i.at = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 3
  %i.au = getelementptr inbounds nuw [8192 x i8], ptr %6, i64 0, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8192
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = call ptr @luaL_prepbuffer(ptr noundef %1)
  %i.ay = icmp ne ptr %i.ax, null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = phi i1 [ true, %bb.h ], [ %i.ay, %bb.i ]
  %i.ba = zext i1 %i.az to i32                    ; 0 uses
  %i.bb = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i32 1
  store ptr %i.bc, ptr %i.f, align 8
  %i.bd = load i8, ptr %i.bb, align 1
  %7 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0 ; 2 uses
  %i.be = load ptr, ptr %7, align 8               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i32 1
  store ptr %i.bf, ptr %7, align 8
  store i8 %i.bd, ptr %i.be, align 1
  br label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.d, align 4
  %i.bh = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.d, align 4
  %i.bi = load i32, ptr %i.c, align 4
  %i.bj = icmp sgt i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.b, align 8
  %i.bl = load i32, ptr %i.d, align 4
  %i.bm = call i32 @luaL_argerror(ptr noundef %i.bk, i32 noundef %i.bl, ptr noundef @.str.133) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = load ptr, ptr %i.f, align 8
  %i.bp = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  %i.bq = call ptr @scanformat(ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef %i.bp)
  store ptr %i.bq, ptr %i.f, align 8
  %i.br = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i32 1
  store ptr %i.bs, ptr %i.f, align 8
  %i.bt = load i8, ptr %i.br, align 1
  %i.bu = sext i8 %i.bt to i32
  switch i32 %i.bu, label %bb.w [
    i32 99, label %bb.n
    i32 100, label %bb.o
    i32 105, label %bb.o
    i32 111, label %bb.p
    i32 117, label %bb.p
    i32 120, label %bb.p
    i32 88, label %bb.p
    i32 101, label %bb.q
    i32 69, label %bb.q
    i32 102, label %bb.q
    i32 103, label %bb.q
    i32 71, label %bb.q
    i32 113, label %bb.r
    i32 115, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 0, i64 0
  %i.bw = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  %i.bx = load ptr, ptr %i.b, align 8
  %i.by = load i32, ptr %i.d, align 4
  %i.bz = call double @luaL_checknumber(ptr noundef %i.bx, i32 noundef %i.by)
  %i.ca = fptosi double %i.bz to i32
  %i.cb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.bv, ptr noundef %i.bw, i32 noundef %i.ca) #21 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.cc = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  call void @addintlen(ptr noundef %i.cc)
  %i.cd = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 0, i64 0
  %i.ce = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  %i.cf = load ptr, ptr %i.b, align 8
  %i.cg = load i32, ptr %i.d, align 4
  %i.ch = call double @luaL_checknumber(ptr noundef %i.cf, i32 noundef %i.cg)
  %i.ci = fptosi double %i.ch to i64
  %i.cj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.cd, ptr noundef %i.ce, i64 noundef %i.ci) #21 ; 0 uses
  br label %bb.x

bb.p:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ck = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  call void @addintlen(ptr noundef %i.ck)
  %i.cl = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 0, i64 0
  %i.cm = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  %i.cn = load ptr, ptr %i.b, align 8
  %i.co = load i32, ptr %i.d, align 4
  %i.cp = call double @luaL_checknumber(ptr noundef %i.cn, i32 noundef %i.co)
  %i.cq = fptoui double %i.cp to i64
  %i.cr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.cl, ptr noundef %i.cm, i64 noundef %i.cq) #21 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.cs = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 0, i64 0
  %i.ct = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  %i.cu = load ptr, ptr %i.b, align 8
  %i.cv = load i32, ptr %i.d, align 4
  %i.cw = call double @luaL_checknumber(ptr noundef %i.cu, i32 noundef %i.cv)
  %i.cx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.cs, ptr noundef %i.ct, double noundef %i.cw) #21 ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %bb.m
  %i.cy = load ptr, ptr %i.b, align 8
  %i.cz = load i32, ptr %i.d, align 4
  call void @addquoted(ptr noundef %i.cy, ptr noundef %1, i32 noundef %i.cz)
  br label %.backedge

.backedge:                                        ; preds = %bb.r, %bb.u, %bb.z
  br label %bb.b, !llvm.loop !144

bb.s:                                             ; preds = %bb.m
  %i.da = load ptr, ptr %i.b, align 8
  %i.db = load i32, ptr %i.d, align 4
  %i.dc = call ptr @luaL_checklstring(ptr noundef %i.da, i32 noundef %i.db, ptr noundef %i.j)
  store ptr %i.dc, ptr %i.k, align 8
  %i.dd = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  %i.de = call ptr @strchr(ptr noundef %i.dd, i32 noundef 46) #22
  %i.df = icmp ne ptr %i.de, null
  br i1 %i.df, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = load i64, ptr %i.j, align 8
  %i.dh = icmp uge i64 %i.dg, 100
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = load ptr, ptr %i.b, align 8
  %i.dj = load i32, ptr %i.d, align 4
  call void @lua_pushvalue(ptr noundef %i.di, i32 noundef %i.dj)
  call void @luaL_addvalue(ptr noundef %1)
  br label %.backedge

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.dk = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 0, i64 0
  %i.dl = getelementptr inbounds nuw [18 x i8], ptr %i.h, i64 0, i64 0
  %i.dm = load ptr, ptr %i.k, align 8
  %i.dn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.dk, ptr noundef %i.dl, ptr noundef %i.dm) #21 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.b, align 8
  %i.dp = load ptr, ptr %i.f, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -1
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = sext i8 %i.dr to i32
  %i.dt = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.do, ptr noundef @.str.249, i32 noundef %i.ds) ; 0 uses
  store i32 0, ptr %i.a, align 4
  br label %bb.ab

bb.x:                                             ; preds = %bb.v, %bb.q, %bb.p, %bb.o, %bb.n
  %i.du = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 0, i64 0
  %i.dv = getelementptr inbounds nuw [512 x i8], ptr %i.i, i64 0, i64 0
  %i.dw = call i64 @strlen(ptr noundef %i.dv) #22
  call void @luaL_addlstring(ptr noundef %1, ptr noundef %i.du, i64 noundef %i.dw)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.j
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  br label %.backedge

bb.aa:                                            ; preds = %bb.b
  call void @luaL_pushresult(ptr noundef %1)
  store i32 1, ptr %i.a, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.dx = load i32, ptr %i.a, align 4
  ret i32 %i.dx
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmatch(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call ptr @luaL_checklstring(ptr noundef %i.b, i32 noundef 1, ptr noundef null) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call ptr @luaL_checklstring(ptr noundef %i.d, i32 noundef 2, ptr noundef null) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8
  call void @lua_settop(ptr noundef %i.f, i32 noundef 2)
  %i.g = load ptr, ptr %i.a, align 8
  call void @lua_pushinteger(ptr noundef %i.g, i64 noundef 0)
  %i.h = load ptr, ptr %i.a, align 8
  call void @lua_pushcclosure(ptr noundef %i.h, ptr noundef @gmatch_aux, i32 noundef 3)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_gsub(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.MatchState, align 8         ; 8 uses
  %2 = alloca %struct.luaL_Buffer, align 8        ; 8 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  store ptr %0, ptr %i.a, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = call ptr @luaL_checklstring(ptr noundef %i.j, i32 noundef 1, ptr noundef %i.b)
  store ptr %i.k, ptr %i.c, align 8
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call ptr @luaL_checklstring(ptr noundef %i.l, i32 noundef 2, ptr noundef null)
  store ptr %i.m, ptr %i.d, align 8
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = call i32 @lua_type(ptr noundef %i.n, i32 noundef 3)
  store i32 %i.o, ptr %i.e, align 4
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load i64, ptr %i.b, align 8
  %i.r = add i64 %i.q, 1
  %i.s = call i64 @luaL_optinteger(ptr noundef %i.p, i32 noundef 4, i64 noundef %i.r)
  %i.t = trunc i64 %i.s to i32
  store i32 %i.t, ptr %i.f, align 4
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = icmp eq i32 %i.w, 94
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i32 1
  store ptr %i.z, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = phi i32 [ 1, %bb.b ], [ 0, %bb.c ]
  store i32 %i.aa, ptr %i.g, align 4
  store i32 0, ptr %i.h, align 4
  %i.ab = load i32, ptr %i.e, align 4
  %i.ac = icmp eq i32 %i.ab, 3
  br i1 %i.ac, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.e, align 4
  %i.ae = icmp eq i32 %i.ad, 4
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.e, align 4
  %i.ag = icmp eq i32 %i.af, 6
  br i1 %i.ag, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.e, align 4
  %i.ai = icmp eq i32 %i.ah, 5
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = call i32 @luaL_argerror(ptr noundef %i.aj, i32 noundef 3, ptr noundef @.str.256)
  %i.al = icmp ne i32 %i.ak, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.am = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ %i.al, %bb.h ]
  %i.an = zext i1 %i.am to i32                    ; 0 uses
  %i.ao = load ptr, ptr %i.a, align 8
  call void @luaL_buffinit(ptr noundef %i.ao, ptr noundef %2)
  %i.ap = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.MatchState, ptr %1, i32 0, i32 2
  store ptr %i.ap, ptr %3, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  %4 = getelementptr inbounds nuw %struct.MatchState, ptr %1, i32 0, i32 0
  store ptr %i.aq, ptr %4, align 8
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = load i64, ptr %i.b, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %5 = getelementptr inbounds nuw %struct.MatchState, ptr %1, i32 0, i32 1
  store ptr %i.at, ptr %5, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.w, %bb.i
  %i.au = load i32, ptr %i.h, align 4
  %i.av = load i32, ptr %i.f, align 4
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  %6 = getelementptr inbounds nuw %struct.MatchState, ptr %1, i32 0, i32 3
  store i32 0, ptr %6, align 8
  %i.ax = load ptr, ptr %i.c, align 8
  %i.ay = load ptr, ptr %i.d, align 8
  %i.az = call ptr @match(ptr noundef %1, ptr noundef %i.ax, ptr noundef %i.ay)
  store ptr %i.az, ptr %i.i, align 8
  %i.ba = load ptr, ptr %i.i, align 8
  %i.bb = icmp ne ptr %i.ba, null
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %i.h, align 4
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.h, align 4
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = load ptr, ptr %i.i, align 8
  call void @add_value(ptr noundef %1, ptr noundef %2, ptr noundef %i.be, ptr noundef %i.bf)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = load ptr, ptr %i.i, align 8
  %i.bh = icmp ne ptr %i.bg, null
  br i1 %i.bh, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.i, align 8
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = icmp ugt ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.i, align 8
  store ptr %i.bl, ptr %i.c, align 8
  br label %bb.v

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bm = load ptr, ptr %i.c, align 8
  %7 = getelementptr inbounds nuw %struct.MatchState, ptr %1, i32 0, i32 1
  %i.bn = load ptr, ptr %7, align 8
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %8 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %2, i32 0, i32 0
  %i.bp = load ptr, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %2, i32 0, i32 3
  %i.bq = getelementptr inbounds nuw [8192 x i8], ptr %9, i64 0, i64 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8192
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = call ptr @luaL_prepbuffer(ptr noundef %2)
  %i.bu = icmp ne ptr %i.bt, null
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = phi i1 [ true, %bb.q ], [ %i.bu, %bb.r ]
  %i.bw = zext i1 %i.bv to i32                    ; 0 uses
  %i.bx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i32 1
  store ptr %i.by, ptr %i.c, align 8
  %i.bz = load i8, ptr %i.bx, align 1
  %10 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %2, i32 0, i32 0 ; 2 uses
  %i.ca = load ptr, ptr %10, align 8              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i32 1
  store ptr %i.cb, ptr %10, align 8
  store i8 %i.bz, ptr %i.ca, align 1
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %i.cc = load i32, ptr %i.g, align 4
  %i.cd = icmp ne i32 %i.cc, 0
  br i1 %i.cd, label %11, label %bb.w

11:                                               ; preds = %bb.v
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  br label %bb.j, !llvm.loop !145

bb.x:                                             ; preds = %bb.j
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %11, %bb.t
  %i.ce = load ptr, ptr %i.c, align 8
  %12 = getelementptr inbounds nuw %struct.MatchState, ptr %1, i32 0, i32 1
  %i.cf = load ptr, ptr %12, align 8
  %i.cg = load ptr, ptr %i.c, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @luaL_addlstring(ptr noundef %2, ptr noundef %i.ce, i64 noundef %i.cj)
  call void @luaL_pushresult(ptr noundef %2)
  %i.ck = load ptr, ptr %i.a, align 8
  %i.cl = load i32, ptr %i.h, align 4
  %i.cm = sext i32 %i.cl to i64
  call void @lua_pushinteger(ptr noundef %i.ck, i64 noundef %i.cm)
  ret i32 2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_lower(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.luaL_Buffer, align 8        ; 6 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call ptr @luaL_checklstring(ptr noundef %i.e, i32 noundef 1, ptr noundef %i.b)
  store ptr %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.a, align 8
  call void @luaL_buffinit(ptr noundef %i.g, ptr noundef %1)
  store i64 0, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.h = load i64, ptr %i.c, align 8
  %i.i = load i64, ptr %i.b, align 8
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0
  %i.k = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 3
  %i.l = getelementptr inbounds nuw [8192 x i8], ptr %3, i64 0, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8192
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @luaL_prepbuffer(ptr noundef %1)
  %i.p = icmp ne ptr %i.o, null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = phi i1 [ true, %bb.c ], [ %i.p, %bb.d ]
  %i.r = zext i1 %i.q to i32                      ; 0 uses
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = load i64, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = call i32 @tolower(i32 noundef %i.w) #22
  %i.y = trunc i32 %i.x to i8
  %4 = getelementptr inbounds nuw %struct.luaL_Buffer, ptr %1, i32 0, i32 0 ; 2 uses
  %i.z = load ptr, ptr %4, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i32 1
  store ptr %i.aa, ptr %4, align 8
  store i8 %i.y, ptr %i.z, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.c, align 8
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.c, align 8
  br label %bb.b, !llvm.loop !146

bb.g:                                             ; preds = %bb.b
  call void @luaL_pushresult(ptr noundef %1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_match(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = call i32 @str_find_aux(ptr noundef %i.b, i32 noundef 0)
  ret i32 %i.c
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_rep(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %1 = alloca %struct.luaL_Buffer, align 8        ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = call ptr @luaL_checklstring(ptr noundef %i.e, i32 noundef 1, ptr noundef %i.b)
  store ptr %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call i64 @luaL_checkinteger(ptr noundef %i.g, i32 noundef 2)
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %i.d, align 4
  %i.j = load ptr, ptr %i.a, align 8
  call void @luaL_buffinit(ptr noundef %i.j, ptr noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = load i32, ptr %i.d, align 4              ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.d, align 4
  %i.m = icmp sgt i32 %i.k, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load i64, ptr %i.b, align 8
  call void @luaL_addlstring(ptr noundef %1, ptr noundef %i.n, i64 noundef %i.o)
  br label %bb.b, !llvm.loop !147

bb.d:                                             ; preds = %bb.b
  call void @luaL_pushresult(ptr noundef %1)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_sub(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call ptr @luaL_checklstring(ptr noundef %i.f, i32 noundef 1, ptr noundef %i.b)
  store ptr %i.g, ptr %i.c, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = call i64 @luaL_checkinteger(ptr noundef %i.h, i32 noundef 2)
  %i.j = load i64, ptr %i.b, align 8
  %i.k = call i64 @posrelat(i64 noundef %i.i, i64 noundef %i.j)
  store i64 %i.k, ptr %i.d, align 8
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = call i64 @luaL_optinteger(ptr noundef %i.l, i32 noundef 3, i64 noundef -1)
  %i.n = load i64, ptr %i.b, align 8
  %i.o = call i64 @posrelat(i64 noundef %i.m, i64 noundef %i.n)
  store i64 %i.o, ptr %i.e, align 8
  %i.p = load i64, ptr %i.d, align 8
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = load i64, ptr %i.e, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = icmp sgt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.b, align 8
  store i64 %i.u, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load i64, ptr %i.d, align 8
  %i.w = load i64, ptr %i.e, align 8
  %i.x = icmp sle i64 %i.v, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = load ptr, ptr %i.c, align 8
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i64, ptr %i.e, align 8
  %i.ae = load i64, ptr %i.d, align 8
  %i.af = sub nsw i64 %i.ad, %i.ae
  %i.ag = add nsw i64 %i.af, 1
  call void @lua_pushlstring(ptr noundef %i.y, ptr noundef %i.ac, i64 noundef %i.ag)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.a, align 8
  call void @lua_pushlstring(ptr noundef %i.ah, ptr noundef @.str.7, i64 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_upper(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
end_hunk_7
begin_hunk_8_@str_find_aux:bb.a
  %i.bz = load ptr, ptr %i.g, align 8
  %i.ca = call ptr @match(ptr noundef %2, ptr noundef %i.by, ptr noundef %i.bz) ; 2 uses
  store ptr %i.ca, ptr %i.l, align 8
  %i.cb = icmp ne ptr %i.ca, null
  br i1 %i.cb, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.c, align 4
  %i.cd = icmp ne i32 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %i.b, align 8
  %i.cf = load ptr, ptr %i.k, align 8
  %i.cg = load ptr, ptr %i.f, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = add nsw i64 %i.cj, 1
  call void @lua_pushinteger(ptr noundef %i.ce, i64 noundef %i.ck)
  %i.cl = load ptr, ptr %i.b, align 8
  %i.cm = load ptr, ptr %i.l, align 8
  %i.cn = load ptr, ptr %i.f, align 8
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @lua_pushinteger(ptr noundef %i.cl, i64 noundef %i.cq)
  %i.cr = call i32 @push_captures(ptr noundef %2, ptr noundef null, ptr noundef null)
  %i.cs = add nsw i32 %i.cr, 2
  store i32 %i.cs, ptr %i.a, align 4
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.k, align 8
  %i.cu = load ptr, ptr %i.l, align 8
  %i.cv = call i32 @push_captures(ptr noundef %2, ptr noundef %i.ct, ptr noundef %i.cu)
  store i32 %i.cv, ptr %i.a, align 4
  br label %bb.z

bb.t:                                             ; preds = %bb.p
  br label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i32 1
  store ptr %i.cx, ptr %i.k, align 8
  %7 = getelementptr inbounds nuw %struct.MatchState, ptr %2, i32 0, i32 1
  %i.cy = load ptr, ptr %7, align 8
  %i.cz = icmp ult ptr %i.cw, %i.cy
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.da = load i32, ptr %i.j, align 4
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = xor i1 %i.db, true
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dd = phi i1 [ false, %bb.u ], [ %i.dc, %bb.v ]
  br i1 %i.dd, label %bb.p, label %bb.x, !llvm.loop !149

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.k
  %i.de = load ptr, ptr %i.b, align 8
  call void @lua_pushnil(ptr noundef %i.de)
  store i32 1, ptr %i.a, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s, %bb.r, %bb.j
  %i.df = load i32, ptr %i.a, align 4
  ret i32 %i.df
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lmemfind(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  store ptr %0, ptr %i.b, align 8
  store i64 %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  store i64 %3, ptr %i.e, align 8
  %i.g = load i64, ptr %i.e, align 8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  store ptr %i.i, ptr %i.a, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8
  %i.k = load i64, ptr %i.c, align 8
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.e, align 8
  %i.o = load i64, ptr %i.c, align 8
  %i.p = load i64, ptr %i.e, align 8
  %i.q = sub i64 %i.o, %i.p
  store i64 %i.q, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.r = load i64, ptr %i.c, align 8
  %i.s = icmp ugt i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = load i64, ptr %i.c, align 8
  %i.y = call ptr @memchr(ptr noundef %i.t, i32 noundef %i.w, i64 noundef %i.x) #22 ; 2 uses
  store ptr %i.y, ptr %i.f, align 8
  %i.z = icmp ne ptr %i.y, null
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = phi i1 [ false, %bb.f ], [ %i.z, %bb.g ]
  br i1 %i.aa, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i32 1
  store ptr %i.ac, ptr %i.f, align 8
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i64, ptr %i.e, align 8
  %i.ah = call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.af, i64 noundef %i.ag) #22
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  store ptr %i.ak, ptr %i.a, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.c, align 8
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.c, align 8
  %i.as = load ptr, ptr %i.f, align 8
  store ptr %i.as, ptr %i.b, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.f, !llvm.loop !150

bb.m:                                             ; preds = %bb.h
  store ptr null, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.d, %bb.b
  %i.at = load ptr, ptr %i.a, align 8
  ret ptr %i.at
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @match(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 16 uses
  %i.c = alloca ptr, align 8                      ; 24 uses
  %i.d = alloca ptr, align 8                      ; 29 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 2 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %2, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = load i8, ptr %i.j, align 1
  %i.l = sext i8 %i.k to i32
  switch i32 %i.l, label %bb.af [
    i32 40, label %bb.c
    i32 41, label %bb.f
    i32 37, label %bb.g
    i32 0, label %bb.y
    i32 36, label %bb.z
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = sext i8 %i.o to i32
  %i.q = icmp eq i32 %i.p, 41
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = call ptr @start_capture(ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.u, i32 noundef -2)
  store ptr %i.v, ptr %i.a, align 8
  br label %bb.aw

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.b, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = call ptr @start_capture(ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.z, i32 noundef -1)
  store ptr %i.aa, ptr %i.a, align 8
  br label %bb.aw

bb.f:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = call ptr @end_capture(ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef %i.ae)
  store ptr %i.af, ptr %i.a, align 8
  br label %bb.aw

bb.g:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  switch i32 %i.aj, label %bb.t [
    i32 98, label %bb.h
    i32 102, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %i.am = load ptr, ptr %i.d, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = call ptr @matchbalance(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.an)
  store ptr %i.ao, ptr %i.c, align 8
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.a, align 8
  br label %bb.aw

bb.j:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.d, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store ptr %i.as, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.s, %bb.w, %bb.am, %bb.av
  br label %bb.b

bb.k:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store ptr %i.au, ptr %i.d, align 8
  %i.av = load ptr, ptr %i.d, align 8
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = sext i8 %i.aw to i32
  %i.ay = icmp ne i32 %i.ax, 91
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.MatchState, ptr %i.az, i32 0, i32 2
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.ba, ptr noundef @.str.241) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = load ptr, ptr %i.b, align 8
  %i.bd = load ptr, ptr %i.d, align 8
  %i.be = call ptr @classend(ptr noundef %i.bc, ptr noundef %i.bd)
  store ptr %i.be, ptr %i.e, align 8
  %i.bf = load ptr, ptr %i.c, align 8
  %i.bg = load ptr, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw %struct.MatchState, ptr %i.bg, i32 0, i32 0
  %i.bh = load ptr, ptr %4, align 8
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.c, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = sext i8 %i.bl to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bn = phi i32 [ 0, %bb.n ], [ %i.bm, %bb.o ]
  %i.bo = trunc nsw i32 %i.bn to i8
  store i8 %i.bo, ptr %i.f, align 1
  %i.bp = load i8, ptr %i.f, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = load ptr, ptr %i.d, align 8
  %i.bs = load ptr, ptr %i.e, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -1
  %i.bu = call i32 @matchbracketclass(i32 noundef %i.bq, ptr noundef %i.br, ptr noundef %i.bt)
  %i.bv = icmp ne i32 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.c, align 8
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = load ptr, ptr %i.d, align 8
  %i.ca = load ptr, ptr %i.e, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -1
  %i.cc = call i32 @matchbracketclass(i32 noundef %i.by, ptr noundef %i.bz, ptr noundef %i.cb)
  %i.cd = icmp ne i32 %i.cc, 0
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr null, ptr %i.a, align 8
  br label %bb.aw

bb.s:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %i.e, align 8
  store ptr %i.ce, ptr %i.d, align 8
  br label %.backedge

bb.t:                                             ; preds = %bb.g
  %i.cf = call ptr @__ctype_b_loc() #26
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.d, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds i16, ptr %i.cg, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = and i32 %i.co, 2048
  %i.cq = icmp ne i32 %i.cp, 0
  br i1 %i.cq, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.b, align 8
  %i.cs = load ptr, ptr %i.c, align 8
  %i.ct = load ptr, ptr %i.d, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = call ptr @match_capture(ptr noundef %i.cr, ptr noundef %i.cs, i32 noundef %i.cw)
  store ptr %i.cx, ptr %i.c, align 8
  %i.cy = load ptr, ptr %i.c, align 8
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.a, align 8
  br label %bb.aw

bb.w:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.d, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store ptr %i.db, ptr %i.d, align 8
  br label %.backedge

bb.x:                                             ; preds = %bb.t
  br label %bb.ag

bb.y:                                             ; preds = %bb.b
  %i.dc = load ptr, ptr %i.c, align 8
  store ptr %i.dc, ptr %i.a, align 8
  br label %bb.aw

bb.z:                                             ; preds = %bb.b
  %i.dd = load ptr, ptr %i.d, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = sext i8 %i.df to i32
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.di = load ptr, ptr %i.c, align 8
  %i.dj = load ptr, ptr %i.b, align 8
  %5 = getelementptr inbounds nuw %struct.MatchState, ptr %i.dj, i32 0, i32 1
  %i.dk = load ptr, ptr %5, align 8
  %i.dl = icmp eq ptr %i.di, %i.dk
  br i1 %i.dl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.c, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dn = phi ptr [ %i.dm, %bb.ab ], [ null, %bb.ac ]
  store ptr %i.dn, ptr %i.a, align 8
  br label %bb.aw

bb.ae:                                            ; preds = %bb.z
  br label %bb.ag

bb.af:                                            ; preds = %bb.b
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.x
  %i.do = load ptr, ptr %i.b, align 8
  %i.dp = load ptr, ptr %i.d, align 8
  %i.dq = call ptr @classend(ptr noundef %i.do, ptr noundef %i.dp)
  store ptr %i.dq, ptr %i.g, align 8
  %i.dr = load ptr, ptr %i.c, align 8
  %i.ds = load ptr, ptr %i.b, align 8
  %6 = getelementptr inbounds nuw %struct.MatchState, ptr %i.ds, i32 0, i32 1
  %i.dt = load ptr, ptr %6, align 8
  %i.du = icmp ult ptr %i.dr, %i.dt
  br i1 %i.du, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load ptr, ptr %i.c, align 8
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load ptr, ptr %i.d, align 8
  %i.dz = load ptr, ptr %i.g, align 8
  %i.ea = call i32 @singlematch(i32 noundef %i.dx, ptr noundef %i.dy, ptr noundef %i.dz)
  %i.eb = icmp ne i32 %i.ea, 0
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ec = phi i1 [ false, %bb.ag ], [ %i.eb, %bb.ah ]
  %i.ed = zext i1 %i.ec to i32
  store i32 %i.ed, ptr %i.h, align 4
  %i.ee = load ptr, ptr %i.g, align 8
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = sext i8 %i.ef to i32
  switch i32 %i.eg, label %bb.at [
    i32 63, label %bb.aj
    i32 42, label %bb.an
    i32 43, label %bb.ao
    i32 45, label %bb.as
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i32, ptr %i.h, align 4
  %i.ei = icmp ne i32 %i.eh, 0
  br i1 %i.ei, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ej = load ptr, ptr %i.b, align 8
  %i.ek = load ptr, ptr %i.c, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.em = load ptr, ptr %i.g, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = call ptr @match(ptr noundef %i.ej, ptr noundef %i.el, ptr noundef %i.en) ; 2 uses
  store ptr %i.eo, ptr %i.i, align 8
  %i.ep = icmp ne ptr %i.eo, null
  br i1 %i.ep, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eq = load ptr, ptr %i.i, align 8
  store ptr %i.eq, ptr %i.a, align 8
  br label %bb.aw

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.er = load ptr, ptr %i.g, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  store ptr %i.es, ptr %i.d, align 8
  br label %.backedge

bb.an:                                            ; preds = %bb.ai
  %i.et = load ptr, ptr %i.b, align 8
  %i.eu = load ptr, ptr %i.c, align 8
  %i.ev = load ptr, ptr %i.d, align 8
  %i.ew = load ptr, ptr %i.g, align 8
  %i.ex = call ptr @max_expand(ptr noundef %i.et, ptr noundef %i.eu, ptr noundef %i.ev, ptr noundef %i.ew)
  store ptr %i.ex, ptr %i.a, align 8
  br label %bb.aw

bb.ao:                                            ; preds = %bb.ai
  %i.ey = load i32, ptr %i.h, align 4
  %i.ez = icmp ne i32 %i.ey, 0
  br i1 %i.ez, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load ptr, ptr %i.b, align 8
  %i.fb = load ptr, ptr %i.c, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load ptr, ptr %i.d, align 8
  %i.fe = load ptr, ptr %i.g, align 8
  %i.ff = call ptr @max_expand(ptr noundef %i.fa, ptr noundef %i.fc, ptr noundef %i.fd, ptr noundef %i.fe)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fg = phi ptr [ %i.ff, %bb.ap ], [ null, %bb.aq ]
  store ptr %i.fg, ptr %i.a, align 8
  br label %bb.aw

bb.as:                                            ; preds = %bb.ai
  %i.fh = load ptr, ptr %i.b, align 8
  %i.fi = load ptr, ptr %i.c, align 8
  %i.fj = load ptr, ptr %i.d, align 8
  %i.fk = load ptr, ptr %i.g, align 8
  %i.fl = call ptr @min_expand(ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef %i.fj, ptr noundef %i.fk)
  store ptr %i.fl, ptr %i.a, align 8
  br label %bb.aw

bb.at:                                            ; preds = %bb.ai
  %i.fm = load i32, ptr %i.h, align 4
  %i.fn = icmp ne i32 %i.fm, 0
  br i1 %i.fn, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr null, ptr %i.a, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.fo = load ptr, ptr %i.c, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i32 1
  store ptr %i.fp, ptr %i.c, align 8
  %i.fq = load ptr, ptr %i.g, align 8
  store ptr %i.fq, ptr %i.d, align 8
  br label %.backedge

bb.aw:                                            ; preds = %bb.au, %bb.as, %bb.ar, %bb.an, %bb.al, %bb.ad, %bb.y, %bb.v, %bb.r, %bb.i, %bb.f, %bb.e, %bb.d
  %i.fr = load ptr, ptr %i.a, align 8
  ret ptr %i.fr
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_captures(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.MatchState, ptr %i.f, i32 0, i32 3
  %i.g = load i32, ptr %3, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = icmp ne ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.MatchState, ptr %i.k, i32 0, i32 3
  %i.l = load i32, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i32 [ 1, %bb.c ], [ %i.l, %bb.d ]
  store i32 %i.m, ptr %i.e, align 4
  %i.n = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.MatchState, ptr %i.n, i32 0, i32 2
  %i.o = load ptr, ptr %5, align 8
  %i.p = load i32, ptr %i.e, align 4
  call void @luaL_checkstack(ptr noundef %i.o, i32 noundef %i.p, ptr noundef @.str.242)
  store i32 0, ptr %i.d, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.q = load i32, ptr %i.d, align 4
  %i.r = load i32, ptr %i.e, align 4
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load i32, ptr %i.d, align 4
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = load ptr, ptr %i.c, align 8
  call void @push_onecapture(ptr noundef %i.t, i32 noundef %i.u, ptr noundef %i.v, ptr noundef %i.w)
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.d, align 4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.d, align 4
  br label %bb.f, !llvm.loop !151

bb.i:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.e, align 4
  ret i32 %i.z
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @start_capture(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 -2, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  store i32 %3, ptr %i.d, align 4
  %i.g = load ptr, ptr %i.a, align 8
  %4 = getelementptr inbounds nuw %struct.MatchState, ptr %i.g, i32 0, i32 3
  %i.h = load i32, ptr %4, align 8
  store i32 %i.h, ptr %i.f, align 4
  %i.i = load i32, ptr %i.f, align 4
  %i.j = icmp sge i32 %i.i, 32
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8
  %5 = getelementptr inbounds nuw %struct.MatchState, ptr %i.k, i32 0, i32 2
  %i.l = load ptr, ptr %5, align 8
  %i.m = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.l, ptr noundef @.str.242) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.MatchState, ptr %i.o, i32 0, i32 4
  %i.p = load i32, ptr %i.f, align 4
  %i.q = sext i32 %i.p to i64
  %7 = getelementptr inbounds [32 x %struct.anon.6], ptr %6, i64 0, i64 %i.q
  %8 = getelementptr inbounds nuw %struct.anon.6, ptr %7, i32 0, i32 0
  store ptr %i.n, ptr %8, align 8
  %i.r = load i32, ptr %i.d, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct.MatchState, ptr %i.t, i32 0, i32 4
  %i.u = load i32, ptr %i.f, align 4
  %i.v = sext i32 %i.u to i64
  %10 = getelementptr inbounds [32 x %struct.anon.6], ptr %9, i64 0, i64 %i.v
  %11 = getelementptr inbounds nuw %struct.anon.6, ptr %10, i32 0, i32 1
  store i64 %i.s, ptr %11, align 8
  %i.w = load i32, ptr %i.f, align 4
  %i.x = add nsw i32 %i.w, 1
  %i.y = load ptr, ptr %i.a, align 8
  %12 = getelementptr inbounds nuw %struct.MatchState, ptr %i.y, i32 0, i32 3
  store i32 %i.x, ptr %12, align 8
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = call ptr @match(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab) ; 2 uses
  store ptr %i.ac, ptr %i.e, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.a, align 8
  %13 = getelementptr inbounds nuw %struct.MatchState, ptr %i.ae, i32 0, i32 3 ; 2 uses
  %i.af = load i32, ptr %13, align 8
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %13, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = load ptr, ptr %i.e, align 8
  ret ptr %i.ah
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @end_capture(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call i32 @capture_to_close(ptr noundef %i.f)
  store i32 %i.g, ptr %i.d, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %3 = getelementptr inbounds nuw %struct.MatchState, ptr %i.i, i32 0, i32 4
  %i.j = load i32, ptr %i.d, align 4
  %i.k = sext i32 %i.j to i64
  %4 = getelementptr inbounds [32 x %struct.anon.6], ptr %3, i64 0, i64 %i.k
  %5 = getelementptr inbounds nuw %struct.anon.6, ptr %4, i32 0, i32 0
  %i.l = load ptr, ptr %5, align 8
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = load ptr, ptr %i.a, align 8
  %6 = getelementptr inbounds nuw %struct.MatchState, ptr %i.p, i32 0, i32 4
  %i.q = load i32, ptr %i.d, align 4
  %i.r = sext i32 %i.q to i64
  %7 = getelementptr inbounds [32 x %struct.anon.6], ptr %6, i64 0, i64 %i.r
  %8 = getelementptr inbounds nuw %struct.anon.6, ptr %7, i32 0, i32 1
  store i64 %i.o, ptr %8, align 8
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = call ptr @match(ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u) ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.a, align 8
  %9 = getelementptr inbounds nuw %struct.MatchState, ptr %i.x, i32 0, i32 4
  %i.y = load i32, ptr %i.d, align 4
  %i.z = sext i32 %i.y to i64
  %10 = getelementptr inbounds [32 x %struct.anon.6], ptr %9, i64 0, i64 %i.z
  %11 = getelementptr inbounds nuw %struct.anon.6, ptr %10, i32 0, i32 1
  store i64 -1, ptr %11, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = load ptr, ptr %i.e, align 8
end_hunk_8
