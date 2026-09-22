Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.05?download=true
inline.NumInlined: 8606
inline.NumDeleted: 2756
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_RNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4corr:bb.a
.noexc.i31:                                       ; preds = %bb.hr
  %i.qw = and i128 %i.qv, 36028797018963968, !dbg !106325
  %.not190.i = icmp eq i128 %i.qw, 0, !dbg !106325
  br i1 %.not190.i, label %bb.hs, label %bb.id, !dbg !106326

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit.i: ; preds = %bb.id, %bb.ic, %bb.ia, %bb.hx, %bb.hw, %bb.ht, %bb.hp
  %.sroa.3.0.i = phi i16 [ undef, %bb.hp ], [ %i.tb, %bb.id ], [ %i.rr, %bb.ht ], [ %i.rx, %bb.hw ], [ %i.ss, %bb.ia ], [ %i.sz, %bb.ic ], [ %spec.select9.i.i, %bb.hx ], !dbg !106327
  %.sroa.02.0.i = phi i16 [ 0, %bb.hp ], [ 1, %bb.id ], [ 1, %bb.ht ], [ 1, %bb.hw ], [ 1, %bb.ia ], [ 1, %bb.ic ], [ 1, %bb.hx ], !dbg !106327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !106328, !noalias !105719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !106328, !noalias !105719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !106329, !noalias !105719
  store i16 %.sroa.02.0.i, ptr %i.am, align 2, !dbg !106329, !noalias !105719
  %i.qx = getelementptr inbounds nuw i8, ptr %i.am, i64 2, !dbg !106329
  store i16 %.sroa.3.0.i, ptr %i.qx, align 2, !dbg !106329, !noalias !105719
  %i.qy = call { ptr, ptr } @_RNvXs1K_NtCs1LHh8CLbVkQ_11polars_core10named_fromNtNtB8_6series6SeriesINtB6_9NamedFromRAINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16Ej1_SB1o_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.am), !dbg !106330, !noalias !105719 ; 2 uses
  %i.qz = extractvalue { ptr, ptr } %i.qy, 0, !dbg !106330
  %i.ra = extractvalue { ptr, ptr } %i.qy, 1, !dbg !106330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !106331, !noalias !105719
  store i8 31, ptr %0, align 16, !dbg !106332, !alias.scope !105719
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106332
  store ptr %i.qz, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !106332, !alias.scope !105719
  %.sroa.5.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !106332
  store ptr %i.ra, ptr %.sroa.5.0..sroa_idx.i30, align 16, !dbg !106332, !alias.scope !105719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !106333, !noalias !105719
  br label %_RNvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4corr10covariance.exit, !dbg !106334

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i: ; preds = %bb.hq
  %i.rb = and i64 %i.qt, 36028797018963968, !dbg !106335
  %.not189.i = icmp eq i64 %i.rb, 0, !dbg !106335
  br i1 %.not189.i, label %bb.hs, label %bb.id, !dbg !106326

bb.hs:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i, %.noexc.i31
  %i.rc = bitcast double %i.qr to i64, !dbg !106336 ; 2 uses
  %i.rd = lshr i64 %i.rc, 32, !dbg !106337
  %i.re = trunc nuw i64 %i.rd to i32, !dbg !106337 ; 5 uses
  %i.rf = and i32 %i.re, -2147483648, !dbg !106338 ; 2 uses
  %i.rg = and i32 %i.re, 2146435072, !dbg !106339 ; 6 uses
  %i.rh = and i32 %i.re, 1048575, !dbg !106340    ; 4 uses
  %i.ri = icmp eq i32 %i.rg, 2146435072, !dbg !106341
  br i1 %i.ri, label %bb.ht, label %bb.hu, !dbg !106341

bb.ht:                                            ; preds = %bb.hs
  %i.rj = icmp eq i32 %i.rh, 0, !dbg !106342
  %i.rk = and i64 %i.rc, 4294967295
  %i.rl = icmp eq i64 %i.rk, 0
  %or.cond.i.i = and i1 %i.rl, %i.rj, !dbg !106342
  %..i.i = select i1 %or.cond.i.i, i32 0, i32 512, !dbg !106343
  %i.rm = lshr exact i32 %i.rf, 16, !dbg !106344
  %i.rn = lshr i32 %i.rh, 10, !dbg !106345
  %i.ro = or disjoint i32 %i.rn, %i.rm, !dbg !106344
  %i.rp = or i32 %i.ro, %..i.i, !dbg !106346
  %i.rq = trunc nuw i32 %i.rp to i16, !dbg !106346
  %i.rr = or disjoint i16 %i.rq, 31744, !dbg !106346
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit.i, !dbg !106347

bb.hu:                                            ; preds = %bb.hs
  %i.rs = lshr exact i32 %i.rf, 16, !dbg !106348  ; 4 uses
  %i.rt = lshr exact i32 %i.rg, 20, !dbg !106349  ; 2 uses
  %i.ru = icmp samesign ugt i32 %i.rg, 1088421888, !dbg !106350
  br i1 %i.ru, label %bb.hw, label %bb.hv, !dbg !106350

bb.hv:                                            ; preds = %bb.hu
  %i.rv = icmp samesign ult i32 %i.rg, 1058013184, !dbg !106351
  br i1 %i.rv, label %bb.hy, label %bb.hx, !dbg !106351

