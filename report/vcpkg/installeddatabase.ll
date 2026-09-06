Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/installeddatabase?download=true
inline.NumInlined: 1530
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5vcpkgL22apply_database_updatesERKNS_18ReadOnlyFilesystemERNS_16StatusParagraphsERKNS_4PathE:bb.a

_ZSt8_DestroyIPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESG_EvT_SI_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEEEvPT_.exit.i.i.i, %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESG_EvT_SI_RSaIT0_E.exit.i
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.as) #21
  br label %_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EED2Ev.exit

_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESG_EvT_SI_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.u

bb.o:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.v

.lr.ph:                                           ; preds = %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit, %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit
  %.sroa.031.043 = phi ptr [ %i.ba, %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit ], [ %i.ai, %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.au = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #24
          to label %.noexc30 unwind label %bb.s   ; 3 uses

.noexc30:                                         ; preds = %.lr.ph
  %i.av = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.044) #20, !noalias !158 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  invoke void @_ZN5vcpkg15StatusParagraphC1ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE(ptr noundef nonnull align 8 dereferenceable(248) %i.au, ptr %i.aw, i64 %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.031.043)
          to label %bb.q unwind label %bb.p, !noalias !158

bb.p:                                             ; preds = %.noexc30
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 248) #21, !noalias !158
  br label %.body

bb.q:                                             ; preds = %.noexc30
  store ptr %i.au, ptr %8, align 8, !tbaa !65, !alias.scope !158
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN5vcpkg16StatusParagraphs6insertESt10unique_ptrINS_15StatusParagraphESt14default_deleteIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.72") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 %8)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.az = load ptr, ptr %8, align 8, !tbaa !65    ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i: ; preds = %bb.r
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.az) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 248) #21
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.r, %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.031.043, i64 48 ; 2 uses
  %.not39 = icmp eq ptr %i.ba, %i.aj
  br i1 %.not39, label %.lr.ph.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  br label %.body

.body:                                            ; preds = %bb.s, %bb.p, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.t ], [ %i.bb, %bb.s ], [ %i.ay, %bb.p ]
  call void @_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  br label %bb.v

bb.u:                                             ; preds = %bb.f, %_ZNSt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_N5vcpkg10TextRowColEESt4lessIvESaIS7_IKS6_SA_EEESaISG_EED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.035.044, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.q
  br i1 %.not, label %.loopexit, label %bb.e

bb.v:                                             ; preds = %.body, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.at, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.w

.loopexit:                                        ; preds = %bb.u, %_ZN5vcpkg4Util4sortISt6vectorINS_4PathESaIS3_EESt4lessIvEEEvRT_T0_.exit
  ret void

bb.w:                                             ; preds = %.loopexit40, %.loopexit.split-lp, %bb.g, %bb.v
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn.pn, %bb.v ], [ %lpad.loopexit, %.loopexit40 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN5vcpkg4PathESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg16StatusParagraphsD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %i.d) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 248) #21
  br label %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #21
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5vcpkgL21load_current_databaseERKNS_18ReadOnlyFilesystemERKNS_4PathE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.59", align 8    ; 7 uses
  %4 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 8 uses
  %5 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %6 = alloca %"class.std::vector.9", align 8     ; 16 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN5vcpkg10Paragraphs14get_paragraphsB5cxx11ERKNS_18ReadOnlyFilesystemERKNS_4PathE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 15, ptr %5, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.1, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @__func__._ZN5vcpkgL21load_current_databaseERKNS_18ReadOnlyFilesystemERKNS_4PathE, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !53, !range !16, !noundef !17
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %4) #20
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #25
  unreachable

_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !56     ; 8 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 6 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 48                  ; 3 uses
  %8 = icmp ugt i64 %i.s, 1152921504606846975
  br i1 %8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5vcpkg9ExpectedTISt6vectorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEESaISH_EENS_15LocalizedStringEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %.not64 = icmp eq ptr %i.l, %i.i
  br i1 %.not64, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.v = shl nuw nsw i64 %i.s, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24
          to label %.noexc11 unwind label %bb.h   ; 9 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i
  %i.x = load ptr, ptr %6, align 8, !tbaa !68     ; 11 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !69   ; 3 uses
  %i.aa = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc11
  %i.ab = add i64 %i.aa, -8
  %i.ac = sub i64 %i.ab, %i.y                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader105, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.af = add i64 %i.aa, -8
  %i.ag = sub i64 %i.af, %i.y
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ai
  %scevgep73 = getelementptr i8, ptr %i.x, i64 %i.ai
  %bound0 = icmp ult ptr %i.w, %scevgep73
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.w, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.x, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.am ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.x, i64 %i.am ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.an = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  %wide.load75 = load <2 x i64>, ptr %i.an, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !180, !noalias !179
  store <2 x i64> %wide.load75, ptr %i.ao, align 8, !tbaa !65, !alias.scope !180, !noalias !179
  %i.ap = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !65, !alias.scope !179, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.preheader105

