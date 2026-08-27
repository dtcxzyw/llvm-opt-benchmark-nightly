Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SearchableTableEmitter?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1745
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 44
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEEvT_SL_T0_T1_":bb.a
  %i.dp = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %i.dp, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEET_SL_SL_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !78
  %i.dr = load ptr, ptr %.sroa.011.1.i.i, align 8, !tbaa !78
  store ptr %i.dr, ptr %.sroa.014.1.i.i, align 8, !tbaa !78
  store ptr %i.dq, ptr %.sroa.011.1.i.i, align 8, !tbaa !78
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEEvT_SL_SL_SL_T0_.exit.i", !llvm.loop !534

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEET_SL_SL_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEEvT_SL_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2341, i64 noundef %i.cg, ptr nonnull %3, ptr nonnull %4)
  %i.ds = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.dt = sub i64 %i.ds, %i.a                     ; 2 uses
  %i.du = ashr exact i64 %i.dt, 3                 ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 16
  br i1 %i.dv, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEEvT_SL_SL_T0_.exit", !llvm.loop !527

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEEvT_SL_SL_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEET_SL_SL_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEEvT_SL_SL_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter19collectTableEntriesERNSD_12GenericTableENS2_8ArrayRefIS5_EEE3$_0EEEvT_SL_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(114) %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val32 = load i32, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %i.c = zext i32 %.val32 to i64
  %.idx = mul nuw nsw i64 %i.c, 56
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not79.not = icmp eq i32 %.val32, 0
  br i1 %.not79.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread52"
  %.02680 = phi ptr [ %.val, %.lr.ph ], [ %i.ig, %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread52" ] ; 10 uses
  %i.q = load ptr, ptr %.02680, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %.02680, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !12
  %i.t = call noundef ptr @_ZNK4llvm6Record12getValueInitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr %i.q, i64 %i.s) #24 ; 8 uses
  %i.u = load ptr, ptr %.02680, align 8, !tbaa !52
  %i.v = load i64, ptr %i.r, align 8, !tbaa !12
  %i.w = call noundef ptr @_ZNK4llvm6Record12getValueInitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr %i.u, i64 %i.v) #24 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02680, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !370
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !235
  %.off.i = add i32 %i.aa, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !80
  %i.ad = icmp ne i8 %i.ac, 3
  %.not.not14.i.i = icmp eq ptr %i.t, null
  %.not.not.i.i = or i1 %.not.not14.i.i, %i.ad
  br i1 %.not.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = call { i64, i8 } @_ZNK4llvm8BitsInit23convertInitializerToIntEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #24
  %i.af = extractvalue { i64, i8 } %i.ae, 0
  br label %_ZL8getAsIntPKN4llvm4InitE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !390
  br label %_ZL8getAsIntPKN4llvm4InitE.exit.i

_ZL8getAsIntPKN4llvm4InitE.exit.i:                ; preds = %bb.e, %bb.d
  %.2.i.i = phi i64 [ %i.af, %bb.d ], [ %i.ah, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !80
  %i.ak = icmp ne i8 %i.aj, 3
  %.not.not14.i59.i = icmp eq ptr %i.w, null
  %.not.not.i60.i = or i1 %.not.not14.i59.i, %i.ak
  br i1 %.not.not.i60.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZL8getAsIntPKN4llvm4InitE.exit.i
  %i.al = call { i64, i8 } @_ZNK4llvm8BitsInit23convertInitializerToIntEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #24
  %i.am = extractvalue { i64, i8 } %i.al, 0
  br label %_ZL8getAsIntPKN4llvm4InitE.exit63.i

bb.g:                                             ; preds = %_ZL8getAsIntPKN4llvm4InitE.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !390
  br label %_ZL8getAsIntPKN4llvm4InitE.exit63.i

_ZL8getAsIntPKN4llvm4InitE.exit63.i:              ; preds = %bb.g, %bb.f
  %.2.i61.i = phi i64 [ %i.am, %bb.f ], [ %i.ao, %bb.g ]
  %.0.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %.2.i.i, i64 %.2.i61.i)
  br label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit"

