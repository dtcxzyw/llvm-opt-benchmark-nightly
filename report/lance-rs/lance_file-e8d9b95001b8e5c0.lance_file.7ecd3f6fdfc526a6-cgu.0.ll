Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RNCINvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding10dictionaryNtB8_17DictionaryDecoder11decode_implNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
bb.cw:                                            ; preds = %bb.cu
  call void @llvm.trap()
  unreachable

bb.cx:                                            ; preds = %bb.cv, %bb.cs
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i73 = phi ptr [ %i.oz, %bb.cv ], [ undef, %bb.cs ]
  %i.pe = phi <2 x i64> [ %i.pb, %bb.cv ], [ undef, %bb.cs ]
  %i.pf = phi <2 x i64> [ %i.pd, %bb.cv ], [ undef, %bb.cs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !23002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i64 24, i1 false), !noalias !23002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !23004
  %.sroa.6.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %.sroa.7.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store <2 x ptr> %i.or, ptr %.sroa.6.0..sroa_idx.i77, align 8, !noalias !23002
  %.sroa.8.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 2 uses
  store i64 %i.ot, ptr %.sroa.8.0..sroa_idx.i79, align 8, !noalias !23002
  %.sroa.9.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 2 uses
  store ptr %i.ov, ptr %.sroa.9.0..sroa_idx.i80, align 8, !noalias !23002
  %.sroa.10.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.dn, i64 56 ; 2 uses
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i73, ptr %.sroa.10.0..sroa_idx.i81, align 8, !noalias !23002
  %.sroa.11.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %.sroa.12.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  store <2 x i64> %i.pe, ptr %.sroa.11.0..sroa_idx.i82, align 8, !noalias !23002
  %.sroa.13.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.dn, i64 80 ; 2 uses
  %.sroa.14.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  store <2 x i64> %i.pf, ptr %.sroa.13.0..sroa_idx.i84, align 8, !noalias !23002
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %.val.i86 = load ptr, ptr %i.pg, align 8, !noalias !23002, !nonnull !76, !noundef !76 ; 2 uses
  %i.ph = getelementptr i8, ptr %i.nt, i64 32
  %.val10.i87 = load ptr, ptr %i.ph, align 8, !noalias !23002 ; 2 uses
  %i.pi = atomicrmw add ptr %.val.i86, i64 1 monotonic, align 8, !noalias !23002
  %i.pj = icmp slt i64 %i.pi, 0
  br i1 %i.pj, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.trap()
  unreachable

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i87) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23005)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !23002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !23002
  store ptr %.val.i86, ptr %i.dj, align 16, !noalias !23006
  %i.pk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %.val10.i87, ptr %i.pk, align 8, !noalias !23006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !23006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !23006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !23006
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dn)
          to label %bb.dc unwind label %bb.db, !noalias !23007

.body36.i.i88:                                    ; preds = %bb.do, %.body.i.i95, %bb.de, %bb.db
  %.pn.i.i89 = phi { ptr, i32 } [ %eh.lpad-body.i.i96, %.body.i.i95 ], [ %i.qg, %bb.do ], [ %i.po, %bb.db ], [ %i.pr, %bb.de ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23008)
  call void @llvm.experimental.noalias.scope.decl(metadata !23009)
  %i.pl = load ptr, ptr %i.dj, align 16, !alias.scope !23010, !noalias !23006, !nonnull !76, !noundef !76
  %i.pm = atomicrmw add ptr %i.pl, i64 -1 release, align 8, !noalias !23011
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.da, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i90

bb.da:                                            ; preds = %.body36.i.i88
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i90 unwind label %bb.dw, !noalias !23012

bb.db:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i111, %bb.cz
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i88

bb.dc:                                            ; preds = %bb.cz
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23013
  %i.pp = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23013 ; 4 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %bb.dd, label %bb.dg, !prof !75

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc40.i.i128 unwind label %bb.de, !noalias !23012

.noexc40.i.i128:                                  ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.dd
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg) #50
          to label %.body36.i.i88 unwind label %bb.df, !noalias !23012

bb.df:                                            ; preds = %bb.de
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23012
  unreachable

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pp, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !noalias !23012
  store ptr %i.pp, ptr %i.dh, align 8, !noalias !23006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !23006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !23006
  %i.pt = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dj)
          to label %bb.di unwind label %bb.dh, !noalias !23012

bb.dh:                                            ; preds = %bb.di, %bb.dg
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95

.body.i.i95:                                      ; preds = %bb.dl, %bb.dh
  %eh.lpad-body.i.i96 = phi { ptr, i32 } [ %i.pu, %bb.dh ], [ %i.px, %bb.dl ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dh) #50
          to label %.body36.i.i88 unwind label %bb.dw, !noalias !23012

bb.di:                                            ; preds = %bb.dg
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pt)
          to label %bb.dj unwind label %bb.dh, !noalias !23012

bb.dj:                                            ; preds = %bb.di
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23014
  %i.pv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23014 ; 3 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %bb.dk, label %bb.dn, !prof !75

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc41.i.i127 unwind label %bb.dl, !noalias !23012

.noexc41.i.i127:                                  ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %bb.dk
  %i.px = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.df) #50
          to label %.body.i.i95 unwind label %bb.dm, !noalias !23012

bb.dm:                                            ; preds = %bb.dl
  %i.py = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23012
  unreachable

bb.dn:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pv, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !noalias !23012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !23006
  %i.pz = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  store ptr %i.pp, ptr %i.pz, align 8, !noalias !23006
  %i.qa = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.pv, ptr %i.qa, align 8, !noalias !23006
  store i8 34, ptr %i.di, align 8, !noalias !23006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !23006
  %i.qb = load ptr, ptr %.sroa.9.0..sroa_idx.i80, align 8, !alias.scope !23005, !noalias !23002, !noundef !76
  %.not.i17.i97 = icmp eq ptr %i.qb, null         ; 2 uses
  %i.qc = load i64, ptr %.sroa.14.0..sroa_idx.i85, align 8, !noalias !23002
  %spec.select.i98 = select i1 %.not.i17.i97, i64 0, i64 %i.qc
  %i.qd = load i64, ptr %.sroa.8.0..sroa_idx.i79, align 8, !alias.scope !23005, !noalias !23002, !noundef !76 ; 2 uses
  %i.qe = lshr i64 %i.qd, 1
  %i.qf = icmp eq i64 %spec.select.i98, %i.qe
  br i1 %i.qf, label %bb.dz, label %bb.dp

bb.do:                                            ; preds = %.split.i105, %bb.ds, %bb.dp
  %i.qg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di) #50
          to label %.body36.i.i88 unwind label %bb.dw, !noalias !23012

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !23006
  %i.qh = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dj)
          to label %bb.dq unwind label %bb.do, !noalias !23012 ; 3 uses

