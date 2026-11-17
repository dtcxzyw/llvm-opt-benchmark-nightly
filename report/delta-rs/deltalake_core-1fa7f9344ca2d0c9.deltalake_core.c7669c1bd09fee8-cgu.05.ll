Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.05?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int16TypeECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9318
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.m
  %.pn.ph.i = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.bl, %bb.q ], [ %i.bl, %bb.r ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.o) #38
          to label %bb.u unwind label %bb.s, !noalias !9318

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !9325)
  call void @llvm.experimental.noalias.scope.decl(metadata !9326)
  call void @llvm.experimental.noalias.scope.decl(metadata !9327)
  %i.bp = load ptr, ptr %i.r, align 8, !alias.scope !9328, !noalias !9318, !nonnull !5, !noundef !5
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 release, align 8, !noalias !9329
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.v, label %.body.thread87

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #42
          to label %.body.thread87 unwind label %bb.s, !noalias !9318

bb.w:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %.body.thread87 unwind label %bb.s, !noalias !9318

bb.x:                                             ; preds = %bb.i, %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionsEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %.body.thread87 unwind label %bb.s, !noalias !9318

bb.y:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !9330)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bu = load <2 x ptr>, ptr %i.z, align 16
  store <2 x ptr> %i.bu, ptr %i.j, align 16, !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9331
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.y)
          to label %bb.ab unwind label %bb.aa, !noalias !9332

.body33.i:                                        ; preds = %bb.am, %.body.i, %bb.ad, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.cj, %bb.am ], [ %i.by, %bb.aa ], [ %i.cb, %bb.ad ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9333)
  call void @llvm.experimental.noalias.scope.decl(metadata !9334)
  %i.bv = load ptr, ptr %i.j, align 16, !alias.scope !9335, !noalias !9331, !nonnull !5, !noundef !5
  %i.bw = atomicrmw add ptr %i.bv, i64 -1 release, align 8, !noalias !9336
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.z:                                             ; preds = %.body33.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.au, !noalias !9337

bb.aa:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

bb.ab:                                            ; preds = %bb.y
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9338
  %i.bz = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #41, !noalias !9338 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ac, label %bb.af, !prof !6

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc37.i unwind label %bb.ad, !noalias !9337

.noexc37.i:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body33.i unwind label %bb.ae, !noalias !9337

bb.ae:                                            ; preds = %bb.ad
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9337
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !9337
  store ptr %i.bz, ptr %i.h, align 8, !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9331
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.ah unwind label %bb.ag, !noalias !9337

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ak, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ce, %bb.ag ], [ %i.ch, %bb.ak ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #38
          to label %.body33.i unwind label %bb.au, !noalias !9337

bb.ah:                                            ; preds = %bb.af
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd)
          to label %bb.ai unwind label %bb.ag, !noalias !9337

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9339
  %i.cf = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #41, !noalias !9339 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.aj, label %bb.an, !prof !6

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc38.i unwind label %bb.ak, !noalias !9337

.noexc38.i:                                       ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %.body.i unwind label %bb.al, !noalias !9337

bb.al:                                            ; preds = %bb.ak
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9337
  unreachable

bb.am:                                            ; preds = %.split, %bb.aq, %bb.an
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body33.i unwind label %bb.au, !noalias !9337

bb.an:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !9337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9331
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ck, align 8, !noalias !9331
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.cf, ptr %i.cl, align 8, !noalias !9331
  store i8 34, ptr %i.i, align 8, !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9331
  %i.cm = invoke noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.ao unwind label %bb.am, !noalias !9337 ; 3 uses

bb.ao:                                            ; preds = %bb.an
  store i64 %i.cm, ptr %i.e, align 8, !noalias !9331
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !9330, !nonnull !5, !noundef !5 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !9330, !noundef !5
  %.idx.i = and i64 %i.cq, -2                     ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i ; 2 uses
  %i.cs = icmp samesign eq i64 %.idx.i, 0
  br i1 %i.cs, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.cx = load ptr, ptr %i.ct, align 8
  %.fr = freeze ptr %i.cx
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.fr, null
  %i.cy = load i64, ptr %i.cu, align 8
  %i.cz = load ptr, ptr %i.cv, align 8
  %i.da = load i64, ptr %i.cw, align 8
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.split.us, label %.lr.ph.i.i.split

