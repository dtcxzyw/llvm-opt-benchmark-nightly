Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/derived_class?download=true
inline.NumInlined: 4793
inline.NumDeleted: 930
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2tl8expectedISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS4_EESaIS7_EEN11struct_pack8err_codeEEaSISB_TnPNSt9enable_ifIXaasr3std29is_nothrow_move_constructibleIT_EE5valuesr3std18is_move_assignableISF_EE5valueEvE4typeELPv0EEERSC_ONS_10unexpectedISF_EE:bb.a
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !194
  br label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit

_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load i32, ptr %1, align 4, !tbaa !52
  store i32 %i.s, ptr %0, align 8, !tbaa !52
  store i8 0, ptr %i.a, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.struct_pack::string_literal", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77, !nonnull !54, !align !78 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.b, label %bb.n, !prof !50

bb.b:                                             ; preds = %bb.a
  %.0.copyload47 = load i32, ptr %i.e, align 1    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !46
  %.mask.i = and i32 %.0.copyload47, -2
  %.not.i = icmp eq i32 %.mask.i, 561882022
  br i1 %.not.i, label %bb.c, label %bb.n, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %.0.copyload47, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.d, !prof !50

.thread:                                          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !79
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.d, %i.j
  br i1 %.not, label %bb.n, label %bb.e, !prof !80

bb.e:                                             ; preds = %bb.d
  %.0.copyload = load i8, ptr %i.j, align 1       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !46
  %i.o = and i8 %.0.copyload, 3
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.f, %i.p
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, label %bb.n, !prof !50

bb.g:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.f, %i.s
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, label %bb.n, !prof !50

bb.h:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.f, %i.v
  %i.x = icmp ugt i64 %i.w, 7
  br i1 %i.x, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, label %bb.n, !prof !50

