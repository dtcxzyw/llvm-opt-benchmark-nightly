Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.099?download=true
inline.NumInlined: 735
inline.NumDeleted: 302
begin_hunk_0_@_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed:bb.a
bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call noundef ptr @calloc(i64 noundef 1, i64 noundef %0) #29
  br label %_RNvXCsit95LoHP2be_17tikv_jemallocatorNtB2_8JemallocNtNtNtCskKLDkoKarTP_4core5alloc6global11GlobalAlloc12alloc_zeroed.exit

_RNvXCsit95LoHP2be_17tikv_jemallocatorNtB2_8JemallocNtNtNtCskKLDkoKarTP_4core5alloc6global11GlobalAlloc12alloc_zeroed.exit: ; preds = %bb.c, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  ret ptr %.sroa.02.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvCsl8OoimOLbh_6qdrant4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [320 x i8], align 8               ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [304 x i8], align 8               ; 4 uses
  %i.k = alloca [144 x i8], align 8               ; 7 uses
  %i.l = alloca [144 x i8], align 8               ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [80 x i8], align 8                ; 16 uses
  %.sroa.740.i = alloca [16 x i8], align 8        ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 19 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [1 x i8], align 1                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 9 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [32 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [40 x i8], align 8               ; 4 uses
  %i.as = alloca [40 x i8], align 8               ; 4 uses
  %i.at = alloca [40 x i8], align 8               ; 4 uses
  %i.au = alloca [40 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [112 x i8], align 8              ; 4 uses
  %i.ax = alloca [120 x i8], align 8              ; 4 uses
  %i.ay = alloca [40 x i8], align 8               ; 4 uses
  %i.az = alloca [88 x i8], align 8               ; 4 uses
  %i.ba = alloca [88 x i8], align 8               ; 4 uses
  %i.bb = alloca [24 x i8], align 8               ; 22 uses
  %i.bc = alloca [24 x i8], align 8               ; 23 uses
  %i.bd = alloca [112 x i8], align 8              ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 28 uses
  %i.bf = alloca [88 x i8], align 8               ; 26 uses
  %i.bg = alloca [88 x i8], align 8               ; 20 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [712 x i8], align 8              ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 3 uses
  %.sroa.15.sroa.2.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.15.sroa.3.i = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.15.sroa.4.i = alloca [88 x i8], align 8  ; 4 uses
  %.sroa.15.sroa.5.i = alloca [88 x i8], align 8  ; 4 uses
  %i.bk = alloca [56 x i8], align 8               ; 15 uses
  %i.bl = alloca [8 x i8], align 8                ; 5 uses
  %i.bm = alloca [112 x i8], align 8              ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [16 x i8], align 1               ; 4 uses
  %i.br = alloca [16 x i8], align 1               ; 4 uses
  %i.bs = alloca [9 x i8], align 1                ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [64 x i8], align 8               ; 4 uses
  %i.by = alloca [2160 x i8], align 8             ; 7 uses
  %i.bz = alloca [40 x i8], align 8               ; 7 uses
  %i.ca = alloca [88 x i8], align 8               ; 5 uses
  %i.cb = alloca [24 x i8], align 8               ; 4 uses
  %i.cc = alloca [48 x i8], align 8               ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 4 uses
  %i.ce = alloca [2160 x i8], align 8             ; 7 uses
  %i.cf = alloca [40 x i8], align 8               ; 7 uses
  %i.cg = alloca [24 x i8], align 8               ; 4 uses
  %i.ch = alloca [832 x i8], align 8              ; 6 uses
  %i.ci = alloca [56 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [56 x i8], align 8               ; 4 uses
  %i.cm = alloca [24 x i8], align 8               ; 4 uses
  %i.cn = alloca [96 x i8], align 16              ; 4 uses
  %i.co = alloca [2048 x i8], align 16            ; 6 uses
  %i.cp = alloca [2048 x i8], align 8             ; 4 uses
  %i.cq = alloca [8 x i8], align 8                ; 4 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [40 x i8], align 8               ; 8 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.8567 = alloca [16 x i8], align 8         ; 7 uses
  %i.cw = alloca [32 x i8], align 8               ; 10 uses
  %i.cx = alloca [40 x i8], align 8               ; 8 uses
  %i.cy = alloca [2088 x i8], align 8             ; 9 uses
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [48 x i8], align 8               ; 7 uses
  %i.db = alloca [48 x i8], align 8               ; 4 uses
  %i.dc = alloca [24 x i8], align 8               ; 6 uses
  %i.dd = alloca [24 x i8], align 8               ; 4 uses
  %i.de = alloca [16 x i8], align 8               ; 6 uses
  %i.df = alloca [2048 x i8], align 8             ; 5 uses
  %i.dg = alloca [2064 x i8], align 8             ; 6 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [48 x i8], align 8               ; 7 uses
  %i.dj = alloca [48 x i8], align 8               ; 4 uses
  %i.dk = alloca [24 x i8], align 8               ; 6 uses
  %i.dl = alloca [24 x i8], align 8               ; 4 uses
  %i.dm = alloca [2048 x i8], align 8             ; 5 uses
  %i.dn = alloca [8 x i8], align 8                ; 6 uses
  %i.do = alloca [2096 x i8], align 8             ; 8 uses
  %i.dp = alloca [24 x i8], align 8               ; 6 uses
  %i.dq = alloca [48 x i8], align 8               ; 7 uses
  %i.dr = alloca [48 x i8], align 8               ; 4 uses
  %i.ds = alloca [24 x i8], align 8               ; 6 uses
  %i.dt = alloca [24 x i8], align 8               ; 4 uses
  %i.du = alloca [2048 x i8], align 8             ; 5 uses
  %i.dv = alloca [8 x i8], align 8                ; 6 uses
  %i.dw = alloca [8 x i8], align 8                ; 6 uses
  %i.dx = alloca [40 x i8], align 8               ; 8 uses
  %i.dy = alloca [16 x i8], align 8               ; 5 uses
  %i.dz = alloca [56 x i8], align 8               ; 6 uses
  %i.ea = alloca [64 x i8], align 8               ; 5 uses
  %i.eb = alloca [56 x i8], align 8               ; 5 uses
  %i.ec = alloca [40 x i8], align 8               ; 8 uses
  %i.ed = alloca [40 x i8], align 8               ; 8 uses
  %i.ee = alloca [2024 x i8], align 8             ; 5 uses
  %i.ef = alloca [8 x i8], align 8                ; 4 uses
  %i.eg = alloca [40 x i8], align 8               ; 8 uses
  %i.eh = alloca [16 x i8], align 8               ; 5 uses
  %i.ei = alloca [2144 x i8], align 8             ; 4 uses
  %i.ej = alloca [2048 x i8], align 8             ; 4 uses
  %i.ek = alloca [2104 x i8], align 8             ; 5 uses
  %i.el = alloca [40 x i8], align 8               ; 8 uses
  %i.em = alloca [8 x i8], align 8                ; 6 uses
  %i.en = alloca [8 x i8], align 8                ; 6 uses
  %i.eo = alloca [8 x i8], align 8                ; 6 uses
  %i.ep = alloca [6400 x i8], align 8             ; 9 uses
  %i.eq = alloca [32 x i8], align 8               ; 7 uses
  %i.er = alloca [24 x i8], align 8               ; 6 uses
  %i.es = alloca [152 x i8], align 8              ; 6 uses
  %i.et = alloca [24 x i8], align 8               ; 7 uses
  %i.eu = alloca [24 x i8], align 8               ; 8 uses
  %i.ev = alloca [328 x i8], align 8              ; 6 uses
  %i.ew = alloca [8 x i8], align 8                ; 5 uses
  %i.ex = alloca [80 x i8], align 8               ; 4 uses
  %i.ey = alloca [2048 x i8], align 8             ; 4 uses
  %i.ez = alloca [24 x i8], align 8               ; 6 uses
  %i.fa = alloca [88 x i8], align 8               ; 6 uses
  %i.fb = alloca [8 x i8], align 8                ; 6 uses
  %i.fc = alloca [24 x i8], align 8               ; 4 uses
  %i.fd = alloca [24 x i8], align 8               ; 4 uses
  %i.fe = alloca [8 x i8], align 8                ; 6 uses
  %i.ff = alloca [8 x i8], align 8                ; 6 uses
  %i.fg = alloca [32 x i8], align 8               ; 4 uses
  %i.fh = alloca [32 x i8], align 8               ; 6 uses
  %i.fi = alloca [2144 x i8], align 8             ; 4 uses
  %i.fj = alloca [2048 x i8], align 8             ; 4 uses
  %i.fk = alloca [2104 x i8], align 8             ; 5 uses
  %i.fl = alloca [24 x i8], align 8               ; 4 uses
  %i.fm = alloca [24 x i8], align 8               ; 4 uses
  %i.fn = alloca [24 x i8], align 8               ; 4 uses
  %i.fo = alloca [8 x i8], align 8                ; 5 uses
  %i.fp = alloca [288 x i8], align 8              ; 5 uses
  %i.fq = alloca [848 x i8], align 8              ; 4 uses
  %i.fr = alloca [848 x i8], align 8              ; 4 uses
  %i.fs = alloca [8 x i8], align 8                ; 20 uses
  %i.ft = alloca [8 x i8], align 8                ; 8 uses
  %i.fu = alloca [8 x i8], align 8                ; 22 uses
  %i.fv = alloca [8 x i8], align 8                ; 14 uses
  %i.fw = alloca [8 x i8], align 8                ; 19 uses
  %i.fx = alloca [24 x i8], align 8               ; 11 uses
  %i.fy = alloca [24 x i8], align 8               ; 12 uses
  %i.fz = alloca [8 x i8], align 8                ; 20 uses
  %i.ga = alloca [192 x i8], align 8              ; 5 uses
  %i.gb = alloca [16 x i8], align 8               ; 17 uses
  %i.gc = alloca [32 x i8], align 8               ; 6 uses
  %i.gd = alloca [80 x i8], align 8               ; 5 uses
  %i.ge = alloca [32 x i8], align 8               ; 5 uses
  %i.gf = alloca [816 x i8], align 8              ; 7 uses
  %.sroa.657 = alloca [56 x i8], align 8          ; 6 uses
  %i.gg = alloca [816 x i8], align 8              ; 12 uses
  %.sroa.11 = alloca [64 x i8], align 8           ; 6 uses
  %i.gh = alloca [80 x i8], align 8               ; 15 uses
  %i.gi = alloca [32 x i8], align 8               ; 21 uses
  %i.gj = alloca [16 x i8], align 8               ; 9 uses
  %i.gk = alloca [16 x i8], align 8               ; 8 uses
  %i.gl = alloca [32 x i8], align 8               ; 7 uses
  %i.gm = alloca [24 x i8], align 8               ; 10 uses
  %i.gn = alloca [24 x i8], align 8               ; 12 uses
  %i.go = alloca [288 x i8], align 8              ; 7 uses
  %.sroa.634 = alloca [56 x i8], align 8          ; 6 uses
  %i.gp = alloca [288 x i8], align 8              ; 16 uses
  %i.gq = alloca [88 x i8], align 8               ; 11 uses
  %i.gr = alloca [88 x i8], align 8               ; 15 uses
  %i.gs = alloca [40 x i8], align 8               ; 8 uses
  %i.gt = alloca [16 x i8], align 8               ; 5 uses
  %i.gu = alloca [9 x i8], align 1                ; 6 uses
  %i.gv = alloca [40 x i8], align 8               ; 8 uses
  %i.gw = alloca [40 x i8], align 8               ; 8 uses
  %i.gx = alloca [16 x i8], align 8               ; 5 uses
  %i.gy = alloca [8 x i8], align 8                ; 4 uses
  %i.gz = alloca [56 x i8], align 8               ; 6 uses
  %i.ha = alloca [56 x i8], align 8               ; 9 uses
  %i.hb = alloca [24 x i8], align 8               ; 4 uses
  %i.hc = alloca [24 x i8], align 8               ; 5 uses
  %i.hd = alloca [200 x i8], align 8              ; 4 uses
  %i.he = alloca [24 x i8], align 8               ; 7 uses
  %i.hf = alloca [24 x i8], align 8               ; 11 uses
  %i.hg = alloca [16 x i8], align 1               ; 9 uses
  %i.hh = alloca [9 x i8], align 1                ; 4 uses
  %i.hi = alloca [24 x i8], align 8               ; 4 uses
  %i.hj = alloca [2048 x i8], align 8             ; 57 uses
  %i.hk = alloca [256 x i8], align 8              ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @_RNvNtNtCsbM8FbnNn9aS_6rustls6crypto4ring16default_provider(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.bm)
  %i.hl = call noundef ptr @_RNvMNtCsbM8FbnNn9aS_6rustls6cryptoNtB2_14CryptoProvider15install_default(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.bm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.not.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i, label %_RNvCsl8OoimOLbh_6qdrant31install_default_crypto_provider.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %i.hl, ptr %i.bl, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noundef nonnull %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @61, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #32
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.hn = load ptr, ptr %i.bl, align 8, !alias.scope !1308, !nonnull !6, !noundef !6
  %i.ho = atomicrmw sub ptr %i.hn, i64 1 release, align 8, !noalias !1308
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbM8FbnNn9aS_6rustls6crypto14CryptoProviderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl) #30
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %.body544, %bb.zj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit555, %bb.zn, %bb.zd, %bb.g, %.body.i, %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.asm, %bb.zd ], [ %i.hm, %bb.c ], [ %.pn.i, %.body.i ], [ %i.hm, %bb.d ], [ %i.hr, %bb.g ], [ %.pn312, %bb.zj ], [ %.pn312, %.body544 ], [ %.pn306, %bb.zn ], [ %.pn306, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit555 ]
  resume { ptr, i32 } %common.resume.op

_RNvCsl8OoimOLbh_6qdrant31install_default_crypto_provider.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk)
  call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !1310
  call void @_RNvXs_Csl8OoimOLbh_6qdrantNtB4_4ArgsNtNtCscOXheHxUWYW_12clap_builder6derive14CommandFactory7command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.bi), !noalias !1309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1310
  invoke void @_RNvNtCsG258MDvU3F_3std3env7args_os(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh)
          to label %_RNvMNtNtCscOXheHxUWYW_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i unwind label %bb.g, !noalias !1310