bb.hw:                                            ; preds = %bb.hu
  %i.rw = trunc nuw i32 %i.rs to i16, !dbg !106352
  %i.rx = or disjoint i16 %i.rw, 31744, !dbg !106352
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit.i, !dbg !106353

bb.hx:                                            ; preds = %bb.hv
  %i.ry = lshr exact i32 %i.rg, 10, !dbg !106354
  %i.rz = add nuw nsw i32 %i.ry, 16384, !dbg !106354
  %i.sa = lshr i32 %i.rh, 10, !dbg !106355
  %i.sb = and i32 %i.re, 512, !dbg !106356
  %i.sc = icmp ne i32 %i.sb, 0, !dbg !106356
  %i.sd = and i32 %i.re, 1535
  %i.se = icmp ne i32 %i.sd, 0
  %or.cond3.not.i.i = and i1 %i.sc, %i.se, !dbg !106357
  %i.sf = or disjoint i32 %i.rz, %i.sa, !dbg !106357
  %i.sg = or i32 %i.sf, %i.rs, !dbg !106357
  %i.sh = trunc i32 %i.sg to i16, !dbg !106357
  %i.si = zext i1 %or.cond3.not.i.i to i16, !dbg !106356
  %spec.select9.i.i = add i16 %i.sh, %i.si, !dbg !106356
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit.i, !dbg !106356

bb.hy:                                            ; preds = %bb.hv
  %i.sj = icmp samesign ult i32 %i.rg, 1045430272, !dbg !106358
  br i1 %i.sj, label %bb.ia, label %bb.hz, !dbg !106358

bb.hz:                                            ; preds = %bb.hy
  %i.sk = sub nsw i32 1018, %i.rt, !dbg !106358   ; 2 uses
  %i.sl = or disjoint i32 %i.rh, 1048576, !dbg !106359 ; 3 uses
  %i.sm = sub nsw i32 27, %i.rt, !dbg !106360
  %i.sn = and i32 %i.sm, 31, !dbg !106361
  %i.so = lshr i32 %i.sl, %i.sn, !dbg !106361     ; 2 uses
  %i.sp = shl nuw nsw i32 1, %i.sk, !dbg !106362
  %i.sq = and i32 %i.sp, %i.sl, !dbg !106363
  %i.sr = icmp eq i32 %i.sq, 0, !dbg !106363
  br i1 %i.sr, label %bb.ic, label %bb.ib, !dbg !106363

bb.ia:                                            ; preds = %bb.hy
  %i.ss = trunc nuw i32 %i.rs to i16, !dbg !106364
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit.i, !dbg !106353

bb.ib:                                            ; preds = %bb.hz
  %i.st = shl nuw nsw i32 3, %i.sk, !dbg !106365
  %i.su = add nuw nsw i32 %i.st, 2097151, !dbg !106366
  %i.sv = and i32 %i.su, %i.sl, !dbg !106367
  %i.sw = icmp ne i32 %i.sv, 0, !dbg !106367
  %i.sx = zext i1 %i.sw to i32, !dbg !106367
  %spec.select.i.i = add nuw nsw i32 %i.so, %i.sx, !dbg !106367
  br label %bb.ic, !dbg !106367

bb.ic:                                            ; preds = %bb.ib, %bb.hz
  %.sroa.05.0.i.i = phi i32 [ %i.so, %bb.hz ], [ %spec.select.i.i, %bb.ib ], !dbg !106368
  %i.sy = or i32 %.sroa.05.0.i.i, %i.rs, !dbg !106369
  %i.sz = trunc i32 %i.sy to i16, !dbg !106369
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit.i, !dbg !106353

bb.id:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i, %.noexc.i31
  %i.ta = fptrunc double %i.qr to float, !dbg !106370
  %i.tb = call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.ta), !dbg !106371
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit.i, !dbg !106371

bb.ie:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !105762), !dbg !106372
  %i.tc = load i64, ptr %i.al, align 8, !dbg !106373, !range !4017, !alias.scope !105762, !noalias !105763, !noundef !3980
  %.not.i84.i = icmp eq i64 %i.tc, 18, !dbg !106373
  br i1 %.not.i84.i, label %bb.ij, label %bb.if, !dbg !106374, !prof !4257

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !106375, !noalias !105764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.al, i64 72, i1 false), !dbg !106375, !noalias !105763
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #40
          to label %bb.ih unwind label %bb.ig, !dbg !106376, !noalias !105765

bb.ig:                                            ; preds = %bb.if
  %i.td = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #36
          to label %.thread147.i unwind label %bb.ii, !dbg !106377, !noalias !105765

bb.ih:                                            ; preds = %bb.if
  unreachable

bb.ii:                                            ; preds = %bb.ig
  %i.te = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !106378, !noalias !105765
  unreachable, !dbg !106378

bb.ij:                                            ; preds = %bb.ie
  %i.tf = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !106379
  %i.tg = load ptr, ptr %i.tf, align 8, !dbg !106379, !alias.scope !105762, !noalias !105763, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !106380, !noalias !105719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !106381, !noalias !105719
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column3f32(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ak, ptr noundef nonnull align 16 %i.bs)
          to label %bb.ik unwind label %.thread186.i, !dbg !106382, !noalias !105719

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.experimental.noalias.scope.decl(metadata !105766), !dbg !106383
  %i.th = load i64, ptr %i.ak, align 8, !dbg !106384, !range !4017, !alias.scope !105766, !noalias !105767, !noundef !3980
  %.not.i80.i = icmp eq i64 %i.th, 18, !dbg !106384
  br i1 %.not.i80.i, label %bb.ip, label %bb.il, !dbg !106385, !prof !4257

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !106386, !noalias !105768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ak, i64 72, i1 false), !dbg !106386, !noalias !105767
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @514) #40
          to label %bb.in unwind label %bb.im, !dbg !106387, !noalias !105769

