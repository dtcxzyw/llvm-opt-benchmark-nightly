inline.NumInlined: 3618
inline.NumDeleted: 1888
begin_hunk_0_@_ZN8v8_crdtp18ProtocolTypeTraitsISt6vectorIiSaIiEEvE11DeserializeEPNS_17DeserializerStateEPS3_:bb.a
  tail call void @_ZN8v8_crdtp4cbor13CBORTokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %i.ad = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %.not12 = icmp eq i32 %i.ad, 11
  br i1 %.not12, label %.loopexit, label %bb.f, !llvm.loop !137

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJEEERiDpOT_.exit, %bb.l, %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ %i.ac, %bb.l ], [ %i.ac, %_ZNSt6vectorIiSaIiEE12emplace_backIJEEERiDpOT_.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8v8_crdtp18ProtocolTypeTraitsISt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS4_EESt14default_deleteIS6_EEvE11DeserializeEPNS_17DeserializerStateEPS9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16, !noalias !138 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !138
  %i.b = tail call noundef zeroext i1 @_ZN8v8_crdtp18ProtocolTypeTraitsISt6vectorIN12v8_inspector8String16ESaIS3_EEvE11DeserializeEPNS_17DeserializerStateEPS5_(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EEaSEOS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 6 uses
  store ptr %i.a, ptr %1, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.c, %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8
  %i.k = shl i64 %i.j, 1
  %i.l = add i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.l) #17
  br label %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.c, align 8
  br label %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i.i.i.i, %bb.c
  %i.n = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split, label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split.sink.split

_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %bb.a
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EEaSEOS7_.exit, %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EEaSEOS7_.exit ] ; 3 uses
  %i.r = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8
  %i.v = shl i64 %i.u, 1
  %i.w = add i64 %i.v, 2
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.w) #17
  br label %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN12v8_inspector8String16EEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i

_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i, %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EEaSEOS7_.exit
  %i.y = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exitthread-pre-split.i.i.i ], [ %i.o, %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EEaSEOS7_.exit ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split, label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split.sink.split

_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split.sink.split: ; preds = %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i
  %.sink27 = phi ptr [ %i.c, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i ], [ %i.a, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i ] ; 2 uses
  %.sink24 = phi ptr [ %i.n, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i ], [ %i.y, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sink27, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.sink24 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink24, i64 noundef %i.ad) #17
  br label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split

_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split: ; preds = %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split.sink.split, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i
  %.sink = phi ptr [ %i.c, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i.i.i.i ], [ %i.a, %_ZSt8_DestroyIPN12v8_inspector8String16EEvT_S3_.exit.i.i.i ], [ %.sink27, %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split.sink.split ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 24) #17
  br label %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrISt6vectorIN12v8_inspector8String16ESaIS2_EESt14default_deleteIS4_EED2Ev.exit.sink.split, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8v8_crdtp18ProtocolTypeTraitsISt6vectorIN12v8_inspector8String16ESaIS3_EEvE11DeserializeEPNS_17DeserializerStateEPS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %i.c = icmp eq i32 %i.b, 12
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8v8_crdtp4cbor13CBORTokenizer13EnterEnvelopeEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %.not = icmp eq i32 %i.d, 10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8v8_crdtp17DeserializerState13RegisterErrorENS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef 34) #15
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN8v8_crdtp4cbor13CBORTokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %i.e = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %.not1213 = icmp eq i32 %i.e, 11
  br i1 %.not1213, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.h = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.i = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.f, align 8
  br label %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.h)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit: ; preds = %bb.g, %bb.h
  %i.o = phi ptr [ %i.n, %bb.g ], [ %.pre, %bb.h ]
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -40
  %i.q = tail call noundef zeroext i1 @_ZN8v8_crdtp18ProtocolTypeTraitsIN12v8_inspector8String16EvE11DeserializeEPNS_17DeserializerStateEPS2_(ptr noundef nonnull %0, ptr noundef nonnull %i.p) #15 ; 3 uses
  br i1 %i.q, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  tail call void @_ZN8v8_crdtp4cbor13CBORTokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %i.r = tail call noundef i32 @_ZNK8v8_crdtp4cbor13CBORTokenizer8TokenTagEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #15
  %.not12 = icmp eq i32 %i.r, 11
  br i1 %.not12, label %.loopexit, label %bb.f, !llvm.loop !141

