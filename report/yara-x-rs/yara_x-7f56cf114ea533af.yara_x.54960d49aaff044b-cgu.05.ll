Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.05?download=true
inline.NumInlined: 3898
inline.NumDeleted: 2041
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO16parse_macho_file:bb.a
  %.sroa.573.sroa.6.0..sroa.573.0..sroa_idx74.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 352 ; 2 uses
  %.sroa.573.sroa.7.0..sroa.573.0..sroa_idx74.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 360 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gr, i64 408
  %i.kg = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fn, i64 3
  %i.ki = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fn, i64 5
  %i.kk = getelementptr inbounds nuw i8, ptr %i.fn, i64 6
  %i.kl = getelementptr inbounds nuw i8, ptr %i.fn, i64 7
  %i.km = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fn, i64 9
  %i.ko = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.kp = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.4196.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %.sroa.5197.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.4215.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %.sroa.5216.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.4234.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %.sroa.5235.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.4253.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.sroa.5254.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.4272.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.sroa.5273.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.4291.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %.sroa.5292.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.4310.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.sroa.5311.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.4329.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.sroa.5330.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.4348.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.5349.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %.sroa.5368.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 532
  %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 540
  %.sroa.446.sroa.6.0..sroa.446.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 544
  %.sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 548
  %.sroa.446.sroa.7.sroa.4.0..sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 552
  %.sroa.446.sroa.7.sroa.5.0..sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 556
  %.sroa.446.sroa.7.sroa.6.0..sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 560
  %i.ky = getelementptr inbounds nuw i8, ptr %i.fo, i64 1 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.437.0..sroa_idx.i.i150.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.538.0..sroa_idx.i.i152.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %.sroa.557.0..sroa_idx.i.i170.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 584
  %i.la = getelementptr inbounds nuw i8, ptr %i.fp, i64 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.437.0..sroa_idx.i.i194.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.538.0..sroa_idx.i.i196.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.sroa.557.0..sroa_idx.i.i214.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 572
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fq, i64 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.437.0..sroa_idx.i.i239.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.538.0..sroa_idx.i.i241.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.sroa.557.0..sroa_idx.i.i259.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 596
  %i.le = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fr, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.fr, i64 5
  %i.li = getelementptr inbounds nuw i8, ptr %i.fr, i64 6
  %i.lj = getelementptr inbounds nuw i8, ptr %i.fr, i64 7
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.fr, i64 9
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fr, i64 10
  %i.ln = getelementptr inbounds nuw i8, ptr %i.fr, i64 11
  %i.lo = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.lp = getelementptr inbounds nuw i8, ptr %i.fr, i64 13
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fr, i64 14
  %i.lr = getelementptr inbounds nuw i8, ptr %i.fr, i64 15
  %i.ls = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.4316.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %.sroa.5317.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.lu = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.4335.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.sroa.5336.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.4354.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %.sroa.5355.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.4373.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %.sroa.5374.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.4392.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.5393.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.4411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %.sroa.5412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.4430.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %.sroa.5431.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.4449.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %.sroa.5450.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.4468.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %.sroa.5469.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.4487.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %.sroa.5488.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.md = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.4506.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %.sroa.5507.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.me = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.4525.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.5526.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.mf = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.sroa.4544.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.sroa.5545.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.4563.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %.sroa.5564.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.mh = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.4582.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %.sroa.5583.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %.sroa.5602.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 456
  %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 464
  %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 472
  %.sroa.435.sroa.6.0..sroa.435.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 476
  %.sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 480
  %.sroa.435.sroa.7.sroa.4.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 484
  %.sroa.435.sroa.7.sroa.5.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 488
  %.sroa.435.sroa.7.sroa.6.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 492
  %.sroa.435.sroa.7.sroa.7.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 496
  %.sroa.435.sroa.7.sroa.8.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 500
  %.sroa.435.sroa.7.sroa.9.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 504
  %.sroa.435.sroa.7.sroa.10.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 508
  %.sroa.435.sroa.7.sroa.11.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 512
  %.sroa.435.sroa.7.sroa.12.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 516
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.476.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.577.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.495.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %.sroa.596.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.sroa.4114.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.sroa.5115.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.sroa.5134.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.sroa.534.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 248 ; 2 uses
  %.sroa.534.sroa.5.0..sroa.534.0..sroa_idx35.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 256 ; 2 uses
  %.sroa.534.sroa.7.0..sroa.534.0..sroa_idx35.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 272 ; 2 uses
  %.sroa.534.sroa.8.0..sroa.534.0..sroa_idx35.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 276 ; 2 uses
  %.sroa.636.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 280 ; 2 uses
  %.sroa.636.sroa.5.0..sroa.636.0..sroa_idx37.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 288 ; 2 uses
  %.sroa.636.sroa.6.0..sroa.636.0..sroa_idx37.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 292 ; 2 uses
  %.sroa.636.sroa.7.0..sroa.636.0..sroa_idx37.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 296 ; 2 uses
  %.sroa.636.sroa.8.0..sroa.636.0..sroa_idx37.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 300 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.439.0..sroa_idx.i.i292.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.559.0..sroa_idx.i.i299.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.sroa.660.0..sroa_idx.i.i301.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gr, i64 392
  %i.mq = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.ms = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  %i.mt = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.499.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.4118.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.5119.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.4137.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.sroa.5138.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.4156.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.5157.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %.sroa.5176.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %.sroa.6177.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.439.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.559.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.sroa.660.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.nb = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.431.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.sroa.532.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %.sroa.547.0..sroa_idx.i104.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  br label %bb.ac

.loopexit891:                                     ; preds = %bb.fu, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.thread12.i, %bb.ab, %.critedge
  %i.ne = load i64, ptr %i.it, align 8, !range !7, !noundef !5
  %.not263 = icmp eq i64 %i.ne, -1
  br i1 %.not263, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile12parse_symtab.exit, label %bb.fv

bb.ac:                                            ; preds = %.lr.ph, %bb.fu
  %.sroa.3256.01102 = phi i64 [ %.sroa.4250.0.copyload.i.i, %.lr.ph ], [ %.sroa.3256.1, %bb.fu ] ; 2 uses
  %.sroa.0255.01101 = phi ptr [ %.sroa.0249.0.copyload.i.i, %.lr.ph ], [ %.sroa.0255.1, %bb.fu ] ; 2 uses
  %.sroa.0253.01100 = phi i64 [ 0, %.lr.ph ], [ %i.nf, %bb.fu ]
  %i.nf = add nuw nsw i64 %.sroa.0253.01100, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !10359
  %i.ng = load i8, ptr %i.ik, align 1, !range !26, !noalias !10359, !noundef !5 ; 2 uses
  store i8 %i.ng, ptr %i.gd, align 1, !noalias !10359
  store i8 %i.ng, ptr %i.jl, align 1, !noalias !10359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh), !noalias !10360
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.fh, ptr noalias nofree noundef nonnull dereferenceable(2) %i.gd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0255.01101, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3256.01102)
          to label %.noexc unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ac
  %i.nh = load i64, ptr %i.fh, align 8, !range !12, !noalias !10360, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.nh, -1
  %.sroa.538.0.copyload.i.i.i = load i32, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !10360 ; 3 uses
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh), !noalias !10360
  br label %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.thread12.i

bb.ae:                                            ; preds = %.noexc
  %.sroa.437.0.copyload.i.i.i = load i64, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !10360
  %.sroa.036.0.copyload.i.i.i = load ptr, ptr %i.jm, align 8, !noalias !10360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh), !noalias !10360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg), !noalias !10360
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.fg, ptr noalias nofree noundef nonnull dereferenceable(1) %i.jl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.036.0.copyload.i.i.i, i64 noundef %.sroa.437.0.copyload.i.i.i)
          to label %.noexc290 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc290:                                        ; preds = %bb.ae
  %i.ni = load i64, ptr %i.fg, align 8, !range !12, !noalias !10360, !noundef !5 ; 2 uses
  %.not74.i.i.i = icmp eq i64 %i.ni, -1
  %.sroa.055.0.copyload.i.i.i = load ptr, ptr %i.jn, align 8, !noalias !10360 ; 18 uses
  %.sroa.456.0.copyload.i.i.i = load i64, ptr %.sroa.456.0..sroa_idx.i.i.i, align 8, !noalias !10360 ; 5 uses
  %.sroa.557.0.copyload.i.i.i = load i32, ptr %.sroa.557.0..sroa_idx.i.i.i, align 8, !noalias !10360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !noalias !10360
  br i1 %.not74.i.i.i, label %bb.af, label %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.thread12.i