bb.h:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.02680, i64 41
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !466, !range !218, !noundef !73
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.val55.i = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.as = getelementptr i8, ptr %i.t, i64 24
  %.val56.i = load ptr, ptr %i.as, align 8, !tbaa !535
  %i.at = getelementptr inbounds nuw i8, ptr %.val55.i, i64 768
  %i.au = call noundef nonnull align 8 dereferenceable(384) ptr @_ZN4llvm19CodeGenIntrinsicMapixEPKNS_6RecordE(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef %.val56.i) #24 ; 4 uses
  %.val53.i = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.av = getelementptr i8, ptr %i.w, i64 24
  %.val54.i = load ptr, ptr %i.av, align 8, !tbaa !535
  %i.aw = getelementptr inbounds nuw i8, ptr %.val53.i, i64 768
  %i.ax = call noundef nonnull align 8 dereferenceable(384) ptr @_ZN4llvm19CodeGenIntrinsicMapixEPKNS_6RecordE(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %.val54.i) #24 ; 4 uses
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %.sroa.217.0.copyload.i = load i64, ptr %.sroa.217.0..sroa_idx.i, align 8, !tbaa !124 ; 3 uses
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %.sroa.215.0.copyload.i = load i64, ptr %.sroa.215.0..sroa_idx.i, align 8, !tbaa !124 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.215.0.copyload.i, i64 %.sroa.217.0.copyload.i) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.ay, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %.sroa.014.0.copyload.i = load ptr, ptr %i.az, align 8, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sroa.016.0.copyload.i = load ptr, ptr %i.ba, align 8, !tbaa !123
  %i.bb = call i32 @memcmp(ptr noundef readonly %.sroa.016.0.copyload.i, ptr noundef readonly %.sroa.014.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #27
  %.fr.i.i.i = freeze i32 %i.bb                   ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread.loopexit.split.loop.exit"

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %bb.i
  %i.bc = icmp eq i64 %.sroa.217.0.copyload.i, %.sroa.215.0.copyload.i
  br i1 %i.bc, label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_1clENS1_9StringRefES9_.exit.i", label %bb.j

bb.j:                                             ; preds = %.thread.i.i.i
  %i.bd = icmp ult i64 %.sroa.217.0.copyload.i, %.sroa.215.0.copyload.i
  %i.be = select i1 %i.bd, i32 -1, i32 1
  br label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread"

"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_1clENS1_9StringRefES9_.exit.i": ; preds = %.thread.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !12 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !12 ; 3 uses
  %.sroa.speculated.i.i64.i = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bg) ; 2 uses
  %i.bj = icmp eq i64 %.sroa.speculated.i.i64.i, 0
  br i1 %i.bj, label %.thread.i.i71.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i65.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i65.i: ; preds = %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_1clENS1_9StringRefES9_.exit.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52
  %i.bo = call i32 @memcmp(ptr noundef readonly %i.bn, ptr noundef readonly %i.bl, i64 noundef %.sroa.speculated.i.i64.i) #27
  %.fr.i.i66.i = freeze i32 %i.bo                 ; 2 uses
  %.not.not.i.i67.i = icmp eq i32 %.fr.i.i66.i, 0
  br i1 %.not.not.i.i67.i, label %.thread.i.i71.i, label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread.loopexit.split.loop.exit73"

.thread.i.i71.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i65.i, %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_1clENS1_9StringRefES9_.exit.i"
  %i.bp = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bp, label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread52", label %bb.k

bb.k:                                             ; preds = %.thread.i.i71.i
  %i.bq = icmp ult i64 %i.bg, %i.bi
  %i.br = select i1 %i.bq, i32 -1, i32 1
  br label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread"

