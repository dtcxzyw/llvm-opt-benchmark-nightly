Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/modalMenu?download=true
inline.NumInlined: 365
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
$_ZN3gui11IGUIElementD0Ev = comdat any

$_ZN3gui11IGUIElement7OnEventERK6SEvent = comdat any

$_ZN3gui11IGUIElement22updateAbsolutePositionEv = comdat any

$_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE = comdat any

$_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE = comdat any

$_ZN3gui11IGUIElement8addChildEPS0_ = comdat any

$_ZN3gui11IGUIElement11removeChildEPS0_ = comdat any

$_ZN3gui11IGUIElement17removeAllChildrenEv = comdat any

$_ZN3gui11IGUIElement6removeEv = comdat any

$_ZN3gui11IGUIElement4drawEv = comdat any

$_ZN3gui11IGUIElement12OnPostRenderEj = comdat any

$_ZN3gui11IGUIElement4moveEN4core8vector2dIiEE = comdat any

$_ZNK3gui11IGUIElement9isVisibleEv = comdat any

$_ZNK3gui11IGUIElement14isTrulyVisibleEv = comdat any

$_ZN3gui11IGUIElement10setVisibleEb = comdat any

$_ZNK3gui11IGUIElement12isSubElementEv = comdat any

$_ZN3gui11IGUIElement13setSubElementEb = comdat any

$_ZNK3gui11IGUIElement9isEnabledEv = comdat any

$_ZN3gui11IGUIElement10setEnabledEb = comdat any

$_ZN3gui11IGUIElement7setTextEPKw = comdat any

$_ZNK3gui11IGUIElement7getTextEv = comdat any

$_ZN3gui11IGUIElement14setToolTipTextEPKw = comdat any

$_ZNK3gui11IGUIElement14getToolTipTextEv = comdat any

$_ZNK3gui11IGUIElement5getIDEv = comdat any

$_ZN3gui11IGUIElement5setIDEi = comdat any

$_ZN3gui11IGUIElement12bringToFrontEPS0_ = comdat any

$_ZN3gui11IGUIElement10sendToBackEPS0_ = comdat any

$_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev = comdat any

$_ZNK3gui11IGUIElement16getElementFromIdEib = comdat any

$_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE = comdat any

$_ZNK3gui11IGUIElement7getNameEv = comdat any

$_ZN3gui11IGUIElement7setNameEPKc = comdat any

$_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE = comdat any

$_ZN3gui11IGUIElement10acceptsIMEEv = comdat any

$_ZTv0_n24_N3gui11IGUIElementD1Ev = comdat any

$_ZTv0_n24_N3gui11IGUIElementD0Ev = comdat any

$_ZN12GUIModalMenu7OnEventERK6SEvent = comdat any

$_ZN12GUIModalMenu10pausesGameEv = comdat any

$_ZN3gui11IGUIElement27recalculateAbsolutePositionEb = comdat any

$_ZN14IEventReceiverD2Ev = comdat any

$_ZN14IEventReceiverD0Ev = comdat any

$_ZN4core6stringIwEaSIwEERS1_PKT_ = comdat any

$_ZN4core6stringIcEaSIcEERS1_PKT_ = comdat any

$_ZTIN3gui11IGUIElementE = comdat any

$_ZTSN3gui11IGUIElementE = comdat any

$_ZTI17IReferenceCounted = comdat any

$_ZTS17IReferenceCounted = comdat any

$_ZTI14IEventReceiver = comdat any

$_ZTS14IEventReceiver = comdat any

$_ZTV14IEventReceiver = comdat any

$_ZTVN3gui11IGUIElementE = comdat any

$_ZTTN3gui11IGUIElementE = comdat any

