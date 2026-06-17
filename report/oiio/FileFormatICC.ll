inline.NumInlined: 1370
inline.NumDeleted: 459
begin_hunk_0_@_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC28IccTextDescriptionTypeReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC28IccTextDescriptionTypeReaderE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !7
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32, !inline_history !276
  br label %_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev.exit

_ZN9SampleICC28IccTextDescriptionTypeReaderD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9SampleICC28IccTextDescriptionTypeReader4ReadERSij(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !42
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !53
  store i8 0, ptr %i.e, align 1, !tbaa !7
  %i.f = icmp ult i32 %2, 12
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %bb.h

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !15
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !17
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN9SampleICC5Read8ERSiPvi.exit.i16, label %_ZN9SampleICC6Read32ERSiPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit.i16:              ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.v = load <4 x i8>, ptr %i.a, align 4, !tbaa !7
  %i.w = shufflevector <4 x i8> %i.v, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.w, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !15
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i17.preheader, label %_ZN9SampleICC6Read32ERSiPvi.exit20.thread

.lr.ph.i.i17.preheader:                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i16
  %i.af = load <4 x i8>, ptr %i.b, align 4, !tbaa !7
  %i.ag = shufflevector <4 x i8> %i.af, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.ag, ptr %i.b, align 4, !tbaa !7
  %.cast = bitcast <4 x i8> %i.ag to i32          ; 2 uses
  %.not13 = icmp eq i32 %.cast, 0
  br i1 %.not13, label %_ZN9SampleICC6Read32ERSiPvi.exit20.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i17.preheader
  %i.ah = add i32 %.cast, 1
  %i.ai = zext i32 %i.ah to i64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ai, i8 noundef signext 0)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !15
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !17
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %_ZN9SampleICC5Read8ERSiPvi.exit

bb.d:                                             ; preds = %bb.c
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.as = sext i32 %i.aq to i64
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ar, i64 noundef %i.as) ; 0 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !15
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !17
  %i.ba = icmp eq i32 %i.az, 0
  %..i = select i1 %i.ba, i32 %i.aq, i32 0
  br label %_ZN9SampleICC5Read8ERSiPvi.exit

_ZN9SampleICC5Read8ERSiPvi.exit:                  ; preds = %bb.c, %bb.d
  %.1.i = phi i32 [ %..i, %bb.d ], [ 0, %bb.c ]
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !3
  %.not14 = icmp eq i32 %.1.i, %i.bb
  br i1 %.not14, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit
  %i.bc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 noundef signext 0, i64 noundef 0) #30 ; 2 uses
  %.not15 = icmp eq i64 %i.bc, -1
  br i1 %.not15, label %_ZN9SampleICC6Read32ERSiPvi.exit20.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.bc, i8 noundef signext 0)
  br label %_ZN9SampleICC6Read32ERSiPvi.exit20.thread

bb.g:                                             ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit
  store i64 0, ptr %i.d, align 8, !tbaa !42
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !53
  store i8 0, ptr %i.bd, align 1, !tbaa !7
  br label %_ZN9SampleICC6Read32ERSiPvi.exit20.thread