bb.l:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.02680, i64 42
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !467, !range !218, !noundef !73
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !535 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !535 ; 2 uses
  %i.bz = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.bw, ptr nonnull @.str.59, i64 8) #24 ; 2 uses
  %i.ca = xor i1 %i.bz, true
  %i.cb = call noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.by, ptr nonnull @.str.59, i64 8) #24 ; 2 uses
  %i.cc = xor i1 %i.cb, true
  %.0.i73.i = call i32 @llvm.ucmp.i32.i1(i1 %i.ca, i1 %i.cc)
  %i.cd = xor i1 %i.bz, %i.cb
  br i1 %i.cd, label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !88 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !124 ; 3 uses
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !88 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i75.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.2.0.copyload.i.i76.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i75.i, align 8, !tbaa !124 ; 3 uses
  %.sroa.speculated.i.i79.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i76.i, i64 %.sroa.2.0.copyload.i.i.i) ; 2 uses
  %i.cg = icmp eq i64 %.sroa.speculated.i.i79.i, 0
  br i1 %i.cg, label %.thread.i.i86.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i80.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i80.i: ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.sroa.0.0.copyload.i.i74.i = load ptr, ptr %i.ch, align 8, !tbaa !123
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.cj = call i32 @memcmp(ptr noundef readonly %.sroa.0.0.copyload.i.i.i, ptr noundef readonly %.sroa.0.0.copyload.i.i74.i, i64 noundef %.sroa.speculated.i.i79.i) #27
  %.fr.i.i81.i = freeze i32 %i.cj                 ; 2 uses
  %.not.not.i.i82.i = icmp eq i32 %.fr.i.i81.i, 0
  br i1 %.not.not.i.i82.i, label %.thread.i.i86.i, label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread.loopexit.split.loop.exit70"

.thread.i.i86.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i80.i, %bb.n
  %i.ck = icmp eq i64 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i76.i
  br i1 %i.ck, label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread52", label %bb.o

bb.o:                                             ; preds = %.thread.i.i86.i
  %i.cl = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i76.i
  %i.cm = select i1 %i.cl, i32 -1, i32 1
  br label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit.thread"

bb.p:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %.02680, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !186 ; 6 uses
  %.not.i = icmp eq ptr %i.co, null
  br i1 %.not.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !535 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !535 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !453, !noalias !537 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !436, !noalias !537 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 92
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !422, !noalias !537 ; 7 uses
  %i.cz = icmp eq i32 %i.cy, 0                    ; 2 uses
  br i1 %i.cz, label %.loopexit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = add i32 %i.cy, -1                       ; 2 uses
  %i.db = ptrtoint ptr %i.cq to i64
  %i.dc = mul i64 %i.db, -4658895280553007687     ; 2 uses
  %i.dd = lshr i64 %i.dc, 31
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = trunc i64 %i.de to i32
  %i.dg = and i32 %i.da, %i.df                    ; 3 uses
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !157, !noalias !546
  %i.dl = and i32 %i.dg, 31
  %i.dm = lshr i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.dm to i1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !159

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.r, %bb.s
  %i.do = phi i64 [ %i.du, %bb.s ], [ %i.dh, %bb.r ]
  %.017.i.i.i.i.i.i = phi i32 [ %i.dt, %bb.s ], [ %i.dg, %bb.r ]
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.do ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !78, !noalias !546
  %i.dr = icmp eq ptr %i.cq, %i.dq
  br i1 %i.dr, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i.i, label %bb.s, !prof !160

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ds = add nuw i32 %.017.i.i.i.i.i.i, 1
  %i.dt = and i32 %i.ds, %i.da                    ; 3 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = lshr i64 %i.du, 5
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !157, !noalias !546
  %i.dy = and i32 %i.dt, 31
  %i.dz = lshr i32 %i.dx, %i.dy
  %i.ea = trunc i32 %i.dz to i1
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !prof !161

.loopexit.i.i.i.i.i:                              ; preds = %bb.s, %bb.r, %bb.q
  %i.eb = zext i32 %i.cy to i64                   ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.eb
  br label %_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i = zext i32 %i.cy to i64
  br label %_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit.i

