Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiChatConsole?download=true
inline.NumInlined: 834
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
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

$_ZN14GUIChatConsoleD1Ev = comdat any

$_ZN14GUIChatConsoleD0Ev = comdat any

$_ZN14GUIChatConsole10acceptsIMEEv = comdat any

$_ZTv0_n24_N14GUIChatConsoleD1Ev = comdat any

$_ZTv0_n24_N14GUIChatConsoleD0Ev = comdat any

$_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = comdat any

$_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev = comdat any

$_ZN14IEventReceiverD2Ev = comdat any

$_ZN14IEventReceiverD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN17IReferenceCountedD2Ev = comdat any

$_ZN17IReferenceCountedD0Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_ = comdat any

$_ZN4core6stringIwEaSIwEERS1_PKT_ = comdat any

$_ZN4core6stringIcEaSIcEERS1_PKT_ = comdat any

$_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_ = comdat any

$_ZTIN3gui11IGUIElementE = comdat any

$_ZTSN3gui11IGUIElementE = comdat any

$_ZTI17IReferenceCounted = comdat any

$_ZTS17IReferenceCounted = comdat any

$_ZTI14IEventReceiver = comdat any

$_ZTS14IEventReceiver = comdat any

$_ZTV14IEventReceiver = comdat any

$_ZTV17IReferenceCounted = comdat any

$_ZTVN3gui11IGUIElementE = comdat any

$_ZTTN3gui11IGUIElementE = comdat any