_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.thread12.i: ; preds = %.noexc290, %bb.ad
  %.sroa.17.0.ph.i.i = phi i32 [ %.sroa.538.0.copyload.i.i.i, %bb.ad ], [ %.sroa.557.0.copyload.i.i.i, %.noexc290 ]
  %.sroa.0.0.ph.i.i = phi i64 [ %i.nh, %bb.ad ], [ %i.ni, %.noexc290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !10359
  %i.nj = icmp eq i64 %.sroa.0.0.ph.i.i, 1
  %i.nk = and i32 %.sroa.17.0.ph.i.i, 255
  %i.nl = icmp eq i32 %i.nk, 24
  %i.nm = select i1 %i.nj, i1 %i.nl, i1 false
  br i1 %i.nm, label %.loopexit891, label %bb.fu

bb.af:                                            ; preds = %.noexc290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !10359
  %i.nn = call i32 @llvm.usub.sat.i32(i32 %.sroa.557.0.copyload.i.i.i, i32 8)
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !10359
  store ptr %.sroa.055.0.copyload.i.i.i, ptr %i.dd, align 8, !noalias !10361
  store i64 %.sroa.456.0.copyload.i.i.i, ptr %i.jo, align 8, !noalias !10361
  %.not.i.i330.i.i = icmp ult i64 %.sroa.456.0.copyload.i.i.i, %i.no ; 2 uses
  %i.np = select i1 %.not.i.i330.i.i, i64 %.sroa.456.0.copyload.i.i.i, i64 0
  %.sroa.3.0.i.i.i.i = sub nuw nsw i64 %i.no, %i.np ; 20 uses
  br i1 %.not.i.i330.i.i, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.nq = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dd, i64 noundef %.sroa.3.0.i.i.i.i)
          to label %.noexc291 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc291:                                        ; preds = %bb.ag
  %.not.i.i.i.i.i.i = icmp ugt i64 %.sroa.3.0.i.i.i.i, %.sroa.456.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ai, !prof !6

bb.ah:                                            ; preds = %.noexc291
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.456.0.copyload.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #26
          to label %.noexc292 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc292:                                        ; preds = %bb.ah
  unreachable

.critedge:                                        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !10359
  br label %.loopexit891

bb.ai:                                            ; preds = %.noexc291
  %i.nr = extractvalue { ptr, i64 } %i.nq, 1
  %i.ns = extractvalue { ptr, i64 } %i.nq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !10359
  switch i32 %.sroa.538.0.copyload.i.i.i, label %bb.ft [
    i32 -2147483608, label %bb.aj
    i32 5, label %bb.an
    i32 1, label %bb.ao
    i32 25, label %bb.ao
    i32 -2147483620, label %bb.ap
    i32 12, label %bb.at
    i32 13, label %bb.at
    i32 -2147483624, label %bb.at
    i32 -2147483617, label %bb.at
    i32 32, label %bb.at
    i32 -2147483613, label %bb.at
    i32 42, label %bb.bd
    i32 15, label %bb.be
    i32 14, label %bb.be
    i32 39, label %bb.be
    i32 2, label %bb.bi
    i32 11, label %bb.bq
    i32 29, label %bb.cw
    i32 -2147483597, label %bb.da
    i32 -2147483596, label %bb.de
    i32 34, label %bb.di
    i32 -2147483614, label %bb.di
    i32 27, label %bb.ec
    i32 50, label %bb.ed
    i32 36, label %bb.el
    i32 37, label %bb.el
    i32 47, label %bb.el
    i32 48, label %bb.el
    i32 45, label %bb.ep
  ]

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !noalias !10359
  %.val.i.i = load i8, ptr %i.ik, align 1, !range !26, !noalias !10359, !noundef !5 ; 2 uses
  store i8 %.val.i.i, ptr %i.gc, align 1, !noalias !10359
  store i8 %.val.i.i, ptr %i.nb, align 1, !noalias !10359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff), !noalias !10362
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ff, ptr noalias nofree noundef nonnull dereferenceable(2) %i.gc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i)
          to label %.noexc293 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc293:                                        ; preds = %bb.aj
  %i.nt = load i64, ptr %i.ff, align 8, !range !12, !noalias !10362, !noundef !5
  %.not.i101.i.i = icmp eq i64 %i.nt, -1
  br i1 %.not.i101.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.noexc293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !noalias !10362
  br label %_RINvXsB_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB16_EE0BA_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2i_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i

bb.al:                                            ; preds = %.noexc293
  %.sroa.030.0.copyload.i.i.i = load ptr, ptr %i.nc, align 8, !noalias !10362, !nonnull !5, !noundef !5
  %.sroa.431.0.copyload.i.i.i = load i64, ptr %.sroa.431.0..sroa_idx.i.i.i, align 8, !noalias !10362
  %.sroa.532.0.copyload.i.i.i = load i64, ptr %.sroa.532.0..sroa_idx.i.i.i, align 8, !noalias !10362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !noalias !10362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe), !noalias !10362
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.fe, ptr noalias nofree noundef nonnull dereferenceable(1) %i.nb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.030.0.copyload.i.i.i, i64 noundef %.sroa.431.0.copyload.i.i.i)
          to label %.noexc294 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc294:                                        ; preds = %bb.al
  %i.nu = load i64, ptr %i.fe, align 8, !range !12, !noalias !10362, !noundef !5
  %.not60.i.i.i = icmp eq i64 %i.nu, -1
  br i1 %.not60.i.i.i, label %bb.eq, label %bb.am

bb.am:                                            ; preds = %.noexc294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !noalias !10362
  br label %_RINvXsB_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB16_EE0BA_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2i_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i

_RINvXsB_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB16_EE0BA_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2i_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i: ; preds = %bb.am, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !noalias !10359
  br label %bb.ft

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !noalias !10359
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtBH_9MachOFile14thread_command0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2C_NtB6_9StreamingEEBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.gb, ptr nonnull %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i)
          to label %.noexc295 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc295:                                        ; preds = %bb.an
  %i.nv = load i64, ptr %i.gb, align 8, !range !12, !noalias !10359, !noundef !5
  %.not100.i.i = icmp eq i64 %i.nv, -1
  br i1 %.not100.i.i, label %bb.es, label %bb.er

bb.ao:                                            ; preds = %bb.ai, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !noalias !10359
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtBH_9MachOFile15segment_command0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2D_NtB6_9StreamingEEBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ga, ptr nonnull %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i)
          to label %.noexc296 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc296:                                        ; preds = %bb.ao
  %i.nw = load i64, ptr %i.mz, align 8, !range !7, !noalias !10359, !noundef !5
  %i.nx = icmp eq i64 %i.nw, -1
  br i1 %i.nx, label %bb.eu, label %bb.et

bb.ap:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !10359
  %.val317.i.i = load i8, ptr %i.ik, align 1, !range !26, !noalias !10359, !noundef !5
  store i8 %.val317.i.i, ptr %i.fy, align 1, !noalias !10359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !10363
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dh, ptr noalias nofree noundef nonnull dereferenceable(1) %i.fy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i)
          to label %.noexc297 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc297:                                        ; preds = %bb.ap
  %i.ny = load i64, ptr %i.dh, align 8, !range !12, !noalias !10363, !noundef !5
  %.not.i.i265.i.i = icmp eq i64 %i.ny, -1
  br i1 %.not.i.i265.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !10363
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2t_9MachOFile13rpath_command0B1g_B1j_E0ENCB2n_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4K_NtB6_9StreamingEEB2z_.exit.thread.i.i

bb.ar:                                            ; preds = %.noexc297
  %.sroa.038.0.copyload.i.i.i.i = load ptr, ptr %i.my, align 8, !noalias !10363, !nonnull !5, !noundef !5
  %.sroa.439.0.copyload.i.i.i.i = load i64, ptr %.sroa.439.0..sroa_idx.i.i.i.i, align 8, !noalias !10363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !10363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !10363
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1i_9MachOFile13rpath_command0RShINtNtB8_5error5ErrorB2A_EE0INtB6_6ParserB2A_E7processINtB6_7OutputMNtB6_4EmitB3I_NtB6_9StreamingEEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.dg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.038.0.copyload.i.i.i.i, i64 noundef %.sroa.439.0.copyload.i.i.i.i)
          to label %.noexc298 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc298:                                        ; preds = %bb.ar
  %i.nz = load i64, ptr %i.dg, align 8, !range !11, !noalias !10363, !noundef !5
  %i.oa = trunc nuw i64 %i.nz to i1
  br i1 %i.oa, label %bb.as, label %bb.ev

bb.as:                                            ; preds = %.noexc298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !10363
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2t_9MachOFile13rpath_command0B1g_B1j_E0ENCB2n_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4K_NtB6_9StreamingEEB2z_.exit.thread.i.i

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2t_9MachOFile13rpath_command0B1g_B1j_E0ENCB2n_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4K_NtB6_9StreamingEEB2z_.exit.thread.i.i: ; preds = %bb.as, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !10359
  br label %bb.ft

