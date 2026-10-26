Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_testing-f0c16cdb2495b8dc.polars_testing.8a9c7528579251af-cgu.3?download=true
inline.NumInlined: 202
inline.NumDeleted: 111
begin_hunk_0_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBX_INtNtB1V_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1V_3ops12control_flow11ControlFlowIB5x_B3W_EENCINvMNtB40_10projectionNtB6t_23AmortizedColumnSelector15select_multipleBX_INtB8_3VecBX_EE0NCINvXB2Z_INtB2Z_12GenericShuntINtB2X_3MapBI_B6n_EIB3A_NtNtB1V_7convert10InfallibleB4N_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3W_B6c_NcNtB6c_5Break0E0B6c_E0E0B5w_ECsbTP5kh6vDpX_14polars_testing:bb.a
  call void @llvm.trap(), !dbg !1897
  unreachable, !dbg !1897

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1898, !noalias !1727
  store ptr %.val.i.i.i.i.i, ptr %i.a, align 8, !dbg !1899, !noalias !1727
  store ptr %.val8.i.i.i.i.i, ptr %i.z, align 8, !dbg !1899, !noalias !1727
  %i.dl = load atomic i32, ptr %i.y acquire, align 8, !dbg !1900, !noalias !1728
  %i.dm = icmp eq i32 %i.dl, 0, !dbg !1901
  br i1 %i.dm, label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i, label %bb.bv, !dbg !1901, !prof !1729

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i unwind label %bb.bw, !dbg !1902, !noalias !1730

bb.bw:                                            ; preds = %bb.bv
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1731), !dbg !1903
  %i.do = load ptr, ptr %i.a, align 8, !dbg !1904, !alias.scope !1731, !noalias !1727, !noundef !73 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null, !dbg !1904
  br i1 %i.dp, label %.body.i3.i.i.i.i, label %bb.bx, !dbg !1904

bb.bx:                                            ; preds = %bb.bw
  %i.dq = atomicrmw add ptr %i.do, i64 -1 release, align 8, !dbg !1905, !noalias !1732
  %i.dr = icmp eq i64 %i.dq, 1, !dbg !1906
  br i1 %i.dr, label %bb.by, label %.body.i3.i.i.i.i, !dbg !1906

bb.by:                                            ; preds = %bb.bx
  fence acquire, !dbg !1907
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #18
          to label %.body.i3.i.i.i.i unwind label %bb.bz, !dbg !1908, !noalias !1730

_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %i.ds = load ptr, ptr %i.a, align 8, !dbg !1909, !noalias !1727, !noundef !73 ; 3 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.ds, null, !dbg !1909
  br i1 %.not.i.i4.i.i.i.i, label %bb.cb, label %bb.ca, !dbg !1910

bb.bz:                                            ; preds = %bb.by
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1911, !noalias !1730
  unreachable, !dbg !1911

bb.ca:                                            ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i
  %i.du = load ptr, ptr %i.z, align 8, !dbg !1912, !noalias !1727, !nonnull !73, !align !138, !noundef !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1903, !noalias !1727
  store ptr %i.ds, ptr %i.b, align 8, !dbg !1913, !noalias !1721
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1913
  store ptr %i.du, ptr %i.dv, align 8, !dbg !1913, !noalias !1721
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.ce unwind label %bb.cc, !dbg !1914, !noalias !1726

bb.cb:                                            ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1903, !noalias !1727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1915, !noalias !1721
  br label %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !1916

bb.cc:                                            ; preds = %bb.ca
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = atomicrmw add ptr %i.ds, i64 -1 release, align 8, !dbg !1917, !noalias !1733
  %i.dy = icmp eq i64 %i.dx, 1, !dbg !1918
  br i1 %i.dy, label %bb.cd, label %.body.i3.i.i.i.i, !dbg !1918

bb.cd:                                            ; preds = %bb.cc
  fence acquire, !dbg !1919
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #18
          to label %.body.i3.i.i.i.i unwind label %bb.cf, !dbg !1920, !noalias !1726