@g_settings = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"console_alpha\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"background_chat.jpg\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"console_color\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"chat_font_size\00", align 1
@g_fontengine = external local_unnamed_addr global ptr, align 8
@errorstream = external thread_local global %class.LogStream, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"GUIChatConsole: Unable to load mono font\00", align 1
@.str.5 = private unnamed_addr constant [2 x i32] [i32 77, i32 0], align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"clickable_chat_weblinks\00", align 1
@_ZTV14GUIChatConsole = dso_local constant { [38 x ptr], [5 x ptr] } { [38 x ptr] [ptr inttoptr (i64 440 to ptr), ptr null, ptr @_ZTI14GUIChatConsole, ptr @_ZN14GUIChatConsoleD1Ev, ptr @_ZN14GUIChatConsoleD0Ev, ptr @_ZN14GUIChatConsole7OnEventERK6SEvent, ptr @_ZN3gui11IGUIElement22updateAbsolutePositionEv, ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE, ptr @_ZN3gui11IGUIElement8addChildEPS0_, ptr @_ZN3gui11IGUIElement11removeChildEPS0_, ptr @_ZN3gui11IGUIElement17removeAllChildrenEv, ptr @_ZN3gui11IGUIElement6removeEv, ptr @_ZN14GUIChatConsole4drawEv, ptr @_ZN3gui11IGUIElement12OnPostRenderEj, ptr @_ZN3gui11IGUIElement4moveEN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement9isVisibleEv, ptr @_ZNK3gui11IGUIElement14isTrulyVisibleEv, ptr @_ZN14GUIChatConsole10setVisibleEb, ptr @_ZNK3gui11IGUIElement12isSubElementEv, ptr @_ZN3gui11IGUIElement13setSubElementEb, ptr @_ZNK3gui11IGUIElement9isEnabledEv, ptr @_ZN3gui11IGUIElement10setEnabledEb, ptr @_ZN3gui11IGUIElement7setTextEPKw, ptr @_ZNK3gui11IGUIElement7getTextEv, ptr @_ZN3gui11IGUIElement14setToolTipTextEPKw, ptr @_ZNK3gui11IGUIElement14getToolTipTextEv, ptr @_ZNK3gui11IGUIElement5getIDEv, ptr @_ZN3gui11IGUIElement5setIDEi, ptr @_ZN3gui11IGUIElement12bringToFrontEPS0_, ptr @_ZN3gui11IGUIElement10sendToBackEPS0_, ptr @_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev, ptr @_ZNK3gui11IGUIElement16getElementFromIdEib, ptr @_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE, ptr @_ZNK3gui11IGUIElement7getNameEv, ptr @_ZN3gui11IGUIElement7setNameEPKc, ptr @_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE, ptr @_ZN14GUIChatConsole10acceptsIMEEv], [5 x ptr] [ptr inttoptr (i64 -440 to ptr), ptr inttoptr (i64 -440 to ptr), ptr @_ZTI14GUIChatConsole, ptr @_ZTv0_n24_N14GUIChatConsoleD1Ev, ptr @_ZTv0_n24_N14GUIChatConsoleD0Ev] }, align 8
@_ZTT14GUIChatConsole = dso_local unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 280) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTV14GUIChatConsole, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 280) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTC14GUIChatConsole0_N3gui11IGUIElementE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTC14GUIChatConsole0_N3gui11IGUIElementE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTV14GUIChatConsole, i32 0, i32 1, i32 3)], align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"keymap_console\00", align 1
@.str.8 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@_ZZN14GUIChatConsole12weblinkClickEiiE9s_oldtime = internal unnamed_addr global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Opening webpage\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Failed to open webpage\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZTC14GUIChatConsole0_N3gui11IGUIElementE = dso_local constant { [38 x ptr], [5 x ptr] } { [38 x ptr] [ptr inttoptr (i64 440 to ptr), ptr null, ptr @_ZTIN3gui11IGUIElementE, ptr @_ZN3gui11IGUIElementD1Ev, ptr @_ZN3gui11IGUIElementD0Ev, ptr @_ZN3gui11IGUIElement7OnEventERK6SEvent, ptr @_ZN3gui11IGUIElement22updateAbsolutePositionEv, ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE, ptr @_ZN3gui11IGUIElement8addChildEPS0_, ptr @_ZN3gui11IGUIElement11removeChildEPS0_, ptr @_ZN3gui11IGUIElement17removeAllChildrenEv, ptr @_ZN3gui11IGUIElement6removeEv, ptr @_ZN3gui11IGUIElement4drawEv, ptr @_ZN3gui11IGUIElement12OnPostRenderEj, ptr @_ZN3gui11IGUIElement4moveEN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement9isVisibleEv, ptr @_ZNK3gui11IGUIElement14isTrulyVisibleEv, ptr @_ZN3gui11IGUIElement10setVisibleEb, ptr @_ZNK3gui11IGUIElement12isSubElementEv, ptr @_ZN3gui11IGUIElement13setSubElementEb, ptr @_ZNK3gui11IGUIElement9isEnabledEv, ptr @_ZN3gui11IGUIElement10setEnabledEb, ptr @_ZN3gui11IGUIElement7setTextEPKw, ptr @_ZNK3gui11IGUIElement7getTextEv, ptr @_ZN3gui11IGUIElement14setToolTipTextEPKw, ptr @_ZNK3gui11IGUIElement14getToolTipTextEv, ptr @_ZNK3gui11IGUIElement5getIDEv, ptr @_ZN3gui11IGUIElement5setIDEi, ptr @_ZN3gui11IGUIElement12bringToFrontEPS0_, ptr @_ZN3gui11IGUIElement10sendToBackEPS0_, ptr @_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev, ptr @_ZNK3gui11IGUIElement16getElementFromIdEib, ptr @_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE, ptr @_ZNK3gui11IGUIElement7getNameEv, ptr @_ZN3gui11IGUIElement7setNameEPKc, ptr @_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE, ptr @_ZN3gui11IGUIElement10acceptsIMEEv], [5 x ptr] [ptr inttoptr (i64 -440 to ptr), ptr inttoptr (i64 -440 to ptr), ptr @_ZTIN3gui11IGUIElementE, ptr @_ZTv0_n24_N3gui11IGUIElementD1Ev, ptr @_ZTv0_n24_N3gui11IGUIElementD0Ev] }, align 8
@_ZTIN3gui11IGUIElementE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN3gui11IGUIElementE, i32 0, i32 2, ptr @_ZTI17IReferenceCounted, i64 -6141, ptr @_ZTI14IEventReceiver, i64 2 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN3gui11IGUIElementE = linkonce_odr dso_local constant [20 x i8] c"N3gui11IGUIElementE\00", comdat, align 1
@_ZTI17IReferenceCounted = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17IReferenceCounted }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS17IReferenceCounted = linkonce_odr dso_local constant [20 x i8] c"17IReferenceCounted\00", comdat, align 1
@_ZTI14IEventReceiver = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS14IEventReceiver }, comdat, align 8
@_ZTS14IEventReceiver = linkonce_odr dso_local constant [17 x i8] c"14IEventReceiver\00", comdat, align 1
@_ZTI14GUIChatConsole = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14GUIChatConsole, ptr @_ZTIN3gui11IGUIElementE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS14GUIChatConsole = dso_local constant [17 x i8] c"14GUIChatConsole\00", align 1
@_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local global { { { ptr } } } zeroinitializer, comdat, align 8
@_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE = linkonce_odr dso_local local_unnamed_addr global i64 0, comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE), align 8
@__dso_handle = external hidden global i8
@_ZTV14IEventReceiver = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI14IEventReceiver, ptr @_ZN14IEventReceiverD2Ev, ptr @_ZN14IEventReceiverD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV17IReferenceCounted = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI17IReferenceCounted, ptr @_ZN17IReferenceCountedD2Ev, ptr @_ZN17IReferenceCountedD0Ev] }, comdat, align 8
@_ZTVN3gui11IGUIElementE = linkonce_odr dso_local constant { [38 x ptr], [5 x ptr] } { [38 x ptr] [ptr inttoptr (i64 312 to ptr), ptr null, ptr @_ZTIN3gui11IGUIElementE, ptr @_ZN3gui11IGUIElementD1Ev, ptr @_ZN3gui11IGUIElementD0Ev, ptr @_ZN3gui11IGUIElement7OnEventERK6SEvent, ptr @_ZN3gui11IGUIElement22updateAbsolutePositionEv, ptr @_ZN3gui11IGUIElement19getElementFromPointERKN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement13isPointInsideERKN4core8vector2dIiEE, ptr @_ZN3gui11IGUIElement8addChildEPS0_, ptr @_ZN3gui11IGUIElement11removeChildEPS0_, ptr @_ZN3gui11IGUIElement17removeAllChildrenEv, ptr @_ZN3gui11IGUIElement6removeEv, ptr @_ZN3gui11IGUIElement4drawEv, ptr @_ZN3gui11IGUIElement12OnPostRenderEj, ptr @_ZN3gui11IGUIElement4moveEN4core8vector2dIiEE, ptr @_ZNK3gui11IGUIElement9isVisibleEv, ptr @_ZNK3gui11IGUIElement14isTrulyVisibleEv, ptr @_ZN3gui11IGUIElement10setVisibleEb, ptr @_ZNK3gui11IGUIElement12isSubElementEv, ptr @_ZN3gui11IGUIElement13setSubElementEb, ptr @_ZNK3gui11IGUIElement9isEnabledEv, ptr @_ZN3gui11IGUIElement10setEnabledEb, ptr @_ZN3gui11IGUIElement7setTextEPKw, ptr @_ZNK3gui11IGUIElement7getTextEv, ptr @_ZN3gui11IGUIElement14setToolTipTextEPKw, ptr @_ZNK3gui11IGUIElement14getToolTipTextEv, ptr @_ZNK3gui11IGUIElement5getIDEv, ptr @_ZN3gui11IGUIElement5setIDEi, ptr @_ZN3gui11IGUIElement12bringToFrontEPS0_, ptr @_ZN3gui11IGUIElement10sendToBackEPS0_, ptr @_ZNK3gui11IGUIElement11getChildrenB5cxx11Ev, ptr @_ZNK3gui11IGUIElement16getElementFromIdEib, ptr @_ZNK3gui11IGUIElement7hasTypeENS_17EGUI_ELEMENT_TYPEE, ptr @_ZNK3gui11IGUIElement7getNameEv, ptr @_ZN3gui11IGUIElement7setNameEPKc, ptr @_ZN3gui11IGUIElement7setNameERKN4core6stringIcEE, ptr @_ZN3gui11IGUIElement10acceptsIMEEv], [5 x ptr] [ptr inttoptr (i64 -312 to ptr), ptr inttoptr (i64 -312 to ptr), ptr @_ZTIN3gui11IGUIElementE, ptr @_ZTv0_n24_N3gui11IGUIElementD1Ev, ptr @_ZTv0_n24_N3gui11IGUIElementD0Ev] }, comdat, align 8
@_ZTTN3gui11IGUIElementE = linkonce_odr dso_local unnamed_addr constant [2 x ptr] [ptr getelementptr inbounds inrange(-24, 280) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTVN3gui11IGUIElementE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [38 x ptr], [5 x ptr] }, ptr @_ZTVN3gui11IGUIElementE, i32 0, i32 1, i32 3)], comdat, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE], section "llvm.metadata"