bb.g:                                             ; preds = %_RNvCsl8OoimOLbh_6qdrant31install_default_crypto_provider.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscOXheHxUWYW_12clap_builder7builder7command7CommandECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(712) %i.bi) #27
          to label %common.resume unwind label %bb.h, !noalias !1310

bb.h:                                             ; preds = %bb.g
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1310
  unreachable

_RNvMNtNtCscOXheHxUWYW_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i: ; preds = %_RNvCsl8OoimOLbh_6qdrant31install_default_crypto_provider.exit
  call void @_RINvMNtNtCscOXheHxUWYW_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCsG258MDvU3F_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh), !noalias !1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1312
  invoke void @_RINvMs0_NtNtNtCscOXheHxUWYW_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 9)
          to label %.noexc.i unwind label %bb.de, !noalias !1309

.noexc.i:                                         ; preds = %_RNvMNtNtCscOXheHxUWYW_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i
  invoke void @_RINvMNtNtCscOXheHxUWYW_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.ba)
          to label %.noexc2.i unwind label %bb.de, !noalias !1309

.noexc2.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1312
  invoke void @_RINvMs0_NtNtNtCscOXheHxUWYW_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_oneNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 3)
          to label %bb.k unwind label %bb.j, !noalias !1313

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit77.i.i: ; preds = %bb.n, %bb.m, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.hv, %bb.j ], [ %i.hw, %bb.n ], [ %i.hw, %bb.m ] ; 2 uses
  %i.ht = load i8, ptr %i.bg, align 8, !range !20, !alias.scope !1314, !noalias !1312, !noundef !6
  %i.hu = icmp eq i8 %i.ht, -1
  br i1 %i.hu, label %.body.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit77.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.bg)
          to label %.body.i unwind label %bb.dd, !noalias !1313

