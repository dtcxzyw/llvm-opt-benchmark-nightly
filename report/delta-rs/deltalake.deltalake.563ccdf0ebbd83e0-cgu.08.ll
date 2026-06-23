inline.NumInlined: 4980
inline.NumDeleted: 1569
begin_hunk_0_@_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState14schema_for_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.ao:                                            ; preds = %bb.v, %.body
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ap:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 1, ptr %i.n, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store <2 x ptr> %i.cb, ptr %i.ep, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !605
  %i.eq = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 137) 32, i64 noundef 8) #48, !noalias !605 ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.aq, label %bb.av, !prof !28

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #49
          to label %.noexc70 unwind label %bb.ar

.noexc70:                                         ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !608
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.as, label %.body

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog19CatalogProviderListEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ep) #46
          to label %.body unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.au:                                            ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eq, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @12, ptr %i.ex, align 8
  store i64 20, ptr %0, align 8
  br label %bb.an

bb.aw:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtB5_12SessionState17resolve_table_refNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(1680) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1416
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !17, !noundef !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.f = load i64, ptr %i.e, align 8, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !17, !noundef !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  %i.j = load i64, ptr %i.i, align 8, !noundef !17
  tail call void @_RNvMs0_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReference7resolve(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMsi_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE27bulk_build_from_sorted_iterINtNtBc_3vec3VecTB18_B1t_EEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 10 uses
  %i.j = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.loopexit57.i unwind label %bb.aa ; 4 uses

.loopexit57.i:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 626
  store i16 0, ptr %i.l, align 2
  %.sroa.014.0.copyload = load i64, ptr %1, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8 ; 2 uses
  %i.m = icmp ult i64 %.sroa.516.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %.sroa.415.0.copyload, i64 %.sroa.516.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !619
  store i64 -9223372036854775807, ptr %i.i, align 8, !noalias !624
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %.sroa.415.0.copyload, ptr %.sroa.469.0..sroa_idx, align 8, !noalias !624
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %.sroa.415.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !624
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %.sroa.014.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !624
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store ptr %i.n, ptr %.sroa.7.0..sroa_idx70, align 8, !noalias !624
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.loopexit57.i
  %.sroa.011.0 = phi i64 [ 0, %.loopexit57.i ], [ %i.gp, %.loopexit.i ] ; 2 uses
  %.sroa.8.0 = phi i64 [ 0, %.loopexit57.i ], [ %.sroa.8.2, %.loopexit.i ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %i.j, %.loopexit57.i ], [ %.sroa.0.2, %.loopexit.i ] ; 8 uses
  %.sroa.0.050.i = phi ptr [ %i.j, %.loopexit57.i ], [ %.sroa.0.1.i, %.loopexit.i ] ; 6 uses
  invoke void @_RNvXs_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtBa_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtNtBa_3vec9into_iter8IntoIterTB1t_B1O_EEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.i)
          to label %bb.d unwind label %bb.c, !noalias !619

.critedge.i:                                      ; preds = %bb.y, %bb.t, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.hd, %bb.y ], [ %i.dm, %bb.t ], [ %i.p, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterNtNtBP_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtNtBP_3vec9into_iter8IntoIterTB22_B2n_EEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.i) #50
          to label %.thread unwind label %bb.x, !noalias !619

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.f, align 8, !range !35, !noalias !619, !noundef !17
  %.not.i = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !619
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.050.i, i64 626 ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !noalias !619, !noundef !17 ; 3 uses
  %i.t = icmp ult i16 %i.s, 11
  br i1 %i.t, label %bb.v, label %.preheader.i