_ZN9SampleICC6Read32ERSiPvi.exit20.thread:        ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i16, %bb.f, %bb.e, %.lr.ph.i.i17.preheader, %bb.g
  %.1 = phi i1 [ true, %.lr.ph.i.i17.preheader ], [ false, %bb.g ], [ true, %bb.f ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i16 ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN9SampleICC6Read32ERSiPvi.exit

_ZN9SampleICC6Read32ERSiPvi.exit:                 ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i, %_ZN9SampleICC6Read32ERSiPvi.exit20.thread
  %.2 = phi i1 [ %.1, %_ZN9SampleICC6Read32ERSiPvi.exit20.thread ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %_ZN9SampleICC6Read32ERSiPvi.exit
  %.3 = phi i1 [ false, %bb.a ], [ %.2, %_ZN9SampleICC6Read32ERSiPvi.exit ], [ false, %bb.b ]
  ret i1 %.3
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC34IccMultiLocalizedUnicodeTypeReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC34IccMultiLocalizedUnicodeTypeReaderE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !7
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9SampleICC34IccMultiLocalizedUnicodeTypeReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9SampleICC34IccMultiLocalizedUnicodeTypeReaderE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN9SampleICC34IccMultiLocalizedUnicodeTypeReaderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !7
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32, !inline_history !277
  br label %_ZN9SampleICC34IccMultiLocalizedUnicodeTypeReaderD2Ev.exit

_ZN9SampleICC34IccMultiLocalizedUnicodeTypeReaderD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9SampleICC34IccMultiLocalizedUnicodeTypeReader4ReadERSij(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i16, align 2                      ; 8 uses
  %i.e = alloca i16, align 2                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !42
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !53
  store i8 0, ptr %i.j, align 1, !tbaa !7
  %i.k = zext i32 %2 to i64
  %i.l = icmp ult i32 %2, 16
  br i1 %i.l, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !15
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %1, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN9SampleICC5Read8ERSiPvi.exit.i, label %bb.w

_ZN9SampleICC5Read8ERSiPvi.exit.i:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !15
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !17
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN9SampleICC5Read8ERSiPvi.exit.i69, label %_ZN9SampleICC6Read32ERSiPvi.exit73.thread

_ZN9SampleICC5Read8ERSiPvi.exit.i69:              ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i
  %i.ab = load <4 x i8>, ptr %i.a, align 4, !tbaa !7
  %i.ac = shufflevector <4 x i8> %i.ab, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.ac, ptr %i.a, align 4, !tbaa !7
  %i.ad = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !15
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !17
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN9SampleICC5Read8ERSiPvi.exit.i74, label %_ZN9SampleICC6Read32ERSiPvi.exit73.thread

_ZN9SampleICC5Read8ERSiPvi.exit.i74:              ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i69
  %i.al = load <4 x i8>, ptr %i.b, align 4, !tbaa !7
  %i.am = shufflevector <4 x i8> %i.al, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.am, ptr %i.b, align 4, !tbaa !7
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 4) ; 0 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !15
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !17
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN9SampleICC6Read32ERSiPvi.exit78, label %_ZN9SampleICC6Read32ERSiPvi.exit73.thread

_ZN9SampleICC6Read32ERSiPvi.exit78:               ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i74
  %i.av = load <4 x i8>, ptr %i.c, align 4, !tbaa !7
  %i.aw = shufflevector <4 x i8> %i.av, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.aw, ptr %i.c, align 4, !tbaa !7
  %.cast = bitcast <4 x i8> %i.aw to i32
  %.not56 = icmp eq i32 %.cast, 12
  br i1 %.not56, label %bb.c, label %_ZN9SampleICC6Read32ERSiPvi.exit73.thread

bb.c:                                             ; preds = %_ZN9SampleICC6Read32ERSiPvi.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !42
  store i8 0, ptr %i.ax, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.az, ptr %4, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !42
  store i8 0, ptr %i.az, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bb, ptr %5, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !42
  store i8 0, ptr %i.bb, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !42
  store i8 0, ptr %i.bd, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %8 = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.thread186, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorItSaItEED2Ev.exit
  %indvars.iv280 = phi i64 [ %indvars.iv.next, %_ZNSt6vectorItSaItEED2Ev.exit ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.bi = mul i64 %indvars.iv.next, 12
  %i.bj = and i64 %i.bi, 4294967292
  %i.bk = add nuw nsw i64 %i.bj, 16
  %i.bl = icmp samesign ugt i64 %i.bk, %i.k
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = load ptr, ptr %1, align 8, !tbaa !15
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !17
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN9SampleICC5Read8ERSiPvi.exit.i79, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121

_ZN9SampleICC5Read8ERSiPvi.exit.i79:              ; preds = %bb.e
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 2)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i79
  %i.bu = load ptr, ptr %1, align 8, !tbaa !15
  %i.bv = getelementptr i8, ptr %i.bu, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !17
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZN9SampleICC5Read8ERSiPvi.exit.i81, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121

_ZN9SampleICC5Read8ERSiPvi.exit.i81:              ; preds = %.noexc
  %i.cb = load i8, ptr %i.d, align 2, !tbaa !7
  %i.cc = load i8, ptr %i.bg, align 1, !tbaa !7
  store i8 %i.cc, ptr %i.d, align 2, !tbaa !7
  store i8 %i.cb, ptr %i.bg, align 1, !tbaa !7
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 2)
          to label %.noexc85 unwind label %bb.f   ; 0 uses

.noexc85:                                         ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i81
  %i.ce = load ptr, ptr %1, align 8, !tbaa !15
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !17
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN9SampleICC5Read8ERSiPvi.exit.i87, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121

_ZN9SampleICC5Read8ERSiPvi.exit.i87:              ; preds = %.noexc85
  %i.cl = load i8, ptr %i.e, align 2, !tbaa !7
  %i.cm = load i8, ptr %i.bh, align 1, !tbaa !7
  store i8 %i.cm, ptr %i.e, align 2, !tbaa !7
  store i8 %i.cl, ptr %i.bh, align 1, !tbaa !7
  %i.cn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.f, i64 noundef 4)
          to label %.noexc91 unwind label %bb.f   ; 0 uses

