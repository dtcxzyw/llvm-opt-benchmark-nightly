Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/aegis128l_aesni?download=true
inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aegis128l_implementation = type { ptr, ptr }

@aegis128l_aesni_implementation = hidden local_unnamed_addr global %struct.aegis128l_implementation { ptr @encrypt_detached, ptr @decrypt_detached }, align 8

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal noundef i32 @encrypt_detached(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 32               ; 10 uses
  %.sroa.0 = alloca <4 x i64>, align 32           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %.val = load <2 x i64>, ptr %8, align 1         ; 13 uses
  %.val44 = load <2 x i64>, ptr %7, align 1       ; 11 uses
  %i.b = xor <2 x i64> %.val44, %.val             ; 4 uses
  %i.c = xor <2 x i64> %.val, <i64 939006032783409408, i64 7095959494080274965> ; 4 uses
  %i.d = xor <2 x i64> %.val, <i64 -1067420811828642341, i64 -2510557285622673120> ; 2 uses
  %i.e = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.d, <2 x i64> %i.c) ; 2 uses
  %i.f = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.c, <2 x i64> %i.d) ; 2 uses
  %i.g = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.b, <2 x i64> %i.c) ; 2 uses
  %i.h = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>, <2 x i64> %i.b)
  %i.i = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> <i64 939006032783409408, i64 7095959494080274965>, <2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>) ; 2 uses
  %i.j = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>, <2 x i64> <i64 939006032783409408, i64 7095959494080274965>) ; 2 uses
  %i.k = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.b, <2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>) ; 2 uses
  %i.l = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.c, <2 x i64> %i.b)
  %i.m = xor <2 x i64> %i.l, %.val44              ; 2 uses
  %i.n = xor <2 x i64> %i.h, %.val                ; 2 uses
  %i.o = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.f, <2 x i64> %i.e) ; 2 uses
  %i.p = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.g, <2 x i64> %i.f) ; 2 uses
  %i.q = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.n, <2 x i64> %i.g) ; 2 uses
  %i.r = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.i, <2 x i64> %i.n)
  %i.s = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.j, <2 x i64> %i.i) ; 2 uses
  %i.t = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.k, <2 x i64> %i.j) ; 2 uses
  %i.u = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.m, <2 x i64> %i.k) ; 2 uses
  %i.v = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.e, <2 x i64> %i.m)
  %i.w = xor <2 x i64> %i.v, %.val44              ; 2 uses
  %i.x = xor <2 x i64> %i.r, %.val                ; 2 uses
  %i.y = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.p, <2 x i64> %i.o) ; 2 uses
  %i.z = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.q, <2 x i64> %i.p) ; 2 uses
  %i.aa = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.x, <2 x i64> %i.q) ; 2 uses
  %i.ab = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.s, <2 x i64> %i.x)
  %i.ac = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.t, <2 x i64> %i.s) ; 2 uses
  %i.ad = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.u, <2 x i64> %i.t) ; 2 uses
  %i.ae = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.w, <2 x i64> %i.u) ; 2 uses
  %i.af = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.o, <2 x i64> %i.w)
  %i.ag = xor <2 x i64> %i.af, %.val44            ; 2 uses
  %i.ah = xor <2 x i64> %i.ab, %.val              ; 2 uses
  %i.ai = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.z, <2 x i64> %i.y) ; 2 uses
  %i.aj = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aa, <2 x i64> %i.z) ; 2 uses
  %i.ak = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ah, <2 x i64> %i.aa) ; 2 uses
  %i.al = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ac, <2 x i64> %i.ah)
  %i.am = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ad, <2 x i64> %i.ac) ; 2 uses
  %i.an = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ae, <2 x i64> %i.ad) ; 2 uses
  %i.ao = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ag, <2 x i64> %i.ae) ; 2 uses
  %i.ap = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.y, <2 x i64> %i.ag)
  %i.aq = xor <2 x i64> %i.ap, %.val44            ; 2 uses
  %i.ar = xor <2 x i64> %i.al, %.val              ; 2 uses
  %i.as = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aj, <2 x i64> %i.ai) ; 2 uses
  %i.at = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ak, <2 x i64> %i.aj) ; 2 uses
  %i.au = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ar, <2 x i64> %i.ak) ; 2 uses
  %i.av = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.am, <2 x i64> %i.ar)
  %i.aw = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.an, <2 x i64> %i.am) ; 2 uses
  %i.ax = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ao, <2 x i64> %i.an) ; 2 uses
  %i.ay = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aq, <2 x i64> %i.ao) ; 2 uses
  %i.az = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ai, <2 x i64> %i.aq)
  %i.ba = xor <2 x i64> %i.az, %.val44            ; 2 uses
  %i.bb = xor <2 x i64> %i.av, %.val              ; 2 uses
  %i.bc = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.at, <2 x i64> %i.as) ; 2 uses
  %i.bd = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.au, <2 x i64> %i.at) ; 2 uses
  %i.be = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bb, <2 x i64> %i.au) ; 2 uses
  %i.bf = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aw, <2 x i64> %i.bb)
  %i.bg = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ax, <2 x i64> %i.aw) ; 2 uses
  %i.bh = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ay, <2 x i64> %i.ax) ; 2 uses
  %i.bi = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ba, <2 x i64> %i.ay) ; 2 uses
  %i.bj = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.as, <2 x i64> %i.ba)
  %i.bk = xor <2 x i64> %i.bj, %.val44            ; 2 uses
  %i.bl = xor <2 x i64> %i.bf, %.val              ; 2 uses
  %i.bm = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bd, <2 x i64> %i.bc) ; 2 uses
  %i.bn = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.be, <2 x i64> %i.bd) ; 2 uses
  %i.bo = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bl, <2 x i64> %i.be) ; 2 uses
  %i.bp = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bg, <2 x i64> %i.bl)
  %i.bq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bh, <2 x i64> %i.bg) ; 2 uses
  %i.br = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bi, <2 x i64> %i.bh) ; 2 uses
  %i.bs = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bk, <2 x i64> %i.bi) ; 2 uses
  %i.bt = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bc, <2 x i64> %i.bk)
  %i.bu = xor <2 x i64> %i.bt, %.val44            ; 2 uses
  %i.bv = xor <2 x i64> %i.bp, %.val              ; 2 uses
  %i.bw = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bn, <2 x i64> %i.bm) ; 2 uses
  %i.bx = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bo, <2 x i64> %i.bn) ; 2 uses
  %i.by = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bv, <2 x i64> %i.bo) ; 2 uses
  %i.bz = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bq, <2 x i64> %i.bv)
  %i.ca = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.br, <2 x i64> %i.bq) ; 2 uses
  %i.cb = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bs, <2 x i64> %i.br) ; 2 uses
  %i.cc = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bu, <2 x i64> %i.bs) ; 2 uses
  %i.cd = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bm, <2 x i64> %i.bu)
  %i.ce = xor <2 x i64> %i.cd, %.val44            ; 2 uses
  %i.cf = xor <2 x i64> %i.bz, %.val              ; 2 uses
  %i.cg = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bx, <2 x i64> %i.bw) ; 2 uses
  %i.ch = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.by, <2 x i64> %i.bx) ; 2 uses
  %i.ci = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cf, <2 x i64> %i.by) ; 2 uses
  %i.cj = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ca, <2 x i64> %i.cf)
  %i.ck = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cb, <2 x i64> %i.ca) ; 2 uses
  %i.cl = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cc, <2 x i64> %i.cb) ; 2 uses
  %i.cm = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ce, <2 x i64> %i.cc) ; 2 uses
  %i.cn = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bw, <2 x i64> %i.ce)
  %i.co = xor <2 x i64> %i.cn, %.val44            ; 2 uses
  %i.cp = xor <2 x i64> %i.cj, %.val              ; 2 uses
  %i.cq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ch, <2 x i64> %i.cg) ; 2 uses
  %i.cr = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ci, <2 x i64> %i.ch) ; 2 uses
  %i.cs = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cp, <2 x i64> %i.ci) ; 2 uses
  %i.ct = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ck, <2 x i64> %i.cp)
  %i.cu = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cl, <2 x i64> %i.ck) ; 2 uses
  %i.cv = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cm, <2 x i64> %i.cl) ; 2 uses
  %i.cw = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.co, <2 x i64> %i.cm) ; 2 uses
  %i.cx = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cg, <2 x i64> %i.co)
  %i.cy = xor <2 x i64> %i.cx, %.val44            ; 2 uses
  %i.cz = xor <2 x i64> %i.ct, %.val              ; 2 uses
  %.not109 = icmp ult i64 %6, 64
  br i1 %.not109, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.sroa.106.0.lcssa = phi <2 x i64> [ %i.cq, %bb.a ], [ %i.du, %.lr.ph ] ; 2 uses
  %.sroa.90.0.lcssa = phi <2 x i64> [ %i.cr, %bb.a ], [ %i.dv, %.lr.ph ] ; 2 uses
  %.sroa.74.0.lcssa = phi <2 x i64> [ %i.cs, %bb.a ], [ %i.dw, %.lr.ph ] ; 2 uses
  %.sroa.60.0.lcssa = phi <2 x i64> [ %i.cz, %bb.a ], [ %i.ed, %.lr.ph ] ; 2 uses
  %.sroa.45.0.lcssa = phi <2 x i64> [ %i.cu, %bb.a ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.sroa.30.0.lcssa = phi <2 x i64> [ %i.cv, %bb.a ], [ %i.dz, %.lr.ph ] ; 2 uses
  %.sroa.15.0.lcssa = phi <2 x i64> [ %i.cw, %bb.a ], [ %i.ea, %.lr.ph ] ; 2 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ %i.cy, %bb.a ], [ %i.ec, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.db, %.lr.ph ] ; 3 uses
  %i.da = or disjoint i64 %.0.lcssa, 32           ; 2 uses
  %.not40127 = icmp ugt i64 %i.da, %6
  br i1 %.not40127, label %._crit_edge, label %.lr.ph137

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.db = phi i64 [ %i.ee, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.0118 = phi i64 [ %i.db, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.0.0117 = phi <2 x i64> [ %i.ec, %.lr.ph ], [ %i.cy, %bb.a ] ; 2 uses
  %.sroa.15.0116 = phi <2 x i64> [ %i.ea, %.lr.ph ], [ %i.cw, %bb.a ] ; 2 uses
  %.sroa.30.0115 = phi <2 x i64> [ %i.dz, %.lr.ph ], [ %i.cv, %bb.a ] ; 2 uses
  %.sroa.45.0114 = phi <2 x i64> [ %i.dy, %.lr.ph ], [ %i.cu, %bb.a ] ; 2 uses
  %.sroa.60.0113 = phi <2 x i64> [ %i.ed, %.lr.ph ], [ %i.cz, %bb.a ] ; 2 uses
  %.sroa.74.0112 = phi <2 x i64> [ %i.dw, %.lr.ph ], [ %i.cs, %bb.a ] ; 2 uses
  %.sroa.90.0111 = phi <2 x i64> [ %i.dv, %.lr.ph ], [ %i.cr, %bb.a ] ; 2 uses
  %.sroa.106.0110 = phi <2 x i64> [ %i.du, %.lr.ph ], [ %i.cq, %bb.a ] ; 2 uses
  %i.dc = getelementptr i8, ptr %5, i64 %.0118    ; 4 uses
  %i.dd = load <2 x i64>, ptr %i.dc, align 1
  %i.de = getelementptr i8, ptr %i.dc, i64 16
  %i.df = load <2 x i64>, ptr %i.de, align 1
  %i.dg = getelementptr i8, ptr %i.dc, i64 32
  %i.dh = load <2 x i64>, ptr %i.dg, align 1
  %i.di = getelementptr i8, ptr %i.dc, i64 48
  %i.dj = load <2 x i64>, ptr %i.di, align 1
  %i.dk = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.90.0111, <2 x i64> %.sroa.106.0110) ; 2 uses
  %i.dl = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.74.0112, <2 x i64> %.sroa.90.0111) ; 2 uses
  %i.dm = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.60.0113, <2 x i64> %.sroa.74.0112) ; 2 uses
  %i.dn = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.45.0114, <2 x i64> %.sroa.60.0113)
  %i.do = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.30.0115, <2 x i64> %.sroa.45.0114) ; 2 uses
  %i.dp = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.15.0116, <2 x i64> %.sroa.30.0115) ; 2 uses
  %i.dq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.0117, <2 x i64> %.sroa.15.0116) ; 2 uses
  %i.dr = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.106.0110, <2 x i64> %.sroa.0.0117)
  %i.ds = xor <2 x i64> %i.dr, %i.dd              ; 2 uses
  %i.dt = xor <2 x i64> %i.dn, %i.df              ; 2 uses
  %i.du = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dl, <2 x i64> %i.dk) ; 2 uses
  %i.dv = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dm, <2 x i64> %i.dl) ; 2 uses
  %i.dw = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dt, <2 x i64> %i.dm) ; 2 uses
  %i.dx = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.do, <2 x i64> %i.dt)
  %i.dy = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dp, <2 x i64> %i.do) ; 2 uses
  %i.dz = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dq, <2 x i64> %i.dp) ; 2 uses
  %i.ea = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ds, <2 x i64> %i.dq) ; 2 uses
  %i.eb = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dk, <2 x i64> %i.ds)
  %i.ec = xor <2 x i64> %i.eb, %i.dh              ; 2 uses
  %i.ed = xor <2 x i64> %i.dx, %i.dj              ; 2 uses
  %i.ee = add i64 %i.db, 64                       ; 2 uses
  %.not = icmp ugt i64 %i.ee, %6
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !5

