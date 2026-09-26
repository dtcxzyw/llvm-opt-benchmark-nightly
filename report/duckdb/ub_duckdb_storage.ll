Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage?download=true
inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb16CheckpointReader9ReadIndexENS_18CatalogTransactionERNS_12DeserializerE:bb.a
bb.f:                                             ; preds = %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(632) %2, i1 noundef zeroext false)
          to label %_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_12BlockPointerEEET_tPKcS3_.exit unwind label %bb.o, !inline_history !2498

bb.g:                                             ; preds = %.noexc
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(632) %2)
          to label %.noexc48 unwind label %bb.o, !inline_history !2498

.noexc48:                                         ; preds = %bb.g
  %i.aj = invoke { i64, i64 } @_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE(ptr noundef nonnull align 8 dereferenceable(632) %2)
          to label %.noexc49 unwind label %bb.o

.noexc49:                                         ; preds = %.noexc48
  %i.ak = load ptr, ptr %2, align 8, !tbaa !227
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(632) %2)
          to label %.noexc50 unwind label %bb.o, !inline_history !2498

.noexc50:                                         ; preds = %.noexc49
  %i.an = load ptr, ptr %2, align 8, !tbaa !227
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(632) %2, i1 noundef zeroext true)
          to label %_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_12BlockPointerEEET_tPKcS3_.exit unwind label %bb.o, !inline_history !2498

_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_12BlockPointerEEET_tPKcS3_.exit: ; preds = %bb.f, %.noexc50
  %.fca.1.insert.merged.i = phi { i64, i64 } [ { i64 -1, i64 0 }, %bb.f ], [ %i.aj, %.noexc50 ] ; 2 uses
  %i.aq = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.ar = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !706, !nonnull !245, !align !246
  %i.au = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_12BlockPointerEEET_tPKcS3_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN6duckdb7Catalog9GetSchemaENS_18CatalogTransactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %bb.i unwind label %bb.p       ; 3 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 320
  %i.ay = invoke ptr @_ZN6duckdb18SchemaCatalogEntry8GetEntryENS_18CatalogTransactionENS_11CatalogTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(248) %i.aw, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  store ptr %i.ay, ptr %5, align 8
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.az = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb11IOExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.at unwind label %bb.r

bb.n:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEEEET_tPKc.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.o:                                             ; preds = %.noexc50, %.noexc49, %.noexc48, %bb.g, %bb.f, %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.p:                                             ; preds = %bb.h, %_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINS_12BlockPointerEEET_tPKcS3_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.q:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]  ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !255   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.bg) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0, label %bb.s, label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn70 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.az) #23
  br label %bb.ar

bb.t:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %5, align 8, !tbaa !737   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 448
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !356
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 440
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.43, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !227
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 144
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(248) %i.aw, ptr noundef nonnull byval(%"struct.duckdb::CatalogTransaction") align 8 %1, ptr noundef nonnull align 8 dereferenceable(600) %i.z, ptr noundef nonnull align 8 dereferenceable(448) %i.bj)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store ptr %i.bt, ptr %8, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %8, align 8, !tbaa !737   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !227
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef nonnull align 8 dereferenceable(124) ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(688) %i.bj)
          to label %bb.z unwind label %bb.ac      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.ca, ptr %9, align 8, !tbaa !354
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !356
  store i8 0, ptr %i.ca, align 8, !tbaa !355
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !739
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 1, ptr %i.ce, align 8, !tbaa !740
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cg, align 8, !tbaa !491
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ch, i8 0, i64 64, i1 false)
  store i64 -1, ptr %i.ci, align 8, !tbaa !742
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 152 ; 2 uses
  store i32 0, ptr %i.cj, align 8, !tbaa !743
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 156
  store i32 0, ptr %i.ck, align 4, !tbaa !744
  %.not71 = icmp eq i64 %i.aq, -1
  br i1 %.not71, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.aa
  store i64 %i.aq, ptr %i.ci, align 8, !tbaa !248
  store i64 %i.ar, ptr %i.cj, align 8, !tbaa !194
  br label %bb.ai

bb.ab:                                            ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ar

bb.ac:                                            ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ad:                                            ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ae:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cp = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  invoke void @_ZN6duckdb13DataTableInfo23ExtractIndexStorageInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::IndexStorageInfo") align 8 %10, ptr noundef nonnull align 8 dereferenceable(256) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN6duckdb16IndexStorageInfoaSEOS0_(ptr noundef nonnull align 8 dereferenceable(160) %9, ptr noundef nonnull align 8 dereferenceable(160) %10) #23 ; 0 uses
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ct = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %.noexc57 unwind label %bb.am

.noexc57:                                         ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10shared_ptrINS_14TableIOManagerELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu)
          to label %_ZN6duckdb14TableIOManager3GetERNS_9DataTableE.exit unwind label %bb.am

_ZN6duckdb14TableIOManager3GetERNS_9DataTableE.exit: ; preds = %.noexc57
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !765, !nonnull !245, !align !246
  invoke void @_ZN6duckdb9make_uniqINS_12UnboundIndexEJNS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEENS_16IndexStorageInfoERNS_14TableIOManagerERNS_16AttachedDatabaseEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1116") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(160) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(408) %i.cx)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %_ZN6duckdb14TableIOManager3GetERNS_9DataTableE.exit
  %i.cy = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13DataTableInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.da = load ptr, ptr %11, align 8, !tbaa !767
  store ptr null, ptr %11, align 8, !tbaa !767
  store ptr %i.da, ptr %12, align 8, !tbaa !770
  invoke void @_ZN6duckdb14TableIndexList8AddIndexENS_10unique_ptrINS_5IndexESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.cz, ptr noundef nonnull %12)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.db = load ptr, ptr %12, align 8, !tbaa !771  ; 3 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i: ; preds = %bb.al
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !227
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.db) #23, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.al, %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i
  %i.df = load ptr, ptr %11, align 8, !tbaa !767  ; 3 uses
  %.not.i59 = icmp eq ptr %i.df, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb12UnboundIndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12UnboundIndexEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12UnboundIndexEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb12UnboundIndexD2Ev(ptr noundef nonnull align 8 dereferenceable(336) %i.df) #23
  call void @_ZdlPv(ptr noundef nonnull %i.df) #44
  br label %_ZNSt10unique_ptrIN6duckdb12UnboundIndexESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12UnboundIndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12UnboundIndexEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dg = load ptr, ptr %4, align 8, !tbaa !728   ; 3 uses
  %.not.i60 = icmp eq ptr %i.dg, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12UnboundIndexESt14default_deleteIS1_EED2Ev.exit
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !227
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(320) %i.dg) #23, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12UnboundIndexESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.am:                                            ; preds = %.noexc57, %bb.ai, %_ZN6duckdb14TableIOManager3GetERNS_9DataTableE.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit63

bb.ao:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %12, align 8, !tbaa !771  ; 3 uses
  %.not.i61 = icmp eq ptr %i.dn, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit63, label %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i62

_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i62: ; preds = %bb.ao
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !227
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.dn) #23, !inline_history !26
  br label %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit63

_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit63: ; preds = %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i62, %bb.ao, %bb.an
  %.pn35 = phi { ptr, i32 } [ %i.dl, %bb.an ], [ %i.dm, %bb.ao ], [ %i.dm, %_ZNKSt14default_deleteIN6duckdb5IndexEEclEPS1_.exit.i62 ]
  call void @_ZNSt10unique_ptrIN6duckdb12UnboundIndexESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #23
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit63, %bb.am
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt10unique_ptrIN6duckdb5IndexESt14default_deleteIS1_EED2Ev.exit63 ], [ %i.dk, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ah, %bb.ad
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.ap ], [ %i.co, %bb.ad ], [ %i.cs, %bb.ah ]
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w, %bb.ac, %bb.aq, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.q
  %.pn35.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %.pn70, %bb.s ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %bb.w ], [ %i.cm, %bb.ab ], [ %.pn35.pn.pn, %bb.aq ], [ %i.cn, %bb.ac ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.o, %bb.ar, %bb.p, %bb.n
  %.pn35.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %i.bb, %bb.o ], [ %.pn35.pn.pn.pn.pn.pn.pn.pn, %bb.ar ], [ %i.bc, %bb.p ]
  %i.dr = load ptr, ptr %4, align 8, !tbaa !728   ; 3 uses
  %.not.i64 = icmp eq ptr %i.dr, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i65: ; preds = %bb.as
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !227
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(320) %i.dr) #23, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit66: ; preds = %bb.as, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

