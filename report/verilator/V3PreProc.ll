Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
  %233 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %234 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %235 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %236 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %237 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %238 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %239 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %240 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 50 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 24 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 43 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 29 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 36 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %170, i64 16 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %170, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %173, i64 16 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %173, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %173, i64 17 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %172, i64 16 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %172, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %171, i64 16 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %171, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 22 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 13 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %169, i64 16 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %169, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %151, i64 16 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %151, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %153, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %153, i64 16 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %155, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %155, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %154, i64 16 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %156, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %157, i64 16 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %157, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %159, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %159, i64 16 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %161, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %161, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %160, i64 16 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %162, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %162, i64 16 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %163, i64 16 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %163, i64 8 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %165, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %165, i64 16 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %167, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %167, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %166, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %168, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %168, i64 16 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %149, i64 16 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %149, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %148, i64 16 ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %148, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %150, i64 16 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %150, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 22 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 17 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %147, i64 16 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %147, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %140, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %140, i64 16 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %142, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %142, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %143, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %145, i64 16 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %145, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %144, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %146, i64 16 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %146, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %108, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %107, i64 16 ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %107, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %110, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %111, i64 16 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %110, i64 16 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %113, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %114, i64 16 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %132, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %134, i64 16 ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %134, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %133, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %118, i64 16 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %120, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %129, i64 16 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %130, i64 16 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %131, i64 16 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %123, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %125, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %125, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %126, i64 16 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %127, i64 16 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %115, i64 16 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 8 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %104, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 9 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %105, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 10 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %103, i64 8 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %106, i64 16 ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 7 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %85, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 10 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 9 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 7 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %72, i64 1
  %i.ib = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %64, i64 1
  %i.id = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 6 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 7 uses
  %i.in = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %78, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 7 uses
  %i.it = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 7 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %39, i64 1
  %i.ju = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %31, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ke = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %234, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %234, i64 16 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %236, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %236, i64 16 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %235, i64 16 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %237, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %237, i64 16 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %190, i64 16 ; 7 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %190, i64 8 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %192, i64 8
  %i.kv = getelementptr inbounds nuw i8, ptr %192, i64 16 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %194, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %194, i64 16 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %193, i64 16 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %195, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %195, i64 16 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %196, i64 16 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %202, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %202, i64 16 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %204, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %204, i64 16 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %203, i64 16 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %205, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %205, i64 16 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %207, i64 16 ; 6 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %207, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %207, i64 18
  %i.lm = getelementptr inbounds nuw i8, ptr %206, i64 16 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %226, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %226, i64 16 ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %228, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %228, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %227, i64 16 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %229, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %229, i64 16 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %209, i64 16 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %209, i64 8 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %211, i64 16 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %213, i64 16 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %222, i64 16 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %223, i64 16 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %224, i64 16 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %216, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %216, i64 16 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %218, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %218, i64 16 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %217, i64 16 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %219, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %219, i64 16 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %214, i64 16 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %220, i64 16 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %208, i64 16 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %198, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %199, i64 16 ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %198, i64 16 ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %184, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %184, i64 16 ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %186, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %186, i64 16 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %185, i64 16 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %187, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %187, i64 16 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %188, i64 16 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %178, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %178, i64 16 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %180, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %180, i64 16 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %179, i64 16 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %181, i64 8
  %i.nc = getelementptr inbounds nuw i8, ptr %181, i64 16 ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %182, i64 1
  %i.ne = getelementptr inbounds nuw i8, ptr %175, i64 16 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 17
  br label %_ZN12V3PreProcImp8statePopEv.exit

_ZN12V3PreProcImp8statePopEv.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %i.nq = and i32 %i.qv, 1
  %lcmp.mod.not = icmp eq i32 %i.nq, 0
  br i1 %lcmp.mod.not, label %_ZN12V3PreProcImp8statePopEv.exit.backedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN12V3PreProcImp8statePopEv.exit.loopexit.unr-lcssa, %.lr.ph
  %.01534995.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.rk, %_ZN12V3PreProcImp8statePopEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod7281 = trunc i32 %i.qv to i1
  call void @llvm.assume(i1 %lcmp.mod7281)
  %i.nr = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.01534995.epil.init
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !45
  %i.nt = icmp eq i8 %i.ns, 10
  br i1 %i.nt, label %bb.b, label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.b:                                             ; preds = %.epil.preheader
  %i.nu = load i32, ptr %i.bp, align 4, !tbaa !262
  %i.nv = add nsw i32 %i.nu, 1
  store i32 %i.nv, ptr %i.bp, align 4, !tbaa !262
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

_ZN12V3PreProcImp8statePopEv.exit:                ; preds = %_ZN12V3PreProcImp8statePopEv.exit.backedge, %bb.a
  %i.nw = load ptr, ptr %i.af, align 8, !tbaa !278 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !54, !noalias !1441 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !55, !noalias !1441
  %i.ob = icmp eq ptr %i.ny, %i.oa
  br i1 %i.ob, label %bb.c, label %_ZNK12V3PreProcImp5isEofEv.exit

bb.c:                                             ; preds = %_ZN12V3PreProcImp8statePopEv.exit
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nw, i64 80
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !56, !noalias !1441
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !57
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 512
  br label %_ZNK12V3PreProcImp5isEofEv.exit

_ZNK12V3PreProcImp5isEofEv.exit:                  ; preds = %_ZN12V3PreProcImp8statePopEv.exit, %bb.c
  %i.oh = phi ptr [ %i.og, %bb.c ], [ %i.ny, %_ZN12V3PreProcImp8statePopEv.exit ]
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 -8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !59
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 104
end_hunk_0
begin_hunk_1_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
  %i.agb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.afy, ptr noundef nonnull %i.afz, i64 noundef %i.aga)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit971 unwind label %bb.eq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit971: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit969
  %i.agc = load ptr, ptr %27, align 8, !tbaa !90  ; 2 uses
  %i.agd = icmp eq ptr %i.agc, %i.jw
  br i1 %i.agd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit971
  %i.age = load i64, ptr %i.jw, align 8, !tbaa !45
  %i.agf = add i64 %i.age, 1
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit971, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(112) %26)
          to label %bb.el unwind label %bb.er

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(112) %26)
          to label %bb.em unwind label %bb.es

bb.em:                                            ; preds = %bb.el
  %i.agg = load i64, ptr %i.jx, align 8, !tbaa !141 ; 2 uses
  %i.agh = load ptr, ptr %28, align 8, !tbaa !90  ; 2 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 %i.agg
  %i.agj = getelementptr i8, ptr %i.agi, i64 -1
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !45
  %.not611 = icmp eq i8 %i.agk, 10
  %i.agl = load ptr, ptr %29, align 8, !tbaa !90  ; 2 uses
  %i.agm = icmp eq ptr %i.agl, %i.jy
  br i1 %i.agm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i976, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i975

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i976: ; preds = %bb.em
  %i.agn = icmp ult i64 %i.agg, 16
  call void @llvm.assume(i1 %i.agn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i975: ; preds = %bb.em
  %i.ago = load i64, ptr %i.jy, align 8, !tbaa !45
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agl, i64 noundef %i.agp) #45
  %.pre5347 = load ptr, ptr %28, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i976, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i975
  %i.agq = phi ptr [ %i.agh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i976 ], [ %.pre5347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i975 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #44
  %i.agr = icmp eq ptr %i.agq, %i.jz
  br i1 %i.agr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i978

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i978: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977
  %i.ags = load i64, ptr %i.jz, align 8, !tbaa !45
  %i.agt = add i64 %i.ags, 1
  call void @_ZdlPvm(ptr noundef %i.agq, i64 noundef %i.agt) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i978
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #44
  br i1 %.not611, label %bb.et, label %bb.en

bb.en:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980
  %i.agu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %26, i8 noundef signext 10)
          to label %bb.et unwind label %bb.eo     ; 0 uses

bb.eo:                                            ; preds = %bb.ej, %bb.en
  %i.agv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ep:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit963
  %i.agw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983

bb.eq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit969, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit967, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit965, %bb.ek
  %i.agx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agy = load ptr, ptr %27, align 8, !tbaa !90  ; 2 uses
  %i.agz = icmp eq ptr %i.agy, %i.jw
  br i1 %i.agz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981: ; preds = %bb.eq
  %i.aha = load i64, ptr %i.jw, align 8, !tbaa !45
  %i.ahb = add i64 %i.aha, 1
  call void @_ZdlPvm(ptr noundef %i.agy, i64 noundef %i.ahb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983: ; preds = %bb.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981, %bb.ep
  %.pn607 = phi { ptr, i32 } [ %i.agw, %bb.ep ], [ %i.agx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i981 ], [ %i.agx, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #44
  br label %bb.ex

bb.er:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986

bb.es:                                            ; preds = %bb.el
  %i.ahd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #44
  %i.ahe = load ptr, ptr %28, align 8, !tbaa !90  ; 2 uses
  %i.ahf = icmp eq ptr %i.ahe, %i.jz
  br i1 %i.ahf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984: ; preds = %bb.es
  %i.ahg = load i64, ptr %i.jz, align 8, !tbaa !45
  %i.ahh = add i64 %i.ahg, 1
  call void @_ZdlPvm(ptr noundef %i.ahe, i64 noundef %i.ahh) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984, %bb.er
  %.pn609 = phi { ptr, i32 } [ %i.ahc, %bb.er ], [ %i.ahd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i984 ], [ %i.ahd, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #44
  br label %bb.ex

bb.et:                                            ; preds = %bb.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 8 dereferenceable(112) %26)
          to label %bb.eu unwind label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ahi = load ptr, ptr %30, align 8, !tbaa !90
  %i.ahj = load i64, ptr %i.ka, align 8, !tbaa !141
  %i.ahk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ahi, i64 noundef %i.ahj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit988 unwind label %bb.ew ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit988: ; preds = %bb.eu
  %i.ahl = load ptr, ptr %30, align 8, !tbaa !90  ; 2 uses
  %i.ahm = icmp eq ptr %i.ahl, %i.kb
  br i1 %i.ahm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i989

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i989: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit988
  %i.ahn = load i64, ptr %i.kb, align 8, !tbaa !45
  %i.aho = add i64 %i.ahn, 1
  call void @_ZdlPvm(ptr noundef %i.ahl, i64 noundef %i.aho) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit988, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i989
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %26) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #44
  br label %bb.ey

bb.ev:                                            ; preds = %bb.et
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit994

bb.ew:                                            ; preds = %bb.eu
  %i.ahq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahr = load ptr, ptr %30, align 8, !tbaa !90  ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.kb
  br i1 %i.ahs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit994, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i992

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i992: ; preds = %bb.ew
  %i.aht = load i64, ptr %i.kb, align 8, !tbaa !45
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahr, i64 noundef %i.ahu) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit994

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit994: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i992, %bb.ev
  %.pn612 = phi { ptr, i32 } [ %i.ahp, %bb.ev ], [ %i.ahq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i992 ], [ %i.ahq, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #44
  br label %bb.ex

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit994, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983, %bb.eo
  %.pn612.pn = phi { ptr, i32 } [ %.pn612, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit994 ], [ %i.agv, %bb.eo ], [ %.pn609, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986 ], [ %.pn607, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %26) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #44
  br label %common.resume

bb.ey:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991, %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit961
  %i.ahv = load ptr, ptr %i.bq, align 8, !tbaa !316, !noalias !1448 ; 2 uses
  %i.ahw = load ptr, ptr %i.br, align 8, !tbaa !317, !noalias !1448
  %i.ahx = icmp eq ptr %i.ahv, %i.ahw
  br i1 %i.ahx, label %bb.ez, label %_ZNK12V3PreProcImp5stateEv.exit995

bb.ez:                                            ; preds = %bb.ey
  %i.ahy = load ptr, ptr %i.bs, align 8, !tbaa !318, !noalias !1448
  %i.ahz = getelementptr inbounds i8, ptr %i.ahy, i64 -8
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !169
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 512
  br label %_ZNK12V3PreProcImp5stateEv.exit995

_ZNK12V3PreProcImp5stateEv.exit995:               ; preds = %bb.ey, %bb.ez
  %i.aic = phi ptr [ %i.aib, %bb.ez ], [ %i.ahv, %bb.ey ]
  %i.aid = getelementptr inbounds i8, ptr %i.aic, i64 -1
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !274
  %i.aif = icmp eq i8 %i.aie, 4
  %spec.select742 = xor i1 %.sroa.0.0.i.i.i952, %i.aif ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #44
  %i.aig = zext i1 %spec.select742 to i8          ; 2 uses
  store i8 %i.aig, ptr %31, align 2, !tbaa !1450
  store i8 %i.aig, ptr %i.kc, align 1, !tbaa !1451
  %i.aih = load ptr, ptr %i.hp, align 8, !tbaa !324 ; 3 uses
  %i.aii = load ptr, ptr %i.kd, align 8, !tbaa !325
  %i.aij = getelementptr inbounds i8, ptr %i.aii, i64 -2
  %.not.i.i996 = icmp eq ptr %i.aih, %i.aij
  br i1 %.not.i.i996, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit995
  %i.aik = load i16, ptr %31, align 2, !tbaa !199
  store i16 %i.aik, ptr %i.aih, align 1, !tbaa !199
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aih, i64 2
  store ptr %i.ail, ptr %i.hp, align 8, !tbaa !324
  br label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE7emplaceIJS0_EEEDcDpOT_.exit

bb.fb:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit995
  call void @_ZNSt5dequeI11VPreIfEntrySaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ho, ptr noundef nonnull align 1 dereferenceable(2) %31)
  br label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE7emplaceIJS0_EEEDcDpOT_.exit