bb.dq:                                            ; preds = %bb.dp
  store i64 %i.qh, ptr %i.de, align 8, !noalias !23006
  %i.qi = load ptr, ptr %.sroa.7.0..sroa_idx.i78, align 8, !alias.scope !23005, !noalias !23002, !nonnull !76, !noundef !76 ; 3 uses
  %.idx.i.i = and i64 %i.qd, -2                   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %.idx.i.i ; 2 uses
  %i.qk = icmp samesign eq i64 %.idx.i.i, 0
  br i1 %i.qk, label %.loopexit.i.i115, label %.lr.ph.i.i.preheader.i99

.lr.ph.i.i.preheader.i99:                         ; preds = %bb.dq
  %i.ql = load i64, ptr %.sroa.13.0..sroa_idx.i84, align 8, !noalias !23002
  %i.qm = load ptr, ptr %.sroa.10.0..sroa_idx.i81, align 8, !noalias !23002
  %i.qn = load i64, ptr %.sroa.12.0..sroa_idx.i83, align 8, !noalias !23002
  br i1 %.not.i17.i97, label %.lr.ph.i.i.us.i124, label %.lr.ph.i.i.i100

.lr.ph.i.i.us.i124:                               ; preds = %.lr.ph.i.i.preheader.i99, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i
  %i.qo = phi i64 [ %i.qu, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i ], [ 0, %.lr.ph.i.i.preheader.i99 ] ; 2 uses
  %i.qp = phi ptr [ %i.qt, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i ], [ %i.qi, %.lr.ph.i.i.preheader.i99 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23015)
  call void @llvm.experimental.noalias.scope.decl(metadata !23016)
  %i.qq = load i16, ptr %i.qp, align 2, !alias.scope !23017, !noalias !23018, !noundef !76 ; 2 uses
  %i.qr = icmp sgt i16 %i.qq, -1
  %i.qs = zext nneg i16 %i.qq to i64
  %.not.i.i.i.i.i.us.i125 = icmp ugt i64 %i.qh, %i.qs
  %or.cond.i.us.i126 = select i1 %i.qr, i1 %.not.i.i.i.i.i.us.i125, i1 false
  br i1 %or.cond.i.us.i126, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i, label %.split.i105

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i: ; preds = %.lr.ph.i.i.us.i124
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 2 ; 2 uses
  %i.qu = add nuw i64 %i.qo, 1
  %i.qv = icmp eq ptr %i.qt, %i.qj
  br i1 %i.qv, label %.loopexit.i.i115, label %.lr.ph.i.i.us.i124

.lr.ph.i.i.i100:                                  ; preds = %.lr.ph.i.i.preheader.i99, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.qw = phi i64 [ %i.rm, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %.lr.ph.i.i.preheader.i99 ] ; 4 uses
  %i.qx = phi ptr [ %i.qy, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %i.qi, %.lr.ph.i.i.preheader.i99 ] ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 2 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23015)
  call void @llvm.experimental.noalias.scope.decl(metadata !23016)
  %i.qz = load i16, ptr %i.qx, align 2, !alias.scope !23017, !noalias !23018, !noundef !76 ; 2 uses
  %i.ra = icmp sgt i16 %i.qz, -1
  %i.rb = zext nneg i16 %i.qz to i64
  %.not.i.i.i.i.i.i101 = icmp ugt i64 %i.qh, %i.rb
  %or.cond.i.i102 = select i1 %i.ra, i1 %.not.i.i.i.i.i.i101, i1 false
  br i1 %or.cond.i.i102, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i.i.i100
  %i.rc = icmp ult i64 %i.qw, %i.ql
  br i1 %i.rc, label %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, label %bb.ds, !prof !85

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49
          to label %.noexc43.i.i103 unwind label %bb.do, !noalias !23012

.noexc43.i.i103:                                  ; preds = %bb.ds
  unreachable

_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.dr
  %i.rd = add i64 %i.qw, %i.qn                    ; 2 uses
  %i.re = lshr i64 %i.rd, 3
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !noalias !23019, !noundef !76
  %i.rh = trunc i64 %i.rd to i8
  %i.ri = and i8 %i.rh, 7
  %i.rj = xor i8 %i.rg, -1
  %i.rk = lshr i8 %i.rj, %i.ri
  %.fr8.i.i.i.i.i104 = freeze i8 %i.rk
  %i.rl = trunc i8 %.fr8.i.i.i.i.i104 to i1
  br i1 %i.rl, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %.split.i105

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.lr.ph.i.i.i100
  %i.rm = add nuw i64 %i.qw, 1
  %i.rn = icmp eq ptr %i.qy, %i.qj
  br i1 %i.rn, label %.loopexit.i.i115, label %.lr.ph.i.i.i100

.split.i105:                                      ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.lr.ph.i.i.us.i124
  %.us-phi.i106 = phi i64 [ %i.qo, %.lr.ph.i.i.us.i124 ], [ %i.qw, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ]
  %.us-phi50.i107 = phi ptr [ %i.qp, %.lr.ph.i.i.us.i124 ], [ %i.qx, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types9Int16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !23006
  store i64 %.us-phi.i106, ptr %i.dd, align 8, !noalias !23006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !23006
  store ptr %.us-phi50.i107, ptr %i.dc, align 8, !noalias !23006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !23006
  store ptr %i.dc, ptr %i.da, align 8, !noalias !23006
  %.sroa.420.0..sroa_idx.i.i108 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRsNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.420.0..sroa_idx.i.i108, align 8, !noalias !23006
  %i.ro = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.dd, ptr %i.ro, align 8, !noalias !23006
  %.sroa.424.0..sroa_idx.i.i109 = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i109, align 8, !noalias !23006
  %i.rp = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.de, ptr %i.rp, align 8, !noalias !23006
  %.sroa.428.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i.i110, align 8, !noalias !23006
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.db, ptr noundef nonnull @756, ptr noundef nonnull %i.da)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i111 unwind label %bb.do, !noalias !23012

.loopexit.i.i115:                                 ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRsuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types9Int16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !23006
  br label %bb.dz

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i111: ; preds = %.split.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !23006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i62, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !noalias !23002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !23006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !23006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !23006
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %bb.dt unwind label %bb.db, !noalias !23012

bb.dt:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !23006
  call void @llvm.experimental.noalias.scope.decl(metadata !23020)
  call void @llvm.experimental.noalias.scope.decl(metadata !23021)
  %i.rq = load ptr, ptr %i.dj, align 16, !alias.scope !23022, !noalias !23006, !nonnull !76, !noundef !76
  %i.rr = atomicrmw add ptr %i.rq, i64 -1 release, align 8, !noalias !23023
  %i.rs = icmp eq i64 %i.rr, 1
  br i1 %i.rs, label %bb.du, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i112