.lr.ph.i.i.i.i.preheader105:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader105, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader105 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader105 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !178, !noalias !177
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !177, !noalias !178
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !178, !noalias !177
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !166

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc11
  %.not.i8.i = icmp eq ptr %i.x, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.x to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ax) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %6, align 8, !tbaa !68
  store ptr %i.w, ptr %i.u, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.s
  store ptr %i.ay, ptr %i.t, align 8, !tbaa !70
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.f
  %.not39 = icmp eq ptr %i.i, %i.l                ; 2 uses
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE7reserveEm.exit
  invoke void @_ZN5vcpkg16StatusParagraphsC1EOSt6vectorISt10unique_ptrINS_15StatusParagraphESt14default_deleteIS3_EESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.q unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i, %bb.e, %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.i:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit
  %.sroa.031.040 = phi ptr [ %i.i, %.lr.ph ], [ %i.cu, %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.bb = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #24
          to label %.noexc12 unwind label %bb.o   ; 4 uses

.noexc12:                                         ; preds = %bb.i
  %i.bc = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20, !noalias !181 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0
  %i.be = extractvalue { ptr, i64 } %i.bc, 1
  invoke void @_ZN5vcpkg15StatusParagraphC1ENS_10StringViewEOSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS8_NS_10TextRowColEESt4lessIvESaIS9_IKS8_SB_EEE(ptr noundef nonnull align 8 dereferenceable(248) %i.bb, ptr %i.bd, i64 %i.be, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.031.040)
          to label %bb.k unwind label %bb.j, !noalias !181

bb.j:                                             ; preds = %.noexc12
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 248) #21, !noalias !181
  br label %.body

bb.k:                                             ; preds = %.noexc12
  store ptr %i.bb, ptr %7, align 8, !tbaa !65, !alias.scope !181
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !69 ; 6 uses
  %i.bh = load ptr, ptr %i.t, align 8, !tbaa !70
  %.not.i.i = icmp eq ptr %i.bg, %i.bh
  %i.bi = ptrtoint ptr %i.bb to i64               ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.az, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %6, align 8, !tbaa !68    ; 10 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i21 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i21)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #24
          to label %.noexc30 unwind label %.loopexit ; 10 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i64 %i.bi, ptr %i.bw, align 8, !tbaa !65
  %.not10.i.i.i.i22 = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i23.preheader
end_hunk_0
begin_hunk_1_@_ZN5vcpkg15BinaryParagraphC2ERKS0_:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !111
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !100
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !98
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !98
  %i.bc = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ba, ptr %i.bb, ptr noundef %i.aw)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc26
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !100
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #21
  br label %.body

bb.j:                                             ; preds = %.noexc26
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !111
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111 ; 2 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i.i.i27, label %.noexc33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = icmp ugt i64 %i.bq, 9223372036854775776
  br i1 %i.br, label %.noexc.i.i31, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i28, !prof !101

.noexc.i.i31:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc32 unwind label %bb.ae

.noexc32:                                         ; preds = %.noexc.i.i31
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i28: ; preds = %bb.k
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #24
          to label %.noexc33 unwind label %bb.ae

.noexc33:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i28, %bb.j
  %i.bt = phi ptr [ null, %bb.j ], [ %i.bs, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i28 ] ; 4 uses
  store ptr %i.bt, ptr %i.bj, align 8, !tbaa !110
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !111
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !100
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !98
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !98
  %i.bz = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bx, ptr %i.by, ptr noundef %i.bt)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %.noexc33
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i29, label %.body34, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !100
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #21
  br label %.body34

bb.n:                                             ; preds = %.noexc33
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !111
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !71
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !25 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !32
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.n
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc37 unwind label %bb.af  ; 2 uses

.noexc37:                                         ; preds = %.noexc.i
  store ptr %i.cn, ptr %i.cg, align 8, !tbaa !25
  %i.co = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.co, ptr %i.ci, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc37, %bb.n
  %i.cp = phi ptr [ %i.cn, %.noexc37 ], [ %i.ci, %bb.n ] ; 2 uses
  switch i64 %i.cl, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.cq = load i8, ptr %i.cj, align 1, !tbaa !26
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !26
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cj, i64 %i.cl, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !72
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !111 ; 2 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !110 ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i38 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i.i.i.i38, label %.noexc44, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = icmp ugt i64 %i.dc, 9223372036854775776
  br i1 %i.dd, label %.noexc.i.i42, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i39, !prof !101

.noexc.i.i42:                                     ; preds = %bb.r
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc43 unwind label %bb.ag

.noexc43:                                         ; preds = %.noexc.i.i42
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i39: ; preds = %bb.r
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #24
          to label %.noexc44 unwind label %bb.ag

.noexc44:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i39, %bb.q
  %i.df = phi ptr [ null, %bb.q ], [ %i.de, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i39 ] ; 4 uses
  store ptr %i.df, ptr %i.cv, align 8, !tbaa !110
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !111
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !100
  %i.dj = load ptr, ptr %i.cw, align 8, !tbaa !98
  %i.dk = load ptr, ptr %i.cx, align 8, !tbaa !98
  %i.dl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.dj, ptr %i.dk, ptr noundef %i.df)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %.noexc44
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %i.cv, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i40, label %.body45, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !100
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dr) #21
  br label %.body45

