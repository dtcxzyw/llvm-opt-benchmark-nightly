Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.12?download=true
inline.NumInlined: 14058
inline.NumDeleted: 4214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue7extractyEBa_:bb.a
  %i.em = fcmp olt float %i.ek, f0x5F800000
  %or.cond.i.i20 = and i1 %i.el, %i.em, !dbg !7148 ; 2 uses
  %i.en = fptoui float %i.ek to i64, !dbg !7148
  %.sroa.3.0.i.i21 = select i1 %or.cond.i.i20, i64 %i.en, i64 undef, !dbg !7148
  %.sroa.0.0.i.i22 = zext i1 %or.cond.i.i20 to i64, !dbg !7148
  br label %bb.at, !dbg !7153

bb.al:                                            ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7154
  %i.ep = load double, ptr %i.eo, align 8, !dbg !7154, !noundef !11 ; 3 uses
  %i.eq = fcmp ogt double %i.ep, -1.000000e+00, !dbg !7156
  %i.er = fcmp olt double %i.ep, f0x43F0000000000000
  %or.cond.i.i23 = and i1 %i.eq, %i.er, !dbg !7156 ; 2 uses
  %i.es = fptoui double %i.ep to i64, !dbg !7156
  %.sroa.3.0.i.i24 = select i1 %or.cond.i.i23, i64 %i.es, i64 undef, !dbg !7156
  %.sroa.0.0.i.i25 = zext i1 %or.cond.i.i23 to i64, !dbg !7156
  br label %bb.at, !dbg !7161

bb.am:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !7162
  %i.eu = load i32, ptr %i.et, align 4, !dbg !7162, !noundef !11 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, -1, !dbg !7164      ; 2 uses
  %i.ew = zext nneg i32 %i.eu to i64, !dbg !7164
  %.sroa.3.0.i.i26 = select i1 %i.ev, i64 %i.ew, i64 undef, !dbg !7164
  %.sroa.0.0.i.i27 = zext i1 %i.ev to i64, !dbg !7164
  br label %bb.at, !dbg !7167

bb.an:                                            ; preds = %bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7168
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !7168, !noundef !11 ; 2 uses
  %i.ez = icmp sgt i64 %i.ey, -1, !dbg !7170
  %..i.i28 = zext i1 %i.ez to i64, !dbg !7173
  br label %bb.at, !dbg !7174

bb.ao:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7175
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !7175, !noundef !11 ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, -1, !dbg !7177
  %..i.i29 = zext i1 %i.fc to i64, !dbg !7180
  br label %bb.at, !dbg !7181

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7182
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7184 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !7189
  %i.ff = load i8, ptr %i.fe, align 1, !dbg !7189, !range !1384, !alias.scope !7194, !noundef !11 ; 2 uses
  %i.fg = icmp ugt i8 %i.ff, -41, !dbg !7197
  br i1 %i.fg, label %bb.ar, label %bb.aq, !dbg !7197

bb.aq:                                            ; preds = %bb.ap
  %i.fh = add i8 %i.ff, 64, !dbg !7198
  %i.fi = tail call i8 @llvm.umin.i8(i8 %i.fh, i8 24), !dbg !7200
  %.sroa.0.0.i.i30 = zext nneg i8 %i.fi to i64, !dbg !7200
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !7203

bb.ar:                                            ; preds = %bb.ap
  %i.fj = load ptr, ptr %i.fd, align 8, !dbg !7204, !alias.scope !7194, !noundef !11
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7205
  %i.fl = load i64, ptr %i.fk, align 16, !dbg !7205, !alias.scope !7194, !noundef !11
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !7206

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.aq, %bb.ar
  %.sroa.01.0.i = phi i64 [ %i.fl, %bb.ar ], [ %.sroa.0.0.i.i30, %bb.aq ], !dbg !7207
  %.sroa.0.0.i31 = phi ptr [ %i.fj, %bb.ar ], [ %i.fd, %bb.aq ], !dbg !7208
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !7182
  store ptr %.sroa.0.0.i31, ptr %i.fm, align 8, !dbg !7182
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !7182
  store i64 %.sroa.01.0.i, ptr %i.fn, align 16, !dbg !7182
  store i8 2, ptr %i.a, align 16, !dbg !7182
  %i.fo = invoke fastcc { i64, i64 } @_RINvMs0_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB6_8AnyValue7extractyEBa_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a)
          to label %bb.ay unwind label %bb.ax, !dbg !7209 ; 2 uses

bb.as:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7210
  %i.fq = load i128, ptr %i.fp, align 16, !dbg !7210, !noundef !11 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7212
  %i.fs = load i64, ptr %i.fr, align 16, !dbg !7212, !noundef !11 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0, !dbg !7213
  br i1 %i.ft, label %bb.bc, label %bb.bb, !dbg !7213

