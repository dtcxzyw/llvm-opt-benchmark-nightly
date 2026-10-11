Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/peg_macros-c67b810e91c0b884.peg_macros.3da89153f9fa012-cgu.1?download=true
inline.NumInlined: 125
inline.NumDeleted: 79
begin_hunk_0_@_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg19___parse_peg_grammar:bb.a
bb.mp:                                            ; preds = %bb.mo
  %.sroa.063.0.copyload.i.i = load i64, ptr %i.f, align 8, !noalias !91 ; 3 uses
  %i.zr = icmp eq i64 %.sroa.063.0.copyload.i.i, -2
  br i1 %i.zr, label %.thread316.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4226.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.465.0..sroa_idx.i.i, i64 24, i1 false), !noalias !91
  %i.zs = icmp eq i64 %.sroa.063.0.copyload.i.i, -3
  br i1 %i.zs, label %.loopexit255, label %.thread316.i.i

.thread316.i.i:                                   ; preds = %bb.mq, %bb.mp, %bb.mn, %bb.ml, %bb.mk, %bb.mj, %bb.mh
  %.sroa.5227.0320.i.i = phi i64 [ %i.zq, %bb.mq ], [ %.sroa.07.0276.i.i, %bb.mp ], [ %.sroa.07.0276.i.i, %bb.mk ], [ %.sroa.07.0276.i.i, %bb.mh ], [ %.sroa.07.0276.i.i, %bb.mj ], [ %.sroa.07.0276.i.i, %bb.ml ], [ %.sroa.07.0276.i.i, %bb.mn ] ; 4 uses
  %.sroa.0225.0319.i.i = phi i64 [ %.sroa.063.0.copyload.i.i, %bb.mq ], [ -2, %bb.mp ], [ -2, %bb.mk ], [ -2, %bb.mh ], [ -2, %bb.mj ], [ -2, %bb.ml ], [ -2, %bb.mn ]
  store i64 %.sroa.0225.0319.i.i, ptr %i.e, align 8, !noalias !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4226.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4226.i.i, i64 24, i1 false), !noalias !91
  %i.zt = invoke fastcc { i64, i64 } @_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg25___parse_rust_where_clause(ptr align 8 %1, ptr nonnull align 8 %3, i64 %.sroa.5227.0320.i.i)
          to label %bb.ms unwind label %bb.mr     ; 2 uses

bb.mr:                                            ; preds = %.thread316.i.i, %bb.mt
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.ms:                                            ; preds = %.thread316.i.i
  %i.zv = extractvalue { i64, i64 } %i.zt, 0
  %i.zw = trunc nuw i64 %i.zv to i1
  %i.zx = extractvalue { i64, i64 } %i.zt, 1      ; 2 uses
  br i1 %i.zw, label %.thread325.i.i, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  invoke void @_RNvXs4_NtCskvND386uuA_10peg_macros6tokensNtB5_15FlatTokenStreamNtCseYBghsfTlDv_11peg_runtime10ParseSlice11parse_slice(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr align 8 %1, i64 %.sroa.5227.0320.i.i, i64 %i.zx)
          to label %bb.mu unwind label %bb.mr, !noalias !91

bb.mu:                                            ; preds = %bb.mt
  %.sroa.082.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !91 ; 3 uses
  %i.zy = icmp eq i64 %.sroa.082.0.copyload.i.i, -2
  br i1 %i.zy, label %.thread325.i.i, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4233.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.484.0..sroa_idx.i.i, i64 24, i1 false), !noalias !91
  %i.zz = icmp eq i64 %.sroa.082.0.copyload.i.i, -3
  br i1 %i.zz, label %.loopexit256, label %.thread325.i.i

.thread325.i.i:                                   ; preds = %bb.mv, %bb.mu, %bb.ms
  %.sroa.5234.0329.i.i = phi i64 [ %i.zx, %bb.mv ], [ %.sroa.5227.0320.i.i, %bb.mu ], [ %.sroa.5227.0320.i.i, %bb.ms ] ; 4 uses
  %.sroa.0232.0328.i.i = phi i64 [ %.sroa.082.0.copyload.i.i, %bb.mv ], [ -2, %bb.mu ], [ -2, %bb.ms ]
  store i64 %.sroa.0232.0328.i.i, ptr %i.c, align 8, !noalias !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4233.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4233.i.i, i64 24, i1 false), !noalias !91
  %i.aaa = invoke { i64, i64 } @_RNvXs3_NtCskvND386uuA_10peg_macros6tokensNtB5_15FlatTokenStreamNtCseYBghsfTlDv_11peg_runtime12ParseLiteral20parse_string_literal(ptr align 8 %1, i64 %.sroa.5234.0329.i.i, ptr nonnull @60, i64 1)
          to label %bb.mw unwind label %.loopexit257, !noalias !91 ; 2 uses

