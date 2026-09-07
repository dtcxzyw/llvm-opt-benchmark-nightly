Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.03?download=true
inline.NumInlined: 699
inline.NumDeleted: 296
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callNtCsfr4kGEjnBfC_11proc_macro25IdentNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4c_3VecB3u_E14extend_trustedBN_E0E0EB1v_:bb.a
          cleanup
  br label %bb.j

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.r, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %0, %.lr.ph.i ], [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i ] ; 2 uses
  %i.i = add i64 %.sroa.0.011.i, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1267
  store i64 %.sroa.0.011.i, ptr %i.c, align 8, !noalias !1268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1268
  store ptr %i.c, ptr %i.a, align 8, !noalias !1268
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1268
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
          to label %.noexc.i unwind label %bb.b, !noalias !1266

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1268
  %i.j = load ptr, ptr %i.f, align 8, !noalias !1268, !nonnull !12, !noundef !12
  %i.k = load i64, ptr %i.g, align 8, !noalias !1268, !noundef !12
  %i.l = invoke noundef i32 @_RNvMsi_Csfr4kGEjnBfC_11proc_macro2NtB5_4Span9call_site()
          to label %bb.e unwind label %bb.d, !noalias !1268

bb.d:                                             ; preds = %bb.e, %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %bb.j unwind label %bb.i, !noalias !1268

bb.e:                                             ; preds = %.noexc.i
  invoke void @_RNvMsx_Csfr4kGEjnBfC_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, i32 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.f unwind label %bb.d, !noalias !1267

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i unwind label %bb.g, !noalias !1268

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.h, !noalias !1268

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1268
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1268
  unreachable

_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i unwind label %bb.b, !noalias !1266

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i: ; preds = %_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1267
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1267
  %i.r = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1266
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4h_3VecB25_E14extend_trustedINtB1B_3MapB3_B2F_EE0E0E0EB2L_.exit, label %bb.c

bb.j:                                             ; preds = %bb.g, %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.n, %bb.g ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1266
  resume { ptr, i32 } %eh.lpad-body.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4h_3VecB25_E14extend_trustedINtB1B_3MapB3_B2F_EE0E0E0EB2L_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1266
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsfr4kGEjnBfC_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1O_j1_ECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [20 x i8], align 4                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = load i64, ptr %0, align 8, !range !17, !noundef !12
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsfr4kGEjnBfC_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.lr.ph.i.us.i.i.i unwind label %bb.d, !noalias !1313

.lr.ph.i.us.i.i.i:                                ; preds = %bb.b
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !1314, !noalias !1315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  store i64 1, ptr %i.b, align 8, !alias.scope !1319, !noalias !1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit unwind label %.split.i.i.i, !noalias !1322

.split.i.i.i:                                     ; preds = %.lr.ph.i.us.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #19
          to label %common.resume unwind label %bb.c, !noalias !1323

