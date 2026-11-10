Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.02?download=true
inline.NumInlined: 6474
inline.NumDeleted: 3263
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules23unnecessary_dunder_callNtB4_17DunderReplacement11from_method:bb.a
  %i.wv = icmp eq i32 %i.wu, 0
  br i1 %i.wv, label %bb.fa, label %bb.fu

bb.fa:                                            ; preds = %bb.ez
  store i8 3, ptr %0, align 8
  %.sroa.4488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @172, ptr %.sroa.4488.0..sroa_idx, align 8
  %.sroa.5489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 26, ptr %.sroa.5489.0..sroa_idx, align 8
  br label %bb.fw

bb.fb:                                            ; preds = %bb.ep
  %i.ww = load i64, ptr %1, align 1
  %i.wx = xor i64 %i.ww, 8390880615077601119
  %i.wy = getelementptr i8, ptr %1, i64 8
  %i.wz = load i16, ptr %i.wy, align 1
  %i.xa = zext i16 %i.wz to i64
  %i.xb = xor i64 %i.xa, 24415
  %i.xc = or i64 %i.wx, %i.xb
  %i.xd = icmp ne i64 %i.xc, 0
  %i.xe = zext i1 %i.xd to i32
  %i.xf = icmp eq i32 %i.xe, 0
  br i1 %i.xf, label %bb.fc, label %bb.fu

bb.fc:                                            ; preds = %bb.fb
  store i8 3, ptr %0, align 8
  %.sroa.4493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @171, ptr %.sroa.4493.0..sroa_idx, align 8
  %.sroa.5494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 16, ptr %.sroa.5494.0..sroa_idx, align 8
  br label %bb.fw

bb.fd:                                            ; preds = %bb.a
  %i.xg = load i64, ptr %1, align 1
  %i.xh = xor i64 %i.xg, 7526754601088606047
  %i.xi = getelementptr i8, ptr %1, i64 7
  %i.xj = load i64, ptr %i.xi, align 1
  %i.xk = xor i64 %i.xj, 6872339573954338664
  %i.xl = or i64 %i.xh, %i.xk
  %i.xm = icmp ne i64 %i.xl, 0
  %i.xn = zext i1 %i.xm to i32
  %i.xo = icmp eq i32 %i.xn, 0
  br i1 %i.xo, label %bb.fe, label %bb.fu

bb.fe:                                            ; preds = %bb.fd
  store i8 3, ptr %0, align 8
  %.sroa.4498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @170, ptr %.sroa.4498.0..sroa_idx, align 8
  %.sroa.5499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 37, ptr %.sroa.5499.0..sroa_idx, align 8
  br label %bb.fw

bb.ff:                                            ; preds = %bb.ed
  %i.xp = load i32, ptr %1, align 1
  %i.xq = xor i32 %i.xp, 1701732191
  %i.xr = getelementptr i8, ptr %1, i64 3
  %i.xs = load i32, ptr %i.xr, align 1
  %i.xt = xor i32 %i.xs, 1600087909
  %i.xu = or i32 %i.xq, %i.xt
  %i.xv = icmp ne i32 %i.xu, 0
  %i.xw = zext i1 %i.xv to i32
  %i.xx = icmp eq i32 %i.xw, 0
  br i1 %i.xx, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store i8 3, ptr %0, align 8
  %.sroa.4503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @169, ptr %.sroa.4503.0..sroa_idx, align 8
  %.sroa.5504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %.sroa.5504.0..sroa_idx, align 8
  br label %bb.fw

bb.fh:                                            ; preds = %bb.ff
  %i.xy = load i32, ptr %1, align 1
  %i.xz = xor i32 %i.xy, 1869635423
  %i.ya = getelementptr i8, ptr %1, i64 3
  %i.yb = load i32, ptr %i.ya, align 1
  %i.yc = xor i32 %i.yb, 1600090991
  %i.yd = or i32 %i.xz, %i.yc
  %i.ye = icmp ne i32 %i.yd, 0
  %i.yf = zext i1 %i.ye to i32
  %i.yg = icmp eq i32 %i.yf, 0
  br i1 %i.yg, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i8 3, ptr %0, align 8
  %.sroa.4508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @168, ptr %.sroa.4508.0..sroa_idx, align 8
  %.sroa.5509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %.sroa.5509.0..sroa_idx, align 8
  br label %bb.fw