bb.j:                                             ; preds = %bb.k, %.noexc2.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit77.i.i

bb.k:                                             ; preds = %.noexc2.i
  invoke void @_RINvMNtNtCscOXheHxUWYW_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.az)
          to label %bb.l unwind label %bb.j, !noalias !1313

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !1312
  invoke void @_RINvMs0_NtNtNtCscOXheHxUWYW_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches14try_remove_onebECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 14)
          to label %bb.o unwind label %bb.m, !noalias !1313

bb.m:                                             ; preds = %bb.r, %bb.o, %bb.l
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load i8, ptr %i.bf, align 8, !range !20, !alias.scope !1315, !noalias !1312, !noundef !6
  %i.hy = icmp eq i8 %i.hx, -1
  br i1 %i.hy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit77.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit77.i.i unwind label %bb.dd, !noalias !1313

bb.o:                                             ; preds = %bb.l
  %i.hz = invoke noundef i8 @_RINvMNtNtCscOXheHxUWYW_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionbEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ay)
          to label %bb.p unwind label %bb.m, !noalias !1313 ; 2 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1312
  %.not.i.i376 = icmp eq i8 %i.hz, 2
  br i1 %.not.i.i376, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1312
  %i.ia = invoke noundef zeroext i1 @_RNvMNtNtNtCscOXheHxUWYW_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 8)
          to label %bb.z unwind label %bb.y, !noalias !1313

bb.r:                                             ; preds = %bb.p
  %i.ib = invoke noundef nonnull align 8 ptr @_RINvMNtCscOXheHxUWYW_12clap_builder5errorNtB3_5Error3rawReECsl8OoimOLbh_6qdrant(i8 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 64)
          to label %bb.s unwind label %bb.m, !noalias !1313 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ic = load i8, ptr %i.bf, align 8, !range !20, !alias.scope !1316, !noalias !1312, !noundef !6
  %i.id = icmp eq i8 %i.ic, -1
  br i1 %i.id, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit79.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit79.i.i unwind label %bb.v, !noalias !1313

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit84.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.pn52.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ig, %bb.v ], [ %.pn52.pn.pn.i.i, %bb.x ], [ %.pn52.pn.pn.i.i, %bb.w ] ; 2 uses
  %i.ie = load i8, ptr %i.bg, align 8, !range !20, !alias.scope !1317, !noalias !1312, !noundef !6
  %i.if = icmp eq i8 %i.ie, -1
  br i1 %i.if, label %.body.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit84.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.bg)
          to label %.body.i unwind label %bb.dd, !noalias !1313

end_hunk_0
begin_hunk_1_@_RNvCsl8OoimOLbh_6qdrant4main:bb.a
  %.sroa.0110.8 = phi i8 [ %.sroa.0110.30, %bb.xe ], [ %.sroa.0110.30907, %.thread898 ] ; 2 uses
  %.sroa.0104.4 = phi i8 [ %.sroa.0104.28, %bb.xe ], [ %.sroa.0104.28908, %.thread898 ] ; 2 uses
  %.sroa.098.0 = phi i1 [ false, %bb.xe ], [ true, %.thread898 ] ; 2 uses
  %.sroa.095.1 = phi i8 [ %.sroa.095.13, %bb.xe ], [ %.sroa.095.13909, %.thread898 ]
  %.sroa.0168.12 = phi i8 [ %.sroa.0168.29, %bb.xe ], [ %.sroa.0168.29911, %.thread898 ] ; 2 uses
  %.pn286 = phi { ptr, i32 } [ %.pn284, %bb.xe ], [ %.pn284912, %.thread898 ] ; 2 uses
  %i.xw = trunc nuw i8 %.sroa.095.1 to i1
  br i1 %i.xw, label %.thread591, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager9consensus16operation_sender15OperationSenderEECsl8OoimOLbh_6qdrant.exit522

bb.ko:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i31.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i, %bb.ip, %bb.xh, %bb.wb, %bb.up
  %.sroa.0119.13 = phi i8 [ 1, %bb.xh ], [ 0, %bb.wb ], [ 0, %bb.up ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i31.i ], [ 1, %bb.ip ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i ]
  %.sroa.0117.3 = phi i8 [ 0, %bb.xh ], [ 0, %bb.wb ], [ 0, %bb.up ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i31.i ], [ 1, %bb.ip ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i ]
  %.sroa.0104.5 = phi i8 [ 1, %bb.xh ], [ %.sroa.0104.12, %bb.wb ], [ %.sroa.0104.12, %bb.up ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i31.i ], [ 1, %bb.ip ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i ]
  %.sroa.0168.13 = phi i8 [ 1, %bb.xh ], [ 1, %bb.wb ], [ 0, %bb.up ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i31.i ], [ 1, %bb.ip ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i ]
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %.thread591

.thread608:                                       ; preds = %bb.kh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.kq

bb.kp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12PeerMetadataEEEECsl8OoimOLbh_6qdrant.exit.i, %bb.ji, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i
  %.sroa.8561.0 = phi ptr [ %.sroa.8561.0.copyload, %bb.ji ], [ %.sroa.8561.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i ], [ %.sroa.8561.0.copyload563, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12PeerMetadataEEEECsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  %.sroa.0559.0 = phi i64 [ %.sroa.0559.0.copyload, %bb.ji ], [ %.sroa.0559.0.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i25.i ], [ %.sroa.0559.0.copyload560, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12PeerMetadataEEEECsl8OoimOLbh_6qdrant.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.xy = icmp eq i64 %.sroa.0559.0, -2
  br i1 %i.xy, label %bb.kq, label %bb.ks

bb.kq:                                            ; preds = %.thread608, %bb.kp
  %.sroa.8561.0611 = phi ptr [ %i.wj, %.thread608 ], [ %.sroa.8561.0, %bb.kp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh)
  %i.xz = load i64, ptr %i.gi, align 8, !range !12, !alias.scope !1401, !noundef !6
  %i.ya = icmp eq i64 %i.xz, 0
  br i1 %i.ya, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager9consensus16operation_sender15OperationSenderEECsl8OoimOLbh_6qdrant.exit, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.yb = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  invoke void @_RNvXs4_NtNtCsG258MDvU3F_3std4sync4mpmcINtB5_6SenderNtNtNtCsgGgPqgSfnMH_7storage15content_manager13consensus_ops19ConsensusOperationsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.yb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgGgPqgSfnMH_7storage15content_manager9consensus16operation_sender15OperationSenderEECsl8OoimOLbh_6qdrant.exit unwind label %.thread847

bb.ks:                                            ; preds = %bb.kp
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.0559.0, ptr %i.gh, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %.sroa.8561.0, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  invoke fastcc void @_RNvXs_NtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB4_14ChannelServiceNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.gd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.gh)
          to label %bb.ku unwind label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.xj

bb.ku:                                            ; preds = %bb.ks
  %i.yd = load i64, ptr %i.sy, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  %i.ye = load i64, ptr %i.gi, align 8, !range !12, !noundef !6
  %i.yf = trunc nuw i64 %i.ye to i1
  br i1 %i.yf, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.yg = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke void @_RNvXs_NtNtNtCsgGgPqgSfnMH_7storage15content_manager9consensus16operation_senderNtB4_15OperationSenderNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noundef nonnull align 8 %i.yg)
          to label %bb.kz unwind label %bb.xi

