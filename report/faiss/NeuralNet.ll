Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/NeuralNet?download=true
inline.NumInlined: 515
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5faiss9QINCoStepC2Eiiii:bb.a

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #19
  br label %_ZN5faiss2nn9EmbeddingD2Ev.exit

_ZN5faiss2nn9EmbeddingD2Ev.exit:                  ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5faiss2nn3FFNEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN5faiss2nn3FFNEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #19
  br label %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i

_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i:           ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i2.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i2.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i2.i.i.i.i.i:       ; preds = %bb.d, %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i1.i3.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i1.i3.i.i.i.i.i, label %_ZSt8_DestroyIN5faiss2nn3FFNEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i2.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #19
  br label %_ZSt8_DestroyIN5faiss2nn3FFNEEvPT_.exit.i.i

_ZSt8_DestroyIN5faiss2nn3FFNEEvPT_.exit.i.i:      ; preds = %bb.e, %_ZNSt6vectorIfSaIfEED2Ev.exit.i2.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !128

_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5faiss2nn3FFNEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.ag = phi ptr [ %.pr, %_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #19
  br label %_ZNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss2nn3FFNES2_EvT_S4_RSaIT0_E.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss2nn6LinearD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2

_ZNSt6vectorIfSaIfEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE17_M_realloc_insertIJRiS6_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !68     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5faiss2nn3FFNESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIN5faiss2nn3FFNESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 7                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 72057594037927935)
  %i.l = select i1 %i.j, i64 72057594037927935, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 7                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !24
  %i.s = load i32, ptr %3, align 4, !tbaa !24
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = sext i32 %i.s to i64                     ; 2 uses
  invoke void @_ZN5faiss2nn6LinearC1Emmb(ptr noundef nonnull align 8 dereferenceable(128) %i.q, i64 noundef %i.t, i64 noundef %i.u, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZNKSt6vectorIN5faiss2nn3FFNESaIS2_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  invoke void @_ZN5faiss2nn6LinearC1Emmb(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %i.u, i64 noundef %i.t, i1 noundef zeroext false)
          to label %_ZNSt16allocator_traitsISaIN5faiss2nn3FFNEEE9constructIS2_JRiS6_EEEvRS3_PT_DpOT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN5faiss2nn6LinearD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(128) %i.q) #17
  br label %bb.g

_ZNSt16allocator_traitsISaIN5faiss2nn3FFNEEE9constructIS2_JRiS6_EEEvRS3_PT_DpOT0_.exit: ; preds = %.noexc
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5faiss2nn3FFNEEE9constructIS2_JRiS6_EEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5faiss2nn3FFNEEE9constructIS2_JRiS6_EEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5faiss2nn3FFNEEE9constructIS2_JRiS6_EEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.0911.i.i.i, i64 16, i1 false), !alias.scope !138
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !69, !alias.scope !137, !noalias !136
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !69, !alias.scope !136, !noalias !137
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %4 = load ptr, ptr %i.ab, align 8, !tbaa !36, !alias.scope !137, !noalias !136
  store ptr %4, ptr %i.aa, align 8, !tbaa !36, !alias.scope !136, !noalias !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !137, !noalias !136
  %5 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %6, align 8, !tbaa !69, !alias.scope !137, !noalias !136
  store <2 x ptr> %i.ac, ptr %5, align 8, !tbaa !69, !alias.scope !136, !noalias !137
  %7 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %8 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %9 = load ptr, ptr %8, align 8, !tbaa !36, !alias.scope !137, !noalias !136
  store ptr %9, ptr %7, align 8, !tbaa !36, !alias.scope !136, !noalias !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !alias.scope !137, !noalias !136
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 16, i1 false), !alias.scope !138
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !69, !alias.scope !137, !noalias !136
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !69, !alias.scope !136, !noalias !137
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96
  %10 = load ptr, ptr %i.aj, align 8, !tbaa !36, !alias.scope !137, !noalias !136
  store ptr %10, ptr %i.ai, align 8, !tbaa !36, !alias.scope !136, !noalias !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !137, !noalias !136
  %11 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %12 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %12, align 8, !tbaa !69, !alias.scope !137, !noalias !136
  store <2 x ptr> %i.ak, ptr %11, align 8, !tbaa !69, !alias.scope !136, !noalias !137
  %13 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %14 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %15 = load ptr, ptr %14, align 8, !tbaa !36, !alias.scope !137, !noalias !136
  store ptr %15, ptr %13, align 8, !tbaa !36, !alias.scope !136, !noalias !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !137, !noalias !136
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !132