bb.at:                                            ; preds = %bb.a, %bb.bc, %bb.ay, %bb.aw, %bb.av, %bb.au, %_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit, %.split10, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %_RINvXsw_NtCslmKYcnV0hjo_10num_traits4castyNtB6_7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.26.0 = phi i64 [ %.sroa.3.0.i.i40, %bb.bc ], [ %i.f, %.split10 ], [ undef, %bb.au ], [ %.sroa.3.0.i.i36, %bb.av ], [ %.sroa.3.0.i.i33, %_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit ], [ %i.bm, %bb.p ], [ %i.bp, %bb.q ], [ %i.bs, %bb.r ], [ %i.bu, %bb.s ], [ %.sroa.3.0.i.i, %bb.t ], [ %.sroa.3.0.i.i12, %bb.u ], [ %.sroa.3.0.i.i14, %bb.v ], [ %.sroa.3.0.i.i16, %bb.w ], [ %i.cm, %bb.x ], [ %.sroa.3.0.i.i18, %bb.y ], [ %.sroa.3.0.i.i.i, %_RINvXsw_NtCslmKYcnV0hjo_10num_traits4castyNtB6_7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.3.0.i.i21, %bb.ak ], [ %.sroa.3.0.i.i24, %bb.al ], [ %.sroa.3.0.i.i26, %bb.am ], [ %i.ge, %bb.aw ], [ %i.ey, %bb.an ], [ %i.fb, %bb.ao ], [ %i.gi, %bb.ay ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i41, %bb.bc ], [ 1, %.split10 ], [ 0, %bb.au ], [ %.sroa.0.0.i.i37, %bb.av ], [ %.sroa.0.0.i.i34, %_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.s ], [ %.sroa.0.0.i.i, %bb.t ], [ %.sroa.0.0.i.i13, %bb.u ], [ %.sroa.0.0.i.i15, %bb.v ], [ %.sroa.0.0.i.i17, %bb.w ], [ %..i.i, %bb.x ], [ %.sroa.0.0.i.i19, %bb.y ], [ %.sroa.0.0.i.i.i, %_RINvXsw_NtCslmKYcnV0hjo_10num_traits4castyNtB6_7NumCast4fromNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit ], [ %.sroa.0.0.i.i22, %bb.ak ], [ %.sroa.0.0.i.i25, %bb.al ], [ %.sroa.0.0.i.i27, %bb.am ], [ %..i.i38, %bb.aw ], [ %..i.i28, %bb.an ], [ %..i.i29, %bb.ao ], [ %i.gh, %bb.ay ], [ 0, %bb.a ], !dbg !7216
  %i.fu = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0, !dbg !7217
  %i.fv = insertvalue { i64, i64 } %i.fu, i64 %.sroa.26.0, 1, !dbg !7217
  ret { i64, i64 } %i.fv, !dbg !7217

.loopexit:                                        ; preds = %.lr.ph.i, %bb.h, %bb.g, %.lr.ph141.i, %.preheader111.i, %bb.l, %bb.m, %.lr.ph150.i, %bb.c, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7218
  call void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j) #56, !dbg !7219
  %i.fw = load i8, ptr %i.b, align 8, !dbg !7222, !range !1677, !noundef !11
  %i.fx = trunc nuw i8 %i.fw to i1, !dbg !7222
  br i1 %i.fx, label %bb.au, label %bb.av, !dbg !7225

_RNvMst_NtCscgRAwXFJnXP_4core3numn16from_ascii_radix.exit: ; preds = %bb.i, %bb.j, %bb.n, %bb.o, %.preheader.i, %.preheader114.i
  %.sroa.1542.0 = phi i128 [ %i.bj, %bb.o ], [ %i.am, %bb.j ], [ %i.ba, %bb.n ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.ad, %bb.i ], !dbg !7226 ; 2 uses
  %or.cond.i.i32 = icmp ult i128 %.sroa.1542.0, 18446744073709551616, !dbg !7227 ; 2 uses
  %i.fy = trunc nuw i128 %.sroa.1542.0 to i64, !dbg !7227
  %.sroa.3.0.i.i33 = select i1 %or.cond.i.i32, i64 %i.fy, i64 undef, !dbg !7227
  %.sroa.0.0.i.i34 = zext i1 %or.cond.i.i32 to i64, !dbg !7227
  br label %bb.at, !dbg !7230

bb.au:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7231
  br label %bb.at, !dbg !7217

bb.av:                                            ; preds = %.loopexit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !7232
  %i.ga = load double, ptr %i.fz, align 8, !dbg !7232, !noundef !11 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7231
  %i.gb = fcmp ogt double %i.ga, -1.000000e+00, !dbg !7233
  %i.gc = fcmp olt double %i.ga, f0x43F0000000000000
  %or.cond.i.i35 = and i1 %i.gb, %i.gc, !dbg !7233 ; 2 uses
  %i.gd = fptoui double %i.ga to i64, !dbg !7233
  %.sroa.3.0.i.i36 = select i1 %or.cond.i.i35, i64 %i.gd, i64 undef, !dbg !7233
  %.sroa.0.0.i.i37 = zext i1 %or.cond.i.i35 to i64, !dbg !7233
  br label %bb.at, !dbg !7230

bb.aw:                                            ; preds = %bb.a, %bb.a
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7236
  %i.ge = load i64, ptr %.sroa.01.0, align 8, !dbg !7237, !noundef !11 ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, -1, !dbg !7239
  %..i.i38 = zext i1 %i.gf to i64, !dbg !7242
  br label %bb.at, !dbg !7243

bb.ax:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.a) #52
          to label %bb.ba unwind label %bb.az, !dbg !7244

bb.ay:                                            ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.gh = extractvalue { i64, i64 } %i.fo, 0, !dbg !7182
  %i.gi = extractvalue { i64, i64 } %i.fo, 1, !dbg !7182
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.a), !dbg !7244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7244
  br label %bb.at, !dbg !7244