bb.du:                                            ; preds = %bb.dt
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i112 unwind label %bb.dv, !noalias !23012

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i90: ; preds = %bb.dv, %bb.da, %.body36.i.i88
  %.pn34.i.i91 = phi { ptr, i32 } [ %i.rt, %bb.dv ], [ %.pn.i.i89, %bb.da ], [ %.pn.i.i89, %.body36.i.i88 ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int16TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.dn) #50
          to label %bb.eh unwind label %bb.dw, !noalias !23007

bb.dv:                                            ; preds = %bb.du
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i90

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i112: ; preds = %bb.du, %bb.dt
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int16TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.dn)
          to label %bb.dy unwind label %bb.dx, !noalias !23002

bb.dw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i90, %bb.do, %.body.i.i95, %bb.da
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23007
  unreachable

bb.dx:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i112
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.dy:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !23002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !23002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !23002
  %.sroa.5.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !23024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i113, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i62, i64 24, i1 false), !noalias !23002
  store i64 -9223372036854775794, ptr %i.cz, align 8, !noalias !23025
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.dm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @232)
          to label %bb.eg unwind label %bb.ef, !noalias !23002

bb.dz:                                            ; preds = %.loopexit.i.i115, %bb.dn
  %.sroa.04.i.sroa.0.0.copyload.i116 = load i64, ptr %i.di, align 8, !noalias !23006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.sroa.4.i62, ptr noundef nonnull align 8 dereferenceable(16) %i.pz, i64 16, i1 false), !noalias !23002
  %.sroa.04.i.sroa.4.24..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %.sroa.04.i.sroa.4.i62, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.i.sroa.4.24..sroa_idx.i117, ptr noundef nonnull align 8 dereferenceable(96) %i.dn, i64 96, i1 false), !noalias !23002
  %i.rw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.3.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !23026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx.i118, ptr noundef nonnull align 8 dereferenceable(88) %i.rw, i64 88, i1 false), !noalias !23002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !23006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !23002
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.rx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.4.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.rz = load <2 x ptr>, ptr %i.dj, align 16, !noalias !23006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !23002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !23002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i119, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i62, i64 24, i1 false), !noalias !23002
  store i64 1, ptr %i.cy, align 8, !noalias !23026
  store i64 1, ptr %i.rx, align 8, !noalias !23026
  store i64 %.sroa.04.i.sroa.0.0.copyload.i116, ptr %i.ry, align 8, !noalias !23002
  store <2 x ptr> %i.rz, ptr %.sroa.4.0..sroa_idx.i120, align 8, !noalias !23002
  %.sroa.623.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  store i8 0, ptr %.sroa.623.0..sroa_idx.i122, align 8, !noalias !23002
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23027
  %i.sa = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23027 ; 3 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.ea, label %bb.ed, !prof !75

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #49
          to label %.noexc.i.i123 unwind label %bb.eb, !noalias !23026

.noexc.i.i123:                                    ; preds = %bb.ea
  unreachable

bb.eb:                                            ; preds = %bb.ea
  %i.sc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB1l_5types9Int16TypeEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.cy) #50
          to label %.body20.i93 unwind label %bb.ec, !noalias !23026

bb.ec:                                            ; preds = %bb.eb
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23026
  unreachable

bb.ed:                                            ; preds = %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.sa, ptr noundef nonnull align 8 dereferenceable(160) %i.cy, i64 160, i1 false), !noalias !23026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !23026
  %i.se = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.sa, ptr %i.se, align 8, !noalias !23002
  %i.sf = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr @237, ptr %i.sf, align 8, !noalias !23002
  store i8 -1, ptr %i.dm, align 8, !noalias !23002
  call void @llvm.experimental.noalias.scope.decl(metadata !23028)
  call void @llvm.experimental.noalias.scope.decl(metadata !23029)
  %i.sg = load ptr, ptr %i.do, align 8, !alias.scope !23030, !noalias !23002, !nonnull !76, !noundef !76
  %i.sh = atomicrmw add ptr %i.sg, i64 -1 release, align 8, !noalias !23031
  %i.si = icmp eq i64 %i.sh, 1
  br i1 %i.si, label %.invoke.i114, label %bb.em

.body129.thread:                                  ; preds = %bb.ee, %.body20.i93, %bb.ej
  %.pn8.i66 = phi { ptr, i32 } [ %i.sj, %bb.ee ], [ %.pn5.pn.i64, %bb.ej ], [ %.pn5.pn.i64, %.body20.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !23002
  store i8 2, ptr %i.nr, align 8, !noalias !23002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7666.sroa.0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding10dictionaryNtBK_17DictionaryDecoder15make_dict_arrayNtNtCs4ytUTZt2Gw9_11arrow_array5types8Int8TypeE0EBS_.exit

bb.ee:                                            ; preds = %.invoke.i114
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %.body129.thread

bb.ef:                                            ; preds = %bb.cp, %.noexc.i67, %bb.cq, %bb.cr, %bb.dy
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i93

bb.eg:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !23024
  call void @llvm.experimental.noalias.scope.decl(metadata !23032)
  call void @llvm.experimental.noalias.scope.decl(metadata !23033)
  %i.sl = load ptr, ptr %i.do, align 8, !alias.scope !23034, !noalias !23002, !nonnull !76, !noundef !76
  %i.sm = atomicrmw add ptr %i.sl, i64 -1 release, align 8, !noalias !23035
  %i.sn = icmp eq i64 %i.sm, 1
  br i1 %i.sn, label %.invoke.i114, label %bb.em

.invoke.i114:                                     ; preds = %bb.eg, %bb.ed
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.do)
          to label %bb.em unwind label %bb.ee, !noalias !23002

