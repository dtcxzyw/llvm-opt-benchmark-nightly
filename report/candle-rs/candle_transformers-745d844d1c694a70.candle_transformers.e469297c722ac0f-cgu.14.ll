Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.14?download=true
inline.NumInlined: 4407
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs7_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma46visionNtB5_11VisionTower3new:bb.a
.loopexit.split-lp:                               ; preds = %bb.ad, %bb.ai, %.noexc, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body129

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.not390 = icmp eq i64 %i.dc, 0
  br i1 %.not390, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dq = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ds = load i64, ptr %i.dr, align 8            ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.du = load i64, ptr %i.dt, align 8            ; 5 uses
  %i.dv = mul i64 %i.du, %i.dq                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.697.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.43.32..sroa.697.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.45.32..sroa.697.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %.sroa.46.32..sroa.697.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.sroa.47.32..sroa.697.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 6 uses
  %i.dz = mul i64 %i.du, %i.ds                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.6109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.43.32..sroa.6109.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.45.32..sroa.6109.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.46.32..sroa.6109.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.47.32..sroa.6109.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ec = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.6121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.43.32..sroa.6121.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.45.32..sroa.6121.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %.sroa.46.32..sroa.6121.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %.sroa.47.32..sroa.6121.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6133.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.43.32..sroa.6133.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.45.32..sroa.6133.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.sroa.46.32..sroa.6133.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.47.32..sroa.6133.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ek = load double, ptr %i.ej, align 8         ; 6 uses
  %.sroa.410.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.511.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13302.16..sroa.511.0..sroa_idx.i160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.15304.16..sroa.511.0..sroa_idx.i160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.17306.16..sroa.511.0..sroa_idx.i160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.18307.16..sroa.511.0..sroa_idx.i160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.19308.16..sroa.511.0..sroa_idx.i160.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.el = bitcast double %i.ek to i64             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.511.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13312.16..sroa.511.0..sroa_idx.i150.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.15314.16..sroa.511.0..sroa_idx.i150.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.17316.16..sroa.511.0..sroa_idx.i150.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.18317.16..sroa.511.0..sroa_idx.i150.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.19318.16..sroa.511.0..sroa_idx.i150.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.en = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.er = icmp eq i64 %i.ds, 0
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %.sroa.4.sroa.12.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.650.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.24.24..sroa.650.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.26.24..sroa.650.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.27.24..sroa.650.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.28256.24..sroa.650.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.662.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.24.24..sroa.662.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.26.24..sroa.662.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.27.24..sroa.662.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.28256.24..sroa.662.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.674.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.24.24..sroa.674.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.26.24..sroa.674.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.27.24..sroa.674.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.28256.24..sroa.674.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.fd = load i64, ptr %i.fc, align 8, !range !23
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ff = load i64, ptr %i.fe, align 8
  %.sroa.4360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.sroa.5361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %.sroa.6362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.7363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %.sroa.9365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %.sroa.10366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.15261.16..sroa.511.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.15261.i.sroa.6.0..sroa.15261.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.15261.i.sroa.8.0..sroa.15261.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.15261.i.sroa.9.0..sroa.15261.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.15261.i.sroa.10.0..sroa.15261.16..sroa.511.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.511.0..sroa_idx.i162.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15266.16..sroa.511.0..sroa_idx.i162.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.15266.i.sroa.6.0..sroa.15266.16..sroa.511.0..sroa_idx.i162.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.15266.i.sroa.8.0..sroa.15266.16..sroa.511.0..sroa_idx.i162.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.15266.i.sroa.9.0..sroa.15266.16..sroa.511.0..sroa_idx.i162.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.15266.i.sroa.10.0..sroa.15266.16..sroa.511.0..sroa_idx.i162.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.fj = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.511.0..sroa_idx.i174.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.15271.16..sroa.511.0..sroa_idx.i174.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.15271.i.sroa.6.0..sroa.15271.16..sroa.511.0..sroa_idx.i174.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.15271.i.sroa.8.0..sroa.15271.16..sroa.511.0..sroa_idx.i174.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.15271.i.sroa.9.0..sroa.15271.16..sroa.511.0..sroa_idx.i174.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.15271.i.sroa.10.0..sroa.15271.16..sroa.511.0..sroa_idx.i174.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.fl = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %.sroa.410.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.511.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14294.16..sroa.511.0..sroa_idx.i139.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.16295.16..sroa.511.0..sroa_idx.i139.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.18296.16..sroa.511.0..sroa_idx.i139.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.19297.16..sroa.511.0..sroa_idx.i139.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.20298.16..sroa.511.0..sroa_idx.i139.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.69.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.69.sroa.7.0..sroa.69.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.69.sroa.8.0..sroa.69.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.69.sroa.9.0..sroa.69.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.69.sroa.11.0..sroa.69.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.69.sroa.13.0..sroa.69.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.69.sroa.14.0..sroa.69.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %.sroa.69.sroa.15.0..sroa.69.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %.sroa.811.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %.sroa.811.sroa.5.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 200
  %.sroa.811.sroa.6.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 208
  %.sroa.811.sroa.7.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %.sroa.811.sroa.10.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  %.sroa.811.sroa.11.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 248
  %.sroa.811.sroa.12.0..sroa.811.0..sroa_idx12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  br label %bb.af

