Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.07?download=true
inline.NumInlined: 2524
inline.NumDeleted: 1328
begin_hunk_0_@_RINvXsv_NtNtCsg7jhnslYu1x_5rayon4iter6extendINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format16FormatPathResultEINtB8_14ParallelExtendB1c_E10par_extendINtNtB8_5unzip6UnzipAINtNtB8_10filter_map9FilterMapINtNtBa_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB1e_6format0EINtB2Q_12PartitionMapNCB5Z_s_0EIBH_NtB1e_18FormatCommandErrorEEEB1i_:bb.a
bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8EvorvD8vmS_4ruff8commands6format16FormatPathResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format16FormatPathResultEEB1d_.exit unwind label %bb.f

bb.o:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format16FormatPathResultEEB1d_.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.p:                                             ; preds = %bb.q, %.body, %bb.k
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.q:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format16FormatPathResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.p

.thread:                                          ; preds = %bb.q, %.body
  %.pn.pn17 = phi { ptr, i32 } [ %i.bh, %bb.q ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCsg7jhnslYu1x_5rayon4iter6extendINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEINtB8_14ParallelExtendB1c_E10par_extendINtNtB8_5unzip6UnzipBINtNtB8_10filter_map9FilterMapINtNtBa_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB1e_6format0EINtB2S_12PartitionMapNCB61_s_0EINtNtNtB8_7collect8consumer15CollectConsumerNtB1e_16FormatPathResultEEEB1i_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 80, i1 false), !alias.scope !2692
  %i.g = call { i64, i64 } @_RNvXs2_NtNtCsg7jhnslYu1x_5rayon4iter5unzipINtB5_6UnzipBINtNtB7_10filter_map9FilterMapINtNtB9_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvNtNtCs8EvorvD8vmS_4ruff8commands6format6format0EINtB5_12PartitionMapNCB3I_s_0EINtNtNtB7_7collect8consumer15CollectConsumerNtB3K_16FormatPathResultEENtB7_16ParallelIterator7opt_lenB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.g, 1
  call void @_RINvNtNtCsg7jhnslYu1x_5rayon4iter7collect21collect_with_consumerNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorNCINvB2_14special_extendINtNtB4_5unzip6UnzipBINtNtB4_10filter_map9FilterMapINtNtB6_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB12_6format0EINtB2q_12PartitionMapNCB5z_s_0EINtNtB2_8consumer15CollectConsumerNtB12_16FormatPathResultEEB10_E0EB16_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @_RINvXs2_NtNtCsg7jhnslYu1x_5rayon4iter5unzipINtB6_6UnzipBINtNtB8_10filter_map9FilterMapINtNtBa_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvNtNtCs8EvorvD8vmS_4ruff8commands6format6format0EINtB6_12PartitionMapNCB3J_s_0EINtNtNtB8_7collect8consumer15CollectConsumerNtB3L_16FormatPathResultEENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.n, null
  br i1 %.not.i.i22, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32, label %.lr.ph.ithread-pre-split.preheader

