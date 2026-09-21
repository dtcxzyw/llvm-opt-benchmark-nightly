Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NativeInlineSiteSymbol?download=true
inline.NumInlined: 1339
inline.NumDeleted: 698
begin_hunk_0_@_ZN4llvm8codeview16TypeDeserializer13deserializeAsINS0_18MemberFuncIdRecordEEENS_5ErrorERNS0_8CVRecordINS0_12TypeLeafKindEEERT_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.i, label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit, !prof !25

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !90
  br label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit

_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit: ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8codeview16TypeDeserializer13deserializeAsINS0_12FuncIdRecordEEENS_5ErrorERNS0_8CVRecordINS0_12TypeLeafKindEEERT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::codeview::TypeDeserializer::MappingInfo", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = icmp ult i64 %i.b, 4
  %.pre = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  br i1 %i.c, label %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.d, align 1
  br label %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit

_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i16 [ %.0.copyload.i.i.i.i, %bb.b ], [ 0, %bb.a ]
  store i16 %.0.i, ptr %2, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.e = add i64 %i.b, -4
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm16BinaryByteStreamE, i64 16), ptr %3, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @_ZN4llvm18BinaryStreamReaderC1ERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %3) #14
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 352) (i8, ptr @_ZTVN4llvm8codeview17TypeRecordMappingE, i64 16), ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 106
  store i8 0, ptr %i.k, align 2, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 110
  store i8 0, ptr %i.l, align 2, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i32 0, ptr %i.o, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 124
  store i32 2, ptr %i.p, align 4, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr %i.i, ptr %i.q, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  call void @_ZN4llvm8codeview17TypeRecordMapping14visitTypeBeginERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  %i.s = load ptr, ptr %0, align 8, !tbaa !55
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit
  call void @_ZN4llvm8codeview17TypeRecordMapping16visitKnownRecordERNS0_8CVRecordINS0_12TypeLeafKindEEERNS0_12FuncIdRecordE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %i.t = load ptr, ptr %0, align 8, !tbaa !55
  %.not25 = icmp eq ptr %i.t, null
  br i1 %.not25, label %_ZN4llvm5ErrorD2Ev.exit21, label %.critedge

_ZN4llvm5ErrorD2Ev.exit21:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @_ZN4llvm8codeview17TypeRecordMapping12visitTypeEndERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit21, %_ZN4llvm5ErrorD2Ev.exit, %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 352) (i8, ptr @_ZTVN4llvm8codeview17TypeRecordMappingE, i64 16), ptr %i.j, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !70   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.u) #14
  br label %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i

_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i:  ; preds = %bb.c, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %i.i, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.y, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !88
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !1
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !1
  br label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.i, label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit, !prof !25

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !90
  br label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit

_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit: ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0133 = alloca i64, align 8               ; 18 uses
  %.sroa.0113 = alloca i64, align 8               ; 13 uses
  %4 = alloca %"struct.llvm::codeview::BinaryAnnotationIterator", align 8 ; 12 uses
  store i32 0, ptr %2, align 4, !tbaa !89
  store i32 0, ptr %3, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0133)
  %.sroa.0133.4..sroa_idx237 = getelementptr inbounds nuw i8, ptr %.sroa.0133, i64 4
  store i8 0, ptr %.sroa.0133.4..sroa_idx237, align 4, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0113)
  %.sroa.0113.4..sroa_idx234 = getelementptr inbounds nuw i8, ptr %.sroa.0113, i64 4
  store i8 0, ptr %.sroa.0113.4..sroa_idx234, align 4, !tbaa !168
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24, !noalias !169 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23, !noalias !169 ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !92, !alias.scope !170
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.i, align 8, !tbaa !27
  %.sroa.559.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 %i.g, ptr %.sroa.559.56..sroa_idx, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !170
  %.not.i.i.i.i179 = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i179, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.0133.4..sroa_idx238 = getelementptr inbounds nuw i8, ptr %.sroa.0133, i64 4
  %.sroa.0133.4..sroa_idx239 = getelementptr inbounds nuw i8, ptr %.sroa.0133, i64 4
  %.sroa.0113.4..sroa_idx235 = getelementptr inbounds nuw i8, ptr %.sroa.0113, i64 4
  %.sroa.0133.4..sroa_idx240 = getelementptr inbounds nuw i8, ptr %.sroa.0133, i64 4
  %.sroa.0113.4..sroa_idx236 = getelementptr inbounds nuw i8, ptr %.sroa.0113, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117226, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 4 uses
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141224, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 6 uses
  %.sroa.0109.0 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.sroa.7.0189 = phi i1 [ false, %.lr.ph ], [ %.sroa.7.5.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.sroa.0.0 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0106.1, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.0185 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0108.1, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 12 uses
  %.sroa.7.0184 = phi i1 [ false, %.lr.ph ], [ %.sroa.5.3.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 12 uses
  %.sroa.0106.0183 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0111.5.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.sroa.8.0180 = phi i8 [ 0, %.lr.ph ], [ %.sroa.8.5.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %i.o = call noundef zeroext i1 @_ZN4llvm8codeview24BinaryAnnotationIterator22ParseCurrentAnnotationEv(ptr noundef nonnull align 8 dereferenceable(88) %4) ; 0 uses
  %i.p = load i32, ptr %i.k, align 8, !tbaa !174
  switch i32 %i.p, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" [
    i32 1, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.f
    i32 12, label %bb.i
    i32 6, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit"
    i32 11, label %bb.n
    i32 5, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.q = load i32, ptr %i.l, align 4, !tbaa !175  ; 2 uses
  %i.r = add i32 %i.q, %.sroa.0109.0              ; 3 uses
  %i.s = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.s, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.t, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.134 = load i32, ptr %.sroa.0133, align 8, !tbaa !89
  %i.u = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.134, %i.q
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.e
  %.sink8.i = phi i32 [ %i.u, %bb.e ], [ %i.r, %bb.c ]
  %.sink.i = phi ptr [ %.sroa.0113, %bb.e ], [ %.sroa.0133, %bb.c ]
  %.sroa.0.0.insert.ext.i = zext i32 %.sink8.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sink.i, align 8
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.f:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.l, align 4, !tbaa !175
  %i.w = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.w, label %bb.g, label %.sink.split.i24

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.x, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.135 = load i32, ptr %.sroa.0133, align 8, !tbaa !89
  %i.y = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.135, %i.v
  br label %.sink.split.i24

.sink.split.i24:                                  ; preds = %bb.f, %bb.h
  %.sink8.i25 = phi i32 [ %i.y, %bb.h ], [ %.sroa.0109.0, %bb.f ]
  %.sink.i26 = phi ptr [ %.sroa.0113, %bb.h ], [ %.sroa.0133, %bb.f ]
  %.sroa.0.0.insert.ext.i27 = zext i32 %.sink8.i25 to i64
  %.sroa.0.0.insert.insert.i28 = or disjoint i64 %.sroa.0.0.insert.ext.i27, 4294967296
  store i64 %.sroa.0.0.insert.insert.i28, ptr %.sink.i26, align 8
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.i:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.n, align 8, !tbaa !176  ; 2 uses
  %i.aa = add i32 %i.z, %.sroa.0109.0             ; 4 uses
  %i.ab = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.ab, label %bb.j, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35"

bb.j:                                             ; preds = %bb.i
  %i.ac = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.ac, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread", label %bb.k

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread": ; preds = %bb.j
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !175
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.136 = load i32, ptr %.sroa.0133, align 8, !tbaa !89
  %i.ae = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.136, %i.z
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35": ; preds = %bb.k, %bb.i
  %.sink8.i31 = phi i32 [ %i.ae, %bb.k ], [ %i.aa, %bb.i ]
  %.sink.i32 = phi ptr [ %.sroa.0113, %bb.k ], [ %.sroa.0133, %bb.i ]
  %.sroa.0.0.insert.ext.i33 = zext i32 %.sink8.i31 to i64
  %.sroa.0.0.insert.insert.i34 = or disjoint i64 %.sroa.0.0.insert.ext.i33, 4294967296
  store i64 %.sroa.0.0.insert.insert.i34, ptr %.sink.i32, align 8
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.147.pre = load i8, ptr %.sroa.0133.4..sroa_idx239, align 4, !tbaa !168
  %i.af = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.147.pre to i1
  %i.ag = load i32, ptr %i.l, align 4, !tbaa !175
  br i1 %i.af, label %bb.l, label %.sink.split.i36

bb.l:                                             ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35"
  %i.ah = phi i32 [ %i.ad, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread" ], [ %i.ag, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35" ]
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4.123 = load i8, ptr %.sroa.0113.4..sroa_idx235, align 4, !tbaa !168
  %i.ai = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4.123 to i1
  br i1 %i.ai, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.137 = load i32, ptr %.sroa.0133, align 8, !tbaa !89
  %i.aj = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.137, %i.ah
  br label %.sink.split.i36

.sink.split.i36:                                  ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35", %bb.m
  %.sink8.i37 = phi i32 [ %i.aj, %bb.m ], [ %i.aa, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35" ]
  %.sink.i38 = phi ptr [ %.sroa.0113, %bb.m ], [ %.sroa.0133, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35" ]
  %.sroa.0.0.insert.ext.i39 = zext i32 %.sink8.i37 to i64
  %.sroa.0.0.insert.insert.i40 = or disjoint i64 %.sroa.0.0.insert.ext.i39, 4294967296
  store i64 %.sroa.0.0.insert.insert.i40, ptr %.sink.i38, align 8
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit": ; preds = %bb.b
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !177
  %i.al = load i32, ptr %2, align 4, !tbaa !89
  %i.am = add i32 %i.al, %i.ak                    ; 3 uses
  store i32 %i.am, ptr %2, align 4, !tbaa !89
  %i.an = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  %i.ao = trunc nuw i8 %.sroa.8.0180 to i1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else", label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else": ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit"
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.n:                                             ; preds = %bb.b
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !175 ; 2 uses
  %i.ar = add i32 %i.aq, %.sroa.0109.0            ; 3 uses
  %i.as = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.as, label %bb.o, label %.sink.split.i43

bb.o:                                             ; preds = %bb.n
  %i.at = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.at, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48", label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.138 = load i32, ptr %.sroa.0133, align 8, !tbaa !89
  %i.au = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.138, %i.aq
  br label %.sink.split.i43

.sink.split.i43:                                  ; preds = %bb.n, %bb.p
  %.sink8.i44 = phi i32 [ %i.au, %bb.p ], [ %i.ar, %bb.n ]
  %.sink.i45 = phi ptr [ %.sroa.0113, %bb.p ], [ %.sroa.0133, %bb.n ]
  %.sroa.0.0.insert.ext.i46 = zext i32 %.sink8.i44 to i64
  %.sroa.0.0.insert.insert.i47 = or disjoint i64 %.sroa.0.0.insert.ext.i46, 4294967296
  store i64 %.sroa.0.0.insert.insert.i47, ptr %.sink.i45, align 8
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.153.pre = load i8, ptr %.sroa.0133.4..sroa_idx238, align 4, !tbaa !168
  %i.av = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.153.pre to i1
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48": ; preds = %bb.o, %.sink.split.i43
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4.153 = phi i1 [ true, %bb.o ], [ %i.av, %.sink.split.i43 ]
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !177
  %i.ax = load i32, ptr %2, align 4, !tbaa !89
  %i.ay = add i32 %i.ax, %i.aw                    ; 3 uses
  store i32 %i.ay, ptr %2, align 4, !tbaa !89
  %i.az = trunc nuw i8 %.sroa.8.0180 to i1
  %i.ba = select i1 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.153, i1 %i.az, i1 false
  br i1 %i.ba, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else", label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else": ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48"
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.q:                                             ; preds = %bb.b
  %i.bb = load i32, ptr %i.l, align 4, !tbaa !175 ; 2 uses
  %i.bc = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.bc, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bb, ptr %3, align 4, !tbaa !89
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit": ; preds = %bb.q, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit", %bb.r, %.sink.split.i36, %bb.l, %.sink.split.i24, %bb.g, %.sink.split.i, %bb.d, %bb.b
  %.sroa.8.1 = phi i8 [ %.sroa.8.0180, %bb.b ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ], [ %.sroa.8.0180, %.sink.split.i ], [ %.sroa.8.0180, %.sink.split.i24 ], [ %.sroa.8.0180, %.sink.split.i36 ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.8.0180, %bb.d ], [ %.sroa.8.0180, %bb.g ], [ %.sroa.8.0180, %bb.l ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.8.0180, %bb.r ], [ %.sroa.8.0180, %bb.q ] ; 2 uses
  %.sroa.0.1.a = phi i32 [ %.sroa.0106.0183, %bb.b ], [ %i.ay, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ], [ %.sroa.0106.0183, %.sink.split.i ], [ %.sroa.0106.0183, %.sink.split.i24 ], [ %.sroa.0106.0183, %.sink.split.i36 ], [ %i.am, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.0106.0183, %bb.d ], [ %.sroa.0106.0183, %bb.g ], [ %.sroa.0106.0183, %bb.l ], [ %.sroa.0106.0183, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %.sroa.0106.0183, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.0106.0183, %bb.r ], [ %.sroa.0106.0183, %bb.q ] ; 4 uses
  %.sroa.5.1 = phi i1 [ %.sroa.7.0184, %bb.b ], [ %.sroa.7.0184, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ], [ %.sroa.7.0184, %.sink.split.i ], [ %.sroa.7.0184, %.sink.split.i24 ], [ %.sroa.7.0184, %.sink.split.i36 ], [ %.sroa.7.0184, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.7.0184, %bb.d ], [ %.sroa.7.0184, %bb.g ], [ %.sroa.7.0184, %bb.l ], [ %.sroa.7.0184, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %.sroa.7.0184, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.7.0184, %bb.r ], [ true, %bb.q ] ; 3 uses
  %.sroa.0108.1 = phi i32 [ %.0185, %bb.b ], [ %.0185, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ], [ %.0185, %.sink.split.i ], [ %.0185, %.sink.split.i24 ], [ %.0185, %.sink.split.i36 ], [ %.0185, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.0185, %bb.d ], [ %.0185, %bb.g ], [ %.0185, %bb.l ], [ %.0185, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %.0185, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.0185, %bb.r ], [ %i.bb, %bb.q ] ; 3 uses
  %.sroa.0106.1 = phi i32 [ %.sroa.0.0, %bb.b ], [ %.sroa.0.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ], [ %.sroa.0.0, %.sink.split.i ], [ %.sroa.0.0, %.sink.split.i24 ], [ %.sroa.0.0, %.sink.split.i36 ], [ %.sroa.0.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.0.0, %bb.d ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.l ], [ %i.ay, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %i.am, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.q ] ; 2 uses
  %.sroa.7.1 = phi i1 [ %.sroa.7.0189, %bb.b ], [ %.sroa.7.0189, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ], [ %.sroa.7.0189, %.sink.split.i ], [ %.sroa.7.0189, %.sink.split.i24 ], [ %.sroa.7.0189, %.sink.split.i36 ], [ %.sroa.7.0189, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.7.0189, %bb.d ], [ %.sroa.7.0189, %bb.g ], [ %.sroa.7.0189, %bb.l ], [ true, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ true, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.7.0189, %bb.r ], [ %.sroa.7.0189, %bb.q ] ; 3 uses
  %.1 = phi i32 [ %.sroa.0109.0, %bb.b ], [ %i.ar, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ], [ %i.r, %.sink.split.i ], [ %.sroa.0109.0, %.sink.split.i24 ], [ %i.aa, %.sink.split.i36 ], [ %.sroa.0109.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %i.r, %bb.d ], [ %.sroa.0109.0, %bb.g ], [ %i.aa, %bb.l ], [ %i.ar, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %.sroa.0109.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.0109.0, %bb.r ], [ %.sroa.0109.0, %bb.q ]
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4. = load i8, ptr %.sroa.0133.4..sroa_idx240, align 4, !tbaa !168 ; 2 uses
  %i.bd = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4. to i1
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4. = load i8, ptr %.sroa.0113.4..sroa_idx236, align 4 ; 2 uses
  %i.be = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4. to i1
  %or.cond = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.s, label %bb.x

bb.s:                                             ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"
  %i.bf = trunc nuw i8 %.sroa.8.1 to i1
  br i1 %i.bf, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0. = load i32, ptr %.sroa.0133, align 8
  %.not.i = icmp ule i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0., %1
  %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0. = load i32, ptr %.sroa.0113, align 8
  %i.bg = icmp ult i32 %1, %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.
  %or.cond174 = select i1 %.not.i, i1 %i.bg, i1 false
  br i1 %or.cond174, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_3clEv.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.sroa.5.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %.sroa.0108.1, ptr %3, align 4, !tbaa !89
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %spec.select = select i1 %.sroa.7.1, i32 %.sroa.0106.1, i32 %.sroa.0.1.a
  %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.114 = load i64, ptr %.sroa.0113, align 8 ; 2 uses
  store i64 %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.114, ptr %.sroa.0133, align 8
  %.sroa.0106.0.insert.ext = zext i32 %.sroa.0108.1 to i64
  store i64 %.sroa.0106.0.insert.ext, ptr %.sroa.0113, align 8
  %i.bh = lshr i64 %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.114, 32
  %i.bi = trunc i64 %i.bh to i8
  br label %bb.x

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_3clEv.exit": ; preds = %bb.t
  store i32 %.sroa.0.1.a, ptr %2, align 4, !tbaa !89
  br label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit

bb.x:                                             ; preds = %bb.w, %bb.s, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117226 = phi i8 [ %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4., %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ], [ 0, %bb.w ], [ 1, %bb.s ]
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141224 = phi i8 [ %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4., %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ], [ %i.bi, %bb.w ], [ 1, %bb.s ]
  %.sroa.8.5.ph = phi i8 [ %.sroa.8.1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ], [ 1, %bb.w ], [ 0, %bb.s ]
  %.sroa.0111.5.ph = phi i32 [ %.sroa.0.1.a, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ], [ %spec.select, %bb.w ], [ %.sroa.0.1.a, %bb.s ]
  %.sroa.5.3.ph = phi i1 [ %.sroa.5.1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ], [ false, %bb.w ], [ %.sroa.5.1, %bb.s ]
  %.sroa.7.5.ph = phi i1 [ %.sroa.7.1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ], [ false, %bb.w ], [ %.sroa.7.1, %bb.s ]
  %i.bj = call noundef zeroext i1 @_ZN4llvm8codeview24BinaryAnnotationIterator22ParseCurrentAnnotationEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  br i1 %i.bj, label %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit

_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %.sroa.22.0.copyload.i.i.pre = load i64, ptr %.sroa.559.56..sroa_idx, align 8, !tbaa !56
  %i.bk = icmp eq i64 %.sroa.22.0.copyload.i.i.pre, 0
  br i1 %i.bk, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit, label %bb.b

_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit: ; preds = %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit, %bb.x, %bb.a, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_3clEv.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0113)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0133)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3pdb22NativeInlineSiteSymbol20findInlineeLinesByVAEmj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.216") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::vector.255", align 8   ; 8 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.269, align 1            ; 3 uses
  %8 = alloca %"class.llvm::VarStreamArray.230", align 16 ; 8 uses
  %9 = alloca %"class.llvm::VarStreamArrayIterator.289", align 8 ; 12 uses
  %10 = alloca %"class.llvm::VarStreamArrayIterator.289", align 8 ; 11 uses
  %11 = alloca %"class.llvm::codeview::DebugInlineeLinesSubsectionRef", align 8 ; 9 uses
  %12 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 8 uses
  %13 = alloca %"class.llvm::BinaryStreamRef", align 8 ; 5 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %15 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 9 uses
  %16 = alloca %"class.llvm::VarStreamArrayIterator.292", align 8 ; 12 uses
  %17 = alloca %"class.llvm::VarStreamArrayIterator.292", align 8 ; 13 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %20 = alloca %class.anon.269, align 1           ; 3 uses
  %21 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %22 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %23 = alloca %class.anon.269, align 1           ; 3 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %24 = alloca %"class.llvm::Expected.224", align 8 ; 13 uses
  %25 = alloca %"class.llvm::Expected.232", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %26 = alloca %"class.llvm::VarStreamArrayIterator", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %27 = alloca %"class.llvm::pdb::NativeLineNumber", align 8 ; 5 uses
  %28 = alloca %"class.std::unique_ptr.247", align 8 ; 4 uses
  %29 = alloca [1 x %"class.llvm::pdb::NativeLineNumber"], align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49, !nonnull !50, !align !51
  %i.h = call noundef zeroext i1 @_ZNK4llvm3pdb13NativeSession16moduleIndexForVAEmRt(ptr noundef nonnull align 8 dereferenceable(832) %i.g, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %i.a) #14
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !214
  br label %bb.cn

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !49, !nonnull !50, !align !51
  %i.j = load i16, ptr %i.a, align 2, !tbaa !216
  %i.k = zext i16 %i.j to i32
  call void @_ZNK4llvm3pdb13NativeSession20getModuleDebugStreamEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.224") align 8 %24, ptr noundef nonnull align 8 dereferenceable(832) %i.i, i32 noundef %i.k) #14
  %i.l = getelementptr inbounds nuw i8, ptr %24, i64 400 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.e

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.c
  %i.o = load i64, ptr %24, align 8, !tbaa !53, !noalias !217
  %i.p = inttoptr i64 %i.o to ptr
  store ptr null, ptr %24, align 8, !tbaa !53, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %i.p, ptr %22, align 8, !tbaa !55
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %21, ptr nofree noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 1 dereferenceable(1) %23)
  %i.q = load ptr, ptr %22, align 8, !tbaa !55    ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #14, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  store ptr null, ptr %0, align 8, !tbaa !214
  br label %bb.ck

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @_ZNK4llvm3pdb20ModuleDebugStreamRef23findChecksumsSubsectionEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.232") align 8 %25, ptr noundef nonnull align 8 dereferenceable(400) %24) #14
  %i.v = getelementptr inbounds nuw i8, ptr %25, i64 72 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11, label %bb.g

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11: ; preds = %bb.e
  %i.y = load i64, ptr %25, align 8, !tbaa !53, !noalias !218
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %25, align 8, !tbaa !53, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %i.z, ptr %19, align 8, !tbaa !55
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %18, ptr nofree noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %i.aa = load ptr, ptr %19, align 8, !tbaa !55   ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5ErrorD2Ev.exit14, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #14, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit14

_ZN4llvm5ErrorD2Ev.exit14:                        ; preds = %bb.f, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  store ptr null, ptr %0, align 8, !tbaa !214
  br label %bb.cb

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43
  %i.ah = sub i64 %2, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  call void @_ZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.05.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14, !noalias !219
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 344
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %24, i64 352
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !85, !noalias !221 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !94, !noalias !221
  store <2 x ptr> %i.ao, ptr %8, align 16, !tbaa !94, !alias.scope !220, !noalias !219
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !221
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !89, !noalias !221
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !89, !noalias !221
  br label %_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !221 ; 0 uses
  br label %_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i

_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !219
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %24, i64 396
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !221 ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !alias.scope !220, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14, !noalias !219
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview21DebugSubsectionRecordENS_23VarStreamArrayExtractorIS2_EEEC2ERKNS_14VarStreamArrayIS2_S4_EERKS4_jPb(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.az, i32 noundef %i.ay, ptr noundef null), !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14, !noalias !219
  call void @_ZN4llvm8codeview21DebugSubsectionRecordC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %10) #14, !noalias !219
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  store i8 0, ptr %i.bb, align 8, !tbaa !96, !alias.scope !222, !noalias !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i8 0, i64 32, i1 false), !alias.scope !222, !noalias !219
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr null, ptr %i.bd, align 8, !tbaa !111, !alias.scope !222, !noalias !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bc, i8 0, i64 17, i1 false), !alias.scope !222, !noalias !219
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 80
end_hunk_0