bb.at:                                            ; preds = %bb.m
  unreachable
}

declare noundef nonnull align 8 dereferenceable(248) ptr @_ZN6duckdb7Catalog9GetSchemaENS_18CatalogTransactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef byval(%"struct.duckdb::CatalogTransaction") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare ptr @_ZN6duckdb18SchemaCatalogEntry8GetEntryENS_18CatalogTransactionENS_11CatalogTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef byval(%"struct.duckdb::CatalogTransaction") align 8, i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6duckdb11IOExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13DataTableInfo23ExtractIndexStorageInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::IndexStorageInfo") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !774
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !775
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20
  %.01727 = phi i64 [ 0, %.lr.ph ], [ %i.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20 ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb13WriteAheadLog14ReplayInternalENS_12QueryContextERNS_14StorageManagerENS_10unique_ptrINS_10FileHandleESt14default_deleteIS5_ELb1EEENS_14WALReplayStateE:bb.a
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.203, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.204)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK6duckdb9ErrorData5ThrowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %15, ptr noundef nonnull align 8 dereferenceable(32) %16) #47
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.az:                                            ; preds = %bb.as
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ba:                                            ; preds = %bb.au
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.bb:                                            ; preds = %bb.av
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bc:                                            ; preds = %bb.aw
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %16, align 8, !tbaa !255  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.ce) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bb
  %.pn171 = phi { ptr, i32 } [ %i.cc, %bb.bb ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cd, %bb.bc ] ; 2 uses
  %i.ch = load ptr, ptr %17, align 8, !tbaa !255  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ch) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.ba
  %.pn171.pn = phi { ptr, i32 } [ %i.cb, %bb.ba ], [ %.pn171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %.pn171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bj

bb.bd:                                            ; preds = %bb.at
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.bl

bb.be:                                            ; preds = %bb.bd, %bb.ap
  %i.ck = load i64, ptr %i.as, align 8, !tbaa !3793
  %.not507 = icmp eq i64 %i.ck, -1
  br i1 %.not507, label %bb.eq, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cl = icmp eq i32 %4, 1
  br i1 %i.cl, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.205, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.hk unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.az
  %.pn171.pn.pn = phi { ptr, i32 } [ %.pn171.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %i.ca, %bb.az ]
  call void @_ZN6duckdb9ErrorDataD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %15) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.ay
  %.pn171.pn.pn.pn = phi { ptr, i32 } [ %.pn171.pn.pn, %bb.bj ], [ %i.bz, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  invoke void @__cxa_end_catch()
          to label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit437 unwind label %bb.hj

bb.bl:                                            ; preds = %bb.bd
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread: ; preds = %bb.bg
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %.0165 = phi i1 [ false, %bb.bi ], [ true, %bb.bh ] ; 2 uses
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cq = load ptr, ptr %18, align 8, !tbaa !255  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.cq) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.0165, label %bb.bn, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.0165, label %bb.bn, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit437

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %.pn221489 = phi { ptr, i32 } [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ]
  call void @__cxa_free_exception(ptr %i.cm) #23
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit437

bb.bo:                                            ; preds = %bb.bf
  %i.ct = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb16AttachedDatabase17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(408) %i.c)
          to label %bb.bp unwind label %bb.bw     ; 4 uses

bb.bp:                                            ; preds = %bb.bo
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !588, !nonnull !245, !align !246
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb10FileSystem3GetERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(408) %i.cu)
          to label %bb.bq unwind label %bb.bx     ; 14 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !3796
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.cw, ptr %6, align 8, !tbaa !354, !noalias !3796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cw, ptr noundef nonnull align 1 dereferenceable(15) @.str.102, i64 15, i1 false), !noalias !3796
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 15, ptr %i.cx, align 8, !tbaa !356, !noalias !3796
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 31
  store i8 0, ptr %i.cy, align 1, !tbaa !355, !noalias !3796
  invoke void @_ZN6duckdb14StorageManager10GetWALPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(224) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.cz = load ptr, ptr %6, align 8, !tbaa !255, !noalias !3796 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cw
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.cz) #44
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %6, align 8, !tbaa !255, !noalias !3796 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cw
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.bs
  call void @_ZdlPv(ptr noundef %i.dc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3796
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3796
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !227
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.597") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 129, i64 66048, ptr null)
          to label %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit unwind label %bb.by

_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dh = load ptr, ptr %21, align 8, !tbaa !415  ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.sroa.039.0.copyload = load i64, ptr %i.as, align 8, !tbaa !248
  %.sroa.240.0.copyload = load i64, ptr %i.at, align 8, !tbaa !194
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !227
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(224) %i.ct, i64 %.sroa.039.0.copyload, i64 %.sroa.240.0.copyload)
          to label %bb.bt unwind label %bb.bz     ; 2 uses

bb.bt:                                            ; preds = %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %.not508 = icmp eq ptr %i.dh, null
  br i1 %.not508, label %bb.bu, label %bb.ca

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.dl, label %bb.bv, label %bb.ep

bb.bv:                                            ; preds = %bb.bu
  store ptr null, ptr %0, align 8, !tbaa !3792
  br label %.critedge

bb.bw:                                            ; preds = %bb.bo
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit437

bb.bx:                                            ; preds = %bb.bp
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit437

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit249

bb.bz:                                            ; preds = %bb.ck, %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, %bb.cb, %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %.sroa.0472.0 = phi ptr [ null, %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EE5resetEPS1_.exit ], [ %i.dh, %bb.cb ], [ %i.dh, %bb.ck ], [ %i.dh, %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit ]
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit249

bb.ca:                                            ; preds = %bb.bt
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !588, !nonnull !245, !align !246 ; 2 uses
  br i1 %i.dl, label %bb.cb, label %bb.ck

bb.cb:                                            ; preds = %bb.ca
  %i.dr = invoke noundef zeroext i1 @_ZNK6duckdb16AttachedDatabase10IsReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(408) %i.dq)
          to label %bb.cc unwind label %bb.bz

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.dr, label %bb.cd, label %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

bb.cd:                                            ; preds = %bb.cc
  %i.ds = ptrtoint ptr %i.dh to i64
  store i64 %i.ds, ptr %22, align 8, !tbaa !415
  invoke void @_ZN6duckdb13WriteAheadLog14ReplayInternalENS_12QueryContextERNS_14StorageManagerENS_10unique_ptrINS_10FileHandleESt14default_deleteIS5_ELb1EEENS_14WALReplayStateE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.711") align 8 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull %22, i32 noundef 1)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.dt = load ptr, ptr %22, align 8, !tbaa !415  ; 3 uses
  %.not.i244 = icmp eq ptr %i.dt, null
  br i1 %.not.i244, label %.critedge, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i245

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i245: ; preds = %bb.ce
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !227
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dt) #23, !inline_history !3
  br label %.critedge

bb.cf:                                            ; preds = %bb.cd
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %22, align 8, !tbaa !415  ; 3 uses
  %.not.i247 = icmp eq ptr %i.dy, null
  br i1 %.not.i247, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i248

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i248: ; preds = %bb.cf
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !227
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dy) #23, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit249

_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.cc
  %i.ec = load ptr, ptr %i.dh, align 8, !tbaa !227
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dh) #23, !inline_history !111
  %i.ef = load ptr, ptr %i.cv, align 8, !tbaa !227
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 152
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr null)
          to label %bb.cg unwind label %bb.bz

bb.cg:                                            ; preds = %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.ei = load ptr, ptr %i.cv, align 8, !tbaa !227
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  invoke void %i.ek(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.597") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 129, i64 66048, ptr null)
          to label %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit252 unwind label %bb.ci

_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit252: ; preds = %bb.cg
  %i.el = load ptr, ptr %23, align 8, !tbaa !415
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.em = ptrtoint ptr %i.el to i64
  store i64 %i.em, ptr %24, align 8, !tbaa !415
  invoke void @_ZN6duckdb13WriteAheadLog14ReplayInternalENS_12QueryContextERNS_14StorageManagerENS_10unique_ptrINS_10FileHandleESt14default_deleteIS5_ELb1EEENS_14WALReplayStateE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.711") align 8 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef nonnull %24, i32 noundef 1)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit252
  %i.en = load ptr, ptr %24, align 8, !tbaa !415  ; 3 uses
  %.not.i256 = icmp eq ptr %i.en, null
  br i1 %.not.i256, label %.critedge, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i257

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i257: ; preds = %bb.ch
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !227
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.en) #23, !inline_history !3
  br label %.critedge