bb.c:                                             ; preds = %.split.i.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1323
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d, %bb.j, %.body, %.split.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %eh.lpad-body, %.body ], [ %i.k, %.split.i.i.i ], [ %i.m, %bb.d ], [ %i.z, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %.lr.ph.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph: ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  store i64 1, ptr %i.f, align 8, !alias.scope !1326, !noalias !1327
  %.sroa.01.0.copyload231 = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1328 ; 2 uses
  %.not32 = icmp eq i32 %.sroa.01.0.copyload231, -1
  br i1 %.not32, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %bb.p, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.ag, %bb.p ], [ %i.ag, %bb.o ], [ %i.ag, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #19
          to label %common.resume unwind label %bb.r

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  store i64 1, ptr %i.f, align 8, !alias.scope !1326, !noalias !1331
  %.sroa.01.0.copyload2 = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1332 ; 2 uses
  %.not = icmp eq i32 %.sroa.01.0.copyload2, -1
  br i1 %.not, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit
  %.sroa.01.0.copyload233 = phi i32 [ %.sroa.01.0.copyload2, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit ], [ %.sroa.01.0.copyload231, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx3, i64 28, i1 false)
  store i32 %.sroa.01.0.copyload233, ptr %i.d, align 8
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro23imp19into_compiler_token(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.l unwind label %bb.f

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph
  %.lcssa27 = phi i64 [ 1, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph ], [ %i.ar, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa27, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread
  %i.s = add i64 %.lcssa27, -1                    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %2 = icmp eq i64 %i.s, 0
  br i1 %2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph35

bb.h:                                             ; preds = %.lr.ph35
  %i.u = icmp eq i64 %i.w, %i.s
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i34 = phi i64 [ %i.w, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.0.i.i.i.i.i.i.i34
  %i.w = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i34, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
          to label %bb.h unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph37
  %i.x = add i64 %.sroa.0.1.i.i.i.i.i.i.i36, 1    ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.s
  br i1 %i.y, label %common.resume, label %.lr.ph37

bb.j:                                             ; preds = %.lr.ph35
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %i.w, %i.s
  br i1 %i.aa, label %common.resume, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i.i.i.i.i36 = phi i64 [ %i.x, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.1.i.i.i.i.i.i.i36
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab) #19
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph37
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit, %bb.h, %bb.g, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit
  ret void

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.ad = load i64, ptr %i.o, align 8, !alias.scope !1337, !noalias !1338, !noundef !12 ; 3 uses
  %i.ae = load i64, ptr %0, align 8, !range !25, !alias.scope !1337, !noalias !1338, !noundef !12
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.m, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE8grow_oneCsaoeXog3N7id_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.n, !noalias !1338

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load i8, ptr %i.ah, align 4, !range !26, !alias.scope !1339, !noalias !1337, !noundef !12
  %i.aj = icmp samesign ult i8 %i.ai, 4
  br i1 %i.aj, label %bb.o, label %.body

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !1340, !noalias !1337, !noundef !12
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ak)
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.l, %bb.m
  %i.ao = load ptr, ptr %i.p, align 8, !alias.scope !1337, !noalias !1338, !nonnull !12, !noundef !12
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.ao, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.aq = add i64 %i.ad, 1
  store i64 %i.aq, ptr %i.o, align 8, !alias.scope !1337, !noalias !1338
  %i.ar = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1326, !noalias !1341, !noundef !12 ; 2 uses
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1326, !noalias !1341, !noundef !12
  %.not.i.i = icmp eq i64 %i.ar, %i.as
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit

bb.r:                                             ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsfr4kGEjnBfC_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [20 x i8], align 4                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 3 uses
  %i.j = alloca [40 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 2 uses
  %i.l = load i64, ptr %0, align 8, !range !17, !noundef !12
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsfr4kGEjnBfC_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.c unwind label %bb.m, !noalias !1374

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs0_NtCsfr4kGEjnBfC_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !1374
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1377
  invoke void @_RNvXNtCsfr4kGEjnBfC_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.f unwind label %bb.e, !noalias !1378

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #19
          to label %common.resume unwind label %bb.l, !noalias !1378

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.b, align 8, !range !1379, !noalias !1377, !noundef !12
  %.not.i.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1377
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.e, !noalias !1378

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1377
  %i.r = load i64, ptr %i.d, align 8, !range !22, !alias.scope !1381, !noalias !1382, !noundef !12
  %i.s = icmp eq i64 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsa5ERaWwhjCQ_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !1374
  br label %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit

bb.j:                                             ; preds = %bb.h
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !1374
  br label %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1377
  br label %bb.d

bb.l:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1378
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.m ], [ %i.p, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #19
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs0_NtCsfr4kGEjnBfC_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit, %bb.o
  invoke void @_RNvXNtCsfr4kGEjnBfC_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.ag, %bb.aa ], [ %i.ag, %bb.z ], [ %i.ag, %bb.y ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(40) %i.j) #19
          to label %common.resume unwind label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.z = load i32, ptr %i.i, align 8, !range !1379, !noundef !12
  %.not = icmp eq i32 %i.z, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro23imp19into_compiler_token(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.w unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.aa = load i64, ptr %i.j, align 8, !range !22, !alias.scope !1383, !noundef !12
end_hunk_0
