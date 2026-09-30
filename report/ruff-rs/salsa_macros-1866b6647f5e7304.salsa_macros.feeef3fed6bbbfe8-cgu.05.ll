Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/salsa_macros-1866b6647f5e7304.salsa_macros.feeef3fed6bbbfe8-cgu.05?download=true
inline.NumInlined: 54
inline.NumDeleted: 28
begin_hunk_0_@_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro6try_fn:bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 7 uses
  invoke void @_RNvNtCslT0hxmHZAzk_12salsa_macros7fn_util9input_ids(ptr nonnull sret([24 x i8]) align 8 %i.fv, ptr nonnull align 8 %i.is, ptr nonnull align 8 %2, i64 1)
          to label %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_ids.exit unwind label %bb.as

bb.ar:                                            ; preds = %bb.at, %bb.as
  %.pn67 = phi { ptr, i32 } [ %i.it, %bb.as ], [ %.pn65, %bb.at ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn8lifetime8LifetimeEBF_(ptr nonnull align 8 %i.fw) #13
          to label %.body unwind label %bb.hc

bb.as:                                            ; preds = %.invoke181, %bb.aq
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_ids.exit: ; preds = %bb.aq
  invoke void @_RNvNtCslT0hxmHZAzk_12salsa_macros7fn_util9input_tys(ptr nonnull sret([32 x i8]) align 8 %i.fs, ptr nonnull align 8 %2, i64 1)
          to label %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_tys.exit unwind label %bb.au

bb.at:                                            ; preds = %bb.ay, %bb.au
  %.pn65 = phi { ptr, i32 } [ %i.iu, %bb.au ], [ %.pn63, %bb.ay ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsghEUimwObfx_11proc_macro25IdentEECslT0hxmHZAzk_12salsa_macros(ptr nonnull align 8 %i.fv) #13
          to label %bb.ar unwind label %bb.hc

bb.au:                                            ; preds = %.invoke182, %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_ids.exit, %bb.aw, %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_tys.exit
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_tys.exit: ; preds = %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_ids.exit
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfq6Q4Do6HaX_3syn2ty4TypeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCslT0hxmHZAzk_12salsa_macros(ptr nonnull sret([32 x i8]) align 8 %i.ft, ptr nonnull align 8 %i.fs)
          to label %bb.av unwind label %bb.au

bb.av:                                            ; preds = %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9input_tys.exit
  %i.iv = load i64, ptr %i.ft, align 8
  %i.iw = trunc nuw i64 %i.iv to i1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  br i1 %i.iw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro211TokenStreamNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.cg, ptr nonnull align 8 @129)
          to label %.invoke181 unwind label %bb.au

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 24, i1 false)
  store ptr %i.fw, ptr %i.fr, align 8
  %i.iy = invoke { ptr, i64 } @_RNvXs7_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsfq6Q4Do6HaX_3syn2ty4TypeENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefCslT0hxmHZAzk_12salsa_macros(ptr nonnull align 8 %i.fu)
          to label %bb.ba unwind label %bb.az     ; 2 uses