bb.at:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !10359
  %.val318.i.i = load i8, ptr %i.ik, align 1, !range !26, !noalias !10359, !noundef !5
  %.sroa.6.0.insert.ext.i.i.i = zext nneg i8 %.val318.i.i to i32
  %.sroa.01.0.insert.insert.i.i.i = mul nuw nsw i32 %.sroa.6.0.insert.ext.i.i.i, 16843009
  store i32 %.sroa.01.0.insert.insert.i.i.i, ptr %i.fx, align 4, !noalias !10359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !10364
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dy, ptr noalias nofree noundef nonnull dereferenceable(4) %i.fx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i)
          to label %.noexc299 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc299:                                        ; preds = %bb.at
  %i.ob = load i64, ptr %i.dy, align 8, !range !12, !noalias !10364, !noundef !5
  %.not.i.i117.i.i = icmp eq i64 %i.ob, -1
  br i1 %.not.i.i117.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.noexc299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !10364
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile13dylib_command0B1g_B1j_E0ENCB2w_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2I_.exit.thread.i.i

bb.av:                                            ; preds = %.noexc299
  %.sroa.098.0.copyload.i.i.i.i = load ptr, ptr %i.mu, align 8, !noalias !10364, !nonnull !5, !noundef !5
  %.sroa.499.0.copyload.i.i.i.i = load i64, ptr %.sroa.499.0..sroa_idx.i.i.i.i, align 8, !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !10364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !10364
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dx, ptr noalias nofree noundef nonnull dereferenceable(1) %i.mt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.098.0.copyload.i.i.i.i, i64 noundef %.sroa.499.0.copyload.i.i.i.i)
          to label %.noexc300 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc300:                                        ; preds = %bb.av
  %i.oc = load i64, ptr %i.dx, align 8, !range !12, !noalias !10364, !noundef !5
  %.not190.i.i.i.i = icmp eq i64 %i.oc, -1
  br i1 %.not190.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.noexc300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !10364
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile13dylib_command0B1g_B1j_E0ENCB2w_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2I_.exit.thread.i.i

bb.ax:                                            ; preds = %.noexc300
  %.sroa.0117.0.copyload.i.i.i.i = load ptr, ptr %i.mv, align 8, !noalias !10364, !nonnull !5, !noundef !5
  %.sroa.4118.0.copyload.i.i.i.i = load i64, ptr %.sroa.4118.0..sroa_idx.i.i.i.i, align 8, !noalias !10364
  %.sroa.5119.0.copyload.i.i.i.i = load i32, ptr %.sroa.5119.0..sroa_idx.i.i.i.i, align 8, !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !10364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !10364
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dw, ptr noalias nofree noundef nonnull dereferenceable(1) %i.mr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0117.0.copyload.i.i.i.i, i64 noundef %.sroa.4118.0.copyload.i.i.i.i)
          to label %.noexc301 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc301:                                        ; preds = %bb.ax
  %i.od = load i64, ptr %i.dw, align 8, !range !12, !noalias !10364, !noundef !5
  %.not191.i.i.i.i = icmp eq i64 %i.od, -1
  br i1 %.not191.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.noexc301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !10364
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile13dylib_command0B1g_B1j_E0ENCB2w_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2I_.exit.thread.i.i

bb.az:                                            ; preds = %.noexc301
  %.sroa.0136.0.copyload.i.i.i.i = load ptr, ptr %i.mw, align 8, !noalias !10364, !nonnull !5, !noundef !5
  %.sroa.4137.0.copyload.i.i.i.i = load i64, ptr %.sroa.4137.0..sroa_idx.i.i.i.i, align 8, !noalias !10364
  %.sroa.5138.0.copyload.i.i.i.i = load i32, ptr %.sroa.5138.0..sroa_idx.i.i.i.i, align 8, !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !10364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !10364
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dv, ptr noalias nofree noundef nonnull dereferenceable(1) %i.ms, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0136.0.copyload.i.i.i.i, i64 noundef %.sroa.4137.0.copyload.i.i.i.i)
          to label %.noexc302 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc302:                                        ; preds = %bb.az
  %i.oe = load i64, ptr %i.dv, align 8, !range !12, !noalias !10364, !noundef !5
  %.not192.i.i.i.i = icmp eq i64 %i.oe, -1
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB4_5MachO16parse_macho_file:bb.a
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2k_9MachOFile17dyld_info_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4l_NtB6_9StreamingEEB2q_.exit.thread.i.i

bb.dy:                                            ; preds = %.noexc340
  %.sroa.0328.0.copyload.i.i.i.i = load ptr, ptr %i.kw, align 8, !noalias !10373, !nonnull !5, !noundef !5
  %.sroa.4329.0.copyload.i.i.i.i = load i64, ptr %.sroa.4329.0..sroa_idx.i.i.i.i, align 8, !noalias !10373
  %.sroa.5330.0.copyload.i.i.i.i = load i32, ptr %.sroa.5330.0..sroa_idx.i.i.i.i, align 8, !noalias !10373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !10373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !10373
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ee, ptr noalias nofree noundef nonnull dereferenceable(1) %i.km, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0328.0.copyload.i.i.i.i, i64 noundef %.sroa.4329.0.copyload.i.i.i.i)
          to label %.noexc341 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc341:                                        ; preds = %bb.dy
  %i.pt = load i64, ptr %i.ee, align 8, !range !12, !noalias !10373, !noundef !5
  %.not392.i.i.i.i = icmp eq i64 %i.pt, -1
  br i1 %.not392.i.i.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.noexc341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !10373
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2k_9MachOFile17dyld_info_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4l_NtB6_9StreamingEEB2q_.exit.thread.i.i

bb.ea:                                            ; preds = %.noexc341
  %.sroa.0347.0.copyload.i.i.i.i = load ptr, ptr %i.kx, align 8, !noalias !10373, !nonnull !5, !noundef !5
  %.sroa.4348.0.copyload.i.i.i.i = load i64, ptr %.sroa.4348.0..sroa_idx.i.i.i.i, align 8, !noalias !10373
  %.sroa.5349.0.copyload.i.i.i.i = load i32, ptr %.sroa.5349.0..sroa_idx.i.i.i.i, align 8, !noalias !10373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !10373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !10373
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ed, ptr noalias nofree noundef nonnull dereferenceable(1) %i.kn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0347.0.copyload.i.i.i.i, i64 noundef %.sroa.4348.0.copyload.i.i.i.i)
          to label %.noexc342 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc342:                                        ; preds = %bb.ea
  %i.pu = load i64, ptr %i.ed, align 8, !range !12, !noalias !10373, !noundef !5
  %.not393.i.i.i.i = icmp eq i64 %i.pu, -1
  br i1 %.not393.i.i.i.i, label %bb.fl, label %bb.eb

bb.eb:                                            ; preds = %.noexc342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !10373
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2k_9MachOFile17dyld_info_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4l_NtB6_9StreamingEEB2q_.exit.thread.i.i

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2k_9MachOFile17dyld_info_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4l_NtB6_9StreamingEEB2q_.exit.thread.i.i: ; preds = %bb.eb, %bb.dz, %bb.dx, %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !10359
  br label %bb.ft

bb.ec:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !10359
  store i64 16, ptr %i.fm, align 8, !noalias !10359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !10374
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB16_EE0INtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2e_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.fd, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i)
          to label %.noexc343 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc343:                                        ; preds = %bb.ec
  %i.pv = load i64, ptr %i.fd, align 8, !range !11, !noalias !10374, !noundef !5
  %i.pw = trunc nuw i64 %i.pv to i1
  br i1 %i.pw, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1g_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1S_9MachOFile12uuid_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB3O_NtB6_9StreamingEEB1Y_.exit.thread.i.i, label %bb.fm

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1g_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1S_9MachOFile12uuid_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB3O_NtB6_9StreamingEEB1Y_.exit.thread.i.i: ; preds = %.noexc343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !10374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !10359
  br label %bb.ft

bb.ed:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !noalias !10359
  %.val327.i.i = load i8, ptr %i.ik, align 1, !range !26, !noalias !10359, !noundef !5 ; 2 uses
  %.sroa.54.0.insert.ext.i.i.i = zext nneg i8 %.val327.i.i to i24
  %.sroa.02.0.insert.insert.i.i.i = mul nuw nsw i24 %.sroa.54.0.insert.ext.i.i.i, 65793
  %.sroa.6.0.insert.ext.i379.i.i = zext nneg i24 %.sroa.02.0.insert.insert.i.i.i to i48
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.6.0.insert.ext.i379.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i = zext nneg i8 %.val327.i.i to i48 ; 3 uses
  %.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.5.0.insert.ext.i.i.i, 16
  %.sroa.5.0.insert.insert.i.i.i = or disjoint i48 %.sroa.6.0.insert.shift.i.i.i, %.sroa.5.0.insert.shift.i.i.i
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.5.0.insert.ext.i.i.i, 8
  %.sroa.4.0.insert.insert.i.i.i = or disjoint i48 %.sroa.5.0.insert.insert.i.i.i, %.sroa.4.0.insert.shift.i.i.i
  %.sroa.01.0.insert.insert.i380.i.i = or disjoint i48 %.sroa.4.0.insert.insert.i.i.i, %.sroa.5.0.insert.ext.i.i.i
  store i48 %.sroa.01.0.insert.insert.i380.i.i, ptr %i.fl, align 8, !noalias !10359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !10375
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dt, ptr noalias nofree noundef nonnull dereferenceable(6) %i.fl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i)
          to label %.noexc344 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc344:                                        ; preds = %bb.ed
  %i.px = load i64, ptr %i.dt, align 8, !range !12, !noalias !10375, !noundef !5
  %.not.i.i121.i.i = icmp eq i64 %i.px, -1
  br i1 %.not.i.i121.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %.noexc344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !10375
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_INtNtB8_5multi11LengthCountBK_IBA_TBK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2E_9MachOFile21build_version_command0EB1j_EENCB2y_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEB2K_.exit.thread.i.i

