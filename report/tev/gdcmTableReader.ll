Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmTableReader?download=true
begin_hunk_0_@_ZNSt3__13mapIN4gdcm3TagENS1_11ModuleEntryENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISG_PvEElEEEEEEvT_SN_:bb.a
  br i1 %.not.i.i.i.i, label %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIN4gdcm3TagENS3_11ModuleEntryEEEPvEENS_22__tree_node_destructorINS_9allocatorIS8_EEEEED2B8ne180100Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !71
  br label %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIN4gdcm3TagENS3_11ModuleEntryEEEPvEENS_22__tree_node_destructorINS_9allocatorIS8_EEEEED2B8ne180100Ev.exit.i.i.i

_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIN4gdcm3TagENS3_11ModuleEntryEEEPvEENS_22__tree_node_destructorINS_9allocatorIS8_EEEEED2B8ne180100Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !69
  call void @_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %i.n, ptr noundef nonnull %i.j) #21
  %i.o = load i64, ptr %i.d, align 8, !tbaa !70
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt3__13mapIN4gdcm3TagENS1_11ModuleEntryENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100ENS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISF_PvEElEEEERKS9_.exit

_ZNSt3__13mapIN4gdcm3TagENS1_11ModuleEntryENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100ENS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISF_PvEElEEEERKS9_.exit: ; preds = %bb.b, %_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIN4gdcm3TagENS3_11ModuleEntryEEEPvEENS_22__tree_node_destructorINS_9allocatorIS8_EEEEED2B8ne180100Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !138  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader8.i.i.i

.preheader8.i.i.i:                                ; preds = %_ZNSt3__13mapIN4gdcm3TagENS1_11ModuleEntryENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100ENS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISF_PvEElEEEERKS9_.exit, %.preheader8.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.s, %.preheader8.i.i.i ], [ %i.r, %_ZNSt3__13mapIN4gdcm3TagENS1_11ModuleEntryENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100ENS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISF_PvEElEEEERKS9_.exit ] ; 2 uses
  %i.s = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i3, label %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS3_11ModuleEntryEEEPNS_11__tree_nodeIS6_PvEElEEEppB8ne180100Ev.exit, label %.preheader8.i.i.i, !llvm.loop !142