bb.ci:                                            ; preds = %bb.cg
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit249

bb.cj:                                            ; preds = %_ZN6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEaSEOS4_.exit252
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %24, align 8, !tbaa !415  ; 3 uses
  %.not.i259 = icmp eq ptr %i.et, null
  br i1 %.not.i259, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i260

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i260: ; preds = %bb.cj
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !227
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.et) #23, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit249

bb.ck:                                            ; preds = %bb.ca
  %i.ex = invoke noundef zeroext i1 @_ZNK6duckdb16AttachedDatabase10IsReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(408) %i.dq)
          to label %bb.cl unwind label %bb.bz

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ex, label %bb.ep, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !3797
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ey, ptr %5, align 8, !tbaa !354, !noalias !3797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ey, ptr noundef nonnull align 1 dereferenceable(13) @.str.103, i64 13, i1 false), !noalias !3797
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 13, ptr %i.ez, align 8, !tbaa !356, !noalias !3797
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 29
  store i8 0, ptr %i.fa, align 1, !tbaa !355, !noalias !3797
  invoke void @_ZN6duckdb14StorageManager10GetWALPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(224) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.fb = load ptr, ptr %5, align 8, !tbaa !255, !noalias !3797 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.ey
  br i1 %i.fc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266: ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef %i.fb) #44
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i267

bb.co:                                            ; preds = %bb.cm
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %5, align 8, !tbaa !255, !noalias !3797 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ey
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i263: ; preds = %bb.co
  call void @_ZdlPv(ptr noundef %i.fe) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i264: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3797
  br label %.body268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i267: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3797
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  %i.fg = load ptr, ptr %i.cv, align 8, !tbaa !227
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.597") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 18, i64 66048, ptr null)
          to label %bb.cp unwind label %bb.de

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i267
  %i.fj = invoke noalias noundef nonnull dereferenceable(262136) ptr @_Znam(i64 noundef 262136) #46
          to label %bb.cq unwind label %bb.df     ; 7 uses

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(262136) %i.fj, i8 0, i64 262136, i1 false), !noalias !3798
end_hunk_1
begin_hunk_2_@_ZN6duckdb25WriteAheadLogDeserializer17ThrowVersionErrorEmm:._crit_edge.i.i

bb.a:                                             ; preds = %.noexc10
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc10
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc10 ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !255    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.j
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.q) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn19 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %.pn19, %bb.c ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !255    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.s) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn18

bb.e:                                             ; preds = %bb.a
  unreachable
}

declare void @_ZN6duckdb10Connection6CommitEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN6duckdb10Connection5QueryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.3043") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6duckdb10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25WriteAheadLogDeserializer11ReplayEntryENS_7WALTypeE(ptr noundef nonnull align 8 dereferenceable(760) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  switch i8 %1, label %bb.aa [
    i8 98, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 20, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 21, label %bb.o
    i8 22, label %bb.p
    i8 23, label %bb.q
    i8 24, label %bb.r
    i8 25, label %bb.s
    i8 26, label %bb.t
    i8 29, label %bb.u
    i8 27, label %bb.v
    i8 28, label %bb.w
    i8 99, label %bb.x
    i8 13, label %bb.y
    i8 14, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer13ReplayVersionEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer17ReplayCreateTableEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer15ReplayDropTableEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer11ReplayAlterEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer16ReplayCreateViewEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer14ReplayDropViewEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer18ReplayCreateSchemaEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer16ReplayDropSchemaEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer20ReplayCreateSequenceEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer18ReplayDropSequenceEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer19ReplaySequenceValueEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer17ReplayCreateMacroEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer15ReplayDropMacroEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.o:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer22ReplayCreateTableMacroEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer20ReplayDropTableMacroEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.q:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer17ReplayCreateIndexEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer15ReplayDropIndexEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.s:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer14ReplayUseTableEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.t:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer12ReplayInsertEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.u:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer18ReplayRowGroupDataEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.v:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer12ReplayDeleteEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.w:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer12ReplayUpdateEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.x:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(632) %i.a, i16 noundef zeroext 101, ptr noundef nonnull @.str.140), !inline_history !3813
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !inline_history !3814
  %i.h = tail call { i64, i64 } @_ZN6duckdb16MetaBlockPointer11DeserializeERNS_12DeserializerE(ptr noundef nonnull align 8 dereferenceable(632) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !inline_history !3814
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !inline_history !3813
  %i.o = extractvalue { i64, i64 } %i.h, 0
  %i.p = extractvalue { i64, i64 } %i.h, 1
  %i.q = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !245, !align !246 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.o, ptr %i.r, align 8, !tbaa !248
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.u = load i64, ptr %i.s, align 8, !tbaa !248
  store i64 %i.u, ptr %i.t, align 8, !tbaa !248
  br label %bb.af

bb.y:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer16ReplayCreateTypeEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.z:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb25WriteAheadLogDeserializer14ReplayDropTypeEv(ptr noundef nonnull align 8 dereferenceable(760) %0)
  br label %bb.af

bb.aa:                                            ; preds = %bb.a
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.210, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.ah unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aa
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !255    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.y) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.ae, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.v) #23
  br label %bb.ag

bb.af:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ae
  %.pn9 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.ae ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.ah:                                            ; preds = %bb.ac
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25WriteAheadLogDeserializer13ReplayVersionEv(ptr noundef nonnull align 8 dereferenceable(760) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %i.a = alloca [16 x i8], align 16               ; 20 uses
  %2 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %5 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 24 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(632) %i.b, i16 noundef zeroext 101, ptr noundef nonnull @.str.137), !inline_history !31
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(632) %i.b), !inline_history !32
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(632) %i.b), !inline_history !31
  %i.m = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !245, !align !246
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 %i.i, ptr %i.n, align 8, !tbaa !2023
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2043, !nonnull !245, !align !246
  %i.q = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb16AttachedDatabase17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(408) %i.p) ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !227
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(224) %i.q) ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(632) %i.b, i16 noundef zeroext 102, ptr noundef nonnull @.str.138), !inline_history !3815 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !227  ; 2 uses
  br i1 %i.y, label %bb.b, label %"_ZN6duckdb12Deserializer16ReadOptionalListIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvtPKcT_.exit"

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %i.b), !inline_history !3816 ; 2 uses
  %.not.i.i = icmp ne i64 %i.ac, 0                ; 2 uses
  br i1 %.not.i.i, label %.lr.ph.i.i, label %"_ZN6duckdb12Deserializer16ReadListInternalIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvT_.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.ai, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef zeroext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(632) %i.b), !inline_history !3817
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.07.i.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !355
  %i.ai = add nuw nsw i64 %.07.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ai, %i.ac
  br i1 %exitcond.not.i.i, label %"_ZN6duckdb12Deserializer16ReadListInternalIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvT_.exit.i", label %.lr.ph.i.i, !llvm.loop !3818

"_ZN6duckdb12Deserializer16ReadListInternalIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvT_.exit.i": ; preds = %.lr.ph.i.i, %bb.b
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(632) %i.b), !inline_history !3816
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !227
  br label %"_ZN6duckdb12Deserializer16ReadOptionalListIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvtPKcT_.exit"

"_ZN6duckdb12Deserializer16ReadOptionalListIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvtPKcT_.exit": ; preds = %bb.a, %"_ZN6duckdb12Deserializer16ReadListInternalIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvT_.exit.i"
  %.122 = phi i1 [ %.not.i.i, %"_ZN6duckdb12Deserializer16ReadListInternalIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvT_.exit.i" ], [ false, %bb.a ]
  %.sink3.i = phi ptr [ %i.am, %"_ZN6duckdb12Deserializer16ReadListInternalIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvT_.exit.i" ], [ %i.z, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sink3.i, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(632) %i.b, i1 noundef zeroext %i.y), !inline_history !3815
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(632) %i.b, i16 noundef zeroext 103, ptr noundef nonnull @.str.139), !inline_history !3819
  br i1 %i.as, label %bb.c, label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_12optional_idxEEET_tPKc.exit.thread

