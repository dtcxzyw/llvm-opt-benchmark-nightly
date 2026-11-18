Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/MonotoneChainBuilder?download=true
inline.NumInlined: 208
inline.NumDeleted: 116
begin_hunk_0_@_ZN4geos5index5chain20MonotoneChainBuilder9getChainsEPKNS_4geom18CoordinateSequenceEPvRSt6vectorINS1_13MonotoneChainESaIS9_EE:bb.a
bb.q:                                             ; preds = %bb.p
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit15

_ZNSt6vectorImSaImEED2Ev.exit15:                  ; preds = %bb.q, %bb.p, %bb.l
  %.pn = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.aw, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit15, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit15 ], [ %i.al, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos5index5chain12ChainBuilderE, i64 16), ptr %3, align 8, !tbaa !27
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !42  ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i16, label %_ZN4geos5index5chain12ChainBuilderD2Ev.exit17, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #21, !inline_history !43
  br label %_ZN4geos5index5chain12ChainBuilderD2Ev.exit17

_ZN4geos5index5chain12ChainBuilderD2Ev.exit17:    ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index5chain12ChainBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !61 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos5index5chain12ChainBuilderE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index5chain12ChainBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !62 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos5index5chain12ChainBuilderE, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4geos5index5chain12ChainBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #21, !inline_history !43
  br label %_ZN4geos5index5chain12ChainBuilderD2Ev.exit

_ZN4geos5index5chain12ChainBuilderD2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !guid !63 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos5index5chain12ChainBuilder9filter_roEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !guid !64 {
bb.a:
  tail call void @_ZN4geos5index5chain12ChainBuilder7processEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !39
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos5index5chain12ChainBuilder7processEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !65 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load <2 x double>, ptr %1, align 8
  %i.e = load <2 x double>, ptr %i.b, align 8
  %i.f = fcmp oeq <2 x double> %i.d, %i.e         ; 2 uses
  %i.g = extractelement <2 x i1> %i.f, i64 0
  %i.h = extractelement <2 x i1> %i.f, i64 1
  %.0.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %.0.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZN4geos4geom8Quadrant8quadrantERKNS0_10CoordinateES4_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.i, %i.k
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = add i64 %i.n, -1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %.not.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.q, ptr %i.s, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.v, ptr %i.r, align 8, !tbaa !40
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !42   ; 4 uses
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 5 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #20 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store i64 %i.q, ptr %i.ai, align 8, !tbaa !38
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.w, i64 %i.z, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !42
  store ptr %i.ak, ptr %i.r, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.al, ptr %i.t, align 8, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i.i, %bb.g, %bb.e, %bb.c
  store i32 %i.i, ptr %i.j, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4geos4geom8Quadrant8quadrantERKNS0_10CoordinateES4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !guid !66 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load double, ptr %1, align 8, !tbaa !68  ; 2 uses
  %i.b = load double, ptr %0, align 8, !tbaa !68  ; 2 uses
  %i.c = fcmp oeq double %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !69
  %i.h = fcmp oeq double %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNK4geos4geom10Coordinate8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread: ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.s) #21
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !54
  %6 = icmp ult i64 %5, 16
  call void @llvm.assume(i1 %6)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.0, label %bb.h, label %bb.j

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread
  %.pn.pn28.ph = phi { ptr, i32 } [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread.a ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn.pn28 = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn.pn28.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.i) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.v = fcmp ult double %i.a, %i.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !69
  %i.aa = fcmp ult double %i.x, %i.z              ; 2 uses
  %. = select i1 %i.aa, i32 3, i32 0
  %.21 = select i1 %i.aa, i32 2, i32 1
  %.018 = select i1 %i.v, i32 %.21, i32 %.
  ret i32 %.018

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.h
  %.pn.pn27 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn.pn28, %bb.h ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  resume { ptr, i32 } %.pn.pn27

bb.k:                                             ; preds = %bb.f
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !guid !70 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !53
  %i.k = load i64, ptr %i.e, align 8, !tbaa !56
  store i64 %i.k, ptr %i.c, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !54
  store ptr %i.e, ptr %i.b, align 8, !tbaa !53
  store i64 0, ptr %i.m, align 8, !tbaa !54
  store i8 0, ptr %i.e, align 8, !tbaa !56
  ret void
}