bb.ef:                                            ; preds = %.noexc344
  %.sroa.071.0.copyload.i.i.i.i = load ptr, ptr %i.ka, align 8, !noalias !10375, !nonnull !5, !noundef !5
  %.sroa.472.0.copyload.i.i.i.i = load i64, ptr %.sroa.472.0..sroa_idx.i.i.i.i, align 8, !noalias !10375
  %.sroa.573.0.copyload.i.i.i.i = load i32, ptr %.sroa.573.0..sroa_idx.i.i.i.i, align 8, !noalias !10375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !10375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !10375
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ds, ptr noalias nofree noundef nonnull dereferenceable(1) %i.jz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.071.0.copyload.i.i.i.i, i64 noundef %.sroa.472.0.copyload.i.i.i.i)
          to label %.noexc345 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc345:                                        ; preds = %bb.ef
  %i.py = load i64, ptr %i.ds, align 8, !range !12, !noalias !10375, !noundef !5
  %.not140.i.i.i.i = icmp eq i64 %i.py, -1
  br i1 %.not140.i.i.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.noexc345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !10375
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_INtNtB8_5multi11LengthCountBK_IBA_TBK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2E_9MachOFile21build_version_command0EB1j_EENCB2y_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEB2K_.exit.thread.i.i

bb.eh:                                            ; preds = %.noexc345
  %.sroa.090.0.copyload.i.i.i.i = load ptr, ptr %i.kb, align 8, !noalias !10375, !nonnull !5, !noundef !5
  %.sroa.491.0.copyload.i.i.i.i = load i64, ptr %.sroa.491.0..sroa_idx.i.i.i.i, align 8, !noalias !10375
  %.sroa.592.0.copyload.i.i.i.i = load i32, ptr %.sroa.592.0..sroa_idx.i.i.i.i, align 8, !noalias !10375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !10375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !10375
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dr, ptr noalias nofree noundef nonnull dereferenceable(1) %i.jx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.090.0.copyload.i.i.i.i, i64 noundef %.sroa.491.0.copyload.i.i.i.i)
          to label %.noexc346 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc346:                                        ; preds = %bb.eh
  %i.pz = load i64, ptr %i.dr, align 8, !range !12, !noalias !10375, !noundef !5
  %.not141.i.i.i.i = icmp eq i64 %i.pz, -1
  br i1 %.not141.i.i.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.noexc346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !10375
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_INtNtB8_5multi11LengthCountBK_IBA_TBK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2E_9MachOFile21build_version_command0EB1j_EENCB2y_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEB2K_.exit.thread.i.i

bb.ej:                                            ; preds = %.noexc346
  %.sroa.0109.0.copyload.i.i.i.i = load ptr, ptr %i.kc, align 8, !noalias !10375, !nonnull !5, !noundef !5
  %.sroa.4110.0.copyload.i.i.i.i = load i64, ptr %.sroa.4110.0..sroa_idx.i.i.i.i, align 8, !noalias !10375
  %.sroa.5111.0.copyload.i.i.i.i = load i32, ptr %.sroa.5111.0..sroa_idx.i.i.i.i, align 8, !noalias !10375 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !10375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !10375
  invoke fastcc void @_RINvXsc_NtCsgkljs906P5b_3nom5multiINtB6_11LengthCountNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1l_EE0INtNtB8_8internal3MapTBP_BP_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2q_9MachOFile21build_version_command0EB1o_EINtB1S_6ParserB1l_E7processINtB1S_7OutputMNtB1S_4EmitB4C_NtB1S_9StreamingEEB2w_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.dq, ptr noalias nofree noundef dereferenceable(3) %i.jy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0109.0.copyload.i.i.i.i, i64 noundef %.sroa.4110.0.copyload.i.i.i.i)
          to label %.noexc347 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc347:                                        ; preds = %bb.ej
  %i.qa = load i64, ptr %i.dq, align 8, !range !11, !noalias !10375, !noundef !5
  %i.qb = trunc nuw i64 %i.qa to i1
  br i1 %i.qb, label %bb.ek, label %_RINvXsD_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_INtNtB8_5multi11LengthCountBA_INtB6_3MapTBA_BA_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2A_9MachOFile21build_version_command0EB19_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB4L_NtB6_9StreamingEEB2G_.exit.i.i.i

bb.ek:                                            ; preds = %.noexc347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !10375
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_INtNtB8_5multi11LengthCountBK_IBA_TBK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2E_9MachOFile21build_version_command0EB1j_EENCB2y_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEB2K_.exit.thread.i.i

_RINvXsD_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_INtNtB8_5multi11LengthCountBA_INtB6_3MapTBA_BA_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2A_9MachOFile21build_version_command0EB19_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB4L_NtB6_9StreamingEEB2G_.exit.i.i.i: ; preds = %.noexc347
  %i.qc = load <2 x i64>, ptr %.sroa.5130.0..sroa_idx.i.i.i.i, align 8, !noalias !10375 ; 3 uses
  %.sroa.5130.i.i.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5130.i.i.sroa.6.0..sroa.5130.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !10375 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !10375
  %i.qd = extractelement <2 x i64> %i.qc, i64 0   ; 2 uses
  %i.qe = icmp eq i64 %i.qd, -1
  br i1 %i.qe, label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_INtNtB8_5multi11LengthCountBK_IBA_TBK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2E_9MachOFile21build_version_command0EB1j_EENCB2y_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEB2K_.exit.thread.i.i, label %bb.fn

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_INtNtB8_5multi11LengthCountBK_IBA_TBK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2E_9MachOFile21build_version_command0EB1j_EENCB2y_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEB2K_.exit.thread.i.i: ; preds = %_RINvXsD_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_INtNtB8_5multi11LengthCountBA_INtB6_3MapTBA_BA_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2A_9MachOFile21build_version_command0EB19_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB4L_NtB6_9StreamingEEB2G_.exit.i.i.i, %bb.ek, %bb.ei, %bb.eg, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !10359
  br label %bb.ft

bb.el:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !10359
  %.val328.i.i = load i8, ptr %i.ik, align 1, !range !26, !noalias !10359, !noundef !5 ; 2 uses
  store i8 %.val328.i.i, ptr %i.fk, align 1, !noalias !10359
  store i8 %.val328.i.i, ptr %i.jv, align 1, !noalias !10359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !10376
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dp, ptr noalias nofree noundef nonnull dereferenceable(2) %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i.i.i)
          to label %.noexc348 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc348:                                        ; preds = %bb.el
  %i.qf = load i64, ptr %i.dp, align 8, !range !12, !noalias !10376, !noundef !5
  %.not.i.i125.i.i = icmp eq i64 %i.qf, -1
  br i1 %.not.i.i125.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.noexc348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !10376
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1W_9MachOFile19min_version_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB22_.exit.thread.i.i

bb.en:                                            ; preds = %.noexc348
  %.sroa.036.0.copyload.i.i.i.i = load ptr, ptr %i.jw, align 8, !noalias !10376, !nonnull !5, !noundef !5
  %.sroa.437.0.copyload.i.i.i.i = load i64, ptr %.sroa.437.0..sroa_idx.i.i.i.i, align 8, !noalias !10376
  %.sroa.538.0.copyload.i.i.i.i = load i32, ptr %.sroa.538.0..sroa_idx.i.i.i.i, align 8, !noalias !10376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !10376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !10376
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.do, ptr noalias nofree noundef nonnull dereferenceable(1) %i.jv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.036.0.copyload.i.i.i.i, i64 noundef %.sroa.437.0.copyload.i.i.i.i)
          to label %.noexc349 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc349:                                        ; preds = %bb.en
  %i.qg = load i64, ptr %i.do, align 8, !range !12, !noalias !10376, !noundef !5
  %.not74.i.i.i.i = icmp eq i64 %i.qg, -1
  br i1 %.not74.i.i.i.i, label %bb.fq, label %bb.eo

bb.eo:                                            ; preds = %.noexc349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !10376
  br label %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1W_9MachOFile19min_version_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB22_.exit.thread.i.i

_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1W_9MachOFile19min_version_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB22_.exit.thread.i.i: ; preds = %bb.eo, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !10359
  br label %bb.ft

bb.ep:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !10359
  invoke fastcc void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtBH_9MachOFile22linker_options_command0INtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2K_NtB6_9StreamingEEBN_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.fj, ptr nonnull %i.gr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.055.0.copyload.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i)
          to label %.noexc350 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc350:                                        ; preds = %bb.ep
  %i.qh = load i64, ptr %i.fj, align 8, !range !11, !noalias !10359, !noundef !5
  %i.qi = trunc nuw i64 %i.qh to i1
  br i1 %i.qi, label %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.i, label %bb.fr