.lr.ph137:                                        ; preds = %.preheader, %.lr.ph137
  %i.ef = phi i64 [ %i.es, %.lr.ph137 ], [ %i.da, %.preheader ] ; 3 uses
  %.1136 = phi i64 [ %i.ef, %.lr.ph137 ], [ %.0.lcssa, %.preheader ]
  %.sroa.0.1135 = phi <2 x i64> [ %i.eq, %.lr.ph137 ], [ %.sroa.0.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.15.1134 = phi <2 x i64> [ %i.eo, %.lr.ph137 ], [ %.sroa.15.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.30.1133 = phi <2 x i64> [ %i.en, %.lr.ph137 ], [ %.sroa.30.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.45.1132 = phi <2 x i64> [ %i.em, %.lr.ph137 ], [ %.sroa.45.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.60.1131 = phi <2 x i64> [ %i.er, %.lr.ph137 ], [ %.sroa.60.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.74.1130 = phi <2 x i64> [ %i.ek, %.lr.ph137 ], [ %.sroa.74.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.90.1129 = phi <2 x i64> [ %i.ej, %.lr.ph137 ], [ %.sroa.90.0.lcssa, %.preheader ] ; 2 uses
  %.sroa.106.1128 = phi <2 x i64> [ %i.ei, %.lr.ph137 ], [ %.sroa.106.0.lcssa, %.preheader ] ; 2 uses
  %i.eg = getelementptr i8, ptr %5, i64 %.1136    ; 2 uses
  %.val47 = load <2 x i64>, ptr %i.eg, align 1
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %.val48 = load <2 x i64>, ptr %i.eh, align 1
  %i.ei = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.90.1129, <2 x i64> %.sroa.106.1128) ; 2 uses
  %i.ej = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.74.1130, <2 x i64> %.sroa.90.1129) ; 2 uses
  %i.ek = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.60.1131, <2 x i64> %.sroa.74.1130) ; 2 uses
  %i.el = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.45.1132, <2 x i64> %.sroa.60.1131)
  %i.em = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.30.1133, <2 x i64> %.sroa.45.1132) ; 2 uses
  %i.en = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.15.1134, <2 x i64> %.sroa.30.1133) ; 2 uses
  %i.eo = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.1135, <2 x i64> %.sroa.15.1134) ; 2 uses
  %i.ep = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.106.1128, <2 x i64> %.sroa.0.1135)
  %i.eq = xor <2 x i64> %i.ep, %.val47            ; 2 uses
  %i.er = xor <2 x i64> %i.el, %.val48            ; 2 uses
  %i.es = add i64 %i.ef, 32                       ; 2 uses
  %.not40 = icmp ugt i64 %i.es, %6
  br i1 %.not40, label %._crit_edge, label %.lr.ph137, !llvm.loop !6

._crit_edge:                                      ; preds = %.lr.ph137, %.preheader
  %.sroa.106.1.lcssa = phi <2 x i64> [ %.sroa.106.0.lcssa, %.preheader ], [ %i.ei, %.lr.ph137 ] ; 3 uses
  %.sroa.90.1.lcssa = phi <2 x i64> [ %.sroa.90.0.lcssa, %.preheader ], [ %i.ej, %.lr.ph137 ] ; 3 uses
  %.sroa.74.1.lcssa = phi <2 x i64> [ %.sroa.74.0.lcssa, %.preheader ], [ %i.ek, %.lr.ph137 ] ; 3 uses
  %.sroa.60.1.lcssa = phi <2 x i64> [ %.sroa.60.0.lcssa, %.preheader ], [ %i.er, %.lr.ph137 ] ; 3 uses
  %.sroa.45.1.lcssa = phi <2 x i64> [ %.sroa.45.0.lcssa, %.preheader ], [ %i.em, %.lr.ph137 ] ; 3 uses
  %.sroa.30.1.lcssa = phi <2 x i64> [ %.sroa.30.0.lcssa, %.preheader ], [ %i.en, %.lr.ph137 ] ; 3 uses
  %.sroa.15.1.lcssa = phi <2 x i64> [ %.sroa.15.0.lcssa, %.preheader ], [ %i.eo, %.lr.ph137 ] ; 3 uses
  %.sroa.0.1.lcssa = phi <2 x i64> [ %.sroa.0.0.lcssa, %.preheader ], [ %i.eq, %.lr.ph137 ] ; 3 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %i.ef, %.lr.ph137 ]
  %i.et = and i64 %6, 31                          ; 2 uses
  %.not41 = icmp eq i64 %i.et, 0
  br i1 %.not41, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, i8 noundef 0, i64 noundef 32, i1 noundef false) #7
  %i.eu = getelementptr i8, ptr %5, i64 %.1.lcssa
  %i.ev = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.eu, i64 noundef range(i64 1, 32) %i.et, i64 noundef 32) #7, !alias.scope !14 ; 0 uses
  %.val45 = load <2 x i64>, ptr %i.a, align 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val46 = load <2 x i64>, ptr %i.ew, align 16
  %i.ex = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.90.1.lcssa, <2 x i64> %.sroa.106.1.lcssa)
  %i.ey = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.74.1.lcssa, <2 x i64> %.sroa.90.1.lcssa)
  %i.ez = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.60.1.lcssa, <2 x i64> %.sroa.74.1.lcssa)
  %i.fa = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.45.1.lcssa, <2 x i64> %.sroa.60.1.lcssa)
  %i.fb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.30.1.lcssa, <2 x i64> %.sroa.45.1.lcssa)
  %i.fc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.15.1.lcssa, <2 x i64> %.sroa.30.1.lcssa)
  %i.fd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.1.lcssa, <2 x i64> %.sroa.15.1.lcssa)
  %i.fe = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.106.1.lcssa, <2 x i64> %.sroa.0.1.lcssa)
  %i.ff = xor <2 x i64> %i.fe, %.val45
  %i.fg = xor <2 x i64> %i.fa, %.val46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.sroa.106.2 = phi <2 x i64> [ %.sroa.106.1.lcssa, %._crit_edge ], [ %i.ex, %bb.b ] ; 2 uses
  %.sroa.90.2 = phi <2 x i64> [ %.sroa.90.1.lcssa, %._crit_edge ], [ %i.ey, %bb.b ] ; 2 uses
  %.sroa.74.2 = phi <2 x i64> [ %.sroa.74.1.lcssa, %._crit_edge ], [ %i.ez, %bb.b ] ; 2 uses
  %.sroa.60.2 = phi <2 x i64> [ %.sroa.60.1.lcssa, %._crit_edge ], [ %i.fg, %bb.b ] ; 2 uses
  %.sroa.45.2 = phi <2 x i64> [ %.sroa.45.1.lcssa, %._crit_edge ], [ %i.fb, %bb.b ] ; 2 uses
  %.sroa.30.2 = phi <2 x i64> [ %.sroa.30.1.lcssa, %._crit_edge ], [ %i.fc, %bb.b ] ; 2 uses
  %.sroa.15.2 = phi <2 x i64> [ %.sroa.15.1.lcssa, %._crit_edge ], [ %i.fd, %bb.b ] ; 2 uses
  %.sroa.0.2 = phi <2 x i64> [ %.sroa.0.1.lcssa, %._crit_edge ], [ %i.ff, %bb.b ] ; 2 uses
  %.not42147 = icmp ult i64 %4, 32
  br i1 %.not42147, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.c, %.lr.ph158
  %i.fh = phi i64 [ %i.ge, %.lr.ph158 ], [ 32, %bb.c ] ; 3 uses
  %.2156 = phi i64 [ %i.fh, %.lr.ph158 ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.3155 = phi <2 x i64> [ %i.gc, %.lr.ph158 ], [ %.sroa.0.2, %bb.c ] ; 2 uses
  %.sroa.15.3154 = phi <2 x i64> [ %i.ga, %.lr.ph158 ], [ %.sroa.15.2, %bb.c ] ; 3 uses
  %.sroa.30.3153 = phi <2 x i64> [ %i.fz, %.lr.ph158 ], [ %.sroa.30.2, %bb.c ] ; 4 uses
  %.sroa.45.3152 = phi <2 x i64> [ %i.fy, %.lr.ph158 ], [ %.sroa.45.2, %bb.c ] ; 3 uses
  %.sroa.60.3151 = phi <2 x i64> [ %i.gd, %.lr.ph158 ], [ %.sroa.60.2, %bb.c ] ; 2 uses
  %.sroa.74.3150 = phi <2 x i64> [ %i.fw, %.lr.ph158 ], [ %.sroa.74.2, %bb.c ] ; 3 uses
  %.sroa.90.3149 = phi <2 x i64> [ %i.fv, %.lr.ph158 ], [ %.sroa.90.2, %bb.c ] ; 4 uses
  %.sroa.106.3148 = phi <2 x i64> [ %i.fu, %.lr.ph158 ], [ %.sroa.106.2, %bb.c ] ; 3 uses
  %i.fi = getelementptr i8, ptr %0, i64 %.2156    ; 2 uses
  %i.fj = getelementptr i8, ptr %3, i64 %.2156    ; 2 uses
  %.val51 = load <2 x i64>, ptr %i.fj, align 1    ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  %.val52 = load <2 x i64>, ptr %i.fk, align 1    ; 2 uses
  %i.fl = and <2 x i64> %.sroa.30.3153, %.sroa.45.3152
  %i.fm = xor <2 x i64> %i.fl, %.sroa.90.3149
  %i.fn = xor <2 x i64> %i.fm, %.sroa.15.3154
  %i.fo = xor <2 x i64> %i.fn, %.val51
  %i.fp = and <2 x i64> %.sroa.90.3149, %.sroa.106.3148
  %i.fq = xor <2 x i64> %i.fp, %.sroa.74.3150
  %i.fr = xor <2 x i64> %i.fq, %.sroa.30.3153
  %i.fs = xor <2 x i64> %i.fr, %.val52
  store <2 x i64> %i.fo, ptr %i.fi, align 1
  %i.ft = getelementptr i8, ptr %i.fi, i64 16
  store <2 x i64> %i.fs, ptr %i.ft, align 1
  %i.fu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.90.3149, <2 x i64> %.sroa.106.3148) ; 2 uses
  %i.fv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.74.3150, <2 x i64> %.sroa.90.3149) ; 2 uses
  %i.fw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.60.3151, <2 x i64> %.sroa.74.3150) ; 2 uses
  %i.fx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.45.3152, <2 x i64> %.sroa.60.3151)
  %i.fy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.30.3153, <2 x i64> %.sroa.45.3152) ; 2 uses
  %i.fz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.15.3154, <2 x i64> %.sroa.30.3153) ; 2 uses
  %i.ga = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.3155, <2 x i64> %.sroa.15.3154) ; 2 uses
  %i.gb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.106.3148, <2 x i64> %.sroa.0.3155)
  %i.gc = xor <2 x i64> %i.gb, %.val51            ; 2 uses
  %i.gd = xor <2 x i64> %i.fx, %.val52            ; 2 uses
  %i.ge = add i64 %i.fh, 32                       ; 2 uses
  %.not42 = icmp ugt i64 %i.ge, %4
  br i1 %.not42, label %._crit_edge159, label %.lr.ph158, !llvm.loop !10

