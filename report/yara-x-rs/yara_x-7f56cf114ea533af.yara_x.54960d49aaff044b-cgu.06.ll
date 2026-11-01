Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvMs5U_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_15TooManyPatterns5build:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %.pn.pn.ph, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors15TooManyPatternsE3newBK_.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7gfv9tzbXmh_6yara_x.exit28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.af, ptr noundef nonnull align 8 dereferenceable(192) %i.i, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.aj = insertvalue { i64, ptr } { i64 36, ptr poison }, ptr %i.af, 1
  ret { i64, ptr } %i.aj

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread41:                                        ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 72, i64 noundef 8) #45
  br label %bb.l

bb.l:                                             ; preds = %.thread45, %.thread41
  %.pn44 = phi { ptr, i32 } [ %i.w, %.thread41 ], [ %i.v, %.thread45 ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #42
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l, %bb.c
  %.pn.pn.ph = phi { ptr, i32 } [ %i.q, %bb.c ], [ %.pn44, %bb.l ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscZgbKejcMGg_17annotate_snippets5level5LevelECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #42
          to label %common.resume unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler6c_rule(ptr noalias nofree noundef align 8 dereferenceable(3296) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i = alloca [40 x i8], align 8          ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 16 uses
  %i.n = alloca [24 x i8], align 8                ; 14 uses
  %i.o = alloca [24 x i8], align 8                ; 15 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [40 x i8], align 8                ; 14 uses
  %i.r = alloca [2 x i8], align 2                 ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.7180.i.i = alloca [3 x i8], align 1      ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.7163.i.i = alloca [3 x i8], align 1      ; 4 uses
  %.sroa.7153.i.i = alloca [3 x i8], align 1      ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 10 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [40 x i8], align 8               ; 5 uses
  %i.aq = alloca [48 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 5 uses
  %i.ax = alloca [72 x i8], align 8               ; 7 uses
  %i.ay = alloca [72 x i8], align 8               ; 4 uses
  %i.az = alloca [56 x i8], align 8               ; 5 uses
  %i.ba = alloca [56 x i8], align 8               ; 4 uses
  %i.bb = alloca [56 x i8], align 8               ; 5 uses
  %i.bc = alloca [72 x i8], align 8               ; 9 uses
  %i.bd = alloca [72 x i8], align 8               ; 8 uses
  %i.be = alloca [56 x i8], align 8               ; 5 uses
  %i.bf = alloca [56 x i8], align 8               ; 7 uses
  %i.bg = alloca [72 x i8], align 8               ; 7 uses
  %i.bh = alloca [56 x i8], align 8               ; 6 uses
  %i.bi = alloca [56 x i8], align 8               ; 6 uses
  %i.bj = alloca [72 x i8], align 8               ; 8 uses
  %i.bk = alloca [56 x i8], align 8               ; 5 uses
  %i.bl = alloca [56 x i8], align 8               ; 8 uses
  %i.bm = alloca [48 x i8], align 8               ; 16 uses
  %.sroa.7.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 13 uses
  %i.bo = alloca [40 x i8], align 8               ; 9 uses
  %i.bp = alloca [24 x i8], align 8               ; 18 uses
  %i.bq = alloca [24 x i8], align 8               ; 18 uses
  %i.br = alloca [32 x i8], align 8               ; 7 uses
  %i.bs = alloca [24 x i8], align 8               ; 5 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 10 uses
  %i.bv = alloca [64 x i8], align 8               ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 9 uses
  %i.bx = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.11190.i = alloca [40 x i8], align 8      ; 6 uses
  %.sroa.12.i = alloca [64 x i8], align 8         ; 6 uses
  %i.by = alloca [56 x i8], align 8               ; 10 uses
  %.sroa.0.sroa.6.i = alloca [40 x i8], align 8   ; 6 uses
  %.sroa.0.sroa.8.i = alloca [7 x i8], align 1    ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 17 uses
  %i.ca = alloca [56 x i8], align 8               ; 21 uses
  %i.cb = alloca [24 x i8], align 8               ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [112 x i8], align 8              ; 11 uses
  %i.cf = alloca [40 x i8], align 8               ; 6 uses
  %i.cg = alloca [112 x i8], align 8              ; 13 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [112 x i8], align 8              ; 11 uses
  %i.cj = alloca [40 x i8], align 8               ; 6 uses
  %i.ck = alloca [112 x i8], align 8              ; 13 uses
  %i.cl = alloca [56 x i8], align 8               ; 7 uses
  %i.cm = alloca [4 x i8], align 4                ; 4 uses
  %i.cn = alloca [48 x i8], align 8               ; 8 uses
  %i.co = alloca [4 x i8], align 4                ; 4 uses
  %i.cp = alloca [32 x i8], align 8               ; 6 uses
  %i.cq = alloca [24 x i8], align 8               ; 6 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  %i.cs = alloca [48 x i8], align 8               ; 8 uses
  %i.ct = alloca [4 x i8], align 4                ; 4 uses
  %i.cu = alloca [32 x i8], align 8               ; 6 uses
  %i.cv = alloca [24 x i8], align 8               ; 6 uses
  %i.cw = alloca [24 x i8], align 8               ; 6 uses
  %i.cx = alloca [24 x i8], align 8               ; 6 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [32 x i8], align 8               ; 5 uses
  %i.da = alloca [32 x i8], align 8               ; 5 uses
  %i.db = alloca [32 x i8], align 8               ; 4 uses
  %i.dc = alloca [24 x i8], align 8               ; 8 uses
  %i.dd = alloca [24 x i8], align 8               ; 9 uses
  %i.de = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.8293.i = alloca [16 x i8], align 8       ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 8 uses
  %i.dg = alloca [24 x i8], align 8               ; 6 uses
  %i.dh = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.8272.i = alloca [16 x i8], align 8       ; 6 uses
  %i.di = alloca [32 x i8], align 8               ; 8 uses
  %i.dj = alloca [24 x i8], align 8               ; 6 uses
  %i.dk = alloca [56 x i8], align 8               ; 4 uses
  %i.dl = alloca [24 x i8], align 8               ; 7 uses
  %i.dm = alloca [32 x i8], align 8               ; 10 uses
  %.sroa.0.i = alloca [26 x i8], align 8          ; 6 uses
  %.sroa.7.i = alloca [5 x i8], align 1           ; 6 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [56 x i8], align 8               ; 8 uses
  %i.dp = alloca [56 x i8], align 8               ; 8 uses
  %i.dq = alloca [24 x i8], align 8               ; 4 uses
  %i.dr = alloca [24 x i8], align 8               ; 9 uses
  %i.ds = alloca [24 x i8], align 8               ; 11 uses
  %i.dt = alloca [24 x i8], align 8               ; 6 uses
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [9 x i8], align 8                ; 5 uses
  %i.dw = alloca [8 x i8], align 8                ; 4 uses
  %i.dx = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.65.i4.i = alloca [16 x i8], align 8      ; 4 uses
  %i.dy = alloca [56 x i8], align 8               ; 6 uses
  %i.dz = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.65.i.i = alloca [16 x i8], align 8       ; 4 uses
  %i.ea = alloca [56 x i8], align 8               ; 6 uses
  %i.eb = alloca [24 x i8], align 8               ; 5 uses
  %i.ec = alloca [24 x i8], align 8               ; 4 uses
  %i.ed = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.610.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.ee = alloca [24 x i8], align 8               ; 6 uses
  %i.ef = alloca [24 x i8], align 8               ; 6 uses
  %i.eg = alloca [24 x i8], align 8               ; 5 uses
  %i.eh = alloca [9 x i8], align 8                ; 5 uses
  %i.ei = alloca [8 x i8], align 8                ; 4 uses
  %i.ej = alloca [16 x i8], align 8               ; 5 uses
  %i.ek = alloca [24 x i8], align 8               ; 7 uses
  %i.el = alloca [32 x i8], align 8               ; 6 uses
  %i.em = alloca [8 x i8], align 8                ; 4 uses
  %i.en = alloca [24 x i8], align 8               ; 4 uses
  %i.eo = alloca [16 x i8], align 8               ; 5 uses
  %i.ep = alloca [80 x i8], align 8               ; 4 uses
  %i.eq = alloca [80 x i8], align 8               ; 13 uses
  %i.er = alloca [80 x i8], align 8               ; 4 uses
  %i.es = alloca [80 x i8], align 8               ; 13 uses
  %i.et = alloca [80 x i8], align 8               ; 4 uses
  %i.eu = alloca [80 x i8], align 8               ; 13 uses
  %i.ev = alloca [24 x i8], align 8               ; 6 uses
  %i.ew = alloca [24 x i8], align 8               ; 6 uses
  %i.ex = alloca [32 x i8], align 8               ; 4 uses
  %i.ey = alloca [24 x i8], align 8               ; 6 uses
  %i.ez = alloca [16 x i8], align 8               ; 5 uses
  %i.fa = alloca [24 x i8], align 8               ; 4 uses
  %i.fb = alloca [24 x i8], align 8               ; 5 uses
  %i.fc = alloca [32 x i8], align 8               ; 5 uses
  %i.fd = alloca [168 x i8], align 8              ; 4 uses
  %i.fe = alloca [208 x i8], align 8              ; 10 uses
  %i.ff = alloca [24 x i8], align 8               ; 6 uses
  %i.fg = alloca [24 x i8], align 8               ; 9 uses
  %i.fh = alloca [48 x i8], align 8               ; 10 uses
  %i.fi = alloca [24 x i8], align 8               ; 6 uses
  %i.fj = alloca [24 x i8], align 8               ; 6 uses
  %i.fk = alloca [32 x i8], align 8               ; 4 uses
  %i.fl = alloca [24 x i8], align 8               ; 6 uses
  %i.fm = alloca [16 x i8], align 8               ; 5 uses
  %i.fn = alloca [24 x i8], align 8               ; 4 uses
  %i.fo = alloca [24 x i8], align 8               ; 5 uses
  %i.fp = alloca [32 x i8], align 8               ; 5 uses
  %i.fq = alloca [168 x i8], align 8              ; 4 uses
  %i.fr = alloca [208 x i8], align 8              ; 10 uses
  %i.fs = alloca [24 x i8], align 8               ; 6 uses
  %i.ft = alloca [16 x i8], align 8               ; 5 uses
  %i.fu = alloca [24 x i8], align 8               ; 4 uses
  %i.fv = alloca [32 x i8], align 8               ; 4 uses
  %i.fw = alloca [16 x i8], align 8               ; 5 uses
  %i.fx = alloca [24 x i8], align 8               ; 4 uses
  %i.fy = alloca [32 x i8], align 8               ; 4 uses
  %i.fz = alloca [72 x i8], align 8               ; 10 uses
  %i.ga = alloca [24 x i8], align 8               ; 6 uses
  %i.gb = alloca [16 x i8], align 8               ; 5 uses
  %i.gc = alloca [24 x i8], align 8               ; 4 uses
  %i.gd = alloca [24 x i8], align 8               ; 5 uses
  %i.ge = alloca [32 x i8], align 8               ; 5 uses
  %i.gf = alloca [168 x i8], align 8              ; 4 uses
  %i.gg = alloca [224 x i8], align 8              ; 14 uses
  %i.gh = alloca [24 x i8], align 8               ; 6 uses
  %i.gi = alloca [24 x i8], align 8               ; 6 uses
  %i.gj = alloca [24 x i8], align 8               ; 9 uses
  %i.gk = alloca [24 x i8], align 8               ; 11 uses
  %i.gl = alloca [160 x i8], align 8              ; 7 uses
  %i.gm = alloca [160 x i8], align 8              ; 6 uses
  %i.gn = alloca [8 x i8], align 8                ; 4 uses
  %i.go = alloca [8 x i8], align 8                ; 4 uses
  %i.gp = alloca [8 x i8], align 8                ; 4 uses
  %i.gq = alloca [24 x i8], align 8               ; 6 uses
  %i.gr = alloca [24 x i8], align 8               ; 6 uses
  %i.gs = alloca [24 x i8], align 8               ; 6 uses
  %i.gt = alloca [24 x i8], align 8               ; 6 uses
  %i.gu = alloca [24 x i8], align 8               ; 6 uses
  %i.gv = alloca [24 x i8], align 8               ; 6 uses
  %i.gw = alloca [24 x i8], align 8               ; 6 uses
  %i.gx = alloca [24 x i8], align 8               ; 6 uses
  %i.gy = alloca [24 x i8], align 8               ; 6 uses
  %i.gz = alloca [24 x i8], align 8               ; 6 uses
  %i.ha = alloca [112 x i8], align 8              ; 17 uses
  %i.hb = alloca [160 x i8], align 8              ; 4 uses
  %i.hc = alloca [160 x i8], align 8              ; 8 uses
  %i.hd = alloca [160 x i8], align 8              ; 7 uses
  %i.he = alloca [24 x i8], align 8               ; 5 uses
  %i.hf = alloca [24 x i8], align 8               ; 6 uses
  %i.hg = alloca [32 x i8], align 8               ; 7 uses
  %i.hh = alloca [32 x i8], align 8               ; 4 uses
  %i.hi = alloca [136 x i8], align 16             ; 8 uses
  %i.hj = alloca [152 x i8], align 8              ; 15 uses
  %i.hk = alloca [192 x i8], align 8              ; 12 uses
  %.sroa.11604 = alloca [184 x i8], align 8       ; 7 uses
  %i.hl = alloca [64 x i8], align 8               ; 14 uses
  %i.hm = alloca [24 x i8], align 8               ; 5 uses
  %i.hn = alloca [24 x i8], align 8               ; 5 uses
  %i.ho = alloca [24 x i8], align 8               ; 5 uses
  %i.hp = alloca [112 x i8], align 8              ; 14 uses
  %i.hq = alloca [152 x i8], align 8              ; 22 uses
  %i.hr = alloca [16 x i8], align 8               ; 6 uses
  %i.hs = alloca [24 x i8], align 8               ; 7 uses
  %i.ht = alloca [48 x i8], align 8               ; 12 uses
  %i.hu = alloca [24 x i8], align 8               ; 11 uses
  %i.hv = alloca [24 x i8], align 8               ; 11 uses
  %i.hw = alloca [16 x i8], align 8               ; 5 uses
  %i.hx = alloca [16 x i8], align 8               ; 5 uses
  %i.hy = alloca [16 x i8], align 8               ; 5 uses
  %i.hz = alloca [24 x i8], align 8               ; 11 uses
  %i.ia = alloca [32 x i8], align 8               ; 12 uses
  %i.ib = alloca [24 x i8], align 8               ; 7 uses
  %i.ic = alloca [56 x i8], align 8               ; 8 uses
  %i.id = alloca [24 x i8], align 8               ; 4 uses
  %i.ie = alloca [24 x i8], align 8               ; 7 uses
  %i.if = alloca [24 x i8], align 8               ; 4 uses
  %i.ig = alloca [40 x i8], align 8               ; 8 uses
  %i.ih = alloca [24 x i8], align 8               ; 7 uses
  %i.ii = alloca [56 x i8], align 8               ; 8 uses
  %i.ij = alloca [24 x i8], align 8               ; 6 uses
  %i.ik = alloca [24 x i8], align 8               ; 7 uses
  %i.il = alloca [24 x i8], align 8               ; 4 uses
  %i.im = alloca [24 x i8], align 8               ; 6 uses
  %i.in = alloca [24 x i8], align 8               ; 4 uses
  %i.io = alloca [16 x i8], align 16              ; 4 uses
  %i.ip = alloca [120 x i8], align 8              ; 5 uses
  %i.iq = alloca [16 x i8], align 8               ; 11 uses
  %i.ir = alloca [120 x i8], align 8              ; 5 uses
  %i.is = alloca [120 x i8], align 8              ; 26 uses
  %i.it = alloca [24 x i8], align 8               ; 15 uses
  %i.iu = alloca [64 x i8], align 8               ; 9 uses
  %i.iv = alloca [24 x i8], align 8               ; 10 uses
  %i.iw = alloca [8 x i8], align 8                ; 6 uses
  %i.ix = alloca [56 x i8], align 8               ; 8 uses
  %i.iy = alloca [24 x i8], align 8               ; 9 uses
  %i.iz = alloca [56 x i8], align 8               ; 15 uses
  %i.ja = alloca [32 x i8], align 8               ; 8 uses
  %i.jb = alloca [24 x i8], align 8               ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !noalias !4304
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 2 uses
  %i.je = load ptr, ptr %i.jc, align 8, !alias.scope !4304, !nonnull !9, !noundef !9 ; 10 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !4304, !noundef !9 ; 11 uses
  call void @_RNvXs9_NtCs7gfv9tzbXmh_6yara_x7symbolsNtB5_18StackedSymbolTableNtB5_12SymbolLookup6lookup(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.gm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.je, i64 noundef %i.jg), !noalias !4304
  %i.jh = load i64, ptr %i.gm, align 8, !range !55, !noalias !4304, !noundef !9
  %.not.i306 = icmp eq i64 %i.jh, -2
  br i1 %.not.i306, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !noalias !4304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.gl, ptr noundef nonnull align 8 dereferenceable(160) %i.gm, i64 160, i1 false), !noalias !4304
  %i.ji = load i64, ptr %i.gl, align 8, !range !35, !noalias !4304, !noundef !9 ; 2 uses
  %i.jj = icmp ne i64 %i.ji, -9223372036854775807
  tail call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp eq i64 %i.ji, -9223372036854775806
  br i1 %i.jk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.jm = load i32, ptr %i.jl, align 8, !noalias !4304, !noundef !9
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 2768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk), !noalias !4304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !noalias !4304
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gh, i64 noundef %i.jg, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 2768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj), !noalias !4304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gi), !noalias !4304
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.gi, i64 noundef %i.jg, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ah unwind label %bb.e

