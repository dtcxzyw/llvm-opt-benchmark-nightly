Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.09?download=true
inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources7from_fn6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENCINvXs6_NtCsbpG6u9KFjWn_8indexmap3setINtB2K_8IndexSetNtNtB1A_4expr4ExprEINtNtNtBa_6traits7collect12FromIteratorB3t_E9from_iterBX_E0ENtNtB3R_8iterator8Iterator4folduNCINvNvB4K_8for_each4callTB3t_uENCINvXsb_NtB2M_3mapINtB5V_8IndexMapB3t_uEINtB3P_6ExtendB5F_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.t, !noalias !11003

.body14.i.i.i:                                    ; preds = %bb.t, %bb.p, %bb.o
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.bc, %bb.t ], [ %i.aw, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11010)
  %i.ay = load ptr, ptr %i.n, align 16, !alias.scope !11010, !noalias !11004, !noundef !23 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.body.i, label %bb.r

bb.r:                                             ; preds = %.body14.i.i.i
  %i.ba = atomicrmw add ptr %i.ay, i64 -1 release, align 8, !noalias !11011
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %.body.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #45
          to label %.body.i unwind label %bb.f, !noalias !11003

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11012)
  %i.bd = load ptr, ptr %i.n, align 16, !alias.scope !11012, !noalias !11004, !noundef !23 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit18.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.bf = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !11013
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit18.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common8metadata13FieldMetadataEECs14kWLkQVSKO_14deltalake_core.exit18.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 112, i64 noundef 16) #42, !noalias !11003
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef 112, i64 noundef 16) #42, !noalias !11003
  %i.bh = load i64, ptr %i.c, align 16, !range !71, !noalias !11004, !noundef !23 ; 3 uses
  %i.bi = icmp ne i64 %i.bh, 35
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nsw i64 %i.bh, -4
  %i.bk = icmp samesign ugt i64 %i.bh, 3
  %i.bl = select i1 %i.bk, i64 %i.bj, i64 31
  switch i64 %i.bl, label %bb.x [
    i64 0, label %bb.y
    i64 4, label %.body.i
  ]

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.c) #43
          to label %.body.i unwind label %bb.f, !noalias !11003

bb.y:                                             ; preds = %bb.w
  %i.bm = load i64, ptr %i.j, align 8, !range !37, !alias.scope !11014, !noalias !11004, !noundef !23
  %i.bn = icmp eq i64 %i.bm, 3
  br i1 %i.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i unwind label %bb.f, !noalias !11003

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i: ; preds = %bb.z, %bb.y
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #43
          to label %bb.aa unwind label %bb.f, !noalias !11003

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs14kWLkQVSKO_14deltalake_core.exit20.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11015)
  %i.bo = load ptr, ptr %i.n, align 16, !alias.scope !11015, !noalias !11004, !noundef !23 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.body.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = atomicrmw add ptr %i.bo, i64 -1 release, align 8, !noalias !11016
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.ac, label %.body.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtB7_6string6StringB1o_EE9drop_slowCsjhHCjzi9uUI_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n) #45
          to label %.body.i unwind label %bb.f, !noalias !11003

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.l, %bb.ad
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.s, %bb.r, %.body14.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.am, %bb.ab ], [ %i.am, %bb.w ], [ %i.am, %bb.x ], [ %.pn3.i.i.i, %bb.r ], [ %.pn3.i.i.i, %bb.s ], [ %.pn3.i.i.i, %.body14.i.i.i ], [ %i.am, %bb.ac ], [ %i.am, %bb.aa ], [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #43
          to label %common.resume.i unwind label %bb.ah

_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENtNtNtB6_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.i, i64 104, i1 false), !noalias !11017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11004
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %.not.i = icmp eq i64 %.sroa.09.0.copyload.i, 37
  br i1 %.not.i, label %.loopexit15.i, label %bb.ad