_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE7emplaceIJS0_EEEDcDpOT_.exit: ; preds = %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #44
  br i1 %spec.select742, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE7emplaceIJS0_EEEDcDpOT_.exit
  %i.aim = load i32, ptr %i.bg, align 8, !tbaa !259
  %i.ain = add nsw i32 %i.aim, 1
  store i32 %i.ain, ptr %i.bg, align 8, !tbaa !259
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE7emplaceIJS0_EEEDcDpOT_.exit
  %i.aio = load ptr, ptr %i.bq, align 8, !tbaa !275 ; 2 uses
  %i.aip = load ptr, ptr %i.br, align 8, !tbaa !326 ; 2 uses
  %.not.i.i.i997 = icmp eq ptr %i.aio, %i.aip
  br i1 %.not.i.i.i997, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aiq = getelementptr inbounds i8, ptr %i.aio, i64 -1
  br label %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i

bb.ff:                                            ; preds = %bb.fd
  call void @_ZdlPvm(ptr noundef %i.aip, i64 noundef 512) #45
  %i.air = load ptr, ptr %i.bs, align 8, !tbaa !327
  %i.ais = getelementptr inbounds i8, ptr %i.air, i64 -8 ; 2 uses
  store ptr %i.ais, ptr %i.bs, align 8, !tbaa !318
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !169 ; 3 uses
  store ptr %i.ait, ptr %i.br, align 8, !tbaa !317
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 512
  store ptr %i.aiu, ptr %i.ce, align 8, !tbaa !319
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 511
  br label %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i

_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i: ; preds = %bb.ff, %bb.fe
  %storemerge.i.i.i = phi ptr [ %i.aiq, %bb.fe ], [ %i.aiv, %bb.ff ] ; 2 uses
  store ptr %storemerge.i.i.i, ptr %i.bq, align 8, !tbaa !275
  %i.aiw = load ptr, ptr %i.cf, align 8, !tbaa !316
  %i.aix = icmp eq ptr %storemerge.i.i.i, %i.aiw
  br i1 %i.aix, label %bb.fg, label %_ZN12V3PreProcImp8statePopEv.exit.backedge, !prof !200

bb.fg:                                            ; preds = %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i
  %i.aiy = load ptr, ptr %i.af, align 8, !tbaa !278
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 104
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !177
  %i.ajb = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.65, i32 noundef 247) ; 0 uses
  %i.ajc = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ajd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ajc, ptr noundef nonnull @.str.488)
  call void @_ZN8FileLine15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aja, ptr noundef nonnull align 8 dereferenceable(112) %i.ajd) #42
  unreachable

bb.fh:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit930, %_ZNK12V3PreProcImp5stateEv.exit930.thread
  %i.aje = load ptr, ptr %i.hp, align 8, !tbaa !328 ; 3 uses
  %i.ajf = load ptr, ptr %i.hq, align 8, !tbaa !328
  %i.ajg = icmp eq ptr %i.aje, %i.ajf
  br i1 %i.ajg, label %bb.fi, label %bb.fn

bb.fi:                                            ; preds = %bb.fh
  %i.ajh = load ptr, ptr %i.af, align 8, !tbaa !278
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 104
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !177
  %i.ajk = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.ajl = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.ajm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajl, ptr noundef nonnull @.str.174, i64 noundef 27) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.fj unwind label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.ajj, ptr noundef nonnull align 8 dereferenceable(112) %i.ajl, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  %i.ajn = load ptr, ptr %32, align 8, !tbaa !90  ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, %i.ju
  br i1 %i.ajo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999: ; preds = %bb.fk
  %i.ajp = load i64, ptr %i.ju, align 8, !tbaa !45
  %i.ajq = add i64 %i.ajp, 1
  call void @_ZdlPvm(ptr noundef %i.ajn, i64 noundef %i.ajq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #44
  br label %bb.gk

bb.fl:                                            ; preds = %bb.fi
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

bb.fm:                                            ; preds = %bb.fj
  %i.ajs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajt = load ptr, ptr %32, align 8, !tbaa !90  ; 2 uses
  %i.aju = icmp eq ptr %i.ajt, %i.ju
  br i1 %i.aju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002: ; preds = %bb.fm
  %i.ajv = load i64, ptr %i.ju, align 8, !tbaa !45
  %i.ajw = add i64 %i.ajv, 1
  call void @_ZdlPvm(ptr noundef %i.ajt, i64 noundef %i.ajw) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004: ; preds = %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002, %bb.fl
  %.pn605 = phi { ptr, i32 } [ %i.ajr, %bb.fl ], [ %i.ajs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002 ], [ %i.ajs, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #44
  br label %common.resume

bb.fn:                                            ; preds = %bb.fh
  %i.ajx = load ptr, ptr %i.hr, align 8, !tbaa !329, !noalias !1452
  %i.ajy = icmp eq ptr %i.aje, %i.ajx
  br i1 %i.ajy, label %bb.fo, label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit

bb.fo:                                            ; preds = %bb.fn
  %i.ajz = load ptr, ptr %i.hs, align 8, !tbaa !330, !noalias !1452
  %i.aka = getelementptr inbounds i8, ptr %i.ajz, i64 -8
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !331
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 512
  br label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit

_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit: ; preds = %bb.fn, %bb.fo
  %i.akd = phi ptr [ %i.akc, %bb.fo ], [ %i.aje, %bb.fn ]
  %i.ake = getelementptr inbounds i8, ptr %i.akd, i64 -2
  %i.akf = load i16, ptr %i.ake, align 1, !tbaa !199 ; 2 uses
  call void @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ho)
  %i.akg = trunc i16 %i.akf to i1
  br i1 %i.akg, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit
  call void @_ZN12V3PreProcImp9parsingOnEv(ptr noundef nonnull align 8 dereferenceable(1032) %0)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit
  %i.akh = and i16 %i.akf, 256
  %i.aki = icmp ne i16 %i.akh, 0                  ; 2 uses
  br i1 %i.aki, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.akj = call noundef zeroext i1 @_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.du)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.akk = phi i1 [ false, %bb.fq ], [ %i.akj, %bb.fr ] ; 5 uses
  %i.akl = call noundef i32 @_ZN9V3PreProc5debugEv()
  %i.akm = icmp sgt i32 %i.akl, 3
  br i1 %i.akm, label %bb.ft, label %bb.gi, !prof !200

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %34)
  %i.akn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1006 unwind label %bb.fy ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1006: ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull @.str.65, i32 noundef 1165)
          to label %bb.fu unwind label %bb.fz

bb.fu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1006
  %i.ako = load ptr, ptr %35, align 8, !tbaa !90
  %i.akp = load i64, ptr %i.jm, align 8, !tbaa !141
  %i.akq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %i.ako, i64 noundef %i.akp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1008 unwind label %bb.ga ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1008: ; preds = %bb.fu
  %i.akr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akq, ptr noundef nonnull @.str.175, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1010 unwind label %bb.ga ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1010: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1008
  %i.aks = load ptr, ptr %i.du, align 8, !tbaa !90
  %i.akt = load i64, ptr %i.dv, align 8, !tbaa !141
  %i.aku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.akq, ptr noundef %i.aks, i64 noundef %i.akt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1012 unwind label %bb.ga

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1012: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1010
  %i.akv = select i1 %i.akk, ptr @.str.172, ptr @.str.173
  %i.akw = select i1 %i.akk, i64 3, i64 4
  %i.akx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aku, ptr noundef nonnull %i.akv, i64 noundef %i.akw)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1014 unwind label %bb.ga ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1014: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1012
  %i.aky = load ptr, ptr %35, align 8, !tbaa !90  ; 2 uses
  %i.akz = icmp eq ptr %i.aky, %i.jn
  br i1 %i.akz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1014
  %i.ala = load i64, ptr %i.jn, align 8, !tbaa !45
  %i.alb = add i64 %i.ala, 1
  call void @_ZdlPvm(ptr noundef %i.aky, i64 noundef %i.alb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1014, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(112) %34)
          to label %bb.fv unwind label %bb.gb

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(112) %34)
          to label %bb.fw unwind label %bb.gc

