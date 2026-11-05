Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RINvNtCs1BCiKJoB9mN_4fsst4fsst8compresslECsjjpCCFGI3ul_14lance_encoding:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.n, i64 156162 ; 3 uses
  br label %bb.aa

.lr.ph.i57.i.i:                                   ; preds = %.lr.ph.i57.i.i.prol.loopexit, %.lr.ph.i57.i.i
  %.sroa.03.0972.i.i.i = phi ptr [ %i.ed, %.lr.ph.i57.i.i ], [ %.sroa.03.0972.i.i.i.unr, %.lr.ph.i57.i.i.prol.loopexit ] ; 5 uses
  %i.dj = load i8, ptr %.sroa.03.0972.i.i.i, align 1, !noalias !4368, !noundef !100
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.03.0972.i.i.i, i64 1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dk ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !4368, !noundef !100
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !noalias !4368
  %i.dp = load i8, ptr %i.dl, align 1, !noalias !4368, !noundef !100
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.0972.i.i.i, i64 2
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dq ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !4368, !noundef !100
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.ds, align 8, !noalias !4368
  %i.dv = load i8, ptr %i.dr, align 1, !noalias !4368, !noundef !100
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.03.0972.i.i.i, i64 3
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dw ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !4368, !noundef !100
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.dy, align 8, !noalias !4368
  %i.eb = load i8, ptr %i.dx, align 1, !noalias !4368, !noundef !100
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.0972.i.i.i, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ec ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !4368, !noundef !100
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !noalias !4368
  %i.eh = icmp eq ptr %i.ed, %i.cv
  br i1 %i.eh, label %.preheader.i.i.i, label %.lr.ph.i57.i.i

bb.aa:                                            ; preds = %bb.ff, %.preheader.i.i.i
  %.sroa.06.0975.i.i.i = phi i64 [ 32768, %.preheader.i.i.i ], [ %.sroa.06.1.i.i.i.1, %bb.ff ] ; 2 uses
  %.sroa.0538.0.idx974.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %.sroa.0538.0.add.i.i.i.1, %bb.ff ] ; 3 uses
  %.sroa.7.0973.i.i.i = phi i16 [ 0, %.preheader.i.i.i ], [ %i.bbv, %bb.ff ] ; 3 uses
  %.sroa.0538.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0538.0.idx974.i.i.i
  %i.ei = or disjoint i16 %.sroa.7.0973.i.i.i, 1
  %i.ej = load i64, ptr %.sroa.0538.0.ptr.i.i.i, align 8, !noalias !4368, !noundef !100 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %.sroa.06.0975.i.i.i
  br i1 %i.ek, label %bb.fc, label %bb.fd

bb.ab:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4368
  %.sroa.450.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 6, ptr %.sroa.450.0..sroa_idx.i.i.i, align 8, !noalias !4368
  %.sroa.551.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 8, ptr %.sroa.551.0..sroa_idx.i.i.i, align 8, !noalias !4368
  %.sroa.652.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 38, ptr %.sroa.652.0..sroa_idx.i.i.i, align 8, !noalias !4368
  %.sroa.753.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 68, ptr %.sroa.753.0..sroa_idx.i.i.i, align 8, !noalias !4368
  %.sroa.854.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 98, ptr %.sroa.854.0..sroa_idx.i.i.i, align 8, !noalias !4368
  %.sroa.955.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 108, ptr %.sroa.955.0..sroa_idx.i.i.i, align 8, !noalias !4368
  %.sroa.1056.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 128, ptr %.sroa.1056.0..sroa_idx.i.i.i, align 8, !noalias !4368
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 147456 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 131072
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 155648
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.es = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 10 uses
  %.sroa.516.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 156160 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 8 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 15 uses
  %.sroa.420.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.sroa.521.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ez = icmp ult i64 %i.cs, 2305843009213693952
  %exitcond.not.i.i.i.i11701174 = icmp ugt i64 %i.ci, -3
  br label %bb.ac

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ac, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i, %bb.bs, %bb.bq, %bb.bo, %bb.y, %_RINvNtCs1BCiKJoB9mN_4fsst4fsst11make_samplelECsjjpCCFGI3ul_14lance_encoding.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.fb, %bb.ab
  %i.fa = phi i64 [ 0, %bb.ab ], [ %i.fb, %bb.fb ] ; 2 uses
  %.sroa.0.0708980.i.i.i = phi i32 [ -32768, %bb.ab ], [ %.sroa.0.1.i.i.i, %bb.fb ] ; 2 uses
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 3 uses
  store i64 %i.fb, ptr %i.k, align 8, !alias.scope !4370, !noalias !4368
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.551.0..sroa_idx.i.i.i, i64 %i.fa
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !4370, !noalias !4368, !noundef !100 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4368
  invoke void @_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4368

.noexc.i.i.i:                                     ; preds = %bb.ac
  call void @llvm.assume(i1 %i.ez)
  %.val66.i.i.i.i = load ptr, ptr %i.em, align 8, !noalias !4372 ; 6 uses
  %.val67.i.i.i.i = load i64, ptr %i.en, align 8, !noalias !4372 ; 6 uses
  %i.fe = icmp ult i64 %i.fd, 128
  %.val73.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !4372 ; 6 uses
  %.val72.i.i.i.i = load ptr, ptr %i.er, align 8, !noalias !4372, !nonnull !100 ; 5 uses
  br i1 %exitcond.not.i.i.i.i11701174, label %.outer.i.i.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i
  %umax264.i.i.i.i1177 = phi i64 [ %umax264.i.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i ], [ %i.cs, %.noexc.i.i.i ]
  %.sroa.042.0.ph.i.i.i.i1176 = phi i64 [ %i.fy, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i ], [ 1, %.noexc.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i1175 = phi i32 [ %.sroa.0.1.lcssa.i.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i ], [ 0, %.noexc.i.i.i ] ; 2 uses
  br label %bb.aj

bb.ad:                                            ; preds = %bb.am
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fy, %umax264.i.i.i.i1177
  br i1 %exitcond.not.i.i.i.i, label %.outer.i.i.i.i._crit_edge, label %bb.aj

.outer.i.i.i.i._crit_edge:                        ; preds = %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i, %bb.ad, %.noexc.i.i.i
  %.sroa.0.0.ph.i.i.i.i.lcssa = phi i32 [ %.sroa.0.0.ph.i.i.i.i1175, %bb.ad ], [ 0, %.noexc.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i ] ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !4373
  %i.ff = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4373 ; 8 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.ae, label %bb.bz, !prof !102

bb.ae:                                            ; preds = %.outer.i.i.i.i._crit_edge
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #66
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !4368

.noexc.i.i.i.i:                                   ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4374)
  %.val.i109.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !4374, !noalias !4368 ; 2 uses
  %i.fi = icmp eq i64 %.val.i109.i.i.i, 0
  br i1 %i.fi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = shl nuw i64 %.val.i109.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i.i.i, i64 noundef %i.fj, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !4375
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4376)
  call void @llvm.experimental.noalias.scope.decl(metadata !4377)
  %i.fl = icmp eq i64 %.val73.i.i.i.i, 0
  br i1 %i.fl, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.fn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %.val72.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.fn = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.fm, align 8, !alias.scope !4377, !noalias !4378 ; 2 uses
  %i.fo = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fp = getelementptr i8, ptr %i.fm, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !alias.scope !4377, !noalias !4378, !nonnull !100, !noundef !100
  %i.fq = shl nuw i64 %.val8.i.i.i.i.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !4379
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i.i
  %i.fr = icmp eq i64 %i.fn, %.val73.i.i.i.i
  br i1 %i.fr, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.fk, align 8, !alias.scope !4380, !noalias !4368 ; 2 uses
  %i.fs = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.fs, label %.body.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  %i.ft = mul nuw i64 %.val2.i.i.i.i.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72.i.i.i.i, i64 noundef %i.ft, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4378
  br label %.body.i.i.i

bb.aj:                                            ; preds = %.lr.ph, %bb.ad
  %.sroa.042.0.i.i.i.i1171 = phi i64 [ %.sroa.042.0.ph.i.i.i.i1176, %.lr.ph ], [ %i.fy, %bb.ad ] ; 3 uses
  %i.fu = add nsw i64 %.sroa.042.0.i.i.i.i1171, -1 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.cs
  br i1 %i.fv, label %bb.am, label %bb.al

.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.aq, %.invoke.i.i.i.i, %.invoke391.i.i.i.i, %bb.ap
  %lpad.loopexit.split-lp1230 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !4372 ; 2 uses
  %i.fw = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.fw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, label %bb.bl

bb.ak:                                            ; preds = %bb.ap
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fx = add i64 %.sroa.042.0.ph.i.i.i.i1176, -1
  %umax.le.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.fx)
  br label %.invoke391.i.i.i.i