.loopexit257:                                     ; preds = %.thread325.i.i, %bb.nc
  %lpad.loopexit259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

.loopexit.split-lp258:                            ; preds = %bb.na
  %lpad.loopexit.split-lp260 = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

bb.mw:                                            ; preds = %.thread325.i.i
  %i.aab = extractvalue { i64, i64 } %i.aaa, 0
  %i.aac = trunc nuw i64 %i.aab to i1
  br i1 %i.aac, label %bb.mx, label %bb.nc

bb.mx:                                            ; preds = %bb.mw
  %i.aad = load i64, ptr %i.jc, align 8, !noalias !91
  %i.aae = icmp eq i64 %i.aad, 0
  br i1 %i.aae, label %bb.my, label %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i

bb.my:                                            ; preds = %bb.mx
  %i.aaf = load i8, ptr %i.jd, align 8, !noalias !91
  %i.aag = trunc nuw i8 %i.aaf to i1
  br i1 %i.aag, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aah = load i64, ptr %3, align 8, !noalias !91
  %i.aai = icmp ugt i64 %.sroa.5234.0329.i.i, %i.aah
  br i1 %i.aai, label %bb.nb, label %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i

bb.na:                                            ; preds = %bb.my
  invoke void @_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState22mark_failure_slow_path(ptr nonnull align 8 %3, i64 %.sroa.5234.0329.i.i, ptr nonnull @63, i64 3)
          to label %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i unwind label %.loopexit.split-lp258, !noalias !91

bb.nb:                                            ; preds = %bb.mz
  store i64 %.sroa.5234.0329.i.i, ptr %3, align 8, !noalias !91
  br label %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i

bb.nc:                                            ; preds = %bb.mw
  %i.aaj = extractvalue { i64, i64 } %i.aaa, 1
  invoke fastcc void @_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg18___parse_expression(ptr noalias align 8 %i.b, ptr align 8 %1, ptr nonnull align 8 %2, ptr nonnull align 8 %3, i64 %i.aaj)
          to label %bb.nd unwind label %.loopexit257, !noalias !91

bb.nd:                                            ; preds = %bb.nc
  %i.aak = load i8, ptr %i.b, align 8, !noalias !91
  %i.aal = icmp eq i8 %i.aak, -1
  br i1 %i.aal, label %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.aam = load i64, ptr %i.js, align 8, !noalias !91 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !91
  %i.aan = invoke { i64, i64 } @_RNvXs3_NtCskvND386uuA_10peg_macros6tokensNtB5_15FlatTokenStreamNtCseYBghsfTlDv_11peg_runtime12ParseLiteral20parse_string_literal(ptr align 8 %1, i64 %i.aam, ptr nonnull @61, i64 1)
          to label %bb.nf unwind label %bb.nm, !noalias !91 ; 2 uses

bb.nf:                                            ; preds = %bb.ne
  %i.aao = extractvalue { i64, i64 } %i.aan, 0
  %i.aap = trunc nuw i64 %i.aao to i1
  br i1 %i.aap, label %bb.ng, label %bb.nl

bb.ng:                                            ; preds = %bb.nf
  %i.aaq = load i64, ptr %i.jc, align 8, !noalias !91
  %i.aar = icmp eq i64 %i.aaq, 0
  br i1 %i.aar, label %bb.nh, label %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i

bb.nh:                                            ; preds = %bb.ng
  %i.aas = load i8, ptr %i.jd, align 8, !noalias !91
  %i.aat = trunc nuw i8 %i.aas to i1
  br i1 %i.aat, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.aau = load i64, ptr %3, align 8, !noalias !91
  %i.aav = icmp ugt i64 %i.aam, %i.aau
  br i1 %i.aav, label %bb.nk, label %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i

bb.nj:                                            ; preds = %bb.nh
  invoke void @_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState22mark_failure_slow_path(ptr nonnull align 8 %3, i64 %i.aam, ptr nonnull @62, i64 3)
          to label %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i unwind label %bb.nm, !noalias !91