bb.az:                                            ; preds = %bb.ax
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !7245
  unreachable, !dbg !7245

bb.ba:                                            ; preds = %bb.ax
  resume { ptr, i32 } %i.gg, !dbg !7245

bb.bb:                                            ; preds = %bb.as
  %i.gk = tail call fastcc noundef i128 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal13div_128_pow10(i128 noundef %i.fq, i64 noundef %i.fs) #55, !dbg !7246
  br label %bb.bc, !dbg !7246

bb.bc:                                            ; preds = %bb.as, %bb.bb
  %.sroa.02.0 = phi i128 [ %i.gk, %bb.bb ], [ %i.fq, %bb.as ], !dbg !7247 ; 2 uses
  %or.cond.i.i39 = icmp ult i128 %.sroa.02.0, 18446744073709551616, !dbg !7248 ; 2 uses
  %i.gl = trunc nuw i128 %.sroa.02.0 to i64, !dbg !7248
  %.sroa.3.0.i.i40 = select i1 %or.cond.i.i39, i64 %i.gl, i64 undef, !dbg !7248
  %.sroa.0.0.i.i41 = zext i1 %or.cond.i.i39 to i64, !dbg !7248
  br label %bb.at, !dbg !7251
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtB6_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7252 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7258
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !7258
  store ptr %1, ptr %i.b, align 8, !dbg !7258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !7258
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #58, !dbg !7259, !noalias !7280
  %i.c = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1401) 32, i64 noundef range(i64 1, 17) 8) #58, !dbg !7283, !noalias !7280 ; 3 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !7284
  br i1 %i.d, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtBN_10PyErrState14lazy_argumentsTNtNtB4_6string6StringEE0E3newCs1LHh8CLbVkQ_11polars_core.exit, !dbg !7285, !prof !54

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #53
          to label %.noexc unwind label %bb.c, !dbg !7286

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !7286

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtBP_10PyErrState14lazy_argumentsTNtNtCsgZ49sUHp3tW_5alloc6string6StringEE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #52
          to label %bb.e unwind label %bb.d, !dbg !7287

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !7288
  unreachable, !dbg !7288

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !7288

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCINvMs0_NtNtCsbm5zPlkZccl_4pyo33err9err_stateNtBN_10PyErrState14lazy_argumentsTNtNtB4_6string6StringEE0E3newCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !7289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7291
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7292
  store i32 3, ptr %i.g, align 8, !dbg !7292
  store i32 0, ptr %0, align 8, !dbg !7292
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !7292
  store i8 0, ptr %.sroa.03.sroa.4.0..sroa_idx, align 4, !dbg !7292
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7292
  store i64 0, ptr %i.h, align 8, !dbg !7292
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7292
  store i64 1, ptr %3, align 8, !dbg !7292
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7292
  store ptr null, ptr %.sroa.411.0..sroa_idx, align 8, !dbg !7292
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7292
  store ptr %i.c, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !7292
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7292
  store ptr @94, ptr %.sroa.613.0..sroa_idx, align 8, !dbg !7292
  ret void, !dbg !7295
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB6_6Series10take_innerNtNtB8_9datatypes10BinaryTypeEB8_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(896) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7296 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 880, !dbg !7297
  %i.g = load ptr, ptr %i.f, align 8, !dbg !7297, !invariant.load !11, !nonnull !11
  %i.h = tail call { ptr, ptr } %i.g(ptr noundef nonnull %1) #55, !dbg !7298 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0, !dbg !7298 ; 5 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1, !dbg !7298 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7299), !dbg !7302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8, !noalias !7304
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.k, align 8, !noalias !7304
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !7306
  %i.m = load i64, ptr %i.l, align 8, !dbg !7306, !range !880, !invariant.load !11, !alias.scope !7299, !noalias !7311
  %i.n = add nsw i64 %i.m, -1, !dbg !7306
  %i.o = and i64 %i.n, -16, !dbg !7306
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o, !dbg !7306
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !7306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !7312, !noalias !7304
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !7318
  %i.s = load ptr, ptr %i.r, align 8, !dbg !7318, !invariant.load !11, !alias.scope !7299, !noalias !7311, !nonnull !11
  invoke void %i.s(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.q)
          to label %_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes10BinaryTypeEEEB21_.exit unwind label %bb.b, !dbg !7323, !noalias !7311

bb.b:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = atomicrmw sub ptr %i.i, i64 1 release, align 8, !dbg !7324, !noalias !7334
  %i.v = icmp eq i64 %i.u, 1, !dbg !7339
  br i1 %i.v, label %bb.c, label %common.resume, !dbg !7339

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !7340
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #56
          to label %common.resume unwind label %bb.d, !dbg !7343, !noalias !7311

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !7344, !noalias !7311
  unreachable, !dbg !7344