declare void @_ZNK4geos4geom10Coordinate8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !71 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 24, ptr %i.a, align 8, !tbaa !38
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !53
  %i.d = load i64, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !54
  %i.f = load ptr, ptr %2, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util24IllegalArgumentExceptionE, i64 16), ptr %0, align 8, !tbaa !27
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.k) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.j
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !guid !72 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !79 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = load ptr, ptr %1, align 8, !tbaa !53, !noalias !80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !80 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !55, !alias.scope !81
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !54, !alias.scope !81
  store i8 0, ptr %i.d, align 8, !tbaa !56, !alias.scope !81
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !54, !alias.scope !81
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !54, !alias.scope !81
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !53, !alias.scope !81 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !54, !noalias !82 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !82
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !53, !noalias !82
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !55, !alias.scope !82
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !53   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !54 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !53, !alias.scope !82
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !56
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !56, !alias.scope !82
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !54, !alias.scope !82
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !53
  store i64 0, ptr %i.ai, align 8, !tbaa !54
  store i8 0, ptr %i.aa, align 8, !tbaa !56
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.am = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4util13GEOSExceptionE, i64 16), ptr %0, align 8, !tbaa !27
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.y
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.ap, %bb.i ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.as) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util24IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !guid !83 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 !guid !84 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE17_M_realloc_insertIJRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !92 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !93     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

_ZNKSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %3, align 8, !tbaa !38
  %i.s = load i64, ptr %4, align 8, !tbaa !38
  %i.t = load ptr, ptr %5, align 8, !tbaa !25
  invoke void @_ZN4geos5index5chain13MonotoneChainC1ERKNS_4geom18CoordinateSequenceEmmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.r, i64 noundef %i.s, ptr noundef %i.t)
          to label %_ZNSt16allocator_traitsISaIN4geos5index5chain13MonotoneChainEEE9constructIS3_JRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvRS4_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN4geos5index5chain13MonotoneChainEEE9constructIS3_JRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvRS4_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN4geos5index5chain13MonotoneChainEEE9constructIS3_JRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvRS4_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4geos5index5chain13MonotoneChainEEE9constructIS3_JRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvRS4_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4geos5index5chain13MonotoneChainEEE9constructIS3_JRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvRS4_PT_DpOT0_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 64, i1 false), !tbaa.struct !97, !alias.scope !98
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !88