default.unreachable:                              ; preds = %bb.e
  unreachable

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split: ; preds = %bb.h, %bb.g, %bb.f
  %.sink97 = phi i64 [ 9, %bb.g ], [ 7, %bb.f ], [ 13, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink97 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !46
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split, %bb.e
  %i.z = phi ptr [ %i.n, %bb.e ], [ %i.y, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.sink.split ] ; 3 uses
  %i.aa = and i8 %.0.copyload, 4
  %.not8.i = icmp eq i8 %i.aa, 0
  br i1 %.not8.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i32 16419204, ptr %2, align 4
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.f, %i.ab
  %i.ad = icmp ult i64 %i.ac, 4
  br i1 %i.ad, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, label %bb.j, !prof !80

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !46
  %i.af = load i32, ptr %i.z, align 1
  %i.ag = load i32, ptr %2, align 4
  %i.ah = icmp ne i32 %i.af, %i.ag
  %i.ai = zext i1 %i.ah to i32
  %.not4.i = icmp eq i32 %i.ai, 0
  br i1 %.not4.i, label %.critedge10.i, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !50

_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread: ; preds = %bb.i, %bb.j
  %.sroa.069.0.ph = phi i32 [ 3, %bb.j ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.n

.critedge10.i:                                    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

bb.k:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit, %.critedge10.i
  %i.aj = lshr i8 %.0.copyload, 3
  %i.ak = and i8 %i.aj, 3                         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ak, ptr %i.al, align 8, !tbaa !79
  %i.am = icmp eq i8 %i.ak, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  %i.an = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ao = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.f, %bb.g, %bb.h, %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, %bb.d, %bb.a, %bb.b
  %.sroa.011.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %.sroa.069.0.ph, %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread ], [ 1, %bb.d ], [ 1, %bb.a ], [ %i.ao, %bb.m ], [ %i.an, %bb.l ]
  ret i32 %.sroa.011.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %.not36 = icmp eq ptr %i.e, %i.f
  br i1 %.not36, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %.0.copyload = load i8, ptr %i.f, align 1       ; 2 uses
  %.0.insert.ext = zext i8 %.0.copyload to i64    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.c, align 8, !tbaa !46
  %i.h = icmp eq i8 %.0.copyload, 0
  br i1 %i.h, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !32     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !5
  br label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !33
  %.pr = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.i, %bb.c ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %.0.insert.ext
  br i1 %i.x, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.y = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.z = sub i64 %i.y, %i.u
  %i.aa = shl nuw nsw i64 %.0.insert.ext, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader

.lr.ph.i.i.i.i16.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ac = add i64 %i.y, -8
  %i.ad = sub i64 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i16.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i16.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.aj ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.q, i64 %i.aj ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.ak = getelementptr i8, ptr %next.gep61, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !38, !alias.scope !210
  %wide.load62 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !38, !alias.scope !210
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !38, !alias.scope !209
  store <2 x i64> %wide.load62, ptr %i.al, align 8, !tbaa !38, !alias.scope !209
  store <2 x ptr> splat (ptr null), ptr %next.gep61, align 8, !tbaa !38, !alias.scope !210
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !38, !alias.scope !210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader87

.lr.ph.i.i.i.i16.preheader87:                     ; preds = %.lr.ph.i.i.i.i16.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i16.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i16.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.lr.ph.i.i.i.i16.preheader87, %.lr.ph.i.i.i.i16
  %.012.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i16 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader87 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i16 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader87 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.an = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !210
  store i64 %i.an, ptr %.012.i.i.i.i, align 8, !tbaa !38, !alias.scope !209
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !210
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i17 = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16, !llvm.loop !199

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i16, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.ab, ptr %1, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0.insert.ext
  store ptr %i.ar, ptr %i.r, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader: ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33
  %.037 = phi i64 [ %i.dh, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ], [ 0, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader ]
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !33  ; 7 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  store ptr null, ptr %i.as, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.j, align 8, !tbaa !33
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.av = load ptr, ptr %1, align 8, !tbaa !32    ; 10 uses
  %i.aw = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #19 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr null, ptr %i.bh, align 8, !tbaa !29
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.as
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.bj, 56
  br i1 %min.iters.check68, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bm = and i64 %i.bj, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bg, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bn
  %bound0 = icmp ult ptr %i.bg, %i.bp
  %bound1 = icmp ult ptr %i.av, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck
  %n.vec70 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec70, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.av, i64 %i.bq
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.bt = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.bg, i64 %i.bt ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.av, i64 %i.bt ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.bu = getelementptr i8, ptr %next.gep74, i64 16 ; 2 uses
  %wide.load75 = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !38, !alias.scope !213
  %wide.load76 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !38, !alias.scope !213
  %i.bv = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep73, align 8, !tbaa !38, !alias.scope !214, !noalias !215
  store <2 x i64> %wide.load76, ptr %i.bv, align 8, !tbaa !38, !alias.scope !214, !noalias !215
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !38, !alias.scope !213
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !38, !alias.scope !213
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.bw, label %middle.block78, label %vector.body71, !llvm.loop !206

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.bl, %n.vec70
  br i1 %cmp.n79, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.preheader82:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block78
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block78 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block78 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !212
  store i64 %i.bx, ptr %.012.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !211
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !212
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !207

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block78, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.br, %middle.block78 ], [ %i.bz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bg, ptr %1, align 8, !tbaa !32
  store ptr %i.ca, ptr %i.j, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be ; 2 uses
  store ptr %i.cb, ptr %i.r, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cc = phi ptr [ %i.at, %bb.e ], [ %i.cb, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.cd = phi ptr [ %i.as, %bb.e ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !46 ; 4 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %.not.i18 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i18, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.i, !prof !80

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !46
  %i.ck = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.ck, label %bb.j, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33

bb.j:                                             ; preds = %bb.i
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ci, %i.cl
  %i.cn = icmp ugt i64 %i.cm, 3
  br i1 %i.cn, label %bb.k, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !50

bb.k:                                             ; preds = %bb.j
  %.0.copyload.i = load i32, ptr %i.cj, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !46
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.k, %bb.j
  %.07.i = phi i32 [ %.0.copyload.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 3, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.cp = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !84
  %i.cs = icmp ult i32 %i.cr, %.07.i              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = xor i64 %i.cp, -1
  %i.cv = add nsw i64 %.017.i.i.i.i, %i.cu
  %.112.i.i.i.i = select i1 %i.cs, ptr %i.ct, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.cs, i64 %i.cv, i64 %i.cp ; 2 uses
  %i.cw = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.cw, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i19 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 24)
  br i1 %.not.i.i19, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.cx = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.cy = icmp eq i32 %i.cx, %.07.i
  br i1 %i.cy, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !85
  %i.db = zext i32 %i.da to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dc = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESB_ImLm18446744073709551615EESC_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISK_EEEEEDcmDpOT0_(i64 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cd) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !34
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread: ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.l, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge
  %i.dd = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cc, %bb.l ], [ %i.cc, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i32 = phi i32 [ %i.dc, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.l ], [ 1, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %i.dg = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33: ; preds = %bb.i, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.dh = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %.0.insert.ext
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, !llvm.loop !208

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, %bb.a, %bb.b, %bb.m, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %.sroa.027.1 = phi i32 [ 0, %bb.b ], [ %.sroa.06.1.i32, %bb.m ], [ %.sroa.06.1.i32, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread ], [ 1, %bb.a ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ]
  ret i32 %.sroa.027.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESB_ImLm18446744073709551615EESC_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISK_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 3 uses
  switch i64 %0, label %bb.u [
    i64 0, label %bb.b
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !222 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !noalias !222
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN18virtual_base_class4obj1E, i64 16), ptr %i.b, align 16, !tbaa !25, !noalias !222
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.c, align 16, !tbaa !37, !noalias !222
  %i.e = load ptr, ptr %2, align 8, !tbaa !38     ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !7
  %.pre788 = load ptr, ptr %2, align 8, !tbaa !38
  br label %_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i, %bb.b
  %i.i = phi ptr [ %.pre788, %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, 7
  br i1 %i.s, label %bb.c, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, !prof !50

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i64, ptr %i.o, align 1
  store i64 %i.u, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.l, align 8, !tbaa !46
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !46  ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i = load i8, ptr %i.aa, align 1 ; 2 uses
  %.0.insert.ext.i.i.i.i = zext i8 %.0.copyload.i.i.i.i to i64 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !46
  %i.ad = icmp eq i8 %.0.copyload.i.i.i.i, 0
  br i1 %i.ad, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ab, %i.ae
  %.not16.i.i.i.i = icmp ult i64 %i.af, %.0.insert.ext.i.i.i.i
  br i1 %.not16.i.i.i.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, label %bb.f, !prof !80

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !68
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %bb.f ]
  %i.al = icmp ult i64 %i.ak, %.0.insert.ext.i.i.i.i
  br i1 %i.al, label %bb.g, label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %.0.insert.ext.i.i.i.i)
  %.pre.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !71
  br label %_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i.i.i.i

_ZN11struct_pack6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.am = phi ptr [ %.pre.i.i.i.i.i, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.0.insert.ext.i.i.i.i, ptr %i.an, align 8, !tbaa !89
end_hunk_0
begin_hunk_1_@_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_:bb.a
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ; 5 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 %i.p     ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep26, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !38
  %wide.load27 = load <2 x i64>, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !38
  store <2 x i64> %wide.load27, ptr %i.u, align 8, !tbaa !38
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !38
  store <2 x ptr> splat (ptr null), ptr %i.t, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.preheader29:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader29 ] ; 3 uses
  %i.w = load i64, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !38
  store i64 %i.w, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !38
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.c
  br i1 %i.z, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !226

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.aa, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %.09) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  store ptr %i.k, ptr %0, align 8, !tbaa !32
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !33
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !34
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.a, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !1
  br label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread
  %i.ak = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ae, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i ]
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.am) #20
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #22
  unreachable
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !46   ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  switch i8 %i.c, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread: ; preds = %bb.b
  %.0.copyload30 = load i16, ptr %i.h, align 1
  %.0.insert.ext32 = zext i16 %.0.copyload30 to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.k, 3
  br i1 %i.m, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread: ; preds = %bb.c
  %.0.copyload29 = load i32, ptr %i.h, align 1
  %.0.insert.ext = zext i32 %.0.copyload29 to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 7
  br i1 %i.n, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread: ; preds = %bb.d
  %.0.copyload = load i64, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread
  %.sink66 = phi i64 [ 8, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ 2, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ]
  %.038 = phi i64 [ %.0.copyload, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ %.0.insert.ext, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ %.0.insert.ext32, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink66
  store ptr %i.o, ptr %i.e, align 8, !tbaa !46
  %i.p = icmp eq i64 %.038, 0
  br i1 %i.p, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !32     ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i, label %bb.h, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.q, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #18, !inline_history !5
  br label %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !33
  %.pr = load ptr, ptr %1, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.g
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.q, %bb.g ] ; 7 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.038, i64 131072) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %.sroa.speculated
  br i1 %i.af, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = shl nuw nsw i64 %.sroa.speculated, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #19 ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ak = add i64 %i.ag, -8
  %i.al = sub i64 %i.ak, %i.ac                    ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i20.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i20.preheader
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.y, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.ar ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.y, i64 %i.ar ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.as = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !38, !alias.scope !242
  %wide.load72 = load <2 x i64>, ptr %i.as, align 8, !tbaa !38, !alias.scope !242
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !38, !alias.scope !241
  store <2 x i64> %wide.load72, ptr %i.at, align 8, !tbaa !38, !alias.scope !241
  store <2 x ptr> splat (ptr null), ptr %next.gep71, align 8, !tbaa !38, !alias.scope !242
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !38, !alias.scope !242
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader97