.noexc91:                                         ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i87
  %i.co = load ptr, ptr %1, align 8, !tbaa !15
  %i.cp = getelementptr i8, ptr %i.co, i64 -24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !17
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZN9SampleICC5Read8ERSiPvi.exit.i93, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121

_ZN9SampleICC5Read8ERSiPvi.exit.i93:              ; preds = %.noexc91
  %i.cv = load <4 x i8>, ptr %i.f, align 4, !tbaa !7
  %i.cw = shufflevector <4 x i8> %i.cv, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.cw, ptr %i.f, align 4, !tbaa !7
  %i.cx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.g, i64 noundef 4)
          to label %.noexc97 unwind label %bb.f   ; 0 uses

.noexc97:                                         ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i93
  %i.cy = load ptr, ptr %1, align 8, !tbaa !15
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24    ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %1, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !17
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i94.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121

.lr.ph.i.i94.preheader:                           ; preds = %.noexc97
  %i.df = load <4 x i8>, ptr %i.g, align 4, !tbaa !7
  %i.dg = shufflevector <4 x i8> %i.df, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  store <4 x i8> %i.dg, ptr %i.g, align 4, !tbaa !7
  %.cast271 = bitcast <4 x i8> %i.dg to i32
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !3   ; 5 uses
  %i.di = add i32 %i.dh, %.cast271
  %i.dj = icmp ugt i32 %i.di, %2
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121, label %bb.g

bb.f:                                             ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i93, %_ZN9SampleICC5Read8ERSiPvi.exit.i87, %_ZN9SampleICC5Read8ERSiPvi.exit.i81, %_ZN9SampleICC5Read8ERSiPvi.exit.i79
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit119

bb.g:                                             ; preds = %.lr.ph.i.i94.preheader
  %i.dl = lshr i32 %i.dh, 1                       ; 4 uses
  %i.dm = zext nneg i32 %i.dl to i64              ; 7 uses
  %.not.i.i.i.i = icmp ne i32 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dn = shl nuw nsw i64 %i.dm, 1                ; 2 uses
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #31
          to label %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit unwind label %bb.h ; 12 uses

