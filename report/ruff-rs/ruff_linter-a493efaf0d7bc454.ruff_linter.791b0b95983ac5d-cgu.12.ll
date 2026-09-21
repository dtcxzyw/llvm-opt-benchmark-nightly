Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.12?download=true
inline.NumInlined: 6274
inline.NumDeleted: 3003
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias28timeout_error_alias_handlers:bb.a
          to label %bb.as unwind label %bb.bb

bb.aj:                                            ; preds = %bb.ag
  unreachable

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false), !noalias !7057
  store i32 30, ptr %i.g, align 8, !noalias !7057
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 8 %i.g)
          to label %bb.an unwind label %bb.am

.body26.i:                                        ; preds = %bb.ap, %bb.ao, %bb.am
  %.pn.i = phi { ptr, i32 } [ %i.di, %bb.ao ], [ %i.dh, %bb.am ], [ %i.dj, %bb.ap ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.g) #37
          to label %.body30.i unwind label %bb.bc

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.al
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body26.i

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7057
  store ptr %i.i, ptr %i.f, align 8, !noalias !7057
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !7057
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.f)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #37
          to label %.body26.i unwind label %bb.bc

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7057
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body26.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.am

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.g)
          to label %bb.ar unwind label %bb.ak

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !7057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7057
  br label %bb.ai

.thread49.i:                                      ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.as:                                            ; preds = %bb.ai
  %..i = select i1 %i.df, i8 1, i8 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !7057
  %i.dl = load i32, ptr %i.bq, align 8, !noalias !7057, !noundef !20
  %i.dm = load i32, ptr %i.bs, align 4, !noalias !7057, !noundef !20
  %i.dn = load ptr, ptr %i.an, align 8, !noalias !7057, !nonnull !20, !align !21, !noundef !20
  invoke void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter3fix5edits3pad(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.dl, i32 noundef %i.dm, ptr noundef nonnull align 8 %i.dn)
          to label %bb.at unwind label %.thread49.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7057
  %i.do = load i32, ptr %i.bq, align 8, !noalias !7057, !noundef !20
  %i.dp = load i32, ptr %i.bs, align 4, !noalias !7057, !noundef !20
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %i.do, i32 noundef %i.dp)
          to label %bb.au unwind label %.thread49.i

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7057
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix15applicable_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, i8 noundef %..i)
          to label %bb.av unwind label %.thread49.i

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7057
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.aw unwind label %.thread49.i

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7057
  br i1 %i.ck, label %bb.ax, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.az, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7057
  br label %bb.s

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body30.i unwind label %bb.ba

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.q

bb.ba:                                            ; preds = %bb.ay
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bb:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #37
          to label %bb.w unwind label %bb.bc

bb.bc:                                            ; preds = %.thread38.i, %bb.bd, %bb.bb, %bb.ao, %.body26.i, %.body30.i
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bd:                                            ; preds = %bb.ae
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.k) #37
          to label %.body30.i unwind label %bb.bc