bb.eh:                                            ; preds = %bb.dx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i90
  %.pn27.i92 = phi { ptr, i32 } [ %.pn34.i.i91, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i90 ], [ %i.rv, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !23002
  br label %.body20.i93

bb.ei:                                            ; preds = %bb.ej
  %i.so = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23002
  unreachable

.body20.i93:                                      ; preds = %bb.eb, %bb.ef, %bb.eh
  %.pn5.pn.i64 = phi { ptr, i32 } [ %i.sc, %bb.eb ], [ %i.sk, %bb.ef ], [ %.pn27.i92, %bb.eh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23036)
  call void @llvm.experimental.noalias.scope.decl(metadata !23037)
  %i.sp = load ptr, ptr %i.do, align 8, !alias.scope !23038, !noalias !23002, !nonnull !76, !noundef !76
  %i.sq = atomicrmw add ptr %i.sp, i64 -1 release, align 8, !noalias !23039
end_hunk_0
begin_hunk_1_@_RNCINvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding10dictionaryNtB8_17DictionaryDecoder11decode_implNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
  br label %bb.lj

bb.li:                                            ; preds = %bb.lg
  call void @llvm.trap()
  unreachable

bb.lj:                                            ; preds = %bb.lh, %bb.le
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i371 = phi ptr [ %i.akm, %bb.lh ], [ undef, %bb.le ]
  %i.akr = phi <2 x i64> [ %i.ako, %bb.lh ], [ undef, %bb.le ]
  %i.aks = phi <2 x i64> [ %i.akq, %bb.lh ], [ undef, %bb.le ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !23166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !23166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !23168
  %.sroa.6.0..sroa_idx.i375 = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.7.0..sroa_idx.i376 = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store <2 x ptr> %i.ake, ptr %.sroa.6.0..sroa_idx.i375, align 8, !noalias !23166
  %.sroa.8.0..sroa_idx.i377 = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  store i64 %i.akg, ptr %.sroa.8.0..sroa_idx.i377, align 8, !noalias !23166
  %.sroa.9.0..sroa_idx.i378 = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  store ptr %i.aki, ptr %.sroa.9.0..sroa_idx.i378, align 8, !noalias !23166
  %.sroa.10.0..sroa_idx.i379 = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i371, ptr %.sroa.10.0..sroa_idx.i379, align 8, !noalias !23166
  %.sroa.11.0..sroa_idx.i380 = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %.sroa.12.0..sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store <2 x i64> %i.akr, ptr %.sroa.11.0..sroa_idx.i380, align 8, !noalias !23166
  %.sroa.13.0..sroa_idx.i382 = getelementptr inbounds nuw i8, ptr %i.ax, i64 80 ; 2 uses
  %.sroa.14.0..sroa_idx.i383 = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store <2 x i64> %i.aks, ptr %.sroa.13.0..sroa_idx.i382, align 8, !noalias !23166
  %i.akt = getelementptr inbounds nuw i8, ptr %i.ajg, i64 24
  %.val.i384 = load ptr, ptr %i.akt, align 8, !noalias !23166, !nonnull !76, !noundef !76 ; 2 uses
  %i.aku = getelementptr i8, ptr %i.ajg, i64 32
  %.val10.i385 = load ptr, ptr %i.aku, align 8, !noalias !23166 ; 2 uses
  %i.akv = atomicrmw add ptr %.val.i384, i64 1 monotonic, align 8, !noalias !23166
  %i.akw = icmp slt i64 %i.akv, 0
  br i1 %i.akw, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.trap()
  unreachable

bb.ll:                                            ; preds = %bb.lj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i385) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23169)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !23166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !23166
  store ptr %.val.i384, ptr %i.at, align 16, !noalias !23170
  %i.akx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.val10.i385, ptr %i.akx, align 8, !noalias !23170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !23170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !23170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !23170
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ax)
          to label %bb.lo unwind label %bb.ln, !noalias !23171

.body36.i.i386:                                   ; preds = %bb.ma, %.body.i.i393, %bb.lq, %bb.ln
  %.pn.i.i387 = phi { ptr, i32 } [ %eh.lpad-body.i.i394, %.body.i.i393 ], [ %i.alt, %bb.ma ], [ %i.alb, %bb.ln ], [ %i.ale, %bb.lq ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23172)
  call void @llvm.experimental.noalias.scope.decl(metadata !23173)
  %i.aky = load ptr, ptr %i.at, align 16, !alias.scope !23174, !noalias !23170, !nonnull !76, !noundef !76
  %i.akz = atomicrmw add ptr %i.aky, i64 -1 release, align 8, !noalias !23175
  %i.ala = icmp eq i64 %i.akz, 1
  br i1 %i.ala, label %bb.lm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i388

bb.lm:                                            ; preds = %.body36.i.i386
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i388 unwind label %bb.mi, !noalias !23176

bb.ln:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i409, %bb.ll
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %.body36.i.i386

bb.lo:                                            ; preds = %bb.ll
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23177
  %i.alc = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23177 ; 4 uses
  %i.ald = icmp eq ptr %i.alc, null
  br i1 %i.ald, label %bb.lp, label %bb.ls, !prof !75

bb.lp:                                            ; preds = %bb.lo
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc40.i.i425 unwind label %bb.lq, !noalias !23176

.noexc40.i.i425:                                  ; preds = %bb.lp
  unreachable

bb.lq:                                            ; preds = %bb.lp
  %i.ale = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #50
          to label %.body36.i.i386 unwind label %bb.lr, !noalias !23176

bb.lr:                                            ; preds = %bb.lq
  %i.alf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23176
  unreachable

bb.ls:                                            ; preds = %bb.lo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alc, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !23176
  store ptr %i.alc, ptr %i.ar, align 8, !noalias !23170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !23170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !23170
  %i.alg = invoke noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.lu unwind label %bb.lt, !noalias !23176

bb.lt:                                            ; preds = %bb.lu, %bb.ls
  %i.alh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i393

.body.i.i393:                                     ; preds = %bb.lx, %bb.lt
  %eh.lpad-body.i.i394 = phi { ptr, i32 } [ %i.alh, %bb.lt ], [ %i.alk, %bb.lx ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar) #50
          to label %.body36.i.i386 unwind label %bb.mi, !noalias !23176

bb.lu:                                            ; preds = %bb.ls
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alg)
          to label %bb.lv unwind label %bb.lt, !noalias !23176

bb.lv:                                            ; preds = %bb.lu
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23178
  %i.ali = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23178 ; 3 uses
  %i.alj = icmp eq ptr %i.ali, null
  br i1 %i.alj, label %bb.lw, label %bb.lz, !prof !75

bb.lw:                                            ; preds = %bb.lv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc41.i.i424 unwind label %bb.lx, !noalias !23176

.noexc41.i.i424:                                  ; preds = %bb.lw
  unreachable

bb.lx:                                            ; preds = %bb.lw
  %i.alk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap) #50
          to label %.body.i.i393 unwind label %bb.ly, !noalias !23176

bb.ly:                                            ; preds = %bb.lx
  %i.all = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23176
  unreachable

bb.lz:                                            ; preds = %bb.lv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ali, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !23176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !23170
  %i.alm = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.alc, ptr %i.alm, align 8, !noalias !23170
  %i.aln = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.ali, ptr %i.aln, align 8, !noalias !23170
  store i8 34, ptr %i.as, align 8, !noalias !23170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !23170
  %i.alo = load ptr, ptr %.sroa.9.0..sroa_idx.i378, align 8, !alias.scope !23169, !noalias !23166, !noundef !76
  %.not.i17.i395 = icmp eq ptr %i.alo, null       ; 2 uses
  %i.alp = load i64, ptr %.sroa.14.0..sroa_idx.i383, align 8, !noalias !23166
  %spec.select.i396 = select i1 %.not.i17.i395, i64 0, i64 %i.alp
  %i.alq = load i64, ptr %.sroa.8.0..sroa_idx.i377, align 8, !alias.scope !23169, !noalias !23166, !noundef !76 ; 2 uses
  %i.alr = lshr i64 %i.alq, 1
  %i.als = icmp eq i64 %spec.select.i396, %i.alr
  br i1 %i.als, label %bb.ml, label %bb.mb