bb.am:                                            ; preds = %bb.aj
  %i.fy = add nuw nsw i64 %.sroa.042.0.i.i.i.i1171, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.24.copyload.i.i) ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.24.copyload.i.i, i64 %.sroa.042.0.i.i.i.i1171
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.24.copyload.i.i, i64 %i.fu
  %.val.i78.i.i.i = load i32, ptr %i.fz, align 4, !noalias !4368, !noundef !100 ; 3 uses
  %.val63.i.i.i.i = load i32, ptr %i.ga, align 4, !noalias !4368, !noundef !100 ; 3 uses
  %i.gb = icmp eq i32 %.val.i78.i.i.i, %.val63.i.i.i.i
  br i1 %i.gb, label %bb.ad, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gc = sext i32 %.val63.i.i.i.i to i64         ; 3 uses
  %i.gd = sext i32 %.val.i78.i.i.i to i64         ; 3 uses
  %i.ge = icmp ult i32 %.val.i78.i.i.i, %.val63.i.i.i.i
  br i1 %i.ge, label %bb.ap, label %bb.ao, !prof !106

bb.ao:                                            ; preds = %bb.an
  %i.gf = sub nuw nsw i64 %i.gd, %i.gc            ; 6 uses
  %.not.i79.i.i.i = icmp ult i64 %i.ce, %i.gd
  br i1 %.not.i79.i.i.i, label %bb.ap, label %bb.aq, !prof !106

bb.ap:                                            ; preds = %bb.ao, %bb.an
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.gc, i64 noundef %i.gd, i64 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #66
          to label %bb.ak unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4368

bb.aq:                                            ; preds = %bb.ao
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload.i.i, i64 %i.gc ; 5 uses
  %i.gh = invoke noundef i16 @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable35find_longest_symbol_from_char_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(156176) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %i.gf)
          to label %bb.ar unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4368 ; 4 uses

bb.ar:                                            ; preds = %bb.aq
  %i.gi = zext i16 %i.gh to i64                   ; 3 uses
  %i.gj = icmp ult i16 %i.gh, 512
  br i1 %i.gj, label %bb.as, label %.invoke391.i.i.i.i

.invoke391.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %bb.ar, %bb.bk, %bb.bi, %bb.bh, %bb.az, %bb.aw, %bb.at, %bb.al
  %i.gk = phi i64 [ %i.jt, %bb.bi ], [ %umax.le.i.i.i.i, %bb.al ], [ %i.hs, %bb.aw ], [ %i.hf, %bb.at ], [ %i.iq, %bb.az ], [ %i.hf, %bb.bh ], [ %i.kh, %bb.bk ], [ %i.gi, %bb.ar ], [ %.pre-phi.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.gl = phi i64 [ %i.jx, %bb.bi ], [ %i.cs, %bb.al ], [ %.val67.i.i.i.i, %bb.aw ], [ %.val67.i.i.i.i, %bb.at ], [ 512, %bb.az ], [ %.val73.i.i.i.i, %bb.bh ], [ %i.ki, %bb.bk ], [ 512, %bb.ar ], [ %.val67.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.gm = phi ptr [ @1946, %bb.bi ], [ @516, %bb.al ], [ @1944, %bb.aw ], [ @1944, %bb.at ], [ @519, %bb.az ], [ @1945, %bb.bh ], [ @1946, %bb.bk ], [ @517, %bb.ar ], [ @1944, %._crit_edge.i.i.i.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.gk, i64 noundef %i.gl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gm) #66
          to label %.cont392.i.i.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4368

.cont392.i.i.i.i:                                 ; preds = %.invoke391.i.i.i.i
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.gi
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !4371, !noalias !4368, !noundef !100
  %i.gq = lshr i64 %i.gp, 28
  %i.gr = and i64 %i.gq, 4294967295               ; 3 uses
  %i.gs = icmp samesign ult i16 %i.gh, 256
  %.sroa.020.0.i.i.i.i = select i1 %i.gs, i64 2, i64 1
  %i.gt = call i64 @llvm.usub.sat.i64(i64 %i.gr, i64 %.sroa.020.0.i.i.i.i) ; 2 uses
  %i.gu = icmp samesign ult i64 %i.gt, 2147483648
  br i1 %i.gu, label %.split.i.i.i.i, label %.invoke.i.i.i.i, !prof !103

.split.i.i.i.i:                                   ; preds = %bb.as
  %i.gv = trunc nuw nsw i64 %i.gt to i32
  %i.gw = add i32 %.sroa.0.0.ph.i.i.i.i1175, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gr, %i.gf
  br i1 %i.gx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i.i
  %i.gy = icmp ugt i64 %i.gf, 7
  %i.gz = add nsw i64 %i.gf, -7
  br label %bb.at

.invoke.i.i.i.i:                                  ; preds = %bb.as, %bb.be
  %i.ha = phi ptr [ @520, %bb.be ], [ @518, %bb.as ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ha) #66
          to label %.cont.i.i.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4368

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.bg
  %.pre.i.i.i.i = zext nneg i16 %.sroa.029.0.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.split.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.gi, %.split.i.i.i.i ] ; 3 uses
  %.sroa.0.1.lcssa.i.i.i.i = phi i32 [ %i.jq, %._crit_edge.loopexit.i.i.i.i ], [ %i.gw, %.split.i.i.i.i ] ; 2 uses
  %i.hb = icmp ugt i64 %.val67.i.i.i.i, %.pre-phi.i.i.i.i
  br i1 %i.hb, label %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i, label %.invoke391.i.i.i.i

_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.val66.i.i.i.i, i64 %.pre-phi.i.i.i.i ; 2 uses
  %i.hd = load i16, ptr %i.hc, align 2, !noalias !4368, !noundef !100
  %i.he = call i16 @llvm.uadd.sat.i16(i16 %i.hd, i16 1)
  store i16 %i.he, ptr %i.hc, align 2, !noalias !4368
  %umax264.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.cs)
  %exitcond.not.i.i.i.i1170.not = icmp ult i64 %i.fy, %i.cs
  br i1 %exitcond.not.i.i.i.i1170.not, label %.lr.ph, label %.outer.i.i.i.i._crit_edge

bb.at:                                            ; preds = %bb.bg, %.lr.ph.i.i.i.i
  %.sroa.03.0165.i.i.i.i = phi i64 [ %i.gr, %.lr.ph.i.i.i.i ], [ %i.jr, %bb.bg ] ; 7 uses
  %.sroa.012.0164.i.i.i.i = phi i16 [ %i.gh, %.lr.ph.i.i.i.i ], [ %.sroa.029.0.i.i.i.i, %bb.bg ]
  %.sroa.0.1163.i.i.i.i = phi i32 [ %i.gw, %.lr.ph.i.i.i.i ], [ %i.jq, %bb.bg ]
  %i.hf = zext nneg i16 %.sroa.012.0164.i.i.i.i to i64 ; 7 uses
  %i.hg = icmp ugt i64 %.val67.i.i.i.i, %i.hf
  br i1 %i.hg, label %bb.au, label %.invoke391.i.i.i.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val66.i.i.i.i) ]
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.val66.i.i.i.i, i64 %i.hf ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 2, !noalias !4368, !noundef !100
  %i.hj = call i16 @llvm.uadd.sat.i16(i16 %i.hi, i16 1)
  store i16 %i.hj, ptr %i.hh, align 2, !noalias !4368
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.hf
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !4371, !noalias !4368, !noundef !100
  %i.hn = and i64 %i.hm, 1152921504338411520
  %i.ho = icmp eq i64 %i.hn, 268435456
  br i1 %i.ho, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit78.i.i.i.i, %bb.au
  %i.hp = icmp ult i64 %.sroa.03.0165.i.i.i.i, %i.gz
  %or.cond.i.i.i.i = select i1 %i.gy, i1 %i.hp, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.03.0165.i.i.i.i
  %i.hr = load i8, ptr %i.hq, align 1, !noalias !4368, !noundef !100
  %i.hs = zext i8 %i.hr to i64                    ; 3 uses
  %i.ht = icmp ugt i64 %.val67.i.i.i.i, %i.hs
  br i1 %i.ht, label %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit78.i.i.i.i, label %.invoke391.i.i.i.i

_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit78.i.i.i.i: ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.val66.i.i.i.i, i64 %i.hs ; 2 uses
  %i.hv = load i16, ptr %i.hu, align 2, !noalias !4368, !noundef !100
  %i.hw = call i16 @llvm.uadd.sat.i16(i16 %i.hv, i16 1)
  store i16 %i.hw, ptr %i.hu, align 2, !noalias !4368
  br label %bb.av

bb.ax:                                            ; preds = %bb.av
  %i.hx = sub nuw i64 %i.gf, %.sroa.03.0165.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.03.0165.i.i.i.i
  %i.hz = invoke noundef i16 @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable35find_longest_symbol_from_char_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(156176) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hx)
          to label %bb.az unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4368 ; 3 uses

