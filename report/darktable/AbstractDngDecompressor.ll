inline.NumInlined: 341
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed20AbstractLJpegDecoderD2Ev:bb.a
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !130

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN8rawspeed8RawImageD2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i ], [ %i.s, %_ZN8rawspeed8RawImageD2Ev.exit ] ; 2 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.v) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 152) #23
  br label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEEEclEPS6_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !158

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i, %_ZN8rawspeed8RawImageD2Ev.exit
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZN8rawspeed8RawImageD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !160
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #23
  br label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESA_EvT_SC_RSaIT0_E.exit.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !161 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !164 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.av, %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !165 ; 6 uses
  %.not.i.i.i.i.i.i5 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i5, label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !167 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !168
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i.i:    ; preds = %bb.j, %bb.i
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !169 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !171
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #23
  br label %_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 48) #23
  br label %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS4_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i3
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.av, %i.ag
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !172

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EEEvPT_.exit.i.i.i
  %.pr.i7 = load ptr, ptr %i.ad, align 8, !tbaa !161
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit
  %i.aw = phi ptr [ %.pr.i7, %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i8 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i1.i8, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !173
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23AbstractDngDecompressor16decompressThreadILi8EEEvv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.split:
  %1 = alloca %"class.std::unique_ptr.68", align 8 ; 5 uses
  %2 = alloca %"class.rawspeed::DeflateDecompressor", align 8 ; 7 uses
  %3 = alloca %"class.rawspeed::RawImage", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.48", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.48", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr null, ptr %1, align 8, !tbaa !174
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72                  ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %i.j = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = and i64 %i.h, 2147483647                 ; 2 uses
  %.idx = mul nuw nsw i64 %i.k, 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not39 = icmp eq i64 %i.k, 0
  br i1 %.not39, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.a

._crit_edge:                                      ; preds = %bb.y
  %.pre = load ptr, ptr %1, align 8, !tbaa !176   ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %.pre) #23
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %.split, %._crit_edge, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.y
  %.040 = phi ptr [ %i.b, %.lr.ph ], [ %i.db, %bb.y ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.t = getelementptr inbounds nuw i8, ptr %.040, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !177  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.040, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !178  ; 3 uses
  %i.x = icmp uge i32 %i.u, %i.w
  call void @llvm.assume(i1 %i.x)
  %i.y = icmp sgt i32 %i.u, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = sub nuw i32 %i.u, %i.w
  %i.aa = zext i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !179
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !113 ; 2 uses
  %i.af = load <2 x ptr>, ptr %0, align 8, !tbaa !180
  store <2 x ptr> %i.af, ptr %3, align 16, !tbaa !180
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !115
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !115
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %bb.a, %bb.c, %bb.d
  %i.al = load i32, ptr %i.o, align 4, !tbaa !181
  %i.am = load i32, ptr %i.p, align 8, !tbaa !21
  invoke void @_ZN8rawspeed19DeflateDecompressorC1ENS_6BufferENS_8RawImageEii(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr %i.ad, i32 %i.z, ptr noundef nonnull align 8 %3, i32 noundef %i.al, i32 noundef %i.am)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !113 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !116
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !118
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22, !call_target !121, !inline_history !128
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22, !call_target !129, !inline_history !128
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i25 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.ar, %bb.i ], [ %i.bb, %bb.j ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.k, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  %i.bd = load ptr, ptr %0, align 8, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 592
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !105 ; 3 uses
  %i.bg = load ptr, ptr %.040, align 8, !tbaa !106, !nonnull !110, !align !111 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !112
  %i.bj = mul i32 %i.bi, %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !182
  %i.bm = getelementptr inbounds nuw i8, ptr %.040, i64 60
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !148
  %i.bo = mul i32 %i.bn, %i.bf
  %i.bp = getelementptr inbounds nuw i8, ptr %.040, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !149
  %i.br = getelementptr inbounds nuw i8, ptr %.040, i64 52
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !146
  %i.bt = mul i32 %i.bs, %i.bf
  %i.bu = getelementptr inbounds nuw i8, ptr %.040, i64 56
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !147
  %.sroa.234.0.insert.ext = zext i32 %i.bl to i64
  %.sroa.234.0.insert.shift = shl nuw i64 %.sroa.234.0.insert.ext, 32
  %.sroa.033.0.insert.ext = zext i32 %i.bj to i64
  %.sroa.033.0.insert.insert = or disjoint i64 %.sroa.234.0.insert.shift, %.sroa.033.0.insert.ext
  %.sroa.232.0.insert.ext = zext i32 %i.bq to i64
  %.sroa.232.0.insert.shift = shl nuw i64 %.sroa.232.0.insert.ext, 32
  %.sroa.031.0.insert.ext = zext i32 %i.bo to i64
  %.sroa.031.0.insert.insert = or disjoint i64 %.sroa.232.0.insert.shift, %.sroa.031.0.insert.ext
  %.sroa.2.0.insert.ext = zext i32 %i.bv to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bt to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  invoke void @_ZN8rawspeed19DeflateDecompressor6decodeEPSt10unique_ptrIA_hSt14default_deleteIS2_EENS_8iPoint2DES7_S7_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i64 %.sroa.033.0.insert.insert, i64 %.sroa.031.0.insert.insert, i64 %.sroa.0.0.insert.insert)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !113 ; 8 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i26, label %_ZN8rawspeed19DeflateDecompressorD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bx, align 8, !tbaa !116
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !118
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !119
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #22, !call_target !121, !inline_history !183
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !119
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #22, !call_target !129, !inline_history !183
  br label %_ZN8rawspeed19DeflateDecompressorD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i27 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.p ], [ %i.ck, %bb.q ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.r, label %_ZN8rawspeed19DeflateDecompressorD2Ev.exit, !prof !130

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #22
  br label %_ZN8rawspeed19DeflateDecompressorD2Ev.exit

_ZN8rawspeed19DeflateDecompressorD2Ev.exit:       ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.y

bb.s:                                             ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.cm = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr null
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  br label %bb.u

bb.t:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.cn = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr null
  call void @_ZN8rawspeed19DeflateDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.t ], [ %i.cm, %bb.s ] ; 2 uses
  %.022 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  %.023 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.co = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE) #22
  %i.cp = icmp eq i32 %.023, %i.co
  br i1 %i.cp, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cq = call ptr @__cxa_begin_catch(ptr %.022) #22 ; 2 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !119
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef ptr %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #22, !call_target !132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %7)
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed23AbstractDngDecompressor16decompressThreadILi9EEEvv:bb.a
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.invoke

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.invoke, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.027, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %bb.g
  %i.an = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed11IOExceptionE) #22
  %i.ao = icmp eq i32 %.018, %i.an
  %i.ap = call ptr @__cxa_begin_catch(ptr %.017) #22
  call void @llvm.assume(i1 %i.ao)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ar = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  invoke void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %2, align 8, !tbaa !142   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.m
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.n
  %i.av = load i64, ptr %i.m, align 8, !tbaa !114
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.invoke, %bb.m, %bb.l, %bb.i, %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #24
  unreachable
}