._crit_edge159:                                   ; preds = %.lr.ph158, %bb.c
  %.sroa.106.3.lcssa = phi <2 x i64> [ %.sroa.106.2, %bb.c ], [ %i.fu, %.lr.ph158 ] ; 4 uses
  %.sroa.90.3.lcssa = phi <2 x i64> [ %.sroa.90.2, %bb.c ], [ %i.fv, %.lr.ph158 ] ; 5 uses
  %.sroa.74.3.lcssa = phi <2 x i64> [ %.sroa.74.2, %bb.c ], [ %i.fw, %.lr.ph158 ] ; 4 uses
  %.sroa.60.3.lcssa = phi <2 x i64> [ %.sroa.60.2, %bb.c ], [ %i.gd, %.lr.ph158 ] ; 3 uses
  %.sroa.45.3.lcssa = phi <2 x i64> [ %.sroa.45.2, %bb.c ], [ %i.fy, %.lr.ph158 ] ; 4 uses
  %.sroa.30.3.lcssa = phi <2 x i64> [ %.sroa.30.2, %bb.c ], [ %i.fz, %.lr.ph158 ] ; 5 uses
  %.sroa.15.3.lcssa = phi <2 x i64> [ %.sroa.15.2, %bb.c ], [ %i.ga, %.lr.ph158 ] ; 4 uses
  %.sroa.0.3.lcssa = phi <2 x i64> [ %.sroa.0.2, %bb.c ], [ %i.gc, %.lr.ph158 ] ; 3 uses
  %.2.lcssa = phi i64 [ 0, %bb.c ], [ %i.fh, %.lr.ph158 ] ; 2 uses
  %i.gf = and i64 %4, 31                          ; 3 uses
  %.not43 = icmp eq i64 %i.gf, 0
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge159
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, i8 noundef 0, i64 noundef 32, i1 noundef false) #7
  %i.gg = getelementptr i8, ptr %3, i64 %.2.lcssa
  %i.gh = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.gg, i64 noundef range(i64 1, 32) %i.gf, i64 noundef 32) #7, !alias.scope !15 ; 0 uses
  %.val49 = load <2 x i64>, ptr %i.a, align 32    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val50 = load <2 x i64>, ptr %i.gi, align 16   ; 2 uses
  %i.gj = and <2 x i64> %.sroa.30.3.lcssa, %.sroa.45.3.lcssa
  %i.gk = xor <2 x i64> %i.gj, %.sroa.90.3.lcssa
  %i.gl = xor <2 x i64> %i.gk, %.sroa.15.3.lcssa
  %i.gm = xor <2 x i64> %i.gl, %.val49
  %i.gn = and <2 x i64> %.sroa.90.3.lcssa, %.sroa.106.3.lcssa
  %i.go = xor <2 x i64> %i.gn, %.sroa.74.3.lcssa
  %i.gp = xor <2 x i64> %i.go, %.sroa.30.3.lcssa
  %i.gq = xor <2 x i64> %i.gp, %.val50
  %9 = shufflevector <2 x i64> %i.gm, <2 x i64> %i.gq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %9, ptr %.sroa.0, align 32
  %i.gr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.90.3.lcssa, <2 x i64> %.sroa.106.3.lcssa)
  %i.gs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.74.3.lcssa, <2 x i64> %.sroa.90.3.lcssa)
  %i.gt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.60.3.lcssa, <2 x i64> %.sroa.74.3.lcssa)
  %i.gu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.45.3.lcssa, <2 x i64> %.sroa.60.3.lcssa)
  %i.gv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.30.3.lcssa, <2 x i64> %.sroa.45.3.lcssa)
  %i.gw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.15.3.lcssa, <2 x i64> %.sroa.30.3.lcssa)
  %i.gx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.3.lcssa, <2 x i64> %.sroa.15.3.lcssa)
  %i.gy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.106.3.lcssa, <2 x i64> %.sroa.0.3.lcssa)
  %i.gz = xor <2 x i64> %i.gy, %.val49
  %i.ha = xor <2 x i64> %i.gu, %.val50
  %i.hb = getelementptr i8, ptr %0, i64 %.2.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.hb, ptr noundef nonnull align 32 %.sroa.0, i64 noundef range(i64 1, 32) %i.gf, i1 noundef false) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge159
  %.sroa.106.4 = phi <2 x i64> [ %.sroa.106.3.lcssa, %._crit_edge159 ], [ %i.gr, %bb.d ] ; 2 uses
  %.sroa.90.4 = phi <2 x i64> [ %.sroa.90.3.lcssa, %._crit_edge159 ], [ %i.gs, %bb.d ] ; 2 uses
  %.sroa.74.4 = phi <2 x i64> [ %.sroa.74.3.lcssa, %._crit_edge159 ], [ %i.gt, %bb.d ] ; 2 uses
  %.sroa.60.4 = phi <2 x i64> [ %.sroa.60.3.lcssa, %._crit_edge159 ], [ %i.ha, %bb.d ] ; 2 uses
  %.sroa.45.4 = phi <2 x i64> [ %.sroa.45.3.lcssa, %._crit_edge159 ], [ %i.gv, %bb.d ] ; 2 uses
  %.sroa.30.4 = phi <2 x i64> [ %.sroa.30.3.lcssa, %._crit_edge159 ], [ %i.gw, %bb.d ] ; 3 uses
  %.sroa.15.4 = phi <2 x i64> [ %.sroa.15.3.lcssa, %._crit_edge159 ], [ %i.gx, %bb.d ] ; 2 uses
  %.sroa.0.4 = phi <2 x i64> [ %.sroa.0.3.lcssa, %._crit_edge159 ], [ %i.gz, %bb.d ] ; 2 uses
  %i.hc = insertelement <2 x i64> poison, i64 %6, i64 0
  %i.hd = insertelement <2 x i64> %i.hc, i64 %4, i64 1
  %i.he = shl <2 x i64> %i.hd, splat (i64 3)
  %i.hf = xor <2 x i64> %.sroa.30.4, %i.he        ; 14 uses
  %i.hg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.90.4, <2 x i64> %.sroa.106.4) ; 2 uses
  %i.hh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.74.4, <2 x i64> %.sroa.90.4) ; 2 uses
  %i.hi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.60.4, <2 x i64> %.sroa.74.4) ; 2 uses
  %i.hj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.45.4, <2 x i64> %.sroa.60.4)
  %i.hk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.30.4, <2 x i64> %.sroa.45.4) ; 2 uses
  %i.hl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.15.4, <2 x i64> %.sroa.30.4) ; 2 uses
  %i.hm = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.4, <2 x i64> %.sroa.15.4) ; 2 uses
  %i.hn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.106.4, <2 x i64> %.sroa.0.4)
  %i.ho = xor <2 x i64> %i.hn, %i.hf              ; 2 uses
  %i.hp = xor <2 x i64> %i.hj, %i.hf              ; 2 uses
  %i.hq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hh, <2 x i64> %i.hg) ; 2 uses
  %i.hr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hi, <2 x i64> %i.hh) ; 2 uses
  %i.hs = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hp, <2 x i64> %i.hi) ; 2 uses
  %i.ht = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hk, <2 x i64> %i.hp)
  %i.hu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hl, <2 x i64> %i.hk) ; 2 uses
  %i.hv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hm, <2 x i64> %i.hl) ; 2 uses
  %i.hw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ho, <2 x i64> %i.hm) ; 2 uses
  %i.hx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hg, <2 x i64> %i.ho)
  %i.hy = xor <2 x i64> %i.hx, %i.hf              ; 2 uses
  %i.hz = xor <2 x i64> %i.ht, %i.hf              ; 2 uses
  %i.ia = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hr, <2 x i64> %i.hq) ; 2 uses
  %i.ib = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hs, <2 x i64> %i.hr) ; 2 uses
  %i.ic = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hz, <2 x i64> %i.hs) ; 2 uses
  %i.id = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hu, <2 x i64> %i.hz)
  %i.ie = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hv, <2 x i64> %i.hu) ; 2 uses
  %i.if = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hw, <2 x i64> %i.hv) ; 2 uses
  %i.ig = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hy, <2 x i64> %i.hw) ; 2 uses
  %i.ih = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.hq, <2 x i64> %i.hy)
  %i.ii = xor <2 x i64> %i.ih, %i.hf              ; 2 uses
  %i.ij = xor <2 x i64> %i.id, %i.hf              ; 2 uses
  %i.ik = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ib, <2 x i64> %i.ia) ; 2 uses
  %i.il = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ic, <2 x i64> %i.ib) ; 2 uses
  %i.im = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ij, <2 x i64> %i.ic) ; 2 uses
  %i.in = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ie, <2 x i64> %i.ij)
  %i.io = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.if, <2 x i64> %i.ie) ; 2 uses
  %i.ip = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ig, <2 x i64> %i.if) ; 2 uses
  %i.iq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ii, <2 x i64> %i.ig) ; 2 uses
  %i.ir = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ia, <2 x i64> %i.ii)
  %i.is = xor <2 x i64> %i.ir, %i.hf              ; 2 uses
  %i.it = xor <2 x i64> %i.in, %i.hf              ; 2 uses
  %i.iu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.il, <2 x i64> %i.ik) ; 2 uses
  %i.iv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.im, <2 x i64> %i.il) ; 2 uses
  %i.iw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.it, <2 x i64> %i.im) ; 2 uses
  %i.ix = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.io, <2 x i64> %i.it)
  %i.iy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ip, <2 x i64> %i.io) ; 2 uses
  %i.iz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iq, <2 x i64> %i.ip) ; 2 uses
  %i.ja = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.is, <2 x i64> %i.iq) ; 2 uses
  %i.jb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ik, <2 x i64> %i.is)
  %i.jc = xor <2 x i64> %i.jb, %i.hf              ; 2 uses
  %i.jd = xor <2 x i64> %i.ix, %i.hf              ; 2 uses
  %i.je = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iv, <2 x i64> %i.iu) ; 2 uses
  %i.jf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iw, <2 x i64> %i.iv) ; 2 uses
  %i.jg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jd, <2 x i64> %i.iw) ; 2 uses
  %i.jh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iy, <2 x i64> %i.jd)
  %i.ji = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iz, <2 x i64> %i.iy) ; 2 uses
  %i.jj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ja, <2 x i64> %i.iz) ; 2 uses
  %i.jk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jc, <2 x i64> %i.ja) ; 2 uses
  %i.jl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.iu, <2 x i64> %i.jc)
  %i.jm = xor <2 x i64> %i.jl, %i.hf              ; 2 uses
  %i.jn = xor <2 x i64> %i.jh, %i.hf              ; 2 uses
  %i.jo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jg, <2 x i64> %i.jf) ; 2 uses
  %i.jp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jn, <2 x i64> %i.jg) ; 2 uses
  %i.jq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ji, <2 x i64> %i.jn)
  %i.jr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jj, <2 x i64> %i.ji) ; 2 uses
  %i.js = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jk, <2 x i64> %i.jj) ; 2 uses
  %i.jt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jm, <2 x i64> %i.jk) ; 2 uses
  %i.ju = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.je, <2 x i64> %i.jm)
  %i.jv = xor <2 x i64> %i.ju, %i.hf              ; 2 uses
  %i.jw = xor <2 x i64> %i.jq, %i.hf              ; 2 uses
  switch i64 %2, label %bb.h [
    i64 16, label %bb.f
    i64 32, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.jx = xor <2 x i64> %i.jp, %i.jo
  %i.jy = xor <2 x i64> %i.jx, %i.jw
  %i.jz = xor <2 x i64> %i.jy, %i.jr
  %i.ka = xor <2 x i64> %i.jz, %i.js
  %i.kb = xor <2 x i64> %i.ka, %i.jt
  %i.kc = xor <2 x i64> %i.kb, %i.jv
  store <2 x i64> %i.kc, ptr %1, align 1
  br label %aegis128l_mac.exit

bb.g:                                             ; preds = %bb.e
  %i.kd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jf, <2 x i64> %i.je)
  %i.ke = xor <2 x i64> %i.js, %i.jr
  %i.kf = xor <2 x i64> %i.ke, %i.jt
  %i.kg = xor <2 x i64> %i.kf, %i.jv
  store <2 x i64> %i.kg, ptr %1, align 1
  %i.kh = xor <2 x i64> %i.jo, %i.kd
  %i.ki = xor <2 x i64> %i.kh, %i.jp
  %i.kj = xor <2 x i64> %i.ki, %i.jw
  %i.kk = getelementptr i8, ptr %1, i64 16
  store <2 x i64> %i.kj, ptr %i.kk, align 1
  br label %aegis128l_mac.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %1, i8 noundef 0, i64 noundef %2, i1 noundef false) #7
  br label %aegis128l_mac.exit