bb.ay:                                            ; preds = %bb.be, %bb.az
  %.pn63 = phi { ptr, i32 } [ %i.iz, %bb.az ], [ %.pn61, %bb.be ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsfq6Q4Do6HaX_3syn2ty4TypeEECslT0hxmHZAzk_12salsa_macros(ptr nonnull align 8 %i.fu) #13
          to label %bb.at unwind label %bb.hc

bb.az:                                            ; preds = %.invoke183, %bb.bc, %bb.bb, %bb.ba, %bb.ax
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ax
  %i.ja = extractvalue { ptr, i64 } %i.iy, 0
  %i.jb = extractvalue { ptr, i64 } %i.iy, 1
  %i.jc = invoke { ptr, ptr } @_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtCsfq6Q4Do6HaX_3syn2ty4Type4iterCslT0hxmHZAzk_12salsa_macros(ptr align 8 %i.ja, i64 %i.jb)
          to label %bb.bb unwind label %bb.az     ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  %i.jd = extractvalue { ptr, ptr } %i.jc, 0
  %i.je = extractvalue { ptr, ptr } %i.jc, 1
  invoke void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterRNtNtCsfq6Q4Do6HaX_3syn2ty4TypeENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBK_NCNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB28_5Macro6try_fns_0EB2a_(ptr nonnull sret([24 x i8]) align 8 %i.fp, ptr %i.jd, ptr %i.je, ptr nonnull align 8 %i.fr)
          to label %bb.bc unwind label %bb.az

bb.bc:                                            ; preds = %bb.bb
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterRNtNtCsfq6Q4Do6HaX_3syn2ty4TypeENCNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB1U_5Macro6try_fns_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtCscdodAO9FK5_5alloc3vec3VecB1i_EEB1W_(ptr nonnull sret([24 x i8]) align 8 %i.fq, ptr nonnull align 8 %i.fp)
          to label %bb.bd unwind label %bb.az

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCslT0hxmHZAzk_12salsa_macros7fn_util9output_ty(ptr nonnull sret([248 x i8]) align 8 %i.fl, ptr nonnull align 8 %i.fw, ptr nonnull align 8 %2)
          to label %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit unwind label %bb.bf

bb.be:                                            ; preds = %.body91, %bb.bj, %bb.bf
  %.pn61 = phi { ptr, i32 } [ %i.jf, %bb.bf ], [ %.pn59, %.body91 ], [ %i.jj, %bb.bj ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfq6Q4Do6HaX_3syn2ty4TypeEECslT0hxmHZAzk_12salsa_macros(ptr nonnull align 8 %i.fq) #13
          to label %bb.ay unwind label %bb.hc

bb.bf:                                            ; preds = %.invoke184, %bb.bd, %bb.bh, %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit: ; preds = %bb.bd
  invoke void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCsfq6Q4Do6HaX_3syn2ty4TypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([248 x i8]) align 8 %i.fm, ptr nonnull align 8 %i.fl)
          to label %bb.bg unwind label %bb.bf

bb.bg:                                            ; preds = %_RNvMs_NtCslT0hxmHZAzk_12salsa_macros10tracked_fnNtB4_5Macro9output_ty.exit
  %i.jg = load i64, ptr %i.fm, align 8
  %i.jh = icmp eq i64 %i.jg, -1
  br i1 %i.jh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsghEUimwObfx_11proc_macro211TokenStreamNtNtCsfq6Q4Do6HaX_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1q_EE13from_residualB1u_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.ch, ptr nonnull align 8 @128)
          to label %.invoke183 unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.fn, ptr noundef nonnull align 8 dereferenceable(248) %i.fm, i64 248, i1 false)
  %.val = load ptr, ptr %i.fr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvMNtCslT0hxmHZAzk_12salsa_macros5xformNtB2_8ChangeLt9elided_to(ptr nonnull sret([64 x i8]) align 8 %i.bd, ptr align 8 %.val)
          to label %.noexc85 unwind label %bb.bj

.noexc85:                                         ; preds = %bb.bi
  invoke void @_RNvMNtCslT0hxmHZAzk_12salsa_macros5xformNtB2_8ChangeLt7in_type(ptr nonnull sret([248 x i8]) align 8 %i.fo, ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.fn)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %.noexc85, %bb.bi
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.fn) #13
          to label %bb.be unwind label %bb.hc

bb.bk:                                            ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.fn)
          to label %bb.bm unwind label %bb.bl

.body91:                                          ; preds = %bb.bt, %bb.ce, %bb.cy, %bb.dj, %bb.ed, %bb.eo, %bb.fj, %bb.ft, %bb.bl, %bb.tb
  %.pn59 = phi { ptr, i32 } [ %.pn57, %bb.tb ], [ %i.jk, %bb.bl ], [ %.pn49.pn.i, %bb.ft ], [ %.pn43.i, %bb.fj ], [ %.pn35.pn.i, %bb.eo ], [ %.pn29.i, %bb.ed ], [ %.pn25.pn.i, %bb.dj ], [ %.pn19.i, %bb.cy ], [ %.pn16.pn.i, %bb.ce ], [ %.pn.i, %bb.bt ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfq6Q4Do6HaX_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.fo) #13
          to label %bb.be unwind label %bb.hc

bb.bl:                                            ; preds = %.invoke185, %.invoke, %bb.fi, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit54.i, %bb.fh, %bb.ec, %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit.i, %bb.eb, %bb.bs, %bb.br, %bb.gn, %bb.gl, %bb.bk
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body91

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 2 uses
  %i.jo = load i64, ptr %i.jl, align 8, !noalias !35
  %.not.i87 = icmp eq i64 %i.jo, -1
  %i.jp = load i64, ptr %i.jm, align 8, !noalias !35
  %.not11.i = icmp eq i64 %i.jp, -1               ; 2 uses
  %i.jq = load i64, ptr %i.jn, align 8, !noalias !35
  %.not12.i = icmp eq i64 %i.jq, -1               ; 3 uses
  br i1 %.not.i87, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not12.i, label %bb.fg, label %bb.eb

