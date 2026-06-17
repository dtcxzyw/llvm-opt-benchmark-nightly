inline.NumInlined: 5256
inline.NumDeleted: 2728
begin_hunk_0_@_ZN6duckdb18CSVSchemaDiscovery15SchemaDiscoveryERNS_13ClientContextERNS_10shared_ptrINS_16CSVBufferManagerELb1EEERNS_16CSVReaderOptionsERKNS_16MultiFileOptionsERNS_6vectorINS_11LogicalTypeELb1ESaISD_EEERNSC_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISM_EEERNS_13MultiFileListE:bb.a

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i123
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #24
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit125

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit125: ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i123, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZN6duckdb10CSVSniffer8SniffCSVEb(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::SnifferResult") align 8 %13, ptr noundef nonnull align 8 dereferenceable(680) %11, i1 noundef zeroext false)
          to label %bb.ad unwind label %bb.ba

bb.ad:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cd = invoke noundef i64 @_ZNK6duckdb10CSVSniffer12LinesSniffedEv(ptr noundef nonnull align 8 dereferenceable(680) %11)
          to label %bb.ae unwind label %bb.bb

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 65
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7, !range !55, !noundef !56
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = add i64 %i.cf, %i.ci
  %i.ck = sub i64 %i.cd, %i.cj
  store i64 %i.ck, ptr %i.b, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  %i.cm = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorINS_12OpenFileInfoELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef 0)
          to label %bb.af unwind label %bb.bb     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.cn = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6duckdb16CSVBufferManager9GetBufferEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.397") align 8 %14, ptr noundef nonnull align 8 dereferenceable(257) %i.cn, i64 noundef 0)
          to label %bb.ah unwind label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.co = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.ai unwind label %bb.bd

bb.ai:                                            ; preds = %bb.ah
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !726
  %i.cr = icmp eq i64 %i.cq, 0                    ; 2 uses
  %i.cs = zext i1 %i.cr to i8
  store i8 %i.cs, ptr %i.c, align 1, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 11 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !735 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !738
  %.not.i = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !17
  invoke void @_ZN6duckdb9CSVSchemaC1ERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKNS1_INS_11LogicalTypeELb1ESaISC_EEERKS7_mb(ptr noundef nonnull align 8 dereferenceable(121) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef %i.cx, i1 noundef zeroext %i.cr)
          to label %.noexc126 unwind label %bb.bd

.noexc126:                                        ; preds = %bb.aj
  %i.cy = load ptr, ptr %i.ct, align 8, !tbaa !735
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  store ptr %i.cz, ptr %i.ct, align 8, !tbaa !735
  br label %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERKSB_RmbEEEvDpOT_.exit

bb.ak:                                            ; preds = %bb.ai
  invoke void @_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE17_M_realloc_insertIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERKSB_RmbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERKSB_RmbEEEvDpOT_.exit unwind label %bb.bd

_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERKSB_RmbEEEvDpOT_.exit: ; preds = %.noexc126, %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i128 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i128, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERKSB_RmbEEEvDpOT_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dc, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !54
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #24, !inline_history !355
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #24, !inline_history !355
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i129 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i129, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130

