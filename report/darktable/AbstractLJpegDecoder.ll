Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/AbstractLJpegDecoder?download=true
inline.NumInlined: 1191
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed8RawImageD2Ev:bb.a
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !64

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.d) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 152) #26
  br label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !69

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26
  br label %_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !74 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !80   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26
  br label %_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #26
  br label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !83

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #26
  br label %_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %2 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %3 = alloca %"class.rawspeed::ByteStream", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 6 uses
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %.sroa.413.0.copyload.i = load i32, ptr %.sroa.413.0..sroa_idx.i, align 8 ; 4 uses
  %i.b = icmp sgt i32 %.sroa.2.0.copyload.i, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp uge i32 %.sroa.2.0.copyload.i, %.sroa.413.0.copyload.i
  tail call void @llvm.assume(i1 %i.c)
  %i.d = sub nuw nsw i32 %.sroa.2.0.copyload.i, %.sroa.413.0.copyload.i
  %i.e = icmp samesign ugt i32 %i.d, 1
  br i1 %i.e, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i, label %.loopexit.i

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i: ; preds = %bb.a
  %.sroa.012.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.f = zext nneg i32 %.sroa.413.0.copyload.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i, i64 %i.f ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %i.g, align 1, !noalias !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.0.copyload.i.i.i.i.i10.i.i.i = load i8, ptr %i.h, align 1, !noalias !85 ; 2 uses
  %i.i = icmp eq i8 %.0.copyload.i.i.i.i.i.i.i.i, -1
  %i.j = add i8 %.0.copyload.i.i.i.i.i10.i.i.i, -1
  %i.k = icmp ult i8 %i.j, -2
  %or.cond5.i.i.i = and i1 %i.i, %i.k
  br i1 %or.cond5.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i, label %.loopexit.i

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i:    ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i
  %i.l = add nuw nsw i32 %.sroa.413.0.copyload.i, 2 ; 4 uses
  %i.m = icmp samesign ule i32 %i.l, %.sroa.2.0.copyload.i
  tail call void @llvm.assume(i1 %i.m)
  store i32 %i.l, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !88
  %.not = icmp eq i8 %.0.copyload.i.i.i.i.i10.i.i.i, -40
  br i1 %.not, label %.preheader, label %bb.b

.loopexit.i:                                      ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i, %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb) #15
  unreachable

.preheader:                                       ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i
  %i.n = sub nuw nsw i32 %.sroa.2.0.copyload.i, %i.l
  %i.o = icmp samesign ugt i32 %i.n, 1
  br i1 %i.o, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph, label %.loopexit.i15

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph: ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  %.sroa.8.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.10.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.10.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16

bb.b:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16: ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph, %.critedge
  %.sroa.413.0.copyload.i14105 = phi i32 [ %i.l, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.413.0.copyload.i14, %.critedge ]
  %i.s = phi i32 [ %.sroa.2.0.copyload.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.2.0.copyload.i12, %.critedge ] ; 6 uses
  %.sroa.068.0102 = phi i1 [ false, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.068.1, %.critedge ] ; 5 uses
  %.sroa.5.0101 = phi i1 [ false, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.5.1, %.critedge ] ; 4 uses
  %.sroa.7.0100 = phi i8 [ 0, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.7.1, %.critedge ] ; 5 uses
  %.sroa.1070.099 = phi i8 [ 0, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.1070.1, %.critedge ] ; 6 uses
  %.sroa.012.0.copyload.i10103 = load ptr, ptr %i.a, align 8 ; 4 uses
  %invariant.op.i.i = add nsw i32 %i.s, -1
  %i.t = zext nneg i32 %.sroa.413.0.copyload.i14105 to i64 ; 2 uses
  %i.u = zext i32 %invariant.op.i.i to i64
  %i.v = zext nneg i32 %i.s to i64                ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %i.t
  %.0.copyload.i.i.i.i.i.i.us.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !89
  br label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i: ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16
  %.0.copyload.i.i.i.i.i.i.us.i.i = phi i8 [ %.0.copyload.i.i.i.i.i10.i.us.i.i, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i ], [ %.0.copyload.i.i.i.i.i.i.us.pre.i.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16 ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i ], [ %i.t, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16 ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %indvars.iv.next.i.i
  %.0.copyload.i.i.i.i.i10.i.us.i.i = load i8, ptr %i.w, align 1, !noalias !89 ; 2 uses
  %i.x = icmp eq i8 %.0.copyload.i.i.i.i.i.i.us.i.i, -1
  %i.y = add i8 %.0.copyload.i.i.i.i.i10.i.us.i.i, -1
  %i.z = icmp ult i8 %i.y, -2
  %or.cond5.i.us.i.i = and i1 %i.x, %i.z
  br i1 %or.cond5.i.us.i.i, label %.split11.us.loopexit.i.i, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i

_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i: ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i
  %i.aa = icmp samesign ult i64 %indvars.iv.i.i, %i.v
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ult i64 %indvars.iv.next.i.i, %i.u
  br i1 %i.ab, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i, label %.loopexit.i15, !llvm.loop !92

.split11.us.loopexit.i.i:                         ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i
  %4 = trunc nuw i64 %indvars.iv.i.i to i32       ; 5 uses
  store i32 %4, ptr %.sroa.413.0..sroa_idx.i, align 8
  %.not.i.not.i.i.i.i.i.i18 = icmp ugt i32 %i.s, %4
  br i1 %.not.i.not.i.i.i.i.i.i18, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i19, label %5

5:                                                ; preds = %.split11.us.loopexit.i.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i19:  ; preds = %.split11.us.loopexit.i.i
  %6 = add nuw nsw i32 %4, 1                      ; 2 uses
  %.not.i.not.i.i.i.i9.i.i20 = icmp samesign ult i32 %6, %i.s
  br i1 %.not.i.not.i.i.i.i9.i.i20, label %_ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb.exit23, label %7

7:                                                ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i19
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

.loopexit.i15:                                    ; preds = %.critedge, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i, %.preheader
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb) #15
  unreachable

_ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb.exit23: ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i19
  %8 = zext nneg i32 %6 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %8
  %.0.copyload.i.i.i.i.i10.i.i22 = load i8, ptr %i.ac, align 1 ; 3 uses
  %i.ad = add i8 %.0.copyload.i.i.i.i.i10.i.i22, -1
  %i.ae = icmp ult i8 %i.ad, -2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i32 %4, 2                   ; 3 uses
  store i32 %i.af, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !88
  %.not5 = icmp eq i8 %.0.copyload.i.i.i.i.i10.i.i22, -39
  br i1 %.not5, label %.critedge7, label %bb.c

bb.c:                                             ; preds = %_ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb.exit23
  %i.ag = zext nneg i32 %i.af to i64              ; 3 uses
  %i.ah = add nuw nsw i64 %i.ag, 2
  %.not.i.i.i.i.i = icmp samesign ugt i64 %i.ah, %i.v
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK8rawspeed10ByteStream7peekU16Ev.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZNK8rawspeed10ByteStream7peekU16Ev.exit:         ; preds = %bb.c
  %i.ai = load i16, ptr %i.p, align 4, !tbaa !93  ; 4 uses
  %i.aj = icmp eq i16 %i.ai, -8531                ; 2 uses
  %i.ak = add nuw nsw i32 %4, 4
  %i.al = icmp samesign ule i32 %i.ak, %i.s
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %i.ag ; 5 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.am, align 1 ; 2 uses
  %i.an = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i)
  %spec.select.i.i.i.i.i = select i1 %i.aj, i16 %.0.copyload.i.i.i.i.i, i16 %i.an ; 4 uses
  %i.ao = zext i16 %spec.select.i.i.i.i.i to i64  ; 4 uses
  %i.ap = add nuw nsw i64 %i.ao, %i.ag
  %.not.i.i.i.i = icmp samesign ugt i64 %i.ap, %i.v
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream9getStreamEj.exit

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream7peekU16Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15, !noalias !94
  unreachable

_ZN8rawspeed10ByteStream9getStreamEj.exit:        ; preds = %_ZNK8rawspeed10ByteStream7peekU16Ev.exit
  %i.aq = zext i16 %spec.select.i.i.i.i.i to i32
  %i.ar = add nuw nsw i32 %i.af, %i.aq            ; 2 uses
  %i.as = icmp samesign ule i32 %i.ar, %i.s
  tail call void @llvm.assume(i1 %i.as)
  store i32 %i.ar, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !88, !noalias !101
  %.not.i.i = icmp ult i16 %spec.select.i.i.i.i.i, 2
  br i1 %.not.i.i, label %bb.f, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream9getStreamEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #15
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %_ZN8rawspeed10ByteStream9getStreamEj.exit
  switch i8 %.0.copyload.i.i.i.i.i10.i.i22, label %.critedge [
    i8 -60, label %bb.g
    i8 -61, label %bb.j
    i8 -38, label %bb.o
    i8 -37, label %bb.v
    i8 -35, label %bb.w
  ]

bb.g:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.at = trunc nuw i8 %.sroa.1070.099 to i1
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.am, ptr %1, align 8
  %.sroa.8.sroa.9.0.insert.ext = zext i16 %i.ai to i64
  %.sroa.8.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.8.sroa.9.0.insert.ext, 32
  %.sroa.8.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8.sroa.9.0.insert.shift, %i.ao
  store i64 %.sroa.8.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 8
  store i32 2, ptr %.sroa.10.0..sroa_idx, align 8
  tail call void @_ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %1)
  br label %.critedge