bb.im:                                            ; preds = %bb.il
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) #36
          to label %.thread147.i unwind label %bb.io, !dbg !106388, !noalias !105769

bb.in:                                            ; preds = %bb.il
  unreachable

bb.io:                                            ; preds = %bb.im
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !106389, !noalias !105769
  unreachable, !dbg !106389

bb.ip:                                            ; preds = %bb.ik
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !106390
  %i.tl = load ptr, ptr %i.tk, align 8, !dbg !106390, !alias.scope !105766, !noalias !105767, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !106391, !noalias !105719
  %i.tm = invoke { i64, double } @_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array3cov3covNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.tg, ptr noundef nonnull align 8 %i.tl, i8 noundef %4)
          to label %bb.iq unwind label %.thread186.i, !dbg !106392, !noalias !105719 ; 2 uses

bb.iq:                                            ; preds = %bb.ip
  %i.tn = extractvalue { i64, double } %i.tm, 0, !dbg !106392 ; 2 uses
  %i.to = trunc nuw i64 %i.tn to i1, !dbg !106393
  %i.tp = extractvalue { i64, double } %i.tm, 1, !dbg !106393
  %i.tq = fptrunc double %i.tp to float, !dbg !106393
  %.sroa.39.0.i = select i1 %i.to, float %i.tq, float undef, !dbg !106393
  %i.tr = trunc i64 %i.tn to i32, !dbg !106393
  %.sroa.08.0.i = and i32 %i.tr, 1, !dbg !106393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !106394, !noalias !105719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !dbg !106394, !noalias !105719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !106395, !noalias !105719
  store i32 %.sroa.08.0.i, ptr %i.ai, align 4, !dbg !106395, !noalias !105719
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ai, i64 4, !dbg !106395
  store float %.sroa.39.0.i, ptr %i.ts, align 4, !dbg !106395, !noalias !105719
  %i.tt = call { ptr, ptr } @_RNvXs1M_NtCs1LHh8CLbVkQ_11polars_core10named_fromNtNtB8_6series6SeriesINtB6_9NamedFromRAINtNtCscgRAwXFJnXP_4core6option6OptionfEj1_SB1o_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ai), !dbg !106396, !noalias !105719 ; 2 uses
  %i.tu = extractvalue { ptr, ptr } %i.tt, 0, !dbg !106396
  %i.tv = extractvalue { ptr, ptr } %i.tt, 1, !dbg !106396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !106397, !noalias !105719
  store i8 31, ptr %0, align 16, !dbg !106398, !alias.scope !105719
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106398
  store ptr %i.tu, ptr %.sroa.415.0..sroa_idx.i, align 8, !dbg !106398, !alias.scope !105719
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !106398
  store ptr %i.tv, ptr %.sroa.516.0..sroa_idx.i, align 16, !dbg !106398, !alias.scope !105719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !106399, !noalias !105719
  br label %_RNvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4corr10covariance.exit, !dbg !106334

bb.ir:                                            ; preds = %bb.ff
  call void @llvm.experimental.noalias.scope.decl(metadata !105770), !dbg !106400
  %i.tw = load i64, ptr %i.ah, align 8, !dbg !106401, !range !4017, !alias.scope !105770, !noalias !105771, !noundef !3980
  %.not.i101.i = icmp eq i64 %i.tw, 18, !dbg !106401
  br i1 %.not.i101.i, label %bb.iw, label %bb.is, !dbg !106402, !prof !4257

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !106403, !noalias !105772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ah, i64 72, i1 false), !dbg !106403, !noalias !105771
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @515) #40
          to label %bb.iu unwind label %bb.it, !dbg !106404, !noalias !105773

bb.it:                                            ; preds = %bb.is
  %i.tx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #36
          to label %.thread147.i unwind label %bb.iv, !dbg !106405, !noalias !105773

bb.iu:                                            ; preds = %bb.is
  unreachable

bb.iv:                                            ; preds = %bb.it
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !106406, !noalias !105773
  unreachable, !dbg !106406

bb.iw:                                            ; preds = %bb.ir
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !106407
  %i.ua = load ptr, ptr %i.tz, align 8, !dbg !106407, !alias.scope !105770, !noalias !105771, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !106408, !noalias !105719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !106409, !noalias !105719
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column3f64(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ag, ptr noundef nonnull align 16 %i.bs)
          to label %bb.ix unwind label %.thread186.i, !dbg !106410, !noalias !105719

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.experimental.noalias.scope.decl(metadata !105774), !dbg !106411
  %i.ub = load i64, ptr %i.ag, align 8, !dbg !106412, !range !4017, !alias.scope !105774, !noalias !105775, !noundef !3980
  %.not.i96.i = icmp eq i64 %i.ub, 18, !dbg !106412
  br i1 %.not.i96.i, label %bb.jc, label %bb.iy, !dbg !106413, !prof !4257

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !106414, !noalias !105776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !dbg !106414, !noalias !105775
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #40
          to label %bb.ja unwind label %bb.iz, !dbg !106415, !noalias !105777