bb.fj:                                            ; preds = %bb.fh
  %i.yh = load i32, ptr %1, align 1
  %i.yi = xor i32 %i.yh, 1869635423
  %i.yj = getelementptr i8, ptr %1, i64 3
  %i.yk = load i32, ptr %i.yj, align 1
  %i.yl = xor i32 %i.yk, 1600092015
  %i.ym = or i32 %i.yi, %i.yl
  %i.yn = icmp ne i32 %i.ym, 0
  %i.yo = zext i1 %i.yn to i32
  %i.yp = icmp eq i32 %i.yo, 0
  br i1 %i.yp, label %bb.fk, label %bb.fu

bb.fk:                                            ; preds = %bb.fj
  store i8 3, ptr %0, align 8
  %.sroa.4513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @166, ptr %.sroa.4513.0..sroa_idx, align 8
  %.sroa.5514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 34, ptr %.sroa.5514.0..sroa_idx, align 8
  br label %bb.fw

bb.fl:                                            ; preds = %bb.ev
  %i.yq = load i64, ptr %1, align 1
  %i.yr = xor i64 %i.yq, 8029203905700323167
  %i.ys = getelementptr i8, ptr %1, i64 3
  %i.yt = load i64, ptr %i.ys, align 1
  %i.yu = xor i64 %i.yt, 6872321986131290468
  %i.yv = or i64 %i.yr, %i.yu
  %i.yw = icmp ne i64 %i.yv, 0
  %i.yx = zext i1 %i.yw to i32
  %i.yy = icmp eq i32 %i.yx, 0
  br i1 %i.yy, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl
  store i8 3, ptr %0, align 8
  %.sroa.4518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @167, ptr %.sroa.4518.0..sroa_idx, align 8
  %.sroa.5519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %.sroa.5519.0..sroa_idx, align 8
  br label %bb.fw

bb.fn:                                            ; preds = %bb.ex
  %i.yz = load i64, ptr %1, align 1
  %i.za = icmp ne i64 %i.yz, 6872342876902285151
  %i.zb = zext i1 %i.za to i32
  %i.zc = icmp eq i32 %i.zb, 0
  br i1 %i.zc, label %bb.fo, label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  store i8 3, ptr %0, align 8
  %.sroa.4523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @166, ptr %.sroa.4523.0..sroa_idx, align 8
  %.sroa.5524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 34, ptr %.sroa.5524.0..sroa_idx, align 8
  br label %bb.fw

bb.fp:                                            ; preds = %bb.fl
  %i.zd = load i64, ptr %1, align 1
  %i.ze = xor i64 %i.zd, 8391439158244237151
  %i.zf = getelementptr i8, ptr %1, i64 3
  %i.zg = load i64, ptr %i.zf, align 1
  %i.zh = xor i64 %i.zg, 6872337400884982885
  %i.zi = or i64 %i.ze, %i.zh
  %i.zj = icmp ne i64 %i.zi, 0
  %i.zk = zext i1 %i.zj to i32
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  store i8 3, ptr %0, align 8
  %.sroa.4528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @165, ptr %.sroa.4528.0..sroa_idx, align 8
  %.sroa.5529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 58, ptr %.sroa.5529.0..sroa_idx, align 8
  br label %bb.fw

bb.fr:                                            ; preds = %bb.fp
  %i.zm = load i64, ptr %1, align 1
  %i.zn = xor i64 %i.zm, 7310584043768340319
  %i.zo = getelementptr i8, ptr %1, i64 3
  %i.zp = load i64, ptr %i.zo, align 1
  %i.zq = xor i64 %i.zp, 6872331838902858853
  %i.zr = or i64 %i.zn, %i.zq
  %i.zs = icmp ne i64 %i.zr, 0
  %i.zt = zext i1 %i.zs to i32
  %i.zu = icmp eq i32 %i.zt, 0
  br i1 %i.zu, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  store i8 3, ptr %0, align 8
  %.sroa.4533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @164, ptr %.sroa.4533.0..sroa_idx, align 8
  %.sroa.5534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 24, ptr %.sroa.5534.0..sroa_idx, align 8
  br label %bb.fw