; Function Attrs: uwtable
define dso_local void @_ZN14GUIChatConsoleC2EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiP11ChatBackendP6ClientP12IMenuManager(ptr noundef nonnull align 8 dereferenceable(434) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %"class.core::rect", align 16       ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store <4 x i32> <i32 0, i32 0, i32 100, i32 100>, ptr %9, align 16, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @_ZN3gui11IGUIElementC2ENS_17EGUI_ELEMENT_TYPEEPNS_15IGUIEnvironmentEPS0_iRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull %i.e, i32 noundef 15, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %5, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %6, ptr %i.m, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %7, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.p = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %8) #25 ; 0 uses
  %i.q = load i64, ptr %8, align 8, !tbaa !70
  %i.r = mul i64 %i.q, 1000
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !71
  %i.u = udiv i64 %i.t, 1000000
  %i.v = add i64 %i.u, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.v, ptr %i.w, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.x, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.y, align 1, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  store i32 0, ptr %i.z, align 4, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <2 x float> zeroinitializer, ptr %i.aa, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  store float 5.000000e+00, ptr %i.ab, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i32 -16777216, ptr %i.af, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr @g_settings, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.aj, ptr %10, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aj, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 13, ptr %i.ak, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 29
  store i8 0, ptr %i.al, align 1, !tbaa !84
  %i.am = invoke noundef i32 @_ZNK8Settings6getS32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.an = load ptr, ptr %10, align 8, !tbaa !85   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aj
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !84
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ar = call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.as = call noundef i32 @llvm.umin.i32(i32 %i.ar, i32 255)
  %i.at = shl nuw i32 %i.as, 24
  %i.au = load i32, ptr %i.af, align 8, !tbaa !79
  %i.av = and i32 %i.au, 16777215
  %i.aw = or disjoint i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.af, align 8, !tbaa !79
  %i.ax = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %6)
          to label %.noexc.i46 unwind label %bb.ab ; 5 uses

.noexc.i46:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ay, ptr %11, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 19, ptr %i.d, align 8, !tbaa !86
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc47 unwind label %bb.e   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i46
  store ptr %i.az, ptr %11, align 8, !tbaa !85
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !86  ; 3 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.az, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !83
  %i.bc = load ptr, ptr %11, align 8, !tbaa !85
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc47
  %i.bi = load ptr, ptr %11, align 8, !tbaa !85   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ay
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.b
  %i.bk = load i64, ptr %i.ay, align 8, !tbaa !84
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br i1 %i.bh, label %.noexc.i53, label %._crit_edge.i.i68

.noexc.i53:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bm, ptr %12, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 19, ptr %i.c, align 8, !tbaa !86
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc54 unwind label %bb.g   ; 2 uses

.noexc54:                                         ; preds = %.noexc.i53
  store ptr %i.bn, ptr %12, align 8, !tbaa !85
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !86  ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bn, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !83
  %i.bq = load ptr, ptr %12, align 8, !tbaa !85
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef null)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.noexc54
  store ptr %i.bv, ptr %i.ae, align 8, !tbaa !78
  %i.bw = load ptr, ptr %12, align 8, !tbaa !85   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bm
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.c
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !84
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %16 = load i32, ptr %i.af, align 8, !tbaa !79
  %17 = or i32 %16, 16777215
  br label %._crit_edge.i.i80

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %10, align 8, !tbaa !85   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.aj
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.d
  %i.cd = load i64, ptr %i.aj, align 8, !tbaa !84
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.am