.lr.ph.i.i.split.us:                              ; preds = %.lr.ph.i.i, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.us
  %i.db = phi i64 [ %i.dh, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.us ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.dc = phi ptr [ %i.dg, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.us ], [ %i.co, %.lr.ph.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9340)
  call void @llvm.experimental.noalias.scope.decl(metadata !9341)
  %i.dd = load i16, ptr %i.dc, align 2, !alias.scope !9342, !noalias !9343, !noundef !5 ; 2 uses
  %i.de = icmp sgt i16 %i.dd, -1
  %i.df = zext nneg i16 %i.dd to i64
  %.not.i.i.i.i.i.us = icmp ugt i64 %i.cm, %i.df
  %or.cond.i.us = select i1 %i.de, i1 %.not.i.i.i.i.i.us, i1 false
  br i1 %or.cond.i.us, label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.us, label %.split

_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.us: ; preds = %.lr.ph.i.i.split.us
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 2 uses
  %i.dh = add nuw i64 %i.db, 1
  %i.di = icmp eq ptr %i.dg, %i.cr
  br i1 %i.di, label %.loopexit, label %.lr.ph.i.i.split.us

.lr.ph.i.i.split:                                 ; preds = %.lr.ph.i.i, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.dj = phi i64 [ %i.dz, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.dk = phi ptr [ %i.dl, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.co, %.lr.ph.i.i ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9340)
  call void @llvm.experimental.noalias.scope.decl(metadata !9341)
  %i.dm = load i16, ptr %i.dk, align 2, !alias.scope !9342, !noalias !9343, !noundef !5 ; 2 uses
  %i.dn = icmp sgt i16 %i.dm, -1
  %i.do = zext nneg i16 %i.dm to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.cm, %i.do
  %or.cond.i = select i1 %i.dn, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.i, label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.split
  %i.dp = icmp ult i64 %i.dj, %i.cy
  br i1 %i.dp, label %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.aq, !prof !10

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc40.i unwind label %bb.am, !noalias !9337

.noexc40.i:                                       ; preds = %bb.aq
  unreachable

_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.ap
  %i.dq = add i64 %i.da, %i.dj                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !9344, !noundef !5
  %i.du = trunc i64 %i.dq to i8
  %i.dv = and i8 %i.du, 7
  %i.dw = xor i8 %i.dt, -1
  %i.dx = lshr i8 %i.dw, %i.dv
  %.fr8.i.i.i.i = freeze i8 %i.dx
  %i.dy = trunc i8 %.fr8.i.i.i.i to i1
  br i1 %i.dy, label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.split

_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %.lr.ph.i.i.split
  %i.dz = add nuw i64 %i.dj, 1
  %i.ea = icmp eq ptr %i.dl, %i.cr
  br i1 %i.ea, label %.loopexit, label %.lr.ph.i.i.split

.split:                                           ; preds = %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %.lr.ph.i.i.split.us
  %.us-phi = phi i64 [ %i.db, %.lr.ph.i.i.split.us ], [ %i.dj, %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ]
  %.us-phi105 = phi ptr [ %i.dc, %.lr.ph.i.i.split.us ], [ %i.dk, %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9331
  store i64 %.us-phi, ptr %i.d, align 8, !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9331
  store ptr %.us-phi105, ptr %i.c, align 8, !noalias !9331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9331
  store ptr %i.c, ptr %i.a, align 8, !noalias !9331
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRsNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !9331
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.eb, align 8, !noalias !9331
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !9331
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.ec, align 8, !noalias !9331
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !9331
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @187, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.am, !noalias !9337

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9331
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.ar unwind label %bb.aa, !noalias !9337

bb.ar:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9331
  call void @llvm.experimental.noalias.scope.decl(metadata !9345)
  call void @llvm.experimental.noalias.scope.decl(metadata !9346)
  %i.ed = load ptr, ptr %i.j, align 16, !alias.scope !9347, !noalias !9331, !nonnull !5, !noundef !5
  %i.ee = atomicrmw add ptr %i.ed, i64 -1 release, align 8, !noalias !9348
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i unwind label %bb.at, !noalias !9337

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.at, %bb.z, %.body33.i
  %.pn31.i = phi { ptr, i32 } [ %i.eg, %bb.at ], [ %.pn.i, %bb.z ], [ %.pn.i, %.body33.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types9Int16TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.y) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %bb.au, !noalias !9332

bb.at:                                            ; preds = %bb.as
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i: ; preds = %bb.as, %bb.ar
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types9Int16TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4, i64 24, i1 false)
  store i64 -9223372036854775794, ptr %i.u, align 8
  call void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.am, %.body.i, %bb.z
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9332
  unreachable

.loopexit:                                        ; preds = %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.us, %bb.ao
  %.sroa.04.i.sroa.0.0.copyload = load i64, ptr %i.i, align 8, !noalias !9331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false)
  %.sroa.04.i.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.i.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %i.y, i64 96, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.020.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.020.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.ei, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.020.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.020.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.el = load <2 x ptr>, ptr %i.j, align 16, !noalias !9331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4, i64 24, i1 false)
  store i64 1, ptr %i.v, align 8
  store i64 1, ptr %i.ej, align 8
  store i64 %.sroa.04.i.sroa.0.0.copyload, ptr %i.ek, align 8
  store <2 x ptr> %i.el, ptr %.sroa.020.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  store i8 0, ptr %.sroa.2.0..sroa_idx21, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !9349
  %i.em = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef 8) #41, !noalias !9349 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.av, label %bb.ay, !prof !6