aegis128l_mac.exit:                               ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decrypt_detached(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 10 uses
  %i.c = alloca [32 x i8], align 32               ; 6 uses
  %i.d = alloca [32 x i8], align 32               ; 6 uses
  %i.e = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %.val = load <2 x i64>, ptr %8, align 1         ; 13 uses
  %.val72 = load <2 x i64>, ptr %7, align 1       ; 11 uses
  %i.f = xor <2 x i64> %.val72, %.val             ; 4 uses
  %i.g = xor <2 x i64> %.val, <i64 939006032783409408, i64 7095959494080274965> ; 4 uses
  %i.h = xor <2 x i64> %.val, <i64 -1067420811828642341, i64 -2510557285622673120> ; 2 uses
  %i.i = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.h, <2 x i64> %i.g) ; 2 uses
  %i.j = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.g, <2 x i64> %i.h) ; 2 uses
  %i.k = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.f, <2 x i64> %i.g) ; 2 uses
  %i.l = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>, <2 x i64> %i.f)
  %i.m = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> <i64 939006032783409408, i64 7095959494080274965>, <2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>) ; 2 uses
  %i.n = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>, <2 x i64> <i64 939006032783409408, i64 7095959494080274965>) ; 2 uses
  %i.o = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.f, <2 x i64> <i64 -1067420811828642341, i64 -2510557285622673120>) ; 2 uses
  %i.p = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.g, <2 x i64> %i.f)
  %i.q = xor <2 x i64> %i.p, %.val72              ; 2 uses
  %i.r = xor <2 x i64> %i.l, %.val                ; 2 uses
  %i.s = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.j, <2 x i64> %i.i) ; 2 uses
  %i.t = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.k, <2 x i64> %i.j) ; 2 uses
  %i.u = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.r, <2 x i64> %i.k) ; 2 uses
  %i.v = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.m, <2 x i64> %i.r)
  %i.w = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.n, <2 x i64> %i.m) ; 2 uses
  %i.x = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.o, <2 x i64> %i.n) ; 2 uses
  %i.y = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.q, <2 x i64> %i.o) ; 2 uses
  %i.z = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.i, <2 x i64> %i.q)
  %i.aa = xor <2 x i64> %i.z, %.val72             ; 2 uses
  %i.ab = xor <2 x i64> %i.v, %.val               ; 2 uses
  %i.ac = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.t, <2 x i64> %i.s) ; 2 uses
  %i.ad = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.u, <2 x i64> %i.t) ; 2 uses
  %i.ae = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ab, <2 x i64> %i.u) ; 2 uses
  %i.af = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.w, <2 x i64> %i.ab)
  %i.ag = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.x, <2 x i64> %i.w) ; 2 uses
  %i.ah = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.y, <2 x i64> %i.x) ; 2 uses
  %i.ai = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aa, <2 x i64> %i.y) ; 2 uses
  %i.aj = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.s, <2 x i64> %i.aa)
  %i.ak = xor <2 x i64> %i.aj, %.val72            ; 2 uses
  %i.al = xor <2 x i64> %i.af, %.val              ; 2 uses
  %i.am = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ad, <2 x i64> %i.ac) ; 2 uses
  %i.an = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ae, <2 x i64> %i.ad) ; 2 uses
  %i.ao = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.al, <2 x i64> %i.ae) ; 2 uses
  %i.ap = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ag, <2 x i64> %i.al)
  %i.aq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ah, <2 x i64> %i.ag) ; 2 uses
  %i.ar = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ai, <2 x i64> %i.ah) ; 2 uses
  %i.as = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ak, <2 x i64> %i.ai) ; 2 uses
  %i.at = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ac, <2 x i64> %i.ak)
  %i.au = xor <2 x i64> %i.at, %.val72            ; 2 uses
  %i.av = xor <2 x i64> %i.ap, %.val              ; 2 uses
  %i.aw = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.an, <2 x i64> %i.am) ; 2 uses
  %i.ax = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ao, <2 x i64> %i.an) ; 2 uses
  %i.ay = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.av, <2 x i64> %i.ao) ; 2 uses
  %i.az = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aq, <2 x i64> %i.av)
  %i.ba = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ar, <2 x i64> %i.aq) ; 2 uses
  %i.bb = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.as, <2 x i64> %i.ar) ; 2 uses
  %i.bc = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.au, <2 x i64> %i.as) ; 2 uses
  %i.bd = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.am, <2 x i64> %i.au)
  %i.be = xor <2 x i64> %i.bd, %.val72            ; 2 uses
  %i.bf = xor <2 x i64> %i.az, %.val              ; 2 uses
  %i.bg = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ax, <2 x i64> %i.aw) ; 2 uses
  %i.bh = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ay, <2 x i64> %i.ax) ; 2 uses
  %i.bi = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bf, <2 x i64> %i.ay) ; 2 uses
  %i.bj = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ba, <2 x i64> %i.bf)
  %i.bk = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bb, <2 x i64> %i.ba) ; 2 uses
  %i.bl = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bc, <2 x i64> %i.bb) ; 2 uses
  %i.bm = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.be, <2 x i64> %i.bc) ; 2 uses
  %i.bn = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.aw, <2 x i64> %i.be)
  %i.bo = xor <2 x i64> %i.bn, %.val72            ; 2 uses
  %i.bp = xor <2 x i64> %i.bj, %.val              ; 2 uses
  %i.bq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bh, <2 x i64> %i.bg) ; 2 uses
  %i.br = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bi, <2 x i64> %i.bh) ; 2 uses
  %i.bs = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bp, <2 x i64> %i.bi) ; 2 uses
  %i.bt = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bk, <2 x i64> %i.bp)
  %i.bu = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bl, <2 x i64> %i.bk) ; 2 uses
  %i.bv = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bm, <2 x i64> %i.bl) ; 2 uses
  %i.bw = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bo, <2 x i64> %i.bm) ; 2 uses
  %i.bx = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bg, <2 x i64> %i.bo)
  %i.by = xor <2 x i64> %i.bx, %.val72            ; 2 uses
  %i.bz = xor <2 x i64> %i.bt, %.val              ; 2 uses
  %i.ca = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.br, <2 x i64> %i.bq) ; 2 uses
  %i.cb = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bs, <2 x i64> %i.br) ; 2 uses
  %i.cc = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bz, <2 x i64> %i.bs) ; 2 uses
  %i.cd = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bu, <2 x i64> %i.bz)
  %i.ce = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bv, <2 x i64> %i.bu) ; 2 uses
  %i.cf = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bw, <2 x i64> %i.bv) ; 2 uses
  %i.cg = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.by, <2 x i64> %i.bw) ; 2 uses
  %i.ch = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.bq, <2 x i64> %i.by)
  %i.ci = xor <2 x i64> %i.ch, %.val72            ; 2 uses
  %i.cj = xor <2 x i64> %i.cd, %.val              ; 2 uses
  %i.ck = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cb, <2 x i64> %i.ca) ; 2 uses
  %i.cl = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cc, <2 x i64> %i.cb) ; 2 uses
  %i.cm = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cj, <2 x i64> %i.cc) ; 2 uses
  %i.cn = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ce, <2 x i64> %i.cj)
  %i.co = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cf, <2 x i64> %i.ce) ; 2 uses
  %i.cp = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cg, <2 x i64> %i.cf) ; 2 uses
  %i.cq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ci, <2 x i64> %i.cg) ; 2 uses
  %i.cr = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ca, <2 x i64> %i.ci)
  %i.cs = xor <2 x i64> %i.cr, %.val72            ; 2 uses
  %i.ct = xor <2 x i64> %i.cn, %.val              ; 2 uses
  %i.cu = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cl, <2 x i64> %i.ck) ; 2 uses
  %i.cv = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cm, <2 x i64> %i.cl) ; 2 uses
  %i.cw = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ct, <2 x i64> %i.cm) ; 2 uses
  %i.cx = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.co, <2 x i64> %i.ct)
  %i.cy = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cp, <2 x i64> %i.co) ; 2 uses
  %i.cz = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cq, <2 x i64> %i.cp) ; 2 uses
  %i.da = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.cs, <2 x i64> %i.cq) ; 2 uses
  %i.db = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ck, <2 x i64> %i.cs)
  %i.dc = xor <2 x i64> %i.db, %.val72            ; 2 uses
  %i.dd = xor <2 x i64> %i.cx, %.val              ; 2 uses
  %.not172 = icmp ult i64 %6, 64
  br i1 %.not172, label %.preheader171, label %.lr.ph

