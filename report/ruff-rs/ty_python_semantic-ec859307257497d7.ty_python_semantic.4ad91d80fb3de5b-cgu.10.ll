Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.10?download=true
inline.NumInlined: 9275
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_6NodeId9tree_foldINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1r_5chain5ChainIB1n_INtNtB1r_6filter6FilterINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB8_10typed_dict14TypedDictFieldENCNCNvMs4_B4C_NtNtB8_8relation19DisjointnessChecker20check_typeddict_pairs_00ENCB5c_s_0EIB1n_IB2B_B2X_NCB5c_s0_0ENCB5c_s1_0EENCINvXs_B6_B2a_INtB6_28IteratorConstraintsExtensionTRB4A_NtB4C_17TypedDictOpennessEE8when_anyNCB5c_s2_0E0ENvB2_2orEBa_:bb.a
  br i1 %i.co, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i, label %bb.w

bb.ac:                                            ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !5007
  unreachable

bb.ad:                                            ; preds = %bb.t, %bb.z, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.cm, %bb.z ], [ %i.cf, %bb.v ]
  %i.cq = load i64, ptr %0, align 8, !noundef !3
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit

bb.ae:                                            ; preds = %bb.s
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ct = load i64, ptr %0, align 8, !noundef !3
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %0, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit80, %bb.af
  %.sroa.0.1.pn = phi i32 [ %3, %.loopexit80 ], [ %.sroa.0.0.lcssa.i, %bb.af ]
  %.sroa.4.1.pn = phi i32 [ %.sroa.4.1, %.loopexit80 ], [ %.sroa.6.0.lcssa.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.pn = insertvalue { i32, i32 } poison, i32 %.sroa.0.1.pn, 0
  %.merged = insertvalue { i32, i32 } %.pn, i32 %.sroa.4.1.pn, 1
  ret { i32, i32 } %.merged

bb.ah:                                            ; preds = %.loopexit.split-lp
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.ai:                                            ; preds = %bb.ao, %bb.al, %bb.s
  unreachable

.lr.ph:                                           ; preds = %bb.as
  %i.cw = getelementptr [12 x i8], ptr %.sink10.i, i64 %.sink9.i
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = load i8, ptr %i.cx, align 4, !noundef !3
  %i.cz = icmp eq i8 %i.cy, %i.dx
  br i1 %i.cz, label %.lr.ph187, label %._crit_edge

._crit_edge:                                      ; preds = %bb.as, %.lr.ph, %.lr.ph.preheader, %.preheader
  %.sroa.09.0.lcssa = phi i32 [ %i.bj, %.preheader ], [ %i.bj, %.lr.ph.preheader ], [ %i.do, %.lr.ph ], [ %i.do, %bb.as ]
  %.sroa.04.0.lcssa = phi i8 [ 0, %.preheader ], [ 0, %.lr.ph.preheader ], [ %i.dx, %.lr.ph ], [ %i.dx, %bb.as ]
  %.sroa.01.0.lcssa = phi i32 [ %i.bk, %.preheader ], [ %i.bk, %.lr.ph.preheader ], [ %.sroa.011.0.i, %.lr.ph ], [ %.sroa.011.0.i, %bb.as ]
  %.lcssa97 = phi i64 [ %i.bm, %.preheader ], [ %i.bm, %.lr.ph.preheader ], [ %i.dy, %.lr.ph ], [ %i.dy, %bb.as ]
  %.lcssa92 = phi i1 [ %i.bn, %.preheader ], [ %i.bn, %.lr.ph.preheader ], [ %i.dz, %.lr.ph ], [ %i.dz, %bb.as ]
  %.sink10.i.lcssa = phi ptr [ %.sink10.i125, %.preheader ], [ %.sink10.i125, %.lr.ph.preheader ], [ %.sink10.i, %.lr.ph ], [ %.sink10.i, %bb.as ]
  %.sink8.i.i = select i1 %.lcssa92, ptr %i.al, ptr %i.q ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %.lcssa97, i64 8)
  %i.da = load i64, ptr %.sink8.i.i, align 8, !alias.scope !5009, !noalias !5012, !noundef !3 ; 2 uses
  %i.db = icmp eq i64 %i.da, %.sink.i.i
  br i1 %i.db, label %bb.aj, label %bb.ak, !prof !66

bb.aj:                                            ; preds = %._crit_edge
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_E21reserve_one_uncheckedBP_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.p)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc44:                                         ; preds = %bb.aj
  %i.dc = load ptr, ptr %i.p, align 8, !alias.scope !5009, !noalias !5012, !nonnull !3, !noundef !3
  %.pre.i = load i64, ptr %i.al, align 8, !alias.scope !5009, !noalias !5012
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc44, %._crit_edge
  %i.dd = phi i64 [ %.pre.i, %.noexc44 ], [ %i.da, %._crit_edge ]
  %.sroa.01.0.i = phi ptr [ %i.al, %.noexc44 ], [ %.sink8.i.i, %._crit_edge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.dc, %.noexc44 ], [ %.sink10.i.lcssa, %._crit_edge ]
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.dd ; 3 uses
  store i32 %.sroa.09.0.lcssa, ptr %i.de, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %.sroa.01.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i8 %.sroa.04.0.lcssa, ptr %.sroa.553.0..sroa_idx, align 4
  %i.df = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !5009, !noalias !5012, !noundef !3
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %.sroa.01.0.i, align 8, !alias.scope !5009, !noalias !5012
  br label %bb.b

