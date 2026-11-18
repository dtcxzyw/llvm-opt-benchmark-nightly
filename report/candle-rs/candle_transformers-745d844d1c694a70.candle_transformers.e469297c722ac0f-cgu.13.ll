Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.13?download=true
inline.NumInlined: 4898
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audioNtB5_10AudioModel3new:bb.a
  %.sroa.89.24..sroa.5299.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5299.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5299.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.5308.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.75.24..sroa.5308.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.85.24..sroa.5308.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.89.24..sroa.5308.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5308.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5308.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.ko = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.5317.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.75.24..sroa.5317.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.85.24..sroa.5317.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.89.24..sroa.5317.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5317.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5317.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5326.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.75.24..sroa.5326.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.85.24..sroa.5326.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.89.24..sroa.5326.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5326.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5326.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5335.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.75.24..sroa.5335.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.85.24..sroa.5335.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %.sroa.89.24..sroa.5335.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5335.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5335.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.5344.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.75.24..sroa.5344.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.85.24..sroa.5344.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %.sroa.89.24..sroa.5344.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5344.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5344.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ks = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5353.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.75.24..sroa.5353.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.85.24..sroa.5353.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.89.24..sroa.5353.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5353.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5353.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ku = load <2 x double>, ptr %i.kt, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.kw = load double, ptr %i.kv, align 8         ; 2 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 64 ; 2 uses
  %.sroa.6.sroa.13.i.sroa.7.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 72 ; 2 uses
  %.sroa.6.sroa.13.i.sroa.8.0..sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 80 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 48 ; 2 uses
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  %.sroa.57.sroa.7.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 136
  %.sroa.57.sroa.8.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 144
  %.sroa.57.sroa.9.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  %.sroa.57.sroa.10.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 160
  %.sroa.57.sroa.11.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 168
  %.sroa.57.sroa.12.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 176
  %.sroa.57.sroa.13.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 184
  %.sroa.57.sroa.14.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  %.sroa.57.sroa.15.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  %.sroa.57.sroa.16.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 208
  %.sroa.57.sroa.17.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 216
  %.sroa.57.sroa.18.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 224
  %.sroa.57.sroa.20.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %.sroa.57.sroa.21.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 248
  %i.kx = load double, ptr %i.jz, align 8         ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.15.i.sroa.5.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.15.i.sroa.6.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.15.i.sroa.7.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.15.i.sroa.8.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.15.i.sroa.9.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.15.i.sroa.10.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.kz = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.la = shl i64 %i.ij, 1
  %i.lb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.681.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.27.24..sroa.681.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.28.24..sroa.681.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.29.24..sroa.681.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.30.24..sroa.681.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.31.24..sroa.681.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.33.24..sroa.681.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ld = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 14 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.lf = load i64, ptr %i.le, align 8            ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.627.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.627.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.627.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.627.i.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.627.i.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.627.i.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.591.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.33.64..sroa.591.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.627.i.sroa.7.0..sroa_idx303.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %.sroa.627.i.sroa.8.0..sroa_idx306.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.627.i.sroa.9.0..sroa_idx309.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.627.i.sroa.10.0..sroa_idx312.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.627.i.sroa.11.0..sroa_idx315.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.627.i.sroa.12.0..sroa_idx318.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.511.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.15193.16..sroa.511.0..sroa_idx.i143.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15193.i.sroa.5.0..sroa.15193.16..sroa.511.0..sroa_idx.i143.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.15193.i.sroa.6.0..sroa.15193.16..sroa.511.0..sroa_idx.i143.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.15193.i.sroa.7.0..sroa.15193.16..sroa.511.0..sroa_idx.i143.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.15193.i.sroa.8.0..sroa.15193.16..sroa.511.0..sroa_idx.i143.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.15193.i.sroa.9.0..sroa.15193.16..sroa.511.0..sroa_idx.i143.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.15193.i.sroa.10.0..sroa.15193.16..sroa.511.0..sroa_idx.i143.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.27.24..sroa.6114.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.28.24..sroa.6114.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.29.24..sroa.6114.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.30.24..sroa.6114.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.31.24..sroa.6114.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.33.24..sroa.6114.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.lp = add i64 %i.lf, -1
  %.sroa.42.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 49
  %.sroa.013.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 129 ; 2 uses
  %.sroa.013.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.013.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.013.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.013.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.013.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %.sroa.013.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %.sroa.013.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %.sroa.013.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %.sroa.013.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 128 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.517.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.517.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %.sroa.517.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %.sroa.517.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.sroa.517.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %.sroa.517.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %.sroa.517.i.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %.sroa.517.i.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %.sroa.517.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %.sroa.517.i.sroa.7.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.517.i.sroa.8.0..sroa_idx364 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.517.i.sroa.9.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %.sroa.517.i.sroa.10.0..sroa_idx372 = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %.sroa.517.i.sroa.11.0..sroa_idx376 = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %.sroa.517.i.sroa.12.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %.sroa.517.i.sroa.13.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %.sroa.517.i.sroa.14.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %.sroa.517.i.sroa.15.0..sroa_idx392 = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.15.i.sroa.5.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.15.i.sroa.6.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.15.i.sroa.7.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.15.i.sroa.8.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.15.i.sroa.9.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.15.i.sroa.10.0..sroa.15.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ls = load double, ptr %i.kv, align 8
  %.sroa.0.i.sroa.18.256..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.18, i64 176
  %.sroa.0.i.sroa.18.336..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.18, i64 256
  %.sroa.07.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.07.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.07.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.07.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %.sroa.07.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %.sroa.07.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %.sroa.07.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %.sroa.07.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %.sroa.07.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %.sroa.07.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %.sroa.07.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 416
  %.sroa.07.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 424
  %.sroa.07.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 432
  %.sroa.07.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 440
  %.sroa.78.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.cp, i64 568
  %.sroa.811.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.cp, i64 569
  %i.lt = insertelement <2 x i64> poison, i64 %i.ih, i64 0
  %i.lu = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.bi

.thread410:                                       ; preds = %bb.bp, %bb.bg
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread405

bb.bh:                                            ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio14ConformerBlockEEB1g_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit81.i, %bb.bo
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %bb.nx, %.preheader
  %i.lv = load i64, ptr %1, align 8, !range !10, !noundef !4
  %i.lw = trunc nuw i64 %i.lv to i1
  br i1 %i.lw, label %bb.bj, label %bb.bo

bb.bi:                                            ; preds = %.lr.ph, %bb.nx
  %.sroa.035.0505 = phi i64 [ 0, %.lr.ph ], [ %i.lx, %bb.nx ] ; 2 uses
  %i.lx = add nuw i64 %.sroa.035.0505, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cr, i64 noundef %.sroa.035.0505)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %._crit_edge
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.mb = load i64, ptr %i.ma, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 11)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ms, %bb.bi, %bb.bk, %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body61

.body61:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.nv, %bb.bt
  %eh.lpad-body62 = phi { ptr, i32 } [ %.pn59.i, %bb.bt ], [ %i.agp, %bb.nv ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cr) #22
          to label %.thread405 unwind label %bb.oc

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.co, i64 noundef %i.mb, i64 noundef %i.lz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.cn)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.mc = load i64, ptr %i.co, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.mc, -1
  %i.md = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.me = load ptr, ptr %i.md, align 8            ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.651.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.647.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.mc, ptr %i.mh, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.me, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.mg, ptr %.sroa.550.0..sroa_idx, align 8
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge, %bb.bn
  %.sroa.3.0 = phi ptr [ %i.mg, %bb.bn ], [ undef, %._crit_edge ]
  %.sroa.013.0 = phi ptr [ %i.me, %bb.bn ], [ null, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.026)
  %.sroa.026.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.026, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.026.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.cu, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.mj = load i64, ptr %i.mi, align 8, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.026, i64 280, i1 false)
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.mj, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %.sroa.013.0, ptr %.sroa.628.0..sroa_idx, align 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %.sroa.3.0, ptr %.sroa.729.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.026)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cr)
          to label %bb.bq unwind label %bb.bh

bb.bp:                                            ; preds = %bb.ns, %bb.bm
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cr)
          to label %bb.ny unwind label %.thread410

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %bb.br

bb.br:                                            ; preds = %bb.bb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio14ConformerBlockEEB1g_.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

bb.bs:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !41691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !41691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !41691
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 13)
          to label %bb.bv unwind label %bb.bu, !noalias !41692