bb.fw:                                            ; preds = %bb.fv
  %i.alc = load i64, ptr %i.jo, align 8, !tbaa !141 ; 2 uses
  %i.ald = load ptr, ptr %36, align 8, !tbaa !90  ; 2 uses
  %i.ale = getelementptr i8, ptr %i.ald, i64 %i.alc
  %i.alf = getelementptr i8, ptr %i.ale, i64 -1
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !45
  %.not601 = icmp eq i8 %i.alg, 10
  %i.alh = load ptr, ptr %37, align 8, !tbaa !90  ; 2 uses
  %i.ali = icmp eq ptr %i.alh, %i.jp
  br i1 %i.ali, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1019, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1019: ; preds = %bb.fw
  %i.alj = icmp ult i64 %i.alc, 16
  call void @llvm.assume(i1 %i.alj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018: ; preds = %bb.fw
  %i.alk = load i64, ptr %i.jp, align 8, !tbaa !45
  %i.all = add i64 %i.alk, 1
  call void @_ZdlPvm(ptr noundef %i.alh, i64 noundef %i.all) #45
  %.pre5346 = load ptr, ptr %36, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1019, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018
  %i.alm = phi ptr [ %i.ald, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1019 ], [ %.pre5346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1018 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #44
  %i.aln = icmp eq ptr %i.alm, %i.jq
  br i1 %i.aln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020
  %i.alo = load i64, ptr %i.jq, align 8, !tbaa !45
  %i.alp = add i64 %i.alo, 1
  call void @_ZdlPvm(ptr noundef %i.alm, i64 noundef %i.alp) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1021
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #44
  br i1 %.not601, label %bb.gd, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023
  %i.alq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %34, i8 noundef signext 10)
          to label %bb.gd unwind label %bb.fy     ; 0 uses

bb.fy:                                            ; preds = %bb.ft, %bb.fx
  %i.alr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.fz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1006
  %i.als = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026

bb.ga:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1012, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1010, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1008, %bb.fu
  %i.alt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alu = load ptr, ptr %35, align 8, !tbaa !90  ; 2 uses
  %i.alv = icmp eq ptr %i.alu, %i.jn
  br i1 %i.alv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024: ; preds = %bb.ga
  %i.alw = load i64, ptr %i.jn, align 8, !tbaa !45
  %i.alx = add i64 %i.alw, 1
  call void @_ZdlPvm(ptr noundef %i.alu, i64 noundef %i.alx) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1026: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024, %bb.fz
  %.pn597 = phi { ptr, i32 } [ %i.als, %bb.fz ], [ %i.alt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1024 ], [ %i.alt, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #44
  br label %bb.gh

bb.gb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1029

bb.gc:                                            ; preds = %bb.fv
  %i.alz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #44
  %i.ama = load ptr, ptr %36, align 8, !tbaa !90  ; 2 uses
  %i.amb = icmp eq ptr %i.ama, %i.jq
  br i1 %i.amb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1029, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027: ; preds = %bb.gc
  %i.amc = load i64, ptr %i.jq, align 8, !tbaa !45
  %i.amd = add i64 %i.amc, 1
  call void @_ZdlPvm(ptr noundef %i.ama, i64 noundef %i.amd) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1029

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1029: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027, %bb.gb
  %.pn599 = phi { ptr, i32 } [ %i.aly, %bb.gb ], [ %i.alz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1027 ], [ %i.alz, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #44
  br label %bb.gh

bb.gd:                                            ; preds = %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(112) %34)
          to label %bb.ge unwind label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.ame = load ptr, ptr %38, align 8, !tbaa !90
  %i.amf = load i64, ptr %i.jr, align 8, !tbaa !141
  %i.amg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ame, i64 noundef %i.amf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1031 unwind label %bb.gg ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1031: ; preds = %bb.ge
  %i.amh = load ptr, ptr %38, align 8, !tbaa !90  ; 2 uses
  %i.ami = icmp eq ptr %i.amh, %i.js
  br i1 %i.ami, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1032

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1032: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1031
  %i.amj = load i64, ptr %i.js, align 8, !tbaa !45
  %i.amk = add i64 %i.amj, 1
  call void @_ZdlPvm(ptr noundef %i.amh, i64 noundef %i.amk) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1031, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1032
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %34) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #44
  br label %bb.gi
end_hunk_1
begin_hunk_2_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1224: ; preds = %bb.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1222, %bb.kj
  %.pn554 = phi { ptr, i32 } [ %i.bam, %bb.kj ], [ %i.ban, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1222 ], [ %i.ban, %bb.kk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #44
  br label %bb.kp

bb.kl:                                            ; preds = %bb.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1218
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull align 8 dereferenceable(112) %59)
          to label %bb.km unwind label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.bas = load ptr, ptr %63, align 8, !tbaa !90
  %i.bat = load i64, ptr %i.hm, align 8, !tbaa !141
  %i.bau = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bas, i64 noundef %i.bat)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1226 unwind label %bb.ko ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1226: ; preds = %bb.km
  %i.bav = load ptr, ptr %63, align 8, !tbaa !90  ; 2 uses
  %i.baw = icmp eq ptr %i.bav, %i.hn
  br i1 %i.baw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1227: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1226
  %i.bax = load i64, ptr %i.hn, align 8, !tbaa !45
  %i.bay = add i64 %i.bax, 1
  call void @_ZdlPvm(ptr noundef %i.bav, i64 noundef %i.bay) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1229: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1227
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %59) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #44
  br label %bb.kq

bb.kn:                                            ; preds = %bb.kl
  %i.baz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232

bb.ko:                                            ; preds = %bb.km
  %i.bba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbb = load ptr, ptr %63, align 8, !tbaa !90  ; 2 uses
  %i.bbc = icmp eq ptr %i.bbb, %i.hn
  br i1 %i.bbc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1230: ; preds = %bb.ko
  %i.bbd = load i64, ptr %i.hn, align 8, !tbaa !45
  %i.bbe = add i64 %i.bbd, 1
  call void @_ZdlPvm(ptr noundef %i.bbb, i64 noundef %i.bbe) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232: ; preds = %bb.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1230, %bb.kn
  %.pn557 = phi { ptr, i32 } [ %i.baz, %bb.kn ], [ %i.bba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1230 ], [ %i.bba, %bb.ko ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #44
  br label %bb.kp

bb.kp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221, %bb.kg
  %.pn557.pn = phi { ptr, i32 } [ %.pn557, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1232 ], [ %i.baf, %bb.kg ], [ %.pn554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1224 ], [ %.pn552, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1221 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %59) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #44
  br label %common.resume

bb.kq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1229, %bb.ka
  %i.bbf = load ptr, ptr %i.bq, align 8, !tbaa !316, !noalias !1457 ; 3 uses
  %i.bbg = load ptr, ptr %i.br, align 8, !tbaa !317, !noalias !1457
  %i.bbh = icmp eq ptr %i.bbf, %i.bbg
  br i1 %i.bbh, label %_ZNK12V3PreProcImp5stateEv.exit1233, label %_ZNK12V3PreProcImp5stateEv.exit1233.thread

_ZNK12V3PreProcImp5stateEv.exit1233:              ; preds = %bb.kq
  %i.bbi = load ptr, ptr %i.bs, align 8, !tbaa !318, !noalias !1457
  %i.bbj = getelementptr inbounds i8, ptr %i.bbi, i64 -8
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !169
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 511
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !274 ; 2 uses
  %.off6523 = add i8 %i.bbm, -11
  %switch6524 = icmp ult i8 %.off6523, 2
  br i1 %switch6524, label %bb.kr, label %_ZNK12V3PreProcImp5stateEv.exit1236

_ZNK12V3PreProcImp5stateEv.exit1233.thread:       ; preds = %bb.kq
  %i.bbn = getelementptr inbounds i8, ptr %i.bbf, i64 -1
  %i.bbo = load i8, ptr %i.bbn, align 1, !tbaa !274 ; 2 uses
  %.off6525 = add i8 %i.bbo, -11
  %switch6526 = icmp ult i8 %.off6525, 2
  br i1 %switch6526, label %_ZNK12V3PreProcImp5stateEv.exit1235, label %_ZNK12V3PreProcImp5stateEv.exit1236

bb.kr:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1233
  %i.bbp = load ptr, ptr %i.bs, align 8, !tbaa !318, !noalias !1458
  %i.bbq = getelementptr inbounds i8, ptr %i.bbp, i64 -8
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !169
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 512
  br label %_ZNK12V3PreProcImp5stateEv.exit1235

_ZNK12V3PreProcImp5stateEv.exit1235:              ; preds = %_ZNK12V3PreProcImp5stateEv.exit1233.thread, %bb.kr
  %i.bbt = phi ptr [ %i.bbs, %bb.kr ], [ %i.bbf, %_ZNK12V3PreProcImp5stateEv.exit1233.thread ]
  %i.bbu = getelementptr inbounds i8, ptr %i.bbt, i64 -1
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !274
  %i.bbw = icmp eq i8 %i.bbv, 12
  %spec.select743 = xor i1 %i.azd, %i.bbw         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #44
  %i.bbx = zext i1 %spec.select743 to i8          ; 2 uses
  store i8 %i.bbx, ptr %64, align 1, !tbaa !1450
  store i8 %i.bbx, ptr %i.ic, align 1, !tbaa !1451
  %i.bby = call noundef nonnull align 1 dereferenceable(2) ptr @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE7emplaceIJS0_EEEDcDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ho, ptr noundef nonnull align 1 dereferenceable(2) %64) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #44
  br i1 %spec.select743, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1235
  %i.bbz = load i32, ptr %i.bg, align 8, !tbaa !259
  %i.bca = add nsw i32 %i.bbz, 1
  store i32 %i.bca, ptr %i.bg, align 8, !tbaa !259
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %_ZNK12V3PreProcImp5stateEv.exit1235
  call void @_ZN12V3PreProcImp8statePopEv(ptr noundef nonnull align 8 dereferenceable(1032) %0)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

_ZNK12V3PreProcImp5stateEv.exit1236:              ; preds = %_ZNK12V3PreProcImp5stateEv.exit1233.thread, %_ZNK12V3PreProcImp5stateEv.exit1233
  %i.bcb = phi i8 [ %i.bbo, %_ZNK12V3PreProcImp5stateEv.exit1233.thread ], [ %i.bbm, %_ZNK12V3PreProcImp5stateEv.exit1233 ]
  %i.bcc = icmp eq i8 %i.bcb, 13
  br i1 %i.bcc, label %bb.ku, label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.ku:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1236
  %i.bcd = load ptr, ptr %i.hp, align 8, !tbaa !328 ; 3 uses
  %i.bce = load ptr, ptr %i.hq, align 8, !tbaa !328
  %i.bcf = icmp eq ptr %i.bcd, %i.bce
  br i1 %i.bcf, label %bb.kv, label %bb.la

bb.kv:                                            ; preds = %bb.ku
  %i.bcg = load ptr, ptr %i.af, align 8, !tbaa !278
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 104
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !177
  %i.bcj = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.bck = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.bcl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bck, ptr noundef nonnull @.str.174, i64 noundef 27) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %bb.kw unwind label %bb.ky

bb.kw:                                            ; preds = %bb.kv
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.bci, ptr noundef nonnull align 8 dereferenceable(112) %i.bck, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.kx unwind label %bb.kz

bb.kx:                                            ; preds = %bb.kw
  %i.bcm = load ptr, ptr %65, align 8, !tbaa !90  ; 2 uses
  %i.bcn = icmp eq ptr %i.bcm, %i.ib
  br i1 %i.bcn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1237: ; preds = %bb.kx
  %i.bco = load i64, ptr %i.ib, align 8, !tbaa !45
  %i.bcp = add i64 %i.bco, 1
  call void @_ZdlPvm(ptr noundef %i.bcm, i64 noundef %i.bcp) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1239: ; preds = %bb.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1237
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #44
  br label %bb.lv

bb.ky:                                            ; preds = %bb.kv
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242