bb.iz:                                            ; preds = %bb.iy
  %i.uc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #36
          to label %.thread147.i unwind label %bb.jb, !dbg !106416, !noalias !105777

bb.ja:                                            ; preds = %bb.iy
  unreachable

bb.jb:                                            ; preds = %bb.iz
  %i.ud = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !106417, !noalias !105777
  unreachable, !dbg !106417

bb.jc:                                            ; preds = %bb.ix
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !106418
  %i.uf = load ptr, ptr %i.ue, align 8, !dbg !106418, !alias.scope !105774, !noalias !105775, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !106419, !noalias !105719
  %i.ug = invoke { i64, double } @_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array3cov3covNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.ua, ptr noundef nonnull align 8 %i.uf, i8 noundef %4)
          to label %bb.fs unwind label %.thread186.i, !dbg !106420, !noalias !105719

bb.jd:                                            ; preds = %bb.ey
  %i.uh = load i8, ptr %i.r, align 16, !dbg !106421, !range !4388, !noalias !105719, !noundef !3980 ; 2 uses
  %i.ui = icmp eq i8 %i.uh, 32, !dbg !106421
  br i1 %i.ui, label %bb.je, label %bb.jf, !dbg !106422

bb.je:                                            ; preds = %bb.jd
  %i.uj = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !106423
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.uk, ptr noundef nonnull align 8 dereferenceable(72) %i.uj, i64 72, i1 false), !dbg !106425
  store i8 32, ptr %0, align 16, !dbg !106424, !alias.scope !105719
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i32, !dbg !106334

bb.jf:                                            ; preds = %bb.jd
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !106426
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 80, !dbg !106426
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80, !dbg !106427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.526.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.646.0..sroa_idx.i, i64 80, i1 false), !dbg !106426, !noalias !105719
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !106427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.425.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.545.0..sroa_idx.i, i64 79, i1 false), !dbg !106428, !noalias !105719
  store i8 %i.uh, ptr %i.x, align 16, !dbg !106427, !noalias !105719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !106429, !noalias !105719
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column4cast(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.q, ptr noundef nonnull align 16 %i.bs, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @392)
          to label %bb.ji unwind label %bb.jh, !dbg !106430, !noalias !105719

bb.jg:                                            ; preds = %.body90.i, %bb.jh
  %.pn.i = phi { ptr, i32 } [ %i.ul, %bb.jh ], [ %eh.lpad-body91.i, %.body90.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.x) #36
          to label %.thread147.i unwind label %bb.ki, !dbg !106431, !noalias !105719

bb.jh:                                            ; preds = %bb.ke, %bb.kd, %bb.jf
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.ji:                                            ; preds = %bb.jf
  %i.um = load i8, ptr %i.q, align 16, !dbg !106432, !range !4388, !noalias !105719, !noundef !3980 ; 2 uses
  %i.un = icmp eq i8 %i.um, 32, !dbg !106432
  br i1 %i.un, label %bb.jj, label %bb.jn, !dbg !106433

bb.jj:                                            ; preds = %bb.ji
  %i.uo = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !106434
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !106435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.up, ptr noundef nonnull align 8 dereferenceable(72) %i.uo, i64 72, i1 false), !dbg !106436
  store i8 32, ptr %0, align 16, !dbg !106435, !alias.scope !105719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !106437, !noalias !105719
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105780), !dbg !106431
  %i.uq = load i8, ptr %i.x, align 16, !dbg !106438, !range !4356, !alias.scope !105780, !noalias !105719, !noundef !3980
  %i.ur = icmp eq i8 %i.uq, 31, !dbg !106438
  br i1 %i.ur, label %bb.jk, label %bb.jm, !dbg !106438

bb.jk:                                            ; preds = %bb.jj
  %i.us = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !106438 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105781), !dbg !106438
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105782), !dbg !106439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105783), !dbg !106440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105784), !dbg !106441
  %i.ut = load ptr, ptr %i.us, align 8, !dbg !106442, !alias.scope !105785, !noalias !105719, !nonnull !3980, !noundef !3980
  %i.uu = atomicrmw sub ptr %i.ut, i64 1 release, align 8, !dbg !106443, !noalias !105786
  %i.uv = icmp eq i64 %i.uu, 1, !dbg !106444
  br i1 %i.uv, label %bb.jl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i32, !dbg !106444

bb.jl:                                            ; preds = %bb.jk
  fence acquire, !dbg !106445
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.us) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i32 unwind label %.thread186.i, !dbg !106446, !noalias !105719

bb.jm:                                            ; preds = %bb.jj
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit.i32 unwind label %.thread186.i, !dbg !106438, !noalias !105719

bb.jn:                                            ; preds = %bb.ji
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !106447
  %.sroa.649.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80, !dbg !106447
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 80, !dbg !106448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.536.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.649.0..sroa_idx.i, i64 80, i1 false), !dbg !106447, !noalias !105719
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1, !dbg !106448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.435.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.548.0..sroa_idx.i, i64 79, i1 false), !dbg !106449, !noalias !105719
  store i8 %i.um, ptr %i.w, align 16, !dbg !106448, !noalias !105719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !106450, !noalias !105719
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column3f64(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.v, ptr noundef nonnull align 16 %i.x)
          to label %bb.jp unwind label %bb.jo, !dbg !106451, !noalias !105719

bb.jo:                                            ; preds = %bb.ka, %bb.ju, %bb.jn
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %.body90.i, !dbg !106437