_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i.i, %.loopexit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i.i ], [ %i.eb, %.loopexit.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i = phi ptr [ %i.dp, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i.i ], [ %i.ec, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.pre-phi.i.i.i
  %i.ee = icmp eq ptr %.lcssa.sink.i.i.i.i.i, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %.val2.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !53 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.co, i64 104 ; 2 uses
  %.sink8.in.i.i.i = select i1 %i.ee, ptr %i.eh, ptr %i.eg
  %.sink8.i.i.i = load i32, ptr %.sink8.in.i.i.i, align 8, !tbaa !157
  %i.ei = zext i32 %.sink8.i.i.i to i64
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %.val2.i.i.i, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !357
  br i1 %i.cz, label %.loopexit.i.i.i.i89.i, label %bb.t

bb.t:                                             ; preds = %_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit.i
  %i.em = add i32 %i.cy, -1                       ; 2 uses
  %i.en = ptrtoint ptr %i.cs to i64
  %i.eo = mul i64 %i.en, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 31
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.em, %i.er                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = lshr i64 %i.et, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !157, !noalias !547
  %i.ex = and i32 %i.es, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i97.i, label %.loopexit.i.i.i.i89.i, !prof !159

.lr.ph.i.i.i.i.i97.i:                             ; preds = %bb.t, %bb.u
  %i.fa = phi i64 [ %i.fg, %bb.u ], [ %i.et, %bb.t ]
  %.017.i.i.i.i.i98.i = phi i32 [ %i.ff, %bb.u ], [ %i.es, %bb.t ]
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.fa ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !78, !noalias !547
  %i.fd = icmp eq ptr %i.cs, %i.fc
  br i1 %i.fd, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i99.i, label %bb.u, !prof !160

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i97.i
  %i.fe = add nuw i32 %.017.i.i.i.i.i98.i, 1
  %i.ff = and i32 %i.fe, %i.em                    ; 3 uses
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fg, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !157, !noalias !547
  %i.fk = and i32 %i.ff, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i97.i, label %.loopexit.i.i.i.i89.i, !prof !161

.loopexit.i.i.i.i89.i:                            ; preds = %bb.u, %bb.t, %_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit.i
  %i.fn = zext i32 %i.cy to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.fn
  br label %_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit101.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i99.i: ; preds = %.lr.ph.i.i.i.i.i97.i
  %.pre.i.i100.i = zext i32 %i.cy to i64
  br label %_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit101.i

_ZNK12_GLOBAL__N_111GenericEnum8getEntryEPKN4llvm6RecordE.exit101.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i99.i, %.loopexit.i.i.i.i89.i
  %.pre-phi.i.i90.i = phi i64 [ %.pre.i.i100.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i99.i ], [ %i.fn, %.loopexit.i.i.i.i89.i ]
  %.lcssa.sink.i.i.i.i91.i = phi ptr [ %i.fb, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findES4_.exit.loopexit.i.i99.i ], [ %i.fo, %.loopexit.i.i.i.i89.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %.pre-phi.i.i90.i
  %i.fq = icmp eq ptr %.lcssa.sink.i.i.i.i91.i, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i91.i, i64 8
  %.sink8.in.i.i93.i = select i1 %i.fq, ptr %i.eh, ptr %i.fr
  %.sink8.i.i94.i = load i32, ptr %.sink8.in.i.i93.i, align 8, !tbaa !157
  %i.fs = zext i32 %.sink8.i.i94.i to i64
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %.val2.i.i.i, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !357
  %.0.i102.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %i.el, i64 %i.fv)
  br label %"_ZZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexEENK3$_2clEPKNS1_4InitESB_RKNS_12GenericFieldE.exit"

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %.sroa.02.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !123
  call fastcc void @_ZN12_GLOBAL__N_122SearchableTableEmitter21primaryRepresentationB5cxx11EN4llvm5SMLocERKNS_12GenericFieldEPKNS1_4InitE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(112) %0, ptr %.sroa.02.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(56) %.02680, ptr noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !123
  call fastcc void @_ZN12_GLOBAL__N_122SearchableTableEmitter21primaryRepresentationB5cxx11EN4llvm5SMLocERKNS_12GenericFieldEPKNS1_4InitE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(112) %0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(56) %.02680, ptr noundef %i.w)
  %i.fw = load ptr, ptr %i.x, align 8, !tbaa !370
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !235
  %i.fz = icmp eq i32 %i.fy, 3
  br i1 %i.fz, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ga = load ptr, ptr %4, align 8, !tbaa !52
  store ptr %i.ga, ptr %7, align 8, !tbaa !415
  %i.gb = load i64, ptr %i.g, align 8, !tbaa !12
  store i64 %i.gb, ptr %i.f, align 8, !tbaa !416
  call void @_ZNK4llvm9StringRef5upperB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  %i.gc = load ptr, ptr %4, align 8, !tbaa !52    ; 6 uses
  %i.gd = icmp eq ptr %i.gc, %i.h
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lET_SD_SD_SD_T1_SE_T0_SE_:bb.a
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !78
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !680
  %i.gb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 40
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !157
  %i.gd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 40
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !428
  %i.ge = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 48
  %i.gf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 48
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !78
  store ptr %i.gg, ptr %i.gf, align 8, !tbaa !680
  %i.gh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 56
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 56
  store i32 %i.gi, ptr %i.gj, align 8, !tbaa !428
  %i.gk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 64
  %i.gm = add nsw i64 %.012.i.i.i.i.i51, -4
  %i.gn = icmp sgt i64 %.012.i.i.i.i.i51, 4
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, !llvm.loop !759

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i50.prol.loopexit, %.lr.ph.i.i.i.i.i50, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit48
  %i.go = ptrtoint ptr %.08.lcssa.i.i.i.i.i43 to i64
  %i.gp = ptrtoint ptr %5 to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 4                 ; 5 uses
  %i.gs = icmp sgt i64 %i.gr, 0
  br i1 %i.gs, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  %xtraiter95 = and i64 %i.gr, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol

.lr.ph.i.i.i.i.i55.prol:                          ; preds = %.lr.ph.i.i.i.i.i55.preheader, %.lr.ph.i.i.i.i.i55.prol
  %.010.i.i.i.i.i56.prol = phi i64 [ %i.gz, %.lr.ph.i.i.i.i.i55.prol ], [ %i.gr, %.lr.ph.i.i.i.i.i55.preheader ]
  %.069.i.i.i.i.i57.prol = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i55.prol ], [ %2, %.lr.ph.i.i.i.i.i55.preheader ] ; 2 uses
  %.078.i.i.i.i.i58.prol = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i55.prol ], [ %.08.lcssa.i.i.i.i.i43, %.lr.ph.i.i.i.i.i55.preheader ] ; 2 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.lr.ph.i.i.i.i.i55.prol ], [ 0, %.lr.ph.i.i.i.i.i55.preheader ]
  %i.gt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58.prol, i64 -16 ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57.prol, i64 -16 ; 4 uses
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !78
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !680
  %i.gw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58.prol, i64 -8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !157
  %i.gy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57.prol, i64 -8
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !428
  %i.gz = add nsw i64 %.010.i.i.i.i.i56.prol, -1  ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !796

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.010.i.i.i.i.i56.unr = phi i64 [ %i.gr, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.gz, %.lr.ph.i.i.i.i.i55.prol ]
  %.069.i.i.i.i.i57.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.gu, %.lr.ph.i.i.i.i.i55.prol ]
  %.078.i.i.i.i.i58.unr = phi ptr [ %.08.lcssa.i.i.i.i.i43, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.gt, %.lr.ph.i.i.i.i.i55.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.gu, %.lr.ph.i.i.i.i.i55.prol ]
  %i.ha = icmp ult i64 %i.gr, 4
  br i1 %i.ha, label %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.loopexit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.010.i.i.i.i.i56 = phi i64 [ %i.hz, %.lr.ph.i.i.i.i.i55 ], [ %.010.i.i.i.i.i56.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i57 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i55 ], [ %.069.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i58 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i55 ], [ %.078.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 8 uses
  %i.hb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -16
  %i.hc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -16
  %i.hd = load ptr, ptr %i.hb, align 8, !tbaa !78
  store ptr %i.hd, ptr %i.hc, align 8, !tbaa !680
  %i.he = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !157
  %i.hg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -8
  store i32 %i.hf, ptr %i.hg, align 8, !tbaa !428
  %i.hh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -32
  %i.hi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -32
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !78
  store ptr %i.hj, ptr %i.hi, align 8, !tbaa !680
  %i.hk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -24
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !157
  %i.hm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -24
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !428
  %i.hn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -48
  %i.ho = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -48
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !78
  store ptr %i.hp, ptr %i.ho, align 8, !tbaa !680
  %i.hq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -40
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !157
  %i.hs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -40
  store i32 %i.hr, ptr %i.hs, align 8, !tbaa !428
  %i.ht = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -64 ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -64 ; 3 uses
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !78
  store ptr %i.hv, ptr %i.hu, align 8, !tbaa !680
  %i.hw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !157
  %i.hy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -56
  store i32 %i.hx, ptr %i.hy, align 8, !tbaa !428
  %i.hz = add nsw i64 %.010.i.i.i.i.i56, -4
  %i.ia = icmp sgt i64 %.010.i.i.i.i.i56, 4
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.loopexit, !llvm.loop !776

_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i55, %.lr.ph.i.i.i.i.i55.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ], [ %i.hu, %.lr.ph.i.i.i.i.i55 ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit

_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit: ; preds = %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.loopexit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.loopexit ], [ %i.fc, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit ]
  %i.ib = sub i64 %.pre-phi, %i.fc
  %i.ic = getelementptr inbounds i8, ptr %2, i64 %i.ib
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.id = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS8_SaIS8_EEEEEET_SE_SE_SE_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.g, %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit, %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit
  %.sroa.032.0 = phi ptr [ %i.do, %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ], [ %i.id, %bb.g ], [ %i.ic, %_ZSt13move_backwardIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit ], [ %0, %bb.b ], [ %2, %bb.e ]
  ret ptr %.sroa.032.0
}