.thread38.i:                                      ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %bb.z, %.loopexit.i, %bb.w
  %.pn2141.i = phi { ptr, i32 } [ %.pn21.i, %bb.w ], [ %i.cq, %bb.z ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit26, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.i.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.o) #37
          to label %.body30.i unwind label %bb.bc

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias16tuple_diagnostic.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7057
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias16tuple_diagnostic.exit, %._crit_edge
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %.body, %bb.be
  %common.resume.op = phi { ptr, i32 } [ %i.du, %bb.be ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %._crit_edge.thread
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.backedge

bb.bg:                                            ; preds = %.body
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias8is_alias(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, i8 noundef %2, i8 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 20 uses
  %i.b = alloca [144 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %0)
  %i.c = load i64, ptr %i.b, align 8, !range !23, !noundef !20
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7064)
  %i.d = icmp eq i8 %2, 3
  br i1 %i.d, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ugt i8 %3, 10
  br i1 %i.e, label %bb.d, label %bb.e

.thread.i:                                        ; preds = %bb.b
  %i.f = icmp ugt i8 %2, 2
  br i1 %i.f, label %bb.d, label %.thread3.i

bb.d:                                             ; preds = %.thread.i, %bb.c
  %i.g = load i64, ptr %i.a, align 8, !range !26, !alias.scope !7064, !noundef !20 ; 9 uses
  %i.h = trunc nuw i64 %i.g to i1                 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !20 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %.sroa.9.0.i = select i1 %i.h, i64 %i.l, i64 %i.o
  %.sroa.01.0.i = select i1 %i.h, ptr %i.j, ptr %i.i ; 2 uses
  %i.p = icmp eq i64 %.sroa.9.0.i, 2
  br i1 %i.p, label %bb.r, label %.thread5.i

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i8 %3, 10
  br i1 %i.q, label %bb.f, label %.thread3.i, !prof !7065

.thread3.i:                                       ; preds = %bb.e, %.thread.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #39
          to label %bb.h unwind label %bb.g, !noalias !7064

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !range !26, !alias.scope !7064, !noundef !20 ; 6 uses
  %i.s = trunc nuw i64 %i.r to i1                 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !7064, !nonnull !20 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !7064
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !7064
  %i.z = zext i32 %i.y to i64
  %.sroa.7.0.i = select i1 %i.s, i64 %i.w, i64 %i.z
  %.sroa.012.0.i = select i1 %i.s, ptr %i.u, ptr %i.t
  %i.aa = icmp eq i64 %.sroa.7.0.i, 2
  br i1 %i.aa, label %bb.j, label %.thread5.i

bb.g:                                             ; preds = %.thread3.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #37
          to label %common.resume.i unwind label %bb.i

bb.h:                                             ; preds = %.thread3.i
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume.i:                                  ; preds = %bb.p, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.bf, %bb.p ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.f
  %.sroa.gep.a = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.012.0.i.sroa.sel = select i1 %i.s, ptr %.sroa.gep.a, ptr %i.v
  %i.ad = load i64, ptr %.sroa.012.0.i.sroa.sel, align 8, !noundef !20
  %i.ae = icmp eq i64 %i.ad, 6
  br i1 %i.ae, label %bb.k, label %.thread5.i

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %.sroa.012.0.i, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = xor i32 %i.ag, 1801678707
  %i.ai = getelementptr i8, ptr %i.af, i64 4
  %i.aj = load i16, ptr %i.ai, align 1
  %i.ak = zext i16 %i.aj to i32
  %i.al = xor i32 %i.ak, 29797
  %i.am = or i32 %i.ah, %i.al
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %.thread5.i

bb.l:                                             ; preds = %bb.k
  %.sroa.gep3.a = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.gep4.a = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.012.0.i.sroa.sel5 = select i1 %i.s, ptr %.sroa.gep3.a, ptr %.sroa.gep4.a
  %i.aq = load i64, ptr %.sroa.012.0.i.sroa.sel5, align 8, !noundef !20
  %i.ar = icmp eq i64 %i.aq, 7
  br i1 %i.ar, label %bb.m, label %.thread5.i

bb.m:                                             ; preds = %bb.l
  %.sroa.gep6.a = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.gep7.a = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.012.0.i.sroa.sel8 = select i1 %i.s, ptr %.sroa.gep6.a, ptr %.sroa.gep7.a
  %i.as = load ptr, ptr %.sroa.012.0.i.sroa.sel8, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1
  %i.au = xor i32 %i.at, 1701669236
  %i.av = getelementptr i8, ptr %i.as, i64 3
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = xor i32 %i.aw, 1953853285
  %i.ay = or i32 %i.au, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br label %.thread5.i

.thread5.i:                                       ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.d, %bb.m, %bb.l, %bb.k, %bb.j, %bb.f
  %i.bc = phi i64 [ %i.r, %bb.l ], [ %i.r, %bb.f ], [ %i.r, %bb.j ], [ %i.r, %bb.k ], [ %i.r, %bb.m ], [ %i.g, %bb.v ], [ %i.g, %bb.d ], [ %i.g, %bb.r ], [ %i.g, %bb.u ], [ %i.g, %bb.w ], [ %i.g, %bb.x ], [ %i.g, %bb.t ], [ %i.g, %bb.s ]
  %.sroa.0.1.i = phi i1 [ false, %bb.l ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.k ], [ %i.bb, %bb.m ], [ false, %bb.v ], [ false, %bb.d ], [ false, %bb.r ], [ false, %bb.u ], [ %i.cr, %bb.w ], [ %i.db, %bb.x ], [ false, %bb.t ], [ false, %bb.s ]
  %i.bd = icmp eq i64 %i.bc, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread5.i
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.be)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias8is_alias0Bb_.exit

bb.o:                                             ; preds = %.thread5.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.o
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias8is_alias0Bb_.exit