bb.kz:                                            ; preds = %bb.kw
  %i.bcr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bcs = load ptr, ptr %65, align 8, !tbaa !90  ; 2 uses
  %i.bct = icmp eq ptr %i.bcs, %i.ib
  br i1 %i.bct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240: ; preds = %bb.kz
  %i.bcu = load i64, ptr %i.ib, align 8, !tbaa !45
  %i.bcv = add i64 %i.bcu, 1
  call void @_ZdlPvm(ptr noundef %i.bcs, i64 noundef %i.bcv) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1242: ; preds = %bb.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240, %bb.ky
  %.pn568 = phi { ptr, i32 } [ %i.bcq, %bb.ky ], [ %i.bcr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1240 ], [ %i.bcr, %bb.kz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #44
  br label %common.resume

bb.la:                                            ; preds = %bb.ku
  %i.bcw = load ptr, ptr %i.hr, align 8, !tbaa !329, !noalias !1459
  %i.bcx = icmp eq ptr %i.bcd, %i.bcw
  br i1 %i.bcx, label %bb.lb, label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit1243

bb.lb:                                            ; preds = %bb.la
  %i.bcy = load ptr, ptr %i.hs, align 8, !tbaa !330, !noalias !1459
  %i.bcz = getelementptr inbounds i8, ptr %i.bcy, i64 -8
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !331
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 512
  br label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit1243

_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit1243: ; preds = %bb.la, %bb.lb
  %i.bdc = phi ptr [ %i.bdb, %bb.lb ], [ %i.bcd, %bb.la ]
  %i.bdd = getelementptr inbounds i8, ptr %i.bdc, i64 -2
  %i.bde = load i16, ptr %i.bdd, align 1, !tbaa !199 ; 2 uses
  call void @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ho)
  %i.bdf = trunc i16 %i.bde to i1
  br i1 %i.bdf, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit1243
  call void @_ZN12V3PreProcImp9parsingOnEv(ptr noundef nonnull align 8 dereferenceable(1032) %0)
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit1243
  %i.bdg = and i16 %i.bde, 256
  %i.bdh = icmp ne i16 %i.bdg, 0                  ; 2 uses
  %not. = xor i1 %i.bdh, true
  %i.bdi = and i1 %i.azd, %not.                   ; 4 uses
  %i.bdj = call noundef i32 @_ZN9V3PreProc5debugEv()
  %i.bdk = icmp sgt i32 %i.bdj, 3
  br i1 %i.bdk, label %bb.le, label %bb.lt, !prof !200

bb.le:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %67)
  %i.bdl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1245 unwind label %bb.lj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1245: ; preds = %bb.le
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull @.str.65, i32 noundef 1270)
          to label %bb.lf unwind label %bb.lk

bb.lf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1245
  %i.bdm = load ptr, ptr %68, align 8, !tbaa !90
  %i.bdn = load i64, ptr %i.ht, align 8, !tbaa !141
  %i.bdo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %i.bdm, i64 noundef %i.bdn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1247 unwind label %bb.ll ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1247: ; preds = %bb.lf
  %i.bdp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdo, ptr noundef nonnull @.str.175, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1249 unwind label %bb.ll ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1249: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1247
  %i.bdq = load ptr, ptr %i.du, align 8, !tbaa !90
  %i.bdr = load i64, ptr %i.dv, align 8, !tbaa !141
  %i.bds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bdo, ptr noundef %i.bdq, i64 noundef %i.bdr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1251 unwind label %bb.ll

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1251: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1249
  %i.bdt = select i1 %i.bdi, ptr @.str.172, ptr @.str.173
  %i.bdu = select i1 %i.bdi, i64 3, i64 4
  %i.bdv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bds, ptr noundef nonnull %i.bdt, i64 noundef %i.bdu)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1253 unwind label %bb.ll ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1253: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1251
  %i.bdw = load ptr, ptr %68, align 8, !tbaa !90  ; 2 uses
  %i.bdx = icmp eq ptr %i.bdw, %i.hu
  br i1 %i.bdx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1254: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1253
  %i.bdy = load i64, ptr %i.hu, align 8, !tbaa !45
  %i.bdz = add i64 %i.bdy, 1
  call void @_ZdlPvm(ptr noundef %i.bdw, i64 noundef %i.bdz) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1254
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull align 8 dereferenceable(112) %67)
          to label %bb.lg unwind label %bb.lm

bb.lg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr noundef nonnull align 8 dereferenceable(112) %67)
          to label %bb.lh unwind label %bb.ln

bb.lh:                                            ; preds = %bb.lg
  %i.bea = load i64, ptr %i.hv, align 8, !tbaa !141 ; 2 uses
  %i.beb = load ptr, ptr %69, align 8, !tbaa !90  ; 2 uses
  %i.bec = getelementptr i8, ptr %i.beb, i64 %i.bea
  %i.bed = getelementptr i8, ptr %i.bec, i64 -1
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !45
  %.not564 = icmp eq i8 %i.bee, 10
  %i.bef = load ptr, ptr %70, align 8, !tbaa !90  ; 2 uses
  %i.beg = icmp eq ptr %i.bef, %i.hw
  br i1 %i.beg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1258: ; preds = %bb.lh
  %i.beh = icmp ult i64 %i.bea, 16
  call void @llvm.assume(i1 %i.beh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1257: ; preds = %bb.lh
  %i.bei = load i64, ptr %i.hw, align 8, !tbaa !45
  %i.bej = add i64 %i.bei, 1
  call void @_ZdlPvm(ptr noundef %i.bef, i64 noundef %i.bej) #45
  %.pre5336 = load ptr, ptr %69, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1259: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1258, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1257
  %i.bek = phi ptr [ %i.beb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1258 ], [ %.pre5336, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1257 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #44
  %i.bel = icmp eq ptr %i.bek, %i.hx
  br i1 %i.bel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1259
  %i.bem = load i64, ptr %i.hx, align 8, !tbaa !45
  %i.ben = add i64 %i.bem, 1
  call void @_ZdlPvm(ptr noundef %i.bek, i64 noundef %i.ben) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1260
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #44
  br i1 %.not564, label %bb.lo, label %bb.li

bb.li:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1262
  %i.beo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %67, i8 noundef signext 10)
          to label %bb.lo unwind label %bb.lj     ; 0 uses

bb.lj:                                            ; preds = %bb.le, %bb.li
  %i.bep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ls

bb.lk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1245
  %i.beq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1265

bb.ll:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1251, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1249, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1247, %bb.lf
  %i.ber = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bes = load ptr, ptr %68, align 8, !tbaa !90  ; 2 uses
  %i.bet = icmp eq ptr %i.bes, %i.hu
  br i1 %i.bet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1263: ; preds = %bb.ll
  %i.beu = load i64, ptr %i.hu, align 8, !tbaa !45
  %i.bev = add i64 %i.beu, 1
  call void @_ZdlPvm(ptr noundef %i.bes, i64 noundef %i.bev) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1265: ; preds = %bb.ll, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1263, %bb.lk
  %.pn560 = phi { ptr, i32 } [ %i.beq, %bb.lk ], [ %i.ber, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1263 ], [ %i.ber, %bb.ll ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #44
  br label %bb.ls

bb.lm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256
  %i.bew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1268

bb.ln:                                            ; preds = %bb.lg
  %i.bex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #44
  %i.bey = load ptr, ptr %69, align 8, !tbaa !90  ; 2 uses
  %i.bez = icmp eq ptr %i.bey, %i.hx
  br i1 %i.bez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1266: ; preds = %bb.ln
  %i.bfa = load i64, ptr %i.hx, align 8, !tbaa !45
  %i.bfb = add i64 %i.bfa, 1
  call void @_ZdlPvm(ptr noundef %i.bey, i64 noundef %i.bfb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1268: ; preds = %bb.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1266, %bb.lm
  %.pn562 = phi { ptr, i32 } [ %i.bew, %bb.lm ], [ %i.bex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1266 ], [ %i.bex, %bb.ln ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #44
  br label %bb.ls

bb.lo:                                            ; preds = %bb.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1262
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr noundef nonnull align 8 dereferenceable(112) %67)
          to label %bb.lp unwind label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.bfc = load ptr, ptr %71, align 8, !tbaa !90
  %i.bfd = load i64, ptr %i.hy, align 8, !tbaa !141
  %i.bfe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bfc, i64 noundef %i.bfd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1270 unwind label %bb.lr ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1270: ; preds = %bb.lp
  %i.bff = load ptr, ptr %71, align 8, !tbaa !90  ; 2 uses
  %i.bfg = icmp eq ptr %i.bff, %i.hz
  br i1 %i.bfg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1271: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1270
  %i.bfh = load i64, ptr %i.hz, align 8, !tbaa !45
  %i.bfi = add i64 %i.bfh, 1
  call void @_ZdlPvm(ptr noundef %i.bff, i64 noundef %i.bfi) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1273: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1271
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %67) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #44
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lo
  %i.bfj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276

end_hunk_2
begin_hunk_3_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
  store i8 14, ptr %i.zq, align 1, !tbaa !274
  %i.edl = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.edl, ptr %i.bq, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2151

bb.aef:                                           ; preds = %bb.aed
  call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2151

_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2151: ; preds = %bb.aee, %bb.aef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aeg:                                           ; preds = %bb.yz, %bb.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 1, ptr %i.i, align 1, !tbaa !274
  %i.edm = load ptr, ptr %i.ce, align 8, !tbaa !276
  %i.edn = getelementptr inbounds i8, ptr %i.edm, i64 -1
  %.not.i.i.i2152 = icmp eq ptr %i.zq, %i.edn
  br i1 %.not.i.i.i2152, label %bb.aei, label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  store i8 1, ptr %i.zq, align 1, !tbaa !274
  %i.edo = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.edo, ptr %i.bq, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2153

bb.aei:                                           ; preds = %bb.aeg
  call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2153

_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2153: ; preds = %bb.aeh, %bb.aei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aej:                                           ; preds = %bb.yz, %bb.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 2, ptr %i.h, align 1, !tbaa !274
  %i.edp = load ptr, ptr %i.ce, align 8, !tbaa !276
  %i.edq = getelementptr inbounds i8, ptr %i.edp, i64 -1
  %.not.i.i.i2154 = icmp eq ptr %i.zq, %i.edq
  br i1 %.not.i.i.i2154, label %bb.ael, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  store i8 2, ptr %i.zq, align 1, !tbaa !274
  %i.edr = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.edr, ptr %i.bq, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2155

bb.ael:                                           ; preds = %bb.aej
  call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2155

_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2155: ; preds = %bb.aek, %bb.ael
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aem:                                           ; preds = %bb.yz, %bb.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 3, ptr %i.g, align 1, !tbaa !274
  %i.eds = load ptr, ptr %i.ce, align 8, !tbaa !276
  %i.edt = getelementptr inbounds i8, ptr %i.eds, i64 -1
  %.not.i.i.i2156 = icmp eq ptr %i.zq, %i.edt
  br i1 %.not.i.i.i2156, label %bb.aeo, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  store i8 3, ptr %i.zq, align 1, !tbaa !274
  %i.edu = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.edu, ptr %i.bq, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2157

bb.aeo:                                           ; preds = %bb.aem
  call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2157

_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2157: ; preds = %bb.aen, %bb.aeo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aep:                                           ; preds = %bb.yz, %bb.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 4, ptr %i.f, align 1, !tbaa !274
  %i.edv = load ptr, ptr %i.ce, align 8, !tbaa !276
  %i.edw = getelementptr inbounds i8, ptr %i.edv, i64 -1
  %.not.i.i.i2158 = icmp eq ptr %i.zq, %i.edw
  br i1 %.not.i.i.i2158, label %bb.aer, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  store i8 4, ptr %i.zq, align 1, !tbaa !274
  %i.edx = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.edx, ptr %i.bq, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2159

bb.aer:                                           ; preds = %bb.aep
  call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2159

_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2159: ; preds = %bb.aeq, %bb.aer
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aes:                                           ; preds = %bb.yz, %bb.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 5, ptr %i.e, align 1, !tbaa !274
  %i.edy = load ptr, ptr %i.ce, align 8, !tbaa !276
  %i.edz = getelementptr inbounds i8, ptr %i.edy, i64 -1
  %.not.i.i.i2160 = icmp eq ptr %i.zq, %i.edz
  br i1 %.not.i.i.i2160, label %bb.aeu, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  store i8 5, ptr %i.zq, align 1, !tbaa !274
  %i.eea = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.eea, ptr %i.bq, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2161

bb.aeu:                                           ; preds = %bb.aes
  call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2161

_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2161: ; preds = %bb.aet, %bb.aeu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aev:                                           ; preds = %bb.yz, %bb.aeb
  %i.eeb = load ptr, ptr %i.hp, align 8, !tbaa !328 ; 3 uses
  %i.eec = load ptr, ptr %i.hq, align 8, !tbaa !328
  %i.eed = icmp eq ptr %i.eeb, %i.eec
  br i1 %i.eed, label %bb.aew, label %bb.afb

bb.aew:                                           ; preds = %bb.aev
  %i.eee = load ptr, ptr %i.af, align 8, !tbaa !278
  %i.eef = getelementptr inbounds nuw i8, ptr %i.eee, i64 104
  %i.eeg = load ptr, ptr %i.eef, align 8, !tbaa !177
  %i.eeh = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.eei = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.eej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eei, ptr noundef nonnull @.str.216, i64 noundef 26) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %176) #44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %175, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %176)
          to label %bb.aex unwind label %bb.aez

