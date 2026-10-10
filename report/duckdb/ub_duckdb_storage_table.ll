Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm:bb.a
  %i.aaa = atomicrmw volatile add ptr %i.zn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i359

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i359: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i.i.i.i360 = phi i32 [ %i.zq, %bb.ea ], [ %i.aaa, %bb.eb ]
  %i.aab = icmp eq i32 %.0.i.i.i.i.i.i.i360, 1
  br i1 %i.aab, label %bb.ec, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i361, !prof !274

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i359
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zm) #37
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i361

_ZN6duckdb15SelectionVectorD2Ev.exit.i361:        ; preds = %bb.ec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i359, %bb.dy, %bb.dw
  %i.aac = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !269 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.aad, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i361
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8 ; 4 uses
  %i.aaf = load atomic i64, ptr %i.aae acquire, align 8 ; 2 uses
  %i.aag = icmp eq i64 %i.aaf, 4294967297
  %i.aah = trunc i64 %i.aaf to i32                ; 2 uses
  br i1 %i.aag, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store i32 0, ptr %i.aae, align 8, !tbaa !271
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aad, i64 12
  store i32 0, ptr %i.aai, align 4, !tbaa !272
  %i.aaj = load ptr, ptr %i.aad, align 8, !tbaa !213
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aal = load ptr, ptr %i.aak, align 8
  call void %i.aal(ptr noundef nonnull align 8 dereferenceable(16) %i.aad) #37, !inline_history !47
  %i.aam = load ptr, ptr %i.aad, align 8, !tbaa !213
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load ptr, ptr %i.aan, align 8
  call void %i.aao(ptr noundef nonnull align 8 dereferenceable(16) %i.aad) #37, !inline_history !47
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ef:                                            ; preds = %bb.ed
  %i.aap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.aap, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aaq = add nsw i32 %i.aah, -1
  store i32 %i.aaq, ptr %i.aae, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.eh:                                            ; preds = %bb.ef
  %i.aar = atomicrmw volatile add ptr %i.aae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.eh, %bb.eg
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.aah, %bb.eg ], [ %i.aar, %bb.eh ]
  %i.aas = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.aas, label %bb.ei, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !274

bb.ei:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aad) #37
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i361, %bb.ee, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %_ZN6duckdbL22TemplatedNullSelectionILb1EEEmRNS_19UnifiedVectorFormatERNS_15SelectionVectorERm.exit

bb.ej:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %13) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %common.resume

bb.ek:                                            ; preds = %bb.a
  %i.aau = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb11TableFilter4CastINS_13BFTableFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %3)
  %i.aav = tail call noundef i64 @_ZNK6duckdb13BFTableFilter6FilterERNS_6VectorERNS_15SelectionVectorERmRNS_18BFTableFilterStateE(ptr noundef nonnull align 8 dereferenceable(88) %i.aau, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(352) %4)
  br label %_ZN6duckdbL22TemplatedNullSelectionILb1EEEmRNS_19UnifiedVectorFormatERNS_15SelectionVectorERm.exit

bb.el:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.aaw = load i64, ptr %6, align 8, !tbaa !218
  %i.aax = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aax, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %i.aaw)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit362 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aax) #37
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit362:          ; preds = %bb.el
  %i.aaz = icmp ugt i64 %5, 2048
  br i1 %i.aaz, label %bb.en, label %bb.ft

bb.en:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.aba = load i64, ptr %6, align 8, !tbaa !218
  %i.abb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abb, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef %i.aba)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit363.preheader unwind label %bb.eo

_ZN6duckdb15SelectionVectorC2Em.exit363.preheader: ; preds = %bb.en
  %i.abc = load i64, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  %i.abd = icmp ult i64 %i.abc, %5
  br i1 %i.abd, label %.lr.ph455, label %_ZN6duckdb15SelectionVectorC2Em.exit363._crit_edge

.lr.ph455:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit363.preheader
  %i.abe = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.abg = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.abh = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.abi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.abj = getelementptr inbounds nuw i8, ptr %19, i64 16
  br label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.abb) #37
  br label %.body