_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit:            ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.do, i8 0, i64 %i.dn, i1 false), !tbaa !28
  %.pre = load i64, ptr %i.cz, align 8
  %.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.pre
  %.phi.trans.insert212 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 32
  %.pre213 = load i32, ptr %.phi.trans.insert212, align 8, !tbaa !17
  %i.dp = icmp eq i32 %.pre213, 0
  br i1 %i.dp, label %_ZN9SampleICC5Read8ERSiPvi.exit.i100, label %_ZN9SampleICC6Read16ERSiPvi.exit105

_ZN9SampleICC5Read8ERSiPvi.exit.i100:             ; preds = %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.dq = and i32 %i.dh, -2
  %i.dr = sext i32 %i.dq to i64
  %i.ds = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.do, i64 noundef %i.dr)
          to label %.noexc104 unwind label %.thread ; 0 uses

.noexc104:                                        ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i100
  %i.dt = load ptr, ptr %1, align 8, !tbaa !15
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !17
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = ashr i32 %i.dh, 1                       ; 3 uses
  %i.eb = select i1 %i.dz, i32 %i.ea, i32 0       ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i.i101, label %_ZN9SampleICC6Read16ERSiPvi.exit105

.lr.ph.i.i101:                                    ; preds = %.noexc104, %.lr.ph.i.i101
  %.07.i.i102 = phi ptr [ %i.eg, %.lr.ph.i.i101 ], [ %i.do, %.noexc104 ] ; 4 uses
  %.056.i.i103 = phi i32 [ %i.eh, %.lr.ph.i.i101 ], [ %i.ea, %.noexc104 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.07.i.i102, i64 1 ; 2 uses
  %i.ee = load i8, ptr %.07.i.i102, align 1, !tbaa !7
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !7
  store i8 %i.ef, ptr %.07.i.i102, align 1, !tbaa !7
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %.07.i.i102, i64 2
  %i.eh = add nsw i32 %.056.i.i103, -1
  %i.ei = icmp samesign ugt i32 %.056.i.i103, 1
  br i1 %i.ei, label %.lr.ph.i.i101, label %_ZN9SampleICC6Read16ERSiPvi.exit105, !llvm.loop !14

_ZN9SampleICC6Read16ERSiPvi.exit105:              ; preds = %.lr.ph.i.i101, %.noexc104, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit
  %i.ej = phi i32 [ 0, %_ZNSt6vectorItSaItEEC2EmRKtRKS0_.exit ], [ %i.eb, %.noexc104 ], [ %i.ea, %.lr.ph.i.i101 ]
  %.not61 = icmp eq i32 %i.ej, %i.dl
  br i1 %.not61, label %bb.i, label %_ZNSt6vectorItSaItEED2Ev.exit.jt1

bb.h:                                             ; preds = %bb.g
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit119

.thread:                                          ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i100
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %_ZN9SampleICC6Read16ERSiPvi.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.em = add nuw nsw i32 %i.dl, 1
  %i.en = zext nneg i32 %i.em to i64
  store ptr %i.bf, ptr %7, align 8, !tbaa !39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.en, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader: ; preds = %bb.i
  %xtraiter = and i64 %i.dm, 3                    ; 3 uses
  %i.eo = icmp ult i32 %i.dh, 8
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader.new

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader.new: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader
  %unroll_iter = and i64 %i.dm, 2147483644
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.unr-lcssa: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.unr-lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader
  %.035201.epil.init = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.unr-lcssa ]
  %lcmp.mod280 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod280)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil.preheader
  %.035201.epil = phi i64 [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil ], [ %.035201.epil.init, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil.preheader ]
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %.035201.epil
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !28
  %i.er = trunc i16 %i.eq to i8
  %i.es = load ptr, ptr %7, align 8, !tbaa !53
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.035201.epil
  store i8 %i.er, ptr %i.et, align 1, !tbaa !7
  %i.eu = add nuw i64 %.035201.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil, !llvm.loop !278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.unr-lcssa
  %i.ev = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef signext 0, i64 noundef 0) #30 ; 2 uses
  %.not62 = icmp eq i64 %i.ev, -1
  br i1 %.not62, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader.new
  %.035201 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader.new ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.preheader.new ], [ %niter.next.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ]
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %.035201
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !28
  %i.ez = trunc i16 %i.ey to i8
  %i.fa = load ptr, ptr %7, align 8, !tbaa !53
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.035201
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !7
  %i.fc = or disjoint i64 %.035201, 1             ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !28
  %i.ff = trunc i16 %i.fe to i8
  %i.fg = load ptr, ptr %7, align 8, !tbaa !53
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fc
  store i8 %i.ff, ptr %i.fh, align 1, !tbaa !7
  %i.fi = or disjoint i64 %.035201, 2             ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !28
  %i.fl = trunc i16 %i.fk to i8
  %i.fm = load ptr, ptr %7, align 8, !tbaa !53
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fi
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !7
  %i.fo = or disjoint i64 %.035201, 3             ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !28
  %i.fr = trunc i16 %i.fq to i8
  %i.fs = load ptr, ptr %7, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fo
  store i8 %i.fr, ptr %i.ft, align 1, !tbaa !7
  %i.fu = add nuw i64 %.035201, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge.unr-lcssa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, !llvm.loop !279

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ev, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.o, %bb.p, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fv = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.bf
  br i1 %i.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.fx = load i64, ptr %i.bf, align 8, !tbaa !7
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit._crit_edge
  %i.fz = load i16, ptr %i.e, align 2, !tbaa !28
  switch i16 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110 [
    i16 21843, label %bb.m
    i16 21835, label %bb.n
  ]

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.jt2 unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ga = load i64, ptr %i.ba, align 8, !tbaa !42
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.n
  %i.gc = load i16, ptr %i.d, align 2, !tbaa !28
  %i.gd = icmp eq i16 %i.gc, 25966
  %i.ge = load i64, ptr %i.bc, align 8
  %i.gf = icmp eq i64 %i.ge, 0
  %or.cond191 = select i1 %i.gd, i1 %i.gf, i1 false
  br i1 %or.cond191, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110
  %i.gg = icmp eq i64 %indvars.iv280, 0
  br i1 %i.gg, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.jt2: ; preds = %bb.m
  %9 = load ptr, ptr %7, align 8, !tbaa !53       ; 2 uses
  %10 = icmp eq ptr %9, %i.bf
  br i1 %10, label %_ZNSt6vectorItSaItEED2Ev.exit.jt2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.jt2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  %i.gh = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.bf
  br i1 %i.gi, label %_ZNSt6vectorItSaItEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.jt2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.jt2
  %11 = load i64, ptr %i.bf, align 8, !tbaa !7
  %12 = add i64 %11, 1
  call void @_ZdlPvm(ptr noundef %9, i64 noundef %12) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit.jt2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.gj = load i64, ptr %i.bf, align 8, !tbaa !7
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit.jt1:                ; preds = %_ZN9SampleICC6Read16ERSiPvi.exit105
  %.idx = shl nuw nsw i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121