bb.aex:                                           ; preds = %bb.aew
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.eeg, ptr noundef nonnull align 8 dereferenceable(112) %i.eei, ptr noundef nonnull align 8 dereferenceable(32) %175)
          to label %bb.aey unwind label %bb.afa

bb.aey:                                           ; preds = %bb.aex
  %i.eek = load ptr, ptr %175, align 8, !tbaa !90 ; 2 uses
  %i.eel = icmp eq ptr %i.eek, %i.ne
  br i1 %i.eel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162: ; preds = %bb.aey
  %i.eem = load i64, ptr %i.ne, align 8, !tbaa !45
  %i.een = add i64 %i.eem, 1
  call void @_ZdlPvm(ptr noundef %i.eek, i64 noundef %i.een) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2164: ; preds = %bb.aey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2162
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #44
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aez:                                           ; preds = %bb.aew
  %i.eeo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167

bb.afa:                                           ; preds = %bb.aex
  %i.eep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eeq = load ptr, ptr %175, align 8, !tbaa !90 ; 2 uses
  %i.eer = icmp eq ptr %i.eeq, %i.ne
  br i1 %i.eer, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165: ; preds = %bb.afa
  %i.ees = load i64, ptr %i.ne, align 8, !tbaa !45
  %i.eet = add i64 %i.ees, 1
  call void @_ZdlPvm(ptr noundef %i.eeq, i64 noundef %i.eet) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2167: ; preds = %bb.afa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165, %bb.aez
  %.pn716 = phi { ptr, i32 } [ %i.eeo, %bb.aez ], [ %i.eep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2165 ], [ %i.eep, %bb.afa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #44
  br label %common.resume

bb.afb:                                           ; preds = %bb.aev
  %i.eeu = load ptr, ptr %i.hr, align 8, !tbaa !329, !noalias !1491
  %i.eev = icmp eq ptr %i.eeb, %i.eeu
  br i1 %i.eev, label %bb.afc, label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2168

bb.afc:                                           ; preds = %bb.afb
  %i.eew = load ptr, ptr %i.hs, align 8, !tbaa !330, !noalias !1491
  %i.eex = getelementptr inbounds i8, ptr %i.eew, i64 -8
  %i.eey = load ptr, ptr %i.eex, align 8, !tbaa !331
  %i.eez = getelementptr inbounds nuw i8, ptr %i.eey, i64 512
  br label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2168

_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2168: ; preds = %bb.afb, %bb.afc
  %i.efa = phi ptr [ %i.eez, %bb.afc ], [ %i.eeb, %bb.afb ]
  %i.efb = getelementptr inbounds i8, ptr %i.efa, i64 -2
  %i.efc = load i16, ptr %i.efb, align 1, !tbaa !199 ; 2 uses
  call void @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ho)
  %i.efd = and i16 %i.efc, 256
  %.not2629 = icmp eq i16 %i.efd, 0               ; 4 uses
  %i.efe = call noundef i32 @_ZN9V3PreProc5debugEv()
  %i.eff = icmp sgt i32 %i.efe, 3
  br i1 %i.eff, label %bb.afd, label %bb.afs, !prof !200

bb.afd:                                           ; preds = %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2168
  call void @llvm.lifetime.start.p0(ptr nonnull %177) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %177)
  %i.efg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2170 unwind label %bb.afi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2170: ; preds = %bb.afd
  call void @llvm.lifetime.start.p0(ptr nonnull %178) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %178, ptr noundef nonnull @.str.65, i32 noundef 1571)
          to label %bb.afe unwind label %bb.afj

bb.afe:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2170
  %i.efh = load ptr, ptr %178, align 8, !tbaa !90
  %i.efi = load i64, ptr %i.mw, align 8, !tbaa !141
  %i.efj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef %i.efh, i64 noundef %i.efi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2172 unwind label %bb.afk ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2172: ; preds = %bb.afe
  %i.efk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.efj, ptr noundef nonnull @.str.217, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2174 unwind label %bb.afk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2174: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2172
  %i.efl = select i1 %.not2629, ptr @.str.172, ptr @.str.173
  %i.efm = select i1 %.not2629, i64 3, i64 4
  %i.efn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.efj, ptr noundef nonnull %i.efl, i64 noundef %i.efm)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2177 unwind label %bb.afk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2177: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2174
  %i.efo = load ptr, ptr %178, align 8, !tbaa !90 ; 2 uses
  %i.efp = icmp eq ptr %i.efo, %i.mx
  br i1 %i.efp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2178: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2177
  %i.efq = load i64, ptr %i.mx, align 8, !tbaa !45
  %i.efr = add i64 %i.efq, 1
  call void @_ZdlPvm(ptr noundef %i.efo, i64 noundef %i.efr) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2178
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %179) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %179, ptr noundef nonnull align 8 dereferenceable(112) %177)
          to label %bb.aff unwind label %bb.afl

bb.aff:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180
  call void @llvm.lifetime.start.p0(ptr nonnull %180) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %180, ptr noundef nonnull align 8 dereferenceable(112) %177)
          to label %bb.afg unwind label %bb.afm

