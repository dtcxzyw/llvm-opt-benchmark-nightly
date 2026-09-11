Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/AbstractLJpegDecoder?download=true
inline.NumInlined: 1191
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed8RawImageD2Ev:bb.a
_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !276 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.d) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 152) #26
  br label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !273
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !278
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !279    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !282 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !285  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !286
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !289
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
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !279
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290
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
  %.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %i.g, align 1, !noalias !6018
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.0.copyload.i.i.i.i.i10.i.i.i = load i8, ptr %i.h, align 1, !noalias !6018 ; 2 uses
  %i.i = icmp eq i8 %.0.copyload.i.i.i.i.i.i.i.i, -1
  %i.j = add i8 %.0.copyload.i.i.i.i.i10.i.i.i, -1
  %i.k = icmp ult i8 %i.j, -2
  %or.cond5.i.i.i = and i1 %i.i, %i.k
  br i1 %or.cond5.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i, label %.loopexit.i

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i:    ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i
  %i.l = add nuw nsw i32 %.sroa.413.0.copyload.i, 2 ; 4 uses
  %i.m = icmp samesign ule i32 %i.l, %.sroa.2.0.copyload.i
  tail call void @llvm.assume(i1 %i.m)
  store i32 %i.l, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !291
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
  %i.s = phi i32 [ %.sroa.2.0.copyload.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.2.0.copyload.i12, %.critedge ] ; 5 uses
  %.sroa.068.0102 = phi i1 [ false, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.068.1, %.critedge ] ; 5 uses
  %.sroa.5.0101 = phi i1 [ false, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.5.1, %.critedge ] ; 4 uses
  %.sroa.7.0100 = phi i8 [ 0, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.7.1, %.critedge ] ; 5 uses
  %.sroa.1070.099 = phi i8 [ 0, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16.lr.ph ], [ %.sroa.1070.1, %.critedge ] ; 6 uses
  %.sroa.012.0.copyload.i10103 = load ptr, ptr %i.a, align 8 ; 4 uses
  %invariant.op.i.i = add nsw i32 %i.s, -1
  %i.t = zext nneg i32 %.sroa.413.0.copyload.i14105 to i64 ; 2 uses
  %i.u = zext i32 %invariant.op.i.i to i64
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %i.t
  %.0.copyload.i.i.i.i.i.i.us.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !6019
  br label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i: ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16
  %.0.copyload.i.i.i.i.i.i.us.i.i = phi i8 [ %.0.copyload.i.i.i.i.i10.i.us.i.i, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i ], [ %.0.copyload.i.i.i.i.i.i.us.pre.i.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16 ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i ], [ %i.t, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16 ] ; 2 uses
  %indvars.iv.next.i.i = add nuw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %indvars.iv.next.i.i
  %.0.copyload.i.i.i.i.i10.i.us.i.i = load i8, ptr %i.v, align 1, !noalias !6019 ; 2 uses
  %i.w = icmp eq i8 %.0.copyload.i.i.i.i.i.i.us.i.i, -1
  %i.x = add i8 %.0.copyload.i.i.i.i.i10.i.us.i.i, -1
  %i.y = icmp ult i8 %i.x, -2
  %or.cond5.i.us.i.i = and i1 %i.w, %i.y
  br i1 %or.cond5.i.us.i.i, label %.split11.us.loopexit.i.i, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i

_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i: ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i
  %i.z = icmp samesign ult i64 %indvars.iv.next.i.i, %i.u
  br i1 %i.z, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i, label %.loopexit.i15, !llvm.loop !3