bb.c:                                             ; preds = %"_ZN6duckdb12Deserializer16ReadOptionalListIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvtPKcT_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(632) %i.b), !inline_history !3820 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_12optional_idxEEET_tPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.aw)
  %.pre.i.i = load i64, ptr %1, align 8
  br label %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_12optional_idxEEET_tPKc.exit

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_12optional_idxEEET_tPKc.exit: ; preds = %bb.c, %bb.d
  %i.ay = phi i64 [ %.pre.i.i, %bb.d ], [ -1, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(632) %i.b, i1 noundef zeroext true), !inline_history !3819
  store i64 %i.ay, ptr %2, align 8
  %i.bc = icmp ne i64 %i.ay, -1
  %or.cond31 = select i1 %.122, i1 %i.bc, i1 false
  br i1 %or.cond31, label %bb.e, label %.thread

_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_12optional_idxEEET_tPKc.exit.thread: ; preds = %"_ZN6duckdb12Deserializer16ReadOptionalListIZNS_25WriteAheadLogDeserializer13ReplayVersionEvE3$_0EEvtPKcT_.exit"
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(632) %i.b, i1 noundef zeroext false), !inline_history !3819
  br label %.thread

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer23ReadPropertyWithDefaultINS_12optional_idxEEET_tPKc.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 584
  %i.bh = load i8, ptr %i.a, align 16, !tbaa !355
  %i.bi = load i8, ptr %i.bg, align 8, !tbaa !355
  %.not.i = icmp eq i8 %i.bh, %i.bi
  br i1 %.not.i, label %bb.f, label %_ZN6duckdb10MainHeader20CompareDBIdentifiersEPhS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !355
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 585
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !355
  %.not.1.i = icmp eq i8 %i.bk, %i.bm
  br i1 %.not.1.i, label %bb.g, label %_ZN6duckdb10MainHeader20CompareDBIdentifiersEPhS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 2
end_hunk_2
begin_hunk_3_@_ZN6duckdb25WriteAheadLogDeserializer12ReplayUpdateEv:bb.a
  %.pn38 = phi { ptr, i32 } [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.br) #23
  br label %bb.ap

bb.v:                                             ; preds = %bb.p
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !248
  %i.bz = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !245, !align !246
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_17TableCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %bb.x unwind label %bb.o

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !997
  %i.cc = invoke noundef nonnull align 8 dereferenceable(105) ptr @_ZNK6duckdb17TableCatalogEntry10GetColumnsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.cb)
          to label %bb.y unwind label %bb.o       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !913
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !547
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  %.not = icmp ult i64 %i.by, %i.ck
  br i1 %.not, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.219, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.as unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !255   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.co) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ad, label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %.pn1641 = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ]
  call void @__cxa_free_exception(ptr %i.cl) #23
  br label %bb.ap

bb.ae:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cr = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  call void @_ZN6duckdb6VectorC1EOS0_(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(104) %i.cr) #23
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1140
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -104 ; 2 uses
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !1140
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.cu) #23
  %i.cv = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !245, !align !246
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_17TableCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !997 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !227
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef nonnull align 8 dereferenceable(124) ptr %i.da(ptr noundef nonnull align 8 dereferenceable(448) %i.cx)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !245, !align !246
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  invoke void @_ZNK6duckdb12optional_ptrINS_17TableCatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !2045, !nonnull !245, !align !246
  invoke void @_ZN6duckdb9DataTable12UpdateColumnERNS_17TableCatalogEntryERNS_13ClientContextERNS_6VectorERKNS_6vectorImLb1ESaImEEERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(124) %i.db, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(512) %i.df, ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZN6duckdb12Deserializer10ReadObjectIZNS_25WriteAheadLogDeserializer12ReplayUpdateEvE3$_0EEvtPKcT_.exit", %bb.aj
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dg = load ptr, ptr %1, align 8, !tbaa !547   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef nonnull %i.dg) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.am:                                            ; preds = %bb.ae
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ah, %bb.af, %bb.ai, %bb.ag
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn14 = phi { ptr, i32 } [ %i.di, %bb.an ], [ %i.dh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.u, %bb.ao, %bb.o
  %.pn16.pn = phi { ptr, i32 } [ %.pn1641, %bb.ad ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn14, %bb.ao ], [ %i.bn, %bb.o ], [ %.pn38, %bb.u ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #23
  %.pre = load ptr, ptr %1, align 8, !tbaa !547
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.n
  %i.dj = phi ptr [ %.pre, %bb.ap ], [ %i.l, %bb.n ] ; 2 uses
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %bb.ap ], [ %i.bm, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i.i31 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorImSaImEED2Ev.exit32, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef nonnull %i.dj) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit32

_ZNSt6vectorImSaImEED2Ev.exit32:                  ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume

bb.as:                                            ; preds = %bb.ab, %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25WriteAheadLogDeserializer16ReplayCheckpointEv(ptr noundef nonnull align 8 dereferenceable(760) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(632) %i.a, i16 noundef zeroext 101, ptr noundef nonnull @.str.140), !inline_history !29
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !inline_history !30
  %i.h = tail call { i64, i64 } @_ZN6duckdb16MetaBlockPointer11DeserializeERNS_12DeserializerE(ptr noundef nonnull align 8 dereferenceable(632) %i.a) ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !inline_history !30
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !inline_history !29
  %i.o = extractvalue { i64, i64 } %i.h, 0
  %i.p = extractvalue { i64, i64 } %i.h, 1
  %i.q = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !245, !align !246 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.o, ptr %i.r, align 8, !tbaa !248
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.u = load i64, ptr %i.s, align 8, !tbaa !248
  store i64 %i.u, ptr %i.t, align 8, !tbaa !248
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25WriteAheadLogDeserializer16ReplayCreateTypeEv(ptr noundef nonnull align 8 dereferenceable(760) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.1085", align 8 ; 4 uses
  %2 = alloca %"class.duckdb::unique_ptr.1085", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4068)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !4068
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !noalias !4068
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(632) %i.a, i16 noundef zeroext 101, ptr noundef nonnull @.str.37), !noalias !4068, !inline_history !23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4069)
  store ptr null, ptr %2, align 8, !tbaa !727, !alias.scope !4070
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !4070
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4070
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !noalias !4070, !inline_history !24
  br i1 %i.h, label %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.b

_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !4070
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !noalias !4070
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(632) %i.a), !noalias !4070, !inline_history !24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !4070
  call void @_ZN6duckdb10CreateInfo11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1085") align 8 %1, ptr noundef nonnull align 8 dereferenceable(632) %i.a), !noalias !4070
  %i.l = load ptr, ptr %1, align 8, !tbaa !728, !noalias !4070 ; 3 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !728, !alias.scope !4070
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !4070
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !4070
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !noalias !4070
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %bb.b unwind label %bb.c, !noalias !4070

bb.b:                                             ; preds = %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, %bb.a
  %i.p = phi ptr [ %i.l, %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i ], [ null, %bb.a ] ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !4070
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !noalias !4070
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i unwind label %bb.c, !noalias !4070

bb.c:                                             ; preds = %bb.b, %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  %.ph.i.i = phi ptr [ %i.l, %_ZN6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %.ph.i.i, null
  br i1 %.not.i6.i.i, label %common.resume, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.d, %bb.c
  %.sink8.i = phi ptr [ %i.p, %bb.d ], [ %.ph.i.i, %bb.c ] ; 2 uses
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.z, %bb.d ], [ %lpad.thr_comm.split-lp.i.i, %bb.c ]
  %i.t = load ptr, ptr %.sink8.i, align 8, !tbaa !227, !noalias !4068
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !4068
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(320) %.sink8.i) #23, !noalias !4068, !inline_history !23
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %common.resume.sink.split.i, %bb.d, %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit4 ], [ %lpad.thr_comm.split-lp.i.i, %bb.c ], [ %i.z, %bb.d ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i: ; preds = %bb.b
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !227, !noalias !4068
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !4068
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(632) %i.a)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEEEET_tPKc.exit unwind label %bb.d, !noalias !4068

bb.d:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %common.resume, label %common.resume.sink.split.i