bb.u:                                             ; preds = %.noexc44
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !111
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !115 ; 2 uses
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !114 ; 2 uses
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  %.not.i.i.i.i48 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i.i.i48, label %.noexc52, label %bb.v

bb.v:                                             ; preds = %bb.u
  %2 = sdiv exact i64 %i.dz, 40
  %i.ea = icmp ugt i64 %2, 230584300921369395
  br i1 %i.ea, label %.noexc.i.i50, label %_ZNSt15__new_allocatorIN5vcpkg11PackageSpecEE8allocateEmPKv.exit.i.i.i.i, !prof !101

.noexc.i.i50:                                     ; preds = %bb.v
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc51 unwind label %bb.ah

.noexc51:                                         ; preds = %.noexc.i.i50
  unreachable

_ZNSt15__new_allocatorIN5vcpkg11PackageSpecEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.v
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #24
          to label %.noexc52 unwind label %bb.ah

.noexc52:                                         ; preds = %_ZNSt15__new_allocatorIN5vcpkg11PackageSpecEE8allocateEmPKv.exit.i.i.i.i, %bb.u
  %i.ec = phi ptr [ null, %bb.u ], [ %i.eb, %_ZNSt15__new_allocatorIN5vcpkg11PackageSpecEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ec, ptr %i.ds, align 8, !tbaa !114
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !115
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !109
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !84
  %i.eh = load ptr, ptr %i.du, align 8, !tbaa !84
  %i.ei = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5vcpkg11PackageSpecESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.eg, ptr %i.eh, ptr noundef %i.ec)
          to label %bb.y unwind label %bb.w

bb.w:                                             ; preds = %.noexc52
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %i.ds, align 8, !tbaa !114 ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i49, label %.body53, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !109
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eo) #21
  br label %.body53

bb.y:                                             ; preds = %.noexc52
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !115
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !71
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !25 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.eu, ptr %i.a, align 8, !tbaa !32
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %.noexc.i56, label %._crit_edge.i.i55

.noexc.i56:                                       ; preds = %bb.y
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57 unwind label %bb.ai  ; 2 uses

.noexc57:                                         ; preds = %.noexc.i56
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !25
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.ex, ptr %i.er, align 8, !tbaa !26
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %.noexc57, %bb.y
  %i.ey = phi ptr [ %i.ew, %.noexc57 ], [ %i.er, %bb.y ] ; 2 uses
  switch i64 %i.eu, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i55
  %i.ez = load i8, ptr %i.es, align 1, !tbaa !26
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !26
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.es, i64 %i.eu, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i55
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !72
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !25
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 0, ptr %i.fd, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.ac:                                            ; preds = %.noexc.i.i23
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg7VersionD2Ev.exit

bb.ad:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i24
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i28, %.noexc.i.i31
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.af:                                            ; preds = %.noexc.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i39, %.noexc.i.i42
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body45

bb.ah:                                            ; preds = %_ZNSt15__new_allocatorIN5vcpkg11PackageSpecEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i50
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body53

bb.ai:                                            ; preds = %.noexc.i56
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ds) #20
  br label %.body53

.body53:                                          ; preds = %bb.ah, %bb.x, %bb.w, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.fk, %bb.ai ], [ %i.fj, %bb.ah ], [ %i.ej, %bb.x ], [ %i.ej, %bb.w ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cv) #20
  br label %.body45

.body45:                                          ; preds = %bb.ag, %bb.t, %bb.s, %.body53
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body53 ], [ %i.fi, %bb.ag ], [ %i.dm, %bb.t ], [ %i.dm, %bb.s ] ; 2 uses
  %i.fl = load ptr, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.ci
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body45
  %i.fn = load i64, ptr %i.ci, align 8, !tbaa !26
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.af
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fh, %bb.af ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn, %.body45 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bj) #20
  br label %.body34

.body34:                                          ; preds = %bb.ae, %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fg, %bb.ae ], [ %i.ca, %bb.m ], [ %i.ca, %bb.l ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #20
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.i, %bb.h, %.body34
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body34 ], [ %i.ff, %bb.ad ], [ %i.bd, %bb.i ], [ %i.bd, %bb.h ] ; 2 uses
  %i.fp = load ptr, ptr %i.u, align 8, !tbaa !25  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.w
  br i1 %i.fq, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.body
  %i.fr = load i64, ptr %i.w, align 8, !tbaa !26
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #21
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ac
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.ac ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn.pn.pn.pn, %.body ]
  %i.ft = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.e
  br i1 %i.fu, label %_ZN5vcpkg11PackageSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.fv = load i64, ptr %i.e, align 8, !tbaa !26
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #21
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

_ZN5vcpkg11PackageSpecD2Ev.exit:                  ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !71
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !32
  %i.f = icmp ugt i64 %i.e, 15
end_hunk_1