.noexc:                                           ; preds = %bb.d
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterNtNtBP_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtNtNtBP_3vec9into_iter8IntoIterTB22_B2n_EEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !619
  %i.u = icmp eq i64 %.sroa.8.0, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i14.i
  %.sroa.03.010.i.i = phi ptr [ %.sroa.0.0, %.lr.ph.i14.i ], [ %i.ag, %bb.h ] ; 4 uses
  %.sroa.01.09.i.i = phi i64 [ %.sroa.8.0, %.lr.ph.i14.i ], [ %i.ad, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i, i64 626
  %i.x = load i16, ptr %i.w, align 2, !noalias !619, !noundef !17 ; 3 uses
  %.not.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i, label %.noexc.i, label %bb.g, !prof !28

.noexc.i:                                         ; preds = %bb.f
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #51
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add nsw i64 %i.y, -1                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i, i64 632
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !625, !nonnull !17, !noundef !17 ; 5 uses
  %i.ad = add i64 %.sroa.01.09.i.i, -1            ; 3 uses
  %i.ae = icmp ult i16 %i.x, 12
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !625, !nonnull !17, !noundef !17 ; 19 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 626 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !noalias !619, !noundef !17 ; 3 uses
  %i.aj = icmp ult i16 %i.ai, 5
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs10_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE15bulk_steal_leftCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.g
  %i.ak = icmp eq i64 %i.ad, 0
  br i1 %i.ak, label %.loopexit, label %bb.f

bb.i:                                             ; preds = %bb.g
  %narrow.i.i = sub nuw nsw i16 5, %i.ai          ; 2 uses
  %i.al = zext nneg i16 %narrow.i.i to i64        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 626 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !noalias !629, !noundef !17 ; 2 uses
  %i.ao = zext nneg i16 %i.ai to i64              ; 3 uses
  %.not.i.i.i = icmp ugt i16 %narrow.i.i, %i.an
  br i1 %.not.i.i.i, label %.noexc15.i, label %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4node13move_to_sliceNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake.exit.i.i.i, !prof !28

.noexc15.i:                                       ; preds = %bb.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #51
  unreachable

_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4node13move_to_sliceNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.i
  %i.ap = zext i16 %i.an to i64                   ; 2 uses
  %i.aq = sub nuw nsw i64 %i.ap, %i.al            ; 4 uses
  %i.ar = trunc nuw i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !noalias !629
  store i16 5, ptr %i.ah, align 2, !noalias !629
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 360 ; 4 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.al
  %i.au = mul nuw nsw i64 %i.ao, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr nonnull align 8 %i.as, i64 %i.au, i1 false), !alias.scope !632, !noalias !629
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.al
  %i.aw = shl nuw nsw i64 %i.ao, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 8 %i.ag, i64 %i.aw, i1 false), !alias.scope !635, !noalias !629
  %i.ax = add nuw nsw i64 %i.aq, 1                ; 4 uses
  %i.ay = sub nuw nsw i64 %i.ap, %i.ax            ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 360 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax
  %i.bb = mul nuw nsw i64 %i.ay, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull readonly align 8 %i.ba, i64 %i.bb, i1 false), !alias.scope !638, !noalias !629
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.ax
  %i.bd = shl nuw nsw i64 %i.ay, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull readonly align 8 %i.bc, i64 %i.bd, i1 false), !alias.scope !642, !noalias !629
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.aq
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !629
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i, i64 360
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.z ; 2 uses
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.03.010.i.i, i64 %i.z ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !629
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !noalias !629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !646
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !629
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !629
  %i.bl = icmp eq i64 %i.ad, 0
  br i1 %i.bl, label %_RNvMs10_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE15bulk_steal_leftCs7p2uQeJxui2_9deltalake.exit.i.i, label %_RNvMs10_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE15bulk_steal_leftCs7p2uQeJxui2_9deltalake.exit.loopexit.i.i

_RNvMs10_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE15bulk_steal_leftCs7p2uQeJxui2_9deltalake.exit.loopexit.i.i: ; preds = %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4node13move_to_sliceNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 632 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.al
  %i.bo = shl nuw nsw i64 %i.ao, 3
  %i.bp = add nuw nsw i64 %i.bo, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.bp, i1 false), !alias.scope !650, !noalias !629
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 632
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.ax
  %i.bs = shl nuw nsw i64 %i.al, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.br, i64 %i.bs, i1 false), !alias.scope !653, !noalias !629
  %i.bt = load ptr, ptr %i.bm, align 8, !noalias !629, !nonnull !17, !noundef !17 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 352
  store ptr %i.ag, ptr %i.bu, align 8, !noalias !629
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 624
  store i16 0, ptr %i.bv, align 8, !noalias !629
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !629, !nonnull !17, !noundef !17 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 352
  store ptr %i.ag, ptr %i.by, align 8, !noalias !629
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 624
  store i16 1, ptr %i.bz, align 8, !noalias !629
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 648
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !629, !nonnull !17, !noundef !17 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 352
  store ptr %i.ag, ptr %i.cc, align 8, !noalias !629
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 624
  store i16 2, ptr %i.cd, align 8, !noalias !629
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !629, !nonnull !17, !noundef !17 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 352
  store ptr %i.ag, ptr %i.cg, align 8, !noalias !629
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 624
  store i16 3, ptr %i.ch, align 8, !noalias !629
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ag, i64 664
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !629, !nonnull !17, !noundef !17 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 352
  store ptr %i.ag, ptr %i.ck, align 8, !noalias !629
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 624
  store i16 4, ptr %i.cl, align 8, !noalias !629
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ag, i64 672
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !629, !nonnull !17, !noundef !17 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 352
  store ptr %i.ag, ptr %i.co, align 8, !noalias !629
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 624
  store i16 5, ptr %i.cp, align 8, !noalias !629
  br label %_RNvMs10_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE15bulk_steal_leftCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvMs10_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE15bulk_steal_leftCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNvMs10_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE15bulk_steal_leftCs7p2uQeJxui2_9deltalake.exit.loopexit.i.i, %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4node13move_to_sliceNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