.body.i:                                          ; preds = %bb.bd, %bb.bb, %bb.aw, %bb.af, %bb.ad, %bb.x, %bb.e
  %.pn14.i = phi { ptr, i32 } [ %i.jp, %bb.e ], [ %i.lo, %bb.af ], [ %i.ll, %bb.x ], [ %i.ng, %bb.bd ], [ %.pn35.ph.i.i, %bb.ad ], [ %.pn19.ph.i.i, %bb.bb ], [ %i.nd, %bb.aw ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x7symbols6SymbolEBF_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.gl) #42
          to label %common.resume unwind label %bb.ag

bb.e:                                             ; preds = %.invoke.i, %bb.d, %bb.c
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.c
  %i.jq = load i64, ptr %i.gh, align 8, !range !13, !noalias !4304, !noundef !9
  %i.jr = trunc nuw i64 %i.jq to i1
  %i.js = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !range !18, !noalias !4304, !noundef !9 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  br i1 %i.jr, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !4304
  br label %.invoke.i

bb.h:                                             ; preds = %bb.f
  %i.jw = load ptr, ptr %i.ju, align 8, !noalias !4304, !nonnull !9, !noundef !9 ; 2 uses
  %i.jx = icmp ule i64 %i.jg, %i.jt
  tail call void @llvm.assume(i1 %i.jx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !4304
  %.not13.i = icmp eq i64 %i.jg, 0
  br i1 %.not13.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  store i64 %i.jt, ptr %i.gk, align 8, !noalias !4304
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %i.jw, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !4304
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i64 %i.jg, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !4304
  %i.jy = invoke { i32, i32 } @_RNvXsw_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_5IdentNtB5_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jc)
          to label %bb.k unwind label %bb.af      ; 2 uses

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jw, ptr nonnull align 1 %i.je, i64 %i.jg, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.jz = extractvalue { i32, i32 } %i.jy, 0      ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler6c_rule:bb.a
  store i64 0, ptr %i.yt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.is)
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 6 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %i.yw = load i8, ptr %i.yv, align 4, !range !46, !noundef !9
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 3287
  %i.yy = load i8, ptr %i.yx, align 1, !range !46, !noundef !9
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 6 uses
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 4 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  store ptr %i.yz, ptr %i.ze, align 8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  store ptr %i.yu, ptr %i.zf, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  store ptr %i.jd, ptr %i.zg, align 8
  store ptr null, ptr %i.is, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  store ptr %i.it, ptr %i.zh, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store ptr %i.za, ptr %i.zi, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %i.is, i64 88
  store ptr %i.zb, ptr %i.zj, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i64 0, ptr %i.zk, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store i32 0, ptr %i.zl, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.is, i64 112
  store i8 %i.yw, ptr %i.zm, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.is, i64 113
  store i8 %i.yy, ptr %i.zn, align 1
  %i.zo = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  store i64 0, ptr %i.zo, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  store i64 1, ptr %i.zp, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.is, i64 96
  store ptr %i.zc, ptr %i.zq, align 8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.is, i64 104
  store ptr %i.zd, ptr %i.zr, align 8
  %i.zs = invoke { i64, ptr } @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17patterns_from_ast(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.is, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %bb.en unwind label %bb.agm    ; 2 uses

bb.em:                                            ; preds = %bb.adf
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread646

bb.en:                                            ; preds = %bb.el
  %i.zt = extractvalue { i64, ptr } %i.zs, 0      ; 3 uses
  %.not184 = icmp eq i64 %i.zt, -1
  br i1 %.not184, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.zu = extractvalue { i64, ptr } %i.zs, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ir, ptr noundef nonnull align 8 dereferenceable(120) %i.is, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4349)
  call void @llvm.experimental.noalias.scope.decl(metadata !4350)
  %i.zv = load ptr, ptr %i.ir, align 8, !alias.scope !4351, !noundef !9 ; 3 uses
  %i.zw = icmp eq ptr %i.zv, null
  br i1 %i.zw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.zx = load i64, ptr %i.zv, align 8, !noalias !4352, !noundef !9
  %i.zy = add i64 %i.zx, -1                       ; 2 uses
  store i64 %i.zy, ptr %i.zv, align 8, !noalias !4352
  %i.zz = icmp eq i64 %i.zy, 0
  br i1 %i.zz, label %bb.eq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit

bb.eq:                                            ; preds = %bb.ep
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcDNtNtCs7gfv9tzbXmh_6yara_x7symbols12SymbolLookupEL_E9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.ir) #44
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit unwind label %bb.es

bb.er:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iq)
  invoke void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir23rule_condition_from_ast(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.iq, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.is, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
          to label %bb.fc unwind label %bb.agm

bb.es:                                            ; preds = %bb.eq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorEBH_(i64 %i.zt, ptr %i.zu) #42
          to label %.thread769 unwind label %bb.ef

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit: ; preds = %bb.ep, %bb.eo, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ir)
  invoke fastcc void @_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler16restore_snapshot(ptr noalias nofree noundef align 8 dereferenceable(3296) %0, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(56) %i.iz)
          to label %bb.et unwind label %bb.es

bb.et:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.it)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.it)
          to label %.thread658 unwind label %bb.ew

bb.ev:                                            ; preds = %bb.et
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir13PatternInRuleENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.it)
          to label %.thread743 unwind label %bb.ey

bb.ew:                                            ; preds = %bb.eu
  %i.aac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ex:                                            ; preds = %.thread769, %.thread646
  %.sroa.080.2 = phi i8 [ %.sroa.080.17, %.thread646 ], [ %.sroa.080.17773, %.thread769 ]
  %.pn233 = phi { ptr, i32 } [ %.pn230.pn, %.thread646 ], [ %.pn230.pn774, %.thread769 ] ; 2 uses
  %i.aad = trunc nuw i8 %.sroa.080.2 to i1
  br i1 %i.aad, label %.thread658, label %common.resume