bb.kw:                                            ; preds = %bb.ku
  store i64 0, ptr %i.gc, align 8
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kz, %bb.kw
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB2_14TableOfContent3new(ptr noalias nofree noundef nonnull sret([816 x i8]) align 8 captures(none) dereferenceable(816) %i.gf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1080) %i.mm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ge, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.gd, i64 noundef %i.yd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.gc)
          to label %bb.la unwind label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %.thread898

bb.kz:                                            ; preds = %bb.kv
  %i.yi = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yi, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  store i64 1, ptr %i.gc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.kx

bb.la:                                            ; preds = %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  %i.yj = load i64, ptr %i.gf, align 8, !range !11, !noundef !6 ; 2 uses
  %i.yk = icmp eq i64 %i.yj, 2
  %i.yl = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.657, ptr noundef nonnull align 8 dereferenceable(56) %i.yl, i64 56, i1 false)
  br i1 %i.yk, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.657, i64 56, i1 false)
  %i.ym = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorE4fromCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.ci)
          to label %bb.xh unwind label %bb.xg

bb.lc:                                            ; preds = %bb.la
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.563.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %.sroa.5198.0..sroa_idx, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.462.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.657, i64 56, i1 false)
  store i64 %i.yj, ptr %i.gg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.gg, i64 288
  %.val372 = load i64, ptr %i.yn, align 8, !range !12, !noundef !6
  %i.yo = getelementptr inbounds nuw i8, ptr %i.gg, i64 296
  %.val373 = load ptr, ptr %i.yo, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.yp = trunc nuw i64 %.val372 to i1
  %i.yq = atomicrmw add ptr %.val373, i64 1 monotonic, align 8
  %i.yr = icmp slt i64 %i.yq, 0                   ; 2 uses
  br i1 %i.yp, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  br i1 %i.yr, label %bb.lg, label %bb.li

bb.le:                                            ; preds = %bb.lc
  br i1 %i.yr, label %bb.lf, label %bb.li

bb.lf:                                            ; preds = %bb.le
  call void @llvm.trap()
  unreachable

bb.lg:                                            ; preds = %bb.ld
  call void @llvm.trap()
  unreachable

bb.lh:                                            ; preds = %.body355
  br i1 %.sroa.0165.2, label %bb.xf, label %bb.xe

.thread619:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorEEEB1X_.exit461, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit481
  %.sroa.0168.15 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit481 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorEEEB1X_.exit461 ]
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %bb.xe

bb.li:                                            ; preds = %bb.le, %bb.ld
  %.sroa.0.0.i432 = phi i64 [ 0, %bb.le ], [ 1, %bb.ld ]
  store i64 %.sroa.0.0.i432, ptr %i.gb, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  store ptr %.val373, ptr %i.yt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  store ptr %i.gg, ptr %i.ga, align 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ga, i64 184
  store i8 0, ptr %i.yu, align 8
  invoke void @_RINvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB3_6Handle8block_onNCNvCsl8OoimOLbh_6qdrant4main0EB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.ga, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21)
          to label %bb.lk unwind label %bb.lj

.body355:                                         ; preds = %bb.xc, %bb.xd, %bb.ll, %bb.lj, %bb.xb
  %.sroa.0165.2 = phi i1 [ false, %bb.ll ], [ false, %bb.xb ], [ %i.yw, %bb.lj ], [ false, %bb.xd ], [ false, %bb.xc ]
  %.sroa.0119.16 = phi i8 [ 1, %bb.ll ], [ %.sroa.0119.24829895, %bb.xb ], [ %.sroa.0165.3, %bb.lj ], [ %.sroa.0119.24829895, %bb.xd ], [ %.sroa.0119.24829895, %bb.xc ] ; 2 uses
  %.sroa.0110.12 = phi i8 [ 1, %bb.ll ], [ %.sroa.0110.23830894, %bb.xb ], [ %.sroa.092.3, %bb.lj ], [ %.sroa.0110.23830894, %bb.xd ], [ %.sroa.0110.23830894, %bb.xc ] ; 2 uses
  %.sroa.0104.8 = phi i8 [ 1, %bb.ll ], [ %.sroa.0104.21831893, %bb.xb ], [ %.sroa.0104.9, %bb.lj ], [ %.sroa.0104.21831893, %bb.xd ], [ %.sroa.0104.21831893, %bb.xc ] ; 2 uses
  %.sroa.095.5 = phi i8 [ 1, %bb.ll ], [ %.sroa.095.12832892, %bb.xb ], [ %.sroa.092.3, %bb.lj ], [ %.sroa.095.12832892, %bb.xd ], [ %.sroa.095.12832892, %bb.xc ] ; 2 uses
  %.sroa.092.2 = phi i8 [ 1, %bb.ll ], [ %.sroa.092.15833891, %bb.xb ], [ %.sroa.092.3, %bb.lj ], [ %.sroa.092.15833891, %bb.xd ], [ %.sroa.092.15833891, %bb.xc ] ; 2 uses
  %.sroa.0168.16 = phi i8 [ 1, %bb.ll ], [ %.sroa.0168.23834890, %bb.xb ], [ 1, %bb.lj ], [ %.sroa.0168.23834890, %bb.xd ], [ %.sroa.0168.23834890, %bb.xc ] ; 2 uses
  %.pn275.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.za, %bb.ll ], [ %.pn275.pn.pn.pn.pn.pn835889, %bb.xb ], [ %i.yv, %bb.lj ], [ %.pn275.pn.pn.pn.pn.pn835889, %bb.xd ], [ %.pn275.pn.pn.pn.pn.pn835889, %bb.xc ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(16) %i.gb) #27
          to label %bb.lh unwind label %bb.px

bb.lj:                                            ; preds = %bb.vz, %bb.li
  %.sroa.0165.3 = phi i8 [ 0, %bb.vz ], [ 1, %bb.li ] ; 2 uses
  %.sroa.0104.9 = phi i8 [ %.sroa.0104.12, %bb.vz ], [ 1, %bb.li ]
  %.sroa.092.3 = phi i8 [ %.sroa.092.6, %bb.vz ], [ 1, %bb.li ] ; 3 uses
  %i.yv = landingpad { ptr, i32 }
          cleanup
  %i.yw = trunc nuw i8 %.sroa.0165.3 to i1
  br label %.body355

bb.lk:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(816) %i.yx, ptr noundef nonnull align 8 dereferenceable(816) %i.gg, i64 816, i1 false)
  store i64 1, ptr %i.ch, align 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 1, ptr %i.yy, align 8
  %i.yz = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 832)
          to label %bb.ln unwind label %bb.ll     ; 8 uses