.preheader.i.i.i:                                 ; preds = %_ZNSt3__13mapIN4gdcm3TagENS1_11ModuleEntryENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100ENS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISF_PvEElEEEERKS9_.exit, %.preheader.i.i.i
  %.0.i.i.i4 = phi ptr [ %i.u, %.preheader.i.i.i ], [ %.sroa.06.011, %_ZNSt3__13mapIN4gdcm3TagENS1_11ModuleEntryENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEE6insertB8ne180100ENS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIS2_S3_EEPNS_11__tree_nodeISF_PvEElEEEERKS9_.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i4, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !132  ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.w = icmp eq ptr %.0.i.i.i4, %i.v
  br i1 %i.w, label %_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS3_11ModuleEntryEEEPNS_11__tree_nodeIS6_PvEElEEEppB8ne180100Ev.exit, label %.preheader.i.i.i, !llvm.loop !143

_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS3_11ModuleEntryEEEPNS_11__tree_nodeIS6_PvEElEEEppB8ne180100Ev.exit: ; preds = %.preheader8.i.i.i, %.preheader.i.i.i
  %.06.i.i.i = phi ptr [ %i.u, %.preheader.i.i.i ], [ %.0.i.i.i.i, %.preheader8.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.06.i.i.i, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !144
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEENS_21__tree_const_iteratorIS5_PNS_11__tree_nodeIS5_SF_EElEERPNS_15__tree_end_nodeISH_EESI_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i16, ptr %4, align 4, !tbaa !50     ; 8 uses
  %i.e = load i16, ptr %i.c, align 4, !tbaa !50   ; 3 uses
  %i.f = icmp ult i16 %i.d, %i.e
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i16 %i.d, %i.e
  br i1 %i.g, label %bb.d, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.k = load i16, ptr %i.j, align 2, !tbaa !50
  %i.l = icmp ult i16 %i.i, %i.k
  br i1 %i.l, label %.critedge, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !71
  %i.n = icmp eq ptr %1, %i.m
  %.pre = load ptr, ptr %1, align 8, !tbaa !69    ; 3 uses
  br i1 %i.n, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %.critedge
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader9.i.i

.preheader9.i.i:                                  ; preds = %bb.e, %.preheader9.i.i
  %.0.i.i.i26 = phi ptr [ %i.p, %.preheader9.i.i ], [ %.pre, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEmmB8ne180100Ev.exit, label %.preheader9.i.i, !llvm.loop !145

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.r, %.preheader.i.i ], [ %1, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !132  ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.t = icmp eq ptr %.0.i.i, %i.s
  br i1 %i.t, label %.preheader.i.i, label %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEmmB8ne180100Ev.exit, !llvm.loop !146

_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEmmB8ne180100Ev.exit: ; preds = %.preheader9.i.i, %.preheader.i.i
  %.07.i.i = phi ptr [ %i.r, %.preheader.i.i ], [ %.0.i.i.i26, %.preheader9.i.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  %i.v = load i16, ptr %i.u, align 4, !tbaa !50   ; 2 uses
  %i.w = load i16, ptr %4, align 4, !tbaa !50     ; 5 uses
  %i.x = icmp ult i16 %i.v, %i.w
  br i1 %i.x, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEmmB8ne180100Ev.exit
  %i.y = icmp eq i16 %i.v, %i.w
  br i1 %i.y, label %bb.g, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 34
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !50
  %i.ad = icmp ult i16 %i.aa, %i.ac
  br i1 %i.ad, label %.critedge2, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit

.critedge2:                                       ; preds = %bb.g, %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEmmB8ne180100Ev.exit, %.critedge
  %.sroa.048.0 = phi ptr [ %1, %.critedge ], [ %.07.i.i, %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEmmB8ne180100Ev.exit ], [ %.07.i.i, %bb.g ] ; 2 uses
  %i.ae = icmp eq ptr %.pre, null
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge2
  store ptr %1, ptr %2, align 8, !tbaa !71
  br label %bb.ab

bb.i:                                             ; preds = %.critedge2
  store ptr %.sroa.048.0, ptr %2, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.048.0, i64 8
  br label %bb.ab

_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit: ; preds = %bb.g, %bb.f
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ai = load i16, ptr %i.ah, align 2            ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %.preheader.i
  %.024.i = phi ptr [ %i.ag, %.preheader.i ], [ %.024.i.be, %.backedge ] ; 10 uses
  %.0.i = phi ptr [ %i.a, %.preheader.i ], [ %.0.i.be, %.backedge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !50 ; 3 uses
  %i.al = icmp ult i16 %i.w, %i.ak
  br i1 %i.al, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = icmp eq i16 %i.w, %i.ak
  br i1 %i.am, label %bb.l, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.024.i, i64 34
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !50
  %i.ap = icmp ult i16 %i.ai, %i.ao
  br i1 %i.ap, label %bb.m, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.aq = load ptr, ptr %.024.i, align 8, !tbaa !69 ; 2 uses
  %.not31.i = icmp eq ptr %i.aq, null
  br i1 %.not31.i, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit, label %.backedge

_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i: ; preds = %bb.l, %bb.k
  %i.ar = icmp ult i16 %i.ak, %i.w
  br i1 %i.ar, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.024.i, i64 34
  %i.at = load i16, ptr %i.as, align 2, !tbaa !50
  %i.au = icmp ult i16 %i.at, %i.ai
  br i1 %i.au, label %bb.o, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit

bb.o:                                             ; preds = %bb.n, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !138 ; 2 uses
  %.not30.i = icmp eq ptr %i.aw, null
  br i1 %.not30.i, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit, label %.backedge

.backedge:                                        ; preds = %bb.o, %bb.m
  %.024.i.be = phi ptr [ %i.aq, %bb.m ], [ %i.aw, %bb.o ]
  %.0.i.be = phi ptr [ %.024.i, %bb.m ], [ %i.av, %bb.o ]
  br label %bb.j, !llvm.loop !147

_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit: ; preds = %bb.m, %bb.n, %bb.o, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit
  %.sink.i = phi ptr [ %i.a, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit ], [ %.024.i, %bb.o ], [ %.024.i, %bb.n ], [ %.024.i, %bb.m ]
  %.026.i = phi ptr [ %i.a, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit ], [ %.024.i, %bb.m ], [ %.0.i, %bb.n ], [ %i.av, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !71
  br label %bb.ab

_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit: ; preds = %bb.d, %bb.c
  %i.ax = icmp ult i16 %i.e, %i.d
  br i1 %i.ax, label %.lr.ph.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !50
  %i.bc = icmp ult i16 %i.az, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i.i, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit29

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.preheader8.i.i.i.i.i

.preheader8.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i, %.preheader8.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.bf, %.preheader8.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i ] ; 2 uses
  %i.bf = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit.i.i.i, label %.preheader8.i.i.i.i.i, !llvm.loop !142

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.bh, %.preheader.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !132 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69
  %i.bj = icmp eq ptr %.0.i.i.i.i.i, %i.bi
  br i1 %i.bj, label %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !143

_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit.i.i.i: ; preds = %.preheader8.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.bh, %.preheader.i.i.i.i.i ], [ %.0.i.i.i.i.i.i, %.preheader8.i.i.i.i.i ] ; 5 uses
  %i.bk = icmp eq ptr %.06.i.i.i.i.i, %i.a
  br i1 %i.bk, label %.critedge4, label %bb.q

bb.q:                                             ; preds = %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !50 ; 2 uses
  %i.bn = icmp ult i16 %i.d, %i.bm
  br i1 %i.bn, label %.critedge4, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = icmp eq i16 %i.d, %i.bm
  br i1 %i.bo, label %bb.s, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit31

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 34
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !50
  %i.bt = icmp ult i16 %i.bq, %i.bs
  br i1 %i.bt, label %.critedge4, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit31

.critedge4:                                       ; preds = %bb.s, %bb.q, %_ZNSt3__121__tree_const_iteratorINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEEPNS_11__tree_nodeIS5_PvEElEppB8ne180100Ev.exit.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge4
  store ptr %1, ptr %2, align 8, !tbaa !71
  br label %bb.ab

bb.u:                                             ; preds = %.critedge4
  store ptr %.06.i.i.i.i.i, ptr %2, align 8, !tbaa !71
  br label %bb.ab

_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit31: ; preds = %bb.s, %bb.r
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !69  ; 2 uses
  %.not.i32 = icmp eq ptr %i.bu, null
  br i1 %.not.i32, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit43, label %.preheader.i33

.preheader.i33:                                   ; preds = %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit31
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bw = load i16, ptr %i.bv, align 2            ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge93, %.preheader.i33
  %.024.i34 = phi ptr [ %i.bu, %.preheader.i33 ], [ %.024.i34.be, %.backedge93 ] ; 10 uses
  %.0.i35 = phi ptr [ %i.a, %.preheader.i33 ], [ %.0.i35.be, %.backedge93 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.024.i34, i64 32
  %i.by = load i16, ptr %i.bx, align 4, !tbaa !50 ; 3 uses
  %i.bz = icmp ult i16 %i.d, %i.by
  br i1 %i.bz, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = icmp eq i16 %i.d, %i.by
  br i1 %i.ca, label %bb.x, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i36

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %.024.i34, i64 34
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !50
  %i.cd = icmp ult i16 %i.bw, %i.cc
  br i1 %i.cd, label %bb.y, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i36

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.ce = load ptr, ptr %.024.i34, align 8, !tbaa !69 ; 2 uses
  %.not31.i42 = icmp eq ptr %i.ce, null
  br i1 %.not31.i42, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit43, label %.backedge93

_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i36: ; preds = %bb.x, %bb.w
  %i.cf = icmp ult i16 %i.by, %i.d
  br i1 %i.cf, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i36
  %i.cg = getelementptr inbounds nuw i8, ptr %.024.i34, i64 34
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !50
  %i.ci = icmp ult i16 %i.ch, %i.bw
  br i1 %i.ci, label %bb.aa, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit43

bb.aa:                                            ; preds = %bb.z, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit.i36
  %i.cj = getelementptr inbounds nuw i8, ptr %.024.i34, i64 8 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !138 ; 2 uses
  %.not30.i39 = icmp eq ptr %i.ck, null
  br i1 %.not30.i39, label %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit43, label %.backedge93

.backedge93:                                      ; preds = %bb.aa, %bb.y
  %.024.i34.be = phi ptr [ %i.ce, %bb.y ], [ %i.ck, %bb.aa ]
  %.0.i35.be = phi ptr [ %.024.i34, %bb.y ], [ %i.cj, %bb.aa ]
  br label %bb.v, !llvm.loop !147

_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit43: ; preds = %bb.y, %bb.z, %bb.aa, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit31
  %.sink.i37 = phi ptr [ %i.a, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit31 ], [ %.024.i34, %bb.aa ], [ %.024.i34, %bb.z ], [ %.024.i34, %bb.y ]
  %.026.i38 = phi ptr [ %i.a, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS5_.exit31 ], [ %.024.i34, %bb.y ], [ %.0.i35, %bb.z ], [ %i.cj, %bb.aa ]
  store ptr %.sink.i37, ptr %2, align 8, !tbaa !71
  br label %bb.ab

_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit29: ; preds = %bb.p
  store ptr %1, ptr %2, align 8, !tbaa !71
  store ptr %1, ptr %3, align 8, !tbaa !119
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %bb.u, %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit43, %bb.h, %bb.i, %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit29
  %.2 = phi ptr [ %3, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_NS1_11ModuleEntryEEENS_4lessIS2_EELb1EEclB8ne180100ERKS5_RKS2_.exit29 ], [ %.026.i, %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit ], [ %1, %bb.h ], [ %i.af, %bb.i ], [ %i.bd, %bb.t ], [ %.06.i.i.i.i.i, %bb.u ], [ %.026.i38, %_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE12__find_equalIS3_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISH_EERKT_.exit43 ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__16__treeINS_12__value_typeIN4gdcm3TagENS2_11ModuleEntryEEENS_19__map_value_compareIS3_S5_NS_4lessIS3_EELb1EEENS_9allocatorIS5_EEE16__construct_nodeIJRKNS_4pairIKS3_S4_EEEEENS_10unique_ptrINS_11__tree_nodeIS5_PvEENS_22__tree_node_destructorINSA_ISM_EEEEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr.78") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24 ; 7 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !150
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load i32, ptr %2, align 8, !tbaa !50
  store i32 %i.e, ptr %i.d, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4gdcm11ModuleEntryE, i64 16), ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !76
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !50
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.i.i.i.i unwind label %bb.h

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !55
  store i32 %i.q, ptr %i.o, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !76
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIN4gdcm3TagENS4_11ModuleEntryEEEPvEEEEE9constructB8ne180100INS_4pairIKS5_S6_EEJRKSF_EvvEEvRSA_PT_DpOT0_.exit

bb.e:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !50
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIN4gdcm3TagENS4_11ModuleEntryEEEPvEEEEE9constructB8ne180100INS_4pairIKS5_S6_EEJRKSF_EvvEEvRSA_PT_DpOT0_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load i8, ptr %i.g, align 8
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.body

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50
  %i.ae = load i64, ptr %i.g, align 8
  %i.af = and i64 %i.ae, -2
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.af) #25
  br label %.body

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIN4gdcm3TagENS4_11ModuleEntryEEEPvEEEEE9constructB8ne180100INS_4pairIKS5_S6_EEJRKSF_EvvEEvRSA_PT_DpOT0_.exit: ; preds = %bb.e, %bb.d
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  ret void

bb.h:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
end_hunk_0