.lr.ph.i.i.i.i20.preheader97:                     ; preds = %.lr.ph.i.i.i.i20.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i20.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i20.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader97, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader97 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader97 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.av = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !242
  store i64 %i.av, ptr %.012.i.i.i.i, align 8, !tbaa !38, !alias.scope !241
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !38, !alias.scope !242
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i21 = icmp eq ptr %i.aw, %i.q
  br i1 %.not.i.i.i.i21, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20, !llvm.loop !231

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.aj, ptr %1, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store ptr %i.ay, ptr %i.r, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.speculated
  store ptr %i.az, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44
  %.047 = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.dq, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !33  ; 7 uses
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.bb, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.r, align 8, !tbaa !33
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %1, align 8, !tbaa !32    ; 10 uses
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #19 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store ptr null, ptr %i.bq, align 8, !tbaa !29
  %.not10.i.i.i.i.i = icmp eq ptr %i.be, %i.bb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = add i64 %i.bf, -8
  %i.bs = sub i64 %i.br, %i.bg                    ; 3 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %i.bs, 56
  br i1 %min.iters.check78, label %.lr.ph.i.i.i.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bv = and i64 %i.bs, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bp, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.be, i64 %i.bw
  %bound0 = icmp ult ptr %i.bp, %i.by
  %bound1 = icmp ult ptr %i.be, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader92, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck
  %n.vec80 = and i64 %i.bu, 4611686018427387900   ; 3 uses
  %i.bz = shl i64 %n.vec80, 3                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bp, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.be, i64 %i.bz
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 2 uses
  %i.cc = shl i64 %index82, 3                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.bp, i64 %i.cc ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.be, i64 %i.cc ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.cd = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load85 = load <2 x i64>, ptr %next.gep84, align 8, !tbaa !38, !alias.scope !245
  %wide.load86 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !38, !alias.scope !245
  %i.ce = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x i64> %wide.load85, ptr %next.gep83, align 8, !tbaa !38, !alias.scope !246, !noalias !247
  store <2 x i64> %wide.load86, ptr %i.ce, align 8, !tbaa !38, !alias.scope !246, !noalias !247
  store <2 x ptr> splat (ptr null), ptr %next.gep84, align 8, !tbaa !38, !alias.scope !245
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !38, !alias.scope !245
  %index.next87 = add nuw i64 %index82, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.cf, label %middle.block88, label %vector.body81, !llvm.loop !238

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.bu, %n.vec80
  br i1 %cmp.n89, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader92