bb.ap:                                            ; preds = %bb.an
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i131 = phi i32 [ %i.df, %bb.ao ], [ %i.dp, %bb.ap ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i131, 1
  br i1 %i.dq, label %bb.aq, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit, !prof !61

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #24
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERKSB_RmbEEEvDpOT_.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.dr = invoke noundef i64 @_ZNK6duckdb10CSVSniffer12LinesSniffedEv(ptr noundef nonnull align 8 dereferenceable(680) %11)
          to label %bb.ar unwind label %bb.bb     ; 2 uses

bb.ar:                                            ; preds = %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit
  %i.ds = invoke noundef zeroext i1 @_ZNK6duckdb10CSVSniffer17EmptyOrOnlyHeaderEv(ptr noundef nonnull align 8 dereferenceable(680) %11)
          to label %bb.as unwind label %bb.bb

bb.as:                                            ; preds = %bb.ar
  %spec.select = zext i1 %i.ds to i64             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.dt = load ptr, ptr %i.cl, align 8, !tbaa !202 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.dt, %i.dv
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.as, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.dt, %bb.as ] ; 3 uses
  %i.dw = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.dw) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i132 = icmp eq ptr %i.dz, %i.dv
  br i1 %.not.i.i.i.i132, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !204

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.cl, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.as
  %i.ea = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dt, %bb.as ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.at, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.eb = load ptr, ptr %13, align 8, !tbaa !206  ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !207 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.eb, %i.ed
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %.lr.ph.i.i.i2.i
  %.05.i.i.i3.i = phi ptr [ %i.ee, %.lr.ph.i.i.i2.i ], [ %i.eb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i3.i) #24
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 24 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !208

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i2.i
  %.pr.i5.i = load ptr, ptr %13, align 8, !tbaa !206
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ef = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.eb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i6.i, label %_ZN6duckdb13SnifferResultD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ef) #26
  br label %_ZN6duckdb13SnifferResultD2Ev.exit

_ZN6duckdb13SnifferResultD2Ev.exit:               ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZN6duckdb10CSVSnifferD2Ev(ptr noundef nonnull align 8 dead_on_return(680) dereferenceable(680) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !739 ; 2 uses
  %24 = icmp eq i64 %i.eh, -1
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !740
  %i.ek = load ptr, ptr %10, align 8, !tbaa !743
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = sdiv exact i64 %i.en, 48                ; 2 uses
  %spec.select240 = call i64 @llvm.umin.i64(i64 %i.eo, i64 %i.eh)
  %25 = select i1 %24, i64 %i.eo, i64 %spec.select240 ; 2 uses
  %i.ep = icmp ult i64 %i.dr, %i.l
  %i.eq = icmp ugt i64 %25, 1
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %i.er, label %.lr.ph, label %._crit_edge

bb.av:                                            ; preds = %bb.a
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.aw:                                            ; preds = %bb.b
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ax:                                            ; preds = %bb.d, %bb.c
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16CSVBufferManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i, %bb.ay
  %eh.lpad-body = phi { ptr, i32 } [ %i.ev, %bb.ay ], [ %i.s, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16CSVBufferManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ga

bb.az:                                            ; preds = %bb.v, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #24
  br label %bb.cr

bb.ba:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit125
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.bb:                                            ; preds = %bb.ar, %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit, %bb.ae, %bb.ad
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bc:                                            ; preds = %bb.ag, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #24
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.bd ], [ %i.ez, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.cp

.lr.ph:                                           ; preds = %_ZN6duckdb13SnifferResultD2Ev.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 632 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 65
  %i.fg = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188
  %.081283 = phi i64 [ %i.dr, %.lr.ph ], [ %i.jk, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188 ]
  %.082282 = phi i64 [ 1, %.lr.ph ], [ %i.jn, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188 ] ; 2 uses
  %.184281 = phi i64 [ %spec.select, %.lr.ph ], [ %spec.select112, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZN6duckdb16CSVReaderOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1033) %15, ptr noundef nonnull align 8 dereferenceable(1033) %9)
          to label %bb.bg unwind label %bb.cs

bb.bg:                                            ; preds = %bb.bf
  %i.fk = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6duckdb6vectorINS_12OpenFileInfoELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %.082282)
          to label %bb.bh unwind label %bb.ct

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.fk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit134 unwind label %bb.ct

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit134: ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i8 0, ptr %i.d, align 1, !tbaa !7
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.fl = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #25
          to label %.noexc141 unwind label %bb.cu ; 11 uses

.noexc141:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit134
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 8 uses
  store i32 1, ptr %i.fm, align 8, !tbaa !49, !noalias !747
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 12 ; 2 uses
  store i32 1, ptr %i.fn, align 4, !tbaa !54, !noalias !747
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb16CSVBufferManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fl, align 8, !tbaa !23, !noalias !747
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN6duckdb16CSVBufferManagerEJRNS0_13ClientContextERNS0_16CSVReaderOptionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEvPT_DpOT0_(ptr noundef nonnull %i.fo, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(1033) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.bi unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16CSVBufferManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i135, !noalias !747

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16CSVBufferManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i135: ; preds = %.noexc141
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.fl) #26, !noalias !747
  br label %.body142