bb.av:                                            ; preds = %.loopexit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #37
          to label %.noexc59 unwind label %bb.aw

.noexc59:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB1q_5types9Int16TypeEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.v) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ay:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.em, ptr noundef nonnull align 8 dereferenceable(160) %i.v, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.em, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @76, ptr %i.er, align 8
  store i64 20, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43.i, %bb.ay
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61: ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i, %.body.thread87, %bb.az
  %eh.lpad-body86 = phi { ptr, i32 } [ %eh.lpad-body90, %.body.thread87 ], [ %i.eo, %bb.aw ], [ %eh.lpad-body90, %bb.az ], [ %.pn31.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  resume { ptr, i32 } %eh.lpad-body86

.body.thread87:                                   ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %.body.thread92
  %eh.lpad-body90 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread92 ], [ %i.bs, %bb.w ], [ %i.bt, %bb.x ], [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9350)
  call void @llvm.experimental.noalias.scope.decl(metadata !9351)
  %i.es = load ptr, ptr %i.z, align 16, !alias.scope !9352, !nonnull !5, !noundef !5
  %i.et = atomicrmw add ptr %i.es, i64 -1 release, align 8, !noalias !9352
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61

bb.az:                                            ; preds = %.body.thread87
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !9418 {
bb.a:
  %.sroa.04.i.sroa.4 = alloca [112 x i8], align 8 ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 16               ; 11 uses
  %i.k = alloca [56 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [136 x i8], align 8               ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 16               ; 10 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 5 uses
  %i.v = alloca [160 x i8], align 8               ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 9 uses
  %i.y = alloca [96 x i8], align 8                ; 12 uses
  %i.z = alloca [16 x i8], align 16               ; 9 uses
  store ptr %1, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ab = invoke noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z)
          to label %bb.b unwind label %.body.thread92

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types9UInt8TypeE5sliceCs14kWLkQVSKO_14deltalake_core:bb.a
bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferhEECs14kWLkQVSKO_14deltalake_core.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB4_15DictionaryArrayNtNtB8_5types10UInt16TypeE7try_newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19677 {
bb.a:
  %.sroa.04 = alloca [120 x i8], align 8          ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 16               ; 9 uses
  store ptr %2, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.d unwind label %bb.c

.body33:                                          ; preds = %bb.f, %bb.c, %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.z, %bb.o ], [ %i.o, %bb.c ], [ %i.r, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19678)
  call void @llvm.experimental.noalias.scope.decl(metadata !19679)
  %i.l = load ptr, ptr %i.j, align 16, !alias.scope !19680, !nonnull !5, !noundef !5
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !19680
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %.body33
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aa

bb.c:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !19681
  %i.p = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #41, !noalias !19681 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.h, !prof !6

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc37 unwind label %bb.f

.noexc37:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #38
          to label %.body33 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store ptr %i.p, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = invoke noundef nonnull align 8 ptr @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.x, %bb.m ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #38
          to label %.body33 unwind label %bb.aa

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !19682
  %i.v = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #41, !noalias !19682 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.l, label %bb.p, !prof !6

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc38 unwind label %bb.m

.noexc38:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #38
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.o:                                             ; preds = %bb.v, %bb.u, %bb.p
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body33 unwind label %bb.aa

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.v, ptr %i.ab, align 8
  store i8 34, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = invoke noundef i64 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.q unwind label %bb.o       ; 2 uses

bb.q:                                             ; preds = %bb.p
  store i64 %i.ac, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %.idx = and i64 %i.ag, -2                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %i.ai = icmp samesign eq i64 %.idx, 0
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.i, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.an = phi i64 [ 0, %.lr.ph.i ], [ %i.bg, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i ] ; 4 uses
  %i.ao = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.ap, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19683)
  call void @llvm.experimental.noalias.scope.decl(metadata !19684)
  %i.aq = load i16, ptr %i.ao, align 2, !alias.scope !19685, !noalias !19686, !noundef !5
  %i.ar = zext i16 %i.aq to i64
  %.not.i.i.i.i = icmp ugt i64 %i.ac, %i.ar
  br i1 %.not.i.i.i.i, label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !19687)
  %i.as = load ptr, ptr %i.aj, align 8, !alias.scope !19688, !noalias !19689, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i64, ptr %i.ak, align 8, !alias.scope !19687, !noalias !19689, !noundef !5
  %i.au = icmp ult i64 %i.an, %i.at
  br i1 %i.au, label %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.u, !prof !10

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc40 unwind label %bb.o