bb.eq:                                            ; preds = %.noexc294
  %.sroa.547.0.copyload.i105.i.i = load i64, ptr %.sroa.547.0..sroa_idx.i104.i.i, align 8, !noalias !10362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !noalias !10362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !noalias !10359
  store i64 1, ptr %i.gr, align 8, !noalias !10359
  store i64 %.sroa.532.0.copyload.i.i.i, ptr %i.im, align 8, !noalias !10359
  store i64 1, ptr %i.ip, align 8, !noalias !10359
  store i64 %.sroa.547.0.copyload.i105.i.i, ptr %i.nd, align 8, !noalias !10359
  br label %bb.ft

bb.er:                                            ; preds = %bb.es, %.noexc295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !noalias !10359
  br label %bb.ft

bb.es:                                            ; preds = %.noexc295
  %i.qj = load i64, ptr %i.na, align 8, !noalias !10359, !noundef !5
  store i64 1, ptr %i.in, align 8, !noalias !10359
  store i64 %i.qj, ptr %i.io, align 8, !noalias !10359
  br label %bb.er

bb.et:                                            ; preds = %.noexc296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !10359
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fz, ptr noundef nonnull align 8 dereferenceable(88) %i.mz, i64 88, i1 false), !noalias !10359
  invoke fastcc void @_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser7SegmentE8push_mutBN_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ir, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.fz) #32
          to label %.noexc351 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc351:                                        ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !10359
  br label %bb.eu

bb.eu:                                            ; preds = %.noexc351, %.noexc296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !noalias !10359
  br label %bb.ft

bb.ev:                                            ; preds = %.noexc298
  %.sroa.559.0.copyload.i.i.i.i = load ptr, ptr %.sroa.559.0..sroa_idx.i.i.i.i, align 8, !noalias !10363, !nonnull !5, !noundef !5
  %.sroa.660.0.copyload.i.i.i.i = load i64, ptr %.sroa.660.0..sroa_idx.i.i.i.i, align 8, !noalias !10363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !10363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !10359
  %i.qk = load i64, ptr %.sroa.566.0..sroa_idx, align 8, !alias.scope !10377, !noalias !10359, !noundef !5 ; 3 uses
  %i.ql = load i64, ptr %i.jb, align 8, !range !19, !alias.scope !10377, !noalias !10359, !noundef !5
  %i.qm = icmp eq i64 %i.qk, %i.ql
  br i1 %i.qm, label %bb.ew, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRShE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRShE8grow_oneCsbhAup8j5lif_16wasmtime_environ(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jb) #30
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRShE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRShE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.ew, %bb.ev
  %i.qn = load ptr, ptr %.sroa.465.0..sroa_idx, align 8, !alias.scope !10377, !noalias !10359, !nonnull !5, !noundef !5
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.qk ; 2 uses
  store ptr %.sroa.559.0.copyload.i.i.i.i, ptr %i.qo, align 8, !noalias !10378, !captures !25
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store i64 %.sroa.660.0.copyload.i.i.i.i, ptr %i.qp, align 8, !noalias !10379
  %i.qq = add i64 %i.qk, 1
  store i64 %i.qq, ptr %.sroa.566.0..sroa_idx, align 8, !alias.scope !10377, !noalias !10359
  br label %bb.ft

bb.ex:                                            ; preds = %.noexc303
  %.sroa.5176.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5176.0..sroa_idx.i.i.i.i, align 8, !noalias !10364, !nonnull !5, !noundef !5
  %.sroa.6177.0.copyload.i.i.i.i = load i64, ptr %.sroa.6177.0..sroa_idx.i.i.i.i, align 8, !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !10364
  %i.qr = ptrtoint ptr %.sroa.5176.0.copyload.i.i.i.i to i64
  %.sroa.6308.16.insert.ext.i.i = zext i32 %.sroa.5119.0.copyload.i.i.i.i to i64
  %.sroa.6308.20.insert.ext.i.i = zext i32 %.sroa.5138.0.copyload.i.i.i.i to i64
  %.sroa.6308.20.insert.shift.i.i = shl nuw i64 %.sroa.6308.20.insert.ext.i.i, 32
  %.sroa.6308.20.insert.insert.i.i = or disjoint i64 %.sroa.6308.20.insert.shift.i.i, %.sroa.6308.16.insert.ext.i.i
  %.sroa.9309.24.insert.ext.i.i = zext i32 %.sroa.5157.0.copyload.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !10359
  %i.qs = load i64, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !10380, !noalias !10359, !noundef !5 ; 3 uses
  %i.qt = load i64, ptr %i.is, align 8, !range !19, !alias.scope !10380, !noalias !10359, !noundef !5
  %i.qu = icmp eq i64 %i.qs, %i.qt
  br i1 %i.qu, label %bb.ey, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser5DylibE8push_mutBN_.exit.i.i

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser5DylibE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.is) #30
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser5DylibE8push_mutBN_.exit.i.i unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser5DylibE8push_mutBN_.exit.i.i: ; preds = %bb.ey, %bb.ex
  %i.qv = load ptr, ptr %.sroa.462.0..sroa_idx, align 8, !alias.scope !10380, !noalias !10359, !nonnull !5, !noundef !5
  %i.qw = getelementptr inbounds nuw [32 x i8], ptr %i.qv, i64 %i.qs ; 4 uses
  store i64 %i.qr, ptr %i.qw, align 8, !noalias !10379
  %.sroa.4299.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store i64 %.sroa.6177.0.copyload.i.i.i.i, ptr %.sroa.4299.0..sroa_idx.i.i, align 8, !noalias !10379
  %.sroa.5300.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store i64 %.sroa.6308.20.insert.insert.i.i, ptr %.sroa.5300.0..sroa_idx.i.i, align 8, !noalias !10379
  %.sroa.6301.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  store i64 %.sroa.9309.24.insert.ext.i.i, ptr %.sroa.6301.0..sroa_idx.i.i, align 8, !noalias !10379
  %i.qx = add i64 %i.qs, 1
  store i64 %i.qx, ptr %.sroa.563.0..sroa_idx, align 8, !alias.scope !10380, !noalias !10359
  br label %bb.ft

bb.ez:                                            ; preds = %bb.fc, %.noexc304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !10359
  br label %bb.ft

bb.fa:                                            ; preds = %.noexc304
  %i.qy = load i64, ptr %i.mq, align 8, !noalias !10359, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !10359
  invoke void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser32convert_to_source_version_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fu, i64 noundef %i.qy)
          to label %.noexc354 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc354:                                        ; preds = %bb.fa
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ja)
          to label %bb.fc unwind label %bb.fb, !noalias !10379

bb.fb:                                            ; preds = %.noexc354
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false), !noalias !10359
  br label %.thread721

bb.fc:                                            ; preds = %.noexc354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 24, i1 false), !noalias !10359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !10359
  br label %bb.ez

bb.fd:                                            ; preds = %.noexc306
  %.sroa.559.0.copyload.i.i300.i.i = load ptr, ptr %.sroa.559.0..sroa_idx.i.i299.i.i, align 8, !noalias !10365, !nonnull !5, !noundef !5
  %.sroa.660.0.copyload.i.i302.i.i = load i64, ptr %.sroa.660.0..sroa_idx.i.i301.i.i, align 8, !noalias !10365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !10365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !10359
  store ptr %.sroa.559.0.copyload.i.i300.i.i, ptr %i.iy, align 8, !noalias !10359
  store i64 %.sroa.660.0.copyload.i.i302.i.i, ptr %i.mp, align 8, !noalias !10359
  br label %bb.ft

bb.fe:                                            ; preds = %.noexc310
  %.sroa.5134.0.copyload.i.i.i.i = load i32, ptr %.sroa.5134.0..sroa_idx.i.i.i.i, align 8, !noalias !10366 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !10366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !10359
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser6SymtabEEB15_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.it)
          to label %bb.fg unwind label %bb.ff, !noalias !10379

bb.ff:                                            ; preds = %bb.fe
  %i.ra = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.it, align 8, !noalias !10359
  store i64 8, ptr %.sroa.534.0..sroa_idx35.i.i, align 8, !noalias !10359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.sroa.5.0..sroa.534.0..sroa_idx35.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !10359
  store i32 8, ptr %.sroa.534.sroa.7.0..sroa.534.0..sroa_idx35.sroa_idx.i.i, align 8, !noalias !10359
  store i32 0, ptr %.sroa.534.sroa.8.0..sroa.534.0..sroa_idx35.sroa_idx.i.i, align 4, !noalias !10359
  store i64 0, ptr %.sroa.636.0..sroa_idx37.i.i, align 8, !noalias !10359
  store i32 %.sroa.577.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.5.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.596.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.6.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5115.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.7.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5134.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.8.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 4, !noalias !10359
  br label %.thread721