.lr.ph.i.i.i.i.i.preheader92:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block88
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ca, %middle.block88 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %middle.block88 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader92, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !244
  store i64 %i.cg, ptr %.012.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !243
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !38, !alias.scope !244
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.bb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !239

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block88, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ca, %middle.block88 ], [ %i.ci, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #20
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bp, ptr %1, align 8, !tbaa !32
  store ptr %i.cj, ptr %i.r, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn ; 2 uses
  store ptr %i.ck, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cl = phi ptr [ %i.bc, %bb.k ], [ %i.ck, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.cm = phi ptr [ %i.bb, %bb.k ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.cn = load ptr, ptr %i.ba, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !47 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !46 ; 4 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %.not.i22 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i22, label %.critedge, label %bb.o, !prof !80

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !46
  %i.ct = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.ct, label %bb.p, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44

bb.p:                                             ; preds = %bb.o
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.cr, %i.cu
  %i.cw = icmp ugt i64 %i.cv, 3
  br i1 %i.cw, label %bb.q, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !50

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i = load i32, ptr %i.cs, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  store ptr %i.cx, ptr %i.cn, align 8, !tbaa !46
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.q, %bb.p
  %.07.i = phi i32 [ %.0.copyload.i, %bb.q ], [ 0, %bb.p ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 3, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.cy = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !84
  %i.db = icmp ult i32 %i.da, %.07.i              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = xor i64 %i.cy, -1
  %i.de = add nsw i64 %.017.i.i.i.i, %i.dd
  %.112.i.i.i.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.db, i64 %i.de, i64 %i.cy ; 2 uses
  %i.df = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i23 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN18virtual_base_class4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 24)
  br i1 %.not.i.i23, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.dg = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.dh = icmp eq i32 %i.dg, %.07.i
  br i1 %i.dh, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %.critedge

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !85
  %i.dk = zext i32 %i.dj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dl = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESB_ImLm18446744073709551615EESB_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISL_EEEEEDcmDpOT0_(i64 noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.r, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge
  %i.dm = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ %i.cl, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cl, %bb.r ], [ %i.cl, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i43 = phi i32 [ %i.dl, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.r ], [ 1, %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.dn = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.dp = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44: ; preds = %bb.o, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.dq = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %.038
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.j, !llvm.loop !240

_ZNSt6vectorISt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, %bb.b, %bb.c, %bb.d, %bb.f, %bb.s, %.critedge
  %.sroa.037.1 = phi i32 [ 0, %bb.f ], [ %.sroa.06.1.i43, %bb.s ], [ %.sroa.06.1.i43, %.critedge ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN18virtual_base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  ret i32 %.sroa.037.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN18virtual_base_class4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESB_ImLm18446744073709551615EESB_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrINS6_4baseESt14default_deleteISL_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.123, align 8            ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 4 uses
  switch i64 %0, label %bb.q [
    i64 0, label %bb.b
    i64 1, label %bb.m
    i64 2, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !254 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !noalias !254
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN18virtual_base_class4obj1E, i64 16), ptr %i.b, align 16, !tbaa !25, !noalias !254
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.c, align 16, !tbaa !37, !noalias !254
  %i.e = load ptr, ptr %2, align 8, !tbaa !38     ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #18, !inline_history !7
  %.pre777 = load ptr, ptr %2, align 8, !tbaa !38
  br label %_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i, %bb.b
  %i.i = phi ptr [ %.pre777, %_ZNKSt14default_deleteIN18virtual_base_class4baseEEclEPS1_.exit.i.i.i ], [ %i.b, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, 7
  br i1 %i.s, label %bb.c, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, !prof !50

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN18virtual_base_class4obj1ESt14default_deleteIS1_EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load i64, ptr %i.o, align 1
  store i64 %i.u, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.l, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !79
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !46  ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  switch i8 %i.y, label %bb.g [
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread.i.i.i.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread.i.i.i.i: ; preds = %bb.d
  %.0.copyload19.i.i.i.i = load i16, ptr %i.ac, align 1
  %.0.insert.ext21.i.i.i.i = zext i16 %.0.copyload19.i.i.i.i to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp ugt i64 %i.af, 3
  br i1 %i.ah, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit14.thread.i.i.i.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit14.thread.i.i.i.i: ; preds = %bb.e
  %.0.copyload18.i.i.i.i = load i32, ptr %i.ac, align 1
  %.0.insert.ext.i.i.i.i = zext i32 %.0.copyload18.i.i.i.i to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ai = icmp ugt i64 %i.af, 7
  br i1 %i.ai, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit15.thread.i.i.i.i, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0EN18virtual_base_class4obj1EEENS_8err_codeERT3_.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit15.thread.i.i.i.i: ; preds = %bb.f
  %.0.copyload.i.i.i.i = load i64, ptr %i.ac, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %_ZN11struct_pack6detail13memory_reader4readEPcm.exit15.thread.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit14.thread.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN2tl8expectedISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS4_EESaIS7_EEN11struct_pack8err_codeEEaSISB_TnPNSt9enable_ifIXaasr3std29is_nothrow_move_constructibleIT_EE5valuesr3std18is_move_assignableISF_EE5valueEvE4typeELPv0EEERSC_ONS_10unexpectedISF_EE:bb.a
  store i32 %i.d, ptr %0, align 8, !tbaa !52
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !257
  br label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %0, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit

_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load i32, ptr %1, align 4, !tbaa !52
  store i32 %i.s, ptr %0, align 8, !tbaa !52
  store i8 0, ptr %i.a, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %_ZN2tl6detail24expected_operations_baseISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS5_EESaIS8_EEN11struct_pack8err_codeEE11destroy_valEv.exit, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE11deserializeISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEJEEENS_8err_codeERT_DpRT0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77, !nonnull !54, !align !78 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.b, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !50

bb.b:                                             ; preds = %bb.a
  %.0.copyload42 = load i32, ptr %i.e, align 1    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !46
  %.mask.i = and i32 %.0.copyload42, -2
  %.not.i = icmp eq i32 %.mask.i, 676618222
  br i1 %.not.i, label %bb.c, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %.0.copyload42, 1
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.d, !prof !50

.thread:                                          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !79
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.d, %i.j
  br i1 %.not, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, label %bb.e, !prof !80

bb.e:                                             ; preds = %bb.d
  %.0.copyload = load i8, ptr %i.j, align 1       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !46
  %i.o = and i8 %.0.copyload, 3
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.f, %i.p
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !50

bb.g:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = sub i64 %i.f, %i.s
  %i.u = icmp ugt i64 %i.t, 3
  br i1 %i.u, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !50

bb.h:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub i64 %i.f, %i.v
  %i.x = icmp ugt i64 %i.w, 7
  br i1 %i.x, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !50

default.unreachable:                              ; preds = %bb.e
  unreachable

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split: ; preds = %bb.h, %bb.g, %bb.f
  %.sink91 = phi i64 [ 9, %bb.g ], [ 7, %bb.f ], [ 13, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink91 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !46
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split, %bb.e
  %i.z = phi ptr [ %i.n, %bb.e ], [ %i.y, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i.sink.split ] ; 4 uses
  %i.aa = and i8 %.0.copyload, 4
  %.not8.i = icmp eq i8 %i.aa, 0
  br i1 %.not8.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.f, %i.ab
  %i.ad = icmp ult i64 %i.ac, 6
  br i1 %i.ad, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, label %bb.j, !prof !80

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !46
  %i.af = load i32, ptr %i.z, align 1
  %i.ag = xor i32 %i.af, 83724676
  %i.ah = getelementptr i8, ptr %i.z, i64 4
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i32
  %i.ak = xor i32 %i.aj, 255
  %i.al = or i32 %i.ag, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %.not4.i = icmp eq i32 %i.an, 0
  br i1 %.not4.i, label %bb.k, label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread, !prof !50

bb.k:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE22deserialize_compatibleEj.exit.i, %bb.j
  %i.ao = lshr i8 %.0.copyload, 3
  %i.ap = and i8 %i.ao, 3                         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ap, ptr %i.aq, align 8, !tbaa !79
  %i.ar = icmp eq i8 %i.ap, 0
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread, %bb.k
  %i.as = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.at = tail call i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread

_ZN11struct_pack6detail13memory_reader9read_viewEm.exit.thread: ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.f, %bb.g, %bb.h, %bb.d, %bb.a, %bb.b
  %.sroa.011.0 = phi i32 [ 2, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ %i.as, %bb.l ], [ 1, %bb.d ], [ 1, %bb.a ], [ %i.at, %bb.m ], [ 3, %bb.j ], [ 1, %bb.i ]
  ret i32 %.sroa.011.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %.not36 = icmp eq ptr %i.e, %i.f
  br i1 %.not36, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.b, !prof !80

bb.b:                                             ; preds = %bb.a
  %.0.copyload = load i8, ptr %i.f, align 1       ; 2 uses
  %.0.insert.ext = zext i8 %.0.copyload to i64    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %i.c, align 8, !tbaa !46
  %i.h = icmp eq i8 %.0.copyload, 0
  br i1 %i.h, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !62     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #18, !inline_history !10
  br label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !63
  %.pr = load ptr, ptr %1, align 8, !tbaa !62
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.i, %bb.c ] ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %.0.insert.ext
  br i1 %i.x, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit
  %i.y = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.z = sub i64 %i.y, %i.u
  %i.aa = shl nuw nsw i64 %.0.insert.ext, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader

.lr.ph.i.i.i.i16.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ac = add i64 %i.y, -8
  %i.ad = sub i64 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i16.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i16.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ab, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.aj ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.q, i64 %i.aj ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.ak = getelementptr i8, ptr %next.gep61, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !65, !alias.scope !273
  %wide.load62 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !65, !alias.scope !273
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !272
  store <2 x i64> %wide.load62, ptr %i.al, align 8, !tbaa !65, !alias.scope !272
  store <2 x ptr> splat (ptr null), ptr %next.gep61, align 8, !tbaa !65, !alias.scope !273
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !65, !alias.scope !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16.preheader87

.lr.ph.i.i.i.i16.preheader87:                     ; preds = %.lr.ph.i.i.i.i16.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i16.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i16.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.lr.ph.i.i.i.i16.preheader87, %.lr.ph.i.i.i.i16
  %.012.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i16 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader87 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i16 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i16.preheader87 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.an = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !273
  store i64 %i.an, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !272
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !273
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i17 = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i16, !llvm.loop !262

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i16, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.ab, ptr %1, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0.insert.ext
  store ptr %i.ar, ptr %i.r, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader: ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE5clearEv.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33
  %.037 = phi i64 [ %i.dh, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ], [ 0, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit.preheader ]
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !63  ; 7 uses
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !64  ; 2 uses
  %.not.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  store ptr null, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.j, align 8, !tbaa !63
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.av = load ptr, ptr %1, align 8, !tbaa !62    ; 10 uses
  %i.aw = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #19 ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr null, ptr %i.bh, align 8, !tbaa !59
  %.not10.i.i.i.i.i = icmp eq ptr %i.av, %i.as
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.bj, 56
  br i1 %min.iters.check68, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bm = and i64 %i.bj, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bg, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bn
  %bound0 = icmp ult ptr %i.bg, %i.bp
  %bound1 = icmp ult ptr %i.av, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader82, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck
  %n.vec70 = and i64 %i.bl, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec70, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.av, i64 %i.bq
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.bt = shl i64 %index72, 3                     ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.bg, i64 %i.bt ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.av, i64 %i.bt ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.bu = getelementptr i8, ptr %next.gep74, i64 16 ; 2 uses
  %wide.load75 = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !65, !alias.scope !276
  %wide.load76 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !65, !alias.scope !276
  %i.bv = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep73, align 8, !tbaa !65, !alias.scope !277, !noalias !278
  store <2 x i64> %wide.load76, ptr %i.bv, align 8, !tbaa !65, !alias.scope !277, !noalias !278
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !65, !alias.scope !276
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !65, !alias.scope !276
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.bw, label %middle.block78, label %vector.body71, !llvm.loop !269

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.bl, %n.vec70
  br i1 %cmp.n79, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader82

.lr.ph.i.i.i.i.i.preheader82:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block78
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.br, %middle.block78 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bs, %middle.block78 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader82, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader82 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !275
  store i64 %i.bx, ptr %.012.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !274
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !275
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !270

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block78, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.br, %middle.block78 ], [ %i.bz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bg, ptr %1, align 8, !tbaa !62
  store ptr %i.ca, ptr %i.j, align 8, !tbaa !63
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be ; 2 uses
  store ptr %i.cb, ptr %i.r, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cc = phi ptr [ %i.at, %bb.e ], [ %i.cb, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.cd = phi ptr [ %i.as, %bb.e ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !46 ; 4 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %.not.i18 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i18, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.i, !prof !80

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 3 uses
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !46
  %i.ck = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.ck, label %bb.j, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33

bb.j:                                             ; preds = %bb.i
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ci, %i.cl
  %i.cn = icmp ugt i64 %i.cm, 3
  br i1 %i.cn, label %bb.k, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !50

bb.k:                                             ; preds = %bb.j
  %.0.copyload.i = load i32, ptr %i.cj, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !46
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.k, %bb.j
  %.07.i = phi i32 [ %.0.copyload.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.cp = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !84
  %i.cs = icmp ult i32 %i.cr, %.07.i              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = xor i64 %i.cp, -1
  %i.cv = add nsw i64 %.017.i.i.i.i, %i.cu
  %.112.i.i.i.i = select i1 %i.cs, ptr %i.ct, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.cs, i64 %i.cv, i64 %i.cp ; 2 uses
  %i.cw = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.cw, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i19 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 32)
  br i1 %.not.i.i19, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.cx = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.cy = icmp eq i32 %i.cx, %.07.i
  br i1 %i.cy, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !85
  %i.db = zext i32 %i.da to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dc = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESC_ImLm18446744073709551615EESD_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cd) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !64
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread: ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.l, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge
  %i.dd = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cc, %bb.l ], [ %i.cc, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i32 = phi i32 [ %i.dc, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit._ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.l ], [ 1, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %i.dg = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33: ; preds = %bb.i, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.dh = add nuw nsw i64 %.037, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %.0.insert.ext
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, !llvm.loop !271

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33, %bb.a, %bb.b, %bb.m, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread
  %.sroa.027.1 = phi i32 [ 0, %bb.b ], [ %.sroa.06.1.i32, %bb.m ], [ %.sroa.06.1.i32, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread ], [ 1, %bb.a ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread33 ]
  ret i32 %.sroa.027.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm1EESC_ImLm18446744073709551615EESD_EEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 4 uses
  switch i64 %0, label %bb.u [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.k
    i64 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19, !noalias !287 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !287
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN10base_class4baseE, i64 16), ptr %i.b, align 16, !tbaa !25, !noalias !287
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !65
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !11
  br label %_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !77 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = load ptr, ptr %.val.val.i.i, align 8, !tbaa !46 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.m, 7
  br i1 %i.n, label %bb.c, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN10base_class4baseEEENS_8err_codeERT3_.exit, !prof !50

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.j, align 1
  store i64 %i.q, ptr %i.p, align 8
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN10base_class4baseEEENS_8err_codeERT3_.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !288 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, i8 0, i64 48, i1 false), !noalias !288
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN10base_class4obj1E, i64 16), ptr %i.r, align 16, !tbaa !25, !noalias !288
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.t, ptr %i.s, align 16, !tbaa !37, !noalias !288
  %i.u = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !65
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #18, !inline_history !12
  %.pre791 = load ptr, ptr %2, align 8, !tbaa !65
  br label %_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i, %bb.d
  %i.y = phi ptr [ %.pre791, %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i ], [ %i.r, %bb.d ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ah, 7
  br i1 %i.ai, label %bb.e, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN10base_class4baseEEENS_8err_codeERT3_.exit, !prof !50

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = load i64, ptr %i.ae, align 1
  store i64 %i.ak, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !46
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !46 ; 3 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %.not.i.i.i.i513 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i.i513, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm1ELm18446744073709551615ELb1ELm0EN10base_class4baseEEENS_8err_codeERT3_.exit, label %bb.f, !prof !80

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i.i = load i8, ptr %i.aq, align 1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ; 5 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = add i64 %i.d, -8
  %i.m = sub i64 %i.l, %i.e                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.k, i64 %i.p     ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.s ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.a, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep26, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !65
  %wide.load27 = load <2 x i64>, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65
  store <2 x i64> %wide.load27, ptr %i.u, align 8, !tbaa !65
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !65
  store <2 x ptr> splat (ptr null), ptr %i.t, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.preheader29:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader29 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader29 ] ; 3 uses
  %i.w = load i64, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !65
  store i64 %i.w, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !65
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.c
  br i1 %i.z, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !292

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.aa, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %.09) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  store ptr %i.k, ptr %0, align 8, !tbaa !62
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !63
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aj, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.a, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit ] ; 2 uses
  %i.af = load ptr, ptr %.05.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #18, !inline_history !3
  br label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread
  %i.ak = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEET_SF_RKS6_.exit.thread ], [ %i.ae, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i ]
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.am) #20
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EED2Ev.exit.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #22
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS8_EESaISB_EEEENS_8err_codeERT3_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !46   ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  switch i8 %i.c, label %bb.e [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread: ; preds = %bb.b
  %.0.copyload30 = load i16, ptr %i.h, align 1
  %.0.insert.ext32 = zext i16 %.0.copyload30 to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.k, 3
  br i1 %i.m, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread: ; preds = %bb.c
  %.0.copyload29 = load i32, ptr %i.h, align 1
  %.0.insert.ext = zext i32 %.0.copyload29 to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 7
  br i1 %i.n, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, !prof !50

_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread: ; preds = %bb.d
  %.0.copyload = load i64, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread
  %.sink66 = phi i64 [ 8, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ 2, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ]
  %.038 = phi i64 [ %.0.copyload, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit19.thread ], [ %.0.insert.ext, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit18.thread ], [ %.0.insert.ext32, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit.thread ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink66
  store ptr %i.o, ptr %i.e, align 8, !tbaa !46
  %i.p = icmp eq i64 %.038, 0
  br i1 %i.p, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !62     ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i, label %bb.h, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.q, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #18, !inline_history !10
  br label %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !63
  %.pr = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.g
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i ], [ %i.q, %bb.g ] ; 7 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.038, i64 131072) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %.sroa.speculated
  br i1 %i.af, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ah = sub i64 %i.ag, %i.ac
  %i.ai = shl nuw nsw i64 %.sroa.speculated, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #19 ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader

.lr.ph.i.i.i.i20.preheader:                       ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.ak = add i64 %i.ag, -8
  %i.al = sub i64 %i.ak, %i.ac                    ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i20.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i20.preheader
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.aj, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.y, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.ar ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.y, i64 %i.ar ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.as = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !65, !alias.scope !308
  %wide.load72 = load <2 x i64>, ptr %i.as, align 8, !tbaa !65, !alias.scope !308
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !307
  store <2 x i64> %wide.load72, ptr %i.at, align 8, !tbaa !65, !alias.scope !307
  store <2 x ptr> splat (ptr null), ptr %next.gep71, align 8, !tbaa !65, !alias.scope !308
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !65, !alias.scope !308
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20.preheader97

.lr.ph.i.i.i.i20.preheader97:                     ; preds = %.lr.ph.i.i.i.i20.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i20.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i20.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %.lr.ph.i.i.i.i20.preheader97, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i20 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader97 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i20 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i20.preheader97 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.av = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !308
  store i64 %i.av, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !307
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !308
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i21 = icmp eq ptr %i.aw, %i.q
  br i1 %.not.i.i.i.i21, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i20, !llvm.loop !297

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i20, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.aj, ptr %1, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store ptr %i.ay, ptr %i.r, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.speculated
  store ptr %i.az, ptr %i.z, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44
  %.047 = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit ], [ %i.dq, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !63  ; 7 uses
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.bb, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.r, align 8, !tbaa !63
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %1, align 8, !tbaa !62    ; 10 uses
  %i.bf = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg                    ; 4 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #19 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bh
  store ptr null, ptr %i.bq, align 8, !tbaa !59
  %.not10.i.i.i.i.i = icmp eq ptr %i.be, %i.bb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = add i64 %i.bf, -8
  %i.bs = sub i64 %i.br, %i.bg                    ; 3 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %i.bs, 56
  br i1 %min.iters.check78, label %.lr.ph.i.i.i.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bv = and i64 %i.bs, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bp, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.be, i64 %i.bw
  %bound0 = icmp ult ptr %i.bp, %i.by
  %bound1 = icmp ult ptr %i.be, %i.bx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader92, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck
  %n.vec80 = and i64 %i.bu, 4611686018427387900   ; 3 uses
  %i.bz = shl i64 %n.vec80, 3                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bp, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.be, i64 %i.bz
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body81 ] ; 2 uses
  %i.cc = shl i64 %index82, 3                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.bp, i64 %i.cc ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.be, i64 %i.cc ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.cd = getelementptr i8, ptr %next.gep84, i64 16 ; 2 uses
  %wide.load85 = load <2 x i64>, ptr %next.gep84, align 8, !tbaa !65, !alias.scope !311
  %wide.load86 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !65, !alias.scope !311
  %i.ce = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x i64> %wide.load85, ptr %next.gep83, align 8, !tbaa !65, !alias.scope !312, !noalias !313
  store <2 x i64> %wide.load86, ptr %i.ce, align 8, !tbaa !65, !alias.scope !312, !noalias !313
  store <2 x ptr> splat (ptr null), ptr %next.gep84, align 8, !tbaa !65, !alias.scope !311
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !65, !alias.scope !311
  %index.next87 = add nuw i64 %index82, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.cf, label %middle.block88, label %vector.body81, !llvm.loop !304

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.bu, %n.vec80
  br i1 %cmp.n89, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader92

.lr.ph.i.i.i.i.i.preheader92:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block88
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ca, %middle.block88 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %middle.block88 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader92, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !310
  store i64 %i.cg, ptr %.012.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !309
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !65, !alias.scope !310
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.bb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !305

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block88, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ca, %middle.block88 ], [ %i.ci, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i22.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #20
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.bp, ptr %1, align 8, !tbaa !62
  store ptr %i.cj, ptr %i.r, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn ; 2 uses
  store ptr %i.ck, ptr %i.z, align 8, !tbaa !64
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  %i.cl = phi ptr [ %i.bc, %bb.k ], [ %i.ck, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ] ; 3 uses
  %i.cm = phi ptr [ %i.bb, %bb.k ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ]
  %i.cn = load ptr, ptr %i.ba, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !47 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !46 ; 4 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %.not.i22 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i22, label %.critedge, label %bb.o, !prof !80

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit
  %.0.copyload5.i = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !46
  %i.ct = trunc nuw i8 %.0.copyload5.i to i1
  br i1 %i.ct, label %bb.p, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44

bb.p:                                             ; preds = %bb.o
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.cr, %i.cu
  %i.cw = icmp ugt i64 %i.cv, 3
  br i1 %i.cw, label %bb.q, label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i, !prof !50

bb.q:                                             ; preds = %bb.p
  %.0.copyload.i = load i32, ptr %i.cs, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 5
  store ptr %i.cx, ptr %i.cn, align 8, !tbaa !46
  br label %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i

_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i: ; preds = %bb.q, %bb.p
  %.07.i = phi i32 [ %.0.copyload.i, %bb.q ], [ 0, %bb.p ] ; 2 uses
  br label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i
  %.017.i.i.i.i = phi i64 [ 4, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, %_ZN11struct_pack6detail13memory_reader4readEPcm.exit2.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.cy = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !84
  %i.db = icmp ult i32 %i.da, %.07.i              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = xor i64 %i.cy, -1
  %i.de = add nsw i64 %.017.i.i.i.i, %i.dd
  %.112.i.i.i.i = select i1 %i.db, ptr %i.dc, ptr %.01116.i.i.i.i ; 4 uses
  %.1.i.i.i.i = select i1 %i.db, i64 %i.de, i64 %i.cy ; 2 uses
  %i.df = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.df, label %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, !llvm.loop !6

_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %_ZSt9__advanceIPKN11struct_pack6detail8MD5_pairElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %.not.i.i23 = icmp eq ptr %.112.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN11struct_pack6detail7MD5_setISt5tupleIJN10base_class4baseENS3_4obj1ENS3_4obj2ENS3_4obj3EEEE5valueE, i64 32)
  br i1 %.not.i.i23, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i
  %i.dg = load i32, ptr %.112.i.i.i.i, align 4, !tbaa !84
  %i.dh = icmp eq i32 %i.dg, %.07.i
  br i1 %i.dh, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit, label %.critedge

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit: ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %.112.i.i.i.i, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !85
  %i.dk = zext i32 %i.dj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 8, !tbaa !87
  %i.dl = call i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESC_ImLm18446744073709551615EESC_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge, !prof !88

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i, %bb.r, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge
  %i.dm = phi ptr [ %.pre, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ %i.cl, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ], [ %i.cl, %bb.r ], [ %i.cl, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ]
  %.sroa.06.1.i43 = phi i32 [ %i.dl, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit..critedge_crit_edge ], [ 2, %_ZSt11lower_boundIPKN11struct_pack6detail8MD5_pairES2_ET_S5_S5_RKT0_.exit.i.i ], [ 2, %bb.r ], [ 1, %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit ] ; 2 uses
  %i.dn = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.dp = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) %1) #18 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit

_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44: ; preds = %bb.o, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit
  %i.dq = add nuw i64 %.047, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %.038
  br i1 %exitcond.not, label %_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit, label %bb.j, !llvm.loop !306

_ZNSt6vectorISt10unique_ptrIN10base_class4baseESt14default_deleteIS2_EESaIS5_EE13shrink_to_fitEv.exit: ; preds = %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44, %bb.b, %bb.c, %bb.d, %bb.f, %bb.s, %.critedge
  %.sroa.037.1 = phi i32 [ 0, %bb.f ], [ %.sroa.06.1.i43, %bb.s ], [ %.sroa.06.1.i43, %.critedge ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0ESt10unique_ptrIN10base_class4baseESt14default_deleteIS7_EEEENS_8err_codeERT3_.exit.thread44 ]
  ret i32 %.sroa.037.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN3ylt10reflection15template_switchIN11struct_pack6detail36deserialize_one_derived_class_helperISt5tupleIJN10base_class4baseENS6_4obj1ENS6_4obj2ENS6_4obj3EEESt17integral_constantImLm2EESC_ImLm18446744073709551615EESC_ImLm1EEEEJPNS3_8unpackerINS3_13memory_readerELm0ELb0EEERSt10unique_ptrIS7_St14default_deleteIS7_EEEEEDcmDpOT0_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 6 uses
  switch i64 %0, label %bb.ac [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.o
    i64 3, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19, !noalias !322 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !322
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN10base_class4baseE, i64 16), ptr %i.b, align 16, !tbaa !25, !noalias !322
  %i.c = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !65
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !11
  br label %_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !77 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.val.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = load ptr, ptr %.val.val.i.i, align 8, !tbaa !46 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.m, 7
  br i1 %i.n, label %bb.c, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0EN10base_class4baseEEENS_8err_codeERT3_.exit, !prof !50

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN10base_class4baseESt14default_deleteIS1_EED2Ev.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.j, align 1
  store i64 %i.q, ptr %i.p, align 8
  br label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0EN10base_class4baseEEENS_8err_codeERT3_.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.r = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !323 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.r, i8 0, i64 48, i1 false), !noalias !323
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN10base_class4obj1E, i64 16), ptr %i.r, align 16, !tbaa !25, !noalias !323
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.t, ptr %i.s, align 16, !tbaa !37, !noalias !323
  %i.u = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !65
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #18, !inline_history !12
  %.pre798 = load ptr, ptr %2, align 8, !tbaa !65
  br label %_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i, %bb.d
  %i.y = phi ptr [ %.pre798, %_ZNKSt14default_deleteIN10base_class4baseEEclEPS1_.exit.i.i.i ], [ %i.r, %bb.d ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77, !nonnull !54, !align !78 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ah, 7
  br i1 %i.ai, label %bb.e, label %_ZN11struct_pack6detail8unpackerINS0_13memory_readerELm0ELb0EE15deserialize_oneILm2ELm18446744073709551615ELb1ELm0EN10base_class4baseEEENS_8err_codeERT3_.exit, !prof !50

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN10base_class4obj1ESt14default_deleteIS1_EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = load i64, ptr %i.ae, align 1
  store i64 %i.ak, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !79
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !77, !nonnull !54, !align !78 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 5 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  switch i8 %i.ao, label %bb.i [
end_hunk_3