bb.ey:                                            ; preds = %bb.ev, %bb.age
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %.thread658

.thread743:                                       ; preds = %bb.ev, %bb.age
  %.sroa.13.2 = phi ptr [ %.sroa.13.5716, %bb.age ], [ %i.zu, %bb.ev ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.5718, %bb.age ], [ %i.zt, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs7gfv9tzbXmh_6yara_x8compiler7IdentIdNtNtBI_5rules9MetaValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %bb.fa unwind label %bb.ez

bb.ez:                                            ; preds = %.thread743
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler7IdentIdNtNtBP_5rules9MetaValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %bb.agp unwind label %bb.fb

bb.fa:                                            ; preds = %.thread743
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs7gfv9tzbXmh_6yara_x8compiler7IdentIdNtNtBP_5rules9MetaValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %bb.agf unwind label %bb.ek

bb.fb:                                            ; preds = %bb.ez
  %i.aag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.fc:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ip)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ip, ptr noundef nonnull align 8 dereferenceable(120) %i.is, i64 120, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  call void @llvm.experimental.noalias.scope.decl(metadata !4354)
  %i.aah = load ptr, ptr %i.ip, align 8, !alias.scope !4355, !noundef !9 ; 3 uses
  %i.aai = icmp eq ptr %i.aah, null
  br i1 %i.aai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit393, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aaj = load i64, ptr %i.aah, align 8, !noalias !4356, !noundef !9
  %i.aak = add i64 %i.aaj, -1                     ; 2 uses
  store i64 %i.aak, ptr %i.aah, align 8, !noalias !4356
  %i.aal = icmp eq i64 %i.aak, 0
  br i1 %i.aal, label %bb.fe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit393

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcDNtNtCs7gfv9tzbXmh_6yara_x7symbols12SymbolLookupEL_E9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.ip) #44
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit393 unwind label %.loopexit.split-lp872