.noexc40:                                         ; preds = %bb.u
  unreachable

_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.t
  %i.av = load ptr, ptr %i.al, align 8, !alias.scope !19687, !noalias !19689, !noundef !5
  %i.aw = load i64, ptr %i.am, align 8, !alias.scope !19687, !noalias !19689, !noundef !5
  %i.ax = add i64 %i.aw, %i.an                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !19690, !noundef !5
  %i.bb = trunc i64 %i.ax to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = xor i8 %i.ba, -1
  %i.be = lshr i8 %i.bd, %i.bc
  %.fr8.i.i.i = freeze i8 %i.be
  %i.bf = trunc i8 %.fr8.i.i.i to i1
  br i1 %i.bf, label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.v

_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.r
  %i.bg = add nuw i64 %i.an, 1
  %i.bh = icmp eq ptr %i.ap, %i.ah
  br i1 %i.bh, label %.loopexit, label %bb.r

bb.v:                                             ; preds = %bb.s, %_RNCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.an, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ao, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRtNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.418.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.bi, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.bj, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @187, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o

.loopexit:                                        ; preds = %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.04.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.04, i64 120, i1 false)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load <2 x ptr>, ptr %i.j, align 16
  store <2 x ptr> %i.bk, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43, %.loopexit
  ret void

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775794, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 2, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.x unwind label %bb.c

bb.x:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !19691)
  call void @llvm.experimental.noalias.scope.decl(metadata !19692)
  %i.bm = load ptr, ptr %i.j, align 16, !alias.scope !19693, !nonnull !5, !noundef !5
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !19693
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43 unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body33, %bb.b, %bb.z
  %.pn31 = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %.pn, %bb.b ], [ %.pn, %.body33 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt16TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %1) #38
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit43: ; preds = %bb.x, %bb.y
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt16TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.w

bb.aa:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit, %bb.o, %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  resume { ptr, i32 } %.pn31
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE16in_progress_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19694 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer17ArrowColumnWriterENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNCNvMs_BS_INtBS_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE16in_progress_size0NCINvXsK_NtB20_5accumjNtB4R_3Sum3sumINtB2M_3MapBF_B3m_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer17ArrowColumnWriterENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNCNvMs_BS_INtBS_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE16in_progress_size0NCINvXsK_NtB20_5accumjNtB4R_3Sum3sumINtB2M_3MapBF_B3m_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.k, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.j, %.preheader ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw [1184 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.i = tail call noundef i64 @_RNvMsa_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_17ArrowColumnWriter25get_estimated_total_bytes(ptr noundef nonnull align 8 %i.h)
  %i.j = add i64 %i.i, %.sroa.02.0.i              ; 2 uses
  %i.k = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer17ArrowColumnWriterENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNCNvMs_BS_INtBS_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE16in_progress_size0NCINvXsK_NtB20_5accumjNtB4R_3Sum3sumINtB2M_3MapBF_B3m_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer17ArrowColumnWriterENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB22_8adapters3map8map_foldRBQ_jjNCNvMs_BS_INtBS_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE16in_progress_size0NCINvXsK_NtB20_5accumjNtB4R_3Sum3sumINtB2M_3MapBF_B3m_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %.preheader ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE20try_new_with_optionsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(336) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !19761 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [264 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [216 x i8], align 8               ; 10 uses
  %.sroa.67 = alloca [32 x i8], align 8           ; 6 uses
  %.sroa.5103 = alloca [32 x i8], align 8         ; 5 uses
  %.sroa.6104 = alloca [144 x i8], align 8        ; 5 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 12 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %i.k = alloca [56 x i8], align 8                ; 14 uses
  %i.l = alloca [248 x i8], align 8               ; 10 uses
  %i.m = alloca [8 x i8], align 8                 ; 9 uses
  store ptr %2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.l, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 248, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !12, !noundef !5
  %.not = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19764
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !19763, !nonnull !5, !noundef !5 ; 4 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !19764
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.q, ptr %i.c, align 8, !noalias !19764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19764
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types16ColumnDescriptorEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.j)
          to label %bb.h unwind label %bb.g, !noalias !19762

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.i, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.v, %bb.g ]
  %i.t = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !19765
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %.body50

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types4TypeE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #42
          to label %.body50 unwind label %bb.j, !noalias !19762

