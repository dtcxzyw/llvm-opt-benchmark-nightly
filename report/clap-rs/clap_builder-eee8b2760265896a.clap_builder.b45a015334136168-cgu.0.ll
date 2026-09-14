Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate4help:bb.a
  br i1 %i.da, label %bb.p, label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !4092)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.03.0.copyload.i = load i64, ptr %i.db, align 8, !alias.scope !4092, !noalias !4093
  %i.dc = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !4092, !noalias !4093
  %.not.i = icmp eq i64 %.sroa.54.0.copyload.i, 0
  %or.cond.i = select i1 %i.dc, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !range !25, !alias.scope !4092, !noalias !4093, !noundef !11
  %.not6.i = icmp eq i64 %i.de, -1
  %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i = select i1 %.not6.i, ptr @_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT, ptr %i.dd ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  %i.df = load i64, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i, align 8, !range !48, !alias.scope !4094, !noalias !4093, !noundef !11
  switch i64 %i.df, label %default.unreachable [
    i64 0, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
  ]

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

bb.s:                                             ; preds = %bb.q
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

bb.t:                                             ; preds = %bb.q
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

bb.u:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !4094, !noalias !4093, !nonnull !11, !noundef !11
  %i.di = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !4094, !noalias !4093, !nonnull !11, !align !17, !noundef !11
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.6.0.i.i = phi ptr [ %i.dj, %bb.u ], [ @256, %bb.r ], [ @257, %bb.s ], [ @258, %bb.t ], [ @255, %bb.q ]
  %.sroa.0.0.i.i = phi ptr [ %i.dh, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.t ], [ inttoptr (i64 1 to ptr), %bb.q ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !invariant.load !11, !noalias !4095, !nonnull !11
  %i.dm = call { ptr, ptr } %i.dl(ptr noundef nonnull %.sroa.0.0.i.i) #45, !noalias !4095, !inline_history !49 ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %i.dm, 0      ; 2 uses
  %.not7.i = icmp eq ptr %i.dn, null
  br i1 %.not7.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit

_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit: ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i
  %i.do = extractvalue { ptr, ptr } %i.dm, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterB17_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.do) #43, !noalias !4092, !inline_history !50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre274 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dq = icmp ult i64 %.pre274, 128102389400760776
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %.pre274, 0
  br i1 %i.dr, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.idx = mul nuw nsw i64 %.pre274, 72
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %i.dv = icmp eq ptr %i.dx, %i.du
  br i1 %i.dv, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.v
  %i.dw = phi ptr [ %i.dt, %.lr.ph ], [ %i.dx, %bb.v ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = load i8, ptr %i.dy, align 8, !range !34, !noalias !4096, !noundef !11
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr i8, ptr %i.dw, i64 48
  %.val.i.i164 = load ptr, ptr %i.eb, align 8, !noalias !4097, !nonnull !11, !noundef !11
  %i.ec = getelementptr i8, ptr %i.dw, i64 56
  %.val3.i.i = load i64, ptr %i.ec, align 8, !noalias !4097, !noundef !11
  %i.ed = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i164, i64 noundef %.val3.i.i) #42, !noalias !4097 ; 2 uses
  %i.ee = icmp eq ptr %i.dx, %i.du
  br i1 %i.ee, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = ptrtoint ptr %i.du to i64
  %i.eg = ptrtoint ptr %i.dx to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  %i.ei = udiv exact i64 %i.eh, 72
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i, %bb.y
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %bb.y ], [ %i.eq, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ed, %bb.y ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [72 x i8], ptr %i.dx, i64 %.sroa.04.0.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.el = load i8, ptr %i.ek, align 8, !range !34, !alias.scope !4098, !noundef !11
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %.val3.i.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !4098, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %.val4.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !4098, !noundef !11
  %i.ep = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val3.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i) #42, !noalias !4098
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ep, i64 %.sroa.02.0.i.i.i.i)
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %..i.i.i.i.i.i.i.i, %bb.aa ], [ %.sroa.02.0.i.i.i.i, %bb.z ] ; 2 uses
  %i.eq = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.er = icmp eq i64 %i.eq, %i.ei
  br i1 %i.er, label %.loopexit, label %bb.z

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit
  %.val2.i.pr = load i64, ptr %i.j, align 8, !alias.scope !4099 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  %i.es = icmp eq i64 %.val2.i.pr, 0
  br i1 %i.es, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.et, align 8, !alias.scope !4099, !nonnull !11, !noundef !11
  %i.eu = mul nuw i64 %.val2.i.pr, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4099
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit: ; preds = %bb.p, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.n

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i, %bb.x
  %.sroa.3.0.i.ph = phi i64 [ %i.ed, %bb.x ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i ]
  %i.ev = add nuw i64 %.sroa.012.0240, 2          ; 8 uses
  %.not.i.i.i.i165 = icmp slt i64 %i.ev, 0
  br i1 %.not.i.i.i.i165, label %bb.ac, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166, !prof !21

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166: ; preds = %.loopexit
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !4100
  %i.ew = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ev, i64 noundef range(i64 1, 9) 1) #43, !noalias !4100 ; 8 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ac, label %.lr.ph.i.i170.preheader

