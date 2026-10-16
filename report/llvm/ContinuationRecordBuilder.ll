Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ContinuationRecordBuilder?download=true
inline.NumInlined: 895
inline.NumDeleted: 373
begin_hunk_0_@_ZN4llvm8codeview25ContinuationRecordBuilderD2Ev:bb.a
bb.c:                                             ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !41
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #15, !inline_history !0
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #15, !inline_history !0
  br label %_ZN4llvm18BinaryStreamWriterD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZN4llvm18BinaryStreamWriterD2Ev.exit, !prof !44

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #15, !inline_history !45
  br label %_ZN4llvm18BinaryStreamWriterD2Ev.exit

_ZN4llvm18BinaryStreamWriterD2Ev.exit:            ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm25AppendingBinaryByteStreamE, i64 16), ptr %i.x, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i1, label %_ZN4llvm25AppendingBinaryByteStreamD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm18BinaryStreamWriterD2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #16, !inline_history !48
  br label %_ZN4llvm25AppendingBinaryByteStreamD2Ev.exit

_ZN4llvm25AppendingBinaryByteStreamD2Ev.exit:     ; preds = %_ZN4llvm18BinaryStreamWriterD2Ev.exit, %bb.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm25AppendingBinaryByteStreamD2Ev.exit
  tail call void @free(ptr noundef %i.af) #15
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit:            ; preds = %_ZN4llvm25AppendingBinaryByteStreamD2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamWriterE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !41
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !95
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !95
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_23WritableBinaryStreamRefENS_20WritableBinaryStreamEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm25AppendingBinaryByteStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvm25AppendingBinaryByteStreamE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8codeview25ContinuationRecordBuilder5beginENS0_22ContinuationRecordKindE(ptr noundef nonnull align 8 dereferenceable(248) initializes((8, 12), (32, 40), (136, 144)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::codeview::RecordPrefix", align 2 ; 6 uses
  %3 = alloca %"class.llvm::codeview::CVRecord", align 8 ; 5 uses
  %4 = alloca %"class.llvm::Error", align 8
  %5 = alloca %"class.llvm::Error", align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.07.0.insert.ext = zext i32 %1 to i64
  %.sroa.07.0.insert.insert = or disjoint i64 %.sroa.07.0.insert.ext, 4294967296
  store i64 %.sroa.07.0.insert.insert, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN4llvm25AppendingBinaryByteStream5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !49
  br label %_ZN4llvm25AppendingBinaryByteStream5clearEv.exit

_ZN4llvm25AppendingBinaryByteStream5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %.not.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.i.not, label %bb.c, label %bb.d, !prof !44

bb.c:                                             ; preds = %_ZN4llvm25AppendingBinaryByteStream5clearEv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0)
  br label %_ZN4llvm5ErrorD2Ev.exit6

bb.d:                                             ; preds = %_ZN4llvm25AppendingBinaryByteStream5clearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %i.j, align 1
  %i.k = load i32, ptr %i.g, align 8, !tbaa !18
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !18
  br label %_ZN4llvm5ErrorD2Ev.exit6

_ZN4llvm5ErrorD2Ev.exit6:                         ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = icmp eq i32 %1, 0                        ; 2 uses
  %i.o = select i1 %i.n, ptr @_ZL15InjectFieldList, ptr @_ZL24InjectMethodOverloadList
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.o, ptr %i.p, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 12, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.q = select i1 %i.n, i16 4611, i16 4614
  store i16 2, ptr %2, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.q, ptr %i.r, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %2, ptr %3, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.s, align 8, !tbaa !65
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN4llvm8codeview17TypeRecordMapping14visitTypeBeginERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr nonnull align 1 dereferenceable(4) %2, i64 4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN4llvm8codeview17TypeRecordMapping14visitTypeBeginERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm8codeview25ContinuationRecordBuilder23getCurrentSegmentLengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43
  %i.j = trunc i64 %i.b to i32
  %i.k = sub i32 %i.j, %i.i
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8codeview25ContinuationRecordBuilder16insertSegmentEndEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !61 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, ptr noundef %.sroa.0.0.copyload, ptr noundef %i.g)
  %i.h = add i32 %1, 8                            ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.h)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = zext i32 %i.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 %i.h, ptr %i.n, align 1
  %i.o = load i32, ptr %i.a, align 8, !tbaa !18
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.a, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load i8, ptr %i.q, align 8, !tbaa !67, !range !68, !noundef !69
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i64, ptr %i.t, align 8, !tbaa !62
  br label %_ZNK4llvm18BinaryStreamWriter9getLengthEv.exit

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70   ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK4llvm18BinaryStreamWriter9getLengthEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #15, !inline_history !96
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !71
  %i.ad = sub i64 %i.aa, %i.ac
  br label %_ZNK4llvm18BinaryStreamWriter9getLengthEv.exit

_ZNK4llvm18BinaryStreamWriter9getLengthEv.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.u, %bb.d ], [ %i.ad, %bb.f ], [ 0, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.0.i.i, ptr %i.ae, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZN4llvm8codeview25ContinuationRecordBuilder19createSegmentRecordEjjSt8optionalINS0_9TypeIndexEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, i32 noundef %1, i32 noundef %2, i40 %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = zext i32 %1 to i64
  %i.d = sub i32 %2, %1                           ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c ; 3 uses
  %i.g = trunc i32 %i.d to i16
  %i.h = add i16 %i.g, -2
  store i16 %i.h, ptr %i.f, align 1
  %i.i = and i40 %3, 4294967296
  %.not = icmp eq i40 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.013.0.extract.trunc = trunc i40 %3 to i32
  %.sroa.0.0.copyload.pn.idx.i = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 8)
  %.sroa.0.0.copyload.pn.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.copyload.pn.idx.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pn.i, i64 4
  store i32 %.sroa.013.0.extract.trunc, ptr %i.j, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.fca.0.insert.i5 = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %.fca.1.insert.i6 = insertvalue { ptr, i64 } %.fca.0.insert.i5, i64 %i.e, 1
  ret { ptr, i64 } %.fca.1.insert.i6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8codeview25ContinuationRecordBuilder3endENS0_9TypeIndexE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.29") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i32 %2) local_unnamed_addr #0 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %3 = alloca %"struct.llvm::codeview::RecordPrefix", align 2 ; 5 uses
  %4 = alloca %"class.llvm::codeview::CVRecord", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Error", align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = icmp eq i32 %i.b, 0
  %i.d = select i1 %i.c, i16 4611, i16 4614
  store i16 2, ptr %3, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %i.d, ptr %i.e, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %3, ptr %4, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.f, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_ZN4llvm8codeview17TypeRecordMapping12visitTypeEndERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE7reserveEm.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.k = zext i32 %i.i to i64                     ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #17 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %0, align 8, !tbaa !105
  store ptr %i.m, ptr %i.n, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.k ; 3 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !107
  %.pre = load i32, ptr %i.h, align 8, !tbaa !18  ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %.not2329 = icmp eq i32 %.pre, 0
  br i1 %.not2329, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE7reserveEm.exit
  %i.q = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.q, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !60
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE9push_backEOS4_.exit, %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE7reserveEm.exit
  %.lcssa27 = phi ptr [ %i.m, %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE7reserveEm.exit ], [ null, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.bd, %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE9push_backEOS4_.exit ]
  %.lcssa24 = phi ptr [ %i.o, %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE7reserveEm.exit ], [ null, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.be, %_ZNSt6vectorIN4llvm8codeview8CVRecordINS1_12TypeLeafKindEEESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa24, ptr %i.j, align 8
end_hunk_0