bb.ft:                                            ; preds = %bb.el
  %i.zv = load i64, ptr %1, align 1
  %i.zw = xor i64 %i.zv, 6873458907007967071
  %i.zx = getelementptr i8, ptr %1, i64 8
  %i.zy = load i8, ptr %i.zx, align 1
  %i.zz = zext i8 %i.zy to i64
  %i.aaa = xor i64 %i.zz, 95
  %i.aab = or i64 %i.zw, %i.aaa
  %i.aac = icmp ne i64 %i.aab, 0
  %i.aad = zext i1 %i.aac to i32
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.a, %bb.bd, %bb.br, %bb.fn, %bb.fd, %bb.fb, %bb.ez, %bb.et, %bb.eb, %bb.fr, %bb.fj, %bb.ft
  store i8 -1, ptr %0, align 8
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  store i8 3, ptr %0, align 8
  %.sroa.4538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @163, ptr %.sroa.4538.0..sroa_idx, align 8
  %.sroa.5539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 27, ptr %.sroa.5539.0..sroa_idx, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fi, %bb.fg, %bb.fe, %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9945 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i16, ptr %i.b, align 8, !range !9946, !noundef !20 ; 2 uses
  %i.d = and i16 %i.c, 63
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i16 %i.c, 6
  %i.h = zext nneg i16 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !nonnull !20, !align !27, !noundef !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8, !noundef !20
  %i.m = and i64 %i.f, %i.l
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !20
  %.not4 = icmp eq ptr %i.p, null
  br i1 %.not4, label %.invoke, label %bb.d, !prof !21

bb.c:                                             ; preds = %bb.a
  %i.q = invoke noundef i8 @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard21resolve_applicability(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.j unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic10remove_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.l

.invoke:                                          ; preds = %bb.j, %bb.b
  %i.r = phi ptr [ @283, %bb.b ], [ @284, %bb.j ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) #46
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %1, align 8, !alias.scope !9947 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i, 0
  br i1 %i.t, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.u, align 8, !alias.scope !9948, !nonnull !20, !noundef !20
  %i.v = mul nuw i64 %.val2.i.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9949
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !9947 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i, 0
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.x, align 8, !alias.scope !9948, !nonnull !20, !noundef !20
  %i.y = mul nuw i64 %.val.i.i, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !9950
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit

common.resume:                                    ; preds = %bb.l, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.s, %bb.g ], [ %lpad.thr_comm, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k, %bb.i, %bb.h
  ret void

bb.j:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !noundef !20
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.invoke, label %bb.k, !prof !21

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.q, ptr %i.ab, align 8
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %.invoke, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %1) #48
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE17clone_from_ref_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9963 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.12.i.i = alloca [24 x i8], align 8       ; 5 uses
  %.sroa.13.i.i = alloca [24 x i8], align 8       ; 5 uses
  %.sroa.16.i.i = alloca [7 x i8], align 1        ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9964)
  %i.d = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 8, i64 noundef 136), !noalias !9964 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.e to ptr
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !9964
  %i.i = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.e) #47, !noalias !9964
  br label %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i

_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 15 uses
  %i.j = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.j, label %bb.d, label %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCsEhZmuQNqkz_11ruff_linter.exit, !prof !21

bb.d:                                             ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.e, i64 noundef %i.f) #46, !noalias !9964
  unreachable

_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNCNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB8_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtBa_5alloc6GlobalE3new0CsEhZmuQNqkz_11ruff_linter.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 8, !noalias !9964
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !9964
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.l, align 8, !alias.scope !9964
  store i64 8, ptr %i.c, align 8, !alias.scope !9964
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 136, ptr %i.m, align 8, !alias.scope !9964
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 1, ptr %i.n, align 8, !alias.scope !9964
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9966)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9968)
  %i.o = load i64, ptr %0, align 8, !range !32, !alias.scope !9969, !noundef !20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.o, 2
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerNtNtB8_5alloc6GlobalE3newCsEhZmuQNqkz_11ruff_linter.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9970)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !9971, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9972
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %.noexc unwind label %.body.thread7

.body.thread7:                                    ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.noexc:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !9971
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i8, ptr %i.v, align 8, !range !66, !alias.scope !9971, !noundef !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load <2 x i64>, ptr %i.x, align 8, !alias.scope !9971
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load <1 x i64>, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9972
end_hunk_0