bb.ce:                                            ; preds = %bb.ca
  unreachable

bb.cf:                                            ; preds = %bb.cd, %.body.i3.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1921, !noalias !1726
  unreachable, !dbg !1921

.body5.i.i.i.i:                                   ; preds = %.body.i3.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(96) %i.i) #19
          to label %.body.i.i.i.i unwind label %bb.cg, !dbg !1922, !noalias !1683

bb.cg:                                            ; preds = %.body5.i.i.i.i, %bb.bp
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1923, !noalias !1683
  unreachable, !dbg !1923

_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.cb, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1924, !noalias !1643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1891, !noalias !1721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.7.96..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !1923, !noalias !1643
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i8, ptr %i.i, align 16, !dbg !1923, !noalias !1734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 7, i1 false), !dbg !1923, !noalias !1643
  %.sroa.0.i.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1923, !noalias !1734
  %.sroa.0.i.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.0.i.sroa.6.0..sroa_idx.i.i, align 16, !dbg !1923, !noalias !1734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.sroa.7.0..sroa_idx.i.i, i64 72, i1 false), !dbg !1923, !noalias !1643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1922, !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1922, !noalias !1679
  br label %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !1925

bb.ch:                                            ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !1926 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !1926, !noalias !1673, !nonnull !73, !noundef !73
  %i.ed = atomicrmw add ptr %i.ec, i64 1 monotonic, align 8, !dbg !1927, !noalias !1673
  %i.ee = icmp slt i64 %i.ed, 0, !dbg !1928
  br i1 %i.ee, label %bb.cj, label %bb.ci, !dbg !1928

bb.ci:                                            ; preds = %bb.ch
  %i.ef = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !1926
  %i.eg = load ptr, ptr %i.eb, align 8, !dbg !1929, !noalias !1673, !nonnull !73, !noundef !73
  %i.eh = load ptr, ptr %i.ef, align 16, !dbg !1929, !noalias !1673, !nonnull !73, !align !138, !noundef !73
  br label %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !1925

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.trap(), !dbg !1930
  unreachable, !dbg !1930