bb.ep:                                            ; preds = %.lr.ph455, %_ZN6duckdb15SelectionVectorC2Em.exit363
  %i.abl = phi i64 [ %i.abc, %.lr.ph455 ], [ %i.aem, %_ZN6duckdb15SelectionVectorC2Em.exit363 ] ; 2 uses
  %.0226454 = phi i64 [ 0, %.lr.ph455 ], [ %.1227.lcssa589, %_ZN6duckdb15SelectionVectorC2Em.exit363 ] ; 8 uses
  %.0228453 = phi i64 [ 0, %.lr.ph455 ], [ %.1229, %_ZN6duckdb15SelectionVectorC2Em.exit363 ] ; 3 uses
  %i.abm = sub nuw i64 %5, %i.abl
  %i.abn = call noundef i64 @llvm.umin.i64(i64 %i.abm, i64 2048) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.abo = add i64 %i.abn, %i.abl
  store i64 %i.abo, ptr %i.c, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16)
          to label %bb.eq unwind label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  %i.abp = load ptr, ptr %i.abe, align 8, !tbaa !963 ; 3 uses
  %i.abq = load ptr, ptr %i.abf, align 8, !tbaa !964
  %.not.i364 = icmp eq ptr %i.abp, %i.abq
  br i1 %.not.i364, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abr = load i64, ptr %i.b, align 8, !tbaa !218
  %i.abs = load i64, ptr %i.c, align 8, !tbaa !218
  invoke void @_ZN6duckdb6VectorC1ERKS0_mm(ptr noundef nonnull align 8 dereferenceable(104) %i.abp, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.abr, i64 noundef %i.abs)
          to label %.noexc unwind label %bb.ew

.noexc:                                           ; preds = %bb.er
  %i.abt = load ptr, ptr %i.abe, align 8, !tbaa !963
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 104
  store ptr %i.abu, ptr %i.abe, align 8, !tbaa !963
  br label %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_RmS6_EEEvDpOT_.exit

bb.es:                                            ; preds = %bb.eq
  invoke void @_ZNSt6vectorIN6duckdb6VectorESaIS1_EE17_M_realloc_insertIJRS1_RmS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr %i.abp, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_RmS6_EEEvDpOT_.exit unwind label %bb.ew

_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_RmS6_EEEvDpOT_.exit: ; preds = %.noexc, %bb.es
  store i64 %i.abn, ptr %i.abg, align 8, !tbaa !976
  %i.abv = load i64, ptr %6, align 8, !tbaa !218  ; 5 uses
  %i.abw = icmp ult i64 %.0226454, %i.abv
  br i1 %i.abw, label %.lr.ph, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread.a

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_RmS6_EEEvDpOT_.exit
  %i.abx = load ptr, ptr %0, align 8, !tbaa !305  ; 2 uses
  %.not.i366 = icmp eq ptr %i.abx, null
  %i.aby = load i64, ptr %i.c, align 8, !tbaa !218 ; 2 uses
  %i.abz = load i64, ptr %i.b, align 8            ; 4 uses
  %i.aca = load ptr, ptr %15, align 8             ; 2 uses
  br i1 %.not.i366, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader: ; preds = %.lr.ph
  %i.acb = sub i64 %i.abv, %.0226454              ; 2 uses
  %i.acc = trunc nuw i64 %i.abz to i32
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367

_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader: ; preds = %.lr.ph
  %i.acd = call i64 @llvm.usub.sat.i64(i64 %i.aby, i64 %.0226454) ; 2 uses
  %i.ace = sub i64 %i.abv, %.0226454              ; 2 uses
  %i.acf = icmp ult i64 %.0226454, %i.abz
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader, %bb.eu
  %.0224443.us = phi i64 [ %i.acj, %bb.eu ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader ] ; 3 uses
  %.1227442.us = phi i64 [ %i.ack, %bb.eu ], [ %.0226454, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us.preheader ] ; 3 uses
  %exitcond505.not = icmp eq i64 %.0224443.us, %i.acd
  br i1 %exitcond505.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge, label %bb.et

bb.et:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us
  br i1 %i.acf, label %.split.us, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.acg = sub nuw i64 %.1227442.us, %i.abz
  %i.ach = trunc i64 %i.acg to i32
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %.0224443.us
  store i32 %i.ach, ptr %i.aci, align 4, !tbaa !206
  %i.acj = add i64 %.0224443.us, 1                ; 2 uses
  %i.ack = add nuw i64 %.1227442.us, 1
  %exitcond506.not = icmp eq i64 %i.acj, %i.ace
  br i1 %exitcond506.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us, !llvm.loop !2314