.preheader171:                                    ; preds = %.lr.ph, %bb.a
  %.sroa.144.0.lcssa = phi <2 x i64> [ %i.cu, %bb.a ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.sroa.122.0.lcssa = phi <2 x i64> [ %i.cv, %bb.a ], [ %i.dz, %.lr.ph ] ; 2 uses
  %.sroa.100.0.lcssa = phi <2 x i64> [ %i.cw, %bb.a ], [ %i.ea, %.lr.ph ] ; 2 uses
  %.sroa.82.0.lcssa = phi <2 x i64> [ %i.dd, %bb.a ], [ %i.eh, %.lr.ph ] ; 2 uses
  %.sroa.61.0.lcssa = phi <2 x i64> [ %i.cy, %bb.a ], [ %i.ec, %.lr.ph ] ; 2 uses
  %.sroa.40.0.lcssa = phi <2 x i64> [ %i.cz, %bb.a ], [ %i.ed, %.lr.ph ] ; 2 uses
  %.sroa.19.0.lcssa = phi <2 x i64> [ %i.da, %bb.a ], [ %i.ee, %.lr.ph ] ; 2 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ %i.dc, %bb.a ], [ %i.eg, %.lr.ph ] ; 2 uses
  %.052.lcssa = phi i64 [ 0, %bb.a ], [ %i.df, %.lr.ph ] ; 3 uses
  %i.de = or disjoint i64 %.052.lcssa, 32         ; 2 uses
  %.not65190 = icmp ugt i64 %i.de, %6
  br i1 %.not65190, label %._crit_edge, label %.lr.ph200

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.df = phi i64 [ %i.ei, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.052181 = phi i64 [ %i.df, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.0.0180 = phi <2 x i64> [ %i.eg, %.lr.ph ], [ %i.dc, %bb.a ] ; 2 uses
  %.sroa.19.0179 = phi <2 x i64> [ %i.ee, %.lr.ph ], [ %i.da, %bb.a ] ; 2 uses
  %.sroa.40.0178 = phi <2 x i64> [ %i.ed, %.lr.ph ], [ %i.cz, %bb.a ] ; 2 uses
  %.sroa.61.0177 = phi <2 x i64> [ %i.ec, %.lr.ph ], [ %i.cy, %bb.a ] ; 2 uses
  %.sroa.82.0176 = phi <2 x i64> [ %i.eh, %.lr.ph ], [ %i.dd, %bb.a ] ; 2 uses
  %.sroa.100.0175 = phi <2 x i64> [ %i.ea, %.lr.ph ], [ %i.cw, %bb.a ] ; 2 uses
  %.sroa.122.0174 = phi <2 x i64> [ %i.dz, %.lr.ph ], [ %i.cv, %bb.a ] ; 2 uses
  %.sroa.144.0173 = phi <2 x i64> [ %i.dy, %.lr.ph ], [ %i.cu, %bb.a ] ; 2 uses
  %i.dg = getelementptr i8, ptr %5, i64 %.052181  ; 4 uses
  %i.dh = load <2 x i64>, ptr %i.dg, align 1
  %i.di = getelementptr i8, ptr %i.dg, i64 16
  %i.dj = load <2 x i64>, ptr %i.di, align 1
  %i.dk = getelementptr i8, ptr %i.dg, i64 32
  %i.dl = load <2 x i64>, ptr %i.dk, align 1
  %i.dm = getelementptr i8, ptr %i.dg, i64 48
  %i.dn = load <2 x i64>, ptr %i.dm, align 1
  %i.do = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.0174, <2 x i64> %.sroa.144.0173) ; 2 uses
  %i.dp = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.0175, <2 x i64> %.sroa.122.0174) ; 2 uses
  %i.dq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.0176, <2 x i64> %.sroa.100.0175) ; 2 uses
  %i.dr = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.0177, <2 x i64> %.sroa.82.0176)
  %i.ds = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.0178, <2 x i64> %.sroa.61.0177) ; 2 uses
  %i.dt = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.0179, <2 x i64> %.sroa.40.0178) ; 2 uses
  %i.du = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.0180, <2 x i64> %.sroa.19.0179) ; 2 uses
  %i.dv = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.0173, <2 x i64> %.sroa.0.0180)
  %i.dw = xor <2 x i64> %i.dv, %i.dh              ; 2 uses
  %i.dx = xor <2 x i64> %i.dr, %i.dj              ; 2 uses
  %i.dy = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dp, <2 x i64> %i.do) ; 2 uses
  %i.dz = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dq, <2 x i64> %i.dp) ; 2 uses
  %i.ea = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dx, <2 x i64> %i.dq) ; 2 uses
  %i.eb = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ds, <2 x i64> %i.dx)
  %i.ec = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dt, <2 x i64> %i.ds) ; 2 uses
  %i.ed = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.du, <2 x i64> %i.dt) ; 2 uses
  %i.ee = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.dw, <2 x i64> %i.du) ; 2 uses
  %i.ef = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.do, <2 x i64> %i.dw)
  %i.eg = xor <2 x i64> %i.ef, %i.dl              ; 2 uses
  %i.eh = xor <2 x i64> %i.eb, %i.dn              ; 2 uses
  %i.ei = add i64 %i.df, 64                       ; 2 uses
  %.not = icmp ugt i64 %i.ei, %6
  br i1 %.not, label %.preheader171, label %.lr.ph, !llvm.loop !16

.lr.ph200:                                        ; preds = %.preheader171, %.lr.ph200
  %i.ej = phi i64 [ %i.ew, %.lr.ph200 ], [ %i.de, %.preheader171 ] ; 3 uses
  %.1199 = phi i64 [ %i.ej, %.lr.ph200 ], [ %.052.lcssa, %.preheader171 ]
  %.sroa.0.1198 = phi <2 x i64> [ %i.eu, %.lr.ph200 ], [ %.sroa.0.0.lcssa, %.preheader171 ] ; 2 uses
  %.sroa.19.1197 = phi <2 x i64> [ %i.es, %.lr.ph200 ], [ %.sroa.19.0.lcssa, %.preheader171 ] ; 2 uses
  %.sroa.40.1196 = phi <2 x i64> [ %i.er, %.lr.ph200 ], [ %.sroa.40.0.lcssa, %.preheader171 ] ; 2 uses
  %.sroa.61.1195 = phi <2 x i64> [ %i.eq, %.lr.ph200 ], [ %.sroa.61.0.lcssa, %.preheader171 ] ; 2 uses
  %.sroa.82.1194 = phi <2 x i64> [ %i.ev, %.lr.ph200 ], [ %.sroa.82.0.lcssa, %.preheader171 ] ; 2 uses
  %.sroa.100.1193 = phi <2 x i64> [ %i.eo, %.lr.ph200 ], [ %.sroa.100.0.lcssa, %.preheader171 ] ; 2 uses
  %.sroa.122.1192 = phi <2 x i64> [ %i.en, %.lr.ph200 ], [ %.sroa.122.0.lcssa, %.preheader171 ] ; 2 uses
  %.sroa.144.1191 = phi <2 x i64> [ %i.em, %.lr.ph200 ], [ %.sroa.144.0.lcssa, %.preheader171 ] ; 2 uses
  %i.ek = getelementptr i8, ptr %5, i64 %.1199    ; 2 uses
  %.val75 = load <2 x i64>, ptr %i.ek, align 1
  %i.el = getelementptr i8, ptr %i.ek, i64 16
  %.val76 = load <2 x i64>, ptr %i.el, align 1
  %i.em = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.1192, <2 x i64> %.sroa.144.1191) ; 2 uses
  %i.en = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.1193, <2 x i64> %.sroa.122.1192) ; 2 uses
  %i.eo = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.1194, <2 x i64> %.sroa.100.1193) ; 2 uses
  %i.ep = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.1195, <2 x i64> %.sroa.82.1194)
  %i.eq = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.1196, <2 x i64> %.sroa.61.1195) ; 2 uses
  %i.er = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.1197, <2 x i64> %.sroa.40.1196) ; 2 uses
  %i.es = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.1198, <2 x i64> %.sroa.19.1197) ; 2 uses
  %i.et = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.1191, <2 x i64> %.sroa.0.1198)
  %i.eu = xor <2 x i64> %i.et, %.val75            ; 2 uses
  %i.ev = xor <2 x i64> %i.ep, %.val76            ; 2 uses
  %i.ew = add i64 %i.ej, 32                       ; 2 uses
  %.not65 = icmp ugt i64 %i.ew, %6
  br i1 %.not65, label %._crit_edge, label %.lr.ph200, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph200, %.preheader171
  %.sroa.144.1.lcssa = phi <2 x i64> [ %.sroa.144.0.lcssa, %.preheader171 ], [ %i.em, %.lr.ph200 ] ; 3 uses
  %.sroa.122.1.lcssa = phi <2 x i64> [ %.sroa.122.0.lcssa, %.preheader171 ], [ %i.en, %.lr.ph200 ] ; 3 uses
  %.sroa.100.1.lcssa = phi <2 x i64> [ %.sroa.100.0.lcssa, %.preheader171 ], [ %i.eo, %.lr.ph200 ] ; 3 uses
  %.sroa.82.1.lcssa = phi <2 x i64> [ %.sroa.82.0.lcssa, %.preheader171 ], [ %i.ev, %.lr.ph200 ] ; 3 uses
  %.sroa.61.1.lcssa = phi <2 x i64> [ %.sroa.61.0.lcssa, %.preheader171 ], [ %i.eq, %.lr.ph200 ] ; 3 uses
  %.sroa.40.1.lcssa = phi <2 x i64> [ %.sroa.40.0.lcssa, %.preheader171 ], [ %i.er, %.lr.ph200 ] ; 3 uses
  %.sroa.19.1.lcssa = phi <2 x i64> [ %.sroa.19.0.lcssa, %.preheader171 ], [ %i.es, %.lr.ph200 ] ; 3 uses
  %.sroa.0.1.lcssa = phi <2 x i64> [ %.sroa.0.0.lcssa, %.preheader171 ], [ %i.eu, %.lr.ph200 ] ; 3 uses
  %.1.lcssa = phi i64 [ %.052.lcssa, %.preheader171 ], [ %i.ej, %.lr.ph200 ]
  %i.ex = and i64 %6, 31                          ; 2 uses
  %.not66 = icmp eq i64 %i.ex, 0
  br i1 %.not66, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.c, i8 noundef 0, i64 noundef 32, i1 noundef false) #7
  %i.ey = getelementptr i8, ptr %5, i64 %.1.lcssa
  %i.ez = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ey, i64 noundef range(i64 1, 32) %i.ex, i64 noundef 32) #7, !alias.scope !32 ; 0 uses
  %.val73 = load <2 x i64>, ptr %i.c, align 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val74 = load <2 x i64>, ptr %i.fa, align 16
  %i.fb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.1.lcssa, <2 x i64> %.sroa.144.1.lcssa)
  %i.fc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.1.lcssa, <2 x i64> %.sroa.122.1.lcssa)
  %i.fd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.1.lcssa, <2 x i64> %.sroa.100.1.lcssa)
  %i.fe = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.1.lcssa, <2 x i64> %.sroa.82.1.lcssa)
  %i.ff = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.1.lcssa, <2 x i64> %.sroa.61.1.lcssa)
  %i.fg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.1.lcssa, <2 x i64> %.sroa.40.1.lcssa)
  %i.fh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.1.lcssa, <2 x i64> %.sroa.19.1.lcssa)
  %i.fi = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.1.lcssa, <2 x i64> %.sroa.0.1.lcssa)
  %i.fj = xor <2 x i64> %i.fi, %.val73
  %i.fk = xor <2 x i64> %i.fe, %.val74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.sroa.144.2 = phi <2 x i64> [ %.sroa.144.1.lcssa, %._crit_edge ], [ %i.fb, %bb.b ] ; 4 uses
  %.sroa.122.2 = phi <2 x i64> [ %.sroa.122.1.lcssa, %._crit_edge ], [ %i.fc, %bb.b ] ; 4 uses
  %.sroa.100.2 = phi <2 x i64> [ %.sroa.100.1.lcssa, %._crit_edge ], [ %i.fd, %bb.b ] ; 4 uses
  %.sroa.82.2 = phi <2 x i64> [ %.sroa.82.1.lcssa, %._crit_edge ], [ %i.fk, %bb.b ] ; 4 uses
  %.sroa.61.2 = phi <2 x i64> [ %.sroa.61.1.lcssa, %._crit_edge ], [ %i.ff, %bb.b ] ; 4 uses
  %.sroa.40.2 = phi <2 x i64> [ %.sroa.40.1.lcssa, %._crit_edge ], [ %i.fg, %bb.b ] ; 4 uses
  %.sroa.19.2 = phi <2 x i64> [ %.sroa.19.1.lcssa, %._crit_edge ], [ %i.fh, %bb.b ] ; 4 uses
  %.sroa.0.2 = phi <2 x i64> [ %.sroa.0.1.lcssa, %._crit_edge ], [ %i.fj, %bb.b ] ; 4 uses
  %.not67 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not67, label %.preheader, label %.preheader169