common.resume:                                    ; preds = %bb.m, %bb.l, %bb.g, %bb.f, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.c ], [ %i.aa, %bb.f ], [ %i.ak, %bb.l ], [ %i.ak, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !7345

_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes10BinaryTypeEEEB21_.exit: ; preds = %bb.a
  %i.x = load i128, ptr %i.b, align 16, !dbg !7346, !noalias !7304, !noundef !11
  %i.y = icmp eq i128 %i.x, -134379662600290732947202645876746289370, !dbg !7357 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !7312, !noalias !7304
  %spec.select.i = select i1 %i.y, ptr %i.i, ptr %i.j, !dbg !7358 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !7359
  br i1 %i.y, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes10BinaryTypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3S_4SyncEL_EE6unwrapB1m_.exit, label %bb.e, !dbg !7360, !prof !1047

bb.e:                                             ; preds = %_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes10BinaryTypeEEEB21_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !7363, !noalias !7364
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.i, ptr %i.d, align 8, !dbg !7363, !noalias !7364
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !7363
  store ptr %i.j, ptr %i.z, align 8, !dbg !7363, !noalias !7364
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @451, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #53
          to label %bb.h unwind label %bb.f, !dbg !7367, !noalias !7364

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7369), !dbg !7372
  call void @llvm.experimental.noalias.scope.decl(metadata !7373), !dbg !7376, !noalias !7364
  %i.ab = load ptr, ptr %i.d, align 8, !dbg !7378, !alias.scope !7384, !noalias !7364, !nonnull !11, !noundef !11
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !dbg !7385, !noalias !7388
  %i.ad = icmp eq i64 %i.ac, 1, !dbg !7389
  br i1 %i.ad, label %bb.g, label %common.resume, !dbg !7389

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !7390, !noalias !7364
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #56
          to label %common.resume unwind label %bb.i, !dbg !7392

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !7393, !noalias !7364
  unreachable, !dbg !7393

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes10BinaryTypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3S_4SyncEL_EE6unwrapB1m_.exit: ; preds = %_RINvMsE_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcDNtNtCscgRAwXFJnXP_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB21_13chunked_array12ChunkedArrayNtNtB21_9datatypes10BinaryTypeEEEB21_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8), !dbg !7394
  %i.af = cmpxchg ptr %spec.select.i, i64 1, i64 0 monotonic monotonic, align 8, !dbg !7396, !noalias !7403
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.af, 1, !dbg !7406
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit.thread, !dbg !7407

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes10BinaryTypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3S_4SyncEL_EE6unwrapB1m_.exit
  fence acquire, !dbg !7408
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 16, !dbg !7410
  %.sroa.05.0.copyload6 = load i64, ptr %i.ag, align 8, !dbg !7410 ; 2 uses
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24, !dbg !7410
  %.sroa.6.0.copyload8 = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8, !dbg !7410 ; 2 uses
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 32, !dbg !7410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx9, i64 40, i1 false), !dbg !7410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7414, !noalias !7403
  store ptr %spec.select.i, ptr %i.a, align 8, !dbg !7417, !noalias !7403
  call void @_RNvXsN_NtCsgZ49sUHp3tW_5alloc4syncINtB5_4WeakINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBO_13chunked_array12ChunkedArrayNtNtBO_9datatypes10BinaryTypeEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !7418, !noalias !7403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7421, !noalias !7403
  %i.ah = icmp eq i64 %.sroa.05.0.copyload6, -9223372036854775808, !dbg !7394
  br i1 %i.ah, label %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit.thread, label %bb.j, !dbg !7422

_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit.thread: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes10BinaryTypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3S_4SyncEL_EE6unwrapB1m_.exit, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit
  %i.ai = phi ptr [ %.sroa.6.0.copyload8, %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit ], [ %spec.select.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1m_13chunked_array12ChunkedArrayNtNtB1m_9datatypes10BinaryTypeEEEIBI_DNtNtB4_3any3AnyNtNtB4_6marker4SendNtB3S_4SyncEL_EE6unwrapB1m_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !7423
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  store ptr %i.ai, ptr %i.e, align 8, !dbg !7423
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !7424
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10BinaryTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneB7_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %i.aj)
          to label %bb.n unwind label %bb.l, !dbg !7431

bb.j:                                             ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit
  store i64 %.sroa.05.0.copyload6, ptr %0, align 8, !dbg !7432
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7432
  store ptr %.sroa.6.0.copyload8, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !7432
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false), !dbg !7432
  br label %bb.k, !dbg !7433

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEEB1l_.exit2, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8), !dbg !7434
  ret void, !dbg !7435

bb.l:                                             ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit.thread
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !7436, !noalias !7445
  %i.am = icmp eq i64 %i.al, 1, !dbg !7450
  br i1 %i.am, label %bb.m, label %common.resume, !dbg !7450

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !7451
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #56
          to label %common.resume unwind label %bb.p, !dbg !7453

bb.n:                                             ; preds = %_RNvMsf_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE10try_unwrapBN_.exit.thread
  %i.an = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !dbg !7454, !noalias !7459
  %i.ao = icmp eq i64 %i.an, 1, !dbg !7464
  br i1 %i.ao, label %bb.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEEB1l_.exit2, !dbg !7464

bb.o:                                             ; preds = %bb.n
  fence acquire, !dbg !7465
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtBN_13chunked_array12ChunkedArrayNtNtBN_9datatypes10BinaryTypeEEE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #56, !dbg !7467
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEEB1l_.exit2, !dbg !7467

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations10SeriesWrapINtNtB1l_13chunked_array12ChunkedArrayNtNtB1l_9datatypes10BinaryTypeEEEEB1l_.exit2: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !7468
  br label %bb.k, !dbg !7468