.preheader.i:                                     ; preds = %bb.e, %bb.j
  %.sroa.3.0.i = phi i64 [ %i.cs, %bb.j ], [ 0, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.cr, %bb.j ], [ %.sroa.0.050.i, %bb.e ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 352
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !657, !noundef !17 ; 4 uses
  %.not.i16.i = icmp eq ptr %i.cr, null
  br i1 %.not.i16.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.i
  %i.cs = add i64 %.sroa.3.0.i, 1                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 626
  %i.cu = load i16, ptr %i.ct, align 2, !noalias !619, !noundef !17
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %.loopexit56.i, label %.preheader.i

bb.k:                                             ; preds = %.preheader.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.cw = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i.i unwind label %bb.o, !noalias !660 ; 7 uses

.noexc.i.i:                                       ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 352
  store ptr null, ptr %i.cx, align 8, !noalias !660
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 626
  store i16 0, ptr %i.cy, align 2, !noalias !660
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 632
  store ptr %.sroa.0.0, ptr %i.cz, align 8, !noalias !660
  %i.da = add i64 %.sroa.8.0, 1                   ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.p, !prof !28

bb.l:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #49
          to label %bb.m unwind label %bb.n, !noalias !660

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cw, i64 noundef 728, i64 noundef 8) #48, !noalias !660
  br label %.body.i.i

bb.o:                                             ; preds = %bb.k
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.n
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %.noexc.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 352
  store ptr %i.cw, ptr %i.dd, align 8, !noalias !663
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 624
  store i16 0, ptr %i.de, align 8, !noalias !668
  br label %.loopexit56.i

.loopexit56.i:                                    ; preds = %bb.j, %bb.p
  %.sroa.8.1 = phi i64 [ %i.da, %bb.p ], [ %.sroa.8.0, %bb.j ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.cw, %bb.p ], [ %.sroa.0.0, %bb.j ] ; 3 uses
  %.sroa.034.0.i = phi ptr [ %i.cw, %bb.p ], [ %i.cr, %bb.j ] ; 8 uses
  %.sroa.635.0.i = phi i64 [ %i.da, %bb.p ], [ %i.cs, %bb.j ] ; 6 uses
  %i.df = add i64 %.sroa.635.0.i, -1              ; 2 uses
  %i.dg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %bb.q unwind label %bb.w, !noalias !619 ; 4 uses

bb.q:                                             ; preds = %.loopexit56.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 352
  store ptr null, ptr %i.dh, align 8, !noalias !619
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 626
  store i16 0, ptr %i.di, align 2, !noalias !619
  %.not71.i = icmp eq i64 %i.df, 0
  br i1 %.not71.i, label %.loopexit90.i, label %.lr.ph.i

.invoke.i.i:                                      ; preds = %.loopexit90.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #49
          to label %.cont.i.i unwind label %bb.r, !noalias !669

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

.loopexit90.i:                                    ; preds = %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs7p2uQeJxui2_9deltalake.exit29.i, %bb.q
  %.sroa.040.0.lcssa.i = phi ptr [ %i.dg, %bb.q ], [ %i.gq, %_RINvNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtNtB8_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECs7p2uQeJxui2_9deltalake.exit29.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !619
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.034.0.i, i64 626 ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !669, !noundef !17 ; 3 uses
  %i.dl = icmp ult i16 %i.dk, 11
  br i1 %i.dl, label %bb.u, label %.invoke.i.i, !prof !246

bb.r:                                             ; preds = %.invoke.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #50
          to label %bb.t unwind label %bb.s, !noalias !673

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !619
  unreachable

bb.t:                                             ; preds = %bb.r
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.critedge.i unwind label %bb.s, !noalias !619

bb.u:                                             ; preds = %.loopexit90.i
  %i.do = zext nneg i16 %i.dk to i64              ; 3 uses
  %i.dp = add nuw nsw i16 %i.dk, 1
  store i16 %i.dp, ptr %i.dj, align 2, !noalias !669
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.034.0.i, i64 360
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !619
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.sroa.034.0.i, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !619
  %i.dt = add nuw nsw i64 %i.do, 1                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.034.0.i, i64 632
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  store ptr %.sroa.040.0.lcssa.i, ptr %i.dv, align 8, !noalias !669
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.040.0.lcssa.i, i64 352
  store ptr %.sroa.034.0.i, ptr %i.dw, align 8, !noalias !669
  %i.dx = trunc nuw nsw i64 %i.dt to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.040.0.lcssa.i, i64 624
  store i16 %i.dx, ptr %i.dy, align 8, !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !619
  %i.dz = icmp eq i64 %.sroa.635.0.i, 0
  br i1 %i.dz, label %.loopexit.i, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %bb.u
  %xtraiter = and i64 %.sroa.635.0.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.sroa.03.08.i22.i.prol = phi ptr [ %i.eg, %.lr.ph.i21.i.prol ], [ %.sroa.034.0.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %.sroa.05.07.i23.i.prol = phi i64 [ %i.eh, %.lr.ph.i21.i.prol ], [ %.sroa.635.0.i, %.lr.ph.i21.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i22.i.prol, i64 626
end_hunk_0