.preheader169:                                    ; preds = %bb.c
  %.not69210 = icmp ult i64 %2, 32
  br i1 %.not69210, label %.loopexit170, label %.lr.ph220

.preheader:                                       ; preds = %bb.c
  %.promoted = load <2 x i64>, ptr %i.d, align 32
  %.not68230 = icmp ult i64 %2, 32
  br i1 %.not68230, label %.loopexit170.thread, label %.lr.ph240

.lr.ph220:                                        ; preds = %.preheader169, %.lr.ph220
  %i.fl = phi i64 [ %i.gi, %.lr.ph220 ], [ 32, %.preheader169 ] ; 3 uses
  %.2219 = phi i64 [ %i.fl, %.lr.ph220 ], [ 0, %.preheader169 ] ; 2 uses
  %.sroa.0.3218 = phi <2 x i64> [ %i.gg, %.lr.ph220 ], [ %.sroa.0.2, %.preheader169 ] ; 2 uses
  %.sroa.19.3217 = phi <2 x i64> [ %i.ge, %.lr.ph220 ], [ %.sroa.19.2, %.preheader169 ] ; 3 uses
  %.sroa.40.3216 = phi <2 x i64> [ %i.gd, %.lr.ph220 ], [ %.sroa.40.2, %.preheader169 ] ; 4 uses
  %.sroa.61.3215 = phi <2 x i64> [ %i.gc, %.lr.ph220 ], [ %.sroa.61.2, %.preheader169 ] ; 3 uses
  %.sroa.82.3214 = phi <2 x i64> [ %i.gh, %.lr.ph220 ], [ %.sroa.82.2, %.preheader169 ] ; 2 uses
  %.sroa.100.3213 = phi <2 x i64> [ %i.ga, %.lr.ph220 ], [ %.sroa.100.2, %.preheader169 ] ; 3 uses
  %.sroa.122.3212 = phi <2 x i64> [ %i.fz, %.lr.ph220 ], [ %.sroa.122.2, %.preheader169 ] ; 4 uses
  %.sroa.144.3211 = phi <2 x i64> [ %i.fy, %.lr.ph220 ], [ %.sroa.144.2, %.preheader169 ] ; 3 uses
  %i.fm = getelementptr i8, ptr %0, i64 %.2219    ; 2 uses
  %i.fn = getelementptr i8, ptr %1, i64 %.2219    ; 2 uses
  %.val79 = load <2 x i64>, ptr %i.fn, align 1
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  %.val80 = load <2 x i64>, ptr %i.fo, align 1
  %i.fp = and <2 x i64> %.sroa.40.3216, %.sroa.61.3215
  %i.fq = xor <2 x i64> %i.fp, %.val79
  %i.fr = xor <2 x i64> %i.fq, %.sroa.122.3212
  %i.fs = xor <2 x i64> %i.fr, %.sroa.19.3217     ; 2 uses
  %i.ft = and <2 x i64> %.sroa.122.3212, %.sroa.144.3211
  %i.fu = xor <2 x i64> %i.ft, %.val80
  %i.fv = xor <2 x i64> %i.fu, %.sroa.100.3213
  %i.fw = xor <2 x i64> %i.fv, %.sroa.40.3216     ; 2 uses
  store <2 x i64> %i.fs, ptr %i.fm, align 1
  %i.fx = getelementptr i8, ptr %i.fm, i64 16
  store <2 x i64> %i.fw, ptr %i.fx, align 1
  %i.fy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.3212, <2 x i64> %.sroa.144.3211) ; 2 uses
  %i.fz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.3213, <2 x i64> %.sroa.122.3212) ; 2 uses
  %i.ga = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.3214, <2 x i64> %.sroa.100.3213) ; 2 uses
  %i.gb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.3215, <2 x i64> %.sroa.82.3214)
  %i.gc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.3216, <2 x i64> %.sroa.61.3215) ; 2 uses
  %i.gd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.3217, <2 x i64> %.sroa.40.3216) ; 2 uses
  %i.ge = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.3218, <2 x i64> %.sroa.19.3217) ; 2 uses
  %i.gf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.3211, <2 x i64> %.sroa.0.3218)
  %i.gg = xor <2 x i64> %i.gf, %i.fs              ; 2 uses
  %i.gh = xor <2 x i64> %i.gb, %i.fw              ; 2 uses
  %i.gi = add i64 %i.fl, 32                       ; 2 uses
  %.not69 = icmp ugt i64 %i.gi, %2
  br i1 %.not69, label %.loopexit170, label %.lr.ph220, !llvm.loop !21

.lr.ph240:                                        ; preds = %.preheader, %.lr.ph240
  %i.gj = phi i64 [ %i.he, %.lr.ph240 ], [ 32, %.preheader ] ; 3 uses
  %.3239 = phi i64 [ %i.gj, %.lr.ph240 ], [ 0, %.preheader ]
  %.sroa.0.4238 = phi <2 x i64> [ %i.hc, %.lr.ph240 ], [ %.sroa.0.2, %.preheader ] ; 2 uses
  %.sroa.19.4237 = phi <2 x i64> [ %i.ha, %.lr.ph240 ], [ %.sroa.19.2, %.preheader ] ; 3 uses
  %.sroa.40.4236 = phi <2 x i64> [ %i.gz, %.lr.ph240 ], [ %.sroa.40.2, %.preheader ] ; 4 uses
  %.sroa.61.4235 = phi <2 x i64> [ %i.gy, %.lr.ph240 ], [ %.sroa.61.2, %.preheader ] ; 3 uses
  %.sroa.82.4234 = phi <2 x i64> [ %i.hd, %.lr.ph240 ], [ %.sroa.82.2, %.preheader ] ; 2 uses
  %.sroa.100.4233 = phi <2 x i64> [ %i.gw, %.lr.ph240 ], [ %.sroa.100.2, %.preheader ] ; 3 uses
  %.sroa.122.4232 = phi <2 x i64> [ %i.gv, %.lr.ph240 ], [ %.sroa.122.2, %.preheader ] ; 4 uses
  %.sroa.144.4231 = phi <2 x i64> [ %i.gu, %.lr.ph240 ], [ %.sroa.144.2, %.preheader ] ; 3 uses
  %i.gk = getelementptr i8, ptr %1, i64 %.3239    ; 2 uses
  %.val77 = load <2 x i64>, ptr %i.gk, align 1
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  %.val78 = load <2 x i64>, ptr %i.gl, align 1
  %i.gm = and <2 x i64> %.sroa.40.4236, %.sroa.61.4235
  %i.gn = xor <2 x i64> %i.gm, %.val77
  %i.go = xor <2 x i64> %i.gn, %.sroa.122.4232
  %i.gp = xor <2 x i64> %i.go, %.sroa.19.4237     ; 2 uses
  %i.gq = and <2 x i64> %.sroa.122.4232, %.sroa.144.4231
  %i.gr = xor <2 x i64> %i.gq, %.val78
  %i.gs = xor <2 x i64> %i.gr, %.sroa.100.4233
  %i.gt = xor <2 x i64> %i.gs, %.sroa.40.4236     ; 2 uses
  %i.gu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.4232, <2 x i64> %.sroa.144.4231) ; 2 uses
  %i.gv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.4233, <2 x i64> %.sroa.122.4232) ; 2 uses
  %i.gw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.4234, <2 x i64> %.sroa.100.4233) ; 2 uses
  %i.gx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.4235, <2 x i64> %.sroa.82.4234)
  %i.gy = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.4236, <2 x i64> %.sroa.61.4235) ; 2 uses
  %i.gz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.4237, <2 x i64> %.sroa.40.4236) ; 2 uses
  %i.ha = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.4238, <2 x i64> %.sroa.19.4237) ; 2 uses
  %i.hb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.4231, <2 x i64> %.sroa.0.4238)
  %i.hc = xor <2 x i64> %i.hb, %i.gp              ; 2 uses
  %i.hd = xor <2 x i64> %i.gx, %i.gt              ; 2 uses
  %i.he = add i64 %i.gj, 32                       ; 2 uses
  %.not68 = icmp ugt i64 %i.he, %2
  br i1 %.not68, label %..loopexit_crit_edge, label %.lr.ph240, !llvm.loop !22