bb.r:                                             ; preds = %bb.d
  %.sroa.gep20 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.gep21 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.01.0.i.sroa.sel22 = select i1 %i.h, ptr %.sroa.gep20, ptr %.sroa.gep21
  %i.bh = load i64, ptr %.sroa.01.0.i.sroa.sel22, align 8, !noundef !20
  switch i64 %i.bh, label %.thread5.i [
    i64 6, label %bb.s
    i64 7, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = xor i32 %i.bj, 1801678707
  %i.bl = getelementptr i8, ptr %i.bi, i64 4
  %i.bm = load i16, ptr %i.bl, align 1
  %i.bn = zext i16 %i.bm to i32
  %i.bo = xor i32 %i.bn, 29797
  %i.bp = or i32 %i.bk, %i.bo
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.t, label %.thread5.i

bb.t:                                             ; preds = %bb.s
  %.sroa.gep11 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.gep12.a = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel13 = select i1 %i.h, ptr %.sroa.gep11, ptr %.sroa.gep12.a
  %i.bt = load i64, ptr %.sroa.01.0.i.sroa.sel13, align 8, !noundef !20
  %i.bu = icmp eq i64 %i.bt, 7
  br i1 %i.bu, label %bb.x, label %.thread5.i

bb.u:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = xor i32 %i.bw, 1853453153
  %i.by = getelementptr i8, ptr %i.bv, i64 3
  %i.bz = load i32, ptr %i.by, align 1
  %i.ca = xor i32 %i.bz, 1869177710
  %i.cb = or i32 %i.bx, %i.ca
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.v, label %.thread5.i

bb.v:                                             ; preds = %bb.u
  %.sroa.gep17 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.gep18 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel19 = select i1 %i.h, ptr %.sroa.gep17, ptr %.sroa.gep18
  %i.cf = load i64, ptr %.sroa.01.0.i.sroa.sel19, align 8, !noundef !20
  %i.cg = icmp eq i64 %i.cf, 12
  br i1 %i.cg, label %bb.w, label %.thread5.i

bb.w:                                             ; preds = %bb.v
  %.sroa.gep14 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.gep15 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel16 = select i1 %i.h, ptr %.sroa.gep14, ptr %.sroa.gep15
  %i.ch = load ptr, ptr %.sroa.01.0.i.sroa.sel16, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 %i.ci, 5004754207218952532
  %i.ck = getelementptr i8, ptr %i.ch, i64 8
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = xor i64 %i.cm, 1919906418
  %i.co = or i64 %i.cj, %i.cn
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br label %.thread5.i

bb.x:                                             ; preds = %bb.t
  %.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.gep10 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel = select i1 %i.h, ptr %.sroa.gep9, ptr %.sroa.gep10
  %i.cs = load ptr, ptr %.sroa.01.0.i.sroa.sel, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = xor i32 %i.ct, 1701669236
  %i.cv = getelementptr i8, ptr %i.cs, i64 3
  %i.cw = load i32, ptr %i.cv, align 1
  %i.cx = xor i32 %i.cw, 1953853285
  %i.cy = or i32 %i.cu, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br label %.thread5.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias8is_alias0Bb_.exit: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias8is_alias0Bb_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.1.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules19timeout_error_alias8is_alias0Bb_.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules23unnecessary_encode_utf818match_encoding_arg(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !20, !noundef !20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d) ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !20, !noundef !20
  %i.g = load i64, ptr %i.f, align 8, !noundef !20 ; 3 uses
  switch i64 %i.c, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread [
    i64 0, label %bb.b
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  switch i64 %i.g, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread [
    i64 0, label %bb.h
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 95
  %i.i = load i8, ptr %i.h, align 1, !range !41, !noundef !20 ; 4 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread, label %bb.d

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %bb.d, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, %bb.c, %bb.g, %bb.e, %bb.b, %bb.a, %bb.f
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7070, !noundef !20
  %i.l = and i64 %i.k, 72057594037927935
  %i.m = icmp ult i8 %i.i, -48
  %i.n = zext i8 %i.i to i64
  %i.o = add nsw i64 %i.n, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 16)
  %.sroa.0.0.i.i = select i1 %i.m, i64 %spec.store.select.i.i, i64 %i.l
  %i.p = icmp eq i64 %.sroa.0.0.i.i, 8
  br i1 %i.p, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.r = icmp ugt i8 %i.i, -49
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !7070
  %.sroa.01.0.i.i = select i1 %i.r, ptr %i.s, ptr %i.q
  %i.t = load i64, ptr %.sroa.01.0.i.i, align 1
  %i.u = icmp ne i64 %i.t, 7453010313431182949
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.e:                                             ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit
  %i.x = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules23unnecessary_encode_utf820is_utf8_encoding_arg(ptr noundef nonnull align 8 %i.e)
  br i1 %i.x, label %bb.h, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.y = icmp eq i64 %i.g, 0
  br i1 %i.y, label %bb.g, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.z = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules23unnecessary_encode_utf820is_utf8_encoding_arg(ptr noundef nonnull align 8 %i.a)
  br i1 %i.z, label %bb.h, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.b, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread
  %.sroa.5.0 = phi ptr [ undef, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread ], [ %i.e, %bb.e ], [ undef, %bb.b ], [ %i.a, %bb.g ]
  %.sroa.0.0 = phi i64 [ -1, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread ], [ 2, %bb.e ], [ %i.g, %bb.b ], [ 1, %bb.g ]
  %i.aa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules23unnecessary_encode_utf820is_utf8_encoding_arg(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 8, !range !31, !noundef !20
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call { ptr, i64 } @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue6to_str(ptr noundef nonnull align 8 %i.e) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !20, !noundef !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !20
  store ptr %i.j, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @300, i64 noundef 6)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #37
          to label %common.resume unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
end_hunk_0