.lr.ph.ithread-pre-split.preheader:               ; preds = %.lr.ph.i.preheader
  %i.o = add i64 %i.l, -1                         ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val.i34 = load i64, ptr %i.p, align 8, !noalias !2693, !noundef !4 ; 3 uses
  %i.q = icmp ult i64 %.val.i34, 76861433640456466
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32: ; preds = %.lr.ph.i.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.ithread-pre-split.preheader, %.lr.ph.ithread-pre-split
  %i.u = phi i64 [ %i.ac, %.lr.ph.ithread-pre-split ], [ %.val.i34, %.lr.ph.ithread-pre-split.preheader ] ; 2 uses
  %i.v = phi i64 [ %i.z, %.lr.ph.ithread-pre-split ], [ %i.o, %.lr.ph.ithread-pre-split.preheader ]
  %i.w = phi ptr [ %i.y, %.lr.ph.ithread-pre-split ], [ %i.n, %.lr.ph.ithread-pre-split.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.i
  %i.z = add i64 %i.v, -1                         ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val.i = load i64, ptr %i.aa, align 8, !noalias !2693, !noundef !4 ; 2 uses
  %i.ab = icmp ult i64 %.val.i, 76861433640456466
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %.val.i, %i.u                   ; 2 uses
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit: ; preds = %.lr.ph.ithread-pre-split, %.lr.ph.i, %.lr.ph.ithread-pre-split.preheader
  %.lcssa = phi i64 [ %.val.i34, %.lr.ph.ithread-pre-split.preheader ], [ %i.ac, %.lr.ph.ithread-pre-split ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2694, !noundef !4 ; 2 uses
  %i.ag = load i64, ptr %0, align 8, !range !20, !alias.scope !2694, !noundef !4
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = icmp ugt i64 %.lcssa, %i.ah
  br i1 %i.ai, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit, !prof !40

bb.d:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.af, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 120)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit unwind label %bb.m

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit: ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread, %bb.d
  %i.aj = phi ptr [ %i.t, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread ], [ %i.ae, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit ], [ %i.ae, %bb.d ], [ %i.s, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEE9pop_frontB1w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.an, %bb.f ]
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.l

bb.f:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.b, align 8, !range !14, !noundef !4
  %.not = icmp eq i64 %i.ao, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEEB1W_.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.aq = load i64, ptr %i.al, align 8, !noundef !4 ; 5 uses
  %i.ar = load i64, ptr %i.aj, align 8, !alias.scope !2695, !noundef !4 ; 5 uses
  %i.as = load i64, ptr %0, align 8, !range !20, !alias.scope !2695, !noundef !4
  %i.at = sub i64 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i, !prof !5

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i: ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ar, i64 noundef %i.aq, i64 noundef 8, i64 noundef 120)
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i
  %i.av = load i64, ptr %i.aj, align 8, !alias.scope !2696, !noundef !4 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 76861433640456466
  call void @llvm.assume(i1 %i.aw)
  br label %bb.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i: ; preds = %bb.h
  %i.ax = icmp ult i64 %i.ar, 76861433640456466
  call void @llvm.assume(i1 %i.ax)
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i, %.noexc10
  %i.ay = phi i64 [ %i.av, %.noexc10 ], [ %i.ar, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i ]
  %i.az = load ptr, ptr %i.am, align 8, !alias.scope !2696, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw [120 x i8], ptr %i.az, i64 %i.ay
  %i.bb = mul i64 %i.aq, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull readonly align 8 %i.ap, i64 %i.bb, i1 false)
  %.pre.i = load i64, ptr %i.aj, align 8, !alias.scope !2696
  br label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEEB1W_.exit12: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEEB1W_.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.k:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #26
          to label %.body unwind label %bb.l

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i, %bb.i
  %i.bd = phi i64 [ %.pre.i, %bb.i ], [ %i.ar, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i ]
  %i.be = add i64 %i.bd, %i.aq
  store i64 %i.be, ptr %i.aj, align 8, !alias.scope !2696
  store i64 0, ptr %i.al, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_.exit unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.l:                                             ; preds = %bb.m, %.body, %bb.k
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.l

.thread:                                          ; preds = %bb.m, %.body
  %.pn.pn17 = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCsg7jhnslYu1x_5rayon4iter6extendINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEINtB8_14ParallelExtendB1c_E10par_extendINtNtB8_5unzip6UnzipBINtNtB8_10filter_map9FilterMapINtNtBa_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB1e_6format0EINtB2S_12PartitionMapNCB61_s_0ENtB6_15ListVecConsumerEEB1i_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !2708
  %i.g = call { i64, i64 } @_RNvXs2_NtNtCsg7jhnslYu1x_5rayon4iter5unzipINtB5_6UnzipBINtNtB7_10filter_map9FilterMapINtNtB9_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvNtNtCs8EvorvD8vmS_4ruff8commands6format6format0EINtB5_12PartitionMapNCB3I_s_0ENtNtB7_6extend15ListVecConsumerENtB7_16ParallelIterator7opt_lenB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i64, i64 } %i.g, 1
  call void @_RINvNtNtCsg7jhnslYu1x_5rayon4iter7collect21collect_with_consumerNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorNCINvB2_14special_extendINtNtB4_5unzip6UnzipBINtNtB4_10filter_map9FilterMapINtNtB6_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB12_6format0EINtB2q_12PartitionMapNCB5z_s_0ENtNtB4_6extend15ListVecConsumerEB10_E0EB16_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @_RINvXs2_NtNtCsg7jhnslYu1x_5rayon4iter5unzipINtB6_6UnzipBINtNtB8_10filter_map9FilterMapINtNtBa_5slice4IterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvNtNtCs8EvorvD8vmS_4ruff8commands6format6format0EINtB6_12PartitionMapNCB3J_s_0ENtNtB8_6extend15ListVecConsumerENtB8_16ParallelIterator15drive_unindexedB51_EB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.n, null
  br i1 %.not.i.i22, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32, label %.lr.ph.ithread-pre-split.preheader