bb.ac:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166, %.loopexit
  %.sroa.4.0.ph.i.i.i181 = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166 ], [ 0, %.loopexit ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i181, i64 %i.ev) #46, !noalias !4101
  unreachable

.lr.ph.i.i170.preheader:                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166
  store i8 32, ptr %i.ew, align 1, !noalias !4102
  %.sroa.01.01.i.i168 = lshr i64 %i.ev, 1
  br label %.lr.ph.i.i170

._crit_edge.i.i175:                               ; preds = %.lr.ph.i.i170
  %i.ey = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.ey)
  %.not5.i.i177 = icmp eq i64 %i.ev, %i.fa
  br i1 %.not5.i.i177, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182, label %bb.ad

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader, %.lr.ph.i.i170
  %.sroa.01.04.i.i171 = phi i64 [ %.sroa.01.0.i.i173, %.lr.ph.i.i170 ], [ %.sroa.01.01.i.i168, %.lr.ph.i.i170.preheader ]
  %storemerge3.i.i172 = phi i64 [ %i.fa, %.lr.ph.i.i170 ], [ 1, %.lr.ph.i.i170.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %storemerge3.i.i172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %i.ew, i64 %storemerge3.i.i172, i1 false), !noalias !4101
  %i.fa = shl nuw i64 %storemerge3.i.i172, 1      ; 5 uses
  %.sroa.01.0.i.i173 = lshr i64 %.sroa.01.04.i.i171, 1 ; 2 uses
  %.not.i.i174 = icmp eq i64 %.sroa.01.0.i.i173, 0
  br i1 %.not.i.i174, label %._crit_edge.i.i175, label %.lr.ph.i.i170

bb.ad:                                            ; preds = %._crit_edge.i.i175
  %i.fb = sub nsw i64 %i.ev, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr nonnull align 1 %i.ew, i64 %i.fb, i1 false), !noalias !4101
  br label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182

_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182: ; preds = %._crit_edge.i.i175, %bb.ad
  br i1 %.sroa.018.0.in, label %bb.af, label %bb.ae

._crit_edge:                                      ; preds = %bb.v
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #44
  unreachable

bb.ae:                                            ; preds = %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fd = icmp samesign ugt i64 %.sroa.012.0240, 65535
  br i1 %i.fd, label %bb.ah, label %bb.ag, !prof !40

bb.af:                                            ; preds = %bb.ag, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182
  call void @llvm.experimental.noalias.scope.decl(metadata !4103)
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  %i.fe = load i64, ptr %i.bq, align 8, !alias.scope !4105, !noalias !4106, !noundef !11 ; 3 uses
  %i.ff = load i64, ptr %i.bp, align 8, !range !12, !alias.scope !4105, !noalias !4106, !noundef !11
  %i.fg = sub i64 %i.ff, %i.fe
  %i.fh = icmp ult i64 %i.fg, 16
  br i1 %i.fh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184: ; preds = %bb.af
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.fe, i64 noundef 16, i64 noundef 1, i64 noundef 1) #43, !noalias !4106
  %i.fi = load i64, ptr %i.bq, align 8, !alias.scope !4107, !noalias !4106, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185: ; preds = %bb.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184
  %.sink314 = phi i64 [ %i.fi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184 ], [ %i.fe, %bb.af ] ; 3 uses
  %i.fj = icmp sgt i64 %.sink314, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !4107, !noalias !4106, !nonnull !11, !noundef !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sink314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fm, ptr noundef nonnull readonly align 1 dereferenceable(16) @176, i64 16, i1 false), !noalias !4107
  %i.fn = add nuw i64 %.sink314, 16
  store i64 %i.fn, ptr %i.bq, align 8, !alias.scope !4107, !noalias !4106
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fr = icmp samesign ugt i64 %.sroa.012.0240, 65535
  %i.fs = trunc nuw i64 %.sroa.012.0240 to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fu = trunc nuw i64 %.sroa.012.0240 to i16
  store ptr @162, ptr %i.i, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.432.0..sroa_idx, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.fv, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i16 %i.fu, ptr %.sroa.436.0..sroa_idx, align 8
  %i.fw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @174, ptr noundef nonnull %i.i) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @164, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #44
  unreachable

bb.ai:                                            ; preds = %.backedge, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185
  %i.fx = phi ptr [ %i.dt, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185 ], [ %i.fz, %.backedge ] ; 8 uses
  %i.fy = icmp eq ptr %i.fx, %i.du
  br i1 %i.fy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.gb = load i8, ptr %i.ga, align 8, !range !34, !noalias !4108, !noundef !11
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %.backedge, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit

.backedge:                                        ; preds = %bb.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit231
  br label %bb.ai

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !nonnull !11, !noundef !11
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !11
  store ptr %i.ge, ptr %i.h, align 8
  store i64 %i.gg, ptr %i.fo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.453.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.554.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.458.0..sroa_idx, align 8
  store ptr %i.h, ptr %i.fp, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.462.0..sroa_idx, align 8
  %i.gh = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @75, ptr noundef nonnull %i.f) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gj = load i64, ptr %i.gi, align 8, !range !13, !noundef !11
  %.not139 = icmp eq i64 %i.gj, -1
  br i1 %.not139, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge, label %bb.av

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit
  %.pre275 = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !4109
  br label %bb.aw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.ai
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ew, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4110
  call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  %.val1.i190 = load i64, ptr %i.dp, align 8, !alias.scope !4111, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  %i.gk = icmp eq i64 %.val1.i190, 0
  br i1 %i.gk, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197
  %.sroa.0.03.i.i.i192 = phi i64 [ %i.gm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [72 x i8], ptr %i.dt, i64 %.sroa.0.03.i.i.i192 ; 4 uses
  %i.gm = add nuw nsw i64 %.sroa.0.03.i.i.i192, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4113)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  %i.go = load i64, ptr %i.gn, align 8, !range !13, !alias.scope !4115, !noalias !4111, !noundef !11 ; 3 uses
  %i.gp = icmp eq i64 %i.go, -1
  br i1 %i.gp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i191
  call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  call void @llvm.experimental.noalias.scope.decl(metadata !4117)
  %i.gq = icmp eq i64 %i.go, 0
  br i1 %i.gq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %.val1.i.i.i.i.i.i.i193 = load ptr, ptr %i.gr, align 8, !alias.scope !4118, !noalias !4111, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i193, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4119
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194: ; preds = %bb.al, %bb.ak, %.lr.ph.i.i.i191
  call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  %.val.i.i.i.i.i195 = load i64, ptr %i.gl, align 8, !range !12, !alias.scope !4121, !noalias !4111, !noundef !11 ; 2 uses
  %i.gs = icmp eq i64 %.val.i.i.i.i.i195, 0
  br i1 %i.gs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.val1.i.i.i.i.i196 = load ptr, ptr %i.gt, align 8, !alias.scope !4121, !noalias !4111, !nonnull !11, !noundef !11
  %i.gu = shl nuw i64 %.val.i.i.i.i.i195, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i196, i64 noundef %i.gu, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4122
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197: ; preds = %bb.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194
  %i.gv = icmp eq i64 %i.gm, %.val1.i190
  br i1 %i.gv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198, label %.lr.ph.i.i.i191

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  %.val2.i199 = load i64, ptr %i.j, align 8, !range !12, !alias.scope !4111, !noundef !11 ; 2 uses
  %i.gw = icmp eq i64 %.val2.i199, 0
  br i1 %i.gw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200, label %bb.an

bb.an:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198
  %i.gx = mul nuw i64 %.val2.i199, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4111
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not = xor i1 %i.bn, true
  %or.cond3 = and i1 %.sroa.015.0, %.not
  br i1 %or.cond3, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  call void @llvm.experimental.noalias.scope.decl(metadata !4124)
  %.val.i.i201 = load i64, ptr %i.k, align 8, !range !12, !alias.scope !4125, !noundef !11 ; 2 uses
  %i.gy = icmp eq i64 %.val.i.i201, 0
  br i1 %i.gy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !4125, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i201, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4125
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink7.i.i, i64 noundef %.sroa.012.0240, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4126
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8128.0..sroa_idx, align 8
  %.sroa.10131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.10131.0..sroa_idx, align 8
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207: ; preds = %bb.ar, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !4127)
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !4129
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !4130, !noalias !4129, !noundef !11 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1
  call void @llvm.assume(i1 %i.hb)
  %.pre278.pre = load i64, ptr %i.c, align 8, !range !12, !alias.scope !4131, !noalias !4132
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre277 = load ptr, ptr %.phi.trans.insert276, align 8, !alias.scope !4130, !noalias !4129 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre277, i64 %i.ha
  store i16 2570, ptr %i.hc, align 1, !noalias !4130
  %i.hd = add nuw i64 %i.ha, 2                    ; 2 uses
  store i64 %i.hd, ptr %i.gz, align 8, !alias.scope !4130, !noalias !4129
  br label %bb.as

bb.as:                                            ; preds = %bb.bf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207
  %i.he = phi ptr [ inttoptr (i64 1 to ptr), %bb.bf ], [ %.pre277, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ]
  %i.hf = phi i64 [ 0, %bb.bf ], [ %.pre278.pre, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ]
  %i.hg = phi i64 [ 0, %bb.bf ], [ %i.hd, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  call void @llvm.experimental.noalias.scope.decl(metadata !4134)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.hi = sub i64 %i.hf, %i.hg
  %i.hj = icmp ugt i64 %4, %i.hi
  br i1 %i.hj, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210: ; preds = %bb.as
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hg, i64 noundef %4, i64 noundef 1, i64 noundef 1) #43, !noalias !4132
  %i.hk = load i64, ptr %i.hh, align 8, !alias.scope !4135, !noalias !4132, !noundef !11 ; 2 uses
  %i.hl = icmp sgt i64 %i.hk, -1
  call void @llvm.assume(i1 %i.hl)
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre280 = load ptr, ptr %.phi.trans.insert279, align 8, !alias.scope !4135, !noalias !4132
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211

end_hunk_0