bb.bo:                                            ; preds = %bb.bm
  br i1 %.not11.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not12.i, label %bb.ec, label %bb.eb

bb.bq:                                            ; preds = %bb.bo
  br i1 %.not12.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr %i.jn, ptr %i.o, align 8, !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.l)
          to label %.noexc89 unwind label %bb.bl

.noexc89:                                         ; preds = %bb.br
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.j)
          to label %bb.da unwind label %bb.cz, !noalias !35

bb.bs:                                            ; preds = %bb.bq
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ak)
          to label %.noexc90 unwind label %bb.bl

.noexc90:                                         ; preds = %bb.bs
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ai)
          to label %bb.bv unwind label %bb.bu, !noalias !35

bb.bt:                                            ; preds = %bb.bw, %bb.bu
  %.pn.i = phi { ptr, i32 } [ %i.jr, %bb.bu ], [ %i.js, %bb.bw ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ak) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.bu:                                            ; preds = %bb.cc, %.noexc90
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bv:                                            ; preds = %.noexc90
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ai, ptr nonnull @21, i64 5)
          to label %bb.bx unwind label %bb.bw, !noalias !35

bb.bw:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bv
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ai) #13
          to label %bb.bt unwind label %bb.cx, !noalias !35

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.ai)
          to label %bb.by unwind label %bb.bw, !noalias !35

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ai, ptr nonnull @22, i64 8)
          to label %bb.bz unwind label %bb.bw, !noalias !35

bb.bz:                                            ; preds = %bb.by
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.ai)
          to label %bb.ca unwind label %bb.bw, !noalias !35

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ai, ptr nonnull @60, i64 25)
          to label %bb.cb unwind label %bb.bw, !noalias !35

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private9push_bang(ptr nonnull align 8 %i.ai)
          to label %bb.cc unwind label %bb.bw, !noalias !35

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ak, i8 0, ptr nonnull align 8 %i.aj)
          to label %bb.cd unwind label %bb.bu, !noalias !35

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ag)
          to label %bb.cg unwind label %bb.cf, !noalias !35

bb.ce:                                            ; preds = %bb.cs, %bb.ch, %bb.cf
  %.pn16.pn.i = phi { ptr, i32 } [ %.pn16.i, %bb.cs ], [ %.pn14.i, %bb.ch ], [ %i.jt, %bb.cf ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.al) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.cf:                                            ; preds = %bb.cd
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cg:                                            ; preds = %bb.cd
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ae)
          to label %bb.cj unwind label %bb.ci, !noalias !35

bb.ch:                                            ; preds = %bb.ck, %bb.ci
  %.pn14.i = phi { ptr, i32 } [ %i.ju, %bb.ci ], [ %i.jv, %bb.ck ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ag) #13
          to label %bb.ce unwind label %bb.cx, !noalias !35

bb.ci:                                            ; preds = %bb.cq, %bb.cg
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cj:                                            ; preds = %bb.cg
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ae, ptr nonnull @21, i64 5)
          to label %bb.cl unwind label %bb.ck, !noalias !35

bb.ck:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.cj
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ae) #13
          to label %bb.ch unwind label %bb.cx, !noalias !35

bb.cl:                                            ; preds = %bb.cj
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.ae)
          to label %bb.cm unwind label %bb.ck, !noalias !35

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ae, ptr nonnull @22, i64 8)
          to label %bb.cn unwind label %bb.ck, !noalias !35

bb.cn:                                            ; preds = %bb.cm
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.ae)
          to label %bb.co unwind label %bb.ck, !noalias !35

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ae, ptr nonnull @61, i64 24)
          to label %bb.cp unwind label %bb.ck, !noalias !35

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private9push_bang(ptr nonnull align 8 %i.ae)
          to label %bb.cq unwind label %bb.ck, !noalias !35

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ag, i8 0, ptr nonnull align 8 %i.af)
          to label %bb.cr unwind label %bb.ci, !noalias !35

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ad)
          to label %bb.cu unwind label %bb.ct, !noalias !35