_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ci, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, %bb.i
  %.sroa.12.0.i = phi i64 [ undef, %bb.i ], [ undef, %bb.ci ], [ %i.dd, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1755
  %.sroa.9.0.i = phi ptr [ %.sroa.9.8.copyload.i, %bb.i ], [ %i.eh, %bb.ci ], [ %.sroa.0.i.sroa.6.0.copyload.i.i, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1931 ; 3 uses
  %.sroa.73.0.i = phi ptr [ %i.am, %bb.i ], [ %i.eg, %bb.ci ], [ %.sroa.0.i.sroa.5.0.copyload.i.i, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1931 ; 3 uses
  %.sroa.02.0.i = phi i8 [ 32, %bb.i ], [ 31, %bb.ci ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1931 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1769, !noalias !1653
  %i.ei = load i8, ptr %i.q, align 1, !dbg !1932, !range !158, !alias.scope !1738, !noalias !1643, !noundef !73
  %i.ej = icmp eq i8 %i.ei, -40, !dbg !1933
  br i1 %i.ej, label %bb.ck, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !1933, !prof !159

bb.ck:                                            ; preds = %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !dbg !1934, !noalias !1668
  br label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !1934

bb.cl:                                            ; preds = %bb.f
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1935, !noalias !1668
  unreachable, !dbg !1935

common.resume.i:                                  ; preds = %bb.co, %bb.f, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ep, %bb.co ], [ %eh.lpad-body.i.i, %bb.f ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1936

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.ck, %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !1937, !noalias !1643
  %i.el = icmp eq i8 %.sroa.02.0.i, 32, !dbg !1938
  br i1 %i.el, label %bb.cm, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit, !dbg !1939

bb.cm:                                            ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.em, align 8, !nonnull !73, !noundef !73 ; 8 uses
  %i.en = load i64, ptr %.val.le, align 8, !dbg !1940, !range !1669, !alias.scope !1743, !noalias !1744, !noundef !73
  %i.eo = icmp eq i64 %i.en, 18, !dbg !1940
  br i1 %i.eo, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread, label %bb.cn, !dbg !1940

bb.cn:                                            ; preds = %bb.cm
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val.le)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread unwind label %bb.co, !dbg !1941, !noalias !1744

bb.co:                                            ; preds = %bb.cn
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.73.0.i, ptr %.val.le, align 8, !dbg !1942, !noalias !1745
  %.sroa.4.sroa.7.7..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8, !dbg !1942
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.7.7..8.val.sroa_idx.i, align 8, !dbg !1942, !noalias !1745
  %.sroa.4.sroa.8.7..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16, !dbg !1942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.8.7..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.sroa.7.i.i, i64 56, i1 false), !dbg !1942, !noalias !1643
  br label %common.resume.i, !dbg !1943

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread: ; preds = %bb.cm, %bb.cn
  store ptr %.sroa.73.0.i, ptr %.val.le, align 8, !dbg !1942, !noalias !1745
  %.sroa.4.sroa.7.7..8.val.sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8, !dbg !1942
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.7.7..8.val.sroa_idx5.i, align 8, !dbg !1942, !noalias !1745
  %.sroa.4.sroa.8.7..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16, !dbg !1942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.8.7..8.val.sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.sroa.7.i.i, i64 56, i1 false), !dbg !1942, !noalias !1643
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.7.i.i), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !1944
  br label %.loopexit, !dbg !1945

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i, i64 7, i1 false), !dbg !1946, !noalias !1749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.sroa.7.i.i, i64 56, i1 false), !dbg !1946, !noalias !1749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.80..sroa_idx.i, i64 40, i1 false), !dbg !1947, !noalias !1749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i.i, i64 24, i1 false), !dbg !1947, !noalias !1749
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.7.i.i), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !1944
  %.not.i = icmp eq i8 %.sroa.02.0.i, 33, !dbg !1948
  br i1 %.not.i, label %bb.cq, label %.loopexit, !dbg !1945

._crit_edge:                                      ; preds = %bb.cq, %bb.a
  store i8 33, ptr %0, align 16, !dbg !1949, !alias.scope !1750
  br label %bb.cp, !dbg !1950

bb.cp:                                            ; preds = %._crit_edge, %.loopexit
  ret void, !dbg !1951

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread
  %.sroa.02.0.i114 = phi i8 [ 32, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread ], [ %.sroa.02.0.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit ]
  %.sroa.8.018 = phi ptr [ undef, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread ], [ %.sroa.73.0.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit ]
  %.sroa.9.017 = phi ptr [ undef, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread ], [ %.sroa.9.0.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false), !dbg !1953
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, i64 56, i1 false), !dbg !1953
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !1952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.11, i64 40, i1 false), !dbg !1953
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.811.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13, i64 24, i1 false), !dbg !1953
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11), !dbg !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !1954
  store i8 %.sroa.02.0.i114, ptr %0, align 16, !dbg !1952, !alias.scope !1752
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1952
  store ptr %.sroa.8.018, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !1952, !alias.scope !1752
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1952
  store ptr %.sroa.9.017, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !1952, !alias.scope !1752
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !1952
  store i64 %.sroa.12.0.i, ptr %.sroa.7.0..sroa_idx10, align 8, !dbg !1952, !alias.scope !1752
  br label %bb.cp, !dbg !1955