_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN5faiss2nn3FFNEEE9constructIS2_JRiS6_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5faiss2nn3FFNEEE9constructIS2_JRiS6_EEEvRS3_PT_DpOT0_.exit ], [ %i.am, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 128 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.bd, %.lr.ph.i.i.i28 ], [ %i.an, %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  %.0911.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.012.i.i.i29, ptr noundef nonnull align 8 dereferenceable(128) %.0911.i.i.i30, i64 16, i1 false), !alias.scope !141
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !69, !alias.scope !140, !noalias !139
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !69, !alias.scope !139, !noalias !140
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32
  %16 = load ptr, ptr %i.as, align 8, !tbaa !36, !alias.scope !140, !noalias !139
  store ptr %16, ptr %i.ar, align 8, !tbaa !36, !alias.scope !139, !noalias !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !alias.scope !140, !noalias !139
  %17 = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40
  %18 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40 ; 2 uses
  %i.at = load <2 x ptr>, ptr %18, align 8, !tbaa !69, !alias.scope !140, !noalias !139
  store <2 x ptr> %i.at, ptr %17, align 8, !tbaa !69, !alias.scope !139, !noalias !140
  %19 = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 56
  %20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 56
  %21 = load ptr, ptr %20, align 8, !tbaa !36, !alias.scope !140, !noalias !139
  store ptr %21, ptr %19, align 8, !tbaa !36, !alias.scope !139, !noalias !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !140, !noalias !139
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 16, i1 false), !alias.scope !141
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 80 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !69, !alias.scope !140, !noalias !139
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !69, !alias.scope !139, !noalias !140
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 96
  %22 = load ptr, ptr %i.ba, align 8, !tbaa !36, !alias.scope !140, !noalias !139
  store ptr %22, ptr %i.az, align 8, !tbaa !36, !alias.scope !139, !noalias !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false), !alias.scope !140, !noalias !139
  %23 = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 104
  %24 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 104 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %24, align 8, !tbaa !69, !alias.scope !140, !noalias !139
  store <2 x ptr> %i.bb, ptr %23, align 8, !tbaa !69, !alias.scope !139, !noalias !140
  %25 = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 120
  %26 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 120
  %27 = load ptr, ptr %26, align 8, !tbaa !36, !alias.scope !140, !noalias !139
  store ptr %27, ptr %25, align 8, !tbaa !36, !alias.scope !139, !noalias !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false), !alias.scope !140, !noalias !139
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 128 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !132

_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.an, %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bd, %.lr.ph.i.i.i28 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !67
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #19
  br label %_ZNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !68
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !66
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !67
  ret void

bb.e:                                             ; preds = %_ZNKSt6vectorIN5faiss2nn3FFNESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.e ], [ %i.w, %bb.c ]
  %i.bl = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bm = tail call ptr @__cxa_begin_catch(ptr %i.bl) #17 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #19
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bk

bb.i:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #21
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss9QINCoStep6decodeERKNS_2nn16Tensor2DTemplateIfEERKNS2_IiEE(ptr dead_on_unwind noalias writable sret(%"struct.faiss::nn::Tensor2DTemplate") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"struct.faiss::nn::Tensor2DTemplate", align 8 ; 10 uses
  %7 = alloca %"struct.faiss::nn::Tensor2DTemplate", align 8 ; 9 uses
  %8 = alloca %"struct.faiss::nn::Tensor2DTemplate", align 8 ; 7 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !10
  %i.b = load i64, ptr %3, align 8, !tbaa !10
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !18
  store i8 0, ptr %i.d, align 8, !tbaa !19
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #17 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %5, align 8, !tbaa !20
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.h)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.n = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss9QINCoStep6decodeERKNS_2nn16Tensor2DTemplateIfEERKNS2_IiEE, ptr noundef nonnull @.str.3, i32 noundef 200)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.an unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.o, %bb.h ]
  %i.p = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.r = load i64, ptr %i.d, align 8, !tbaa !19
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN5faiss2nn16Tensor2DTemplateIfED2Ev.exit41

