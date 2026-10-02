Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_server-9f9a063b6d2572a4.ruff_server.250241f5eb4d154d-cgu.14?download=true
inline.NumInlined: 2824
inline.NumDeleted: 1435
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_command8ArgumentE8dedup_byNCNvXs_BG_NtBG_14ExecuteCommandNtNtBK_6traits18SyncRequestHandler3runs2_0EBO_:bb.a
  br i1 %i.z, label %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20, label %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20.thread

.thread:                                          ; preds = %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit.thread, %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_command8ArgumentEBL_.exit._crit_edge
  ret void

_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20: ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %i.w, i64 -88
  %.val16 = load ptr, ptr %i.aa, align 8, !nonnull !8, !noundef !8
  %i.ab = getelementptr i8, ptr %i.v, i64 8
  %.val14 = load ptr, ptr %i.ab, align 8, !nonnull !8, !noundef !8
  %bcmp.i19 = tail call i32 @bcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val16, i64 %.val15)
  %i.ac = icmp eq i32 %bcmp.i19, 0
  br i1 %i.ac, label %bb.f, label %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20.thread

_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20.thread: ; preds = %.lr.ph, %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false)
  %i.ad = add i64 %.sroa.12.134, 1
  %i.ae = add nuw nsw i64 %.sroa.5.135, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_command8ArgumentEBL_.exit21

bb.f:                                             ; preds = %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20
  %i.af = add nuw nsw i64 %.sroa.5.135, 1         ; 2 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_command8ArgumentEBL_.exit21 unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_command8ArgumentEBL_.exit21: ; preds = %bb.f, %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20.thread
  %.sroa.12.2 = phi i64 [ %i.ad, %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20.thread ], [ %.sroa.12.134, %bb.f ] ; 2 uses
  %.sroa.5.2 = phi i64 [ %i.ae, %_RNCNvXs_NtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_commandNtB6_14ExecuteCommandNtNtBa_6traits18SyncRequestHandler3runs2_0Be_.exit20.thread ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = icmp samesign ult i64 %.sroa.5.2, %i.b
  br i1 %i.ag, label %.lr.ph, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server3api8requests15execute_command8ArgumentEBL_.exit._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs3aZOKTqqjPR_11ruff_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs4NRVxsYgnAr_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs3aZOKTqqjPR_11ruff_server(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.j = sub i64 %i.b, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.m, align 8
  store ptr %i.i, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.o, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2a_10filter_map9FilterMapINtNtB6_9into_iter8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCs3aZOKTqqjPR_11ruff_server4lint5check0ENCB4G_s_0EEB4K_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 6 uses
  %i.b = alloca [288 x i8], align 8               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCs3aZOKTqqjPR_11ruff_server.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  invoke void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_8find_map5checkBW_TjNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticEQNCNvNtCs3aZOKTqqjPR_11ruff_server4lint5check0E0INtNtNtB1T_3ops12control_flow11ControlFlowB3j_EEB4A_(ptr noalias noundef nonnull sret([296 x i8]) align 8 captures(address) dereferenceable(296) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8, !range !12, !noalias !133, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.g, -2
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCs3aZOKTqqjPR_11ruff_server4lint5check0ENCB3h_s_0EEB3l_.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6.0..sroa_idx4.i, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  store i64 %i.g, ptr %i.b, align 8
  %i.i = load i64, ptr %i.e, align 8, !noundef !8 ; 5 uses
  %i.j = icmp ult i64 %i.i, 32025597350190194
  call void @llvm.assume(i1 %i.j)
  %i.k = load i64, ptr %0, align 8, !range !13, !noundef !8
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.h, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCs3aZOKTqqjPR_11ruff_server.exit

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !133
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.h, %bb.e
  %i.m = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw [288 x i8], ptr %i.m, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.n, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  %i.o = add nuw nsw i64 %i.i, 1
  store i64 %i.o, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.g:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(288) %i.b) #34
          to label %bb.c unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 288)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10DiagnosticE7reserveCs3aZOKTqqjPR_11ruff_server.exit unwind label %bb.g

bb.i:                                             ; preds = %bb.c, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_10filter_map9FilterMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENCNvNtCs3aZOKTqqjPR_11ruff_server4lint5check0ENCB3h_s_0EEB3l_.exit: ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE14extend_trustedINtNtCs4NRVxsYgnAr_4core6option8IntoIterBF_EECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %1, align 8, !range !14, !noundef !8 ; 2 uses
  %i.a = icmp ne i64 %.val, -1                    ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !146, !noundef !8 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !13, !alias.scope !146, !noundef !8
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 8, i64 noundef 128)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit_crit_edge unwind label %bb.e

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.c, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit_crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit_crit_edge ], [ %i.d, %bb.a ] ; 3 uses
  br i1 %i.a, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %i.h ; 2 uses
  store i64 %.val, ptr %i.k, align 8, !noalias !147
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.410.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.0..sroa_idx, i64 120, i1 false)
  %i.l = add i64 %i.h, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit
  %.val5.i.i = phi i64 [ %i.l, %._crit_edge.i.i ], [ %i.h, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit ]
  store i64 %.val5.i.i, ptr %i.c, align 8, !noalias !148
  ret void

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(128) %1) #34
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2s_6filter6FilterINtNtNtB2w_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationENCINvB4f_21secondary_annotationsB3M_E0ENCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0EEB5L_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !189
  store ptr %i.e, ptr %i.b, align 16, !noalias !190
  store ptr %1, ptr %i.f, align 8, !noalias !190
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !191, !noalias !192, !nonnull !8, !noundef !8 ; 2 uses
  %.promoted.i.i.i.i9 = load ptr, ptr %i.d, align 8, !alias.scope !191, !noalias !192 ; 2 uses
  %i.i = icmp eq ptr %.promoted.i.i.i.i9, %i.h
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.i.preheader.lr.ph