._crit_edge:                                      ; preds = %bb.ho, %bb.ae
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !5 ; 2 uses
  %i.fq = load i64, ptr %1, align 8, !range !13, !noundef !5 ; 2 uses
  %.not103 = icmp eq i64 %i.fq, 2
  br i1 %.not103, label %bb.ai, label %bb.ag

bb.af:                                            ; preds = %.lr.ph, %bb.ho
  %.sroa.064.0389 = phi i64 [ 0, %.lr.ph ], [ %i.fr, %bb.ho ] ; 2 uses
  %i.fr = add nuw i64 %.sroa.064.0389, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bn, i64 noundef %.sroa.064.0389)
          to label %bb.bf unwind label %.loopexit

bb.ag:                                            ; preds = %._crit_edge
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ft = load i64, ptr %i.fs, align 8, !range !13, !noundef !5 ; 2 uses
  %i.fu = or i64 %i.ft, %i.fq
  %i.fv = and i64 %i.fu, 1
  %.not337 = icmp eq i64 %i.fv, 0
  br i1 %.not337, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %3 = and i64 %i.ft, 1
  %4 = icmp eq i64 %3, 0
  %.sroa.670.0.in.v = select i1 %4, i64 8, i64 40
  %.sroa.670.0.in = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.670.0.in.v
  %.sroa.670.0 = load double, ptr %.sroa.670.0.in, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %._crit_edge, %bb.ah
  %.sroa.022.0 = phi double [ %.sroa.670.0, %bb.ah ], [ 1.000000e+02, %._crit_edge ], [ 1.000000e+02, %bb.ag ]
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store double %.sroa.022.0, ptr %i.az, align 8, !noalias !32905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !32905
  %i.fy = lshr i64 %i.fp, 1
  store i64 %i.fy, ptr %i.ay, align 8, !noalias !32905
  %i.fz = lshr i64 %i.fp, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !32905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !32905
  %i.ga = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 0, ptr %i.ga, align 8, !noalias !32905
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 %i.fz, ptr %i.gb, align 8, !noalias !32905
  store ptr %i.az, ptr %i.aw, align 8, !noalias !32905
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ay, ptr %i.gc, align 8, !noalias !32905
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvMs0_NtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma46visionNtB2V_21VisionRotaryEmbedding3new0EE9from_iterB31_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.aw)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !32905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !32905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !32905
  store i64 1, ptr %i.au, align 8, !noalias !32905
  %i.ge = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 1, ptr %i.ge, align 8, !noalias !32905
  %i.gf = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.fz, ptr %i.gf, align 8, !noalias !32905
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implTjjjEfECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.gd, i1 noundef zeroext false)
          to label %.noexc118 unwind label %.loopexit.split-lp

