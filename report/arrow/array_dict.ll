Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_dict?download=true
inline.NumInlined: 10069
inline.NumDeleted: 2207
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DictionaryUnifierImplINS_13HalfFloatTypeEE22GetResultWithIndexTypeERKSt10shared_ptrINS_8DataTypeEEPS4_INS_5ArrayEE:bb.a
  %.pn15 = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ad, %bb.i ], [ %.pn12, %bb.as ], [ %i.ak, %bb.n ]
  call void @_ZN5arrow6ScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn15
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEEE, i64 16), ptr %0, align 8, !tbaa !148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !159
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3277
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3277
  br label %_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEED2Ev.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEED2Ev.exit

_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEEE, i64 16), ptr %0, align 8, !tbaa !148
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !159
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !53
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !53
  br label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !568
  br label %_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit

_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !338
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !340
  %i.f = icmp ne i32 %i.e, -1
  %i.g = zext i1 %i.f to i32
  %i.h = add nsw i32 %i.g, %i.c
  ret i32 %i.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow18TypedBufferBuilderINS_8internal9HashTableINS1_15ScalarMemoTableINS_4util7Float16ES2_E7PayloadEE5EntryEvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow13BufferBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !159
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !39
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !148
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !39
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !73
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow13BufferBuilderD2Ev.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZN5arrow13BufferBuilderD2Ev.exit

_ZN5arrow13BufferBuilderD2Ev.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal15ScalarMemoTableINS_4util7Float16ENS0_9HashTableEE11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNS8_ItEES9_SB_SC_EUliE0_EES9_SB_OT0_OT1_SC_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load i16, ptr %2, align 2, !tbaa !145
  %i.b = uitofp i16 %i.a to double
  %i.c = tail call i16 @_ZN5arrow4util7Float1610FromDoubleEd(double noundef %i.b)
  %.sroa.01.0.copyload.i.i.fr.i.i = freeze i16 %i.c ; 6 uses
  %.sroa.7.0.extract.shift = lshr i16 %.sroa.01.0.copyload.i.i.fr.i.i, 8
  %i.d = and i16 %.sroa.01.0.copyload.i.i.fr.i.i, 255
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 16
  %7 = zext nneg i16 %.sroa.7.0.extract.shift to i64 ; 2 uses
  %i.g = shl nuw nsw i64 %7, 8
  %i.h = or disjoint i64 %i.f, %i.g
  %.masked.i.i.i = or disjoint i64 %i.h, %7
  %i.i = mul i64 %.masked.i.i.i, -7046029288634856825
  %i.j = add i64 %i.i, 7137035069683662848        ; 2 uses
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !339  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !337  ; 2 uses
  %i.q = icmp eq i64 %i.j, 0
  %i.r = select i1 %i.q, i64 42, i64 %i.k         ; 7 uses
  %i.s = and i16 %.sroa.01.0.copyload.i.i.fr.i.i, 32767
  %i.t = icmp samesign ugt i16 %i.s, 31744
  br i1 %i.t, label %.split18.us.i.i, label %.split18.i.i

.split18.us.i.i:                                  ; preds = %bb.a, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i
  %.pn.us.i.i = phi i64 [ %i.ab, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i ], [ %i.r, %bb.a ]
  %.0.in.in.us.i.i = phi i64 [ %.0.us.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i ], [ %i.r, %bb.a ]
  %storemerge.us.i.i = and i64 %.pn.us.i.i, %i.p  ; 4 uses
  %.0.in.us.i.i = lshr i64 %.0.in.in.us.i.i, 5
  %.0.us.i.i = add nuw nsw i64 %.0.in.us.i.i, 1   ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %storemerge.us.i.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !572  ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.r
  br i1 %i.w, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.us.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.us.i.i: ; preds = %.split18.us.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i.us.i.i = load i16, ptr %i.x, align 8, !tbaa !145
  %i.y = and i16 %.sroa.0.0.copyload.i.i.us.i.i, 32767
  %i.z = icmp samesign ugt i16 %i.y, 31744
  br i1 %i.z, label %.loopexit, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.us.i.i, %.split18.us.i.i
  %i.aa = icmp eq i64 %i.v, 0
  %i.ab = add i64 %.0.us.i.i, %storemerge.us.i.i
  br i1 %i.aa, label %.loopexit40, label %.split18.us.i.i, !llvm.loop !3278

.split18.i.i:                                     ; preds = %bb.a, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i
  %.pn.i.i = phi i64 [ %i.am, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i ], [ %i.r, %bb.a ]
  %.0.in.in.i.i = phi i64 [ %.0.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i ], [ %i.r, %bb.a ]
  %storemerge.i.i = and i64 %.pn.i.i, %i.p        ; 5 uses
  %.0.in.i.i = lshr i64 %.0.in.in.i.i, 5
  %.0.i.i = add nuw nsw i64 %.0.in.i.i, 1         ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %storemerge.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !572 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.r
  br i1 %i.ae, label %bb.b, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i

bb.b:                                             ; preds = %.split18.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.af, align 8, !tbaa !145 ; 3 uses
  %i.ag = and i16 %.sroa.0.0.copyload.i.i.i.i, 32767
  %i.ah = icmp samesign ugt i16 %i.ag, 31744
  br i1 %i.ah, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = icmp eq i16 %.sroa.01.0.copyload.i.i.fr.i.i, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.ai, label %.loopexit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.aj = or i16 %.sroa.0.0.copyload.i.i.i.i, %.sroa.01.0.copyload.i.i.fr.i.i
  %i.ak = and i16 %i.aj, 32767
  %spec.select.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %spec.select.i.i.i.i.i.i, label %.loopexit, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i: ; preds = %.split.i.i, %bb.b, %.split18.i.i
  %i.al = icmp eq i64 %i.ad, 0
  %i.am = add i64 %.0.i.i, %storemerge.i.i
  br i1 %i.al, label %.loopexit40, label %.split18.i.i, !llvm.loop !3278

