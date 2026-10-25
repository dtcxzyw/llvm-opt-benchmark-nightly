Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_macros-36ad9e1c078c1756.ruff_macros.4247d776ce4985bc-cgu.12?download=true
inline.NumInlined: 32
inline.NumDeleted: 19
begin_hunk_0_@_RNvNtCs5GOeAjNCyUy_11ruff_macros18violation_metadata18violation_metadata:bb.a
  %i.cq = extractvalue { ptr, i64 } %i.co, 0
  %i.cr = extractvalue { ptr, i64 } %i.co, 1
  %i.cs = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12strip_prefixcECsfq6Q4Do6HaX_3syn(ptr %i.cq, i64 %i.cr, i32 32)
          to label %bb.t unwind label %bb.r, !noalias !7 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.ct = invoke { ptr, i64 } @_RNvXsx_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.m)
          to label %bb.u unwind label %bb.r, !noalias !7 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.cu = extractvalue { ptr, i64 } %i.cs, 1
  %i.cv = extractvalue { ptr, i64 } %i.cs, 0
  %i.cw = extractvalue { ptr, i64 } %i.ct, 0
  %i.cx = extractvalue { ptr, i64 } %i.ct, 1
  %i.cy = invoke { ptr, i64 } @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionReE9unwrap_orCsfq6Q4Do6HaX_3syn(ptr %i.cv, i64 %i.cu, ptr %i.cw, i64 %i.cx)
          to label %bb.v unwind label %bb.r, !noalias !7 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cz = extractvalue { ptr, i64 } %i.cy, 0
  %i.da = extractvalue { ptr, i64 } %i.cy, 1
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_strCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.o, ptr %i.cz, i64 %i.da)
          to label %bb.w unwind label %bb.r, !noalias !7

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4pushCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.o, i32 10)
          to label %bb.x unwind label %bb.r, !noalias !7

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.m)
          to label %.backedge.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7

.backedge.i.backedge:                             ; preds = %bb.x, %bb.j, %.critedge.i
  br label %.backedge.i

bb.y:                                             ; preds = %bb.r, %.loopexit.split-lp.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !7
  unreachable

bb.z:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store i64 1, ptr %i.bd, align 8, !alias.scope !7
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.o)
          to label %bb.aa unwind label %bb.b