bb.bi:                                            ; preds = %.noexc141
  store ptr %i.fo, ptr %16, align 16, !tbaa !43, !alias.scope !744
  store ptr %i.fl, ptr %i.fc, align 8, !tbaa !19, !alias.scope !744
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !744
  %.not.i.i.i.i.i.i136 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i.i.i.i136, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fr = load i32, ptr %i.fm, align 8, !tbaa !3, !noalias !744
  %i.fs = add nsw i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fm, align 8, !tbaa !3, !noalias !744
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ESt10shared_ptrIS1_E.exit.i137

bb.bk:                                            ; preds = %bb.bi
  %i.ft = atomicrmw volatile add ptr %i.fm, i32 1 acq_rel, align 4, !noalias !744 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ESt10shared_ptrIS1_E.exit.i137

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ESt10shared_ptrIS1_E.exit.i137: ; preds = %bb.bk, %bb.bj
  %i.fu = load atomic i64, ptr %i.fm acquire, align 8, !noalias !744 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 4294967297
  %i.fw = trunc i64 %i.fu to i32                  ; 2 uses
  br i1 %i.fv, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ESt10shared_ptrIS1_E.exit.i137
  store i32 0, ptr %i.fm, align 8, !tbaa !49, !noalias !744
  store i32 0, ptr %i.fn, align 4, !tbaa !54, !noalias !744
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !23, !noalias !744
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !744
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #24, !noalias !744, !inline_history !725
  %i.ga = load ptr, ptr %i.fl, align 8, !tbaa !23, !noalias !744
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !744
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #24, !noalias !744, !inline_history !725
  br label %_ZN6duckdb15make_shared_ptrINS_16CSVBufferManagerEJRNS_13ClientContextERNS_16CSVReaderOptionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit144

bb.bm:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ESt10shared_ptrIS1_E.exit.i137
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !744
  %.not.i.i.i.i138 = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i138, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ge = add nsw i32 %i.fw, -1
  store i32 %i.ge, ptr %i.fm, align 8, !tbaa !3, !noalias !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139

bb.bo:                                            ; preds = %bb.bm
  %i.gf = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4, !noalias !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i140 = phi i32 [ %i.fw, %bb.bn ], [ %i.gf, %bb.bo ]
  %i.gg = icmp eq i32 %.0.i.i.i.i.i140, 1
  br i1 %i.gg, label %bb.bp, label %_ZN6duckdb15make_shared_ptrINS_16CSVBufferManagerEJRNS_13ClientContextERNS_16CSVReaderOptionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit144, !prof !61

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #24, !noalias !744
  br label %_ZN6duckdb15make_shared_ptrINS_16CSVBufferManagerEJRNS_13ClientContextERNS_16CSVReaderOptionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit144

_ZN6duckdb15make_shared_ptrINS_16CSVBufferManagerEJRNS_13ClientContextERNS_16CSVReaderOptionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit144: ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i139, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.gh = load ptr, ptr %i.fc, align 8, !tbaa !19 ; 2 uses
  %i.gi = load <2 x ptr>, ptr %16, align 16, !tbaa !22
  store <2 x ptr> %i.gi, ptr %18, align 16, !tbaa !22
  %.not.i.i.i.i145 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i145, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit147, label %bb.bq

bb.bq:                                            ; preds = %_ZN6duckdb15make_shared_ptrINS_16CSVBufferManagerEJRNS_13ClientContextERNS_16CSVReaderOptionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit144
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 3 uses
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i146 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i146, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit147

bb.bs:                                            ; preds = %bb.bq
  %i.gn = atomicrmw volatile add ptr %i.gj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit147

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit147: ; preds = %_ZN6duckdb15make_shared_ptrINS_16CSVBufferManagerEJRNS_13ClientContextERNS_16CSVReaderOptionsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit144, %bb.br, %bb.bs
  %i.go = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb20CSVStateMachineCache3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.bt unwind label %bb.cv