bb.ll:                                            ; preds = %bb.lk
  %i.za = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(816) %i.yx)
          to label %.body355 unwind label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.zb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ln:                                            ; preds = %bb.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(832) %i.yz, ptr noundef nonnull align 8 dereferenceable(832) %i.ch, i64 832, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  store ptr %i.yz, ptr %i.fz, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 504
  %i.zd = load ptr, ptr %i.zc, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 824
  %i.zf = load ptr, ptr %i.ze, align 8, !nonnull !6, !noundef !6
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 832
  %i.zh = load i64, ptr %i.zg, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  store i64 0, ptr %i.fy, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.zi, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  store i64 0, ptr %i.zj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  %i.zk = atomicrmw add ptr %i.yz, i64 1 monotonic, align 8
  %i.zl = icmp slt i64 %i.zk, 0
  br i1 %i.zl, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  store ptr %i.yz, ptr %i.fx, align 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr null, ptr %i.zm, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i8 0, ptr %i.zn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  br i1 %i.sn, label %bb.lq, label %bb.lr

bb.lp:                                            ; preds = %bb.ln
  call void @llvm.trap()
  unreachable

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.fp, ptr noundef nonnull align 8 dereferenceable(288) %i.gp, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  %i.zo = atomicrmw add ptr %i.yz, i64 1 monotonic, align 8
  %i.zp = icmp slt i64 %i.zo, 0
  br i1 %i.zp, label %bb.mk, label %bb.mj

.critedge317:                                     ; preds = %.body, %bb.mr
  br i1 %.sroa.0160.3, label %.critedge317.thread658, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsl8OoimOLbh_6qdrant6common6health13HealthCheckerEEEB1B_.exit

.split.thread:                                    ; preds = %bb.mo, %bb.vs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457, %bb.uf, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread, %bb.tx, %bb.td, %bb.uc, %bb.mp, %bb.ls, %bb.mc, %bb.lz, %bb.lx
  %.sroa.0164.1.ph = phi i8 [ 1, %bb.lx ], [ 1, %bb.lz ], [ 1, %bb.mc ], [ 1, %bb.ls ], [ 1, %bb.mo ], [ 1, %bb.mp ], [ 1, %bb.uc ], [ 1, %bb.td ], [ 1, %bb.tx ], [ 1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ 0, %bb.uf ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ 1, %bb.vs ]
  %.sroa.0163.1.ph = phi i1 [ true, %bb.lx ], [ true, %bb.lz ], [ true, %bb.mc ], [ true, %bb.ls ], [ true, %bb.mo ], [ true, %bb.mp ], [ true, %bb.uc ], [ true, %bb.td ], [ true, %bb.tx ], [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ false, %bb.uf ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ false, %bb.vs ]
  %.sroa.0162.1.ph = phi i1 [ false, %bb.lx ], [ false, %bb.lz ], [ false, %bb.mc ], [ true, %bb.ls ], [ true, %bb.mo ], [ true, %bb.mp ], [ false, %bb.uc ], [ false, %bb.td ], [ false, %bb.tx ], [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ false, %bb.uf ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ false, %bb.vs ]
  %.sroa.0161.1.ph = phi i1 [ false, %bb.lx ], [ false, %bb.lz ], [ false, %bb.mc ], [ false, %bb.ls ], [ false, %bb.mo ], [ false, %bb.mp ], [ true, %bb.uc ], [ true, %bb.td ], [ true, %bb.tx ], [ true, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ true, %bb.uf ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ true, %bb.vs ]
  %.sroa.0119.19.ph = phi i8 [ 1, %bb.lx ], [ 1, %bb.lz ], [ 1, %bb.mc ], [ 1, %bb.ls ], [ 1, %bb.mo ], [ 1, %bb.mp ], [ 0, %bb.uc ], [ 0, %bb.td ], [ 0, %bb.tx ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ 0, %bb.uf ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ 0, %bb.vs ]
  %.sroa.0104.11.ph = phi i8 [ 1, %bb.lx ], [ 1, %bb.lz ], [ 1, %bb.mc ], [ 1, %bb.ls ], [ 1, %bb.mo ], [ 1, %bb.mp ], [ %.sroa.0104.12, %bb.uc ], [ %.sroa.0104.12, %bb.td ], [ %.sroa.0104.12, %bb.tx ], [ %.sroa.0104.12, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.0104.12, %bb.uf ], [ %.sroa.0104.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.0104.12, %bb.vs ]
  %.sroa.095.8.ph = phi i8 [ 1, %bb.lx ], [ 1, %bb.lz ], [ 1, %bb.mc ], [ 1, %bb.ls ], [ 0, %bb.mo ], [ 0, %bb.mp ], [ %.sroa.092.6, %bb.uc ], [ %.sroa.092.6, %bb.td ], [ %.sroa.092.6, %bb.tx ], [ %.sroa.092.6, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.092.6, %bb.uf ], [ %.sroa.092.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.092.6, %bb.vs ]
  %.sroa.092.5.ph = phi i8 [ 1, %bb.lx ], [ 1, %bb.lz ], [ 1, %bb.mc ], [ 1, %bb.ls ], [ 1, %bb.mo ], [ 1, %bb.mp ], [ %.sroa.092.6, %bb.uc ], [ %.sroa.092.6, %bb.td ], [ %.sroa.092.6, %bb.tx ], [ %.sroa.092.6, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.092.6, %bb.uf ], [ %.sroa.092.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.092.6, %bb.vs ] ; 2 uses
  %.sroa.089.1.ph = phi i8 [ 0, %bb.lx ], [ 0, %bb.lz ], [ 1, %bb.mc ], [ 0, %bb.ls ], [ 0, %bb.mo ], [ 0, %bb.mp ], [ 1, %bb.uc ], [ 1, %bb.td ], [ %.sroa.086.7, %bb.tx ], [ %.sroa.086.7, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.086.7, %bb.uf ], [ %.sroa.086.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.086.7, %bb.vs ]
  %.sroa.086.1.ph = phi i8 [ 1, %bb.lx ], [ 1, %bb.lz ], [ 1, %bb.mc ], [ 0, %bb.ls ], [ 0, %bb.mo ], [ 0, %bb.mp ], [ 1, %bb.uc ], [ 1, %bb.td ], [ %.sroa.086.7, %bb.tx ], [ %.sroa.086.7, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.086.7, %bb.uf ], [ %.sroa.086.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.086.7, %bb.vs ]
  %.sroa.0168.18.ph = phi i8 [ 1, %bb.lx ], [ 1, %bb.lz ], [ 1, %bb.mc ], [ 1, %bb.ls ], [ 1, %bb.mo ], [ 1, %bb.mp ], [ 1, %bb.uc ], [ 1, %bb.td ], [ 1, %bb.tx ], [ 1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ 1, %bb.uf ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ 1, %bb.vs ]
  %lpad.thr_comm1163 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsl8OoimOLbh_6qdrant6common6health13HealthCheckerEEEB1B_.exit

.split:                                           ; preds = %bb.qp, %bb.qe, %bb.rj, %bb.rd, %bb.rb, %bb.qz, %bb.qs, %bb.qq, %bb.qo, %bb.qk, %bb.qg
  %.sroa.0104.11.ph1160 = phi i8 [ %.sroa.0104.12, %bb.rb ], [ %.sroa.0104.12, %bb.rd ], [ %.sroa.0104.12, %bb.rj ], [ %.sroa.0104.12, %bb.qg ], [ %.sroa.0104.12, %bb.qo ], [ %.sroa.0104.12, %bb.qp ], [ %.sroa.0104.17, %bb.qe ], [ %.sroa.0104.12, %bb.qs ], [ %.sroa.0104.12, %bb.qq ], [ %.sroa.0104.12, %bb.qk ], [ %.sroa.0104.12, %bb.qz ]
  %.sroa.095.8.ph1161 = phi i8 [ %.sroa.092.6, %bb.rb ], [ %.sroa.092.6, %bb.rd ], [ %.sroa.092.6, %bb.rj ], [ %.sroa.092.6, %bb.qg ], [ %.sroa.092.6, %bb.qo ], [ %.sroa.092.6, %bb.qp ], [ 0, %bb.qe ], [ %.sroa.092.6, %bb.qs ], [ %.sroa.092.6, %bb.qq ], [ %.sroa.092.6, %bb.qk ], [ %.sroa.092.6, %bb.qz ] ; 3 uses
  %lpad.thr_comm.split-lp1164 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge317.thread658