bb.ma:                                            ; preds = %.split.i403, %bb.me, %bb.mb
  %i.alt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as) #50
          to label %.body36.i.i386 unwind label %bb.mi, !noalias !23176

bb.mb:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !23170
  %i.alu = invoke noundef i64 @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.at)
          to label %bb.mc unwind label %bb.ma, !noalias !23176 ; 3 uses

bb.mc:                                            ; preds = %bb.mb
  store i64 %i.alu, ptr %i.ao, align 8, !noalias !23170
  %i.alv = load ptr, ptr %.sroa.7.0..sroa_idx.i376, align 8, !alias.scope !23169, !noalias !23166, !nonnull !76, !noundef !76 ; 3 uses
  %.idx.i.i397 = and i64 %i.alq, -2               ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 %.idx.i.i397 ; 2 uses
  %i.alx = icmp samesign eq i64 %.idx.i.i397, 0
  br i1 %i.alx, label %.loopexit.i.i413, label %.lr.ph.i.i.preheader.i398

.lr.ph.i.i.preheader.i398:                        ; preds = %bb.mc
  %i.aly = load i64, ptr %.sroa.13.0..sroa_idx.i382, align 8, !noalias !23166
  %i.alz = load ptr, ptr %.sroa.10.0..sroa_idx.i379, align 8, !noalias !23166
  %i.ama = load i64, ptr %.sroa.12.0..sroa_idx.i381, align 8, !noalias !23166
  br i1 %.not.i17.i395, label %.lr.ph.i.i.us.i422, label %.lr.ph.i.i.i399

.lr.ph.i.i.us.i422:                               ; preds = %.lr.ph.i.i.preheader.i398, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i
  %i.amb = phi i64 [ %i.amg, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i ], [ 0, %.lr.ph.i.i.preheader.i398 ] ; 2 uses
  %i.amc = phi ptr [ %i.amf, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i ], [ %i.alv, %.lr.ph.i.i.preheader.i398 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23179)
  call void @llvm.experimental.noalias.scope.decl(metadata !23180)
  %i.amd = load i16, ptr %i.amc, align 2, !alias.scope !23181, !noalias !23182, !noundef !76
  %i.ame = zext i16 %i.amd to i64
  %.not.i.i.i.i.i.us.i423 = icmp ugt i64 %i.alu, %i.ame
  br i1 %.not.i.i.i.i.i.us.i423, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i, label %.split.i403

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i: ; preds = %.lr.ph.i.i.us.i422
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amc, i64 2 ; 2 uses
  %i.amg = add nuw i64 %i.amb, 1
  %i.amh = icmp eq ptr %i.amf, %i.alw
  br i1 %i.amh, label %.loopexit.i.i413, label %.lr.ph.i.i.us.i422

.lr.ph.i.i.i399:                                  ; preds = %.lr.ph.i.i.preheader.i398, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.ami = phi i64 [ %i.amx, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %.lr.ph.i.i.preheader.i398 ] ; 4 uses
  %i.amj = phi ptr [ %i.amk, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ %i.alv, %.lr.ph.i.i.preheader.i398 ] ; 3 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 2 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23179)
  call void @llvm.experimental.noalias.scope.decl(metadata !23180)
  %i.aml = load i16, ptr %i.amj, align 2, !alias.scope !23181, !noalias !23182, !noundef !76
  %i.amm = zext i16 %i.aml to i64
  %.not.i.i.i.i.i.i400 = icmp ugt i64 %i.alu, %i.amm
  br i1 %.not.i.i.i.i.i.i400, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.md

bb.md:                                            ; preds = %.lr.ph.i.i.i399
  %i.amn = icmp ult i64 %i.ami, %i.aly
  br i1 %i.amn, label %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, label %bb.me, !prof !85

bb.me:                                            ; preds = %bb.md
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49
          to label %.noexc43.i.i401 unwind label %bb.ma, !noalias !23176

.noexc43.i.i401:                                  ; preds = %bb.me
  unreachable

_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.md
  %i.amo = add i64 %i.ami, %i.ama                 ; 2 uses
  %i.amp = lshr i64 %i.amo, 3
  %i.amq = getelementptr inbounds nuw i8, ptr %i.alz, i64 %i.amp
  %i.amr = load i8, ptr %i.amq, align 1, !noalias !23183, !noundef !76
  %i.ams = trunc i64 %i.amo to i8
  %i.amt = and i8 %i.ams, 7
  %i.amu = xor i8 %i.amr, -1
  %i.amv = lshr i8 %i.amu, %i.amt
  %.fr8.i.i.i.i.i402 = freeze i8 %i.amv
  %i.amw = trunc i8 %.fr8.i.i.i.i.i402 to i1
  br i1 %i.amw, label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %.split.i403

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.lr.ph.i.i.i399
  %i.amx = add nuw i64 %i.ami, 1
  %i.amy = icmp eq ptr %i.amk, %i.alw
  br i1 %i.amy, label %.loopexit.i.i413, label %.lr.ph.i.i.i399

.split.i403:                                      ; preds = %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.lr.ph.i.i.us.i422
  %.us-phi.i404 = phi i64 [ %i.amb, %.lr.ph.i.i.us.i422 ], [ %i.ami, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ]
  %.us-phi50.i405 = phi ptr [ %i.amc, %.lr.ph.i.i.us.i422 ], [ %i.amj, %_RNCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB6_15DictionaryArrayNtNtBa_5types10UInt16TypeE7try_new0CsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !23170
  store i64 %.us-phi.i404, ptr %i.an, align 8, !noalias !23170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !23170
  store ptr %.us-phi50.i405, ptr %i.am, align 8, !noalias !23170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !23170
  store ptr %i.am, ptr %i.ak, align 8, !noalias !23170
  %.sroa.420.0..sroa_idx.i.i406 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRtNtB6_5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.420.0..sroa_idx.i.i406, align 8, !noalias !23170
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.an, ptr %i.amz, align 8, !noalias !23170
  %.sroa.424.0..sroa_idx.i.i407 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i407, align 8, !noalias !23170
  %i.ana = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.ao, ptr %i.ana, align 8, !noalias !23170
  %.sroa.428.0..sroa_idx.i.i408 = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i.i408, align 8, !noalias !23170
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @756, ptr noundef nonnull %i.ak)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i409 unwind label %bb.ma, !noalias !23176

.loopexit.i.i413:                                 ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRtuINtNtNtBf_3ops12control_flow11ControlFlowTjB25_EENCINvNvB1e_4find5checkB2N_NCNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB3s_15DictionaryArrayNtNtB3w_5types10UInt16TypeE7try_new0E0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.us.i, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !23170
  br label %bb.ml

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i409: ; preds = %.split.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !23170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i360, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !23166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !23170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !23170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !23170
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.mf unwind label %bb.ln, !noalias !23176

