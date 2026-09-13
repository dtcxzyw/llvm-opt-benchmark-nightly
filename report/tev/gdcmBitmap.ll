Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmBitmap?download=true
inline.NumInlined: 769
inline.NumDeleted: 309
begin_hunk_0_@_ZNK4gdcm6Bitmap11TryRAWCodecEPcRb:bb.a
.cont86:                                          ; preds = %.invoke85
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bt) #22
  br label %.body58

_ZNK4gdcm11PixelFormat10GetHighBitEv.exit:        ; preds = %_ZN4gdcm11PixelFormat13SetBitsStoredEt.exit
  %i.bw = icmp samesign ugt i16 %i.br, 1
  %i.bx = icmp eq i16 %.sroa.8.0.copyload, 0
  %or.cond.i65 = and i1 %i.bx, %i.bw
  br i1 %or.cond.i65, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit
  %i.by = add nsw i16 %i.br, -1
  br label %.sink.split.i

bb.ai:                                            ; preds = %_ZNK4gdcm11PixelFormat10GetHighBitEv.exit
  %i.bz = icmp samesign ult i16 %.sroa.8.0.copyload, %i.br
  br i1 %i.bz, label %.sink.split.i, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

.sink.split.i:                                    ; preds = %bb.ai, %bb.ah
  %.09.sink.i = phi i16 [ %i.by, %bb.ah ], [ %.sroa.8.0.copyload, %bb.ai ]
  store i16 %.09.sink.i, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !72
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit

bb.aj:                                            ; preds = %.invoke85
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body58

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit:      ; preds = %bb.z, %.sink.split.i, %bb.ai, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread

.body58:                                          ; preds = %bb.ae, %bb.ag, %bb.aj, %bb.ac, %bb.y
  %.pn45 = phi { ptr, i32 } [ %i.be, %bb.y ], [ %i.bn, %bb.ac ], [ %i.bp, %bb.ae ], [ %i.ca, %bb.aj ], [ %i.bv, %bb.ag ]
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread: ; preds = %bb.d, %bb.f, %bb.i, %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit, %_ZNK4gdcm11DataElement12GetByteValueEv.exit, %bb.c
  %.3 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.i ], [ %i.bb, %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit ], [ false, %_ZNK4gdcm11DataElement12GetByteValueEv.exit ]
  call void @_ZN4gdcm8RAWCodecD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %.3

.body:                                            ; preds = %bb.n, %bb.q, %bb.j, %.body58, %bb.e
  %.pn45.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.z, %bb.q ], [ %.pn45, %.body58 ], [ %i.s, %bb.n ], [ %i.m, %bb.j ]
  call void @_ZN4gdcm8RAWCodecD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn45.pn.pn.pn.pn
}

declare void @_ZN4gdcm8RAWCodecC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4gdcm8RAWCodec9CanDecodeERKNS_14TransferSyntaxE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN4gdcm10ImageCodec28SetPhotometricInterpretationERKNS_25PhotometricInterpretationE(ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm10ImageCodec6SetLUTERKNS_11LookupTableE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(27) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gdcm::SmartPointer.1", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %1, ptr %2, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !12
  %i.d = icmp sgt i64 %i.b, -1
  br i1 %i.d, label %_ZN4gdcm12SmartPointerINS_11LookupTableEEC2EPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 74, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.s, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #22
  br label %common.resume

_ZN4gdcm12SmartPointerINS_11LookupTableEEC2EPS1_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_11LookupTableEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %1)
          to label %_ZN4gdcm12SmartPointerINS_11LookupTableEEaSERKS2_.exit unwind label %bb.k ; 0 uses

_ZN4gdcm12SmartPointerINS_11LookupTableEEaSERKS2_.exit: ; preds = %_ZN4gdcm12SmartPointerINS_11LookupTableEEC2EPS1_.exit
  %i.i = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4gdcm12SmartPointerINS_11LookupTableEEaSERKS2_.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #22
  br label %.body.i

bb.h:                                             ; preds = %_ZN4gdcm12SmartPointerINS_11LookupTableEEaSERKS2_.exit
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !12
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZN4gdcm12SmartPointerINS_11LookupTableEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %1, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %1) #22, !inline_history !101
  br label %_ZN4gdcm12SmartPointerINS_11LookupTableEED2Ev.exit

bb.j:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.l, %bb.g ]
  %i.r = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  tail call void @__clang_call_terminate(ptr %i.r) #25
  unreachable

_ZN4gdcm12SmartPointerINS_11LookupTableEED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.k:                                             ; preds = %_ZN4gdcm12SmartPointerINS_11LookupTableEEC2EPS1_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_11LookupTableEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume
}

