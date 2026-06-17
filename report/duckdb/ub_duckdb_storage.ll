inline.NumInlined: 20074
inline.NumDeleted: 9324
begin_hunk_0_@_ZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEv:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14MetadataWriterEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14MetadataWriterEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_14MetadataWriterEJRNS_15MetadataManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(80) %i.ah) #23, !inline_history !438
  br label %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb14MetadataWriterEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_14MetadataWriterEJRNS_15MetadataManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.al = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #46, !noalias !439 ; 3 uses
  invoke void @_ZN6duckdb14MetadataWriterC1ERNS_15MetadataManagerENS_12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS5_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.al, ptr noundef nonnull align 8 dereferenceable(168) %i.ad, ptr null)
          to label %_ZN6duckdb9make_uniqINS_14MetadataWriterEJRNS_15MetadataManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit157 unwind label %bb.d, !noalias !439

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #44, !noalias !439
  br label %common.resume

_ZN6duckdb9make_uniqINS_14MetadataWriterEJRNS_15MetadataManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit157: ; preds = %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !422 ; 3 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !422
  %.not.i.i.i.i.i158 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i158, label %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6duckdb14MetadataWriterEEclEPS1_.exit.i.i.i.i.i159

_ZNKSt14default_deleteIN6duckdb14MetadataWriterEEclEPS1_.exit.i.i.i.i.i159: ; preds = %_ZN6duckdb9make_uniqINS_14MetadataWriterEJRNS_15MetadataManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit157
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(80) %i.ao) #23, !inline_history !438
  br label %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit163

_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6duckdb14MetadataWriterEEclEPS1_.exit.i.i.i.i.i159, %_ZN6duckdb9make_uniqINS_14MetadataWriterEJRNS_15MetadataManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit157
  %i.as = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14MetadataWriterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.at = tail call { i64, i64 } @_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv(ptr noundef nonnull align 8 dereferenceable(80) %i.as) ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0      ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.at, 1
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !425, !nonnull !67, !align !68
  %i.ax = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb16AttachedDatabase21GetTransactionManagerEv(ptr noundef nonnull align 8 dereferenceable(408) %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN6duckdb23ActiveCheckpointWrapperC1ERNS_22DuckTransactionManagerE(ptr noundef nonnull align 8 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(400) %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.az = call noundef zeroext i1 @_ZN6duckdb14StorageManager18WALStartCheckpointENS_16MetaBlockPointerERNS_17CheckpointOptionsE(ptr noundef nonnull align 8 dereferenceable(224) %i.g, i64 %i.au, i64 %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !425, !nonnull !67, !align !68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !85, !nonnull !67, !align !68
  %i.bd = invoke noundef i64 @_ZN6duckdb8Settings3GetINS_29DebugCheckpointSleepMsSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEmEE5valueEmE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(1560) %i.bc)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit163
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb10ThreadUtil7SleepMsEm(i64 noundef %i.bd)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN6duckdb14MetadataWriterESt14default_deleteIS1_EED2Ev.exit163
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ga

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !425, !nonnull !67, !align !68
  %i.bg = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN6duckdb7Catalog10GetCatalogERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(408) %i.bf)
          to label %bb.i unwind label %bb.cg      ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.bh = ptrtoint ptr %11 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.bk, align 8
  store i64 %i.bh, ptr %12, align 8, !tbaa !442
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.bj, align 8, !tbaa !444
  store ptr @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.bi, align 8, !tbaa !447
  invoke void @_ZN6duckdb11DuckCatalog11ScanSchemasESt8functionIFvRNS_18SchemaCatalogEntryEEE(ptr noundef nonnull align 8 dereferenceable(176) %i.bg, ptr noundef nonnull %12)
          to label %bb.j unwind label %bb.ch

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !447 ; 2 uses
  %.not.i164 = icmp eq ptr %i.bl, null
  br i1 %.not.i164, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 248
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke ptr %i.br(ptr noundef nonnull align 8 dereferenceable(176) %i.bg)
          to label %bb.m unwind label %bb.ck

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  store ptr %i.bs, ptr %13, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_17DependencyManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.n unwind label %bb.ck

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %13, align 8, !tbaa !448
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %.val155 = load ptr, ptr %11, align 8, !tbaa !451 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val156 = load ptr, ptr %i.bu, align 8, !tbaa !451 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !453
  %.not102.i = icmp eq ptr %.val155, %.val156
  br i1 %.not102.i, label %_ZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEE.exit, label %.lr.ph105.i

.lr.ph105.i:                                      ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.bx = ptrtoint ptr %14 to i64                 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i, %.lr.ph105.i
  %.sroa.021.0103.i = phi ptr [ %.val155, %.lr.ph105.i ], [ %i.jf, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.021.0103.i, align 8, !tbaa !456, !noalias !453 ; 14 uses
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453 ; 5 uses
  %i.cn = load ptr, ptr %i.bw, align 16, !tbaa !462, !alias.scope !453
  %.not.i.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = ptrtoint ptr %i.cl to i64
  store i64 %i.co, ptr %i.cm, align 8
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %14, align 16, !tbaa !463, !alias.scope !453 ; 7 uses
  %i.cs = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.r, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc.i unwind label %.loopexit.split-lp32.i

.noexc.i:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.q
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i.i.i166 = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i166)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #46
          to label %.noexc27.i unwind label %.loopexit31.i ; 8 uses

.noexc27.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = ptrtoint ptr %i.cl to i64
  store i64 %i.de, ptr %i.dd, align 8
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cm
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc27.i
  %i.df = ptrtoaddr ptr %i.dc to i64
  %40 = sub i64 %i.cs, %i.ct
  %41 = add i64 %40, -8                           ; 2 uses
  %i.dg = lshr i64 %41, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check694 = icmp ult i64 %41, 24
  %i.di = sub i64 %i.df, %i.ct
  %diff.check692 = icmp ult i64 %i.di, 32
  %or.cond = or i1 %min.iters.check694, %diff.check692
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader731, label %vector.ph695

vector.ph695:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec697 = and i64 %i.dh, 4611686018427387900  ; 3 uses
  %i.dj = shl i64 %n.vec697, 3                    ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dc, i64 %i.dj  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cr, i64 %i.dj
  br label %vector.body698

vector.body698:                                   ; preds = %vector.body698, %vector.ph695
  %index699 = phi i64 [ 0, %vector.ph695 ], [ %index.next704, %vector.body698 ] ; 2 uses
  %i.dm = shl i64 %index699, 3                    ; 2 uses
  %next.gep700 = getelementptr i8, ptr %i.dc, i64 %i.dm ; 2 uses
  %next.gep701 = getelementptr i8, ptr %i.cr, i64 %i.dm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.dn = getelementptr i8, ptr %next.gep701, i64 16
  %wide.load702 = load <2 x i64>, ptr %next.gep701, align 8, !alias.scope !467, !noalias !464
  %wide.load703 = load <2 x i64>, ptr %i.dn, align 8, !alias.scope !467, !noalias !464
  %i.do = getelementptr i8, ptr %next.gep700, i64 16
  store <2 x i64> %wide.load702, ptr %next.gep700, align 8, !alias.scope !464, !noalias !467
  store <2 x i64> %wide.load703, ptr %i.do, align 8, !alias.scope !464, !noalias !467
  %index.next704 = add nuw i64 %index699, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next704, %n.vec697
  br i1 %i.dp, label %middle.block705, label %vector.body698, !llvm.loop !469

middle.block705:                                  ; preds = %vector.body698
  %cmp.n706 = icmp eq i64 %i.dh, %n.vec697
  br i1 %cmp.n706, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader731

.lr.ph.i.i.i.i.i.i.i.i.preheader731:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block705
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.dk, %middle.block705 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.dl, %middle.block705 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader731, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader731 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader731 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.dq = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !alias.scope !467, !noalias !464
  store i64 %i.dq, ptr %.012.i.i.i.i.i.i.i.i, align 8, !alias.scope !464, !noalias !467
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.cm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !472

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block705, %.noexc27.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.noexc27.i ], [ %i.dk, %middle.block705 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cr) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.s, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  store ptr %i.dc, ptr %14, align 16, !tbaa !463, !alias.scope !453
  store ptr %i.dt, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.du, ptr %i.bw, align 16, !tbaa !462, !alias.scope !453
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !453
  store i64 0, ptr %i.bz, align 8, !noalias !453
  store i64 %i.bx, ptr %1, align 8, !tbaa !473, !noalias !453
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.by, align 8, !tbaa !218, !noalias !453
  %i.dv = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(248) %i.cl, i8 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i
  %i.dy = load ptr, ptr %i.by, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = invoke noundef zeroext i1 %i.dy(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !453
  store i64 0, ptr %i.cb, align 8, !noalias !453
  store i64 %i.bx, ptr %2, align 8, !tbaa !473, !noalias !453
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_1E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.ca, align 8, !tbaa !218, !noalias !453
  %i.ec = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 136
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(248) %i.cl, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ef = load ptr, ptr %i.ca, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.ef, null
  br i1 %.not.i28.i, label %_ZNSt14_Function_baseD2Ev.exit29.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = invoke noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit29.i unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit29.i:               ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !453
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !453
  store ptr %3, ptr %5, align 8, !tbaa !473, !noalias !453
  store ptr %4, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !475, !noalias !453
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_2E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_2E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.cc, align 8, !tbaa !218, !noalias !453
  %i.ej = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(248) %i.cl, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.z unwind label %bb.aj

bb.z:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit29.i
  %i.em = load ptr, ptr %i.cc, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.em, null
  br i1 %.not.i30.i, label %_ZNSt14_Function_baseD2Ev.exit31.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit31.i unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit31.i:               ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !453
  invoke void @_ZN6duckdb19ReorderTableEntriesERNS_6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EEE(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ac unwind label %bb.am

bb.ac:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit31.i
  %i.eq = load ptr, ptr %3, align 8, !tbaa !477, !noalias !453 ; 2 uses
  %i.er = load ptr, ptr %i.cd, align 8, !tbaa !477, !noalias !453 ; 2 uses
  %.not2495.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not2495.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit53.i, %bb.ac
  %i.es = load ptr, ptr %4, align 8, !tbaa !478, !noalias !453 ; 2 uses
  %i.et = load ptr, ptr %i.ce, align 8, !tbaa !478, !noalias !453 ; 2 uses
  %.not2597.i = icmp eq ptr %i.es, %i.et
  br i1 %.not2597.i, label %._crit_edge101.i, label %.lr.ph100.preheader.i

.lr.ph100.preheader.i:                            ; preds = %._crit_edge.i
  %.pre109.i = load ptr, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  br label %.lr.ph100.i

.loopexit31.i:                                    ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit33.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bs

.loopexit.split-lp32.i:                           ; preds = %bb.r
  %lpad.loopexit.split-lp34.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bs

bb.ad:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %i.ev = load ptr, ptr %i.by, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i32.i = icmp eq ptr %i.ev, null
  br i1 %.not.i32.i, label %_ZNSt14_Function_baseD2Ev.exit33.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit33.i unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit33.i:               ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !453
  br label %bb.bs

bb.ag:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %i.fa = load ptr, ptr %i.ca, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i34.i = icmp eq ptr %i.fa, null
  br i1 %.not.i34.i, label %_ZNSt14_Function_baseD2Ev.exit35.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = invoke noundef zeroext i1 %i.fa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit35.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit35.i:               ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !453
  br label %bb.bs

bb.aj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit29.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %i.ff = load ptr, ptr %i.cc, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.ff, null
  br i1 %.not.i36.i, label %_ZNSt14_Function_baseD2Ev.exit37.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = invoke noundef zeroext i1 %i.ff(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit37.i unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit37.i:               ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !453
  br label %bb.bp

bb.am:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit31.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bp

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit53.i, %.lr.ph.preheader.i
  %i.fk = phi ptr [ %i.gu, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit53.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.012.096.i = phi ptr [ %i.gv, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit53.i ], [ %i.eq, %.lr.ph.preheader.i ] ; 2 uses
  %i.fl = load ptr, ptr %.sroa.012.096.i, align 8, !tbaa !480 ; 2 uses
  %i.fm = load ptr, ptr %i.bw, align 16, !tbaa !462, !alias.scope !453
  %.not.i.i38.i = icmp eq ptr %i.fk, %i.fm
  br i1 %.not.i.i38.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i
  %i.fn = ptrtoint ptr %i.fl to i64
  store i64 %i.fn, ptr %i.fk, align 8
  %i.fo = load ptr, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  store ptr %i.fp, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit53.i

bb.ao:                                            ; preds = %.lr.ph.i
  %i.fq = load ptr, ptr %14, align 16, !tbaa !463, !alias.scope !453 ; 7 uses
  %i.fr = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64               ; 3 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.ap, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i39.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc51.i unwind label %.loopexit.split-lp27.i

.noexc51.i:                                       ; preds = %bb.ap
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i39.i: ; preds = %bb.ao
  %i.fv = ashr exact i64 %i.ft, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i40.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i40.i, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 1152921504606846975)
  %i.fz = select i1 %i.fx, i64 1152921504606846975, i64 %i.fy ; 3 uses
  %.not.i.i.i.i41.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i41.i)
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #46
          to label %.noexc52.i unwind label %.loopexit26.i ; 8 uses

.noexc52.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i39.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft
  %i.gd = ptrtoint ptr %i.fl to i64
  store i64 %i.gd, ptr %i.gc, align 8
  %.not10.i.i.i.i.i.i.i42.i = icmp eq ptr %i.fq, %i.fk
  br i1 %.not10.i.i.i.i.i.i.i42.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i47.i, label %.lr.ph.i.i.i.i.i.i.i43.i.preheader

.lr.ph.i.i.i.i.i.i.i43.i.preheader:               ; preds = %.noexc52.i
  %i.ge = ptrtoaddr ptr %i.gb to i64
  %42 = sub i64 %i.fr, %i.fs
  %43 = add i64 %42, -8                           ; 2 uses
  %i.gf = lshr i64 %43, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check676 = icmp ult i64 %43, 24
  %i.gh = sub i64 %i.ge, %i.fs
  %diff.check674 = icmp ult i64 %i.gh, 32
  %or.cond709 = or i1 %min.iters.check676, %diff.check674
  br i1 %or.cond709, label %.lr.ph.i.i.i.i.i.i.i43.i.preheader730, label %vector.ph677

vector.ph677:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i43.i.preheader
  %n.vec679 = and i64 %i.gg, 4611686018427387900  ; 3 uses
  %i.gi = shl i64 %n.vec679, 3                    ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gb, i64 %i.gi  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fq, i64 %i.gi
  br label %vector.body680

vector.body680:                                   ; preds = %vector.body680, %vector.ph677
  %index681 = phi i64 [ 0, %vector.ph677 ], [ %index.next686, %vector.body680 ] ; 2 uses
  %i.gl = shl i64 %index681, 3                    ; 2 uses
  %next.gep682 = getelementptr i8, ptr %i.gb, i64 %i.gl ; 2 uses
  %next.gep683 = getelementptr i8, ptr %i.fq, i64 %i.gl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.gm = getelementptr i8, ptr %next.gep683, i64 16
  %wide.load684 = load <2 x i64>, ptr %next.gep683, align 8, !alias.scope !485, !noalias !482
  %wide.load685 = load <2 x i64>, ptr %i.gm, align 8, !alias.scope !485, !noalias !482
  %i.gn = getelementptr i8, ptr %next.gep682, i64 16
  store <2 x i64> %wide.load684, ptr %next.gep682, align 8, !alias.scope !482, !noalias !485
  store <2 x i64> %wide.load685, ptr %i.gn, align 8, !alias.scope !482, !noalias !485
  %index.next686 = add nuw i64 %index681, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next686, %n.vec679
  br i1 %i.go, label %middle.block687, label %vector.body680, !llvm.loop !487

middle.block687:                                  ; preds = %vector.body680
  %cmp.n688 = icmp eq i64 %i.gg, %n.vec679
  br i1 %cmp.n688, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i47.i, label %.lr.ph.i.i.i.i.i.i.i43.i.preheader730

.lr.ph.i.i.i.i.i.i.i43.i.preheader730:            ; preds = %.lr.ph.i.i.i.i.i.i.i43.i.preheader, %middle.block687
  %.012.i.i.i.i.i.i.i44.i.ph = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i43.i.preheader ], [ %i.gj, %middle.block687 ]
  %.0911.i.i.i.i.i.i.i45.i.ph = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i43.i.preheader ], [ %i.gk, %middle.block687 ]
  br label %.lr.ph.i.i.i.i.i.i.i43.i

.lr.ph.i.i.i.i.i.i.i43.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i43.i.preheader730, %.lr.ph.i.i.i.i.i.i.i43.i
  %.012.i.i.i.i.i.i.i44.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i.i.i43.i ], [ %.012.i.i.i.i.i.i.i44.i.ph, %.lr.ph.i.i.i.i.i.i.i43.i.preheader730 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i45.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.i43.i ], [ %.0911.i.i.i.i.i.i.i45.i.ph, %.lr.ph.i.i.i.i.i.i.i43.i.preheader730 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.gp = load i64, ptr %.0911.i.i.i.i.i.i.i45.i, align 8, !alias.scope !485, !noalias !482
  store i64 %i.gp, ptr %.012.i.i.i.i.i.i.i44.i, align 8, !alias.scope !482, !noalias !485
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i45.i, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i44.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i46.i = icmp eq ptr %i.gq, %i.fk
  br i1 %.not.i.i.i.i.i.i.i46.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i47.i, label %.lr.ph.i.i.i.i.i.i.i43.i, !llvm.loop !488

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i47.i: ; preds = %.lr.ph.i.i.i.i.i.i.i43.i, %middle.block687, %.noexc52.i
  %.0.lcssa.i.i.i.i.i.i.i48.i = phi ptr [ %i.gb, %.noexc52.i ], [ %i.gj, %middle.block687 ], [ %i.gr, %.lr.ph.i.i.i.i.i.i.i43.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i48.i, i64 8 ; 2 uses
  %.not.i23.i.i.i49.i = icmp eq ptr %i.fq, null
  br i1 %.not.i23.i.i.i49.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i50.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i47.i
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i50.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i50.i: ; preds = %bb.aq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i47.i
  store ptr %i.gb, ptr %14, align 16, !tbaa !463, !alias.scope !453
  store ptr %i.gs, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gt, ptr %i.bw, align 16, !tbaa !462, !alias.scope !453
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit53.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit53.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i50.i, %bb.an
  %i.gu = phi ptr [ %i.gs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i50.i ], [ %i.fp, %bb.an ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.012.096.i, i64 8 ; 2 uses
  %.not24.i = icmp eq ptr %i.gv, %i.er
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.loopexit26.i:                                    ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i39.i
  %lpad.loopexit28.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bp

.loopexit.split-lp27.i:                           ; preds = %bb.ap
  %lpad.loopexit.split-lp29.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bp

._crit_edge101.i:                                 ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit69.i, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !453
  store i64 0, ptr %i.cg, align 8, !noalias !453
  store i64 %i.bx, ptr %6, align 8, !tbaa !473, !noalias !453
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_3E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_3E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.cf, align 8, !tbaa !218, !noalias !453
  %i.gw = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 136
  %i.gy = load ptr, ptr %i.gx, align 8
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(248) %i.cl, i8 noundef zeroext 26, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.av unwind label %bb.bg

.lr.ph100.i:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit69.i, %.lr.ph100.preheader.i
  %i.gz = phi ptr [ %i.ij, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit69.i ], [ %.pre109.i, %.lr.ph100.preheader.i ] ; 5 uses
  %.sroa.06.098.i = phi ptr [ %i.ik, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit69.i ], [ %i.es, %.lr.ph100.preheader.i ] ; 2 uses
  %i.ha = load ptr, ptr %.sroa.06.098.i, align 8, !tbaa !489 ; 2 uses
  %i.hb = load ptr, ptr %i.bw, align 16, !tbaa !462, !alias.scope !453
  %.not.i.i54.i = icmp eq ptr %i.gz, %i.hb
  br i1 %.not.i.i54.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph100.i
  %i.hc = ptrtoint ptr %i.ha to i64
  store i64 %i.hc, ptr %i.gz, align 8
  %i.hd = load ptr, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  store ptr %i.he, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit69.i

bb.as:                                            ; preds = %.lr.ph100.i
  %i.hf = load ptr, ptr %14, align 16, !tbaa !463, !alias.scope !453 ; 7 uses
  %i.hg = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64               ; 3 uses
  %i.hi = sub i64 %i.hg, %i.hh                    ; 3 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775800
  br i1 %i.hj, label %bb.at, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i55.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc67.i unwind label %.loopexit.split-lp.i

.noexc67.i:                                       ; preds = %bb.at
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i55.i: ; preds = %bb.as
  %i.hk = ashr exact i64 %i.hi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56.i = call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i.i56.i, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = call i64 @llvm.umin.i64(i64 %i.hl, i64 1152921504606846975)
  %i.ho = select i1 %i.hm, i64 1152921504606846975, i64 %i.hn ; 3 uses
  %.not.i.i.i.i57.i = icmp ne i64 %i.ho, 0
  call void @llvm.assume(i1 %.not.i.i.i.i57.i)
  %i.hp = shl nuw nsw i64 %i.ho, 3
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #46
          to label %.noexc68.i unwind label %.loopexit.i ; 8 uses

.noexc68.i:                                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i55.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hi
  %i.hs = ptrtoint ptr %i.ha to i64
  store i64 %i.hs, ptr %i.hr, align 8
  %.not10.i.i.i.i.i.i.i58.i = icmp eq ptr %i.hf, %i.gz
  br i1 %.not10.i.i.i.i.i.i.i58.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i63.i, label %.lr.ph.i.i.i.i.i.i.i59.i.preheader

.lr.ph.i.i.i.i.i.i.i59.i.preheader:               ; preds = %.noexc68.i
  %i.ht = ptrtoaddr ptr %i.hq to i64
  %44 = sub i64 %i.hg, %i.hh
  %45 = add i64 %44, -8                           ; 2 uses
  %i.hu = lshr i64 %45, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %45, 24
  %i.hw = sub i64 %i.ht, %i.hh
  %diff.check = icmp ult i64 %i.hw, 32
  %or.cond710 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond710, label %.lr.ph.i.i.i.i.i.i.i59.i.preheader729, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i59.i.preheader
  %n.vec = and i64 %i.hv, 4611686018427387900     ; 3 uses
  %i.hx = shl i64 %n.vec, 3                       ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hq, i64 %i.hx  ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hf, i64 %i.hx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ia = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hq, i64 %i.ia ; 2 uses
  %next.gep670 = getelementptr i8, ptr %i.hf, i64 %i.ia ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.ib = getelementptr i8, ptr %next.gep670, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep670, align 8, !alias.scope !495, !noalias !492
  %wide.load671 = load <2 x i64>, ptr %i.ib, align 8, !alias.scope !495, !noalias !492
  %i.ic = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !492, !noalias !495
  store <2 x i64> %wide.load671, ptr %i.ic, align 8, !alias.scope !492, !noalias !495
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i63.i, label %.lr.ph.i.i.i.i.i.i.i59.i.preheader729

.lr.ph.i.i.i.i.i.i.i59.i.preheader729:            ; preds = %.lr.ph.i.i.i.i.i.i.i59.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i60.i.ph = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i.i.i59.i.preheader ], [ %i.hy, %middle.block ]
  %.0911.i.i.i.i.i.i.i61.i.ph = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i.i59.i.preheader ], [ %i.hz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i59.i

.lr.ph.i.i.i.i.i.i.i59.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i59.i.preheader729, %.lr.ph.i.i.i.i.i.i.i59.i
  %.012.i.i.i.i.i.i.i60.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i59.i ], [ %.012.i.i.i.i.i.i.i60.i.ph, %.lr.ph.i.i.i.i.i.i.i59.i.preheader729 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i61.i = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i59.i ], [ %.0911.i.i.i.i.i.i.i61.i.ph, %.lr.ph.i.i.i.i.i.i.i59.i.preheader729 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.ie = load i64, ptr %.0911.i.i.i.i.i.i.i61.i, align 8, !alias.scope !495, !noalias !492
  store i64 %i.ie, ptr %.012.i.i.i.i.i.i.i60.i, align 8, !alias.scope !492, !noalias !495
  %i.if = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i61.i, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i60.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i62.i = icmp eq ptr %i.if, %i.gz
  br i1 %.not.i.i.i.i.i.i.i62.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i63.i, label %.lr.ph.i.i.i.i.i.i.i59.i, !llvm.loop !498

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i63.i: ; preds = %.lr.ph.i.i.i.i.i.i.i59.i, %middle.block, %.noexc68.i
  %.0.lcssa.i.i.i.i.i.i.i64.i = phi ptr [ %i.hq, %.noexc68.i ], [ %i.hy, %middle.block ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i59.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i64.i, i64 8 ; 2 uses
  %.not.i23.i.i.i65.i = icmp eq ptr %i.hf, null
  br i1 %.not.i23.i.i.i65.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i66.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i63.i
  call void @_ZdlPv(ptr noundef nonnull %i.hf) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i66.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i66.i: ; preds = %bb.au, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i63.i
  store ptr %i.hq, ptr %14, align 16, !tbaa !463, !alias.scope !453
  store ptr %i.ih, ptr %i.bv, align 8, !tbaa !459, !alias.scope !453
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.ho
  store ptr %i.ii, ptr %i.bw, align 16, !tbaa !462, !alias.scope !453
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit69.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE9push_backEOS3_.exit69.i: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i66.i, %bb.ar
  %i.ij = phi ptr [ %i.ih, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i66.i ], [ %i.he, %bb.ar ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.06.098.i, i64 8 ; 2 uses
  %.not25.i = icmp eq ptr %i.ik, %i.et
  br i1 %.not25.i, label %._crit_edge101.i, label %.lr.ph100.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i55.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bp

.loopexit.split-lp.i:                             ; preds = %bb.at
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bp

bb.av:                                            ; preds = %._crit_edge101.i
  %i.il = load ptr, ptr %i.cf, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i70.i = icmp eq ptr %i.il, null
  br i1 %.not.i70.i, label %_ZNSt14_Function_baseD2Ev.exit71.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.im = invoke noundef zeroext i1 %i.il(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit71.i unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit71.i:               ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !453
  store i64 0, ptr %i.ci, align 8, !noalias !453
  store i64 %i.bx, ptr %7, align 8, !tbaa !473, !noalias !453
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_4E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_4E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.ch, align 8, !tbaa !218, !noalias !453
  %i.ip = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 136
  %i.ir = load ptr, ptr %i.iq, align 8
  invoke void %i.ir(ptr noundef nonnull align 8 dereferenceable(248) %i.cl, i8 noundef zeroext 25, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ay unwind label %bb.bj

bb.ay:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit71.i
  %i.is = load ptr, ptr %i.ch, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.is, null
  br i1 %.not.i72.i, label %_ZNSt14_Function_baseD2Ev.exit73.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.it = invoke noundef zeroext i1 %i.is(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit73.i unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit73.i:               ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !453
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !453
  store i64 0, ptr %i.ck, align 8, !noalias !453
  store i64 %i.bx, ptr %8, align 8, !tbaa !473, !noalias !453
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_5E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.cj, align 8, !tbaa !218, !noalias !453
  %i.iw = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 136
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(248) %i.cl, i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bb unwind label %bb.bm

bb.bb:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit73.i
  %i.iz = load ptr, ptr %i.cj, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.iz, null
  br i1 %.not.i74.i, label %_ZNSt14_Function_baseD2Ev.exit75.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ja = invoke noundef zeroext i1 %i.iz(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit75.i unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.jb = landingpad { ptr, i32 }
          catch ptr null
  %i.jc = extractvalue { ptr, i32 } %i.jb, 0
  call void @__clang_call_terminate(ptr %i.jc) #45
  unreachable

_ZNSt14_Function_baseD2Ev.exit75.i:               ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !453
  %i.jd = load ptr, ptr %4, align 8, !tbaa !499, !noalias !453 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit75.i
  call void @_ZdlPv(ptr noundef nonnull %i.jd) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EED2Ev.exit.i: ; preds = %bb.be, %_ZNSt14_Function_baseD2Ev.exit75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !453
  %i.je = load ptr, ptr %3, align 8, !tbaa !463, !noalias !453 ; 2 uses
  %.not.i.i.i76.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i76.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.je) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EED2Ev.exit.i: ; preds = %bb.bf, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !453
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.021.0103.i, i64 8 ; 2 uses
  %.not.i165 = icmp eq ptr %i.jf, %.val156
  br i1 %.not.i165, label %_ZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEE.exit.loopexit, label %bb.o

bb.bg:                                            ; preds = %._crit_edge101.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %i.jh = load ptr, ptr %i.cf, align 8, !tbaa !447, !noalias !453 ; 2 uses
  %.not.i77.i = icmp eq ptr %i.jh, null
  br i1 %.not.i77.i, label %_ZNSt14_Function_baseD2Ev.exit78.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ji = invoke noundef zeroext i1 %i.jh(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit78.i unwind label %bb.bi ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.jj = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN6duckdb9make_uniqINS_12UnboundIndexEJNS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEENS_16IndexStorageInfoERNS_14TableIOManagerERNS_16AttachedDatabaseEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !890
  %i.am = urem i64 %i.al, %i.w
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.am
  store ptr %i.x, ptr %i.an, align 8, !tbaa !505
  br label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit

_ZN6duckdb16IndexStorageInfoC2EOS0_.exit:         ; preds = %bb.d, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.ao, align 8, !tbaa !892
  store i64 1, ptr %i.v, align 8, !tbaa !820
  store ptr null, ptr %i.ag, align 8, !tbaa !889
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !874
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !874
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !873
  store ptr %i.au, ptr %i.as, align 8, !tbaa !873
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !877
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !877
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !878
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !883
  invoke void @_ZN6duckdb12UnboundIndexC1ENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEENS_16IndexStorageInfoERNS_14TableIOManagerERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(336) %i.a, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(408) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !846
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #23
  %i.bd = load ptr, ptr %5, align 8, !tbaa !776   ; 3 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.f
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(320) %i.bd) #23, !inline_history !785
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  ret void

bb.g:                                             ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #23
  %i.bi = load ptr, ptr %5, align 8, !tbaa !776   ; 3 uses
  %.not.i6 = icmp eq ptr %i.bi, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7: ; preds = %bb.g
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !45
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(320) %i.bi) #23, !inline_history !785
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit8: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i7
  call void @_ZdlPv(ptr noundef nonnull %i.a) #44
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb14TableIOManager3GetERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(124) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_14TableIOManagerELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14TableIndexList8AddIndexENS_10unique_ptrINS_5IndexESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.1125", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.2656", align 8 ; 7 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #46
          to label %.noexc unwind label %bb.o     ; 4 uses

.noexc:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.c = load i64, ptr %1, align 8, !tbaa !851, !noalias !893
  store i64 %i.c, ptr %2, align 8, !tbaa !851, !noalias !893
  store ptr null, ptr %1, align 8, !tbaa !851, !noalias !893
  invoke void @_ZN6duckdb10IndexEntryC1ENS_10unique_ptrINS_5IndexESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.d, !noalias !893

bb.c:                                             ; preds = %.noexc
  store ptr %i.b, ptr %3, align 8, !tbaa !896, !alias.scope !893
  %i.d = load ptr, ptr %2, align 8, !tbaa !851, !noalias !893 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.d, null
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  br i1 %.not.i.i4, label %bb.e, label %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !45, !noalias !893
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !893
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.d) #23, !noalias !893, !inline_history !898
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !851, !noalias !893 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.j, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i4.i

_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i4.i: ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45, !noalias !893
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !893
  call void %i.m(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.j) #23, !noalias !893, !inline_history !898
  br label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i

_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i4.i, %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.b) #44, !noalias !893
  br label %.body

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !899  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !901
  %.not.i.i5 = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.e, ptr %i.p, align 8, !tbaa !896
  store ptr null, ptr %3, align 8, !tbaa !896
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !899
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !902  ; 10 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc6 unwind label %bb.p

.noexc6:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #46
          to label %.noexc7 unwind label %bb.p    ; 10 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i64 %i.e, ptr %i.af, align 8, !tbaa !896
  store ptr null, ptr %3, align 8, !tbaa !896
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc7
  %4 = sub i64 %i.u, %i.v
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ag = lshr i64 %5, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.u, -8
  %i.aj = sub i64 %i.ai, %i.v
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.al
  %scevgep19 = getelementptr i8, ptr %i.t, i64 %i.al
  %bound0 = icmp ult ptr %i.ae, %scevgep19
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.t, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ap ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.t, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.aq = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !896, !alias.scope !908, !noalias !903
  %wide.load21 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !896, !alias.scope !908, !noalias !903
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !896, !alias.scope !911, !noalias !908
  store <2 x i64> %wide.load21, ptr %i.ar, align 8, !tbaa !896, !alias.scope !911, !noalias !908
  %i.as = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !896, !alias.scope !908, !noalias !903
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !896, !alias.scope !908, !noalias !903
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !913

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.i.i.preheader23:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader23 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !896, !alias.scope !906, !noalias !903
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !896, !alias.scope !903, !noalias !906
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !896, !alias.scope !906, !noalias !903
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !914

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.noexc7 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.t) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !902
  store ptr %i.ax, ptr %i.o, align 8, !tbaa !899
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.ay, ptr %i.q, align 8, !tbaa !901
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10IndexEntryESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ba = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10IndexEntryESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_5IndexESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(104) %i.bc)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.bg, label %_ZNSt10unique_ptrIN6duckdb10IndexEntryESt14default_deleteIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !915
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !915
  br label %_ZNSt10unique_ptrIN6duckdb10IndexEntryESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.h, %bb.l, %bb.k, %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb10IndexEntryESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  br label %.body

_ZNSt10unique_ptrIN6duckdb10IndexEntryESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bm = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  ret void

.body:                                            ; preds = %bb.o, %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.p ], [ %i.bk, %bb.o ], [ %i.i, %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit5.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bn = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #23 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb12UnboundIndexESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !846    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb12UnboundIndexEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb12UnboundIndexEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb12UnboundIndexD2Ev(ptr noundef nonnull align 8 dereferenceable(336) %i.a) #23
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #44
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb12UnboundIndexEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CheckpointWriter9WriteTypeERNS_16TypeCatalogEntryERNS_10SerializerE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef nonnull align 8 dereferenceable(680) %2) unnamed_addr #0 align 2 {
_ZN6duckdb10Serializer13WritePropertyIPNS_16TypeCatalogEntryEEEvtPKcRKT_.exit:
  %i.a = load ptr, ptr %2, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(680) %2, i16 noundef zeroext 100, ptr noundef nonnull @.str.37), !inline_history !921
  %i.d = load ptr, ptr %2, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(680) %2, i1 noundef zeroext true), !inline_history !922
  %i.g = load ptr, ptr %2, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(680) %2), !inline_history !923
  tail call void @_ZNK6duckdb12CatalogEntry9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(344) %1, ptr noundef nonnull align 8 dereferenceable(680) %2)
  %i.j = load ptr, ptr %2, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(680) %2), !inline_history !923
  %i.m = load ptr, ptr %2, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(680) %2), !inline_history !922
  %i.p = load ptr, ptr %2, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(680) %2), !inline_history !921
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CheckpointReader8ReadTypeENS_18CatalogTransactionERNS_12DeserializerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.duckdb::CatalogTransaction") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(632) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.1085", align 8 ; 4 uses
  %4 = alloca %"class.duckdb::unique_ptr.1085", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.a = load ptr, ptr %2, align 8, !tbaa !45, !noalias !924
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !924
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %2, i16 noundef zeroext 100, ptr noundef nonnull @.str.37), !noalias !924, !inline_history !767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  store ptr null, ptr %4, align 8, !tbaa !771, !alias.scope !930
  %i.d = load ptr, ptr %2, align 8, !tbaa !45, !noalias !930
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !noalias !930
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(632) %2), !noalias !930, !inline_history !775
end_hunk_1
begin_hunk_2_@_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS_20TemporaryMemoryStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca i64, align 8                      ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 7 uses
  %8 = alloca %"class.duckdb::vector.1295", align 8 ; 17 uses
  %9 = alloca %"class.duckdb::vector.797", align 8 ; 17 uses
  %10 = alloca %"class.duckdb::vector.1301", align 8 ; 21 uses
  %11 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %12 = alloca %"class.duckdb::vector.797", align 8 ; 15 uses
  %13 = alloca %"class.duckdb::vector.797", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 -1, ptr %7, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0255.0311 = load ptr, ptr %i.p, align 8, !tbaa !506 ; 2 uses
  %.not266312 = icmp eq ptr %.sroa.0255.0311, null
  br i1 %.not266312, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1066 ; 2 uses
  %.not = icmp ult i64 %i.al, %i.x
  br i1 %.not, label %bb.y, label %bb.u