bb.lr:                                            ; preds = %bb.lo
  %i.zq = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.zr = icmp ult i64 %i.zq, 6
  call void @llvm.assume(i1 %i.zr)
  %i.zs = icmp samesign ugt i64 %i.zq, 2
  br i1 %i.zs, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  store ptr @3, ptr %i.el, align 8
  %i.zt = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 6, ptr %i.zt, align 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr @3, ptr %i.zu, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 6, ptr %i.zv, align 8
  %i.zw = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr @23, ptr %i.zw, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 51 to ptr), i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.el)
          to label %bb.lw unwind label %.split.thread

bb.lt:                                            ; preds = %bb.lr, %bb.lw
  %i.zx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zx, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  store i64 1, ptr %i.bz, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 1, ptr %i.zy, align 8
  %i.zz = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 40)
          to label %bb.lx unwind label %bb.lu     ; 2 uses

bb.lu:                                            ; preds = %bb.lt
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bz) #27
          to label %.thread1100 unwind label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.aab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.lw:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  br label %bb.lt

bb.lx:                                            ; preds = %bb.lt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.zz, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  store ptr %i.zz, ptr %i.fu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  invoke fastcc void @_RNvXst_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8SettingsNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2048) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2048) %i.hj)
          to label %bb.ly unwind label %.split.thread

bb.ly:                                            ; preds = %bb.lx
  %i.aac = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  %i.aad = atomicrmw add ptr %i.aac, i64 1 monotonic, align 8
  %i.aae = icmp slt i64 %i.aad, 0
  br i1 %i.aae, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.aaf = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.br, ptr noundef nonnull align 1 dereferenceable(16) %i.hg, i64 16, i1 false)
  invoke void @_RNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB2_18TelemetryCollector3new(ptr noalias nofree noundef nonnull sret([2104 x i8]) align 8 captures(none) dereferenceable(2104) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2048) %i.ej, ptr noundef nonnull %i.aaf, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.br)
          to label %bb.mb unwind label %.split.thread

bb.ma:                                            ; preds = %bb.ly
  call void @llvm.trap()
  unreachable

bb.mb:                                            ; preds = %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  %i.aag = getelementptr inbounds nuw i8, ptr %i.ek, i64 2064
  %i.aah = load ptr, ptr %i.aag, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aai = atomicrmw add ptr %i.aah, i64 1 monotonic, align 8
  %i.aaj = icmp slt i64 %i.aai, 0
  br i1 %i.aaj, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  store ptr %i.aah, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  invoke void @_RNvMs8_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorE3newBW_(ptr noalias nofree noundef nonnull sret([2144 x i8]) align 8 captures(none) dereferenceable(2144) %i.ei, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2104) %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %bb.me unwind label %.split.thread

bb.md:                                            ; preds = %bb.mb
  call void @llvm.trap()
  unreachable

bb.me:                                            ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 1, ptr %i.by, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 1, ptr %i.aak, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2144) %i.aal, ptr noundef nonnull align 8 dereferenceable(2144) %i.ei, i64 2144, i1 false)
  %i.aam = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 2160)
          to label %bb.mh unwind label %bb.mf     ; 2 uses

bb.mf:                                            ; preds = %bb.me
  %i.aan = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorEEEB22_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2160) %i.by) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsl8OoimOLbh_6qdrant6common6health13HealthCheckerEEEB1B_.exit.thread unwind label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.aao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.mh:                                            ; preds = %bb.me
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %i.aam, ptr noundef nonnull align 8 dereferenceable(2160) %i.by, i64 2160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  store ptr %i.aam, ptr %i.fw, align 8
  store ptr null, ptr %i.ft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %bb.mi

bb.mi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit445, %bb.mh
  %.sroa.0104.12 = phi i8 [ %.sroa.0104.17, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit445 ], [ 1, %bb.mh ] ; 43 uses
  %.sroa.092.6 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit445 ], [ 1, %bb.mh ] ; 81 uses
  %i.aap = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aaq = icmp ult i64 %i.aap, 6
  call void @llvm.assume(i1 %i.aaq)
  %i.aar = icmp samesign ugt i64 %i.aap, 2        ; 2 uses
  br i1 %i.mu, label %bb.qf, label %bb.qj

bb.mj:                                            ; preds = %bb.lq
  store ptr %i.yz, ptr %i.fo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  %.sroa.064.0.copyload = load i64, ptr %i.gi, align 8
  %i.aas = trunc nuw i64 %.sroa.064.0.copyload to i1
  br i1 %i.aas, label %bb.ml, label %bb.mm, !prof !19

bb.mk:                                            ; preds = %bb.lq
  call void @llvm.trap()
  unreachable

bb.ml:                                            ; preds = %bb.mj
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.465.0..sroa_idx, i64 24, i1 false)
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB4_16ConsensusManagerNtNtB6_3toc14TableOfContentE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([848 x i8]) align 8 captures(none) dereferenceable(848) %i.fq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.fp, ptr noundef nonnull %i.yz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zf, i64 noundef %i.zh)
          to label %bb.mo unwind label %.thread686

.thread686:                                       ; preds = %bb.ml
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit508.thread.thread1078

bb.mm:                                            ; preds = %bb.mj
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #32
          to label %bb.mn unwind label %bb.ws

bb.mn:                                            ; preds = %bb.vj, %bb.tm, %bb.so, %bb.rv, %bb.mm
  unreachable

bb.mo:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  invoke fastcc void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBM_3toc14TableOfContentENtNtBM_6errors12StorageErrorE6expectCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(848) %i.fr, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(848) %i.fq)
          to label %bb.mp unwind label %.split.thread

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  %i.aau = invoke noundef nonnull ptr @_RNvXs2_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerNtB5_17ConsensusStateRefINtNtCskKLDkoKarTP_4core7convert4FromINtB5_16ConsensusManagerNtNtB7_3toc14TableOfContentEE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(848) %i.fr)
          to label %bb.mq unwind label %.split.thread ; 2 uses

bb.mq:                                            ; preds = %bb.mp
  store ptr %i.aau, ptr %i.fs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB4_16ConsensusManagerNtNtB6_3toc14TableOfContentE10hard_stateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noundef nonnull align 8 %i.aav)
          to label %bb.mt unwind label %bb.ms