_ZNSt6vectorItSaItEED2Ev.exit.jt2:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.jt2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.idx267 = shl nuw nsw i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx267) #32
  br label %.thread186

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.idx262 = shl nuw nsw i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx262) #32
  %13 = load i32, ptr %i.b, align 4, !tbaa !3
  %14 = zext i32 %13 to i64
  %15 = icmp samesign ult i64 %indvars.iv.next, %14
  br i1 %15, label %bb.d, label %.thread186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.l, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.j ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.phi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread
  %.pn.pn180 = phi { ptr, i32 } [ %i.el, %.thread ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %.idx261 = shl nuw nsw i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %.idx261) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit119

.thread186:                                       ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.c, %_ZNSt6vectorItSaItEED2Ev.exit.jt2
  %i.gl = load i64, ptr %i.i, align 8, !tbaa !42
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121

bb.s:                                             ; preds = %.thread186
  %i.gn = load i64, ptr %i.ay, align 8, !tbaa !42
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.u, label %.invoke

bb.t:                                             ; preds = %.invoke
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit119

bb.u:                                             ; preds = %bb.s
  %i.gq = load i64, ptr %i.ba, align 8, !tbaa !42
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u
  %i.gs = load i64, ptr %i.bc, align 8, !tbaa !42
  %i.gt = icmp eq i64 %i.gs, 0
  %. = select i1 %i.gt, ptr %6, ptr %5
  br label %.invoke