._crit_edge.thread:                               ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1066 ; 2 uses
  %.not408.not = icmp eq i64 %i.z, 0
  br i1 %.not408.not, label %bb.u, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i.thread

bb.b:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0255.0315 = phi ptr [ %.sroa.0255.0311, %.lr.ph ], [ %.sroa.0255.0, %bb.t ] ; 2 uses
  %.093314 = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.t ]
  %.094313 = phi i64 [ 0, %.lr.ph ], [ %.195, %bb.t ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0255.0315, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1053 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load atomic i64, ptr %i.ac seq_cst, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load atomic i64, ptr %i.ae seq_cst, align 8
  %i.ag = call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load atomic i64, ptr %i.ah seq_cst, align 8
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ai)
  %i.ak = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.aj, i64 1) ; 4 uses
  %i.al = add i64 %i.ak, %.093314                 ; 3 uses
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !1053 ; 2 uses
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %.094313)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %11, align 8, !tbaa !70
  store i64 %i.ao, ptr %7, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.g

.loopexit273:                                     ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit275 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp274:                            ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body

bb.f:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load atomic i64, ptr %i.aq seq_cst, align 8
  %.not153 = icmp ult i64 %i.ak, %i.ar
  br i1 %.not153, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !1150 ; 6 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !1153
  %.not.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !1053
  store ptr %i.au, ptr %i.as, align 8, !tbaa !1154
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.q, align 8, !tbaa !1150
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12emplace_backIJRKS0_IS2_EEEEvDpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %8, align 8, !tbaa !1156  ; 7 uses
  %i.ax = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.l, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.cont unwind label %.loopexit.split-lp274

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #46
          to label %.noexc157 unwind label %.loopexit273 ; 8 uses

.noexc157:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load ptr, ptr %i.aa, align 8, !tbaa !1053
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1154
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc157
  %i.bk = ptrtoaddr ptr %i.bh to i64
  %16 = sub i64 %i.ax, %i.ay
  %17 = add i64 %16, -8                           ; 2 uses
  %i.bl = lshr i64 %17, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %17, 24
  %i.bn = sub i64 %i.bk, %i.ay
  %diff.check = icmp ult i64 %i.bn, 32
  %or.cond477 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond477, label %.lr.ph.i.i.i.i.i.i.preheader492, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bh, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.aw, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.br ; 2 uses
  %next.gep474 = getelementptr i8, ptr %i.aw, i64 %i.br ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.bs = getelementptr i8, ptr %next.gep474, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep474, align 8, !alias.scope !1160, !noalias !1157
  %wide.load475 = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !1160, !noalias !1157
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1157, !noalias !1160
  store <2 x i64> %wide.load475, ptr %i.bt, align 8, !alias.scope !1157, !noalias !1160
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader492

.lr.ph.i.i.i.i.i.i.preheader492:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader492, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader492 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader492 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !1160, !noalias !1157
  store i64 %i.bv, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !1157, !noalias !1160
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.as
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1163

_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc157
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bh, %.noexc157 ], [ %i.bp, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE17_M_realloc_insertIJRKS0_IS2_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE17_M_realloc_insertIJRKS0_IS2_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE17_M_realloc_insertIJRKS0_IS2_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.bh, ptr %8, align 8, !tbaa !1156
  store ptr %i.by, ptr %i.q, align 8, !tbaa !1150
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bz, ptr %i.r, align 8, !tbaa !1153
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12emplace_backIJRKS0_IS2_EEEEvDpOT_.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12emplace_backIJRKS0_IS2_EEEEvDpOT_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE17_M_realloc_insertIJRKS0_IS2_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.h
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !1164 ; 4 uses
  %i.cb = load ptr, ptr %i.t, align 8, !tbaa !1165
  %.not.i158 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i158, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12emplace_backIJRKS0_IS2_EEEEvDpOT_.exit
  store i64 %i.ak, ptr %i.ca, align 8, !tbaa !70
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.cc, ptr %i.s, align 8, !tbaa !1164
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.l:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EE12emplace_backIJRKS0_IS2_EEEEvDpOT_.exit
  %i.cd = load ptr, ptr %9, align 8, !tbaa !526   ; 4 uses
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 5 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775800
  br i1 %i.ch, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ci = ashr exact i64 %i.cg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i159 = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cj = add nsw i64 %.sroa.speculated.i.i.i159, %i.ci ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  %i.cl = call i64 @llvm.umin.i64(i64 %i.cj, i64 1152921504606846975)
  %i.cm = select i1 %i.ck, i64 1152921504606846975, i64 %i.cl ; 3 uses
  %.not.i.i.i160 = icmp ne i64 %i.cm, 0
  call void @llvm.assume(i1 %.not.i.i.i160)
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #46
          to label %.noexc162 unwind label %.loopexit273 ; 4 uses

.noexc162:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cg ; 2 uses
  store i64 %i.ak, ptr %i.cp, align 8, !tbaa !70
  %i.cq = icmp sgt i64 %i.cg, 0
  br i1 %i.cq, label %bb.m, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc162
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc162
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cd) #44
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.co, ptr %9, align 8, !tbaa !526
  store ptr %i.cr, ptr %i.s, align 8, !tbaa !1164
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cs, ptr %i.t, align 8, !tbaa !1165
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k
  %i.ct = load ptr, ptr %i.u, align 8, !tbaa !1166 ; 4 uses
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !1169
  %.not.i.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  store double +inf, ptr %i.ct, align 8, !tbaa !1170
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cv, ptr %i.u, align 8, !tbaa !1166
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.cw = load ptr, ptr %10, align 8, !tbaa !1171 ; 4 uses
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 5 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.q, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc163 unwind label %.loopexit.split-lp278

.noexc163:                                        ; preds = %bb.q
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.db = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #46
          to label %.noexc164 unwind label %.loopexit277 ; 4 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cz ; 2 uses
  store double +inf, ptr %i.di, align 8, !tbaa !1170
  %i.dj = icmp sgt i64 %i.cz, 0
  br i1 %i.dj, label %bb.r, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %.noexc164
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr align 8 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %.noexc164
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #44
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dh, ptr %10, align 8, !tbaa !1171
  store ptr %i.dk, ptr %i.u, align 8, !tbaa !1166
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.dl, ptr %i.v, align 8, !tbaa !1169
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.o
  %i.dm = add i64 %.094313, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
end_hunk_2
begin_hunk_3_@_ZNK6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEixEm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZN6duckdb15ConflictManagerC1ENS_19VerifyExistenceTypeEmNS_12optional_ptrINS_12ConflictInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(328), i8 noundef zeroext, i64 noundef, ptr) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14TableIndexList16VerifyForeignKeyENS_12optional_ptrINS_17LocalTableStorageELb1EEERKNS_6vectorINS_13PhysicalIndexELb1ESaIS5_EEERNS_9DataChunkERNS_15ConflictManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(328) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr.1693", align 8 ; 3 uses
  %6 = alloca %"class.duckdb::optional_ptr.1587", align 8 ; 16 uses
  %7 = alloca %"class.duckdb::IndexAppendInfo", align 8 ; 10 uses
  %8 = alloca %"class.duckdb::optional_ptr.1726", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::IndexAppendInfo", align 8 ; 6 uses
  store ptr %1, ptr %5, align 8
  %i.a = load i8, ptr %4, align 8, !tbaa !1563
  %i.b = icmp ne i8 %i.a, 1
  %i.c = zext i1 %i.b to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.d = tail call ptr @_ZN6duckdb14TableIndexList19FindForeignKeyIndexERKNS_6vectorINS_13PhysicalIndexELb1ESaIS2_EEENS_14ForeignKeyTypeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext %i.c)
  store ptr %i.d, ptr %6, align 8
  call void @_ZNK6duckdb12optional_ptrINS_10IndexEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.e = load ptr, ptr %6, align 8, !tbaa !1306
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_5IndexESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 4 uses
  call void @_ZNK6duckdb12optional_ptrINS_10IndexEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.h = load ptr, ptr %6, align 8, !tbaa !1306
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i8 0, ptr %7, align 8, !tbaa !1564
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNK6duckdb12optional_ptrINS_17LocalTableStorageELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %5, align 8, !tbaa !1411
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.r = invoke ptr @_ZN6duckdb14TableIndexList4FindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %8, align 8
  %.not56 = icmp eq ptr %i.r, null
  br i1 %.not56, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb12optional_ptrINS_10BoundIndexELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %bb.j

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.s = load ptr, ptr %8, align 8, !tbaa !1567
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #46
          to label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i unwind label %bb.j ; 4 uses

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = ptrtoint ptr %i.s to i64
  store i64 %i.w, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !1569
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1570
  store ptr %i.x, ptr %i.u, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.h:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f
  %i.ab = phi ptr [ null, %bb.f ], [ %i.t, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.ac = phi ptr [ null, %bb.f ], [ %i.x, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.z, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.af

bb.l:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ad = phi ptr [ %i.ab, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 7 uses
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit ], [ null, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10IndexEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %6, align 8, !tbaa !1306
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !714
  %.not57 = icmp eq ptr %i.ah, null
  br i1 %.not57, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit39, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZNK6duckdb12optional_ptrINS_10IndexEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %6, align 8, !tbaa !1306
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = invoke noundef nonnull align 8 dereferenceable(392) ptr @_ZNK6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.an = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.q, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc37 unwind label %bb.s

.noexc37:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25: ; preds = %bb.p
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i26 = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i26, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i27 = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i27)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #46
          to label %.noexc38 unwind label %bb.s   ; 8 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = ptrtoint ptr %i.ak to i64
  store i64 %i.az, ptr %i.ay, align 8
  %.not10.i.i.i.i.i.i.i28 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not10.i.i.i.i.i.i.i28, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i.i.i29.preheader:                 ; preds = %.noexc38
  %i.ba = ptrtoaddr ptr %i.ax to i64
  %10 = sub i64 %i.an, %i.ao
  %11 = add i64 %10, -8                           ; 2 uses
  %i.bb = lshr i64 %11, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 56
  %i.bd = sub i64 %i.ba, %i.ao
  %diff.check = icmp ult i64 %i.bd, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i29.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i29.preheader
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ax, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ad, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bh ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.ad, i64 %i.bh ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.bi = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep68, align 8, !alias.scope !1575, !noalias !1572
  %wide.load69 = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !1575, !noalias !1572
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1572, !noalias !1575
  store <2 x i64> %wide.load69, ptr %i.bj, align 8, !alias.scope !1572, !noalias !1575
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1577

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i29.preheader71

.lr.ph.i.i.i.i.i.i.i29.preheader71:               ; preds = %.lr.ph.i.i.i.i.i.i.i29.preheader, %middle.block
  %.012.i.i.i.i.i.i.i30.ph = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i29.preheader ], [ %i.bf, %middle.block ]
  %.0911.i.i.i.i.i.i.i31.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i29.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i.i29:                           ; preds = %.lr.ph.i.i.i.i.i.i.i29.preheader71, %.lr.ph.i.i.i.i.i.i.i29
  %.012.i.i.i.i.i.i.i30 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i29 ], [ %.012.i.i.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i.i.i29.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i31 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i29 ], [ %.0911.i.i.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i.i.i29.preheader71 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.bl = load i64, ptr %.0911.i.i.i.i.i.i.i31, align 8, !alias.scope !1575, !noalias !1572
  store i64 %i.bl, ptr %.012.i.i.i.i.i.i.i30, align 8, !alias.scope !1572, !noalias !1575
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i31, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i32 = icmp eq ptr %i.bm, %i.ae
  br i1 %.not.i.i.i.i.i.i.i32, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33, label %.lr.ph.i.i.i.i.i.i.i29, !llvm.loop !1578

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i.i.i29, %middle.block, %.noexc38
  %.0.lcssa.i.i.i.i.i.i.i34 = phi ptr [ %i.ax, %.noexc38 ], [ %i.bf, %middle.block ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i29 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i34, i64 8
  %.not.i23.i.i.i35 = icmp eq ptr %i.ad, null
  br i1 %.not.i23.i.i.i35, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36: ; preds = %bb.r, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33
  store ptr %i.ax, ptr %i.k, align 8, !tbaa !1569
  store ptr %i.bo, ptr %i.al, align 8, !tbaa !1570
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bp, ptr %i.am, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit39

bb.s:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25, %bb.q, %bb.n, %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit39: ; preds = %bb.m, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(392) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(328) %4)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit39
  invoke void @_ZNK6duckdb12optional_ptrINS_10IndexEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %6, align 8, !tbaa !1306
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !714
  %.not58 = icmp eq ptr %i.bw, null
  br i1 %.not58, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i8 0, ptr %9, align 8, !tbaa !1564
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrINS_10IndexEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.by = load ptr, ptr %6, align 8, !tbaa !1306
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ca = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %bb.x unwind label %bb.ab      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(392) %i.ca, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(328) %4)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i44, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit

_ZN6duckdb15IndexAppendInfoD2Ev.exit:             ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ad

bb.aa:                                            ; preds = %bb.t, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit39
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %bb.v, %bb.x, %bb.w
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %i.bx, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i45, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit46, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit46

_ZN6duckdb15IndexAppendInfoD2Ev.exit46:           ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.af

bb.ad:                                            ; preds = %_ZN6duckdb15IndexAppendInfoD2Ev.exit, %bb.u
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i47, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit48, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit48

_ZN6duckdb15IndexAppendInfoD2Ev.exit48:           ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.af:                                            ; preds = %bb.aa, %_ZN6duckdb15IndexAppendInfoD2Ev.exit46, %bb.s, %bb.k, %bb.h
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.bq, %bb.s ], [ %i.y, %bb.h ], [ %i.cg, %_ZN6duckdb15IndexAppendInfoD2Ev.exit46 ], [ %i.cf, %bb.aa ]
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i49, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit50, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %i.ck) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit50

_ZN6duckdb15IndexAppendInfoD2Ev.exit50:           ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.cl = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb12LocalStorage4FindERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @_ZNK6duckdb17LocalTableManager10GetStorageERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(124) %1)
  %i.c = icmp ne ptr %i.b, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb12LocalStorage10GetIndexesERNS_13ClientContextERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(124) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef nonnull align 8 dereferenceable(304) ptr @_ZN6duckdb17LocalTableManager18GetOrCreateStorageERNS_13ClientContextERNS_9DataTableE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(124) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  ret ptr %i.c
}

declare void @_ZN6duckdb19ConstraintExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare i64 @_ZN6duckdb15ConflictManager20GetFirstInvalidIndexEmb(ptr noundef nonnull align 8 dereferenceable(328), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1
end_hunk_3
begin_hunk_4_@_ZN6duckdb9DataTable19VerifyUniqueIndexesERNS_14TableIndexListENS_12optional_ptrINS_17LocalTableStorageELb1EEERNS_9DataChunkENS3_INS_15ConflictManagerELb1EEE:bb.a
  %lpad.loopexit279 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp278:                            ; preds = %bb.c
  %lpad.loopexit.split-lp280 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.h:                                             ; preds = %.lr.ph384, %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit
  invoke void @_ZNK6duckdb12optional_ptrIKNS_6vectorINS_10unique_ptrINS_10IndexEntryESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.h
  %i.s = load ptr, ptr %17, align 8, !tbaa !1395  ; 2 uses
  %i.t = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc107 unwind label %.loopexit ; 3 uses

.noexc107:                                        ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !899
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !902  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3                  ; 2 uses
  %.not.i.i.i106 = icmp ult i64 %i.t, %i.aa
  br i1 %.not.i.i.i106, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i, label %bb.i

bb.i:                                             ; preds = %.noexc107
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.360, i64 noundef %i.t, i64 noundef %i.aa) #47
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i: ; preds = %.noexc107
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %i.ac = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10IndexEntryESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNK6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratordeEv.exit unwind label %.loopexit ; 3 uses

_ZNK6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratordeEv.exit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_5IndexESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.j unwind label %bb.n       ; 8 uses

bb.j:                                             ; preds = %_ZNK6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratordeEv.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(104) %i.ae)
          to label %bb.k unwind label %bb.n, !inline_history !1456

bb.k:                                             ; preds = %bb.j
  %i.aj = add i8 %i.ai, -1
  %i.ak = icmp ult i8 %i.aj, 2
  br i1 %i.ak, label %bb.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.an(ptr noundef nonnull align 8 dereferenceable(104) %i.ae)
          to label %bb.m unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !185
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 2 uses
  %i.at = load i16, ptr %i.as, align 1
  %i.au = xor i16 %i.at, 21057
  %i.av = getelementptr i8, ptr %i.as, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i16
  %i.ay = xor i16 %i.ax, 84
  %i.az = or i16 %i.au, %i.ay
  %i.ba = icmp ne i16 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not258 = icmp eq i32 %i.bb, 0
  br i1 %.not258, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.loopexit:                                        ; preds = %bb.h, %.noexc, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10IndexEntryESt14default_deleteIS2_ELb1EEESaIS5_EE2atEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.n:                                             ; preds = %bb.j, %bb.l, %_ZNK6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratordeEv.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.be = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.be) #47
          to label %.noexc111 unwind label %bb.z

.noexc111:                                        ; preds = %bb.o
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread252
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store i8 0, ptr %18, align 8, !tbaa !1564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %14, align 8, !tbaa !1411
  %.not259 = icmp eq ptr %i.bf, null
  br i1 %.not259, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNK6duckdb12optional_ptrINS_17LocalTableStorageELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %14, align 8, !tbaa !1411
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(392) %i.ae)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.bm = invoke ptr @_ZN6duckdb14TableIndexList4FindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %bb.s unwind label %bb.ab      ; 2 uses

bb.s:                                             ; preds = %bb.r
  store ptr %i.bm, ptr %19, align 8
  %.not260 = icmp eq ptr %i.bm, null
  br i1 %.not260, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZNK6duckdb12optional_ptrINS_10BoundIndexELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.u unwind label %.loopexit267

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %19, align 8, !tbaa !1567 ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !1570 ; 5 uses
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !1571
  %.not.i.i114 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i.i114, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = ptrtoint ptr %i.bn to i64
  store i64 %i.bq, ptr %i.bo, align 8
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !1570
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.k, align 8, !tbaa !1570
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.w:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !1569 ; 7 uses
  %i.bu = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.x, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc115 unwind label %.loopexit.split-lp268

.noexc115:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #46
          to label %.noexc116 unwind label %.loopexit267 ; 8 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = ptrtoint ptr %i.bn to i64
  store i64 %i.cg, ptr %i.cf, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bo
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc116
  %i.ch = ptrtoaddr ptr %i.ce to i64
  %27 = sub i64 %i.bu, %i.bv
  %28 = add i64 %27, -8                           ; 2 uses
  %i.ci = lshr i64 %28, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check639 = icmp ult i64 %28, 24
  %i.ck = sub i64 %i.ch, %i.bv
  %diff.check637 = icmp ult i64 %i.ck, 32
  %or.cond = or i1 %min.iters.check639, %diff.check637
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader656, label %vector.ph640