_ZNK6duckdb15SelectionVector9get_indexEm.exit367: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader, %bb.fc
  %.0224443 = phi i64 [ %i.acz, %bb.fc ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader ] ; 3 uses
  %.1227442 = phi i64 [ %i.ada, %bb.fc ], [ %.0226454, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.preheader ] ; 3 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %.1227442
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !206 ; 2 uses
  %i.acn = zext i32 %i.acm to i64                 ; 2 uses
  %.not = icmp ugt i64 %i.aby, %i.acn
  br i1 %.not, label %bb.ex, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge

bb.ev:                                            ; preds = %bb.ep
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.ew:                                            ; preds = %bb.es, %bb.er
  %i.acp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ex:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367
  %i.acq = icmp ugt i64 %i.abz, %i.acn
  br i1 %i.acq, label %.split.us, label %bb.fc

.split.us:                                        ; preds = %bb.ex, %bb.et
  %i.acr = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ey unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread

bb.ey:                                            ; preds = %.split.us
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.acr, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ez unwind label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  invoke void @__cxa_throw(ptr nonnull %i.acr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.gx unwind label %bb.fa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread: ; preds = %.split.us
  %i.acs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0222 = phi i1 [ false, %bb.ez ], [ true, %bb.ey ] ; 2 uses
  %i.act = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.acu = load ptr, ptr %17, align 8, !tbaa !227 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.acw = icmp eq ptr %i.acu, %i.acv
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368: ; preds = %bb.fa
  call void @_ZdlPv(ptr noundef %i.acu) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br i1 %.0222, label %bb.fb, label %bb.fl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370: ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br i1 %.0222, label %bb.fb, label %bb.fl

bb.fb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370
  %.pn270415 = phi { ptr, i32 } [ %i.acs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370.thread ], [ %i.act, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370 ], [ %i.act, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368 ]
  call void @__cxa_free_exception(ptr %i.acr) #37
  br label %bb.fl

bb.fc:                                            ; preds = %bb.ex
  %i.acx = sub i32 %i.acm, %i.acc
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %.0224443
  store i32 %i.acx, ptr %i.acy, align 4, !tbaa !206
  %i.acz = add i64 %.0224443, 1                   ; 2 uses
  %i.ada = add nuw i64 %.1227442, 1
  %exitcond.not = icmp eq i64 %i.acz, %i.acb
  br i1 %exitcond.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367, !llvm.loop !2314

_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge: ; preds = %bb.fc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367, %bb.eu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us
  %.1227.lcssa = phi i64 [ %.1227442.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us ], [ %i.abv, %bb.eu ], [ %i.abv, %bb.fc ], [ %.1227442, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367 ] ; 2 uses
  %.0224.lcssa = phi i64 [ %i.acd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367.us ], [ %i.ace, %bb.eu ], [ %i.acb, %bb.fc ], [ %.0224443, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367 ] ; 2 uses
  %i.adb = icmp eq i64 %.0224.lcssa, 0
  br i1 %i.adb, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread.a, label %bb.fd

_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread.a: ; preds = %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_RmS6_EEEvDpOT_.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge
  %.1227.lcssa590.a = phi i64 [ %.1227.lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge ], [ %.0226454, %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_RmS6_EEEvDpOT_.exit ]
  %i.adc = load i64, ptr %i.b, align 8, !tbaa !218
  %i.add = add i64 %i.adc, %i.abn
  store i64 %i.add, ptr %i.b, align 8, !tbaa !218
  br label %_ZN6duckdb15SelectionVectorC2Em.exit363, !llvm.loop !2315

bb.fd:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge
  %i.ade = load ptr, ptr %14, align 8, !tbaa !305
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %.0228453 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abh, i8 0, i64 16, i1 false)
  store ptr %i.adf, ptr %19, align 8, !tbaa !305
  %i.adg = invoke noundef i64 @_ZN6duckdb18ExpressionExecutor16SelectExpressionERNS_9DataChunkERNS_15SelectionVectorENS_12optional_ptrIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(65) %i.abi, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr nonnull %15, i64 noundef %.0224.lcssa)
          to label %.preheader433 unwind label %bb.fk ; 6 uses

.preheader433:                                    ; preds = %bb.fd
  %.not485 = icmp eq i64 %i.adg, 0
  br i1 %.not485, label %._crit_edge452, label %.lr.ph451