.lr.ph.i.i.i.i.preheader.lr.ph:                   ; preds = %bb.a
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %1, i64 1
  br label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i.i.preheader.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit
  %.promoted.i.i.i.i10 = phi ptr [ %.promoted.i.i.i.i9, %.lr.ph.i.i.i.i.preheader.lr.ph ], [ %.promoted.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit ]
  %i.l = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader.lr.ph ], [ %i.ae, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  %i.m = phi ptr [ %i.v, %bb.c ], [ %i.e, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.o, %bb.c ], [ %.promoted.i.i.i.i10, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  store ptr %i.o, ptr %i.d, align 8, !alias.scope !197, !noalias !192
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.p = load i8, ptr %i.m, align 1, !range !7, !alias.scope !200, !noalias !201, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  %.not.i.i.i.i.i = xor i1 %i.q, true
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load i8, ptr %i.r, align 8, !range !7, !alias.scope !199, !noalias !202
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.t, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread.i.i.i.i, label %bb.b

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store i8 1, ptr %i.m, align 1, !alias.scope !200, !noalias !201
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !203
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0INtB7_5FnMutTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationEE8call_mutBU_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n), !noalias !204
  %i.u = load i64, ptr %i.a, align 8, !range !14, !noalias !203, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread15.i.i.i.i, label %bb.e

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread15.i.i.i.i: ; preds = %bb.b
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !198, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread15.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread.i.i.i.i
  %i.v = phi ptr [ %.pre.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread15.i.i.i.i ], [ %i.m, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics0_0E0E0B6c_.exit.thread.i.i.i.i ]
  %i.w = icmp eq ptr %i.o, %i.l
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ag

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.79.0..sroa_idx.i.i.i.i, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !206
  store i64 %i.u, ptr %i.c, align 8
  %i.x = load i64, ptr %i.j, align 8, !noundef !8 ; 5 uses
  %i.y = icmp ult i64 %i.x, 72057594037927936
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !13, !noundef !8
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit

.loopexit:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !206
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.g, %bb.e
  %i.ab = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ac, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  %i.ad = add nuw nsw i64 %i.x, 1
  store i64 %i.ad, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !211
  store <2 x ptr> %3, ptr %i.b, align 16, !noalias !212
  %i.ae = load ptr, ptr %i.g, align 8, !alias.scope !213, !noalias !192, !nonnull !8, !noundef !8 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !213, !noalias !192 ; 2 uses
  %i.af = icmp eq ptr %.promoted.i.i.i.i, %i.ae
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i.i.preheader

bb.f:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(128) %i.c) #34
          to label %bb.d unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef 1, i64 noundef 8, i64 noundef 128)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB2s_6filter6FilterINtNtNtB2w_5slice4iter4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationENCINvB4f_21secondary_annotationsB3M_E0ENCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0EEB5L_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !254
  store ptr %i.e, ptr %i.b, align 16, !noalias !255
  store ptr %1, ptr %i.f, align 8, !noalias !255
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !256, !noalias !257, !nonnull !8, !noundef !8 ; 2 uses
  %.promoted.i.i.i.i9 = load ptr, ptr %i.d, align 8, !alias.scope !256, !noalias !257 ; 2 uses
  %i.i = icmp eq ptr %.promoted.i.i.i.i9, %i.h
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.i.preheader.lr.ph