.loopexit:                                        ; preds = %.split.i.i, %bb.c, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.us.i.i
  %.us-phi.i.i.ph = phi i64 [ %storemerge.us.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.us.i.i ], [ %storemerge.i.i, %bb.c ], [ %storemerge.i.i, %.split.i.i ]
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.us-phi.i.i.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !573
  br label %_ZN5arrow6StatusD2Ev.exit22

.loopexit40:                                      ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i
  %.us-phi.i.i = phi i64 [ %storemerge.us.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.us.i.i ], [ %storemerge.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE12CompareEntryILNS7_11CompareKindE0ERZNS5_11GetOrInsertIRtZNS5_11GetOrInsertItEENS_6StatusEOT_PiEUliE_ZNSC_ItEESD_SF_SG_EUliE0_EESD_SF_OT0_OT1_SG_EUlPKS6_E_EEbmPKNS7_5EntryESK_.exit.thread17.i.i ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.us-phi.i.i ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !148
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(100) %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i64 %i.r, ptr %i.aq, align 8, !tbaa !572, !noalias !3283
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.523.0.insert.ext = zext i32 %i.au to i64
  %.sroa.523.0.insert.shift = shl nuw i64 %.sroa.523.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i16 %.sroa.01.0.copyload.i.i.fr.i.i to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.523.0.insert.shift, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.av, align 8, !noalias !3283
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !338, !noalias !3283
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !338, !noalias !3283
  %i.az = shl i64 %i.ay, 1
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !336, !noalias !3283 ; 2 uses
  %.not.i = icmp ult i64 %i.az, %i.ba
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit, !prof !155

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.loopexit40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit22

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit40
  %i.bb = shl i64 %i.ba, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableINS_4util7Float16ES1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %i.l, i64 noundef %i.bb)
  %.pr = load ptr, ptr %6, align 8, !tbaa !176    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bc = icmp eq ptr %.pr, null
  br i1 %i.bc, label %_ZN5arrow6StatusD2Ev.exit22, label %.critedge

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit, %.loopexit
  %.017 = phi i32 [ %i.ap, %.loopexit ], [ %i.au, %_ZN5arrow6StatusD2Ev.exit ], [ %i.au, %_ZN5arrow6StatusD2Ev.exit.thread ]
  store i32 %.017, ptr %5, align 4, !tbaa !73
  store ptr null, ptr %0, align 8, !tbaa !176, !alias.scope !3284
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit22
  ret void
}

declare i16 @_ZN5arrow4util7Float1610FromDoubleEd(double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc noundef i64 @_ZL33XXH_INLINE_XXH3_64bits_withSecretPKvmS0_m(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 17, -9223372036854775808) %1) unnamed_addr #19 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 129
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %1, -7046029288634856825         ; 4 uses
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.c, label %_ZL20XXH3_len_17to128_64bPKhmS0_mm.exit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %1, 64
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i64 %1, 96
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val35 = load i64, ptr %i.f, align 1, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val34 = load i64, ptr %i.g, align 1, !tbaa !144
  %i.h = xor i64 %.val35, 3143464798449648245
  %i.i = xor i64 %.val34, -4522152808483500682
  %i.j = zext i64 %i.h to i128
  %i.k = zext i64 %i.i to i128
  %i.l = mul nuw i128 %i.k, %i.j                  ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = xor i128 %i.m, %i.l
  %i.o = trunc i128 %i.n to i64
  %i.p = add i64 %i.b, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -64
  %.val39 = load i64, ptr %i.r, align 1, !tbaa !144
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -56
  %.val38 = load i64, ptr %i.s, align 1, !tbaa !144
  %i.t = xor i64 %.val39, -8287479197521448485
  %i.u = xor i64 %.val38, 6010798633698151305
  %i.v = zext i64 %i.t to i128
  %i.w = zext i64 %i.u to i128
  %i.x = mul nuw i128 %i.w, %i.v                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  %i.ab = add i64 %i.p, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i3 = phi i64 [ %i.ab, %bb.e ], [ %i.b, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val27 = load i64, ptr %i.ac, align 1, !tbaa !144
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val26 = load i64, ptr %i.ad, align 1, !tbaa !144
  %i.ae = xor i64 %.val27, 3163442944536675255
  %i.af = xor i64 %.val26, 6658782792668858144
  %i.ag = zext i64 %i.ae to i128
  %i.ah = zext i64 %i.af to i128
  %i.ai = mul nuw i128 %i.ah, %i.ag               ; 2 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = xor i128 %i.aj, %i.ai
  %i.al = trunc i128 %i.ak to i64
  %i.am = add i64 %.0.i3, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -48
  %.val31 = load i64, ptr %i.ao, align 1, !tbaa !144
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -40
  %.val30 = load i64, ptr %i.ap, align 1, !tbaa !144
  %i.aq = xor i64 %.val31, -7494073473234154142
  %i.ar = xor i64 %.val30, 5490655083635166292
  %i.as = zext i64 %i.aq to i128
  %i.at = zext i64 %i.ar to i128
  %i.au = mul nuw i128 %i.at, %i.as               ; 2 uses
end_hunk_0