bb.bt:                                            ; preds = %bb.nq, %bb.nm, %bb.nh, %bb.my, %.body.i58, %bb.bu
  %.pn59.i = phi { ptr, i32 } [ %i.mk, %bb.bu ], [ %.pn57.i, %bb.nm ], [ %.pn55.i, %bb.nh ], [ %.pn51.i, %bb.my ], [ %eh.lpad-body76.i, %bb.nq ], [ %eh.lpad-body.i, %.body.i58 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cq) #22
          to label %.body61 unwind label %bb.nc, !noalias !41692

bb.bu:                                            ; preds = %bb.no, %bb.nj, %bb.na, %bb.in, %bb.bv, %bb.bs
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bv:                                            ; preds = %bb.bs
  invoke fastcc void @_RNvMs6_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audioNtB5_20ConformerFeedForward3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ca)
          to label %bb.bw unwind label %bb.bu, !noalias !41693

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !41691
  %i.ml = load i64, ptr %i.cb, align 8, !range !10, !noalias !41691, !noundef !4
  %i.mm = trunc nuw i64 %i.ml to i1
  %.sroa.5.i.sroa.0.0.copyload265 = load i64, ptr %i.if, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.6.0.copyload269 = load i64, ptr %.sroa.5.i.sroa.6.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.7.0.copyload273 = load i64, ptr %.sroa.5.i.sroa.7.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.8.0.copyload277 = load i64, ptr %.sroa.5.i.sroa.8.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.9.0.copyload281 = load ptr, ptr %.sroa.5.i.sroa.9.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.10.0.copyload285 = load i64, ptr %.sroa.5.i.sroa.10.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.11.0.copyload289 = load i64, ptr %.sroa.5.i.sroa.11.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.12.0.copyload293 = load ptr, ptr %.sroa.5.i.sroa.12.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.13.0.copyload297 = load i64, ptr %.sroa.5.i.sroa.13.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  %.sroa.5.i.sroa.14.0.copyload301 = load double, ptr %.sroa.5.i.sroa.14.0..sroa_idx, align 8, !noalias !41691 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !41691
  br i1 %i.mm, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !41691
  br label %bb.ms

bb.by:                                            ; preds = %bb.bw
  store i64 %.sroa.5.i.sroa.0.0.copyload265, ptr %i.cc, align 8, !noalias !41691
  store i64 %.sroa.5.i.sroa.6.0.copyload269, ptr %.sroa.5.i.sroa.6.0..sroa_idx266, align 8, !noalias !41691
  store i64 %.sroa.5.i.sroa.7.0.copyload273, ptr %.sroa.5.i.sroa.7.0..sroa_idx270, align 8, !noalias !41691
  store i64 %.sroa.5.i.sroa.8.0.copyload277, ptr %.sroa.5.i.sroa.8.0..sroa_idx274, align 8, !noalias !41691
  store ptr %.sroa.5.i.sroa.9.0.copyload281, ptr %.sroa.5.i.sroa.9.0..sroa_idx278, align 8, !noalias !41691
  store i64 %.sroa.5.i.sroa.10.0.copyload285, ptr %.sroa.5.i.sroa.10.0..sroa_idx282, align 8, !noalias !41691
  store i64 %.sroa.5.i.sroa.11.0.copyload289, ptr %.sroa.5.i.sroa.11.0..sroa_idx286, align 8, !noalias !41691
  store ptr %.sroa.5.i.sroa.12.0.copyload293, ptr %.sroa.5.i.sroa.12.0..sroa_idx290, align 8, !noalias !41691
  store i64 %.sroa.5.i.sroa.13.0.copyload297, ptr %.sroa.5.i.sroa.13.0..sroa_idx294, align 8, !noalias !41691
  store double %.sroa.5.i.sroa.14.0.copyload301, ptr %.sroa.5.i.sroa.14.0..sroa_idx298, align 8, !noalias !41691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !41691
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.89.i.sroa.26)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !41691
  invoke void @_RNvXNtCs3NyA1pFSltE_9candle_nn11var_builderINtB2_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB2_13SimpleBackendEL_EENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cq)
          to label %bb.ca unwind label %bb.bz, !noalias !41692

bb.bz:                                            ; preds = %bb.gy, %bb.by
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i58

.body.i58:                                        ; preds = %.loopexit.split-lp415, %bb.bz
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.mn, %bb.bz ], [ %.pn403.i.i, %.loopexit.split-lp415 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio20ConformerFeedForwardEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.cc) #22
          to label %bb.bt unwind label %bb.nc, !noalias !41692

bb.ca:                                            ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !41694)
  br i1 %i.ik, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mo = udiv i64 %i.ij, %i.ih                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !41695
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 9)
          to label %bb.ce unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41696

bb.cc:                                            ; preds = %bb.ca
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #24
          to label %bb.cd unwind label %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !41696

.loopexit.split-lp415:                            ; preds = %.loopexit.split-lp415.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i.i
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audioNtB5_10AudioModel3new:bb.a
  br i1 %.not365.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pj = load <2 x ptr>, ptr %.sroa.6228.0..sroa_idx.i.i, align 8, !noalias !41723
  %i.pk = load <2 x i64>, ptr %.sroa.85.32..sroa.6228.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.0.0.copyload313 = load ptr, ptr %.sroa.89.32..sroa.6228.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.22.0.copyload329 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.32..sroa.6228.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  %.sroa.89.i.sroa.24.0.copyload345 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.32..sroa.6228.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !41695
  %i.pl = ptrtoint ptr %i.pi to i64
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit79

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !41695
  store ptr %i.ph, ptr %i.bj, align 8, !noalias !41695
  store ptr %i.pi, ptr %i.js, align 8, !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !41695
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6)
          to label %bb.dx unwind label %bb.dw, !noalias !41696

.body83:                                          ; preds = %bb.hs, %bb.ht, %bb.hu, %bb.dw, %bb.eb
  %.pn393.i.i = phi { ptr, i32 } [ %.pn391.i.i, %bb.eb ], [ %i.pm, %bb.dw ], [ %i.xy, %bb.hu ], [ %i.xy, %bb.ht ], [ %i.xy, %bb.hs ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bj) #22
          to label %.body77 unwind label %bb.gz, !noalias !41696

bb.dw:                                            ; preds = %bb.hw, %bb.dx, %bb.dv
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.dx:                                            ; preds = %bb.dv
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear14linear_no_bias(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bf, i64 noundef %i.ij, i64 noundef %i.mq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.be)
          to label %bb.dy unwind label %bb.dw, !noalias !41696

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !41695
  %i.pn = load i64, ptr %i.bf, align 8, !range !13, !noalias !41695, !noundef !4 ; 2 uses
  %.not366.i.i = icmp eq i64 %i.pn, -1
  %i.po = load ptr, ptr %i.jt, align 8, !noalias !41695 ; 2 uses
  %i.pp = load ptr, ptr %i.ju, align 8, !noalias !41695 ; 2 uses
  br i1 %.not366.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pq = load <2 x ptr>, ptr %.sroa.6240.0..sroa_idx.i.i, align 8, !noalias !41723
  %i.pr = load <2 x i64>, ptr %.sroa.85.32..sroa.6240.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.0.0.copyload314 = load ptr, ptr %.sroa.89.32..sroa.6240.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.22.0.copyload330 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.32..sroa.6240.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  %.sroa.89.i.sroa.24.0.copyload346 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.32..sroa.6240.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !41695
  %i.ps = ptrtoint ptr %i.pp to i64
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit85

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !41695
  store ptr %i.po, ptr %i.bg, align 16, !noalias !41695
  store ptr %i.pp, ptr %i.jv, align 8, !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !41695
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.br, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 4)
          to label %bb.ed unwind label %bb.ec, !noalias !41696

bb.eb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit.i.i, %bb.ec
  %.pn391.i.i = phi { ptr, i32 } [ %i.pt, %bb.ec ], [ %.pn389.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bg) #22
          to label %.body83 unwind label %bb.gz, !noalias !41696