.lr.ph.i.i.i.i.preheader.lr.ph:                   ; preds = %bb.a
  %.sroa.79.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %1, i64 1
  br label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i.i.i.preheader.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit
  %.promoted.i.i.i.i10 = phi ptr [ %.promoted.i.i.i.i9, %.lr.ph.i.i.i.i.preheader.lr.ph ], [ %.promoted.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit ]
  %i.l = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader.lr.ph ], [ %i.ae, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.c
  %i.m = phi ptr [ %i.v, %bb.c ], [ %i.e, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.o, %bb.c ], [ %.promoted.i.i.i.i10, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  store ptr %i.o, ptr %i.d, align 8, !alias.scope !262, !noalias !257
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.p = load i8, ptr %i.m, align 1, !range !7, !alias.scope !265, !noalias !266, !noundef !8
  %i.q = trunc nuw i8 %i.p to i1
  %.not.i.i.i.i.i = xor i1 %i.q, true
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.s = load i8, ptr %i.r, align 8, !range !7, !alias.scope !264, !noalias !267
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %i.t, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread.i.i.i.i, label %bb.b

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store i8 1, ptr %i.m, align 1, !alias.scope !265, !noalias !266
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0INtB7_5FnMutTRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationEE8call_mutBU_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.n), !noalias !269
  %i.u = load i64, ptr %i.a, align 8, !range !14, !noalias !268, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread15.i.i.i.i, label %bb.e

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread15.i.i.i.i: ; preds = %bb.b
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !263, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread15.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread.i.i.i.i
  %i.v = phi ptr [ %.pre.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread15.i.i.i.i ], [ %i.m, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationENCINvB18_21secondary_annotationsINtNtNtBa_5slice4iter4IterB16_EE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2A_QNCNvNtCs3aZOKTqqjPR_11ruff_server4lint17to_lsp_diagnostics1_0E0E0B6c_.exit.thread.i.i.i.i ]
  %i.w = icmp eq ptr %i.o, %i.l
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ag

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.79.0..sroa_idx.i.i.i.i, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !271
  store i64 %i.u, ptr %i.c, align 8
  %i.x = load i64, ptr %i.j, align 8, !noundef !8 ; 5 uses
  %i.y = icmp ult i64 %i.x, 72057594037927936
  call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !13, !noundef !8
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit

.loopexit:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !271
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.g, %bb.e
  %i.ab = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ac, ptr noundef nonnull align 8 dereferenceable(128) %i.c, i64 128, i1 false)
  %i.ad = add nuw nsw i64 %i.x, 1
  store i64 %i.ad, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !276
  store <2 x ptr> %3, ptr %i.b, align 16, !noalias !277
  %i.ae = load ptr, ptr %i.g, align 8, !alias.scope !278, !noalias !257, !nonnull !8, !noundef !8 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !278, !noalias !257 ; 2 uses
  %i.af = icmp eq ptr %.promoted.i.i.i.i, %i.ae
  br i1 %i.af, label %.loopexit, label %.lr.ph.i.i.i.i.preheader

bb.f:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(128) %i.c) #34
          to label %bb.d unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef 1, i64 noundef 8, i64 noundef 128)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationE7reserveCs3aZOKTqqjPR_11ruff_server.exit unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(1400) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !281, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECs3aZOKTqqjPR_11ruff_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(1400) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECs3aZOKTqqjPR_11ruff_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheEECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10PatternSetEEECs3aZOKTqqjPR_11ruff_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !8  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8            ; 2 uses
  %i.b = icmp eq ptr %.val, null
  %i.c = icmp eq i64 %.val1, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10PatternSetEECs3aZOKTqqjPR_11ruff_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #25
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10PatternSetEECs3aZOKTqqjPR_11ruff_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util6search10PatternSetEECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3bRTD9q0ySo_10jod_thread10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs3bRTD9q0ySo_10jod_thread10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs3bRTD9q0ySo_10jod_thread10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs_Cs3bRTD9q0ySo_10jod_threadINtB4_10JoinHandleINtNtCs4NRVxsYgnAr_4core6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEENtNtNtBR_3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !288, !noundef !8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2AWtUsOyxgP_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEEECs3aZOKTqqjPR_11ruff_server.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2AWtUsOyxgP_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEEECs3aZOKTqqjPR_11ruff_server.exit.i unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !289, !noundef !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs3bRTD9q0ySo_10jod_thread10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs3bRTD9q0ySo_10jod_thread10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEECs3aZOKTqqjPR_11ruff_server.exit

bb.g:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs2AWtUsOyxgP_3std6thread11join_handle10JoinHandleINtNtB4_6result6ResultuNtCsiXichZnxgbf_6anyhow5ErrorEEEECs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs3aZOKTqqjPR_11ruff_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !296, !nonnull !8, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !296, !noundef !8 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs3aZOKTqqjPR_11ruff_server.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs3aZOKTqqjPR_11ruff_server.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i.i
  %.sroa.0.0.i.i.i1 = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.0.i.i.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i1, 1     ; 4 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i.i unwind label %bb.d, !noalias !296

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit7.i.i.i: ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i.i.i2, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit7.i.i.i
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit7.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.1.i.i.i2
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit7.i.i.i unwind label %bb.e, !noalias !296

bb.e:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !296
  unreachable

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit7.i.i.i, %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs3aZOKTqqjPR_11ruff_server.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs3aZOKTqqjPR_11ruff_server.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i.i, %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3aZOKTqqjPR_11ruff_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3aZOKTqqjPR_11ruff_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector22UnresolvedRuleSelectorEECs3aZOKTqqjPR_11ruff_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

end_hunk_0