vector.ph640:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec642 = and i64 %i.cj, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec642, 3                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bt, i64 %i.cl
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph640
  %index644 = phi i64 [ 0, %vector.ph640 ], [ %index.next649, %vector.body643 ] ; 2 uses
  %i.co = shl i64 %index644, 3                    ; 2 uses
  %next.gep645 = getelementptr i8, ptr %i.ce, i64 %i.co ; 2 uses
  %next.gep646 = getelementptr i8, ptr %i.bt, i64 %i.co ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  %i.cp = getelementptr i8, ptr %next.gep646, i64 16
  %wide.load647 = load <2 x i64>, ptr %next.gep646, align 8, !alias.scope !1587, !noalias !1584
  %wide.load648 = load <2 x i64>, ptr %i.cp, align 8, !alias.scope !1587, !noalias !1584
  %i.cq = getelementptr i8, ptr %next.gep645, i64 16
  store <2 x i64> %wide.load647, ptr %next.gep645, align 8, !alias.scope !1584, !noalias !1587
  store <2 x i64> %wide.load648, ptr %i.cq, align 8, !alias.scope !1584, !noalias !1587
  %index.next649 = add nuw i64 %index644, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next649, %n.vec642
  br i1 %i.cr, label %middle.block650, label %vector.body643, !llvm.loop !1589

middle.block650:                                  ; preds = %vector.body643
  %cmp.n651 = icmp eq i64 %i.cj, %n.vec642
  br i1 %cmp.n651, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader656

.lr.ph.i.i.i.i.i.i.i.preheader656:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block650
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cm, %middle.block650 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block650 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader656, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader656 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader656 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  call void @llvm.experimental.noalias.scope.decl(metadata !1587)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1587, !noalias !1584
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1584, !noalias !1587
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.bo
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1590

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block650, %.noexc116
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc116 ], [ %i.cm, %middle.block650 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ce, ptr %i.j, align 8, !tbaa !1569
  store ptr %i.cv, ptr %i.k, align 8, !tbaa !1570
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cw, ptr %i.l, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.z:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aa:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit132
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ab:                                            ; preds = %bb.p, %bb.r, %bb.q
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit267:                                     ; preds = %bb.t, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit269 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp268:                            ; preds = %bb.x
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.v, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.ad

bb.ac:                                            ; preds = %.loopexit267, %.loopexit.split-lp268, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.ab ], [ %lpad.loopexit269, %.loopexit267 ], [ %lpad.loopexit.split-lp270, %.loopexit.split-lp268 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.ap

bb.ad:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !714
  %.not261 = icmp eq ptr %i.db, null
  br i1 %.not261, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit132, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dc = invoke noundef nonnull align 8 dereferenceable(392) ptr @_ZNK6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.af unwind label %.loopexit272 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !1570 ; 5 uses
  %i.de = load ptr, ptr %i.l, align 8, !tbaa !1571
  %.not.i.i117 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i117, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = ptrtoint ptr %i.dc to i64
  store i64 %i.df, ptr %i.dd, align 8
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !1570
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dh, ptr %i.k, align 8, !tbaa !1570
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit132

bb.ah:                                            ; preds = %bb.af
  %i.di = load ptr, ptr %i.j, align 8, !tbaa !1569 ; 7 uses
  %i.dj = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.ai, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i118

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc130 unwind label %.loopexit.split-lp273

.noexc130:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i118: ; preds = %bb.ah
  %i.dn = ashr exact i64 %i.dl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i119 = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i.i119, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975)
  %i.dr = select i1 %i.dp, i64 1152921504606846975, i64 %i.dq ; 3 uses
  %.not.i.i.i.i120 = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i120)
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #46
          to label %.noexc131 unwind label %.loopexit272 ; 8 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i118
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl
  %i.dv = ptrtoint ptr %i.dc to i64
  store i64 %i.dv, ptr %i.du, align 8
  %.not10.i.i.i.i.i.i.i121 = icmp eq ptr %i.di, %i.dd
  br i1 %.not10.i.i.i.i.i.i.i121, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122.preheader

.lr.ph.i.i.i.i.i.i.i122.preheader:                ; preds = %.noexc131
  %i.dw = ptrtoaddr ptr %i.dt to i64
  %29 = sub i64 %i.dj, %i.dk
  %30 = add i64 %29, -8                           ; 2 uses
  %i.dx = lshr i64 %30, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %30, 24
  %i.dz = sub i64 %i.dw, %i.dk
  %diff.check = icmp ult i64 %i.dz, 32
  %or.cond654 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond654, label %.lr.ph.i.i.i.i.i.i.i122.preheader655, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i122.preheader
  %n.vec = and i64 %i.dy, 4611686018427387900     ; 3 uses
  %i.ea = shl i64 %n.vec, 3                       ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dt, i64 %i.ea  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.di, i64 %i.ea
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dt, i64 %i.ed ; 2 uses
  %next.gep633 = getelementptr i8, ptr %i.di, i64 %i.ed ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.ee = getelementptr i8, ptr %next.gep633, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep633, align 8, !alias.scope !1594, !noalias !1591
  %wide.load634 = load <2 x i64>, ptr %i.ee, align 8, !alias.scope !1594, !noalias !1591
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1591, !noalias !1594
  store <2 x i64> %wide.load634, ptr %i.ef, align 8, !alias.scope !1591, !noalias !1594
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !1596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122.preheader655

.lr.ph.i.i.i.i.i.i.i122.preheader655:             ; preds = %.lr.ph.i.i.i.i.i.i.i122.preheader, %middle.block
  %.012.i.i.i.i.i.i.i123.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i122.preheader ], [ %i.eb, %middle.block ]
  %.0911.i.i.i.i.i.i.i124.ph = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i122.preheader ], [ %i.ec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i122

.lr.ph.i.i.i.i.i.i.i122:                          ; preds = %.lr.ph.i.i.i.i.i.i.i122.preheader655, %.lr.ph.i.i.i.i.i.i.i122
  %.012.i.i.i.i.i.i.i123 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i122 ], [ %.012.i.i.i.i.i.i.i123.ph, %.lr.ph.i.i.i.i.i.i.i122.preheader655 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i124 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i122 ], [ %.0911.i.i.i.i.i.i.i124.ph, %.lr.ph.i.i.i.i.i.i.i122.preheader655 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.eh = load i64, ptr %.0911.i.i.i.i.i.i.i124, align 8, !alias.scope !1594, !noalias !1591
  store i64 %i.eh, ptr %.012.i.i.i.i.i.i.i123, align 8, !alias.scope !1591, !noalias !1594
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i124, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i123, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i125 = icmp eq ptr %i.ei, %i.dd
  br i1 %.not.i.i.i.i.i.i.i125, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122, !llvm.loop !1597

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i126: ; preds = %.lr.ph.i.i.i.i.i.i.i122, %middle.block, %.noexc131
  %.0.lcssa.i.i.i.i.i.i.i127 = phi ptr [ %i.dt, %.noexc131 ], [ %i.eb, %middle.block ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i122 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i127, i64 8
  %.not.i23.i.i.i128 = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i.i128, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i129, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i126
  call void @_ZdlPv(ptr noundef nonnull %i.di) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i129

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i129: ; preds = %bb.aj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i126
  store ptr %i.dt, ptr %i.j, align 8, !tbaa !1569
  store ptr %i.ek, ptr %i.k, align 8, !tbaa !1570
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.el, ptr %i.l, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit132

.loopexit272:                                     ; preds = %bb.ae, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i118
  %lpad.loopexit274 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp273:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp275 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit132: ; preds = %bb.ag, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i129, %bb.ad
  %i.em = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(433) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr null)
          to label %bb.ak unwind label %bb.aa

bb.ak:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit132
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i133 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i133, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef nonnull %i.ep) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit

_ZN6duckdb15IndexAppendInfoD2Ev.exit:             ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.eq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #23 ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.m, %bb.k, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN6duckdb15IndexAppendInfoD2Ev.exit
  %i.er = load ptr, ptr %17, align 8, !tbaa !1395
  %.not3.i = icmp eq ptr %i.er, null
  br i1 %.not3.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge, label %bb.am

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pre458 = load i64, ptr %i.d, align 8, !tbaa !289
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit

bb.am:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.es = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc134 unwind label %.loopexit277

.noexc134:                                        ; preds = %bb.am
  %i.et = add i64 %i.es, 1                        ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrIKNS_6vectorINS_10unique_ptrINS_10IndexEntryESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc135 unwind label %.loopexit277

.noexc135:                                        ; preds = %.noexc134
  %i.eu = load ptr, ptr %17, align 8, !tbaa !1395 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !899
  %i.ex = load ptr, ptr %i.eu, align 8, !tbaa !902
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ashr exact i64 %i.fa, 3
  %.not.i = icmp ult i64 %i.et, %i.fb
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc135
  store i64 -1, ptr %i.d, align 8, !tbaa !70
  store i64 0, ptr %17, align 8, !tbaa !1397
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit

bb.ao:                                            ; preds = %.noexc135
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.et)
          to label %.noexc136 unwind label %.loopexit277

.noexc136:                                        ; preds = %bb.ao
  %i.fc = load i64, ptr %11, align 8, !tbaa !70   ; 2 uses
  store i64 %i.fc, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.pre459 = load ptr, ptr %17, align 8
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit

_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge, %bb.an, %.noexc136
  %i.fd = phi ptr [ null, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge ], [ null, %bb.an ], [ %.pre459, %.noexc136 ]
  %i.fe = phi i64 [ %.pre458, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge ], [ -1, %bb.an ], [ %i.fc, %.noexc136 ]
  %i.ff = icmp ne i64 %i.fe, %.fca.1.load.i104
  %i.fg = icmp ne ptr %i.fd, %.fca.0.load.i101
  %i.fh = select i1 %i.ff, i1 true, i1 %i.fg
  br i1 %i.fh, label %bb.h, label %._crit_edge385

bb.ap:                                            ; preds = %.loopexit272, %.loopexit.split-lp273, %bb.ac, %bb.aa
  %.pn74 = phi { ptr, i32 } [ %i.cy, %bb.aa ], [ %.pn, %bb.ac ], [ %lpad.loopexit274, %.loopexit272 ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp273 ]
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i137 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i137, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit138, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit138

_ZN6duckdb15IndexAppendInfoD2Ev.exit138:          ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.fj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #23 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit277, %.loopexit.split-lp278, %bb.n, %_ZN6duckdb15IndexAppendInfoD2Ev.exit138, %bb.z, %bb.g
  %.pn80.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn74, %_ZN6duckdb15IndexAppendInfoD2Ev.exit138 ], [ %lpad.loopexit.split-lp280, %.loopexit.split-lp278 ], [ %i.bc, %bb.n ], [ %i.cx, %bb.z ], [ %lpad.loopexit279, %.loopexit277 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.fk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !1061, !range !249, !noundef !67
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.as, label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit140

bb.as:                                            ; preds = %bb.ar
  %i.fn = load ptr, ptr %16, align 8, !tbaa !1059 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i139, label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit140, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fn) #23 ; 0 uses
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit140

_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit140: ; preds = %bb.ar, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ds

bb.au:                                            ; preds = %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_15ConflictManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  %i.fp = load ptr, ptr %15, align 8, !tbaa !1598
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_12ConflictInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb14TableIndexList4FindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %1, align 8, !tbaa !82
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !82
  %bcmp.i = tail call i32 @bcmp(ptr %i.s, ptr %i.r, i64 %i.n)
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
  br i1 %i.x, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.132, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.j unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ab) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn27 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.y) #23
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %.pn27, %bb.h ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn26

.critedge:                                        ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.d
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.sroa.022.3 = phi ptr [ %i.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ null, %bb.a ], [ null, %.critedge ]
  ret ptr %.sroa.022.3

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(392) ptr @_ZNK6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !714    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.237, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZNK6duckdb12ConflictInfo21ConflictTargetMatchesERNS_5IndexE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15ConflictManager8AddIndexERNS_10BoundIndexENS_12optional_ptrIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(392) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode.3827", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1570 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1571
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !1570
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.b, align 8, !tbaa !1570
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1569 ; 7 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #46 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = ptrtoaddr ptr %i.t to i64
  %4 = sub i64 %i.j, %i.k
  %5 = add i64 %4, -8                             ; 2 uses
  %i.x = lshr i64 %5, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  %i.z = sub i64 %i.w, %i.k
  %diff.check = icmp ult i64 %i.z, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.ae = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !alias.scope !1611, !noalias !1608
  %wide.load18 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !1611, !noalias !1608
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1608, !noalias !1611
  store <2 x i64> %wide.load18, ptr %i.af, align 8, !alias.scope !1608, !noalias !1611
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1613

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader40

.lr.ph.i.i.i.i.i.i.i.preheader40:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader40 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader40 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1611, !noalias !1608
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1608, !noalias !1611
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1614

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1569
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !1570
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.al, ptr %i.d, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1615 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1616
  %.not.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit
  %i.ar = ptrtoint ptr %2 to i64
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !714
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.an, align 8, !tbaa !1615
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !1583 ; 7 uses
  %i.au = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.h, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #46 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %i.bg = ptrtoint ptr %2 to i64
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !714
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = ptrtoaddr ptr %i.be to i64
  %6 = sub i64 %i.au, %i.av
  %7 = add i64 %6, -8                             ; 2 uses
  %i.bi = lshr i64 %7, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %7, 56
  %i.bk = sub i64 %i.bh, %i.av
  %diff.check21 = icmp ult i64 %i.bk, 32
  %or.cond38 = or i1 %min.iters.check23, %diff.check21
  br i1 %or.cond38, label %.lr.ph.i.i.i.i.i.i.preheader39, label %vector.ph24

vector.ph24:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec26 = and i64 %i.bj, 4611686018427387900   ; 3 uses
  %i.bl = shl i64 %n.vec26, 3                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.at, i64 %i.bl
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph24
  %index28 = phi i64 [ 0, %vector.ph24 ], [ %index.next33, %vector.body27 ] ; 2 uses
  %i.bo = shl i64 %index28, 3                     ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.be, i64 %i.bo ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.at, i64 %i.bo ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.bp = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load31 = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !714, !alias.scope !1620, !noalias !1617
  %wide.load32 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !714, !alias.scope !1620, !noalias !1617
  %i.bq = getelementptr i8, ptr %next.gep29, i64 16
  store <2 x i64> %wide.load31, ptr %next.gep29, align 8, !tbaa !714, !alias.scope !1617, !noalias !1620
  store <2 x i64> %wide.load32, ptr %i.bq, align 8, !tbaa !714, !alias.scope !1617, !noalias !1620
  %index.next33 = add nuw i64 %index28, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next33, %n.vec26
  br i1 %i.br, label %middle.block34, label %vector.body27, !llvm.loop !1622

middle.block34:                                   ; preds = %vector.body27
  %cmp.n35 = icmp eq i64 %i.bj, %n.vec26
  br i1 %cmp.n35, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.preheader39:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block34
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block34 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block34 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !714, !alias.scope !1620, !noalias !1617
  store i64 %i.bs, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !714, !alias.scope !1617, !noalias !1620
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1623

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block34, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.be, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bm, %middle.block34 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #44
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.be, ptr %i.am, align 8, !tbaa !1583
  store ptr %i.bv, ptr %i.an, align 8, !tbaa !1615
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bw, ptr %i.ap, align 8, !tbaa !1616
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10BoundIndexELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.bx, ptr %3, align 8, !tbaa !1624
  %i.bz = call { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SK_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_12optional_ptrINS_10BoundIndexELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1615
  %i.e = load ptr, ptr %0, align 8, !tbaa !1583   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !70
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_12optional_ptrINS_10BoundIndexELb1EEELb1ESaIS3_EE3getILb1EEERKS3_m.exit, label %bb.b, !prof !1037

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_12optional_ptrINS_10BoundIndexELb1EEELb1ESaIS3_EE3getILb1EEERKS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15IndexAppendInfoC2ENS_15IndexAppendModeENS_12optional_ptrINS_10BoundIndexELb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %1, ptr %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.1726", align 8 ; 3 uses
  store ptr %2, ptr %3, align 8
  store i8 %1, ptr %0, align 8, !tbaa !1564
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_10BoundIndexELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %3, align 8, !tbaa !1567   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1570 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1571
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.b to i64
  store i64 %i.g, ptr %i.d, align 8
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !1570
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.c, align 8, !tbaa !1570
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !1569 ; 7 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #46
          to label %.noexc3 unwind label %bb.h    ; 8 uses

.noexc3:                                          ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = ptrtoint ptr %i.b to i64
  store i64 %i.w, ptr %i.v, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc3
  %i.x = ptrtoaddr ptr %i.u to i64
  %4 = sub i64 %i.k, %i.l
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  %i.aa = sub i64 %i.x, %i.l
  %diff.check = icmp ult i64 %i.aa, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.j, i64 %i.ae ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.af = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !alias.scope !1629, !noalias !1626
  %wide.load9 = load <2 x i64>, ptr %i.af, align 8, !alias.scope !1629, !noalias !1626
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1626, !noalias !1629
  store <2 x i64> %wide.load9, ptr %i.ag, align 8, !alias.scope !1626, !noalias !1629
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1631

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.preheader11:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1629, !noalias !1626
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1626, !noalias !1629
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1632

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc3
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc3 ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.j) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !1569
  store ptr %i.al, ptr %i.c, align 8, !tbaa !1570
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.am, ptr %i.e, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.h:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.an

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.d, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_10BoundIndexEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1570
  %i.e = load ptr, ptr %0, align 8, !tbaa !1569   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !70
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorISt17reference_wrapperINS_10BoundIndexEELb1ESaIS3_EE3getILb1EEERKS3_m.exit, label %bb.b, !prof !1037

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorISt17reference_wrapperINS_10BoundIndexEELb1ESaIS3_EE3getILb1EEERKS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9DataTable23VerifyAppendConstraintsERNS_15ConstraintStateERNS_13ClientContextERNS_9DataChunkENS_12optional_ptrINS_17LocalTableStorageELb1EEENS7_INS_15ConflictManagerELb1EEE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr %4, ptr %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::ExpressionExecutor", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::Vector", align 8    ; 7 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::ErrorData", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"class.duckdb::shared_ptr.1773", align 8 ; 7 uses
  %15 = alloca %"class.std::unordered_set.1703", align 8 ; 13 uses
  %16 = alloca %"class.duckdb::CheckBinder", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.duckdb::unique_ptr.1364", align 8 ; 7 uses
  %19 = alloca %"class.duckdb::unique_ptr.1871", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1633, !nonnull !67, !align !68 ; 10 uses
  %i.c = tail call noundef zeroext i1 @_ZNK6duckdb17TableCatalogEntry19HasGeneratedColumnsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.b)
  br i1 %i.c, label %bb.b, label %bb.ce

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZN6duckdb6Binder12CreateBinderERNS_13ClientContextENS_12optional_ptrIS0_Lb1EEENS_10BinderTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.1773") align 8 %14, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr null, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 2 uses
  store ptr %i.d, ptr %15, align 8, !tbaa !1636
end_hunk_5
begin_hunk_6_@_ZN6duckdb9DataTable11LocalAppendERNS_17TableCatalogEntryERNS_13ClientContextERNS_20ColumnDataCollectionERKNS_6vectorINS_10unique_ptrINS_15BoundConstraintESt14default_deleteIS9_ELb1EEELb1ESaISC_EEENS_12optional_ptrIKNS7_INS_12LogicalIndexELb1ESaISI_EEELb1EEE:bb.a
  br label %bb.at, !llvm.loop !1820

bb.bi:                                            ; preds = %bb.ay, %bb.ba, %bb.az
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit128

bb.bk:                                            ; preds = %.critedge.i, %bb.be
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %.not.i123 = icmp eq ptr %i.ds, null
  br i1 %.not.i123, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit125, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i124

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i124: ; preds = %bb.bk
  %i.eq = load ptr, ptr %i.ds, align 8, !tbaa !45
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(88) %i.ds) #23, !inline_history !1649
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit125

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit125: ; preds = %bb.bk, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i124
  %i.et = load ptr, ptr %17, align 8, !tbaa !1811 ; 3 uses
  %.not.i126 = icmp eq ptr %i.et, null
  br i1 %.not.i126, label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit128, label %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i127

_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i127: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit125
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !45
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(96) %i.et) #23, !inline_history !1819
  br label %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit128

_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit128: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i127, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit125, %bb.bj
  %.pn97 = phi { ptr, i32 } [ %i.eo, %bb.bj ], [ %i.ep, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit125 ], [ %i.ep, %_ZNKSt14default_deleteIN6duckdb24BoundReferenceExpressionEEclEPS1_.exit.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit128, %bb.ax
  %.pn97.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.ax ], [ %.pn97, %_ZNSt10unique_ptrIN6duckdb24BoundReferenceExpressionESt14default_deleteIS1_EED2Ev.exit128 ], [ %i.en, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.fy

bb.bm:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.ex = invoke noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %._crit_edge.i.i unwind label %bb.bp

._crit_edge.i.i:                                  ; preds = %bb.bm
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.ey, ptr %21, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ey, ptr noundef nonnull align 1 dereferenceable(13) @.str.66, i64 13, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 13, ptr %i.ez, align 8, !tbaa !185
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 29
  store i8 0, ptr %i.fa, align 1, !tbaa !184
  invoke void @_ZN6duckdb14ConstantBinderC1ERNS_6BinderERNS_13ClientContextENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %20, ptr noundef nonnull align 8 dereferenceable(472) %i.ex, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull %21)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %._crit_edge.i.i
  %i.fb = load ptr, ptr %21, align 8, !tbaa !82   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ey
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bn
  call void @_ZdlPv(ptr noundef %i.fb) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cv, i64 80 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cv, i64 88 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1164
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !526
  %.not313 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not313, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %20, i64 9
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %20, i64 24
  br label %bb.br

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  invoke void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextERKNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(65) %27, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.dm unwind label %bb.er

bb.bo:                                            ; preds = %bb.av
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.bp:                                            ; preds = %bb.bm
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.bq:                                            ; preds = %._crit_edge.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = load ptr, ptr %21, align 8, !tbaa !82   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.ey
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.bq
  call void @_ZdlPv(ptr noundef %i.fq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.br:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %.070312 = phi i64 [ 0, %.lr.ph ], [ %i.mf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.fs = load ptr, ptr %i.cx, align 8, !tbaa !205 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.fs, %bb.br ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cw, %bb.br ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !1462
  %i.fv = icmp ult i64 %i.fu, %.070312            ; 3 uses
  %.19.i.i.i = select i1 %i.fv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.fv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !308 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN6duckdb13PhysicalIndexESt4pairIKS1_NS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1813

_ZNSt8_Rb_treeIN6duckdb13PhysicalIndexESt4pairIKS1_NS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.fw = icmp eq ptr %.19.i.i.i, %i.cw
  br i1 %i.fw, label %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread, label %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit

_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit: ; preds = %_ZNSt8_Rb_treeIN6duckdb13PhysicalIndexESt4pairIKS1_NS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fv, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fx = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1462
  %i.fy = icmp ult i64 %.070312, %i.fx
  br i1 %i.fy, label %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 4 uses
  %i.ga = load ptr, ptr %i.fh, align 8, !tbaa !1821 ; 6 uses
  %i.gb = load ptr, ptr %i.fi, align 8, !tbaa !1824
  %.not.i.i133 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not.i.i133, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gc = load i64, ptr %i.fz, align 8, !tbaa !1647
  store i64 %i.gc, ptr %i.ga, align 8, !tbaa !1647
  store ptr null, ptr %i.fz, align 8, !tbaa !1647
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gd, ptr %i.fh, align 8, !tbaa !1821
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.ge = load ptr, ptr %22, align 8, !tbaa !1825 ; 10 uses
  %i.gf = ptrtoint ptr %i.ga to i64               ; 3 uses
  %i.gg = ptrtoint ptr %i.ge to i64               ; 3 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.bv, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc135 unwind label %.loopexit.split-lp

.noexc135:                                        ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.gj = ashr exact i64 %i.gh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 1152921504606846975)
  %i.gn = select i1 %i.gl, i64 1152921504606846975, i64 %i.gm ; 3 uses
  %.not.i.i.i.i134 = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i134)
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #46
          to label %.noexc136 unwind label %.loopexit ; 10 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  %i.gr = load i64, ptr %i.fz, align 8, !tbaa !1647
  store i64 %i.gr, ptr %i.gq, align 8, !tbaa !1647
  store ptr null, ptr %i.fz, align 8, !tbaa !1647
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.ga
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc136
  %33 = sub i64 %i.gf, %i.gg
  %34 = add i64 %33, -8                           ; 2 uses
  %i.gs = lshr i64 %34, 3
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check456 = icmp ult i64 %34, 56
  br i1 %min.iters.check456, label %.lr.ph.i.i.i.i.i.i.i.preheader473, label %vector.memcheck447

vector.memcheck447:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep448 = getelementptr i8, ptr %i.gp, i64 8
  %i.gu = add i64 %i.gf, -8
  %i.gv = sub i64 %i.gu, %i.gg
  %i.gw = and i64 %i.gv, -8                       ; 2 uses
  %scevgep449 = getelementptr i8, ptr %scevgep448, i64 %i.gw
  %scevgep450 = getelementptr i8, ptr %i.ge, i64 8
  %scevgep451 = getelementptr i8, ptr %scevgep450, i64 %i.gw
  %bound0452 = icmp ult ptr %i.gp, %scevgep451
  %bound1453 = icmp ult ptr %i.ge, %scevgep449
  %found.conflict454 = and i1 %bound0452, %bound1453
  br i1 %found.conflict454, label %.lr.ph.i.i.i.i.i.i.i.preheader473, label %vector.ph457

vector.ph457:                                     ; preds = %vector.memcheck447
  %n.vec459 = and i64 %i.gt, 4611686018427387900  ; 3 uses
  %i.gx = shl i64 %n.vec459, 3                    ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gp, i64 %i.gx  ; 2 uses
  %i.gz = getelementptr i8, ptr %i.ge, i64 %i.gx
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph457
  %index461 = phi i64 [ 0, %vector.ph457 ], [ %index.next466, %vector.body460 ] ; 2 uses
  %i.ha = shl i64 %index461, 3                    ; 2 uses
  %next.gep462 = getelementptr i8, ptr %i.gp, i64 %i.ha ; 2 uses
  %next.gep463 = getelementptr i8, ptr %i.ge, i64 %i.ha ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  %i.hb = getelementptr i8, ptr %next.gep463, i64 16
  %wide.load464 = load <2 x i64>, ptr %next.gep463, align 8, !tbaa !1647, !alias.scope !1831, !noalias !1826
  %wide.load465 = load <2 x i64>, ptr %i.hb, align 8, !tbaa !1647, !alias.scope !1831, !noalias !1826
  %i.hc = getelementptr i8, ptr %next.gep462, i64 16
  store <2 x i64> %wide.load464, ptr %next.gep462, align 8, !tbaa !1647, !alias.scope !1834, !noalias !1831
  store <2 x i64> %wide.load465, ptr %i.hc, align 8, !tbaa !1647, !alias.scope !1834, !noalias !1831
  %i.hd = getelementptr i8, ptr %next.gep463, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep463, align 8, !tbaa !1647, !alias.scope !1831, !noalias !1826
  store <2 x ptr> splat (ptr null), ptr %i.hd, align 8, !tbaa !1647, !alias.scope !1831, !noalias !1826
  %index.next466 = add nuw i64 %index461, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next466, %n.vec459
  br i1 %i.he, label %middle.block467, label %vector.body460, !llvm.loop !1836