.lr.ph.ithread-pre-split.preheader:               ; preds = %.lr.ph.i.preheader
  %i.o = add i64 %i.l, -1                         ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val.i34 = load i64, ptr %i.p, align 8, !noalias !2709, !noundef !4 ; 3 uses
  %i.q = icmp ult i64 %.val.i34, 76861433640456466
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32: ; preds = %.lr.ph.i.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.ithread-pre-split.preheader, %.lr.ph.ithread-pre-split
  %i.u = phi i64 [ %i.ac, %.lr.ph.ithread-pre-split ], [ %.val.i34, %.lr.ph.ithread-pre-split.preheader ] ; 2 uses
  %i.v = phi i64 [ %i.z, %.lr.ph.ithread-pre-split ], [ %i.o, %.lr.ph.ithread-pre-split.preheader ]
  %i.w = phi ptr [ %i.y, %.lr.ph.ithread-pre-split ], [ %i.n, %.lr.ph.ithread-pre-split.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.i
  %i.z = add i64 %i.v, -1                         ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val.i = load i64, ptr %i.aa, align 8, !noalias !2709, !noundef !4 ; 2 uses
  %i.ab = icmp ult i64 %.val.i, 76861433640456466
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add i64 %.val.i, %i.u                   ; 2 uses
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit: ; preds = %.lr.ph.ithread-pre-split, %.lr.ph.i, %.lr.ph.ithread-pre-split.preheader
  %.lcssa = phi i64 [ %.val.i34, %.lr.ph.ithread-pre-split.preheader ], [ %i.ac, %.lr.ph.ithread-pre-split ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2710, !noundef !4 ; 2 uses
  %i.ag = load i64, ptr %0, align 8, !range !20, !alias.scope !2710, !noundef !4
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = icmp ugt i64 %.lcssa, %i.ah
  br i1 %i.ai, label %bb.d, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit, !prof !40

bb.d:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.af, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 120)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit unwind label %bb.m

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit: ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread, %bb.d
  %i.aj = phi ptr [ %i.t, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread ], [ %i.ae, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit ], [ %i.ae, %bb.d ], [ %i.s, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB2l_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB2j_5accumjNtB4k_3Sum3sumINtB3l_3MapB3_B3V_EE0E0EB1k_.exit.thread32 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEE9pop_frontB1w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.an, %bb.f ]
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.l

bb.f:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.b, align 8, !range !14, !noundef !4
  %.not = icmp eq i64 %i.ao, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEEB1W_.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.aq = load i64, ptr %i.al, align 8, !noundef !4 ; 5 uses
  %i.ar = load i64, ptr %i.aj, align 8, !alias.scope !2711, !noundef !4 ; 5 uses
  %i.as = load i64, ptr %0, align 8, !range !20, !alias.scope !2711, !noundef !4
  %i.at = sub i64 %i.as, %i.ar
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i, !prof !5

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i: ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ar, i64 noundef %i.aq, i64 noundef 8, i64 noundef 120)
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i
  %i.av = load i64, ptr %i.aj, align 8, !alias.scope !2712, !noundef !4 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 76861433640456466
  call void @llvm.assume(i1 %i.aw)
  br label %bb.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i: ; preds = %bb.h
  %i.ax = icmp ult i64 %i.ar, 76861433640456466
  call void @llvm.assume(i1 %i.ax)
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i, %.noexc10
  %i.ay = phi i64 [ %i.av, %.noexc10 ], [ %i.ar, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i ]
  %i.az = load ptr, ptr %i.am, align 8, !alias.scope !2712, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw [120 x i8], ptr %i.az, i64 %i.ay
  %i.bb = mul i64 %i.aq, 120
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull readonly align 8 %i.ap, i64 %i.bb, i1 false)
  %.pre.i = load i64, ptr %i.aj, align 8, !alias.scope !2712
  br label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEEB1W_.exit12: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEEB1W_.exit12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.k:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.thread.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #26
          to label %.body unwind label %bb.l

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i, %bb.i
  %i.bd = phi i64 [ %.pre.i, %bb.i ], [ %i.ar, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorE7reserveBJ_.exit.i ]
  %i.be = add i64 %i.bd, %i.aq
  store i64 %i.be, ptr %i.aj, align 8, !alias.scope !2712
  store i64 0, ptr %i.al, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_.exit unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEEB1d_.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.l:                                             ; preds = %bb.m, %.body, %bb.k
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtNtNtCs8EvorvD8vmS_4ruff8commands6format18FormatCommandErrorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %bb.l