.body426:                                         ; preds = %.loopexit871, %.loopexit.split-lp872, %bb.gm, %.thread.i404, %.body
  %.sroa.080.4 = phi i8 [ %.sroa.080.7, %.body ], [ 1, %bb.gm ], [ 1, %.thread.i404 ], [ 1, %.loopexit871 ], [ %.sroa.078.3.ph, %.loopexit.split-lp872 ] ; 2 uses
  %.sroa.078.2 = phi i8 [ %.sroa.078.5, %.body ], [ 1, %bb.gm ], [ 1, %.thread.i404 ], [ 1, %.loopexit871 ], [ %.sroa.078.3.ph, %.loopexit.split-lp872 ] ; 2 uses
  %.pn226.pn.pn = phi { ptr, i32 } [ %.pn214, %.body ], [ %i.aey, %bb.gm ], [ %.pn11.i, %.thread.i404 ], [ %lpad.loopexit873, %.loopexit871 ], [ %lpad.loopexit.split-lp874, %.loopexit.split-lp872 ] ; 2 uses
  %i.aam = load i64, ptr %i.iq, align 8, !range !45, !noundef !9 ; 2 uses
  %.not789 = icmp eq i64 %i.aam, -1
  br i1 %.not789, label %.thread646, label %bb.agl

.loopexit871:                                     ; preds = %bb.fs, %.critedge.i423
  %lpad.loopexit873 = landingpad { ptr, i32 }
          cleanup
  br label %.body426

.loopexit.split-lp872:                            ; preds = %bb.go, %bb.gp, %bb.gu, %bb.gv, %bb.gw, %bb.md, %bb.adc, %bb.fe
  %.sroa.078.3.ph = phi i8 [ 1, %bb.fe ], [ 1, %bb.gp ], [ 1, %bb.gv ], [ 1, %bb.gu ], [ 1, %bb.gw ], [ 0, %bb.md ], [ %.sroa.074.4, %bb.adc ], [ 1, %bb.go ] ; 2 uses
  %lpad.loopexit.split-lp874 = landingpad { ptr, i32 }
          cleanup
  br label %.body426

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit393: ; preds = %bb.fd, %bb.fc, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ip)
  %i.aan = load ptr, ptr %i.ys, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.aao = load i64, ptr %i.yt, align 8, !noundef !9 ; 2 uses
  %.idx2003 = mul nuw nsw i64 %i.aao, 192
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 %.idx2003
  %i.aaq = icmp eq i64 %i.aao, 0
  br i1 %i.aaq, label %._crit_edge1985, label %.lr.ph1984

.lr.ph1984:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit393
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 3286
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 2784 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.abb = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 2000
  br label %bb.ff

bb.ff:                                            ; preds = %.lr.ph1984, %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit
  %.sroa.029.01983 = phi ptr [ %i.aan, %.lr.ph1984 ], [ %i.abd, %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit ] ; 12 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 192 ; 2 uses
  %i.abe = load i64, ptr %.sroa.029.01983, align 8, !range !33, !alias.scope !4357, !noundef !9 ; 4 uses
  %i.abf = call i64 @llvm.usub.sat.i64(i64 %i.abe, i64 1)
  %i.abg = icmp samesign ult i64 %i.abe, 2
  br i1 %i.abg, label %bb.fg, label %.sink.split

._crit_edge1985:                                  ; preds = %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7context14CompileContextEBH_.exit393
  %i.abh = load i64, ptr %i.iq, align 8, !range !45, !noundef !9 ; 5 uses
  %.not189 = icmp eq i64 %i.abh, -1
  %i.abi = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  br i1 %.not189, label %bb.gt, label %bb.gs