middle.block467:                                  ; preds = %vector.body460
  %cmp.n468 = icmp eq i64 %i.gt, %n.vec459
  br i1 %cmp.n468, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader473

.lr.ph.i.i.i.i.i.i.i.preheader473:                ; preds = %vector.memcheck447, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block467
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.gp, %vector.memcheck447 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gy, %middle.block467 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ge, %vector.memcheck447 ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gz, %middle.block467 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader473, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader473 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader473 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  %i.hf = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !1829, !noalias !1826
  store i64 %i.hf, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !1826, !noalias !1829
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !1829, !noalias !1826
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.ga
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1837

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block467, %.noexc136
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gp, %.noexc136 ], [ %i.gy, %middle.block467 ], [ %i.hh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ge) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.gp, ptr %22, align 8, !tbaa !1825
  store ptr %i.hi, ptr %i.fh, align 8, !tbaa !1821
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.hj, ptr %i.fi, align 8, !tbaa !1824
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

.loopexit.split-lp:                               ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN6duckdb13PhysicalIndexESt4pairIKS1_NS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.br, %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit
  %i.hk = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.cv, i64 %.070312)
          to label %bb.bx unwind label %bb.cj     ; 4 uses

bb.bx:                                            ; preds = %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread
  %i.hl = invoke noundef zeroext i1 @_ZNK6duckdb16ColumnDefinition15HasDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(216) %i.hk)
          to label %bb.by unwind label %bb.cj

bb.by:                                            ; preds = %bb.bx
  br i1 %i.hl, label %bb.cp, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.hm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.hk)
          to label %bb.ca unwind label %bb.ck

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %bb.cb unwind label %bb.ck

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull %24)
          to label %bb.cc unwind label %bb.cl

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.hn = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #46
          to label %.noexc137 unwind label %bb.cm ; 6 uses

.noexc137:                                        ; preds = %bb.cc
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %23) #23, !noalias !1838
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.hn, ptr noundef nonnull %7)
          to label %bb.ce unwind label %bb.cd, !noalias !1838

bb.cd:                                            ; preds = %.noexc137
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #23, !noalias !1838
  call void @_ZdlPv(ptr noundef nonnull %i.hn) #44, !noalias !1838
  br label %.body138

bb.ce:                                            ; preds = %.noexc137
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #23, !noalias !1838
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.hp = load ptr, ptr %i.fh, align 8, !tbaa !1821 ; 6 uses
  %i.hq = load ptr, ptr %i.fi, align 8, !tbaa !1824
  %.not.i.i140 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not.i.i140, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hr = ptrtoint ptr %i.hn to i64
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !1647
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %i.hs, ptr %i.fh, align 8, !tbaa !1821
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ht = load ptr, ptr %22, align 8, !tbaa !1825 ; 10 uses
  %i.hu = ptrtoint ptr %i.hp to i64               ; 3 uses
  %i.hv = ptrtoint ptr %i.ht to i64               ; 3 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 3 uses
  %i.hx = icmp eq i64 %i.hw, 9223372036854775800
  br i1 %i.hx, label %bb.ch, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i141

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc153 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit.split-lp

.noexc153:                                        ; preds = %bb.ch
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i141: ; preds = %bb.cg
  %i.hy = ashr exact i64 %i.hw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i142 = call i64 @llvm.umax.i64(i64 %i.hy, i64 1)
  %i.hz = add nsw i64 %.sroa.speculated.i.i.i.i142, %i.hy ; 2 uses
  %i.ia = icmp ult i64 %i.hz, %i.hy
  %i.ib = call i64 @llvm.umin.i64(i64 %i.hz, i64 1152921504606846975)
  %i.ic = select i1 %i.ia, i64 1152921504606846975, i64 %i.ib ; 3 uses
  %.not.i.i.i.i143 = icmp ne i64 %i.ic, 0
  call void @llvm.assume(i1 %.not.i.i.i.i143)
  %i.id = shl nuw nsw i64 %i.ic, 3
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #46
          to label %.noexc154 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit ; 10 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i141
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hw
  %i.ig = ptrtoint ptr %i.hn to i64
  store i64 %i.ig, ptr %i.if, align 8, !tbaa !1647
  %.not10.i.i.i.i.i.i.i144 = icmp eq ptr %i.ht, %i.hp
  br i1 %.not10.i.i.i.i.i.i.i144, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i149, label %.lr.ph.i.i.i.i.i.i.i145.preheader

.lr.ph.i.i.i.i.i.i.i145.preheader:                ; preds = %.noexc154
  %35 = sub i64 %i.hu, %i.hv
  %36 = add i64 %35, -8                           ; 2 uses
  %i.ih = lshr i64 %36, 3
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check432 = icmp ult i64 %36, 56
  br i1 %min.iters.check432, label %.lr.ph.i.i.i.i.i.i.i145.preheader472, label %vector.memcheck423

vector.memcheck423:                               ; preds = %.lr.ph.i.i.i.i.i.i.i145.preheader
  %scevgep424 = getelementptr i8, ptr %i.ie, i64 8
  %i.ij = add i64 %i.hu, -8
  %i.ik = sub i64 %i.ij, %i.hv
  %i.il = and i64 %i.ik, -8                       ; 2 uses
  %scevgep425 = getelementptr i8, ptr %scevgep424, i64 %i.il
  %scevgep426 = getelementptr i8, ptr %i.ht, i64 8
  %scevgep427 = getelementptr i8, ptr %scevgep426, i64 %i.il
  %bound0428 = icmp ult ptr %i.ie, %scevgep427
  %bound1429 = icmp ult ptr %i.ht, %scevgep425
  %found.conflict430 = and i1 %bound0428, %bound1429
  br i1 %found.conflict430, label %.lr.ph.i.i.i.i.i.i.i145.preheader472, label %vector.ph433

vector.ph433:                                     ; preds = %vector.memcheck423
  %n.vec435 = and i64 %i.ii, 4611686018427387900  ; 3 uses
  %i.im = shl i64 %n.vec435, 3                    ; 2 uses
  %i.in = getelementptr i8, ptr %i.ie, i64 %i.im  ; 2 uses
  %i.io = getelementptr i8, ptr %i.ht, i64 %i.im
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph433
  %index437 = phi i64 [ 0, %vector.ph433 ], [ %index.next442, %vector.body436 ] ; 2 uses
  %i.ip = shl i64 %index437, 3                    ; 2 uses
  %next.gep438 = getelementptr i8, ptr %i.ie, i64 %i.ip ; 2 uses
  %next.gep439 = getelementptr i8, ptr %i.ht, i64 %i.ip ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.iq = getelementptr i8, ptr %next.gep439, i64 16
  %wide.load440 = load <2 x i64>, ptr %next.gep439, align 8, !tbaa !1647, !alias.scope !1846, !noalias !1841
  %wide.load441 = load <2 x i64>, ptr %i.iq, align 8, !tbaa !1647, !alias.scope !1846, !noalias !1841
  %i.ir = getelementptr i8, ptr %next.gep438, i64 16
  store <2 x i64> %wide.load440, ptr %next.gep438, align 8, !tbaa !1647, !alias.scope !1849, !noalias !1846
  store <2 x i64> %wide.load441, ptr %i.ir, align 8, !tbaa !1647, !alias.scope !1849, !noalias !1846
  %i.is = getelementptr i8, ptr %next.gep439, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep439, align 8, !tbaa !1647, !alias.scope !1846, !noalias !1841
  store <2 x ptr> splat (ptr null), ptr %i.is, align 8, !tbaa !1647, !alias.scope !1846, !noalias !1841
  %index.next442 = add nuw i64 %index437, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next442, %n.vec435
  br i1 %i.it, label %middle.block443, label %vector.body436, !llvm.loop !1851

middle.block443:                                  ; preds = %vector.body436
  %cmp.n444 = icmp eq i64 %i.ii, %n.vec435
  br i1 %cmp.n444, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i149, label %.lr.ph.i.i.i.i.i.i.i145.preheader472

.lr.ph.i.i.i.i.i.i.i145.preheader472:             ; preds = %vector.memcheck423, %.lr.ph.i.i.i.i.i.i.i145.preheader, %middle.block443
  %.012.i.i.i.i.i.i.i146.ph = phi ptr [ %i.ie, %vector.memcheck423 ], [ %i.ie, %.lr.ph.i.i.i.i.i.i.i145.preheader ], [ %i.in, %middle.block443 ]
  %.0911.i.i.i.i.i.i.i147.ph = phi ptr [ %i.ht, %vector.memcheck423 ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i145.preheader ], [ %i.io, %middle.block443 ]
  br label %.lr.ph.i.i.i.i.i.i.i145

.lr.ph.i.i.i.i.i.i.i145:                          ; preds = %.lr.ph.i.i.i.i.i.i.i145.preheader472, %.lr.ph.i.i.i.i.i.i.i145
  %.012.i.i.i.i.i.i.i146 = phi ptr [ %i.iw, %.lr.ph.i.i.i.i.i.i.i145 ], [ %.012.i.i.i.i.i.i.i146.ph, %.lr.ph.i.i.i.i.i.i.i145.preheader472 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i147 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i.i145 ], [ %.0911.i.i.i.i.i.i.i147.ph, %.lr.ph.i.i.i.i.i.i.i145.preheader472 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.iu = load i64, ptr %.0911.i.i.i.i.i.i.i147, align 8, !tbaa !1647, !alias.scope !1844, !noalias !1841
  store i64 %i.iu, ptr %.012.i.i.i.i.i.i.i146, align 8, !tbaa !1647, !alias.scope !1841, !noalias !1844
  store ptr null, ptr %.0911.i.i.i.i.i.i.i147, align 8, !tbaa !1647, !alias.scope !1844, !noalias !1841
  %i.iv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i147, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i146, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i148 = icmp eq ptr %i.iv, %i.hp
  br i1 %.not.i.i.i.i.i.i.i148, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i149, label %.lr.ph.i.i.i.i.i.i.i145, !llvm.loop !1852

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i149: ; preds = %.lr.ph.i.i.i.i.i.i.i145, %middle.block443, %.noexc154
  %.0.lcssa.i.i.i.i.i.i.i150 = phi ptr [ %i.ie, %.noexc154 ], [ %i.in, %middle.block443 ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i145 ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i150, i64 8
  %.not.i23.i.i.i151 = icmp eq ptr %i.ht, null
  br i1 %.not.i23.i.i.i151, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i152, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i149
  call void @_ZdlPv(ptr noundef nonnull %i.ht) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i152

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i152: ; preds = %bb.ci, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i149
  store ptr %i.ie, ptr %22, align 8, !tbaa !1825
  store ptr %i.ix, ptr %i.fh, align 8, !tbaa !1821
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ic
  store ptr %i.iy, ptr %i.fi, align 8, !tbaa !1824
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.cj:                                            ; preds = %bb.bx, %_ZNSt3mapIN6duckdb13PhysicalIndexENS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEESt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.ck:                                            ; preds = %bb.ca, %bb.bz
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cl:                                            ; preds = %bb.cb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body138

.body138:                                         ; preds = %bb.cd, %bb.cm
  %eh.lpad-body139 = phi { ptr, i32 } [ %i.jc, %bb.cm ], [ %i.ho, %bb.cd ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %23) #23
  br label %bb.cn

bb.cn:                                            ; preds = %.body138, %bb.cl
  %.pn82 = phi { ptr, i32 } [ %eh.lpad-body139, %.body138 ], [ %i.jb, %bb.cl ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #23
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.cn ], [ %i.ja, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.fw

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i141
  %lpad.loopexit294 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit.split-lp: ; preds = %bb.ch
  %lpad.loopexit.split-lp295 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit
  %lpad.phi296 = phi { ptr, i32 } [ %lpad.loopexit294, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit ], [ %lpad.loopexit.split-lp295, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit165.loopexit.split-lp ]
  %i.jd = load ptr, ptr %i.hn, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(88) %i.hn) #23, !inline_history !1649
  br label %bb.fw

bb.cp:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  %i.jg = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb16ColumnDefinition12DefaultValueEv(ptr noundef nonnull align 8 dereferenceable(216) %i.hk)
          to label %bb.cq unwind label %bb.dh     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !45
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.jj = load ptr, ptr %i.ji, align 8
  invoke void %i.jj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1364") align 8 %25, ptr noundef nonnull align 8 dereferenceable(56) %i.jg)
          to label %bb.cr unwind label %bb.dh

bb.cr:                                            ; preds = %bb.cq
  %i.jk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.hk)
          to label %bb.cs unwind label %bb.di     ; 5 uses

bb.cs:                                            ; preds = %bb.cr
  %i.jl = icmp eq ptr %i.fj, %i.jk
  br i1 %i.jl, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jm = load i8, ptr %i.jk, align 8, !tbaa !1644
  store i8 %i.jm, ptr %i.fj, align 8, !tbaa !1644
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !1239
  store i8 %i.jo, ptr %i.fk, align 1, !tbaa !1239
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !217 ; 2 uses
  %i.js = load <2 x ptr>, ptr %i.jp, align 8, !tbaa !218
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 3 uses
  %i.ju = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i.i.i.i166 = icmp eq i8 %i.ju, 0
  br i1 %.not.i.i.i.i.i.i.i166, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jw = add nsw i32 %i.jv, 1
  store i32 %i.jw, ptr %i.jt, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.jx = atomicrmw volatile add ptr %i.jt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.cw, %bb.cv, %bb.ct
  %i.jy = load ptr, ptr %i.fm, align 8, !tbaa !217 ; 8 uses
  store <2 x ptr> %i.js, ptr %i.fl, align 8, !tbaa !218
  %.not.i.i.i.i.i167 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i167, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.ka = load atomic i64, ptr %i.jz acquire, align 8 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, 4294967297
  %i.kc = trunc i64 %i.ka to i32                  ; 2 uses
  br i1 %i.kb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.jz, align 8, !tbaa !268
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kd, align 4, !tbaa !270
  %i.ke = load ptr, ptr %i.jy, align 8, !tbaa !45
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8
  call void %i.kg(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #23, !inline_history !1645
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !45
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #23, !inline_history !1645
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cz:                                            ; preds = %bb.cx
  %i.kk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.kk, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kl = add nsw i32 %i.kc, -1
  store i32 %i.kl, ptr %i.jz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.db:                                            ; preds = %bb.cz
  %i.km = atomicrmw volatile add ptr %i.jz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kc, %bb.da ], [ %i.km, %bb.db ]
  %i.kn = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kn, label %bb.dc, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !81

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.cs, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  invoke void @_ZN6duckdb16ExpressionBinder4BindERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_11LogicalTypeELb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1871") align 8 %26, ptr noundef nonnull align 8 dereferenceable(104) %20, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr null, i1 noundef zeroext true)
          to label %bb.dd unwind label %bb.dj

bb.dd:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.ko = load ptr, ptr %i.fh, align 8, !tbaa !1821 ; 6 uses
  %i.kp = load ptr, ptr %i.fi, align 8, !tbaa !1824
  %.not.i.i168 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i.i168, label %bb.de, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183.thread: ; preds = %bb.dd
  %i.kq = load i64, ptr %26, align 8, !tbaa !1647
  store i64 %i.kq, ptr %i.ko, align 8, !tbaa !1647
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.kr, ptr %i.fh, align 8, !tbaa !1821
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit186

bb.de:                                            ; preds = %bb.dd
  %i.ks = load ptr, ptr %22, align 8, !tbaa !1825 ; 10 uses
  %i.kt = ptrtoint ptr %i.ko to i64               ; 3 uses
  %i.ku = ptrtoint ptr %i.ks to i64               ; 3 uses
  %i.kv = sub i64 %i.kt, %i.ku                    ; 3 uses
  %i.kw = icmp eq i64 %i.kv, 9223372036854775800
  br i1 %i.kw, label %bb.df, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i169

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc181 unwind label %.loopexit.split-lp298

.noexc181:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i169: ; preds = %bb.de
  %i.kx = ashr exact i64 %i.kv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i170 = call i64 @llvm.umax.i64(i64 %i.kx, i64 1)
  %i.ky = add nsw i64 %.sroa.speculated.i.i.i.i170, %i.kx ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.kx
  %i.la = call i64 @llvm.umin.i64(i64 %i.ky, i64 1152921504606846975)
  %i.lb = select i1 %i.kz, i64 1152921504606846975, i64 %i.la ; 3 uses
  %.not.i.i.i.i171 = icmp ne i64 %i.lb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i171)
  %i.lc = shl nuw nsw i64 %i.lb, 3
  %i.ld = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #46
          to label %.noexc182 unwind label %.loopexit297 ; 10 uses

.noexc182:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i169
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kv
  %i.lf = load i64, ptr %26, align 8, !tbaa !1647
  store i64 %i.lf, ptr %i.le, align 8, !tbaa !1647
  store ptr null, ptr %26, align 8, !tbaa !1647
  %.not10.i.i.i.i.i.i.i172 = icmp eq ptr %i.ks, %i.ko
  br i1 %.not10.i.i.i.i.i.i.i172, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i177, label %.lr.ph.i.i.i.i.i.i.i173.preheader

.lr.ph.i.i.i.i.i.i.i173.preheader:                ; preds = %.noexc182
  %37 = sub i64 %i.kt, %i.ku
  %38 = add i64 %37, -8                           ; 2 uses
  %i.lg = lshr i64 %38, 3
  %i.lh = add nuw nsw i64 %i.lg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %38, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i173.preheader471, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i173.preheader
  %scevgep = getelementptr i8, ptr %i.ld, i64 8
  %i.li = add i64 %i.kt, -8
  %i.lj = sub i64 %i.li, %i.ku
  %i.lk = and i64 %i.lj, -8                       ; 2 uses
  %scevgep417 = getelementptr i8, ptr %scevgep, i64 %i.lk
  %scevgep418 = getelementptr i8, ptr %i.ks, i64 8
  %scevgep419 = getelementptr i8, ptr %scevgep418, i64 %i.lk
  %bound0 = icmp ult ptr %i.ld, %scevgep419
  %bound1 = icmp ult ptr %i.ks, %scevgep417
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i173.preheader471, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lh, 4611686018427387900     ; 3 uses
  %i.ll = shl i64 %n.vec, 3                       ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ld, i64 %i.ll  ; 2 uses
  %i.ln = getelementptr i8, ptr %i.ks, i64 %i.ll
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ld, i64 %i.lo ; 2 uses
  %next.gep420 = getelementptr i8, ptr %i.ks, i64 %i.lo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.lp = getelementptr i8, ptr %next.gep420, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep420, align 8, !tbaa !1647, !alias.scope !1858, !noalias !1853
  %wide.load421 = load <2 x i64>, ptr %i.lp, align 8, !tbaa !1647, !alias.scope !1858, !noalias !1853
  %i.lq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1647, !alias.scope !1861, !noalias !1858
  store <2 x i64> %wide.load421, ptr %i.lq, align 8, !tbaa !1647, !alias.scope !1861, !noalias !1858
  %i.lr = getelementptr i8, ptr %next.gep420, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep420, align 8, !tbaa !1647, !alias.scope !1858, !noalias !1853
  store <2 x ptr> splat (ptr null), ptr %i.lr, align 8, !tbaa !1647, !alias.scope !1858, !noalias !1853
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !1863

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i177, label %.lr.ph.i.i.i.i.i.i.i173.preheader471

.lr.ph.i.i.i.i.i.i.i173.preheader471:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i173.preheader, %middle.block
  %.012.i.i.i.i.i.i.i174.ph = phi ptr [ %i.ld, %vector.memcheck ], [ %i.ld, %.lr.ph.i.i.i.i.i.i.i173.preheader ], [ %i.lm, %middle.block ]
  %.0911.i.i.i.i.i.i.i175.ph = phi ptr [ %i.ks, %vector.memcheck ], [ %i.ks, %.lr.ph.i.i.i.i.i.i.i173.preheader ], [ %i.ln, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i173

.lr.ph.i.i.i.i.i.i.i173:                          ; preds = %.lr.ph.i.i.i.i.i.i.i173.preheader471, %.lr.ph.i.i.i.i.i.i.i173
  %.012.i.i.i.i.i.i.i174 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i.i173 ], [ %.012.i.i.i.i.i.i.i174.ph, %.lr.ph.i.i.i.i.i.i.i173.preheader471 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i175 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i173 ], [ %.0911.i.i.i.i.i.i.i175.ph, %.lr.ph.i.i.i.i.i.i.i173.preheader471 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.lt = load i64, ptr %.0911.i.i.i.i.i.i.i175, align 8, !tbaa !1647, !alias.scope !1856, !noalias !1853
  store i64 %i.lt, ptr %.012.i.i.i.i.i.i.i174, align 8, !tbaa !1647, !alias.scope !1853, !noalias !1856
  store ptr null, ptr %.0911.i.i.i.i.i.i.i175, align 8, !tbaa !1647, !alias.scope !1856, !noalias !1853
  %i.lu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i175, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i174, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i176 = icmp eq ptr %i.lu, %i.ko
  br i1 %.not.i.i.i.i.i.i.i176, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i177, label %.lr.ph.i.i.i.i.i.i.i173, !llvm.loop !1864

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i177: ; preds = %.lr.ph.i.i.i.i.i.i.i173, %middle.block, %.noexc182
  %.0.lcssa.i.i.i.i.i.i.i178 = phi ptr [ %i.ld, %.noexc182 ], [ %i.lm, %middle.block ], [ %i.lv, %.lr.ph.i.i.i.i.i.i.i173 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i178, i64 8
  %.not.i23.i.i.i179 = icmp eq ptr %i.ks, null
  br i1 %.not.i23.i.i.i179, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i177
  call void @_ZdlPv(ptr noundef nonnull %i.ks) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i177, %bb.dg
  store ptr %i.ld, ptr %22, align 8, !tbaa !1825
  store ptr %i.lw, ptr %i.fh, align 8, !tbaa !1821
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lb
  store ptr %i.lx, ptr %i.fi, align 8, !tbaa !1824
  %.pr = load ptr, ptr %26, align 8, !tbaa !1647  ; 3 uses
  %.not.i184 = icmp eq ptr %.pr, null
  br i1 %.not.i184, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit186, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i185

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i185: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183
  %i.ly = load ptr, ptr %.pr, align 8, !tbaa !45
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #23, !inline_history !1649
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit186

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit186: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit183, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.mb = load ptr, ptr %25, align 8, !tbaa !1369 ; 3 uses
  %.not.i187 = icmp eq ptr %i.mb, null
  br i1 %.not.i187, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit186
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !45
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(56) %i.mb) #23, !inline_history !1373
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit186, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.cf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i152, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bt, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.mf = add nuw i64 %.070312, 1                 ; 2 uses
  %i.mg = load ptr, ptr %i.fe, align 8, !tbaa !1164
  %i.mh = load ptr, ptr %i.fd, align 8, !tbaa !526
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = ashr exact i64 %i.mk, 3
  %i.mm = icmp ult i64 %i.mf, %i.ml
  br i1 %i.mm, label %bb.br, label %._crit_edge, !llvm.loop !1865

bb.dh:                                            ; preds = %bb.cq, %bb.cp
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193

bb.di:                                            ; preds = %bb.cr
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dj:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit190

.loopexit297:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i169
  %lpad.loopexit299 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

.loopexit.split-lp298:                            ; preds = %bb.df
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dk:                                            ; preds = %.loopexit.split-lp298, %.loopexit297
  %lpad.phi301 = phi { ptr, i32 } [ %lpad.loopexit299, %.loopexit297 ], [ %lpad.loopexit.split-lp300, %.loopexit.split-lp298 ] ; 2 uses
  %i.mq = load ptr, ptr %26, align 8, !tbaa !1647 ; 3 uses
  %.not.i188 = icmp eq ptr %i.mq, null
  br i1 %.not.i188, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit190, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i189

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i189: ; preds = %bb.dk
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !45
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(88) %i.mq) #23, !inline_history !1649
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit190

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit190: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i189, %bb.dk, %bb.dj
  %.pn87 = phi { ptr, i32 } [ %i.mp, %bb.dj ], [ %lpad.phi301, %bb.dk ], [ %lpad.phi301, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit190, %bb.di
  %.pn87.pn = phi { ptr, i32 } [ %.pn87, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit190 ], [ %i.mo, %bb.di ] ; 2 uses
  %i.mu = load ptr, ptr %25, align 8, !tbaa !1369 ; 3 uses
  %.not.i191 = icmp eq ptr %i.mu, null
  br i1 %.not.i191, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192: ; preds = %bb.dl
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !45
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(56) %i.mu) #23, !inline_history !1373
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit193: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192, %bb.dl, %bb.dh
  %.pn87.pn.pn = phi { ptr, i32 } [ %i.mn, %bb.dh ], [ %.pn87.pn, %bb.dl ], [ %.pn87.pn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.fw

bb.dm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.dn unwind label %bb.es

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  invoke void @_ZNK6duckdb17TableCatalogEntry8GetTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.1094") align 8 %29, ptr noundef nonnull align 8 dereferenceable(448) %1)
          to label %bb.do unwind label %bb.et

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 noundef 2048)
          to label %bb.dp unwind label %bb.eu

bb.dp:                                            ; preds = %bb.do
  %i.my = load ptr, ptr %29, align 8, !tbaa !1313 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !1302 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb9DataTable15AppendToIndexesERNS_14TableIndexListENS_12optional_ptrIS1_Lb1EEERNS_9DataChunkES6_RKNS_6vectorINS_12StorageIndexELb1ESaIS8_EEElNS_15IndexAppendModeENS_12optional_idxE:bb.a
  %i.bi = invoke ptr @_ZN6duckdb14TableIndexList4FindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.x:                                             ; preds = %bb.u, %bb.v
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.y:                                             ; preds = %bb.v, %bb.t
  %.sroa.0168.0 = phi ptr [ null, %bb.t ], [ %i.bi, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %i.aq, ptr %18, align 8, !tbaa !1567
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr null, ptr %19, align 8, !tbaa !1567
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr null, ptr %20, align 8, !tbaa !1567
  %i.bl = load i64, ptr %13, align 8, !tbaa !289
  %.not206 = icmp eq i64 %i.bl, -1
  br i1 %.not206, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(392) %i.aq)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bp, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 80 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !289
  %.not207 = icmp eq i64 %i.br, -1
  br i1 %.not207, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bs = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bt = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %.not = icmp eq i64 %i.bs, %i.bt
  br i1 %.not, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !714
  %.not208 = icmp eq ptr %i.bv, null
  br i1 %.not208, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.bw = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 152
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1608") align 8 %21, ptr noundef nonnull align 8 dereferenceable(392) %i.aq, i32 noundef 3)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bz = load ptr, ptr %21, align 8, !tbaa !714
  store ptr null, ptr %21, align 8, !tbaa !714
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !714 ; 3 uses
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !714
  %.not.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10BoundIndexESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ah
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(392) %i.ca) #23, !inline_history !1997
  %.pr = load ptr, ptr %21, align 8, !tbaa !714   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10BoundIndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10BoundIndexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10BoundIndexEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ce = load ptr, ptr %.pr, align 8, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(392) %.pr) #23, !inline_history !1316
  br label %_ZNSt10unique_ptrIN6duckdb10BoundIndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10BoundIndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ah, %_ZN6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10BoundIndexEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ak, %bb.ad, %bb.ac, %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit215

bb.aj:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.loopexit215

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10BoundIndexESt14default_deleteIS1_EED2Ev.exit, %bb.af
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef zeroext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(104) %i.aq)
          to label %bb.al unwind label %bb.ai, !inline_history !1456