bb.nk:                                            ; preds = %bb.ni
  store i64 %i.aam, ptr %3, align 8, !noalias !91
  br label %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i

bb.nl:                                            ; preds = %bb.nf
  %i.aaw = extractvalue { i64, i64 } %i.aan, 1
  br label %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i

bb.nm:                                            ; preds = %bb.nj, %bb.ne
  %i.aax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskvND386uuA_10peg_macros3ast11SpannedExprEBF_(ptr nonnull align 8 %i.a) #7
          to label %bb.no unwind label %bb.ls, !noalias !91

_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i: ; preds = %bb.nd, %bb.nb, %bb.na, %bb.mz, %bb.mx
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.c)
          to label %.loopexit256 unwind label %bb.nn, !noalias !91

bb.nn:                                            ; preds = %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %bb.nq

bb.no:                                            ; preds = %.loopexit257, %.loopexit.split-lp258, %bb.nm
  %.pn142.i.i = phi { ptr, i32 } [ %i.aax, %bb.nm ], [ %lpad.loopexit259, %.loopexit257 ], [ %lpad.loopexit.split-lp260, %.loopexit.split-lp258 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.c) #7
          to label %bb.nq unwind label %bb.ls, !noalias !91

.loopexit256:                                     ; preds = %bb.mv, %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit162.i.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.e)
          to label %.loopexit255 unwind label %bb.np, !noalias !91

bb.np:                                            ; preds = %.loopexit256
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nw

bb.nq:                                            ; preds = %bb.no, %bb.nn, %bb.mr
  %.pn146.i.i = phi { ptr, i32 } [ %i.zu, %bb.mr ], [ %i.aay, %bb.nn ], [ %.pn142.i.i, %bb.no ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.e) #7
          to label %bb.nw unwind label %bb.ls, !noalias !91

.loopexit255:                                     ; preds = %bb.mq, %.loopexit256
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.jt)
          to label %bb.ns unwind label %bb.nr, !noalias !91

bb.nr:                                            ; preds = %.loopexit255
  %i.aba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsghEUimwObfx_11proc_macro211TokenStreamEEECskvND386uuA_10peg_macros(ptr nonnull align 8 %i.g) #7
          to label %bb.nv unwind label %bb.ls, !noalias !91

bb.ns:                                            ; preds = %.loopexit255
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsghEUimwObfx_11proc_macro211TokenStreamEEECskvND386uuA_10peg_macros(ptr nonnull align 8 %i.g)
          to label %bb.nu unwind label %bb.nt, !noalias !91

bb.nt:                                            ; preds = %bb.ns
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.nv

bb.nu:                                            ; preds = %bb.ns
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskvND386uuA_10peg_macros3ast9RuleParamEEB1b_(ptr nonnull align 8 %.sroa.6.8..sroa_idx10.i.i)
          to label %.sink.split.i.i unwind label %.loopexit.split-lp250, !noalias !91

bb.nv:                                            ; preds = %bb.nt, %bb.nr
  %.pn351.i.i = phi { ptr, i32 } [ %i.abb, %bb.nt ], [ %i.aba, %bb.nr ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskvND386uuA_10peg_macros3ast9RuleParamEEB1b_(ptr nonnull align 8 %.sroa.6.8..sroa_idx10.i.i) #7
          to label %bb.nz unwind label %bb.ls, !noalias !91

bb.nw:                                            ; preds = %bb.nq, %bb.np, %bb.mf
  %.pn150.ph.i.i = phi { ptr, i32 } [ %i.zd, %bb.mf ], [ %i.aaz, %bb.np ], [ %.pn146.i.i, %bb.nq ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.jt) #7
          to label %bb.nx unwind label %bb.ls, !noalias !91

bb.nx:                                            ; preds = %bb.nw
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsghEUimwObfx_11proc_macro211TokenStreamEEECskvND386uuA_10peg_macros(ptr nonnull align 8 %i.g) #7
          to label %bb.ny unwind label %bb.ls, !noalias !91

bb.ny:                                            ; preds = %bb.nx
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskvND386uuA_10peg_macros3ast9RuleParamEEB1b_(ptr nonnull align 8 %.sroa.6.8..sroa_idx10.i.i) #7
          to label %bb.nz unwind label %bb.ls, !noalias !91

.sink.split.i.i:                                  ; preds = %bb.lu, %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg10___parse_sp.exit.i.i, %bb.nu, %.loopexit254, %bb.kh, %bb.kg, %bb.kf, %bb.kd
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.q)
          to label %.critedge155.i.i unwind label %.loopexit.split-lp245, !noalias !91