bb.j:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.au = trunc nuw i8 %.sroa.1070.099 to i1
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.av = trunc nuw i8 %.sroa.7.0100 to i1
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.am, ptr %2, align 8
  %.sroa.8.sroa.9.0.insert.ext55 = zext i16 %i.ai to i64
  %.sroa.8.sroa.9.0.insert.shift56 = shl nuw nsw i64 %.sroa.8.sroa.9.0.insert.ext55, 32
  %.sroa.8.sroa.0.0.insert.insert48 = or disjoint i64 %.sroa.8.sroa.9.0.insert.shift56, %i.ao
  store i64 %.sroa.8.sroa.0.0.insert.insert48, ptr %.sroa.8.0..sroa_idx28, align 8
  store i32 2, ptr %.sroa.10.0..sroa_idx34, align 8
  tail call void @_ZN8rawspeed20AbstractLJpegDecoder8parseSOFENS_10ByteStreamEPNS_7SOFInfoE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %2, ptr noundef nonnull %i.r)
  br label %.critedge

bb.o:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.aw = trunc nuw i8 %.sroa.1070.099 to i1
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.q:                                             ; preds = %bb.o
  br i1 %.sroa.5.0101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ax = trunc nuw i8 %.sroa.7.0100 to i1
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.u:                                             ; preds = %bb.s
  store ptr %i.am, ptr %3, align 8
  %.sroa.8.sroa.9.0.insert.ext59 = zext i16 %i.ai to i64
  %.sroa.8.sroa.9.0.insert.shift60 = shl nuw nsw i64 %.sroa.8.sroa.9.0.insert.ext59, 32
  %.sroa.8.sroa.0.0.insert.insert51 = or disjoint i64 %.sroa.8.sroa.9.0.insert.shift60, %i.ao
  store i64 %.sroa.8.sroa.0.0.insert.insert51, ptr %.sroa.8.0..sroa_idx30, align 8
  store i32 2, ptr %.sroa.10.0..sroa_idx36, align 8
  tail call void @_ZN8rawspeed20AbstractLJpegDecoder8parseSOSENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %3)
  %i.ay = load ptr, ptr %0, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(236) %0), !call_target !102
  br i1 %i.bb, label %.loopexit, label %.critedge

bb.v:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.w:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  br i1 %.sroa.068.0102, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  %.not.i = icmp eq i16 %spec.select.i.i.i.i.i, 4
  br i1 %.not.i, label %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE) #15
  unreachable

_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit: ; preds = %bb.y
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %.0.copyload.i.i.i.i.i.i.i24 = load i16, ptr %i.bc, align 1 ; 2 uses
  %i.bd = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i.i24)
  %spec.select.i.i.i.i.i.i.i = select i1 %i.aj, i16 %.0.copyload.i.i.i.i.i.i.i24, i16 %i.bd
  store i16 %spec.select.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.u, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit, %bb.n, %bb.i
  %.sroa.1070.1 = phi i8 [ %.sroa.1070.099, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ 0, %bb.i ], [ 0, %bb.n ], [ 1, %bb.u ], [ %.sroa.1070.099, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.7.1 = phi i8 [ %.sroa.7.0100, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %.sroa.7.0100, %bb.i ], [ 1, %bb.n ], [ 1, %bb.u ], [ %.sroa.7.0100, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.5.1 = phi i1 [ %.sroa.5.0101, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ true, %bb.i ], [ %.sroa.5.0101, %bb.n ], [ true, %bb.u ], [ %.sroa.5.0101, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.068.1 = phi i1 [ %.sroa.068.0102, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %.sroa.068.0102, %bb.i ], [ %.sroa.068.0102, %bb.n ], [ %.sroa.068.0102, %bb.u ], [ true, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.2.0.copyload.i12 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.413.0.copyload.i14 = load i32, ptr %.sroa.413.0..sroa_idx.i, align 8 ; 3 uses
  %i.be = icmp sgt i32 %.sroa.2.0.copyload.i12, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp uge i32 %.sroa.2.0.copyload.i12, %.sroa.413.0.copyload.i14
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = sub nuw nsw i32 %.sroa.2.0.copyload.i12, %.sroa.413.0.copyload.i14
  %i.bh = icmp samesign ugt i32 %i.bg, 1
  br i1 %i.bh, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16, label %.loopexit.i15

.critedge7:                                       ; preds = %_ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb.exit23
  %.old9 = trunc nuw i8 %.sroa.1070.099 to i1
  br i1 %.old9, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %.critedge7
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

.loopexit:                                        ; preds = %bb.u, %.critedge7
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext range(i8 1, -1) i8 @_ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(236) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.012.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 8 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.sroa.413.0.copyload = load i32, ptr %.sroa.413.0..sroa_idx, align 8 ; 5 uses
  %i.b = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp uge i32 %.sroa.2.0.copyload, %.sroa.413.0.copyload
  tail call void @llvm.assume(i1 %i.c)
  %i.d = sub nuw nsw i32 %.sroa.2.0.copyload, %.sroa.413.0.copyload
end_hunk_0