..loopexit_crit_edge:                             ; preds = %.lr.ph240
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x i64> %i.gt, ptr %i.hf, align 16
  br label %.loopexit170.thread

.loopexit170:                                     ; preds = %.lr.ph220, %.preheader169
  %.sroa.144.5 = phi <2 x i64> [ %.sroa.144.2, %.preheader169 ], [ %i.fy, %.lr.ph220 ] ; 4 uses
  %.sroa.122.5 = phi <2 x i64> [ %.sroa.122.2, %.preheader169 ], [ %i.fz, %.lr.ph220 ] ; 5 uses
  %.sroa.100.5 = phi <2 x i64> [ %.sroa.100.2, %.preheader169 ], [ %i.ga, %.lr.ph220 ] ; 4 uses
  %.sroa.82.5 = phi <2 x i64> [ %.sroa.82.2, %.preheader169 ], [ %i.gh, %.lr.ph220 ] ; 3 uses
  %.sroa.61.5 = phi <2 x i64> [ %.sroa.61.2, %.preheader169 ], [ %i.gc, %.lr.ph220 ] ; 4 uses
  %.sroa.40.5 = phi <2 x i64> [ %.sroa.40.2, %.preheader169 ], [ %i.gd, %.lr.ph220 ] ; 5 uses
  %.sroa.19.5 = phi <2 x i64> [ %.sroa.19.2, %.preheader169 ], [ %i.ge, %.lr.ph220 ] ; 4 uses
  %.sroa.0.5 = phi <2 x i64> [ %.sroa.0.2, %.preheader169 ], [ %i.gg, %.lr.ph220 ] ; 3 uses
  %.4 = phi i64 [ 0, %.preheader169 ], [ %i.fl, %.lr.ph220 ] ; 2 uses
  %i.hg = and i64 %2, 31                          ; 5 uses
  %.not70 = icmp eq i64 %i.hg, 0
  br i1 %.not70, label %bb.e, label %bb.d

.loopexit170.thread:                              ; preds = %.preheader, %..loopexit_crit_edge
  %.lcssa = phi <2 x i64> [ %i.gp, %..loopexit_crit_edge ], [ %.promoted, %.preheader ]
  %.sroa.144.4.lcssa = phi <2 x i64> [ %i.gu, %..loopexit_crit_edge ], [ %.sroa.144.2, %.preheader ] ; 4 uses
  %.sroa.122.4.lcssa = phi <2 x i64> [ %i.gv, %..loopexit_crit_edge ], [ %.sroa.122.2, %.preheader ] ; 5 uses
  %.sroa.100.4.lcssa = phi <2 x i64> [ %i.gw, %..loopexit_crit_edge ], [ %.sroa.100.2, %.preheader ] ; 4 uses
  %.sroa.82.4.lcssa = phi <2 x i64> [ %i.hd, %..loopexit_crit_edge ], [ %.sroa.82.2, %.preheader ] ; 3 uses
  %.sroa.61.4.lcssa = phi <2 x i64> [ %i.gy, %..loopexit_crit_edge ], [ %.sroa.61.2, %.preheader ] ; 4 uses
  %.sroa.40.4.lcssa = phi <2 x i64> [ %i.gz, %..loopexit_crit_edge ], [ %.sroa.40.2, %.preheader ] ; 5 uses
  %.sroa.19.4.lcssa = phi <2 x i64> [ %i.ha, %..loopexit_crit_edge ], [ %.sroa.19.2, %.preheader ] ; 4 uses
  %.sroa.0.4.lcssa = phi <2 x i64> [ %i.hc, %..loopexit_crit_edge ], [ %.sroa.0.2, %.preheader ] ; 3 uses
  %.3.lcssa = phi i64 [ %i.gj, %..loopexit_crit_edge ], [ 0, %.preheader ]
  store <2 x i64> %.lcssa, ptr %i.d, align 32
  %i.hh = and i64 %2, 31                          ; 5 uses
  %.not70307 = icmp eq i64 %i.hh, 0
  br i1 %.not70307, label %bb.e, label %.thread317

bb.d:                                             ; preds = %.loopexit170
  %i.hi = getelementptr i8, ptr %0, i64 %.4
  %i.hj = getelementptr i8, ptr %1, i64 %.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 noundef 0, i64 noundef 32, i1 noundef false) #7
  %i.hk = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.hj, i64 noundef range(i64 1, 32) %i.hg, i64 noundef 32) #7, !alias.scope !33 ; 0 uses
  %i.hl = load <2 x i64>, ptr %i.b, align 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hm, align 16
  %i.ho = and <2 x i64> %.sroa.40.5, %.sroa.61.5
  %i.hp = xor <2 x i64> %i.ho, %i.hl
  %i.hq = xor <2 x i64> %i.hp, %.sroa.122.5
  %i.hr = xor <2 x i64> %i.hq, %.sroa.19.5
  %i.hs = and <2 x i64> %.sroa.122.5, %.sroa.144.5
  %i.ht = xor <2 x i64> %i.hs, %i.hn
  %i.hu = xor <2 x i64> %i.ht, %.sroa.100.5
  %i.hv = xor <2 x i64> %i.hu, %.sroa.40.5
  %9 = shufflevector <2 x i64> %i.hr, <2 x i64> %i.hv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %9, ptr %i.b, align 16
  %i.hw = getelementptr i8, ptr %i.b, i64 %i.hg
  %i.hx = sub nuw nsw i64 32, %i.hg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hw, i8 noundef 0, i64 noundef %i.hx, i1 noundef false) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.hi, ptr noundef nonnull align 16 %i.b, i64 noundef range(i64 1, 32) %i.hg, i1 noundef false) #7
  %i.hy = load <2 x i64>, ptr %i.b, align 16
  %i.hz = load <2 x i64>, ptr %i.hm, align 16
  %i.ia = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.5, <2 x i64> %.sroa.144.5)
  %i.ib = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.5, <2 x i64> %.sroa.122.5)
  %i.ic = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.5, <2 x i64> %.sroa.100.5)
  %i.id = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.5, <2 x i64> %.sroa.82.5)
  %i.ie = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.5, <2 x i64> %.sroa.61.5)
  %i.if = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.5, <2 x i64> %.sroa.40.5)
  %i.ig = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.5, <2 x i64> %.sroa.19.5)
  %i.ih = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.5, <2 x i64> %.sroa.0.5)
  %i.ii = xor <2 x i64> %i.ih, %i.hy
  %i.ij = xor <2 x i64> %i.id, %i.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.e