.sink.split:                                      ; preds = %bb.ff
  %i.abj = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 8
  %i.abk = load i64, ptr %i.abj, align 8, !range !13, !alias.scope !4357, !noundef !9
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.sink.split
  %.sroa.0.0.i.i394 = phi i64 [ %i.abe, %bb.ff ], [ %i.abk, %.sink.split ]
  %.not185.not = icmp eq i64 %.sroa.0.0.i.i394, 0
  br i1 %.not185.not, label %bb.fh, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit

_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit: ; preds = %.lr.ph.i401, %bb.fp, %bb.fn, %bb.fo, %bb.fl, %bb.fk, %bb.fm, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler8warnings7WarningE8push_mutBL_.exit.i415, %bb.fr, %.critedge.i423, %bb.fh, %bb.fg
  %i.abl = icmp eq ptr %i.abd, %i.aap
  br i1 %i.abl, label %._crit_edge1985, label %bb.ff

bb.fh:                                            ; preds = %bb.fg
  %i.abm = icmp samesign ult i64 %i.abe, 2
  %..i = select i1 %i.abm, i64 144, i64 136
  %i.abn = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 %..i
  %.val277 = load i16, ptr %i.abn, align 2, !noundef !9
  %i.abo = and i16 %.val277, 120
  %.not = icmp eq i16 %i.abo, 0
  br i1 %.not, label %bb.fi, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit

bb.fi:                                            ; preds = %bb.fh
  %i.abp = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 56 ; 3 uses
  switch i64 %i.abf, label %default.unreachable [
    i64 0, label %bb.fj
    i64 1, label %bb.fk
    i64 2, label %bb.fl
  ]

bb.fj:                                            ; preds = %bb.fi
  %i.abq = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 64
  br label %select.unfold2599

bb.fk:                                            ; preds = %bb.fi
  %i.abr = load i64, ptr %i.abp, align 8, !range !34, !alias.scope !4358, !noundef !9 ; 2 uses
  %i.abs = icmp ne i64 %i.abr, 4
  call void @llvm.assume(i1 %i.abs)
  %i.abt = icmp eq i64 %i.abr, 3
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 64
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 72
  br i1 %i.abt, label %select.unfold2599, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit

bb.fl:                                            ; preds = %bb.fi
  %i.abw = load i64, ptr %i.abp, align 8, !range !34, !alias.scope !4359, !noundef !9 ; 2 uses
  %i.abx = icmp ne i64 %i.abw, 4
  call void @llvm.assume(i1 %i.abx)
  %i.aby = icmp eq i64 %i.abw, 3
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 64
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.029.01983, i64 72
  br i1 %i.aby, label %select.unfold2599, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit

select.unfold2599:                                ; preds = %bb.fl, %bb.fk, %bb.fj
  %.sroa.8.0.in = phi ptr [ %i.abq, %bb.fj ], [ %i.abv, %bb.fk ], [ %i.aca, %bb.fl ]
  %.sroa.032.0.in = phi ptr [ %i.abp, %bb.fj ], [ %i.abu, %bb.fk ], [ %i.abz, %bb.fl ]
  %.sroa.8.0 = load i64, ptr %.sroa.8.0.in, align 8 ; 3 uses
  %i.acb = icmp eq i64 %.sroa.8.0, 1
  br i1 %i.acb, label %_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler21is_slow_pattern_bytes.exit, label %bb.fm

bb.fm:                                            ; preds = %select.unfold2599
  %.sroa.032.0 = load ptr, ptr %.sroa.032.0.in, align 8, !nonnull !9 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 %.sroa.8.0
  %.not.i400 = icmp eq i64 %.sroa.8.0, 0
  br i1 %.not.i400, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit, label %.lr.ph.i401

.lr.ph.i401:                                      ; preds = %bb.fm, %bb.fq
  %.sroa.01.09.i = phi i1 [ %.sroa.01.1.i, %bb.fq ], [ true, %bb.fm ]
  %.sroa.02.08.i = phi i1 [ %.sroa.02.1.i, %bb.fq ], [ true, %bb.fm ]
  %.sroa.03.07.i = phi i1 [ %.sroa.03.1.i, %bb.fq ], [ true, %bb.fm ]
  %.sroa.04.06.i = phi ptr [ %i.acd, %bb.fq ], [ %.sroa.032.0, %bb.fm ] ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 1 ; 2 uses
  %i.ace = load i8, ptr %.sroa.04.06.i, align 1, !alias.scope !4360, !noundef !9
  switch i8 %i.ace, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit [
    i8 0, label %bb.fn
    i8 -112, label %bb.fo
    i8 -1, label %bb.fp
  ]

bb.fn:                                            ; preds = %.lr.ph.i401
  br i1 %.sroa.01.09.i, label %bb.fq, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit

bb.fo:                                            ; preds = %.lr.ph.i401
  br i1 %.sroa.02.08.i, label %bb.fq, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit

bb.fp:                                            ; preds = %.lr.ph.i401
  br i1 %.sroa.03.07.i, label %bb.fq, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn
  %.sroa.03.1.i = phi i1 [ false, %bb.fn ], [ false, %bb.fo ], [ true, %bb.fp ]
  %.sroa.02.1.i = phi i1 [ false, %bb.fn ], [ true, %bb.fo ], [ false, %bb.fp ]
  %.sroa.01.1.i = phi i1 [ true, %bb.fn ], [ false, %bb.fo ], [ false, %bb.fp ]
  %i.acf = icmp eq ptr %i.acd, %i.acc
  br i1 %i.acf, label %_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler21is_slow_pattern_bytes.exit, label %.lr.ph.i401

_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler21is_slow_pattern_bytes.exit: ; preds = %bb.fq, %select.unfold2599
  %i.acg = load i8, ptr %i.aar, align 2, !range !46, !noundef !9
  %i.ach = trunc nuw i8 %i.acg to i1
  br i1 %i.ach, label %bb.go, label %bb.fr