_ZN6duckdb12Deserializer12ReadPropertyINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i
  %i.aa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEEEET_tPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i8 1, ptr %i.ab, align 8, !tbaa !736
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2046, !nonnull !245, !align !246
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2045, !nonnull !245, !align !246
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = invoke ptr @_ZN6duckdb7Catalog10CreateTypeERNS_13ClientContextERNS_14CreateTypeInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 8 dereferenceable(512) %i.af, ptr noundef nonnull align 8 dereferenceable(392) %i.ag)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %2, align 8, !tbaa !728   ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !227
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(320) %i.ai) #23, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e, %_ZN6duckdb12Deserializer12ReadPropertyINS_10unique_ptrINS_10CreateInfoESt14default_deleteIS3_ELb1EEEEET_tPKc.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !728   ; 3 uses
  %.not.i2 = icmp eq ptr %i.an, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit4, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i3

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i3: ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !227
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(320) %i.an) #23, !inline_history !25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit4

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit4: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25WriteAheadLogDeserializer14ReplayDropTypeEv(ptr noundef nonnull align 8 dereferenceable(760) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::DropInfo", align 8 ; 21 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN6duckdb8DropInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 8, ptr %i.a, align 1, !tbaa !2057
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4079)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !4079
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !4079
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(632) %i.b, i16 noundef zeroext 101, ptr noundef nonnull @.str.36)
          to label %.noexc unwind label %bb.n, !inline_history !148

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !4080
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !noalias !4080
  invoke void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %i.b)
          to label %.noexc4 unwind label %bb.n, !inline_history !148

.noexc4:                                          ; preds = %.noexc
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !4079
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(632) %i.b)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc4
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !255, !alias.scope !4079 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.m) #44
  br label %.body

_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit: ; preds = %.noexc4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !255  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = load ptr, ptr %2, align 8, !tbaa !255    ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit
  br i1 %i.v, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_tPKc.exit
  br i1 %i.v, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !356  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
end_hunk_3
begin_hunk_4_@_ZNSt5dequeISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPSt17reference_wrapperIN6duckdb7CatalogEES5_ET0_T_S7_S6_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !714
  store ptr %i.be, ptr %i.av, align 8, !tbaa !714
  br label %_ZSt4copyIPPSt17reference_wrapperIN6duckdb7CatalogEES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPSt17reference_wrapperIN6duckdb7CatalogEES5_ET0_T_S7_S6_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !2098
  tail call void @_ZdlPv(ptr noundef %i.bf) #44
  store ptr %i.aq, ptr %0, align 8, !tbaa !2098
  store i64 %i.am, ptr %i.k, align 8, !tbaa !2109
  br label %_ZSt4copyIPPSt17reference_wrapperIN6duckdb7CatalogEES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPSt17reference_wrapperIN6duckdb7CatalogEES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt17reference_wrapperIN6duckdb7CatalogEES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt17reference_wrapperIN6duckdb7CatalogEES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !713
  %i.bg = load ptr, ptr %.0, align 8, !tbaa !714  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !715
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 512
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !716
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !713
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !714 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !715
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 512
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !716
  ret void
}

declare noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_11CatalogTypeEEEPKcT_(i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK6duckdb12CatalogEntry9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(680)) local_unnamed_addr #1

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_11CatalogTypeEEET_PKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN6duckdb10CreateInfo11DeserializeERNS_12DeserializerE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1085") align 8, ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #1