.lr.ph451:                                        ; preds = %.preheader433
  %i.adh = load i64, ptr %i.b, align 8, !tbaa !218
  %i.adi = trunc i64 %i.adh to i32                ; 2 uses
  %min.iters.check = icmp ult i64 %i.adg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph451
  %n.vec = and i64 %i.adg, -8                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.adi, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %index ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.adj, align 4, !tbaa !206
  %wide.load623 = load <4 x i32>, ptr %i.adk, align 4, !tbaa !206
  %i.adl = add <4 x i32> %wide.load, %broadcast.splat
  %i.adm = add <4 x i32> %wide.load623, %broadcast.splat
  store <4 x i32> %i.adl, ptr %i.adj, align 4, !tbaa !206
  store <4 x i32> %i.adm, ptr %i.adk, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.adn = icmp eq i64 %index.next, %n.vec
  br i1 %i.adn, label %middle.block, label %vector.body, !llvm.loop !2316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adg, %n.vec
  br i1 %cmp.n, label %._crit_edge452, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph451, %middle.block
  %.0221450.ph = phi i64 [ 0, %.lr.ph451 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge452:                                   ; preds = %scalar.ph, %middle.block, %.preheader433
  %i.ado = add i64 %i.adg, %.0228453
  %i.adp = load i64, ptr %i.b, align 8, !tbaa !218
  %i.adq = add i64 %i.adp, %i.abn
  store i64 %i.adq, ptr %i.b, align 8, !tbaa !218
  %i.adr = load ptr, ptr %i.abj, align 8, !tbaa !269 ; 8 uses
  %.not.i.i.i.i371 = icmp eq ptr %i.adr, null
  br i1 %.not.i.i.i.i371, label %_ZN6duckdb15SelectionVectorD2Ev.exit375, label %bb.fe

bb.fe:                                            ; preds = %._crit_edge452
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 8 ; 4 uses
  %i.adt = load atomic i64, ptr %i.ads acquire, align 8 ; 2 uses
  %i.adu = icmp eq i64 %i.adt, 4294967297
  %i.adv = trunc i64 %i.adt to i32                ; 2 uses
  br i1 %i.adu, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.ads, align 8, !tbaa !271
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adr, i64 12
  store i32 0, ptr %i.adw, align 4, !tbaa !272
  %i.adx = load ptr, ptr %i.adr, align 8, !tbaa !213
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.adz = load ptr, ptr %i.ady, align 8
  call void %i.adz(ptr noundef nonnull align 8 dereferenceable(16) %i.adr) #37, !inline_history !9
  %i.aea = load ptr, ptr %i.adr, align 8, !tbaa !213
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 24
  %i.aec = load ptr, ptr %i.aeb, align 8
  call void %i.aec(ptr noundef nonnull align 8 dereferenceable(16) %i.adr) #37, !inline_history !9
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit375

bb.fg:                                            ; preds = %bb.fe
  %i.aed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i372 = icmp eq i8 %i.aed, 0
  br i1 %.not.i.i.i.i.i372, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aee = add nsw i32 %i.adv, -1
  store i32 %i.aee, ptr %i.ads, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i373

bb.fi:                                            ; preds = %bb.fg
  %i.aef = atomicrmw volatile add ptr %i.ads, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i373

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i373: ; preds = %bb.fi, %bb.fh
  %.0.i.i.i.i.i.i374 = phi i32 [ %i.adv, %bb.fh ], [ %i.aef, %bb.fi ]
  %i.aeg = icmp eq i32 %.0.i.i.i.i.i.i374, 1
  br i1 %i.aeg, label %bb.fj, label %_ZN6duckdb15SelectionVectorD2Ev.exit375, !prof !274

bb.fj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i373
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adr) #37
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit375

_ZN6duckdb15SelectionVectorD2Ev.exit375:          ; preds = %._crit_edge452, %bb.ff, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i373, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %_ZN6duckdb15SelectionVectorC2Em.exit363