bb.cq:                                            ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11), !dbg !1954
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !1954
  %i.eq = load ptr, ptr %i.m, align 8, !dbg !1753, !nonnull !73, !noundef !73
  %.not = icmp eq ptr %i.ab, %i.eq, !dbg !1754
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !1638
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1956 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2034
  %.val = load ptr, ptr %i.c, align 8, !dbg !2034, !nonnull !73, !noundef !73 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2034
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !2034, !nonnull !73, !noundef !73 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !2035
  %i.f = ptrtoint ptr %.val to i64, !dbg !2035
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !2035
  %i.h = udiv exact i64 %i.g, 24, !dbg !2035      ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val, !dbg !2036
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !2036

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2037
  %i.j = load ptr, ptr %0, align 8, !dbg !2038, !nonnull !73, !noundef !73
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2039
  %i.l = load i64, ptr %i.k, align 8, !dbg !2039, !noundef !73
  store i64 %i.l, ptr %i.b, align 8, !dbg !2040
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2040
  store ptr %i.j, ptr %i.m, align 8, !dbg !2040
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f, !dbg !2041

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.09.i, !dbg !2036 ; 2 uses
  %i.o = add nuw i64 %.sroa.0.09.i, 1, !dbg !2036 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 23, !dbg !2042
  %i.q = load i8, ptr %i.p, align 1, !dbg !2042, !range !158, !alias.scope !2032, !noundef !73
  %i.r = icmp eq i8 %i.q, -40, !dbg !2043
  br i1 %i.r, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !2043, !prof !159

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.c, !dbg !2044

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h, !dbg !2036
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !2036

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h, !dbg !2036
  br i1 %i.u, label %.body, label %.lr.ph12.i, !dbg !2036

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.w, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.110.i, !dbg !2036 ; 2 uses
  %i.w = add i64 %.sroa.0.110.i, 1, !dbg !2036    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 23, !dbg !2045
  %i.y = load i8, ptr %i.x, align 1, !dbg !2045, !range !158, !alias.scope !2033, !noundef !73
  %i.z = icmp eq i8 %i.y, -40, !dbg !2046
  br i1 %i.z, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i, !dbg !2046, !prof !159

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i unwind label %bb.e, !dbg !2047

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h, !dbg !2036
  br i1 %i.aa, label %.body, label %.lr.ph12.i, !dbg !2036

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !2036
  unreachable, !dbg !2036

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2048
  %i.ac = load ptr, ptr %0, align 8, !dbg !2049, !nonnull !73, !noundef !73
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2050
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !2050, !noundef !73
  store i64 %i.ae, ptr %i.a, align 8, !dbg !2051
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2051
  store ptr %i.ac, ptr %i.af, align 8, !dbg !2051
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !2052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2053
  ret void, !dbg !2054

bb.f:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !2055
  unreachable, !dbg !2055

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2056
  resume { ptr, i32 } %i.t, !dbg !2055
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2057 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2069
  %i.b = load ptr, ptr %0, align 8, !dbg !2070, !nonnull !73, !noundef !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2071
  %i.d = load i64, ptr %i.c, align 8, !dbg !2071, !noundef !73
  store i64 %i.d, ptr %i.a, align 8, !dbg !2072
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2072
  store ptr %i.b, ptr %i.e, align 8, !dbg !2072
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !2073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2074
  ret void, !dbg !2075
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2076 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load i8, ptr %1, align 16, !dbg !2207, !range !150, !noundef !73
  switch i8 %i.e, label %default.unreachable29 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.z
    i8 24, label %bb.ab
    i8 25, label %bb.ac
    i8 26, label %bb.ad
    i8 27, label %bb.ae
    i8 28, label %bb.af
    i8 29, label %bb.ag
    i8 30, label %bb.ai
  ], !dbg !2207

default.unreachable29:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.k:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.l:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.m:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.n:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.o:                                             ; preds = %bb.a
  store i8 13, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2208
  br label %bb.aj, !dbg !2209

bb.q:                                             ; preds = %bb.a
  store i8 15, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.r:                                             ; preds = %bb.a
  store i8 16, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.s:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.t:                                             ; preds = %bb.a
  store i8 18, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.u:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !2210
  %i.g = load i8, ptr %i.f, align 1, !dbg !2210, !range !178, !noundef !73
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2211 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !2211
  %i.j = load i8, ptr %i.i, align 1, !dbg !2211, !range !151, !noundef !73
  switch i8 %i.j, label %bb.am [
    i8 -38, label %bb.ak
    i8 -40, label %bb.al
  ], !dbg !2212

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2213
  br label %bb.aj, !dbg !2209