.noexc118:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !32905
  %i.gg = load i64, ptr %i.av, align 8, !range !8, !noalias !32905, !noundef !5 ; 2 uses
  %.not.i117 = icmp eq i64 %i.gg, -1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !32905 ; 3 uses
  br i1 %.not.i117, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc118
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.9.16.copyload = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !32906
  %.sroa.13208.16..sroa.511.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.683.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13208.16..sroa.511.0..sroa_idx.i.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !32905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !32905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !32905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gg, ptr %i.gj, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gi, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.16.copyload, ptr %.sroa.582.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models6gemma46vision21VisionRotaryEmbeddingEBJ_.exit124

bb.ak:                                            ; preds = %.noexc118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !32905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !32905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !32905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store ptr %i.gi, ptr %i.bj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  store i64 2, ptr %i.gk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.gm = load i8, ptr %i.gl, align 8, !range !26, !noundef !5
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @212, i64 noundef 8)
          to label %bb.ao unwind label %bb.an

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.at, %bb.as, %bb.au, %bb.an
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.an ], [ %i.hb, %bb.au ], [ %i.hb, %bb.as ], [ %i.hb, %bb.at ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32907)
  call void @llvm.experimental.noalias.scope.decl(metadata !32908)
  call void @llvm.experimental.noalias.scope.decl(metadata !32909)
  call void @llvm.experimental.noalias.scope.decl(metadata !32910)
  %i.go = load ptr, ptr %i.bj, align 8, !alias.scope !32911, !nonnull !5, !noundef !5
  %i.gp = atomicrmw sub ptr %i.go, i64 1 release, align 8, !noalias !32911
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.am, label %.body129

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj) #26
          to label %.body129 unwind label %bb.bd

bb.an:                                            ; preds = %bb.ay, %bb.al
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit

bb.ao:                                            ; preds = %bb.al
  %i.gs = load i64, ptr %i.bh, align 8, !range !8, !noundef !5 ; 2 uses
  %.not106 = icmp eq i64 %i.gs, -1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  br i1 %.not106, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.592.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.589.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.gv, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gu, ptr %.sroa.491.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit122

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  store ptr %i.gu, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @213, i64 noundef 9)
          to label %bb.av unwind label %bb.as

bb.ar:                                            ; preds = %bb.ak, %bb.az
  %i.gw = phi ptr [ %.pre412, %bb.az ], [ null, %bb.ak ]
  %i.gx = phi i64 [ %.pre411, %bb.az ], [ 2, %bb.ak ]
  %i.gy = phi ptr [ %.pre, %bb.az ], [ %i.gi, %bb.ak ]
  %.sroa.037.0 = phi ptr [ %i.hi, %bb.az ], [ null, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.048)
  %.sroa.048.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.048, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.048.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.048, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.048, i64 56, i1 false)
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.gy, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.gx, ptr %.sroa.650.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bv, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.fn, ptr %.sroa.851.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.gw, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.037.0, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.bt, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ha, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.048)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bn)
          to label %bb.ba unwind label %bb.aa

bb.as:                                            ; preds = %bb.aq
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32912)
  %i.hc = load ptr, ptr %i.bi, align 8, !alias.scope !32912, !noundef !5 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.he = atomicrmw sub ptr %i.hc, i64 1 release, align 8, !noalias !32913
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.bd

bb.av:                                            ; preds = %bb.aq
  %i.hg = load i64, ptr %i.bg, align 8, !range !8, !noundef !5 ; 2 uses
  %.not107 = icmp eq i64 %i.hg, -1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  br i1 %.not107, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.598.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hg, ptr %i.hj, align 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hi, ptr %.sroa.4100.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
end_hunk_0