bb.fk:                                            ; preds = %bb.fd
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.fl

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0221450 = phi i64 [ %i.ael, %scalar.ph ], [ %.0221450.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %.0221450 ; 2 uses
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !206
  %i.aek = add i32 %i.aej, %i.adi
  store i32 %i.aek, ptr %i.aei, align 4, !tbaa !206
  %i.ael = add nuw i64 %.0221450, 1               ; 2 uses
  %exitcond507.not = icmp eq i64 %i.ael, %i.adg
  br i1 %exitcond507.not, label %._crit_edge452, label %scalar.ph, !llvm.loop !2317

_ZN6duckdb15SelectionVectorC2Em.exit363:          ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit375, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread.a
  %.1227.lcssa589 = phi i64 [ %.1227.lcssa590.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread.a ], [ %.1227.lcssa, %_ZN6duckdb15SelectionVectorD2Ev.exit375 ]
  %.1229 = phi i64 [ %.0228453, %_ZNK6duckdb15SelectionVector9get_indexEm.exit367._crit_edge.thread.a ], [ %i.ado, %_ZN6duckdb15SelectionVectorD2Ev.exit375 ] ; 2 uses
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  %i.aem = load i64, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  %i.aen = icmp ult i64 %i.aem, %5
  br i1 %i.aen, label %bb.ep, label %_ZN6duckdb15SelectionVectorC2Em.exit363._crit_edge

bb.fl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368, %bb.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, %bb.fb, %bb.ew
  %.pn273.pn.pn = phi { ptr, i32 } [ %i.acp, %bb.ew ], [ %i.aeh, %bb.fk ], [ %.pn270415, %bb.fb ], [ %i.act, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370 ], [ %i.act, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368 ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %16) #37
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.ev
  %.pn273.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn.pn, %bb.fl ], [ %i.aco, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #37
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit363._crit_edge: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit363, %_ZN6duckdb15SelectionVectorC2Em.exit363.preheader
  %.0228.lcssa = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit363.preheader ], [ %.1229, %_ZN6duckdb15SelectionVectorC2Em.exit363 ]
  store i64 %.0228.lcssa, ptr %6, align 8, !tbaa !218
  %i.aeo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !269 ; 8 uses
  %.not.i.i.i.i376 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i.i.i376, label %_ZN6duckdb15SelectionVectorD2Ev.exit380, label %bb.fn

bb.fn:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit363._crit_edge
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 8 ; 4 uses
  %i.aer = load atomic i64, ptr %i.aeq acquire, align 8 ; 2 uses
  %i.aes = icmp eq i64 %i.aer, 4294967297
  %i.aet = trunc i64 %i.aer to i32                ; 2 uses
  br i1 %i.aes, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 0, ptr %i.aeq, align 8, !tbaa !271
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aep, i64 12
  store i32 0, ptr %i.aeu, align 4, !tbaa !272
  %i.aev = load ptr, ptr %i.aep, align 8, !tbaa !213
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  %i.aex = load ptr, ptr %i.aew, align 8
  call void %i.aex(ptr noundef nonnull align 8 dereferenceable(16) %i.aep) #37, !inline_history !9
  %i.aey = load ptr, ptr %i.aep, align 8, !tbaa !213
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %i.afa = load ptr, ptr %i.aez, align 8
  call void %i.afa(ptr noundef nonnull align 8 dereferenceable(16) %i.aep) #37, !inline_history !9
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit380

bb.fp:                                            ; preds = %bb.fn
  %i.afb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i377 = icmp eq i8 %i.afb, 0
  br i1 %.not.i.i.i.i.i377, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afc = add nsw i32 %i.aet, -1
  store i32 %i.afc, ptr %i.aeq, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i378

bb.fr:                                            ; preds = %bb.fp
  %i.afd = atomicrmw volatile add ptr %i.aeq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i378

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i378: ; preds = %bb.fr, %bb.fq
  %.0.i.i.i.i.i.i379 = phi i32 [ %i.aet, %bb.fq ], [ %i.afd, %bb.fr ]
  %i.afe = icmp eq i32 %.0.i.i.i.i.i.i379, 1
  br i1 %i.afe, label %bb.fs, label %_ZN6duckdb15SelectionVectorD2Ev.exit380, !prof !274

bb.fs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i378
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aep) #37
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit380

_ZN6duckdb15SelectionVectorD2Ev.exit380:          ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit363._crit_edge, %bb.fo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i378, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.gb

.body:                                            ; preds = %bb.eo, %bb.fm
  %.pn273.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn273.pn.pn.pn, %bb.fm ], [ %i.abk, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.gr

bb.ft:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit362
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %20)
          to label %bb.fu unwind label %bb.fy