bb.fg:                                            ; preds = %bb.fe
  store i64 0, ptr %i.it, align 8, !noalias !10359
  store i64 8, ptr %.sroa.534.0..sroa_idx35.i.i, align 8, !noalias !10359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.sroa.5.0..sroa.534.0..sroa_idx35.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !10359
  store i32 8, ptr %.sroa.534.sroa.7.0..sroa.534.0..sroa_idx35.sroa_idx.i.i, align 8, !noalias !10359
  store i32 0, ptr %.sroa.534.sroa.8.0..sroa.534.0..sroa_idx35.sroa_idx.i.i, align 4, !noalias !10359
  store i64 0, ptr %.sroa.636.0..sroa_idx37.i.i, align 8, !noalias !10359
  store i32 %.sroa.577.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.5.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.596.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.6.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5115.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.7.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5134.0.copyload.i.i.i.i, ptr %.sroa.636.sroa.8.0..sroa.636.0..sroa_idx37.sroa_idx.i.i, align 4, !noalias !10359
  br label %bb.ft

bb.fh:                                            ; preds = %.noexc326
  %.sroa.5602.0.copyload.i.i.i.i = load i32, ptr %.sroa.5602.0..sroa_idx.i.i.i.i, align 8, !noalias !10368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !10368
  %.sroa.0110.0.insert.ext.i.i = zext i32 %.sroa.5317.0.copyload.i.i.i.i to i64
  %.sroa.0110.4.insert.ext.i.i = zext i32 %.sroa.5336.0.copyload.i.i.i.i to i64
  %.sroa.0110.4.insert.shift.i.i = shl nuw i64 %.sroa.0110.4.insert.ext.i.i, 32
  %.sroa.0110.4.insert.insert.i.i = or disjoint i64 %.sroa.0110.4.insert.shift.i.i, %.sroa.0110.0.insert.ext.i.i
  %i.rb = inttoptr i64 %.sroa.0110.4.insert.insert.i.i to ptr
  %.sroa.5111.8.insert.ext.i.i = zext i32 %.sroa.5355.0.copyload.i.i.i.i to i64
  %.sroa.5111.12.insert.ext.i.i = zext i32 %.sroa.5374.0.copyload.i.i.i.i to i64
  %.sroa.5111.12.insert.shift.i.i = shl nuw i64 %.sroa.5111.12.insert.ext.i.i, 32
  %.sroa.5111.12.insert.insert.i.i = or disjoint i64 %.sroa.5111.12.insert.shift.i.i, %.sroa.5111.8.insert.ext.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !10359
  store i32 1, ptr %i.iu, align 4, !noalias !10359
  store ptr %i.rb, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !10359
  store i64 %.sroa.5111.12.insert.insert.i.i, ptr %.sroa.435.sroa.4.0..sroa.435.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5393.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.5.0..sroa.435.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5412.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.6.0..sroa.435.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5431.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5450.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.4.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5469.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.5.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5488.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.6.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5507.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.7.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5526.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.8.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5545.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.9.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5564.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.10.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5583.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.11.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5602.0.copyload.i.i.i.i, ptr %.sroa.435.sroa.7.sroa.12.0..sroa.435.sroa.7.0..sroa.435.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  br label %bb.ft

bb.fi:                                            ; preds = %.noexc328
  %.sroa.557.0.copyload.i.i260.i.i = load i32, ptr %.sroa.557.0..sroa_idx.i.i259.i.i, align 8, !noalias !10369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !10369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !10359
  store i32 1, ptr %i.jd, align 4, !noalias !10359
  store i32 %.sroa.538.0.copyload.i.i242.i.i, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !10359
  store i32 %.sroa.557.0.copyload.i.i260.i.i, ptr %.sroa.538.0..sroa_idx.i.i, align 4, !noalias !10359
  br label %bb.ft

bb.fj:                                            ; preds = %.noexc330
  %.sroa.557.0.copyload.i.i215.i.i = load i32, ptr %.sroa.557.0..sroa_idx.i.i214.i.i, align 8, !noalias !10370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !10370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !10359
  store i32 1, ptr %i.iw, align 4, !noalias !10359
  store i32 %.sroa.538.0.copyload.i.i197.i.i, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !10359
  store i32 %.sroa.557.0.copyload.i.i215.i.i, ptr %.sroa.541.0..sroa_idx.i.i, align 4, !noalias !10359
  br label %bb.ft

bb.fk:                                            ; preds = %.noexc332
  %.sroa.557.0.copyload.i.i171.i.i = load i32, ptr %.sroa.557.0..sroa_idx.i.i170.i.i, align 8, !noalias !10371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !10371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !10359
  store i32 1, ptr %i.ix, align 8, !noalias !10359
  store i32 %.sroa.538.0.copyload.i.i153.i.i, ptr %.sroa.479.0..sroa_idx, align 4, !noalias !10359
  store i32 %.sroa.557.0.copyload.i.i171.i.i, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !noalias !10359
  br label %bb.ft

bb.fl:                                            ; preds = %.noexc342
  %.sroa.5368.0.copyload.i.i.i.i = load i32, ptr %.sroa.5368.0..sroa_idx.i.i.i.i, align 8, !noalias !10373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !10373
  %.sroa.0184.0.insert.ext.i.i = zext i32 %.sroa.5197.0.copyload.i.i.i.i to i64
  %.sroa.0184.4.insert.ext.i.i = zext i32 %.sroa.5216.0.copyload.i.i.i.i to i64
  %.sroa.0184.4.insert.shift.i.i = shl nuw i64 %.sroa.0184.4.insert.ext.i.i, 32
  %.sroa.0184.4.insert.insert.i.i = or disjoint i64 %.sroa.0184.4.insert.shift.i.i, %.sroa.0184.0.insert.ext.i.i
  %i.rc = inttoptr i64 %.sroa.0184.4.insert.insert.i.i to ptr
  %.sroa.5185.8.insert.ext.i.i = zext i32 %.sroa.5235.0.copyload.i.i.i.i to i64
  %.sroa.5185.12.insert.ext.i.i = zext i32 %.sroa.5254.0.copyload.i.i.i.i to i64
  %.sroa.5185.12.insert.shift.i.i = shl nuw i64 %.sroa.5185.12.insert.ext.i.i, 32
  %.sroa.5185.12.insert.insert.i.i = or disjoint i64 %.sroa.5185.12.insert.shift.i.i, %.sroa.5185.8.insert.ext.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !10359
  store i32 1, ptr %i.iv, align 8, !noalias !10359
  store ptr %i.rc, ptr %.sroa.475.0..sroa_idx, align 4, !noalias !10359
  store i64 %.sroa.5185.12.insert.insert.i.i, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5273.0.copyload.i.i.i.i, ptr %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5292.0.copyload.i.i.i.i, ptr %.sroa.446.sroa.6.0..sroa.446.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5311.0.copyload.i.i.i.i, ptr %.sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5330.0.copyload.i.i.i.i, ptr %.sroa.446.sroa.7.sroa.4.0..sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5349.0.copyload.i.i.i.i, ptr %.sroa.446.sroa.7.sroa.5.0..sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 4, !noalias !10359
  store i32 %.sroa.5368.0.copyload.i.i.i.i, ptr %.sroa.446.sroa.7.sroa.6.0..sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !10359
  br label %bb.ft

bb.fm:                                            ; preds = %.noexc343
  %i.rd = load ptr, ptr %i.kd, align 8, !noalias !10374, !nonnull !5, !noundef !5
  %i.re = load i64, ptr %i.ke, align 8, !noalias !10374, !noundef !5
  %i.rf = invoke fastcc { ptr, i64 } @_RNCINvXsg_NtCsgkljs906P5b_3nom8internalINtB8_3MapNCINvNtNtBa_5bytes8complete4takejRShINtNtBa_5error5ErrorB1i_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1U_9MachOFile12uuid_command0EINtB8_6ParserB1i_E7processINtB8_7OutputMNtB8_4EmitB3Q_NtB8_9StreamingEE0B20_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rd, i64 noundef range(i64 0, -9223372036854775808) %i.re) #32
          to label %.noexc355 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc355:                                        ; preds = %bb.fm
  %i.rg = extractvalue { ptr, i64 } %i.rf, 0      ; 2 uses
  %i.rh = extractvalue { ptr, i64 } %i.rf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !10374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !10359
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rg) ]
  store ptr %i.rg, ptr %i.jc, align 8, !noalias !10359
  store i64 %i.rh, ptr %i.kf, align 8, !noalias !10359
  br label %bb.ft