bb.e:                                             ; preds = %.noexc.i46
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.f:                                             ; preds = %.noexc47
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %11, align 8, !tbaa !85   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ay
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.f
  %i.cj = load i64, ptr %i.ay, align 8, !tbaa !84
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.e
  %.pn30 = phi { ptr, i32 } [ %i.cf, %bb.e ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.cg, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.am

bb.g:                                             ; preds = %.noexc.i53
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.h:                                             ; preds = %.noexc54
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %12, align 8, !tbaa !85   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bm
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.h
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !84
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.g
  %.pn34 = phi { ptr, i32 } [ %i.cl, %bb.g ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.cm, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.am

._crit_edge.i.i68:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.cr = load ptr, ptr @g_settings, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.cs, ptr %13, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cs, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 13, ptr %i.ct, align 8, !tbaa !83
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 29
  store i8 0, ptr %i.cu, align 1, !tbaa !84
  %i.cv = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %._crit_edge.i.i68
  %i.cw = extractvalue { <2 x float>, i64 } %i.cv, 0
  %i.cx = extractvalue { <2 x float>, i64 } %i.cv, 1 ; 2 uses
  %.sroa.5133.sroa.0.0.extract.trunc = trunc i64 %i.cx to i32
  %i.cy = bitcast i32 %.sroa.5133.sroa.0.0.extract.trunc to float
  %i.cz = and i64 %i.cx, 4294967296
  %.not139 = icmp eq i64 %i.cz, 0                 ; 2 uses
  %.sroa.3.0.i.sroa.speculated = select i1 %.not139, float 0.000000e+00, float %i.cy ; 2 uses
  %.sroa.02.0.i.sroa.speculated = select i1 %.not139, <2 x float> zeroinitializer, <2 x float> %i.cw ; 2 uses
  %i.da = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cs
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.i
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !84
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %18 = load i32, ptr %i.af, align 8, !tbaa !79
  %19 = fcmp nsz olt float %.sroa.3.0.i.sroa.speculated, 0.000000e+00
  %.v.i76 = select i1 %19, float -5.000000e-01, float 5.000000e-01
  %20 = fadd nsz float %.sroa.3.0.i.sroa.speculated, %.v.i76
  %21 = fptosi float %20 to i32
  %22 = and i32 %18, -16777216
  %23 = fcmp nsz olt <2 x float> %.sroa.02.0.i.sroa.speculated, zeroinitializer
  %24 = select <2 x i1> %23, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %25 = fadd nsz <2 x float> %.sroa.02.0.i.sroa.speculated, %24
  %26 = insertelement <4 x i32> poison, i32 %21, i64 2
  %27 = insertelement <4 x i32> %26, i32 %22, i64 3
  %28 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %29 = fptosi <4 x float> %28 to <4 x i32>
  %30 = shufflevector <4 x i32> %29, <4 x i32> %27, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %31 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %30, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %32 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %31, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %33 = shl nuw nsw <4 x i32> %32, <i32 16, i32 8, i32 0, i32 0>
  %34 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %33)
  br label %._crit_edge.i.i80

bb.j:                                             ; preds = %._crit_edge.i.i68
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cs
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.j
  %i.dh = load i64, ptr %i.cs, align 8, !tbaa !84
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.am

._crit_edge.i.i80:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %storemerge = phi i32 [ %34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  store i32 %storemerge, ptr %i.af, align 8, !tbaa !79
  %i.dj = load ptr, ptr @g_settings, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.dk, ptr %14, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dk, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 14, ptr %i.dl, align 8, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 30
  store i8 0, ptr %i.dm, align 2, !tbaa !84
  %i.dn = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.k unwind label %bb.y       ; 2 uses

bb.k:                                             ; preds = %._crit_edge.i.i80
  %i.do = load ptr, ptr %14, align 8, !tbaa !85   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.dk
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.k
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !84
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ds = load ptr, ptr @g_fontengine, align 8, !tbaa !88 ; 2 uses
  %.not = icmp eq i16 %i.dn, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dt = call i16 @llvm.umax.i16(i16 %i.dn, i16 5)
  %.0.i = call i16 @llvm.umin.i16(i16 %i.dt, i16 72)
  %i.du = zext nneg i16 %.0.i to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.l
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.du, %bb.l ], [ 4294967295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1324
  %i.dw = load i16, ptr %i.dv, align 4
  %i.dx = zext i16 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dx, 40
  %.sroa.5.0.insert.insert.i = or disjoint i64 %i.dy, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, 72057598332895232
  %i.dz = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.ds, i64 %.sroa.0.0.insert.insert.i)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit unwind label %bb.ab ; 7 uses

_ZN10FontEngine7getFontEj8FontMode.exit:          ; preds = %bb.m
  %.not.i = icmp eq ptr %i.dz, null               ; 2 uses
  br i1 %.not.i, label %.split.i, label %.split5.i

.split.i:                                         ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.ea = load ptr, ptr %i.ag, align 8, !tbaa !89 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138, label %bb.n

bb.n:                                             ; preds = %.split.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !24
  %i.ec = getelementptr i8, ptr %i.eb, i64 -24
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !91
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !91
  %.not.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138

.split5.i:                                        ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !24 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr %i.dz, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !91
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 8, !tbaa !91
  %i.ep = load ptr, ptr %i.ag, align 8, !tbaa !89 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.ep, null
  br i1 %.not.i6.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %.split5.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !24
  %i.er = getelementptr i8, ptr %i.eq, i64 -24
  %i.es = load i64, ptr %i.er, align 8
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !91
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !91
  %.not.i.i7.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i7.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread: ; preds = %.split5.i, %bb.o
  store ptr %i.dz, ptr %i.ag, align 8, !tbaa !89
  br label %bb.z

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138: ; preds = %.split.i, %bb.n
  store ptr null, ptr %i.ag, align 8, !tbaa !89
  br label %bb.p

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit:      ; preds = %bb.n, %bb.o
  %.sink.i = phi ptr [ %i.ee, %bb.n ], [ %i.et, %bb.o ] ; 2 uses
  %.sink13.i = load ptr, ptr %.sink.i, align 8, !tbaa !24
  %i.ex = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(12) %.sink.i) #25, !inline_history !0
  store ptr %i.dz, ptr %i.ag, align 8, !tbaa !89
  br i1 %.not.i, label %bb.p, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.pre = load ptr, ptr %i.dz, align 8, !tbaa !24
  br label %bb.z

bb.p:                                             ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138, %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.not.i89 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i89, label %_ZTW11errorstream.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.p, %bb.q
  %i.ez = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !104, !nonnull !105, !align !106 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !24
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke noundef zeroext i1 %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.fa)
          to label %.noexc91 unwind label %bb.ab, !inline_history !1

.noexc91:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i90 = select i1 %i.fd, i64 976, i64 984
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.v.i90 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !107
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.r unwind label %bb.ab      ; 0 uses

bb.r:                                             ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !108 ; 5 uses
  %.not.i93 = icmp eq ptr %i.fg, null
  br i1 %.not.i93, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !24
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8            ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !115
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %.noexc94 unwind label %bb.ab

.noexc94:                                         ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.fe, align 8, !tbaa !108 ; 2 uses
  %.pre142 = load ptr, ptr %.pre.i, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr i8, ptr %.pre142, i64 -24
  %.pre143 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.u

bb.u:                                             ; preds = %.noexc94, %bb.s
  %i.fo = phi i64 [ %.pre143, %.noexc94 ], [ %i.fj, %bb.s ]
  %i.fp = phi ptr [ %.pre.i, %.noexc94 ], [ %i.fg, %bb.s ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 240
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !121 ; 6 uses
  %.not.i.i.i116 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i116, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc117 unwind label %bb.ab

.noexc117:                                        ; preds = %bb.v
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !127
  %.not.i1.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i1.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 67
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !84
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fs)
          to label %.noexc118 unwind label %bb.ab