end_hunk_0
begin_hunk_1_@_ZN6duckdb18CSVSchemaDiscovery15SchemaDiscoveryERNS_13ClientContextERNS_10shared_ptrINS_16CSVBufferManagerELb1EEERNS_16CSVReaderOptionsERKNS_16MultiFileOptionsERNS_6vectorINS_11LogicalTypeELb1ESaISD_EEERNSC_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISM_EEERNS_13MultiFileListE:bb.a
bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit134
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.body142

.body142:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16CSVBufferManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i135, %bb.cu
  %eh.lpad-body143 = phi { ptr, i32 } [ %i.ix, %bb.cu ], [ %i.fp, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb16CSVBufferManagerESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i.i135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.ds

bb.cv:                                            ; preds = %bb.bt, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEC2ERKS2_.exit147
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #24
  br label %bb.dr

bb.cw:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit152
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.cx:                                            ; preds = %bb.de, %bb.dd, %bb.df, %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERSB_RmEEEvDpOT_.exit, %bb.cb
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cy:                                            ; preds = %bb.cd, %bb.cc
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.ce
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #24
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn98 = phi { ptr, i32 } [ %i.jc, %bb.cz ], [ %i.jb, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.dp

bb.db:                                            ; preds = %bb.co
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %bb.dp

bb.dc:                                            ; preds = %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit157
  %i.je = load ptr, ptr %i.ct, align 8, !tbaa !735 ; 3 uses
  %i.jf = load ptr, ptr %i.cv, align 8, !tbaa !738
  %.not.i160 = icmp eq ptr %i.je, %i.jf
  br i1 %.not.i160, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jg = load i64, ptr %i.e, align 8, !tbaa !17
  invoke void @_ZN6duckdb9CSVSchemaC1ERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKNS1_INS_11LogicalTypeELb1ESaISC_EEERKS7_mb(ptr noundef nonnull align 8 dereferenceable(121) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, i64 noundef %i.jg, i1 noundef zeroext false)
          to label %.noexc161 unwind label %bb.cx

.noexc161:                                        ; preds = %bb.dd
  %i.jh = load ptr, ptr %i.ct, align 8, !tbaa !735
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 128
  store ptr %i.ji, ptr %i.ct, align 8, !tbaa !735
  br label %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERSB_RmEEEvDpOT_.exit

bb.de:                                            ; preds = %bb.dc
  invoke void @_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE17_M_realloc_insertIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERSB_RmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.je, ptr noundef nonnull align 8 dereferenceable(24) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERSB_RmEEEvDpOT_.exit unwind label %bb.cx

_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERSB_RmEEEvDpOT_.exit: ; preds = %.noexc161, %bb.de, %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJbEEEvDpOT_.exit
  %i.jj = invoke noundef i64 @_ZNK6duckdb10CSVSniffer12LinesSniffedEv(ptr noundef nonnull align 8 dereferenceable(680) %17)
          to label %bb.df unwind label %bb.cx

bb.df:                                            ; preds = %_ZNSt6vectorIN6duckdb9CSVSchemaESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEERSB_RmEEEvDpOT_.exit
  %i.jk = add i64 %i.jj, %.081283                 ; 2 uses
  %i.jl = invoke noundef zeroext i1 @_ZNK6duckdb10CSVSniffer17EmptyOrOnlyHeaderEv(ptr noundef nonnull align 8 dereferenceable(680) %17)
          to label %bb.dg unwind label %bb.cx

bb.dg:                                            ; preds = %bb.df
  %i.jm = zext i1 %i.jl to i64
  %spec.select112 = add i64 %.184281, %i.jm       ; 2 uses
  %i.jn = add nuw i64 %.082282, 1                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.jo = load ptr, ptr %i.fh, align 8, !tbaa !202 ; 3 uses
  %i.jp = load ptr, ptr %i.fi, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i.i.i163 = icmp eq ptr %i.jo, %i.jp
  br i1 %.not4.i.i.i.i163, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i171, label %.lr.ph.i.i.i.i164

.lr.ph.i.i.i.i164:                                ; preds = %bb.dg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i167
  %.05.i.i.i.i165 = phi ptr [ %i.jt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i167 ], [ %i.jo, %bb.dg ] ; 3 uses
  %i.jq = load ptr, ptr %.05.i.i.i.i165, align 8, !tbaa !13 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i165, i64 16
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i166: ; preds = %.lr.ph.i.i.i.i164
  call void @_ZdlPv(ptr noundef %i.jq) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i167

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i167: ; preds = %.lr.ph.i.i.i.i164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i166
  %i.jt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i165, i64 32 ; 2 uses
  %.not.i.i.i.i168 = icmp eq ptr %i.jt, %i.jp
  br i1 %.not.i.i.i.i168, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i169, label %.lr.ph.i.i.i.i164, !llvm.loop !204

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i169: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i167
  %.pr.i.i170 = load ptr, ptr %i.fh, align 8, !tbaa !202
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i171

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i171: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i169, %bb.dg
  %i.ju = phi ptr [ %.pr.i.i170, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i169 ], [ %i.jo, %bb.dg ] ; 2 uses
  %.not.i.i1.i.i172 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i1.i.i172, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i173, label %bb.dh

bb.dh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i171
  call void @_ZdlPv(ptr noundef nonnull %i.ju) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i173

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i173: ; preds = %bb.dh, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i171
  %i.jv = load ptr, ptr %19, align 8, !tbaa !206  ; 3 uses
  %i.jw = load ptr, ptr %i.fj, align 8, !tbaa !207 ; 2 uses
  %.not4.i.i.i1.i174 = icmp eq ptr %i.jv, %i.jw
  br i1 %.not4.i.i.i1.i174, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i180, label %.lr.ph.i.i.i2.i175

.lr.ph.i.i.i2.i175:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i173, %.lr.ph.i.i.i2.i175
  %.05.i.i.i3.i176 = phi ptr [ %i.jx, %.lr.ph.i.i.i2.i175 ], [ %i.jv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i173 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i3.i176) #24
  %i.jx = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i176, i64 24 ; 2 uses
  %.not.i.i.i4.i177 = icmp eq ptr %i.jx, %i.jw
  br i1 %.not.i.i.i4.i177, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i178, label %.lr.ph.i.i.i2.i175, !llvm.loop !208

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i178: ; preds = %.lr.ph.i.i.i2.i175
  %.pr.i5.i179 = load ptr, ptr %19, align 8, !tbaa !206
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i180

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i180: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i178, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i173
  %i.jy = phi ptr [ %.pr.i5.i179, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i178 ], [ %i.jv, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i173 ] ; 2 uses
  %.not.i.i1.i6.i181 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i1.i6.i181, label %_ZN6duckdb13SnifferResultD2Ev.exit183, label %bb.di

bb.di:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i180
  call void @_ZdlPv(ptr noundef nonnull %i.jy) #26
  br label %_ZN6duckdb13SnifferResultD2Ev.exit183

_ZN6duckdb13SnifferResultD2Ev.exit183:            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i180, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @_ZN6duckdb10CSVSnifferD2Ev(ptr noundef nonnull align 8 dead_on_return(680) dereferenceable(680) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.jz = load ptr, ptr %i.fc, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i184 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i184, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188, label %bb.dj

bb.dj:                                            ; preds = %_ZN6duckdb13SnifferResultD2Ev.exit183
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.ka, align 8, !tbaa !49
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !54
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !23
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #24, !inline_history !199
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !23
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #24, !inline_history !199
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188

bb.dl:                                            ; preds = %bb.dj
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i185 = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i185, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186

bb.dn:                                            ; preds = %bb.dl
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186: ; preds = %bb.dn, %bb.dm
  %.0.i.i.i.i.i187 = phi i32 [ %i.kd, %bb.dm ], [ %i.kn, %bb.dn ]
  %i.ko = icmp eq i32 %.0.i.i.i.i.i187, 1
  br i1 %i.ko, label %bb.do, label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188, !prof !61

bb.do:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #24
  br label %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188

_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188: ; preds = %_ZN6duckdb13SnifferResultD2Ev.exit183, %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN6duckdb16CSVReaderOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1033) dereferenceable(1033) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.kp = icmp ult i64 %i.jk, %i.l
  %i.kq = icmp ult i64 %i.jn, %25
  %i.kr = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %i.kr, label %bb.bf, label %._crit_edge, !llvm.loop !763

bb.dp:                                            ; preds = %bb.db, %bb.da, %bb.cx
  %.pn100 = phi { ptr, i32 } [ %i.ja, %bb.cx ], [ %i.jd, %bb.db ], [ %.pn98, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @_ZN6duckdb13SnifferResultD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %19) #24
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.cw
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.dp ], [ %i.iz, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @_ZN6duckdb10CSVSnifferD2Ev(ptr noundef nonnull align 8 dead_on_return(680) dereferenceable(680) %17) #24
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.cv
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %bb.dq ], [ %i.iy, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #24
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.body142
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn, %bb.dr ], [ %eh.lpad-body143, %.body142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.ct
  %.pn100.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn, %bb.ds ], [ %i.iw, %bb.ct ]
  call void @_ZN6duckdb16CSVReaderOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1033) dereferenceable(1033) %15) #24
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.cs
  %.pn100.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn.pn, %bb.dt ], [ %i.iv, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.ga

._crit_edge:                                      ; preds = %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188, %_ZN6duckdb13SnifferResultD2Ev.exit
  %.184.lcssa = phi i64 [ %spec.select, %_ZN6duckdb13SnifferResultD2Ev.exit ], [ %spec.select112, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188 ]
  %.082.lcssa = phi i64 [ 1, %_ZN6duckdb13SnifferResultD2Ev.exit ], [ %i.jn, %_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev.exit188 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(121) %0, i8 0, i64 24, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.kt, ptr %i.ks, align 8, !tbaa !750
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.ku, align 8, !tbaa !752
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.kw, align 8, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i8 0, i64 16, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.kz, ptr %i.ky, align 8, !tbaa !9
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.la, align 8, !tbaa !16
  store i8 0, ptr %i.kz, align 8, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 0, ptr %i.lb, align 8, !tbaa !753
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.lc, align 8, !tbaa !762
  %i.ld = load ptr, ptr %8, align 8, !tbaa !764   ; 2 uses
  %i.le = load ptr, ptr %i.ct, align 8, !tbaa !764 ; 2 uses
  %.not241285 = icmp eq ptr %i.ld, %i.le
  br i1 %.not241285, label %._crit_edge289, label %.lr.ph288

.lr.ph288:                                        ; preds = %._crit_edge
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 712
  br label %bb.dv

._crit_edge289:                                   ; preds = %bb.ef, %._crit_edge
  invoke void @_ZN6duckdb9CSVSchema22ReplaceNullWithVarcharEv(ptr noundef nonnull align 8 dereferenceable(121) %0)
          to label %bb.eg unwind label %bb.eo

bb.dv:                                            ; preds = %.lr.ph288, %bb.ef
  %.sroa.0231.0286 = phi ptr [ %i.ld, %.lr.ph288 ], [ %i.lu, %bb.ef ] ; 10 uses
  %i.lg = invoke noundef zeroext i1 @_ZNK6duckdb9CSVSchema5EmptyEv(ptr noundef nonnull align 8 dereferenceable(121) %0)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.lg, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.lh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13CSVColumnInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(121) %.sroa.0231.0286)
          to label %.noexc189 unwind label %bb.dy ; 0 uses

.noexc189:                                        ; preds = %bb.dx
  %i.li = icmp eq ptr %.sroa.0231.0286, %0
  br i1 %i.li, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEaSERKSE_.exit.i192.invoke, label %.invoke

bb.dy:                                            ; preds = %.invoke, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEaSERKSE_.exit.i192.invoke, %bb.eb, %bb.dx, %bb.ee, %bb.ec, %bb.dz, %bb.dv
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.dz:                                            ; preds = %bb.dw
  %i.lk = invoke noundef i64 @_ZNK6duckdb9CSVSchema11GetRowsReadEv(ptr noundef nonnull align 8 dereferenceable(121) %0)
          to label %bb.ea unwind label %bb.dy

bb.ea:                                            ; preds = %bb.dz
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.lm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13CSVColumnInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(121) %.sroa.0231.0286)
          to label %.noexc193 unwind label %bb.dy ; 0 uses