.body90.i:                                        ; preds = %bb.jx, %bb.jr, %bb.jo
  %eh.lpad-body91.i = phi { ptr, i32 } [ %i.uy, %bb.jr ], [ %i.uw, %bb.jo ], [ %i.vd, %bb.jx ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.w) #36
          to label %bb.jg unwind label %bb.ki, !dbg !106437, !noalias !105719

bb.jp:                                            ; preds = %bb.jn
  call void @llvm.experimental.noalias.scope.decl(metadata !105787), !dbg !106452
  %i.ux = load i64, ptr %i.v, align 8, !dbg !106453, !range !4017, !alias.scope !105787, !noalias !105788, !noundef !3980
  %.not.i92.i = icmp eq i64 %i.ux, 18, !dbg !106453
  br i1 %.not.i92.i, label %bb.ju, label %bb.jq, !dbg !106454, !prof !4257

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !106455, !noalias !105789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.v, i64 72, i1 false), !dbg !106455, !noalias !105788
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @517) #40
          to label %bb.js unwind label %bb.jr, !dbg !106456, !noalias !105790

bb.jr:                                            ; preds = %bb.jq
  %i.uy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #36
          to label %.body90.i unwind label %bb.jt, !dbg !106457, !noalias !105790

bb.js:                                            ; preds = %bb.jq
  unreachable

bb.jt:                                            ; preds = %bb.jr
  %i.uz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !106458, !noalias !105790
end_hunk_0
begin_hunk_1_@_RNvNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch4misc4corr12pearson_corr:bb.a
.noexc:                                           ; preds = %bb.bj
  %i.df = and i128 %i.de, 36028797018963968, !dbg !116924
  %.not176 = icmp eq i128 %i.df, 0, !dbg !116924
  br i1 %.not176, label %bb.bk, label %bb.bv, !dbg !116750

_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit: ; preds = %bb.bv, %bb.bu, %bb.bs, %bb.bp, %bb.bo, %bb.bl, %bb.bh
  %.sroa.3.0 = phi i16 [ undef, %bb.bh ], [ %i.fk, %bb.bv ], [ %i.ea, %bb.bl ], [ %i.eg, %bb.bo ], [ %i.fb, %bb.bs ], [ %i.fi, %bb.bu ], [ %spec.select9.i, %bb.bp ], !dbg !116925
  %.sroa.02.0 = phi i16 [ 0, %bb.bh ], [ 1, %bb.bv ], [ 1, %bb.bl ], [ 1, %bb.bo ], [ 1, %bb.bs ], [ 1, %bb.bu ], [ 1, %bb.bp ], !dbg !116925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !116926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !116926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !116927
  store i16 %.sroa.02.0, ptr %i.ai, align 2, !dbg !116927
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 2, !dbg !116927
  store i16 %.sroa.3.0, ptr %i.dg, align 2, !dbg !116927
  %i.dh = call { ptr, ptr } @_RNvXs1K_NtCs1LHh8CLbVkQ_11polars_core10named_fromNtNtB8_6series6SeriesINtB6_9NamedFromRAINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16Ej1_SB1o_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.ai), !dbg !116928 ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dh, 0, !dbg !116928
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1, !dbg !116928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !116929
  store i8 31, ptr %0, align 16, !dbg !116930
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !116930
  store ptr %i.di, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !116930
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !116930
  store ptr %i.dj, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !116930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !116931
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit, !dbg !116932

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit: ; preds = %bb.bi
  %i.dk = and i64 %i.dc, 36028797018963968, !dbg !116933
  %.not175 = icmp eq i64 %i.dk, 0, !dbg !116933
  br i1 %.not175, label %bb.bk, label %bb.bv, !dbg !116750

bb.bk:                                            ; preds = %.noexc, %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit
  %i.dl = bitcast double %i.da to i64, !dbg !116934 ; 2 uses
  %i.dm = lshr i64 %i.dl, 32, !dbg !116935
  %i.dn = trunc nuw i64 %i.dm to i32, !dbg !116935 ; 5 uses
  %i.do = and i32 %i.dn, -2147483648, !dbg !116936 ; 2 uses
  %i.dp = and i32 %i.dn, 2146435072, !dbg !116937 ; 6 uses
  %i.dq = and i32 %i.dn, 1048575, !dbg !116938    ; 4 uses
  %i.dr = icmp eq i32 %i.dp, 2146435072, !dbg !116939
  br i1 %i.dr, label %bb.bl, label %bb.bm, !dbg !116939

bb.bl:                                            ; preds = %bb.bk
  %i.ds = icmp eq i32 %i.dq, 0, !dbg !116940
  %i.dt = and i64 %i.dl, 4294967295
  %i.du = icmp eq i64 %i.dt, 0
  %or.cond.i = and i1 %i.du, %i.ds, !dbg !116940
  %..i = select i1 %or.cond.i, i32 0, i32 512, !dbg !116941
  %i.dv = lshr exact i32 %i.do, 16, !dbg !116942
  %i.dw = lshr i32 %i.dq, 10, !dbg !116943
  %i.dx = or disjoint i32 %i.dw, %i.dv, !dbg !116942
  %i.dy = or i32 %i.dx, %..i, !dbg !116944
  %i.dz = trunc nuw i32 %i.dy to i16, !dbg !116944
  %i.ea = or disjoint i16 %i.dz, 31744, !dbg !116944
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit, !dbg !116945