.noexc118:                                        ; preds = %bb.x
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = invoke noundef signext i8 %i.fz(ptr noundef nonnull align 8 dereferenceable(570) %i.fs, i8 noundef signext 10)
end_hunk_0
begin_hunk_1_@_ZN14GUIChatConsole9setCursorEbbff:bb.a
  br i1 %brmerge.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %.mux = select i1 %1, i32 32768, i32 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 %.mux, ptr %i.a, align 8, !tbaa !148
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  %.sink = phi float [ %3, %bb.a ], [ 0.000000e+00, %.sink.split ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %.sink, ptr %i.b, align 4, !tbaa !149
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  store float %4, ptr %i.c, align 8, !tbaa !150
  ret void
}

declare noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN12GUIScrollBarC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiN4core4rectIiEEbP20ISimpleTextureSource(ptr noundef nonnull align 8 dereferenceable(440), ptr noundef, ptr noundef, i32 noundef, i64, i64, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement13setSubElementEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 %i.a, ptr %i.b, align 2, !tbaa !131
  ret void
}

declare void @_ZN3gui13CGUIScrollBar12setLargeStepEi(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef) unnamed_addr #3

declare void @_ZN3gui13CGUIScrollBar12setSmallStepEi(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.09.012 = load ptr, ptr %i.g, align 8, !tbaa !133 ; 2 uses
  %.not13 = icmp eq ptr %.sroa.09.012, %i.g
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.l = load i64, ptr %i.j, align 8, !tbaa !84
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !84
  %i.s = shl i64 %i.r, 2
  %i.t = add i64 %i.s, 4
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.t) #26
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !146  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4core6stringIwED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN4core6stringIwED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !84
  %i.z = shl i64 %i.y, 2
  %i.aa = add i64 %i.z, 4
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #26
  br label %_ZN4core6stringIwED2Ev.exit8

_ZN4core6stringIwED2Ev.exit8:                     ; preds = %_ZN4core6stringIwED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i6
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !133 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ab, %i.g
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4core6stringIwED2Ev.exit8, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.ab, %_ZN4core6stringIwED2Ev.exit8 ] ; 2 uses
  %i.ac = load ptr, ptr %.09.i.i, align 8, !tbaa !133 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #26
  %.not.i.i = icmp eq ptr %i.ac, %i.g
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZN4core6stringIwED2Ev.exit8
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  %.sroa.09.014 = phi ptr [ %.sroa.09.0, %_ZNK17IReferenceCounted4dropEv.exit ], [ %.sroa.09.012, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !143 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr null, ptr %i.af, align 8, !tbaa !142
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !91
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.b, label %_ZNK17IReferenceCounted4dropEv.exit

bb.b:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #25, !inline_history !8
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %.lr.ph, %bb.b
  %.sroa.09.0 = load ptr, ptr %.sroa.09.014, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %.sroa.09.0, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: uwtable
define dso_local void @_ZN14GUIChatConsoleC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiP11ChatBackendP6ClientP12IMenuManager(ptr noundef nonnull align 8 dereferenceable(434) initializes((440, 452)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %"class.core::rect", align 16       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV17IReferenceCounted, i64 16), ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 1, ptr %i.f, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store <4 x i32> <i32 0, i32 0, i32 100, i32 100>, ptr %8, align 16, !tbaa !22
  call void @_ZN3gui11IGUIElementC2ENS_17EGUI_ELEMENT_TYPEEPNS_15IGUIEnvironmentEPS0_iRKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT14GUIChatConsole, i64 8), i32 noundef 15, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-24, 280) (i8, ptr @_ZTV14GUIChatConsole, i64 24), ptr %0, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTV14GUIChatConsole, i64 328), ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %4, ptr %i.g, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %5, ptr %i.h, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %6, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.k = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %7) #25 ; 0 uses
  %i.l = load i64, ptr %7, align 8, !tbaa !70
  %i.m = mul i64 %i.l, 1000
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !71
  %i.p = udiv i64 %i.o, 1000000
  %i.q = add i64 %i.p, %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.q, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 0, ptr %i.s, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.t, align 1, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <2 x float> zeroinitializer, ptr %i.v, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 376
  store float 5.000000e+00, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i32 -16777216, ptr %i.aa, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr @g_settings, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ae, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 13, ptr %i.af, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 29
  store i8 0, ptr %i.ag, align 1, !tbaa !84
  %i.ah = invoke noundef i32 @_ZNK8Settings6getS32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.ai = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ae
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !84
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.am = call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  %i.an = call noundef i32 @llvm.umin.i32(i32 %i.am, i32 255)
  %i.ao = shl nuw i32 %i.an, 24
  %i.ap = load i32, ptr %i.aa, align 8, !tbaa !79
  %i.aq = and i32 %i.ap, 16777215
  %i.ar = or disjoint i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.aa, align 8, !tbaa !79
  %i.as = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %5)
          to label %.noexc.i47 unwind label %bb.ab ; 5 uses

.noexc.i47:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.at, ptr %10, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 19, ptr %i.d, align 8, !tbaa !86
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc48 unwind label %bb.e   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i47
  store ptr %i.au, ptr %10, align 8, !tbaa !85
  %i.av = load i64, ptr %i.d, align 8, !tbaa !86  ; 3 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.au, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !83
  %i.ax = load ptr, ptr %10, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %.noexc48
  %i.bd = load ptr, ptr %10, align 8, !tbaa !85   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.at
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.b
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !84
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %i.bc, label %.noexc.i54, label %._crit_edge.i.i69

.noexc.i54:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bh, ptr %11, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 19, ptr %i.c, align 8, !tbaa !86
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc55 unwind label %bb.g   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.bi, ptr %11, align 8, !tbaa !85
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !86  ; 3 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bi, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !83
  %i.bl = load ptr, ptr %11, align 8, !tbaa !85
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bn = load ptr, ptr %i.as, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.noexc55
  store ptr %i.bq, ptr %i.z, align 8, !tbaa !78
  %i.br = load ptr, ptr %11, align 8, !tbaa !85   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bh
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.c
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !84
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %15 = load i32, ptr %i.aa, align 8, !tbaa !79
  %16 = or i32 %15, 16777215
  br label %._crit_edge.i.i81

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ae
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.d
  %i.by = load i64, ptr %i.ae, align 8, !tbaa !84
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.am

