Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/ConversionAmbiguities?download=true
inline.NumInlined: 904
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6opencc15AmbiguityStream13ConvertWindowESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !21
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #27
  br label %_ZN6opencc19AnnotatedConversionD2Ev.exit

_ZN6opencc19AnnotatedConversionD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

.lr.ph47:                                         ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EEaSEOS3_.exit, %.lr.ph47
  %.sroa.030.046 = phi ptr [ %i.ed, %.lr.ph47 ], [ %i.bj, %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EEaSEOS3_.exit ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.030.046, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !166
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.087, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !18
  store i64 %i.ec, ptr %i.dz, align 8, !tbaa !166
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.030.046, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ed, %i.bi
  br i1 %.not, label %._crit_edge48.thread, label %.lr.ph47

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.t, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.m ], [ %.pn42, %bb.t ]
  call void @_ZN6opencc19AnnotatedConversionD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %4) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %i.bk, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN6opencc15AmbiguityStream5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) #26
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6opencc15AmbiguityStream5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !21
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #27
  br label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !21
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6opencc15AmbiguityStream12ConvertChunkESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 %2, ptr %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %i.f = sub i64 4611686018427387903, %i.e
  %i.g = icmp ult i64 %i.f, %2
  br i1 %i.g, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %3, i64 noundef %2) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !87
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %bb.a
  %i.i = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.a, %bb.a ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !91
  %i.o = tail call noundef i64 @_ZN6opencc8internal18FlushableByteCountESt17basic_string_viewIcSt11char_traitsIcEEm(i64 %i.l, ptr %i.j, i64 noundef %i.n) ; 4 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i8 0, i64 72, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.f:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !20
  tail call void @_ZN6opencc15AmbiguityStream13ConvertWindowESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.o, ptr %i.v)
  %cond = icmp eq i64 %i.o, -1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.k, align 8, !tbaa !22
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !20
  store i8 0, ptr %i.w, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.k, align 8, !tbaa !22
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.x)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %spec.select.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6opencc15AmbiguityStream5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) #26
  resume { ptr, i32 } %i.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6opencc8internal18FlushableByteCountESt17basic_string_viewIcSt11char_traitsIcEEm(i64 %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.044 = phi ptr [ %1, %bb.b ], [ %i.g, %bb.d ]  ; 12 uses
  %i.e = icmp ult ptr %.044, %i.d
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i64 @_ZN6opencc8UTF8Util14NextCharLengthEPKc(ptr noundef %.044)
  %i.g = getelementptr inbounds nuw i8, ptr %.044, i64 %i.f ; 2 uses
  %i.h = icmp ugt ptr %i.g, %i.d
  br i1 %i.h, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = icmp ugt ptr %.044, %1                   ; 2 uses
  %i.j = icmp ne i64 %2, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.e
  br i1 %i.i, label %.lr.ph56, label %._crit_edge

.lr.ph56:                                         ; preds = %.lr.ph, %.preheader
  %.041.lcssa68 = phi ptr [ %.044, %.preheader ], [ %i.o, %.lr.ph ]
  %i.l = ptrtoint ptr %.044 to i64
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.04052 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.e ]
  %.04151 = phi ptr [ %i.o, %.lr.ph ], [ %.044, %bb.e ] ; 2 uses
  %i.m = tail call noundef i64 @_ZN6opencc8UTF8Util14PrevCharLengthEPKc(ptr noundef nonnull %.04151)
  %i.n = sub i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %.04151, i64 %i.n ; 3 uses
  %i.p = add nuw i64 %.04052, 1                   ; 2 uses
  %i.q = icmp ugt ptr %i.o, %1
  %i.r = icmp ult i64 %i.p, %2
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %.lr.ph56, !llvm.loop !167

bb.f:                                             ; preds = %.lr.ph56, %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread
  %.055 = phi i64 [ 0, %.lr.ph56 ], [ %i.w, %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread ] ; 2 uses
  %.03754 = phi ptr [ %.044, %.lr.ph56 ], [ %i.v, %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread ] ; 2 uses
  %.03853 = phi ptr [ %.044, %.lr.ph56 ], [ %i.cf, %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread ] ; 4 uses
  %i.t = call noundef i64 @_ZN6opencc8UTF8Util14PrevCharLengthEPKc(ptr noundef nonnull %.03754)
  %i.u = sub i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %.03754, i64 %i.u ; 12 uses
  %i.w = add nuw nsw i64 %.055, 1
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.l, %i.x                       ; 2 uses
  %i.z = icmp eq ptr %.044, %i.v
  br i1 %i.z, label %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !21   ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 7 uses
  %i.ac = and i32 %i.ab, 240
  %i.ad = icmp eq i32 %i.ac, 224
  br i1 %i.ad, label %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp sgt i8 %i.aa, -1
  br i1 %i.ae, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = and i32 %i.ab, 224
  %i.ag = icmp eq i32 %i.af, 192
  br i1 %i.ag, label %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = and i32 %i.ab, 248
  %i.ai = icmp eq i32 %i.ah, 240
  br i1 %i.ai, label %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.ab, 252
  %i.ak = icmp eq i32 %i.aj, 248
  br i1 %i.ak, label %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = and i32 %i.ab, 254
  %i.am = icmp eq i32 %i.al, 252
  %..i.i = select i1 %i.am, i64 6, i64 0
  br label %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i

_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g
  %.0.i.i = phi i64 [ 5, %bb.k ], [ 3, %bb.g ], [ %..i.i, %bb.l ], [ 2, %bb.i ], [ 4, %bb.j ] ; 3 uses
  %i.an = add nsw i64 %.0.i.i, -1                 ; 3 uses
  %or.cond.not.i = icmp ult i64 %i.an, %i.y
  br i1 %or.cond.not.i, label %bb.m, label %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread

