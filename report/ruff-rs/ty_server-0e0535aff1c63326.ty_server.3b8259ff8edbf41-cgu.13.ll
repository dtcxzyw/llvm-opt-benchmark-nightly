Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.13?download=true
inline.NumInlined: 1758
inline.NumDeleted: 744
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachuNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNCNCNCNCINvNtNtCsjNt1Wzngcv_9ty_server6server3api32background_document_request_taskNtNtNtB2T_8requests6rename20RenameRequestHandlerEs_0s_000E0uEB2X_:bb.a

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1399 ; 2 uses
  %i.bw = icmp ult i64 %i.bv, 6
  call void @llvm.assume(i1 %i.bw)
  %.not.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load ptr, ptr @_RNvNvNtNtNtNtCsjNt1Wzngcv_9ty_server6server3api6traits32BackgroundDocumentRequestHandler14handle_request10___CALLSITE, align 8, !noalias !1399, !nonnull !3, !align !9, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1399
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !1400, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !1400, !noundef !3
  store i64 1, ptr %i.j, align 8, !noalias !1399
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bz, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1399
  %.sroa.523.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.cb, ptr %.sroa.523.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1399
  %i.cc = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.ad unwind label %bb.aj, !noalias !1400 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0      ; 2 uses
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !3, !noalias !1400, !nonnull !3
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.ae unwind label %bb.aj, !noalias !1400

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1399
  %i.ci = load ptr, ptr @_RNvNvNtNtNtNtCsjNt1Wzngcv_9ty_server6server3api6traits32BackgroundDocumentRequestHandler14handle_request10___CALLSITE, align 8, !noalias !1399, !nonnull !3, !align !9, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1399
  store ptr %i.q, ptr %i.f, align 8, !noalias !1399
  %.sroa.427.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCshzDG46PUpLf_10lsp_server3msg9RequestIdNtB6_7Display3fmtCsjNt1Wzngcv_9ty_server, ptr %.sroa.427.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1399
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.o, ptr %i.ck, align 8, !noalias !1399
  %.sroa.431.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsjNt1Wzngcv_9ty_server6server3api5ErrorNtB6_7Display3fmtBC_, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1399
  store ptr @206, ptr %i.g, align 8, !noalias !1399
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.cl, align 8, !noalias !1399
  store ptr %i.g, ptr %i.h, align 8, !noalias !1399
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @21, ptr %i.cm, align 8, !noalias !1399
  store i64 1, ptr %i.i, align 8, !noalias !1399
  %.sroa.433.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1399
  %.sroa.534.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.534.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1399
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.cj, ptr %i.cn, align 8, !noalias !1399
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bx, ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.ah unwind label %bb.aj, !noalias !1400

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1399
  br label %bb.z

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1399
  br label %bb.ag

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjNt1Wzngcv_9ty_server.exit.i.i.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1399
  invoke void @_RINvMNtNtCsjNt1Wzngcv_9ty_server7session6clientNtB3_6Client12show_messageNtNtCscdodAO9FK5_5alloc6string6StringEB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.7.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, i32 noundef 0, i32 undef)
          to label %bb.ai unwind label %bb.aj, !noalias !1401

bb.ai:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjNt1Wzngcv_9ty_server.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1399
  %.pre.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !1399
  br label %bb.n

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsjNt1Wzngcv_9ty_server.exit.i.i.i.i.i, %bb.af, %bb.ad, %bb.ac, %bb.z, %bb.y, %.noexc45.i.i.i.i.i, %bb.x, %bb.v, %bb.s, %bb.r
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures13WorkspaceEditENtNtNtCsjNt1Wzngcv_9ty_server6server3api5ErrorEEB2A_(ptr noalias noundef align 8 dereferenceable(120) %i.p) #33
          to label %bb.k unwind label %bb.ak, !noalias !1400

bb.ak:                                            ; preds = %bb.aj, %bb.k
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !1400
  unreachable

_RNvYNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests6rename20RenameRequestHandlerNtNtB8_6traits32BackgroundDocumentRequestHandler14handle_requestBc_.exit.i.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1399
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session16DocumentSnapshotEBF_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.s)
          to label %bb.am unwind label %bb.al, !noalias !1396

