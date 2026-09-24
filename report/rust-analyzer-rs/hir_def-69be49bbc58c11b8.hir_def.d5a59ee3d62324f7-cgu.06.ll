Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.06?download=true
inline.NumInlined: 3669
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver41resolve_path_in_value_ns_with_prefix_info:bb.a
bb.ao:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6045)
  %.not.i165 = icmp eq i32 %.sroa.4.0.i269, -1
  br i1 %.not.i165, label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dr = getelementptr inbounds i8, ptr %.sroa.539.0266, i64 -36
  %i.ds = call fastcc noundef zeroext i1 @_RNvXsL_Cs33K2ylI4knu_10hir_expandNtB5_10MacroDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.dc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(36) %i.dr) #41, !noalias !6046
  br i1 %i.ds, label %bb.aq, label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dt = invoke noundef i32 @_RINvMsa_NvNtCsdovh4xi6v3I_4span7hygiene1__NtB8_13SyntaxContext21opaque_and_semiopaqueDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECsileJQcQObtj_7hir_def(i32 noundef %i.dd, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
          to label %.noexc168 unwind label %.loopexit ; 2 uses

.noexc168:                                        ; preds = %bb.aq
  %i.du = and i32 %i.dt, -4
  %or.cond.i166 = icmp eq i32 %i.du, -256
  %spec.store.select.i = select i1 %or.cond.i166, i32 -253, i32 %i.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dv = invoke { i32, i32 } @_RINvMsa_NvNtCsdovh4xi6v3I_4span7hygiene1__NtB8_13SyntaxContext10outer_expnDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECsileJQcQObtj_7hir_def(i32 noundef %i.dd, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
          to label %.noexc169 unwind label %.loopexit ; 2 uses

.noexc169:                                        ; preds = %.noexc168
  %i.dw = extractvalue { i32, i32 } %i.dv, 0      ; 2 uses
  %.not15.i = icmp eq i32 %i.dw, 0
  br i1 %.not15.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.noexc169
  %i.dx = extractvalue { i32, i32 } %i.dv, 1
  %i.dy = invoke noundef nonnull align 8 ptr @_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECsileJQcQObtj_7hir_def(i32 noundef %i.dw, i32 noundef %i.dx, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
          to label %.noexc170 unwind label %.loopexit ; 2 uses

.noexc170:                                        ; preds = %bb.ar
  %i.dz = invoke noundef i32 @_RINvMsa_NvNtCsdovh4xi6v3I_4span7hygiene1__NtB8_13SyntaxContext6parentDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECsileJQcQObtj_7hir_def(i32 noundef %i.dd, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %3)
          to label %.noexc171 unwind label %.loopexit

.noexc171:                                        ; preds = %.noexc170
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %.sroa.013.0.copyload.i = load i32, ptr %i.ea, align 8, !noalias !6047
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.414.0..sroa_idx.i, i64 32, i1 false), !noalias !6047
  br label %bb.as

bb.as:                                            ; preds = %.noexc171, %.noexc169
  %.sroa.4.0.i = phi i32 [ %.sroa.013.0.copyload.i, %.noexc171 ], [ -1, %.noexc169 ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %i.dz, %.noexc171 ], [ undef, %.noexc169 ] ; 2 uses
  store i32 %.sroa.02.0.i, ptr %i.c, align 4, !alias.scope !6045, !noalias !6048
  store i32 %.sroa.4.0.i, ptr %i.dc, align 4, !alias.scope !6045, !noalias !6048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.0..sroa_idx6.i167, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !6048
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit

bb.at:                                            ; preds = %bb.al
  %i.eb = load i32, ptr %0, align 8, !range !63, !noundef !31
  %.not132 = icmp eq i32 %i.eb, -2
  br i1 %.not132, label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit, label %.loopexit247

.loopexit247.sink.split:                          ; preds = %bb.ay, %_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams18find_const_by_name.exit, %bb.bb
  %.sink = phi i64 [ 8, %bb.bb ], [ 16, %_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams18find_const_by_name.exit ], [ 12, %bb.ay ]
  %.val147.sink = phi i32 [ %.val147, %bb.bb ], [ %i.es, %_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams18find_const_by_name.exit ], [ %i.eh, %bb.ay ]
  %.sroa.045.sroa.4.sroa.4.0..sroa.045.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i32 %.val147.sink, ptr %.sroa.045.sroa.4.sroa.4.0..sroa.045.sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %.sroa.547.0..sroa_idx, align 1
  br label %.loopexit247

.loopexit247:                                     ; preds = %bb.at, %.loopexit247.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit

_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit: ; preds = %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i, %bb.aw, %bb.az, %bb.av, %bb.as, %bb.ap, %bb.ao, %bb.at
  %.sroa.4.0.i268 = phi i32 [ %.sroa.4.0.i269, %bb.at ], [ %.sroa.4.0.i269, %bb.ap ], [ %.sroa.4.0.i269, %bb.av ], [ -1, %bb.ao ], [ %.sroa.4.0.i, %bb.as ], [ %.sroa.4.0.i269, %bb.aw ], [ %.sroa.4.0.i269, %bb.az ], [ %.sroa.4.0.i269, %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0231265, %bb.at ], [ %.sroa.0.0231265, %bb.ap ], [ %.sroa.0.0231265, %bb.av ], [ %.sroa.0.0231265, %bb.ao ], [ %spec.store.select.i, %bb.as ], [ %.sroa.0.0231265, %bb.aw ], [ %.sroa.0.0231265, %bb.az ], [ %.sroa.0.0231265, %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i ]
  %i.ec = phi i32 [ %i.dd, %bb.at ], [ %i.dd, %bb.ap ], [ %i.dd, %bb.av ], [ %i.dd, %bb.ao ], [ %.sroa.02.0.i, %bb.as ], [ %i.dd, %bb.aw ], [ %i.dd, %bb.az ], [ %i.dd, %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i ]
  %i.ed = icmp eq ptr %.val143, %i.de
  br i1 %i.ed, label %._crit_edge, label %bb.ak

bb.au:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds i8, ptr %.sroa.539.0266, i64 -32
  %i.ef = load i32, ptr %i.ee, align 8, !range !34, !noundef !31
  %i.eg = getelementptr inbounds i8, ptr %.sroa.539.0266, i64 -28
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !31
  %i.ei = load ptr, ptr %i.ab, align 8, !nonnull !31, !noundef !31
  %i.ej = icmp eq ptr %i.ei, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Self_10SYMBOL_STR
  br i1 %i.ej, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.am
  %i.ek = getelementptr inbounds i8, ptr %.sroa.539.0266, i64 -24
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !31, !align !32, !noundef !31 ; 2 uses
  %.sroa.4211.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.539.0266, i64 -32
  %.sroa.4211.0.copyload = load i64, ptr %.sroa.4211.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6050)
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !6049, !noalias !6051, !nonnull !31, !noundef !31 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !6049, !noalias !6051, !noundef !31 ; 2 uses
  %.idx.i172 = shl nuw nsw i64 %i.ep, 5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx.i172
  %i.er = icmp eq i64 %i.ep, 0
  br i1 %i.er, label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit, label %.lr.ph.i.i177.preheader

.lr.ph.i.i177.preheader:                          ; preds = %bb.av
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !6050, !noalias !6052, !nonnull !31
  br label %.lr.ph.i.i177

.lr.ph.i.i177:                                    ; preds = %.lr.ph.i.i177.preheader, %bb.aw
  %i.es = phi i32 [ %i.ey, %bb.aw ], [ 0, %.lr.ph.i.i177.preheader ] ; 2 uses
  %i.et = phi ptr [ %i.eu, %bb.aw ], [ %i.en, %.lr.ph.i.i177.preheader ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 2 uses
  %.val.i.i178 = load i64, ptr %i.et, align 8, !range !46, !alias.scope !6053, !noalias !6054, !noundef !31
  %i.ev = trunc nuw i64 %.val.i.i178 to i1
  br i1 %i.ev, label %.critedge.i.i.i.i.i.i180, label %bb.aw

.critedge.i.i.i.i.i.i180:                         ; preds = %.lr.ph.i.i177
  %i.ew = getelementptr i8, ptr %i.et, i64 16
  %.val4.i.i181 = load ptr, ptr %i.ew, align 8, !alias.scope !6055, !noalias !6056, !nonnull !31, !noundef !31
  %i.ex = icmp eq ptr %.val4.i.i181, %.val1.i.i.i.i.i.i.i
  br i1 %i.ex, label %_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams18find_const_by_name.exit, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i.i.i.i.i.i180, %.lr.ph.i.i177
  %i.ey = add i32 %i.es, 1
  %i.ez = icmp eq ptr %i.eu, %i.eq
  br i1 %i.ez, label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit, label %.lr.ph.i.i177

bb.ax:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECsileJQcQObtj_7hir_def(ptr nonnull @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols5Self_10SYMBOL_STR)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %bb.ax
  store i32 -1, ptr %0, align 8
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 9, ptr %.sroa.055.sroa.4.0..sroa_idx, align 4
  %.sroa.055.sroa.4.sroa.4.0..sroa.055.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ef, ptr %.sroa.055.sroa.4.sroa.4.0..sroa.055.sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %.loopexit247.sink.split

_RNvMs3_NtNtCsileJQcQObtj_7hir_def3hir8genericsNtB5_13GenericParams18find_const_by_name.exit: ; preds = %.critedge.i.i.i.i.i.i180
  store i32 -1, ptr %0, align 8
  %.sroa.066.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dk, ptr %.sroa.066.sroa.4.0..sroa_idx, align 4
  %.sroa.066.sroa.4.sroa.4.0..sroa.066.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4211.0.copyload, ptr %.sroa.066.sroa.4.sroa.4.0..sroa.066.sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %.loopexit247.sink.split

bb.az:                                            ; preds = %bb.an
  %i.fa = extractvalue { ptr, i64 } %i.dq, 0      ; 3 uses
  %i.fb = extractvalue { ptr, i64 } %i.dq, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %.idx = shl nuw nsw i64 %i.fb, 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx
  %i.fd = icmp eq i64 %i.fb, 0
  br i1 %i.fd, label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az
  %i.fe = load ptr, ptr %i.ab, align 8, !noalias !6057, !nonnull !31, !noundef !31
  br label %bb.ba

bb.ba:                                            ; preds = %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i, %.lr.ph.i
  %i.ff = phi ptr [ %i.fa, %.lr.ph.i ], [ %i.fg, %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.ff, align 8, !noalias !6057, !nonnull !31, !noundef !31
  %i.fi = icmp eq ptr %i.fh, %i.fe
  br i1 %i.fi, label %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.i, label %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i

_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.i: ; preds = %bb.ba
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fk = load i32, ptr %i.fj, align 8, !noalias !6057, !noundef !31
  %i.fl = icmp eq i32 %i.fk, %.sroa.0.0231265
  br i1 %i.fl, label %bb.bb, label %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i

_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.thread.i: ; preds = %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.i, %bb.ba
  %i.fm = icmp eq ptr %i.fg, %i.fc
  br i1 %i.fm, label %_RNvNtCsileJQcQObtj_7hir_def8resolver22handle_macro_def_scope.exit, label %bb.ba

bb.bb:                                            ; preds = %_RNCNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB7_8Resolver41resolve_path_in_value_ns_with_prefix_infos_0B9_.exit.i
  %i.fn = getelementptr i8, ptr %i.ff, i64 12
  %.val147 = load i32, ptr %i.fn, align 4, !noundef !31
  store i32 -1, ptr %0, align 8
  %.sroa.045.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 10, ptr %.sroa.045.sroa.4.0..sroa_idx, align 4
  br label %.loopexit247.sink.split

bb.bc:                                            ; preds = %.loopexit248
  %i.fo = load i32, ptr %0, align 8, !range !63, !noundef !31
  %.not133 = icmp eq i32 %i.fo, -2
  br i1 %.not133, label %bb.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit

bb.bd:                                            ; preds = %bb.bc
  %i.fp = load ptr, ptr %.sroa.0.0, align 8, !nonnull !31, !noundef !31
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load i8, ptr %i.fq, align 4, !range !58, !alias.scope !6058, !noalias !6059, !noundef !31
  %i.fs = icmp eq i8 %i.fr, 0
  %i.ft = icmp ugt i64 %i.s, 1
  %or.cond245 = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond245, label %bb.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit194

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit194: ; preds = %bb.bf, %bb.bd
  store i32 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.fu = invoke { i8, i8 } @_RNvMNtCsileJQcQObtj_7hir_def12builtin_typeNtB2_11BuiltinType7by_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.fv = extractvalue { i8, i8 } %i.fu, 0        ; 2 uses
  %.not134 = icmp eq i8 %i.fv, -1
  br i1 %.not134, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit194, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fw = extractvalue { i8, i8 } %i.fu, 1
  store i32 15, ptr %0, align 8
  %.sroa.0107.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.fv, ptr %.sroa.0107.sroa.0.sroa.4.0..sroa_idx, align 4
  %.sroa.0107.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.fw, ptr %.sroa.0107.sroa.0.sroa.5.0..sroa_idx, align 1
  %.sroa.0107.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.0107.sroa.4.0..sroa_idx, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %.sroa.5109.0..sroa_idx, align 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit

bb.bh:                                            ; preds = %bb.bt, %bb.bz, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit, %bb.bm, %bb.br, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def.exit194
  ret void

bb.bi:                                            ; preds = %.loopexit.split-lp
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bj:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

bb.bk:                                            ; preds = %bb.e
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.bs
    i32 1, label %bb.bt
    i32 2, label %bb.bt
    i32 3, label %bb.bt
    i32 4, label %bb.bu
    i32 5, label %bb.bv
    i32 6, label %bb.bw
    i32 7, label %bb.bx
    i32 8, label %bb.by
    i32 9, label %bb.bt
    i32 10, label %bb.bt
  ]

bb.bl:                                            ; preds = %bb.e
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.bm
    i32 1, label %bb.br
    i32 2, label %bb.bm
    i32 3, label %bb.bn
    i32 4, label %bb.bo
    i32 5, label %bb.bm
    i32 6, label %bb.bm
    i32 7, label %bb.bm
    i32 8, label %bb.bp
    i32 9, label %bb.bq
    i32 10, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl, %bb.bl
  store i32 -2, ptr %0, align 8
  br label %bb.bh

bb.bn:                                            ; preds = %bb.bl
  br label %bb.br

bb.bo:                                            ; preds = %bb.bl
  br label %bb.br

bb.bp:                                            ; preds = %bb.bl
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  br label %bb.br

bb.br:                                            ; preds = %bb.bl, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %.sroa.014.0 = phi i32 [ 12, %bb.bq ], [ 13, %bb.bn ], [ 14, %bb.bo ], [ 15, %bb.bp ], [ 11, %bb.bl ]
  %.sroa.9.0.in = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %0, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.014.0, ptr %.sroa.010.sroa.5.0..sroa_idx, align 4
  %.sroa.010.sroa.5.sroa.5.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = load <2 x i32>, ptr %.sroa.9.0.in, align 8
  store <2 x i32> %i.fy, ptr %.sroa.010.sroa.5.sroa.5.0..sroa.010.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.bh

bb.bs:                                            ; preds = %bb.bk
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gb = load i32, ptr %i.ga, align 4, !noundef !31
  br label %bb.bz

bb.bt:                                            ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bk, %bb.bk
  store i32 -2, ptr %0, align 8
  br label %bb.bh

bb.bu:                                            ; preds = %bb.bk
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ge = load i32, ptr %i.gd, align 4, !noundef !31
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bk
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !noundef !31
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bk
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !range !34, !noundef !31
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bk
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !range !34, !noundef !31
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.bz

bb.by:                                            ; preds = %bb.bk
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gp = load i32, ptr %i.go, align 8, !range !34, !noundef !31
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %.sroa.16.0 = phi i32 [ %i.gb, %bb.bs ], [ %i.ge, %bb.bu ], [ %i.gh, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ]
  %.sroa.13.0.in = phi ptr [ %i.fz, %bb.bs ], [ %i.gc, %bb.bu ], [ %i.gf, %bb.bv ], [ %i.gk, %bb.bw ], [ %i.gn, %bb.bx ], [ %i.gq, %bb.by ]
  %.sroa.716.0 = phi i32 [ 2, %bb.bs ], [ 0, %bb.bu ], [ 1, %bb.bv ], [ %i.gj, %bb.bw ], [ %i.gm, %bb.bx ], [ %i.gp, %bb.by ]
  %.sroa.015.0 = phi i32 [ 11, %bb.bs ], [ 11, %bb.bu ], [ 11, %bb.bv ], [ 14, %bb.bw ], [ 16, %bb.bx ], [ 13, %bb.by ]
  %.sroa.13.0 = load i32, ptr %.sroa.13.0.in, align 4, !noundef !31
  store i32 %.sroa.015.0, ptr %0, align 8
  %.sroa.027.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.716.0, ptr %.sroa.027.sroa.4.0..sroa_idx, align 4
  %.sroa.027.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.13.0, ptr %.sroa.027.sroa.5.0..sroa_idx, align 8
  %.sroa.027.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.16.0, ptr %.sroa.027.sroa.6.0..sroa_idx, align 4
  %.sroa.027.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.027.sroa.7.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %.sroa.528.0..sroa_idx, align 1
  br label %bb.bh
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs0_NtCsileJQcQObtj_7hir_def8resolverNtB5_8Resolver42rename_will_conflict_with_another_variable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i32 noundef %5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %6, i32 noundef %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [32 x i8], align 4          ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 4                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6083)
  %i.c = and i32 %5, -4
  %or.cond.i = icmp eq i32 %i.c, -256
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i32, i32 } @_RINvMsa_NvNtCsdovh4xi6v3I_4span7hygiene1__NtB8_13SyntaxContext10outer_expnDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECsileJQcQObtj_7hir_def(i32 noundef %5, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2), !noalias !6083 ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0        ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 -1, ptr %i.f, align 4, !alias.scope !6083, !noalias !6084
  br label %_RNvNtCsileJQcQObtj_7hir_def8resolver12hygiene_info.exit

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { i32, i32 } %i.d, 1
  %i.h = tail call noundef nonnull align 8 ptr @_RINvMs9_NvCs33K2ylI4knu_10hir_expand1__NtB8_11MacroCallId3locDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECsileJQcQObtj_7hir_def(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2), !noalias !6083
  %i.i = tail call noundef i32 @_RINvMsa_NvNtCsdovh4xi6v3I_4span7hygiene1__NtB8_13SyntaxContext6parentDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_ECsileJQcQObtj_7hir_def(i32 noundef %5, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2), !noalias !6083 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(36) %i.j, i64 36, i1 false)
  store i32 %i.i, ptr %i.b, align 4, !alias.scope !6083, !noalias !6084
  br label %_RNvNtCsileJQcQObtj_7hir_def8resolver12hygiene_info.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 -1, ptr %i.k, align 4, !alias.scope !6083, !noalias !6084
  br label %_RNvNtCsileJQcQObtj_7hir_def8resolver12hygiene_info.exit

end_hunk_0
