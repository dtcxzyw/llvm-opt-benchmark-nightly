inline.NumInlined: 850
inline.NumDeleted: 363
begin_hunk_0_@_RNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00B7_:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !range !5, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef range(i64 1, 0) %i.bo, i64 noundef range(i64 1, 536870913) %i.br) #21
  br label %.body31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.ao, %bb.an
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !3
  %.sroa.2.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.2.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(128) %i.e, i64 128, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(120) %i.bu)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2y_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsfY7SmN0bPrO_14deltalake_test.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body33 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.av

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.body33:                                          ; preds = %bb.at, %bb.av
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.by, %bb.av ], [ %i.bw, %bb.at ]
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(144) %i.bz) #24
          to label %bb.aw unwind label %bb.ad

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(144) %i.ca)
          to label %bb.ay unwind label %bb.ax

bb.aw:                                            ; preds = %bb.az, %bb.ax, %.body33
  %.pn19 = phi { ptr, i32 } [ %i.cb, %bb.ax ], [ %eh.lpad-body34, %.body33 ], [ %.pn17, %bb.az ]
  store i8 2, ptr %i.n, align 8
  resume { ptr, i32 } %.pn19

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit
  store i64 %i.bt, ptr %0, align 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.2, i64 136, i1 false)
  br label %common.ret

bb.az:                                            ; preds = %bb.ae
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(144) %i.cc) #24
          to label %bb.aw unwind label %bb.ad
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !1297 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !1297 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !1297 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1297 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !3
  %i.t = load i8, ptr %i.r, align 1, !noundef !3
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfY7SmN0bPrO_14deltalake_test.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !1292, !noalias !1295
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !1295, !noalias !1292
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !1292, !noalias !1295
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !1295, !noalias !1292
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB2c_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @39, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1298
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 256, i64 noundef range(i64 8, 129) 128) #21, !noalias !1298 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2s_22test_concurrent_writes00NCNvMB2s_NtB2s_6Worker3new0E00EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB2u_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB2c_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @40, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1301
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 256, i64 noundef range(i64 8, 129) 128) #21, !noalias !1301 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2s_22test_concurrent_writes00NCNvMB2s_NtB2s_6Worker3new0E00EEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB2u_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB2b_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @41, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1304
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 256, i64 noundef range(i64 8, 129) 128) #21, !noalias !1304 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1R_4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB2t_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1z_4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB2b_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @42, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %0, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, align 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1307
  %i.j = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 256, i64 noundef range(i64 8, 129) 128) #21, !noalias !1307 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00EEINtNtB1R_4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB2t_(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.j, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE3newCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @43, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %0, ptr %.sroa.611.sroa.5.0..sroa.611.0..sroa_idx.sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1310
  %i.f = tail call noundef align 128 dereferenceable_or_null(256) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 256, i64 noundef range(i64 8, 129) 128) #21, !noalias !1310 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !1009

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 256) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2M_8snapshotNtB3W_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtB2d_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0EENtNtB1B_8schedule16BlockingScheduleEECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 128 dereferenceable(256) %i.a) #24
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %i.f, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1F_8snapshotNtB2P_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4U_5error5ErrorEEs_0ENtNtB13_8schedule16BlockingScheduleE3newCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(184) %0, ptr noundef %1, ptr %2, i64 noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.413 = alloca [196 x i8], align 4         ; 2 uses
  %i.a = alloca [384 x i8], align 128             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = atomicrmw add ptr %1, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ %2, %bb.b ]
  %.sroa.413.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(184) %.sroa.413.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  store i64 %3, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @44, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.d, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %4, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %.sroa.611.sroa.3.0..sroa.611.0..sroa_idx.sroa_idx, align 64
  %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %.sroa.611.sroa.4.0..sroa.611.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(196) %.sroa.413, i64 196, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store ptr %.sroa.5.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1313
  %i.f = tail call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 384, i64 noundef range(i64 8, 129) 128) #21, !noalias !1313 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.h, !prof !1009

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2d_8snapshotNtB3n_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5c_5error5ErrorEEs_0ENtNtB1B_8schedule16BlockingScheduleEECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 128 dereferenceable(384) %i.a) #24
          to label %.critedge unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.f, ptr noundef nonnull align 128 dereferenceable(384) %i.a, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