bb.cs:                                            ; preds = %bb.cv, %bb.ct
  %.pn16.i = phi { ptr, i32 } [ %i.jx, %bb.cv ], [ %i.jw, %bb.ct ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ah) #13
          to label %bb.ce unwind label %bb.cx, !noalias !35

bb.ct:                                            ; preds = %bb.cr
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cu:                                            ; preds = %bb.cr
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.ad, ptr nonnull @62, i64 5)
          to label %bb.cw unwind label %bb.cv, !noalias !35

bb.cv:                                            ; preds = %bb.cu
  %i.jx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ad) #13
          to label %bb.cs unwind label %bb.cx, !noalias !35

bb.cw:                                            ; preds = %bb.cu
  %i.jy = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jy, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !35
  %i.jz = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jz, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fg, ptr noundef nonnull align 8 dereferenceable(96) %i.am, i64 96, i1 false)
  br label %bb.gl

bb.cx:                                            ; preds = %bb.gj, %bb.gg, %bb.gc, %bb.fz, %bb.fw, %bb.ft, %bb.fp, %bb.fm, %bb.fj, %bb.fe, %bb.fb, %bb.ex, %bb.eu, %bb.er, %bb.eo, %bb.eg, %bb.ed, %bb.dz, %bb.dw, %bb.ds, %bb.dp, %bb.dm, %bb.dj, %bb.db, %bb.cy, %bb.cv, %bb.cs, %bb.ck, %bb.ch, %bb.ce, %bb.bw, %bb.bt
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #15, !noalias !35
  unreachable

bb.cy:                                            ; preds = %bb.db, %bb.cz
  %.pn19.i = phi { ptr, i32 } [ %i.kb, %bb.cz ], [ %i.kc, %bb.db ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.l) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.cz:                                            ; preds = %bb.dh, %.noexc89
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %.noexc89
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @21, i64 5)
          to label %bb.dc unwind label %bb.db, !noalias !35

bb.db:                                            ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.da
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.j) #13
          to label %bb.cy unwind label %bb.cx, !noalias !35

bb.dc:                                            ; preds = %bb.da
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.j)
          to label %bb.dd unwind label %bb.db, !noalias !35

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @22, i64 8)
          to label %bb.de unwind label %bb.db, !noalias !35

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.j)
          to label %bb.df unwind label %bb.db, !noalias !35

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.j, ptr nonnull @60, i64 25)
          to label %bb.dg unwind label %bb.db, !noalias !35

bb.dg:                                            ; preds = %bb.df
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private9push_bang(ptr nonnull align 8 %i.j)
          to label %bb.dh unwind label %bb.db, !noalias !35

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.l, i8 0, ptr nonnull align 8 %i.k)
          to label %bb.di unwind label %bb.cz, !noalias !35

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.h)
          to label %bb.dl unwind label %bb.dk, !noalias !35

bb.dj:                                            ; preds = %bb.dw, %bb.dm, %bb.dk
  %.pn25.pn.i = phi { ptr, i32 } [ %.pn25.i, %bb.dw ], [ %.pn23.i, %bb.dm ], [ %i.kd, %bb.dk ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.m) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.dk:                                            ; preds = %bb.di
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dl:                                            ; preds = %bb.di
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.f)
          to label %bb.do unwind label %bb.dn, !noalias !35

bb.dm:                                            ; preds = %bb.dp, %bb.dn
  %.pn23.i = phi { ptr, i32 } [ %i.ke, %bb.dn ], [ %.pn21.i, %bb.dp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.h) #13
          to label %bb.dj unwind label %bb.cx, !noalias !35

bb.dn:                                            ; preds = %bb.du, %bb.dl
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.do:                                            ; preds = %bb.dl
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.d)
          to label %bb.dr unwind label %bb.dq, !noalias !35

bb.dp:                                            ; preds = %bb.ds, %bb.dq
  %.pn21.i = phi { ptr, i32 } [ %i.kf, %bb.dq ], [ %i.kg, %bb.ds ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.f) #13
          to label %bb.dm unwind label %bb.cx, !noalias !35

bb.dq:                                            ; preds = %bb.dt, %bb.do
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dr:                                            ; preds = %bb.do
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.d)
          to label %bb.dt unwind label %bb.ds, !noalias !35

bb.ds:                                            ; preds = %bb.dr
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.d) #13
          to label %bb.dp unwind label %bb.cx, !noalias !35

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.f, i8 0, ptr nonnull align 8 %i.e)
          to label %bb.du unwind label %bb.dq, !noalias !35