bb.g:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19764
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.k unwind label %bb.i, !noalias !19762

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !noundef !5
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !6

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 2305843009213693888
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25019
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25019
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25019
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25019, !nonnull !5, !noundef !5
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !5
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !25019
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = and i64 %i.k, -2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !25020)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25020, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25020 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25020
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25020
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !25020, !noundef !5
  store i64 0, ptr %i.ak, align 16, !alias.scope !25020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25021
  store i64 1, ptr %i.a, align 8, !noalias !25021
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !25021
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !25021
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25021
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25021
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !25020
  store i64 128, ptr %i.e, align 16, !alias.scope !25020
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !25020
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !25021
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25022
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !25022 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !25021

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !25021

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !25021
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !25021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25021
  store ptr %i.bq, ptr %i.b, align 8, !noalias !25021
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !25021
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !25021
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25021
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !25023)
  call void @llvm.experimental.noalias.scope.decl(metadata !25024)
  call void @llvm.experimental.noalias.scope.decl(metadata !25025)
  call void @llvm.experimental.noalias.scope.decl(metadata !25026)
  call void @llvm.experimental.noalias.scope.decl(metadata !25027)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !25028, !nonnull !5, !noundef !5
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !25028
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %i.bz = phi i64 [ %.pre52, %.lr.ph ], [ %i.cf, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ca, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.ae ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2 ; 2 uses
  %i.cb = add nuw i64 %.sroa.7.049, 1
  %i.cc = load i16, ptr %.sroa.0.050, align 2, !noundef !5
  %i.cd = zext i16 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %i.cf = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.af ]
  %i.cg = icmp eq ptr %i.ca, %i.bh
  br i1 %i.cg, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ch = load ptr, ptr %i.bk, align 8, !noundef !5
  %i.ci = load i64, ptr %i.bl, align 8, !noundef !5
  %i.cj = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !5
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = shl nuw i8 1, %i.co
  %i.cq = and i8 %i.cp, %i.cm
  %.not21 = icmp eq i8 %i.cq, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.cr = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.val23
  br i1 %i.cs, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !5, !noundef !5
  %i.ct = trunc i64 %.sroa.7.049 to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = shl nuw i8 1, %i.cu
  %i.cw = xor i8 %i.cv, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !5
  %i.cz = and i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 !guid !25031 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !25032, !noundef !5
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !25093 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !5
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25094)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !25094, !noalias !25095, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !25094, !noalias !25096 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !25094, !noalias !25096 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !25097, !noalias !25098, !noundef !5
  %i.v = zext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit36, !prof !10

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !25097, !noalias !25098, !noundef !5
  %i.z = zext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit36, !prof !10

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !25099, !noundef !5
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !25099, !noundef !5
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25100)
  call void @llvm.experimental.noalias.scope.decl(metadata !25101)
  call void @llvm.experimental.noalias.scope.decl(metadata !25102)
  call void @llvm.experimental.noalias.scope.decl(metadata !25103)
  call void @llvm.experimental.noalias.scope.decl(metadata !25104)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !25105, !nonnull !5, !noundef !5
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !25105
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13logical_nullsCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !noundef !5
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !6

