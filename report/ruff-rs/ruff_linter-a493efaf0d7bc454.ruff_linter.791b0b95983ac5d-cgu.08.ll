inline.NumInlined: 5341
inline.NumDeleted: 2209
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules19literal_comparisons19literal_comparisons:bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  store i8 1, ptr %i.dm, align 1
  store i64 %.sroa.014.0, ptr %i.v, align 8
  %.sroa.316.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.316.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.316, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !noundef !9
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dq = load i32, ptr %i.dp, align 4, !noundef !9
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pycodestyle5rules19literal_comparisons19TrueFalseComparisonEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.w, ptr noundef nonnull align 8 %i.dj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.v, i32 noundef %i.do, i32 noundef %i.dq)
          to label %bb.as unwind label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.dr = invoke noundef i8 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef 0, i8 noundef 7)
          to label %bb.au unwind label %bb.aw     ; 0 uses

bb.at:                                            ; preds = %bb.au
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body90

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  invoke fastcc void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardE8push_mutBK_(ptr noalias noundef align 8 dereferenceable(24) %i.ag, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.u)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.j

bb.aw:                                            ; preds = %bb.as
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.w) #38
          to label %.body90 unwind label %bb.v

bb.ax:                                            ; preds = %.noexc
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %i.be) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4181
  %.not184 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ax
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  %.sroa.322.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %.sroa.326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  %.sroa.326.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %.backedge
  %.sroa.0.0179 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  %.sroa.13.0178 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %.backedge ] ; 7 uses
  %i.ec = add nuw i64 %.sroa.13.0178, 1           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.13.0178
  %i.ee = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %.sroa.13.0178 ; 13 uses
  %i.ef = invoke noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers25is_constant_non_singleton(ptr noundef nonnull align 8 %.sroa.0.0179)
          to label %bb.cc unwind label %.loopexit

._crit_edge:                                      ; preds = %.backedge, %bb.ax
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !9
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ej = load ptr, ptr %i.al, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ek = load i64, ptr %i.an, align 8, !noundef !9
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  store ptr %i.ej, ptr %i.g, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.el, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copied6CopiedINtNtB2n_3map3MapINtNtB2n_9enumerate9EnumerateINtNtNtB2r_5slice4iter4IterB12_EENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules19literal_comparisons19literal_comparisons0EEE9from_iterB4F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.bd unwind label %.loopexit.split-lp

bb.ba:                                            ; preds = %._crit_edge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.invoke210 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.bc

.invoke210:                                       ; preds = %bb.b, %bb.ba
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB1d_.exit75 unwind label %bb.g