bb.aa:                                            ; preds = %bb.g, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsfq6Q4Do6HaX_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs5GOeAjNCyUy_11ruff_macros(ptr nonnull sret([32 x i8]) align 8 %i.be, ptr nonnull align 8 %i.bd)
          to label %bb.ab unwind label %bb.b

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i64, ptr %i.be, align 8
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  br i1 %i.de, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro211TokenStreamNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.p, ptr nonnull align 8 @48)
          to label %.thread unwind label %bb.b

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  %i.dg = invoke { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefBI_(ptr nonnull align 8 %i.bg)
          to label %bb.af unwind label %bb.ae     ; 2 uses

.body57:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae, %bb.fo
  %.pn32 = phi { ptr, i32 } [ %.pn26, %bb.fo ], [ %i.dh, %bb.ae ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.014.2 = phi i8 [ 0, %bb.fo ], [ %.sroa.014.3, %bb.ae ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.03.2 = phi i8 [ 1, %bb.fo ], [ %.sroa.03.3, %bb.ae ], [ 1, %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.bf) #15
          to label %.body unwind label %bb.ga

bb.ae:                                            ; preds = %bb.ar, %bb.fq, %bb.ax, %bb.av, %bb.at, %bb.ad
  %.sroa.014.3 = phi i8 [ 1, %bb.av ], [ 0, %bb.fq ], [ 0, %bb.ax ], [ 1, %bb.at ], [ 1, %bb.ar ], [ 1, %bb.ad ]
  %.sroa.03.3 = phi i8 [ 1, %bb.av ], [ 1, %bb.fq ], [ 0, %bb.ax ], [ 1, %bb.at ], [ 1, %bb.ar ], [ 1, %bb.ad ]
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body57

bb.af:                                            ; preds = %bb.ad
  %i.di = extractvalue { ptr, i64 } %i.dg, 0
  %i.dj = extractvalue { ptr, i64 } %i.dg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 -2, ptr %i.h, align 8, !noalias !8
  %i.dk = invoke { ptr, ptr } @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice4iterRSNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterBI_(ptr align 8 %i.di, i64 %i.dj)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ai, %.backedge.i54, %bb.aq, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.h) #15
          to label %.body57 unwind label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.dl = extractvalue { ptr, ptr } %i.dk, 0
  %i.dm = extractvalue { ptr, ptr } %i.dk, 1
  store ptr %i.dl, ptr %i.g, align 8, !noalias !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.dm, ptr %i.dn, align 8, !noalias !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.backedge.i54

.critedge.i55:                                    ; preds = %.noexc.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8
  br label %.backedge.i54.backedge

.backedge.i54:                                    ; preds = %.backedge.i54.backedge, %bb.ag
  %i.dp = invoke align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_(ptr nonnull align 8 %i.g)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8 ; 3 uses

bb.ah:                                            ; preds = %.backedge.i54
  %.not.i51 = icmp eq ptr %i.dp, null
  br i1 %.not.i51, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.dp, ptr %i.f, align 8, !noalias !8
  %i.dq = invoke align 8 ptr @_RNvMNtCsfq6Q4Do6HaX_3syn4attrNtB2_9Attribute4path(ptr nonnull align 8 %i.dp)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8
  store ptr @23, ptr %i.b, align 8, !noalias !8
  store i64 18, ptr %i.do, align 8, !noalias !8
  %i.dr = invoke align 8 ptr @_RNvMs_NtCsfq6Q4Do6HaX_3syn4pathNtB4_4Path9get_ident(ptr align 8 %i.dq)
          to label %.noexc.i52 unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8 ; 2 uses

.noexc.i52:                                       ; preds = %bb.ak
  %.not.i.i53 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i53, label %.critedge.i55, label %bb.al

bb.al:                                            ; preds = %.noexc.i52
  store ptr %i.dr, ptr %i.a, align 8, !noalias !8
  %i.ds = invoke zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtCsghEUimwObfx_11proc_macro25IdentINtB7_9PartialEqReE2eqCsfq6Q4Do6HaX_3syn(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8
  br i1 %i.ds, label %bb.an, label %.backedge.i54.backedge

bb.an:                                            ; preds = %bb.am
  %i.dt = load ptr, ptr %i.f, align 8, !noalias !8
  invoke void @_RINvMNtCsfq6Q4Do6HaX_3syn4attrNtB3_9Attribute17parse_nested_metaNCNvNtCs5GOeAjNCyUy_11ruff_macros18violation_metadata15get_rule_status0EB16_(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr align 8 %i.dt, ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.f)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtCsfq6Q4Do6HaX_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8

bb.ap:                                            ; preds = %bb.ao
  %i.du = load i64, ptr %i.e, align 8, !noalias !8
  %.not3.i = icmp eq i64 %i.du, -1
  br i1 %.not3.i, label %.backedge.i54.backedge, label %bb.aq

.backedge.i54.backedge:                           ; preds = %bb.ap, %bb.am, %.critedge.i55
  br label %.backedge.i54

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !8
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamENtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1N_EE13from_residualCs5GOeAjNCyUy_11ruff_macros(ptr nonnull sret([32 x i8]) align 8 %i.ay, ptr nonnull align 8 %i.c, ptr nonnull align 8 @24)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.h)
          to label %bb.at unwind label %bb.ae

bb.as:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i50.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.at:                                            ; preds = %bb.aj, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamENtNtCsfq6Q4Do6HaX_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs5GOeAjNCyUy_11ruff_macros(ptr nonnull sret([32 x i8]) align 8 %i.az, ptr nonnull align 8 %i.ay)
          to label %bb.au unwind label %bb.ae

bb.au:                                            ; preds = %bb.at
  %i.dw = load i64, ptr %i.az, align 8            ; 3 uses
  %2 = icmp eq i64 %i.dw, -3                      ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br i1 %2, label %bb.av, label %3

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro211TokenStreamNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.q, ptr nonnull align 8 @47)
          to label %bb.gc unwind label %bb.ae

3:                                                ; preds = %bb.au
  %.not = icmp eq i64 %i.dw, -2
  br i1 %.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %3
  store i64 %i.dw, ptr %i.ba, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  invoke void @_RNvMs_NtCsfq6Q4Do6HaX_3syn8genericsNtB4_8Generics14split_for_impl(ptr nonnull sret([24 x i8]) align 8 %i.at, ptr nonnull align 8 %i.dz)
          to label %bb.ba unwind label %bb.az

bb.ax:                                            ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.bb, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 240, i1 false)
  invoke void @_RINvMNtCsfq6Q4Do6HaX_3syn5errorNtB3_5Error11new_spannedNtNtB5_6derive11DeriveInputReECs5GOeAjNCyUy_11ruff_macros(ptr nonnull sret([24 x i8]) align 8 %i.bc, ptr nonnull align 8 %i.bb, ptr nonnull @46, i64 36)
          to label %bb.gb unwind label %bb.ae