bb.afg:                                           ; preds = %bb.aff
  %i.efs = load i64, ptr %i.my, align 8, !tbaa !141 ; 2 uses
  %i.eft = load ptr, ptr %179, align 8, !tbaa !90 ; 2 uses
  %i.efu = getelementptr i8, ptr %i.eft, i64 %i.efs
  %i.efv = getelementptr i8, ptr %i.efu, i64 -1
  %i.efw = load i8, ptr %i.efv, align 1, !tbaa !45
  %.not712 = icmp eq i8 %i.efw, 10
  %i.efx = load ptr, ptr %180, align 8, !tbaa !90 ; 2 uses
  %i.efy = icmp eq ptr %i.efx, %i.mz
  br i1 %i.efy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2182: ; preds = %bb.afg
  %i.efz = icmp ult i64 %i.efs, 16
  call void @llvm.assume(i1 %i.efz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2181: ; preds = %bb.afg
  %i.ega = load i64, ptr %i.mz, align 8, !tbaa !45
  %i.egb = add i64 %i.ega, 1
  call void @_ZdlPvm(ptr noundef %i.efx, i64 noundef %i.egb) #45
  %.pre5358 = load ptr, ptr %179, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2181
  %i.egc = phi ptr [ %i.eft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2182 ], [ %.pre5358, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2181 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #44
  %i.egd = icmp eq ptr %i.egc, %i.na
  br i1 %i.egd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183
  %i.ege = load i64, ptr %i.na, align 8, !tbaa !45
  %i.egf = add i64 %i.ege, 1
  call void @_ZdlPvm(ptr noundef %i.egc, i64 noundef %i.egf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2184
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #44
  br i1 %.not712, label %bb.afn, label %bb.afh

bb.afh:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186
  %i.egg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %177, i8 noundef signext 10)
          to label %bb.afn unwind label %bb.afi   ; 0 uses

bb.afi:                                           ; preds = %bb.afd, %bb.afh
  %i.egh = landingpad { ptr, i32 }
          cleanup
  br label %bb.afr

bb.afj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2170
  %i.egi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189

bb.afk:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2174, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2172, %bb.afe
  %i.egj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.egk = load ptr, ptr %178, align 8, !tbaa !90 ; 2 uses
  %i.egl = icmp eq ptr %i.egk, %i.mx
  br i1 %i.egl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2187: ; preds = %bb.afk
  %i.egm = load i64, ptr %i.mx, align 8, !tbaa !45
  %i.egn = add i64 %i.egm, 1
  call void @_ZdlPvm(ptr noundef %i.egk, i64 noundef %i.egn) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2189: ; preds = %bb.afk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2187, %bb.afj
  %.pn708 = phi { ptr, i32 } [ %i.egi, %bb.afj ], [ %i.egj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2187 ], [ %i.egj, %bb.afk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #44
  br label %bb.afr

bb.afl:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2180
  %i.ego = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192

bb.afm:                                           ; preds = %bb.aff
  %i.egp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #44
  %i.egq = load ptr, ptr %179, align 8, !tbaa !90 ; 2 uses
  %i.egr = icmp eq ptr %i.egq, %i.na
  br i1 %i.egr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2190: ; preds = %bb.afm
  %i.egs = load i64, ptr %i.na, align 8, !tbaa !45
  %i.egt = add i64 %i.egs, 1
  call void @_ZdlPvm(ptr noundef %i.egq, i64 noundef %i.egt) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2192: ; preds = %bb.afm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2190, %bb.afl
  %.pn710 = phi { ptr, i32 } [ %i.ego, %bb.afl ], [ %i.egp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2190 ], [ %i.egp, %bb.afm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #44
  br label %bb.afr

bb.afn:                                           ; preds = %bb.afh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2186
  call void @llvm.lifetime.start.p0(ptr nonnull %181) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %181, ptr noundef nonnull align 8 dereferenceable(112) %177)
          to label %bb.afo unwind label %bb.afp

bb.afo:                                           ; preds = %bb.afn
  %i.egu = load ptr, ptr %181, align 8, !tbaa !90
  %i.egv = load i64, ptr %i.nb, align 8, !tbaa !141
  %i.egw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.egu, i64 noundef %i.egv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2194 unwind label %bb.afq ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2194: ; preds = %bb.afo
  %i.egx = load ptr, ptr %181, align 8, !tbaa !90 ; 2 uses
  %i.egy = icmp eq ptr %i.egx, %i.nc
  br i1 %i.egy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2194
  %i.egz = load i64, ptr %i.nc, align 8, !tbaa !45
  %i.eha = add i64 %i.egz, 1
  call void @_ZdlPvm(ptr noundef %i.egx, i64 noundef %i.eha) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2197: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2195
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %177) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #44
  br label %bb.afs

bb.afp:                                           ; preds = %bb.afn
  %i.ehb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200

bb.afq:                                           ; preds = %bb.afo
  %i.ehc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ehd = load ptr, ptr %181, align 8, !tbaa !90 ; 2 uses
  %i.ehe = icmp eq ptr %i.ehd, %i.nc
  br i1 %i.ehe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198: ; preds = %bb.afq
  %i.ehf = load i64, ptr %i.nc, align 8, !tbaa !45
  %i.ehg = add i64 %i.ehf, 1
  call void @_ZdlPvm(ptr noundef %i.ehd, i64 noundef %i.ehg) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2200: ; preds = %bb.afq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198, %bb.afp
  %.pn713 = phi { ptr, i32 } [ %i.ehb, %bb.afp ], [ %i.ehc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2198 ], [ %i.ehc, %bb.afq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #44
end_hunk_3
begin_hunk_4_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2212
  %i.eij = load i64, ptr %i.ms, align 8, !tbaa !45
  %i.eik = add i64 %i.eij, 1
  call void @_ZdlPvm(ptr noundef %i.eih, i64 noundef %i.eik) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2213
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #44
  br i1 %.not702, label %bb.agh, label %bb.agb

bb.agb:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2215
  %i.eil = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %183, i8 noundef signext 10)
          to label %bb.agh unwind label %bb.agc   ; 0 uses

bb.agc:                                           ; preds = %bb.afx, %bb.agb
  %i.eim = landingpad { ptr, i32 }
          cleanup
  br label %bb.agl

bb.agd:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2202
  %i.ein = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2218

bb.age:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2204, %bb.afy
  %i.eio = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eip = load ptr, ptr %184, align 8, !tbaa !90 ; 2 uses
  %i.eiq = icmp eq ptr %i.eip, %i.mp
  br i1 %i.eiq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2216: ; preds = %bb.age
  %i.eir = load i64, ptr %i.mp, align 8, !tbaa !45
  %i.eis = add i64 %i.eir, 1
  call void @_ZdlPvm(ptr noundef %i.eip, i64 noundef %i.eis) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2218: ; preds = %bb.age, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2216, %bb.agd
  %.pn698 = phi { ptr, i32 } [ %i.ein, %bb.agd ], [ %i.eio, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2216 ], [ %i.eio, %bb.age ]
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #44
  br label %bb.agl

bb.agf:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2209
  %i.eit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2221

bb.agg:                                           ; preds = %bb.afz
  %i.eiu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #44
  %i.eiv = load ptr, ptr %185, align 8, !tbaa !90 ; 2 uses
  %i.eiw = icmp eq ptr %i.eiv, %i.ms
  br i1 %i.eiw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2219: ; preds = %bb.agg
  %i.eix = load i64, ptr %i.ms, align 8, !tbaa !45
  %i.eiy = add i64 %i.eix, 1
  call void @_ZdlPvm(ptr noundef %i.eiv, i64 noundef %i.eiy) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2221: ; preds = %bb.agg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2219, %bb.agf
  %.pn700 = phi { ptr, i32 } [ %i.eit, %bb.agf ], [ %i.eiu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2219 ], [ %i.eiu, %bb.agg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #44
  br label %bb.agl

bb.agh:                                           ; preds = %bb.agb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2215
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %187, ptr noundef nonnull align 8 dereferenceable(112) %183)
          to label %bb.agi unwind label %bb.agj

bb.agi:                                           ; preds = %bb.agh
  %i.eiz = load ptr, ptr %187, align 8, !tbaa !90
  %i.eja = load i64, ptr %i.mt, align 8, !tbaa !141
  %i.ejb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.eiz, i64 noundef %i.eja)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2223 unwind label %bb.agk ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2223: ; preds = %bb.agi
  %i.ejc = load ptr, ptr %187, align 8, !tbaa !90 ; 2 uses
  %i.ejd = icmp eq ptr %i.ejc, %i.mu
  br i1 %i.ejd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2224: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2223
  %i.eje = load i64, ptr %i.mu, align 8, !tbaa !45
  %i.ejf = add i64 %i.eje, 1
  call void @_ZdlPvm(ptr noundef %i.ejc, i64 noundef %i.ejf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2226: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2224
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %183) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #44
  br label %bb.agm

bb.agj:                                           ; preds = %bb.agh
  %i.ejg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2229

bb.agk:                                           ; preds = %bb.agi
  %i.ejh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eji = load ptr, ptr %187, align 8, !tbaa !90 ; 2 uses
  %i.ejj = icmp eq ptr %i.eji, %i.mu
  br i1 %i.ejj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2227: ; preds = %bb.agk
  %i.ejk = load i64, ptr %i.mu, align 8, !tbaa !45
  %i.ejl = add i64 %i.ejk, 1
  call void @_ZdlPvm(ptr noundef %i.eji, i64 noundef %i.ejl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2229: ; preds = %bb.agk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2227, %bb.agj
  %.pn703 = phi { ptr, i32 } [ %i.ejg, %bb.agj ], [ %i.ejh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2227 ], [ %i.ejh, %bb.agk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #44
  br label %bb.agl

bb.agl:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2218, %bb.agc
  %.pn703.pn = phi { ptr, i32 } [ %.pn703, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2229 ], [ %i.eim, %bb.agc ], [ %.pn700, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2221 ], [ %.pn698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2218 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %183) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #44
  br label %common.resume

bb.agm:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2226, %bb.afw
  %i.ejm = load ptr, ptr %i.hp, align 8, !tbaa !328 ; 3 uses
  %i.ejn = load ptr, ptr %i.hq, align 8, !tbaa !328
  %i.ejo = icmp eq ptr %i.ejm, %i.ejn
  br i1 %i.ejo, label %bb.agn, label %bb.ags

bb.agn:                                           ; preds = %bb.agm
  %i.ejp = load ptr, ptr %i.af, align 8, !tbaa !278
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejp, i64 104
  %i.ejr = load ptr, ptr %i.ejq, align 8, !tbaa !177
  %i.ejs = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.ejt = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.eju = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ejt, ptr noundef nonnull @.str.219, i64 noundef 27) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #44
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %188, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %189)
          to label %bb.ago unwind label %bb.agq

bb.ago:                                           ; preds = %bb.agn
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.ejr, ptr noundef nonnull align 8 dereferenceable(112) %i.ejt, ptr noundef nonnull align 8 dereferenceable(32) %188)
          to label %bb.agp unwind label %bb.agr

bb.agp:                                           ; preds = %bb.ago
  %i.ejv = load ptr, ptr %188, align 8, !tbaa !90 ; 2 uses
  %i.ejw = icmp eq ptr %i.ejv, %i.mv
  br i1 %i.ejw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2230: ; preds = %bb.agp
  %i.ejx = load i64, ptr %i.mv, align 8, !tbaa !45
  %i.ejy = add i64 %i.ejx, 1
  call void @_ZdlPvm(ptr noundef %i.ejv, i64 noundef %i.ejy) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2232: ; preds = %bb.agp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2230
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #44
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.agq:                                           ; preds = %bb.agn
  %i.ejz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235

bb.agr:                                           ; preds = %bb.ago
  %i.eka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ekb = load ptr, ptr %188, align 8, !tbaa !90 ; 2 uses
  %i.ekc = icmp eq ptr %i.ekb, %i.mv
  br i1 %i.ekc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233: ; preds = %bb.agr
  %i.ekd = load i64, ptr %i.mv, align 8, !tbaa !45
  %i.eke = add i64 %i.ekd, 1
  call void @_ZdlPvm(ptr noundef %i.ekb, i64 noundef %i.eke) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2235: ; preds = %bb.agr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233, %bb.agq
  %.pn706 = phi { ptr, i32 } [ %i.ejz, %bb.agq ], [ %i.eka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2233 ], [ %i.eka, %bb.agr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %188) #44
  br label %common.resume

bb.ags:                                           ; preds = %bb.agm
  %i.ekf = load ptr, ptr %i.hr, align 8, !tbaa !329, !noalias !1492
  %i.ekg = icmp eq ptr %i.ejm, %i.ekf
  br i1 %i.ekg, label %bb.agt, label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2236

bb.agt:                                           ; preds = %bb.ags
  %i.ekh = load ptr, ptr %i.hs, align 8, !tbaa !330, !noalias !1492
  %i.eki = getelementptr inbounds i8, ptr %i.ekh, i64 -8
  %i.ekj = load ptr, ptr %i.eki, align 8, !tbaa !331
  %i.ekk = getelementptr inbounds nuw i8, ptr %i.ekj, i64 512
  br label %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2236

_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2236: ; preds = %bb.ags, %bb.agt
  %i.ekl = phi ptr [ %i.ekk, %bb.agt ], [ %i.ejm, %bb.ags ]
  %i.ekm = getelementptr inbounds i8, ptr %i.ekl, i64 -2
  %i.ekn = load i16, ptr %i.ekm, align 1, !tbaa !199
  call void @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ho)
  %i.eko = trunc i16 %i.ekn to i1
  br i1 %i.eko, label %_ZN12V3PreProcImp8statePopEv.exit.backedge, label %bb.agu

bb.agu:                                           ; preds = %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2236
  call void @_ZN12V3PreProcImp9parsingOnEv(ptr noundef nonnull align 8 dereferenceable(1032) %0)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

.thread2618:                                      ; preds = %bb.yz, %bb.sp, %bb.ee, %bb.acv, %bb.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #44
  %i.ekp = load ptr, ptr @V3PreLextext, align 8, !tbaa !27
  %i.ekq = getelementptr inbounds nuw i8, ptr %i.ekp, i64 1 ; 2 uses
  %i.ekr = load i32, ptr @V3PreLexleng, align 4, !tbaa !28
  %i.eks = sext i32 %i.ekr to i64
  %i.ekt = add nsw i64 %i.eks, -1                 ; 4 uses
  store ptr %i.ks, ptr %190, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  store i64 %i.ekt, ptr %i.d, align 8, !tbaa !35
  %i.eku = icmp ugt i64 %i.ekt, 15
  br i1 %i.eku, label %.noexc.i2239, label %._crit_edge.i.i2238

.noexc.i2239:                                     ; preds = %.thread2618
  %i.ekv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %190, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc2240 unwind label %bb.ahf ; 2 uses

.noexc2240:                                       ; preds = %.noexc.i2239
  store ptr %i.ekv, ptr %190, align 8, !tbaa !90
  %i.ekw = load i64, ptr %i.d, align 8, !tbaa !35
  store i64 %i.ekw, ptr %i.ks, align 8, !tbaa !45
  br label %._crit_edge.i.i2238

._crit_edge.i.i2238:                              ; preds = %.noexc2240, %.thread2618
  %i.ekx = phi ptr [ %i.ekv, %.noexc2240 ], [ %i.ks, %.thread2618 ] ; 2 uses
  switch i64 %i.ekt, label %bb.agw [
    i64 1, label %bb.agv
    i64 0, label %bb.agx
  ]

bb.agv:                                           ; preds = %._crit_edge.i.i2238
  %i.eky = load i8, ptr %i.ekq, align 1, !tbaa !45
  store i8 %i.eky, ptr %i.ekx, align 1, !tbaa !45
  br label %bb.agx

bb.agw:                                           ; preds = %._crit_edge.i.i2238
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ekx, ptr nonnull align 1 %i.ekq, i64 %i.ekt, i1 false)
  br label %bb.agx