bb.p:                                             ; preds = %bb.o
  %i.aq = and i64 %.sroa.0.0.i, 63
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 2305843009213693888
  %i.as = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %.sroa.0.0.i
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %i.as, %bb.q ]
  %i.au = shl nuw nsw i64 %.sroa.4.0.i42, 1
  %.sroa.0.0.i.i = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %.sroa.4.0.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25731
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25731
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #40
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25731
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25731, !nonnull !5, !noundef !5
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !5
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !25731
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = and i64 %i.k, -2                        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx
  %i.bi = icmp samesign eq i64 %.idx, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.pre52 = load i64, ptr %i.bj, align 8
  br label %bb.ad

._crit_edge:                                      ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !25732)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25732, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25732 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !25732
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !25732
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !25732, !noundef !5
  store i64 0, ptr %i.ak, align 16, !alias.scope !25732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25733
  store i64 1, ptr %i.a, align 8, !noalias !25733
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !25733
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !25733
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !25733
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !25733
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !25732
  store i64 128, ptr %i.e, align 16, !alias.scope !25732
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !25732
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !25733
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25734
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41, !noalias !25734 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !6

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #37
          to label %.noexc.i unwind label %bb.y, !noalias !25733

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #38
          to label %.body unwind label %bb.z, !noalias !25733

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !25733
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !25733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25733
  store ptr %i.bq, ptr %i.b, align 8, !noalias !25733
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !25733
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !25733
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEE3newCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25733
  invoke void @_RNvXs0_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !25735)
  call void @llvm.experimental.noalias.scope.decl(metadata !25736)
  call void @llvm.experimental.noalias.scope.decl(metadata !25737)
  call void @llvm.experimental.noalias.scope.decl(metadata !25738)
  call void @llvm.experimental.noalias.scope.decl(metadata !25739)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !25740, !nonnull !5, !noundef !5
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !25740
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit35: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %i.bz = phi i64 [ %.pre52, %.lr.ph ], [ %i.cf, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ca, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.ae ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2 ; 2 uses
  %i.cb = add nuw i64 %.sroa.7.049, 1
  %i.cc = load i16, ptr %.sroa.0.050, align 2, !noundef !5
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %i.cf = phi i64 [ %.pre51, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.af ]
  %i.cg = icmp eq ptr %i.ca, %i.bh
  br i1 %i.cg, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ch = load ptr, ptr %i.bk, align 8, !noundef !5
  %i.ci = load i64, ptr %i.bl, align 8, !noundef !5
  %i.cj = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !5
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = shl nuw i8 1, %i.co
  %i.cq = and i8 %i.cp, %i.cm
  %.not21 = icmp eq i8 %i.cq, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !5 ; 2 uses
  %i.cr = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.val23
  br i1 %i.cs, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #40
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !5, !noundef !5
  %i.ct = trunc i64 %.sroa.7.049 to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = shl nuw i8 1, %i.cu
  %i.cw = xor i8 %i.cv, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !5
  %i.cz = and i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7boolean20BooleanBufferBuilderECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 !guid !25743 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !25744, !noundef !5
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !25805 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !5
  %.not9 = icmp eq ptr %i.g, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25806)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !25806, !noalias !25807, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !25806, !noalias !25808 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !25806, !noalias !25808 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !25809, !noalias !25810, !noundef !5
  %i.v = sext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.loopexit36, !prof !10

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #40
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !25809, !noalias !25810, !noundef !5
  %i.z = sext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1, label %.loopexit36, !prof !10

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs1N9T06jgEdt_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !25811, !noundef !5
  %i.af = xor i8 %i.ae, -1
  %i.ag = trunc i64 %i.ab to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = and i8 %i.ai, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = add i64 %.sroa.02.0.i.i, %i.ak
  %i.am = add i64 %i.s, %i.z                      ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !25811, !noundef !5
  %i.aq = trunc i64 %i.am to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = xor i8 %i.ap, -1
  %i.at = lshr i8 %i.as, %i.ar
  %i.au = and i8 %i.at, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %i.al, %i.av                    ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.04.0.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25812)
  call void @llvm.experimental.noalias.scope.decl(metadata !25813)
  call void @llvm.experimental.noalias.scope.decl(metadata !25814)
  call void @llvm.experimental.noalias.scope.decl(metadata !25815)
  call void @llvm.experimental.noalias.scope.decl(metadata !25816)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !25817, !nonnull !5, !noundef !5
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !25817
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #42
end_hunk_3