bb.du:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.h, i8 0, ptr nonnull align 8 %i.g)
          to label %bb.dv unwind label %bb.dn, !noalias !35

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.c)
          to label %bb.dy unwind label %bb.dx, !noalias !35

bb.dw:                                            ; preds = %bb.dz, %bb.dx
  %.pn25.i = phi { ptr, i32 } [ %i.ki, %bb.dz ], [ %i.kh, %bb.dx ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.i) #13
          to label %bb.dj unwind label %bb.cx, !noalias !35

bb.dx:                                            ; preds = %bb.dv
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dy:                                            ; preds = %bb.dv
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.c, ptr nonnull @63, i64 17)
          to label %bb.ea unwind label %bb.dz, !noalias !35

bb.dz:                                            ; preds = %bb.dy
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.c) #13
          to label %bb.dw unwind label %bb.cx, !noalias !35

bb.ea:                                            ; preds = %bb.dy
  %i.kj = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !35
  %i.kk = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fg, ptr noundef nonnull align 8 dereferenceable(96) %i.n, i64 96, i1 false)
  br label %bb.gl

bb.eb:                                            ; preds = %bb.bp, %bb.bn
  %i.kl = invoke align 8 ptr @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6as_refCslT0hxmHZAzk_12salsa_macros(ptr nonnull align 8 %i.jm)
          to label %.noexc93 unwind label %bb.bl  ; 2 uses

.noexc93:                                         ; preds = %bb.eb
  %.not.i.i88 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i88, label %.invoke, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit.i

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit.i: ; preds = %.noexc93
  invoke void @_RINvMNtCsfq6Q4Do6HaX_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECslT0hxmHZAzk_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.kl, ptr nonnull @68, i64 76)
          to label %.noexc95 unwind label %bb.bl

.noexc95:                                         ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -2, ptr %i.fg, align 8, !alias.scope !35
  br label %bb.gl

bb.ec:                                            ; preds = %bb.bp
  store ptr %i.jm, ptr %i.ab, align 8, !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.y)
          to label %.noexc96 unwind label %bb.bl

.noexc96:                                         ; preds = %bb.ec
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.w)
          to label %bb.ef unwind label %bb.ee, !noalias !35

bb.ed:                                            ; preds = %bb.eg, %bb.ee
  %.pn29.i = phi { ptr, i32 } [ %i.kn, %bb.ee ], [ %i.ko, %bb.eg ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.y) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.ee:                                            ; preds = %bb.em, %.noexc96
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ef:                                            ; preds = %.noexc96
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.w, ptr nonnull @21, i64 5)
          to label %bb.eh unwind label %bb.eg, !noalias !35

bb.eg:                                            ; preds = %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.ef
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.w) #13
          to label %bb.ed unwind label %bb.cx, !noalias !35

bb.eh:                                            ; preds = %bb.ef
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.w)
          to label %bb.ei unwind label %bb.eg, !noalias !35

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.w, ptr nonnull @22, i64 8)
          to label %bb.ej unwind label %bb.eg, !noalias !35

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private11push_colon2(ptr nonnull align 8 %i.w)
          to label %bb.ek unwind label %bb.eg, !noalias !35

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.w, ptr nonnull @60, i64 25)
          to label %bb.el unwind label %bb.eg, !noalias !35

bb.el:                                            ; preds = %bb.ek
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private9push_bang(ptr nonnull align 8 %i.w)
          to label %bb.em unwind label %bb.eg, !noalias !35

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.y, i8 0, ptr nonnull align 8 %i.x)
          to label %bb.en unwind label %bb.ee, !noalias !35

bb.en:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.u)
          to label %bb.eq unwind label %bb.ep, !noalias !35

bb.eo:                                            ; preds = %bb.fb, %bb.er, %bb.ep
  %.pn35.pn.i = phi { ptr, i32 } [ %.pn35.i, %bb.fb ], [ %.pn33.i, %bb.er ], [ %i.kp, %bb.ep ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.z) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.ep:                                            ; preds = %bb.en
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.eq:                                            ; preds = %bb.en
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.s)
          to label %bb.et unwind label %bb.es, !noalias !35

bb.er:                                            ; preds = %bb.eu, %bb.es
  %.pn33.i = phi { ptr, i32 } [ %i.kq, %bb.es ], [ %.pn31.i, %bb.eu ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.u) #13
          to label %bb.eo unwind label %bb.cx, !noalias !35