bb.al:                                            ; preds = %bb.ak
  %i.cn = add i8 %i.cm, -1
  %i.co = icmp ult i8 %i.cn, 2
  br i1 %i.co, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cp = ptrtoint ptr %i.aq to i64
  store i64 %i.cp, ptr %19, align 8, !tbaa !714
  %i.cq = ptrtoint ptr %.sroa.0168.0 to i64
  store i64 %i.cq, ptr %20, align 8, !tbaa !714
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cr = load ptr, ptr %i.bu, align 8, !tbaa !714
  %i.cs = ptrtoint ptr %i.cr to i64
  store i64 %i.cs, ptr %18, align 8, !tbaa !714
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ae, %bb.an, %bb.aa
  %.pr179 = load ptr, ptr %19, align 8, !tbaa !1567
  %.not209 = icmp eq ptr %.pr179, null
  br i1 %.not209, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store i8 0, ptr %22, align 8, !tbaa !1564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.ct = load ptr, ptr %20, align 8, !tbaa !1567
  %.not210 = icmp eq ptr %i.ct, null
  br i1 %.not210, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK6duckdb12optional_ptrINS_10BoundIndexELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.cu = load ptr, ptr %20, align 8, !tbaa !1567 ; 2 uses
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !1570 ; 5 uses
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !1571
  %.not.i.i97 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i.i97, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cx = ptrtoint ptr %i.cu to i64
  store i64 %i.cx, ptr %i.cv, align 8
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !1570
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cz, ptr %i.m, align 8, !tbaa !1570
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.at:                                            ; preds = %bb.ar
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !1569 ; 7 uses
  %i.db = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64               ; 3 uses
  %i.dd = sub i64 %i.db, %i.dc                    ; 3 uses
  %i.de = icmp eq i64 %i.dd, 9223372036854775800
  br i1 %i.de, label %bb.au, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc98 unwind label %bb.ax

.noexc98:                                         ; preds = %bb.au
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %i.df = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.df ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  %i.di = call i64 @llvm.umin.i64(i64 %i.dg, i64 1152921504606846975)
  %i.dj = select i1 %i.dh, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #46
          to label %.noexc99 unwind label %bb.ax  ; 8 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  %i.dn = ptrtoint ptr %i.cu to i64
  store i64 %i.dn, ptr %i.dm, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.cv
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc99
  %i.do = ptrtoaddr ptr %i.dl to i64
  %26 = sub i64 %i.db, %i.dc
  %27 = add i64 %26, -8                           ; 2 uses
  %i.dp = lshr i64 %27, 3
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check763 = icmp ult i64 %27, 24
  %i.dr = sub i64 %i.do, %i.dc
  %diff.check761 = icmp ult i64 %i.dr, 32
  %or.cond778 = or i1 %min.iters.check763, %diff.check761
  br i1 %or.cond778, label %.lr.ph.i.i.i.i.i.i.i.preheader783, label %vector.ph764

vector.ph764:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec766 = and i64 %i.dq, 4611686018427387900  ; 3 uses
  %i.ds = shl i64 %n.vec766, 3                    ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dl, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %i.da, i64 %i.ds
  br label %vector.body767

vector.body767:                                   ; preds = %vector.body767, %vector.ph764
  %index768 = phi i64 [ 0, %vector.ph764 ], [ %index.next773, %vector.body767 ] ; 2 uses
  %i.dv = shl i64 %index768, 3                    ; 2 uses
  %next.gep769 = getelementptr i8, ptr %i.dl, i64 %i.dv ; 2 uses
  %next.gep770 = getelementptr i8, ptr %i.da, i64 %i.dv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  %i.dw = getelementptr i8, ptr %next.gep770, i64 16
  %wide.load771 = load <2 x i64>, ptr %next.gep770, align 8, !alias.scope !2001, !noalias !1998
  %wide.load772 = load <2 x i64>, ptr %i.dw, align 8, !alias.scope !2001, !noalias !1998
  %i.dx = getelementptr i8, ptr %next.gep769, i64 16
  store <2 x i64> %wide.load771, ptr %next.gep769, align 8, !alias.scope !1998, !noalias !2001
  store <2 x i64> %wide.load772, ptr %i.dx, align 8, !alias.scope !1998, !noalias !2001
  %index.next773 = add nuw i64 %index768, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next773, %n.vec766
  br i1 %i.dy, label %middle.block774, label %vector.body767, !llvm.loop !2003

middle.block774:                                  ; preds = %vector.body767
  %cmp.n775 = icmp eq i64 %i.dq, %n.vec766
  br i1 %cmp.n775, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader783

.lr.ph.i.i.i.i.i.i.i.preheader783:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block774
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dt, %middle.block774 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.du, %middle.block774 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader783, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader783 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader783 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  %i.dz = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2001, !noalias !1998
  store i64 %i.dz, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1998, !noalias !2001
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ea, %i.cv
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2004

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block774, %.noexc99
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dl, %.noexc99 ], [ %i.dt, %middle.block774 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.da) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.dl, ptr %i.l, align 8, !tbaa !1569
  store ptr %i.ec, ptr %i.m, align 8, !tbaa !1570
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.ed, ptr %i.n, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit

bb.aw:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit115, %bb.bf
  %i.ee = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bi

bb.ax:                                            ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.au, %bb.aq
  %i.ef = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bi

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.as, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !714
  %.not211 = icmp eq ptr %i.eh, null
  br i1 %.not211, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit115, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit
  %i.ei = invoke noundef nonnull align 8 dereferenceable(392) ptr @_ZNK6duckdb10unique_ptrINS_10BoundIndexESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eg)
          to label %bb.az unwind label %bb.be     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !1570 ; 5 uses
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !1571
  %.not.i.i100 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i100, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.el = ptrtoint ptr %i.ei to i64
  store i64 %i.el, ptr %i.ej, align 8
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !1570
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.en, ptr %i.m, align 8, !tbaa !1570
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit115

bb.bb:                                            ; preds = %bb.az
  %i.eo = load ptr, ptr %i.l, align 8, !tbaa !1569 ; 7 uses
  %i.ep = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64               ; 3 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775800
  br i1 %i.es, label %bb.bc, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i101

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc113 unwind label %bb.be

.noexc113:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i101: ; preds = %bb.bb
  %i.et = ashr exact i64 %i.er, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i102 = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i.i102, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 1152921504606846975)
  %i.ex = select i1 %i.ev, i64 1152921504606846975, i64 %i.ew ; 3 uses
  %.not.i.i.i.i103 = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i.i103)
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #46
          to label %.noexc114 unwind label %bb.be ; 8 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i101
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  %i.fb = ptrtoint ptr %i.ei to i64
  store i64 %i.fb, ptr %i.fa, align 8
  %.not10.i.i.i.i.i.i.i104 = icmp eq ptr %i.eo, %i.ej
  br i1 %.not10.i.i.i.i.i.i.i104, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i109, label %.lr.ph.i.i.i.i.i.i.i105.preheader

.lr.ph.i.i.i.i.i.i.i105.preheader:                ; preds = %.noexc114
  %i.fc = ptrtoaddr ptr %i.ez to i64
  %28 = sub i64 %i.ep, %i.eq
  %29 = add i64 %28, -8                           ; 2 uses
  %i.fd = lshr i64 %29, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check745 = icmp ult i64 %29, 24
  %i.ff = sub i64 %i.fc, %i.eq
  %diff.check743 = icmp ult i64 %i.ff, 32
  %or.cond779 = or i1 %min.iters.check745, %diff.check743
  br i1 %or.cond779, label %.lr.ph.i.i.i.i.i.i.i105.preheader782, label %vector.ph746

vector.ph746:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i105.preheader
  %n.vec748 = and i64 %i.fe, 4611686018427387900  ; 3 uses
  %i.fg = shl i64 %n.vec748, 3                    ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ez, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.eo, i64 %i.fg
  br label %vector.body749

vector.body749:                                   ; preds = %vector.body749, %vector.ph746
  %index750 = phi i64 [ 0, %vector.ph746 ], [ %index.next755, %vector.body749 ] ; 2 uses
  %i.fj = shl i64 %index750, 3                    ; 2 uses
  %next.gep751 = getelementptr i8, ptr %i.ez, i64 %i.fj ; 2 uses
  %next.gep752 = getelementptr i8, ptr %i.eo, i64 %i.fj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.fk = getelementptr i8, ptr %next.gep752, i64 16
  %wide.load753 = load <2 x i64>, ptr %next.gep752, align 8, !alias.scope !2008, !noalias !2005
  %wide.load754 = load <2 x i64>, ptr %i.fk, align 8, !alias.scope !2008, !noalias !2005
  %i.fl = getelementptr i8, ptr %next.gep751, i64 16
  store <2 x i64> %wide.load753, ptr %next.gep751, align 8, !alias.scope !2005, !noalias !2008
  store <2 x i64> %wide.load754, ptr %i.fl, align 8, !alias.scope !2005, !noalias !2008
  %index.next755 = add nuw i64 %index750, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next755, %n.vec748
  br i1 %i.fm, label %middle.block756, label %vector.body749, !llvm.loop !2010

middle.block756:                                  ; preds = %vector.body749
  %cmp.n757 = icmp eq i64 %i.fe, %n.vec748
  br i1 %cmp.n757, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i109, label %.lr.ph.i.i.i.i.i.i.i105.preheader782

.lr.ph.i.i.i.i.i.i.i105.preheader782:             ; preds = %.lr.ph.i.i.i.i.i.i.i105.preheader, %middle.block756
  %.012.i.i.i.i.i.i.i106.ph = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i105.preheader ], [ %i.fh, %middle.block756 ]
  %.0911.i.i.i.i.i.i.i107.ph = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i105.preheader ], [ %i.fi, %middle.block756 ]
  br label %.lr.ph.i.i.i.i.i.i.i105

.lr.ph.i.i.i.i.i.i.i105:                          ; preds = %.lr.ph.i.i.i.i.i.i.i105.preheader782, %.lr.ph.i.i.i.i.i.i.i105
  %.012.i.i.i.i.i.i.i106 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i105 ], [ %.012.i.i.i.i.i.i.i106.ph, %.lr.ph.i.i.i.i.i.i.i105.preheader782 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i107 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i105 ], [ %.0911.i.i.i.i.i.i.i107.ph, %.lr.ph.i.i.i.i.i.i.i105.preheader782 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.fn = load i64, ptr %.0911.i.i.i.i.i.i.i107, align 8, !alias.scope !2008, !noalias !2005
  store i64 %i.fn, ptr %.012.i.i.i.i.i.i.i106, align 8, !alias.scope !2005, !noalias !2008
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i107, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i106, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i108 = icmp eq ptr %i.fo, %i.ej
  br i1 %.not.i.i.i.i.i.i.i108, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i109, label %.lr.ph.i.i.i.i.i.i.i105, !llvm.loop !2011

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i109: ; preds = %.lr.ph.i.i.i.i.i.i.i105, %middle.block756, %.noexc114
  %.0.lcssa.i.i.i.i.i.i.i110 = phi ptr [ %i.ez, %.noexc114 ], [ %i.fh, %middle.block756 ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i105 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i110, i64 8
  %.not.i23.i.i.i111 = icmp eq ptr %i.eo, null
  br i1 %.not.i23.i.i.i111, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i112, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i109
  call void @_ZdlPv(ptr noundef nonnull %i.eo) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i112

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i112: ; preds = %bb.bd, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i109
  store ptr %i.ez, ptr %i.l, align 8, !tbaa !1569
  store ptr %i.fq, ptr %i.m, align 8, !tbaa !1570
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ex
  store ptr %i.fr, ptr %i.n, align 8, !tbaa !1571
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit115

bb.be:                                            ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i101, %bb.bc, %bb.ay
  %i.fs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.bi

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit115: ; preds = %bb.ba, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i112, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_10BoundIndexELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bf unwind label %bb.aw

bb.bf:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE9push_backEOS3_.exit115
  %i.ft = load ptr, ptr %19, align 8, !tbaa !1567 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !45
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(392) %i.ft, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr null)
          to label %bb.bg unwind label %bb.aw

bb.bg:                                            ; preds = %bb.bf
  %i.fx = load ptr, ptr %i.l, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i117 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i117, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef nonnull %i.fx) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit

_ZN6duckdb15IndexAppendInfoD2Ev.exit:             ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.thread

bb.bi:                                            ; preds = %bb.be, %bb.ax, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.aw ], [ %i.fs, %bb.be ], [ %i.ef, %bb.ax ]
  %i.fy = load ptr, ptr %i.l, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i118, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit119, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef nonnull %i.fy) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit119

_ZN6duckdb15IndexAppendInfoD2Ev.exit119:          ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.bs

.thread:                                          ; preds = %bb.y, %_ZN6duckdb15IndexAppendInfoD2Ev.exit, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZN6duckdb15IndexAppendInfoC2ENS_15IndexAppendModeENS_12optional_ptrINS_10BoundIndexELb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef zeroext %7, ptr %.sroa.0168.0)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZNK6duckdb12optional_ptrINS_10BoundIndexELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.fz = load ptr, ptr %18, align 8, !tbaa !1567
  invoke void @_ZN6duckdb10BoundIndex6AppendERNS_9DataChunkERNS_6VectorERNS_15IndexAppendInfoE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ErrorData") align 8 %24, ptr noundef nonnull align 8 dereferenceable(392) %i.fz, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.ga = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ErrorDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %24) #23 ; 0 uses
  %i.gb = load ptr, ptr %i.q, align 8, !tbaa !704 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bm, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.gc, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.gb, %bb.bm ] ; 6 uses
  %i.gc = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !506 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !82 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !82 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gi) #44
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #44
  %.not.i.i.i.i.i122 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i122, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !706

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %bb.bm
  %i.gl = load ptr, ptr %i.p, align 8, !tbaa !707
  %i.gm = load i64, ptr %i.r, align 8, !tbaa !708
  %i.gn = shl i64 %i.gm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gl, i8 0, i64 %i.gn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.go = load ptr, ptr %i.p, align 8, !tbaa !707 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.s
  br i1 %i.gp, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.go) #44
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.bn, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.gq = load ptr, ptr %i.t, align 8, !tbaa !82  ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.u
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.gq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.gs = load ptr, ptr %i.v, align 8, !tbaa !82  ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.w
  br i1 %i.gt, label %_ZN6duckdb9ErrorDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.gs) #44
  br label %_ZN6duckdb9ErrorDataD2Ev.exit

_ZN6duckdb9ErrorDataD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.gu = load ptr, ptr %i.o, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i123, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit124, label %bb.bo

bb.bo:                                            ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gu) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit124

_ZN6duckdb15IndexAppendInfoD2Ev.exit124:          ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.bv

bb.bp:                                            ; preds = %.thread
  %i.gv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit126

bb.bq:                                            ; preds = %bb.bk, %bb.bl
  %i.gw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.gx = load ptr, ptr %i.o, align 8, !tbaa !1569 ; 2 uses
  %.not.i.i.i.i125 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i125, label %_ZN6duckdb15IndexAppendInfoD2Ev.exit126, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZdlPv(ptr noundef nonnull %i.gx) #44
  br label %_ZN6duckdb15IndexAppendInfoD2Ev.exit126

_ZN6duckdb15IndexAppendInfoD2Ev.exit126:          ; preds = %bb.br, %bb.bq, %bb.bp
  %.pn66 = phi { ptr, i32 } [ %i.gv, %bb.bp ], [ %i.gw, %bb.bq ], [ %i.gw, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN6duckdb15IndexAppendInfoD2Ev.exit126, %_ZN6duckdb15IndexAppendInfoD2Ev.exit119
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZN6duckdb15IndexAppendInfoD2Ev.exit126 ], [ %.pn, %_ZN6duckdb15IndexAppendInfoD2Ev.exit119 ] ; 3 uses
  %.244 = extractvalue { ptr, i32 } %.pn66.pn, 1
  %i.gy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.gz = icmp eq i32 %.244, %i.gy
  br i1 %i.gz, label %bb.bt, label %.loopexit215

bb.bt:                                            ; preds = %bb.bs
  %.2 = extractvalue { ptr, i32 } %.pn66.pn, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %.2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZN6duckdb9ErrorDataC1ERKSt9exception(ptr noundef nonnull align 8 dereferenceable(128) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.ha)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.hb = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ErrorDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %25) #23 ; 0 uses
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  invoke void @__cxa_end_catch()
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu, %_ZN6duckdb15IndexAppendInfoD2Ev.exit124
  %i.hc = load i8, ptr %0, align 8, !tbaa !716, !range !249, !noundef !67
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.ce, label %bb.by

bb.bw:                                            ; preds = %bb.bt
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  invoke void @__cxa_end_catch()
          to label %.loopexit215 unwind label %bb.cu

bb.bx:                                            ; preds = %bb.bu
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit215

bb.by:                                            ; preds = %bb.bv
  invoke void @_ZNK6duckdb12optional_ptrINS_10BoundIndexELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bz unwind label %.loopexit216

bb.bz:                                            ; preds = %bb.by
  %i.hg = load ptr, ptr %18, align 8, !tbaa !1567 ; 2 uses
  %.not.i.i129 = icmp eq ptr %.sroa.9.0358, %.sroa.14.0357
  br i1 %.not.i.i129, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hh = ptrtoint ptr %i.hg to i64
  store i64 %i.hh, ptr %.sroa.9.0358, align 8
  br label %.thread190

bb.cb:                                            ; preds = %bb.bz
  %i.hi = ptrtoint ptr %.sroa.9.0358 to i64       ; 2 uses
  %i.hj = ptrtoint ptr %.sroa.0172.0359 to i64    ; 3 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 3 uses
  %i.hl = icmp eq i64 %i.hk, 9223372036854775800
  br i1 %i.hl, label %bb.cc, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i130

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc142 unwind label %.loopexit.split-lp217

.noexc142:                                        ; preds = %bb.cc
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i130: ; preds = %bb.cb
  %i.hm = ashr exact i64 %i.hk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i131 = call i64 @llvm.umax.i64(i64 %i.hm, i64 1)
  %i.hn = add nsw i64 %.sroa.speculated.i.i.i.i131, %i.hm ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hm
  %i.hp = call i64 @llvm.umin.i64(i64 %i.hn, i64 1152921504606846975)
  %i.hq = select i1 %i.ho, i64 1152921504606846975, i64 %i.hp ; 3 uses
  %.not.i.i.i.i132 = icmp ne i64 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i132)
  %i.hr = shl nuw nsw i64 %i.hq, 3
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #46
          to label %.noexc143 unwind label %.loopexit216 ; 8 uses

.noexc143:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i130
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hk
  %i.hu = ptrtoint ptr %i.hg to i64
  store i64 %i.hu, ptr %i.ht, align 8
  %.not10.i.i.i.i.i.i.i133 = icmp eq ptr %.sroa.0172.0359, %.sroa.9.0358
  br i1 %.not10.i.i.i.i.i.i.i133, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i138, label %.lr.ph.i.i.i.i.i.i.i134.preheader

.lr.ph.i.i.i.i.i.i.i134.preheader:                ; preds = %.noexc143
  %i.hv = ptrtoaddr ptr %i.hs to i64
  %30 = sub i64 %i.hi, %i.hj
  %31 = add i64 %30, -8                           ; 2 uses
  %i.hw = lshr i64 %31, 3
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %31, 24
  %i.hy = sub i64 %i.hv, %i.hj
  %diff.check = icmp ult i64 %i.hy, 32
  %or.cond780 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond780, label %.lr.ph.i.i.i.i.i.i.i134.preheader781, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i134.preheader
  %n.vec = and i64 %i.hx, 4611686018427387900     ; 3 uses
  %i.hz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hs, i64 %i.hz  ; 2 uses
  %i.ib = getelementptr i8, ptr %.sroa.0172.0359, i64 %i.hz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hs, i64 %i.ic ; 2 uses
  %next.gep739 = getelementptr i8, ptr %.sroa.0172.0359, i64 %i.ic ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.id = getelementptr i8, ptr %next.gep739, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep739, align 8, !alias.scope !2015, !noalias !2012
  %wide.load740 = load <2 x i64>, ptr %i.id, align 8, !alias.scope !2015, !noalias !2012
  %i.ie = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2012, !noalias !2015
  store <2 x i64> %wide.load740, ptr %i.ie, align 8, !alias.scope !2012, !noalias !2015
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !2017

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i138, label %.lr.ph.i.i.i.i.i.i.i134.preheader781

.lr.ph.i.i.i.i.i.i.i134.preheader781:             ; preds = %.lr.ph.i.i.i.i.i.i.i134.preheader, %middle.block
  %.012.i.i.i.i.i.i.i135.ph = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i.i134.preheader ], [ %i.ia, %middle.block ]
  %.0911.i.i.i.i.i.i.i136.ph = phi ptr [ %.sroa.0172.0359, %.lr.ph.i.i.i.i.i.i.i134.preheader ], [ %i.ib, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i134

.lr.ph.i.i.i.i.i.i.i134:                          ; preds = %.lr.ph.i.i.i.i.i.i.i134.preheader781, %.lr.ph.i.i.i.i.i.i.i134
  %.012.i.i.i.i.i.i.i135 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i.i134 ], [ %.012.i.i.i.i.i.i.i135.ph, %.lr.ph.i.i.i.i.i.i.i134.preheader781 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i136 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i.i.i134 ], [ %.0911.i.i.i.i.i.i.i136.ph, %.lr.ph.i.i.i.i.i.i.i134.preheader781 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.ig = load i64, ptr %.0911.i.i.i.i.i.i.i136, align 8, !alias.scope !2015, !noalias !2012
  store i64 %i.ig, ptr %.012.i.i.i.i.i.i.i135, align 8, !alias.scope !2012, !noalias !2015
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i136, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i135, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i137 = icmp eq ptr %i.ih, %.sroa.9.0358
  br i1 %.not.i.i.i.i.i.i.i137, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i138, label %.lr.ph.i.i.i.i.i.i.i134, !llvm.loop !2018

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i138: ; preds = %.lr.ph.i.i.i.i.i.i.i134, %middle.block, %.noexc143
  %.0.lcssa.i.i.i.i.i.i.i139 = phi ptr [ %i.hs, %.noexc143 ], [ %i.ia, %middle.block ], [ %i.ii, %.lr.ph.i.i.i.i.i.i.i134 ]
  %.not.i23.i.i.i140 = icmp eq ptr %.sroa.0172.0359, null
  br i1 %.not.i23.i.i.i140, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i141, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i138
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0172.0359) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i141

_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i141: ; preds = %bb.cd, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i138
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hq
  br label %.thread190

.thread190:                                       ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i141, %bb.ca
  %.sroa.14.1.ph = phi ptr [ %.sroa.14.0357, %bb.ca ], [ %i.ij, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i141 ]
  %.sroa.9.0.pn = phi ptr [ %.sroa.9.0358, %bb.ca ], [ %.0.lcssa.i.i.i.i.i.i.i139, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i141 ]
  %.sroa.0172.2.ph = phi ptr [ %.sroa.0172.0359, %bb.ca ], [ %i.hs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i141 ]
  %.sroa.9.1.ph = getelementptr inbounds nuw i8, ptr %.sroa.9.0.pn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %.thread180

bb.ce:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.ik = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #23 ; 0 uses
  br label %.loopexit213

.thread180:                                       ; preds = %bb.o, %.thread190
  %.sroa.0172.3188 = phi ptr [ %.sroa.0172.2.ph, %.thread190 ], [ %.sroa.0172.0359, %bb.o ] ; 3 uses
  %.sroa.9.2187 = phi ptr [ %.sroa.9.1.ph, %.thread190 ], [ %.sroa.9.0358, %bb.o ] ; 2 uses
  %.sroa.14.2186 = phi ptr [ %.sroa.14.1.ph, %.thread190 ], [ %.sroa.14.0357, %bb.o ]
  %i.il = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #23 ; 0 uses
  %i.im = load ptr, ptr %17, align 8, !tbaa !1395
  %.not3.i = icmp eq ptr %i.im, null
  br i1 %.not3.i, label %._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge, label %bb.cf

._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge: ; preds = %.thread180
  %.pre = load i64, ptr %i.f, align 8, !tbaa !289
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit

bb.cf:                                            ; preds = %.thread180
  %i.in = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc146 unwind label %.loopexit221

.noexc146:                                        ; preds = %bb.cf
  %i.io = add i64 %i.in, 1                        ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrIKNS_6vectorINS_10unique_ptrINS_10IndexEntryESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %.noexc147 unwind label %.loopexit221

.noexc147:                                        ; preds = %.noexc146
  %i.ip = load ptr, ptr %17, align 8, !tbaa !1395 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !899
  %i.is = load ptr, ptr %i.ip, align 8, !tbaa !902
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = ashr exact i64 %i.iv, 3
  %.not.i145 = icmp ult i64 %i.io, %i.iw
  br i1 %.not.i145, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.noexc147
  store i64 -1, ptr %i.f, align 8, !tbaa !70
  store i64 0, ptr %17, align 8, !tbaa !1397
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit

bb.ch:                                            ; preds = %.noexc147
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %i.io)
          to label %.noexc148 unwind label %.loopexit221

.noexc148:                                        ; preds = %bb.ch
  %i.ix = load i64, ptr %9, align 8, !tbaa !70    ; 2 uses
  store i64 %i.ix, ptr %i.f, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.pre481 = load ptr, ptr %17, align 8
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit

_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit: ; preds = %._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge, %bb.cg, %.noexc148
  %i.iy = phi ptr [ null, %._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge ], [ null, %bb.cg ], [ %.pre481, %.noexc148 ]
  %i.iz = phi i64 [ %.pre, %._ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit_crit_edge ], [ -1, %bb.cg ], [ %i.ix, %.noexc148 ]
  %i.ja = icmp ne i64 %i.iz, %.fca.1.load.i86
  %i.jb = icmp ne ptr %i.iy, %.fca.0.load.i83
  %i.jc = select i1 %i.ja, i1 true, i1 %i.jb
  br i1 %i.jc, label %bb.j, label %.loopexit213

.loopexit216:                                     ; preds = %bb.by, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10BoundIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i130
  %lpad.loopexit218 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit215

.loopexit.split-lp217:                            ; preds = %bb.cc
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit215

