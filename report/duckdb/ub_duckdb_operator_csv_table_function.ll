Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_csv_table_function?download=true
inline.NumInlined: 5256
inline.NumDeleted: 2728
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6duckdb16CSVMultiFileInfo10BindReaderERNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISD_EEERNS_17MultiFileBindDataE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.v) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.061, label %bb.i, label %bb.bn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.061, label %bb.i, label %bb.bn

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn90 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.s) #24
  br label %bb.bn

bb.j:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.aa) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !236
  %i.ae = load ptr, ptr %3, align 8, !tbaa !235
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !914
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.al = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15MultiFileReaderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(57) %i.am)
  br label %bb.bm

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN6duckdb16CSVReaderOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1033) %10, ptr noundef nonnull align 8 dereferenceable(1033) %i.e)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb20CSVFileReaderOptionsE, i64 16), ptr %9, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @_ZN6duckdb16CSVReaderOptionsC2EOS0_(ptr noundef nonnull align 8 dereferenceable(1033) %i.aq, ptr noundef nonnull align 8 dereferenceable(1033) %10) #24
  call void @_ZN6duckdb16CSVReaderOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1033) dereferenceable(1033) %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.as = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MultiFileReaderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb15MultiFileReader15BindUnionReaderERNS_13ClientContextERNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISD_EEERNS_13MultiFileListERNS_17MultiFileBindDataERNS_21BaseFileReaderOptionsERNS_16MultiFileOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::MultiFileReaderBindData") align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(480) %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(152) %i.f)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.au = load i64, ptr %11, align 8, !tbaa !59
  store i64 %i.au, ptr %i.at, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !915 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !916 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bc = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !917
  store <2 x ptr> %i.bc, ptr %i.av, align 8, !tbaa !917
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !918
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !918
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bi, %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ax, %bb.n ] ; 3 uses
  %i.bf = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bf) #26
  br label %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.az
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !874

_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i.i.i.i, %bb.n
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #26
  br label %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i

_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i: ; preds = %bb.o, %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !276 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !277
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bq = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !278
  store <2 x ptr> %i.bq, ptr %i.bj, align 8, !tbaa !278
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !279
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb25MultiFileColumnDefinitionEEEvT_S5_(ptr noundef %i.bl, ptr noundef %i.bn)
          to label %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i unwind label %bb.q, !inline_history !8

_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i
  %.not.i.i.i.i.i.i5.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i5.i, label %_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #26, !inline_history !280
  br label %_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit

bb.q:                                             ; preds = %_ZN6duckdb6vectorINS_21HivePartitioningIndexELb1ESaIS1_EEaSEOS3_.exit.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #28, !inline_history !280
  unreachable

_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit:  ; preds = %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !919
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i8 %i.bw, ptr %i.bx, align 8, !tbaa !919
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !276
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !277
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb25MultiFileColumnDefinitionEEEvT_S5_(ptr noundef %i.by, ptr noundef %i.bz)
          to label %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i unwind label %bb.s, !inline_history !8

_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !276 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #26, !inline_history !280
  br label %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i

bb.s:                                             ; preds = %_ZN6duckdb23MultiFileReaderBindDataaSEOS0_.exit
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #28, !inline_history !280
  unreachable

_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i: ; preds = %bb.r, %_ZSt8_DestroyIPN6duckdb25MultiFileColumnDefinitionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cd = load ptr, ptr %i.aw, align 8, !tbaa !915 ; 3 uses
  %i.ce = load ptr, ptr %i.bb, align 8, !tbaa !916 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ci, %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i ], [ %i.cd, %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.cf = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.cf) #26
  br label %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ci, %i.ce
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !874

_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb21HivePartitioningIndexEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aw, align 8, !tbaa !915
  br label %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i
  %i.cj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cd, %_ZNSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb23MultiFileReaderBindDataD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cj) #26
  br label %_ZN6duckdb23MultiFileReaderBindDataD2Ev.exit

