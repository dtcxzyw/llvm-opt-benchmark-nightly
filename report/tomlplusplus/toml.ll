Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v35table3getESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.c:                                             ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.thread

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.thread: ; preds = %bb.a, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit, %bb.c
  %i.w = phi ptr [ %i.v, %bb.c ], [ null, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit ], [ null, %bb.a ]
  ret ptr %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v35arrayC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35arrayD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #50, !inline_history !16
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !174
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !194
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #51
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v34nodeE, i64 16), ptr %0, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !151  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN4toml2v34nodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !153
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !154
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !18
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !18
  br label %_ZN4toml2v34nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i1 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN4toml2v34nodeD2Ev.exit, !prof !156

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #50, !inline_history !195
  br label %_ZN4toml2v34nodeD2Ev.exit

_ZN4toml2v34nodeD2Ev.exit:                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !174    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #50, !inline_history !464
  br label %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4toml2v34nodeEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !174
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #51
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v35arrayD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN4toml2v35arrayD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #51
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v35arrayC2EPKNS0_4impl15array_init_elemES5_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 64)) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35arrayE, i64 16), ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp ule ptr %1, %2
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq ptr %1, %2
  br i1 %i.d, label %.loopexit, label %.preheader.preheader, !prof !156

.preheader.preheader:                             ; preds = %bb.a
  %i.e = ptrtoaddr ptr %2 to i64
  %i.f = ptrtoaddr ptr %1 to i64
  %i.g = add i64 %i.e, -8
  %i.h = sub i64 %i.g, %i.f                       ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 24
  br i1 %min.iters.check, label %.preheader.preheader61, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.j, 4611686018427387900      ; 3 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi42 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.m = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !175
  %wide.load43 = load <2 x ptr>, ptr %i.n, align 8, !tbaa !175
  %i.o = icmp ne <2 x ptr> %wide.load, splat (ptr null)
  %i.p = icmp ne <2 x ptr> %wide.load43, splat (ptr null)
  %i.q = zext <2 x i1> %i.o to <2 x i64>
  %i.r = zext <2 x i1> %i.p to <2 x i64>
  %i.s = add <2 x i64> %vec.phi, %i.q             ; 2 uses
  %i.t = add <2 x i64> %vec.phi42, %i.r           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit59, label %.preheader.preheader61

.preheader.preheader61:                           ; preds = %.preheader.preheader, %middle.block
  %.02133.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.v, %middle.block ]
  %.02232.ph = phi ptr [ %1, %.preheader.preheader ], [ %i.l, %middle.block ]
  br label %.preheader

.loopexit59:                                      ; preds = %.preheader, %middle.block
  %spec.select.lcssa = phi i64 [ %i.v, %middle.block ], [ %spec.select, %.preheader ] ; 4 uses
  %.not25 = icmp eq i64 %spec.select.lcssa, 0
  br i1 %.not25, label %.loopexit, label %bb.b, !prof !156

.preheader:                                       ; preds = %.preheader.preheader61, %.preheader
  %.02133 = phi i64 [ %spec.select, %.preheader ], [ %.02133.ph, %.preheader.preheader61 ]
  %.02232 = phi ptr [ %i.y, %.preheader ], [ %.02232.ph, %.preheader.preheader61 ] ; 2 uses
  %i.w = load ptr, ptr %.02232, align 8, !tbaa !175
  %.not29 = icmp ne ptr %i.w, null
  %i.x = zext i1 %.not29 to i64
  %spec.select = add i64 %.02133, %i.x            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02232, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %2
  br i1 %.not, label %.loopexit59, label %.preheader, !llvm.loop !466

bb.b:                                             ; preds = %.loopexit59
  %i.z = icmp ugt i64 %spec.select.lcssa, 1152921504606846975
  br i1 %i.z, label %bb.c, label %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.217) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = shl nuw nsw i64 %spec.select.lcssa, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #55
          to label %.noexc27 unwind label %.loopexit.split-lp ; 6 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !174 ; 8 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !173 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc27
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = ptrtoaddr ptr %i.ae to i64
  %i.ai = add i64 %i.ag, -8
  %i.aj = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check45 = icmp ult i64 %i.aj, 24
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.preheader60, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec47 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.am = shl i64 %n.vec47, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.am
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.ap = shl i64 %index49, 3                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ae, i64 %i.ap ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.aq = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load52 = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !175, !alias.scope !474, !noalias !473
  %wide.load53 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !175, !alias.scope !474, !noalias !473
  %i.ar = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %wide.load52, ptr %next.gep50, align 8, !tbaa !175, !alias.scope !473, !noalias !474
  store <2 x i64> %wide.load53, ptr %i.ar, align 8, !tbaa !175, !alias.scope !473, !noalias !474
  %i.as = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !175, !alias.scope !474, !noalias !473
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !175, !alias.scope !474, !noalias !473
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next54, %n.vec47
  br i1 %i.at, label %middle.block55, label %vector.body48, !llvm.loop !470

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %i.al, %n.vec47
  br i1 %cmp.n56, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader60

.lr.ph.i.i.i.i.preheader60:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block55
  %.012.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block55 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block55 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader60, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.au = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !474, !noalias !473
  store i64 %i.au, ptr %.012.i.i.i.i, align 8, !tbaa !175, !alias.scope !473, !noalias !474
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !474, !noalias !473
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.af
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !471

_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block55, %.noexc27
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !194
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.ae to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ba) #51
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !174
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !173
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %spec.select.lcssa
  store ptr %i.bb, ptr %i.aa, align 8, !tbaa !194
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %.035 = phi ptr [ %1, %.lr.ph ], [ %i.bi, %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit ] ; 4 uses
  %i.bd = load ptr, ptr %.035, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.bd, null
  %i.be = ptrtoint ptr %i.bd to i64
  br i1 %.not30, label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !173 ; 4 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !194
  %.not.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !175
  store ptr null, ptr %.035, align 8, !tbaa !175
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !173
  br label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.035)
          to label %_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit unwind label %.loopexit31

.loopexit31:                                      ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit31
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit31 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN4toml2v34nodeESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #50
  tail call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #50
  resume { ptr, i32 } %lpad.phi

end_hunk_0