bb.bm:                                            ; preds = %bb.bk
  %i.eb = lshr exact i32 %i.do, 16, !dbg !116946  ; 4 uses
  %i.ec = lshr exact i32 %i.dp, 20, !dbg !116947  ; 2 uses
  %i.ed = icmp samesign ugt i32 %i.dp, 1088421888, !dbg !116948
  br i1 %i.ed, label %bb.bo, label %bb.bn, !dbg !116948

bb.bn:                                            ; preds = %bb.bm
  %i.ee = icmp samesign ult i32 %i.dp, 1058013184, !dbg !116949
  br i1 %i.ee, label %bb.bq, label %bb.bp, !dbg !116949

bb.bo:                                            ; preds = %bb.bm
  %i.ef = trunc nuw i32 %i.eb to i16, !dbg !116950
  %i.eg = or disjoint i16 %i.ef, 31744, !dbg !116950
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit, !dbg !116951

bb.bp:                                            ; preds = %bb.bn
  %i.eh = lshr exact i32 %i.dp, 10, !dbg !116952
  %i.ei = add nuw nsw i32 %i.eh, 16384, !dbg !116952
  %i.ej = lshr i32 %i.dq, 10, !dbg !116953
  %i.ek = and i32 %i.dn, 512, !dbg !116954
  %i.el = icmp ne i32 %i.ek, 0, !dbg !116954
  %i.em = and i32 %i.dn, 1535
  %i.en = icmp ne i32 %i.em, 0
  %or.cond3.not.i = and i1 %i.el, %i.en, !dbg !116955
  %i.eo = or disjoint i32 %i.ei, %i.ej, !dbg !116955
  %i.ep = or i32 %i.eo, %i.eb, !dbg !116955
  %i.eq = trunc i32 %i.ep to i16, !dbg !116955
  %i.er = zext i1 %or.cond3.not.i to i16, !dbg !116954
  %spec.select9.i = add i16 %i.eq, %i.er, !dbg !116954
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit, !dbg !116954

bb.bq:                                            ; preds = %bb.bn
  %i.es = icmp samesign ult i32 %i.dp, 1045430272, !dbg !116956
  br i1 %i.es, label %bb.bs, label %bb.br, !dbg !116956

bb.br:                                            ; preds = %bb.bq
  %i.et = sub nsw i32 1018, %i.ec, !dbg !116956   ; 2 uses
  %i.eu = or disjoint i32 %i.dq, 1048576, !dbg !116957 ; 3 uses
  %i.ev = sub nsw i32 27, %i.ec, !dbg !116958
  %i.ew = and i32 %i.ev, 31, !dbg !116959
  %i.ex = lshr i32 %i.eu, %i.ew, !dbg !116959     ; 2 uses
  %i.ey = shl nuw nsw i32 1, %i.et, !dbg !116960
  %i.ez = and i32 %i.ey, %i.eu, !dbg !116961
  %i.fa = icmp eq i32 %i.ez, 0, !dbg !116961
  br i1 %i.fa, label %bb.bu, label %bb.bt, !dbg !116961

bb.bs:                                            ; preds = %bb.bq
  %i.fb = trunc nuw i32 %i.eb to i16, !dbg !116962
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit, !dbg !116951

bb.bt:                                            ; preds = %bb.br
  %i.fc = shl nuw nsw i32 3, %i.et, !dbg !116963
  %i.fd = add nuw nsw i32 %i.fc, 2097151, !dbg !116964
  %i.fe = and i32 %i.fd, %i.eu, !dbg !116965
  %i.ff = icmp ne i32 %i.fe, 0, !dbg !116965
  %i.fg = zext i1 %i.ff to i32, !dbg !116965
  %spec.select.i = add nuw nsw i32 %i.ex, %i.fg, !dbg !116965
  br label %bb.bu, !dbg !116965

bb.bu:                                            ; preds = %bb.bt, %bb.br
  %.sroa.05.0.i = phi i32 [ %i.ex, %bb.br ], [ %spec.select.i, %bb.bt ], !dbg !116966
  %i.fh = or i32 %.sroa.05.0.i, %i.eb, !dbg !116967
  %i.fi = trunc i32 %i.fh to i16, !dbg !116967
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit, !dbg !116951

bb.bv:                                            ; preds = %.noexc, %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit
  %i.fj = fptrunc double %i.da to float, !dbg !116968
  %i.fk = call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.fj), !dbg !116969
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f64_to_f16_fallback.exit, !dbg !116969

bb.bw:                                            ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !116754), !dbg !116970
  %i.fl = load i64, ptr %i.ah, align 8, !dbg !116971, !range !4017, !alias.scope !116754, !noalias !116755, !noundef !3980
  %.not.i76 = icmp eq i64 %i.fl, 18, !dbg !116971
  br i1 %.not.i76, label %bb.cb, label %bb.bx, !dbg !116972, !prof !4257

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !116973, !noalias !116756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ah, i64 72, i1 false), !dbg !116973, !noalias !116755
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @528) #40
          to label %bb.bz unwind label %bb.by, !dbg !116974, !noalias !116754

bb.by:                                            ; preds = %bb.bx
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #36
          to label %.thread139 unwind label %bb.ca, !dbg !116975, !noalias !116754

bb.bz:                                            ; preds = %bb.bx
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !116976, !noalias !116754
  unreachable, !dbg !116976

