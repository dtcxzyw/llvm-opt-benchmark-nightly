Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/incircle?download=true
inline.NumInlined: 888
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4CGAL25side_of_oriented_circleC2INS_11Interval_ntILb0EEEEENS_19Same_uncertainty_ntINS_4SignET_E4typeERKS5_S9_S9_S9_S9_S9_S9_S9_:bb.a
  %i.bo = xor <2 x i64> %i.al, <i64 -9223372036854775808, i64 0>
  %i.bp = bitcast <2 x i64> %i.bo to <2 x double>
  %i.bq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bp) #26, !srcloc !46 ; 3 uses
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bs = fmul <2 x double> %i.bl, %i.bq
  %i.bt = fmul <2 x double> %i.bl, %i.br
  %i.bu = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bt, <2 x double> splat (double +inf))
  %i.bv = fmul <2 x double> %i.bn, %i.bq
  %i.bw = fmul <2 x double> %i.bn, %i.br
  %i.bx = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.bw, <2 x double> splat (double +inf))
  %i.by = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bs, <2 x double> %i.bu)
  %i.bz = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.bv, <2 x double> %i.bx)
  %i.ca = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.by, <2 x double> %i.bz)
  %i.cb = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ca) #26, !srcloc !46
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bk) #26, !srcloc !46
  %i.ce = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cc) #25, !srcloc !47
  %i.cf = fadd <2 x double> %i.cd, %i.ce
  %i.cg = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cf) #26, !srcloc !46
  %i.ch = load <2 x double>, ptr %2, align 16, !tbaa !45
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = load <2 x double>, ptr %6, align 16, !tbaa !45
  %i.ck = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cj) #26, !srcloc !46
  %i.cl = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ci) #25, !srcloc !47
  %i.cm = fadd <2 x double> %i.ck, %i.cl
  %i.cn = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cm) #26, !srcloc !46
  %i.co = bitcast <2 x double> %i.cn to <2 x i64>
  %i.cp = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ak) #25, !srcloc !47 ; 3 uses
  %i.cq = fneg <2 x double> %i.cp
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cs = xor <2 x i64> %i.co, <i64 -9223372036854775808, i64 0>
  %i.ct = bitcast <2 x i64> %i.cs to <2 x double>
  %i.cu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ct) #26, !srcloc !46 ; 3 uses
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cw = fmul <2 x double> %i.cp, %i.cu
  %i.cx = fmul <2 x double> %i.cp, %i.cv
  %i.cy = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.cx, <2 x double> splat (double +inf))
  %i.cz = fmul <2 x double> %i.cr, %i.cu
  %i.da = fmul <2 x double> %i.cr, %i.cv
  %i.db = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.da, <2 x double> splat (double +inf))
  %i.dc = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cw, <2 x double> %i.cy)
  %i.dd = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.cz, <2 x double> %i.db)
  %i.de = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dc, <2 x double> %i.dd)
  %i.df = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.de) #26, !srcloc !46
  %i.dg = load <2 x double>, ptr %3, align 16, !tbaa !45
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.di = load <2 x double>, ptr %7, align 16, !tbaa !45
  %i.dj = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.di) #26, !srcloc !46
  %i.dk = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dh) #25, !srcloc !47
  %i.dl = fadd <2 x double> %i.dj, %i.dk
  %i.dm = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.dl) #26, !srcloc !46
  %i.dn = bitcast <2 x double> %i.dm to <2 x i64>
  %i.do = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.as) #25, !srcloc !47 ; 3 uses
  %i.dp = fneg <2 x double> %i.do
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dr = xor <2 x i64> %i.dn, <i64 -9223372036854775808, i64 0>
  %i.ds = bitcast <2 x i64> %i.dr to <2 x double>
  %i.dt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ds) #26, !srcloc !46 ; 3 uses
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dv = fmul <2 x double> %i.do, %i.dt
  %i.dw = fmul <2 x double> %i.do, %i.du
  %i.dx = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dw, <2 x double> splat (double +inf))
  %i.dy = fmul <2 x double> %i.dq, %i.dt
  %i.dz = fmul <2 x double> %i.dq, %i.du
  %i.ea = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.dz, <2 x double> splat (double +inf))
  %i.eb = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dv, <2 x double> %i.dx)
  %i.ec = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.dy, <2 x double> %i.ea)
  %i.ed = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eb, <2 x double> %i.ec)
  %i.ee = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ed) #26, !srcloc !46
  %i.ef = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.df) #26, !srcloc !46
  %i.eg = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ee) #25, !srcloc !47
  %i.eh = fadd <2 x double> %i.ef, %i.eg
  %i.ei = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.eh) #26, !srcloc !46
  %i.ej = bitcast <2 x double> %i.ei to <2 x i64>
  %i.ek = xor <2 x i64> %i.ad, <i64 -9223372036854775808, i64 0>
  %i.el = bitcast <2 x i64> %i.ek to <2 x double>
  %i.em = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.el) #26, !srcloc !46 ; 3 uses
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eo = fmul <2 x double> %i.au, %i.em
  %i.ep = fmul <2 x double> %i.au, %i.en
  %i.eq = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ep, <2 x double> splat (double +inf))
  %i.er = fmul <2 x double> %i.aw, %i.em
  %i.es = fmul <2 x double> %i.aw, %i.en
  %i.et = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.es, <2 x double> splat (double +inf))
  %i.eu = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eo, <2 x double> %i.eq)
  %i.ev = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.er, <2 x double> %i.et)
  %i.ew = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.eu, <2 x double> %i.ev)
  %i.ex = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ew) #26, !srcloc !46
  %i.ey = xor <2 x i64> %i.v, <i64 -9223372036854775808, i64 0>
  %i.ez = bitcast <2 x i64> %i.ey to <2 x double>
  %i.fa = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ez) #26, !srcloc !46 ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fc = fmul <2 x double> %i.bl, %i.fa
  %i.fd = fmul <2 x double> %i.bl, %i.fb
  %i.fe = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fd, <2 x double> splat (double +inf))
  %i.ff = fmul <2 x double> %i.bn, %i.fa
  %i.fg = fmul <2 x double> %i.bn, %i.fb
  %i.fh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.fg, <2 x double> splat (double +inf))
  %i.fi = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fc, <2 x double> %i.fe)
  %i.fj = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ff, <2 x double> %i.fh)
  %i.fk = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.fi, <2 x double> %i.fj)
  %i.fl = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fk) #26, !srcloc !46
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ex) #26, !srcloc !46
  %i.fo = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fm) #25, !srcloc !47
  %i.fp = fadd <2 x double> %i.fn, %i.fo
  %i.fq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fp) #26, !srcloc !46
  %i.fr = load <2 x double>, ptr %2, align 16, !tbaa !45
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ft = load <2 x double>, ptr %4, align 16, !tbaa !45
  %i.fu = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ft) #26, !srcloc !46
  %i.fv = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fs) #25, !srcloc !47
  %i.fw = fadd <2 x double> %i.fu, %i.fv
  %i.fx = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fw) #26, !srcloc !46
  %i.fy = bitcast <2 x double> %i.fx to <2 x i64>
  %i.fz = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.u) #25, !srcloc !47 ; 3 uses
  %i.ga = fneg <2 x double> %i.fz
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gc = xor <2 x i64> %i.fy, <i64 -9223372036854775808, i64 0>
  %i.gd = bitcast <2 x i64> %i.gc to <2 x double>
  %i.ge = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gd) #26, !srcloc !46 ; 3 uses
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gg = fmul <2 x double> %i.fz, %i.ge
  %i.gh = fmul <2 x double> %i.fz, %i.gf
  %i.gi = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gh, <2 x double> splat (double +inf))
  %i.gj = fmul <2 x double> %i.gb, %i.ge
  %i.gk = fmul <2 x double> %i.gb, %i.gf
  %i.gl = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.gk, <2 x double> splat (double +inf))
  %i.gm = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gg, <2 x double> %i.gi)
  %i.gn = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gj, <2 x double> %i.gl)
  %i.go = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.gm, <2 x double> %i.gn)
  %i.gp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.go) #26, !srcloc !46
  %i.gq = load <2 x double>, ptr %3, align 16, !tbaa !45
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gs = load <2 x double>, ptr %5, align 16, !tbaa !45
  %i.gt = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gs) #26, !srcloc !46
  %i.gu = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gr) #25, !srcloc !47
  %i.gv = fadd <2 x double> %i.gt, %i.gu
  %i.gw = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gv) #26, !srcloc !46
  %i.gx = bitcast <2 x double> %i.gw to <2 x i64>
  %i.gy = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ac) #25, !srcloc !47 ; 3 uses
  %i.gz = fneg <2 x double> %i.gy
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hb = xor <2 x i64> %i.gx, <i64 -9223372036854775808, i64 0>
  %i.hc = bitcast <2 x i64> %i.hb to <2 x double>
  %i.hd = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hc) #26, !srcloc !46 ; 3 uses
  %i.he = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hf = fmul <2 x double> %i.gy, %i.hd
  %i.hg = fmul <2 x double> %i.gy, %i.he
  %i.hh = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hg, <2 x double> splat (double +inf))
  %i.hi = fmul <2 x double> %i.ha, %i.hd
  %i.hj = fmul <2 x double> %i.ha, %i.he
  %i.hk = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.hj, <2 x double> splat (double +inf))
  %i.hl = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hf, <2 x double> %i.hh)
  %i.hm = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hi, <2 x double> %i.hk)
  %i.hn = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.hl, <2 x double> %i.hm)
  %i.ho = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hn) #26, !srcloc !46
  %i.hp = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.gp) #26, !srcloc !46
  %i.hq = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ho) #25, !srcloc !47
  %i.hr = fadd <2 x double> %i.hp, %i.hq
  %i.hs = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hr) #26, !srcloc !46
  %i.ht = bitcast <2 x double> %i.hs to <2 x i64>
  %i.hu = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.cg) #25, !srcloc !47 ; 3 uses
  %i.hv = fneg <2 x double> %i.hu
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hx = xor <2 x i64> %i.ht, <i64 -9223372036854775808, i64 0>
  %i.hy = bitcast <2 x i64> %i.hx to <2 x double>
  %i.hz = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.hy) #26, !srcloc !46 ; 3 uses
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ib = fmul <2 x double> %i.hu, %i.hz
  %i.ic = fmul <2 x double> %i.hu, %i.ia
  %i.id = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ic, <2 x double> splat (double +inf))
  %i.ie = fmul <2 x double> %i.hw, %i.hz
  %i.if = fmul <2 x double> %i.hw, %i.ia
  %i.ig = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.if, <2 x double> splat (double +inf))
  %i.ih = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ib, <2 x double> %i.id)
  %i.ii = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ie, <2 x double> %i.ig)
  %i.ij = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ih, <2 x double> %i.ii)
  %i.ik = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ij) #26, !srcloc !46 ; 2 uses
  %i.il = tail call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.fq) #25, !srcloc !47 ; 3 uses
  %i.im = fneg <2 x double> %i.il
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.io = xor <2 x i64> %i.ej, <i64 -9223372036854775808, i64 0>
  %i.ip = bitcast <2 x i64> %i.io to <2 x double>
  %i.iq = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ip) #26, !srcloc !46 ; 3 uses
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.is = fmul <2 x double> %i.il, %i.iq
  %i.it = fmul <2 x double> %i.il, %i.ir
  %i.iu = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.it, <2 x double> splat (double +inf))
  %i.iv = fmul <2 x double> %i.in, %i.iq
  %i.iw = fmul <2 x double> %i.in, %i.ir
  %i.ix = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.iw, <2 x double> splat (double +inf))
  %i.iy = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.is, <2 x double> %i.iu)
  %i.iz = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iv, <2 x double> %i.ix)
  %i.ja = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.iy, <2 x double> %i.iz)
  %i.jb = tail call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ja) #26, !srcloc !46 ; 2 uses
  %i.jc = extractelement <2 x double> %i.ik, i64 0
  %i.jd = fneg double %i.jc                       ; 2 uses
  %.sroa.0.8.vec.extract.i = extractelement <2 x double> %i.jb, i64 1 ; 2 uses
  %i.je = fcmp olt double %.sroa.0.8.vec.extract.i, %i.jd
  %8 = extractelement <2 x double> %i.ik, i64 1   ; 2 uses
  br i1 %i.je, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.jf = extractelement <2 x double> %i.jb, i64 0
  %i.jg = fneg double %i.jf                       ; 2 uses
  %i.jh = fcmp olt double %8, %i.jg
  br i1 %i.jh, label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ji = fcmp une double %8, %i.jg
  %i.jj = fcmp une double %.sroa.0.8.vec.extract.i, %i.jd
  %or.cond.not.i.i.i.i = or i1 %i.jj, %i.ji
  %i.jk = select i1 %or.cond.not.i.i.i.i, i64 8589934591, i64 0
  br label %_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit

_ZN4CGAL19sign_of_determinantINS_11Interval_ntILb0EEEEENS_3SgnIT_E11result_typeERKS4_S8_S8_S8_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.jk, %bb.c ], [ 4294967297, %bb.a ], [ -1, %bb.b ]
  ret i64 %.sroa.5.0.i.i.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_2IS3_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_2.91") align 16 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  %4 = alloca %"class.CGAL::cpp_float", align 16  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.a = load double, ptr %2, align 8, !tbaa !9, !noalias !48 ; 2 uses
  store i64 0, ptr %3, align 16, !tbaa !45, !alias.scope !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1, ptr %i.b, align 16, !tbaa !51, !alias.scope !48
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !52, !alias.scope !48
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 73 ; 3 uses
  store i8 1, ptr %i.d, align 1, !tbaa !39, !alias.scope !48
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 74 ; 3 uses
  store i8 0, ptr %i.e, align 2, !tbaa !53, !alias.scope !48
  %i.f = bitcast double %i.a to i64               ; 4 uses
  %i.g = lshr i64 %i.f, 52
  %i.h = and i64 %i.g, 2047                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %i.a, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 0, ptr %i.k, align 16, !tbaa !54, !alias.scope !48
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = and i64 %i.f, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i

bb.e:                                             ; preds = %bb.a
  %i.m = and i64 %i.f, 4503599627370495
  %i.n = or disjoint i64 %i.m, 4503599627370496
  %i.o = trunc nuw nsw i64 %i.h to i32
  %i.p = add nsw i32 %i.o, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i: ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi i64 [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %.0.i.i = phi i32 [ %i.p, %bb.e ], [ -1022, %bb.d ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i, i1 true)
  %i.r = lshr exact i64 %storemerge.i.i, %i.q     ; 2 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = xor i32 %i.t, 63
  %i.v = sub nsw i32 %.0.i.i, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 %i.v, ptr %i.w, align 16, !tbaa !54, !alias.scope !48
  store i64 %i.r, ptr %3, align 16, !tbaa !58, !alias.scope !48
  %.not.i.i = icmp sgt i64 %i.f, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i
  %i.x = icmp ne i64 %storemerge.i.i, 0
  %spec.store.select.i.i = zext i1 %i.x to i8
  store i8 %spec.store.select.i.i, ptr %i.c, align 8, !alias.scope !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.z = load double, ptr %i.y, align 8, !tbaa !9, !noalias !60 ; 2 uses
  store i64 0, ptr %4, align 16, !tbaa !45, !alias.scope !60
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.aa, align 16, !tbaa !51, !alias.scope !60
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !52, !alias.scope !60
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 73 ; 3 uses
  store i8 1, ptr %i.ac, align 1, !tbaa !39, !alias.scope !60
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 74 ; 3 uses
  store i8 0, ptr %i.ad, align 2, !tbaa !53, !alias.scope !60
  %i.ae = bitcast double %i.z to i64              ; 4 uses
  %i.af = lshr i64 %i.ae, 52
  %i.ag = and i64 %i.af, 2047                     ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = fcmp oeq double %i.z, 0.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 0, ptr %i.aj, align 16, !tbaa !54, !alias.scope !60
  br label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit11

bb.j:                                             ; preds = %bb.h
  %i.ak = and i64 %i.ae, 4503599627370495
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i6

bb.k:                                             ; preds = %bb.g
  %i.al = and i64 %i.ae, 4503599627370495
  %i.am = or disjoint i64 %i.al, 4503599627370496
  %i.an = trunc nuw nsw i64 %i.ag to i32
  %i.ao = add nsw i32 %i.an, -1023
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i6

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i6: ; preds = %bb.k, %bb.j
  %storemerge.i.i7 = phi i64 [ %i.am, %bb.k ], [ %i.ak, %bb.j ] ; 3 uses
  %.0.i.i8 = phi i32 [ %i.ao, %bb.k ], [ -1022, %bb.j ]
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %storemerge.i.i7, i1 true)
  %i.aq = lshr exact i64 %storemerge.i.i7, %i.ap  ; 2 uses
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = xor i32 %i.as, 63
  %i.au = sub nsw i32 %.0.i.i8, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %i.au, ptr %i.av, align 16, !tbaa !54, !alias.scope !60
  store i64 %i.aq, ptr %4, align 16, !tbaa !58, !alias.scope !60
  %.not.i.i9 = icmp sgt i64 %i.ae, -1
  br i1 %.not.i.i9, label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit11, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i6
  %i.aw = icmp ne i64 %storemerge.i.i7, 0
  %spec.store.select.i.i10 = zext i1 %i.aw to i8
  store i8 %spec.store.select.i.i10, ptr %i.ab, align 8, !alias.scope !60
  br label %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit11