bb.e:                                             ; preds = %.noexc.i47
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.f:                                             ; preds = %.noexc48
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %10, align 8, !tbaa !85   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.at
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.f
  %i.ce = load i64, ptr %i.at, align 8, !tbaa !84
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.e
  %.pn30 = phi { ptr, i32 } [ %i.ca, %bb.e ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.cb, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.am

bb.g:                                             ; preds = %.noexc.i54
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.h:                                             ; preds = %.noexc55
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %11, align 8, !tbaa !85   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bh
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.h
  %i.ck = load i64, ptr %i.bh, align 8, !tbaa !84
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.g
  %.pn34 = phi { ptr, i32 } [ %i.cg, %bb.g ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.ch, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.am

._crit_edge.i.i69:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cm = load ptr, ptr @g_settings, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cn, ptr %12, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cn, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 13, ptr %i.co, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.cp, align 1, !tbaa !84
  %i.cq = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %._crit_edge.i.i69
  %i.cr = extractvalue { <2 x float>, i64 } %i.cq, 0
  %i.cs = extractvalue { <2 x float>, i64 } %i.cq, 1 ; 2 uses
  %.sroa.5134.sroa.0.0.extract.trunc = trunc i64 %i.cs to i32
  %i.ct = bitcast i32 %.sroa.5134.sroa.0.0.extract.trunc to float
  %i.cu = and i64 %i.cs, 4294967296
  %.not140 = icmp eq i64 %i.cu, 0                 ; 2 uses
  %.sroa.3.0.i.sroa.speculated = select i1 %.not140, float 0.000000e+00, float %i.ct ; 2 uses
  %.sroa.02.0.i.sroa.speculated = select i1 %.not140, <2 x float> zeroinitializer, <2 x float> %i.cr ; 2 uses
  %i.cv = load ptr, ptr %12, align 8, !tbaa !85   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cn
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.i
  %i.cx = load i64, ptr %i.cn, align 8, !tbaa !84
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %17 = load i32, ptr %i.aa, align 8, !tbaa !79
  %18 = fcmp nsz olt float %.sroa.3.0.i.sroa.speculated, 0.000000e+00
  %.v.i77 = select i1 %18, float -5.000000e-01, float 5.000000e-01
  %19 = fadd nsz float %.sroa.3.0.i.sroa.speculated, %.v.i77
  %20 = fptosi float %19 to i32
  %21 = and i32 %17, -16777216
  %22 = fcmp nsz olt <2 x float> %.sroa.02.0.i.sroa.speculated, zeroinitializer
  %23 = select <2 x i1> %22, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %24 = fadd nsz <2 x float> %.sroa.02.0.i.sroa.speculated, %23
  %25 = insertelement <4 x i32> poison, i32 %20, i64 2
  %26 = insertelement <4 x i32> %25, i32 %21, i64 3
  %27 = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = fptosi <4 x float> %27 to <4 x i32>
  %29 = shufflevector <4 x i32> %28, <4 x i32> %26, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %30 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %29, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %31 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %30, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %32 = shl nuw nsw <4 x i32> %31, <i32 16, i32 8, i32 0, i32 0>
  %33 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %32)
  br label %._crit_edge.i.i81

bb.j:                                             ; preds = %._crit_edge.i.i69
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %12, align 8, !tbaa !85   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cn
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.j
  %i.dc = load i64, ptr %i.cn, align 8, !tbaa !84
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.am

._crit_edge.i.i81:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %storemerge = phi i32 [ %33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  store i32 %storemerge, ptr %i.aa, align 8, !tbaa !79
  %i.de = load ptr, ptr @g_settings, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.df, ptr %13, align 8, !tbaa !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.df, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.dg, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.dh, align 2, !tbaa !84
  %i.di = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.k unwind label %bb.y       ; 2 uses

bb.k:                                             ; preds = %._crit_edge.i.i81
  %i.dj = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.df
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.k
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !84
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.dn = load ptr, ptr @g_fontengine, align 8, !tbaa !88 ; 2 uses
  %.not = icmp eq i16 %i.di, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.do = call i16 @llvm.umax.i16(i16 %i.di, i16 5)
  %.0.i = call i16 @llvm.umin.i16(i16 %i.do, i16 72)
  %i.dp = zext nneg i16 %.0.i to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.l
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.dp, %bb.l ], [ 4294967295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1324
  %i.dr = load i16, ptr %i.dq, align 4
  %i.ds = zext i16 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 40
  %.sroa.5.0.insert.insert.i = or disjoint i64 %i.dt, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, 72057598332895232
  %i.du = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.dn, i64 %.sroa.0.0.insert.insert.i)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit unwind label %bb.ab ; 7 uses

_ZN10FontEngine7getFontEj8FontMode.exit:          ; preds = %bb.m
  %.not.i = icmp eq ptr %i.du, null               ; 2 uses
  br i1 %.not.i, label %.split.i, label %.split5.i

.split.i:                                         ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.dv = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139, label %bb.n

bb.n:                                             ; preds = %.split.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !24
  %i.dx = getelementptr i8, ptr %i.dw, i64 -24
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !91
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !91
  %.not.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139

.split5.i:                                        ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !24 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %i.du, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !91
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 8, !tbaa !91
  %i.ek = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.ek, null
  br i1 %.not.i6.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread, label %bb.o

bb.o:                                             ; preds = %.split5.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !24
  %i.em = getelementptr i8, ptr %i.el, i64 -24
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !91
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.er, ptr %i.ep, align 8, !tbaa !91
  %.not.i.i7.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i7.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread: ; preds = %.split5.i, %bb.o
  store ptr %i.du, ptr %i.ab, align 8, !tbaa !89
  br label %bb.z

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139: ; preds = %.split.i, %bb.n
  store ptr null, ptr %i.ab, align 8, !tbaa !89
  br label %bb.p

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit:      ; preds = %bb.n, %bb.o
  %.sink.i = phi ptr [ %i.dz, %bb.n ], [ %i.eo, %bb.o ] ; 2 uses
  %.sink13.i = load ptr, ptr %.sink.i, align 8, !tbaa !24
  %i.es = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(12) %.sink.i) #25, !inline_history !0
  store ptr %i.du, ptr %i.ab, align 8, !tbaa !89
  br i1 %.not.i, label %bb.p, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.pre = load ptr, ptr %i.du, align 8, !tbaa !24
  br label %bb.z