bb.j:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNK5faiss2nn9EmbeddingclERKNS0_16Tensor2DTemplateIiEE(ptr dead_on_unwind writable sret(%"struct.faiss::nn::Tensor2DTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.u = load i64, ptr %0, align 8, !tbaa !10, !noalias !146 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10, !noalias !146 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10, !noalias !146 ; 3 uses
  %i.z = load i64, ptr %2, align 8, !tbaa !10, !noalias !146
  %i.aa = icmp eq i64 %i.u, %i.z
  br i1 %i.aa, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !146
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !16, !noalias !146
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !18, !noalias !146
  store i8 0, ptr %i.ab, align 8, !tbaa !19, !noalias !146
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #17, !noalias !146 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.af = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ag)
          to label %bb.m unwind label %bb.n, !noalias !146

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %4, align 8, !tbaa !20, !noalias !146
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !18, !noalias !146
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #17, !noalias !146 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.af)
          to label %bb.o unwind label %bb.n, !noalias !146

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.al = call ptr @__cxa_allocate_exception(i64 40) #17, !noalias !146 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss2nn12_GLOBAL__N_116concatenate_rowsERKNS0_16Tensor2DTemplateIfEES5_, ptr noundef nonnull @.str.3, i32 noundef 155)
          to label %bb.p unwind label %bb.q, !noalias !146

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.u unwind label %bb.n, !noalias !146

bb.q:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.al) #17, !noalias !146
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.n ], [ %i.am, %bb.q ]
  %i.an = load ptr, ptr %4, align 8, !tbaa !20, !noalias !146 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ab
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !19, !noalias !146
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #19, !noalias !146
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EED2Ev:bb.a
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.b, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #19
  br label %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i

_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i:           ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN5faiss9QINCoStepEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #19
  br label %_ZSt8_DestroyIN5faiss9QINCoStepEEvPT_.exit.i.i

_ZSt8_DestroyIN5faiss9QINCoStepEEvPT_.exit.i.i:   ; preds = %bb.d, %_ZN5faiss2nn6LinearD2Ev.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !168

_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5faiss9QINCoStepEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.aa = phi ptr [ %.pr, %_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #19
  br label %_ZNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5faiss9QINCoStepES1_EvT_S3_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE17_M_realloc_insertIJRiS5_S5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5faiss9QINCoStepESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIN5faiss9QINCoStepESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 144                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 64051194700380387)
  %i.l = select i1 %i.j, i64 64051194700380387, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 144                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i32, ptr %2, align 4, !tbaa !24
  %i.s = load i32, ptr %3, align 4, !tbaa !24
  %i.t = load i32, ptr %4, align 4, !tbaa !24
  %i.u = load i32, ptr %5, align 4, !tbaa !24
  invoke void @_ZN5faiss9QINCoStepC1Eiiii(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.u)
          to label %_ZNSt16allocator_traitsISaIN5faiss9QINCoStepEEE9constructIS1_JRiS5_S5_S5_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN5faiss9QINCoStepEEE9constructIS1_JRiS5_S5_S5_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN5faiss9QINCoStepESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5faiss9QINCoStepEEE9constructIS1_JRiS5_S5_S5_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5faiss9QINCoStepEEE9constructIS1_JRiS5_S5_S5_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5faiss9QINCoStepEEE9constructIS1_JRiS5_S5_S5_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN5faiss9QINCoStepES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i, ptr noundef %.0911.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !169

