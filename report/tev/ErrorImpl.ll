Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ErrorImpl?download=true
inline.NumInlined: 810
inline.NumDeleted: 398
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev
declare void @_ZTv0_n24_NSt3__113basic_istreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev(ptr noundef) unnamed_addr #4 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev(ptr noundef) unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 24), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 104), ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 64), ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 16), ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED1Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = tail call noundef ptr @_ZN16AdobeXMPCore_Int18IMemoryAllocator_I18GetMemoryAllocatorEv() #29, !inline_history !79 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.h) #29, !inline_history !5
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED1Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED1Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.c) #29, !inline_history !79
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 8)) #29, !inline_history !80
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #29, !inline_history !80
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZThn16_NSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev(ptr noundef %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 24), ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 104), ptr %i.b, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 64), ptr %0, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 16), ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = tail call noundef ptr @_ZN16AdobeXMPCore_Int18IMemoryAllocator_I18GetMemoryAllocatorEv() #29, !inline_history !92 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.h) #29, !inline_history !6
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.c) #29, !inline_history !92
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 8)) #29, !inline_history !93
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.b) #29, !inline_history !93
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #33, !inline_history !94
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_NSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev(ptr noundef %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 24), ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 104), ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 64), ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 16), ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = tail call noundef ptr @_ZN16AdobeXMPCore_Int18IMemoryAllocator_I18GetMemoryAllocatorEv() #29, !inline_history !92 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.l) #29, !inline_history !6
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.g) #29, !inline_history !92
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 8)) #29, !inline_history !93
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.e) #29, !inline_history !93
  tail call void @_ZdlPv(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #33, !inline_history !94
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = tail call noundef ptr @_ZN16AdobeXMPCore_Int18IMemoryAllocator_I18GetMemoryAllocatorEv() #29 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.e) #29, !inline_history !4
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #29
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = tail call noundef ptr @_ZN16AdobeXMPCore_Int18IMemoryAllocator_I18GetMemoryAllocatorEv() #29, !inline_history !81 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.e) #29, !inline_history !136
  br label %_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED2Ev.exit

_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %0) #29, !inline_history !81
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

declare void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

declare noundef ptr @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6setbufEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE7seekoffExNS_8ios_base7seekdirEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 5 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = and i32 %3, 24                           ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.g, 24
  %i.j = icmp eq i32 %2, 1
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %4 = icmp eq ptr %i.f, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i8, ptr %i.k, align 8
  %i.m = trunc i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.q = select i1 %i.m, ptr %i.o, ptr %i.p
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %5 = select i1 %4, i64 0, i64 %i.t              ; 2 uses
  switch i32 %2, label %bb.r [
    i32 0, label %bb.j
    i32 1, label %bb.f
    i32 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %3, 8
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !98
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.ae = ptrtoint ptr %i.d to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %.0 = phi i64 [ %5, %bb.i ], [ %i.ab, %bb.g ], [ %i.ag, %bb.h ], [ 0, %bb.e ]
  %i.ah = add nsw i64 %.0, %1                     ; 7 uses
  %i.ai = icmp slt i64 %i.ah, 0
  %i.aj = icmp slt i64 %5, %i.ah
  %or.cond28 = or i1 %i.ai, %i.aj
  br i1 %or.cond28, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not23 = icmp eq i64 %i.ah, 0
  %.pre = and i32 %3, 8                           ; 2 uses
  br i1 %.not23, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not24 = icmp eq i32 %.pre, 0
  br i1 %.not24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = and i32 %3, 16
  %.not25 = icmp ne i32 %i.an, 0
  %i.ao = icmp eq ptr %i.d, null
  %or.cond29 = and i1 %.not25, %i.ao
  br i1 %or.cond29, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.n
  %.not26 = icmp eq i32 %.pre, 0
  br i1 %.not26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ah
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !97
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.at, align 8, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.au = and i32 %3, 16
  %.not27 = icmp eq i32 %i.au, 0
  br i1 %.not27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ah
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !96
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q, %bb.m, %bb.j, %bb.e, %bb.d, %bb.c
  %.sroa.8.0 = phi i64 [ -1, %bb.j ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.n ], [ -1, %bb.m ], [ %i.ah, %bb.q ], [ %i.ah, %bb.p ]
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { i64, i64 } @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(100) %0, i64 noundef %2, i32 noundef 0, i32 noundef %3)
  ret { i64, i64 } %i.d
}

declare noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4syncEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #11

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #11

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE9underflowEv(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77
  %i.i = and i32 %i.h, 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.j, align 8, !tbaa !100
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %i.f, %bb.e ], [ %i.k, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97   ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.m
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.o, align 1, !tbaa !78
  %i.r = zext i8 %i.q to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  %.0 = phi i32 [ %i.r, %bb.g ], [ -1, %bb.f ], [ -1, %bb.c ]
  ret i32 %.0
}

declare noundef i32 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 4 uses
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %1, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -1
  store ptr %i.m, ptr %i.i, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.n, align 8, !tbaa !100
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !77
  %i.q = and i32 %i.p, 16
  %.not = icmp eq i32 %i.q, 0
  %i.r = trunc i32 %1 to i8                       ; 2 uses
  br i1 %.not, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !78
  %i.u = icmp eq i8 %i.t, %i.r
  br i1 %i.u, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.w, align 8, !tbaa !100
  store i8 %i.r, ptr %i.v, align 1, !tbaa !78
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %._crit_edge, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %1, %._crit_edge ], [ -1, %bb.g ], [ -1, %bb.c ]
  ret i32 %.0
}

declare noundef i64 @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB8ne180100Ec.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !77
  %i.p = and i32 %i.o, 16
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputcB8ne180100Ec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 noundef signext 0)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.z, align 8              ; 2 uses
  %i.ab = trunc i8 %i.aa to i1                    ; 3 uses
  %i.ac = load i64, ptr %i.z, align 8
  %i.ad = and i64 %i.ac, -2
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = select i1 %i.ab, i64 %i.ae, i64 22      ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i8 %i.aa, 1
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = select i1 %i.ab, i64 %i.ah, i64 %i.aj   ; 2 uses
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = sub nuw i64 %i.af, %i.ak
  %i.an = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE6appendEyc(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.am, i8 noundef signext 0)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEEN16AdobeXMPCore_Int10TAllocatorIcEEE6resizeB8ne180100Ey.exit unwind label %bb.j ; 0 uses
end_hunk_0