bb.w:                                             ; preds = %bb.a
  store i8 21, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.x:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157), !dbg !2215
  %i.l = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsbTP5kh6vDpX_14polars_testing(), !dbg !2216, !noalias !2157, !inline_history !2085 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 16, !dbg !2217, !alias.scope !2157, !nonnull !73, !noundef !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2218, !noalias !2158
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #20
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.y, !dbg !2219, !inline_history !2095

common.resume.sink.split:                         ; preds = %bb.y, %bb.aa
  %.sink = phi ptr [ %i.t, %bb.aa ], [ %i.l, %bb.y ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.aa ], [ %i.n, %bb.y ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 16) #16, !dbg !2220, !noalias !73
  br label %common.resume, !dbg !2159

common.resume:                                    ; preds = %common.resume.sink.split, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !2159

bb.y:                                             ; preds = %bb.x
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !2221

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !2222, !noalias !2158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2223, !noalias !2158
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2224
  %i.p = load i64, ptr %i.o, align 8, !dbg !2224, !noundef !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2225
  store ptr %i.l, ptr %i.q, align 16, !dbg !2225
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2225
  store i64 %i.p, ptr %i.r, align 8, !dbg !2225
  store i8 22, ptr %0, align 16, !dbg !2225
  br label %bb.aj, !dbg !2209

bb.z:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2166), !dbg !2227
  %i.t = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsbTP5kh6vDpX_14polars_testing(), !dbg !2228, !noalias !2166, !inline_history !2085 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !dbg !2229, !alias.scope !2166, !nonnull !73, !noundef !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2230, !noalias !2167
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.u) #20
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit17 unwind label %bb.aa, !dbg !2231, !inline_history !2095

bb.aa:                                            ; preds = %bb.z
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !2232

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit17: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !2233, !noalias !2167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2234, !noalias !2167
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2235
  store ptr %i.t, ptr %i.w, align 8, !dbg !2235
  store i8 23, ptr %0, align 16, !dbg !2235
  br label %bb.aj, !dbg !2209

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2236
  br label %bb.aj, !dbg !2209

bb.ac:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 16, !dbg !2207
  br label %bb.aj, !dbg !2207

bb.ad:                                            ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2237
  %i.y = load ptr, ptr %i.x, align 8, !dbg !2237, !nonnull !73, !noundef !73 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !2238
  %i.aa = icmp slt i64 %i.z, 0, !dbg !2239
  br i1 %i.aa, label %bb.ap, label %bb.ao, !dbg !2239

bb.ae:                                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2240
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !2240, !nonnull !73, !noundef !73 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !2241
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !2242
  br i1 %i.ae, label %bb.at, label %bb.as, !dbg !2242

bb.af:                                            ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2243
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2244
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af), !dbg !2245
  store i8 28, ptr %0, align 16, !dbg !2244
  br label %bb.aj, !dbg !2209

bb.ag:                                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !2246
  %i.ai = tail call { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah), !dbg !2247 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0, !dbg !2247 ; 3 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1, !dbg !2247 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181), !dbg !2248
  %i.al = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsbTP5kh6vDpX_14polars_testing()
          to label %.noexc unwind label %bb.aw, !dbg !2249, !inline_history !2085 ; 3 uses

.noexc:                                           ; preds = %bb.ag
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !2250
  %i.an = load ptr, ptr %i.am, align 8, !dbg !2251, !alias.scope !2181, !nonnull !73, !noundef !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2252, !noalias !2182
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.an) #20
          to label %bb.ax unwind label %bb.ah, !dbg !2253, !inline_history !2095