declare noundef zeroext i1 @_ZN4gdcm8RAWCodec11DecodeBytesEPKcmPcm(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm11PixelFormat13SetBitsStoredEt(ptr noundef nonnull align 2 dereferenceable(10) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i16 %1, label %bb.e [
    i16 -1, label %bb.b
    i16 4095, label %bb.c
    i16 255, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i16 [ %1, %bb.a ], [ 16, %bb.b ], [ 12, %bb.c ], [ 8, %bb.d ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !54
  %i.c = add i16 %.0, -1                          ; 3 uses
  %or.cond = icmp ult i16 %i.c, %i.b
  br i1 %or.cond, label %bb.f, label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.0, ptr %i.d, align 2, !tbaa !71
  switch i16 %i.c, label %bb.h [
    i16 254, label %bb.g
    i16 4094, label %.thread.i
  ]

bb.g:                                             ; preds = %bb.f
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.h, %bb.g
  %.09.i = phi i16 [ %i.c, %bb.h ], [ 7, %bb.g ], [ 11, %bb.f ] ; 2 uses
  %i.e = icmp ult i16 %.09.i, %.0
  br i1 %i.e, label %.sink.split.i, label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit

.sink.split.i:                                    ; preds = %.thread.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %.09.i, ptr %i.f, align 2, !tbaa !72
  br label %_ZN4gdcm11PixelFormat10SetHighBitEt.exit

_ZN4gdcm11PixelFormat10SetHighBitEt.exit:         ; preds = %.sink.split.i, %.thread.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK4gdcm11PixelFormat13GetBitsStoredEv(ptr noundef nonnull align 2 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 2, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !54
  %.not = icmp ugt i16 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 131, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #22
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  ret i16 %i.b
}

; Function Attrs: nounwind
declare void @_ZN4gdcm8RAWCodecD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4gdcm6Bitmap12TryJPEGCodecEPcRb(ptr noundef nonnull align 8 dereferenceable(106) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gdcm::JPEGCodec", align 8   ; 31 uses
  %4 = alloca %"class.gdcm::TransferSyntax", align 4 ; 5 uses
  %5 = alloca %"class.gdcm::PixelFormat", align 2 ; 9 uses
  %6 = alloca %"class.std::__1::basic_stringstream", align 8 ; 14 uses
  %7 = alloca %"class.gdcm::DataElement", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN4gdcm9JPEGCodecC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.bd

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZNK4gdcm9JPEGCodec9CanDecodeERKNS_14TransferSyntaxE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.b, label %bb.d, label %bb.dh

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = invoke noundef ptr @_ZNK4gdcm11DataElement22GetSequenceOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not70 = icmp eq ptr %i.d, null
  br i1 %.not70, label %_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread, label %bb.h

bb.f:                                             ; preds = %bb.bd, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.g:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.h:                                             ; preds = %bb.e
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm19SequenceOfFragments11GetFragmentEm(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 noundef 0)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.i

_ZNK4gdcm11DataElement12GetByteValueEv.exit.i:    ; preds = %bb.i
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN4gdcm5ValueE, ptr nonnull @_ZTIN4gdcm9ByteValueE, i64 0) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread136, label %_ZNK4gdcm11DataElement7IsEmptyEv.exit

_ZNK4gdcm11DataElement7IsEmptyEv.exit:            ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread, label %_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread136

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread136:  ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.i, %_ZNK4gdcm11DataElement7IsEmptyEv.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4gdcm11DataElement8GetValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread136
  %i.q = call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN4gdcm5ValueE, ptr nonnull @_ZTIN4gdcm9ByteValueE, i64 0) #22 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_bad_cast() #23
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %5, ptr noundef nonnull align 4 dereferenceable(10) %i.s, i64 10, i1 false), !tbaa.struct !61
  invoke void @_ZN4gdcm9JPEGCodec14SetPixelFormatERKNS_11PixelFormatE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 2 dereferenceable(10) %5)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke i32 %i.z(ptr noundef nonnull align 8 dereferenceable(44) %i.q)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ab = icmp eq ptr %i.u, %i.w
  %spec.select.i = select i1 %i.ab, ptr null, ptr %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = zext i32 %i.aa to i64
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %spec.select.i, i64 noundef %i.ad)
          to label %bb.r unwind label %bb.w       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.af = invoke noundef zeroext i1 @_ZN4gdcm9JPEGCodec13GetHeaderInfoERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS_14TransferSyntaxE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.s unwind label %bb.x       ; 2 uses

bb.s:                                             ; preds = %bb.r
  br i1 %i.af, label %bb.y, label %bb.ay

bb.t:                                             ; preds = %bb.l, %_ZNK4gdcm11DataElement7IsEmptyEv.exit.thread136
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.u:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.v:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.w:                                             ; preds = %bb.q, %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.y, %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.s
  %i.al = invoke noundef zeroext i1 @_ZNK4gdcm10ImageCodec7IsLossyEv(ptr noundef nonnull align 8 dereferenceable(65) %3)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.am = zext i1 %i.al to i8
  store i8 %i.am, ptr %2, align 1, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
end_hunk_0