@.str = private unnamed_addr constant [61 x i8] c"SEvent given to PointerAction::fromEvent has wrong EventType\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/luanti/luanti/src/gui/modalMenu.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN13PointerAction9fromEventERK6SEvent = private unnamed_addr constant [62 x i8] c"static PointerAction PointerAction::fromEvent(const SEvent &)\00", align 1
@g_settings = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"gui_scaling\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"KEY_ESCAPE\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"!m_touch_hovered\00", align 1
@__PRETTY_FUNCTION__._ZN12GUIModalMenu5enterEPN3gui11IGUIElementE = private unnamed_addr constant [45 x i8] c"void GUIModalMenu::enter(gui::IGUIElement *)\00", align 1
@_ZTV12GUIModalMenu = dso_local constant { [45 x ptr], [5 x ptr] } { [45 x ptr] [ptr inttoptr (i64 408 to ptr), ptr null, ptr @_ZTI12GUIModalMenu, ptr @_ZN12GUIModalMenuD1Ev, ptr @_ZN12GUIModalMenuD0Ev, ptr @_ZN12GUIModalMenu7OnEventERK6SEvent, ptr @_ZN3gui11IGUIElement22updateAbsolutePositionEv, ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE, ptr @_ZN3gui11IGUIElement8addChildEPS0_, ptr @_ZN3gui11IGUIElement11removeChildEPS0_, ptr @_ZN3gui11IGUIElement17removeAllChildrenEv, ptr @_ZN3gui11IGUIElement6removeEv, ptr @_ZN12GUIModalMenu4drawEv, ptr @_ZN3gui11IGUIElement12OnPostRenderEj, ptr @_ZN3gui11IGUIElement4moveEN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement9isVisibleEv, ptr @_ZNK3gui11IGUIElement14isTrulyVisibleEv, ptr @_ZN3gui11IGUIElement10setVisibleEb, ptr @_ZNK3gui11IGUIElement12isSubElementEv, ptr @_ZN3gui11IGUIElement13setSubElementEb, ptr @_ZNK3gui11IGUIElement9isEnabledEv, ptr @_ZN3gui11IGUIElement10setEnabledEb, ptr @_ZN3gui11IGUIElement7setTextEPKw, ptr @_ZNK3gui11IGUIElement7getTextEv, ptr @_ZN3gui11IGUIElement14setToolTipTextEPKw, ptr @_ZNK3gui11IGUIElement14getToolTipTextEv, ptr @_ZNK3gui11IGUIElement5getIDEv, ptr @_ZN3gui11IGUIElement5setIDEi, ptr @_ZN3gui11IGUIElement12bringToFrontEPS0_, ptr @_ZN3gui11IGUIElement10sendToBackEPS0_, ptr @_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev, ptr @_ZNK3gui11IGUIElement16getElementFromIdEib, ptr @_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE, ptr @_ZNK3gui11IGUIElement7getNameEv, ptr @_ZN3gui11IGUIElement7setNameEPKc, ptr @_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE, ptr @_ZN3gui11IGUIElement10acceptsIMEEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12GUIModalMenu15preprocessEventERK6SEvent, ptr @_ZN12GUIModalMenu10pausesGameEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN12GUIModalMenu17remapClickOutsideERK6SEvent], [5 x ptr] [ptr inttoptr (i64 -408 to ptr), ptr inttoptr (i64 -408 to ptr), ptr @_ZTI12GUIModalMenu, ptr @_ZTv0_n24_N12GUIModalMenuD1Ev, ptr @_ZTv0_n24_N12GUIModalMenuD0Ev] }, align 8
@_ZTT12GUIModalMenu = dso_local unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 336) ({ [45 x ptr], [5 x ptr] }, ptr @_ZTV12GUIModalMenu, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 280) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTC12GUIModalMenu0_N3gui11IGUIElementE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTC12GUIModalMenu0_N3gui11IGUIElementE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [45 x ptr], [5 x ptr] }, ptr @_ZTV12GUIModalMenu, i32 0, i32 1, i32 3)], align 8
@_ZTC12GUIModalMenu0_N3gui11IGUIElementE = dso_local constant { [38 x ptr], [5 x ptr] } { [38 x ptr] [ptr inttoptr (i64 408 to ptr), ptr null, ptr @_ZTIN3gui11IGUIElementE, ptr @_ZN3gui11IGUIElementD1Ev, ptr @_ZN3gui11IGUIElementD0Ev, ptr @_ZN3gui11IGUIElement7OnEventERK6SEvent, ptr @_ZN3gui11IGUIElement22updateAbsolutePositionEv, ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE, ptr @_ZN3gui11IGUIElement8addChildEPS0_, ptr @_ZN3gui11IGUIElement11removeChildEPS0_, ptr @_ZN3gui11IGUIElement17removeAllChildrenEv, ptr @_ZN3gui11IGUIElement6removeEv, ptr @_ZN3gui11IGUIElement4drawEv, ptr @_ZN3gui11IGUIElement12OnPostRenderEj, ptr @_ZN3gui11IGUIElement4moveEN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement9isVisibleEv, ptr @_ZNK3gui11IGUIElement14isTrulyVisibleEv, ptr @_ZN3gui11IGUIElement10setVisibleEb, ptr @_ZNK3gui11IGUIElement12isSubElementEv, ptr @_ZN3gui11IGUIElement13setSubElementEb, ptr @_ZNK3gui11IGUIElement9isEnabledEv, ptr @_ZN3gui11IGUIElement10setEnabledEb, ptr @_ZN3gui11IGUIElement7setTextEPKw, ptr @_ZNK3gui11IGUIElement7getTextEv, ptr @_ZN3gui11IGUIElement14setToolTipTextEPKw, ptr @_ZNK3gui11IGUIElement14getToolTipTextEv, ptr @_ZNK3gui11IGUIElement5getIDEv, ptr @_ZN3gui11IGUIElement5setIDEi, ptr @_ZN3gui11IGUIElement12bringToFrontEPS0_, ptr @_ZN3gui11IGUIElement10sendToBackEPS0_, ptr @_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev, ptr @_ZNK3gui11IGUIElement16getElementFromIdEib, ptr @_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE, ptr @_ZNK3gui11IGUIElement7getNameEv, ptr @_ZN3gui11IGUIElement7setNameEPKc, ptr @_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE, ptr @_ZN3gui11IGUIElement10acceptsIMEEv], [5 x ptr] [ptr inttoptr (i64 -408 to ptr), ptr inttoptr (i64 -408 to ptr), ptr @_ZTIN3gui11IGUIElementE, ptr @_ZTv0_n24_N3gui11IGUIElementD1Ev, ptr @_ZTv0_n24_N3gui11IGUIElementD0Ev] }, align 8
@_ZTIN3gui11IGUIElementE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN3gui11IGUIElementE, i32 0, i32 2, ptr @_ZTI17IReferenceCounted, i64 -6141, ptr @_ZTI14IEventReceiver, i64 2 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN3gui11IGUIElementE = linkonce_odr dso_local constant [20 x i8] c"N3gui11IGUIElementE\00", comdat, align 1
@_ZTI17IReferenceCounted = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17IReferenceCounted }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS17IReferenceCounted = linkonce_odr dso_local constant [20 x i8] c"17IReferenceCounted\00", comdat, align 1
@_ZTI14IEventReceiver = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14IEventReceiver }, comdat, align 8
@_ZTS14IEventReceiver = linkonce_odr dso_local constant [17 x i8] c"14IEventReceiver\00", comdat, align 1
@_ZTI12GUIModalMenu = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12GUIModalMenu, ptr @_ZTIN3gui11IGUIElementE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12GUIModalMenu = dso_local constant [15 x i8] c"12GUIModalMenu\00", align 1
@_ZTV14IEventReceiver = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI14IEventReceiver, ptr @_ZN14IEventReceiverD2Ev, ptr @_ZN14IEventReceiverD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN3gui11IGUIElementE = linkonce_odr dso_local constant { [38 x ptr], [5 x ptr] } { [38 x ptr] [ptr inttoptr (i64 312 to ptr), ptr null, ptr @_ZTIN3gui11IGUIElementE, ptr @_ZN3gui11IGUIElementD1Ev, ptr @_ZN3gui11IGUIElementD0Ev, ptr @_ZN3gui11IGUIElement7OnEventERK6SEvent, ptr @_ZN3gui11IGUIElement22updateAbsolutePositionEv, ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE, ptr @_ZN3gui11IGUIElement8addChildEPS0_, ptr @_ZN3gui11IGUIElement11removeChildEPS0_, ptr @_ZN3gui11IGUIElement17removeAllChildrenEv, ptr @_ZN3gui11IGUIElement6removeEv, ptr @_ZN3gui11IGUIElement4drawEv, ptr @_ZN3gui11IGUIElement12OnPostRenderEj, ptr @_ZN3gui11IGUIElement4moveEN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement9isVisibleEv, ptr @_ZNK3gui11IGUIElement14isTrulyVisibleEv, ptr @_ZN3gui11IGUIElement10setVisibleEb, ptr @_ZNK3gui11IGUIElement12isSubElementEv, ptr @_ZN3gui11IGUIElement13setSubElementEb, ptr @_ZNK3gui11IGUIElement9isEnabledEv, ptr @_ZN3gui11IGUIElement10setEnabledEb, ptr @_ZN3gui11IGUIElement7setTextEPKw, ptr @_ZNK3gui11IGUIElement7getTextEv, ptr @_ZN3gui11IGUIElement14setToolTipTextEPKw, ptr @_ZNK3gui11IGUIElement14getToolTipTextEv, ptr @_ZNK3gui11IGUIElement5getIDEv, ptr @_ZN3gui11IGUIElement5setIDEi, ptr @_ZN3gui11IGUIElement12bringToFrontEPS0_, ptr @_ZN3gui11IGUIElement10sendToBackEPS0_, ptr @_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev, ptr @_ZNK3gui11IGUIElement16getElementFromIdEib, ptr @_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE, ptr @_ZNK3gui11IGUIElement7getNameEv, ptr @_ZN3gui11IGUIElement7setNameEPKc, ptr @_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE, ptr @_ZN3gui11IGUIElement10acceptsIMEEv], [5 x ptr] [ptr inttoptr (i64 -312 to ptr), ptr inttoptr (i64 -312 to ptr), ptr @_ZTIN3gui11IGUIElementE, ptr @_ZTv0_n24_N3gui11IGUIElementD1Ev, ptr @_ZTv0_n24_N3gui11IGUIElementD0Ev] }, comdat, align 8
@_ZTTN3gui11IGUIElementE = linkonce_odr dso_local unnamed_addr constant [2 x ptr] [ptr getelementptr inbounds inrange(-24, 280) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTVN3gui11IGUIElementE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTVN3gui11IGUIElementE, i32 0, i32 1, i32 3)], comdat, align 8