.body:                                            ; preds = %bb.nl, %bb.nb, %bb.ms, %.critedge
  %.sroa.0162.3 = phi i1 [ false, %.critedge ], [ false, %bb.nb ], [ %.sroa.0162.4, %bb.ms ], [ false, %bb.nl ] ; 2 uses
  %.sroa.0161.3 = phi i1 [ true, %.critedge ], [ false, %bb.nb ], [ %.sroa.0161.4, %bb.ms ], [ false, %bb.nl ] ; 2 uses
  %.sroa.0160.3 = phi i1 [ %.sroa.0160.5, %.critedge ], [ false, %bb.nb ], [ %.sroa.0160.4, %bb.ms ], [ false, %bb.nl ]
  %.sroa.0110.17 = phi i8 [ %.sroa.0110.19, %.critedge ], [ 1, %bb.nb ], [ %.sroa.092.8, %bb.ms ], [ 1, %bb.nl ] ; 2 uses
  %.sroa.0104.13 = phi i8 [ %.sroa.0104.15, %.critedge ], [ 1, %bb.nb ], [ %.sroa.0104.14, %bb.ms ], [ 1, %bb.nl ] ; 2 uses
  %.sroa.092.7 = phi i8 [ %.sroa.092.9, %.critedge ], [ 1, %bb.nb ], [ %.sroa.092.8, %bb.ms ], [ 1, %bb.nl ] ; 2 uses
  %.sroa.089.3 = phi i8 [ 1, %.critedge ], [ 0, %bb.nb ], [ %.sroa.089.4, %bb.ms ], [ 1, %bb.nl ] ; 2 uses
  %.sroa.086.3 = phi i8 [ 1, %.critedge ], [ 0, %bb.nb ], [ %.sroa.086.4, %bb.ms ], [ 1, %bb.nl ] ; 2 uses
  %.pn259 = phi { ptr, i32 } [ %.pn257, %.critedge ], [ %i.abt, %bb.nb ], [ %i.aaz, %bb.ms ], [ %i.acg, %bb.nl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.aaw = load ptr, ptr %i.fs, align 8, !alias.scope !1405, !nonnull !6, !noundef !6
  %i.aax = atomicrmw sub ptr %i.aaw, i64 1 release, align 8, !noalias !1405
  %i.aay = icmp eq i64 %i.aax, 1
  br i1 %i.aay, label %bb.mr, label %.critedge317

bb.mr:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBL_3toc14TableOfContentEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fs) #30
          to label %.critedge317 unwind label %bb.px

bb.ms:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit, %bb.nn, %bb.ni, %bb.nf, %bb.nd, %bb.my, %bb.mw, %bb.mu, %bb.mq
  %.sroa.0162.4 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.nn ], [ true, %bb.mw ], [ true, %bb.mq ], [ false, %bb.ni ], [ false, %bb.nf ], [ false, %bb.nd ], [ false, %bb.mu ], [ true, %bb.my ]
  %.sroa.0161.4 = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ true, %bb.nn ], [ false, %bb.mw ], [ false, %bb.mq ], [ false, %bb.ni ], [ false, %bb.nf ], [ false, %bb.nd ], [ false, %bb.mu ], [ false, %bb.my ]
  %.sroa.0160.4 = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.nn ], [ false, %bb.mw ], [ false, %bb.mq ], [ false, %bb.ni ], [ false, %bb.nf ], [ false, %bb.nd ], [ false, %bb.mu ], [ false, %bb.my ]
  %.sroa.0104.14 = phi i8 [ %.sroa.0104.17, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nn ], [ 1, %bb.mw ], [ 1, %bb.mq ], [ 1, %bb.ni ], [ 1, %bb.nf ], [ 1, %bb.nd ], [ 1, %bb.mu ], [ 1, %bb.my ]
  %.sroa.092.8 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nn ], [ 1, %bb.mw ], [ 1, %bb.mq ], [ 1, %bb.ni ], [ 1, %bb.nf ], [ 1, %bb.nd ], [ 1, %bb.mu ], [ 1, %bb.my ] ; 2 uses
  %.sroa.089.4 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nn ], [ 0, %bb.mw ], [ 0, %bb.mq ], [ 1, %bb.ni ], [ 0, %bb.nf ], [ 0, %bb.nd ], [ 0, %bb.mu ], [ 0, %bb.my ]
  %.sroa.086.4 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nn ], [ 0, %bb.mw ], [ 0, %bb.mq ], [ 1, %bb.ni ], [ 1, %bb.nf ], [ 1, %bb.nd ], [ 0, %bb.mu ], [ 0, %bb.my ]
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mt:                                            ; preds = %bb.mq
  %i.aba = load i64, ptr %i.cg, align 8, !noundef !6
  %i.abb = icmp eq i64 %i.aba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  %i.abc = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.abd = atomicrmw add ptr %i.abc, i64 1 monotonic, align 8
  %i.abe = icmp slt i64 %i.abd, 0
  br i1 %i.abe, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.abf = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.abg = getelementptr inbounds nuw i8, ptr %i.hj, i64 1593
  %i.abh = load i8, ptr %i.abg, align 1, !range !21, !noundef !6
  %i.abi = trunc nuw i8 %i.abh to i1
  invoke void @_RNvMNtCsgGgPqgSfnMH_7storage10dispatcherNtB2_10Dispatcher14with_consensus(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fl, ptr noundef nonnull %i.abf, i1 noundef zeroext %i.abi)
          to label %bb.mw unwind label %bb.ms

bb.mv:                                            ; preds = %bb.mt
  call void @llvm.trap()
  unreachable

bb.mw:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  %i.abj = invoke noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentE9downgradeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fz)
          to label %bb.mx unwind label %bb.ms

bb.mx:                                            ; preds = %bb.mw
  %i.abk = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.abl = atomicrmw add ptr %i.abk, i64 1 monotonic, align 8
  %i.abm = icmp slt i64 %i.abl, 0
  br i1 %i.abm, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.abn = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.abo = load ptr, ptr %i.fz, align 8, !nonnull !6, !noundef !6
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB2_14TableOfContent19with_toc_dispatcher(ptr noundef nonnull align 8 %i.abp, ptr noundef nonnull %i.abj, ptr noundef nonnull %i.abn)
          to label %bb.na unwind label %bb.ms

bb.mz:                                            ; preds = %bb.mx
  call void @llvm.trap()
  unreachable

bb.na:                                            ; preds = %bb.my
  %i.abq = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abq, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  store i64 1, ptr %i.cf, align 8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 1, ptr %i.abr, align 8
  %i.abs = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 40)
          to label %bb.nd unwind label %bb.nb     ; 2 uses

bb.nb:                                            ; preds = %bb.na
  %i.abt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cf) #27
          to label %.body unwind label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.abu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.nd:                                            ; preds = %bb.na
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.abs, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  store ptr %i.abs, ptr %i.fu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  invoke fastcc void @_RNvXst_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8SettingsNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2048) %i.fj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2048) %i.hj)
          to label %bb.ne unwind label %bb.ms

bb.ne:                                            ; preds = %bb.nd
  %i.abv = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  %i.abw = atomicrmw add ptr %i.abv, i64 1 monotonic, align 8
  %i.abx = icmp slt i64 %i.abw, 0
  br i1 %i.abx, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.aby = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull align 1 dereferenceable(16) %i.hg, i64 16, i1 false)
  invoke void @_RNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB2_18TelemetryCollector3new(ptr noalias nofree noundef nonnull sret([2104 x i8]) align 8 captures(none) dereferenceable(2104) %i.fk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2048) %i.fj, ptr noundef nonnull %i.aby, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.bq)
          to label %bb.nh unwind label %bb.ms

bb.ng:                                            ; preds = %bb.ne
  call void @llvm.trap()
  unreachable

bb.nh:                                            ; preds = %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  %i.abz = getelementptr inbounds nuw i8, ptr %i.fk, i64 2064
  %i.aca = load ptr, ptr %i.abz, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.acb = atomicrmw add ptr %i.aca, i64 1 monotonic, align 8
  %i.acc = icmp slt i64 %i.acb, 0
  br i1 %i.acc, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  store ptr %i.aca, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  invoke void @_RNvMs8_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorE3newBW_(ptr noalias nofree noundef nonnull sret([2144 x i8]) align 8 captures(none) dereferenceable(2144) %i.fi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2104) %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
          to label %bb.nk unwind label %bb.ms