_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit11: ; preds = %bb.l, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSImEENSt9enable_ifIXsr3std14is_convertibleIT_S9_EE5valueERS9_E4typeERKSC_.exit.i.i6, %bb.i
  invoke void @_ZN4CGAL7Point_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_(ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(84) %3, ptr noundef nonnull align 16 dereferenceable(84) %4)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit11
  %i.ax = load i8, ptr %i.ac, align 1, !tbaa !39, !range !43, !noundef !44
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr %i.ad, align 2, !range !43
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %4, align 16
  %i.be = shl i64 %i.bd, 3
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #32
  br label %_ZN4CGAL9cpp_floatD2Ev.exit

_ZN4CGAL9cpp_floatD2Ev.exit:                      ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bf = load i8, ptr %i.d, align 1, !tbaa !39, !range !43, !noundef !44
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = load i8, ptr %i.e, align 2, !range !43
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i12 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i12, label %_ZN4CGAL9cpp_floatD2Ev.exit13, label %bb.o

bb.o:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %3, align 16
  %i.bm = shl i64 %i.bl, 3
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #32
  br label %_ZN4CGAL9cpp_floatD2Ev.exit13

_ZN4CGAL9cpp_floatD2Ev.exit13:                    ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.p:                                             ; preds = %_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd.exit11
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load i8, ptr %i.ac, align 1, !tbaa !39, !range !43, !noundef !44
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.ad, align 2, !range !43
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i14 = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i14, label %_ZN4CGAL9cpp_floatD2Ev.exit15, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i64, ptr %4, align 16
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bv) #32
  br label %_ZN4CGAL9cpp_floatD2Ev.exit15

end_hunk_0