bb.mf:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit.i.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !23170
  call void @llvm.experimental.noalias.scope.decl(metadata !23184)
  call void @llvm.experimental.noalias.scope.decl(metadata !23185)
  %i.anb = load ptr, ptr %i.at, align 16, !alias.scope !23186, !noalias !23170, !nonnull !76, !noundef !76
  %i.anc = atomicrmw add ptr %i.anb, i64 -1 release, align 8, !noalias !23187
  %i.and = icmp eq i64 %i.anc, 1
  br i1 %i.and, label %bb.mg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i410

bb.mg:                                            ; preds = %bb.mf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i410 unwind label %bb.mh, !noalias !23176

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i388: ; preds = %bb.mh, %bb.lm, %.body36.i.i386
  %.pn34.i.i389 = phi { ptr, i32 } [ %i.ane, %bb.mh ], [ %.pn.i.i387, %bb.lm ], [ %.pn.i.i387, %.body36.i.i386 ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt16TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ax) #50
          to label %bb.mt unwind label %bb.mi, !noalias !23171

bb.mh:                                            ; preds = %bb.mg
  %i.ane = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i388

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i410: ; preds = %bb.mg, %bb.mf
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt16TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ax)
          to label %bb.mk unwind label %bb.mj, !noalias !23166

bb.mi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i388, %bb.ma, %.body.i.i393, %bb.lm
  %i.anf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23171
  unreachable

bb.mj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i410
  %i.ang = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt

bb.mk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit46.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !23166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !23166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23166
  %.sroa.5.0..sroa_idx.i411 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !23188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i411, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i360, i64 24, i1 false), !noalias !23166
  store i64 -9223372036854775794, ptr %i.aj, align 8, !noalias !23189
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @232)
          to label %bb.ms unwind label %bb.mr, !noalias !23166

bb.ml:                                            ; preds = %.loopexit.i.i413, %bb.lz
  %.sroa.04.i.sroa.0.0.copyload.i414 = load i64, ptr %i.as, align 8, !noalias !23170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.i.sroa.4.i360, ptr noundef nonnull align 8 dereferenceable(16) %i.alm, i64 16, i1 false), !noalias !23166
  %.sroa.04.i.sroa.4.24..sroa_idx.i415 = getelementptr inbounds nuw i8, ptr %.sroa.04.i.sroa.4.i360, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.04.i.sroa.4.24..sroa_idx.i415, ptr noundef nonnull align 8 dereferenceable(96) %i.ax, i64 96, i1 false), !noalias !23166
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.3.0..sroa_idx.i416 = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !23190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx.i416, ptr noundef nonnull align 8 dereferenceable(88) %i.anh, i64 88, i1 false), !noalias !23166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !23170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !23166
  %.sroa.2.0..sroa_idx.i417 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.4.0..sroa_idx.i418 = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ank = load <2 x ptr>, ptr %i.at, align 16, !noalias !23170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !23166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i417, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.i.sroa.4.i360, i64 24, i1 false), !noalias !23166
  store i64 1, ptr %i.ai, align 8, !noalias !23190
  store i64 1, ptr %i.ani, align 8, !noalias !23190
  store i64 %.sroa.04.i.sroa.0.0.copyload.i414, ptr %i.anj, align 8, !noalias !23166
  store <2 x ptr> %i.ank, ptr %.sroa.4.0..sroa_idx.i418, align 8, !noalias !23166
  %.sroa.623.0..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  store i8 0, ptr %.sroa.623.0..sroa_idx.i420, align 8, !noalias !23166
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23191
  %i.anl = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23191 ; 3 uses
  %i.anm = icmp eq ptr %i.anl, null
  br i1 %i.anm, label %bb.mm, label %bb.mp, !prof !75

bb.mm:                                            ; preds = %bb.ml
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #49
          to label %.noexc.i.i421 unwind label %bb.mn, !noalias !23190

.noexc.i.i421:                                    ; preds = %bb.mm
  unreachable

bb.mn:                                            ; preds = %bb.mm
  %i.ann = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_array15DictionaryArrayNtNtB1l_5types10UInt16TypeEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.ai) #50
          to label %.body20.i391 unwind label %bb.mo, !noalias !23190

bb.mo:                                            ; preds = %bb.mn
  %i.ano = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23190
  unreachable

bb.mp:                                            ; preds = %bb.ml
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.anl, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 160, i1 false), !noalias !23190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !23190
  %i.anp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.anl, ptr %i.anp, align 8, !noalias !23166
  %i.anq = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr @231, ptr %i.anq, align 8, !noalias !23166
  store i8 -1, ptr %i.aw, align 8, !noalias !23166
  call void @llvm.experimental.noalias.scope.decl(metadata !23192)
  call void @llvm.experimental.noalias.scope.decl(metadata !23193)
  %i.anr = load ptr, ptr %i.ay, align 8, !alias.scope !23194, !noalias !23166, !nonnull !76, !noundef !76
  %i.ans = atomicrmw add ptr %i.anr, i64 -1 release, align 8, !noalias !23195
  %i.ant = icmp eq i64 %i.ans, 1
  br i1 %i.ant, label %.invoke.i412, label %bb.my