bb.ay:                                            ; preds = %bb.bc, %bb.az
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.bc ], [ %i.ea, %bb.az ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ax) #15
          to label %bb.fo unwind label %bb.ga

bb.az:                                            ; preds = %bb.ba, %bb.aw
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.aw
  store ptr %i.at, ptr %i.aw, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.eb, ptr %i.av, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ec, ptr %i.au, align 8
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.as)
          to label %bb.bb unwind label %bb.az

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_pound(ptr nonnull align 8 %i.as)
          to label %bb.be unwind label %bb.bd

bb.bc:                                            ; preds = %bb.cd, %bb.bl, %bb.bg, %bb.bd
  %.pn23 = phi { ptr, i32 } [ %i.ed, %bb.bd ], [ %.pn21, %bb.cd ], [ %.pn, %bb.bl ], [ %i.ee, %bb.bg ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.as) #15
          to label %bb.ay unwind label %bb.ga

bb.bd:                                            ; preds = %bb.fm, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bj, %bb.bi, %bb.bh, %bb.be, %bb.bb
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.bb
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aq)
          to label %bb.bf unwind label %bb.bd

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.aq, ptr nonnull @25, i64 21)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.aq) #15
          to label %bb.bc unwind label %bb.ga

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.as, i8 2, ptr nonnull align 8 %i.ar)
          to label %bb.bi unwind label %bb.bd

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_pound(ptr nonnull align 8 %i.as)
          to label %bb.bj unwind label %bb.bd

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ao)
          to label %bb.bk unwind label %bb.bd

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ao, ptr nonnull @26, i64 6)
          to label %bb.bn unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bp, %bb.bm
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.bm ], [ %i.eg, %bb.bp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ao) #15
          to label %bb.bc unwind label %bb.ga

bb.bm:                                            ; preds = %bb.bq, %bb.bn, %bb.bk
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.am)
          to label %bb.bo unwind label %bb.bm

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.am, ptr nonnull @27, i64 10)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.am) #15
          to label %bb.bl unwind label %bb.ga

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ao, i8 0, ptr nonnull align 8 %i.an)
          to label %bb.br unwind label %bb.bm

bb.br:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.as, i8 2, ptr nonnull align 8 %i.ap)
          to label %bb.bs unwind label %bb.bd

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.as, ptr nonnull @28, i64 4)
          to label %bb.bt unwind label %bb.bd

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn8generics12ImplGenericsNtB2_8ToTokens9to_tokensCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.aw, ptr nonnull align 8 %i.as)
          to label %bb.bu unwind label %bb.bd

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.as, ptr nonnull @29, i64 5)
          to label %bb.bv unwind label %bb.bd

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.as)
          to label %bb.bw unwind label %bb.bd

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.as, ptr nonnull @30, i64 17)
          to label %bb.bx unwind label %bb.bd

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.as, ptr nonnull @31, i64 3)
          to label %bb.by unwind label %bb.bd

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvXsq_NtCsdQT5ZjIgVrW_5quote9to_tokensNtCsghEUimwObfx_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.as)
          to label %bb.bz unwind label %bb.bd

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn8generics12TypeGenericsNtB2_8ToTokens9to_tokensCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.as)
          to label %bb.ca unwind label %bb.bd

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCsfq6Q4Do6HaX_3syn8generics11WhereClauseENtB2_8ToTokens9to_tokensCs5GOeAjNCyUy_11ruff_macros(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.as)
          to label %bb.cb unwind label %bb.bd

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ak)
          to label %bb.cc unwind label %bb.bd

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @32, i64 2)
          to label %bb.cf unwind label %bb.ce

bb.cd:                                            ; preds = %bb.fh, %bb.eu, %bb.ee, %bb.dl, %bb.cq, %bb.ce
  %.pn21 = phi { ptr, i32 } [ %i.eh, %bb.ce ], [ %i.en, %bb.fh ], [ %i.em, %bb.eu ], [ %i.el, %bb.ee ], [ %.pn19, %bb.dl ], [ %i.ei, %bb.cq ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ak) #15
          to label %bb.bc unwind label %bb.ga