bb.nz:                                            ; preds = %.loopexit249, %.loopexit.split-lp250, %bb.ny, %bb.nv, %bb.md, %bb.lr, %bb.ld
  %.pn351.pn.i.i = phi { ptr, i32 } [ %.pn351.i.i, %bb.nv ], [ %lpad.thr_comm.split-lp.i.i, %bb.ld ], [ %lpad.thr_comm.i.i, %bb.lr ], [ %.pn150.ph.i.i, %bb.ny ], [ %.pn140.i.i, %bb.md ], [ %lpad.loopexit251, %.loopexit249 ], [ %lpad.loopexit.split-lp252, %.loopexit.split-lp250 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.q) #7
          to label %bb.oa unwind label %bb.ls, !noalias !91

.critedge155.i.i:                                 ; preds = %bb.jz, %.sink.split.i.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.s)
          to label %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.thread.i unwind label %.loopexit.split-lp

bb.oa:                                            ; preds = %.loopexit244, %.loopexit.split-lp245, %bb.nz
  %.pn351.pn.pn.i.i = phi { ptr, i32 } [ %.pn351.pn.i.i, %bb.nz ], [ %lpad.loopexit246, %.loopexit244 ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp245 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.s) #7
          to label %.body94 unwind label %bb.ls, !noalias !91

_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.thread.i: ; preds = %.noexc119, %.critedge155.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4233.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4226.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0217.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4209.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !89
  br label %.thread200

_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i: ; preds = %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.ng
  %..sroa.3106.0.i.i = phi i64 [ %i.aaw, %bb.nl ], [ %i.aam, %bb.nj ], [ %i.aam, %bb.ng ], [ %i.aam, %bb.ni ], [ %i.aam, %bb.nk ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6.160..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.jt, i64 24, i1 false), !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !89
  %.sroa.0235.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.6.8..sroa_idx10.i.i, align 8, !noalias !91 ; 3 uses
  %i.abc = load <2 x i64>, ptr %.sroa.10.8..sroa_idx13.i.i, align 8, !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6.184..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6.128..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4233.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4226.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0217.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4209.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !89
  %i.abd = icmp eq i64 %.sroa.0235.i.sroa.0.0.copyload.i, -1
  br i1 %i.abd, label %.thread200, label %bb.ob

.thread207:                                       ; preds = %.noexc118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.011.i.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.011.i.sroa.6)
  br label %bb.oc

.loopexit:                                        ; preds = %.invoke618, %.invoke617, %.invoke616, %.invoke615, %bb.oc, %bb.eh, %bb.el, %bb.eq, %.noexc90, %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg17___parse_rust_path.exit.i.i, %bb.fj, %bb.fn, %.noexc98, %bb.fu, %bb.fy, %bb.gv, %bb.gw, %bb.ha, %.noexc108, %.noexc102, %bb.hk, %_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState12mark_failure.exit95.i.i, %.noexc113, %bb.hm, %bb.hq, %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_rust_use.exit.i, %bb.ht
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.loopexit.split-lp:                               ; preds = %.critedge155.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body94

.body94:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.ev, %bb.ga, %bb.hs, %bb.oa
  %eh.lpad-body95 = phi { ptr, i32 } [ %.pn351.pn.pn.i.i, %bb.oa ], [ %lpad.phi.i.i, %bb.ga ], [ %lpad.phi.i.i.i, %bb.ev ], [ %i.ql, %bb.hs ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskvND386uuA_10peg_macros3ast4ItemEEB1b_(ptr nonnull align 8 %i.ar) #7
          to label %bb.oo unwind label %bb.om

.thread200:                                       ; preds = %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i, %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.011.i.sroa.6)
  br label %.loopexit262

bb.ob:                                            ; preds = %_RNvNtNtCskvND386uuA_10peg_macros7grammar3peg16___parse_peg_rule.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6.24.i.sroa_idx, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0235.i.sroa.4.i.sroa.4.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.011.i.sroa.6)
  %i.abe = icmp eq i64 %.sroa.0235.i.sroa.0.0.copyload.i, -2
  br i1 %i.abe, label %.loopexit262, label %bb.oc