; Function Attrs: mustprogress uwtable
define dso_local { i64, i64 } @_ZN13PointerAction9fromEventERK6SEvent(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !16
  switch i32 %i.a, label %bb.d [
    i32 2, label %bb.b
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #22 ; 0 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !20
  %i.h = mul i64 %i.g, 1000
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = udiv i64 %i.j, 1000000
  %i.l = add i64 %i.k, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.q = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %1) #22 ; 0 uses
  %i.r = load i64, ptr %1, align 8, !tbaa !20
  %i.s = mul i64 %i.r, 1000
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  %i.v = udiv i64 %i.u, 1000000
  %i.w = add i64 %i.v, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN13PointerAction9fromEventERK6SEvent) #23
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0 = phi i64 [ %i.l, %bb.b ], [ %i.w, %bb.c ]
  %.sroa.3.0 = phi i32 [ %i.e, %bb.b ], [ %i.p, %bb.c ]
  %.sroa.0.0 = phi i32 [ %i.c, %bb.b ], [ %i.n, %bb.c ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN13PointerAction9isRelatedES_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc4 = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = load i32, ptr %0, align 8, !tbaa !25
  %i.d = sub nsw i32 %i.c, %.sroa.0.0.extract.trunc4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26
  %i.g = sub nsw i32 %i.f, %.sroa.2.0.extract.trunc
  %i.h = sitofp nsz i32 %i.d to float             ; 2 uses
  %i.i = sitofp nsz i32 %i.g to float             ; 2 uses
  %i.j = fmul nnan nsz float %i.i, %i.i
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.j)
  %reass.sub = sub i64 %i.b, %2
  %3 = add i64 %reass.sub, 399
  %i.l = icmp ult i64 %3, 799
  %i.m = fcmp nsz olt float %i.k, 9.000000e+02
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  ret i1 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GUIModalMenuC2EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiP12IMenuManagerb(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %7 = alloca %"class.core::rect", align 16       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string.8", align 8 ; 10 uses
  %i.a = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store <4 x i32> <i32 0, i32 0, i32 100, i32 100>, ptr %7, align 16, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @_ZN3gui11IGUIElementC2ENS_17EGUI_ELEMENT_TYPEEPNS_15IGUIEnvironmentEPS0_iRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull %i.b, i32 noundef 15, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %i.j, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.k, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 %i.a, ptr %i.l, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.m, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr @g_settings, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.p, ptr %8, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.p, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.q, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.r, align 1, !tbaa !17
  %i.s = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %8, float noundef 5.000000e-01, float noundef 2.000000e+01)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.t = invoke noundef float @_ZN15RenderingEngine17getDisplayDensityEv()
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.u = fmul nsz float %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 332
  store float %i.u, ptr %i.v, align 4, !tbaa !67
  %i.w = load ptr, ptr %8, align 8, !tbaa !68     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.p
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.y = load i64, ptr %i.p, align 8, !tbaa !17
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.aa = load ptr, ptr %0, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !63  ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %._crit_edge.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %8, align 8, !tbaa !68    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.p
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.f
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.e
  %.pn11 = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !69  ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui11IGUIElementEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !71
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !71
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZN7irr_ptrIN3gui11IGUIElementEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #22, !inline_history !0
  br label %_ZN7irr_ptrIN3gui11IGUIElementEED2Ev.exit