.noexc193:                                        ; preds = %bb.eb
  %i.ln = icmp eq ptr %.sroa.0231.0286, %0
  br i1 %i.ln, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEaSERKSE_.exit.i192.invoke, label %.invoke

.invoke:                                          ; preds = %.noexc193, %.noexc189
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0231.0286, i64 24
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSL_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ks, ptr noundef nonnull align 8 dereferenceable(56) %i.lo)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEaSERKSE_.exit.i192.invoke unwind label %bb.dy

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEaSERKSE_.exit.i192.invoke: ; preds = %.invoke, %.noexc193, %.noexc189
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0231.0286, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ky, ptr noundef nonnull align 8 dereferenceable(32) %i.lp)
          to label %.sink.split unwind label %bb.dy

bb.ec:                                            ; preds = %bb.ea
  %i.lq = invoke noundef i64 @_ZNK6duckdb9CSVSchema11GetRowsReadEv(ptr noundef nonnull align 8 dereferenceable(121) %.sroa.0231.0286)
          to label %bb.ed unwind label %bb.dy

bb.ed:                                            ; preds = %bb.ec
  %.not = icmp eq i64 %i.lq, 0
  br i1 %.not, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.lr = load i8, ptr %i.lf, align 8, !tbaa !765, !range !55, !noundef !56
  %i.ls = trunc nuw i8 %i.lr to i1
  invoke void @_ZN6duckdb9CSVSchema12MergeSchemasERS0_b(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef nonnull align 8 dereferenceable(121) %.sroa.0231.0286, i1 noundef zeroext %i.ls)
          to label %bb.ef unwind label %bb.dy