bb.ay:                                            ; preds = %bb.av
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.03.0165.i.i.i.i
  %.sroa.044.0.copyload.i.i.i.i = load i64, ptr %i.ia, align 1, !noalias !4368 ; 3 uses
  %i.ib = and i64 %.sroa.044.0.copyload.i.i.i.i, 16777215
  %i.ic = mul nuw nsw i64 %i.ib, 2971215073       ; 2 uses
  %i.id = lshr i64 %i.ic, 15
  %i.ie = xor i64 %i.id, %i.ic
  %i.if = and i64 %i.ie, 1023
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !alias.scope !4371, !noalias !4368, !noundef !100 ; 4 uses
  %i.ij = load i64, ptr %i.ig, align 8, !alias.scope !4371, !noalias !4368, !noundef !100
  %i.ik = and i64 %i.ii, 63
  %i.il = lshr i64 -1, %i.ik
  %i.im = and i64 %i.il, %.sroa.044.0.copyload.i.i.i.i ; 2 uses
  %i.in = icmp ult i64 %i.ii, 4294967296
  %i.io = icmp eq i64 %i.ij, %i.im
  %i.ip = and i1 %i.in, %i.io
  br i1 %i.ip, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.iq = zext i16 %i.hz to i64                   ; 2 uses
  %i.ir = icmp ult i16 %i.hz, 512
  br i1 %i.ir, label %bb.ba, label %.invoke391.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.iq
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !4371, !noalias !4368, !noundef !100
  %i.iv = lshr i64 %i.iu, 28
  %i.iw = trunc i64 %i.iv to i32
  br label %bb.be

bb.bb:                                            ; preds = %bb.ay
  %i.ix = and i64 %.sroa.044.0.copyload.i.i.i.i, 65535
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !alias.scope !4371, !noalias !4368, !noundef !100
  %i.ja = and i16 %i.iz, 511                      ; 2 uses
  %i.jb = icmp samesign ugt i16 %i.ja, 255
  br i1 %i.jb, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.jc = lshr i64 %i.ii, 16
  %i.jd = trunc nuw i64 %i.jc to i16
  %i.je = and i16 %i.jd, 511
  %i.jf = lshr i64 %i.ii, 28
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.jh = and i64 %i.im, 255
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.jh
  %i.jj = load i16, ptr %i.ji, align 2, !alias.scope !4371, !noalias !4368, !noundef !100
  %i.jk = and i16 %i.jj, 511
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.034.0.i.i.i.i = phi i32 [ %i.jg, %bb.bc ], [ %i.iw, %bb.ba ], [ 1, %bb.bd ], [ 2, %bb.bb ] ; 2 uses
  %.sroa.029.0.i.i.i.i = phi i16 [ %i.je, %bb.bc ], [ %i.hz, %bb.ba ], [ %i.jk, %bb.bd ], [ %i.ja, %bb.bb ] ; 4 uses
  %i.jl = zext i32 %.sroa.034.0.i.i.i.i to i64    ; 2 uses
  %i.jm = icmp samesign ult i16 %.sroa.029.0.i.i.i.i, 256
  %..i.i.i.i = select i1 %i.jm, i64 2, i64 1
  %i.jn = call i64 @llvm.usub.sat.i64(i64 %i.jl, i64 %..i.i.i.i) ; 2 uses
  %i.jo = icmp samesign ult i64 %i.jn, 2147483648
  br i1 %i.jo, label %bb.bf, label %.invoke.i.i.i.i, !prof !103

bb.bf:                                            ; preds = %bb.be
  %i.jp = trunc nuw nsw i64 %i.jn to i32
  %i.jq = add i32 %.sroa.0.1163.i.i.i.i, %i.jp    ; 2 uses
  br i1 %i.fe, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count2_inc.exit85.i.i.i.i, %bb.bj, %bb.bf
  %i.jr = add i64 %.sroa.03.0165.i.i.i.i, %i.jl   ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.gf
  br i1 %i.js, label %bb.at, label %._crit_edge.loopexit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.jt = zext nneg i16 %.sroa.029.0.i.i.i.i to i64 ; 3 uses
  %i.ju = icmp ugt i64 %.val73.i.i.i.i, %i.hf
  br i1 %i.ju, label %bb.bi, label %.invoke391.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %.val72.i.i.i.i, i64 %i.hf ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !4368, !noundef !100 ; 2 uses
  %i.jy = icmp ugt i64 %i.jx, %i.jt
  br i1 %i.jy, label %bb.bj, label %.invoke391.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !4368, !nonnull !100, !noundef !100
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.jt ; 2 uses
  %i.kc = load i16, ptr %i.kb, align 2, !noalias !4368, !noundef !100
  %i.kd = call i16 @llvm.uadd.sat.i16(i16 %i.kc, i16 1)
  store i16 %i.kd, ptr %i.kb, align 2, !noalias !4368
  %i.ke = icmp ugt i32 %.sroa.034.0.i.i.i.i, 1
  br i1 %i.ke, label %bb.bk, label %bb.bg

bb.bk:                                            ; preds = %bb.bj
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.03.0165.i.i.i.i
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !4368, !noundef !100
  %i.kh = zext i8 %i.kg to i64                    ; 3 uses
  %i.ki = load i64, ptr %i.jw, align 8, !noalias !4368, !noundef !100 ; 2 uses
  %i.kj = icmp ugt i64 %i.ki, %i.kh
  br i1 %i.kj, label %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count2_inc.exit85.i.i.i.i, label %.invoke391.i.i.i.i

_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count2_inc.exit85.i.i.i.i: ; preds = %bb.bk
  %i.kk = load ptr, ptr %i.jz, align 8, !noalias !4368, !nonnull !100, !noundef !100
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.kh ; 2 uses
  %i.km = load i16, ptr %i.kl, align 2, !noalias !4368, !noundef !100
  %i.kn = call i16 @llvm.uadd.sat.i16(i16 %i.km, i16 1)
  store i16 %i.kn, ptr %i.kl, align 2, !noalias !4368
  br label %bb.bg

bb.bl:                                            ; preds = %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ko = shl nuw i64 %.val.i.i.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i.i.i, i64 noundef %i.ko, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !4381
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %bb.bl, %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.kp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4382)
  %i.kq = icmp eq i64 %.val73.i.i.i.i, 0
  br i1 %i.kq, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.ks, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %.val72.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.ks = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.kr, align 8, !alias.scope !4382, !noalias !4383 ; 2 uses
  %i.kt = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.kt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ku = getelementptr i8, ptr %i.kr, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.ku, align 8, !alias.scope !4382, !noalias !4383, !nonnull !100, !noundef !100
  %i.kv = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.kv, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !4384
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %.lr.ph.i.i.i.i.i.i.i.i
  %i.kw = icmp eq i64 %i.ks, %.val73.i.i.i.i
  br i1 %i.kw, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.kp, align 8, !noalias !4372 ; 2 uses
  %i.kx = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.kx, label %.body.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %i.ky = mul nuw i64 %.val2.i.i.i.i.i.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72.i.i.i.i, i64 noundef %i.ky, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !4383
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings8physical4fsstNtB2_14FsstCompressed13fsst_compress:bb.a
.preheader.i.i.i.i:                               ; preds = %.lr.ph.i57.i.i.i, %.lr.ph.i57.i.i.i.prol.loopexit
  %i.is = getelementptr inbounds nuw i8, ptr %i.q, i64 156162 ; 3 uses
  br label %bb.cm

.lr.ph.i57.i.i.i:                                 ; preds = %.lr.ph.i57.i.i.i.prol.loopexit, %.lr.ph.i57.i.i.i
  %.sroa.03.0338.i.i.i.i = phi ptr [ %i.jn, %.lr.ph.i57.i.i.i ], [ %.sroa.03.0338.i.i.i.i.unr, %.lr.ph.i57.i.i.i.prol.loopexit ] ; 5 uses
  %i.it = load i8, ptr %.sroa.03.0338.i.i.i.i, align 1, !noalias !34003, !noundef !100
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.03.0338.i.i.i.i, i64 1
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.iu ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !noalias !34003, !noundef !100
  %i.iy = add i64 %i.ix, 1
  store i64 %i.iy, ptr %i.iw, align 8, !noalias !34003
  %i.iz = load i8, ptr %i.iv, align 1, !noalias !34003, !noundef !100
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.03.0338.i.i.i.i, i64 2
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ja ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !noalias !34003, !noundef !100
  %i.je = add i64 %i.jd, 1
  store i64 %i.je, ptr %i.jc, align 8, !noalias !34003
  %i.jf = load i8, ptr %i.jb, align 1, !noalias !34003, !noundef !100
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.03.0338.i.i.i.i, i64 3
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jg ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !34003, !noundef !100
  %i.jk = add i64 %i.jj, 1
  store i64 %i.jk, ptr %i.ji, align 8, !noalias !34003
  %i.jl = load i8, ptr %i.jh, align 1, !noalias !34003, !noundef !100
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.03.0338.i.i.i.i, i64 4 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jm ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !34003, !noundef !100
  %i.jq = add i64 %i.jp, 1
  store i64 %i.jq, ptr %i.jo, align 8, !noalias !34003
  %i.jr = icmp eq ptr %i.jn, %i.ih
  br i1 %i.jr, label %.preheader.i.i.i.i, label %.lr.ph.i57.i.i.i

bb.cm:                                            ; preds = %bb.fv, %.preheader.i.i.i.i
  %.sroa.06.0341.i.i.i.i = phi i64 [ 32768, %.preheader.i.i.i.i ], [ %.sroa.06.1.i.i.i.i.1, %bb.fv ] ; 2 uses
  %.sroa.0113.0.idx340.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.0113.0.add.i.i.i.i.1, %bb.fv ] ; 3 uses
  %.sroa.7.0339.i.i.i.i = phi i16 [ 0, %.preheader.i.i.i.i ], [ %i.yp, %bb.fv ] ; 3 uses
  %.sroa.0113.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0113.0.idx340.i.i.i.i
  %i.js = or disjoint i16 %.sroa.7.0339.i.i.i.i, 1
  %i.jt = load i64, ptr %.sroa.0113.0.ptr.i.i.i.i, align 8, !noalias !34003, !noundef !100 ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %.sroa.06.0341.i.i.i.i
  br i1 %i.ju, label %bb.fs, label %bb.ft