bb.ec:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i, %bb.ed, %bb.ea
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ed:                                            ; preds = %bb.ea
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear14linear_no_bias(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bc, i64 noundef %i.ij, i64 noundef %i.ij, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.bb)
          to label %bb.ee unwind label %bb.ec, !noalias !41696

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !41695
  %i.pu = load i64, ptr %i.bc, align 8, !range !13, !noalias !41695, !noundef !4 ; 2 uses
  %.not367.i.i = icmp eq i64 %i.pu, -1
  %i.pv = load ptr, ptr %i.jw, align 8, !noalias !41695 ; 2 uses
  %i.pw = load ptr, ptr %i.jx, align 8, !noalias !41695 ; 2 uses
  br i1 %.not367.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.px = load <2 x ptr>, ptr %.sroa.6252.0..sroa_idx.i.i, align 8, !noalias !41723
  %i.py = load <2 x i64>, ptr %.sroa.85.32..sroa.6252.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.0.0.copyload315 = load ptr, ptr %.sroa.89.32..sroa.6252.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.22.0.copyload331 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.32..sroa.6252.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  %.sroa.89.i.sroa.24.0.copyload347 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.32..sroa.6252.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !41695
  %i.pz = ptrtoint ptr %i.pw to i64
  br label %bb.hq

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !41695
  store ptr %i.pv, ptr %i.bd, align 16, !noalias !41695
  store ptr %i.pw, ptr %i.jy, align 8, !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !41695
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 13)
          to label %bb.ei unwind label %bb.eh, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit.i.i: ; preds = %bb.em, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit409.i.i, %bb.eh
  %.pn389.i.i = phi { ptr, i32 } [ %i.qa, %bb.eh ], [ %.pn385.pn.pn.i.i, %bb.em ], [ %.pn385.pn.pn.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit409.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bd) #22
          to label %bb.eb unwind label %bb.gz, !noalias !41696

bb.eh:                                            ; preds = %bb.hk, %bb.ei, %bb.eg
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit.i.i

bb.ei:                                            ; preds = %bb.eg
  invoke fastcc void @_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audioNtB2_7RmsNorm3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.az, i64 noundef %i.ij, double noundef %i.ka, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.ay)
          to label %bb.ej unwind label %bb.eh, !noalias !41696

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !41695
  %i.qb = load i64, ptr %i.az, align 8, !range !13, !noalias !41695, !noundef !4 ; 2 uses
  %.not368.i.i = icmp eq i64 %i.qb, -1
  %i.qc = load ptr, ptr %i.kb, align 8, !noalias !41695 ; 2 uses
  br i1 %.not368.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %.sroa.5263.0.copyload.i320.i = load i64, ptr %i.kc, align 8, !noalias !41695
  %i.qd = load <2 x ptr>, ptr %.sroa.6264.0..sroa_idx.i.i, align 8, !noalias !41723
  %i.qe = load <2 x i64>, ptr %.sroa.85.32..sroa.6264.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.0.0.copyload316 = load ptr, ptr %.sroa.89.32..sroa.6264.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.22.0.copyload332 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.32..sroa.6264.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  %.sroa.89.i.sroa.24.0.copyload348 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.32..sroa.6264.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !41695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i

bb.el:                                            ; preds = %bb.ej
  %i.qf = load double, ptr %i.kc, align 8, !noalias !41695, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !41695
  store ptr %i.qc, ptr %i.ba, align 8, !noalias !41695
  store double %i.qf, ptr %i.kd, align 8, !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !41695
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 14)
          to label %bb.eo unwind label %bb.en, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit409.i.i: ; preds = %bb.es, %.thread520.i.i, %bb.en
  %.pn385.pn.pn.i.i = phi { ptr, i32 } [ %i.qj, %bb.en ], [ %.pn385.pn.i.i, %bb.es ], [ %.pn385.pn.i.i, %.thread520.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41729)
  call void @llvm.experimental.noalias.scope.decl(metadata !41730)
  call void @llvm.experimental.noalias.scope.decl(metadata !41731)
  call void @llvm.experimental.noalias.scope.decl(metadata !41732)
  %i.qg = load ptr, ptr %i.ba, align 8, !alias.scope !41733, !noalias !41695, !nonnull !4, !noundef !4
  %i.qh = atomicrmw add ptr %i.qg, i64 -1 release, align 8, !noalias !41734
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %bb.em, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit.i.i

bb.em:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit409.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit.i.i unwind label %bb.gz, !noalias !41696

bb.en:                                            ; preds = %bb.hj, %bb.eo, %bb.el
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit409.i.i

bb.eo:                                            ; preds = %bb.el
  invoke fastcc void @_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audioNtB2_7RmsNorm3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.aw, i64 noundef %i.ij, double noundef %i.ka, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.av)
          to label %bb.ep unwind label %bb.en, !noalias !41696

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !41695
  %i.qk = load i64, ptr %i.aw, align 8, !range !13, !noalias !41695, !noundef !4 ; 2 uses
  %.not369.i.i = icmp eq i64 %i.qk, -1
  %i.ql = load ptr, ptr %i.ke, align 8, !noalias !41695 ; 2 uses
  br i1 %.not369.i.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %.sroa.5275.0.copyload.i321.i = load i64, ptr %i.kf, align 8, !noalias !41695
  %i.qm = load <2 x ptr>, ptr %.sroa.6276.0..sroa_idx.i.i, align 8, !noalias !41723
  %i.qn = load <2 x i64>, ptr %.sroa.85.32..sroa.6276.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.0.0.copyload317 = load ptr, ptr %.sroa.89.32..sroa.6276.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.22.0.copyload333 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.32..sroa.6276.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  %.sroa.89.i.sroa.24.0.copyload349 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.32..sroa.6276.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !41695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i

bb.er:                                            ; preds = %bb.ep
  %i.qo = load double, ptr %i.kf, align 8, !noalias !41695, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !41695
  store ptr %i.ql, ptr %i.ax, align 8, !noalias !41695
  store double %i.qo, ptr %i.kg, align 8, !noalias !41695
  %i.qp = uitofp i64 %i.mo to double
  %i.qq = call double @llvm.pow.f64(double %i.qp, double -5.000000e-01)
  %i.qr = fdiv double %i.qq, f0x3FE62E42FEFA39EF
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !41695
  invoke fastcc void @_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.au, i8 noundef 0, i64 noundef %i.kh)
          to label %.preheader.i.i unwind label %.thread527.i.i, !noalias !41696

.preheader.i.i:                                   ; preds = %bb.er
  br i1 %.not.i.i, label %._crit_edge.split.i.i, label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %.preheader.i.i
  %3 = load i64, ptr %i.ki, align 8, !noalias !41695 ; 2 uses
  %4 = load ptr, ptr %i.kj, align 8, !noalias !41695, !nonnull !4
  br i1 %.not533.i.i, label %._crit_edge.split.i.i, label %.lr.ph.i.i

.thread520.i.i:                                   ; preds = %bb.fe, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i, %bb.ey, %bb.ex, %bb.et, %.thread527.i.i
  %.pn385.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp526.i.i, %bb.et ], [ %.pn381.i.i, %bb.fe ], [ %.pn381.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i ], [ %lpad.thr_comm525.i.i, %.thread527.i.i ], [ %i.re, %bb.ex ], [ %i.re, %bb.ey ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41735)
  call void @llvm.experimental.noalias.scope.decl(metadata !41736)
  call void @llvm.experimental.noalias.scope.decl(metadata !41737)
  call void @llvm.experimental.noalias.scope.decl(metadata !41738)
  %i.qs = load ptr, ptr %i.ax, align 8, !alias.scope !41739, !noalias !41695, !nonnull !4, !noundef !4
  %i.qt = atomicrmw add ptr %i.qs, i64 -1 release, align 8, !noalias !41740
  %i.qu = icmp eq i64 %i.qt, 1
  br i1 %i.qu, label %bb.es, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit409.i.i

bb.es:                                            ; preds = %.thread520.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit409.i.i unwind label %bb.gz, !noalias !41696

..loopexit_crit_edge.i.i:                         ; preds = %bb.hm
  %exitcond.not.i.i = icmp eq i64 %i.qx, %i.im
  br i1 %exitcond.not.i.i, label %._crit_edge.split.i.i, label %.lr.ph.i.i

._crit_edge.split.i.i:                            ; preds = %..loopexit_crit_edge.i.i, %.preheader.i.i.a, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !41695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !41695
  %i.qv = load ptr, ptr %i.kk, align 8, !alias.scope !41694, !noalias !41691, !nonnull !4, !noundef !4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 25
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implTjjEhECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ap, i64 noundef %i.im, i64 noundef %i.it, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.qw, i1 noundef zeroext false)
          to label %bb.eu unwind label %.thread527.i.i, !noalias !41696