_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN5faiss9QINCoStepEEE9constructIS1_JRiS5_S5_S5_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5faiss9QINCoStepEEE9constructIS1_JRiS5_S5_S5_EEEvRS2_PT_DpOT0_.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 144 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.z, %.lr.ph.i.i.i30 ], [ %i.x, %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.y, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN5faiss9QINCoStepES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i31, ptr noundef %.0911.i.i.i32, ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 144 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !169

_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.x, %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.z, %.lr.ph.i.i.i30 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #19
  br label %_ZNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5faiss9QINCoStepESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !32
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw [144 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !71
  ret void

bb.d:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN5faiss9QINCoStepESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #17 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #19
  invoke void @__cxa_rethrow() #18
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.af

bb.g:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt19__relocate_object_aIN5faiss9QINCoStepES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !69
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  store ptr %i.h, ptr %i.f, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !69
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %3 = load ptr, ptr %i.o, align 8, !tbaa !36
  store ptr %3, ptr %i.n, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.p = load <2 x ptr>, ptr %5, align 8, !tbaa !69
  store <2 x ptr> %i.p, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  store ptr %8, ptr %6, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !170
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !170
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  store ptr %i.v, ptr %i.t, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  tail call void @_ZNSt6vectorIN5faiss2nn3FFNESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #17
  %i.w = load ptr, ptr %5, align 8, !tbaa !35     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %7, align 8, !tbaa !36
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.b, %bb.a
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !35  ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN5faiss2nn6LinearD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #19
  br label %_ZN5faiss2nn6LinearD2Ev.exit.i.i

_ZN5faiss2nn6LinearD2Ev.exit.i.i:                 ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !35  ; 3 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZSt10destroy_atIN5faiss9QINCoStepEEvPT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5faiss2nn6LinearD2Ev.exit.i.i
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #19
  br label %_ZSt10destroy_atIN5faiss9QINCoStepEEvPT_.exit

_ZSt10destroy_atIN5faiss9QINCoStepEEvPT_.exit:    ; preds = %_ZN5faiss2nn6LinearD2Ev.exit.i.i, %bb.d
  ret void
}

declare void @_ZN5faiss9knn_L2sqrEPKfS1_mmmmPfPlS1_PKNS_10IDSelectorE(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN5faiss14NeuralNetCodecE", !6, i64 8, !6, i64 12}
!12 = !{!11, !6, i64 12}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !9, i64 8, !5, i64 16}
!18 = !{!17, !9, i64 8}
!19 = !{!5, !5, i64 0}
!20 = !{!17, !14, i64 0}
!21 = !{!"p1 int", !13, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!22, !21, i64 16}
!30 = !{!"p1 _ZTSN5faiss9QINCoStepE", !13, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!"p1 float", !13, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!35 = !{!34, !33, i64 0}
!36 = !{!34, !33, i64 16}
!37 = !{!11, !6, i64 8}
!38 = !{!"float", !5, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !34, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIfSaIfEE", !41, i64 0}
!43 = !{!"_ZTSN5faiss2nn9EmbeddingE", !9, i64 0, !9, i64 8, !42, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EE12_Vector_implE", !31, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseIN5faiss9QINCoStepESaIS1_EE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorIN5faiss9QINCoStepESaIS1_EE", !45, i64 0}
!47 = !{!"_ZTSN5faiss5QINCoE", !11, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !43, i64 32, !46, i64 72}
!48 = !{!47, !6, i64 16}
!49 = !{!"vtable pointer", !4, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!34, !33, i64 8}
!52 = !{!"_ZTSN5faiss2nn6LinearE", !9, i64 0, !9, i64 8, !42, i64 16, !42, i64 40}
!53 = !{!52, !9, i64 0}
!54 = !{!52, !9, i64 8}
!55 = !{!43, !9, i64 0}
!56 = !{!43, !9, i64 8}
!57 = !{!"p1 _ZTSN5faiss2nn3FFNE", !13, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN5faiss2nn3FFNESaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN5faiss2nn3FFNESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSN5faiss9QINCoStepE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !43, i64 16, !52, i64 56, !61, i64 120}
!63 = !{!62, !6, i64 0}
!64 = !{!62, !6, i64 4}
!65 = !{!62, !6, i64 8}
!66 = !{!58, !57, i64 8}
!67 = !{!58, !57, i64 16}
!68 = !{!58, !57, i64 0}
!69 = !{!33, !33, i64 0}
!70 = !{!31, !30, i64 8}
!71 = !{!31, !30, i64 16}
!72 = distinct !{!72, !"_ZNK5faiss2nn16Tensor2DTemplateIiE6columnEm"}
!73 = distinct !{!73, !72, !"_ZNK5faiss2nn16Tensor2DTemplateIiE6columnEm: argument 0"}
!74 = distinct !{!74, !25, !26, !27}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !25, !26}
!77 = distinct !{!77, !"_ZNK5faiss2nn16Tensor2DTemplateIiE6columnEm"}
!78 = distinct !{!78, !77, !"_ZNK5faiss2nn16Tensor2DTemplateIiE6columnEm: argument 0"}
!79 = distinct !{!79, !25, !26, !27}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !25, !26}
!82 = distinct !{!82, !25}
!83 = !{!73}
!84 = !{!78}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !28}
!88 = distinct !{!88, !25}
!89 = !{ptr @_ZN5faiss5QINCoD2Ev}
!90 = distinct !{!90, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !25, !26, !27}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !25, !26}
!96 = !{!91}
!97 = !{!92}
!98 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!99 = distinct !{!99, !25, !26, !27}
!100 = distinct !{!100, !28}
!101 = distinct !{!101, !25, !26}
!102 = !{!22, !21, i64 8}
!103 = distinct !{!103, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !25, !26, !27}
!107 = distinct !{!107, !28}
!108 = distinct !{!108, !25, !26}
!109 = !{!104}
!110 = !{!105}
!111 = distinct !{!111, !25, !26, !27}
!112 = distinct !{!112, !28}
!113 = distinct !{!113, !25, !26}
!114 = distinct !{!114, !"LVerDomain"}
!115 = distinct !{!115, !114}
!116 = distinct !{!116, !114}
!117 = distinct !{!117, !25, !26, !27}
!118 = distinct !{!118, !28}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25, !26}
!121 = !{!115}
!122 = !{!116}
end_hunk_1