.loopexit:                                        ; preds = %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %bb.i, %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ %i.q, %bb.i ], [ %i.q, %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN12v8_inspector8String16ESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #18
  unreachable

_ZNKSt6vectorIN12v8_inspector8String16ESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %2        ; 2 uses
  %4 = icmp ult i64 %3, %2
  %5 = tail call i64 @llvm.umin.i64(i64 %3, i64 230584300921369395)
  %6 = select i1 %4, i64 230584300921369395, i64 %5 ; 3 uses
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %i.e
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit, label %9

9:                                                ; preds = %_ZNKSt6vectorIN12v8_inspector8String16ESaIS1_EE12_M_check_lenEmPKc.exit
  %10 = mul nuw nsw i64 %6, 40
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #16
  br label %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN12v8_inspector8String16ESaIS1_EE12_M_check_lenEmPKc.exit, %9
  %12 = phi ptr [ %11, %9 ], [ null, %_ZNKSt6vectorIN12v8_inspector8String16ESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 %8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.k, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %12, %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.l, ptr %.012.i.i.i, align 8, !alias.scope !142, !noalias !145
  %i.m = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !145, !noalias !142 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !145, !noalias !142 ; 3 uses
  %i.r = icmp ult i64 %i.q, 8
  tail call void @llvm.assume(i1 %i.r)
  %i.s = shl nuw nsw i64 %i.q, 1
  %i.t = add nuw nsw i64 %i.s, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.t, i1 false), !alias.scope !147
  br label %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.m, ptr %.012.i.i.i, align 8, !alias.scope !142, !noalias !145
  %i.u = load i64, ptr %i.n, align 8, !alias.scope !145, !noalias !142
  store i64 %i.u, ptr %i.l, align 8, !alias.scope !142, !noalias !145
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !145, !noalias !142
  br label %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.v = phi i64 [ %i.q, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.v, ptr %i.x, align 8, !alias.scope !142, !noalias !145
  store ptr %i.n, ptr %.0911.i.i.i, align 8, !alias.scope !145, !noalias !142
  store i64 0, ptr %i.w, align 8, !alias.scope !145, !noalias !142
  store i16 0, ptr %i.n, align 8, !alias.scope !145, !noalias !142
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !145, !noalias !142
  store i64 %i.aa, ptr %i.y, align 8, !alias.scope !142, !noalias !145
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !148

_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i = phi ptr [ %12, %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE11_M_allocateEm.exit ], [ %i.ac, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i17 = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i18 = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i17, align 8, !alias.scope !149, !noalias !152
  %i.af = load ptr, ptr %.0911.i.i.i18, align 8, !alias.scope !152, !noalias !149 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i19

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !152, !noalias !149 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 8
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = shl nuw nsw i64 %i.aj, 1
  %i.am = add nuw nsw i64 %i.al, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.am, i1 false), !alias.scope !154
  br label %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i19: ; preds = %.lr.ph.i.i.i16
  store ptr %i.af, ptr %.012.i.i.i17, align 8, !alias.scope !149, !noalias !152
  %i.an = load i64, ptr %i.ag, align 8, !alias.scope !152, !noalias !149
  store i64 %i.an, ptr %i.ae, align 8, !alias.scope !149, !noalias !152
  %.phi.trans.insert.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %.pre.i.i.i.i21 = load i64, ptr %.phi.trans.insert.i.i.i.i20, align 8, !alias.scope !152, !noalias !149
  br label %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i19, %bb.d
  %i.ao = phi i64 [ %i.aj, %bb.d ], [ %.pre.i.i.i.i21, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i19 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !alias.scope !149, !noalias !152
  store ptr %i.ag, ptr %.0911.i.i.i18, align 8, !alias.scope !152, !noalias !149
  store i64 0, ptr %i.ap, align 8, !alias.scope !152, !noalias !149
  store i16 0, ptr %i.ag, align 8, !alias.scope !152, !noalias !149
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !152, !noalias !149
  store i64 %i.at, ptr %i.ar, align 8, !alias.scope !149, !noalias !152
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.au, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, label %.lr.ph.i.i.i16, !llvm.loop !148

_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25: ; preds = %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN12v8_inspector8String16ES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #17
  br label %_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN12v8_inspector8String16ESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN12v8_inspector8String16ESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit25, %bb.e
  store ptr %12, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %12, i64 %6
  store ptr %i.ba, ptr %i.aw, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZZN12v8_inspector8protocol8Debugger12_GLOBAL__N_113CommandByNameESt4spanIKhLm18446744073709551615EEENK3$_0clEv"() unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(1056) ptr @_Znwm(i64 noundef 1056) #16 ; 134 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store ptr @.str.146, ptr %i.c, align 8
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 18, ptr %.sroa.4133.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl18continueToLocationERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @.str.147, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 7, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl7disableERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr @.str.148, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 21, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl21disassembleWasmModuleERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr @.str.149, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 6, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl6enableERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i64 0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr @.str.150, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 19, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl19evaluateOnCallFrameERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i64 0, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr @.str.151, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store i64 22, ptr %.sroa.24.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl22getPossibleBreakpointsERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i64 0, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store ptr @.str.152, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i64 15, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl15getScriptSourceERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i64 0, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store ptr @.str.153, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i64 13, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl13getStackTraceERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.33.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store i64 0, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr @.str.154, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store i64 15, ptr %.sroa.36.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl15getWasmBytecodeERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i64 0, ptr %.sroa.38.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store ptr @.str.155, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store i64 24, ptr %.sroa.40.0..sroa_idx, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl24nextWasmDisassemblyChunkERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.43134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store ptr @.str.156, ptr %.sroa.43134.0..sroa_idx, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store i64 5, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.45135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl5pauseERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.45135.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i64 0, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.47136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr @.str.157, ptr %.sroa.47136.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  store i64 16, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.49137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl16pauseOnAsyncCallERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.49137.0..sroa_idx, align 8
  %.sroa.50.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store i64 0, ptr %.sroa.50.0..sroa_idx, align 8
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store ptr @.str.158, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store i64 16, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl16removeBreakpointERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  store ptr @.str.159, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store i64 12, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl12restartFrameERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  store ptr @.str.160, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.60.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  store i64 6, ptr %.sroa.60.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl6resumeERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.61.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store i64 0, ptr %.sroa.62.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store ptr @.str.161, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  store i64 15, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl15searchInContentERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  store i64 0, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  store ptr @.str.162, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  store i64 22, ptr %.sroa.68.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl22setAsyncCallStackDepthERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.70.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  store i64 0, ptr %.sroa.70.0..sroa_idx, align 8
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  store ptr @.str.163, ptr %.sroa.71.0..sroa_idx, align 8
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  store i64 28, ptr %.sroa.72.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl28setBlackboxExecutionContextsERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.73.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  store i64 0, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  store ptr @.str.164, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store i64 19, ptr %.sroa.76.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl19setBlackboxPatternsERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  store i64 0, ptr %.sroa.78.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  store ptr @.str.165, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  store i64 19, ptr %.sroa.80.0..sroa_idx, align 8
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl19setBlackboxedRangesERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.81.0..sroa_idx, align 8
  %.sroa.82.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  store i64 0, ptr %.sroa.82.0..sroa_idx, align 8
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  store ptr @.str.166, ptr %.sroa.83.0..sroa_idx, align 8
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  store i64 13, ptr %.sroa.84.0..sroa_idx, align 8
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl13setBreakpointERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.85.0..sroa_idx, align 8
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  store i64 0, ptr %.sroa.86.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 672
  store ptr @.str.167, ptr %.sroa.87.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 680
  store i64 18, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl18setBreakpointByUrlERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.89.0..sroa_idx, align 8
  %.sroa.90.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 696
  store i64 0, ptr %.sroa.90.0..sroa_idx, align 8
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  store ptr @.str.168, ptr %.sroa.91.0..sroa_idx, align 8
  %.sroa.92.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  store i64 27, ptr %.sroa.92.0..sroa_idx, align 8
  %.sroa.93.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  store i64 ptrtoint (ptr @_ZN12v8_inspector8protocol8Debugger20DomainDispatcherImpl27setBreakpointOnFunctionCallERKN8v8_crdtp12DispatchableE to i64), ptr %.sroa.93.0..sroa_idx, align 8
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 728
  store i64 0, ptr %.sroa.94.0..sroa_idx, align 8
  %.sroa.95.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 736
  store ptr @.str.169, ptr %.sroa.95.0..sroa_idx, align 8
end_hunk_0