bb.agx:                                           ; preds = %bb.agw, %bb.agv, %._crit_edge.i.i2238
  %i.ekz = load i64, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  store i64 %i.ekz, ptr %i.kt, align 8, !tbaa !141
  %i.ela = load ptr, ptr %190, align 8, !tbaa !90
  %i.elb = getelementptr inbounds nuw i8, ptr %i.ela, i64 %i.ekz
  store i8 0, ptr %i.elb, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44
  %i.elc = invoke noundef i32 @_ZN9V3PreProc5debugEv()
          to label %bb.agy unwind label %bb.ahg

bb.agy:                                           ; preds = %bb.agx
  %i.eld = icmp sgt i32 %i.elc, 3
  br i1 %i.eld, label %bb.agz, label %bb.aht, !prof !200

bb.agz:                                           ; preds = %bb.agy
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #44
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %191)
          to label %bb.aha unwind label %bb.ahh

bb.aha:                                           ; preds = %bb.agz
  %i.ele = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2243 unwind label %bb.ahi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2243: ; preds = %bb.aha
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %192, ptr noundef nonnull @.str.65, i32 noundef 1594)
          to label %bb.ahb unwind label %bb.ahj

bb.ahb:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2243
  %i.elf = load ptr, ptr %192, align 8, !tbaa !90
  %i.elg = load i64, ptr %i.ku, align 8, !tbaa !141
  %i.elh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef %i.elf, i64 noundef %i.elg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2245 unwind label %bb.ahk ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2245: ; preds = %bb.ahb
  %i.eli = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.elh, ptr noundef nonnull @.str.220, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2247 unwind label %bb.ahk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2247: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2245
  %i.elj = load ptr, ptr %190, align 8, !tbaa !90
  %i.elk = load i64, ptr %i.kt, align 8, !tbaa !141
  %i.ell = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.elh, ptr noundef %i.elj, i64 noundef %i.elk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2249 unwind label %bb.ahk ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2249: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2247
  %i.elm = load ptr, ptr %192, align 8, !tbaa !90 ; 2 uses
  %i.eln = icmp eq ptr %i.elm, %i.kv
  br i1 %i.eln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2250: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2249
  %i.elo = load i64, ptr %i.kv, align 8, !tbaa !45
  %i.elp = add i64 %i.elo, 1
  call void @_ZdlPvm(ptr noundef %i.elm, i64 noundef %i.elp) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2250
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %193, ptr noundef nonnull align 8 dereferenceable(112) %191)
          to label %bb.ahc unwind label %bb.ahl

bb.ahc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %194, ptr noundef nonnull align 8 dereferenceable(112) %191)
          to label %bb.ahd unwind label %bb.ahm

bb.ahd:                                           ; preds = %bb.ahc
  %i.elq = load i64, ptr %i.kw, align 8, !tbaa !141 ; 2 uses
  %i.elr = load ptr, ptr %193, align 8, !tbaa !90 ; 2 uses
  %i.els = getelementptr i8, ptr %i.elr, i64 %i.elq
  %i.elt = getelementptr i8, ptr %i.els, i64 -1
  %i.elu = load i8, ptr %i.elt, align 1, !tbaa !45
  %.not631 = icmp eq i8 %i.elu, 10
  %i.elv = load ptr, ptr %194, align 8, !tbaa !90 ; 2 uses
  %i.elw = icmp eq ptr %i.elv, %i.kx
  br i1 %i.elw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2254: ; preds = %bb.ahd
  %i.elx = icmp ult i64 %i.elq, 16
  call void @llvm.assume(i1 %i.elx)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2253: ; preds = %bb.ahd
  %i.ely = load i64, ptr %i.kx, align 8, !tbaa !45
  %i.elz = add i64 %i.ely, 1
  call void @_ZdlPvm(ptr noundef %i.elv, i64 noundef %i.elz) #45
  %.pre5349 = load ptr, ptr %193, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2253
  %i.ema = phi ptr [ %i.elr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2254 ], [ %.pre5349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2253 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #44
  %i.emb = icmp eq ptr %i.ema, %i.ky
  br i1 %i.emb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255
  %i.emc = load i64, ptr %i.ky, align 8, !tbaa !45
  %i.emd = add i64 %i.emc, 1
  call void @_ZdlPvm(ptr noundef %i.ema, i64 noundef %i.emd) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2256
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #44
  br i1 %.not631, label %bb.ahn, label %bb.ahe

bb.ahe:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2258
  %i.eme = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %191, i8 noundef signext 10)
          to label %bb.ahn unwind label %bb.ahi   ; 0 uses

bb.ahf:                                           ; preds = %.noexc.i2239
  %i.emf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2472

bb.ahg:                                           ; preds = %bb.aim, %bb.aib, %bb.aia, %bb.agx
  %i.emg = landingpad { ptr, i32 }
          cleanup
  br label %bb.anr

bb.ahh:                                           ; preds = %bb.agz
  %i.emh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahs

bb.ahi:                                           ; preds = %bb.aha, %bb.ahe
  %i.emi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahr

bb.ahj:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2243
  %i.emj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261

bb.ahk:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2247, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2245, %bb.ahb
  %i.emk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eml = load ptr, ptr %192, align 8, !tbaa !90 ; 2 uses
  %i.emm = icmp eq ptr %i.eml, %i.kv
  br i1 %i.emm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2259: ; preds = %bb.ahk
  %i.emn = load i64, ptr %i.kv, align 8, !tbaa !45
  %i.emo = add i64 %i.emn, 1
  call void @_ZdlPvm(ptr noundef %i.eml, i64 noundef %i.emo) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2261: ; preds = %bb.ahk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2259, %bb.ahj
  %.pn627 = phi { ptr, i32 } [ %i.emj, %bb.ahj ], [ %i.emk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2259 ], [ %i.emk, %bb.ahk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #44
  br label %bb.ahr

bb.ahl:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2252
end_hunk_4
begin_hunk_5_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
  %i.ffd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %236) #44
  %i.ffe = load ptr, ptr %235, align 8, !tbaa !90 ; 2 uses
  %i.fff = icmp eq ptr %i.ffe, %i.kp
  br i1 %i.fff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499: ; preds = %bb.aol
  %i.ffg = load i64, ptr %i.kp, align 8, !tbaa !45
  %i.ffh = add i64 %i.ffg, 1
  call void @_ZdlPvm(ptr noundef %i.ffe, i64 noundef %i.ffh) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501: ; preds = %bb.aol, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499, %bb.aok
  %.pn619 = phi { ptr, i32 } [ %i.ffc, %bb.aok ], [ %i.ffd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499 ], [ %i.ffd, %bb.aol ]
  call void @llvm.lifetime.end.p0(ptr nonnull %235) #44
  br label %bb.aoq

bb.aom:                                           ; preds = %bb.aog, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495
  call void @llvm.lifetime.start.p0(ptr nonnull %237) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %237, ptr noundef nonnull align 8 dereferenceable(112) %233)
          to label %bb.aon unwind label %bb.aoo

bb.aon:                                           ; preds = %bb.aom
  %i.ffi = load ptr, ptr %237, align 8, !tbaa !90
  %i.ffj = load i64, ptr %i.kq, align 8, !tbaa !141
  %i.ffk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ffi, i64 noundef %i.ffj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2503 unwind label %bb.aop ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2503: ; preds = %bb.aon
  %i.ffl = load ptr, ptr %237, align 8, !tbaa !90 ; 2 uses
  %i.ffm = icmp eq ptr %i.ffl, %i.kr
  br i1 %i.ffm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2506, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2504

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2504: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2503
  %i.ffn = load i64, ptr %i.kr, align 8, !tbaa !45
  %i.ffo = add i64 %i.ffn, 1
  call void @_ZdlPvm(ptr noundef %i.ffl, i64 noundef %i.ffo) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2506

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2506: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2504
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %233) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #44
  br label %bb.aor

bb.aoo:                                           ; preds = %bb.aom
  %i.ffp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2509

bb.aop:                                           ; preds = %bb.aon
  %i.ffq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ffr = load ptr, ptr %237, align 8, !tbaa !90 ; 2 uses
  %i.ffs = icmp eq ptr %i.ffr, %i.kr
  br i1 %i.ffs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2507: ; preds = %bb.aop
  %i.fft = load i64, ptr %i.kr, align 8, !tbaa !45
  %i.ffu = add i64 %i.fft, 1
  call void @_ZdlPvm(ptr noundef %i.ffr, i64 noundef %i.ffu) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2509

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2509: ; preds = %bb.aop, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2507, %bb.aoo
  %.pn622 = phi { ptr, i32 } [ %i.ffp, %bb.aoo ], [ %i.ffq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2507 ], [ %i.ffq, %bb.aop ]
  call void @llvm.lifetime.end.p0(ptr nonnull %237) #44
  br label %bb.aoq

bb.aoq:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498, %bb.aoh
  %.pn622.pn = phi { ptr, i32 } [ %.pn622, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2509 ], [ %i.fev, %bb.aoh ], [ %.pn619, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2501 ], [ %.pn617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2498 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %233) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %233) #44
  br label %common.resume

bb.aor:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2506, %bb.aob
  call void @_ZN12V3PreProcImp11undefineallEv(ptr noundef nonnull align 8 dereferenceable(1032) %0)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aos:                                           ; preds = %bb.yz, %bb.aeb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 16, ptr %i.a, align 1, !tbaa !274
  %i.ffv = load ptr, ptr %i.ce, align 8, !tbaa !276
  %i.ffw = getelementptr inbounds i8, ptr %i.ffv, i64 -1
  %.not.i.i.i2510 = icmp eq ptr %i.zq, %i.ffw
  br i1 %.not.i.i.i2510, label %bb.aou, label %bb.aot

bb.aot:                                           ; preds = %bb.aos
  store i8 16, ptr %i.zq, align 1, !tbaa !274
  %i.ffx = getelementptr inbounds nuw i8, ptr %i.zq, i64 1
  store ptr %i.ffx, ptr %i.bq, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2511

bb.aou:                                           ; preds = %bb.aos
  call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2511

_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2511: ; preds = %bb.aot, %bb.aou
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aov:                                           ; preds = %bb.aeb, %bb.aeb, %bb.aeb
  store i32 0, ptr %i.kk, align 8, !tbaa !268
  %i.ffy = load i32, ptr %i.bg, align 8, !tbaa !259
  %.not615 = icmp eq i32 %i.ffy, 0
  br i1 %.not615, label %_ZN12V3PreProcImp8statePopEv.exit.thread, label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.aow:                                           ; preds = %bb.yz, %bb.aeb
  %i.ffz = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.65, i32 noundef 1700) ; 0 uses
  %i.fga = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  call void @llvm.lifetime.start.p0(ptr nonnull %238) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %239) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %240) #44
  call void @_ZNSt8literals15string_literalsli1sB5cxx11EPKcm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %240, ptr noundef nonnull @.str.229, i64 noundef 33)
  %i.fgb = call noundef ptr @_ZN12V3PreProcImp9tokenNameEi(i32 noundef %.3148)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %239, ptr noundef nonnull align 8 dereferenceable(32) %240, ptr noundef nonnull %i.fgb)
          to label %bb.aox unwind label %bb.apa

bb.aox:                                           ; preds = %bb.aow
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %238, ptr noundef nonnull align 8 dereferenceable(32) %239, ptr noundef nonnull @.str)
          to label %bb.aoy unwind label %bb.apb