_ZN7irr_ptrIN3gui11IGUIElementEED2Ev.exit:        ; preds = %bb.g, %bb.h, %bb.i
  call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull %i.b) #22
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementC2ENS_17EGUI_ELEMENT_TYPEEPNS_15IGUIEnvironmentEPS0_iRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(16) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV14IEventReceiver, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !72
  store ptr %i.g, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !74
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !74
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false)
  store i32 1, ptr %i.q, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 1, ptr %i.r, align 4, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.s, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.v, align 8, !tbaa !78
  store i32 0, ptr %i.u, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.y, align 8, !tbaa !78
  store i32 0, ptr %i.x, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.ab, align 8, !tbaa !66
  store i8 0, ptr %i.aa, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
end_hunk_0
begin_hunk_1_@_ZN12GUIModalMenuD2Ev:bb.a
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.q) #22, !inline_history !0
  br label %_ZN7irr_ptrIN3gui11IGUIElementEED2Ev.exit

_ZN7irr_ptrIN3gui11IGUIElementEED2Ev.exit:        ; preds = %bb.b, %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull %i.x) #22
  ret void

bb.e:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #26
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN12GUIModalMenuD1Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZTv0_n24_N12GUIModalMenuD1Ev(ptr nofree readonly captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN12GUIModalMenuD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZTv0_n24_N12GUIModalMenuD0Ev(ptr nofree readonly captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12GUIModalMenu17allowFocusRemovalEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(408) initializes((376, 377)) %0, i1 noundef zeroext %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 %i.a, ptr %i.b, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN12GUIModalMenu12canTakeFocusEPN3gui11IGUIElementE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(408) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.c ], [ %1, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 3 uses
  %.not8.not.i = icmp eq ptr %i.c, null
  br i1 %.not8.not.i, label %_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit.thread, label %.preheader.i, !llvm.loop !117

_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit: ; preds = %.preheader.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.f = load i8, ptr %i.e, align 8, !tbaa !90, !range !91, !noundef !92
  %i.g = trunc nuw i8 %i.f to i1
  br label %_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit.thread

_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit.thread: ; preds = %bb.c, %_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit, %bb.b
  %i.h = phi i1 [ %i.g, %_ZNK3gui11IGUIElement14isMyDescendantEPKS0_.exit ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GUIModalMenu4drawEv(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !93, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 488
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !118
  %i.s = icmp ne i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp ne i32 %i.p, %i.u
  %.not3.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %.not3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.m, align 4              ; 2 uses
  store i64 %i.w, ptr %i.q, align 4, !tbaa !27
  %i.x = load ptr, ptr %0, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 280
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = load ptr, ptr %0, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(408) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12GUIModalMenu8quitMenuEv(ptr noundef nonnull align 8 dereferenceable(408) initializes((376, 377)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i8 1, ptr %i.a, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(308) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12GUIModalMenu17remapClickOutsideERK6SEvent(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.PointerAction, align 8      ; 9 uses
  %4 = alloca %struct.SEvent, align 8             ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string.8", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i8, ptr %i.a, align 8, !tbaa !64, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.d, 2
  %or.cond = select i1 %i.c, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  switch i32 %i.f, label %bb.i [
    i32 0, label %_ZN13PointerAction9fromEventERK6SEvent.exit
    i32 4, label %_ZN13PointerAction9fromEventERK6SEvent.exit
  ]

_ZN13PointerAction9fromEventERK6SEvent.exit:      ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %.sroa.02.0.copyload25 = load i64, ptr %i.g, align 8, !tbaa !27 ; 2 uses
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.5.0.copyload27 = load i64, ptr %.sroa.5.0..sroa_idx26, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.j = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #22 ; 0 uses
  %i.k = load i64, ptr %2, align 8, !tbaa !20
  %i.l = mul i64 %i.k, 1000
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = udiv i64 %i.n, 1000000
  %i.p = add i64 %i.o, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store i64 %i.i, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(308) %i.w, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 3 uses
  %.not7.i = icmp ne ptr %i.aa, null              ; 2 uses
  %i.ab = icmp ne ptr %i.aa, %0
  %or.cond.not8.i = and i1 %i.ab, %.not7.i
  br i1 %or.cond.not8.i, label %.lr.ph.i, label %_ZL7isChildPN3gui11IGUIElementES1_.exit

.lr.ph.i:                                         ; preds = %_ZN13PointerAction9fromEventERK6SEvent.exit, %.lr.ph.i
  %.059.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.aa, %_ZN13PointerAction9fromEventERK6SEvent.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.059.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !84 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  %i.ae = icmp ne ptr %i.ad, %0
  %or.cond.not.i = and i1 %i.ae, %.not.i
  br i1 %or.cond.not.i, label %.lr.ph.i, label %_ZL7isChildPN3gui11IGUIElementES1_.exit, !llvm.loop !119

_ZL7isChildPN3gui11IGUIElementES1_.exit:          ; preds = %.lr.ph.i, %_ZN13PointerAction9fromEventERK6SEvent.exit
  %.not.lcssa.i = phi i1 [ %.not7.i, %_ZN13PointerAction9fromEventERK6SEvent.exit ], [ %.not.i, %.lr.ph.i ]
  br i1 %.not.lcssa.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZL7isChildPN3gui11IGUIElementES1_.exit
  %i.af = load i32, ptr %i.e, align 4, !tbaa !17
  switch i32 %i.af, label %bb.h [
    i32 0, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !120
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc4.i = trunc i64 %.sroa.02.0.copyload25 to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload25, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !24
  %i.ah = load i32, ptr %3, align 8, !tbaa !25
  %i.ai = sub nsw i32 %i.ah, %.sroa.0.0.extract.trunc4.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  %i.al = sub nsw i32 %i.ak, %.sroa.2.0.extract.trunc.i
  %i.am = sitofp nsz i32 %i.ai to float           ; 2 uses
  %i.an = sitofp nsz i32 %i.al to float           ; 2 uses
  %i.ao = fmul nnan nsz float %i.an, %i.an
  %i.ap = call nsz float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ao)
  %reass.sub = sub i64 %i.ag, %.sroa.5.0.copyload27
  %6 = add i64 %reass.sub, 399
  %i.aq = icmp ult i64 %6, 799
  %i.ar = fcmp nsz olt float %i.ap, 9.000000e+02
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.au, i8 0, i64 36, i1 false)
  store i32 3, ptr %4, align 8, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 27, ptr %i.av, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.aw, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 10, ptr %i.ax, align 8, !tbaa !66
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.ay, align 2, !tbaa !17
  %i.az = invoke i64 @_ZN8KeyPress13getSpecialKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %._crit_edge.i.i
  %.sroa.022.0.extract.trunc = trunc i64 %i.az to i32
  %i.ba = and i64 %i.az, 1095216660480
  %.not.i18 = icmp eq i64 %i.ba, 0
  %spec.select.i = select i1 %.not.i18, i32 %.sroa.022.0.extract.trunc, i32 0
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %spec.select.i, ptr %i.bb, align 8, !tbaa !17
  %i.bc = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aw
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 1, ptr %i.bg, align 4
  store i32 0, ptr %i.at, align 8, !tbaa !17
  %i.bh = load ptr, ptr %0, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.aw
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.g
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.bl

bb.h:                                             ; preds = %bb.e, %bb.c, %_ZL7isChildPN3gui11IGUIElementES1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  %.012 = phi i1 [ false, %_ZL7isChildPN3gui11IGUIElementES1_.exit ], [ true, %bb.d ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.c ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %bb.h
  %.1 = phi i1 [ %.012, %bb.h ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

declare i64 @_ZN8KeyPress13getSpecialKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.SEvent, align 8             ; 14 uses
  %4 = alloca %struct.SEvent, align 8             ; 14 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.010 = phi ptr [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.j, i8 0, i64 36, i1 false)
  store i32 2, ptr %4, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !27
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 4, ptr %i.m, align 4
  switch i32 %1, label %.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
    i32 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.n, align 8, !tbaa !17
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 8, ptr %i.o, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.p, align 8, !tbaa !17
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 4, ptr %i.q, align 4, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 10, ptr %i.r, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %0, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %4)
  br i1 %i.w, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not = icmp eq ptr %.010, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %.010, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(308) %.010, ptr noundef nonnull align 8 dereferenceable(56) %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i1 [ false, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %or.cond = or i1 %2, %.0
  br i1 %or.cond, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ae, i8 0, i64 36, i1 false)
  store i32 2, ptr %3, align 8, !tbaa !16
  %i.af = load <2 x i32>, ptr %i.k, align 4, !tbaa !27
  store <2 x i32> %i.af, ptr %i.ad, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 4, ptr %i.ag, align 4
  switch i32 %1, label %default.unreachable [
    i32 0, label %bb.n
    i32 2, label %bb.o
    i32 1, label %bb.p
    i32 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.ah, align 8, !tbaa !17
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 8, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.aj, align 8, !tbaa !17
  br label %bb.r
end_hunk_1
begin_hunk_2_@_ZN12GUIModalMenu15preprocessEventERK6SEvent:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.af

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 7 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 5 uses
  %.not63 = icmp eq ptr %i.am, %i.ab
  br i1 %.not63, label %_ZN12GUIModalMenu5enterEPN3gui11IGUIElementE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN12GUIModalMenu5leaveEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i8 0, i64 36, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.ap, align 8, !tbaa !17
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(308) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %.noexc unwind label %bb.x, !inline_history !124 ; 0 uses

.noexc:                                           ; preds = %bb.j
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !69 ; 3 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !71
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !71
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.l, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ay) #22, !inline_history !122
  br label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i

_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i: ; preds = %bb.l, %bb.k, %.noexc
  store ptr null, ptr %i.al, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN12GUIModalMenu5leaveEv.exit

_ZN12GUIModalMenu5leaveEv.exit:                   ; preds = %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i, %bb.i
  %.not.i39 = icmp eq ptr %i.ab, null
  br i1 %.not.i39, label %_ZN12GUIModalMenu5enterEPN3gui11IGUIElementE.exit, label %_ZN7irr_ptrIN3gui11IGUIElementEE4grabEPS1_.exit.i

_ZN7irr_ptrIN3gui11IGUIElementEE4grabEPS1_.exit.i: ; preds = %_ZN12GUIModalMenu5leaveEv.exit
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.ab, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !71
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !71
  store ptr %i.ab, ptr %i.al, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  store i32 1, ptr %5, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.bm, align 8, !tbaa !17
  store i32 2, ptr %i.bn, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ab, ptr %i.bo, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(308) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc41 unwind label %bb.x, !inline_history !125 ; 0 uses

.noexc41:                                         ; preds = %_ZN7irr_ptrIN3gui11IGUIElementEE4grabEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN12GUIModalMenu5enterEPN3gui11IGUIElementE.exit

_ZN12GUIModalMenu5enterEPN3gui11IGUIElementE.exit: ; preds = %.noexc41, %_ZN12GUIModalMenu5leaveEv.exit, %bb.h
  %i.bs = load i32, ptr %i.ac, align 4, !tbaa !17
  %i.bt = invoke noundef zeroext i1 @_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef %i.bs, i1 noundef zeroext false)
          to label %bb.m unwind label %bb.x       ; 3 uses

bb.m:                                             ; preds = %_ZN12GUIModalMenu5enterEPN3gui11IGUIElementE.exit
  %i.bu = load i32, ptr %i.ac, align 4, !tbaa !17 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.n, label %_ZN12GUIModalMenu5leaveEv.exit47

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.al, align 8, !tbaa !69 ; 4 uses
  %.not.i42 = icmp eq ptr %i.bw, null
  br i1 %.not.i42, label %_ZN12GUIModalMenu5leaveEv.exit47.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.by, i8 0, i64 36, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !16
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 3, ptr %i.bz, align 8, !tbaa !17
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(308) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %.noexc46 unwind label %bb.x, !inline_history !124 ; 0 uses

.noexc46:                                         ; preds = %bb.o
  %i.ce = load ptr, ptr %i.al, align 8, !tbaa !69 ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i43, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i45, label %bb.p

bb.p:                                             ; preds = %.noexc46
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !71
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !71
  %.not.i.i.i44 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i44, label %bb.q, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i45

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(12) %i.ci) #22, !inline_history !122
  br label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i45

_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i45: ; preds = %bb.q, %bb.p, %.noexc46
  store ptr null, ptr %i.al, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.pr = load i32, ptr %i.ac, align 4, !tbaa !17
  br label %_ZN12GUIModalMenu5leaveEv.exit47

_ZN12GUIModalMenu5leaveEv.exit47:                 ; preds = %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i45, %bb.m
  %i.cp = phi i32 [ %.pr, %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit.i45 ], [ %i.bu, %bb.m ]
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.r, label %_ZN12GUIModalMenu5leaveEv.exit47.thread

bb.r:                                             ; preds = %_ZN12GUIModalMenu5leaveEv.exit47
  %i.cr = load i32, ptr %1, align 8, !tbaa !16
  switch i32 %i.cr, label %bb.u [
    i32 2, label %bb.s
    i32 5, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !17
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.cw = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %3) #22 ; 0 uses
  %i.cx = load i64, ptr %3, align 8, !tbaa !20
  %i.cy = mul i64 %i.cx, 1000
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !21
  %i.db = udiv i64 %i.da, 1000000
  %i.dc = add i64 %i.db, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dd = load i32, ptr %i.n, align 8, !tbaa !17
  %i.de = load i32, ptr %i.p, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.df = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #22 ; 0 uses
  %i.dg = load i64, ptr %2, align 8, !tbaa !20
  %i.dh = mul i64 %i.dg, 1000
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !21
  %i.dk = udiv i64 %i.dj, 1000000
  %i.dl = add i64 %i.dk, %i.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN13PointerAction9fromEventERK6SEvent) #23
          to label %.noexc48 unwind label %bb.x

.noexc48:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.t
  %.sroa.5.0.i = phi i64 [ %i.dc, %bb.s ], [ %i.dl, %bb.t ] ; 2 uses
  %.sroa.3.0.i = phi i32 [ %i.cv, %bb.s ], [ %i.de, %bb.t ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %i.ct, %bb.s ], [ %i.dd, %bb.t ] ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i32 %.sroa.3.0.i to i64
  %.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.3.0.insert.ext.i, 32
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.dm, align 8, !tbaa !27 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !94
  %.sroa.0.0.extract.trunc4.i = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.dn = sub nsw i32 %.sroa.0.0.i, %.sroa.0.0.extract.trunc4.i
  %i.do = sub nsw i32 %.sroa.3.0.i, %.sroa.2.0.extract.trunc.i
  %i.dp = sitofp nsz i32 %i.dn to float           ; 2 uses
  %i.dq = sitofp nsz i32 %i.do to float           ; 2 uses
  %i.dr = fmul nnan nsz float %i.dq, %i.dq
  %i.ds = call nsz float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dr)
  %reass.sub.i = add i64 %.sroa.5.0.i, 399
  %8 = sub i64 %reass.sub.i, %.sroa.2.0.copyload
  %i.dt = icmp ult i64 %8, 799
  %i.du = fcmp nsz olt float %i.ds, 9.000000e+02
  %i.dv = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %i.dv, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dw = invoke noundef zeroext i1 @_ZN12GUIModalMenu18simulateMouseEventE18ETOUCH_INPUT_EVENTb(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 3, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.x       ; 0 uses

bb.x:                                             ; preds = %_ZN12GUIModalMenu5enterEPN3gui11IGUIElementE.exit, %bb.aa, %bb.ac, %bb.f, %bb.c, %bb.j, %_ZN7irr_ptrIN3gui11IGUIElementEE4grabEPS1_.exit.i, %bb.o, %bb.u, %bb.w
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.y:                                             ; preds = %bb.w, %bb.v
  %.sroa.057.sroa.0.0.insert.ext = zext i32 %.sroa.0.0.i to i64
  %.sroa.057.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.057.sroa.0.0.insert.ext
  store i64 %.sroa.057.sroa.0.0.insert.insert, ptr %i.dm, align 8, !tbaa !27
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !94
  br label %_ZN12GUIModalMenu5leaveEv.exit47.thread

bb.z:                                             ; preds = %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !17
  %.not34 = icmp eq i32 %i.dz, 1
  br i1 %.not34, label %bb.aa, label %_ZN12GUIModalMenu5leaveEv.exit47.thread

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !82 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !29
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = invoke noundef ptr %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.eb)
          to label %bb.ab unwind label %bb.x      ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %.not35 = icmp eq ptr %i.ef, null
  br i1 %.not35, label %_ZN12GUIModalMenu5leaveEv.exit47.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.a, align 8, !tbaa !62
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noundef nonnull align 8 dereferenceable(308) %i.ef, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.ad unwind label %bb.x      ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %i.a, align 8, !tbaa !62
  br label %_ZN12GUIModalMenu5leaveEv.exit47.thread

_ZN12GUIModalMenu5leaveEv.exit47.thread:          ; preds = %bb.n, %bb.y, %_ZN12GUIModalMenu5leaveEv.exit47, %bb.z, %bb.ab, %bb.ad, %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit
  %.1 = phi i1 [ true, %bb.ad ], [ %i.bt, %_ZN12GUIModalMenu5leaveEv.exit47 ], [ true, %bb.z ], [ %i.bt, %bb.y ], [ true, %bb.ab ], [ true, %_ZN7irr_ptrI12GUIModalMenuE4grabEPS0_.exit ], [ %i.bt, %bb.n ] ; 2 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !29
  %i.el = getelementptr i8, ptr %i.ek, i64 -24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %0, i64 %i.em ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !71
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.eo, align 8, !tbaa !71
  %.not.i.i.i51 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.i51, label %bb.ae, label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit

bb.ae:                                            ; preds = %_ZN12GUIModalMenu5leaveEv.exit47.thread
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !29
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(12) %i.en) #22, !inline_history !123
  br label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit

bb.af:                                            ; preds = %bb.x, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.x ], [ %i.ak, %bb.g ]
  %i.eu = load ptr, ptr %0, align 8, !tbaa !29
  %i.ev = getelementptr i8, ptr %i.eu, i64 -24
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr %0, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !71
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !71
  %.not.i.i.i53 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.i53, label %bb.ag, label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit54

bb.ag:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !29
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(12) %i.ex) #22, !inline_history !123
  br label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit54