bb.cn:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !34003
  %.sroa.450.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 6, ptr %.sroa.450.0..sroa_idx.i.i.i.i, align 8, !noalias !34003
  %.sroa.551.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 8, ptr %.sroa.551.0..sroa_idx.i.i.i.i, align 8, !noalias !34003
  %.sroa.652.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 38, ptr %.sroa.652.0..sroa_idx.i.i.i.i, align 8, !noalias !34003
  %.sroa.753.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 68, ptr %.sroa.753.0..sroa_idx.i.i.i.i, align 8, !noalias !34003
  %.sroa.854.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 98, ptr %.sroa.854.0..sroa_idx.i.i.i.i, align 8, !noalias !34003
  %.sroa.955.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 108, ptr %.sroa.955.0..sroa_idx.i.i.i.i, align 8, !noalias !34003
  %.sroa.1056.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i64 128, ptr %.sroa.1056.0..sroa_idx.i.i.i.i, align 8, !noalias !34003
  %i.jv = getelementptr inbounds nuw i8, ptr %i.q, i64 147456 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.q, i64 131072
  %i.jz = getelementptr inbounds nuw i8, ptr %i.q, i64 155648
  %i.ka = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.kb = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.kc = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.516.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.kf = getelementptr inbounds nuw i8, ptr %i.q, i64 156160 ; 2 uses
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %.sroa.521.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ki = icmp ult i64 %i.ie, 1152921504606846976
  %exitcond.not.i.i.i.i.i11981202 = icmp ugt i64 %i.hu, -3
  br label %bb.co

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i, %bb.ec, %bb.ea, %bb.dy, %bb.ck, %_RINvNtCs1BCiKJoB9mN_4fsst4fsst11make_samplexECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.co:                                            ; preds = %bb.fr, %bb.cn
  %i.kj = phi i64 [ 0, %bb.cn ], [ %i.kk, %bb.fr ] ; 2 uses
  %.sroa.0.0119342.i.i.i.i = phi i64 [ -32768, %bb.cn ], [ %.sroa.0.1.i.i.i.i, %bb.fr ] ; 2 uses
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 3 uses
  store i64 %i.kk, ptr %i.n, align 8, !alias.scope !34005, !noalias !34003
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.551.0..sroa_idx.i.i.i.i, i64 %i.kj
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !34005, !noalias !34003, !noundef !100 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34006)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34003
  invoke void @_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34003

.noexc.i.i.i.i:                                   ; preds = %bb.co
  call void @llvm.assume(i1 %i.ki)
  %.val64.i.i.i.i.i = load ptr, ptr %i.jw, align 8, !noalias !34007 ; 6 uses
  %.val65.i.i.i.i.i = load i64, ptr %i.jx, align 8, !noalias !34007 ; 6 uses
  %i.kn = icmp ult i64 %i.km, 128
  %.val71.i.i.i.i.i = load i64, ptr %i.ka, align 8, !noalias !34007 ; 6 uses
  %.val70.i.i.i.i.i = load ptr, ptr %i.kb, align 8, !noalias !34007, !nonnull !100 ; 5 uses
  br i1 %exitcond.not.i.i.i.i.i11981202, label %.outer.i.i.i.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc.i.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i
  %umax231.i.i.i.i.i1205 = phi i64 [ %umax231.i.i.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i ], [ %i.ie, %.noexc.i.i.i.i ]
  %.sroa.042.0.ph.i.i.i.i.i1204 = phi i64 [ %i.lh, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i ], [ 1, %.noexc.i.i.i.i ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i1203 = phi i64 [ %.sroa.0.1.lcssa.i.i.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i ] ; 2 uses
  br label %bb.cv

bb.cp:                                            ; preds = %bb.cy
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.lh, %umax231.i.i.i.i.i1205
  br i1 %exitcond.not.i.i.i.i.i, label %.outer.i.i.i.i.i._crit_edge, label %bb.cv

.outer.i.i.i.i.i._crit_edge:                      ; preds = %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i, %bb.cp, %.noexc.i.i.i.i
  %.sroa.0.0.ph.i.i.i.i.i.lcssa = phi i64 [ %.sroa.0.0.ph.i.i.i.i.i1203, %bb.cp ], [ 0, %.noexc.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i ] ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !34008
  %i.ko = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !34008 ; 8 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.cq, label %bb.ej, !prof !102

bb.cq:                                            ; preds = %.outer.i.i.i.i.i._crit_edge
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #66
          to label %.noexc.i.i.i.i.i unwind label %bb.cr, !noalias !34003

.noexc.i.i.i.i.i:                                 ; preds = %bb.cq
  unreachable

bb.cr:                                            ; preds = %bb.cq
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34009)
  %.val.i109.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !34009, !noalias !34003 ; 2 uses
  %i.kr = icmp eq i64 %.val.i109.i.i.i.i, 0
  br i1 %i.kr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ks = shl nuw i64 %.val.i109.i.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64.i.i.i.i.i, i64 noundef %i.ks, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !34010
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i: ; preds = %bb.cs, %bb.cr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !34011)
  call void @llvm.experimental.noalias.scope.decl(metadata !34012)
  %i.ku = icmp eq i64 %.val71.i.i.i.i.i, 0
  br i1 %i.ku, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i112.i.i.i.i

.lr.ph.i.i.i.i112.i.i.i.i:                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i = phi i64 [ %i.kw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [24 x i8], ptr %.val70.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i ; 2 uses
  %i.kw = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.kv, align 8, !alias.scope !34012, !noalias !34013 ; 2 uses
  %i.kx = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, 0
  br i1 %i.kx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i112.i.i.i.i
  %i.ky = getelementptr i8, ptr %i.kv, i64 8
  %.val9.i.i.i.i.i.i.i.i = load ptr, ptr %i.ky, align 8, !alias.scope !34012, !noalias !34013, !nonnull !100, !noundef !100
  %i.kz = shl nuw i64 %.val8.i.i.i.i.i.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i, i64 noundef %i.kz, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !34014
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %.lr.ph.i.i.i.i112.i.i.i.i
  %i.la = icmp eq i64 %i.kw, %.val71.i.i.i.i.i
  br i1 %i.la, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i112.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.kt, align 8, !alias.scope !34015, !noalias !34003 ; 2 uses
  %i.lb = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.lb, label %.body.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %i.lc = mul nuw i64 %.val2.i.i.i.i.i.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70.i.i.i.i.i, i64 noundef %i.lc, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !34013
  br label %.body.i.i.i.i

bb.cv:                                            ; preds = %.lr.ph, %bb.cp
  %.sroa.042.0.i.i.i.i.i1199 = phi i64 [ %.sroa.042.0.ph.i.i.i.i.i1204, %.lr.ph ], [ %i.lh, %bb.cp ] ; 3 uses
  %i.ld = add nsw i64 %.sroa.042.0.i.i.i.i.i1199, -1 ; 2 uses
  %i.le = icmp ult i64 %i.ld, %i.ie
  br i1 %i.le, label %bb.cy, label %bb.cx

.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.di, %bb.dc, %.invoke.i.i.i.i.i, %bb.db
  %lpad.loopexit.split-lp1254 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !34007 ; 2 uses
  %i.lf = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.lf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, label %bb.dv

bb.cw:                                            ; preds = %bb.db
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.lg = add i64 %.sroa.042.0.ph.i.i.i.i.i1204, -1
  %umax.le.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ie, i64 %i.lg)
  br label %.invoke.i.i.i.i.i

bb.cy:                                            ; preds = %bb.cv
  %i.lh = add nuw nsw i64 %.sroa.042.0.i.i.i.i.i1199, 1 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.24.copyload.i.i.i) ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.24.copyload.i.i.i, i64 %.sroa.042.0.i.i.i.i.i1199
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.24.copyload.i.i.i, i64 %i.ld
  %.val72.i.i.i.i.i = load i64, ptr %i.li, align 8, !noalias !34003, !noundef !100 ; 5 uses
  %.val73.i.i.i.i.i = load i64, ptr %i.lj, align 8, !noalias !34003, !noundef !100 ; 5 uses
  %i.lk = icmp eq i64 %.val72.i.i.i.i.i, %.val73.i.i.i.i.i
  br i1 %i.lk, label %bb.cp, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ll = icmp ult i64 %.val72.i.i.i.i.i, %.val73.i.i.i.i.i
  br i1 %i.ll, label %bb.db, label %bb.da, !prof !106

bb.da:                                            ; preds = %bb.cz
  %i.lm = sub nuw i64 %.val72.i.i.i.i.i, %.val73.i.i.i.i.i ; 6 uses
  %.not.i78.i.i.i.i = icmp ugt i64 %.val72.i.i.i.i.i, %i.hs
  br i1 %.not.i78.i.i.i.i, label %bb.db, label %bb.dc, !prof !106