bb.fr:                                            ; preds = %_RNvMs4_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler21is_slow_pattern_bytes.exit
  %i.aci = getelementptr i8, ptr %.sroa.029.01983, i64 176
  %i.acj = load <2 x i32>, ptr %i.aci, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4361)
  %i.ack = load i64, ptr %i.aat, align 8, !alias.scope !4361, !noundef !9 ; 2 uses
  %i.acl = icmp ult i64 %i.ack, 576460752303423488
  call void @llvm.assume(i1 %i.acl)
  %i.acm = load i64, ptr %i.za, align 8, !range !13, !alias.scope !4361, !noundef !9
  %i.acn = trunc nuw i64 %i.acm to i1
  %i.aco = load i64, ptr %i.aau, align 8, !alias.scope !4361
  %i.acp = icmp uge i64 %i.ack, %i.aco
  %.sroa.0.0.not.i403 = select i1 %i.acn, i1 %i.acp, i1 false
  br i1 %.sroa.0.0.not.i403, label %_RINvMsC_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Warnings3addNCNvMs5_B6_NtB6_8Compiler6c_rules3_0EB8_.exit, label %bb.fs

.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i419, %.lr.ph.i418, %.lr.ph.i.i.i410, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i, %.noexc424
  %lpad.loopexit.split-lp3921 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i404

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !4361
  %i.acq = load <2 x i32>, ptr %i.aav, align 8, !noalias !4361
  store <2 x i32> %i.acq, ptr %i.eo, align 8, !noalias !4361
  store <2 x i32> %i.acj, ptr %2, align 8, !noalias !4361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !4361
  store i64 -1, ptr %i.en, align 8, !noalias !4361
  %i.acr = invoke fastcc ptr @_RNvMs1p_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB6_11SlowPattern5build(ptr noundef nonnull align 8 %i.yz, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable(16) %i.eo, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.en)
          to label %.noexc424 unwind label %.loopexit871 ; 8 uses

.noexc424:                                        ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !4361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !4361
  %i.acs = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aaw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 12)
          to label %bb.ft unwind label %.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ft:                                            ; preds = %.noexc424
  br i1 %i.acs, label %.critedge.i423, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !4362)
  %i.act = load i64, ptr %i.aax, align 8, !alias.scope !4363, !noundef !9
  %i.acu = icmp eq i64 %i.act, 0
  br i1 %i.acu, label %.thread23.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.acv = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneReECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aaz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef range(i64 11, 26) 12) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4364)
  call void @llvm.experimental.noalias.scope.decl(metadata !4365)
  %i.acw = lshr i64 %i.acv, 57
  %i.acx = trunc nuw nsw i64 %i.acw to i8
  %i.acy = load i64, ptr %i.aba, align 8, !alias.scope !4366, !noundef !9 ; 2 uses
  %i.acz = load ptr, ptr %i.aay, align 8, !alias.scope !4366, !nonnull !9, !noundef !9 ; 2 uses
  %i.ada = insertelement <16 x i8> poison, i8 %i.acx, i64 0
  %i.adb = shufflevector <16 x i8> %i.ada, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fy, %bb.fv
  %.sroa.9.0.i.i.i.i405 = phi i64 [ 0, %bb.fv ], [ %i.ads, %bb.fy ]
  %.pn.i.i.i406 = phi i64 [ %i.acv, %bb.fv ], [ %i.adt, %bb.fy ]
  %.sroa.01.0.i.i.i.i407 = and i64 %.pn.i.i.i406, %i.acy ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 %.sroa.01.0.i.i.i.i407
  %.sroa.0.0.copyload.i24.i.i.i408 = load <16 x i8>, ptr %i.adc, align 1, !noalias !4367 ; 2 uses
  %i.add = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i408, %i.adb
  %i.ade = bitcast <16 x i1> %i.add to i16        ; 2 uses
  %.not.i.not30.i.i.i409 = icmp eq i16 %i.ade, 0
  br i1 %.not.i.not30.i.i.i409, label %._crit_edge.i.i.i414, label %.lr.ph.i.i.i410

.lr.ph.i.i.i410:                                  ; preds = %bb.fw, %bb.fx
  %.sroa.06.0.i31.i.i.i411 = phi i16 [ %i.adr, %bb.fx ], [ %i.ade, %bb.fw ] ; 3 uses
  %i.adf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i411, i1 true)
  %i.adg = zext nneg i16 %i.adf to i64
  %i.adh = add i64 %.sroa.01.0.i.i.i.i407, %i.adg
  %i.adi = and i64 %i.adh, %i.acy
  %i.adj = sub nsw i64 0, %i.adi
  %i.adk = getelementptr inbounds [48 x i8], ptr %i.acz, i64 %i.adj ; 3 uses
  %i.adl = getelementptr inbounds i8, ptr %i.adk, i64 -48
  %i.adm = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef range(i64 11, 26) 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.adl)
          to label %.noexc.i412 unwind label %.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i412:                                      ; preds = %.lr.ph.i.i.i410
  br i1 %i.adm, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBS_3vec3VecNtCsfF8zpZz1lvn_13yara_x_parser4SpanENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3geteECs7gfv9tzbXmh_6yara_x.exit.i416, label %bb.fx, !prof !10

._crit_edge.i.i.i414:                             ; preds = %bb.fx, %bb.fw
  %i.adn = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i408, splat (i8 -1)
  %i.ado = bitcast <16 x i1> %i.adn to i16
  %i.adp = icmp eq i16 %i.ado, 0
  br i1 %i.adp, label %bb.fy, label %.thread23.i, !prof !11