declare void @_ZNK4llvm13CodeGenTarget19ComputeInstrsByEnumEv(ptr noundef nonnull align 8 dereferenceable(820)) local_unnamed_addr #2

declare void @_ZNK4llvm13CodeGenTarget16ReadInstructionsEv(ptr noundef nonnull align 8 dereferenceable(820)) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !797
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !798  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !799

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_SearchableTableEmitter.cpp() #19 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr @.str.1, ptr %0, align 8, !tbaa !123
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 40, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !124
  tail call void @_ZN4llvm8TableGen7Emitter3OptC2ENS_9StringRefENS1_3FnTES3_b(ptr noundef nonnull align 1 dereferenceable(1) @_ZL1X, ptr nonnull @.str, i64 21, ptr null, ptr nonnull @_ZN4llvm8TableGen7Emitter8OptClassIN12_GLOBAL__N_122SearchableTableEmitterEE3runENS_9StringRefERKNS_12RecordKeeperE, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %0, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i1(i1, i1) #23

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !6, i64 16}
!14 = !{!"long", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSN4llvm11raw_ostreamE", !18, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !19, i64 40, !20, i64 44}
!18 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!21 = !{!17, !19, i64 40}
!22 = !{!17, !20, i64 44}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSN4llvm12RecordKeeperE", !11, i64 0}
!29 = !{!30, !32, i64 0}
!30 = !{!"_ZTSSt15_Rb_tree_header", !31, i64 0, !14, i64 32}
!31 = !{!"_ZTSSt18_Rb_tree_node_base", !32, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!32 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!33 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!34 = !{!30, !33, i64 8}
!35 = !{!30, !33, i64 16}
!36 = !{!30, !33, i64 24}
!37 = !{!30, !14, i64 32}
!38 = !{!39, !5, i64 20}
!39 = !{!"_ZTSN4llvm8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEE", !40, i64 0, !41, i64 8, !5, i64 16, !5, i64 20}
!40 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumEEE", !11, i64 0}
!41 = !{!"p1 int", !11, i64 0}
!42 = !{!39, !40, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_111GenericEnumESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!45 = !{!"p1 _ZTSSt10unique_ptrIN12_GLOBAL__N_111GenericEnumESt14default_deleteIS1_EE", !11, i64 0}
!46 = !{!44, !45, i64 8}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!44, !45, i64 16}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTSN4llvm13CodeGenTargetE", !11, i64 0}
!52 = !{!13, !10, i64 0}
!53 = !{!54, !11, i64 0}
!54 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !11, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!54, !5, i64 8}
!56 = !{!54, !5, i64 12}
!57 = !{!58, !28, i64 0}
!58 = !{!"_ZTSN12_GLOBAL__N_122SearchableTableEmitterE", !28, i64 0, !59, i64 8, !65, i64 16, !39, i64 40, !68, i64 64}
!59 = !{!"_ZTSSt10unique_ptrIN4llvm13CodeGenTargetESt14default_deleteIS1_EE", !60, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm13CodeGenTargetESt14default_deleteIS1_ELb1ELb1EE", !61, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm13CodeGenTargetESt14default_deleteIS1_EE", !62, i64 0}
!62 = !{!"_ZTSSt5tupleIJPN4llvm13CodeGenTargetESt14default_deleteIS1_EEE", !63, i64 0}
!63 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm13CodeGenTargetESt14default_deleteIS1_EEE", !64, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm13CodeGenTargetELb0EE", !51, i64 0}
!65 = !{!"_ZTSSt6vectorISt10unique_ptrIN12_GLOBAL__N_111GenericEnumESt14default_deleteIS2_EESaIS5_EE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_111GenericEnumESt14default_deleteIS2_EESaIS5_EE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_111GenericEnumESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !44, i64 0}
!68 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !69, i64 0}
!69 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !70, i64 0}
!70 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !71, i64 0, !30, i64 8}
!71 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !72, i64 0}
!72 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!73 = !{}
!74 = !{i64 8}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZSt11make_uniqueIN4llvm13CodeGenTargetEJRKNS0_12RecordKeeperEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!77 = distinct !{!77, !"_ZSt11make_uniqueIN4llvm13CodeGenTargetEJRKNS0_12RecordKeeperEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTSN4llvm6RecordE", !11, i64 0}
!80 = !{!81, !82, i64 8}
!81 = !{!"_ZTSN4llvm4InitE", !82, i64 8, !6, i64 9}
!82 = !{!"_ZTSN4llvm4Init8InitKindE", !6, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZSt11make_uniqueIN12_GLOBAL__N_111GenericEnumEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!85 = distinct !{!85, !"_ZSt11make_uniqueIN12_GLOBAL__N_111GenericEnumEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!86 = !{!87, !87, i64 0}
!87 = !{!"p1 _ZTSN12_GLOBAL__N_111GenericEnumE", !11, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSN4llvm6RecordE", !90, i64 0, !91, i64 8, !96, i64 56, !97, i64 72, !101, i64 88, !105, i64 104, !109, i64 120, !113, i64 136, !117, i64 152, !28, i64 168, !121, i64 176, !5, i64 184, !122, i64 188}
!90 = !{!"p1 _ZTSN4llvm4InitE", !11, i64 0}
!91 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj4EEE", !92, i64 0, !95, i64 16}
!92 = !{!"_ZTSN4llvm15SmallVectorImplINS_5SMLocEEE", !93, i64 0}
!93 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_5SMLocELb1EEE", !94, i64 0}
!94 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_5SMLocEvEE", !54, i64 0}
!95 = !{!"_ZTSN4llvm18SmallVectorStorageINS_5SMLocELj4EEE", !6, i64 0}
!96 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj0EEE", !92, i64 0}
!97 = !{!"_ZTSN4llvm11SmallVectorINS_7SMRangeELj0EEE", !98, i64 0}
!98 = !{!"_ZTSN4llvm15SmallVectorImplINS_7SMRangeEEE", !99, i64 0}
!99 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_7SMRangeELb1EEE", !100, i64 0}
!100 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_7SMRangeEvEE", !54, i64 0}
!101 = !{!"_ZTSN4llvm11SmallVectorIPKNS_4InitELj0EEE", !102, i64 0}
!102 = !{!"_ZTSN4llvm15SmallVectorImplIPKNS_4InitEEE", !103, i64 0}
!103 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPKNS_4InitELb1EEE", !104, i64 0}
!104 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPKNS_4InitEvEE", !54, i64 0}
!105 = !{!"_ZTSN4llvm11SmallVectorINS_9RecordValELj0EEE", !106, i64 0}
!106 = !{!"_ZTSN4llvm15SmallVectorImplINS_9RecordValEEE", !107, i64 0}
!107 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9RecordValELb0EEE", !108, i64 0}
!108 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9RecordValEvEE", !54, i64 0}
!109 = !{!"_ZTSN4llvm11SmallVectorINS_6Record13AssertionInfoELj0EEE", !110, i64 0}
!110 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record13AssertionInfoEEE", !111, i64 0}
!111 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record13AssertionInfoELb1EEE", !112, i64 0}
!112 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record13AssertionInfoEvEE", !54, i64 0}
!113 = !{!"_ZTSN4llvm11SmallVectorINS_6Record8DumpInfoELj0EEE", !114, i64 0}
!114 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record8DumpInfoEEE", !115, i64 0}
!115 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record8DumpInfoELb1EEE", !116, i64 0}
!116 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record8DumpInfoEvEE", !54, i64 0}
!117 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKNS_6RecordENS_7SMRangeEELj0EEE", !118, i64 0}
!118 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKNS_6RecordENS_7SMRangeEEEE", !119, i64 0}
!119 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_6RecordENS_7SMRangeEELb1EEE", !120, i64 0}
!120 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKNS_6RecordENS_7SMRangeEEvEE", !54, i64 0}
!121 = !{!"p1 _ZTSN4llvm7DefInitE", !11, i64 0}
!122 = !{!"_ZTSN4llvm6Record10RecordKindE", !6, i64 0}
!123 = !{!10, !10, i64 0}
!124 = !{!14, !14, i64 0}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!127 = distinct !{!127, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNK4llvm9StringRef3strB5cxx11Ev: argument 0"}
!130 = distinct !{!130, !"_ZNK4llvm9StringRef3strB5cxx11Ev"}
!131 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!132 = !{!33, !33, i64 0}
!133 = distinct !{!133, !48}
!134 = !{!135, !79, i64 32}
!135 = !{!"_ZTSN12_GLOBAL__N_111GenericEnumE", !13, i64 0, !79, i64 32, !13, i64 40, !136, i64 72, !13, i64 112}
!136 = !{!"_ZTSN4llvm9MapVectorIPKNS_6RecordEN12_GLOBAL__N_111GenericEnum5EntryENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S6_ELj0EEELj0EEE", !137, i64 0, !139, i64 24}
!137 = !{!"_ZTSN4llvm8DenseMapIPKNS_6RecordEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !138, i64 0, !41, i64 8, !5, i64 16, !5, i64 20}
!138 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_6RecordEjEE", !11, i64 0}
!139 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKNS_6RecordEN12_GLOBAL__N_111GenericEnum5EntryEELj0EEE", !140, i64 0}
!140 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKNS_6RecordEN12_GLOBAL__N_111GenericEnum5EntryEEEE", !141, i64 0}
!141 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_6RecordEN12_GLOBAL__N_111GenericEnum5EntryEELb1EEE", !142, i64 0}
!142 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKNS_6RecordEN12_GLOBAL__N_111GenericEnum5EntryEEvEE", !54, i64 0}
!143 = !{!144, !145, i64 33}
!144 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !145, i64 32, !145, i64 33}
!145 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!146 = !{!144, !145, i64 32}
!147 = !{!148, !150, !152, !154}
!148 = distinct !{!148, !149, !"_ZNK4llvm8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE6getRepEv: argument 0"}
!149 = distinct !{!149, !"_ZNK4llvm8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEE6getRepEv"}
!150 = distinct !{!150, !151, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6getRepEv: argument 0"}
!151 = distinct !{!151, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E6getRepEv"}
!152 = distinct !{!152, !153, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16try_emplace_implIRKS4_JS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbEOT_DpOT0_: argument 0"}
!153 = distinct !{!153, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E16try_emplace_implIRKS4_JS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbEOT_DpOT0_"}
!154 = distinct !{!154, !155, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E11try_emplaceIJS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbERKS4_DpOT_: argument 0"}
!155 = distinct !{!155, !"_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6RecordEPN12_GLOBAL__N_111GenericEnumENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E11try_emplaceIJS7_EEESt4pairINS_16DenseMapIteratorIS4_S7_S9_SC_Lb0EEEbERKS4_DpOT_"}
!156 = !{!39, !41, i64 8}
!157 = !{!5, !5, i64 0}
!158 = !{!152, !154}
!159 = !{!"branch_weights", i32 1, i32 1999}
!160 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!161 = !{!"branch_weights", i32 0, i32 1}
!162 = distinct !{!162, !48}
!163 = !{!40, !40, i64 0}
end_hunk_1