bb.fn:                                            ; preds = %_RINvXsD_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB16_EE0BA_BA_INtNtB8_5multi11LengthCountBA_INtB6_3MapTBA_BA_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2A_9MachOFile21build_version_command0EB19_EEINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB4L_NtB6_9StreamingEEB2G_.exit.i.i.i
  %.sroa.6361.24.insert.ext.i.i = zext i32 %.sroa.573.0.copyload.i.i.i.i to i64
  %.sroa.6361.28.insert.ext.i.i = zext i32 %.sroa.592.0.copyload.i.i.i.i to i64
  %.sroa.6361.28.insert.shift.i.i = shl nuw i64 %.sroa.6361.28.insert.ext.i.i, 32
  %.sroa.6361.28.insert.insert.i.i = or disjoint i64 %.sroa.6361.28.insert.shift.i.i, %.sroa.6361.24.insert.ext.i.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !10359
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser19BuildVersionCommandEEB15_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.jg)
          to label %bb.fp unwind label %bb.fo, !noalias !10379

bb.fo:                                            ; preds = %bb.fn
  %i.ri = landingpad { ptr, i32 }
          cleanup
  store i64 %i.qd, ptr %i.jg, align 8, !noalias !10359
  %i.rj = extractelement <2 x i64> %i.qc, i64 1
  store i64 %i.rj, ptr %.sroa.573.0..sroa_idx74.i.i, align 8, !noalias !10359
  store i64 %.sroa.5130.i.i.sroa.6.0.copyload.i.i, ptr %.sroa.573.sroa.5.0..sroa.573.0..sroa_idx74.sroa_idx.i.i, align 8, !noalias !10359
  store i64 %.sroa.6361.28.insert.insert.i.i, ptr %.sroa.573.sroa.6.0..sroa.573.0..sroa_idx74.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5111.0.copyload.i.i.i.i, ptr %.sroa.573.sroa.7.0..sroa.573.0..sroa_idx74.sroa_idx.i.i, align 8, !noalias !10359
  br label %.thread721

bb.fp:                                            ; preds = %bb.fn
  store <2 x i64> %i.qc, ptr %i.jg, align 8, !noalias !10359
  store i64 %.sroa.5130.i.i.sroa.6.0.copyload.i.i, ptr %.sroa.573.sroa.5.0..sroa.573.0..sroa_idx74.sroa_idx.i.i, align 8, !noalias !10359
  store i64 %.sroa.6361.28.insert.insert.i.i, ptr %.sroa.573.sroa.6.0..sroa.573.0..sroa_idx74.sroa_idx.i.i, align 8, !noalias !10359
  store i32 %.sroa.5111.0.copyload.i.i.i.i, ptr %.sroa.573.sroa.7.0..sroa.573.0..sroa_idx74.sroa_idx.i.i, align 8, !noalias !10359
  br label %bb.ft

bb.fq:                                            ; preds = %.noexc349
  %.sroa.557.0.copyload.i.i.i.i = load i32, ptr %.sroa.557.0..sroa_idx.i.i.i.i, align 8, !noalias !10376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !10376
  %.sroa.4401.4.insert.ext.i.i = zext i32 %.sroa.538.0.copyload.i.i.i.i to i64
  %.sroa.4401.8.insert.ext.i.i = zext i32 %.sroa.557.0.copyload.i.i.i.i to i64
  %.sroa.4401.8.insert.shift.i.i = shl nuw i64 %.sroa.4401.8.insert.ext.i.i, 32
  %.sroa.4401.8.insert.insert.i.i = or disjoint i64 %.sroa.4401.8.insert.shift.i.i, %.sroa.4401.4.insert.ext.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !10359
  store i32 1, ptr %i.jh, align 8, !noalias !10359
  store i32 %.sroa.538.0.copyload.i.i.i, ptr %.sroa.452.0..sroa_idx.i.i, align 4, !noalias !10359
  store i64 %.sroa.4401.8.insert.insert.i.i, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !noalias !10359
  br label %bb.ft

bb.fr:                                            ; preds = %.noexc350
  %i.rk = load ptr, ptr %i.jq, align 8, !noalias !10359, !nonnull !5, !noundef !5 ; 3 uses
  %i.rl = load i64, ptr %i.jp, align 8, !range !19, !noalias !10359, !noundef !5
  %i.rm = load i64, ptr %i.jr, align 8, !noalias !10359, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !noalias !10359
  %i.rn = icmp ult i64 %i.rm, 576460752303423488
  call void @llvm.assume(i1 %i.rn)
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %i.rk, i64 %i.rm
  store ptr %i.rk, ptr %i.fi, align 8, !noalias !10359
  store i64 %i.rl, ptr %i.js, align 8, !noalias !10359
  store ptr %i.rk, ptr %i.jt, align 8, !noalias !10359
  store ptr %i.ro, ptr %i.ju, align 8, !noalias !10359
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecRShEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.fi)
          to label %bb.fs unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !noalias !10359
  br label %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.i

_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.i: ; preds = %bb.fs, %.noexc350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !10359
  br label %bb.ft

bb.ft:                                            ; preds = %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.i, %bb.fq, %bb.fp, %.noexc355, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.fd, %bb.ez, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parser5DylibE8push_mutBN_.exit.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecRShE8push_mutCs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.eu, %bb.er, %bb.eq, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1W_9MachOFile19min_version_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB3Z_NtB6_9StreamingEEB22_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_INtNtB8_5multi11LengthCountBK_IBA_TBK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2E_9MachOFile21build_version_command0EB1j_EENCB2y_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4Z_NtB6_9StreamingEEB2K_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapNCINvNtNtB8_5bytes8complete4takejRShINtNtB8_5error5ErrorB1g_EE0NCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1S_9MachOFile12uuid_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB3O_NtB6_9StreamingEEB1Y_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2k_9MachOFile17dyld_info_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4l_NtB6_9StreamingEEB2q_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1W_9MachOFile20linkeditdata_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB40_NtB6_9StreamingEEB22_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1W_9MachOFile20linkeditdata_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB40_NtB6_9StreamingEEB22_.exit219.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB1W_9MachOFile20linkeditdata_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB40_NtB6_9StreamingEEB22_.exit264.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile16dysymtab_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4C_NtB6_9StreamingEEB2I_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_ENCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB22_9MachOFile14symtab_command0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB40_NtB6_9StreamingEEB28_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2t_9MachOFile16dylinker_command0B1g_B1j_E0ENCB2n_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4N_NtB6_9StreamingEEB2z_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0BK_BK_BK_NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2C_9MachOFile13dylib_command0B1g_B1j_E0ENCB2w_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4T_NtB6_9StreamingEEB2I_.exit.thread.i.i, %_RINvXsg_NtCsgkljs906P5b_3nom8internalINtB6_3MapTNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB1g_EE0NCINvNtNtB8_5bytes8complete9take_tillNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB2t_9MachOFile13rpath_command0B1g_B1j_E0ENCB2n_s_0EINtB6_6ParserB1g_E7processINtB6_7OutputMNtB6_4EmitB4K_NtB6_9StreamingEEB2z_.exit.thread.i.i, %_RINvXsB_NtCsgkljs906P5b_3nom8internalTNCINvNtNtB8_6number8complete3u64RShINtNtB8_5error5ErrorB16_EE0BA_EINtB6_6ParserB16_E7processINtB6_7OutputMNtB6_4EmitB2i_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x.exit.thread.i.i, %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ns) ]
  br label %bb.fu

bb.fu:                                            ; preds = %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.thread12.i, %bb.ft
  %.sroa.0255.1 = phi ptr [ %i.ns, %bb.ft ], [ %.sroa.0255.01101, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.thread12.i ]
  %.sroa.3256.1 = phi i64 [ %i.nr, %bb.ft ], [ %.sroa.3256.01102, %_RNCNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB7_9MachOFile7command0Bd_.exit.thread12.i ]
  %exitcond.not = icmp eq i64 %i.nf, %i.jk
  br i1 %exitcond.not, label %.loopexit891, label %bb.ac

bb.fv:                                            ; preds = %.loopexit891
  %i.rp = getelementptr inbounds nuw i8, ptr %i.gr, i64 296
  %i.rq = load i32, ptr %i.rp, align 8, !noundef !5
  %i.rr = zext i32 %i.rq to i64                   ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.gr, i64 288
  %i.rt = load i32, ptr %i.rs, align 8, !noundef !5
  %i.ru = zext i32 %i.rt to i64                   ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.gr, i64 292
  %i.rw = load i32, ptr %i.rv, align 4, !noundef !5 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.gr, i64 300
  %i.ry = load i32, ptr %i.rx, align 4, !noundef !5 ; 2 uses
  %i.rz = zext i32 %i.ry to i64                   ; 3 uses
  %i.sa = add nuw nsw i64 %i.rz, %i.rr
  %.not264 = icmp samesign ugt i64 %i.sa, %2
  br i1 %.not264, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile12parse_symtab.exit, label %bb.fw

_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile12parse_symtab.exit: ; preds = %bb.gu, %bb.fx, %bb.gk, %.loopexit288.i, %bb.fv, %bb.fw, %.loopexit891
  %i.sb = load i64, ptr %i.in, align 8, !range !11, !noundef !5
  %i.sc = trunc nuw i64 %i.sb to i1
  br i1 %i.sc, label %bb.gv, label %bb.gz