bb.p:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !7469
  unreachable, !dbg !7469
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB6_6Series10take_innerNtNtB8_9datatypes10Int128TypeEB8_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(896) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !7470 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.8 = alloca [40 x i8], align 8            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 880, !dbg !7471
  %i.g = load ptr, ptr %i.f, align 8, !dbg !7471, !invariant.load !11, !nonnull !11
  %i.h = tail call { ptr, ptr } %i.g(ptr noundef nonnull %1) #55, !dbg !7472 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0, !dbg !7472 ; 5 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1, !dbg !7472 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7473), !dbg !7476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8, !noalias !7478
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.k, align 8, !noalias !7478
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !7480
  %i.m = load i64, ptr %i.l, align 8, !dbg !7480, !range !880, !invariant.load !11, !alias.scope !7473, !noalias !7485
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame8group_byNtBW_7GroupBy11keys_sliced00INtB6_5FnMutTRNtNtB10_6series6SeriesEE8call_mutB10_:bb.a
  %i.cz = getelementptr i8, ptr %i.cw, i64 -4, !dbg !260654
  %i.da = load i32, ptr %i.cz, align 4, !dbg !260654, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.db = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !260655
  %i.dc = load i64, ptr %i.db, align 8, !dbg !260655, !range !880, !invariant.load !11
  %i.dd = add nsw i64 %i.dc, -1, !dbg !260655
  %i.de = and i64 %i.dd, -16, !dbg !260655
  %i.df = getelementptr inbounds nuw i8, ptr %.val1, i64 %i.de, !dbg !260655
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16, !dbg !260655
  %i.dh = zext i32 %i.cv to i64, !dbg !260662
  %i.di = sub i32 %i.cy, %i.cv, !dbg !260663
  %i.dj = add i32 %i.di, %i.da, !dbg !260664
  %i.dk = zext i32 %i.dj to i64, !dbg !260664
  %i.dl = getelementptr inbounds nuw i8, ptr %.val2, i64 352, !dbg !260665
  %i.dm = load ptr, ptr %i.dl, align 8, !dbg !260665, !invariant.load !11, !nonnull !11
  %i.dn = tail call { ptr, ptr } %i.dm(ptr noundef nonnull %i.dg, i64 noundef %i.dh, i64 noundef %i.dk) #55, !dbg !260666, !inline_history !260405
  br label %_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame8group_byNtB8_7GroupBy11keys_sliced00Bc_.exit, !dbg !260667

_RNCNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame8group_byNtB8_7GroupBy11keys_sliced00Bc_.exit: ; preds = %bb.d, %bb.v, %bb.w
  %.merged.i = phi { ptr, ptr } [ %i.cs, %bb.v ], [ %i.dn, %bb.w ], [ %.merged6.i, %bb.d ], !dbg !260667
  ret { ptr, ptr } %.merged.i, !dbg !260668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMs_NtNtCs1LHh8CLbVkQ_11polars_core5frame6chunksNtNtBW_9dataframe9DataFrame17split_chunks_by_n0INtB6_5FnMutTTjjEEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 !dbg !260669 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !260670, !nonnull !11, !align !848, !noundef !11
  %.val = load ptr, ptr %i.a, align 8, !dbg !260671, !nonnull !11, !align !848, !noundef !11
  tail call void @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 8 %.val, i64 noundef %2, i64 noundef %3), !dbg !260672
  ret void, !dbg !260677
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7optionsNtB4_19SortMultipleOptionsNtNtCscgRAwXFJnXP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !260678 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !260680
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #58, !dbg !260681
  %i.b = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1401) 1, i64 noundef range(i64 1, 17) 1) #58, !dbg !260688 ; 3 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !260689
  br i1 %i.c, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !260690, !prof !54

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #53, !dbg !260691
  unreachable, !dbg !260691

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !dbg !260680
  store i64 1, ptr %i.a, align 8, !dbg !260692
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !260692
  store ptr %i.b, ptr %i.d, align 8, !dbg !260692
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !260692
  store i64 1, ptr %i.e, align 8, !dbg !260692
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #58, !dbg !260702
  %i.f = tail call noundef dereferenceable_or_null(1) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, 1401) 1, i64 noundef range(i64 1, 17) 1) #58, !dbg !260709 ; 3 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !260710
  br i1 %i.g, label %bb.c, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit3, !dbg !260711, !prof !54