.thread317:                                       ; preds = %.loopexit170.thread
  %i.ik = getelementptr i8, ptr %1, i64 %.3.lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 noundef 0, i64 noundef 32, i1 noundef false) #7
  %i.il = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.ik, i64 noundef range(i64 1, 32) %i.hh, i64 noundef 32) #7, !alias.scope !34 ; 0 uses
  %i.im = load <2 x i64>, ptr %i.a, align 16
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.io = load <2 x i64>, ptr %i.in, align 16
  %i.ip = and <2 x i64> %.sroa.40.4.lcssa, %.sroa.61.4.lcssa
  %i.iq = xor <2 x i64> %i.ip, %i.im
  %i.ir = xor <2 x i64> %i.iq, %.sroa.122.4.lcssa
  %i.is = xor <2 x i64> %i.ir, %.sroa.19.4.lcssa
  %i.it = and <2 x i64> %.sroa.122.4.lcssa, %.sroa.144.4.lcssa
  %i.iu = xor <2 x i64> %i.it, %i.io
  %i.iv = xor <2 x i64> %i.iu, %.sroa.100.4.lcssa
  %i.iw = xor <2 x i64> %i.iv, %.sroa.40.4.lcssa
  %10 = shufflevector <2 x i64> %i.is, <2 x i64> %i.iw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %10, ptr %i.a, align 16
  %i.ix = getelementptr i8, ptr %i.a, i64 %i.hh
  %i.iy = sub nuw nsw i64 32, %i.hh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ix, i8 noundef 0, i64 noundef %i.iy, i1 noundef false) #7
  %i.iz = call ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i64 noundef range(i64 1, 32) %i.hh, i64 noundef 32) #7, !alias.scope !35 ; 0 uses
  %i.ja = load <2 x i64>, ptr %i.a, align 16
  %i.jb = load <2 x i64>, ptr %i.in, align 16
  %i.jc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.4.lcssa, <2 x i64> %.sroa.144.4.lcssa)
  %i.jd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.4.lcssa, <2 x i64> %.sroa.122.4.lcssa)
  %i.je = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.4.lcssa, <2 x i64> %.sroa.100.4.lcssa)
  %i.jf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.4.lcssa, <2 x i64> %.sroa.82.4.lcssa)
  %i.jg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.4.lcssa, <2 x i64> %.sroa.61.4.lcssa)
  %i.jh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.4.lcssa, <2 x i64> %.sroa.40.4.lcssa)
  %i.ji = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.4.lcssa, <2 x i64> %.sroa.19.4.lcssa)
  %i.jj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.4.lcssa, <2 x i64> %.sroa.0.4.lcssa)
  %i.jk = xor <2 x i64> %i.jj, %i.ja
  %i.jl = xor <2 x i64> %i.jf, %i.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %.loopexit170.thread, %bb.d, %.thread317, %.loopexit170
  %.sroa.144.6 = phi <2 x i64> [ %.sroa.144.5, %.loopexit170 ], [ %i.jc, %.thread317 ], [ %i.ia, %bb.d ], [ %.sroa.144.4.lcssa, %.loopexit170.thread ] ; 2 uses
  %.sroa.122.6 = phi <2 x i64> [ %.sroa.122.5, %.loopexit170 ], [ %i.jd, %.thread317 ], [ %i.ib, %bb.d ], [ %.sroa.122.4.lcssa, %.loopexit170.thread ] ; 2 uses
  %.sroa.100.6 = phi <2 x i64> [ %.sroa.100.5, %.loopexit170 ], [ %i.je, %.thread317 ], [ %i.ic, %bb.d ], [ %.sroa.100.4.lcssa, %.loopexit170.thread ] ; 2 uses
  %.sroa.82.6 = phi <2 x i64> [ %.sroa.82.5, %.loopexit170 ], [ %i.jl, %.thread317 ], [ %i.ij, %bb.d ], [ %.sroa.82.4.lcssa, %.loopexit170.thread ] ; 2 uses
  %.sroa.61.6 = phi <2 x i64> [ %.sroa.61.5, %.loopexit170 ], [ %i.jg, %.thread317 ], [ %i.ie, %bb.d ], [ %.sroa.61.4.lcssa, %.loopexit170.thread ] ; 2 uses
  %.sroa.40.6 = phi <2 x i64> [ %.sroa.40.5, %.loopexit170 ], [ %i.jh, %.thread317 ], [ %i.if, %bb.d ], [ %.sroa.40.4.lcssa, %.loopexit170.thread ] ; 3 uses
  %.sroa.19.6 = phi <2 x i64> [ %.sroa.19.5, %.loopexit170 ], [ %i.ji, %.thread317 ], [ %i.ig, %bb.d ], [ %.sroa.19.4.lcssa, %.loopexit170.thread ] ; 2 uses
  %.sroa.0.6 = phi <2 x i64> [ %.sroa.0.5, %.loopexit170 ], [ %i.jk, %.thread317 ], [ %i.ii, %bb.d ], [ %.sroa.0.4.lcssa, %.loopexit170.thread ] ; 2 uses
  %i.jm = insertelement <2 x i64> poison, i64 %6, i64 0
  %i.jn = insertelement <2 x i64> %i.jm, i64 %2, i64 1
  %i.jo = shl <2 x i64> %i.jn, splat (i64 3)
  %i.jp = xor <2 x i64> %.sroa.40.6, %i.jo        ; 14 uses
  %i.jq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.122.6, <2 x i64> %.sroa.144.6) ; 2 uses
  %i.jr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.100.6, <2 x i64> %.sroa.122.6) ; 2 uses
  %i.js = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.82.6, <2 x i64> %.sroa.100.6) ; 2 uses
  %i.jt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.61.6, <2 x i64> %.sroa.82.6)
  %i.ju = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.40.6, <2 x i64> %.sroa.61.6) ; 2 uses
  %i.jv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.19.6, <2 x i64> %.sroa.40.6) ; 2 uses
  %i.jw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.0.6, <2 x i64> %.sroa.19.6) ; 2 uses
  %i.jx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.sroa.144.6, <2 x i64> %.sroa.0.6)
  %i.jy = xor <2 x i64> %i.jx, %i.jp              ; 2 uses
  %i.jz = xor <2 x i64> %i.jt, %i.jp              ; 2 uses
  %i.ka = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jr, <2 x i64> %i.jq) ; 2 uses
  %i.kb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.js, <2 x i64> %i.jr) ; 2 uses
  %i.kc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jz, <2 x i64> %i.js) ; 2 uses
  %i.kd = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ju, <2 x i64> %i.jz)
  %i.ke = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jv, <2 x i64> %i.ju) ; 2 uses
  %i.kf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jw, <2 x i64> %i.jv) ; 2 uses
  %i.kg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jy, <2 x i64> %i.jw) ; 2 uses
  %i.kh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.jq, <2 x i64> %i.jy)
  %i.ki = xor <2 x i64> %i.kh, %i.jp              ; 2 uses
  %i.kj = xor <2 x i64> %i.kd, %i.jp              ; 2 uses
  %i.kk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kb, <2 x i64> %i.ka) ; 2 uses
  %i.kl = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kc, <2 x i64> %i.kb) ; 2 uses
  %i.km = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kj, <2 x i64> %i.kc) ; 2 uses
  %i.kn = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ke, <2 x i64> %i.kj)
  %i.ko = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kf, <2 x i64> %i.ke) ; 2 uses
  %i.kp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kg, <2 x i64> %i.kf) ; 2 uses
  %i.kq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ki, <2 x i64> %i.kg) ; 2 uses
  %i.kr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ka, <2 x i64> %i.ki)
  %i.ks = xor <2 x i64> %i.kr, %i.jp              ; 2 uses
  %i.kt = xor <2 x i64> %i.kn, %i.jp              ; 2 uses
  %i.ku = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kl, <2 x i64> %i.kk) ; 2 uses
  %i.kv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.km, <2 x i64> %i.kl) ; 2 uses
  %i.kw = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kt, <2 x i64> %i.km) ; 2 uses
  %i.kx = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ko, <2 x i64> %i.kt)
  %i.ky = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kp, <2 x i64> %i.ko) ; 2 uses
  %i.kz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kq, <2 x i64> %i.kp) ; 2 uses
  %i.la = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ks, <2 x i64> %i.kq) ; 2 uses
  %i.lb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kk, <2 x i64> %i.ks)
  %i.lc = xor <2 x i64> %i.lb, %i.jp              ; 2 uses
  %i.ld = xor <2 x i64> %i.kx, %i.jp              ; 2 uses
  %i.le = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kv, <2 x i64> %i.ku) ; 2 uses
  %i.lf = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kw, <2 x i64> %i.kv) ; 2 uses
  %i.lg = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ld, <2 x i64> %i.kw) ; 2 uses
  %i.lh = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ky, <2 x i64> %i.ld)
  %i.li = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.kz, <2 x i64> %i.ky) ; 2 uses
  %i.lj = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.la, <2 x i64> %i.kz) ; 2 uses
  %i.lk = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lc, <2 x i64> %i.la) ; 2 uses
  %i.ll = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ku, <2 x i64> %i.lc)
  %i.lm = xor <2 x i64> %i.ll, %i.jp              ; 2 uses
  %i.ln = xor <2 x i64> %i.lh, %i.jp              ; 2 uses
  %i.lo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lf, <2 x i64> %i.le) ; 2 uses
  %i.lp = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lg, <2 x i64> %i.lf) ; 2 uses
  %i.lq = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ln, <2 x i64> %i.lg) ; 2 uses
  %i.lr = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.li, <2 x i64> %i.ln)
  %i.ls = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lj, <2 x i64> %i.li) ; 2 uses
  %i.lt = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lk, <2 x i64> %i.lj) ; 2 uses
  %i.lu = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lm, <2 x i64> %i.lk) ; 2 uses
  %i.lv = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.le, <2 x i64> %i.lm)
  %i.lw = xor <2 x i64> %i.lv, %i.jp              ; 2 uses
  %i.lx = xor <2 x i64> %i.lr, %i.jp              ; 2 uses
  %i.ly = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lq, <2 x i64> %i.lp) ; 2 uses
  %i.lz = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lx, <2 x i64> %i.lq) ; 2 uses
  %i.ma = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.ls, <2 x i64> %i.lx)
  %i.mb = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lt, <2 x i64> %i.ls) ; 2 uses
  %i.mc = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lu, <2 x i64> %i.lt) ; 2 uses
  %i.md = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lw, <2 x i64> %i.lu) ; 2 uses
  %i.me = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lo, <2 x i64> %i.lw)
  %i.mf = xor <2 x i64> %i.me, %i.jp              ; 2 uses
  %i.mg = xor <2 x i64> %i.ma, %i.jp              ; 2 uses
  switch i64 %4, label %aegis128l_mac.exit [
    i64 16, label %aegis128l_mac.exit.thread
    i64 32, label %aegis128l_mac.exit.thread165
  ]

aegis128l_mac.exit.thread:                        ; preds = %bb.e
  %i.mh = xor <2 x i64> %i.lz, %i.ly
  %i.mi = xor <2 x i64> %i.mh, %i.mg
  %i.mj = xor <2 x i64> %i.mi, %i.mb
  %i.mk = xor <2 x i64> %i.mj, %i.mc
  %i.ml = xor <2 x i64> %i.mk, %i.md
  %i.mm = xor <2 x i64> %i.ml, %i.mf
  store <2 x i64> %i.mm, ptr %i.e, align 16
  %i.mn = call i32 @crypto_verify_16(ptr noundef nonnull %i.e, ptr noundef %3) #7
  br label %bb.f

aegis128l_mac.exit.thread165:                     ; preds = %bb.e
  %i.mo = call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %i.lp, <2 x i64> %i.lo)
  %i.mp = xor <2 x i64> %i.mc, %i.mb
  %i.mq = xor <2 x i64> %i.mp, %i.md
  %i.mr = xor <2 x i64> %i.mq, %i.mf
  %i.ms = xor <2 x i64> %i.ly, %i.mo
  %i.mt = xor <2 x i64> %i.ms, %i.lz
  %i.mu = xor <2 x i64> %i.mt, %i.mg
  %11 = shufflevector <2 x i64> %i.mr, <2 x i64> %i.mu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %11, ptr %i.e, align 16
  %i.mv = call i32 @crypto_verify_32(ptr noundef nonnull %i.e, ptr noundef %3) #7
  br label %bb.f

aegis128l_mac.exit:                               ; preds = %bb.e
  %i.mw = call ptr @__memset_chk(ptr noundef nonnull %i.e, i32 noundef 0, i64 noundef %4, i64 noundef 32) #7 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %aegis128l_mac.exit.thread165, %aegis128l_mac.exit.thread
  %.0 = phi i32 [ %i.mn, %aegis128l_mac.exit.thread ], [ %i.mv, %aegis128l_mac.exit.thread165 ] ; 2 uses
  %.not71 = icmp eq i32 %.0, 0
  br i1 %.not71, label %bb.h, label %.thread

.thread:                                          ; preds = %aegis128l_mac.exit, %bb.f
  %.0168 = phi i32 [ %.0, %bb.f ], [ -1, %aegis128l_mac.exit ] ; 2 uses
  br i1 %.not67, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef %2, i1 noundef false) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  fence acquire
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h
  %.053 = phi i32 [ 0, %bb.h ], [ %.0168, %bb.g ], [ %.0168, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %.053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @crypto_verify_16(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @crypto_verify_32(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind ssp uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, i1 true, !"memcpy.inline"}
!8 = distinct !{!8, !7, !"memcpy.inline: argument 1"}
!9 = distinct !{!9, !7, !"memcpy.inline: argument 0"}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, i1 true, !"memcpy.inline"}
!12 = distinct !{!12, !11, !"memcpy.inline: argument 1"}
!13 = distinct !{!13, !11, !"memcpy.inline: argument 0"}
!14 = !{!9, !8}
!15 = !{!13, !12}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, i1 true, !"memcpy.inline"}
!19 = distinct !{!19, !18, !"memcpy.inline: argument 1"}
!20 = distinct !{!20, !18, !"memcpy.inline: argument 0"}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, i1 true, !"memcpy.inline"}
!24 = distinct !{!24, !23, !"memcpy.inline: argument 1"}
!25 = distinct !{!25, !23, !"memcpy.inline: argument 0"}
!26 = distinct !{!26, i1 true, !"memcpy.inline"}
!27 = distinct !{!27, !26, !"memcpy.inline: argument 1"}
!28 = distinct !{!28, !26, !"memcpy.inline: argument 0"}
!29 = distinct !{!29, i1 true, !"memcpy.inline"}
!30 = distinct !{!30, !29, !"memcpy.inline: argument 1"}
!31 = distinct !{!31, !29, !"memcpy.inline: argument 0"}
!32 = !{!20, !19}
!33 = !{!25, !24}
!34 = !{!28, !27}
!35 = !{!31, !30}
end_hunk_0