_ZN6duckdb23MultiFileReaderBindDataD2Ev.exit:     ; preds = %_ZSt8_DestroyIPN6duckdb21HivePartitioningIndexES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 456 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 464 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !516 ; 2 uses
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !517 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %14 = icmp ult i64 %i.cq, 17
  %.not109 = icmp eq ptr %i.cm, %i.cn
  %or.cond = or i1 %14, %.not109
  br i1 %or.cond, label %.loopexit100, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb23MultiFileReaderBindDataD2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  br label %bb.v

bb.u:                                             ; preds = %bb.m, %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bl

bb.v:                                             ; preds = %.lr.ph, %bb.y
  %.060105 = phi i64 [ 0, %.lr.ph ], [ %i.cx, %bb.y ] ; 2 uses
  %i.ct = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_13BaseUnionDataELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.060105)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cu = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13BaseUnionDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
          to label %bb.x unwind label %bb.z       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  invoke void @_ZNSt6vectorIN6duckdb10ColumnInfoESaIS1_EE12emplace_backIJRNS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERNS5_INS0_11LogicalTypeELb1ESaISF_EEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cw)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = add nuw i64 %.060105, 1                 ; 2 uses
  %i.cy = load ptr, ptr %i.cl, align 8, !tbaa !516
  %i.cz = load ptr, ptr %i.ck, align 8, !tbaa !517
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 4
  %i.de = icmp ult i64 %i.cx, %i.dd
  br i1 %i.de, label %bb.v, label %.loopexit100, !llvm.loop !875

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit100:                                     ; preds = %bb.y, %_ZN6duckdb23MultiFileReaderBindDataD2Ev.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !254 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.be, label %bb.aa

bb.aa:                                            ; preds = %.loopexit100
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr null, ptr %13, align 8, !tbaa !250
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !251
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !251
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !253
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %i.di, ptr %i.do, align 8, !tbaa !254
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !256
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store ptr null, ptr %i.dr, align 8, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %13, ptr %5, align 8, !tbaa !296
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSK_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  invoke void @_ZN6duckdb8CSVError16ColumnTypesErrorESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_mEEERKNS_6vectorIS7_Lb1ESaIS7_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::CSVError") align 8 %12, ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !252 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %bb.ac, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dt, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i ], [ %i.ds, %bb.ac ] ; 4 uses
  %i.dt = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !253 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !57 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i77: ; preds = %.lr.ph.i.i.i.i76
  call void @_ZdlPv(ptr noundef %i.dv) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i77
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #26
  %.not.i.i.i.i78 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i78, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i76, !llvm.loop !12

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i, %bb.ac
  %i.dy = load ptr, ptr %13, align 8, !tbaa !250
  %i.dz = load i64, ptr %i.dk, align 8, !tbaa !251
  %i.ea = shl i64 %i.dz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dy, i8 0, i64 %i.ea, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  %i.eb = load ptr, ptr %13, align 8, !tbaa !250  ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dr
  br i1 %i.ec, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.eb) #26
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !58
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.preheader, label %bb.ae

.preheader:                                       ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !236
  %i.ei = load ptr, ptr %3, align 8, !tbaa !235
  %.not110 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not110, label %._crit_edge, label %.lr.ph108

.lr.ph108:                                        ; preds = %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  br label %bb.ak

bb.ae:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev.exit
  %i.el = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.el, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bo unwind label %bb.aj

bb.ag:                                            ; preds = %bb.aa
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ah:                                            ; preds = %bb.ab
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #24
  br label %bb.bd

bb.ai:                                            ; preds = %bb.ae
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.el) #24
  br label %.loopexit.split-lp

bb.aj:                                            ; preds = %bb.af
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit, %.preheader
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !57 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !57 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ev) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ey = load ptr, ptr %12, align 8, !tbaa !57   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN6duckdb8CSVErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.ey) #26
  br label %_ZN6duckdb8CSVErrorD2Ev.exit

_ZN6duckdb8CSVErrorD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.be

bb.ak:                                            ; preds = %.lr.ph108, %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %.0106 = phi i64 [ 0, %.lr.ph108 ], [ %i.hg, %_ZN6duckdb11LogicalTypeaSERKS0_.exit ] ; 3 uses
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0106)
end_hunk_0