bb.c:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #53
          to label %.noexc unwind label %bb.d, !dbg !260712

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !260712

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !dbg !260713

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit3: ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  store i8 0, ptr %i.f, align 1, !dbg !260708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !260714
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !260714
  store i64 1, ptr %i.i, align 8, !dbg !260714
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !260714
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !260714
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !260714
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !260714
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !260714
  store i8 1, ptr %i.j, align 8, !dbg !260714
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !260714
  store i8 0, ptr %i.k, align 1, !dbg !260714
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !260714
  store i32 0, ptr %i.l, align 8, !dbg !260714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !260713
  ret void, !dbg !260715

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !260716
  unreachable, !dbg !260716

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h, !dbg !260716
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB4_15PolarsExtensionNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #2 !dbg !54538 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension16polars_extensionNtB2_15PolarsExtension12get_sentinel(ptr noundef nonnull align 8 %0), !dbg !260717
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object9extension17ExtensionSentinelEEB1n_(ptr %i.a), !dbg !260718
  ret void, !dbg !260719
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_7sources4once4OnceTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeQNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEENtB4_13SpecAdvanceBy15spec_advance_byB1N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !260720 {
bb.a:
  %.not = icmp eq i64 %1, 0, !dbg !260723
  br i1 %.not, label %bb.b, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeQNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB2N_10advance_byB3_NtB47_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3u_EEB10_.exit, !dbg !260724

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeQNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB2N_10advance_byB3_NtB47_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3u_EEB10_.exit: ; preds = %bb.a
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !260725
  %i.a = icmp ne ptr %.promoted.i, null, !dbg !260730
  %i.b = sext i1 %i.a to i64, !dbg !260736
  %spec.select = add i64 %1, %i.b, !dbg !260736
  store ptr null, ptr %0, align 8, !dbg !260737, !alias.scope !260725
  br label %bb.b, !dbg !260754

bb.b:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeQNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB2N_10advance_byB3_NtB47_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3u_EEB10_.exit
  %.sroa.0.1 = phi i64 [ %spec.select, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter7sources4once4OnceTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeQNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB2N_10advance_byB3_NtB47_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB3u_EEB10_.exit ], [ 0, %bb.a ], !dbg !260755
  ret i64 %.sroa.0.1, !dbg !260754
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticRNtNtB7_9dataframe9DataFrameNtNtNtCscgRAwXFJnXP_4core3ops5arith3Sub3sub(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !260756 {
bb.a:
  tail call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticNtNtB7_9dataframe9DataFrame14binary_aligned(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1396), !dbg !260757
  ret void, !dbg !260758
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtCs1LHh8CLbVkQ_11polars_core3fmtNtB5_9PlTzAwareNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 !dbg !260759 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [28 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !260761, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !260761
  %i.h = load i64, ptr %i.g, align 8, !dbg !260761, !noundef !11
  %i.i = tail call noundef i16 @_RNvXs0_NtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezonesNtB5_2TzNtNtNtCscgRAwXFJnXP_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h), !dbg !260762 ; 2 uses
  %i.j = icmp eq i16 %i.i, 597, !dbg !260761
  br i1 %i.j, label %bb.d, label %bb.b, !dbg !260765

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !260766
  store i16 %i.i, ptr %i.e, align 2, !dbg !260766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !260767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !260769
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !260770
  call void @_RINvMNtCs9o5SvTbM2BP_6chrono6offsetINtB3_11LocalResultNtNtB3_3utc3UtcE8and_thenINtNtB5_8datetime8DateTimeBQ_ENCNvYBQ_NtB3_8TimeZone19from_local_datetime0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.c, i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.k), !dbg !260771
  call void @_RNvMs0_NtCs9o5SvTbM2BP_6chrono6offsetINtB5_11LocalResultINtNtB7_8datetime8DateTimeNtNtB5_3utc3UtcEE6unwrapCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(28) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1397), !dbg !260777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !260778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !260779
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !260781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !dbg !260788
  call void @_RNvXsa_NtCskkVOJYD9Dn_9chrono_tz13timezone_implNtNtNtB7_8prebuilt9timezones2TzNtNtCs9o5SvTbM2BP_6chrono6offset8TimeZone24offset_from_utc_datetime(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d), !dbg !260789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !260790
  store ptr %i.b, ptr %i.a, align 8, !dbg !260790
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !260790
  store ptr @_RNvXsA_NtCs9o5SvTbM2BP_6chrono8datetimeINtB5_8DateTimeNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtCs1LHh8CLbVkQ_11polars_core, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !260790
  %i.m = load ptr, ptr %1, align 8, !dbg !260794, !nonnull !11, !noundef !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !260794
  %i.o = load ptr, ptr %i.n, align 8, !dbg !260794, !nonnull !11, !align !848, !noundef !11
  %i.p = call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @86, ptr noundef nonnull %i.a), !dbg !260798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !260799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !260800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !260801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !260802
  br label %bb.c, !dbg !260802

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.v, %bb.d ], [ %i.p, %bb.b ]
  ret i1 %.sroa.0.1.in, !dbg !260803