.lr.ph.i.i:                                       ; preds = %.preheader.i.i.a, %..loopexit_crit_edge.i.i
  %.sroa.0281.0531.i.i = phi i64 [ %i.qx, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.i.i.a ] ; 4 uses
  %i.qx = add nuw i64 %.sroa.0281.0531.i.i, 1     ; 2 uses
  %i.qy = add i64 %.sroa.0281.0531.i.i, %i.is
  %i.qz = mul i64 %.sroa.0281.0531.i.i, %i.it
  br label %bb.hl

.thread527.i.i:                                   ; preds = %bb.hh, %bb.fb, %._crit_edge.split.i.i, %bb.er
  %lpad.thr_comm525.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread520.i.i

bb.et:                                            ; preds = %bb.hp
  %lpad.thr_comm.split-lp526.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #22
          to label %.thread520.i.i unwind label %bb.gz, !noalias !41696

bb.eu:                                            ; preds = %._crit_edge.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !41695
  %i.ra = load i64, ptr %i.aq, align 8, !range !13, !noalias !41695, !noundef !4 ; 2 uses
  %.not370.i.i = icmp eq i64 %i.ra, -1
  %i.rb = load ptr, ptr %i.kl, align 8, !noalias !41695 ; 2 uses
  br i1 %.not370.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %.sroa.58.24.copyload84.i = load i64, ptr %.sroa.5290.0..sroa_idx.i.i, align 8, !noalias !41723
  %i.rc = load <2 x ptr>, ptr %.sroa.75.24..sroa.5290.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %i.rd = load <2 x i64>, ptr %.sroa.85.24..sroa.5290.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.0.0.copyload318 = load ptr, ptr %.sroa.89.24..sroa.5290.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.22.0.copyload334 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5290.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  %.sroa.89.i.sroa.24.0.copyload350 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5290.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !41695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !41695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !41695
  store ptr %i.rb, ptr %i.ar, align 8, !noalias !41695
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, i8 noundef 0)
          to label %bb.ez unwind label %bb.ex, !noalias !41696

bb.ex:                                            ; preds = %bb.ew
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41741)
  call void @llvm.experimental.noalias.scope.decl(metadata !41742)
  call void @llvm.experimental.noalias.scope.decl(metadata !41743)
  %i.rf = load ptr, ptr %i.ar, align 8, !alias.scope !41744, !noalias !41695, !nonnull !4, !noundef !4
  %i.rg = atomicrmw add ptr %i.rf, i64 -1 release, align 8, !noalias !41745
  %i.rh = icmp eq i64 %i.rg, 1
  br i1 %i.rh, label %bb.ey, label %.thread520.i.i

bb.ey:                                            ; preds = %bb.ex
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #20
          to label %.thread520.i.i unwind label %bb.gz, !noalias !41696

bb.ez:                                            ; preds = %bb.ew
  %i.ri = load i64, ptr %i.as, align 8, !range !13, !noalias !41695, !noundef !4 ; 3 uses
  %.not371.i.i = icmp eq i64 %i.ri, -1
  %i.rj = load ptr, ptr %i.km, align 8, !noalias !41695 ; 3 uses
  br i1 %.not371.i.i, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.sroa.58.24.copyload85.i = load i64, ptr %.sroa.5299.0..sroa_idx.i.i, align 8, !noalias !41723 ; 2 uses
  %i.rk = load <2 x ptr>, ptr %.sroa.75.24..sroa.5299.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723 ; 2 uses
  %i.rl = load <2 x i64>, ptr %.sroa.85.24..sroa.5299.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723 ; 2 uses
  %.sroa.89.i.sroa.0.0.copyload319 = load ptr, ptr %.sroa.89.24..sroa.5299.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723 ; 2 uses
  %.sroa.89.i.sroa.22.0.copyload335 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5299.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723 ; 2 uses
  %.sroa.89.i.sroa.24.0.copyload351 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5299.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41746)
  call void @llvm.experimental.noalias.scope.decl(metadata !41747)
  call void @llvm.experimental.noalias.scope.decl(metadata !41748)
  %i.rm = load ptr, ptr %i.ar, align 8, !alias.scope !41749, !noalias !41695, !nonnull !4, !noundef !4
  %i.rn = atomicrmw add ptr %i.rm, i64 -1 release, align 8, !noalias !41750
  %i.ro = icmp eq i64 %i.rn, 1
  br i1 %i.ro, label %bb.fb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i

bb.fb:                                            ; preds = %bb.fa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i unwind label %.thread527.i.i, !noalias !41696

bb.fc:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !41695
  store ptr %i.rj, ptr %i.at, align 8, !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41751)
  call void @llvm.experimental.noalias.scope.decl(metadata !41752)
  call void @llvm.experimental.noalias.scope.decl(metadata !41753)
  %i.rp = load ptr, ptr %i.ar, align 8, !alias.scope !41754, !noalias !41695, !nonnull !4, !noundef !4
  %i.rq = atomicrmw add ptr %i.rp, i64 -1 release, align 8, !noalias !41755
  %i.rr = icmp eq i64 %i.rq, 1
  br i1 %i.rr, label %bb.fd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit415.i.i

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit415.i.i unwind label %bb.ff, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i: ; preds = %bb.he, %bb.hd, %bb.gw, %bb.gv, %bb.gs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit443.i.i, %bb.fq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit427.i.i, %bb.fk, %bb.fj, %bb.ff
  %.pn381.i.i = phi { ptr, i32 } [ %i.rv, %bb.ff ], [ %i.sa, %bb.fj ], [ %i.ux, %bb.gv ], [ %.pn379.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit427.i.i ], [ %.pn.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit443.i.i ], [ %i.sa, %bb.fk ], [ %.pn379.i.i, %bb.fq ], [ %.pn.i.i, %bb.gs ], [ %i.ux, %bb.gw ], [ %i.wf, %bb.he ], [ %i.wf, %bb.hd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41756)
  call void @llvm.experimental.noalias.scope.decl(metadata !41757)
  call void @llvm.experimental.noalias.scope.decl(metadata !41758)
  %i.rs = load ptr, ptr %i.at, align 8, !alias.scope !41759, !noalias !41695, !nonnull !4, !noundef !4
  %i.rt = atomicrmw add ptr %i.rs, i64 -1 release, align 8, !noalias !41760
  %i.ru = icmp eq i64 %i.rt, 1
  br i1 %i.ru, label %bb.fe, label %.thread520.i.i

bb.fe:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #20
          to label %.thread520.i.i unwind label %bb.gz, !noalias !41696

bb.ff:                                            ; preds = %bb.hi, %bb.hf, %bb.hb, %bb.fn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit415.i.i, %bb.fd
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit415.i.i: ; preds = %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !41695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !41695
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor9ones_like(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bo)
          to label %bb.fg unwind label %bb.ff, !noalias !41696

bb.fg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit415.i.i
  %i.rw = load i64, ptr %i.ak, align 8, !range !13, !noalias !41695, !noundef !4 ; 2 uses
  %.not372.i.i = icmp eq i64 %i.rw, -1
  %i.rx = load ptr, ptr %i.kn, align 8, !noalias !41695 ; 2 uses
  br i1 %.not372.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.sroa.58.24.copyload86.i = load i64, ptr %.sroa.5308.0..sroa_idx.i.i, align 8, !noalias !41723
  %i.ry = load <2 x ptr>, ptr %.sroa.75.24..sroa.5308.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %i.rz = load <2 x i64>, ptr %.sroa.85.24..sroa.5308.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.0.0.copyload320 = load ptr, ptr %.sroa.89.24..sroa.5308.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723
  %.sroa.89.i.sroa.22.0.copyload336 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5308.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  %.sroa.89.i.sroa.24.0.copyload352 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5308.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !41695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !41695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !41695
  store ptr %i.rx, ptr %i.al, align 8, !noalias !41695
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al, i8 noundef 7)
          to label %bb.fl unwind label %bb.fj, !noalias !41696

bb.fj:                                            ; preds = %bb.fi
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41761)
  call void @llvm.experimental.noalias.scope.decl(metadata !41762)
  call void @llvm.experimental.noalias.scope.decl(metadata !41763)
  %i.sb = load ptr, ptr %i.al, align 8, !alias.scope !41764, !noalias !41695, !nonnull !4, !noundef !4
  %i.sc = atomicrmw add ptr %i.sb, i64 -1 release, align 8, !noalias !41765
  %i.sd = icmp eq i64 %i.sc, 1
  br i1 %i.sd, label %bb.fk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i

bb.fk:                                            ; preds = %bb.fj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i unwind label %bb.gz, !noalias !41696