declare { i64, i64 } @_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE(ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_12CatalogEntryELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !737
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !255    ; 2 uses
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

declare void @_ZN6duckdb12UnboundIndexC1ENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEENS_16IndexStorageInfoERNS_14TableIOManagerERNS_16AttachedDatabaseE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(408)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_13ClientContextELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !417
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !255    ; 2 uses
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

declare { i64, i64 } @_ZN6duckdb16MetaBlockPointer11DeserializeERNS_12DeserializerE(ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_12BlockPointerELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.1190") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit, %.preheader
  %.lcssa16 = phi ptr [ null, %.preheader ], [ %i.ao, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  store ptr %.lcssa16, ptr %0, align 8
  %i.g = load ptr, ptr %1, align 8, !tbaa !227
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.j unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.j = phi ptr [ %.lcssa16, %._crit_edge ], [ null, %bb.a ]
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit
  %2 = phi ptr [ null, %.lr.ph ], [ %3, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ]
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc unwind label %.loopexit, !inline_history !4368

.noexc:                                           ; preds = %bb.c
  %i.q = invoke { i64, i64 } @_ZN6duckdb12BlockPointer11DeserializeERNS_12DeserializerE(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %.noexc
  %i.r = load ptr, ptr %1, align 8, !tbaa !227
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit unwind label %.loopexit, !inline_history !4368

_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit: ; preds = %.noexc9
  %i.u = extractvalue { i64, i64 } %i.q, 0        ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.q, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  store i64 %i.u, ptr %i.l, align 8, !tbaa !248
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !194
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !831
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_12BlockPointerEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  %i.x = ptrtoint ptr %2 to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.f, label %_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.m, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #47
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ab = ashr exact i64 %i.z, 4                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %i.af = select i1 %i.ad, i64 576460752303423487, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #46
          to label %.noexc12 unwind label %.loopexit ; 5 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i64 %i.u, ptr %i.ai, align 8, !tbaa !248
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx14, align 8, !tbaa !194
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.m, %2
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ah, %.noexc12 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc12 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !800, !alias.scope !4374
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4372

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc12 ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #44
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !831
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !4375
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d
  %3 = phi ptr [ %i.am, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %2, %bb.d ]
  %i.an = phi ptr [ %i.al, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.w, %bb.d ]
  %i.ao = phi ptr [ %i.ah, %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.ap = add nuw i64 %.019, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !4373

.loopexit:                                        ; preds = %bb.c, %.noexc, %.noexc9, %_ZNKSt6vectorIN6duckdb12BlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.b
  %i.aq = phi ptr [ %i.j, %bb.b ], [ %i.m, %.loopexit ], [ %i.m, %.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.k, %bb.b ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #44
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_16IndexStorageInfoELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.1037") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::IndexStorageInfo", align 8 ; 25 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit, %.preheader
  %i.v = load ptr, ptr %1, align 8, !tbaa !227
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.n unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %_ZNSt6vectorIN6duckdb16IndexStorageInfoESaIS1_EE9push_backEOS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.z = load ptr, ptr %1, align 8, !tbaa !227, !noalias !4380
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !4380
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc unwind label %bb.k, !inline_history !4378

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb16IndexStorageInfo11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::IndexStorageInfo") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc11 unwind label %bb.k

.noexc11:                                         ; preds = %.noexc
  %i.ac = load ptr, ptr %1, align 8, !tbaa !227, !noalias !4380
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_16IndexStorageInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc11
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb16IndexStorageInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %2) #23
  br label %.body

_ZN6duckdb12Deserializer4ReadINS_16IndexStorageInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit: ; preds = %.noexc11
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !774 ; 18 uses
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !832
  %.not.i.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_16IndexStorageInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !354
  %i.aj = load ptr, ptr %2, align 8, !tbaa !255   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.h, align 8, !tbaa !356 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !255
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !355
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !355
  %.pre = load i64, ptr %i.h, align 8, !tbaa !356
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ap = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.f ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !356
  store ptr %i.g, ptr %2, align 8, !tbaa !255
  store i64 0, ptr %i.h, align 8, !tbaa !356
  store i8 0, ptr %i.g, align 8, !tbaa !355
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.as = load i64, ptr %i.i, align 8, !tbaa !790
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !790
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !739 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !739
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !740 ; 2 uses
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !740
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !801 ; 3 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !529
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !802
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !802
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !804
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 4 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !805
  %i.bd = icmp eq ptr %i.au, %i.o
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bc, ptr %i.at, align 8, !tbaa !739
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !805
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !805
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bf = phi ptr [ %i.bc, %bb.g ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !807
  %i.bi = urem i64 %i.bh, %i.aw
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi
  store ptr %i.ax, ptr %i.bj, align 8, !tbaa !528
  br label %_ZN6duckdb16IndexStorageInfoC2EOS0_.exit

_ZN6duckdb16IndexStorageInfoC2EOS0_.exit:         ; preds = %bb.h, %bb.i
  store i64 0, ptr %i.p, align 8, !tbaa !808
  store i64 1, ptr %i.k, align 8, !tbaa !740
  store ptr null, ptr %i.o, align 8, !tbaa !805
  store ptr %i.o, ptr %i.j, align 8, !tbaa !739
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.bl = load <2 x ptr>, ptr %i.q, align 8, !tbaa !792
  store <2 x ptr> %i.bl, ptr %i.bk, align 8, !tbaa !792
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !791
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.bp = load <2 x ptr>, ptr %i.s, align 8, !tbaa !795
  store <2 x ptr> %i.bp, ptr %i.bo, align 8, !tbaa !795
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
end_hunk_4
begin_hunk_5_@llvm.usub.sat.i64
!4174 = distinct !{!4174, !213}
!4175 = distinct !{!4175, !213}
!4176 = !{!"p1 _ZTSSt4pairIPKctE", !195, i64 0}
!4177 = !{!"_ZTSNSt12_Vector_baseISt4pairIPKctESaIS3_EE17_Vector_impl_dataE", !4176, i64 0, !4176, i64 8, !4176, i64 16}
!4178 = !{!4177, !4176, i64 0}
!4179 = !{!"_ZTSSt10_HashtableIttSaItENSt8__detail9_IdentityESt8equal_toItESt4hashItENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !283, i64 0, !199, i64 8, !285, i64 16, !199, i64 24, !287, i64 32, !284, i64 48}
!4180 = !{!4179, !284, i64 16}
!4181 = !{!4179, !283, i64 0}
!4182 = !{!4179, !199, i64 8}
!4183 = !{!"_ZTSSt10_HashtableIPKcS1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE", !283, i64 0, !199, i64 8, !285, i64 16, !199, i64 24, !287, i64 32, !284, i64 48}
!4184 = !{!4183, !284, i64 16}
!4185 = !{!4183, !283, i64 0}
!4186 = !{!4183, !199, i64 8}
!4187 = distinct !{!4187, !213}
!4188 = distinct !{!4188, !213}
!4189 = !{!677, !284, i64 16}
!4190 = !{!"p2 _ZTSSt17reference_wrapperIN6duckdb17SerializationData10CustomDataEE", !282, i64 0}
!4191 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb17SerializationData10CustomDataEE", !195, i64 0}
!4192 = !{!"_ZTSSt15_Deque_iteratorISt17reference_wrapperIN6duckdb17SerializationData10CustomDataEERS4_PS4_E", !4191, i64 0, !4191, i64 8, !4191, i64 16, !4190, i64 24}
!4193 = !{!"_ZTSNSt11_Deque_baseISt17reference_wrapperIN6duckdb17SerializationData10CustomDataEESaIS4_EE16_Deque_impl_dataE", !4190, i64 0, !199, i64 8, !4192, i64 16, !4192, i64 48}
!4194 = !{!4193, !4190, i64 0}
!4195 = !{!4193, !4190, i64 40}
!4196 = !{!4193, !4190, i64 72}
!4197 = !{!4191, !4191, i64 0}
!4198 = distinct !{!4198, !213}
!4199 = distinct !{!4199, !213}
!4200 = !{!1304, !1304, i64 0}
!4201 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ReplayRangeESaIS1_EE17_Vector_impl_dataE", !1006, i64 0, !1006, i64 8, !1006, i64 16}
!4202 = !{!4201, !1006, i64 0}
!4203 = !{ptr @_ZN6duckdb5IndexD2Ev}
!4204 = distinct !{null, null}
!4205 = distinct !{null, null, null, null, null, null}
!4206 = distinct !{!4206, !213}
!4207 = !{!"p1 _ZTSN6duckdb15LogicalOperatorE", !195, i64 0}
!4208 = !{!4207, !4207, i64 0}
!4209 = distinct !{!4209, !213}
!4210 = !{!841, !840, i64 8}
!4211 = !{!841, !840, i64 16}
!4212 = !{i64 0, i64 8, !248, i64 8, i64 8, !248}
!4213 = distinct !{null}
!4214 = distinct !{!4214, !213}
!4215 = !{!951, !950, i64 16}
!4216 = !{!"_ZTSN17duckdb_moodycamel13ProducerTokenE", !949, i64 0}
!4217 = !{!4216, !949, i64 0}
!4218 = distinct !{!4218, !213}
!4219 = distinct !{!4219, !2141}
!4220 = distinct !{null, null}
!4221 = distinct !{null, null, null, null}
!4222 = distinct !{null, null, null, null, null, null}
!4223 = distinct !{!4223, !213}
!4224 = distinct !{ptr @_ZN6duckdb12StorageIndexD2Ev, null, ptr @_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev, null}
!4225 = distinct !{ptr @_ZN6duckdb12StorageIndexD2Ev, null, ptr @_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev}
!4226 = distinct !{ptr @_ZN6duckdb12StorageIndexD2Ev, null}
!4227 = distinct !{!4227, !213}
!4228 = distinct !{!4228, !213}
!4229 = distinct !{null, null, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!4230 = distinct !{!4230, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_EEES7_RKS7_DpRKT_"}
!4231 = distinct !{!4231, !4230, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!4232 = !{!4231}
!4233 = distinct !{!4233, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!4234 = distinct !{!4234, !4233, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4235 = distinct !{!4235, !4233, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4236 = distinct !{!4236, !213}
!4237 = distinct !{!4237, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!4238 = distinct !{!4238, !4237, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4239 = distinct !{!4239, !4237, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4240 = !{!4234}
!4241 = !{!4235}
!4242 = !{!4234, !4235}
!4243 = !{!4238}
!4244 = !{!4239}
!4245 = !{!4238, !4239}
!4246 = distinct !{!4246, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_"}
!4247 = distinct !{!4247, !4246, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_: argument 0"}
!4248 = !{!4247}
!4249 = distinct !{!4249, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_"}
!4250 = distinct !{!4250, !4249, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_: argument 0"}
!4251 = !{!4250}
!4252 = distinct !{!4252, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_"}
!4253 = distinct !{!4253, !4252, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_: argument 0"}
!4254 = !{!4253}
!4255 = !{!1203, !263, i64 72}
!4256 = distinct !{!4256, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!4257 = distinct !{!4257, !4256, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!4258 = !{!4257}
!4259 = distinct !{null, null, null, null}
!4260 = distinct !{!4260, !213}
!4261 = distinct !{!4261, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!4262 = distinct !{!4262, !4261, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!4263 = distinct !{!4263, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!4264 = distinct !{!4264, !4263, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!4265 = distinct !{null, null, null, null}
!4266 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!4267 = !{!4264, !4262}
!4268 = !{!4262}
!4269 = !{!1096, !1096, i64 0}
!4270 = distinct !{null, null, null}
!4271 = !{!1097, !1096, i64 0}
!4272 = distinct !{null, ptr @_ZN6duckdb16ColumnFetchStateD2Ev, null, null, null, null}
!4273 = distinct !{!4273, !213}
!4274 = distinct !{null, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_17LocalTableStorageELb1EED2Ev, null, null, null}
!4275 = distinct !{!4275, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_"}
!4276 = distinct !{!4276, !4275, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_: argument 0"}
!4277 = !{!4276}
!4278 = distinct !{!4278, !213}
!4279 = distinct !{!4279, !213}
!4280 = distinct !{!4280, !213}
!4281 = distinct !{!4281, !213}
!4282 = distinct !{!4282, !213}
!4283 = distinct !{null, null, ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev, null}
!4284 = distinct !{null, null, ptr @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev}
!4285 = distinct !{null, null}
!4286 = distinct !{!4286, !213}
!4287 = distinct !{!4287, !"_ZN6duckdb9make_uniqINS_23EncryptionStateMetadataEJNS_15EncryptionTypes10CipherTypeERKmNS2_17EncryptionVersionEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!4288 = distinct !{!4288, !4287, !"_ZN6duckdb9make_uniqINS_23EncryptionStateMetadataEJNS_15EncryptionTypes10CipherTypeERKmNS2_17EncryptionVersionEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!4289 = !{!4288}
!4290 = distinct !{!4290, !213}
!4291 = distinct !{null, null, null, null, null, null}
!4292 = distinct !{!4292, !213}
!4293 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14BaseStatisticsESaIS1_EE17_Vector_impl_dataE", !1368, i64 0, !1368, i64 8, !1368, i64 16}
!4294 = !{!4293, !1368, i64 0}
!4295 = !{!4293, !1368, i64 8}
!4296 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEE", !195, i64 0}
!4297 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_21ColumnCheckpointStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !4296, i64 0, !4296, i64 8, !4296, i64 16}
!4298 = !{!4297, !4296, i64 0}
!4299 = !{!4297, !4296, i64 8}
!4300 = !{!"p1 _ZTSN6duckdb21ColumnCheckpointStateE", !195, i64 0}
!4301 = !{!4300, !4300, i64 0}
!4302 = distinct !{null, null, null, null, null}
!4303 = distinct !{!4303, !213}
!4304 = distinct !{!4304, !213}
!4305 = distinct !{!4305, !213}
!4306 = !{!372, !370, i64 0}
!4307 = !{!372, !371, i64 8}
!4308 = distinct !{!4308, !213}
!4309 = distinct !{!4309, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4310 = distinct !{!4310, !4309, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4311 = !{!4310}
!4312 = distinct !{null, null, null, null, null, null}
!4313 = distinct !{!4313, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4314 = distinct !{!4314, !4313, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4315 = !{!4314}
!4316 = distinct !{null, null, null, null}
!4317 = !{!2025, !198, i64 0}
!4318 = distinct !{!4318, !"_ZN6duckdb9Exception16ConstructMessageIJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4319 = distinct !{!4319, !4318, !"_ZN6duckdb9Exception16ConstructMessageIJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4320 = !{!4319}
!4321 = distinct !{!4321, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4322 = distinct !{!4322, !4321, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4323 = !{!4322}
!4324 = distinct !{!4324, !"_ZN6duckdb9Exception16ConstructMessageIJmllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4325 = distinct !{!4325, !4324, !"_ZN6duckdb9Exception16ConstructMessageIJmllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4326 = !{!4325}
!4327 = distinct !{!4327, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_"}
!4328 = distinct !{!4328, !4327, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_: argument 0"}
!4329 = !{!4328}
!4330 = distinct !{!4330, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_"}
!4331 = distinct !{!4331, !4330, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_: argument 0"}
!4332 = !{!4331}
!4333 = distinct !{!4333, !"_ZN6duckdb9Exception16ConstructMessageIJlmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4334 = distinct !{!4334, !4333, !"_ZN6duckdb9Exception16ConstructMessageIJlmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4335 = !{!4334}
!4336 = distinct !{!4336, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_"}
!4337 = distinct !{!4337, !4336, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIlEES0_RKT_: argument 0"}
!4338 = !{!4337}
!4339 = distinct !{!4339, !"_ZSt19__relocate_object_aIN6duckdb10shared_ptrINS0_17ExternalFileCache15CachedFileRangeELb1EEES4_SaIS4_EEvPT_PT0_RT1_"}
!4340 = distinct !{!4340, !4339, !"_ZSt19__relocate_object_aIN6duckdb10shared_ptrINS0_17ExternalFileCache15CachedFileRangeELb1EEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!4341 = distinct !{!4341, !4339, !"_ZSt19__relocate_object_aIN6duckdb10shared_ptrINS0_17ExternalFileCache15CachedFileRangeELb1EEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!4342 = distinct !{!4342, !213}
!4343 = distinct !{!4343, !"_ZSt19__relocate_object_aIN6duckdb10shared_ptrINS0_17ExternalFileCache15CachedFileRangeELb1EEES4_SaIS4_EEvPT_PT0_RT1_"}
!4344 = distinct !{!4344, !4343, !"_ZSt19__relocate_object_aIN6duckdb10shared_ptrINS0_17ExternalFileCache15CachedFileRangeELb1EEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!4345 = distinct !{!4345, !4343, !"_ZSt19__relocate_object_aIN6duckdb10shared_ptrINS0_17ExternalFileCache15CachedFileRangeELb1EEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!4346 = !{!4340}
!4347 = !{!4341}
!4348 = !{!4344}
!4349 = !{!4345}
!4350 = distinct !{ptr @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10shared_ptrINS2_17ExternalFileCache15CachedFileRangeELb1EEEESt10_Select1stIS7_ESt4lessImESaIS7_EE10_Auto_nodeD2Ev, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_17ExternalFileCache15CachedFileRangeELb1EED2Ev, null, null, null}
!4351 = !{!2163, !2163, i64 0}
!4352 = !{!"_ZTSSt10shared_ptrIN6duckdb17ExternalFileCache15CachedFileRangeEE", !443, i64 0}
!4353 = !{!"_ZTSN6duckdb10shared_ptrINS_17ExternalFileCache15CachedFileRangeELb1EEE", !4352, i64 0}
!4354 = !{!"_ZTSSt4pairIKmN6duckdb10shared_ptrINS1_17ExternalFileCache15CachedFileRangeELb1EEEE", !199, i64 0, !4353, i64 8}
!4355 = !{!4354, !199, i64 0}
!4356 = distinct !{!4356, !213}
!4357 = distinct !{!4357, !213}
!4358 = distinct !{!4358, !"_ZSt19__relocate_object_aISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES3_SaIS3_EEvPT_PT0_RT1_"}
!4359 = distinct !{!4359, !4358, !"_ZSt19__relocate_object_aISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!4360 = distinct !{!4360, !4358, !"_ZSt19__relocate_object_aISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!4361 = !{!"_ZTSZN6duckdb26SingleFileCheckpointWriter16CreateCheckpointEvE3$_0", !501, i64 0}
!4362 = !{!4361, !501, i64 0}
!4363 = !{!4359}
!4364 = !{!4360}
!4365 = !{!488, !199, i64 24}
!4366 = distinct !{!4366, !213}
!4367 = !{!488, !284, i64 48}
!4368 = distinct !{null}
!4369 = distinct !{!4369, !"_ZSt19__relocate_object_aIN6duckdb12BlockPointerES1_SaIS1_EEvPT_PT0_RT1_"}
!4370 = distinct !{!4370, !4369, !"_ZSt19__relocate_object_aIN6duckdb12BlockPointerES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4371 = distinct !{!4371, !4369, !"_ZSt19__relocate_object_aIN6duckdb12BlockPointerES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4372 = distinct !{!4372, !213}
!4373 = distinct !{!4373, !213}
!4374 = !{!4371, !4370}
!4375 = !{!828, !827, i64 16}
!4376 = distinct !{!4376, !"_ZN6duckdb12Deserializer4ReadINS_16IndexStorageInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv"}
!4377 = distinct !{!4377, !4376, !"_ZN6duckdb12Deserializer4ReadINS_16IndexStorageInfoEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv: argument 0"}
!4378 = distinct !{null}
!4379 = distinct !{!4379, !213}
!4380 = !{!4377}
!4381 = distinct !{!4381, !213}
!4382 = distinct !{!4382, !213}
!4383 = distinct !{!4383, !"_ZN6duckdb9Exception16ConstructMessageIJimmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4384 = distinct !{!4384, !4383, !"_ZN6duckdb9Exception16ConstructMessageIJimmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4385 = !{!4384}
!4386 = distinct !{!4386, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_"}
!4387 = distinct !{!4387, !4386, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_: argument 0"}
!4388 = !{!4387}
!4389 = distinct !{!4389, !213}
!4390 = distinct !{!4390, !213}
!4391 = distinct !{!4391, !213}
!4392 = !{!870, !284, i64 48}
!4393 = distinct !{!4393, !213}
!4394 = distinct !{!4394, !213}
!4395 = distinct !{!4395, !213}
!4396 = distinct !{!4396, !213}
!4397 = distinct !{!4397, !213}
!4398 = distinct !{!4398, !213}
!4399 = !{!"branch_weights", i32 127, i32 1}
!4400 = !{!"branch_weights", i32 255873, i32 127}
!4401 = !{!"branch_weights", i32 16129, i32 127}
!4402 = distinct !{!4402, !213}
!4403 = distinct !{!4403, !213}
!4404 = distinct !{!4404, !213}
!4405 = distinct !{!4405, !213}
!4406 = distinct !{!4406, !213}
!4407 = distinct !{!4407, !213}
!4408 = distinct !{!4408, !213}
!4409 = distinct !{!4409, !213}
!4410 = distinct !{!4410, !213}
!4411 = distinct !{!4411, !213}
!4412 = distinct !{!4412, !213}
!4413 = distinct !{!4413, !213}
!4414 = distinct !{!4414, !213}
!4415 = distinct !{!4415, !213}
!4416 = distinct !{!4416, !213}
!4417 = distinct !{!4417, !2141}
!4418 = distinct !{!4418, !213}
!4419 = distinct !{!4419, !213}
!4420 = distinct !{!4420, !213}
!4421 = distinct !{!4421, !213, !815, !816}
!4422 = distinct !{!4422, !2141}
!4423 = distinct !{!4423, !213, !815}
!4424 = distinct !{!4424, !2141}
!4425 = distinct !{!4425, !213}
!4426 = !{!2202, !2184, i64 0}
!4427 = distinct !{!4427, !213}
!4428 = distinct !{!4428, !213}
!4429 = distinct !{!4429, !213}
!4430 = distinct !{!4430, !213}
!4431 = !{!2193, !199, i64 96}
!4432 = distinct !{!4432, !213}
!4433 = distinct !{!4433, !213}
!4434 = distinct !{!4434, !2141}
!4435 = distinct !{!4435, !213, !815, !816}
!4436 = distinct !{!4436, !2141}
!4437 = distinct !{!4437, !213, !815}
!4438 = distinct !{!4438, !213}
!4439 = distinct !{!4439, !2141}
!4440 = distinct !{!4440, !213}
!4441 = distinct !{!4441, !213, !815, !816}
!4442 = distinct !{!4442, !2141}
!4443 = distinct !{!4443, !213, !815}
!4444 = distinct !{!4444, !213}
!4445 = distinct !{!4445, !213}
!4446 = distinct !{!4446, !213}
!4447 = distinct !{!4447, !2141}
!4448 = !{!2131, !2130, i64 0}
!4449 = distinct !{!4449, !"_ZN6duckdb9Exception16ConstructMessageIJmjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4450 = distinct !{!4450, !4449, !"_ZN6duckdb9Exception16ConstructMessageIJmjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4451 = !{!4450}
!4452 = distinct !{!4452, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!4453 = distinct !{!4453, !4452, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!4454 = !{!4453}
!4455 = distinct !{!4455, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!4456 = distinct !{!4456, !4455, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!4457 = !{!4456}
!4458 = distinct !{!4458, !213}
!4459 = distinct !{!4459, !213}
!4460 = distinct !{!4460, !213, !815, !816}
!4461 = distinct !{!4461, !2141}
!4462 = distinct !{!4462, !213, !815}
!4463 = distinct !{!4463, !213}
!4464 = !{!"_ZTSNSt8__detail10_AllocNodeISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEE", !1160, i64 0}
!4465 = !{!4464, !1160, i64 0}
!4466 = distinct !{!4466, !213}
!4467 = !{!1134, !284, i64 48}
!4468 = distinct !{!4468, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!4469 = distinct !{!4469, !4468, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!4470 = !{!4469}
!4471 = distinct !{!4471, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!4472 = distinct !{!4472, !4471, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!4473 = !{!4472}
!4474 = distinct !{!4474, !213}
!4475 = distinct !{!4475, !"_ZSt19__relocate_object_aIN6duckdb16ColumnDefinitionES1_SaIS1_EEvPT_PT0_RT1_"}
!4476 = distinct !{!4476, !4475, !"_ZSt19__relocate_object_aIN6duckdb16ColumnDefinitionES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4477 = distinct !{!4477, !4475, !"_ZSt19__relocate_object_aIN6duckdb16ColumnDefinitionES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4478 = distinct !{!4478, !213}
!4479 = !{!4476}
!4480 = !{!4477}
!4481 = !{!4476, !4477}
!4482 = distinct !{null, null, null, null, null, null}
!4483 = distinct !{!4483, !213}
!4484 = distinct !{!4484, !213}
!4485 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!4486 = distinct !{!4486, !213}
!4487 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!4488 = distinct !{!4488, !213}
!4489 = distinct !{!4489, !213}
!4490 = !{!1069, !1068, i64 16}
!4491 = !{!"p1 _ZTSN6duckdb17PartitionRowGroupE", !195, i64 0}
!4492 = !{!"_ZTSSt12__shared_ptrIN6duckdb17PartitionRowGroupELN9__gnu_cxx12_Lock_policyE2EE", !4491, i64 0, !266, i64 8}
!4493 = !{!4492, !4491, i64 0}
!4494 = distinct !{!4494, !"_ZSt19__relocate_object_aIN6duckdb9IndexInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!4495 = distinct !{!4495, !4494, !"_ZSt19__relocate_object_aIN6duckdb9IndexInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4496 = distinct !{!4496, !4494, !"_ZSt19__relocate_object_aIN6duckdb9IndexInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4497 = distinct !{!4497, !213}
!4498 = distinct !{!4498, !"_ZSt19__relocate_object_aIN6duckdb9IndexInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!4499 = distinct !{!4499, !4498, !"_ZSt19__relocate_object_aIN6duckdb9IndexInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4500 = distinct !{!4500, !4498, !"_ZSt19__relocate_object_aIN6duckdb9IndexInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4501 = !{!4495}
!4502 = !{!4496}
!4503 = !{!4495, !4496}
!4504 = !{!4499}
!4505 = !{!4500}
!4506 = !{!4499, !4500}
!4507 = distinct !{!4507, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEES7_RKS7_DpRKT_"}
!4508 = distinct !{!4508, !4507, !"_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEEES7_RKS7_DpRKT_: argument 0"}
!4509 = !{!4508}
!4510 = distinct !{ptr @_ZNSt8_Rb_treeIN6duckdb13PhysicalIndexESt4pairIKS1_NS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev, null, null, null, null, null}
!4511 = !{!2217, !2217, i64 0}
!4512 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10ExpressionELb0EE", !1170, i64 0}
!4513 = !{!4512, !1170, i64 0}
!4514 = distinct !{!4514, !213}
!4515 = distinct !{!4515, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_"}
!4516 = distinct !{!4516, !4515, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4517 = distinct !{!4517, !4515, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4518 = distinct !{!4518, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_"}
!4519 = distinct !{!4519, !4518, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4520 = distinct !{!4520, !4518, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4521 = !{!4516}
!4522 = !{!4517}
!4523 = !{!4516, !4517}
!4524 = !{!4519}
!4525 = !{!4520}
!4526 = !{!4519, !4520}
!4527 = !{!"_ZTSZN6duckdb9DataTable10WriteToLogERNS_15DuckTransactionERNS_13WriteAheadLogEmmNS_12optional_ptrINS_18StorageCommitStateELb1EEEE3$_0", !572, i64 0}
!4528 = !{!4527, !572, i64 0}
!4529 = !{!"_ZTSZN6duckdb9DataTable10WriteToLogERNS_15DuckTransactionERNS_13WriteAheadLogEmmNS_12optional_ptrINS_18StorageCommitStateELb1EEEE3$_1", !572, i64 0}
!4530 = !{!4529, !572, i64 0}
!4531 = !{!"_ZTSZN6duckdb9DataTable10WriteToLogERNS_15DuckTransactionERNS_13WriteAheadLogEmmNS_12optional_ptrINS_18StorageCommitStateELb1EEEE3$_2", !572, i64 0}
!4532 = !{!4531, !572, i64 0}
!4533 = distinct !{!4533, !213}
!4534 = !{!"_ZTSZN6duckdb9DataTable12RevertAppendERNS_15DuckTransactionEmmE3$_0", !459, i64 0, !459, i64 8, !745, i64 16, !1104, i64 24}
!4535 = !{!4534, !745, i64 16}
!4536 = !{!4534, !459, i64 8}
!4537 = !{!4534, !459, i64 0}
!4538 = !{!4534, !1104, i64 24}
!4539 = !{i64 0, i64 8, !460, i64 8, i64 8, !460, i64 16, i64 8, !1344, i64 24, i64 8, !1345}
!4540 = distinct !{!4540, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_"}
!4541 = distinct !{!4541, !4540, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4542 = distinct !{!4542, !4540, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4543 = distinct !{!4543, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_"}
!4544 = distinct !{!4544, !4543, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!4545 = distinct !{!4545, !4543, !"_ZSt19__relocate_object_aIN6duckdb12StorageIndexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!4546 = !{!4541}
!4547 = !{!4542}
!4548 = !{!4541, !4542}
!4549 = !{!4544}
!4550 = !{!4545}
!4551 = !{!4544, !4545}
!4552 = distinct !{null, null, null}
!4553 = distinct !{!4553, !213}
!4554 = !{!426, !199, i64 24}
!4555 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb17ExternalFileCache10CachedFileELb0EE", !368, i64 0}
!4556 = !{!4555, !368, i64 0}
!4557 = distinct !{!4557, !213}
!4558 = !{!426, !284, i64 48}
!4559 = distinct !{!4559, !213}
!4560 = distinct !{!4560, !213}
!4561 = distinct !{!4561, !213}
!4562 = distinct !{!4562, !213}
!4563 = distinct !{!4563, !213}
!4564 = distinct !{!4564, !213}
!4565 = distinct !{!4565, !213}
!4566 = distinct !{!4566, !213}
!4567 = distinct !{!4567, !213}
!4568 = distinct !{!4568, !213}
!4569 = distinct !{!4569, !213}
!4570 = !{!267, !264, i64 0}
!4571 = !{!264, !264, i64 0}
!4572 = distinct !{!4572, !213}
!4573 = distinct !{null, null, null, null, null}
!4574 = !{!1248, !1031, i64 0}
!4575 = distinct !{!4575, !213}
end_hunk_5