bb.es:                                            ; preds = %bb.ez, %bb.eq
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.et:                                            ; preds = %bb.eq
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.q)
          to label %bb.ew unwind label %bb.ev, !noalias !35

bb.eu:                                            ; preds = %bb.ex, %bb.ev
  %.pn31.i = phi { ptr, i32 } [ %i.kr, %bb.ev ], [ %i.ks, %bb.ex ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.s) #13
          to label %bb.er unwind label %bb.cx, !noalias !35

bb.ev:                                            ; preds = %bb.ey, %bb.et
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ew:                                            ; preds = %bb.et
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.q)
          to label %bb.ey unwind label %bb.ex, !noalias !35

bb.ex:                                            ; preds = %bb.ew
  %i.ks = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.q) #13
          to label %bb.eu unwind label %bb.cx, !noalias !35

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.s, i8 0, ptr nonnull align 8 %i.r)
          to label %bb.ez unwind label %bb.ev, !noalias !35

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.u, i8 0, ptr nonnull align 8 %i.t)
          to label %bb.fa unwind label %bb.es, !noalias !35

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.p)
          to label %bb.fd unwind label %bb.fc, !noalias !35

bb.fb:                                            ; preds = %bb.fe, %bb.fc
  %.pn35.i = phi { ptr, i32 } [ %i.ku, %bb.fe ], [ %i.kt, %bb.fc ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.v) #13
          to label %bb.eo unwind label %bb.cx, !noalias !35

bb.fc:                                            ; preds = %bb.fa
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fd:                                            ; preds = %bb.fa
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.p, ptr nonnull @64, i64 8)
          to label %bb.ff unwind label %bb.fe, !noalias !35

bb.fe:                                            ; preds = %bb.fd
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.p) #13
          to label %bb.fb unwind label %bb.cx, !noalias !35

bb.ff:                                            ; preds = %bb.fd
  %i.kv = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !35
  %i.kw = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kw, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fg, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, i64 96, i1 false)
  br label %bb.gl

bb.fg:                                            ; preds = %bb.bn
  br i1 %.not11.i, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.kx = invoke align 8 ptr @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6as_refCslT0hxmHZAzk_12salsa_macros(ptr nonnull align 8 %i.jl)
          to label %.noexc97 unwind label %bb.bl  ; 2 uses

.noexc97:                                         ; preds = %bb.fh
  %.not.i53.i = icmp eq ptr %i.kx, null
  br i1 %.not.i53.i, label %.invoke, label %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit54.i

.invoke:                                          ; preds = %.noexc97, %.noexc93
  %i.ky = phi ptr [ @67, %.noexc93 ], [ @65, %.noexc97 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 %i.ky) #14
          to label %.cont unwind label %bb.bl

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit54.i: ; preds = %.noexc97
  invoke void @_RINvMNtCsfq6Q4Do6HaX_3syn5errorNtB3_5Error11new_spannedRNtNtB5_4expr4ExprReECslT0hxmHZAzk_12salsa_macros(ptr nonnull sret([24 x i8]) align 8 %i.ac, ptr nonnull align 8 %i.kx, ptr nonnull @66, i64 50)
          to label %.noexc99 unwind label %bb.bl

.noexc99:                                         ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprE6unwrapCslT0hxmHZAzk_12salsa_macros.exit54.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kz, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  store i64 -2, ptr %i.fg, align 8, !alias.scope !35
  br label %bb.gl

bb.fi:                                            ; preds = %bb.fg
  store ptr %i.jl, ptr %i.bc, align 8, !noalias !35
  store ptr %i.jm, ptr %i.bb, align 8, !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ay)
          to label %.noexc100 unwind label %bb.bl

.noexc100:                                        ; preds = %bb.fi
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aw)
          to label %bb.fl unwind label %bb.fk, !noalias !35

bb.fj:                                            ; preds = %bb.fm, %bb.fk
  %.pn43.i = phi { ptr, i32 } [ %i.la, %bb.fk ], [ %.pn41.i, %bb.fm ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ay) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.fk:                                            ; preds = %bb.fr, %.noexc100
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fl:                                            ; preds = %.noexc100
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.au)
          to label %bb.fo unwind label %bb.fn, !noalias !35