.loopexit262:                                     ; preds = %bb.ob, %.thread200
  %.sroa.027.0.copyload = load i64, ptr %i.ar, align 8 ; 2 uses
  %i.abf = icmp eq i64 %.sroa.027.0.copyload, -1
  br i1 %i.abf, label %.sink.split, label %bb.od

bb.oc:                                            ; preds = %.thread207, %bb.ob
  %.sroa.11.sroa.1.1219 = phi i64 [ %..sroa.3106.0.i.i, %bb.ob ], [ %i.qj, %.thread207 ]
  %.sroa.0140.0218 = phi i64 [ %.sroa.0235.i.sroa.0.0.copyload.i, %bb.ob ], [ -1, %.thread207 ]
  %.sroa.8141.1216 = phi i32 [ %i.vw, %bb.ob ], [ %.sroa.8141.0, %.thread207 ] ; 2 uses
  %.sroa.9.1215 = phi i8 [ %.sink.i194.i.i, %bb.ob ], [ %.sroa.9.0, %.thread207 ] ; 2 uses
  %.sroa.10.1214 = phi i8 [ %.sink.i.i.i, %bb.ob ], [ %.sroa.10.0, %.thread207 ] ; 2 uses
  %i.abg = phi <2 x i64> [ %i.abc, %bb.ob ], [ %i.qm, %.thread207 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.3, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx146, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.8, i64 256, i1 false)
  store i64 %.sroa.0140.0218, ptr %i.ao, align 8
  store <2 x i64> %i.abg, ptr %.sroa.2145.0..sroa_idx, align 8
  store i32 %.sroa.8141.1216, ptr %.sroa.5147.0..sroa_idx, align 8
  store i8 %.sroa.9.1215, ptr %.sroa.6.0..sroa_idx148, align 4
  store i8 %.sroa.10.1214, ptr %.sroa.7149.0..sroa_idx, align 1
  invoke void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskvND386uuA_10peg_macros3ast4ItemE4pushBI_(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.ao)
          to label %bb.eh unwind label %.loopexit

bb.od:                                            ; preds = %.loopexit262
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.027.0.copyload, ptr %i.aq, align 8
  %.sroa.322.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.322.0..sroa_idx23, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.228.0..sroa_idx, i64 16, i1 false)
  %i.abh = invoke { i64, i64 } @_RNvXs3_NtCskvND386uuA_10peg_macros6tokensNtB5_15FlatTokenStreamNtCseYBghsfTlDv_11peg_runtime12ParseLiteral20parse_string_literal(ptr align 8 %1, i64 %.sroa.025.0, ptr nonnull @25, i64 1)
          to label %bb.oe unwind label %bb.ol     ; 2 uses

bb.oe:                                            ; preds = %bb.od
  %i.abi = extractvalue { i64, i64 } %i.abh, 0
  %i.abj = trunc nuw i64 %i.abi to i1
  br i1 %i.abj, label %bb.of, label %bb.ov

bb.of:                                            ; preds = %bb.oe
  %i.abk = load i64, ptr %i.jc, align 8
  %i.abl = icmp eq i64 %i.abk, 0
  br i1 %i.abl, label %bb.og, label %bb.ok

bb.og:                                            ; preds = %bb.of
  %i.abm = load i8, ptr %i.jd, align 8
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.abo = load i64, ptr %3, align 8
  %i.abp = icmp ugt i64 %.sroa.025.0, %i.abo
  br i1 %i.abp, label %bb.oj, label %bb.ok

bb.oi:                                            ; preds = %bb.og
  invoke void @_RNvMs1_NtCseYBghsfTlDv_11peg_runtime5errorNtB5_10ErrorState22mark_failure_slow_path(ptr nonnull align 8 %3, i64 %.sroa.025.0, ptr nonnull @26, i64 3)
          to label %bb.ok unwind label %bb.ol

bb.oj:                                            ; preds = %bb.oh
  store i64 %.sroa.025.0, ptr %3, align 8
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oh, %bb.of, %bb.oi
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskvND386uuA_10peg_macros3ast4ItemEEB1b_(ptr nonnull align 8 %i.aq)
          to label %bb.on unwind label %bb.dz

bb.ol:                                            ; preds = %bb.od, %bb.oi
  %i.abq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskvND386uuA_10peg_macros3ast4ItemEEB1b_(ptr nonnull align 8 %i.aq) #7
          to label %bb.oo unwind label %bb.om
end_hunk_0