bb.d:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !dbg !260804, !nonnull !11, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !260804
  %i.s = load ptr, ptr %i.r, align 8, !dbg !260804, !nonnull !11, !align !848, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !260804
  %i.u = load ptr, ptr %i.t, align 8, !dbg !260804, !invariant.load !11, !nonnull !11
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1398, i64 noundef 16) #55, !dbg !260808
  br label %bb.c, !dbg !260809
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticRNtNtB7_9dataframe9DataFrameNtNtNtCscgRAwXFJnXP_4core3ops5arith3Div3div(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !260810 {
bb.a:
  tail call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticNtNtB7_9dataframe9DataFrame14binary_aligned(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1399), !dbg !260811
  ret void, !dbg !260812
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6object8registry14ObjectRegistryEENtNtB14_7default7Default7defaultB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 9), (16, 17)) %0) unnamed_addr #12 !dbg !260813 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !260815
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 0, i64 9, i1 false), !dbg !260815
  store i8 42, ptr %i.a, align 8, !dbg !260815
  ret void, !dbg !260818
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticRNtNtB7_9dataframe9DataFrameNtNtNtCscgRAwXFJnXP_4core3ops5arith3Mul3mul(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !260819 {
bb.a:
  tail call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core5frame10arithmeticNtNtB7_9dataframe9DataFrame14binary_aligned(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1400), !dbg !260820
  ret void, !dbg !260821
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvXsc_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !260822 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 16               ; 8 uses
  %i.c = alloca [48 x i8], align 16               ; 8 uses
  %i.d = alloca [48 x i8], align 16               ; 8 uses
  %i.e = alloca [48 x i8], align 16               ; 8 uses
  %i.f = alloca [48 x i8], align 16               ; 9 uses
  %i.g = alloca [48 x i8], align 16               ; 9 uses
  %i.h = alloca [48 x i8], align 16               ; 7 uses
  %i.i = alloca [48 x i8], align 16               ; 8 uses
  %i.j = alloca [48 x i8], align 16               ; 8 uses
  %i.k = alloca [48 x i8], align 16               ; 7 uses
  %i.l = alloca [48 x i8], align 16               ; 8 uses
  %i.m = alloca [48 x i8], align 16               ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.o, align 8
  store ptr %1, ptr %i.n, align 8
  %i.p = load i8, ptr %0, align 16, !dbg !260824, !range !1673, !noundef !11 ; 34 uses
  switch i8 %i.p, label %bb.b [
    i8 28, label %bb.c
    i8 31, label %bb.d
    i8 33, label %bb.g
  ], !dbg !260825

bb.b:                                             ; preds = %bb.a
  %i.q = load i8, ptr %1, align 16, !dbg !260824, !range !1673, !noundef !11 ; 5 uses
  switch i8 %i.q, label %bb.p [
    i8 28, label %bb.q
    i8 31, label %bb.r
    i8 33, label %bb.u
  ], !dbg !260825

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !260826
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !260828
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !260826
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !dbg !260828
  store <2 x ptr> %i.t, ptr %i.s, align 8, !dbg !260826
  store i8 27, ptr %i.k, align 16, !dbg !260826
  %i.u = invoke noundef i8 @_RNvXsc_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.i unwind label %bb.h, !dbg !260829

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !260830
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !260832 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !260838
  %i.x = load i8, ptr %i.w, align 1, !dbg !260838, !range !1384, !alias.scope !260844, !noundef !11 ; 2 uses
  %i.y = icmp ugt i8 %i.x, -41, !dbg !260847
  br i1 %i.y, label %bb.f, label %bb.e, !dbg !260847

bb.e:                                             ; preds = %bb.d
  %i.z = add i8 %i.x, 64, !dbg !260848
  %i.aa = tail call i8 @llvm.umin.i8(i8 %i.z, i8 24), !dbg !260850
  %.sroa.0.0.i.i = zext nneg i8 %i.aa to i64, !dbg !260850
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !260853

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.v, align 8, !dbg !260854, !alias.scope !260844, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !260855
  %i.ad = load i64, ptr %i.ac, align 16, !dbg !260855, !alias.scope !260844, !noundef !11
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !260856

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.e, %bb.f
  %.sroa.01.0.i68 = phi i64 [ %i.ad, %bb.f ], [ %.sroa.0.0.i.i, %bb.e ], !dbg !260857
  %.sroa.0.0.i69 = phi ptr [ %i.ab, %bb.f ], [ %i.v, %bb.e ], !dbg !260858
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !260830
  store ptr %.sroa.0.0.i69, ptr %i.ae, align 8, !dbg !260830
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !260830
  store i64 %.sroa.01.0.i68, ptr %i.af, align 16, !dbg !260830
  store i8 2, ptr %i.m, align 16, !dbg !260830
  %i.ag = invoke noundef i8 @_RNvXsc_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.m unwind label %bb.l, !dbg !260859

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !260860
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !260862
  %i.ai = load ptr, ptr %i.ah, align 16, !dbg !260862, !nonnull !11, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !260877
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !260877, !noundef !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !260860
  store ptr %i.ai, ptr %i.al, align 8, !dbg !260860
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !260860
  store i64 %i.ak, ptr %i.am, align 16, !dbg !260860
  store i8 32, ptr %i.l, align 16, !dbg !260860
  %i.an = invoke noundef i8 @_RNvXsc_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.o unwind label %bb.n, !dbg !260878

bb.h:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.k) #52
          to label %bb.k unwind label %bb.j, !dbg !260879

bb.i:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.k), !dbg !260879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !260879
  br label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit, !dbg !260879