bb.p:                                             ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139, %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.not.i90 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i90, label %_ZTW11errorstream.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.p, %bb.q
  %i.eu = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !104, !nonnull !105, !align !106 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !24
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = invoke noundef zeroext i1 %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %.noexc92 unwind label %bb.ab, !inline_history !1

.noexc92:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i91 = select i1 %i.ey, i64 976, i64 984
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.v.i91 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !107
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.r unwind label %bb.ab      ; 0 uses

bb.r:                                             ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !108 ; 5 uses
  %.not.i94 = icmp eq ptr %i.fb, null
  br i1 %.not.i94, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !24
  %i.fd = getelementptr i8, ptr %i.fc, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !115
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fb)
          to label %.noexc95 unwind label %bb.ab

.noexc95:                                         ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.ez, align 8, !tbaa !108 ; 2 uses
  %.pre143 = load ptr, ptr %.pre.i, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr i8, ptr %.pre143, i64 -24
  %.pre144 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.u

bb.u:                                             ; preds = %.noexc95, %bb.s
  %i.fj = phi i64 [ %.pre144, %.noexc95 ], [ %i.fe, %bb.s ]
  %i.fk = phi ptr [ %.pre.i, %.noexc95 ], [ %i.fb, %bb.s ] ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 240
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !121 ; 6 uses
  %.not.i.i.i117 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i117, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc118 unwind label %bb.ab

.noexc118:                                        ; preds = %bb.v
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !127
  %.not.i1.i.i = icmp eq i8 %i.fp, 0
  br i1 %.not.i1.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 67
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !84
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fn)
          to label %.noexc119 unwind label %bb.ab

.noexc119:                                        ; preds = %bb.x
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef signext i8 %i.fu(ptr noundef nonnull align 8 dereferenceable(570) %i.fn, i8 noundef signext 10)
end_hunk_1
begin_hunk_2_@_ZN4core6stringIcEaSIcEERS1_PKT_:bb.a
  store i8 %i.r, ptr %i.t, align 1, !tbaa !84
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !309

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = load i64, ptr %i.k, align 8, !tbaa !83
  %i.v = icmp ugt i64 %i.u, %i.j
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !84
  %i.y = load ptr, ptr %0, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.x, ptr %i.z, align 1, !tbaa !84
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !84
  %i.ac = load ptr, ptr %0, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !84
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !84
  %i.ag = load ptr, ptr %0, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !84
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !84
  %i.ak = load ptr, ptr %0, align 8, !tbaa !85
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !84
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !310

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIcE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #20

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !107    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !108    ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !115
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.20, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !115
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !108 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !107   ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !24
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !115
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #25
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #20

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare extern_weak void @_ZTH11errorstream() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #9