bb.ce:                                            ; preds = %bb.fl, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cc
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cf:                                            ; preds = %bb.cc
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @33, i64 4)
          to label %bb.cg unwind label %bb.ce

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aj)
          to label %bb.ch unwind label %bb.ce

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ak, i8 0, ptr nonnull align 8 %i.aj)
          to label %bb.ci unwind label %bb.ce

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_rarrow(ptr nonnull align 8 %i.ak)
          to label %bb.cj unwind label %bb.ce

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @29, i64 5)
          to label %bb.ck unwind label %bb.ce

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.ak)
          to label %bb.cl unwind label %bb.ce

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @34, i64 8)
          to label %bb.cm unwind label %bb.ce

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.ak)
          to label %bb.cn unwind label %bb.ce

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @35, i64 4)
          to label %bb.co unwind label %bb.ce

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ah)
          to label %bb.cp unwind label %bb.ce

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ah, ptr nonnull @29, i64 5)
          to label %bb.cr unwind label %bb.cq

end_hunk_0
begin_hunk_1_@_RNvNtCs5GOeAjNCyUy_11ruff_macros18violation_metadata18violation_metadata:bb.a
          to label %bb.en unwind label %bb.ce

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ak, i8 0, ptr nonnull align 8 %i.y)
          to label %bb.eo unwind label %bb.ce

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_rarrow(ptr nonnull align 8 %i.ak)
          to label %bb.ep unwind label %bb.ce

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private8push_and(ptr nonnull align 8 %i.ak)
          to label %bb.eq unwind label %bb.ce

bb.eq:                                            ; preds = %bb.ep
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private13push_lifetime(ptr nonnull align 8 %i.ak, ptr nonnull @38, i64 7)
          to label %bb.er unwind label %bb.ce

bb.er:                                            ; preds = %bb.eq
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @39, i64 3)
          to label %bb.es unwind label %bb.ce

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.w)
          to label %bb.et unwind label %bb.ce

bb.et:                                            ; preds = %bb.es
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.w, ptr nonnull @43, i64 4)
          to label %bb.ev unwind label %bb.eu

bb.eu:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.et
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.w) #15
          to label %bb.cd unwind label %bb.ga

bb.ev:                                            ; preds = %bb.et
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private9push_bang(ptr nonnull align 8 %i.w)
          to label %bb.ew unwind label %bb.eu

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.v)
          to label %bb.ex unwind label %bb.eu

bb.ex:                                            ; preds = %bb.ew
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.w, i8 0, ptr nonnull align 8 %i.v)
          to label %bb.ey unwind label %bb.eu

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ak, i8 1, ptr nonnull align 8 %i.x)
          to label %bb.ez unwind label %bb.ce

bb.ez:                                            ; preds = %bb.ey
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @32, i64 2)
          to label %bb.fa unwind label %bb.ce

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @44, i64 4)
          to label %bb.fb unwind label %bb.ce

bb.fb:                                            ; preds = %bb.fa
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.u)
          to label %bb.fc unwind label %bb.ce

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ak, i8 0, ptr nonnull align 8 %i.u)
          to label %bb.fd unwind label %bb.ce

bb.fd:                                            ; preds = %bb.fc
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_rarrow(ptr nonnull align 8 %i.ak)
          to label %bb.fe unwind label %bb.ce

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ak, ptr nonnull @45, i64 3)
          to label %bb.ff unwind label %bb.ce

bb.ff:                                            ; preds = %bb.fe
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.s)
          to label %bb.fg unwind label %bb.ce

bb.fg:                                            ; preds = %bb.ff
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.s, ptr nonnull @44, i64 4)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fg
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.s) #15
          to label %bb.cd unwind label %bb.ga

bb.fi:                                            ; preds = %bb.fg
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private9push_bang(ptr nonnull align 8 %i.s)
          to label %bb.fj unwind label %bb.fh

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.r)
          to label %bb.fk unwind label %bb.fh

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.s, i8 0, ptr nonnull align 8 %i.r)
          to label %bb.fl unwind label %bb.fh

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ak, i8 1, ptr nonnull align 8 %i.t)
          to label %bb.fm unwind label %bb.ce

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.as, i8 1, ptr nonnull align 8 %i.al)
          to label %bb.fn unwind label %bb.bd

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.ax)
          to label %bb.fq unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fp, %bb.ay
  %.pn26 = phi { ptr, i32 } [ %i.eo, %bb.fp ], [ %.pn23.pn, %bb.ay ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ba) #15
          to label %.body57 unwind label %bb.ga