declare void @_ZN8rawspeed15VC5DecompressorC1ENS_10ByteStreamERKNS_8RawImageE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef byval(%"class.rawspeed::ByteStream") align 8, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

declare void @_ZN8rawspeed15VC5Decompressor6decodeEjjjj(ptr noundef nonnull align 8 dereferenceable(1000), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed15VC5DecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(1000) dereferenceable(1000) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 808
  tail call void @_ZNSt5arrayIN8rawspeed15VC5Decompressor7WaveletELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @_ZNSt5arrayIN8rawspeed15VC5Decompressor7WaveletELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.c) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @_ZNSt5arrayIN8rawspeed15VC5Decompressor7WaveletELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.d) #22
  tail call void @_ZNSt5arrayIN8rawspeed15VC5Decompressor7WaveletELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(768) %i.a) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load i8, ptr %i.e, align 8, !tbaa !184, !range !151, !noundef !110
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN8rawspeed8OptionalINS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt22_Optional_payload_baseIN8rawspeed20PrefixCodeLUTDecoderINS0_10VC5CodeTagENS0_23PrefixCodeVectorDecoderIS2_EEEEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(136) %i.h) #22
  br label %_ZN8rawspeed8OptionalINS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEEED2Ev.exit

_ZN8rawspeed8OptionalINS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed9SimpleLUTIjLi12EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8rawspeed8OptionalINS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !168
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZN8rawspeed9SimpleLUTIjLi12EED2Ev.exit