.body427.thread:                                  ; preds = %bb.mq, %.body20.i391, %bb.mv
  %.pn8.i364 = phi { ptr, i32 } [ %i.anu, %bb.mq ], [ %.pn5.pn.i362, %bb.mv ], [ %.pn5.pn.i362, %.body20.i391 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !23166
  store i8 2, ptr %i.aje, align 8, !noalias !23166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7722.sroa.0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding10dictionaryNtBK_17DictionaryDecoder15make_dict_arrayNtNtCs4ytUTZt2Gw9_11arrow_array5types8Int8TypeE0EBS_.exit

bb.mq:                                            ; preds = %.invoke.i412
  %i.anu = landingpad { ptr, i32 }
          cleanup
  br label %.body427.thread

bb.mr:                                            ; preds = %bb.lb, %.noexc.i365, %bb.lc, %bb.ld, %bb.mk
  %i.anv = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i391

bb.ms:                                            ; preds = %bb.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !23188
  call void @llvm.experimental.noalias.scope.decl(metadata !23196)
  call void @llvm.experimental.noalias.scope.decl(metadata !23197)
  %i.anw = load ptr, ptr %i.ay, align 8, !alias.scope !23198, !noalias !23166, !nonnull !76, !noundef !76
  %i.anx = atomicrmw add ptr %i.anw, i64 -1 release, align 8, !noalias !23199
  %i.any = icmp eq i64 %i.anx, 1
  br i1 %i.any, label %.invoke.i412, label %bb.my

.invoke.i412:                                     ; preds = %bb.ms, %bb.mp
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %bb.my unwind label %bb.mq, !noalias !23166

bb.mt:                                            ; preds = %bb.mj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i388
  %.pn27.i390 = phi { ptr, i32 } [ %.pn34.i.i389, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i388 ], [ %i.ang, %bb.mj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23166
  br label %.body20.i391

bb.mu:                                            ; preds = %bb.mv
  %i.anz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23166
  unreachable

.body20.i391:                                     ; preds = %bb.mn, %bb.mr, %bb.mt
  %.pn5.pn.i362 = phi { ptr, i32 } [ %i.ann, %bb.mn ], [ %i.anv, %bb.mr ], [ %.pn27.i390, %bb.mt ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23200)
  call void @llvm.experimental.noalias.scope.decl(metadata !23201)
  %i.aoa = load ptr, ptr %i.ay, align 8, !alias.scope !23202, !noalias !23166, !nonnull !76, !noundef !76
  %i.aob = atomicrmw add ptr %i.aoa, i64 -1 release, align 8, !noalias !23203
end_hunk_1
begin_hunk_2_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13logical_nullsCsaSXGKSfiU2E_10lance_file:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !noundef !76
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !75

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
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !51356
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !51356
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @652, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #49
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !51356
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !51356, !nonnull !76, !noundef !76
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !76
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !51356
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !76, !noundef !76 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !51357)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !51357, !nonnull !76, !noundef !76 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !51357 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !51357
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !51357
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !51357, !noundef !76
  store i64 0, ptr %i.ak, align 16, !alias.scope !51357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51358
  store i64 1, ptr %i.a, align 8, !noalias !51358
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !51358
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !51358
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !51358
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !51358
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !51357
  store i64 128, ptr %i.e, align 16, !alias.scope !51357
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !51357
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !51358
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !51359
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !51359 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i, !prof !75

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i unwind label %bb.y, !noalias !51358

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body unwind label %bb.z, !noalias !51358

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !51358
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !51358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51358
  store ptr %i.bq, ptr %i.b, align 8, !noalias !51358
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !51358
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !51358
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !51358
  invoke void @_RNvXs0_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34 unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !51360)
  call void @llvm.experimental.noalias.scope.decl(metadata !51361)
  call void @llvm.experimental.noalias.scope.decl(metadata !51362)
  call void @llvm.experimental.noalias.scope.decl(metadata !51363)
  call void @llvm.experimental.noalias.scope.decl(metadata !51364)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !51365, !nonnull !76, !noundef !76
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !51365
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit35

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit35

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit35: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %i.bz = phi i64 [ %.pre52, %.lr.ph ], [ %i.cf, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ca, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.ae ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2 ; 2 uses
  %i.cb = add nuw i64 %.sroa.7.049, 1
  %i.cc = load i16, ptr %.sroa.0.050, align 2, !noundef !76
  %i.cd = zext i16 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %i.cf = phi i64 [ %.pre51, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.af ]
  %i.cg = icmp eq ptr %i.ca, %i.bh
  br i1 %i.cg, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ch = load ptr, ptr %i.bk, align 8, !noundef !76
  %i.ci = load i64, ptr %i.bl, align 8, !noundef !76
  %i.cj = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !76
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = shl nuw i8 1, %i.co
  %i.cq = and i8 %i.cp, %i.cm
  %.not21 = icmp eq i8 %i.cq, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !76 ; 2 uses
  %i.cr = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.val23
  br i1 %i.cs, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #49
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !76, !noundef !76
  %i.ct = trunc i64 %.sroa.7.049 to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = shl nuw i8 1, %i.cu
  %i.cw = xor i8 %i.cv, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !76
  %i.cz = and i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 !guid !51368 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !51369, !noundef !76
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file.exit

_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types10UInt16TypeENtB7_5Array18logical_null_countCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !51430 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !76
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !76
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
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !76, !noundef !76 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !76 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51431)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !51431, !noalias !51432, !noundef !76 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !51431, !noalias !51433 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !51431, !noalias !51433 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !51434, !noalias !51435, !noundef !76
  %i.v = zext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i, label %.loopexit36, !prof !85

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !51434, !noalias !51435, !noundef !76
  %i.z = zext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1, label %.loopexit36, !prof !85

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRtjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types10UInt16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB50_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItertEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !51436, !noundef !76
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
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !51436, !noundef !76
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

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit20, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51437)
  call void @llvm.experimental.noalias.scope.decl(metadata !51438)
  call void @llvm.experimental.noalias.scope.decl(metadata !51439)
  call void @llvm.experimental.noalias.scope.decl(metadata !51440)
  call void @llvm.experimental.noalias.scope.decl(metadata !51441)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !51442, !nonnull !76, !noundef !76
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !51442
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13logical_nullsCsaSXGKSfiU2E_10lance_file:bb.a
  %i.am = load ptr, ptr %i.al, align 8, !noundef !76
  %.not19 = icmp eq ptr %i.am, null
  br i1 %.not19, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al)
          to label %bb.w unwind label %bb.v

._crit_edge.i:                                    ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer13with_capacity.exit
  %i.an = and i64 %i.l, 7                         ; 2 uses
  %.not.i = icmp ne i64 %i.an, 0                  ; 2 uses
  %i.ao = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.m, %i.ao      ; 8 uses
  %.not48 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not48, label %bb.t, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i64 %.sroa.0.0.i, %.sroa.4.0.i42
  br i1 %i.ap, label %bb.p, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !75

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
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e, i64 noundef %.sroa.0.0.i.i)
          to label %.noexc28 unwind label %bb.v

.noexc28:                                         ; preds = %bb.r
  %.pre11.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !52080
  %.pre = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !52080
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @652, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @653) #49
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.s
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %.noexc28, %bb.o
  %i.av = phi ptr [ %.sroa.01.0.i, %bb.o ], [ %.pre, %.noexc28 ]
  %i.aw = phi i64 [ 0, %bb.o ], [ %.pre11.i, %.noexc28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 -1, i64 %.sroa.0.0.i, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !52080
  br i1 %.not.i, label %bb.u, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !52080, !nonnull !76, !noundef !76
  %i.az = trunc nuw nsw i64 %i.an to i8
  %notmask9.i = shl nsw i8 -1, %i.az
  %i.ba = xor i8 %notmask9.i, -1
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.m   ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !76
  %i.bd = and i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1
  br label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.t, %bb.u
  store i64 %i.l, ptr %i.ak, align 16, !alias.scope !52080
  br label %bb.w

bb.v:                                             ; preds = %bb.ah, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i, %bb.s, %bb.r, %bb.aa, %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bs, %bb.y ]
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ai