bb.fw:                                            ; preds = %bb.fv
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 %i.rr ; 2 uses
  %i.se = icmp samesign ult i64 %2, %i.ru
  br i1 %i.se, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile12parse_symtab.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !10381)
  call void @llvm.experimental.noalias.scope.decl(metadata !10382)
  %.not345.i = icmp eq i32 %i.rw, 0
  br i1 %.not345.i, label %_RNvMs1_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtB5_9MachOFile12parse_symtab.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fx
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ru
  %i.sg = sub nuw nsw i64 %2, %i.ru
  %i.sh = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.si = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.489.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.590.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.35.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 6 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.24.0..sroa_idx.i.i.i.i78.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.35.0..sroa_idx.i.i.i.i79.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 6 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.4146.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.5147.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.sm = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.4165.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.5166.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.sn = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.rz
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.sr = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.ss = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %i.gr, i64 256 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.gr, i64 248
  %i.sv = getelementptr inbounds nuw i8, ptr %i.gr, i64 264 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.gr, i64 280 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.gr, i64 272
  br label %bb.fy

bb.fy:                                            ; preds = %bb.gu, %.lr.ph.i
  %.sroa.0.0342.i = phi ptr [ %i.sf, %.lr.ph.i ], [ %.sroa.0164.0.copyload.i.i.i, %bb.gu ]
  %.sroa.4.0341.i = phi i64 [ %i.sg, %.lr.ph.i ], [ %.sroa.4165.0.copyload.i.i.i, %bb.gu ]
  %.sroa.067.0340.i = phi i32 [ 0, %.lr.ph.i ], [ %i.sy, %bb.gu ]
  %i.sy = add nuw i32 %.sroa.067.0340.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !10383
  %.val76.i = load i8, ptr %i.il, align 8, !range !22, !alias.scope !10381, !noundef !5 ; 2 uses
  %.val77.i = load i8, ptr %i.ik, align 1, !range !26, !alias.scope !10381, !noundef !5 ; 2 uses
  %.sroa.6.0.insert.ext.i.i = zext nneg i8 %.val77.i to i32 ; 3 uses
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.6.0.insert.ext.i.i, 24
  %.sroa.5.0.insert.ext.i.i = zext nneg i8 %.val76.i to i32
  %.sroa.5.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.i, 16
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.6.0.insert.ext.i.i, 8
  %i.sz = or disjoint i32 %.sroa.5.0.insert.shift.i.i, %.sroa.4.0.insert.shift.i.i
  %i.ta = or disjoint i32 %i.sz, %.sroa.6.0.insert.shift.i.i
  %.sroa.01.0.insert.insert.i.i = or disjoint i32 %i.ta, %.sroa.6.0.insert.ext.i.i
  store i32 %.sroa.01.0.insert.insert.i.i, ptr %i.dc, align 4, !noalias !10383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !10384
  invoke void @_RINvXsf_NtCsgkljs906P5b_3nom8internalNCINvNtNtB8_6number8complete3u32RShINtNtB8_5error5ErrorB15_EE0INtB6_6ParserB15_E7processINtB6_7OutputMNtB6_4EmitB2d_NtB6_9StreamingEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.db, ptr noalias nofree noundef nonnull dereferenceable(4) %i.dc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0342.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0341.i)
          to label %.noexc361 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc361:                                        ; preds = %bb.fy
  %i.tb = load i64, ptr %i.db, align 8, !range !12, !noalias !10384, !noundef !5
  %.not.i.i.i357 = icmp eq i64 %i.tb, -1
  br i1 %.not.i.i.i357, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %.noexc361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !10384
  br label %bb.gk

bb.ga:                                            ; preds = %.noexc361
  %.sroa.088.0.copyload.i.i.i = load ptr, ptr %i.si, align 8, !noalias !10384, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.489.0.copyload.i.i.i = load i64, ptr %.sroa.489.0..sroa_idx.i.i.i, align 8, !noalias !10384 ; 3 uses
  %.sroa.590.0.copyload.i.i.i = load i32, ptr %.sroa.590.0..sroa_idx.i.i.i, align 8, !noalias !10384 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !10384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !10385
  store ptr %.sroa.088.0.copyload.i.i.i, ptr %i.cy, align 8, !noalias !10386
  store i64 %.sroa.489.0.copyload.i.i.i, ptr %i.sj, align 8, !noalias !10386
  %i.tc = icmp eq i64 %.sroa.489.0.copyload.i.i.i, 0
  br i1 %i.tc, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload.i.i.i, i64 %.sroa.489.0.copyload.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !10385
  store ptr %.sroa.088.0.copyload.i.i.i, ptr %i.cx, align 8, !noalias !10385
  store ptr %i.td, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10385
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10385
  %i.te = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cx)
          to label %.noexc362 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc362:                                        ; preds = %bb.gb
  %i.tf = extractvalue { i1, i8 } %i.te, 0
  br i1 %i.tf, label %.lr.ph.i.preheader.i.i.i, label %bb.gd

.lr.ph.i.preheader.i.i.i:                         ; preds = %.noexc362
  %.pr.i.i1.i.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10385 ; 2 uses
  %i.tg = icmp eq i64 %.pr.i.i1.i.i.i, 0
  br i1 %i.tg, label %_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.th = add i64 %.pr.i.i1.i.i.i, -1
  store i64 %i.th, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10385
  %i.ti = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cx)
          to label %.noexc363 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc363:                                        ; preds = %.lr.ph.i.i.i.preheader.i.i
  %i.tj = extractvalue { i1, i8 } %i.ti, 0
  br i1 %i.tj, label %.lr.ph.i.i.i.preheader.i, label %_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.noexc363
  %.pr.i.i.i.i333.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10385 ; 2 uses
  %i.tk = icmp eq i64 %.pr.i.i.i.i333.i, 0
  br i1 %i.tk, label %_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.preheader.i, %.lr.ph.i.i.i.i
  %.pr.i.i.i.i334.i = phi i64 [ %.pr.i.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pr.i.i.i.i333.i, %.lr.ph.i.i.i.preheader.i ]
  %i.tl = phi { i1, i8 } [ %i.tn, %.lr.ph.i.i.i.i ], [ %i.ti, %.lr.ph.i.i.i.preheader.i ]
  %i.tm = add i64 %.pr.i.i.i.i334.i, -1
  store i64 %i.tm, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10385
  %i.tn = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cx)
          to label %.noexc364 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc364:                                        ; preds = %.lr.ph.i.i.i.i.i
  %i.to = extractvalue { i1, i8 } %i.tn, 0
  br i1 %i.to, label %.lr.ph.i.i.i.i, label %_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc364
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10385 ; 2 uses
  %i.tp = icmp eq i64 %.pr.i.i.i.i.i, 0
  br i1 %i.tp, label %_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.noexc364, %.lr.ph.i.i.i.preheader.i, %.noexc363, %.lr.ph.i.preheader.i.i.i
  %.lcssa.i.i.i = phi { i1, i8 } [ %i.te, %.lr.ph.i.preheader.i.i.i ], [ %i.te, %.noexc363 ], [ %i.ti, %.lr.ph.i.i.i.preheader.i ], [ %i.tn, %.lr.ph.i.i.i.i ], [ %i.tl, %.noexc364 ]
  %i.tq = extractvalue { i1, i8 } %.lcssa.i.i.i, 1
  %i.tr = zext i8 %i.tq to i64
  %i.ts = shl nuw nsw i64 %i.tr, 48
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !10385
  br label %bb.gk

bb.gd:                                            ; preds = %_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i, %.noexc362
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.noexc362 ], [ %i.ts, %_RNCINvXNtCsgkljs906P5b_3nom6numberINtB5_6BeUinthINtNtB7_5error5ErrorRShEEINtNtB7_8internal6ParserB14_E7processINtB1c_7OutputMNtB1c_4EmitB1Z_NtB1c_8CompleteEEs_0Cs7gfv9tzbXmh_6yara_x.exit.loopexit.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !10385
  %i.tt = invoke { ptr, i64 } @_RNvXNtCsgkljs906P5b_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy, i64 noundef 1)
          to label %.noexc365 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc365:                                        ; preds = %bb.gd
  %i.tu = extractvalue { ptr, i64 } %i.tt, 0      ; 4 uses
  %i.tv = extractvalue { ptr, i64 } %i.tt, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !10385
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tu) ], !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !10388
  store ptr %i.tu, ptr %i.cw, align 8, !noalias !10389
  store i64 %i.tv, ptr %i.sk, align 8, !noalias !10389
  %i.tw = icmp eq i64 %i.tv, 0
  br i1 %i.tw, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.noexc365
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.tv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !10388
  store ptr %i.tu, ptr %i.cv, align 8, !noalias !10388
  store ptr %i.tx, ptr %.sroa.24.0..sroa_idx.i.i.i.i78.i, align 8, !noalias !10388
  store i64 0, ptr %.sroa.35.0..sroa_idx.i.i.i.i79.i, align 8, !noalias !10388
  %i.ty = invoke { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %.noexc366 unwind label %.loopexit.split-lp862.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses
end_hunk_1