.lr.ph187:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.09.0128186 = phi i32 [ %i.do, %.lr.ph ], [ %i.bj, %.lr.ph.preheader ]
  %.sroa.04.0129185 = phi i8 [ %i.dx, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.01.0130184 = phi i32 [ %.sroa.011.0.i, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 4 uses
  %i.dh = phi i1 [ %i.dz, %.lr.ph ], [ %i.bn, %.lr.ph.preheader ]
  %.sink10.i131183 = phi ptr [ %.sink10.i, %.lr.ph ], [ %.sink10.i125, %.lr.ph.preheader ]
  %.sink8.i = select i1 %i.dh, ptr %i.al, ptr %i.q ; 2 uses
  %i.di = load i64, ptr %.sink8.i, align 8, !noundef !3 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.al, label %bb.am, !prof !66

bb.al:                                            ; preds = %.lr.ph187
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #58
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %.lr.ph187
  %i.dk = add i64 %i.di, -1                       ; 2 uses
  store i64 %i.dk, ptr %.sink8.i, align 8
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i131183, i64 %i.dk ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %.sroa.420.0.copyload = load i32, ptr %.sroa.420.0..sroa_idx, align 4 ; 4 uses
  %i.dm = load i64, ptr %0, align 8, !noundef !3
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.an, label %bb.ao, !prof !53

bb.an:                                            ; preds = %bb.am
  %.sroa.019.0.copyload = load i32, ptr %i.dl, align 4
  store i64 -1, ptr %0, align 8
  %i.do = invoke noundef i32 @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId2or(i32 noundef %.sroa.019.0.copyload, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.am, i32 noundef %.sroa.09.0128186)
          to label %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId2orINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit unwind label %bb.ap ; 4 uses

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #58
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ar, %bb.an
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load i64, ptr %0, align 8, !noundef !3
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %0, align 8
  br label %.loopexit.split-lp

_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId2orINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit: ; preds = %bb.an
  %.not.i48 = icmp eq i32 %.sroa.420.0.copyload, 0
  br i1 %.not.i48, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit, label %bb.aq

bb.aq:                                            ; preds = %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId2orINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit
  %.not17.i = icmp eq i32 %.sroa.01.0130184, 0
  %i.ds = icmp eq i32 %.sroa.420.0.copyload, %.sroa.01.0130184
  %or.cond.i = or i1 %.not17.i, %i.ds
  br i1 %or.cond.i, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.414.0.insert.ext.i = zext i32 %.sroa.01.0130184 to i64
  %.sroa.414.0.insert.shift.i = shl nuw i64 %.sroa.414.0.insert.ext.i, 32
  %.sroa.013.0.insert.ext.i = zext i32 %.sroa.420.0.copyload to i64
  %.sroa.013.0.insert.insert.i = or disjoint i64 %.sroa.414.0.insert.shift.i, %.sroa.013.0.insert.ext.i
  %i.dt = invoke fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19intern_source_order(ptr noalias noundef align 8 dereferenceable(688) %i.am, i64 %.sroa.013.0.insert.insert.i)
          to label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit unwind label %bb.ap

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit: ; preds = %bb.aq, %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId2orINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit, %bb.ar
  %.sroa.011.0.i = phi i32 [ %.sroa.420.0.copyload, %bb.aq ], [ %.sroa.01.0130184, %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId2orINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit ], [ %i.dt, %bb.ar ] ; 4 uses
  %i.du = icmp eq i32 %i.do, %3
  %i.dv = load i64, ptr %0, align 8, !noundef !3
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %0, align 8
  br i1 %i.du, label %.loopexit80, label %bb.as

bb.as:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit
  %i.dx = add i8 %.sroa.04.0129185, 1             ; 4 uses
  %i.dy = load i64, ptr %i.q, align 8, !alias.scope !4988, !noalias !4991, !noundef !3 ; 4 uses
  %i.dz = icmp ugt i64 %i.dy, 8                   ; 5 uses
  %i.ea = load ptr, ptr %i.p, align 8, !alias.scope !4988, !noalias !4991, !nonnull !3
  %i.eb = load i64, ptr %i.al, align 8, !alias.scope !4988, !noalias !4991
  %.sink10.i = select i1 %i.dz, ptr %i.ea, ptr %i.p ; 4 uses
  %.sink9.i = select i1 %i.dz, i64 %i.eb, i64 %i.dy ; 2 uses
  %.not = icmp eq i64 %.sink9.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit80:                                      ; preds = %bb.q, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit
  %.sroa.4.1 = phi i32 [ %.sroa.011.0.i, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit ], [ %i.bk, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.p)
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ap, %bb.ae
  %.pn.ph = phi { ptr, i32 } [ %i.cs, %bb.ae ], [ %i.dp, %bb.ap ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit74, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit77, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit unwind label %bb.ah

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit: ; preds = %.loopexit.split-lp, %bb.ad
  %.pn70 = phi { ptr, i32 } [ %eh.lpad-body, %bb.ad ], [ %.pn.ph, %.loopexit.split-lp ]
  resume { ptr, i32 } %.pn70
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_6NodeId9tree_foldINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1r_5chain5ChainINtNtB1r_3zip3ZipINtNtNtB1v_5slice4iter4IterNtB8_4TypeEB2M_EB2v_ENCINvXs_B6_B2a_INtB6_28IteratorConstraintsExtensionTRB3d_B4o_EE8when_allNCNvMs0_NtB8_5tupleNtNtB8_8relation19TypeRelationChecker35check_variable_length_vs_tuple_spec0E0ENvB2_3andEBa_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [120 x i8], align 8               ; 12 uses
  %i.f = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 5 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !5014
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.545.0.copyload = load ptr, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.746.0.copyload = load i64, ptr %.sroa.746.0..sroa_idx, align 8
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.847.0.copyload = load i64, ptr %.sroa.847.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.1248.0.copyload = load i64, ptr %.sroa.1248.0..sroa_idx, align 8
  %.sroa.1349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.1349.0.copyload = load i64, ptr %.sroa.1349.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.not.i.i.i.i = icmp ne ptr %.sroa.11.0.copyload, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.y, %bb.a
  %.sroa.1349.0 = phi i64 [ %.sroa.1349.0.copyload, %bb.a ], [ %.sroa.1349.1, %bb.y ] ; 5 uses
  %.sroa.847.0 = phi i64 [ %.sroa.847.0.copyload, %bb.a ], [ %.sroa.847.1, %bb.y ] ; 5 uses
  %.sroa.545.0 = phi ptr [ %.sroa.545.0.copyload, %bb.a ], [ %.sroa.545.2, %bb.y ] ; 3 uses
  %.not.i.i.i = icmp ne ptr %.sroa.545.0, null
  %i.n = icmp ult i64 %.sroa.847.0, %.sroa.10.0.copyload
  %or.cond = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i: ; preds = %bb.b
  %i.o = icmp ult i64 %.sroa.1349.0, %.sroa.15.0.copyload
  %or.cond75 = select i1 %.not.i.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond75, label %bb.c, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i: ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.847.0, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.545.0, i64 %.sroa.847.0
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i

bb.c:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i
  %i.r = add nuw i64 %.sroa.1349.0, 1
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11.0.copyload, i64 %.sroa.1349.0
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i: ; preds = %bb.c, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i
  %.sroa.1349.1 = phi i64 [ %i.r, %bb.c ], [ %.sroa.1349.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sroa.847.1 = phi i64 [ %.sroa.847.0, %bb.c ], [ %i.p, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sroa.545.2 = phi ptr [ null, %bb.c ], [ %.sroa.545.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sink12.i.sroa.phi.sroa.speculated.in = phi i64 [ %.sroa.1248.0.copyload, %bb.c ], [ %.sroa.746.0.copyload, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sink.i = phi i64 [ %.sroa.1349.0, %bb.c ], [ %.sroa.847.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.pn5.i.i.i = phi ptr [ %i.s, %bb.c ], [ %i.q, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sink12.i.sroa.phi.sroa.speculated = inttoptr i64 %.sink12.i.sroa.phi.sroa.speculated.in to ptr
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink12.i.sroa.phi.sroa.speculated, i64 %.sink.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5017
  call void @llvm.experimental.noalias.scope.decl(metadata !5024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %.pn5.i.i.i, i64 16, i1 false), !noalias !5031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !5032
  %i.u = load ptr, ptr %.sroa.0.0.copyload, align 8, !alias.scope !5024, !noalias !5033, !nonnull !3, !align !9, !noundef !3
  %i.v = load ptr, ptr %i.h, align 8, !alias.scope !5024, !noalias !5033, !nonnull !3, !noundef !3
  %i.w = load ptr, ptr %i.i, align 8, !alias.scope !5024, !noalias !5033, !nonnull !3, !align !9, !noundef !3
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.w, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a)
          to label %bb.d unwind label %.loopexit

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.z, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5027
  %i.x = load i32, ptr %i.j, align 8, !noalias !5017, !noundef !3 ; 4 uses
  %i.y = load i32, ptr %i.k, align 4, !noalias !5017, !noundef !3 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5017
  %i.z = icmp eq i32 %i.x, %3
  br i1 %i.z, label %.loopexit78, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aa = load i64, ptr %i.g, align 8, !alias.scope !5034, !noalias !5037, !noundef !3 ; 4 uses
  %i.ab = icmp ugt i64 %i.aa, 8                   ; 5 uses
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !5034, !noalias !5037, !nonnull !3
  %i.ad = load i64, ptr %i.l, align 8, !alias.scope !5034, !noalias !5037
  %.sink10.i121 = select i1 %i.ab, ptr %i.ac, ptr %i.f ; 4 uses
  %.sink9.i122 = select i1 %i.ab, i64 %i.ad, i64 %i.aa ; 2 uses
  %.not123 = icmp eq i64 %.sink9.i122, 0
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ae = getelementptr [12 x i8], ptr %.sink10.i121, i64 %.sink9.i122
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i8, ptr %i.af, align 4, !noundef !3
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %.lr.ph175, label %._crit_edge

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i
  %i.ai = load i64, ptr %0, align 8, !noundef !3
  %.not76 = icmp eq i64 %i.ai, 0
  br i1 %.not76, label %bb.f, label %bb.g, !prof !53

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  invoke void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits7collect12IntoIterator9into_iterBP_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.d)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #58
          to label %bb.w unwind label %bb.s

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !5039)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.am = load i64, ptr %i.ak, align 8, !alias.scope !5042, !noalias !5045, !noundef !3 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !alias.scope !5042, !noalias !5045, !noundef !3 ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !5048, !noalias !5051, !noundef !3
  %i.ar = icmp ugt i64 %i.aq, 8
  %i.as = load ptr, ptr %i.e, align 8, !alias.scope !5048, !noalias !5051, !nonnull !3
  %.sink10.i.i.i = select i1 %i.ar, ptr %i.as, ptr %i.e
  br label %bb.k

bb.j:                                             ; preds = %bb.m, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e) #57
          to label %bb.r unwind label %bb.q, !noalias !5053

bb.k:                                             ; preds = %bb.p, %.lr.ph.i
  %i.au = phi i64 [ %i.am, %.lr.ph.i ], [ %i.av, %bb.p ] ; 2 uses
  %.sroa.0.022.i = phi i32 [ %2, %.lr.ph.i ], [ %i.ax, %bb.p ]
  %.sroa.6.021.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.011.0.i.i.i, %bb.p ] ; 4 uses
  %i.av = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.av, ptr %i.ak, align 8, !alias.scope !5042, !noalias !5045
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i, i64 %i.au ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i = load i32, ptr %i.aw, align 4, !noalias !5053
  %.sroa.5.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.sroa.5.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.sroa.5.0..sroa_idx.i, align 4, !noalias !5053 ; 4 uses
  %i.ax = invoke noundef i32 @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId3and(i32 noundef %.sroa.0.022.i, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.m, i32 noundef %.sroa.5.sroa.0.0.copyload.i)
          to label %.noexc.i unwind label %bb.j, !noalias !5054 ; 2 uses

.noexc.i:                                         ; preds = %bb.k
  %.not.i.i.i35 = icmp eq i32 %.sroa.6.021.i, 0
  br i1 %.not.i.i.i35, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  %.not17.i.i.i = icmp eq i32 %.sroa.5.sroa.5.0.copyload.i, 0
  %i.ay = icmp eq i32 %.sroa.6.021.i, %.sroa.5.sroa.5.0.copyload.i
  %or.cond.i.i.i = or i1 %.not17.i.i.i, %i.ay
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.414.0.insert.ext.i.i.i = zext i32 %.sroa.5.sroa.5.0.copyload.i to i64
  %.sroa.414.0.insert.shift.i.i.i = shl nuw i64 %.sroa.414.0.insert.ext.i.i.i, 32
  %.sroa.013.0.insert.ext.i.i.i = zext i32 %.sroa.6.021.i to i64
  %.sroa.013.0.insert.insert.i.i.i = or disjoint i64 %.sroa.414.0.insert.shift.i.i.i, %.sroa.013.0.insert.ext.i.i.i
  %i.az = invoke fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19intern_source_order(ptr noalias noundef align 8 dereferenceable(688) %i.m, i64 %.sroa.013.0.insert.insert.i.i.i)
          to label %bb.p unwind label %bb.j, !noalias !5054

_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i: ; preds = %bb.p, %bb.i
  %.sroa.6.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %.sroa.011.0.i.i.i, %bb.p ]
  %.sroa.0.0.lcssa.i = phi i32 [ %2, %bb.i ], [ %i.ax, %bb.p ]
  invoke void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i unwind label %bb.n, !noalias !5053

bb.n:                                             ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %bb.r unwind label %bb.o, !noalias !5053

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !5053
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i: ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %bb.t unwind label %bb.h

bb.p:                                             ; preds = %bb.m, %bb.l, %.noexc.i
  %.sroa.011.0.i.i.i = phi i32 [ %.sroa.6.021.i, %bb.l ], [ %.sroa.5.sroa.5.0.copyload.i, %.noexc.i ], [ %i.az, %bb.m ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, %i.an
  br i1 %i.bc, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i, label %bb.k

bb.q:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !5053
  unreachable

bb.r:                                             ; preds = %bb.h, %bb.n, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ba, %bb.n ], [ %i.at, %bb.j ]
  %i.be = load i64, ptr %0, align 8, !noundef !3
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit

bb.s:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bh = load i64, ptr %0, align 8, !noundef !3
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit78, %bb.t
  %.sroa.0.1.pn = phi i32 [ %3, %.loopexit78 ], [ %.sroa.0.0.lcssa.i, %bb.t ]
  %.sroa.4.1.pn = phi i32 [ %.sroa.4.1, %.loopexit78 ], [ %.sroa.6.0.lcssa.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pn = insertvalue { i32, i32 } poison, i32 %.sroa.0.1.pn, 0
  %.merged = insertvalue { i32, i32 } %.pn, i32 %.sroa.4.1.pn, 1
  ret { i32, i32 } %.merged

bb.v:                                             ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.w:                                             ; preds = %bb.ac, %bb.z, %bb.g
  unreachable

.lr.ph:                                           ; preds = %bb.ag
  %i.bk = getelementptr [12 x i8], ptr %.sink10.i, i64 %.sink9.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i8, ptr %i.bl, align 4, !noundef !3
  %i.bn = icmp eq i8 %i.bm, %i.cl
  br i1 %i.bn, label %.lr.ph175, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ag, %.lr.ph, %.lr.ph.preheader, %.preheader
  %.sroa.09.0.lcssa = phi i32 [ %i.x, %.preheader ], [ %i.x, %.lr.ph.preheader ], [ %i.cc, %.lr.ph ], [ %i.cc, %bb.ag ]
  %.sroa.04.0.lcssa = phi i8 [ 0, %.preheader ], [ 0, %.lr.ph.preheader ], [ %i.cl, %.lr.ph ], [ %i.cl, %bb.ag ]
  %.sroa.01.0.lcssa = phi i32 [ %i.y, %.preheader ], [ %i.y, %.lr.ph.preheader ], [ %.sroa.011.0.i, %.lr.ph ], [ %.sroa.011.0.i, %bb.ag ]
  %.lcssa93 = phi i64 [ %i.aa, %.preheader ], [ %i.aa, %.lr.ph.preheader ], [ %i.cm, %.lr.ph ], [ %i.cm, %bb.ag ]
  %.lcssa88 = phi i1 [ %i.ab, %.preheader ], [ %i.ab, %.lr.ph.preheader ], [ %i.cn, %.lr.ph ], [ %i.cn, %bb.ag ]
  %.sink10.i.lcssa = phi ptr [ %.sink10.i121, %.preheader ], [ %.sink10.i121, %.lr.ph.preheader ], [ %.sink10.i, %.lr.ph ], [ %.sink10.i, %bb.ag ]
  %.sink8.i.i = select i1 %.lcssa88, ptr %i.l, ptr %i.g ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %.lcssa93, i64 8)
  %i.bo = load i64, ptr %.sink8.i.i, align 8, !alias.scope !5055, !noalias !5058, !noundef !3 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %.sink.i.i
  br i1 %i.bp, label %bb.x, label %bb.y, !prof !66

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_E21reserve_one_uncheckedBP_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %.noexc38 unwind label %.loopexit

.noexc38:                                         ; preds = %bb.x
  %i.bq = load ptr, ptr %i.f, align 8, !alias.scope !5055, !noalias !5058, !nonnull !3, !noundef !3
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !5055, !noalias !5058
  br label %bb.y

bb.y:                                             ; preds = %.noexc38, %._crit_edge
  %i.br = phi i64 [ %.pre.i, %.noexc38 ], [ %i.bo, %._crit_edge ]
  %.sroa.01.0.i = phi ptr [ %i.l, %.noexc38 ], [ %.sink8.i.i, %._crit_edge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.bq, %.noexc38 ], [ %.sink10.i.lcssa, %._crit_edge ]
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.br ; 3 uses
  store i32 %.sroa.09.0.lcssa, ptr %i.bs, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 %.sroa.01.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i8 %.sroa.04.0.lcssa, ptr %.sroa.555.0..sroa_idx, align 4
  %i.bt = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !5055, !noalias !5058, !noundef !3
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %.sroa.01.0.i, align 8, !alias.scope !5055, !noalias !5058
  br label %bb.b

.lr.ph175:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.09.0124174 = phi i32 [ %i.cc, %.lr.ph ], [ %i.x, %.lr.ph.preheader ]
  %.sroa.04.0125173 = phi i8 [ %i.cl, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.01.0126172 = phi i32 [ %.sroa.011.0.i, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 4 uses
  %i.bv = phi i1 [ %i.cn, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ]
  %.sink10.i127171 = phi ptr [ %.sink10.i, %.lr.ph ], [ %.sink10.i121, %.lr.ph.preheader ]
  %.sink8.i = select i1 %i.bv, ptr %i.l, ptr %i.g ; 2 uses
  %i.bw = load i64, ptr %.sink8.i, align 8, !noundef !3 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %bb.aa, !prof !66

bb.z:                                             ; preds = %.lr.ph175
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #58
          to label %bb.w unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %.lr.ph175
  %i.by = add i64 %i.bw, -1                       ; 2 uses
  store i64 %i.by, ptr %.sink8.i, align 8
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i127171, i64 %i.by ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.sroa.420.0.copyload = load i32, ptr %.sroa.420.0..sroa_idx, align 4 ; 4 uses
  %i.ca = load i64, ptr %0, align 8, !noundef !3
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.ab, label %bb.ac, !prof !53

bb.ab:                                            ; preds = %bb.aa
  %.sroa.019.0.copyload = load i32, ptr %i.bz, align 4
  store i64 -1, ptr %0, align 8
  %i.cc = invoke noundef i32 @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId3and(i32 noundef %.sroa.019.0.copyload, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.m, i32 noundef %.sroa.09.0124174)
          to label %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId3andINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit unwind label %bb.ad ; 4 uses

bb.ac:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #58
          to label %bb.w unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load i64, ptr %0, align 8, !noundef !3
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %0, align 8
  br label %bb.ah

_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId3andINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit: ; preds = %bb.ab
  %.not.i = icmp eq i32 %.sroa.420.0.copyload, 0
  br i1 %.not.i, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit, label %bb.ae

bb.ae:                                            ; preds = %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId3andINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit
  %.not17.i = icmp eq i32 %.sroa.01.0126172, 0
  %i.cg = icmp eq i32 %.sroa.420.0.copyload, %.sroa.01.0126172
  %or.cond.i = or i1 %.not17.i, %i.cg
  br i1 %or.cond.i, label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.414.0.insert.ext.i = zext i32 %.sroa.01.0126172 to i64
  %.sroa.414.0.insert.shift.i = shl nuw i64 %.sroa.414.0.insert.ext.i, 32
  %.sroa.013.0.insert.ext.i = zext i32 %.sroa.420.0.copyload to i64
  %.sroa.013.0.insert.insert.i = or disjoint i64 %.sroa.414.0.insert.shift.i, %.sroa.013.0.insert.ext.i
  %i.ch = invoke fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19intern_source_order(ptr noalias noundef align 8 dereferenceable(688) %i.m, i64 %.sroa.013.0.insert.insert.i)
          to label %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit unwind label %bb.ad

_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit: ; preds = %bb.ae, %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId3andINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit, %bb.af
  %.sroa.011.0.i = phi i32 [ %.sroa.420.0.copyload, %bb.ae ], [ %.sroa.01.0126172, %_RNvYNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB8_6NodeId3andINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTB12_QNtB8_20ConstraintSetStorageB12_EE8call_mutBc_.exit ], [ %i.ch, %bb.af ] ; 4 uses
  %i.ci = icmp eq i32 %i.cc, %3
  %i.cj = load i64, ptr %0, align 8, !noundef !3
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %0, align 8
  br i1 %i.ci, label %.loopexit78, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit
  %i.cl = add i8 %.sroa.04.0125173, 1             ; 4 uses
  %i.cm = load i64, ptr %i.g, align 8, !alias.scope !5034, !noalias !5037, !noundef !3 ; 4 uses
  %i.cn = icmp ugt i64 %i.cm, 8                   ; 5 uses
  %i.co = load ptr, ptr %i.f, align 8, !alias.scope !5034, !noalias !5037, !nonnull !3
  %i.cp = load i64, ptr %i.l, align 8, !alias.scope !5034, !noalias !5037
  %.sink10.i = select i1 %i.cn, ptr %i.co, ptr %i.f ; 4 uses
  %.sink9.i = select i1 %i.cn, i64 %i.cp, i64 %i.cm ; 2 uses
  %.not = icmp eq i64 %.sink9.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit78:                                      ; preds = %bb.d, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit
  %.sroa.4.1 = phi i32 [ %.sroa.011.0.i, %_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage20ordered_source_order.exit ], [ %i.y, %bb.d ]
  call void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
  br label %bb.u

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ad, %bb.s
  %.pn.ph = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %i.cd, %bb.ad ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit: ; preds = %bb.ah, %bb.r
  %.pn73 = phi { ptr, i32 } [ %eh.lpad-body, %bb.r ], [ %.pn.ph, %bb.ah ]
  resume { ptr, i32 } %.pn73
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB6_6NodeId9tree_foldINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1r_5chain5ChainINtNtB1r_3zip3ZipINtNtNtB1v_5slice4iter4IterNtB8_4TypeEB2M_EB2v_ENCINvXs_B6_B2a_INtB6_28IteratorConstraintsExtensionTRB3d_B4o_EE8when_allNCNvMs0_NtB8_5tupleNtNtB8_8relation19TypeRelationChecker35check_variable_length_vs_tuple_specs_0E0ENvB2_3andEBa_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [120 x i8], align 8               ; 12 uses
  %i.f = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 5 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !5060
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.545.0.copyload = load ptr, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.746.0.copyload = load i64, ptr %.sroa.746.0..sroa_idx, align 8
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.847.0.copyload = load i64, ptr %.sroa.847.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.1248.0.copyload = load i64, ptr %.sroa.1248.0..sroa_idx, align 8
  %.sroa.1349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.1349.0.copyload = load i64, ptr %.sroa.1349.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %.not.i.i.i.i = icmp ne ptr %.sroa.11.0.copyload, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.y, %bb.a
  %.sroa.1349.0 = phi i64 [ %.sroa.1349.0.copyload, %bb.a ], [ %.sroa.1349.1, %bb.y ] ; 5 uses
  %.sroa.847.0 = phi i64 [ %.sroa.847.0.copyload, %bb.a ], [ %.sroa.847.1, %bb.y ] ; 5 uses
  %.sroa.545.0 = phi ptr [ %.sroa.545.0.copyload, %bb.a ], [ %.sroa.545.2, %bb.y ] ; 3 uses
  %.not.i.i.i = icmp ne ptr %.sroa.545.0, null
  %i.n = icmp ult i64 %.sroa.847.0, %.sroa.10.0.copyload
  %or.cond = select i1 %.not.i.i.i, i1 %i.n, i1 false
  br i1 %or.cond, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i: ; preds = %bb.b
  %i.o = icmp ult i64 %.sroa.1349.0, %.sroa.15.0.copyload
  %or.cond75 = select i1 %.not.i.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond75, label %bb.c, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i: ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.847.0, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.545.0, i64 %.sroa.847.0
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i

bb.c:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i
  %i.r = add nuw i64 %.sroa.1349.0, 1
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11.0.copyload, i64 %.sroa.1349.0
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i: ; preds = %bb.c, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i
  %.sroa.1349.1 = phi i64 [ %i.r, %bb.c ], [ %.sroa.1349.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sroa.847.1 = phi i64 [ %.sroa.847.0, %bb.c ], [ %i.p, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sroa.545.2 = phi ptr [ null, %bb.c ], [ %.sroa.545.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sink12.i.sroa.phi.sroa.speculated.in = phi i64 [ %.sroa.1248.0.copyload, %bb.c ], [ %.sroa.746.0.copyload, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sink.i = phi i64 [ %.sroa.1349.0, %bb.c ], [ %.sroa.847.0, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.pn5.i.i.i = phi ptr [ %i.s, %bb.c ], [ %i.q, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.i.i ]
  %.sink12.i.sroa.phi.sroa.speculated = inttoptr i64 %.sink12.i.sroa.phi.sroa.speculated.in to ptr
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink12.i.sroa.phi.sroa.speculated, i64 %.sink.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5063
  call void @llvm.experimental.noalias.scope.decl(metadata !5070)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %.pn5.i.i.i, i64 16, i1 false), !noalias !5077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !5078
  %i.u = load ptr, ptr %.sroa.0.0.copyload, align 8, !alias.scope !5070, !noalias !5079, !nonnull !3, !align !9, !noundef !3
  %i.v = load ptr, ptr %i.h, align 8, !alias.scope !5070, !noalias !5079, !nonnull !3, !noundef !3
  %i.w = load ptr, ptr %i.i, align 8, !alias.scope !5070, !noalias !5079, !nonnull !3, !align !9, !noundef !3
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB5_19TypeRelationChecker15check_type_pair(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.w, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a)
          to label %bb.d unwind label %.loopexit

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.z, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1f_EBZ_ENtNtNtB8_6traits8iterator8Iterator4nextB1J_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5073
  %i.x = load i32, ptr %i.j, align 8, !noalias !5063, !noundef !3 ; 4 uses
  %i.y = load i32, ptr %i.k, align 4, !noalias !5063, !noundef !3 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5063
  %i.z = icmp eq i32 %i.x, %3
  br i1 %i.z, label %.loopexit78, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.aa = load i64, ptr %i.g, align 8, !alias.scope !5080, !noalias !5083, !noundef !3 ; 4 uses
  %i.ab = icmp ugt i64 %i.aa, 8                   ; 5 uses
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !5080, !noalias !5083, !nonnull !3
  %i.ad = load i64, ptr %i.l, align 8, !alias.scope !5080, !noalias !5083
  %.sink10.i121 = select i1 %i.ab, ptr %i.ac, ptr %i.f ; 4 uses
  %.sink9.i122 = select i1 %i.ab, i64 %i.ad, i64 %i.aa ; 2 uses
  %.not123 = icmp eq i64 %.sink9.i122, 0
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ae = getelementptr [12 x i8], ptr %.sink10.i121, i64 %.sink9.i122
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load i8, ptr %i.af, align 4, !noundef !3
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %.lr.ph175, label %._crit_edge

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3zip3ZipINtNtNtB8_5slice4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEB1k_ETRB1K_B2D_ENvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1O_.exit.thread.i.i
  %i.ai = load i64, ptr %0, align 8, !noundef !3
  %.not76 = icmp eq i64 %i.ai, 0
  br i1 %.not76, label %bb.f, label %bb.g, !prof !53

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 104, i1 false)
  invoke void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits7collect12IntoIterator9into_iterBP_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.d)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #58
          to label %bb.w unwind label %bb.s

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !5085)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.am = load i64, ptr %i.ak, align 8, !alias.scope !5088, !noalias !5091, !noundef !3 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !alias.scope !5088, !noalias !5091, !noundef !3 ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !5094, !noalias !5097, !noundef !3
  %i.ar = icmp ugt i64 %i.aq, 8
  %i.as = load ptr, ptr %i.e, align 8, !alias.scope !5094, !noalias !5097, !nonnull !3
  %.sink10.i.i.i = select i1 %i.ar, ptr %i.as, ptr %i.e
  br label %bb.k

bb.j:                                             ; preds = %bb.m, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e) #57
          to label %bb.r unwind label %bb.q, !noalias !5099

bb.k:                                             ; preds = %bb.p, %.lr.ph.i
  %i.au = phi i64 [ %i.am, %.lr.ph.i ], [ %i.av, %bb.p ] ; 2 uses
  %.sroa.0.022.i = phi i32 [ %2, %.lr.ph.i ], [ %i.ax, %bb.p ]
  %.sroa.6.021.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.011.0.i.i.i, %bb.p ] ; 4 uses
  %i.av = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.av, ptr %i.ak, align 8, !alias.scope !5088, !noalias !5091
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i, i64 %i.au ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i = load i32, ptr %i.aw, align 4, !noalias !5099
  %.sroa.5.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.sroa.5.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.sroa.5.0..sroa_idx.i, align 4, !noalias !5099 ; 4 uses
  %i.ax = invoke noundef i32 @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_6NodeId3and(i32 noundef %.sroa.0.022.i, ptr noalias noundef nonnull align 8 dereferenceable(688) %i.m, i32 noundef %.sroa.5.sroa.0.0.copyload.i)
          to label %.noexc.i unwind label %bb.j, !noalias !5100 ; 2 uses

.noexc.i:                                         ; preds = %bb.k
  %.not.i.i.i35 = icmp eq i32 %.sroa.6.021.i, 0
  br i1 %.not.i.i.i35, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  %.not17.i.i.i = icmp eq i32 %.sroa.5.sroa.5.0.copyload.i, 0
  %i.ay = icmp eq i32 %.sroa.6.021.i, %.sroa.5.sroa.5.0.copyload.i
  %or.cond.i.i.i = or i1 %.not17.i.i.i, %i.ay
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.414.0.insert.ext.i.i.i = zext i32 %.sroa.5.sroa.5.0.copyload.i to i64
  %.sroa.414.0.insert.shift.i.i.i = shl nuw i64 %.sroa.414.0.insert.ext.i.i.i, 32
  %.sroa.013.0.insert.ext.i.i.i = zext i32 %.sroa.6.021.i to i64
  %.sroa.013.0.insert.insert.i.i.i = or disjoint i64 %.sroa.414.0.insert.shift.i.i.i, %.sroa.013.0.insert.ext.i.i.i
  %i.az = invoke fastcc noundef i32 @_RNvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraintsNtB5_20ConstraintSetStorage19intern_source_order(ptr noalias noundef align 8 dereferenceable(688) %i.m, i64 %.sroa.013.0.insert.insert.i.i.i)
          to label %bb.p unwind label %bb.j, !noalias !5100

_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i: ; preds = %bb.p, %bb.i
  %.sroa.6.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %.sroa.011.0.i.i.i, %bb.p ]
  %.sroa.0.0.lcssa.i = phi i32 [ %2, %bb.i ], [ %i.ax, %bb.p ]
  invoke void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i unwind label %bb.n, !noalias !5099

bb.n:                                             ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %bb.r unwind label %bb.o, !noalias !5099

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !5099
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i: ; preds = %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.e)
          to label %bb.t unwind label %bb.h

bb.p:                                             ; preds = %bb.m, %bb.l, %.noexc.i
  %.sroa.011.0.i.i.i = phi i32 [ %.sroa.6.021.i, %bb.l ], [ %.sroa.5.sroa.5.0.copyload.i, %.noexc.i ], [ %i.az, %bb.m ] ; 2 uses
  %i.bc = icmp eq i64 %i.av, %i.an
  br i1 %i.bc, label %_RNvXsH_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtNtB1R_4iter6traits8iterator8Iterator4nextBP_.exit.i, label %bb.k

bb.q:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56, !noalias !5099
  unreachable

bb.r:                                             ; preds = %bb.h, %bb.n, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ba, %bb.n ], [ %i.at, %bb.j ]
  %i.be = load i64, ptr %0, align 8, !noundef !3
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit

bb.s:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1e_13SourceOrderIdEhEj8_EEB1i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bh = load i64, ptr %0, align 8, !noundef !3
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit78, %bb.t
  %.sroa.0.1.pn = phi i32 [ %3, %.loopexit78 ], [ %.sroa.0.0.lcssa.i, %bb.t ]
  %.sroa.4.1.pn = phi i32 [ %.sroa.4.1, %.loopexit78 ], [ %.sroa.6.0.lcssa.i, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pn = insertvalue { i32, i32 } poison, i32 %.sroa.0.1.pn, 0
  %.merged = insertvalue { i32, i32 } %.pn, i32 %.sroa.4.1.pn, 1
  ret { i32, i32 } %.merged

bb.v:                                             ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.w:                                             ; preds = %bb.ac, %bb.z, %bb.g
  unreachable

.lr.ph:                                           ; preds = %bb.ag
  %i.bk = getelementptr [12 x i8], ptr %.sink10.i, i64 %.sink9.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i8, ptr %i.bl, align 4, !noundef !3
end_hunk_0