bb.fl:                                            ; preds = %bb.fi
  %i.se = load i64, ptr %i.am, align 8, !range !13, !noalias !41695, !noundef !4 ; 3 uses
  %.not373.i.i = icmp eq i64 %i.se, -1
  %i.sf = load ptr, ptr %i.ko, align 8, !noalias !41695 ; 3 uses
  br i1 %.not373.i.i, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %.sroa.58.24.copyload87.i = load i64, ptr %.sroa.5317.0..sroa_idx.i.i, align 8, !noalias !41723 ; 2 uses
  %i.sg = load <2 x ptr>, ptr %.sroa.75.24..sroa.5317.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723 ; 2 uses
  %i.sh = load <2 x i64>, ptr %.sroa.85.24..sroa.5317.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723 ; 2 uses
  %.sroa.89.i.sroa.0.0.copyload321 = load ptr, ptr %.sroa.89.24..sroa.5317.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !41723 ; 2 uses
  %.sroa.89.i.sroa.22.0.copyload337 = load i64, ptr %.sroa.89.i.sroa.22.0..sroa.89.24..sroa.5317.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723 ; 2 uses
  %.sroa.89.i.sroa.24.0.copyload353 = load double, ptr %.sroa.89.i.sroa.24.0..sroa.89.24..sroa.5317.0..sroa_idx.i.sroa_idx.i.sroa_idx, align 8, !noalias !41723 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41766)
  call void @llvm.experimental.noalias.scope.decl(metadata !41767)
  call void @llvm.experimental.noalias.scope.decl(metadata !41768)
  %i.si = load ptr, ptr %i.al, align 8, !alias.scope !41769, !noalias !41695, !nonnull !4, !noundef !4
  %i.sj = atomicrmw add ptr %i.si, i64 -1 release, align 8, !noalias !41770
end_hunk_1
begin_hunk_2_@_RNvMs9_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audioNtB5_10AudioModel3new:bb.a
  %i.wa = phi <2 x i64> [ %i.uc, %bb.hb ], [ %i.uc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit455.i.i ], [ %i.tr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit463.i.i ]
  %i.wb = phi <2 x ptr> [ %i.ub, %bb.hb ], [ %i.ub, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit455.i.i ], [ %i.tq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit463.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !41695
  br label %bb.hg

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit437.i.i: ; preds = %bb.gj, %bb.gi
  call void @llvm.experimental.noalias.scope.decl(metadata !41861)
  call void @llvm.experimental.noalias.scope.decl(metadata !41862)
  call void @llvm.experimental.noalias.scope.decl(metadata !41863)
  %i.wc = load ptr, ptr %i.an, align 8, !alias.scope !41864, !noalias !41695, !nonnull !4, !noundef !4
  %i.wd = atomicrmw add ptr %i.wc, i64 -1 release, align 8, !noalias !41865
  %i.we = icmp eq i64 %i.wd, 1
  br i1 %i.we, label %bb.hc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit443.i.i

bb.hc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit437.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit443.i.i unwind label %bb.gz, !noalias !41696

bb.hd:                                            ; preds = %bb.gg
  %i.wf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41866)
  call void @llvm.experimental.noalias.scope.decl(metadata !41867)
  call void @llvm.experimental.noalias.scope.decl(metadata !41868)
  %i.wg = load ptr, ptr %i.an, align 8, !alias.scope !41869, !noalias !41695, !nonnull !4, !noundef !4
  %i.wh = atomicrmw add ptr %i.wg, i64 -1 release, align 8, !noalias !41870
  %i.wi = icmp eq i64 %i.wh, 1
  br i1 %i.wi, label %bb.he, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i

bb.he:                                            ; preds = %bb.hd
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit419.i.i unwind label %bb.gz, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit435.i.i: ; preds = %bb.gg, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41871)
  call void @llvm.experimental.noalias.scope.decl(metadata !41872)
  call void @llvm.experimental.noalias.scope.decl(metadata !41873)
  %i.wj = load ptr, ptr %i.an, align 8, !alias.scope !41874, !noalias !41695, !nonnull !4, !noundef !4
  %i.wk = atomicrmw add ptr %i.wj, i64 -1 release, align 8, !noalias !41875
  %i.wl = icmp eq i64 %i.wk, 1
  br i1 %i.wl, label %bb.hf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit463.i.i

bb.hf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit435.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit463.i.i unwind label %bb.ff, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit463.i.i: ; preds = %bb.hf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit435.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !41695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i