bb.db:                                            ; preds = %bb.da, %bb.cz
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %.val73.i.i.i.i.i, i64 noundef %.val72.i.i.i.i.i, i64 noundef %i.hs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #66
          to label %bb.cw unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34003

bb.dc:                                            ; preds = %bb.da
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload.i.i.i, i64 %.val73.i.i.i.i.i ; 5 uses
  %i.lo = invoke noundef i16 @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable35find_longest_symbol_from_char_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(156176) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ln, i64 noundef %i.lm)
          to label %bb.dd unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34003 ; 4 uses

bb.dd:                                            ; preds = %bb.dc
  %i.lp = zext i16 %i.lo to i64                   ; 3 uses
  %i.lq = icmp ult i16 %i.lo, 512
  br i1 %i.lq, label %.split.i.i.i.i.i, label %.invoke.i.i.i.i.i

.invoke.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %bb.dd, %bb.du, %bb.ds, %bb.dr, %bb.dk, %bb.dh, %bb.de, %bb.cx
  %i.lr = phi i64 [ %i.ov, %bb.ds ], [ %umax.le.i.i.i.i.i, %bb.cx ], [ %i.pj, %bb.du ], [ %i.mj, %bb.dr ], [ %i.nu, %bb.dk ], [ %i.mj, %bb.de ], [ %i.mw, %bb.dh ], [ %.pre-phi.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.lp, %bb.dd ]
  %i.ls = phi i64 [ %i.oz, %bb.ds ], [ %i.ie, %bb.cx ], [ %i.pk, %bb.du ], [ %.val71.i.i.i.i.i, %bb.dr ], [ 512, %bb.dk ], [ %.val65.i.i.i.i.i, %bb.de ], [ %.val65.i.i.i.i.i, %bb.dh ], [ %.val65.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ 512, %bb.dd ]
  %i.lt = phi ptr [ @1946, %bb.ds ], [ @516, %bb.cx ], [ @1946, %bb.du ], [ @1945, %bb.dr ], [ @519, %bb.dk ], [ @1944, %bb.de ], [ @1944, %bb.dh ], [ @1944, %._crit_edge.i.i.i.i.i ], [ @517, %bb.dd ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.lr, i64 noundef %i.ls, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lt) #66
          to label %.cont.i.i.i.i.i unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34003

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

.split.i.i.i.i.i:                                 ; preds = %bb.dd
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.lp
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !34006, !noalias !34003, !noundef !100
  %i.lx = lshr i64 %i.lw, 28
  %i.ly = and i64 %i.lx, 4294967295               ; 3 uses
  %i.lz = icmp samesign ult i16 %i.lo, 256
  %.sroa.020.0.i.i.i.i.i = select i1 %i.lz, i64 2, i64 1
  %i.ma = call i64 @llvm.usub.sat.i64(i64 %i.ly, i64 %.sroa.020.0.i.i.i.i.i)
  %i.mb = add i64 %i.ma, %.sroa.0.0.ph.i.i.i.i.i1203 ; 2 uses
  %i.mc = icmp ult i64 %i.ly, %i.lm
  br i1 %i.mc, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.split.i.i.i.i.i
  %i.md = icmp ugt i64 %i.lm, 7
  %i.me = add i64 %i.lm, -7
  br label %bb.de

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.dq
  %.pre.i.i.i.i.i = zext nneg i16 %.sroa.029.0.i.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.split.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.lp, %.split.i.i.i.i.i ] ; 3 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i64 [ %i.os, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.mb, %.split.i.i.i.i.i ] ; 2 uses
  %i.mf = icmp ugt i64 %.val65.i.i.i.i.i, %.pre-phi.i.i.i.i.i
  br i1 %i.mf, label %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i, label %.invoke.i.i.i.i.i

_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %.val64.i.i.i.i.i, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  %i.mh = load i16, ptr %i.mg, align 2, !noalias !34003, !noundef !100
  %i.mi = call i16 @llvm.uadd.sat.i16(i16 %i.mh, i16 1)
  store i16 %i.mi, ptr %i.mg, align 2, !noalias !34003
  %umax231.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lh, i64 %i.ie)
  %exitcond.not.i.i.i.i.i1198.not = icmp ult i64 %i.lh, %i.ie
  br i1 %exitcond.not.i.i.i.i.i1198.not, label %.lr.ph, label %.outer.i.i.i.i.i._crit_edge

bb.de:                                            ; preds = %bb.dq, %.lr.ph.i.i.i.i.i
  %.sroa.03.0146.i.i.i.i.i = phi i64 [ %i.ly, %.lr.ph.i.i.i.i.i ], [ %i.ot, %bb.dq ] ; 7 uses
  %.sroa.012.0145.i.i.i.i.i = phi i16 [ %i.lo, %.lr.ph.i.i.i.i.i ], [ %.sroa.029.0.i.i.i.i.i, %bb.dq ]
  %.sroa.0.1144.i.i.i.i.i = phi i64 [ %i.mb, %.lr.ph.i.i.i.i.i ], [ %i.os, %bb.dq ]
  %i.mj = zext nneg i16 %.sroa.012.0145.i.i.i.i.i to i64 ; 7 uses
  %i.mk = icmp ugt i64 %.val65.i.i.i.i.i, %i.mj
  br i1 %i.mk, label %bb.df, label %.invoke.i.i.i.i.i

bb.df:                                            ; preds = %bb.de
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val64.i.i.i.i.i) ]
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %.val64.i.i.i.i.i, i64 %i.mj ; 2 uses
  %i.mm = load i16, ptr %i.ml, align 2, !noalias !34003, !noundef !100
  %i.mn = call i16 @llvm.uadd.sat.i16(i16 %i.mm, i16 1)
  store i16 %i.mn, ptr %i.ml, align 2, !noalias !34003
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.mj
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !34006, !noalias !34003, !noundef !100
  %i.mr = and i64 %i.mq, 1152921504338411520
  %i.ms = icmp eq i64 %i.mr, 268435456
  br i1 %i.ms, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit78.i.i.i.i.i, %bb.df
  %i.mt = icmp ult i64 %.sroa.03.0146.i.i.i.i.i, %i.me
  %or.cond.i.i.i.i.i = and i1 %i.md, %i.mt
  br i1 %or.cond.i.i.i.i.i, label %bb.dj, label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.sroa.03.0146.i.i.i.i.i
  %i.mv = load i8, ptr %i.mu, align 1, !noalias !34003, !noundef !100
  %i.mw = zext i8 %i.mv to i64                    ; 3 uses
  %i.mx = icmp ugt i64 %.val65.i.i.i.i.i, %i.mw
  br i1 %i.mx, label %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit78.i.i.i.i.i, label %.invoke.i.i.i.i.i

_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count1_inc.exit78.i.i.i.i.i: ; preds = %bb.dh
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %.val64.i.i.i.i.i, i64 %i.mw ; 2 uses
  %i.mz = load i16, ptr %i.my, align 2, !noalias !34003, !noundef !100
  %i.na = call i16 @llvm.uadd.sat.i16(i16 %i.mz, i16 1)
  store i16 %i.na, ptr %i.my, align 2, !noalias !34003
  br label %bb.dg

bb.di:                                            ; preds = %bb.dg
  %i.nb = sub nuw i64 %i.lm, %.sroa.03.0146.i.i.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.sroa.03.0146.i.i.i.i.i
  %i.nd = invoke noundef i16 @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable35find_longest_symbol_from_char_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(156176) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.nc, i64 noundef %i.nb)
          to label %bb.dk unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !34003 ; 3 uses

bb.dj:                                            ; preds = %bb.dg
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.sroa.03.0146.i.i.i.i.i
  %.sroa.044.0.copyload.i.i.i.i.i = load i64, ptr %i.ne, align 1, !noalias !34003 ; 3 uses
  %i.nf = and i64 %.sroa.044.0.copyload.i.i.i.i.i, 16777215
  %i.ng = mul nuw nsw i64 %i.nf, 2971215073       ; 2 uses
  %i.nh = lshr i64 %i.ng, 15
  %i.ni = xor i64 %i.nh, %i.ng
  %i.nj = and i64 %i.ni, 1023
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.nj ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !alias.scope !34006, !noalias !34003, !noundef !100 ; 4 uses
  %i.nn = load i64, ptr %i.nk, align 8, !alias.scope !34006, !noalias !34003, !noundef !100
  %i.no = and i64 %i.nm, 63
  %i.np = lshr i64 -1, %i.no
  %i.nq = and i64 %i.np, %.sroa.044.0.copyload.i.i.i.i.i ; 2 uses
  %i.nr = icmp ult i64 %i.nm, 4294967296
  %i.ns = icmp eq i64 %i.nn, %i.nq
  %i.nt = and i1 %i.nr, %i.ns
  br i1 %i.nt, label %bb.dn, label %bb.dm