.loopexit215:                                     ; preds = %bb.bs, %.loopexit216, %.loopexit.split-lp217, %bb.bx, %bb.bw, %bb.aj, %bb.ai
  %.merged82 = phi { ptr, i32 } [ %lpad.loopexit.split-lp219, %.loopexit.split-lp217 ], [ %i.ci, %bb.aj ], [ %i.he, %bb.bw ], [ %i.ch, %bb.ai ], [ %i.hf, %bb.bx ], [ %lpad.loopexit218, %.loopexit216 ], [ %.pn66.pn, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.w, %bb.x, %.loopexit215, %bb.r, %bb.q
  %.merged79 = phi { ptr, i32 } [ %i.aw, %bb.q ], [ %i.ax, %bb.r ], [ %i.bj, %bb.w ], [ %.merged82, %.loopexit215 ], [ %i.bk, %bb.x ]
  %i.jd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #23 ; 0 uses
  br label %bb.cl

.loopexit213:                                     ; preds = %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit, %bb.f, %bb.ce
  %.sroa.9.0290 = phi ptr [ %.sroa.9.0358, %bb.ce ], [ null, %bb.f ], [ %.sroa.9.2187, %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit ] ; 2 uses
  %.sroa.0172.0267 = phi ptr [ %.sroa.0172.0359, %bb.ce ], [ null, %bb.f ], [ %.sroa.0172.3188, %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit ] ; 5 uses
  %.not365 = phi i1 [ false, %bb.ce ], [ true, %bb.f ], [ true, %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEE18TableIndexIteratorppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jf = load i8, ptr %i.je, align 8, !tbaa !1061, !range !249, !noundef !67
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.cj, label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit

bb.cj:                                            ; preds = %.loopexit213
  %i.jh = load ptr, ptr %16, align 8, !tbaa !1059 ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i149, label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ji = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.jh) #23 ; 0 uses
  br label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit

_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit: ; preds = %.loopexit213, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %.not212362 = icmp eq ptr %.sroa.0172.0267, %.sroa.9.0290
  %or.cond366 = select i1 %.not365, i1 true, i1 %.not212362
  br i1 %or.cond366, label %.loopexit, label %.lr.ph364

bb.cl:                                            ; preds = %.loopexit214, %.loopexit.split-lp, %.loopexit221, %.loopexit.split-lp222, %bb.ci, %bb.p, %bb.i
  %.sroa.0172.6 = phi ptr [ null, %bb.i ], [ %.sroa.0172.0359, %bb.p ], [ null, %.loopexit.split-lp222 ], [ %.sroa.0172.0359, %bb.ci ], [ %.sroa.0172.3188, %.loopexit221 ], [ %.sroa.0172.0359, %.loopexit214 ], [ %.sroa.0172.0359, %.loopexit.split-lp ]
  %.merged75 = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.av, %bb.p ], [ %lpad.loopexit.split-lp224, %.loopexit.split-lp222 ], [ %.merged79, %bb.ci ], [ %lpad.loopexit223, %.loopexit221 ], [ %lpad.loopexit, %.loopexit214 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jk = load i8, ptr %i.jj, align 8, !tbaa !1061, !range !249, !noundef !67
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.cm, label %_ZN6duckdb25TableIndexIterationHelperINS_10IndexEntryEED2Ev.exit151

bb.cm:                                            ; preds = %bb.cl
  %i.jm = load ptr, ptr %16, align 8, !tbaa !1059 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdb9DataTable8AddIndexERKNS_10ColumnListERKNS_6vectorINS_12LogicalIndexELb1ESaIS5_EEENS_19IndexConstraintTypeENS_16IndexStorageInfoE:bb.a

_ZNK6duckdb9DataTable12GetTableNameB5cxx11Ev.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNK6duckdb9DataTable17TableModificationB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK6duckdb9DataTable12GetTableNameB5cxx11Ev.exit
  invoke void @_ZN6duckdb20TransactionExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb20TransactionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.au unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %_ZNK6duckdb9DataTable12GetTableNameB5cxx11Ev.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.023 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %9, align 8, !tbaa !82     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.j) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.124 = phi i1 [ true, %bb.f ], [ %.023, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.023, %bb.g ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.m = load ptr, ptr %8, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.m) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.p = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread: ; preds = %bb.c, %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.t = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread
  call void @_ZdlPv(ptr noundef %i.t) #44
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @_ZdlPv(ptr noundef %i.p) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.124, label %bb.h, label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.124, label %bb.h, label %bb.at

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread
  %.pn.pn.pn90.ph = phi { ptr, i32 } [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn.pn.pn90 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn.pn.pn90.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #23
  br label %bb.at

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %2, align 8, !tbaa !1794   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1794 ; 2 uses
  %.not115 = icmp eq ptr %i.w, %i.y
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %.noexc47 unwind label %bb.ap

.noexc47:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_14TableIOManagerELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %_ZN6duckdb14TableIOManager3GetERNS_9DataTableE.exit unwind label %bb.ap

bb.j:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.085.0116 = phi ptr [ %i.w, %.lr.ph ], [ %i.da, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %.sroa.085.0116, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !1164
  %i.aj = load ptr, ptr %10, align 8, !tbaa !526
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  store i64 0, ptr %12, align 8, !tbaa !2098
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !2100
  %i.ao = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %1, i64 %.sroa.04.0.copyload)
          to label %bb.k unwind label %bb.y       ; 3 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb16ColumnDefinition4NameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(216) %i.ao)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb16ColumnDefinition4TypeEv(ptr noundef nonnull align 8 dereferenceable(216) %i.ao)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb9make_uniqINS_24BoundColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERNS_13ColumnBindingEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2080") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %13, align 8, !tbaa !2101 ; 5 uses
  store ptr null, ptr %13, align 8, !tbaa !2101
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !1821 ; 6 uses
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !1824
  %.not.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = ptrtoint ptr %i.ar to i64
  store i64 %i.au, ptr %i.as, align 8, !tbaa !1647
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !1821
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %11, align 8, !tbaa !1825 ; 10 uses
  %i.ax = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.q, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #46
          to label %.noexc50 unwind label %.loopexit ; 10 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = ptrtoint ptr %i.ar to i64
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !1647
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc50
  %15 = sub i64 %i.ax, %i.ay
  %16 = add i64 %15, -8                           ; 2 uses
  %i.bk = lshr i64 %16, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %16, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader165, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = add i64 %i.ax, -8
  %i.bn = sub i64 %i.bm, %i.ay
  %i.bo = and i64 %i.bn, -8                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep, i64 %i.bo
  %scevgep160 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.bo
  %bound0 = icmp ult ptr %i.bh, %scevgep161
  %bound1 = icmp ult ptr %i.aw, %scevgep159
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader165, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.aw, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.aw, i64 %i.bs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  %i.bt = getelementptr i8, ptr %next.gep162, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep162, align 8, !tbaa !1647, !alias.scope !2108, !noalias !2103
  %wide.load163 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !1647, !alias.scope !2108, !noalias !2103
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1647, !alias.scope !2111, !noalias !2108
  store <2 x i64> %wide.load163, ptr %i.bu, align 8, !tbaa !1647, !alias.scope !2111, !noalias !2108
  %i.bv = getelementptr i8, ptr %next.gep162, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep162, align 8, !tbaa !1647, !alias.scope !2108, !noalias !2103
  store <2 x ptr> splat (ptr null), ptr %i.bv, align 8, !tbaa !1647, !alias.scope !2108, !noalias !2103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !2113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader165

.lr.ph.i.i.i.i.i.i.i.preheader165:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader165, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader165 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader165 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !2106, !noalias !2103
  store i64 %i.bx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !2103, !noalias !2106
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !2106, !noalias !2103
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2114

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc50
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.noexc50 ], [ %i.bq, %middle.block ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bh, ptr %11, align 8, !tbaa !1825
  store ptr %i.ca, ptr %i.ab, align 8, !tbaa !1821
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cb, ptr %i.ac, align 8, !tbaa !1824
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.cc = invoke i64 @_ZNK6duckdb16ColumnDefinition8PhysicalEv(ptr noundef nonnull align 8 dereferenceable(216) %i.ao)
          to label %bb.s unwind label %.loopexit106 ; 2 uses

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cd = load ptr, ptr %i.z, align 8, !tbaa !1164 ; 4 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !1165
  %.not.i.i51 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cf, ptr %i.z, align 8, !tbaa !1164
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.u:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %10, align 8, !tbaa !526  ; 4 uses
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.v, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc54 unwind label %.loopexit.split-lp107

.noexc54:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i52 = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i.i52, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 3 uses
  %.not.i.i.i.i53 = icmp ne i64 %i.cp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i53)
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #46
          to label %.noexc55 unwind label %.loopexit106 ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store i64 %i.cc, ptr %i.cs, align 8, !tbaa !70
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.w, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.w:                                             ; preds = %.noexc55
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.w, %.noexc55
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #44
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cr, ptr %10, align 8, !tbaa !526
  store ptr %i.cu, ptr %i.z, align 8, !tbaa !1164
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cv, ptr %i.ad, align 8, !tbaa !1165
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.t
  %i.cw = load ptr, ptr %13, align 8, !tbaa !2101 ; 3 uses
  %.not.i56 = icmp eq ptr %i.cw, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !45
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(112) %i.cw) #23, !inline_history !2115
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.085.0116, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.da, %i.y
  br i1 %.not, label %._crit_edge, label %bb.j

bb.y:                                             ; preds = %bb.j
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit62

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i57 = icmp eq ptr %i.ar, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit59, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i58

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i58: ; preds = %bb.aa
  %i.dd = load ptr, ptr %i.ar, align 8, !tbaa !45
end_hunk_8
begin_hunk_9_@_ZN6duckdb20OptimisticDataWriter16CreateCollectionERNS_9DataTableERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_30OptimisticWritePartialManagersE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.an = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #46
          to label %bb.m unwind label %bb.x       ; 6 uses

bb.m:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_18RowGroupCollectionEJNS_10shared_ptrINS_13DataTableInfoELb1EEERNS_14TableIOManagerERKNS_6vectorINS_11LogicalTypeELb1ESaIS8_EEERmEEENS2_IT_Lb1EEEDpOT0_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, i8 0, i64 40, i1 false), !noalias !2176
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !265, !noalias !2176
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !266, !noalias !2176
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i8 0, i64 40, i1 false), !noalias !2176
  store ptr %i.an, ptr %0, align 8, !tbaa !1787, !alias.scope !2176
  %i.as = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.n unwind label %bb.y       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load <2 x ptr>, ptr %6, align 16, !tbaa !218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !217 ; 8 uses
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !218
  %.not.i.i.i.i34 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i34, label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEaSEOS2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aw, align 8, !tbaa !268
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !270
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !inline_history !1348
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23, !inline_history !1348
  br label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEaSEOS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i.i35 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.az, %bb.r ], [ %i.bj, %bb.s ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.t, label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEaSEOS2_.exit, !prof !81

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #23
  br label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEaSEOS2_.exit: ; preds = %bb.n, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  %i.bl = icmp eq i32 %4, 0
  br i1 %i.bl, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEaSEOS2_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1302
  %i.bo = load ptr, ptr %3, align 8, !tbaa !1313
  %.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.z

bb.u:                                             ; preds = %.noexc, %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EEC2ERKS2_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.v:                                             ; preds = %_ZN6duckdb14TableIOManager3GetERNS_9DataTableE.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.w:                                             ; preds = %_ZN6duckdb11NumericCastImlvEET_T0_.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_18RowGroupCollectionEJNS_10shared_ptrINS_13DataTableInfoELb1EEERNS_14TableIOManagerERKNS_6vectorINS_11LogicalTypeELb1ESaIS8_EEERmEEENS2_IT_Lb1EEEDpOT0_.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb25OptimisticWriteCollectionESt14default_deleteIS1_EED2Ev.exit

bb.y:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.z:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit
  %.01261 = phi i64 [ 0, %.lr.ph ], [ %i.dv, %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit ]
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !2179, !nonnull !67, !align !68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc36 unwind label %bb.ah

.noexc36:                                         ; preds = %bb.z
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_14TableIOManagerELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by)
          to label %_ZN6duckdb9DataTable17GetTableIOManagerEv.exit unwind label %bb.ah ; 2 uses

_ZN6duckdb9DataTable17GetTableIOManagerEv.exit:   ; preds = %.noexc36
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef nonnull align 8 dereferenceable(144) ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %_ZN6duckdb9DataTable17GetTableIOManagerEv.exit
  %i.ce = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ab unwind label %bb.ah     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72 ; 2 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !2180, !nonnull !67, !align !68
  %i.ch = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #46
          to label %.noexc38 unwind label %bb.ai  ; 6 uses

.noexc38:                                         ; preds = %bb.ab
  invoke void @_ZN6duckdb19PartialBlockManagerC1ENS_12QueryContextERNS_12BlockManagerENS_16PartialBlockTypeENS_12optional_idxEj(ptr noundef nonnull align 8 dereferenceable(128) %i.ch, ptr nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(144) %i.cd, i32 noundef 1, i64 -1, i32 noundef 1048576)
          to label %_ZN6duckdb9make_uniqINS_19PartialBlockManagerEJNS_12QueryContextERNS_12BlockManagerENS_16PartialBlockTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.ac, !noalias !2181

bb.ac:                                            ; preds = %.noexc38
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #44, !noalias !2181
  br label %.body39

_ZN6duckdb9make_uniqINS_19PartialBlockManagerEJNS_12QueryContextERNS_12BlockManagerENS_16PartialBlockTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 80 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !2184 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 88 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2187
  %.not.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb9make_uniqINS_19PartialBlockManagerEJNS_12QueryContextERNS_12BlockManagerENS_16PartialBlockTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.cn = ptrtoint ptr %i.ch to i64
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !2188
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !2184
  br label %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit

bb.ae:                                            ; preds = %_ZN6duckdb9make_uniqINS_19PartialBlockManagerEJNS_12QueryContextERNS_12BlockManagerENS_16PartialBlockTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !2189 ; 10 uses
  %i.cq = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.af, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc42 unwind label %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp

.noexc42:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i.i41 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i41)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #46
          to label %.noexc43 unwind label %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit ; 10 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = ptrtoint ptr %i.ch to i64
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !2188
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.ck
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc43
  %7 = sub i64 %i.cq, %i.cr
  %8 = add i64 %7, -8                             ; 2 uses
  %i.dd = lshr i64 %8, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader88, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.da, i64 8
  %i.df = add i64 %i.cq, -8
  %i.dg = sub i64 %i.df, %i.cr
  %i.dh = and i64 %i.dg, -8                       ; 2 uses
  %scevgep82 = getelementptr i8, ptr %scevgep, i64 %i.dh
  %scevgep83 = getelementptr i8, ptr %i.cp, i64 8
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.dh
  %bound0 = icmp ult ptr %i.da, %scevgep84
  %bound1 = icmp ult ptr %i.cp, %scevgep82
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cp, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.da, i64 %i.dl ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.cp, i64 %i.dl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  %i.dm = getelementptr i8, ptr %next.gep85, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep85, align 8, !tbaa !2188, !alias.scope !2195, !noalias !2190
  %wide.load86 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !2188, !alias.scope !2195, !noalias !2190
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !2188, !alias.scope !2198, !noalias !2195
  store <2 x i64> %wide.load86, ptr %i.dn, align 8, !tbaa !2188, !alias.scope !2198, !noalias !2195
  %i.do = getelementptr i8, ptr %next.gep85, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep85, align 8, !tbaa !2188, !alias.scope !2195, !noalias !2190
  store <2 x ptr> splat (ptr null), ptr %i.do, align 8, !tbaa !2188, !alias.scope !2195, !noalias !2190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !2200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader88

.lr.ph.i.i.i.i.i.i.i.preheader88:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader88, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader88 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader88 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  %i.dq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2188, !alias.scope !2193, !noalias !2190
  store i64 %i.dq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !2188, !alias.scope !2190, !noalias !2193
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !2188, !alias.scope !2193, !noalias !2190
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dr, %i.ck
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2201

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc43
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.da, %.noexc43 ], [ %i.dj, %middle.block ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ag, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.da, ptr %i.cf, align 8, !tbaa !2189
  store ptr %i.dt, ptr %i.cj, align 8, !tbaa !2184
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.du, ptr %i.cl, align 8, !tbaa !2187
  br label %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.dv = add nuw i64 %.01261, 1                  ; 2 uses
  %i.dw = load ptr, ptr %i.bm, align 8, !tbaa !1302
  %i.dx = load ptr, ptr %3, align 8, !tbaa !1313
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 24
  %i.ec = icmp ult i64 %i.dv, %i.eb
  br i1 %i.ec, label %bb.z, label %.loopexit, !llvm.loop !2202

bb.ah:                                            ; preds = %.noexc36, %bb.z, %bb.aa, %_ZN6duckdb9DataTable17GetTableIOManagerEv.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.ai:                                            ; preds = %bb.ab
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body39

_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19PartialBlockManagerESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp: ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46: ; preds = %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp ]
  %i.ef = load ptr, ptr %i.ch, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.ch) #23, !inline_history !2203
  br label %.body39

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb19PartialBlockManagerESt14default_deleteIS1_EED2Ev.exit, %.preheader, %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEaSEOS2_.exit
  %i.ei = load ptr, ptr %i.v, align 8, !tbaa !217 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ej, align 8, !tbaa !268
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !270
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23, !inline_history !1355
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !45
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23, !inline_history !1355
  br label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i47 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i47, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48

bb.an:                                            ; preds = %bb.al
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i49 = phi i32 [ %i.em, %bb.am ], [ %i.ew, %bb.an ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i49, 1
  br i1 %i.ex, label %bb.ao, label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EED2Ev.exit, !prof !81

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23
  br label %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EED2Ev.exit: ; preds = %.loopexit, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i48, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !217 ; 8 uses
  %.not.i.i.i50 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i50, label %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18RowGroupCollectionELb1EED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.ez, align 8, !tbaa !268
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !270
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #23, !inline_history !1745
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #23, !inline_history !1745
  br label %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit

end_hunk_9
begin_hunk_10_@_ZN6duckdb17LocalTableStorage16WriteNewRowGroupEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  tail call void @_ZN6duckdb20OptimisticDataWriter16WriteNewRowGroupERNS_25OptimisticWriteCollectionE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20OptimisticDataWriter16WriteNewRowGroupERNS_25OptimisticWriteCollectionE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.2734", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::vector.997", align 8 ; 11 uses
  %4 = alloca %"class.duckdb::optional_ptr.2749", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb20OptimisticDataWriter12PrepareWriteEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %i.a, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %.02022.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !308 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  %.pre.i.pre.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !70 ; 5 uses
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.h = icmp ult i64 %.pre.i.pre.pre.i.i, %i.g   ; 2 uses
  %.in.v.i.i.i = select i1 %i.h, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !308 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2223

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.h, label %._crit_edge.thread.i.i.i, label %bb.d

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !265
  %i.k = icmp eq ptr %.019.lcssa29.i.i.i, %i.j
  br i1 %i.k, label %select.unfold.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %i.m = phi i64 [ %.pre.i.i, %bb.c ], [ %i.g, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.c ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.n = icmp ult i64 %i.m, %.pre.i.pre.pre.i.i
  br i1 %i.n, label %select.unfold.i.i, label %._ZNSt3setImSt4lessImESaImEE6insertERKm.exit_crit_edge

._ZNSt3setImSt4lessImESaImEE6insertERKm.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre47 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !252
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.d, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.d ] ; 3 uses
  %i.o = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.e
  br i1 %i.o, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70
  %i.r = icmp ult i64 %.pre.i.pre.pre.i.i, %i.q
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.e, %select.unfold.i.i
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %select.unfold.i.i ]
  %i.t = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i64 %.pre.i.pre.pre.i.i, ptr %i.u, align 8, !tbaa !70
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !252
  %i.x = add i64 %i.w, 1                          ; 2 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !252
  %.pre = load i64, ptr %i.c, align 8, !tbaa !2213
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %._ZNSt3setImSt4lessImESaImEE6insertERKm.exit_crit_edge, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.y = phi i64 [ %.pre47, %._ZNSt3setImSt4lessImESaImEE6insertERKm.exit_crit_edge ], [ %i.x, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ]
  %i.z = phi i64 [ %.pre.i.pre.pre.i.i, %._ZNSt3setImSt4lessImESaImEE6insertERKm.exit_crit_edge ], [ %.pre, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ]
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !2213
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load ptr, ptr %0, align 8, !tbaa !2180, !nonnull !67, !align !68
  %i.ad = tail call noundef i64 @_ZN6duckdb8Settings3GetINS_31WriteBufferRowGroupCountSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEmEE5valueEmE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(512) %i.ac)
  %.not = icmp ult i64 %i.y, %i.ad
  br i1 %.not, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !265 ; 2 uses
  %.not3543 = icmp eq ptr %i.af, %i.e
  br i1 %.not3543, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %bb.f
  invoke void @_ZN6duckdb20OptimisticDataWriter11FlushToDiskERNS_25OptimisticWriteCollectionERKNS_6vectorISt17reference_wrapperIKNS_8RowGroupEELb1ESaIS7_EEERKNS3_IlLb1ESaIlEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.u unwind label %bb.y

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.ak = phi ptr [ null, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  %i.al = phi ptr [ null, %.lr.ph ], [ %i.cw, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  %i.am = phi ptr [ null, %.lr.ph ], [ %i.cd, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 5 uses
  %.sroa.032.044 = phi ptr [ %i.af, %.lr.ph ], [ %i.cx, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.044, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !70
  %i.ap = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.ao)
          to label %_ZN6duckdb11NumericCastIlmvEET_T0_.exit unwind label %.loopexit ; 3 uses

_ZN6duckdb11NumericCastIlmvEET_T0_.exit:          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.aq = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.h unwind label %.loopexit36

bb.h:                                             ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.ar = invoke ptr @_ZN6duckdb18RowGroupCollection11GetRowGroupEl(ptr noundef nonnull align 8 dereferenceable(217) %i.aq, i64 noundef %i.ap)
          to label %bb.i unwind label %.loopexit36

bb.i:                                             ; preds = %bb.h
  store ptr %i.ar, ptr %4, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_8RowGroupELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %.loopexit36

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %4, align 8, !tbaa !2224  ; 2 uses
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !2226
  %.not.i.i = icmp eq ptr %i.am, %i.at
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.as to i64
  store i64 %i.au, ptr %i.am, align 8
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !2229
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !2229
  %.pre48 = load ptr, ptr %i.ai, align 8, !tbaa !2230
  %.pre49 = load ptr, ptr %i.aj, align 8, !tbaa !2231
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %2, align 8, !tbaa !2232  ; 7 uses
  %i.ay = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.m, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc unwind label %.loopexit.split-lp37

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #46
          to label %.noexc18 unwind label %.loopexit36 ; 8 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = ptrtoint ptr %i.as to i64
  store i64 %i.bk, ptr %i.bj, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.am
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc18
  %i.bl = ptrtoaddr ptr %i.bi to i64
  %5 = sub i64 %i.ay, %i.az
  %6 = add i64 %5, -8                             ; 2 uses
  %i.bm = lshr i64 %6, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  %i.bo = sub i64 %i.bl, %i.az
  %diff.check = icmp ult i64 %i.bo, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.ax, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bs ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.ax, i64 %i.bs ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.bt = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep69, align 8, !alias.scope !2236, !noalias !2233
  %wide.load70 = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !2236, !noalias !2233
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2233, !noalias !2236
  store <2 x i64> %wide.load70, ptr %i.bu, align 8, !alias.scope !2233, !noalias !2236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !2238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader72

.lr.ph.i.i.i.i.i.i.i.preheader72:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader72, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader72 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader72 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.bw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2236, !noalias !2233
  store i64 %i.bw, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !2233, !noalias !2236
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.am
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2239

_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc18
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc18 ], [ %i.bq, %middle.block ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.bi, ptr %2, align 8, !tbaa !2232
  store ptr %i.bz, ptr %i.ag, align 8, !tbaa !2229
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.ca, ptr %i.ah, align 8, !tbaa !2226
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.k
  %i.cb = phi ptr [ %i.ak, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre49, %bb.k ] ; 3 uses
  %i.cc = phi ptr [ %i.al, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre48, %bb.k ] ; 3 uses
  %i.cd = phi ptr [ %i.bz, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.aw, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit
  store i64 %i.ap, ptr %i.cc, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.ce, ptr %i.ai, align 8, !tbaa !2230
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.p:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit
  %i.cf = load ptr, ptr %3, align 8, !tbaa !1985  ; 4 uses
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 5 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.q, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #46
          to label %.noexc21 unwind label %.loopexit ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.ci ; 2 uses
  store i64 %i.ap, ptr %i.cr, align 8, !tbaa !70
  %i.cs = icmp sgt i64 %i.ci, 0
  br i1 %i.cs, label %bb.r, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.r:                                             ; preds = %.noexc21
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %i.cf, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.r, %.noexc21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #44
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.cq, ptr %3, align 8, !tbaa !1985
  store ptr %i.ct, ptr %i.ai, align 8, !tbaa !2230
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co ; 2 uses
  store ptr %i.cu, ptr %i.aj, align 8, !tbaa !2231
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.o
  %i.cv = phi ptr [ %i.cu, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.cb, %bb.o ]
  %i.cw = phi ptr [ %i.ct, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ce, %bb.o ]
  %i.cx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.032.044) #48 ; 2 uses
  %.not35 = icmp eq ptr %i.cx, %i.e
  br i1 %.not35, label %._crit_edge, label %bb.g

.loopexit:                                        ; preds = %bb.g, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit36:                                      ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit, %bb.h, %bb.i, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp37:                             ; preds = %bb.m
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp37, %.loopexit36
  %lpad.phi40 = phi { ptr, i32 } [ %lpad.loopexit38, %.loopexit36 ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.z

bb.u:                                             ; preds = %._crit_edge
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !205
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.cy)
          to label %_ZNSt3setImSt4lessImESaImEE5clearEv.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #45
  unreachable

_ZNSt3setImSt4lessImESaImEE5clearEv.exit:         ; preds = %bb.u
  store ptr null, ptr %i.d, align 8, !tbaa !205
  store ptr %i.e, ptr %i.ae, align 8, !tbaa !265
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.e, ptr %i.db, align 8, !tbaa !266
  store i64 0, ptr %i.ab, align 8, !tbaa !252
  %i.dc = load ptr, ptr %3, align 8, !tbaa !1985  ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt3setImSt4lessImESaImEE5clearEv.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #44
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt3setImSt4lessImESaImEE5clearEv.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dd = load ptr, ptr %2, align 8, !tbaa !2232  ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.dd, null
end_hunk_10
begin_hunk_11_@_ZN6duckdb20OptimisticDataWriter23WriteUnflushedRowGroupsERNS_25OptimisticWriteCollectionE:bb.a
  %.027 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.027, label %bb.g, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.027, label %bb.g, label %bb.an

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3264 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.l) #23
  br label %bb.an

._crit_edge:                                      ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !252
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.ah, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %i.v = phi i64 [ %i.e, %.lr.ph ], [ %i.ao, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ]
  %storemerge73 = phi i64 [ %i.e, %.lr.ph ], [ %i.ap, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ] ; 5 uses
  %.02022.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !308 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.h ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70   ; 2 uses
  %i.y = icmp ult i64 %storemerge73, %i.x         ; 2 uses
  %.in.v.i.i.i = select i1 %i.y, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !308 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2223

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.y, label %._crit_edge.thread.i.i.i, label %bb.j

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.h
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.i, %bb.h ] ; 4 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !265
  %i.aa = icmp eq ptr %.019.lcssa29.i.i.i, %i.z
  br i1 %i.aa, label %select.unfold.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %i.ac = phi i64 [ %.pre.i.i, %bb.i ], [ %i.x, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.i ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ad = icmp ult i64 %i.ac, %storemerge73
  br i1 %i.ad, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.j, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.j ] ; 3 uses
  %i.ae = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.i
  br i1 %i.ae, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !70
  %i.ah = icmp ult i64 %storemerge73, %i.ag
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.k, %select.unfold.i.i
  %i.ai = phi i1 [ %i.ah, %bb.k ], [ true, %select.unfold.i.i ]
  %i.aj = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %storemerge73, ptr %i.ak, align 8, !tbaa !70
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #23
  %i.al = load i64, ptr %i.k, align 8, !tbaa !252
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.k, align 8, !tbaa !252
  %.pre = load i64, ptr %i.d, align 8, !tbaa !2213
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %bb.j, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.an = phi i64 [ %i.v, %bb.j ], [ %.pre, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i ]
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !2213
  %i.ap = add i64 %storemerge73, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !2240

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !265 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not74 = icmp eq ptr %i.ar, %i.as
  br i1 %.not74, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.m

._crit_edge78:                                    ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %bb.l
  invoke void @_ZN6duckdb20OptimisticDataWriter11FlushToDiskERNS_25OptimisticWriteCollectionERKNS_6vectorISt17reference_wrapperIKNS_8RowGroupEELb1ESaIS7_EEERKNS3_IlLb1ESaIlEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.aa unwind label %bb.ad

bb.m:                                             ; preds = %.lr.ph77, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.ax = phi ptr [ null, %.lr.ph77 ], [ %i.di, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  %i.ay = phi ptr [ null, %.lr.ph77 ], [ %i.dj, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  %i.az = phi ptr [ null, %.lr.ph77 ], [ %i.cq, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 5 uses
  %.sroa.057.075 = phi ptr [ %i.ar, %.lr.ph77 ], [ %i.dk, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.057.075, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !70
  %i.bc = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.bb)
          to label %_ZN6duckdb11NumericCastIlmvEET_T0_.exit unwind label %.loopexit ; 3 uses

_ZN6duckdb11NumericCastIlmvEET_T0_.exit:          ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bd = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.n unwind label %.loopexit66

bb.n:                                             ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.be = invoke ptr @_ZN6duckdb18RowGroupCollection11GetRowGroupEl(ptr noundef nonnull align 8 dereferenceable(217) %i.bd, i64 noundef %i.bc)
          to label %bb.o unwind label %.loopexit66

bb.o:                                             ; preds = %bb.n
  store ptr %i.be, ptr %6, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_8RowGroupELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.p unwind label %.loopexit66

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %6, align 8, !tbaa !2224  ; 2 uses
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !2226
  %.not.i.i = icmp eq ptr %i.az, %i.bg
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = ptrtoint ptr %i.bf to i64
  store i64 %i.bh, ptr %i.az, align 8
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !2229
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.at, align 8, !tbaa !2229
  %.pre86 = load ptr, ptr %i.av, align 8, !tbaa !2230
  %.pre87 = load ptr, ptr %i.aw, align 8, !tbaa !2231
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit

bb.r:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %4, align 8, !tbaa !2232  ; 7 uses
  %i.bl = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.s, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc unwind label %.loopexit.split-lp67

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #46
          to label %.noexc35 unwind label %.loopexit66 ; 8 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.bx = ptrtoint ptr %i.bf to i64
  store i64 %i.bx, ptr %i.bw, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.az
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc35
  %i.by = ptrtoaddr ptr %i.bv to i64
  %7 = sub i64 %i.bl, %i.bm
  %8 = add i64 %7, -8                             ; 2 uses
  %i.bz = lshr i64 %8, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.cb = sub i64 %i.by, %i.bm
  %diff.check = icmp ult i64 %i.cb, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bv, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bk, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cf ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.bk, i64 %i.cf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  %i.cg = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep121, align 8, !alias.scope !2244, !noalias !2241
  %wide.load122 = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !2244, !noalias !2241
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !2241, !noalias !2244
  store <2 x i64> %wide.load122, ptr %i.ch, align 8, !alias.scope !2241, !noalias !2244
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !2246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader124

.lr.ph.i.i.i.i.i.i.i.preheader124:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader124, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader124 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader124 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !2244, !noalias !2241
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !2241, !noalias !2244
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.az
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2247

_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc35
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.noexc35 ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bk) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.bv, ptr %4, align 8, !tbaa !2232
  store ptr %i.cm, ptr %i.at, align 8, !tbaa !2229
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cn, ptr %i.au, align 8, !tbaa !2226
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.q
  %i.co = phi ptr [ %i.ax, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre87, %bb.q ] ; 3 uses
  %i.cp = phi ptr [ %i.ay, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre86, %bb.q ] ; 3 uses
  %i.cq = phi ptr [ %i.cm, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bj, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i = icmp eq ptr %i.cp, %i.co
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit
  store i64 %i.bc, ptr %i.cp, align 8, !tbaa !70
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  store ptr %i.cr, ptr %i.av, align 8, !tbaa !2230
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.v:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE9push_backEOS4_.exit
  %i.cs = load ptr, ptr %5, align 8, !tbaa !1985  ; 4 uses
  %i.ct = ptrtoint ptr %i.co to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.w, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i36 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i36)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #46
          to label %.noexc38 unwind label %.loopexit ; 4 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store i64 %i.bc, ptr %i.de, align 8, !tbaa !70
  %i.df = icmp sgt i64 %i.cv, 0
  br i1 %i.df, label %bb.x, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc38
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr align 8 %i.cs, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cs) #44
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %i.dd, ptr %5, align 8, !tbaa !1985
  store ptr %i.dg, ptr %i.av, align 8, !tbaa !2230
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db ; 2 uses
  store ptr %i.dh, ptr %i.aw, align 8, !tbaa !2231
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.u
  %i.di = phi ptr [ %i.dh, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.co, %bb.u ]
  %i.dj = phi ptr [ %i.dg, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.cr, %bb.u ]
  %i.dk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.057.075) #48 ; 2 uses
  %.not = icmp eq ptr %i.dk, %i.as
  br i1 %.not, label %._crit_edge78, label %bb.m

.loopexit:                                        ; preds = %bb.m, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit66:                                      ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit, %bb.n, %bb.o, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp67:                             ; preds = %bb.s
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp67, %.loopexit66
  %lpad.phi70 = phi { ptr, i32 } [ %lpad.loopexit68, %.loopexit66 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ae

bb.aa:                                            ; preds = %._crit_edge78
  %i.dl = load ptr, ptr %5, align 8, !tbaa !1985  ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef nonnull %i.dl) #44
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dm = load ptr, ptr %4, align 8, !tbaa !2232  ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.dm) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb8RowGroupEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ah