bb.hg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i
  %.sroa.89.i.sroa.0.12 = phi ptr [ %.sroa.89.i.sroa.0.14, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %.sroa.89.i.sroa.0.11, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  %.sroa.89.i.sroa.22.12 = phi i64 [ %.sroa.89.i.sroa.22.14, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %.sroa.89.i.sroa.22.11, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  %.sroa.89.i.sroa.24.12 = phi double [ %.sroa.89.i.sroa.24.14, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %.sroa.89.i.sroa.24.11, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  %.sroa.58.12.i = phi i64 [ %.sroa.58.14.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %.sroa.58.11.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  %.sroa.41.12.i = phi ptr [ %.sroa.41.14.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %.sroa.41.11.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  %.sroa.22.12.i = phi i64 [ %.sroa.22.14.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %.sroa.22.11.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  %i.wm = phi <2 x i64> [ %i.wa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %i.ww, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  %i.wn = phi <2 x ptr> [ %i.wb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit457.i.i ], [ %i.wx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41876)
  call void @llvm.experimental.noalias.scope.decl(metadata !41877)
  call void @llvm.experimental.noalias.scope.decl(metadata !41878)
  %i.wo = load ptr, ptr %i.at, align 8, !alias.scope !41879, !noalias !41695, !nonnull !4, !noundef !4
  %i.wp = atomicrmw add ptr %i.wo, i64 -1 release, align 8, !noalias !41880
  %i.wq = icmp eq i64 %i.wp, 1
  br i1 %i.wq, label %bb.hh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i

bb.hh:                                            ; preds = %bb.hg
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i unwind label %.thread527.i.i, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i: ; preds = %bb.fz, %bb.fy, %bb.ft
  %.sroa.89.i.sroa.0.13 = phi ptr [ %.sroa.89.i.sroa.0.0.copyload323, %bb.fz ], [ %.sroa.89.i.sroa.0.0.copyload323, %bb.fy ], [ %.sroa.89.i.sroa.0.0.copyload322, %bb.ft ] ; 2 uses
  %.sroa.89.i.sroa.22.13 = phi i64 [ %.sroa.89.i.sroa.22.0.copyload339, %bb.fz ], [ %.sroa.89.i.sroa.22.0.copyload339, %bb.fy ], [ %.sroa.89.i.sroa.22.0.copyload338, %bb.ft ] ; 2 uses
  %.sroa.89.i.sroa.24.13 = phi double [ %.sroa.89.i.sroa.24.0.copyload355, %bb.fz ], [ %.sroa.89.i.sroa.24.0.copyload355, %bb.fy ], [ %.sroa.89.i.sroa.24.0.copyload354, %bb.ft ] ; 2 uses
  %.sroa.58.13.i = phi i64 [ %.sroa.58.24.copyload89.i, %bb.fz ], [ %.sroa.58.24.copyload89.i, %bb.fy ], [ %.sroa.58.24.copyload88.i, %bb.ft ] ; 2 uses
  %.sroa.41.13.i = phi ptr [ %i.tb, %bb.fz ], [ %i.tb, %bb.fy ], [ %i.st, %bb.ft ] ; 2 uses
  %.sroa.22.13.i = phi i64 [ %i.ta, %bb.fz ], [ %i.ta, %bb.fy ], [ %i.ss, %bb.ft ] ; 2 uses
  %i.wr = phi <2 x ptr> [ %i.tc, %bb.fz ], [ %i.tc, %bb.fy ], [ %i.su, %bb.ft ] ; 2 uses
  %i.ws = phi <2 x i64> [ %i.td, %bb.fz ], [ %i.td, %bb.fy ], [ %i.sv, %bb.ft ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !41695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41881)
  call void @llvm.experimental.noalias.scope.decl(metadata !41882)
  call void @llvm.experimental.noalias.scope.decl(metadata !41883)
  %i.wt = load ptr, ptr %i.an, align 8, !alias.scope !41884, !noalias !41695, !nonnull !4, !noundef !4
  %i.wu = atomicrmw add ptr %i.wt, i64 -1 release, align 8, !noalias !41885
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.hi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i

bb.hi:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i unwind label %bb.ff, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i, %bb.hi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i
  %.sroa.89.i.sroa.0.11 = phi ptr [ %.sroa.89.i.sroa.0.13, %bb.hi ], [ %.sroa.89.i.sroa.0.13, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %.sroa.89.i.sroa.0.10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  %.sroa.89.i.sroa.22.11 = phi i64 [ %.sroa.89.i.sroa.22.13, %bb.hi ], [ %.sroa.89.i.sroa.22.13, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %.sroa.89.i.sroa.22.10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  %.sroa.89.i.sroa.24.11 = phi double [ %.sroa.89.i.sroa.24.13, %bb.hi ], [ %.sroa.89.i.sroa.24.13, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %.sroa.89.i.sroa.24.10, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  %.sroa.58.11.i = phi i64 [ %.sroa.58.13.i, %bb.hi ], [ %.sroa.58.13.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %.sroa.58.10.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  %.sroa.41.11.i = phi ptr [ %.sroa.41.13.i, %bb.hi ], [ %.sroa.41.13.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %.sroa.41.10.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  %.sroa.22.11.i = phi i64 [ %.sroa.22.13.i, %bb.hi ], [ %.sroa.22.13.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %.sroa.22.10.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  %i.ww = phi <2 x i64> [ %i.ws, %bb.hi ], [ %i.ws, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %i.wz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  %i.wx = phi <2 x ptr> [ %i.wr, %bb.hi ], [ %i.wr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit429.i.i ], [ %i.wy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !41695
  br label %bb.hg

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit421.i.i: ; preds = %bb.fn, %bb.fm, %bb.fh
  %.sroa.89.i.sroa.0.10 = phi ptr [ %.sroa.89.i.sroa.0.0.copyload321, %bb.fn ], [ %.sroa.89.i.sroa.0.0.copyload321, %bb.fm ], [ %.sroa.89.i.sroa.0.0.copyload320, %bb.fh ]
  %.sroa.89.i.sroa.22.10 = phi i64 [ %.sroa.89.i.sroa.22.0.copyload337, %bb.fn ], [ %.sroa.89.i.sroa.22.0.copyload337, %bb.fm ], [ %.sroa.89.i.sroa.22.0.copyload336, %bb.fh ]
  %.sroa.89.i.sroa.24.10 = phi double [ %.sroa.89.i.sroa.24.0.copyload353, %bb.fn ], [ %.sroa.89.i.sroa.24.0.copyload353, %bb.fm ], [ %.sroa.89.i.sroa.24.0.copyload352, %bb.fh ]
  %.sroa.58.10.i = phi i64 [ %.sroa.58.24.copyload87.i, %bb.fn ], [ %.sroa.58.24.copyload87.i, %bb.fm ], [ %.sroa.58.24.copyload86.i, %bb.fh ]
  %.sroa.41.10.i = phi ptr [ %i.sf, %bb.fn ], [ %i.sf, %bb.fm ], [ %i.rx, %bb.fh ]
  %.sroa.22.10.i = phi i64 [ %i.se, %bb.fn ], [ %i.se, %bb.fm ], [ %i.rw, %bb.fh ]
  %i.wy = phi <2 x ptr> [ %i.sg, %bb.fn ], [ %i.sg, %bb.fm ], [ %i.ry, %bb.fh ]
  %i.wz = phi <2 x i64> [ %i.sh, %bb.fn ], [ %i.sh, %bb.fm ], [ %i.rz, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !41695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit467.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i, %bb.hh, %bb.hg
  %.sroa.89.i.sroa.0.9 = phi ptr [ %.sroa.89.i.sroa.0.12, %bb.hh ], [ %.sroa.89.i.sroa.0.12, %bb.hg ], [ %.sroa.89.i.sroa.0.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  %.sroa.89.i.sroa.22.9 = phi i64 [ %.sroa.89.i.sroa.22.12, %bb.hh ], [ %.sroa.89.i.sroa.22.12, %bb.hg ], [ %.sroa.89.i.sroa.22.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  %.sroa.89.i.sroa.24.9 = phi double [ %.sroa.89.i.sroa.24.12, %bb.hh ], [ %.sroa.89.i.sroa.24.12, %bb.hg ], [ %.sroa.89.i.sroa.24.8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  %.sroa.58.9.i = phi i64 [ %.sroa.58.12.i, %bb.hh ], [ %.sroa.58.12.i, %bb.hg ], [ %.sroa.58.8.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  %.sroa.41.9.i = phi ptr [ %.sroa.41.12.i, %bb.hh ], [ %.sroa.41.12.i, %bb.hg ], [ %.sroa.41.8.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  %.sroa.22.9.i = phi i64 [ %.sroa.22.12.i, %bb.hh ], [ %.sroa.22.12.i, %bb.hg ], [ %.sroa.22.8.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  %i.xa = phi <2 x i64> [ %i.wm, %bb.hh ], [ %i.wm, %bb.hg ], [ %i.xf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  %i.xb = phi <2 x ptr> [ %i.wn, %bb.hh ], [ %i.wn, %bb.hg ], [ %i.xg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !41695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41886)
  call void @llvm.experimental.noalias.scope.decl(metadata !41887)
  call void @llvm.experimental.noalias.scope.decl(metadata !41888)
  call void @llvm.experimental.noalias.scope.decl(metadata !41889)
  %i.xc = load ptr, ptr %i.ax, align 8, !alias.scope !41890, !noalias !41695, !nonnull !4, !noundef !4
  %i.xd = atomicrmw add ptr %i.xc, i64 -1 release, align 8, !noalias !41891
  %i.xe = icmp eq i64 %i.xd, 1
  br i1 %i.xe, label %bb.hj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i

bb.hj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i unwind label %bb.en, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit413.i.i: ; preds = %bb.fb, %bb.fa, %bb.ev
  %.sroa.89.i.sroa.0.8 = phi ptr [ %.sroa.89.i.sroa.0.0.copyload319, %bb.fb ], [ %.sroa.89.i.sroa.0.0.copyload319, %bb.fa ], [ %.sroa.89.i.sroa.0.0.copyload318, %bb.ev ]
  %.sroa.89.i.sroa.22.8 = phi i64 [ %.sroa.89.i.sroa.22.0.copyload335, %bb.fb ], [ %.sroa.89.i.sroa.22.0.copyload335, %bb.fa ], [ %.sroa.89.i.sroa.22.0.copyload334, %bb.ev ]
  %.sroa.89.i.sroa.24.8 = phi double [ %.sroa.89.i.sroa.24.0.copyload351, %bb.fb ], [ %.sroa.89.i.sroa.24.0.copyload351, %bb.fa ], [ %.sroa.89.i.sroa.24.0.copyload350, %bb.ev ]
  %.sroa.58.8.i = phi i64 [ %.sroa.58.24.copyload85.i, %bb.fb ], [ %.sroa.58.24.copyload85.i, %bb.fa ], [ %.sroa.58.24.copyload84.i, %bb.ev ]
  %.sroa.41.8.i = phi ptr [ %i.rj, %bb.fb ], [ %i.rj, %bb.fa ], [ %i.rb, %bb.ev ]
  %.sroa.22.8.i = phi i64 [ %i.ri, %bb.fb ], [ %i.ri, %bb.fa ], [ %i.ra, %bb.ev ]
  %i.xf = phi <2 x i64> [ %i.rl, %bb.fb ], [ %i.rl, %bb.fa ], [ %i.rd, %bb.ev ]
  %i.xg = phi <2 x ptr> [ %i.rk, %bb.fb ], [ %i.rk, %bb.fa ], [ %i.rc, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !41695
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i: ; preds = %bb.hj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i, %bb.eq
  %.sroa.89.i.sroa.0.7 = phi ptr [ %.sroa.89.i.sroa.0.9, %bb.hj ], [ %.sroa.89.i.sroa.0.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %.sroa.89.i.sroa.0.0.copyload317, %bb.eq ] ; 2 uses
  %.sroa.89.i.sroa.22.7 = phi i64 [ %.sroa.89.i.sroa.22.9, %bb.hj ], [ %.sroa.89.i.sroa.22.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %.sroa.89.i.sroa.22.0.copyload333, %bb.eq ] ; 2 uses
  %.sroa.89.i.sroa.24.7 = phi double [ %.sroa.89.i.sroa.24.9, %bb.hj ], [ %.sroa.89.i.sroa.24.9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %.sroa.89.i.sroa.24.0.copyload349, %bb.eq ] ; 2 uses
  %.sroa.58.7.i = phi i64 [ %.sroa.58.9.i, %bb.hj ], [ %.sroa.58.9.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %.sroa.5275.0.copyload.i321.i, %bb.eq ] ; 2 uses
  %.sroa.41.7.i = phi ptr [ %.sroa.41.9.i, %bb.hj ], [ %.sroa.41.9.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %i.ql, %bb.eq ] ; 2 uses
  %.sroa.22.7.i = phi i64 [ %.sroa.22.9.i, %bb.hj ], [ %.sroa.22.9.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %i.qk, %bb.eq ] ; 2 uses
  %i.xh = phi <2 x i64> [ %i.xa, %bb.hj ], [ %i.xa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %i.qn, %bb.eq ] ; 2 uses
  %i.xi = phi <2 x ptr> [ %i.xb, %bb.hj ], [ %i.xb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit465.i.i ], [ %i.qm, %bb.eq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41892)
  call void @llvm.experimental.noalias.scope.decl(metadata !41893)
  call void @llvm.experimental.noalias.scope.decl(metadata !41894)
  call void @llvm.experimental.noalias.scope.decl(metadata !41895)
  %i.xj = load ptr, ptr %i.ba, align 8, !alias.scope !41896, !noalias !41695, !nonnull !4, !noundef !4
  %i.xk = atomicrmw add ptr %i.xj, i64 -1 release, align 8, !noalias !41897
  %i.xl = icmp eq i64 %i.xk, 1
  br i1 %i.xl, label %bb.hk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i

bb.hk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i unwind label %bb.eh, !noalias !41696

bb.hl:                                            ; preds = %bb.hm, %.lr.ph.i.i
  %.sroa.0283.0530.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.xm, %bb.hm ] ; 4 uses
  %i.xm = add nuw i64 %.sroa.0283.0530.i.i, 1     ; 2 uses
  %.not383.i.i = icmp ult i64 %.sroa.0283.0530.i.i, %.sroa.0281.0531.i.i
  %.not384.i.i = icmp sgt i64 %.sroa.0283.0530.i.i, %i.qy
  %brmerge.i.i = or i1 %.not383.i.i, %.not384.i.i
  br i1 %brmerge.i.i, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.ho, %bb.hl
  %i.xn = icmp ult i64 %i.xm, %i.it
  br i1 %i.xn, label %bb.hl, label %..loopexit_crit_edge.i.i

bb.hn:                                            ; preds = %bb.hl
  %i.xo = add i64 %.sroa.0283.0530.i.i, %i.qz     ; 3 uses
  %i.xp = icmp ult i64 %i.xo, %3
  br i1 %i.xp, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.xq = getelementptr inbounds nuw i8, ptr %4, i64 %i.xo
  store i8 1, ptr %i.xq, align 1, !noalias !41696
  br label %bb.hm

bb.hp:                                            ; preds = %bb.hn
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.xo, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #24
          to label %bb.cd unwind label %bb.et, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i: ; preds = %bb.hk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i, %bb.ek
  %.sroa.89.i.sroa.0.6 = phi ptr [ %.sroa.89.i.sroa.0.7, %bb.hk ], [ %.sroa.89.i.sroa.0.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %.sroa.89.i.sroa.0.0.copyload316, %bb.ek ]
  %.sroa.89.i.sroa.22.6 = phi i64 [ %.sroa.89.i.sroa.22.7, %bb.hk ], [ %.sroa.89.i.sroa.22.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %.sroa.89.i.sroa.22.0.copyload332, %bb.ek ]
  %.sroa.89.i.sroa.24.6 = phi double [ %.sroa.89.i.sroa.24.7, %bb.hk ], [ %.sroa.89.i.sroa.24.7, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %.sroa.89.i.sroa.24.0.copyload348, %bb.ek ]
  %.sroa.58.6.i = phi i64 [ %.sroa.58.7.i, %bb.hk ], [ %.sroa.58.7.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %.sroa.5263.0.copyload.i320.i, %bb.ek ]
  %.sroa.41.6.i = phi ptr [ %.sroa.41.7.i, %bb.hk ], [ %.sroa.41.7.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %i.qc, %bb.ek ]
  %.sroa.22.6.i = phi i64 [ %.sroa.22.7.i, %bb.hk ], [ %.sroa.22.7.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %i.qb, %bb.ek ]
  %i.xr = phi <2 x i64> [ %i.xh, %bb.hk ], [ %i.xh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %i.qe, %bb.ek ]
  %i.xs = phi <2 x ptr> [ %i.xi, %bb.hk ], [ %i.xi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit470.i.i ], [ %i.qd, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !41695
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bd)
          to label %bb.hq unwind label %bb.ec, !noalias !41696

bb.hq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i, %bb.ef
  %.sroa.89.i.sroa.0.5 = phi ptr [ %.sroa.89.i.sroa.0.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %.sroa.89.i.sroa.0.0.copyload315, %bb.ef ] ; 3 uses
  %.sroa.89.i.sroa.22.5 = phi i64 [ %.sroa.89.i.sroa.22.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %.sroa.89.i.sroa.22.0.copyload331, %bb.ef ] ; 3 uses
  %.sroa.89.i.sroa.24.5 = phi double [ %.sroa.89.i.sroa.24.6, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %.sroa.89.i.sroa.24.0.copyload347, %bb.ef ] ; 3 uses
  %.sroa.58.5.i = phi i64 [ %.sroa.58.6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %i.pz, %bb.ef ] ; 3 uses
  %.sroa.41.5.i = phi ptr [ %.sroa.41.6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %i.pv, %bb.ef ] ; 3 uses
  %.sroa.22.5.i = phi i64 [ %.sroa.22.6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %i.pu, %bb.ef ] ; 3 uses
  %i.xt = phi <2 x i64> [ %i.xr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %i.py, %bb.ef ] ; 3 uses
  %i.xu = phi <2 x ptr> [ %i.xs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma45audio7RmsNormEBJ_.exit473.i.i ], [ %i.px, %bb.ef ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41898)
  call void @llvm.experimental.noalias.scope.decl(metadata !41899), !noalias !41696
  call void @llvm.experimental.noalias.scope.decl(metadata !41900), !noalias !41696
  call void @llvm.experimental.noalias.scope.decl(metadata !41901), !noalias !41696
  %i.xv = load ptr, ptr %i.bg, align 16, !alias.scope !41902, !noalias !41696, !nonnull !4, !noundef !4
  %i.xw = atomicrmw add ptr %i.xv, i64 -1 release, align 8, !noalias !41903
  %i.xx = icmp eq i64 %i.xw, 1
  br i1 %i.xx, label %bb.hr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80

bb.hr:                                            ; preds = %bb.hq
  fence acquire, !noalias !41696
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bg) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 unwind label %bb.hs, !noalias !41696

bb.hs:                                            ; preds = %bb.hr
  %i.xy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41904), !noalias !41696
  %i.xz = load ptr, ptr %i.jv, align 8, !alias.scope !41905, !noalias !41696, !noundef !4 ; 2 uses
  %i.ya = icmp eq ptr %i.xz, null
  br i1 %i.ya, label %.body83, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.yb = atomicrmw add ptr %i.xz, i64 -1 release, align 8, !noalias !41906
  %i.yc = icmp eq i64 %i.yb, 1
  br i1 %i.yc, label %bb.hu, label %.body83

bb.hu:                                            ; preds = %bb.ht
  fence acquire, !noalias !41696
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jv) #20
          to label %.body83 unwind label %bb.hx, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80: ; preds = %bb.hr, %bb.hq
  call void @llvm.experimental.noalias.scope.decl(metadata !41907), !noalias !41696
  %i.yd = load ptr, ptr %i.jv, align 8, !alias.scope !41908, !noalias !41696, !noundef !4 ; 2 uses
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit85, label %bb.hv

bb.hv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80
  %i.yf = atomicrmw add ptr %i.yd, i64 -1 release, align 8, !noalias !41909
  %i.yg = icmp eq i64 %i.yf, 1
  br i1 %i.yg, label %bb.hw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit85

bb.hw:                                            ; preds = %bb.hv
  fence acquire, !noalias !41696
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jv) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit85 unwind label %bb.dw

bb.hx:                                            ; preds = %bb.hu
  %i.yh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !41696
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit85: ; preds = %bb.hv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80, %bb.hw, %bb.dz
  %.sroa.89.i.sroa.0.4 = phi ptr [ %.sroa.89.i.sroa.0.0.copyload314, %bb.dz ], [ %.sroa.89.i.sroa.0.5, %bb.hw ], [ %.sroa.89.i.sroa.0.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %.sroa.89.i.sroa.0.5, %bb.hv ] ; 3 uses
  %.sroa.89.i.sroa.22.4 = phi i64 [ %.sroa.89.i.sroa.22.0.copyload330, %bb.dz ], [ %.sroa.89.i.sroa.22.5, %bb.hw ], [ %.sroa.89.i.sroa.22.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %.sroa.89.i.sroa.22.5, %bb.hv ] ; 3 uses
  %.sroa.89.i.sroa.24.4 = phi double [ %.sroa.89.i.sroa.24.0.copyload346, %bb.dz ], [ %.sroa.89.i.sroa.24.5, %bb.hw ], [ %.sroa.89.i.sroa.24.5, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %.sroa.89.i.sroa.24.5, %bb.hv ] ; 3 uses
  %.sroa.58.4.i = phi i64 [ %i.ps, %bb.dz ], [ %.sroa.58.5.i, %bb.hw ], [ %.sroa.58.5.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %.sroa.58.5.i, %bb.hv ] ; 3 uses
  %.sroa.41.4.i = phi ptr [ %i.po, %bb.dz ], [ %.sroa.41.5.i, %bb.hw ], [ %.sroa.41.5.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %.sroa.41.5.i, %bb.hv ] ; 3 uses
  %.sroa.22.4.i = phi i64 [ %i.pn, %bb.dz ], [ %.sroa.22.5.i, %bb.hw ], [ %.sroa.22.5.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %.sroa.22.5.i, %bb.hv ] ; 3 uses
  %i.yi = phi <2 x i64> [ %i.pr, %bb.dz ], [ %i.xt, %bb.hw ], [ %i.xt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %i.xt, %bb.hv ] ; 3 uses
  %i.yj = phi <2 x ptr> [ %i.pq, %bb.dz ], [ %i.xu, %bb.hw ], [ %i.xu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i80 ], [ %i.xu, %bb.hv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41910)
  call void @llvm.experimental.noalias.scope.decl(metadata !41911), !noalias !41696
  call void @llvm.experimental.noalias.scope.decl(metadata !41912), !noalias !41696
  call void @llvm.experimental.noalias.scope.decl(metadata !41913), !noalias !41696
  %i.yk = load ptr, ptr %i.bj, align 8, !alias.scope !41914, !noalias !41696, !nonnull !4, !noundef !4
  %i.yl = atomicrmw add ptr %i.yk, i64 -1 release, align 8, !noalias !41915
  %i.ym = icmp eq i64 %i.yl, 1
  br i1 %i.ym, label %bb.hy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74

bb.hy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit85
  fence acquire, !noalias !41696
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 unwind label %bb.hz, !noalias !41696

bb.hz:                                            ; preds = %bb.hy
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41916), !noalias !41696
  %i.yo = load ptr, ptr %i.js, align 8, !alias.scope !41917, !noalias !41696, !noundef !4 ; 2 uses
  %i.yp = icmp eq ptr %i.yo, null
  br i1 %i.yp, label %.body77, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.yq = atomicrmw add ptr %i.yo, i64 -1 release, align 8, !noalias !41918
  %i.yr = icmp eq i64 %i.yq, 1
  br i1 %i.yr, label %bb.ib, label %.body77

bb.ib:                                            ; preds = %bb.ia
  fence acquire, !noalias !41696
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.js) #20
          to label %.body77 unwind label %bb.ie, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74: ; preds = %bb.hy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit85
  call void @llvm.experimental.noalias.scope.decl(metadata !41919), !noalias !41696
  %i.ys = load ptr, ptr %i.js, align 8, !alias.scope !41920, !noalias !41696, !noundef !4 ; 2 uses
  %i.yt = icmp eq ptr %i.ys, null
  br i1 %i.yt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit79, label %bb.ic

bb.ic:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74
  %i.yu = atomicrmw add ptr %i.ys, i64 -1 release, align 8, !noalias !41921
  %i.yv = icmp eq i64 %i.yu, 1
  br i1 %i.yv, label %bb.id, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit79

bb.id:                                            ; preds = %bb.ic
  fence acquire, !noalias !41696
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.js) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit79 unwind label %bb.dr

bb.ie:                                            ; preds = %bb.ib
  %i.yw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #21, !noalias !41696
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit79: ; preds = %bb.ic, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74, %bb.id, %bb.du
  %.sroa.89.i.sroa.0.3 = phi ptr [ %.sroa.89.i.sroa.0.0.copyload313, %bb.du ], [ %.sroa.89.i.sroa.0.4, %bb.id ], [ %.sroa.89.i.sroa.0.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %.sroa.89.i.sroa.0.4, %bb.ic ] ; 3 uses
  %.sroa.89.i.sroa.22.3 = phi i64 [ %.sroa.89.i.sroa.22.0.copyload329, %bb.du ], [ %.sroa.89.i.sroa.22.4, %bb.id ], [ %.sroa.89.i.sroa.22.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %.sroa.89.i.sroa.22.4, %bb.ic ] ; 3 uses
  %.sroa.89.i.sroa.24.3 = phi double [ %.sroa.89.i.sroa.24.0.copyload345, %bb.du ], [ %.sroa.89.i.sroa.24.4, %bb.id ], [ %.sroa.89.i.sroa.24.4, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %.sroa.89.i.sroa.24.4, %bb.ic ] ; 3 uses
  %.sroa.58.3.i = phi i64 [ %i.pl, %bb.du ], [ %.sroa.58.4.i, %bb.id ], [ %.sroa.58.4.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %.sroa.58.4.i, %bb.ic ] ; 3 uses
  %.sroa.41.3.i = phi ptr [ %i.ph, %bb.du ], [ %.sroa.41.4.i, %bb.id ], [ %.sroa.41.4.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %.sroa.41.4.i, %bb.ic ] ; 3 uses
  %.sroa.22.3.i = phi i64 [ %i.pg, %bb.du ], [ %.sroa.22.4.i, %bb.id ], [ %.sroa.22.4.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %.sroa.22.4.i, %bb.ic ] ; 3 uses
  %i.yx = phi <2 x i64> [ %i.pk, %bb.du ], [ %i.yi, %bb.id ], [ %i.yi, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %i.yi, %bb.ic ] ; 3 uses
  %i.yy = phi <2 x ptr> [ %i.pj, %bb.du ], [ %i.yj, %bb.id ], [ %i.yj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i74 ], [ %i.yj, %bb.ic ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !41695
  call void @llvm.experimental.noalias.scope.decl(metadata !41922)
  call void @llvm.experimental.noalias.scope.decl(metadata !41923)
  call void @llvm.experimental.noalias.scope.decl(metadata !41924)
  call void @llvm.experimental.noalias.scope.decl(metadata !41925)
  %i.yz = load ptr, ptr %i.bm, align 8, !alias.scope !41926, !noalias !41695, !nonnull !4, !noundef !4
  %i.za = atomicrmw add ptr %i.yz, i64 -1 release, align 8, !noalias !41927
  %i.zb = icmp eq i64 %i.za, 1
  br i1 %i.zb, label %bb.if, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i474.i.i

bb.if:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit79
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i474.i.i unwind label %bb.ig, !noalias !41696

bb.ig:                                            ; preds = %bb.if
  %i.zc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41928)
  %i.zd = load ptr, ptr %i.jp, align 8, !alias.scope !41929, !noalias !41695, !noundef !4 ; 2 uses
  %i.ze = icmp eq ptr %i.zd, null
  br i1 %i.ze, label %.body476.i.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.zf = atomicrmw add ptr %i.zd, i64 -1 release, align 8, !noalias !41930
  %i.zg = icmp eq i64 %i.zf, 1
  br i1 %i.zg, label %bb.ii, label %.body476.i.i

bb.ii:                                            ; preds = %bb.ih
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jp) #20
          to label %.body476.i.i unwind label %bb.il, !noalias !41696

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i474.i.i: ; preds = %bb.if, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit79
  call void @llvm.experimental.noalias.scope.decl(metadata !41931)
  %i.zh = load ptr, ptr %i.jp, align 8, !alias.scope !41932, !noalias !41695, !noundef !4 ; 2 uses
  %i.zi = icmp eq ptr %i.zh, null
  br i1 %i.zi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit.i.i, label %bb.ij

bb.ij:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i474.i.i
  %i.zj = atomicrmw add ptr %i.zh, i64 -1 release, align 8, !noalias !41933
  %i.zk = icmp eq i64 %i.zj, 1
end_hunk_2