bb.al:                                            ; preds = %_RNvYNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests6rename20RenameRequestHandlerNtNtB8_6traits32BackgroundDocumentRequestHandler14handle_requestBc_.exit.i.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.al, %bb.k
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cp, %bb.al ], [ %.pn.i.i.i.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtCs45bxiIjzMqg_5salsa6attachNtBG_8Attached6attach7DbGuardECsjNt1Wzngcv_9ty_server(ptr %.sroa.0.0.i.i.i.i) #33
          to label %common.resume.i unwind label %bb.ao, !noalias !1396

bb.am:                                            ; preds = %_RNvYNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server3api8requests6rename20RenameRequestHandlerNtNtB8_6traits32BackgroundDocumentRequestHandler14handle_requestBc_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1397
  %.not.i.i5.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %.not.i.i5.i.i.i, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1396, !noundef !3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !1396 ; 2 uses
  store ptr null, ptr %.sroa.0.0.i.i.i.i, align 8, !noalias !1396
  %.not3.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not3.i.i.i.i.i, label %bb.at, label %.noexc6.i.i.i

.noexc6.i.i.i:                                    ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !invariant.load !3, !noalias !1396, !nonnull !3
  %i.cv = call noundef nonnull align 8 ptr %i.cu(ptr noundef nonnull %i.cq), !noalias !1393, !inline_history !1392
  call void @_RNvMNtCs45bxiIjzMqg_5salsa11zalsa_localNtB2_17CancellationToken5reset(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv), !noalias !1393
  br label %bb.at

bb.ao:                                            ; preds = %bb.ap, %.body.i.i.i
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !1394
  unreachable

bb.ap:                                            ; preds = %bb.i
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNCNCINvNtNtCsjNt1Wzngcv_9ty_server6server3api32background_document_request_taskNtNtNtBM_8requests6rename20RenameRequestHandlerEs_0s_000EBQ_(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.w) #33
          to label %common.resume.i unwind label %bb.ao, !noalias !1394

bb.aq:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvNtCs45bxiIjzMqg_5salsa6attach6attachuNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNCNCNCNCINvNtNtCsjNt1Wzngcv_9ty_server6server3api32background_document_request_taskNtNtNtB2g_8requests6rename20RenameRequestHandlerEs_0s_000E0EB2k_(ptr noalias noundef nonnull align 8 dereferenceable(328) %1) #33
          to label %common.resume.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.as:                                            ; preds = %bb.c
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures12RenameParamsECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(328) %1)
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #32
  unreachable

bb.at:                                            ; preds = %.noexc6.i.i.i, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1394
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters11FilterStateE4withNCNCNvXs0_NtNtB10_8registry7shardedNtB2n_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_spans0_00NtBW_9FilterMapECsjNt1Wzngcv_9ty_server(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(32) null), !inline_history !1404 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val.i = load i64, ptr %i.c, align 8, !noundef !3
  ret i64 %.val.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB12_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0EB22_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !1417, !nonnull !3, !align !9, !noundef !3
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !6
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !6
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !3
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !3
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !3, !align !9
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !3, !align !9
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !28, !invariant.load !3, !noalias !1417
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !1417, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !1417, !inline_history !1407
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !24, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit.thread
  ], !prof !29

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !20, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.w = load ptr, ptr %0, align 8, !noalias !1418, !nonnull !3, !align !9, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !1418, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !1418, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !1418, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !28, !invariant.load !3, !noalias !1418
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit.i.i

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !1418, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !1418, !inline_history !1410
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.ap = load i64, ptr %i.ao, align 8, !range !15, !alias.scope !1419, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !1419
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !6, !alias.scope !1420
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.at = load ptr, ptr %0, align 8, !noalias !1420, !nonnull !3, !align !9, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1420, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1420, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !28, !invariant.load !3, !noalias !1420
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !1420, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !1407

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit: ; preds = %bb.p, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit.i.i, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit9, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit ], [ %i.ca, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  %i.bn = load ptr, ptr %0, align 8, !noalias !1421, !nonnull !3, !align !9, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !1421, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !1421, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !1421, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !28, !invariant.load !3, !noalias !1421
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit9

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0B14_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !1421, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !1421, !inline_history !1407
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bEB3k_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB12_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0EB22_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !1434, !nonnull !3, !align !9, !noundef !3
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !6
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !6
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !3
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !3
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !3, !align !9
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !3, !align !9
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !28, !invariant.load !3, !noalias !1434
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !1434, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !1434, !inline_history !1424
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !24, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit.thread
  ], !prof !29

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsjNt1Wzngcv_9ty_server(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !20, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %i.w = load ptr, ptr %0, align 8, !noalias !1435, !nonnull !3, !align !9, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !1435, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !1435, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !1435, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !28, !invariant.load !3, !noalias !1435
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit.i.i

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !1435, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !1435, !inline_history !1427
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !16

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.ap = load i64, ptr %i.ao, align 8, !range !15, !alias.scope !1436, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !1436
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !6, !alias.scope !1437
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %i.at = load ptr, ptr %0, align 8, !noalias !1437, !nonnull !3, !align !9, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1437, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1437, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !28, !invariant.load !3, !noalias !1437
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !1437, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !1424

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit: ; preds = %bb.p, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit.i.i, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit9, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit ], [ %i.ca, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsjNt1Wzngcv_9ty_server.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.bn = load ptr, ptr %0, align 8, !noalias !1438, !nonnull !3, !align !9, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !6, !alias.scope !1438, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !1438, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !28, !invariant.load !3, !noalias !1438
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit9

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0B14_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !1438, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !1438, !inline_history !1424
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtCsjNt1Wzngcv_9ty_server6system9LSPSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy18UseDefaultStrategyEs1_0E0bEB3k_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEEECsjNt1Wzngcv_9ty_server.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.j, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEECsjNt1Wzngcv_9ty_server.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_0