bb.fp:                                            ; preds = %bb.fn
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fq:                                            ; preds = %bb.fn
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ba)
          to label %bb.fr unwind label %bb.ae

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.bf)
          to label %bb.fs unwind label %bb.b

bb.fs:                                            ; preds = %bb.fr
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.bg)
          to label %bb.fu unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.eq) #15
          to label %bb.fv unwind label %bb.ga

bb.fu:                                            ; preds = %bb.fs
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.er)
          to label %bb.fx unwind label %bb.fw

bb.fv:                                            ; preds = %bb.fw, %bb.ft
  %.pn28 = phi { ptr, i32 } [ %i.es, %bb.fw ], [ %i.ep, %bb.ft ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.dz) #15
          to label %bb.fy unwind label %bb.ga

bb.fw:                                            ; preds = %bb.fu
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fx:                                            ; preds = %bb.fu
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.dz)
          to label %.critedge44.sink.split unwind label %bb.fz

bb.fy:                                            ; preds = %bb.fz, %bb.fv
  %.pn30 = phi { ptr, i32 } [ %i.et, %bb.fz ], [ %.pn28, %bb.fv ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn6derive4DataEBF_(ptr nonnull align 8 %1) #15
          to label %.critedge48 unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fx
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.critedge44.sink.split:                           ; preds = %bb.fx, %.critedge.thread60
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn6derive4DataEBF_(ptr align 8 %1)
  br label %.critedge44

.critedge44:                                      ; preds = %.critedge44.sink.split, %bb.gd
  ret void

bb.ga:                                            ; preds = %bb.gq, %bb.gp, %bb.go, %bb.gm, %.body.thread, %bb.gl, %bb.gk, %bb.gj, %bb.ge, %bb.fy, %bb.fv, %bb.ft, %bb.fo, %bb.fh, %bb.eu, %bb.ee, %bb.dp, %bb.dl, %bb.cq, %bb.cd, %bb.bp, %bb.bl, %bb.bg, %bb.bc, %bb.ay, %.body57
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

.critedge48:                                      ; preds = %bb.gn, %bb.gq, %bb.gl, %bb.fy
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.gl ], [ %.pn3464, %bb.gn ], [ %.pn3464, %bb.gq ], [ %.pn30, %bb.fy ]
  resume { ptr, i32 } %.pn40.pn

bb.gb:                                            ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  store i64 -2, ptr %0, align 8
  br label %bb.gc

bb.gc:                                            ; preds = %bb.av, %bb.gb
  %.sroa.03.4 = phi i8 [ 1, %bb.av ], [ 0, %bb.gb ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs4h2pZbAM0ZT_4heck(ptr nonnull align 8 %i.bf)
          to label %bb.gd unwind label %bb.b

bb.gd:                                            ; preds = %bb.gc
  br i1 %2, label %.thread, label %.critedge44

.thread:                                          ; preds = %bb.ac, %bb.gd
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.bg)
          to label %bb.gf unwind label %bb.ge

bb.ge:                                            ; preds = %.thread
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.ex) #15
          to label %bb.gj unwind label %bb.ga

bb.gf:                                            ; preds = %.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.ey)
          to label %.critedge.thread unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.critedge.thread:                                 ; preds = %bb.gf
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.fa)
          to label %.critedge.thread60 unwind label %bb.gh

bb.gh:                                            ; preds = %.critedge.thread
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.critedge.thread60:                               ; preds = %.critedge.thread
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.fc)
          to label %.critedge44.sink.split unwind label %bb.gi

bb.gi:                                            ; preds = %.critedge.thread60
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gj:                                            ; preds = %bb.gg, %bb.ge
  %.pn36 = phi { ptr, i32 } [ %i.ez, %bb.gg ], [ %i.ew, %bb.ge ]
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.fe) #15
          to label %bb.gk unwind label %bb.ga

bb.gk:                                            ; preds = %bb.gh, %bb.gj
  %.pn38 = phi { ptr, i32 } [ %i.fb, %bb.gh ], [ %.pn36, %bb.gj ]
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.ff) #15
          to label %bb.gl unwind label %bb.ga