attributes #0 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{null}
!7 = distinct !{!7, !147}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{ptr @_ZN14GUIChatConsoleD1Ev, null, null, null, null}
!12 = distinct !{ptr @_ZN14GUIChatConsoleD1Ev, null, null, null, null}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!19, !19, i64 0}
!23 = !{!"vtable pointer", !17, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"_ZTS14IEventReceiver"}
!26 = !{!"any pointer", !18, i64 0}
!27 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !26, i64 0}
!28 = !{!"_ZTSNSt8__detail15_List_node_baseE", !27, i64 0, !27, i64 8}
!29 = !{!"long", !18, i64 0}
!30 = !{!"_ZTSNSt8__detail17_List_node_headerE", !28, i64 0, !29, i64 16}
!31 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !32, i64 0}
!34 = !{!"p1 _ZTSN3gui11IGUIElementE", !26, i64 0}
!35 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !27, i64 0}
!36 = !{!"_ZTSN4core8vector2dIiEE", !19, i64 0, !19, i64 4}
!37 = !{!"_ZTSN4core4rectIiEE", !36, i64 0, !36, i64 8}
!38 = !{!"float", !18, i64 0}
!39 = !{!"_ZTSN4core8vector2dIfEE", !38, i64 0, !38, i64 4}
!40 = !{!"_ZTSN4core4rectIfEE", !39, i64 0, !39, i64 8}
!41 = !{!"_ZTSN4core11dimension2dIjEE", !19, i64 0, !19, i64 4}
!42 = !{!"bool", !18, i64 0}
!43 = !{!"p1 wchar_t", !26, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !43, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !44, i64 0, !29, i64 8, !18, i64 16}
!46 = !{!"_ZTSN4core6stringIwEE", !45, i64 0}
!47 = !{!"p1 omnipotent char", !26, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !47, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !29, i64 8, !18, i64 16}
!50 = !{!"_ZTSN4core6stringIcEE", !49, i64 0}
!51 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !18, i64 0}
!52 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !26, i64 0}
!53 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !18, i64 0}
!54 = !{!"_ZTSN3gui11IGUIElementE", !25, i64 0, !33, i64 8, !34, i64 32, !35, i64 40, !37, i64 48, !37, i64 64, !37, i64 80, !37, i64 96, !37, i64 112, !40, i64 128, !41, i64 144, !41, i64 152, !42, i64 160, !42, i64 161, !42, i64 162, !42, i64 163, !46, i64 168, !46, i64 200, !50, i64 232, !19, i64 264, !42, i64 268, !19, i64 272, !42, i64 276, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !52, i64 296, !53, i64 304}
!55 = !{!"p1 _ZTS11ChatBackend", !26, i64 0}
!56 = !{!"p1 _ZTS6Client", !26, i64 0}
!57 = !{!"p1 _ZTS12IMenuManager", !26, i64 0}
!58 = !{!"p1 _ZTS12GUIScrollBar", !26, i64 0}
!59 = !{!"_ZTS7irr_ptrI12GUIScrollBarE", !58, i64 0}
!60 = !{!"_ZTSN4core8vector2dIjEE", !19, i64 0, !19, i64 4}
!61 = !{!"p1 _ZTSN5video8ITextureE", !26, i64 0}
!62 = !{!"_ZTSN5video6SColorE", !19, i64 0}
!63 = !{!"p1 _ZTSN3gui8IGUIFontE", !26, i64 0}
!64 = !{!"_ZTS7irr_ptrIN3gui8IGUIFontEE", !63, i64 0}
!65 = !{!"_ZTS14GUIChatConsole", !54, i64 0, !55, i64 312, !56, i64 320, !57, i64 328, !59, i64 336, !60, i64 344, !29, i64 352, !42, i64 360, !42, i64 361, !19, i64 364, !38, i64 368, !38, i64 372, !38, i64 376, !19, i64 380, !19, i64 384, !38, i64 388, !38, i64 392, !61, i64 400, !62, i64 408, !64, i64 416, !60, i64 424, !42, i64 432, !42, i64 433}
!66 = !{!65, !55, i64 312}
!67 = !{!65, !56, i64 320}
!68 = !{!65, !57, i64 328}
!69 = !{!"_ZTS8timespec", !29, i64 0, !29, i64 8}
!70 = !{!69, !29, i64 0}
!71 = !{!69, !29, i64 8}
!72 = !{!65, !29, i64 352}
!73 = !{!65, !42, i64 360}
!74 = !{!65, !42, i64 361}
!75 = !{!65, !19, i64 364}
!76 = !{!38, !38, i64 0}
!77 = !{!65, !38, i64 376}
!78 = !{!65, !61, i64 400}
!79 = !{!62, !19, i64 0}
!80 = !{!"p1 _ZTS8Settings", !26, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!48, !47, i64 0}
!83 = !{!49, !29, i64 8}
!84 = !{!18, !18, i64 0}
!85 = !{!49, !47, i64 0}
!86 = !{!29, !29, i64 0}
!87 = !{!"p1 _ZTS10FontEngine", !26, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!64, !63, i64 0}
!90 = !{!"_ZTS17IReferenceCounted", !19, i64 8}
!91 = !{!90, !19, i64 8}
!92 = !{!"p1 _ZTS9LogTarget", !26, i64 0}
!93 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!94 = !{!"_ZTSSt6locale", !93, i64 0}
!95 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !94, i64 56}
!96 = !{!"_ZTSSt14_Function_base", !18, i64 0, !26, i64 16}
!97 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !96, i64 0, !26, i64 24}
!98 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !95, i64 0, !97, i64 64, !19, i64 96, !18, i64 100}
!99 = !{!"_ZTS17DummyStreamBuffer", !95, i64 0}
!100 = !{!"_ZTSSo"}
!101 = !{!"p1 _ZTSSo", !26, i64 0}
!102 = !{!"_ZTS11StreamProxy", !101, i64 0}
!103 = !{!"_ZTS9LogStream", !92, i64 0, !98, i64 8, !99, i64 368, !100, i64 432, !100, i64 704, !102, i64 976, !102, i64 984}
!104 = !{!103, !92, i64 0}
!105 = !{}
!106 = !{i64 8}
!107 = !{!47, !47, i64 0}
!108 = !{!102, !101, i64 0}
!109 = !{!"_ZTSSt13_Ios_Fmtflags", !18, i64 0}
!110 = !{!"_ZTSSt12_Ios_Iostate", !18, i64 0}
!111 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!112 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !29, i64 8}
!113 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!114 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !109, i64 24, !110, i64 28, !110, i64 32, !111, i64 40, !112, i64 48, !18, i64 64, !19, i64 192, !113, i64 200, !94, i64 208}
!115 = !{!114, !110, i64 32}
!116 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!117 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!118 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!119 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!120 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !114, i64 0, !101, i64 216, !18, i64 224, !42, i64 225, !116, i64 232, !117, i64 240, !118, i64 248, !119, i64 256}
!121 = !{!120, !117, i64 240}
!122 = !{!"_ZTSNSt6locale5facetE", !19, i64 8}
!123 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!124 = !{!"p1 int", !26, i64 0}
!125 = !{!"p1 short", !26, i64 0}
!126 = !{!"_ZTSSt5ctypeIcE", !122, i64 0, !123, i64 16, !42, i64 24, !124, i64 32, !124, i64 40, !125, i64 48, !18, i64 56, !18, i64 57, !18, i64 313, !18, i64 569}
!127 = !{!126, !18, i64 56}
!128 = !{!65, !42, i64 433}
!129 = !{!65, !42, i64 432}
!130 = !{!59, !58, i64 0}
!131 = !{!54, !42, i64 162}
!132 = !{!28, !27, i64 8}
!133 = !{!28, !27, i64 0}
!134 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 4, !22}
!135 = !{!44, !43, i64 0}
!136 = !{!45, !29, i64 8}
!137 = !{!"wchar_t", !18, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!54, !19, i64 264}
!140 = !{!54, !52, i64 296}
!141 = !{!54, !53, i64 304}
!142 = !{!54, !34, i64 32}
!143 = !{!34, !34, i64 0}
!144 = !{!32, !29, i64 16}
!145 = !{!27, !27, i64 0}
!146 = !{!45, !43, i64 0}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!65, !19, i64 384}
!149 = !{!65, !38, i64 388}
!150 = !{!65, !38, i64 392}
!151 = !{i8 0, i8 2}
!152 = !{!65, !38, i64 372}
!153 = !{!65, !19, i64 348}
!154 = !{!65, !38, i64 368}
!155 = !{!65, !19, i64 344}
!156 = !{!65, !19, i64 424}
!157 = !{!65, !19, i64 428}
!158 = !{!54, !42, i64 160}
!159 = !{!65, !19, i64 380}
!160 = !{ptr @_ZN14GUIChatConsole12closeConsoleEv}
!161 = !{!36, !19, i64 0}
!162 = !{!36, !19, i64 4}
end_hunk_2