bb.w:                                             ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !76, !noundef !76 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !52081)
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !52081, !nonnull !76, !noundef !76 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !52081 ; 2 uses
  store ptr inttoptr (i64 128 to ptr), ptr %.sroa.539.0..sroa_idx, align 16, !alias.scope !52081
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !52081
  %i.bm = load i64, ptr %i.ak, align 16, !alias.scope !52081, !noundef !76
  store i64 0, ptr %i.ak, align 16, !alias.scope !52081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52082
  store i64 1, ptr %i.a, align 8, !noalias !52082
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bn, align 8, !noalias !52082
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.bo, align 8, !noalias !52082
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !52082
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !52082
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bp = load <2 x i64>, ptr %i.e, align 16, !alias.scope !52081
  store i64 128, ptr %i.e, align 16, !alias.scope !52081
  store i64 0, ptr %.sroa.4.0..sroa_idx38, align 8, !alias.scope !52081
  store <2 x i64> %i.bp, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx.i, align 8, !noalias !52082
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !52083
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !52083 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.x, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i, !prof !75

bb.x:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i unwind label %bb.y, !noalias !52082

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body unwind label %bb.z, !noalias !52082

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !52082
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !52082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52082
  store ptr %i.bq, ptr %i.b, align 8, !noalias !52082
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.bu, align 8, !noalias !52082
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %i.bv, align 8, !noalias !52082
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bm)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52082
  invoke void @_RNvXs0_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB5_10NullBufferINtNtCscI6d9CVNmLh_4core7convert4FromNtNtB7_7boolean13BooleanBufferE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34 unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !52084)
  call void @llvm.experimental.noalias.scope.decl(metadata !52085)
  call void @llvm.experimental.noalias.scope.decl(metadata !52086)
  call void @llvm.experimental.noalias.scope.decl(metadata !52087)
  call void @llvm.experimental.noalias.scope.decl(metadata !52088)
  %i.bw = load ptr, ptr %i.f, align 8, !alias.scope !52089, !nonnull !76, !noundef !76
  %i.bx = atomicrmw add ptr %i.bw, i64 -1 release, align 8, !noalias !52089
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit35

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit35

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit35: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit34, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.ad:                                            ; preds = %.lr.ph, %bb.ae
  %i.bz = phi i64 [ %.pre52, %.lr.ph ], [ %i.cf, %bb.ae ] ; 3 uses
  %.sroa.0.050 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ca, %bb.ae ] ; 2 uses
  %.sroa.7.049 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.ae ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.050, i64 2 ; 2 uses
  %i.cb = add nuw i64 %.sroa.7.049, 1
  %i.cc = load i16, ptr %.sroa.0.050, align 2, !noundef !76
  %i.cd = sext i16 %i.cc to i64                   ; 2 uses
  %i.ce = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.ce, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, %bb.ad, %bb.af
  %i.cf = phi i64 [ %.pre51, %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.af ]
  %i.cg = icmp eq ptr %i.ca, %i.bh
  br i1 %i.cg, label %._crit_edge, label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.ch = load ptr, ptr %i.bk, align 8, !noundef !76
  %i.ci = load i64, ptr %i.bl, align 8, !noundef !76
  %i.cj = add i64 %i.ci, %i.cd                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !76
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = shl nuw i8 1, %i.co
  %i.cq = and i8 %i.cp, %i.cm
  %.not21 = icmp eq i8 %i.cq, 0
  br i1 %.not21, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.val23 = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !76 ; 2 uses
  %i.cr = lshr i64 %.sroa.7.049, 3                ; 3 uses
  %i.cs = icmp ult i64 %i.cr, %.val23
  br i1 %i.cs, label %_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %.val23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #49
          to label %.noexc36 unwind label %bb.v

.noexc36:                                         ; preds = %bb.ah
  unreachable

_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7set_bit.exit: ; preds = %bb.ag
  %.val = load ptr, ptr %.sroa.539.0..sroa_idx, align 16, !nonnull !76, !noundef !76
  %i.ct = trunc i64 %.sroa.7.049 to i8
  %i.cu = and i8 %i.ct, 7
  %i.cv = shl nuw i8 1, %i.cu
  %i.cw = xor i8 %i.cv, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cr ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !76
  %i.cz = and i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cx, align 1
  %.pre51 = load i64, ptr %i.bj, align 8
  br label %bb.ae

bb.ai:                                            ; preds = %.body, %bb.l
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder7boolean20BooleanBufferBuilderECsaSXGKSfiU2E_10lance_file.exit, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(144) %0) unnamed_addr #0 !guid !52092 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !52093, !noundef !76
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file.exit

_RNvXs1_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array13shrink_to_fitCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef i64 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB5_15DictionaryArrayNtNtB9_5types9Int16TypeENtB7_5Array18logical_null_countCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !52154 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !noundef !76
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_13logical_nulls(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
  %i.g = load ptr, ptr %i.c, align 8, !noundef !76
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
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !76, !noundef !76 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !noundef !76 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52155)
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !52155, !noalias !52156, !noundef !76 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !52155, !noalias !52157 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !52155, !noalias !52157 ; 3 uses
  %i.t = icmp eq i64 %i.l, 1
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.l, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1, %.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.new ], [ %i.ax, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1 ] ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.new ], [ %i.aw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1 ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %.val13.i.i = load i16, ptr %i.u, align 2, !alias.scope !52158, !noalias !52159, !noundef !76
  %i.v = sext i16 %.val13.i.i to i64              ; 2 uses
  %i.w = icmp ugt i64 %i.o, %i.v
  br i1 %i.w, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i, label %.loopexit36, !prof !85

.loopexit36:                                      ; preds = %bb.f, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i, %.epil.preheader
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.loopexit36
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.sroa.04.0.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val13.i.i.1 = load i16, ptr %i.y, align 2, !alias.scope !52158, !noalias !52159, !noundef !76
  %i.z = sext i16 %.val13.i.i.1 to i64            ; 2 uses
  %i.aa = icmp ugt i64 %i.o, %i.z
  br i1 %i.aa, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1, label %.loopexit36, !prof !85

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i.1: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRsjjNCINvNvXs1_NtB6_6filterINtB19_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array16dictionary_arrayINtB2A_15DictionaryArrayNtNtB2E_5types9Int16TypeENtB2C_5Array18logical_null_count0E0NCINvXsK_NtB1G_5accumjNtB4Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4ItersEBY_EE0E0CsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.ab = add i64 %i.s, %i.v                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !52160, !noundef !76
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
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !52160, !noundef !76
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

bb.g:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit20, %bb.r, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit13
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit20 ], [ %i.do, %bb.r ], [ %.sroa.0.0.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit13 ], [ 0, %bb.c ]
  ret i64 %.sroa.0.0

bb.h:                                             ; preds = %.loopexit36
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52161)
  call void @llvm.experimental.noalias.scope.decl(metadata !52162)
  call void @llvm.experimental.noalias.scope.decl(metadata !52163)
  call void @llvm.experimental.noalias.scope.decl(metadata !52164)
  call void @llvm.experimental.noalias.scope.decl(metadata !52165)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !52166, !nonnull !76, !noundef !76
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !52166
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer4null10NullBufferECsaSXGKSfiU2E_10lance_file.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
end_hunk_3