bb.bc:                                            ; preds = %bb.bb
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bd:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ep = load ptr, ptr %i.eo, align 8, !align !473, !noundef !9 ; 2 uses
  %.not53 = icmp eq ptr %i.ep, null
  br i1 %.not53, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.er = load ptr, ptr %i.eq, align 8, !nonnull !9, !align !473, !noundef !9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sroa.031.0 = phi ptr [ %i.er, %bb.be ], [ %i.ep, %bb.bd ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !9, !align !473, !noundef !9 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ex = load i64, ptr %i.an, align 8, !noundef !9
  %i.ey = load ptr, ptr %i.ar, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.ez = load i64, ptr %i.at, align 8, !noundef !9 ; 2 uses
  %i.fa = icmp eq i64 %i.ex, 1
  %i.fb = icmp eq i64 %i.ez, 1
  %or.cond = and i1 %i.fa, %i.fb
  br i1 %or.cond, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fc = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  br label %.invoke209

bb.bh:                                            ; preds = %bb.bf
  %i.fd = load ptr, ptr %i.al, align 8, !nonnull !9, !noundef !9
  %i.fe = load i8, ptr %i.fd, align 1, !range !4180, !noundef !9 ; 2 uses
  %i.ff = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.fg = load i32, ptr %i.ff, align 8, !range !359, !noundef !9
  %i.fh = icmp eq i32 %i.fg, 22
  br i1 %i.fh, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fj = load i8, ptr %i.fi, align 8, !range !527, !noundef !9 ; 3 uses
  switch i8 %i.fe, label %bb.bl [
    i8 0, label %bb.bo
    i8 1, label %bb.bj
    i8 6, label %bb.bo
    i8 7, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.fk = xor i8 %i.fj, 1
  br label %bb.bo

.body86:                                          ; preds = %bb.bs, %bb.bk, %bb.bu
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.bu ], [ %i.fl, %bb.bk ], [ %i.gi, %bb.bs ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.h) #38
          to label %.body90 unwind label %bb.v

bb.bk:                                            ; preds = %.invoke209, %.invoke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body86

bb.bl:                                            ; preds = %bb.bh, %bb.bi
  %i.fm = load i32, ptr %i.ey, align 8, !range !359, !noundef !9
  %i.fn = icmp eq i32 %i.fm, 22
  br i1 %i.fn, label %bb.bm, label %.invoke209

bb.bm:                                            ; preds = %bb.bl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fp = load i8, ptr %i.fo, align 8, !range !527, !noundef !9 ; 3 uses
  switch i8 %i.fe, label %.invoke209 [
    i8 0, label %bb.bp
    i8 1, label %bb.bn
    i8 6, label %bb.bp
    i8 7, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm
  %i.fq = xor i8 %i.fp, 1
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bi, %bb.bi, %bb.bj
  %.sroa.0.0.i = phi i8 [ %i.fk, %bb.bj ], [ %i.fj, %bb.bi ], [ %i.fj, %bb.bi ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  br label %.invoke

.invoke209:                                       ; preds = %bb.bm, %bb.bl, %bb.bg
  %i.fs = phi ptr [ %i.fc, %bb.bg ], [ %i.ff, %bb.bl ], [ %i.ff, %bb.bm ]
  %i.ft = phi i64 [ %i.ez, %bb.bg ], [ 1, %bb.bl ], [ 1, %bb.bm ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !9, !noundef !9
  %i.fw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !noundef !9
  invoke void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers19generate_comparison(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.fs, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fv, i64 noundef %i.fx, ptr noundef nonnull align 8 %i.ey, i64 noundef %i.ft, i64 noundef 42, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.031.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef %i.ew)
          to label %bb.bq unwind label %bb.bk

bb.bp:                                            ; preds = %bb.bm, %bb.bm, %bb.bn
  %.sroa.0.0.i78 = phi i8 [ %i.fq, %bb.bn ], [ %i.fp, %bb.bm ], [ %i.fp, %bb.bm ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  br label %.invoke

.invoke:                                          ; preds = %bb.bo, %bb.bp
  %.sroa.0.0.i.sink = phi i8 [ %.sroa.0.0.i, %bb.bo ], [ %.sroa.0.0.i78, %bb.bp ]
  %.sink = phi i64 [ 40, %bb.bo ], [ 44, %bb.bp ]
  %i.fz = phi ptr [ %i.fr, %bb.bo ], [ %i.fy, %bb.bp ]
  %2 = phi ptr [ %i.ey, %bb.bo ], [ %i.ff, %bb.bp ]
  %.sroa.0.0.i77.sink = load i32, ptr %i.fz, align 4, !noundef !9
  %i.ga = trunc nuw i8 %.sroa.0.0.i.sink to i1
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %4 = load i32, ptr %3, align 4, !noundef !9
  %5 = icmp ne i32 %.sroa.0.0.i77.sink, %4
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules19literal_comparisons29generate_redundant_comparison(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.031.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef %i.ew, ptr noundef nonnull align 8 %2, i1 noundef zeroext %i.ga, i1 noundef zeroext %5)
          to label %bb.bq unwind label %bb.bk

bb.bq:                                            ; preds = %.invoke209, %.invoke
  %i.gb = load ptr, ptr %i.ai, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.gc = load i64, ptr %i.aj, align 8, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %i.gc, 48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.idx
  %i.ge = icmp eq i64 %i.gc, 0
  br i1 %i.ge, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %bb.bq
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 44
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph182, %bb.by
  %.sroa.039.0180 = phi ptr [ %i.gb, %.lr.ph182 ], [ %i.gh, %bb.by ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.039.0180, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.bv unwind label %bb.bu

._crit_edge183:                                   ; preds = %bb.by, %bb.bq
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bs

bb.bs:                                            ; preds = %._crit_edge183
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body86 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %._crit_edge183
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.bk

bb.bu:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.br
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %.body86 unwind label %bb.v

bb.bv:                                            ; preds = %bb.br
  %i.gl = load i32, ptr %i.gf, align 8, !noundef !9
  %i.gm = load i32, ptr %i.gg, align 4, !noundef !9
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.gl, i32 noundef %i.gm)
          to label %bb.bw unwind label %bb.bu

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix11unsafe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.bx unwind label %bb.bu

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %.sroa.039.0180, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.by unwind label %bb.bu

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gn = icmp eq ptr %i.gh, %i.gd
  br i1 %i.gn, label %._crit_edge183, label %bb.br

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ca unwind label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body90 unwind label %bb.cb

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit unwind label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bz
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ba

bb.cc:                                            ; preds = %bb.ay
  br i1 %i.ef, label %.backedge, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gq = load i8, ptr %i.ed, align 1, !range !4180, !noundef !9 ; 2 uses
  %switch60 = icmp samesign ult i8 %i.gq, 2
  br i1 %switch60, label %bb.ce, label %.backedge

bb.ce:                                            ; preds = %bb.cd
  %i.gr = trunc nuw i8 %i.gq to i1                ; 2 uses
  %i.gs = load ptr, ptr %i.du, align 8, !nonnull !9, !align !473, !noundef !9 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 144
  %i.gu = load i64, ptr %i.gt, align 8, !noundef !9
  %i.gv = and i64 %i.gu, 35184372088832
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gx = load i32, ptr %i.ee, align 8, !range !359, !noundef !9
  %i.gy = icmp eq i32 %i.gx, 23
  br i1 %i.gy, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cw, %bb.co
  %i.gz = load ptr, ptr %i.du, align 8, !nonnull !9, !align !473, !noundef !9 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 144
  %i.hb = load i64, ptr %i.ha, align 8, !noundef !9
  %i.hc = and i64 %i.hb, 70368744177664
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %.backedge, label %bb.cy

bb.ch:                                            ; preds = %bb.cf
  %i.he = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  br i1 %i.gr, label %bb.cq, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.0.0.i100 = load i32, ptr %i.he, align 4, !noundef !9
  %.sroa.34.0.i101 = load i32, ptr %i.hf, align 8, !noundef !9
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pycodestyle5rules19literal_comparisons14NoneComparisonEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.t, ptr noundef nonnull align 8 %i.gs, i1 noundef zeroext false, i32 noundef %.sroa.0.0.i100, i32 noundef %.sroa.34.0.i101)
          to label %bb.cj unwind label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.hg = invoke noundef i8 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %.sroa.13.0178, i8 noundef 6)
          to label %bb.ck unwind label %bb.cp     ; 0 uses

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.hh = load i64, ptr %i.aj, align 8, !alias.scope !4187, !noalias !4190, !noundef !9 ; 3 uses
  %i.hi = load i64, ptr %i.ag, align 8, !range !540, !alias.scope !4187, !noalias !4190, !noundef !9
  %i.hj = icmp eq i64 %i.hh, %i.hi
  br i1 %i.hj, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.co unwind label %bb.cm, !noalias !4190

bb.cm:                                            ; preds = %bb.cl
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s) #38
          to label %.body90 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.co:                                            ; preds = %bb.cl, %bb.ck
  %i.hm = load ptr, ptr %i.ai, align 8, !alias.scope !4187, !noalias !4190, !nonnull !9, !noundef !9
  %i.hn = getelementptr inbounds nuw [48 x i8], ptr %i.hm, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hn, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false)
  %i.ho = add i64 %i.hh, 1
  store i64 %i.ho, ptr %i.aj, align 8, !alias.scope !4187, !noalias !4190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cg

bb.cp:                                            ; preds = %bb.cj
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.t) #38
          to label %.body90 unwind label %bb.v

bb.cq:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.0.0.i94 = load i32, ptr %i.he, align 4, !noundef !9
  %.sroa.34.0.i95 = load i32, ptr %i.hf, align 8, !noundef !9
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules11pycodestyle5rules19literal_comparisons14NoneComparisonEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noundef nonnull align 8 %i.gs, i1 noundef zeroext true, i32 noundef %.sroa.0.0.i94, i32 noundef %.sroa.34.0.i95)
          to label %bb.cr unwind label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.hq = invoke noundef i8 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %.sroa.13.0178, i8 noundef 7)
          to label %bb.cs unwind label %bb.cx     ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  %i.hr = load i64, ptr %i.aj, align 8, !alias.scope !4192, !noalias !4195, !noundef !9 ; 3 uses
  %i.hs = load i64, ptr %i.ag, align 8, !range !540, !alias.scope !4192, !noalias !4195, !noundef !9
  %i.ht = icmp eq i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.ct, label %bb.cw
end_hunk_0