.split11.us.loopexit.i.i:                         ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i.i
  %i.aa = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  store i32 %i.aa, ptr %.sroa.413.0..sroa_idx.i, align 8
  %i.ab = and i64 %indvars.iv.next.i.i, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %i.ab
  %.0.copyload.i.i.i.i.i10.i.i22 = load i8, ptr %i.ac, align 1 ; 3 uses
  %i.ad = add i8 %.0.copyload.i.i.i.i.i10.i.i22, -1
  %i.ae = icmp ult i8 %i.ad, -2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i32 %i.aa, 2                ; 4 uses
  %i.ag = icmp samesign ule i32 %i.af, %i.s
  tail call void @llvm.assume(i1 %i.ag)
  store i32 %i.af, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !291
  %.not5 = icmp eq i8 %.0.copyload.i.i.i.i.i10.i.i22, -39
  br i1 %.not5, label %.critedge7, label %bb.c

.loopexit.i15:                                    ; preds = %.critedge, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i.i, %.preheader
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb) #15
  unreachable

bb.c:                                             ; preds = %.split11.us.loopexit.i.i
  %i.ah = zext nneg i32 %i.af to i64              ; 3 uses
  %i.ai = add nuw nsw i64 %i.ah, 2
  %4 = zext nneg i32 %i.s to i64                  ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i64 %i.ai, %4
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK8rawspeed10ByteStream7peekU16Ev.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZNK8rawspeed10ByteStream7peekU16Ev.exit:         ; preds = %bb.c
  %i.aj = load i16, ptr %i.p, align 4, !tbaa !292 ; 4 uses
  %i.ak = icmp eq i16 %i.aj, -8531                ; 2 uses
  %i.al = add nuw nsw i32 %i.aa, 4
  %i.am = icmp samesign ule i32 %i.al, %i.s
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload.i10103, i64 %i.ah ; 5 uses
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.an, align 1 ; 2 uses
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i)
  %spec.select.i.i.i.i.i = select i1 %i.ak, i16 %.0.copyload.i.i.i.i.i, i16 %i.ao ; 4 uses
  %i.ap = zext i16 %spec.select.i.i.i.i.i to i64  ; 4 uses
  %i.aq = add nuw nsw i64 %i.ap, %i.ah
  %.not.i.i.i.i = icmp samesign ugt i64 %i.aq, %4
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream9getStreamEj.exit

bb.e:                                             ; preds = %_ZNK8rawspeed10ByteStream7peekU16Ev.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15, !noalias !6020
  unreachable

_ZN8rawspeed10ByteStream9getStreamEj.exit:        ; preds = %_ZNK8rawspeed10ByteStream7peekU16Ev.exit
  %i.ar = zext i16 %spec.select.i.i.i.i.i to i32
  %i.as = add nuw nsw i32 %i.af, %i.ar            ; 2 uses
  %i.at = icmp samesign ule i32 %i.as, %i.s
  tail call void @llvm.assume(i1 %i.at)
  store i32 %i.as, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !291, !noalias !6021
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
  %i.au = trunc nuw i8 %.sroa.1070.099 to i1
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  store ptr %i.an, ptr %1, align 8
  %.sroa.8.sroa.9.0.insert.ext = zext i16 %i.aj to i64
  %.sroa.8.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.8.sroa.9.0.insert.ext, 32
  %.sroa.8.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8.sroa.9.0.insert.shift, %i.ap
  store i64 %.sroa.8.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx, align 8
  store i32 2, ptr %.sroa.10.0..sroa_idx, align 8
  tail call void @_ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %1)
  br label %.critedge

bb.j:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.av = trunc nuw i8 %.sroa.1070.099 to i1
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = trunc nuw i8 %.sroa.7.0100 to i1
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.an, ptr %2, align 8
  %.sroa.8.sroa.9.0.insert.ext55 = zext i16 %i.aj to i64
  %.sroa.8.sroa.9.0.insert.shift56 = shl nuw nsw i64 %.sroa.8.sroa.9.0.insert.ext55, 32
  %.sroa.8.sroa.0.0.insert.insert48 = or disjoint i64 %.sroa.8.sroa.9.0.insert.shift56, %i.ap
  store i64 %.sroa.8.sroa.0.0.insert.insert48, ptr %.sroa.8.0..sroa_idx28, align 8
  store i32 2, ptr %.sroa.10.0..sroa_idx34, align 8
  tail call void @_ZN8rawspeed20AbstractLJpegDecoder8parseSOFENS_10ByteStreamEPNS_7SOFInfoE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %2, ptr noundef nonnull %i.r)
  br label %.critedge