bb.cb:                                            ; preds = %bb.bw
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !116977
  %i.fp = load ptr, ptr %i.fo, align 8, !dbg !116977, !alias.scope !116754, !noalias !116755, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !116978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !116979
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column3f32(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ag, ptr noundef nonnull align 16 %i.an)
          to label %bb.cc unwind label %.thread172, !dbg !116980

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !116757), !dbg !116981
  %i.fq = load i64, ptr %i.ag, align 8, !dbg !116982, !range !4017, !alias.scope !116757, !noalias !116758, !noundef !3980
  %.not.i72 = icmp eq i64 %i.fq, 18, !dbg !116982
  br i1 %.not.i72, label %bb.ch, label %bb.cd, !dbg !116983, !prof !4257

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !116984, !noalias !116759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ag, i64 72, i1 false), !dbg !116984, !noalias !116758
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @529) #40
          to label %bb.cf unwind label %bb.ce, !dbg !116985, !noalias !116757

bb.ce:                                            ; preds = %bb.cd
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) #36
          to label %.thread139 unwind label %bb.cg, !dbg !116986, !noalias !116757

bb.cf:                                            ; preds = %bb.cd
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !116987, !noalias !116757
  unreachable, !dbg !116987

bb.ch:                                            ; preds = %bb.cc
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !116988
  %i.fu = load ptr, ptr %i.ft, align 8, !dbg !116988, !alias.scope !116757, !noalias !116758, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !116989
  %i.fv = invoke { i64, double } @_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array3cov12pearson_corrNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float32TypeECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.fp, ptr noundef nonnull align 8 %i.fu)
          to label %bb.ci unwind label %.thread172, !dbg !116990 ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.fw = extractvalue { i64, double } %i.fv, 0, !dbg !116990 ; 2 uses
  %i.fx = trunc nuw i64 %i.fw to i1, !dbg !116991
  %i.fy = extractvalue { i64, double } %i.fv, 1, !dbg !116991
  %i.fz = fptrunc double %i.fy to float, !dbg !116991
  %.sroa.310.0 = select i1 %i.fx, float %i.fz, float undef, !dbg !116991
  %i.ga = trunc i64 %i.fw to i32, !dbg !116991
  %.sroa.09.0 = and i32 %i.ga, 1, !dbg !116991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !116992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !dbg !116992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !116993
  store i32 %.sroa.09.0, ptr %i.ae, align 4, !dbg !116993
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ae, i64 4, !dbg !116993
  store float %.sroa.310.0, ptr %i.gb, align 4, !dbg !116993
  %i.gc = call { ptr, ptr } @_RNvXs1M_NtCs1LHh8CLbVkQ_11polars_core10named_fromNtNtB8_6series6SeriesINtB6_9NamedFromRAINtNtCscgRAwXFJnXP_4core6option6OptionfEj1_SB1o_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ae), !dbg !116994 ; 2 uses
  %i.gd = extractvalue { ptr, ptr } %i.gc, 0, !dbg !116994
  %i.ge = extractvalue { ptr, ptr } %i.gc, 1, !dbg !116994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !116995
  store i8 31, ptr %0, align 16, !dbg !116996
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !116996
  store ptr %i.gd, ptr %.sroa.416.0..sroa_idx, align 8, !dbg !116996
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !116996
  store ptr %i.ge, ptr %.sroa.517.0..sroa_idx, align 16, !dbg !116996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !116997
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit, !dbg !116932

bb.cj:                                            ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !116762), !dbg !116998
  %i.gf = load i64, ptr %i.ad, align 8, !dbg !116999, !range !4017, !alias.scope !116762, !noalias !116763, !noundef !3980
  %.not.i93 = icmp eq i64 %i.gf, 18, !dbg !116999
  br i1 %.not.i93, label %bb.co, label %bb.ck, !dbg !117000, !prof !4257

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !117001, !noalias !116764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !dbg !117001, !noalias !116763
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @530) #40
          to label %bb.cm unwind label %bb.cl, !dbg !117002, !noalias !116762

bb.cl:                                            ; preds = %bb.ck
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #36
          to label %.thread139 unwind label %bb.cn, !dbg !117003, !noalias !116762

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !117004, !noalias !116762
  unreachable, !dbg !117004

bb.co:                                            ; preds = %bb.cj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !117005
  %i.gj = load ptr, ptr %i.gi, align 8, !dbg !117005, !alias.scope !116762, !noalias !116763, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !117006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !117007
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column3f64(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ac, ptr noundef nonnull align 16 %i.an)
          to label %bb.cp unwind label %.thread172, !dbg !117008

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !116765), !dbg !117009
  %i.gk = load i64, ptr %i.ac, align 8, !dbg !117010, !range !4017, !alias.scope !116765, !noalias !116766, !noundef !3980
  %.not.i88 = icmp eq i64 %i.gk, 18, !dbg !117010
  br i1 %.not.i88, label %bb.cu, label %bb.cq, !dbg !117011, !prof !4257

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !117012, !noalias !116767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ac, i64 72, i1 false), !dbg !117012, !noalias !116766
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #40
          to label %bb.cs unwind label %bb.cr, !dbg !117013, !noalias !116765

bb.cr:                                            ; preds = %bb.cq
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #36
          to label %.thread139 unwind label %bb.ct, !dbg !117014, !noalias !116765

bb.cs:                                            ; preds = %bb.cq
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !117015, !noalias !116765
  unreachable, !dbg !117015