bb.m:                                             ; preds = %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i
  %i.ao = trunc nuw nsw i64 %.0.i.i to i32
  %i.ap = lshr i32 127, %i.ao
  %i.aq = and i32 %i.ap, %i.ab                    ; 2 uses
  %i.ar = add nsw i64 %.0.i.i, -2
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.as = icmp ult i64 %i.ar, 3
  br i1 %i.as, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.m
  %unroll_iter = and i64 %i.an, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.016.i.i = phi i64 [ 1, %.new ], [ %i.bu, %.lr.ph.i.i ] ; 5 uses
  %.01215.i.i = phi i32 [ %i.aq, %.new ], [ %i.bt, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 %.016.i.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !21
  %i.av = and i8 %i.au, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl i32 %.01215.i.i, 12
  %i.ay = shl nuw nsw i32 %i.aw, 6
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %.016.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !21
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 %.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %i.bj = and i8 %i.bi, 63
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = shl i32 %i.bf, 12
  %i.bm = shl nuw nsw i32 %i.bk, 6
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 %.016.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bn, %i.bs            ; 3 uses
  %i.bu = add nuw i64 %.016.i.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2

_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i.loopexit.unr-lcssa, %bb.m
  %.016.i.i.epil.init = phi i64 [ 1, %bb.m ], [ %i.bu, %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i.loopexit.unr-lcssa ]
  %.01215.i.i.epil.init = phi i32 [ %i.aq, %bb.m ], [ %i.bt, %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod73 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.016.i.i.epil = phi i64 [ %i.cb, %.lr.ph.i.i.epil ], [ %.016.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01215.i.i.epil = phi i32 [ %i.ca, %.lr.ph.i.i.epil ], [ %.01215.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bv = shl i32 %.01215.i.i.epil, 6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 %.016.i.i.epil
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !21
  %i.by = and i8 %i.bx, 63
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bv, %i.bz            ; 2 uses
  %i.cb = add nuw i64 %.016.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !168

_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i: ; preds = %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.h
  %.013.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.bt, %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i.loopexit.unr-lcssa ], [ %i.ca, %.lr.ph.i.i.epil ]
  %i.cc = and i32 %.013.i.i, -16
  %switch.i = icmp eq i32 %i.cc, 12272
  br i1 %switch.i, label %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit, label %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread

_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit: ; preds = %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !18
  %i.cd = call noundef i32 @_ZN6opencc8UTF8Util37ConsumeIdeographicDescriptionSequenceEPKcmmmPmS3_(ptr noundef nonnull %i.v, i64 noundef %i.y, i64 noundef 16, i64 noundef 64, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ce = icmp eq i32 %i.cd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %spec.select = select i1 %i.ce, ptr %i.v, ptr %.03853
  br label %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread

_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread: ; preds = %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit, %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i, %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i, %bb.f
  %i.cf = phi ptr [ %.03853, %_ZN6opencc8UTF8Util20CodePointNoExceptionEPKcm.exit.i ], [ %spec.select, %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit ], [ %.03853, %bb.f ], [ %.03853, %_ZN6opencc8UTF8Util25NextCharLengthNoExceptionEPKc.exit.i ] ; 2 uses
  %i.cg = icmp ugt ptr %i.v, %1
  %i.ch = icmp samesign ult i64 %.055, 63
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %bb.f, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread, %.preheader
  %.041.lcssa67 = phi ptr [ %.044, %.preheader ], [ %.041.lcssa68, %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread ] ; 2 uses
  %.038.lcssa = phi ptr [ %.044, %.preheader ], [ %i.cf, %_ZN6opencc8UTF8Util48IsIncompleteIdeographicDescriptionSequencePrefixEPKcm.exit.thread ] ; 2 uses
  %i.cj = icmp ult ptr %.038.lcssa, %.041.lcssa67
  %spec.select48 = select i1 %i.cj, ptr %.038.lcssa, ptr %.041.lcssa67
  %i.ck = ptrtoint ptr %spec.select48 to i64
  %i.cl = ptrtoint ptr %1 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %._crit_edge
  %.039 = phi i64 [ %i.cm, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.039
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define void @_ZN6opencc15AmbiguityStream6FinishESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 %2, ptr %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !87     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %3, i64 noundef %2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, %bb.a
  tail call void @_ZN6opencc15AmbiguityStream6FinishEv(ptr dead_on_unwind writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6opencc15AmbiguityStream6FinishEv(ptr dead_on_unwind noalias writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.opencc::AmbiguityStream::Chunk", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.d, align 8, !tbaa !94
  %i.e = load ptr, ptr %1, align 8, !tbaa !87     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  invoke void @_ZN6opencc15AmbiguityStream13ConvertWindowESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.g, ptr %i.j)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 dereferenceable(81) ptr @_ZN6opencc15AmbiguityStream5ChunkaSEOS1_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %2) #26 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.l, align 8, !tbaa !67
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !80
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !84
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ai = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #27
  br label %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit

_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit:       ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.an = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store i64 0, ptr %i.ap, align 8, !tbaa !22
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !20
  store i8 0, ptr %i.aq, align 1, !tbaa !21
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN6opencc15AmbiguityStream5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) #26
  resume { ptr, i32 } %i.ar

bb.g:                                             ; preds = %bb.a, %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(81) ptr @_ZN6opencc15AmbiguityStream5ChunkaSEOS1_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !20     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !43

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !21
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

end_hunk_0