bb.gl:                                            ; preds = %bb.gi, %bb.gk
  %.pn40 = phi { ptr, i32 } [ %i.fd, %bb.gi ], [ %.pn38, %bb.gk ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn6derive4DataEBF_(ptr align 8 %1) #15
          to label %.critedge48 unwind label %bb.ga

.body.thread:                                     ; preds = %.loopexit.split-lp.i, %.body
  %.sroa.014.067 = phi i8 [ %.sroa.014.0, %.body ], [ 1, %.loopexit.split-lp.i ]
  %.pn3465 = phi { ptr, i32 } [ %.pn34, %.body ], [ %.pn.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfq6Q4Do6HaX_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.bg) #15
          to label %bb.gm unwind label %bb.ga

.critedge46:                                      ; preds = %.body, %bb.gm
  %i.fg = phi i1 [ false, %.body ], [ true, %bb.gm ]
  %.sroa.014.066 = phi i8 [ %.sroa.014.0, %.body ], [ %.sroa.014.067, %bb.gm ]
  %.pn3464 = phi { ptr, i32 } [ %.pn34, %.body ], [ %.pn3465, %bb.gm ] ; 2 uses
  %i.fh = trunc nuw i8 %.sroa.014.066 to i1
  br i1 %i.fh, label %bb.go, label %bb.gn

bb.gm:                                            ; preds = %.body.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.fi) #15
          to label %.critedge46 unwind label %bb.ga

bb.gn:                                            ; preds = %bb.go, %.critedge46
  br i1 %i.fg, label %bb.gp, label %.critedge48

bb.go:                                            ; preds = %.critedge46
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.fj) #15
          to label %bb.gn unwind label %bb.ga

bb.gp:                                            ; preds = %bb.gn
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.fk) #15
          to label %bb.gq unwind label %bb.ga

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn6derive4DataEBF_(ptr align 8 %1) #15
          to label %.critedge48 unwind label %bb.ga
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn4path11PathSegmentNtB2_8ToTokens9to_tokensCs5GOeAjNCyUy_11ruff_macros(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXs1_NtNtCsfq6Q4Do6HaX_3syn4path8printingNtB7_11PathSegmentNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn4path4PathNtB2_8ToTokens9to_tokensCs5GOeAjNCyUy_11ruff_macros(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @_RNvXs0_NtNtCsfq6Q4Do6HaX_3syn4path8printingNtB7_4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %i.a, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i32 @_RNvXNtCsfq6Q4Do6HaX_3syn7spannedNtNtB4_4path4PathNtB2_7Spanned4spanCs5GOeAjNCyUy_11ruff_macros(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11
  call void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a), !noalias !11
  invoke void @_RNvXs0_NtNtCsfq6Q4Do6HaX_3syn4path8printingNtB7_4PathNtNtCsdQT5ZjIgVrW_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr nonnull align 8 %i.a)
          to label %_RNvXs0_NtCsdQT5ZjIgVrW_5quote7spannedNtNtCsfq6Q4Do6HaX_3syn4path4PathNtB5_7Spanned6___spanCs5GOeAjNCyUy_11ruff_macros.exit unwind label %bb.b, !noalias !11

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.a) #15
          to label %bb.d unwind label %bb.c, !noalias !11

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !11
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCsdQT5ZjIgVrW_5quote7spannedNtNtCsfq6Q4Do6HaX_3syn4path4PathNtB5_7Spanned6___spanCs5GOeAjNCyUy_11ruff_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11
  %i.e = call i32 @_RNvNtCsdQT5ZjIgVrW_5quote7spanned10join_spans(ptr nonnull align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNtNtCstuaXukgBIa_10proc_macro6bridge3rpcuINtB2_6EncodeuE6encodeCs5GOeAjNCyUy_11ruff_macros(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collectINtNtNtB8_5slice4iter4IterRNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleENtB2_12IntoIterator9into_iterB1g_(ptr %0, ptr %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortTRNtNtCsfq6Q4Do6HaX_3syn4path4PathINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs5GOeAjNCyUy_11ruff_macros9map_codes4RuleEENtB5_8IsFreeze9is_freezeB27_() unnamed_addr #2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtCsghEUimwObfx_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5GOeAjNCyUy_11ruff_macros(ptr nofree align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtCsghEUimwObfx_11proc_macro25IdentENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5GOeAjNCyUy_11ruff_macros(ptr nofree align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_1