bb.ad:                                            ; preds = %._crit_edge78
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.ad ], [ %lpad.phi70, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
end_hunk_11
begin_hunk_12_@_ZN6duckdb17LocalTableStorage15AppendToIndexesERNS_15DuckTransactionERNS_16TableAppendStateE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !82 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ci) #44
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #44
  %.not.i.i.i.i.i56 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i56, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !706

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %bb.at
  %i.cl = load ptr, ptr %i.bz, align 8, !tbaa !707
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !708
  %i.co = shl i64 %i.cn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.co, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !707 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.cp) #44
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.au, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !82 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.ct) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !82 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZN6duckdb9ErrorDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.cx) #44
  br label %_ZN6duckdb9ErrorDataD2Ev.exit

_ZN6duckdb9ErrorDataD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !217 ; 8 uses
  %.not.i.i.i57 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i57, label %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.db, align 8, !tbaa !268
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !270
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !45
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !1745
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !1745
  br label %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit

bb.ax:                                            ; preds = %bb.av
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i58 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i58, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i = phi i32 [ %i.de, %bb.ay ], [ %i.do, %bb.az ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.ba, label %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit, !prof !81

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23
  br label %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit: ; preds = %_ZN6duckdb9ErrorDataD2Ev.exit, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK6duckdb9DataTable10HasIndexesEv.exit, %_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev.exit
  ret void

bb.bc:                                            ; preds = %bb.as, %.body
  %.merged48 = phi { ptr, i32 } [ %.merged49, %bb.as ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.v, %bb.bc, %bb.u
  %.merged = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %.merged48, %bb.bc ], [ %i.ay, %bb.v ]
  call void @_ZN6duckdb10shared_ptrINS_13DataTableInfoELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.merged

bb.be:                                            ; preds = %bb.ai
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #45
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define range(i64 -1152921504606846977, 1152921504606846975) i64 @_ZN6duckdb17LocalTableStorage26CreateOptimisticCollectionENS_10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2205 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2209
  %.not.i.i2 = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = load i64, ptr %1, align 8, !tbaa !1787
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1787
  store ptr null, ptr %1, align 8, !tbaa !1787
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !2205
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2204
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !2204 ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #46
          to label %.noexc3 unwind label %bb.g    ; 11 uses

.noexc3:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i64, ptr %1, align 8, !tbaa !1787
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1787
  store ptr null, ptr %1, align 8, !tbaa !1787
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc3
  %2 = sub i64 %i.k, %i.l
  %3 = add i64 %2, -8                             ; 2 uses
  %i.x = lshr i64 %3, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.z = add i64 %i.k, -8
  %i.aa = sub i64 %i.z, %i.l
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep9 = getelementptr i8, ptr %i.j, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep9
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.ah = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !1787, !alias.scope !2277, !noalias !2272
  %wide.load11 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !1787, !alias.scope !2277, !noalias !2272
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1787, !alias.scope !2280, !noalias !2277
  store <2 x i64> %wide.load11, ptr %i.ai, align 8, !tbaa !1787, !alias.scope !2280, !noalias !2277
  %i.aj = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !1787, !alias.scope !2277, !noalias !2272
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !1787, !alias.scope !2277, !noalias !2272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !2282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.i.preheader13:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.al = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1787, !alias.scope !2275, !noalias !2272
  store i64 %i.al, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1787, !alias.scope !2272, !noalias !2275
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1787, !alias.scope !2275, !noalias !2272
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2283

_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc3
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc3 ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !2204
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !2205
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !2209
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.c
  %i.aq = phi ptr [ %i.u, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.pre, %bb.c ]
  %i.ar = phi ptr [ %i.ao, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.i, %bb.c ]
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret i64 %i.aw

bb.g:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb17LocalTableStorage23GetOptimisticCollectionENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(304) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK6duckdb10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  ret ptr %i.e

bb.e:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #23 ; 0 uses
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2205
  %i.e = load ptr, ptr %0, align 8, !tbaa !2204   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !70
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_25OptimisticWriteCollectionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !1037

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g
end_hunk_12
begin_hunk_13_@_ZN6duckdb17IsForeignKeyIndexERKNS_6vectorINS_13PhysicalIndexELb1ESaIS1_EEERNS_5IndexENS_14ForeignKeyTypeE:bb.a
  br i1 %.not, label %.preheader39, label %.critedge

.preheader39:                                     ; preds = %bb.d
  %.not3647 = icmp eq ptr %i.k, %i.j              ; 2 uses
  %.not37.not43 = icmp eq ptr %i.r, %i.q
  %or.cond = or i1 %.not3647, %.not37.not43
  br i1 %or.cond, label %.critedge, label %.preheader

bb.e:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.033.048, i64 8 ; 2 uses
  %.not36 = icmp eq ptr %i.v, %i.j
  br i1 %.not36, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.preheader39, %bb.e
  %.sroa.033.048 = phi ptr [ %i.v, %bb.e ], [ %i.k, %.preheader39 ] ; 2 uses
  %i.w = load i64, ptr %.sroa.033.048, align 8, !tbaa !1462
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.029.044, i64 8 ; 2 uses
  %.not37.not = icmp eq ptr %i.x, %i.q
  br i1 %.not37.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.f
  %.sroa.029.044 = phi ptr [ %i.r, %.preheader ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = load i64, ptr %.sroa.029.044, align 8, !tbaa !70
  %.not28 = icmp eq i64 %i.w, %i.y
  br i1 %.not28, label %bb.e, label %bb.f

.critedge:                                        ; preds = %bb.e, %bb.f, %.preheader39, %bb.d, %bb.b, %bb.c
  %.4 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %.not3647, %.preheader39 ], [ false, %bb.f ], [ true, %bb.e ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14TableIndexList15SerializeToDiskENS_12QueryContextERKNS_22IndexSerializationInfoE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::IndexSerializationResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::IndexStorageInfo", align 8 ; 24 uses
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #47
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !712  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !712  ; 2 uses
  %.not77 = icmp eq ptr %i.c, %i.e
  br i1 %.not77, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.0.lcssa = phi i64 [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %spec.select, %bb.e ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.0.lcssa)
          to label %bb.g unwind label %bb.h

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.e
  %.079 = phi i64 [ %spec.select, %bb.e ], [ 0, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %.sroa.064.078 = phi ptr [ %i.o, %bb.e ], [ %i.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  %i.g = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10IndexEntryESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.064.078)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_5IndexESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(104) %i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = zext i1 %i.m to i64
  %spec.select = add i64 %.079, %i.n              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.064.078, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.g:                                             ; preds = %._crit_edge
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !712  ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !712  ; 2 uses
  %.not6980 = icmp eq ptr %i.q, %i.r
  br i1 %.not6980, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 144
  br label %bb.i

._crit_edge84:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit, %bb.g
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #23 ; 0 uses
  ret void

bb.h:                                             ; preds = %._crit_edge
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %.lr.ph83, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit
  %.sroa.060.081 = phi ptr [ %i.q, %.lr.ph83 ], [ %i.fh, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.an = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10IndexEntryESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.060.081)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_5IndexESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.k unwind label %bb.r       ; 5 uses

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(104) %i.ap)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  br i1 %i.at, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 112 ; 2 uses
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !3083 ; 5 uses
  %i.aw = load ptr, ptr %i.t, align 8, !tbaa !3086
  %.not.i.i36 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %i.au to i64
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !3083
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.az, ptr %i.s, align 8, !tbaa !3083
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = load ptr, ptr %0, align 8, !tbaa !3087  ; 7 uses
  %i.bb = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.p, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #46
          to label %.noexc37 unwind label %.loopexit ; 8 uses

.noexc37:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  %i.bn = ptrtoint ptr %i.au to i64
  store i64 %i.bn, ptr %i.bm, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc37
  %i.bo = ptrtoaddr ptr %i.bl to i64
  %5 = sub i64 %i.bb, %i.bc
  %6 = add i64 %5, -8                             ; 2 uses
  %i.bp = lshr i64 %6, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check116 = icmp ult i64 %6, 24
  %i.br = sub i64 %i.bo, %i.bc
  %diff.check114 = icmp ult i64 %i.br, 32
  %or.cond = or i1 %min.iters.check116, %diff.check114
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader133, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec119 = and i64 %i.bq, 4611686018427387900  ; 3 uses
  %i.bs = shl i64 %n.vec119, 3                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bl, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ba, i64 %i.bs
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph117
  %index121 = phi i64 [ 0, %vector.ph117 ], [ %index.next126, %vector.body120 ] ; 2 uses
  %i.bv = shl i64 %index121, 3                    ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.bl, i64 %i.bv ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.ba, i64 %i.bv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  %i.bw = getelementptr i8, ptr %next.gep123, i64 16
  %wide.load124 = load <2 x i64>, ptr %next.gep123, align 8, !alias.scope !3091, !noalias !3088
  %wide.load125 = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !3091, !noalias !3088
  %i.bx = getelementptr i8, ptr %next.gep122, i64 16
  store <2 x i64> %wide.load124, ptr %next.gep122, align 8, !alias.scope !3088, !noalias !3091
  store <2 x i64> %wide.load125, ptr %i.bx, align 8, !alias.scope !3088, !noalias !3091
  %index.next126 = add nuw i64 %index121, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next126, %n.vec119
  br i1 %i.by, label %middle.block127, label %vector.body120, !llvm.loop !3093

middle.block127:                                  ; preds = %vector.body120
  %cmp.n128 = icmp eq i64 %i.bq, %n.vec119
  br i1 %cmp.n128, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader133

.lr.ph.i.i.i.i.i.i.i.preheader133:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block127
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block127 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block127 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader133, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader133 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader133 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3088)
  call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  %i.bz = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !3091, !noalias !3088
  store i64 %i.bz, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !3088, !noalias !3091
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3094

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block127, %.noexc37
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc37 ], [ %i.bt, %middle.block127 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.bl, ptr %0, align 8, !tbaa !3087
  store ptr %i.cc, ptr %i.s, align 8, !tbaa !3083
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cd, ptr %i.t, align 8, !tbaa !3086
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit

bb.r:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cf = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 200
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::IndexStorageInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(392) %i.ap, ptr %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.u, align 8, !tbaa !853 ; 18 uses
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !999
  %.not.i.i38 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i38, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 3 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !183
  %i.cl = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.w
  br i1 %i.cm, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.cn = load i64, ptr %i.x, align 8, !tbaa !185 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.cp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !82
  %i.cq = load i64, ptr %i.w, align 8, !tbaa !184
  store i64 %i.cq, ptr %i.ck, align 8, !tbaa !184
  %.pre = load i64, ptr %i.x, align 8, !tbaa !185
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %i.cr = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cn, %bb.v ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !185
  store ptr %i.w, ptr %4, align 8, !tbaa !82
  store i64 0, ptr %i.x, align 8, !tbaa !185
  store i8 0, ptr %i.w, align 8, !tbaa !184
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cu = load i64, ptr %i.y, align 8, !tbaa !858
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !858
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.z, align 8, !tbaa !818 ; 3 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !818
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cy = load i64, ptr %i.aa, align 8, !tbaa !820 ; 2 uses
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !820
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  %i.da = load ptr, ptr %i.ab, align 8, !tbaa !884 ; 3 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !506
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.dc = load i64, ptr %i.ac, align 8, !tbaa !886
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !886
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !887
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 88 ; 4 uses
  store ptr null, ptr %i.de, align 8, !tbaa !889
  %i.df = icmp eq ptr %i.cw, %i.ae
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !818
  %i.dg = load ptr, ptr %i.ae, align 8, !tbaa !889
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !889
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.dh = phi ptr [ %i.de, %bb.w ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !890
  %i.dk = urem i64 %i.dj, %i.cy
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dk
  store ptr %i.cz, ptr %i.dl, align 8, !tbaa !505
  br label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit

_ZN6duckdb16IndexStorageInfoC2EOS0_.exit:         ; preds = %bb.x, %bb.y
  store i64 0, ptr %i.af, align 8, !tbaa !892
  store i64 1, ptr %i.aa, align 8, !tbaa !820
  store ptr null, ptr %i.ae, align 8, !tbaa !889
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !818
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.dn = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !874
  store <2 x ptr> %i.dn, ptr %i.dm, align 8, !tbaa !874
  %i.do = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.dp = load ptr, ptr %i.ah, align 8, !tbaa !873
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !873
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 120
  %i.dr = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !877
  store <2 x ptr> %i.dr, ptr %i.dq, align 8, !tbaa !877
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !878
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !883
  %i.dv = load ptr, ptr %i.u, align 8, !tbaa !853
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 160
  store ptr %i.dw, ptr %i.u, align 8, !tbaa !853
  br label %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit

bb.z:                                             ; preds = %bb.t
  invoke void @_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.ci, ptr noundef nonnull align 8 dereferenceable(160) %4)
          to label %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit unwind label %bb.ag

_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit, %bb.z
  %i.dx = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN6duckdb6vectorINS_16IndexStorageInfoELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.aa unwind label %.loopexit70 ; 2 uses

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit
  %i.dy = load ptr, ptr %i.s, align 8, !tbaa !3083 ; 5 uses
  %i.dz = load ptr, ptr %i.t, align 8, !tbaa !3086
  %.not.i.i40 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i40, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = ptrtoint ptr %i.dx to i64
  store i64 %i.ea, ptr %i.dy, align 8
  %i.eb = load ptr, ptr %i.s, align 8, !tbaa !3083
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ec, ptr %i.s, align 8, !tbaa !3083
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit55

bb.ac:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr %0, align 8, !tbaa !3087  ; 7 uses
  %i.ee = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775800
  br i1 %i.eh, label %bb.ad, label %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc53 unwind label %.loopexit.split-lp71

.noexc53:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41: ; preds = %bb.ac
  %i.ei = ashr exact i64 %i.eg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i.i42, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 1152921504606846975)
  %i.em = select i1 %i.ek, i64 1152921504606846975, i64 %i.el ; 3 uses
  %.not.i.i.i.i43 = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43)
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #46
          to label %.noexc54 unwind label %.loopexit70 ; 8 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  %i.eq = ptrtoint ptr %i.dx to i64
  store i64 %i.eq, ptr %i.ep, align 8
  %.not10.i.i.i.i.i.i.i44 = icmp eq ptr %i.ed, %i.dy
  br i1 %.not10.i.i.i.i.i.i.i44, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i49, label %.lr.ph.i.i.i.i.i.i.i45.preheader

.lr.ph.i.i.i.i.i.i.i45.preheader:                 ; preds = %.noexc54
  %i.er = ptrtoaddr ptr %i.eo to i64
  %7 = sub i64 %i.ee, %i.ef
  %8 = add i64 %7, -8                             ; 2 uses
  %i.es = lshr i64 %8, 3
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.eu = sub i64 %i.er, %i.ef
  %diff.check = icmp ult i64 %i.eu, 32
  %or.cond131 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond131, label %.lr.ph.i.i.i.i.i.i.i45.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader
  %n.vec = and i64 %i.et, 4611686018427387900     ; 3 uses
  %i.ev = shl i64 %n.vec, 3                       ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eo, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ed, i64 %i.ev
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %i.ey ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.ed, i64 %i.ey ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  %i.ez = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 8, !alias.scope !3098, !noalias !3095
  %wide.load111 = load <2 x i64>, ptr %i.ez, align 8, !alias.scope !3098, !noalias !3095
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3095, !noalias !3098
  store <2 x i64> %wide.load111, ptr %i.fa, align 8, !alias.scope !3095, !noalias !3098
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !3100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i49, label %.lr.ph.i.i.i.i.i.i.i45.preheader132

.lr.ph.i.i.i.i.i.i.i45.preheader132:              ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader, %middle.block
  %.012.i.i.i.i.i.i.i46.ph = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %i.ew, %middle.block ]
  %.0911.i.i.i.i.i.i.i47.ph = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i.i45:                           ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader132, %.lr.ph.i.i.i.i.i.i.i45
  %.012.i.i.i.i.i.i.i46 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.012.i.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader132 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i47 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.0911.i.i.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader132 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  %i.fc = load i64, ptr %.0911.i.i.i.i.i.i.i47, align 8, !alias.scope !3098, !noalias !3095
  store i64 %i.fc, ptr %.012.i.i.i.i.i.i.i46, align 8, !alias.scope !3095, !noalias !3098
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i47, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i46, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i48 = icmp eq ptr %i.fd, %i.dy
  br i1 %.not.i.i.i.i.i.i.i48, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i49, label %.lr.ph.i.i.i.i.i.i.i45, !llvm.loop !3101

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i49: ; preds = %.lr.ph.i.i.i.i.i.i.i45, %middle.block, %.noexc54
  %.0.lcssa.i.i.i.i.i.i.i50 = phi ptr [ %i.eo, %.noexc54 ], [ %i.ew, %middle.block ], [ %i.fe, %.lr.ph.i.i.i.i.i.i.i45 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i50, i64 8
  %.not.i23.i.i.i51 = icmp eq ptr %i.ed, null
  br i1 %.not.i23.i.i.i51, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i52, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i49
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i52

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i52: ; preds = %bb.ae, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i49
  store ptr %i.eo, ptr %0, align 8, !tbaa !3087
  store ptr %i.ff, ptr %i.s, align 8, !tbaa !3083
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.em
  store ptr %i.fg, ptr %i.t, align 8, !tbaa !3086
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit55

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit55: ; preds = %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i52, %bb.ab
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.n, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %_ZNSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE9push_backEOS4_.exit55
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.060.081, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.fh, %i.r
  br i1 %.not69, label %._crit_edge84, label %bb.i

bb.af:                                            ; preds = %bb.s
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %bb.z
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit70:                                      ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit, %_ZNKSt6vectorISt17reference_wrapperIKN6duckdb16IndexStorageInfoEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp71:                             ; preds = %bb.ad
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit70, %.loopexit.split-lp71, %bb.ag
  %.pn29 = phi { ptr, i32 } [ %i.fj, %bb.ag ], [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp71 ]
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %4) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.ah ], [ %i.fi, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.ai, %bb.h, %bb.f
  %.pn34 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.am, %bb.h ], [ %.pn29.pn, %bb.ai ], [ %i.ce, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb24IndexSerializationResultD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #23
  %i.fk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #23 ; 0 uses
  resume { ptr, i32 } %.pn34
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 57646075230342348
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.232) #47
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !999
  %i.d = load ptr, ptr %0, align 8, !tbaa !856    ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 160
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !853  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 160
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #46 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  tail call void @_ZN6duckdb16IndexStorageInfoC2EOS0_(ptr noundef nonnull align 8 dereferenceable(160) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0911.i.i.i.i) #23
  tail call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %.0911.i.i.i.i) #23
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 160 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 160
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !3102

_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !856
  br label %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit, %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE11_M_allocateEm.exit
  %i.r = phi ptr [ %.pre, %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #44
  br label %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !856
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.s, ptr %i.j, align 8, !tbaa !853
  %i.t = getelementptr inbounds nuw [160 x i8], ptr %i.o, i64 %1
  store ptr %i.t, ptr %i.b, align 8, !tbaa !999
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb16IndexStorageInfoESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN6duckdb6vectorINS_16IndexStorageInfoELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !997    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !997  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZN6duckdb6vectorINS_16IndexStorageInfoELb1ESaIS1_EE3getILb1EEERS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.234, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
end_hunk_13
begin_hunk_14_@_ZN6duckdb25WriteAheadLogDeserializer11ReplayAlterEv:bb.a
  %i.dq = load ptr, ptr %i.cl, align 8, !tbaa !521
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store ptr %i.dr, ptr %i.cl, align 8, !tbaa !521
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.an:                                            ; preds = %bb.aj
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.db, ptr noundef nonnull align 8 dereferenceable(32) %i.da)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ao

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.an
  %i.ds = add i64 %.sroa.8194.0213, 1             ; 2 uses
  %.not.i = icmp eq i64 %i.ds, %i.ci
  br i1 %.not.i, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit, label %bb.ad

bb.ao:                                            ; preds = %bb.an, %.noexc.i.i, %bb.ai, %bb.ah, %bb.af, %bb.ae, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ap:                                            ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.dv, ptr %10, align 8, !tbaa !183
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.dw, align 8, !tbaa !185
  store i8 0, ptr %i.dv, align 8, !tbaa !184
  invoke void @_ZN6duckdb11BindContext12AddBaseTableEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIS6_Lb1ESaIS6_EEERKNS9_INS_11LogicalTypeELb1ESaISE_EEERNS9_INS_11ColumnIndexELb1ESaISJ_EEERNS_17TableCatalogEntryEb(ptr noundef nonnull align 8 dereferenceable(112) %i.du, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(448) %i.bo, i1 noundef zeroext true)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.dx = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dv
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.dx) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.dz = invoke noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = load ptr, ptr %i.bj, align 8, !tbaa !3588, !nonnull !67, !align !68
  invoke void @_ZN6duckdb11IndexBinderC1ERNS_6BinderERNS_13ClientContextENS_12optional_ptrINS_17TableCatalogEntryELb1EEENS5_INS_15CreateIndexInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(120) %11, ptr noundef nonnull align 8 dereferenceable(472) %i.dz, ptr noundef nonnull align 8 dereferenceable(512) %i.ea, ptr null, ptr null)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNK6duckdb16UniqueConstraint17GetLogicalIndexesERKNS_10ColumnListE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.1935") align 8 %13, ptr noundef nonnull align 8 dereferenceable(49) %i.bg, ptr noundef nonnull align 8 dereferenceable(105) %i.bp)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.eb = load ptr, ptr %13, align 8, !tbaa !1794 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1794 ; 2 uses
  %.not214 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not214, label %._crit_edge, label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.at
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.ay

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.eh = load ptr, ptr %9, align 8, !tbaa !3458  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !3458 ; 2 uses
  %.not205217 = icmp eq ptr %i.eh, %i.ej
  br i1 %.not205217, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %._crit_edge
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  br label %bb.bk

bb.au:                                            ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.av:                                            ; preds = %bb.ap
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.dv
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.eo) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dc

bb.aw:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ax:                                            ; preds = %bb.as
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb12LogicalIndexESaIS1_EED2Ev.exit172

bb.ay:                                            ; preds = %.lr.ph216, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0183.0215 = phi ptr [ %i.eb, %.lr.ph216 ], [ %i.gn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %.sroa.0183.0215, align 8, !tbaa !70
  %i.es = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10ColumnList9GetColumnENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105) %i.bp, i64 %.sroa.0.0.copyload)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK6duckdb16ColumnDefinition7GetNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(216) %i.es)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.3075") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.bh

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ba
  %i.et = load ptr, ptr %15, align 8, !tbaa !3643
  store ptr null, ptr %15, align 8, !tbaa !3643
  store ptr %i.et, ptr %14, align 8, !tbaa !3645
  %i.eu = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ee
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.eu) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN6duckdb16ExpressionBinder4BindERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_11LogicalTypeELb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1871") align 8 %17, ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr null, i1 noundef zeroext true)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.ew = load ptr, ptr %i.ef, align 8, !tbaa !1821 ; 6 uses
  %i.ex = load ptr, ptr %i.eg, align 8, !tbaa !1824
  %.not.i.i113 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i.i113, label %bb.bc, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.bb
  %i.ey = load i64, ptr %17, align 8, !tbaa !1647
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !1647
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ez, ptr %i.ef, align 8, !tbaa !1821
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.bc:                                            ; preds = %bb.bb
  %i.fa = load ptr, ptr %12, align 8, !tbaa !1825 ; 10 uses
  %i.fb = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.fc = ptrtoint ptr %i.fa to i64               ; 3 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 3 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775800
  br i1 %i.fe, label %bb.bd, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc114 unwind label %.loopexit.split-lp207