bb.ah:                                            ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 48, i64 noundef 16) #16, !dbg !2254, !noalias !2181
  br label %.body, !dbg !2255

bb.ai:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !2256
  br label %bb.aj, !dbg !2209

bb.aj:                                            ; preds = %bb.ax, %bb.au, %bb.aq, %bb.ak, %bb.ai, %bb.af, %bb.ac, %bb.ab, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit17, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !2257

bb.ak:                                            ; preds = %bb.u, %bb.an
  %.sroa.4.0 = phi i8 [ %.sroa.48.0.copyload, %bb.an ], [ -38, %bb.u ], !dbg !2258
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !2259
  store i8 %i.g, ptr %i.ap, align 1, !dbg !2259
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.aq, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !2259
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !2259
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !2259
  store i8 19, ptr %0, align 16, !dbg !2259
  br label %bb.aj, !dbg !2209

bb.al:                                            ; preds = %bb.u
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #18, !dbg !2260
  br label %bb.an, !dbg !2260

bb.am:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !2261
  br label %bb.an, !dbg !2262

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !2263
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1, !dbg !2263
  br label %bb.ak, !dbg !2264

bb.ao:                                            ; preds = %bb.ad
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2265
  %i.as = load ptr, ptr %i.ar, align 16, !dbg !2265, !nonnull !73, !noundef !73 ; 2 uses
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !dbg !2266
  %i.au = icmp slt i64 %i.at, 0, !dbg !2267
  br i1 %i.au, label %bb.ar, label %bb.aq, !dbg !2267

bb.ap:                                            ; preds = %bb.ad
  tail call void @llvm.trap(), !dbg !2268
  unreachable, !dbg !2268

bb.aq:                                            ; preds = %bb.ao
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2269
  store ptr %i.y, ptr %i.av, align 8, !dbg !2269
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2269
  store ptr %i.as, ptr %i.aw, align 16, !dbg !2269
  store i8 26, ptr %0, align 16, !dbg !2269
  br label %bb.aj, !dbg !2209

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.trap(), !dbg !2270
  unreachable, !dbg !2270

bb.as:                                            ; preds = %bb.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !2271
  %i.ay = load ptr, ptr %i.ax, align 16, !dbg !2271, !nonnull !73, !noundef !73 ; 2 uses
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !dbg !2272
  %i.ba = icmp slt i64 %i.az, 0, !dbg !2273
  br i1 %i.ba, label %bb.av, label %bb.au, !dbg !2273

bb.at:                                            ; preds = %bb.ae
  tail call void @llvm.trap(), !dbg !2274
  unreachable, !dbg !2274

bb.au:                                            ; preds = %bb.as
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2275
  store ptr %i.ac, ptr %i.bb, align 8, !dbg !2275
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2275
  store ptr %i.ay, ptr %i.bc, align 16, !dbg !2275
  store i8 27, ptr %0, align 16, !dbg !2275
  br label %bb.aj, !dbg !2209

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.trap(), !dbg !2276
  unreachable, !dbg !2276

bb.aw:                                            ; preds = %bb.ag
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !2277

.body:                                            ; preds = %bb.ah, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.aw ], [ %i.ao, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing(ptr %i.aj, ptr nonnull %i.ak) #19
          to label %common.resume unwind label %bb.ay, !dbg !2277

bb.ax:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !2278, !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2279, !noalias !2182
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2280
  store ptr %i.aj, ptr %i.be, align 8, !dbg !2280
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2280
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !2280
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2280
  store ptr %i.al, ptr %i.bg, align 8, !dbg !2280
  store i8 29, ptr %0, align 16, !dbg !2280
  br label %bb.aj, !dbg !2209

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !2207
  unreachable, !dbg !2207
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2_23AmortizedColumnSelector6select(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_Py_DecRef(ptr noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9drop_slowCsgjwxzEoLG5s_12polars_error(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCsbTP5kh6vDpX_14polars_testing() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCsbTP5kh6vDpX_14polars_testing() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