bb.o:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  %i.ax = trunc nuw i8 %.sroa.1070.099 to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.q:                                             ; preds = %bb.o
  br i1 %.sroa.5.0101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ay = trunc nuw i8 %.sroa.7.0100 to i1
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder9decodeSOIEv) #15
  unreachable

bb.u:                                             ; preds = %bb.s
  store ptr %i.an, ptr %3, align 8
  %.sroa.8.sroa.9.0.insert.ext59 = zext i16 %i.aj to i64
  %.sroa.8.sroa.9.0.insert.shift60 = shl nuw nsw i64 %.sroa.8.sroa.9.0.insert.ext59, 32
  %.sroa.8.sroa.0.0.insert.insert51 = or disjoint i64 %.sroa.8.sroa.9.0.insert.shift60, %i.ap
  store i64 %.sroa.8.sroa.0.0.insert.insert51, ptr %.sroa.8.0..sroa_idx30, align 8
  store i32 2, ptr %.sroa.10.0..sroa_idx36, align 8
  tail call void @_ZN8rawspeed20AbstractLJpegDecoder8parseSOSENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull byval(%"class.rawspeed::ByteStream") align 8 %3)
  %i.az = load ptr, ptr %0, align 8, !tbaa !224
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(236) %0), !call_target !299
  br i1 %i.bc, label %.loopexit, label %.critedge

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
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.0.copyload.i.i.i.i.i.i.i24 = load i16, ptr %i.bd, align 1 ; 2 uses
  %i.be = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i.i24)
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ak, i16 %.0.copyload.i.i.i.i.i.i.i24, i16 %i.be
  store i16 %spec.select.i.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !257
  br label %.critedge