_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN4geos5index5chain13MonotoneChainEEE9constructIS3_JRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4geos5index5chain13MonotoneChainEEE9constructIS3_JRKNS0_4geom18CoordinateSequenceERmSB_RPvEEEvRS4_PT_DpOT0_.exit ], [ %i.v, %.lr.ph.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %i.y, %.lr.ph.i.i.i.i30 ], [ %i.w, %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i.i32 = phi ptr [ %i.x, %.lr.ph.i.i.i.i30 ], [ %1, %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i32, i64 64, i1 false), !tbaa.struct !97, !alias.scope !100
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i32, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 64 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35, label %.lr.ph.i.i.i.i30, !llvm.loop !88

_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35: ; preds = %.lr.ph.i.i.i.i30, %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.w, %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.y, %.lr.ph.i.i.i.i30 ]
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #21
  br label %_ZNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit35, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !93
  store ptr %.0.lcssa.i.i.i.i34, ptr %i.a, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !47
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN4geos5index5chain13MonotoneChainESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #18 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #21
  invoke void @__cxa_rethrow() #19
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #22
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN4geos5index5chain13MonotoneChainC1ERKNS_4geom18CoordinateSequenceEmmPv(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, ptr noundef) unnamed_addr #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{i64 8957206523638487460}
!9 = !{i64 -2281156902032350556}
!10 = !{i64 4413195732366903857}
!11 = !{i64 8345537282538789137}
!12 = !{i64 -2423874833570778053}
!13 = !{i64 8020937839079821034}
!14 = !{i64 5718486224582025273}
!15 = !{i64 -5632194549441009779}
!16 = !{i64 4015750017726582872}
!17 = !{i64 -7365273506265098196}
!18 = !{i64 2980163206135309737}
!19 = !{i64 -7143655333732652880}
!20 = !{i64 -120236504227090455}
!21 = !{i64 870706534506076527}
!22 = !{i64 1816027004270108657}
!23 = !{i64 -145025003519918979}
!24 = !{!"any pointer", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"vtable pointer", !3, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN4geos4geom16CoordinateFilterE"}
!29 = !{!"p1 long", !24, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseImSaImEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorImSaImEE", !32, i64 0}
!34 = !{!"p1 _ZTSN4geos4geom10CoordinateE", !24, i64 0}
!35 = !{!"long", !4, i64 0}
!36 = !{!"_ZTSN4geos5index5chain12ChainBuilderE", !28, i64 0, !33, i64 8, !34, i64 32, !35, i64 40, !5, i64 48}
!37 = !{!36, !5, i64 48}
!38 = !{!35, !35, i64 0}
!39 = !{!36, !35, i64 40}
!40 = !{!30, !29, i64 8}
!41 = !{!30, !29, i64 16}
!42 = !{!30, !29, i64 0}
!43 = !{ptr @_ZN4geos5index5chain12ChainBuilderD2Ev}
!44 = !{!"p1 _ZTSN4geos5index5chain13MonotoneChainE", !24, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4geos5index5chain13MonotoneChainESaIS3_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!45, !44, i64 8}
!47 = !{!45, !44, i64 16}
!48 = !{!36, !34, i64 32}
!49 = !{!"double", !4, i64 0}
!50 = !{!"p1 omnipotent char", !24, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !35, i64 8, !4, i64 16}
!53 = !{!52, !50, i64 0}
!54 = !{!52, !35, i64 8}
!55 = !{!51, !50, i64 0}
!56 = !{!4, !4, i64 0}
!57 = distinct !{!57, i1 true, !"_ZN4geos5index5chain12ChainBuilder7getEndsEv"}
!58 = distinct !{!58, !57, !"_ZN4geos5index5chain12ChainBuilder7getEndsEv: argument 0"}
!59 = !{i64 -1367259156526538575}
!60 = !{!58}
!61 = !{i64 3457792458590176324}
!62 = !{i64 -270703192469504113}
!63 = !{i64 120964586182148557}
!64 = !{i64 -3149607503430109093}
!65 = !{i64 7408628339308149141}
!66 = !{i64 -1568256875705996328}
!67 = !{!"_ZTSN4geos4geom10CoordinateE", !49, i64 0, !49, i64 8, !49, i64 16}
!68 = !{!67, !49, i64 0}
!69 = !{!67, !49, i64 8}
!70 = !{i64 -1784036106295666570}
!71 = !{i64 2061578034056147345}
!72 = !{i64 1080103601501470593}
!73 = distinct !{!73, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!74 = distinct !{!74, !73, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!76 = distinct !{!76, !75, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!78 = distinct !{!78, !77, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!79 = !{i64 8377683171367591807}
!80 = !{!74}
!81 = !{!76, !74}
!82 = !{!78}
!83 = !{i64 -7970271966619478060}
!84 = !{i64 5858586566290294766}
!85 = distinct !{!85, i1 true, !"_ZSt19__relocate_object_aIN4geos5index5chain13MonotoneChainES3_SaIS3_EEvPT_PT0_RT1_"}
!86 = distinct !{!86, !85, !"_ZSt19__relocate_object_aIN4geos5index5chain13MonotoneChainES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!87 = distinct !{!87, !85, !"_ZSt19__relocate_object_aIN4geos5index5chain13MonotoneChainES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!88 = distinct !{!88, !99}
!89 = distinct !{!89, i1 true, !"_ZSt19__relocate_object_aIN4geos5index5chain13MonotoneChainES3_SaIS3_EEvPT_PT0_RT1_"}
!90 = distinct !{!90, !89, !"_ZSt19__relocate_object_aIN4geos5index5chain13MonotoneChainES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!91 = distinct !{!91, !89, !"_ZSt19__relocate_object_aIN4geos5index5chain13MonotoneChainES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!92 = !{i64 243514392339083169}
!93 = !{!45, !44, i64 0}
!94 = !{!"p1 _ZTSN4geos4geom18CoordinateSequenceE", !24, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!49, !49, i64 0}
!97 = !{i64 0, i64 8, !95, i64 8, i64 8, !25, i64 16, i64 8, !38, i64 24, i64 8, !38, i64 32, i64 8, !96, i64 40, i64 8, !96, i64 48, i64 8, !96, i64 56, i64 8, !96}
!98 = !{!87, !86}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!91, !90}
end_hunk_0