.critedge:                                        ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB17_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(1224) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [1228 x i8], align 4        ; 2 uses
  %i.a = alloca [1408 x i8], align 128            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1224) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1224) %0, i64 1224, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @45, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1228) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(1228) %.sroa.412, i64 1228, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1316
  %i.j = tail call noundef align 128 dereferenceable_or_null(1408) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 1408, i64 noundef range(i64 8, 129) 128) #21, !noalias !1316 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 1408) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1D_22test_concurrent_writes00NCNvMB1D_NtB1D_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB1F_(ptr noundef nonnull align 128 dereferenceable(1408) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(1408) %i.j, ptr noundef nonnull align 128 dereferenceable(1408) %i.a, i64 1408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB15_22test_concurrent_writes00NCNvMB15_NtB15_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB17_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(1224) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [1228 x i8], align 4        ; 2 uses
  %i.a = alloca [1408 x i8], align 128            ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1224) %.sroa.412.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1224) %0, i64 1224, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @46, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1228) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(1228) %.sroa.412, i64 1228, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1319
  %i.j = tail call noundef align 128 dereferenceable_or_null(1408) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 1408, i64 noundef range(i64 8, 129) 128) #21, !noalias !1319 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 1408) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1D_22test_concurrent_writes00NCNvMB1D_NtB1D_6Worker3new0E00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB1F_(ptr noundef nonnull align 128 dereferenceable(1408) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(1408) %i.j, ptr noundef nonnull align 128 dereferenceable(1408) %i.a, i64 1408, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE3newB16_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(320) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [332 x i8], align 4         ; 2 uses
  %i.a = alloca [512 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %.sroa.412.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %0, i64 320, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @47, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(332) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(332) %.sroa.412, i64 332, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1322
  %i.j = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 512, i64 noundef range(i64 8, 129) 128) #21, !noalias !1322 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtBN_9scheduler14current_thread6HandleEEEB1E_(ptr noundef nonnull align 128 dereferenceable(512) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.j, ptr noundef nonnull align 128 dereferenceable(512) %i.a, i64 512, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newB16_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(320) %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.412 = alloca [332 x i8], align 4         ; 2 uses
  %i.a = alloca [512 x i8], align 128             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi <2 x ptr> [ %i.f, %bb.c ], [ <ptr null, ptr undef>, %bb.a ]
  %.sroa.412.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.412, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(320) %.sroa.412.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %0, i64 320, i1 false)
  store i64 %2, ptr %i.a, align 128
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @48, ptr %.sroa.56.0..sroa_idx, align 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 32
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx, align 16
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(332) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(332) %.sroa.412, i64 332, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.g, ptr %.sroa.7.0..sroa_idx, align 32
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1325
  %i.j = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 80, 1409) 512, i64 noundef range(i64 8, 129) 128) #21, !noalias !1325 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.i, !prof !1009

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #27
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellNCNCNvNtCsfY7SmN0bPrO_14deltalake_test10concurrent30test_concurrent_table_creation00INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBN_9scheduler12multi_thread6handle6HandleEEEB1E_(ptr noundef nonnull align 128 dereferenceable(512) %i.a) #24
          to label %.critedge unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.j, ptr noundef nonnull align 128 dereferenceable(512) %i.a, i64 512, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.j

.critedge:                                        ; preds = %bb.g
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollB2c_(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !range !158, !noalias !1328, !noundef !3
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !1023

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1328
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !828, !noalias !1328, !noundef !3
  %i.k = tail call noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.j), !noalias !1328
  store i64 %i.k, ptr %i.b, align 8, !noalias !1328
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB1B_22test_concurrent_writes00NCNvMB1B_NtB1B_6Worker3new0E00EENtB4_6Future4pollB1D_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0B2e_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #26, !noalias !1328
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.e, !noalias !1332

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1332
  unreachable

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0B2e_.exit: ; preds = %bb.b
  call void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1328
  %i.n = load ptr, ptr %i.d, align 8, !noundef !3
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0B2e_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1333
  %i.o = load i64, ptr %i.i, align 8, !range !828, !noalias !1333, !noundef !3
  %i.p = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.o)
          to label %bb.g unwind label %bb.j, !noalias !1333

bb.g:                                             ; preds = %bb.f
  store i64 %i.p, ptr %i.a, align 8, !noalias !1333
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2t_22test_concurrent_writes00NCNvMB2t_NtB2t_6Worker3new0E00EEEEB2v_(ptr noalias noundef align 8 dereferenceable(56) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsfY7SmN0bPrO_14deltalake_test.exit3.i unwind label %bb.h, !noalias !1333

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.i, !noalias !1333

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsfY7SmN0bPrO_14deltalake_test.exit3.i: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2t_22test_concurrent_writes00NCNvMB2t_NtB2t_6Worker3new0E00EEEEB2v_(ptr noalias noundef align 8 dereferenceable(56) %i.c) #24
          to label %.body unwind label %bb.i

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsfY7SmN0bPrO_14deltalake_test.exit3.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.j, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.q, %bb.h ], [ %i.s, %bb.j ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTxNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %common.resume unwind label %bb.n

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsfY7SmN0bPrO_14deltalake_test.exit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2c_22test_concurrent_writes00NCNvMB2c_NtB2c_6Worker3new0E00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE4poll0B2e_.exit, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtCsfY7SmN0bPrO_14deltalake_test10concurrent8run_testNCNCNvB2a_22test_concurrent_writes00NCNvMB2a_NtB2a_6Worker3new0E00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageB2c_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !828, !noundef !3
  %i.d = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.c)
end_hunk_0