bb.dk:                                            ; preds = %bb.di
  %i.nu = zext i16 %i.nd to i64                   ; 2 uses
  %i.nv = icmp ult i16 %i.nd, 512
  br i1 %i.nv, label %bb.dl, label %.invoke.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.nu
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load i64, ptr %i.nx, align 8, !alias.scope !34006, !noalias !34003, !noundef !100
  %i.nz = lshr i64 %i.ny, 28
  %i.oa = trunc i64 %i.nz to i32
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dj
  %i.ob = and i64 %.sroa.044.0.copyload.i.i.i.i.i, 65535
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 2, !alias.scope !34006, !noalias !34003, !noundef !100
  %i.oe = and i16 %i.od, 511                      ; 2 uses
  %i.of = icmp samesign ugt i16 %i.oe, 255
  br i1 %i.of, label %bb.dp, label %bb.do

bb.dn:                                            ; preds = %bb.dj
  %i.og = lshr i64 %i.nm, 16
  %i.oh = trunc nuw i64 %i.og to i16
  %i.oi = and i16 %i.oh, 511
  %i.oj = lshr i64 %i.nm, 28
  %i.ok = trunc nuw nsw i64 %i.oj to i32
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.ol = and i64 %i.nq, 255
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !alias.scope !34006, !noalias !34003, !noundef !100
  %i.oo = and i16 %i.on, 511
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dl
  %.sroa.034.0.i.i.i.i.i = phi i32 [ %i.ok, %bb.dn ], [ %i.oa, %bb.dl ], [ 1, %bb.do ], [ 2, %bb.dm ] ; 2 uses
  %.sroa.029.0.i.i.i.i.i = phi i16 [ %i.oi, %bb.dn ], [ %i.nd, %bb.dl ], [ %i.oo, %bb.do ], [ %i.oe, %bb.dm ] ; 4 uses
  %i.op = zext i32 %.sroa.034.0.i.i.i.i.i to i64  ; 2 uses
  %i.oq = icmp samesign ult i16 %.sroa.029.0.i.i.i.i.i, 256
  %..i.i.i.i.i = select i1 %i.oq, i64 2, i64 1
  %i.or = call i64 @llvm.usub.sat.i64(i64 %i.op, i64 %..i.i.i.i.i)
  %i.os = add i64 %i.or, %.sroa.0.1144.i.i.i.i.i  ; 2 uses
  br i1 %i.kn, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count2_inc.exit83.i.i.i.i.i, %bb.dt, %bb.dp
  %i.ot = add i64 %.sroa.03.0146.i.i.i.i.i, %i.op ; 2 uses
  %i.ou = icmp ult i64 %i.ot, %i.lm
  br i1 %i.ou, label %bb.de, label %._crit_edge.loopexit.i.i.i.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.ov = zext nneg i16 %.sroa.029.0.i.i.i.i.i to i64 ; 3 uses
  %i.ow = icmp ugt i64 %.val71.i.i.i.i.i, %i.mj
  br i1 %i.ow, label %bb.ds, label %.invoke.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %.val70.i.i.i.i.i, i64 %i.mj ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !noalias !34003, !noundef !100 ; 2 uses
  %i.pa = icmp ugt i64 %i.oz, %i.ov
  br i1 %i.pa, label %bb.dt, label %.invoke.i.i.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !noalias !34003, !nonnull !100, !noundef !100
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.pc, i64 %i.ov ; 2 uses
  %i.pe = load i16, ptr %i.pd, align 2, !noalias !34003, !noundef !100
  %i.pf = call i16 @llvm.uadd.sat.i16(i16 %i.pe, i16 1)
  store i16 %i.pf, ptr %i.pd, align 2, !noalias !34003
  %i.pg = icmp ugt i32 %.sroa.034.0.i.i.i.i.i, 1
  br i1 %i.pg, label %bb.du, label %bb.dq

bb.du:                                            ; preds = %bb.dt
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.sroa.03.0146.i.i.i.i.i
  %i.pi = load i8, ptr %i.ph, align 1, !noalias !34003, !noundef !100
  %i.pj = zext i8 %i.pi to i64                    ; 3 uses
  %i.pk = load i64, ptr %i.oy, align 8, !noalias !34003, !noundef !100 ; 2 uses
  %i.pl = icmp ugt i64 %i.pk, %i.pj
  br i1 %i.pl, label %_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count2_inc.exit83.i.i.i.i.i, label %.invoke.i.i.i.i.i

_RNvMs9_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_8Counters10count2_inc.exit83.i.i.i.i.i: ; preds = %bb.du
  %i.pm = load ptr, ptr %i.pb, align 8, !noalias !34003, !nonnull !100, !noundef !100
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.pm, i64 %i.pj ; 2 uses
  %i.po = load i16, ptr %i.pn, align 2, !noalias !34003, !noundef !100
  %i.pp = call i16 @llvm.uadd.sat.i16(i16 %i.po, i16 1)
  store i16 %i.pp, ptr %i.pn, align 2, !noalias !34003
  br label %bb.dq

bb.dv:                                            ; preds = %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pq = shl nuw i64 %.val.i.i.i.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val64.i.i.i.i.i, i64 noundef %i.pq, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !34016
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i: ; preds = %bb.dv, %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !34017)
  %i.ps = icmp eq i64 %.val71.i.i.i.i.i, 0
  br i1 %i.ps, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [24 x i8], ptr %.val70.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.pu = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pt, align 8, !alias.scope !34017, !noalias !34018 ; 2 uses
  %i.pv = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.pv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.pw = getelementptr i8, ptr %i.pt, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pw, align 8, !alias.scope !34017, !noalias !34018, !nonnull !100, !noundef !100
  %i.px = shl nuw i64 %.val8.i.i.i.i.i.i.i.i.i, 1
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %i.px, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !34019
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.dw, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.py = icmp eq i64 %i.pu, %.val71.i.i.i.i.i
  br i1 %i.py, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.pr, align 8, !noalias !34007 ; 2 uses
  %i.pz = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.pz, label %.body.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_tEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjjpCCFGI3ul_14lance_encoding.exit.i.i.i.i.i.i.i
  %i.qa = mul nuw i64 %.val2.i.i.i.i.i.i.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70.i.i.i.i.i, i64 noundef %i.qa, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !34018
  br label %.body.i.i.i.i

bb.dy:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !34003
  invoke void @_RNvMs8_NtCs1BCiKJoB9mN_4fsst4fsstNtB5_11SymbolTable8finalize(ptr noalias noundef nonnull align 8 dereferenceable(156176) %i.p)