_ZN7irr_ptrI12GUIModalMenuED2Ev.exit54:           ; preds = %bb.af, %bb.ag
  resume { ptr, i32 } %.pn.pn.pn

bb.ah:                                            ; preds = %bb.b
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ff = load i8, ptr %i.fe, align 4
  %i.fg = and i8 %i.ff, 4
  %.not = icmp eq i8 %i.fg, 0
  br i1 %.not, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i64 %i.fi, ptr %i.fj, align 4, !tbaa !27
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !69 ; 3 uses
  %.not.i55 = icmp eq ptr %i.fl, null
  br i1 %.not.i55, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !29
  %i.fn = getelementptr i8, ptr %i.fm, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 %i.fo ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !71
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %i.fq, align 8, !tbaa !71
  %.not.i.i56 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i56, label %bb.ak, label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ft = load ptr, ptr %i.fp, align 8, !tbaa !29
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  tail call void %i.fv(ptr noundef nonnull align 8 dereferenceable(12) %i.fp) #22, !inline_history !4
  br label %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit

_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit: ; preds = %bb.ai, %bb.aj, %bb.ak
  store ptr null, ptr %i.fk, align 8, !tbaa !69
  br label %bb.al

bb.al:                                            ; preds = %_ZN7irr_ptrIN3gui11IGUIElementEE5resetEPS1_.exit, %bb.ah
  %i.fw = load ptr, ptr %0, align 8, !tbaa !29
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 328
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = tail call noundef zeroext i1 %i.fy(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.fz, label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.b, %bb.al
  br label %_ZN7irr_ptrI12GUIModalMenuED2Ev.exit

_ZN7irr_ptrI12GUIModalMenuED2Ev.exit:             ; preds = %bb.ae, %_ZN12GUIModalMenu5leaveEv.exit47.thread, %bb.al, %bb.a, %bb.am
  %.2 = phi i1 [ false, %bb.am ], [ true, %bb.al ], [ true, %bb.a ], [ %.1, %_ZN12GUIModalMenu5leaveEv.exit47.thread ], [ %.1, %bb.ae ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN12GUIModalMenu14getScalingInfoEN4core8vector2dIjEES2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.GUIModalMenu::ScalingInfo") align 4 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %1, i64 %2, i64 %3) local_unnamed_addr #14 align 2 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i64 %2, 32
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.b = load float, ptr %i.a, align 4, !tbaa !67 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.e = uitofp nsz i32 %.sroa.0.0.extract.trunc to float
  %i.f = uitofp nsz i32 %.sroa.3.0.extract.trunc to float
  %i.g = insertelement <2 x float> poison, float %i.e, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.f, i64 1 ; 2 uses
  %.sroa.06.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.i = uitofp nsz i32 %.sroa.06.0.extract.trunc to float
  %i.j = uitofp nsz i32 %.sroa.4.0.extract.trunc to float
  %i.k = insertelement <2 x float> poison, float %i.i, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fdiv nsz <2 x float> %i.l, %i.h          ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.o = fcmp nsz olt float %i.n, %i.b
  %.sroa.speculated13 = select i1 %i.o, float %i.n, float %i.b ; 2 uses
  %i.p = extractelement <2 x float> %i.m, i64 1   ; 2 uses
  %i.q = fcmp nsz olt float %i.p, %.sroa.speculated13
  %.sroa.speculated = select i1 %i.q, float %i.p, float %.sroa.speculated13 ; 2 uses
  %i.r = insertelement <2 x float> poison, float %.sroa.speculated, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul nsz <2 x float> %i.s, %i.h
  %i.u = fptosi <2 x float> %i.t to <2 x i32>
  store float %.sroa.speculated, ptr %0, align 4, !tbaa !127
  %i.v = bitcast i64 %2 to <2 x i32>
  %i.w = lshr <2 x i32> %i.v, splat (i32 1)       ; 2 uses
  %i.x = sdiv <2 x i32> %i.u, splat (i32 2)       ; 2 uses
  %i.y = sub <2 x i32> %i.w, %i.x
  %i.z = add <2 x i32> %i.x, %i.w
  store <2 x i32> %i.y, ptr %i.c, align 4, !tbaa !27
  store <2 x i32> %i.z, ptr %i.d, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD1Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