bb.ad:                                            ; preds = %_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENtNtNtB6_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.i, i64 104, i1 false), !noalias !11019
  store i64 %.sroa.09.0.copyload.i, ptr %i.a, align 16, !noalias !11019
  %i.bs = invoke { i64, i1 } @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruE11insert_fullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit15.i:                                    ; preds = %_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENtNtNtB6_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENtNtNtB6_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources7from_fn6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldNtNtB13_4expr4ExprTB3g_uEuNCINvXs6_NtCsbpG6u9KFjWn_8indexmap3setINtB3P_8IndexSetB3g_EINtNtB28_7collect12FromIteratorB3g_E9from_iterB3_E0NCINvNvB24_8for_each4callB3y_NCINvXsb_NtB3R_3mapINtB64_8IndexMapB3g_uEINtB4G_6ExtendB3y_E6extendINtB2N_3MapB3_B3G_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ae

bb.ae:                                            ; preds = %.loopexit15.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume.i:                                  ; preds = %bb.ae, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bt, %bb.ae ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11018
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  %i.bv = load i64, ptr %i.e, align 8, !alias.scope !11020, !noundef !23 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources7from_fnINtB2_6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENtNtNtB6_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %.lr.ph.i.i.i

bb.ah:                                            ; preds = %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources7from_fn6FromFnNCNvNtCs8VI8w5SIoU4_15datafusion_expr5utils22iter_conjunction_owned0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtNtBa_8adapters3map8map_foldNtNtB13_4expr4ExprTB3g_uEuNCINvXs6_NtCsbpG6u9KFjWn_8indexmap3setINtB3P_8IndexSetB3g_EINtNtB28_7collect12FromIteratorB3g_E9from_iterB3_E0NCINvNvB24_8for_each4callB3y_NCINvXsb_NtB3R_3mapINtB64_8IndexMapB3g_uEINtB4G_6ExtendB3y_E6extendINtB2N_3MapB3_B3G_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.loopexit15.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VeclE14extend_trustedBN_E0E0EB1J_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !24, !noundef !23 ; 9 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 8 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8 ; 9 uses
  %i.c = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.not.i.i = icmp ugt i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  %or.cond = select i1 %i.c, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %_RINvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtNtNtB8_6traits8iterator8Iterator4folduNCINvNtNtB8_8adapters3map8map_foldjluNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0NCINvNvB1g_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4p_3VeclE14extend_trustedINtB1Z_3MapBE_B2v_EE0E0E0EB2F_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %i.d, label %.lr.ph.i.i.preheader, label %._crit_edge19.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.e = sub nuw i64 %.sroa.4.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.e, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.f = shl i64 %.sroa.42.0.copyload, 2
  %i.g = getelementptr i8, ptr %.sroa.53.0.copyload, i64 %i.f
  %i.h = add i64 %.sroa.42.0.copyload, %.sroa.4.0.copyload
  %i.i = sub i64 %i.h, %.sroa.0.0.copyload
  %i.j = shl i64 %i.i, 2
  %i.k = getelementptr i8, ptr %.sroa.53.0.copyload, i64 %i.j
  %i.l = getelementptr i8, ptr %i.b, i64 8
  %bound0 = icmp ult ptr %i.g, %i.l
  %bound1 = icmp ult ptr %i.b, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, -4                       ; 4 uses
  %i.m = add i64 %.sroa.42.0.copyload, %n.vec     ; 2 uses
  %i.n = add i64 %.sroa.0.0.copyload, %n.vec
  %i.o = load i64, ptr %i.b, align 8, !alias.scope !11049, !noalias !11050
  %broadcast.splatinsert7 = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat8 = shufflevector <2 x i64> %broadcast.splatinsert7, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.p = getelementptr [4 x i8], ptr %.sroa.53.0.copyload, i64 %.sroa.42.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.q = mul <2 x i64> %broadcast.splat8, %vec.ind
  %i.r = mul <2 x i64> %broadcast.splat8, %step.add
  %i.s = trunc <2 x i64> %i.q to <2 x i32>
  %i.t = trunc <2 x i64> %i.r to <2 x i32>
  %i.u = getelementptr [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <2 x i32> %i.s, ptr %i.u, align 4, !alias.scope !11051, !noalias !11052
  store <2 x i32> %i.t, ptr %i.v, align 4, !alias.scope !11051, !noalias !11052
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !11038

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge19.i.i, label %.lr.ph.i.i.preheader10

.lr.ph.i.i.preheader10:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.42.0.copyload, %vector.memcheck ], [ %.sroa.42.0.copyload, %.lr.ph.i.i.preheader ], [ %i.m, %middle.block ] ; 2 uses
  %.ph11 = phi i64 [ %.sroa.0.0.copyload, %vector.memcheck ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.preheader ], [ %i.n, %middle.block ] ; 4 uses
  %i.x = sub i64 %.sroa.4.0.copyload, %.ph11
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader10, %.lr.ph.i.i.prol
  %i.y = phi i64 [ %i.af, %.lr.ph.i.i.prol ], [ %.ph, %.lr.ph.i.i.preheader10 ] ; 2 uses
  %i.z = phi i64 [ %i.aa, %.lr.ph.i.i.prol ], [ %.ph11, %.lr.ph.i.i.preheader10 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader10 ]
  %i.aa = add nuw i64 %i.z, 1                     ; 2 uses
  %i.ab = load i64, ptr %i.b, align 8, !noalias !11050, !noundef !23
  %i.ac = mul i64 %i.ab, %i.z
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.53.0.copyload, i64 %i.y
  store i32 %i.ad, ptr %i.ae, align 4, !noalias !11053
  %i.af = add i64 %i.y, 1                         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !11039

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader10
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader10 ], [ %i.af, %.lr.ph.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.preheader10 ], [ %i.af, %.lr.ph.i.i.prol ]
  %.unr12 = phi i64 [ %.ph11, %.lr.ph.i.i.preheader10 ], [ %i.aa, %.lr.ph.i.i.prol ]
  %i.ag = sub i64 %.ph11, %.sroa.4.0.copyload
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge19.i.i, label %.lr.ph.i.i