bb.fx:                                            ; preds = %.noexc.i412
  %i.adq = add i16 %.sroa.06.0.i31.i.i.i411, -1
  %i.adr = and i16 %i.adq, %.sroa.06.0.i31.i.i.i411 ; 2 uses
  %.not.i.not.i.i.i413 = icmp eq i16 %i.adr, 0
  br i1 %.not.i.not.i.i.i413, label %._crit_edge.i.i.i414, label %.lr.ph.i.i.i410

bb.fy:                                            ; preds = %._crit_edge.i.i.i414
  %i.ads = add i64 %.sroa.9.0.i.i.i.i405, 16      ; 2 uses
  %i.adt = add i64 %.sroa.01.0.i.i.i.i407, %i.ads
  br label %bb.fw

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBS_3vec3VecNtCsfF8zpZz1lvn_13yara_x_parser4SpanENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3geteECs7gfv9tzbXmh_6yara_x.exit.i416: ; preds = %.noexc.i412
  %i.adu = getelementptr inbounds i8, ptr %i.adk, i64 -16
  %i.adv = load ptr, ptr %i.adu, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.adw = getelementptr inbounds i8, ptr %i.adk, i64 -8
  %i.adx = load i64, ptr %i.adw, align 8, !noundef !9 ; 2 uses
  %.idx.i417 = shl nuw nsw i64 %i.adx, 3
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.idx.i417
  %i.adz = icmp eq i64 %i.adx, 0
  br i1 %i.adz, label %.thread23.i, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBS_3vec3VecNtCsfF8zpZz1lvn_13yara_x_parser4SpanENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3geteECs7gfv9tzbXmh_6yara_x.exit.i416
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acr) ]
  %i.aea = getelementptr inbounds nuw i8, ptr %i.acr, i64 32
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acr, i64 40 ; 2 uses
  %i.aec = load i64, ptr %i.aeb, align 8, !noalias !4368, !noundef !9 ; 2 uses
  %i.aed = icmp eq i64 %i.aec, 0
  br i1 %i.aed, label %.thread23.i, label %.lr.ph33.split.i

.lr.ph33.splitthread-pre-split.i:                 ; preds = %._crit_edge.i421
  %.pr.i422 = load i64, ptr %i.aeb, align 8, !noalias !4368
  br label %.lr.ph33.split.i

.lr.ph33.split.i:                                 ; preds = %.lr.ph33.i, %.lr.ph33.splitthread-pre-split.i
  %i.aee = phi i64 [ %.pr.i422, %.lr.ph33.splitthread-pre-split.i ], [ %i.aec, %.lr.ph33.i ] ; 2 uses
  %.sroa.08.032.i = phi ptr [ %i.aef, %.lr.ph33.splitthread-pre-split.i ], [ %i.adv, %.lr.ph33.i ] ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.sroa.08.032.i, i64 8 ; 2 uses
  %i.aeg = load ptr, ptr %i.aea, align 8, !noalias !4368, !nonnull !9, !noundef !9 ; 2 uses
  %.idx35.i = mul nuw nsw i64 %i.aee, 72
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %.idx35.i
  %i.aei = icmp eq i64 %i.aee, 0
  br i1 %i.aei, label %._crit_edge.i421, label %.lr.ph.i418

.lr.ph.i418:                                      ; preds = %.lr.ph33.split.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit.i420
  %.sroa.06.031.i = phi ptr [ %i.aej, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit.i420 ], [ %i.aeg, %.lr.ph33.split.i ] ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.06.031.i, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !4361
  invoke fastcc void @_RNCNvMs0_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB7_6Report6labels0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ep, ptr nonnull %i.acr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.06.031.i)
          to label %bb.fz unwind label %.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i421:                                 ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit.i420, %.lr.ph33.split.i
  %i.aek = icmp eq ptr %i.aef, %i.ady
  br i1 %i.aek, label %.thread23.i, label %.lr.ph33.splitthread-pre-split.i, !llvm.loop !3981

bb.fz:                                            ; preds = %.lr.ph.i418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !4361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.eq, ptr noundef nonnull align 8 dereferenceable(80) %i.ep, i64 80, i1 false), !noalias !4361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !4361
  %i.ael = invoke noundef zeroext i1 @_RNvMs1_CsfF8zpZz1lvn_13yara_x_parserNtB5_4Span8contains(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.08.032.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.abb)
          to label %bb.gb unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aem = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.eq) #42
          to label %.thread.i404 unwind label %bb.gk

bb.gb:                                            ; preds = %bb.fz
  %i.aen = load i64, ptr %i.eq, align 8, !range !20, !noalias !4361, !noundef !9
  %i.aeo = icmp eq i64 %i.aen, -1                 ; 2 uses
  br i1 %i.ael, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.aeo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit.i420, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i419 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aep = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.eq)
          to label %.thread.i404 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aeq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i419: ; preds = %bb.gd
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit.i420 unwind label %.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gg:                                            ; preds = %bb.gb
  br i1 %i.aeo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit34.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aer = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.eq)
          to label %.thread.i404 unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aes = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i: ; preds = %bb.gh
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.eq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit34.i unwind label %.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit.i420: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i.i419, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !4361
  %i.aet = icmp eq ptr %i.aej, %i.aeh
  br i1 %i.aet, label %._crit_edge.i421, label %.lr.ph.i418

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5LabelEBH_.exit34.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x.exit.i.i29.i, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !4361
  br label %.critedge.i423

bb.gk:                                            ; preds = %.thread.i404, %bb.ga
  %i.aeu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

.thread23.i:                                      ; preds = %._crit_edge.i.i.i414, %._crit_edge.i421, %.lr.ph33.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBS_3vec3VecNtCsfF8zpZz1lvn_13yara_x_parser4SpanENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3geteECs7gfv9tzbXmh_6yara_x.exit.i416, %bb.fu
  %i.aev = load i64, ptr %i.aat, align 8, !alias.scope !4369, !noundef !9 ; 3 uses
  %i.aew = load i64, ptr %i.aas, align 8, !range !14, !alias.scope !4369, !noundef !9
end_hunk_1