bb.fm:                                            ; preds = %bb.fp, %bb.fn
  %.pn41.i = phi { ptr, i32 } [ %i.lb, %bb.fn ], [ %i.lc, %bb.fp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.aw) #13
          to label %bb.fj unwind label %bb.cx, !noalias !35

bb.fn:                                            ; preds = %bb.fq, %bb.fl
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.fo:                                            ; preds = %bb.fl
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.au)
          to label %bb.fq unwind label %bb.fp, !noalias !35

bb.fp:                                            ; preds = %bb.fo
  %i.lc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.au) #13
          to label %bb.fm unwind label %bb.cx, !noalias !35

bb.fq:                                            ; preds = %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.aw, i8 0, ptr nonnull align 8 %i.av)
          to label %bb.fr unwind label %bb.fn, !noalias !35

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.ay, i8 0, ptr nonnull align 8 %i.ax)
          to label %bb.fs unwind label %bb.fk, !noalias !35

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.as)
          to label %bb.fv unwind label %bb.fu, !noalias !35

bb.ft:                                            ; preds = %bb.gg, %bb.fw, %bb.fu
  %.pn49.pn.i = phi { ptr, i32 } [ %.pn49.i, %bb.gg ], [ %.pn47.i, %bb.fw ], [ %i.ld, %bb.fu ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.az) #13
          to label %.body91 unwind label %bb.cx, !noalias !35

bb.fu:                                            ; preds = %bb.fs
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fv:                                            ; preds = %bb.fs
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.aq)
          to label %bb.fy unwind label %bb.fx, !noalias !35

bb.fw:                                            ; preds = %bb.fz, %bb.fx
  %.pn47.i = phi { ptr, i32 } [ %i.le, %bb.fx ], [ %.pn45.i, %bb.fz ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.as) #13
          to label %bb.ft unwind label %bb.cx, !noalias !35

bb.fx:                                            ; preds = %bb.ge, %bb.fv
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fy:                                            ; preds = %bb.fv
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.ao)
          to label %bb.gb unwind label %bb.ga, !noalias !35

bb.fz:                                            ; preds = %bb.gc, %bb.ga
  %.pn45.i = phi { ptr, i32 } [ %i.lf, %bb.ga ], [ %i.lg, %bb.gc ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.aq) #13
          to label %bb.fw unwind label %bb.cx, !noalias !35

bb.ga:                                            ; preds = %bb.gd, %bb.fy
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gb:                                            ; preds = %bb.fy
  invoke void @_RNvXNtCsdQT5ZjIgVrW_5quote9to_tokensRNtNtCsfq6Q4Do6HaX_3syn4expr4ExprNtB2_8ToTokens9to_tokensBD_(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.ao)
          to label %bb.gd unwind label %bb.gc, !noalias !35

bb.gc:                                            ; preds = %bb.gb
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.ao) #13
          to label %bb.fz unwind label %bb.cx, !noalias !35

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.aq, i8 0, ptr nonnull align 8 %i.ap)
          to label %bb.ge unwind label %bb.ga, !noalias !35

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !35
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_group(ptr nonnull align 8 %i.as, i8 0, ptr nonnull align 8 %i.ar)
          to label %bb.gf unwind label %bb.fx, !noalias !35

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !noalias !35
  invoke void @_RNvMCsghEUimwObfx_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.an)
          to label %bb.gi unwind label %bb.gh, !noalias !35

bb.gg:                                            ; preds = %bb.gj, %bb.gh
  %.pn49.i = phi { ptr, i32 } [ %i.li, %bb.gj ], [ %i.lh, %bb.gh ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.at) #13
          to label %bb.ft unwind label %bb.cx, !noalias !35

bb.gh:                                            ; preds = %bb.gf
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gi:                                            ; preds = %bb.gf
  invoke void @_RNvNtCsdQT5ZjIgVrW_5quote9___private10push_ident(ptr nonnull align 8 %i.an, ptr nonnull @64, i64 8)
          to label %bb.gk unwind label %bb.gj, !noalias !35

bb.gj:                                            ; preds = %bb.gi
  %i.li = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.an) #13
          to label %bb.gg unwind label %bb.cx, !noalias !35

bb.gk:                                            ; preds = %bb.gi
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lj, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false), !noalias !35
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lk, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.fg, ptr noundef nonnull align 8 dereferenceable(96) %i.ba, i64 96, i1 false)
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %.noexc99, %bb.ff, %.noexc95, %bb.ea, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
end_hunk_0