._crit_edge19.i.i:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.sroa.5.0.i = phi i64 [ %.sroa.42.0.copyload, %.preheader.i.i ], [ %i.m, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i ] ; 2 uses
  %i.ai = load i64, ptr %i.b, align 8, !noalias !11054, !noundef !23
  %i.aj = mul i64 %i.ai, %.sroa.4.0.copyload
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.53.0.copyload, i64 %.sroa.5.0.i
  store i32 %i.ak, ptr %i.al, align 4, !noalias !11055
  %i.am = add i64 %.sroa.5.0.i, 1
  br label %_RINvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtNtNtB8_6traits8iterator8Iterator4folduNCINvNtNtB8_8adapters3map8map_foldjluNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0NCINvNvB1g_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4p_3VeclE14extend_trustedINtB1Z_3MapBE_B2v_EE0E0E0EB2F_.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.an = phi i64 [ %i.bm, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ao = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %.unr12, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ap = add nuw i64 %i.ao, 1
  %i.aq = load i64, ptr %i.b, align 8, !noalias !11050, !noundef !23
  %i.ar = mul i64 %i.aq, %i.ao
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.53.0.copyload, i64 %i.an
  store i32 %i.as, ptr %i.at, align 4, !noalias !11053
  %i.au = add nuw i64 %i.ao, 2
  %i.av = load i64, ptr %i.b, align 8, !noalias !11050, !noundef !23
  %i.aw = mul i64 %i.av, %i.ap
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr [4 x i8], ptr %.sroa.53.0.copyload, i64 %i.an
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  store i32 %i.ax, ptr %i.az, align 4, !noalias !11053
  %i.ba = add nuw i64 %i.ao, 3
  %i.bb = load i64, ptr %i.b, align 8, !noalias !11050, !noundef !23
  %i.bc = mul i64 %i.bb, %i.au
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr [4 x i8], ptr %.sroa.53.0.copyload, i64 %i.an
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  store i32 %i.bd, ptr %i.bf, align 4, !noalias !11053
  %i.bg = add nuw i64 %i.ao, 4                    ; 2 uses
  %i.bh = load i64, ptr %i.b, align 8, !noalias !11050, !noundef !23
  %i.bi = mul i64 %i.bh, %i.ba
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr [4 x i8], ptr %.sroa.53.0.copyload, i64 %i.an
  %i.bl = getelementptr i8, ptr %i.bk, i64 12
  store i32 %i.bj, ptr %i.bl, align 4, !noalias !11053
  %i.bm = add i64 %i.an, 4                        ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bg, %.sroa.4.0.copyload
  br i1 %exitcond.not.i.i.3, label %._crit_edge19.i.i, label %.lr.ph.i.i, !llvm.loop !11048

_RINvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtBa_3ops5range14RangeInclusivejENtNtNtB8_6traits8iterator8Iterator4folduNCINvNtNtB8_8adapters3map8map_foldjluNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0NCINvNvB1g_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4p_3VeclE14extend_trustedINtB1Z_3MapBE_B2v_EE0E0E0EB2F_.exit: ; preds = %bb.a, %._crit_edge19.i.i
  %storemerge.i = phi i64 [ %i.am, %._crit_edge19.i.i ], [ %.sroa.42.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.01.0.copyload, align 8, !noalias !11056
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1w_5error15DataFusionErrorEEB3i_8try_folduNCINvNvB3i_12try_for_each4callINtNtBc_6option6OptiontEINtNtB12_12control_flow11ControlFlowB6y_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EECs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef align 8 dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.6.i.i = alloca [28 x i8], align 4        ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11075)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11077)
  %i.l = load i64, ptr %i.j, align 8, !alias.scope !11078, !noundef !23 ; 6 uses
  %i.m = load i64, ptr %i.k, align 8, !alias.scope !11079, !noundef !23
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtBa_6option6OptiontENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB8_12control_flow11ControlFlowIB3Z_B2A_EENCINvNtB32_6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeE0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4I_EIB2f_NtNtBa_7convert10InfallibleB2Y_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4x_NcNtB4x_5Break0E0B4x_E0E0B3Y_ECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.o = add nuw i64 %i.l, 1
  store i64 %i.o, ptr %i.j, align 8, !alias.scope !11080
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.val.i.i = load ptr, ptr %0, align 8, !noalias !11075, !nonnull !23, !align !24, !noundef !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11075
  store i64 %i.l, ptr %i.i, align 8, !noalias !11081
  %i.p = tail call noundef zeroext i1 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_8is_valid(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, i64 noundef %i.l), !noalias !11081
  br i1 %i.p, label %bb.c, label %_RNCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.l, 65536
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = trunc nuw i64 %i.l to i16
  br label %_RNCINvNtCsjhHCjzi9uUI_17datafusion_common6scalar16dict_from_valuesNtNtCs1N9T06jgEdt_11arrow_array5types10UInt16TypeE0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !11082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11082
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 7, i64 24, i1 false), !noalias !11082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11082
  store ptr %i.e, ptr %i.d, align 8, !noalias !11082
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCsfYVtenZkBsn_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !11082
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.s, align 8, !noalias !11082
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !11082
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @218, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.f, !noalias !11083

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
          to label %common.resume.i.i unwind label %bb.p, !noalias !11083

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11082
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e), !noalias !11083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !11082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11082
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.h unwind label %bb.g, !noalias !11083

.body.i.i.i.i:                                    ; preds = %bb.l, %bb.k, %bb.g
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.u, %bb.g ], [ %i.ae, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #43
          to label %common.resume.i.i unwind label %bb.p, !noalias !11083

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !range !25, !noalias !11082, !noundef !23
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