_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit: ; preds = %bb.cs, %bb.cr, %bb.av, %bb.aw, %bb.dt, %bb.ds, %bb.dn, %bb.dk, %bb.dj, %bb.dh, %bb.df, %bb.cv, %bb.cu, %bb.ct, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ba, %bb.ay, %bb.au, %bb.aq, %bb.am, %bb.ai, %bb.ae, %bb.aa, %bb.y, %bb.w, %bb.o, %bb.m, %bb.i
  %.sroa.0.0 = phi i8 [ %i.cd, %bb.ae ], [ %i.cq, %bb.ai ], [ %i.cy, %bb.am ], [ %i.dg, %bb.aq ], [ %i.do, %bb.au ], [ 0, %bb.aw ], [ 1, %bb.ay ], [ %i.fe, %bb.cf ], [ %i.fr, %bb.cg ], [ %i.fw, %bb.ch ], [ %i.gb, %bb.ci ], [ %i.gg, %bb.cj ], [ %i.gl, %bb.ck ], [ %i.gq, %bb.cl ], [ %i.gv, %bb.cm ], [ %i.ha, %bb.cn ], [ %i.hf, %bb.co ], [ %i.hk, %bb.cp ], [ %i.hp, %bb.cq ], [ -1, %bb.av ], [ %.sroa.07.0, %bb.ct ], [ %.sroa.08.0, %bb.cu ], [ %i.iw, %bb.cv ], [ %i.kc, %bb.df ], [ %i.kl, %bb.dh ], [ %i.kq, %bb.dj ], [ %i.lt, %bb.dk ], [ %i.mf, %bb.dn ], [ %i.ms, %bb.ds ], [ %i.nb, %bb.dt ], [ %i.an, %bb.o ], [ %i.dx, %bb.ba ], [ %i.aw, %bb.w ], [ %i.bi, %bb.y ], [ %i.bp, %bb.aa ], [ %i.u, %bb.i ], [ %i.ag, %bb.m ], [ -1, %bb.cr ], [ %spec.select.i, %bb.cs ], !dbg !260880
  ret i8 %.sroa.0.0, !dbg !260881

bb.j:                                             ; preds = %bb.az, %bb.at, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.x, %bb.v, %bb.n, %bb.l, %bb.h
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #54, !dbg !260882
  unreachable, !dbg !260882

bb.k:                                             ; preds = %bb.az, %bb.at, %bb.ap, %bb.al, %bb.ah, %bb.ad, %bb.z, %bb.x, %bb.v, %bb.n, %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.ad ], [ %i.cs, %bb.ah ], [ %i.da, %bb.al ], [ %i.di, %bb.ap ], [ %i.dp, %bb.at ], [ %i.dy, %bb.az ], [ %i.bq, %bb.v ], [ %i.br, %bb.x ], [ %i.bs, %bb.z ], [ %i.ao, %bb.h ], [ %i.aq, %bb.l ], [ %i.ar, %bb.n ]
  resume { ptr, i32 } %.pn, !dbg !260882

bb.l:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.m) #52
          to label %bb.k unwind label %bb.j, !dbg !260883

bb.m:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.m), !dbg !260883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !260883
  br label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit, !dbg !260883

bb.n:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.l) #52
          to label %bb.k unwind label %bb.j, !dbg !260884

bb.o:                                             ; preds = %bb.g
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEBM_(ptr noalias noundef align 16 dereferenceable(48) %i.l), !dbg !260884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !260884
  br label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit, !dbg !260884

bb.p:                                             ; preds = %bb.b
  %i.as = icmp eq i8 %i.p, 18, !dbg !260825
  br i1 %i.as, label %bb.ab, label %bb.ac, !dbg !260825

bb.q:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !260885
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !260887
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !260885
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !dbg !260887
  store <2 x ptr> %i.av, ptr %i.au, align 8, !dbg !260885
  store i8 27, ptr %i.h, align 16, !dbg !260885
  %i.aw = invoke noundef i8 @_RNvXsc_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.w unwind label %bb.v, !dbg !260888

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !260889
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !260891 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !260894
  %i.az = load i8, ptr %i.ay, align 1, !dbg !260894, !range !1384, !alias.scope !260898, !noundef !11 ; 2 uses
  %i.ba = icmp ugt i8 %i.az, -41, !dbg !260901
  br i1 %i.ba, label %bb.t, label %bb.s, !dbg !260901

bb.s:                                             ; preds = %bb.r
  %i.bb = add i8 %i.az, 64, !dbg !260902
  %i.bc = tail call i8 @llvm.umin.i8(i8 %i.bb, i8 24), !dbg !260904
  %.sroa.0.0.i.i70 = zext nneg i8 %i.bc to i64, !dbg !260904
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit73, !dbg !260907

bb.t:                                             ; preds = %bb.r
  %i.bd = load ptr, ptr %i.ax, align 8, !dbg !260908, !alias.scope !260898, !noundef !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !260909
  %i.bf = load i64, ptr %i.be, align 16, !dbg !260909, !alias.scope !260898, !noundef !11
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit73, !dbg !260910

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit73: ; preds = %bb.s, %bb.t
  %.sroa.01.0.i71 = phi i64 [ %i.bf, %bb.t ], [ %.sroa.0.0.i.i70, %bb.s ], !dbg !260911
  %.sroa.0.0.i72 = phi ptr [ %i.bd, %bb.t ], [ %i.ax, %bb.s ], !dbg !260912
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !260889
  store ptr %.sroa.0.0.i72, ptr %i.bg, align 8, !dbg !260889
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !260889
  store i64 %.sroa.01.0.i71, ptr %i.bh, align 16, !dbg !260889
  store i8 2, ptr %i.j, align 16, !dbg !260889
  %i.bi = invoke noundef i8 @_RNvXsc_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.y unwind label %bb.x, !dbg !260913

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !260914
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !260916
  %i.bk = load ptr, ptr %i.bj, align 16, !dbg !260916, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !260922
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !260922, !noundef !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !260914
  store ptr %i.bk, ptr %i.bn, align 8, !dbg !260914
end_hunk_1