_ZN8rawspeed9SimpleLUTIjLi12EED2Ev.exit:          ; preds = %_ZN8rawspeed8OptionalINS_20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS2_EEEEED2Ev.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8rawspeed9SimpleLUTIjLi12EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !118
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22, !call_target !121, !inline_history !128
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22, !call_target !129, !inline_history !128
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i1 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !130

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %_ZN8rawspeed9SimpleLUTIjLi12EED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23AbstractDngDecompressor16decompressThreadILi34892EEEvv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.split:
  %1 = alloca %"class.rawspeed::JpegDecompressor", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.48", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.48", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72                  ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %i.j = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = and i64 %i.h, 2147483647                 ; 2 uses
  %.idx = mul nuw nsw i64 %i.k, 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not32 = icmp eq i64 %i.k, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %bb.p, %.split
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.p
  %.033 = phi ptr [ %i.b, %.lr.ph ], [ %i.br, %bb.p ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.r = getelementptr inbounds nuw i8, ptr %.033, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !177  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.033, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !178  ; 3 uses
  %i.v = icmp uge i32 %i.s, %i.u
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp sgt i32 %i.s, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = sub nuw i32 %i.s, %i.u
  %i.y = zext i32 %i.u to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !113 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %0, align 8, !tbaa !180
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !115
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !115
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.d, %bb.c, %bb.a
  store ptr %i.ab, ptr %1, align 8, !tbaa !176
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !115
  store <2 x ptr> %i.ad, ptr %i.n, align 8, !tbaa !180
  %i.aj = getelementptr inbounds nuw i8, ptr %.033, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !146
  %i.al = getelementptr inbounds nuw i8, ptr %.033, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !147
  invoke void @_ZN8rawspeed16JpegDecompressor6decodeEjj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ak, i32 noundef %i.am)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !113 ; 8 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i22, label %_ZN8rawspeed16JpegDecompressorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !116
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !118
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22, !call_target !121, !inline_history !186
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22, !call_target !129, !inline_history !186
  br label %_ZN8rawspeed16JpegDecompressorD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i23 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.i ], [ %i.bb, %bb.j ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.k, label %_ZN8rawspeed16JpegDecompressorD2Ev.exit, !prof !130

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #22
  br label %_ZN8rawspeed16JpegDecompressorD2Ev.exit

_ZN8rawspeed16JpegDecompressorD2Ev.exit:          ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.p

bb.l:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed19RawDecoderExceptionE
          catch ptr @_ZTIN8rawspeed11IOExceptionE
          catch ptr null                          ; 2 uses
  call void @_ZN8rawspeed16JpegDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #22
  %.018 = extractvalue { ptr, i32 } %i.bd, 0      ; 2 uses
  %.019 = extractvalue { ptr, i32 } %i.bd, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE) #22
  %i.bf = icmp eq i32 %.019, %i.be
  br i1 %i.bf, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @__cxa_begin_catch(ptr %.018) #22 ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !119
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #22, !call_target !132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  invoke void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %4, align 8, !tbaa !142   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.q
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bp = load i64, ptr %i.q, align 8, !tbaa !114
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.invoke

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.invoke, %_ZN8rawspeed16JpegDecompressorD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.033, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.l
  br i1 %.not, label %._crit_edge, label %bb.a

bb.q:                                             ; preds = %bb.l
  %i.bs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed11IOExceptionE) #22
  %i.bt = icmp eq i32 %.019, %i.bs
  %i.bu = call ptr @__cxa_begin_catch(ptr %.018) #22
  call void @llvm.assume(i1 %i.bt)
  %i.bv = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bw = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  invoke void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %2, align 8, !tbaa !142   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.p
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.s
  %i.ca = load i64, ptr %i.p, align 8, !tbaa !114
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.invoke: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.invoke, %bb.r, %bb.q, %bb.n, %bb.m
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #24
  unreachable
}

declare void @_ZN8rawspeed16JpegDecompressor6decodeEjj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed16JpegDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !116
end_hunk_1