.sink.split:                                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEaSERKSE_.exit.i192.invoke
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0231.0286, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.lb, ptr noundef nonnull align 8 dereferenceable(9) %i.lt, i64 9, i1 false)
  br label %bb.ef

bb.ef:                                            ; preds = %.sink.split, %bb.ee, %bb.ed
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0231.0286, i64 128 ; 2 uses
  %.not241 = icmp eq ptr %i.lu, %i.le
  br i1 %.not241, label %._crit_edge289, label %bb.dv

bb.eg:                                            ; preds = %._crit_edge289
  %i.lv = load ptr, ptr %6, align 8, !tbaa !226
  %i.lw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !226
  %i.ly = icmp eq ptr %i.lv, %i.lx
  br i1 %i.ly, label %bb.eh, label %bb.er

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNK6duckdb9CSVSchema8GetNamesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %21, ptr noundef nonnull align 8 dereferenceable(121) %0)
          to label %bb.ei unwind label %bb.ep

bb.ei:                                            ; preds = %bb.eh
  %i.lz = load ptr, ptr %6, align 8, !tbaa !202   ; 4 uses
  %i.ma = load ptr, ptr %i.lw, align 8, !tbaa !203 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.md = load <2 x ptr>, ptr %21, align 16, !tbaa !226
  store <2 x ptr> %i.md, ptr %6, align 8, !tbaa !226
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.mf = load ptr, ptr %i.me, align 16, !tbaa !227
  store ptr %i.mf, ptr %i.mb, align 8, !tbaa !227
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.lz, %i.ma
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ei, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.mj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.lz, %bb.ei ] ; 3 uses
  %i.mg = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.mg) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i197 = icmp eq ptr %i.mj, %i.ma
  br i1 %.not.i.i.i.i.i.i197, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !204

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %bb.ei
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit, label %bb.ej

bb.ej:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.lz) #26
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSEOS8_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.ej
  %i.mk = load ptr, ptr %21, align 16, !tbaa !202 ; 3 uses
  %i.ml = load ptr, ptr %i.mc, align 8, !tbaa !203 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mk, %i.ml
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i
end_hunk_1