.noexc114:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bc
  %i.ff = ashr exact i64 %i.fd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 1152921504606846975)
  %i.fj = select i1 %i.fh, i64 1152921504606846975, i64 %i.fi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #46
          to label %.noexc115 unwind label %.loopexit206 ; 10 uses

.noexc115:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd
  %i.fn = load i64, ptr %17, align 8, !tbaa !1647
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !1647
  store ptr null, ptr %17, align 8, !tbaa !1647
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fa, %i.ew
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc115
  %23 = sub i64 %i.fb, %i.fc
  %24 = add i64 %23, -8                           ; 2 uses
  %i.fo = lshr i64 %24, 3
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %24, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader286, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fl, i64 8
  %i.fq = add i64 %i.fb, -8
  %i.fr = sub i64 %i.fq, %i.fc
  %i.fs = and i64 %i.fr, -8                       ; 2 uses
  %scevgep280 = getelementptr i8, ptr %scevgep, i64 %i.fs
  %scevgep281 = getelementptr i8, ptr %i.fa, i64 8
  %scevgep282 = getelementptr i8, ptr %scevgep281, i64 %i.fs
  %bound0 = icmp ult ptr %i.fl, %scevgep282
  %bound1 = icmp ult ptr %i.fa, %scevgep280
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader286, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, 4611686018427387900     ; 3 uses
  %i.ft = shl i64 %n.vec, 3                       ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fl, i64 %i.ft  ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fa, i64 %i.ft
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fl, i64 %i.fw ; 2 uses
  %next.gep283 = getelementptr i8, ptr %i.fa, i64 %i.fw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  call void @llvm.experimental.noalias.scope.decl(metadata !3650)
  %i.fx = getelementptr i8, ptr %next.gep283, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep283, align 8, !tbaa !1647, !alias.scope !3652, !noalias !3647
  %wide.load284 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !1647, !alias.scope !3652, !noalias !3647
  %i.fy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1647, !alias.scope !3655, !noalias !3652
  store <2 x i64> %wide.load284, ptr %i.fy, align 8, !tbaa !1647, !alias.scope !3655, !noalias !3652
  %i.fz = getelementptr i8, ptr %next.gep283, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep283, align 8, !tbaa !1647, !alias.scope !3652, !noalias !3647
  store <2 x ptr> splat (ptr null), ptr %i.fz, align 8, !tbaa !1647, !alias.scope !3652, !noalias !3647
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !3657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader286

.lr.ph.i.i.i.i.i.i.i.preheader286:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fl, %vector.memcheck ], [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fu, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fa, %vector.memcheck ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader286, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader286 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader286 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  call void @llvm.experimental.noalias.scope.decl(metadata !3650)
  %i.gb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !3650, !noalias !3647
  store i64 %i.gb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !3647, !noalias !3650
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !1647, !alias.scope !3650, !noalias !3647
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.ew
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3658

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc115
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fl, %.noexc115 ], [ %i.fu, %middle.block ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fa) #44
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.be
  store ptr %i.fl, ptr %12, align 8, !tbaa !1825
  store ptr %i.ge, ptr %i.ef, align 8, !tbaa !1821
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.gf, ptr %i.eg, align 8, !tbaa !1824
  %.pr = load ptr, ptr %17, align 8, !tbaa !1647  ; 3 uses
  %.not.i116 = icmp eq ptr %.pr, null
  br i1 %.not.i116, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.gg = load ptr, ptr %.pr, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #23, !inline_history !1649
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.gj = load ptr, ptr %14, align 8, !tbaa !1369 ; 3 uses
  %.not.i117 = icmp eq ptr %i.gj, null
  br i1 %.not.i117, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !45
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(56) %i.gj) #23, !inline_history !1373
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0183.0215, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gn, %i.ed
  br i1 %.not, label %._crit_edge, label %bb.ay

bb.bf:                                            ; preds = %bb.ay
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bg:                                            ; preds = %bb.az
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.bh:                                            ; preds = %bb.ba
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ee
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.gr) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.bg
  %.pn69 = phi { ptr, i32 } [ %i.gp, %bb.bg ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.gq, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit126

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit123

.loopexit206:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp207:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp207, %.loopexit206
  %lpad.phi210 = phi { ptr, i32 } [ %lpad.loopexit208, %.loopexit206 ], [ %lpad.loopexit.split-lp209, %.loopexit.split-lp207 ] ; 2 uses
  %i.gu = load ptr, ptr %17, align 8, !tbaa !1647 ; 3 uses
  %.not.i121 = icmp eq ptr %i.gu, null
  br i1 %.not.i121, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit123, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i122

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i122: ; preds = %bb.bj
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !45
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(88) %i.gu) #23, !inline_history !1649
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit123

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit123: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i122, %bb.bj, %bb.bi
  %.pn71 = phi { ptr, i32 } [ %i.gt, %bb.bi ], [ %lpad.phi210, %bb.bj ], [ %lpad.phi210, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i122 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.gy = load ptr, ptr %14, align 8, !tbaa !1369 ; 3 uses
  %.not.i124 = icmp eq ptr %i.gy, null
  br i1 %.not.i124, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit126, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i125

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i125: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit123
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !45
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(56) %i.gy) #23, !inline_history !1373
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit126

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit126: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i125, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn71.pn = phi { ptr, i32 } [ %.pn69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %.pn71, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit123 ], [ %.pn71, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cz

._crit_edge221:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %._crit_edge
  %i.hc = load ptr, ptr %i.bo, align 8, !tbaa !45
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = invoke noundef nonnull align 8 dereferenceable(124) ptr %i.he(ptr noundef nonnull align 8 dereferenceable(688) %i.bo)
          to label %bb.br unwind label %bb.cp     ; 2 uses

bb.bk:                                            ; preds = %.lr.ph220, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.sroa.0178.0218 = phi ptr [ %i.eh, %.lr.ph220 ], [ %i.ia, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.hg = invoke noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0178.0218)
          to label %bb.bl unwind label %.loopexit ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.hh = load ptr, ptr %i.ek, align 8, !tbaa !1164 ; 4 uses
end_hunk_14
begin_hunk_15_@_ZNK6duckdb12optional_ptrINS_10FileOpenerELb1EE10CheckValidEv
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10FileOpenerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !379
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.220, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_16DatabaseInstanceELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !381
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.220, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb19ReorderTableEntriesERNS_6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EEE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #27

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #27

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !3911, !range !249, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !459  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !462
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !459
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !459
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.val, align 8, !tbaa !463 ; 7 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #46 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.y = ptrtoaddr ptr %i.v to i64
  %2 = sub i64 %i.l, %i.m
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ab = sub i64 %i.y, %i.m
  %diff.check = icmp ult i64 %i.ab, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.k, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3915)
  %i.ag = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !3915, !noalias !3912
  %wide.load5 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !3915, !noalias !3912
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3912, !noalias !3915
  store <2 x i64> %wide.load5, ptr %i.ah, align 8, !alias.scope !3912, !noalias !3915
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !3917

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3915)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3915, !noalias !3912
  store i64 %i.aj, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3912, !noalias !3915
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3918

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.v, ptr %.val, align 8, !tbaa !463
  store ptr %i.am, ptr %i.d, align 8, !tbaa !459
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.an, ptr %i.f, align 8, !tbaa !462
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_0JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEEE3$_0", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !473
  store i64 %.val.i, ptr %0, align 8, !tbaa !473
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !3911, !range !249, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !459  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !462
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.e, align 8
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !459
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.d, align 8, !tbaa !459
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %.val, align 8, !tbaa !463 ; 7 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #46 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.y = ptrtoaddr ptr %i.v to i64
  %2 = sub i64 %i.l, %i.m
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ab = sub i64 %i.y, %i.m
  %diff.check = icmp ult i64 %i.ab, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.k, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3924)
  %i.ag = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !3924, !noalias !3921
  %wide.load5 = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !3924, !noalias !3921
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3921, !noalias !3924
  store <2 x i64> %wide.load5, ptr %i.ah, align 8, !alias.scope !3921, !noalias !3924
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !3926

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3924)
  %i.aj = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3924, !noalias !3921
  store i64 %i.aj, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3921, !noalias !3924
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3927

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.v, ptr %.val, align 8, !tbaa !463
  store ptr %i.am, ptr %i.d, align 8, !tbaa !459
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.an, ptr %i.f, align 8, !tbaa !462
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEEE3$_1", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !473
  store i64 %.val.i, ptr %0, align 8, !tbaa !473
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_2E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.c = load i8, ptr %i.b, align 2, !tbaa !3911, !range !249, !noundef !67
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !511
  switch i8 %i.f, label %bb.m [
    i8 1, label %bb.c
    i8 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !459  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !462
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %1 to i64
  store i64 %i.k, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !459
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.g, align 8, !tbaa !459
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.val, align 8, !tbaa !463 ; 7 uses
  %i.o = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #46 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = ptrtoint ptr %1 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ab = ptrtoaddr ptr %i.y to i64
  %4 = sub i64 %i.o, %i.p
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ac = lshr i64 %5, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check21 = icmp ult i64 %5, 56
  %i.ae = sub i64 %i.ab, %i.p
  %diff.check19 = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check21, %diff.check19
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader37, label %vector.ph22

vector.ph22:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec24 = and i64 %i.ad, 4611686018427387900   ; 3 uses
  %i.af = shl i64 %n.vec24, 3                     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph22
  %index26 = phi i64 [ 0, %vector.ph22 ], [ %index.next31, %vector.body25 ] ; 2 uses
  %i.ai = shl i64 %index26, 3                     ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %i.aj = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load29 = load <2 x i64>, ptr %next.gep28, align 8, !alias.scope !3931, !noalias !3928
  %wide.load30 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !3931, !noalias !3928
  %i.ak = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x i64> %wide.load29, ptr %next.gep27, align 8, !alias.scope !3928, !noalias !3931
  store <2 x i64> %wide.load30, ptr %i.ak, align 8, !alias.scope !3928, !noalias !3931
  %index.next31 = add nuw i64 %index26, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.al, label %middle.block32, label %vector.body25, !llvm.loop !3933

middle.block32:                                   ; preds = %vector.body25
  %cmp.n33 = icmp eq i64 %i.ad, %n.vec24
  br i1 %cmp.n33, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader37:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block32
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block32 ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block32 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader37 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader37 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3931, !noalias !3928
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3928, !noalias !3931
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3934

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block32, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ag, %middle.block32 ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.y, ptr %.val, align 8, !tbaa !463
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !459
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !462
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.h:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.val2, i64 8 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !3935 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3936
  %.not.i.i12.i.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i12.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = ptrtoint ptr %1 to i64
  store i64 %i.av, ptr %i.as, align 8
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !3935
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !3935
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %.val2, align 8, !tbaa !499 ; 7 uses
  %i.az = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.k, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i13.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i13.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i.i14.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i14.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #46 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  %i.bl = ptrtoint ptr %1 to i64
  store i64 %i.bl, ptr %i.bk, align 8
  %.not10.i.i.i.i.i.i.i15.i.i.i = icmp eq ptr %i.ay, %i.as
  br i1 %.not10.i.i.i.i.i.i.i15.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader:           ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bm = ptrtoaddr ptr %i.bj to i64
  %6 = sub i64 %i.az, %i.ba
  %7 = add i64 %6, -8                             ; 2 uses
  %i.bn = lshr i64 %7, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.bp = sub i64 %i.bm, %i.ba
  %diff.check = icmp ult i64 %i.bp, 32
  %or.cond36 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond36, label %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader
  %n.vec = and i64 %i.bo, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bj, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ay, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bj, i64 %i.bt ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.ay, i64 %i.bt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3940)
  %i.bu = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !alias.scope !3940, !noalias !3937
  %wide.load16 = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !3940, !noalias !3937
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3937, !noalias !3940
  store <2 x i64> %wide.load16, ptr %i.bv, align 8, !alias.scope !3937, !noalias !3940
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !3942

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader38:         ; preds = %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i17.i.i.i.ph = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader ], [ %i.br, %middle.block ]
  %.0911.i.i.i.i.i.i.i18.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i16.i.i.i

.lr.ph.i.i.i.i.i.i.i16.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i16.i.i.i
  %.012.i.i.i.i.i.i.i17.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i16.i.i.i ], [ %.012.i.i.i.i.i.i.i17.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i18.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i16.i.i.i ], [ %.0911.i.i.i.i.i.i.i18.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i16.i.i.i.preheader38 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3940)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i.i.i18.i.i.i, align 8, !alias.scope !3940, !noalias !3937
  store i64 %i.bx, ptr %.012.i.i.i.i.i.i.i17.i.i.i, align 8, !alias.scope !3937, !noalias !3940
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i18.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i17.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i19.i.i.i = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i.i.i19.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i16.i.i.i, !llvm.loop !3943

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i16.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i20.i.i.i = phi ptr [ %i.bj, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.br, %middle.block ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i16.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i20.i.i.i, i64 8
  %.not.i23.i.i.i21.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i.i21.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ay) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.l, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.bj, ptr %.val2, align 8, !tbaa !499
  store ptr %i.ca, ptr %i.ar, align 8, !tbaa !3935
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.cb, ptr %i.at, align 8, !tbaa !3936
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.m:                                             ; preds = %bb.b
  %i.cc = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.226, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.s unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cf = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.cf) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i.i, label %bb.q, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn7.i.i.i = phi { ptr, i32 } [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cc) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn6.i.i.i = phi { ptr, i32 } [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn7.i.i.i, %bb.q ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %.pn6.i.i.i

bb.s:                                             ; preds = %bb.o
  unreachable

"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_2JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.d, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, %bb.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ViewCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_2E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEEE3$_2", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3944
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_3E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !3911, !range !249, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ne i8 %i.e, 30
  %or.cond.not.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !459  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !462
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  store i64 %i.k, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !459
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.g, align 8, !tbaa !459
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.val, align 8, !tbaa !463 ; 7 uses
  %i.o = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #46 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = ptrtoint ptr %1 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ab = ptrtoaddr ptr %i.y to i64
  %2 = sub i64 %i.o, %i.p
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ac = lshr i64 %3, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ae = sub i64 %i.ab, %i.p
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3948)
  %i.aj = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !3948, !noalias !3945
  %wide.load5 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !3948, !noalias !3945
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3945, !noalias !3948
  store <2 x i64> %wide.load5, ptr %i.ak, align 8, !alias.scope !3945, !noalias !3948
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !3950

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3948)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3948, !noalias !3945
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3945, !noalias !3948
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3951

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.y, ptr %.val, align 8, !tbaa !463
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !459
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !462
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_3JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_3E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEEE3$_3", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !473
  store i64 %.val.i, ptr %0, align 8, !tbaa !473
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_3E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_4E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !3911, !range !249, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ne i8 %i.e, 31
  %or.cond.not.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !459  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !462
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  store i64 %i.k, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !459
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.g, align 8, !tbaa !459
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.val, align 8, !tbaa !463 ; 7 uses
  %i.o = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #46 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = ptrtoint ptr %1 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ab = ptrtoaddr ptr %i.y to i64
  %2 = sub i64 %i.o, %i.p
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ac = lshr i64 %3, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ae = sub i64 %i.ab, %i.p
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3955)
  %i.aj = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !3955, !noalias !3952
  %wide.load5 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !3955, !noalias !3952
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3952, !noalias !3955
  store <2 x i64> %wide.load5, ptr %i.ak, align 8, !alias.scope !3952, !noalias !3955
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !3957

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3955)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3955, !noalias !3952
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3952, !noalias !3955
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3958

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.y, ptr %.val, align 8, !tbaa !463
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !459
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !462
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_4E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_4E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEEE3$_4", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_4E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_4E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !473
  store i64 %.val.i, ptr %0, align 8, !tbaa !473
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_4E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_4E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_5E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3959  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !459  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !459
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !459
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !463 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #46 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.y = sub i64 %i.v, %i.j
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3964)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !3964, !noalias !3961
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !3964, !noalias !3961
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !3961, !noalias !3964
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !3961, !noalias !3964
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !3966

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3964)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3964, !noalias !3961
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3961, !noalias !3964
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3967

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !463
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !459
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !462
  br label %"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdbL17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS4_EEEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESD_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_L17GetCatalogEntriesERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_5E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdbL17GetCatalogEntriesERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEEE3$_5", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_5E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_5E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !473
  store i64 %.val.i, ptr %0, align 8, !tbaa !473
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_5E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdbL17GetCatalogEntriesERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS5_EEEE3$_5E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17SerializationDataC2Ev(ptr noundef nonnull align 8 dereferenceable(616) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseISt17reference_wrapperIN6duckdb13ClientContextEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseISt17reference_wrapperIN6duckdb16DatabaseInstanceEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 0)
          to label %_ZNSt5stackISt17reference_wrapperIN6duckdb16DatabaseInstanceEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit unwind label %bb.b

_ZNSt5stackISt17reference_wrapperIN6duckdb16DatabaseInstanceEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 0)
          to label %_ZNSt5stackISt17reference_wrapperIN6duckdb7CatalogEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit unwind label %bb.c

_ZNSt5stackISt17reference_wrapperIN6duckdb7CatalogEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit: ; preds = %_ZNSt5stackISt17reference_wrapperIN6duckdb16DatabaseInstanceEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseImSaImEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 0)
          to label %_ZNSt5stackImSt5dequeImSaImEEEC2IS2_vEEv.exit unwind label %bb.d

_ZNSt5stackImSt5dequeImSaImEEEC2IS2_vEEv.exit:    ; preds = %_ZNSt5stackISt17reference_wrapperIN6duckdb7CatalogEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEESaISJ_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
          to label %_ZNSt5stackISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEESt5dequeISJ_SaISJ_EEEC2ISM_vEEv.exit unwind label %bb.e

_ZNSt5stackISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEESt5dequeISJ_SaISJ_EEEC2ISM_vEEv.exit: ; preds = %_ZNSt5stackImSt5dequeImSaImEEEC2IS2_vEEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseISt17reference_wrapperIKN6duckdb11LogicalTypeEESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 noundef 0)
          to label %_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit unwind label %bb.f

_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit: ; preds = %_ZNSt5stackISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEESt5dequeISJ_SaISJ_EEEC2ISM_vEEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseISt17reference_wrapperIKN6duckdb15CompressionInfoEESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 noundef 0)
          to label %_ZNSt5stackISt17reference_wrapperIKN6duckdb15CompressionInfoEESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit unwind label %bb.g

_ZNSt5stackISt17reference_wrapperIKN6duckdb15CompressionInfoEESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit: ; preds = %_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %i.h, ptr %i.g, align 8, !tbaa !3968
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 1, ptr %i.i, align 8, !tbaa !3969
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !421
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  ret void

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.c:                                             ; preds = %_ZNSt5stackISt17reference_wrapperIN6duckdb16DatabaseInstanceEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %_ZNSt5stackISt17reference_wrapperIN6duckdb7CatalogEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZNSt5stackImSt5dequeImSaImEEEC2IS2_vEEv.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %_ZNSt5stackISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEESt5dequeISJ_SaISJ_EEEC2ISM_vEEv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEEC2IS7_vEEv.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.e) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  tail call void @_ZNSt5stackISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEESt5dequeISJ_SaISJ_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.p, %bb.e ]
  tail call void @_ZNSt5stackImSt5dequeImSaImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.c) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.i ], [ %i.o, %bb.d ]
  tail call void @_ZNSt5stackISt17reference_wrapperIN6duckdb7CatalogEESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #23
  br label %bb.k

end_hunk_15
begin_hunk_16_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm:bb.a
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !506
  store ptr %i.w, ptr %3, align 8, !tbaa !506
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !505
  store ptr %3, ptr %i.x, align 8, !tbaa !506
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1480
  store ptr %i.z, ptr %3, align 8, !tbaa !506
  store ptr %3, ptr %i.y, align 8, !tbaa !1480
  %i.aa = load ptr, ptr %3, align 8, !tbaa !506   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1470
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !70
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !505
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !505
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !1481
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !1481
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1482
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !81

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #46 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1480 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1480
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !506 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !505  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1480
  store ptr %i.o, ptr %.031, align 8, !tbaa !506
  store ptr %.031, ptr %i.g, align 8, !tbaa !1480
  store ptr %i.g, ptr %i.m, align 8, !tbaa !505
  %i.p = load ptr, ptr %.031, align 8, !tbaa !506
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !505
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !506
  store ptr %i.r, ptr %.031, align 8, !tbaa !506
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !505
  store ptr %.031, ptr %i.s, align 8, !tbaa !506
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4277

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !1468   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #44
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !1470
  store ptr %.0.i, ptr %0, align 8, !tbaa !1468
  ret void
}

declare void @_ZN6duckdb25SingleFileTableDataWriterC1ERNS_26SingleFileCheckpointWriterERNS_17TableCatalogEntryERNS_14MetadataWriterE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb12ValidChecker3GetERNS_16DatabaseInstanceE(ptr noundef nonnull align 8 dereferenceable(1560)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6duckdb12ValidChecker13IsInvalidatedEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare void @_ZN6duckdb14MetadataWriterC1ERNS_15MetadataManagerENS_12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS5_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(168), ptr) unnamed_addr #1

declare noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_16DatabaseInstanceEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(1560), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb12UBigIntValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i64 @_ZN6duckdb10StringUtil10ToUnsignedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !4278  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4280 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4281
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !4280
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !4280
  br label %"_ZSt10__invoke_rIvRZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !546 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #46 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.y = sub i64 %i.v, %i.j
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !4285, !noalias !4282
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !4285, !noalias !4282
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !4282, !noalias !4285
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !4282, !noalias !4285
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !4287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4285, !noalias !4282
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4282, !noalias !4285
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !4288

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !546
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !4280
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !4281
  br label %"_ZSt10__invoke_rIvRZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !442
  store i64 %.val.i, ptr %0, align 8, !tbaa !442
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_17DependencyManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !448
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.220, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !459
  %i.e = load ptr, ptr %0, align 8, !tbaa !463    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !70
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_12CatalogEntryEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !1037

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_16
begin_hunk_17_@_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #46 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4176 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !4176
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !506 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !505  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !4176
  store ptr %i.o, ptr %.031, align 8, !tbaa !506
  store ptr %.031, ptr %i.g, align 8, !tbaa !4176
  store ptr %i.g, ptr %i.m, align 8, !tbaa !505
  %i.p = load ptr, ptr %.031, align 8, !tbaa !506
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !505
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !506
  store ptr %i.r, ptr %.031, align 8, !tbaa !506
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !505
  store ptr %.031, ptr %i.s, align 8, !tbaa !506
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4608

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !2662   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #44
  br label %_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmN6duckdb33OptimisticallyWrittenRowGroupDataEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !2661
  store ptr %.0.i, ptr %0, align 8, !tbaa !2662
  ret void
}

declare void @_ZN6duckdb20InMemoryCheckpointerC1ENS_12QueryContextERNS_16AttachedDatabaseERNS_12BlockManagerERNS_14StorageManagerENS_17CheckpointOptionsE(ptr noundef nonnull align 8 dereferenceable(192), ptr, ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(224), ptr noundef byval(%"struct.duckdb::CheckpointOptions") align 8) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_16StorageExtensionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2701
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.220, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_24SingleFileStorageManager7DestroyEvE3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !4609  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4280 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4281
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !4280
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.a, align 8, !tbaa !4280
  br label %"_ZSt10__invoke_rIvRZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %.val, align 8, !tbaa !546 ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #46 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = ptrtoint ptr %1 to i64
  store i64 %i.u, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.v = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.y = sub i64 %i.v, %i.j
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ac ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4614)
  %i.ad = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !4614, !noalias !4611
  %wide.load5 = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !4614, !noalias !4611
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !4611, !noalias !4614
  store <2 x i64> %wide.load5, ptr %i.ae, align 8, !alias.scope !4611, !noalias !4614
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !4616

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4614)
  %i.ag = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4614, !noalias !4611
  store i64 %i.ag, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4611, !noalias !4614
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !4617

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.s, ptr %.val, align 8, !tbaa !546
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !4280
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !4281
  br label %"_ZSt10__invoke_rIvRZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0JRNS0_18SchemaCatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb18SchemaCatalogEntryEEZNS0_24SingleFileStorageManager7DestroyEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !442
  store i64 %.val.i, ptr %0, align 8, !tbaa !442
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_24SingleFileStorageManager7DestroyEvE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !3911, !range !249, !noundef !67
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ne i8 %i.e, 1
  %or.cond.not.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4618 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !4619
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  store i64 %i.k, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !4618
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.g, align 8, !tbaa !4618
  br label %"_ZSt10__invoke_rIvRZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %.val, align 8, !tbaa !2709 ; 7 uses
  %i.o = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #46 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  %i.aa = ptrtoint ptr %1 to i64
  store i64 %i.aa, ptr %i.z, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ab = ptrtoaddr ptr %i.y to i64
  %2 = sub i64 %i.o, %i.p
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ac = lshr i64 %3, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ae = sub i64 %i.ab, %i.p
  %diff.check = icmp ult i64 %i.ae, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ai ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.n, i64 %i.ai ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4623)
  %i.aj = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !4623, !noalias !4620
  %wide.load5 = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !4623, !noalias !4620
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !4620, !noalias !4623
  store <2 x i64> %wide.load5, ptr %i.ak, align 8, !alias.scope !4620, !noalias !4623
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !4625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4623)
  %i.am = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4623, !noalias !4620
  store i64 %i.am, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4620, !noalias !4623
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !4626

_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #44
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.y, ptr %.val, align 8, !tbaa !2709
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !4618
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !4619
  br label %"_ZSt10__invoke_rIvRZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueES7_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb14DuckTableEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_24SingleFileStorageManager7DestroyEvE3$_1E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1", ptr %0, align 8, !tbaa !3919
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !218
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !2707
  store i64 %.val.i, ptr %0, align 8, !tbaa !2707
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb24SingleFileStorageManager7DestroyEvE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN6duckdb10FileBufferC1ERS0_NS_14FileBufferTypeEm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), i8 noundef zeroext, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6duckdb20PrivateAllocatorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19BufferAllocatorDataD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb20PrivateAllocatorDataD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #23
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_S7_DpT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.3401", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !4627
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !4627
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !402, !noalias !4627 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !405, !noalias !4627 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #44
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !406

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !402, !noalias !4627
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #44
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !4627
  resume { ptr, i32 } %i.j

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !4627
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10BufferPool14EvictionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25TempBufferPoolReservationE, i64 16), ptr %i.a, align 8, !tbaa !45
  invoke void @_ZN6duckdb21BufferPoolReservation6ResizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0)
          to label %_ZN6duckdb25TempBufferPoolReservationD2Ev.exit unwind label %bb.b, !inline_history !2770

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #45, !inline_history !2770
  unreachable

_ZN6duckdb25TempBufferPoolReservationD2Ev.exit:   ; preds = %bb.a
  tail call void @_ZN6duckdb21BufferPoolReservationD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #23, !inline_history !2770
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb21BufferPoolReservationC2EOS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb11BlockHandleESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #44
  ret void
}
end_hunk_17