bb.aoy:                                           ; preds = %bb.aox
  %i.fgc = load ptr, ptr %238, align 8, !tbaa !90
  %i.fgd = getelementptr inbounds nuw i8, ptr %238, i64 8
  %i.fge = load i64, ptr %i.fgd, align 8, !tbaa !141
  %i.fgf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fga, ptr noundef %i.fgc, i64 noundef %i.fge)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2513 unwind label %bb.apc

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2513: ; preds = %bb.aoy
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fgf) #42
          to label %bb.aoz unwind label %bb.apc

bb.aoz:                                           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2513
  unreachable

bb.apa:                                           ; preds = %bb.aow
  %i.fgg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2519

bb.apb:                                           ; preds = %bb.aox
  %i.fgh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2516

bb.apc:                                           ; preds = %bb.aoy, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit2513
  %i.fgi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fgj = load ptr, ptr %238, align 8, !tbaa !90 ; 2 uses
  %i.fgk = getelementptr inbounds nuw i8, ptr %238, i64 16 ; 2 uses
  %i.fgl = icmp eq ptr %i.fgj, %i.fgk
  br i1 %i.fgl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2514

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2514: ; preds = %bb.apc
  %i.fgm = load i64, ptr %i.fgk, align 8, !tbaa !45
  %i.fgn = add i64 %i.fgm, 1
  call void @_ZdlPvm(ptr noundef %i.fgj, i64 noundef %i.fgn) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2516

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2516: ; preds = %bb.apc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2514, %bb.apb
  %.pn719 = phi { ptr, i32 } [ %i.fgh, %bb.apb ], [ %i.fgi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2514 ], [ %i.fgi, %bb.apc ] ; 2 uses
  %i.fgo = load ptr, ptr %239, align 8, !tbaa !90 ; 2 uses
  %i.fgp = getelementptr inbounds nuw i8, ptr %239, i64 16 ; 2 uses
  %i.fgq = icmp eq ptr %i.fgo, %i.fgp
  br i1 %i.fgq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2517: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2516
  %i.fgr = load i64, ptr %i.fgp, align 8, !tbaa !45
  %i.fgs = add i64 %i.fgr, 1
  call void @_ZdlPvm(ptr noundef %i.fgo, i64 noundef %i.fgs) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2519: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2516, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2517, %bb.apa
  %.pn719.pn = phi { ptr, i32 } [ %i.fgg, %bb.apa ], [ %.pn719, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2517 ], [ %.pn719, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2516 ]
  %i.fgt = load ptr, ptr %240, align 8, !tbaa !90 ; 2 uses
  %i.fgu = getelementptr inbounds nuw i8, ptr %240, i64 16 ; 2 uses
  %i.fgv = icmp eq ptr %i.fgt, %i.fgu
  br i1 %i.fgv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2520: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2519
  %i.fgw = load i64, ptr %i.fgu, align 8, !tbaa !45
  %i.fgx = add i64 %i.fgw, 1
  call void @_ZdlPvm(ptr noundef %i.fgt, i64 noundef %i.fgx) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2522

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2522: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2519, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2520
  call void @llvm.lifetime.end.p0(ptr nonnull %240) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %239) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %238) #44
  br label %common.resume

_ZN12V3PreProcImp8statePopEv.exit.thread:         ; preds = %bb.nh, %bb.in, %bb.aov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288, %_ZNK12V3PreProcImp5stateEv.exit754, %bb.i, %_ZNK12V3PreProcImp5isEofEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2477, %_ZN12V3PreProcImp8statePopEv.exit1492, %.loopexit2757
  %.3 = phi i32 [ 0, %.loopexit2757 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2477 ], [ 305, %_ZN12V3PreProcImp8statePopEv.exit1492 ], [ 304, %bb.nh ], [ 305, %_ZNK12V3PreProcImp5stateEv.exit754 ], [ %.3148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1288 ], [ 303, %bb.i ], [ %.3148, %bb.aov ], [ 304, %bb.in ], [ 0, %_ZNK12V3PreProcImp5isEofEv.exit ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(2) ptr @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE7emplaceIJS0_EEEDcDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !325
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -2
  %.not.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %1, align 1, !tbaa !199
  store i16 %i.f, ptr %i.b, align 1, !tbaa !199
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !324
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeI11VPreIfEntrySaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(2) %1)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !328, !noalias !1501
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %.pre.i, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329, !noalias !1501
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.e, label %_ZNSt5dequeI11VPreIfEntrySaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !330, !noalias !1501
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  br label %_ZNSt5dequeI11VPreIfEntrySaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt5dequeI11VPreIfEntrySaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.d, %bb.e
  %i.q = phi ptr [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -2
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3PreProcImp8statePopEv(ptr noundef nonnull align 8 dereferenceable(1032) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !326  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -1
  br label %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef 512) #45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !327
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !318
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169  ; 3 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !317
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.j, ptr %i.k, align 8, !tbaa !319
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 511
  br label %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !275
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !316
  %i.o = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %i.o, label %bb.d, label %bb.e, !prof !200

bb.d:                                             ; preds = %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !278
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !177
  %i.t = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.65, i32 noundef 247) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.488)
  tail call void @_ZN8FileLine15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(112) %i.v) #42
  unreachable

bb.e:                                             ; preds = %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1502 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -2
  br label %_ZNSt5dequeI11VPreIfEntrySaIS0_EE8pop_backEv.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef 512) #45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !341
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !330
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !331  ; 3 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !329
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.j, ptr %i.k, align 8, !tbaa !342
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 510
  br label %_ZNSt5dequeI11VPreIfEntrySaIS0_EE8pop_backEv.exit

_ZNSt5dequeI11VPreIfEntrySaIS0_EE8pop_backEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi ptr [ %i.e, %bb.b ], [ %i.l, %bb.c ]
  store ptr %storemerge.i, ptr %i.a, align 8, !tbaa !324
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3PreProcImp9parsingOnEv(ptr noundef nonnull align 8 dereferenceable(1032) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !259  ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !259
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.65, i32 noundef 228) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.489)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12V3PreProcImp11stateChangeENS_9ProcStateE(ptr noundef nonnull align 8 dereferenceable(1032) %0, i8 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -1
  br label %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 512) #45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !327
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !318
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !169  ; 3 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !317
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.k, ptr %i.l, align 8, !tbaa !319
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 511
  br label %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i

_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i: ; preds = %bb.c, %bb.b
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ] ; 5 uses
  store ptr %storemerge.i.i.i, ptr %i.b, align 8, !tbaa !275
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !316
  %i.p = icmp eq ptr %storemerge.i.i.i, %i.o
  br i1 %i.p, label %bb.d, label %_ZN12V3PreProcImp8statePopEv.exit, !prof !200

bb.d:                                             ; preds = %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !177
  %i.u = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.65, i32 noundef 247) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.488)
  tail call void @_ZN8FileLine15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(112) %i.w) #42
  unreachable

_ZN12V3PreProcImp8statePopEv.exit:                ; preds = %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1, !tbaa !274
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !276
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1
  %.not.i.i.i1 = icmp eq ptr %storemerge.i.i.i, %i.z
  br i1 %.not.i.i.i1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN12V3PreProcImp8statePopEv.exit
  store i8 %1, ptr %storemerge.i.i.i, align 1, !tbaa !274
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 1
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !275
  br label %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit

bb.f:                                             ; preds = %_ZN12V3PreProcImp8statePopEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_5
begin_hunk_6_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !1663
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !90, !alias.scope !1661, !noalias !1662
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !45, !alias.scope !1662, !noalias !1661
  store i64 %i.an, ptr %i.af, align 8, !tbaa !45, !alias.scope !1661, !noalias !1662
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !141, !alias.scope !1662, !noalias !1661
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !141, !alias.scope !1661, !noalias !1662
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !90, !alias.scope !1662, !noalias !1661
  store i64 0, ptr %i.ap, align 8, !tbaa !141, !alias.scope !1662, !noalias !1661
  store i8 0, ptr %i.ah, align 8, !tbaa !45, !alias.scope !1662, !noalias !1661
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !15

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1664)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !140, !alias.scope !1664, !noalias !1665
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !90, !alias.scope !1665, !noalias !1664 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !141, !alias.scope !1665, !noalias !1664 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !1666
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !90, !alias.scope !1664, !noalias !1665
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !45, !alias.scope !1665, !noalias !1664
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !45, !alias.scope !1664, !noalias !1665
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !141, !alias.scope !1665, !noalias !1664
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !141, !alias.scope !1664, !noalias !1665
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !90, !alias.scope !1665, !noalias !1664
  store i64 0, ptr %i.be, align 8, !tbaa !141, !alias.scope !1665, !noalias !1664
  store i8 0, ptr %i.aw, align 8, !tbaa !45, !alias.scope !1665, !noalias !1664
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !15

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !315
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #45
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !310
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !309
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !315
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #44 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #45
  invoke void @__cxa_rethrow() #42
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #51
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !318
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 9
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !316
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !317
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !319
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !316
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.q, %i.r
  %i.y = add i64 %i.x, %i.v
  %i.z = add i64 %i.y, %i.m
  %i.aa = sub i64 %i.z, %i.w
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !359
  %i.ae = load ptr, ptr %0, align 8, !tbaa !357
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.g, %i.af
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = sub i64 %i.ad, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.d, label %_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN12V3PreProcImp9ProcStateESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.ak = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !327
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !169
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !275
  %i.ao = load i8, ptr %1, align 1, !tbaa !274
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !274
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !327
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !318
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !169 ; 3 uses
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !317
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 512
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %i.at, align 8, !tbaa !319
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !275
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI11VPreIfEntrySaIS0_EE16_M_push_back_auxIJS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !330  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !330
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !328
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !329
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 1
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !342
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !328
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 4611686018427387903
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.246) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !356
  %i.ag = load ptr, ptr %0, align 8, !tbaa !354
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeI11VPreIfEntrySaIS0_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeI11VPreIfEntrySaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeI11VPreIfEntrySaIS0_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeI11VPreIfEntrySaIS0_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #50 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !341
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !331
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !324
  %i.aq = load i16, ptr %1, align 1, !tbaa !199
  store i16 %i.aq, ptr %i.ap, align 1, !tbaa !199
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !330
  store ptr %i.am, ptr %i.o, align 8, !tbaa !329
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !342
  store ptr %i.am, ptr %i.a, align 8, !tbaa !324
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI11VPreIfEntrySaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !341  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !355  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !356  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !354
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !308

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !331
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !331
  br label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !308

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !331
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !331
  br label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_allocate_mapEm.exit, !prof !200

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #42
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #42
  unreachable

_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #50 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !355 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !341
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !308

bb.m:                                             ; preds = %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseI11VPreIfEntrySaIS0_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !331
  store ptr %i.be, ptr %i.av, align 8, !tbaa !331
  br label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit24

_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit24:  ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !354
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !356
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #45
  store ptr %i.aq, ptr %0, align 8, !tbaa !354
  store i64 %i.am, ptr %i.k, align 8, !tbaa !356
  br label %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit

_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit:    ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPP11VPreIfEntryS2_ET0_T_S4_S3_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !330
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !331  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !329
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !342
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !330
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !331 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !329
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !342
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN8FileLine15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) #37 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !140
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !141
  store i8 0, ptr %i.a, align 8, !tbaa !45
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #44
  unreachable

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !45
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI14V3PreExprTokenSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !344  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
end_hunk_6