bb.nj:                                            ; preds = %bb.nh
  call void @llvm.trap()
  unreachable

bb.nk:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store i64 1, ptr %i.ce, align 8
  %i.acd = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 1, ptr %i.acd, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2144) %i.ace, ptr noundef nonnull align 8 dereferenceable(2144) %i.fi, i64 2144, i1 false)
  %i.acf = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 2160)
          to label %bb.nn unwind label %bb.nl     ; 2 uses

bb.nl:                                            ; preds = %bb.nk
  %i.acg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorEEEB22_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2160) %i.ce) #27
          to label %.body unwind label %bb.nm

end_hunk_1
begin_hunk_2_@_RNvCsl8OoimOLbh_6qdrant4main:bb.a
  %.sroa.0129.8 = phi i8 [ %.sroa.0129.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit551 ], [ %.sroa.0129.7.ph, %bb.zi ], [ %.sroa.0129.3, %bb.yz ], [ %.sroa.0129.3, %bb.zb ]
  %.pn312 = phi { ptr, i32 } [ %.pn308, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit551 ], [ %.pn310.ph, %bb.zi ], [ %i.asi, %bb.yz ], [ %i.asl, %bb.zb ] ; 2 uses
  %i.ask = trunc nuw i8 %.sroa.0129.8 to i1
  br i1 %i.ask, label %bb.zj, label %common.resume

bb.zb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i543
  %i.asl = landingpad { ptr, i32 }
          cleanup
  br label %.body544

bb.zc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.0..sroa.15.0..sroa_idx.sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i548 unwind label %bb.zd

bb.zd:                                            ; preds = %bb.zc
  %i.asm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.0..sroa.15.0..sroa_idx.sroa_idx.i)
          to label %common.resume unwind label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.asn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i548: ; preds = %bb.zc
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.0..sroa.15.0..sroa_idx.sroa_idx.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit549

bb.zf:                                            ; preds = %.thread914, %bb.yn
  %i.aso = phi { ptr, i32 } [ %i.arv, %.thread914 ], [ %i.arp, %bb.yn ] ; 2 uses
  %.sroa.0121.16919 = phi i8 [ 1, %.thread914 ], [ %.sroa.0121.15, %bb.yn ] ; 2 uses
  %.sroa.0129.2918 = phi i8 [ %.sroa.0129.5, %.thread914 ], [ 0, %bb.yn ] ; 2 uses
  %i.asp = load i8, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i, align 8, !range !20, !alias.scope !1522, !noundef !6
  %i.asq = icmp eq i8 %i.asp, -1
  br i1 %i.asq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit551, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit551 unwind label %bb.px

bb.zh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit551
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hk) #27
          to label %bb.zi unwind label %bb.px

bb.zi:                                            ; preds = %bb.zh, %bb.yv, %bb.yx
  %.sroa.0129.7.ph = phi i8 [ %.sroa.0129.6, %bb.zh ], [ %.sroa.0129.3, %bb.yv ], [ %.sroa.0129.3, %bb.yx ]
  %.pn310.ph = phi { ptr, i32 } [ %.pn308, %bb.zh ], [ %i.asa, %bb.yv ], [ %i.asc, %bb.yx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.15.sroa.2.0..sroa.15.0..sroa_idx.sroa_idx.i) #27
          to label %.body544 unwind label %bb.px

bb.zj:                                            ; preds = %.body544
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.15.sroa.3.0..sroa.15.0..sroa_idx.sroa_idx.i) #27
          to label %common.resume unwind label %bb.px

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit553: ; preds = %bb.zk, %bb.dm
  %i.asr = trunc nuw i8 %.sroa.0113.0 to i1
  %i.ass = load i8, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i, align 8, !range !20
  %i.ast = icmp ne i8 %i.ass, -1
  %or.cond1128.not = select i1 %i.asr, i1 %i.ast, i1 false
  br i1 %or.cond1128.not, label %bb.zl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit555

bb.zk:                                            ; preds = %bb.dm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit553 unwind label %bb.px

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit555: ; preds = %bb.zl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit553
  %cond327 = icmp eq i8 %.sroa.0121.0, 0
  br i1 %cond327, label %common.resume, label %bb.zm

bb.zl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit553
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit555 unwind label %bb.px

bb.zm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit555
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.hk) #27
          to label %bb.zn unwind label %bb.px

bb.zn:                                            ; preds = %bb.zm
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.15.sroa.2.0..sroa.15.0..sroa_idx.sroa_idx.i) #27
          to label %common.resume unwind label %bb.px
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleIBv_uNtNtNtB4_2io5error5ErrorEENtCscxI0zlRnmiB_6anyhow5ErrorE6expectCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !6
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  store ptr %i.e, ptr %i.a, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #32
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCscxI0zlRnmiB_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscxI0zlRnmiB_6anyhow5ErrorECsl8OoimOLbh_6qdrant.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCscxI0zlRnmiB_6anyhow5ErrorECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBM_3toc14TableOfContentENtNtBM_6errors12StorageErrorE6expectCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(848) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(848) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !6
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 28, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #32
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef nonnull align 8 dereferenceable(848) %1, i64 848, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #27
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1E_2io5error5ErrorEEE8push_mutCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !8, !noundef !6
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1L_2io5error5ErrorEEE8grow_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 8, 2161) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.a = tail call noundef ptr @malloc(i64 noundef range(i64 8, 2161) %0) #29 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCslmvYCXbQjWR_6common5flagsNtB5_12FeatureFlagsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(9) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @76, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @76, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @76, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @76, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @76, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @76, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @76, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @76, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.a, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @77, ptr %i.aa, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @87, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsl8OoimOLbh_6qdrant6common9inference6configNtB5_15InferenceConfigNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.53 = alloca [16 x i8], align 8           ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load i64, ptr %1, align 8, !range !12, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !7, !noundef !6
  %.not6 = icmp eq i64 %i.i, -1
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.h
  %.sroa.01.0 = phi i64 [ %.sroa.01.0.copyload2, %bb.h ], [ -1, %bb.d ]
  %i.j = trunc nuw i64 %i.e to i1
  %.sroa.5.0 = select i1 %i.j, i64 %i.g, i64 undef
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 %i.e, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.01.0, ptr %i.m, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %.sroa.01.0.copyload2 = load i64, ptr %i.a, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !8, !invariant.load !6 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !9, !invariant.load !6 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = icmp samesign ult i64 %i.e, 17
  %i.g = icmp samesign ule i64 %i.e, %i.b
  %or.cond.i.i.i = and i1 %i.f, %i.g
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 536870913) %i.e, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %.sroa.0.0.i.i.i = select i1 %or.cond.i.i.i, i32 0, i32 %i.i
  tail call void @sdallocx(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.b, i32 noundef %.sroa.0.0.i.i.i) #29
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #6 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !8, !invariant.load !6 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !9, !invariant.load !6 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.f = icmp samesign ult i64 %i.e, 17
  %i.g = icmp samesign ule i64 %i.e, %i.b
  %or.cond.i.i.i = and i1 %i.f, %i.g
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 536870913) %i.e, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %.sroa.0.0.i.i.i = select i1 %or.cond.i.i.i, i32 0, i32 %i.i
  tail call void @sdallocx(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.b, i32 noundef %.sroa.0.0.i.i.i) #29
  br label %bb.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCscOXheHxUWYW_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #6 {
end_hunk_2