.invoke:                                          ; preds = %bb.s, %bb.v, %bb.u
  %i.gu = phi ptr [ %4, %bb.u ], [ %., %bb.v ], [ %3, %bb.s ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.gu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121 unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121: ; preds = %.noexc97, %.noexc91, %.noexc85, %.noexc, %bb.e, %.lr.ph.i.i94.preheader, %bb.d, %.invoke, %_ZNSt6vectorItSaItEED2Ev.exit.jt1, %.thread186
  %cond185 = phi i1 [ true, %.invoke ], [ true, %.thread186 ], [ false, %_ZNSt6vectorItSaItEED2Ev.exit.jt1 ], [ false, %bb.d ], [ false, %.lr.ph.i.i94.preheader ], [ false, %bb.e ], [ false, %.noexc ], [ false, %.noexc85 ], [ false, %.noexc91 ], [ false, %.noexc97 ]
  %i.gv = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.bd
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121
  %i.gx = load i64, ptr %i.bd, align 8, !tbaa !7
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gz = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.bb
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.hb = load i64, ptr %i.bb, align 8, !tbaa !7
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.hd = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.az
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.hf = load i64, ptr %i.az, align 8, !tbaa !7
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.hh = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ax
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.hj = load i64, ptr %i.ax, align 8, !tbaa !7
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %_ZN9SampleICC6Read32ERSiPvi.exit73.thread

_ZNSt6vectorItSaItEED2Ev.exit119:                 ; preds = %bb.h, %bb.r, %bb.f, %bb.t
  %.pn67 = phi { ptr, i32 } [ %i.gp, %bb.t ], [ %i.dk, %bb.f ], [ %i.ek, %bb.h ], [ %.pn.pn180, %bb.r ]
  %i.hl = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.bd
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit119
  %i.hn = load i64, ptr %i.bd, align 8, !tbaa !7
  %i.ho = add i64 %i.hn, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.ho) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hp = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.bb
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142
  %i.hr = load i64, ptr %i.bb, align 8, !tbaa !7
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ht = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.az
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.hv = load i64, ptr %i.az, align 8, !tbaa !7
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.hx = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ax
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.hz = load i64, ptr %i.ax, align 8, !tbaa !7
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn67

_ZN9SampleICC6Read32ERSiPvi.exit73.thread:        ; preds = %_ZN9SampleICC5Read8ERSiPvi.exit.i74, %_ZN9SampleICC5Read8ERSiPvi.exit.i69, %_ZN9SampleICC5Read8ERSiPvi.exit.i, %_ZN9SampleICC6Read32ERSiPvi.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %.4 = phi i1 [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i69 ], [ %cond185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ false, %_ZN9SampleICC6Read32ERSiPvi.exit78 ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i ], [ false, %_ZN9SampleICC5Read8ERSiPvi.exit.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.a, %_ZN9SampleICC6Read32ERSiPvi.exit73.thread
  %.5 = phi i1 [ false, %bb.a ], [ %.4, %_ZN9SampleICC6Read32ERSiPvi.exit73.thread ], [ false, %bb.b ]
  ret i1 %.5
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_515LocalCachedFileD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_515LocalCachedFileE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !90
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !252
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !252
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !128

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !7
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut1DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}
end_hunk_0