bb.fu:                                            ; preds = %bb.ft
  %i.aff = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !963 ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !964
  %.not.i381 = icmp eq ptr %i.afg, %i.afi
  br i1 %.not.i381, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.afg, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc382 unwind label %bb.fz

.noexc382:                                        ; preds = %bb.fv
  %i.afj = load ptr, ptr %i.aff, align 8, !tbaa !963
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 104
  store ptr %i.afk, ptr %i.aff, align 8, !tbaa !963
  br label %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit

bb.fw:                                            ; preds = %bb.fu
  invoke void @_ZNSt6vectorIN6duckdb6VectorESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr %i.afg, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit unwind label %bb.fz

_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit: ; preds = %.noexc382, %bb.fw
  %i.afl = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i64 %5, ptr %i.afl, align 8, !tbaa !976
  %i.afm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.afn = load i64, ptr %6, align 8, !tbaa !218
  %i.afo = invoke noundef i64 @_ZN6duckdb18ExpressionExecutor16SelectExpressionERNS_9DataChunkERNS_15SelectionVectorENS_12optional_ptrIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(65) %i.afm, ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr nonnull %0, i64 noundef %i.afn)
          to label %bb.fx unwind label %bb.fz

bb.fx:                                            ; preds = %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit
  store i64 %i.afo, ptr %6, align 8, !tbaa !218
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.gb

bb.fy:                                            ; preds = %bb.ft
  %i.afp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.fz:                                            ; preds = %bb.fw, %bb.fv, %_ZNSt6vectorIN6duckdb6VectorESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %20) #37
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.pn = phi { ptr, i32 } [ %i.afq, %bb.fz ], [ %i.afp, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.gr

bb.gb:                                            ; preds = %bb.fx, %_ZN6duckdb15SelectionVectorD2Ev.exit380
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !269 ; 2 uses
  %i.afu = load <2 x ptr>, ptr %i.aax, align 8, !tbaa !318
  %.not.i.i.i.i.i.i384 = icmp eq ptr %i.aft, null
  br i1 %.not.i.i.i.i.i.i384, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i386, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aft, i64 8 ; 3 uses
  %i.afw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i.i.i385 = icmp eq i8 %i.afw, 0
  br i1 %.not.i.i.i.i.i.i.i385, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.afx = load i32, ptr %i.afv, align 4, !tbaa !206
  %i.afy = add nsw i32 %i.afx, 1
  store i32 %i.afy, ptr %i.afv, align 4, !tbaa !206
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i386

bb.ge:                                            ; preds = %bb.gc
  %i.afz = atomicrmw volatile add ptr %i.afv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i386

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i386: ; preds = %bb.ge, %bb.gd, %bb.gb
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !269 ; 8 uses
  store <2 x ptr> %i.afu, ptr %i.afr, align 8, !tbaa !318
  %.not.i.i.i.i.i387 = icmp eq ptr %i.agb, null
  br i1 %.not.i.i.i.i.i387, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit391, label %bb.gf

bb.gf:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i386
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8 ; 4 uses
  %i.agd = load atomic i64, ptr %i.agc acquire, align 8 ; 2 uses
  %i.age = icmp eq i64 %i.agd, 4294967297
  %i.agf = trunc i64 %i.agd to i32                ; 2 uses
  br i1 %i.age, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  store i32 0, ptr %i.agc, align 8, !tbaa !271
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agb, i64 12
  store i32 0, ptr %i.agg, align 4, !tbaa !272
  %i.agh = load ptr, ptr %i.agb, align 8, !tbaa !213
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %i.agj = load ptr, ptr %i.agi, align 8
  call void %i.agj(ptr noundef nonnull align 8 dereferenceable(16) %i.agb) #37, !inline_history !48
  %i.agk = load ptr, ptr %i.agb, align 8, !tbaa !213
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 24
  %i.agm = load ptr, ptr %i.agl, align 8
  call void %i.agm(ptr noundef nonnull align 8 dereferenceable(16) %i.agb) #37, !inline_history !48
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit391

bb.gh:                                            ; preds = %bb.gf
  %i.agn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i5.i.i388 = icmp eq i8 %i.agn, 0
  br i1 %.not.i.i.i.i5.i.i388, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ago = add nsw i32 %i.agf, -1
  store i32 %i.ago, ptr %i.agc, align 8, !tbaa !206
end_hunk_0