bb.cu:                                            ; preds = %bb.cp
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !117016
  %i.go = load ptr, ptr %i.gn, align 8, !dbg !117016, !alias.scope !116765, !noalias !116766, !nonnull !3980, !align !4358, !noundef !3980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !117017
  %i.gp = invoke { i64, double } @_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array3cov12pearson_corrNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float64TypeECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.gj, ptr noundef nonnull align 8 %i.go)
          to label %bb.w unwind label %.thread172, !dbg !117018

bb.cv:                                            ; preds = %bb.d
  %i.gq = load i8, ptr %i.p, align 16, !dbg !117019, !range !4388, !noundef !3980 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 32, !dbg !117019
  br i1 %i.gr, label %bb.cw, label %bb.cx, !dbg !117020

bb.cw:                                            ; preds = %bb.cv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !117021
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gt, ptr noundef nonnull align 8 dereferenceable(72) %i.gs, i64 72, i1 false), !dbg !117023
  store i8 32, ptr %0, align 16, !dbg !117022
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit, !dbg !116932

bb.cx:                                            ; preds = %bb.cv
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1, !dbg !117024
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 80, !dbg !117024
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 80, !dbg !117025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.647.0..sroa_idx, i64 80, i1 false), !dbg !117024
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !117025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.426.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.546.0..sroa_idx, i64 79, i1 false), !dbg !116768
  store i8 %i.gq, ptr %i.v, align 16, !dbg !117025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !117026
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column4cast(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.o, ptr noundef nonnull align 16 %i.an, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) @392)
          to label %bb.da unwind label %bb.cz, !dbg !117027

bb.cy:                                            ; preds = %.body82, %bb.cz
  %.pn = phi { ptr, i32 } [ %i.gu, %bb.cz ], [ %eh.lpad-body83, %.body82 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.v) #36
          to label %.thread139 unwind label %bb.ea, !dbg !117028

bb.cz:                                            ; preds = %bb.dw, %bb.dv, %bb.cx
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.cx
  %i.gv = load i8, ptr %i.o, align 16, !dbg !117029, !range !4388, !noundef !3980 ; 2 uses
  %i.gw = icmp eq i8 %i.gv, 32, !dbg !117029
  br i1 %i.gw, label %bb.db, label %bb.df, !dbg !117030

bb.db:                                            ; preds = %bb.da
  %i.gx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !117031
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !117032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gy, ptr noundef nonnull align 8 dereferenceable(72) %i.gx, i64 72, i1 false), !dbg !117033
  store i8 32, ptr %0, align 16, !dbg !117032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !117034
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116774), !dbg !117028
  %i.gz = load i8, ptr %i.v, align 16, !dbg !117035, !range !4356, !alias.scope !116774, !noundef !3980
  %i.ha = icmp eq i8 %i.gz, 31, !dbg !117035
  br i1 %i.ha, label %bb.dc, label %bb.de, !dbg !117035

bb.dc:                                            ; preds = %bb.db
  %i.hb = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !117035 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116775), !dbg !117035
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116776), !dbg !117036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116777), !dbg !117037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116778), !dbg !117038
  %i.hc = load ptr, ptr %i.hb, align 8, !dbg !117039, !alias.scope !116779, !nonnull !3980, !noundef !3980
  %i.hd = atomicrmw sub ptr %i.hc, i64 1 release, align 8, !dbg !117040, !noalias !116779
  %i.he = icmp eq i64 %i.hd, 1, !dbg !117041
  br i1 %i.he, label %bb.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit, !dbg !117041

bb.dd:                                            ; preds = %bb.dc
  fence acquire, !dbg !117042
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.hb) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit unwind label %.thread172, !dbg !117043

bb.de:                                            ; preds = %bb.db
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.v)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr.exit unwind label %.thread172, !dbg !117035

bb.df:                                            ; preds = %bb.da
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !117044
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80, !dbg !117044
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80, !dbg !117045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.650.0..sroa_idx, i64 80, i1 false), !dbg !117044
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1, !dbg !117045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.549.0..sroa_idx, i64 79, i1 false), !dbg !116771
  store i8 %i.gv, ptr %i.u, align 16, !dbg !117045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !117046
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column3f64(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.t, ptr noundef nonnull align 16 %i.v)
          to label %bb.dh unwind label %bb.dg, !dbg !117047

bb.dg:                                            ; preds = %bb.ds, %bb.dm, %bb.df
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body82, !dbg !117034

.body82:                                          ; preds = %bb.dp, %bb.dj, %bb.dg
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.hh, %bb.dj ], [ %i.hf, %bb.dg ], [ %i.hm, %bb.dp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.u) #36
          to label %bb.cy unwind label %bb.ea, !dbg !117034

bb.dh:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !116780), !dbg !117048
  %i.hg = load i64, ptr %i.t, align 8, !dbg !117049, !range !4017, !alias.scope !116780, !noalias !116781, !noundef !3980
  %.not.i84 = icmp eq i64 %i.hg, 18, !dbg !117049
  br i1 %.not.i84, label %bb.dm, label %bb.di, !dbg !117050, !prof !4257

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !117051, !noalias !116782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.t, i64 72, i1 false), !dbg !117051, !noalias !116781
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #40
          to label %bb.dk unwind label %bb.dj, !dbg !117052, !noalias !116780

bb.dj:                                            ; preds = %bb.di
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g) #36
          to label %.body82 unwind label %bb.dl, !dbg !117053, !noalias !116780

bb.dk:                                            ; preds = %bb.di
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !117054, !noalias !116780
end_hunk_1