.thread:                                          ; preds = %bb.m, %.body
  %.pn.pn17 = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn.pn17
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtCs6Wt4yPw39th_9itertools9Itertools13sorted_by_keyINtNtBa_6option6OptionRNtBL_13SecondaryCodeENCNvMs_NtCs8EvorvD8vmS_4ruff7printerNtB3c_7Printer16write_statistics0EB3e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2732
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !2732
  %i.i = load i64, ptr %i.c, align 8, !range !3, !noalias !2732, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !36, !noalias !2732, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE7reserveCs8EvorvD8vmS_4ruff.exit.i.i.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !2732
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !noalias !2732
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE7reserveCs8EvorvD8vmS_4ruff.exit.i.i.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !2732, !nonnull !4, !noundef !4 ; 8 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2732
  %i.q = icmp eq ptr %1, %2
  br i1 %i.q, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit.thread, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE7reserveCs8EvorvD8vmS_4ruff.exit.i.i.i.i
  %i.r = add i64 %i.e, -8
  %i.s = sub i64 %i.r, %i.f                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 6 uses
  %i.v = shl i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 8> ; 2 uses
  %step.add19 = getelementptr i8, <2 x ptr> %vector.gep, i64 16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x ptr> %vector.gep, ptr %i.x, align 8, !noalias !2733
  store <2 x ptr> %step.add19, ptr %i.y, align 8, !noalias !2733
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !2722

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %n.vec, -1
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.06.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit.thread: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticE7reserveCs8EvorvD8vmS_4ruff.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2736
  br label %bb.g

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %i.aa = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  store ptr %.sroa.0.06.i.i.i.i.i, ptr %i.ab, align 8, !noalias !2733
  %i.ac = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %2
  br i1 %i.ae, label %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2725

_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa17 = phi i64 [ %ind.escape, %middle.block ], [ %i.aa, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa = phi i64 [ %n.vec, %middle.block ], [ %i.ac, %.lr.ph.i.i.i.i.i ] ; 5 uses
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !2732
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2732
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.lcssa, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2737
  store ptr %i.a, ptr %i.b, align 8, !noalias !2738
  %i.af = icmp eq i64 %.lcssa17, 0
  br i1 %i.af, label %bb.g, label %bb.c, !prof !2739

bb.c:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit
  %i.ag = icmp samesign ult i64 %.lcssa17, 20
  br i1 %i.ag, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyINtNtB8_6option6OptionRNtB12_13SecondaryCodeENCNvMs_NtCs8EvorvD8vmS_4ruff7printerNtB3s_7Printer16write_statistics0E0INtNtB1W_3vec3VecBZ_EEB3u_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef range(i64 0, 1152921504606846976) %.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_11sort_by_keyINtNtBa_6option6OptionRNtB1p_13SecondaryCodeENCNvMs_NtCs8EvorvD8vmS_4ruff7printerNtB3Q_7Printer16write_statistics0E0EB3S_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef range(i64 0, 1152921504606846976) %.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECs8EvorvD8vmS_4ruff.exit unwind label %bb.h

bb.g:                                             ; preds = %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit, %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit.thread, %bb.d, %bb.e
  %i.ai = phi i64 [ 0, %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit.thread ], [ 1, %_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEINtB2_12SpecFromIterBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBU_EE9from_iterCs8EvorvD8vmS_4ruff.exit ], [ %.lcssa, %bb.d ], [ %.lcssa, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2737
  %i.aj = icmp ult i64 %i.ai, 1152921504606846976
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %i.an, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingss_1__NtBa_10ConventionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1v_7Visitor14visit_byte_bufNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  invoke void @_RINvXNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settingss_1__NtB8_10ConventionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1t_7Visitor11visit_bytesNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8EvorvD8vmS_4ruff.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
end_hunk_0