end_hunk_1
begin_hunk_2_@_RNvXs3_NtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpackNtB5_20BitpackedPageDecoderNtNtBb_7decoder20PrimitivePageDecoder6decode:bb.a
  %i.ai = and i64 %i.m, 7
  %.not94 = icmp ne i64 %i.ai, 0                  ; 2 uses
  %.neg294 = sext i1 %.not94 to i64               ; 2 uses
  %spec.store.select = zext i1 %.not94 to i64     ; 2 uses
  %.sroa.044.0.neg = sub nsw i64 %i.e, %i.ah
  %i.aj = add nsw i64 %.sroa.044.0.neg, %.neg294
  %i.ak = add nsw i64 %i.aj, %spec.store.select   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f ; 2 uses
  br i1 %i.ad, label %.lr.ph.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.lr.ph
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub nuw i64 %i.am, %.sroa.10.0.i
  %i.ao = add i64 %i.ak, -2                       ; 4 uses
  %i.ap = add nsw i64 %i.f, -3
  %i.aq = add nsw i64 %i.e, %.neg294
  %i.ar = add nsw i64 %i.aq, %spec.store.select
  %i.as = add i64 %i.ar, -3
  %i.at = sub i64 %i.as, %i.ah
  %i.au = icmp eq i64 %i.ao, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.sroa.0.0.ph291 = phi i64 [ %.sroa.0.0194, %.outer ], [ %2, %.lr.ph.preheader ]
  %.sroa.012.0.ph290 = phi i64 [ %.sroa.012.2, %.outer ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.014.0.ph289 = phi i64 [ %.sroa.014.2, %.outer ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.058.0.ph288 = phi i64 [ %i.bb, %.outer ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.058.0.ph288, i64 %i.w) ; 2 uses
  %umax342 = tail call i64 @llvm.umax.i64(i64 %.sroa.058.0.ph288, i64 %i.y) ; 2 uses
  br label %bb.j

.lr.ph.split.us:                                  ; preds = %.lr.ph.lr.ph
  %.not295 = icmp eq i64 %i.w, 0
  br i1 %.not295, label %.split197.us.invoke, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %.not296 = icmp eq i64 %i.y, 0
  br i1 %.not296, label %.split197.us.invoke, label %.split201.us

.split201.us:                                     ; preds = %bb.f
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2477) #66
          to label %.noexc99 unwind label %bb.k

.outer._crit_edge:                                ; preds = %.outer, %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit, %_RINvXs1_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74338
  store i64 1, ptr %i.a, align 8, !noalias !74338
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.av, align 8, !noalias !74338
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.aw, align 8, !noalias !74338
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !74338
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !74338
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !74338
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.f, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !74338
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !74339
  %i.ax = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !74339 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.g, label %bb.l, !prof !102

bb.g:                                             ; preds = %.outer._crit_edge
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #66
          to label %.noexc.i unwind label %bb.h, !noalias !74338

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #67
          to label %.thread unwind label %bb.i, !noalias !74338

bb.i:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !74338
  unreachable

bb.j:                                             ; preds = %.lr.ph, %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit
  %.sroa.0.0194 = phi i64 [ %.sroa.0.0.ph291, %.lr.ph ], [ %i.cj, %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit ] ; 4 uses
  %.sroa.058.0193 = phi i64 [ %.sroa.058.0.ph288, %.lr.ph ], [ %i.bb, %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit ] ; 6 uses
  %i.bb = add nuw nsw i64 %.sroa.058.0193, 1      ; 4 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.058.0193 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noundef !100 ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.058.0193, %umax
  br i1 %exitcond.not, label %.split197.us.invoke, label %bb.q

.thread368:                                       ; preds = %.invoke
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.k:                                             ; preds = %.split197.us.invoke, %.split201.us
  %lpad.thr_comm.split-lp367 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %.thread, label %bb.ak

bb.l:                                             ; preds = %.outer._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !74338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74338
  store ptr %i.ax, ptr %i.b, align 8, !alias.scope !74337
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !74337
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !74337
  %i.bf = invoke noundef nonnull ptr @_RNvMs0_NtCsjjpCCFGI3ul_14lance_encoding4dataNtB5_9BlockInfo3new()
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !74340
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread unwind label %bb.p

bb.o:                                             ; preds = %bb.l
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.452.sroa.4.0..sroa.452.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %.sroa.452.sroa.4.0..sroa.452.0..sroa_idx.sroa_idx, align 8
  %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.d, ptr %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx, align 8
  %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %3, ptr %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx, align 8
  ret void

bb.p:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.q:                                             ; preds = %bb.j
  %exitcond343.not = icmp eq i64 %.sroa.058.0193, %umax342
  br i1 %exitcond343.not, label %.split197.us.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.058.0193
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !100
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.sroa.058.0193 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = zext i8 %i.bl to i64                    ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 1
  %i.bq = load i8, ptr %i.bm, align 1, !range !114, !noundef !100
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = shl i64 %i.be, 3
  %i.bt = sub i8 8, %i.bp
  %narrow = select i1 %i.br, i8 %i.bt, i8 0
  %i.bu = zext i8 %narrow to i64
  %i.bv = add nuw nsw i64 %i.bo, %i.bu
  %.sroa.02.0.i = sub i64 %i.bs, %i.bv
  %i.bw = udiv i64 %.sroa.02.0.i, %i.m            ; 2 uses
  %.not.i = icmp ult i64 %.sroa.0.0194, %i.bw
  br i1 %.not.i, label %bb.s, label %_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit

.noexc99:                                         ; preds = %.split201.us
  unreachable

.split197.us.invoke:                              ; preds = %bb.q, %bb.j, %bb.t, %bb.v, %bb.f, %.lr.ph.split.us
  %i.bx = phi i64 [ 0, %bb.f ], [ %.sroa.060.0, %bb.t ], [ %.sroa.014.3272, %bb.v ], [ 0, %.lr.ph.split.us ], [ %umax342, %bb.q ], [ %umax, %bb.j ]
  %i.by = phi i64 [ %i.y, %bb.f ], [ %i.cm, %bb.t ], [ %i.f, %bb.v ], [ %i.w, %.lr.ph.split.us ], [ %i.y, %bb.q ], [ %i.w, %bb.j ]
  %i.bz = phi ptr [ @3452, %bb.f ], [ @3453, %bb.t ], [ @3454, %bb.v ], [ @3451, %.lr.ph.split.us ], [ @3452, %bb.q ], [ @3451, %bb.j ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #66
          to label %.split197.us.cont unwind label %bb.k

.split197.us.cont:                                ; preds = %.split197.us.invoke
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.cc = mul i64 %.sroa.0.0194, %i.m
  %i.cd = add i64 %i.cc, %i.bo                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 3                       ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.be
  %i.cg = icmp ult i64 %.sroa.012.0.ph290, %3
  %or.cond276 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond276, label %.lr.ph282, label %.outer

.lr.ph282:                                        ; preds = %bb.s
  %i.ch = and i64 %i.cd, 7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br label %bb.t

_RNvNtNtNtCsjjpCCFGI3ul_14lance_encoding14array_encoding8physical7bitpack20compute_start_offset.exit: ; preds = %bb.r
  %i.cj = sub nuw i64 %.sroa.0.0194, %i.bw
  %i.ck = icmp ult i64 %i.bb, %i.r
  br i1 %i.ck, label %bb.j, label %.outer._crit_edge

.outer:                                           ; preds = %bb.aj, %bb.ai, %bb.s
  %.sroa.014.2 = phi i64 [ %.sroa.014.0.ph289, %bb.s ], [ %.sroa.014.6, %bb.ai ], [ %.sroa.014.6, %bb.aj ]
  %.sroa.012.2 = phi i64 [ %.sroa.012.0.ph290, %bb.s ], [ %i.cn, %bb.ai ], [ %i.cn, %bb.aj ]
  %i.cl = icmp ult i64 %i.bb, %i.r
  br i1 %i.cl, label %.lr.ph, label %.outer._crit_edge

bb.t:                                             ; preds = %.lr.ph282, %bb.aj
  %i.cm = phi i64 [ %i.be, %.lr.ph282 ], [ %.pre, %bb.aj ] ; 2 uses
  %.sroa.012.1280 = phi i64 [ %.sroa.012.0.ph290, %.lr.ph282 ], [ %i.cn, %bb.aj ]
  %.sroa.014.1279 = phi i64 [ %.sroa.014.0.ph289, %.lr.ph282 ], [ %.sroa.014.6, %bb.aj ]
  %.sroa.021.0278 = phi i64 [ %i.ch, %.lr.ph282 ], [ %.sroa.021.2, %bb.aj ] ; 3 uses
  %.sroa.065.0277 = phi i64 [ %i.ce, %.lr.ph282 ], [ %.sroa.065.2, %bb.aj ] ; 3 uses
  %i.cn = add nuw i64 %.sroa.012.1280, 1          ; 4 uses
  %i.co = add i64 %.sroa.021.0278, %i.m           ; 2 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = add i64 %i.cp, %.sroa.065.0277
  %i.cr = and i64 %i.co, 7                        ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0                    ; 2 uses
  %i.ct = sext i1 %i.cs to i64
  %.sroa.060.0 = add i64 %i.cq, %i.ct             ; 3 uses
  %i.cu = icmp ult i64 %.sroa.060.0, %i.cm
  br i1 %i.cu, label %bb.u, label %.split197.us.invoke

bb.u:                                             ; preds = %bb.t
  %i.cv = trunc nuw nsw i64 %i.cr to i8
  %i.cw = add nsw i8 %i.cv, -1
  %i.cx = load ptr, ptr %i.ci, align 8, !noundef !100 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.065.0277
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !100
  %i.da = and i64 %.sroa.021.0278, 63
  %i.db = shl i64 %i.p, %i.da
  %i.dc = trunc i64 %i.db to i8
  %i.dd = and i8 %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.060.0
  %i.df = load i8, ptr %i.de, align 1, !noundef !100
  %i.dg = shl nuw nsw i8 1, %i.cw
  %i.dh = select i1 %i.cs, i8 -128, i8 %i.dg
  %i.di = and i8 %i.df, %i.dh
  %.not92 = icmp ne i8 %i.di, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.ab
  %.sroa.014.3272 = phi i64 [ %.sroa.014.1279, %bb.u ], [ %spec.select98, %bb.ab ] ; 5 uses
  %.sroa.021.1271 = phi i64 [ %.sroa.021.0278, %bb.u ], [ %.sroa.021.3, %bb.ab ] ; 4 uses
  %.sroa.028.0270 = phi i64 [ %i.p, %bb.u ], [ %i.ez, %bb.ab ]
  %.sroa.031.0269 = phi i8 [ %i.dd, %bb.u ], [ %.sroa.031.1, %bb.ab ] ; 2 uses
  %.sroa.032.0268 = phi i64 [ 0, %bb.u ], [ %i.ev, %bb.ab ] ; 3 uses
  %.sroa.035.0267 = phi i64 [ 0, %bb.u ], [ %spec.select, %bb.ab ] ; 4 uses
  %.sroa.065.1266 = phi i64 [ %.sroa.065.0277, %bb.u ], [ %.sroa.065.3, %bb.ab ] ; 2 uses
  %i.dj = icmp ult i64 %.sroa.014.3272, %i.f
  br i1 %i.dj, label %bb.x, label %.split197.us.invoke

bb.w:                                             ; preds = %bb.y, %bb.ab
  %.sroa.065.2 = phi i64 [ %i.fd, %bb.y ], [ %.sroa.065.3, %bb.ab ] ; 3 uses
  %.sroa.021.2 = phi i64 [ 0, %bb.y ], [ %.sroa.021.3, %bb.ab ] ; 2 uses
  %brmerge.not93 = select i1 %i.ag, i1 %.not92, i1 false ; 2 uses
  %i.dk = icmp ne i64 %spec.select, 0
  %or.cond7 = and i1 %i.dk, %brmerge.not93        ; 2 uses
  %i.dl = icmp ult i64 %spec.select, 8
  %or.cond292 = and i1 %or.cond7, %i.dl
  br i1 %or.cond292, label %.lr.ph274, label %.loopexit

.lr.ph274:                                        ; preds = %bb.w
  %i.dm = icmp ult i64 %spec.select98, %i.f
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select98 ; 2 uses
  br i1 %i.dm, label %iter.check511, label %.invoke

iter.check511:                                    ; preds = %.lr.ph274
  %.promoted = load i8, ptr %i.dn, align 1        ; 3 uses
  %i.do = sub i64 8, %.sroa.035.0267
  %i.dp = sub i64 %i.m, %.sroa.032.0268
  %i.dq = sub i64 8, %.sroa.021.1271
  %umin498 = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dq)
  %i.dr = tail call i64 @llvm.usub.sat.i64(i64 %i.do, i64 %umin498) ; 7 uses
  %min.iters.check500 = icmp ult i64 %i.dr, 16
  br i1 %min.iters.check500, label %vec.epilog.scalar.ph513.preheader, label %vector.main.loop.iter.check501

vector.main.loop.iter.check501:                   ; preds = %iter.check511
  %min.iters.check502 = icmp ult i64 %i.dr, 32
  br i1 %min.iters.check502, label %vec.epilog.ph515, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check501
  %i.ds = and i64 %i.dr, 16
  %n.vec504 = and i64 %i.dr, -32                  ; 4 uses
  %i.dt = add i64 %i.ew, %n.vec504                ; 2 uses
  %i.du = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  %i.dv = trunc i64 %i.ew to i8
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dv, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  br label %vector.body505

vector.body505:                                   ; preds = %vector.ph503, %vector.body505
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next508, %vector.body505 ]
  %vec.phi = phi <16 x i8> [ %i.du, %vector.ph503 ], [ %i.dy, %vector.body505 ]
  %vec.phi507 = phi <16 x i8> [ zeroinitializer, %vector.ph503 ], [ %i.dz, %vector.body505 ]
  %vec.ind = phi <16 x i8> [ %induction, %vector.ph503 ], [ %vec.ind.next, %vector.body505 ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %i.dw = shl nuw <16 x i8> splat (i8 1), %vec.ind
  %i.dx = shl nuw <16 x i8> splat (i8 1), %step.add
  %i.dy = or <16 x i8> %vec.phi, %i.dw            ; 2 uses
  %i.dz = or <16 x i8> %vec.phi507, %i.dx         ; 2 uses
  %index.next508 = add nuw i64 %index506, 32      ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.ea = icmp eq i64 %index.next508, %n.vec504
  br i1 %i.ea, label %middle.block509, label %vector.body505, !llvm.loop !74326

middle.block509:                                  ; preds = %vector.body505
  %bin.rdx = or <16 x i8> %i.dz, %i.dy
  %i.eb = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n510 = icmp eq i64 %i.dr, %n.vec504
  br i1 %cmp.n510, label %..loopexit_crit_edge, label %vec.epilog.iter.check512

vec.epilog.iter.check512:                         ; preds = %middle.block509
  %min.epilog.iters.check514.not.not = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check514.not.not, label %vec.epilog.scalar.ph513.preheader, label %vec.epilog.ph515, !prof !74341

vec.epilog.ph515:                                 ; preds = %vector.main.loop.iter.check501, %vec.epilog.iter.check512
  %vec.epilog.resume.val516 = phi i64 [ %n.vec504, %vec.epilog.iter.check512 ], [ 0, %vector.main.loop.iter.check501 ]
  %bc.merge.rdx = phi i8 [ %i.eb, %vec.epilog.iter.check512 ], [ %.promoted, %vector.main.loop.iter.check501 ]
  %bc.resume.val517 = phi i64 [ %i.dt, %vec.epilog.iter.check512 ], [ %i.ew, %vector.main.loop.iter.check501 ]
  %n.vec518 = and i64 %i.dr, -16                  ; 3 uses
  %i.ec = add i64 %i.ew, %n.vec518
  %i.ed = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  %i.ee = trunc i64 %bc.resume.val517 to i8
  %broadcast.splatinsert519 = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %broadcast.splat520 = shufflevector <16 x i8> %broadcast.splatinsert519, <16 x i8> poison, <16 x i32> zeroinitializer
  %induction521 = add <16 x i8> %broadcast.splat520, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph515
  %index523 = phi i64 [ %vec.epilog.resume.val516, %vec.epilog.ph515 ], [ %index.next526, %vec.epilog.vector.body522 ]
  %vec.phi524 = phi <16 x i8> [ %i.ed, %vec.epilog.ph515 ], [ %i.eg, %vec.epilog.vector.body522 ]
  %vec.ind525 = phi <16 x i8> [ %induction521, %vec.epilog.ph515 ], [ %vec.ind.next527, %vec.epilog.vector.body522 ] ; 2 uses
  %i.ef = shl nuw <16 x i8> splat (i8 1), %vec.ind525
  %i.eg = or <16 x i8> %vec.phi524, %i.ef         ; 2 uses
  %index.next526 = add nuw i64 %index523, 16      ; 2 uses
  %vec.ind.next527 = add <16 x i8> %vec.ind525, splat (i8 16)
  %i.eh = icmp eq i64 %index.next526, %n.vec518
  br i1 %i.eh, label %vec.epilog.middle.block528, label %vec.epilog.vector.body522, !llvm.loop !74327

vec.epilog.middle.block528:                       ; preds = %vec.epilog.vector.body522
  %i.ei = tail call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %i.eg) ; 2 uses
  %cmp.n529 = icmp eq i64 %i.dr, %n.vec518
  br i1 %cmp.n529, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph513.preheader