.critedge:                                        ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.u, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit, %bb.n, %bb.i
  %.sroa.1070.1 = phi i8 [ %.sroa.1070.099, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ 0, %bb.i ], [ 0, %bb.n ], [ 1, %bb.u ], [ %.sroa.1070.099, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.7.1 = phi i8 [ %.sroa.7.0100, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %.sroa.7.0100, %bb.i ], [ 1, %bb.n ], [ 1, %bb.u ], [ %.sroa.7.0100, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.5.1 = phi i1 [ %.sroa.5.0101, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ true, %bb.i ], [ %.sroa.5.0101, %bb.n ], [ true, %bb.u ], [ %.sroa.5.0101, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.068.1 = phi i1 [ %.sroa.068.0102, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %.sroa.068.0102, %bb.i ], [ %.sroa.068.0102, %bb.n ], [ %.sroa.068.0102, %bb.u ], [ true, %_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE.exit ]
  %.sroa.2.0.copyload.i12 = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.413.0.copyload.i14 = load i32, ptr %.sroa.413.0..sroa_idx.i, align 8 ; 3 uses
  %i.bf = icmp sgt i32 %.sroa.2.0.copyload.i12, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp uge i32 %.sroa.2.0.copyload.i12, %.sroa.413.0.copyload.i14
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = sub nuw nsw i32 %.sroa.2.0.copyload.i12, %.sroa.413.0.copyload.i14
  %i.bi = icmp samesign ugt i32 %i.bh, 1
  br i1 %i.bi, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i.i16, label %.loopexit.i15

.critedge7:                                       ; preds = %.split11.us.loopexit.i.i
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
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %.sroa.413.0.copyload = load i32, ptr %.sroa.413.0..sroa_idx, align 8 ; 5 uses
  %i.b = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp uge i32 %.sroa.2.0.copyload, %.sroa.413.0.copyload
  tail call void @llvm.assume(i1 %i.c)
  %i.d = sub nuw nsw i32 %.sroa.2.0.copyload, %.sroa.413.0.copyload
  %i.e = icmp samesign ugt i32 %i.d, 1
  br i1 %i.e, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i, label %.loopexit

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i: ; preds = %bb.a
  br i1 %1, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.split.us.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.split.us.i: ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i
  %invariant.op.i = add nsw i32 %.sroa.2.0.copyload, -1
  %i.f = zext nneg i32 %.sroa.413.0.copyload to i64 ; 2 uses
  %i.g = zext i32 %invariant.op.i to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 %i.f
  %.0.copyload.i.i.i.i.i.i.us.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !6024
  br label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i: ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.split.us.i
  %.0.copyload.i.i.i.i.i.i.us.i = phi i8 [ %.0.copyload.i.i.i.i.i10.i.us.i, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i ], [ %.0.copyload.i.i.i.i.i.i.us.pre.i, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.split.us.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i ], [ %i.f, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.split.us.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 %indvars.iv.next.i
  %.0.copyload.i.i.i.i.i10.i.us.i = load i8, ptr %i.h, align 1, !noalias !6024 ; 2 uses
  %i.i = icmp eq i8 %.0.copyload.i.i.i.i.i.i.us.i, -1
  %i.j = add i8 %.0.copyload.i.i.i.i.i10.i.us.i, -1
  %i.k = icmp ult i8 %i.j, -2
  %or.cond5.i.us.i = and i1 %i.i, %i.k
  br i1 %or.cond5.i.us.i, label %.split11.us.loopexit.i, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i

_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i
  %i.l = icmp samesign ult i64 %indvars.iv.next.i, %i.g
  br i1 %i.l, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i, label %.loopexit, !llvm.loop !3

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i:    ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.lr.ph.i
  %i.m = zext nneg i32 %.sroa.413.0.copyload to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 %i.m ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.n, align 1, !noalias !6024
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.0.copyload.i.i.i.i.i10.i.i = load i8, ptr %i.o, align 1, !noalias !6024
  %i.p = icmp eq i8 %.0.copyload.i.i.i.i.i.i.i, -1
  %i.q = add i8 %.0.copyload.i.i.i.i.i10.i.i, -1
  %i.r = icmp ult i8 %i.q, -2
  %or.cond5.i.i = and i1 %i.p, %i.r
  br i1 %or.cond5.i.i, label %_ZN8rawspeed19advanceToNextMarkerENS_10ByteStreamEb.exit, label %.loopexit

.split11.us.loopexit.i:                           ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.us.i
  %i.s = trunc nuw i64 %indvars.iv.i to i32
  br label %_ZN8rawspeed19advanceToNextMarkerENS_10ByteStreamEb.exit

_ZN8rawspeed19advanceToNextMarkerENS_10ByteStreamEb.exit: ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i, %.split11.us.loopexit.i
  %.sroa.02.sroa.6.0 = phi i32 [ %i.s, %.split11.us.loopexit.i ], [ %.sroa.413.0.copyload, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i ] ; 4 uses
  store i32 %.sroa.02.sroa.6.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.not.i.not.i.i.i.i.i = icmp ult i32 %.sroa.02.sroa.6.0, %.sroa.2.0.copyload
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN8rawspeed19advanceToNextMarkerENS_10ByteStreamEb.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZNK8rawspeed10ByteStream8peekByteEj.exit.i:      ; preds = %_ZN8rawspeed19advanceToNextMarkerENS_10ByteStreamEb.exit
  %i.t = add nuw nsw i32 %.sroa.02.sroa.6.0, 1    ; 2 uses
  %.not.i.not.i.i.i.i9.i = icmp samesign ult i32 %i.t, %.sroa.2.0.copyload
  br i1 %.not.i.not.i.i.i.i9.i, label %_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
  unreachable

_ZN8rawspeed10peekMarkerENS_10ByteStreamE.exit:   ; preds = %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 %i.u
  %.0.copyload.i.i.i.i.i10.i = load i8, ptr %i.v, align 1 ; 2 uses
  %i.w = add i8 %.0.copyload.i.i.i.i.i10.i, -1
  %i.x = icmp ult i8 %i.w, -2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i32 %.sroa.02.sroa.6.0, 2    ; 2 uses
  %i.z = icmp samesign ule i32 %i.y, %.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.z)
  store i32 %i.y, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !291
  ret i8 %.0.copyload.i.i.i.i.i10.i

.loopexit:                                        ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit.us.i, %bb.a, %_ZNK8rawspeed10ByteStream8peekByteEj.exit.i.i
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder13getNextMarkerEb) #15
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(236) %0, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.split:
  %2 = alloca %"class.rawspeed::PrefixCode", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::HuffmanCode", align 8 ; 16 uses
  %4 = alloca %"class.std::unique_ptr.83", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.91", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !5959 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = icmp sgt i32 %i.b, -1
  tail call void @llvm.assume(i1 %i.d)
  %.promoted = load i32, ptr %i.c, align 8, !tbaa !291 ; 3 uses
  %i.e = icmp uge i32 %i.b, %.promoted
  tail call void @llvm.assume(i1 %i.e)
  %.not130 = icmp eq i32 %i.b, %.promoted
  br i1 %.not130, label %._crit_edge131, label %_ZN8rawspeed10ByteStream7getByteEv.exit.lr.ph

_ZN8rawspeed10ByteStream7getByteEv.exit.lr.ph:    ; preds = %.split
  %i.f = load ptr, ptr %1, align 8, !tbaa !5960   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = zext nneg i32 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN8rawspeed10ByteStream7getByteEv.exit

_ZN8rawspeed10ByteStream7getByteEv.exit:          ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit.lr.ph, %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit
  %i.x = phi i32 [ %.promoted, %_ZN8rawspeed10ByteStream7getByteEv.exit.lr.ph ], [ %narrow, %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit ] ; 3 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  %.0.copyload.i.i.i.i.i.i = load i8, ptr %i.z, align 1 ; 3 uses
  %i.aa = add nuw nsw i32 %i.x, 1
  %.not36 = icmp ult i8 %.0.copyload.i.i.i.i.i.i, 16
  br i1 %.not36, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE) #15
  unreachable

bb.b:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit
  %.not37 = icmp samesign ult i8 %.0.copyload.i.i.i.i.i.i, 4
  br i1 %.not37, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = zext nneg i8 %.0.copyload.i.i.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !276
  %.not38 = icmp eq ptr %i.ad, null
  br i1 %.not38, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE) #15
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.ae = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 16
  %.not.i.i.i = icmp samesign ugt i64 %i.af, %i.h
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = add nuw nsw i32 %i.x, 17                ; 3 uses
  %i.ah = icmp samesign ule i32 %i.ag, %i.b
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ae
  %i.aj = invoke noundef i32 @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.ai, i32 16)
          to label %bb.i unwind label %.loopexit  ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp ugt i32 %i.aj, 17
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.32, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE) #15
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  unreachable

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.j, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.l:                                             ; preds = %bb.i
  %narrow = add nuw i32 %i.aj, %i.ag              ; 3 uses
  %.not.i.i.i48 = icmp ugt i32 %narrow, %i.b
  br i1 %.not.i.i.i48, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
          to label %.noexc51 unwind label %.loopexit.split-lp85

.noexc51:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.al
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.am, i32 %i.aj)
          to label %.preheader unwind label %.loopexit84

.preheader:                                       ; preds = %bb.n
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !274 ; 2 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !273 ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %.not39112 = icmp eq ptr %i.an, %i.ao
  br i1 %.not39112, label %._crit_edge, label %.lr.ph
end_hunk_0