vec.epilog.scalar.ph513.preheader:                ; preds = %iter.check511, %vec.epilog.iter.check512, %vec.epilog.middle.block528
  %.ph = phi i8 [ %.promoted, %iter.check511 ], [ %i.eb, %vec.epilog.iter.check512 ], [ %i.ei, %vec.epilog.middle.block528 ]
  %.sroa.035.3273.ph = phi i64 [ %i.ew, %iter.check511 ], [ %i.dt, %vec.epilog.iter.check512 ], [ %i.ec, %vec.epilog.middle.block528 ]
  br label %vec.epilog.scalar.ph513

bb.x:                                             ; preds = %bb.v
  %i.ej = trunc i64 %.sroa.021.1271 to i8
  %i.ek = and i8 %i.ej, 7
  %i.el = lshr i8 %.sroa.031.0269, %i.ek
  %i.em = trunc i64 %.sroa.035.0267 to i8
  %i.en = and i8 %i.em, 7
  %i.eo = shl i8 %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.014.3272 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !noundef !100
  %i.er = add i8 %i.eq, %i.eo
  store i8 %i.er, ptr %i.ep, align 1
  %i.es = sub nuw i64 %i.m, %.sroa.032.0268
  %i.et = sub i64 8, %.sroa.021.1271
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %i.es)
  %i.eu = sub i64 8, %.sroa.035.0267
  %.sroa.0.0.i100 = tail call noundef i64 @llvm.umin.i64(i64 %i.eu, i64 %.sroa.0.0.i) ; 4 uses
  %i.ev = add i64 %.sroa.0.0.i100, %.sroa.032.0268 ; 2 uses
  %i.ew = add i64 %.sroa.0.0.i100, %.sroa.035.0267 ; 7 uses
  %i.ex = add i64 %.sroa.0.0.i100, %.sroa.021.1271 ; 2 uses
  %i.ey = and i64 %.sroa.0.0.i100, 63
  %i.ez = lshr i64 %.sroa.028.0270, %i.ey         ; 2 uses
  %i.fa = icmp eq i64 %i.ew, 8                    ; 3 uses
  %spec.select = select i1 %i.fa, i64 0, i64 %i.ew ; 3 uses
  %i.fb = zext i1 %i.fa to i64
  %spec.select98 = add nuw nsw i64 %.sroa.014.3272, %i.fb ; 11 uses
  %i.fc = icmp eq i64 %i.ex, 8
  br i1 %i.fc, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fd = add i64 %.sroa.065.1266, 1              ; 6 uses
  %i.fe = load i64, ptr %i.ca, align 8, !noundef !100 ; 3 uses
  %i.ff = icmp eq i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.w, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = icmp ult i64 %i.fd, %i.fe
  br i1 %i.fg, label %bb.aa, label %.invoke

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %i.ci, align 8, !noundef !100
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fd
  %i.fj = load i8, ptr %i.fi, align 1, !noundef !100
  %i.fk = trunc i64 %i.ez to i8
  %i.fl = and i8 %i.fj, %i.fk
  br label %bb.ab

.invoke:                                          ; preds = %.lr.ph274, %bb.ae, %bb.z
  %i.fm = phi i64 [ %i.fd, %bb.z ], [ %spec.select98, %bb.ae ], [ %spec.select98, %.lr.ph274 ]
  %i.fn = phi i64 [ %i.fe, %bb.z ], [ %i.f, %bb.ae ], [ %i.f, %.lr.ph274 ]
  %i.fo = phi ptr [ @3455, %bb.z ], [ @3456, %bb.ae ], [ @3457, %.lr.ph274 ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.fm, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fo) #66
          to label %.cont unwind label %.thread368

end_hunk_2
