Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tabwidget?download=true
inline.NumInlined: 1242
inline.NumDeleted: 651
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.5, i64, ptr }
%struct.anon.5 = type { i64 }
%"struct.std::__1::__split_buffer.90" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.91" }
%"class.std::__1::__compressed_pair.91" = type { %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.92" }
%"struct.std::__1::__compressed_pair_elem.12" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.92" = type { ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.82" }
%"class.std::__1::__compressed_pair.82" = type { %"struct.std::__1::__compressed_pair_elem.19", %"struct.std::__1::__compressed_pair_elem.83" }
%"struct.std::__1::__compressed_pair_elem.19" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.83" = type { ptr }
%struct.NVGpaint = type { [6 x float], [2 x float], float, float, %struct.NVGcolor, %struct.NVGcolor, i32 }
%struct.NVGcolor = type { %union.anon.43 }
%union.anon.43 = type { [4 x float] }
%"struct.nanogui::Array" = type { [2 x i32] }

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6insertENS_11__wrap_iterIPKS6_EEOS6_ = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEE6insertENS_11__wrap_iterIPKiEERS5_ = comdat any

$_ZNK7nanogui6Widget17absolute_positionEv = comdat any

$_ZN7nanogui13TabWidgetBaseD2Ev = comdat any

$_ZN7nanogui13TabWidgetBaseD0Ev = comdat any

$_ZN7nanogui9TabWidgetD2Ev = comdat any

$_ZN7nanogui9TabWidgetD0Ev = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne180100v = comdat any

$_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev = comdat any

$_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE9push_backEOS6_ = comdat any

$_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev = comdat any

$_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne180100Ev = comdat any

@_ZTVN7nanogui13TabWidgetBaseE = hidden constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN7nanogui13TabWidgetBaseE, ptr @_ZN7nanogui13TabWidgetBaseD2Ev, ptr @_ZN7nanogui13TabWidgetBaseD0Ev, ptr @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE, ptr @_ZN7nanogui6Widget9add_childEiPS0_, ptr @_ZN7nanogui13TabWidgetBase18mouse_button_eventERKNS_5ArrayIiLm2EEEibi, ptr @_ZN7nanogui13TabWidgetBase18mouse_motion_eventERKNS_5ArrayIiLm2EEES4_ii, ptr @_ZN7nanogui6Widget16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii, ptr @_ZN7nanogui13TabWidgetBase17mouse_enter_eventERKNS_5ArrayIiLm2EEEb, ptr @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE, ptr @_ZN7nanogui6Widget11focus_eventEb, ptr @_ZN7nanogui6Widget14keyboard_eventEiiii, ptr @_ZN7nanogui6Widget24keyboard_character_eventEj, ptr @_ZN7nanogui13TabWidgetBase14perform_layoutEP10NVGcontext, ptr @_ZN7nanogui13TabWidgetBase4drawEP10NVGcontext, ptr @_ZNK7nanogui13TabWidgetBase19preferred_size_implEP10NVGcontext, ptr @_ZN7nanogui13TabWidgetBase10remove_tabEi, ptr @_ZN7nanogui13TabWidgetBase17update_visibilityEv] }, align 8
@.str = private unnamed_addr constant [39 x i8] c"TabWidgetBase::tab_index(): not found!\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [6 x i8] c"icons\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Must run TabWidget::perform_layout() after adding/removing tabs!\00", align 1
@_ZTIN7nanogui6WidgetE = external constant ptr
@_ZTIN7nanogui6ButtonE = external constant ptr
@_ZTVN7nanogui9TabWidgetE = hidden constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN7nanogui9TabWidgetE, ptr @_ZN7nanogui9TabWidgetD2Ev, ptr @_ZN7nanogui9TabWidgetD0Ev, ptr @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE, ptr @_ZN7nanogui6Widget9add_childEiPS0_, ptr @_ZN7nanogui13TabWidgetBase18mouse_button_eventERKNS_5ArrayIiLm2EEEibi, ptr @_ZN7nanogui13TabWidgetBase18mouse_motion_eventERKNS_5ArrayIiLm2EEES4_ii, ptr @_ZN7nanogui6Widget16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii, ptr @_ZN7nanogui13TabWidgetBase17mouse_enter_eventERKNS_5ArrayIiLm2EEEb, ptr @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE, ptr @_ZN7nanogui6Widget11focus_eventEb, ptr @_ZN7nanogui6Widget14keyboard_eventEiiii, ptr @_ZN7nanogui6Widget24keyboard_character_eventEj, ptr @_ZN7nanogui9TabWidget14perform_layoutEP10NVGcontext, ptr @_ZN7nanogui13TabWidgetBase4drawEP10NVGcontext, ptr @_ZNK7nanogui9TabWidget19preferred_size_implEP10NVGcontext, ptr @_ZN7nanogui9TabWidget10remove_tabEi, ptr @_ZN7nanogui9TabWidget17update_visibilityEv] }, align 8
@_ZTIN7nanogui13TabWidgetBaseE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui13TabWidgetBaseE, ptr @_ZTIN7nanogui6WidgetE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7nanogui13TabWidgetBaseE = hidden constant [26 x i8] c"N7nanogui13TabWidgetBaseE\00", align 1
@_ZTIN7nanogui9TabWidgetE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui9TabWidgetE, ptr @_ZTIN7nanogui13TabWidgetBaseE }, align 8
@_ZTSN7nanogui9TabWidgetE = hidden constant [21 x i8] c"N7nanogui9TabWidgetE\00", align 1
@_ZTVN7nanogui11GroupLayoutE = external constant { [6 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.4 = private unnamed_addr constant [7 x i8] c"vector\00", align 1

@_ZN7nanogui13TabWidgetBaseC1EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE = hidden unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN7nanogui13TabWidgetBaseC2EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE
@_ZN7nanogui9TabWidgetC1EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE = hidden unnamed_addr alias void (ptr, ptr, ptr, i64), ptr @_ZN7nanogui9TabWidgetC2EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui13TabWidgetBaseC2EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(464) %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN7nanogui13TabWidgetBaseE, i64 16), ptr %0, align 16, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.b = icmp ugt i64 %3, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %3, 23
  br i1 %i.c, label %bb.d, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c
  %i.d = or i64 %3, 7                             ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #20
          to label %.noexc7 unwind label %bb.h    ; 2 uses

.noexc7:                                          ; preds = %.thread.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.h, ptr %i.i, align 8, !tbaa !18
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %3, ptr %i.k, align 16, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %3 to i8
  %i.m = shl nuw nsw i8 %i.l, 1
  store i8 %i.m, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 153 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc7
  %.017.i.i = phi ptr [ %i.h, %.noexc7 ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.018.i.i = phi ptr [ %i.n, %bb.d ], [ %.017.i.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %3
  store i8 0, ptr %i.o, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.p, i8 0, i64 80, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.s, i8 -1, i64 28, i1 false)
  store i8 0, ptr %i.t, align 4, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 285
  store i8 0, ptr %i.u, align 1, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr null, ptr %i.v, align 16, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.w, align 8, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 3, ptr %i.x, align 4, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr null, ptr %i.z, align 16, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store ptr null, ptr %i.ab, align 16, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store ptr null, ptr %i.ac, align 16, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ag = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %.noexc10 unwind label %bb.i   ; 7 uses

.noexc10:                                         ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 3 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !71
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 5 uses
  %i.aj = load ptr, ptr %i.r, align 16, !tbaa !73 ; 6 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc10
  %i.ak = ptrtoaddr ptr %i.ai to i64              ; 2 uses
  %4 = ptrtoaddr ptr %i.ag to i64
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = add i64 %i.ak, -4
  %i.an = sub i64 %i.am, %i.al                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %5 = sub i64 %4, %i.ak
  %diff.check = icmp ugt i64 %5, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.aq = mul i64 %n.vec, -4                      ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.ai, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.ai, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep30, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep30, i64 -32
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !71, !noalias !156
  %wide.load31 = load <4 x i32>, ptr %i.av, align 4, !tbaa !71, !noalias !156
  %i.aw = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ax = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.aw, align 4, !tbaa !71, !noalias !156
  store <4 x i32> %wide.load31, ptr %i.ax, align 4, !tbaa !71, !noalias !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.i.i.preheader33:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.az = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader33 ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader33 ]
  %i.ba = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !71, !noalias !156
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 3 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !71, !noalias !156
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !155

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.sroa.436.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc10 ], [ %i.ar, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.sroa.436.0.i.i.i.i.i.i.i.i, ptr %i.r, align 16, !tbaa !77
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !77
  %i.bd = load ptr, ptr %i.af, align 16, !tbaa !77
  store ptr %i.ah, ptr %i.af, align 16, !tbaa !77
  %.not.i5.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i5.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i.i
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.aj to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.bg) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i.i
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bh, align 8, !tbaa !157
  ret void

bb.h:                                             ; preds = %.thread.i.i, %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bl = load ptr, ptr %i.ac, align 16, !tbaa !70 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, %i.bk
  br i1 %i.bm, label %.sink.split.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j, %bb.i
  %.sink2.i.i = phi i64 [ 32, %bb.i ], [ 40, %bb.j ]
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sink2.i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #22, !inline_history !0
  br label %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit

_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit: ; preds = %bb.j, %.sink.split.i.i
  %i.bq = load ptr, ptr %i.ab, align 16, !tbaa !69 ; 4 uses
  %i.br = icmp eq ptr %i.bq, %i.aa
  br i1 %i.br, label %.sink.split.i.i12, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit
  %.not.i.i11 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i11, label %_ZNSt3__18functionIFviEED2Ev.exit, label %.sink.split.i.i12

.sink.split.i.i12:                                ; preds = %bb.k, %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit
  %.sink2.i.i13 = phi i64 [ 32, %_ZNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEED2Ev.exit ], [ 40, %bb.k ]
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sink2.i.i13
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #22, !inline_history !1
  br label %_ZNSt3__18functionIFviEED2Ev.exit

_ZNSt3__18functionIFviEED2Ev.exit:                ; preds = %bb.k, %.sink.split.i.i12
  %i.bv = load ptr, ptr %i.z, align 16, !tbaa !69 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, %i.y
  br i1 %i.bw, label %.sink.split.i.i15, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__18functionIFviEED2Ev.exit
  %.not.i.i14 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i14, label %_ZNSt3__18functionIFviEED2Ev.exit17, label %.sink.split.i.i15

.sink.split.i.i15:                                ; preds = %bb.l, %_ZNSt3__18functionIFviEED2Ev.exit
  %.sink2.i.i16 = phi i64 [ 32, %_ZNSt3__18functionIFviEED2Ev.exit ], [ 40, %bb.l ]
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.sink2.i.i16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #22, !inline_history !1
  br label %_ZNSt3__18functionIFviEED2Ev.exit17

_ZNSt3__18functionIFviEED2Ev.exit17:              ; preds = %bb.l, %.sink.split.i.i15
  %i.ca = load ptr, ptr %i.r, align 16, !tbaa !73 ; 4 uses
  %.not.i.i18 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i18, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__18functionIFviEED2Ev.exit17
  store ptr %i.ca, ptr %i.ae, align 8, !tbaa !72
  %i.cb = load ptr, ptr %i.af, align 16, !tbaa !77
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.ce) #21
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__18functionIFviEED2Ev.exit17, %bb.m
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !73  ; 4 uses
  %.not.i.i19 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i19, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.cf, ptr %i.cg, align 16, !tbaa !72
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !77
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cl) #21
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit, %bb.n
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #22
  %i.cm = load i8, ptr %i.a, align 8
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.o:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !18
  %i.cq = load i64, ptr %i.a, align 8
  %i.cr = and i64 %i.cq, -2
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cr) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.o, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %i.bj, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne180100Ev.exit20 ], [ %i.bj, %bb.o ]
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #22
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6insertENS_11__wrap_iterIPKS6_EEOS6_:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !82
  store i8 0, ptr %i.t, align 8
  %i.ab = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -23
  store i8 0, ptr %i.ab, align 1, !tbaa !18
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.t
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !180

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i.i.i.i.i.i, %._crit_edge.i
  %i.ac = load i8, ptr %i.e, align 8
  %i.ad = trunc i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit

bb.f:                                             ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = load i64, ptr %i.e, align 8
  %i.ah = and i64 %i.ag, -2
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #21
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12__move_rangeEPS6_S9_S9_.exit, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !82
  store i8 0, ptr %2, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !18
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aj = ptrtoint ptr %i.g to i64
  %i.ak = sub i64 %i.aj, %i.c
  %i.al = sdiv exact i64 %i.ak, 24
  %i.am = add nsw i64 %i.al, 1                    ; 2 uses
  %i.an = icmp ugt i64 %i.am, 768614336404564650
  br i1 %i.an, label %bb.h, label %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  unreachable

_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.g
  %i.ao = ptrtoint ptr %i.i to i64
  %i.ap = sub i64 %i.ao, %i.c
  %i.aq = sdiv exact i64 %i.ap, 24                ; 2 uses
  %.not.i = icmp ult i64 %i.aq, 384307168202282325
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.am)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 768614336404564650 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.at, align 8, !tbaa !183
  %i.au = icmp eq i64 %.0.i, 0
  br i1 %i.au, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit
  %i.av = icmp ugt i64 %.0.i, 768614336404564650
  br i1 %i.av, label %bb.j, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #19
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i: ; preds = %bb.i
  %i.aw = mul nuw i64 %.0.i, 24
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #20
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit: ; preds = %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i
  %storemerge.i = phi ptr [ %i.ax, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB8ne180100Em.exit ] ; 3 uses
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !111
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.d ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !112
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %storemerge.i, i64 %.0.i
  store ptr %i.bb, ptr %i.as, align 8, !tbaa !80
  invoke void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !113 ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !78    ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.bd
  br i1 %.not12.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.be = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.bc, %bb.k ]
  %.sroa.18.013.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.e, %bb.k ]
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -24 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %i.bg, %i.bd
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, label %.lr.ph.i.i, !llvm.loop !181

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i: ; preds = %.lr.ph.i.i, %bb.k
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.bc, %bb.k ], [ %i.bf, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ba, align 8, !tbaa !113
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !79  ; 3 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !112 ; 2 uses
  %.not8.i.i = icmp eq ptr %1, %i.bh
  br i1 %.not8.i.i, label %bb.l, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i, %.lr.ph.i14.i
  %.010.i.i = phi ptr [ %i.bj, %.lr.ph.i14.i ], [ %i.e, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ] ; 3 uses
  %storemerge9.i.i = phi ptr [ %i.bk, %.lr.ph.i14.i ], [ %i.bi, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge9.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i, i8 0, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge9.i.i, i64 24 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.bj, %i.bh
  br i1 %.not.i15.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i, label %.lr.ph.i14.i, !llvm.loop !182

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i: ; preds = %.lr.ph.i14.i
  %.pre.i = load ptr, ptr %i.ba, align 8, !tbaa !80
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i
  %i.bl = phi ptr [ %i.bh, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ], [ %.pre, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i ] ; 3 uses
  %i.bm = phi ptr [ %.sroa.2.0.copyload.i.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ], [ %.pre.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i ]
  %storemerge.lcssa.i.i = phi ptr [ %i.bi, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_.exit.i ], [ %i.bk, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_S8_S8_EET2_RT_T0_T1_S9_.exit.loopexit.i ]
  %i.bn = load ptr, ptr %0, align 8, !tbaa !80    ; 5 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !80
  store ptr %i.bn, ptr %i.ba, align 8, !tbaa !80
  store ptr %storemerge.lcssa.i.i, ptr %i.f, align 8, !tbaa !80
  store ptr %i.bl, ptr %i.az, align 8, !tbaa !80
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.bp = load ptr, ptr %i.as, align 8, !tbaa !80
  store ptr %i.bp, ptr %i.h, align 8, !tbaa !80
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !80
  store ptr %i.bn, ptr %3, align 8, !tbaa !111
  %.not2.i.i.i.i = icmp eq ptr %i.bn, %i.bl
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i
  %i.bq = phi ptr [ %i.by, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i ], [ %i.bl, %bb.l ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -24 ; 4 uses
  store ptr %i.br, ptr %i.az, align 8, !tbaa !112
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = trunc i8 %i.bs to i1
  br i1 %i.bt, label %bb.m, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !18
  %i.bw = load i64, ptr %i.br, align 8
  %i.bx = and i64 %i.bw, -2
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bx) #21
  %.pre.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !112
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i
  %i.by = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.pre.i.i.i.i, %bb.m ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.by
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vEEvRS7_PT_.exit.i.i.i.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !111
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split, %bb.l
  %i.bz = phi ptr [ %.pr, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.ithread-pre-split ], [ %i.bn, %bb.l ] ; 3 uses
  %.not.i15 = icmp eq ptr %i.bz, null
  br i1 %.not.i15, label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !80
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cd) #21
  br label %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB8ne180100Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ce

bb.p:                                             ; preds = %bb.c, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.e, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit ], [ %i.bc, %_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE6insertENS_11__wrap_iterIPKiEERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__split_buffer", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %1, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %2, align 4, !tbaa !71
  store i32 %i.l, ptr %i.g, align 4, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.m, ptr %i.f, align 8, !tbaa !72
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.u = load i32, ptr %i.r, align 4, !tbaa !71
  store i32 %i.u, ptr %i.g, align 4, !tbaa !71
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %bb.d
  %.sroa.6.0.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %i.t, %.lr.ph.i.preheader ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.f, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.v = ashr exact i64 %i.q, 2
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.e, i64 %i.q, i1 false)
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit: ; preds = %._crit_edge.i, %bb.e
  %.not = icmp ugt ptr %1, %2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.z = icmp ult ptr %2, %i.y
  %spec.select.idx = select i1 %i.z, i64 4, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit
  %.018 = phi ptr [ %2, %_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_.exit ], [ %spec.select, %bb.f ]
  %i.aa = load i32, ptr %.018, align 4, !tbaa !71
  store i32 %i.aa, ptr %i.e, align 4, !tbaa !71
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ab = ptrtoint ptr %i.g to i64
  %i.ac = sub i64 %i.ab, %i.c
  %i.ad = ashr exact i64 %i.ac, 2
  %i.ae = add nsw i64 %i.ad, 1                    ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 4611686018427387903
  br i1 %i.af, label %bb.i, label %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  unreachable

_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit: ; preds = %bb.h
  %i.ag = ptrtoint ptr %i.i to i64
  %i.ah = sub i64 %i.ag, %i.c                     ; 2 uses
  %.not.i = icmp ult i64 %i.ah, 9223372036854775804
  %i.ai = ashr exact i64 %i.ah, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ae)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 4611686018427387903 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.h, ptr %i.ak, align 8, !tbaa !194
  %i.al = icmp eq i64 %.0.i, 0
  br i1 %i.al, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit
  %i.am = icmp ugt i64 %.0.i, 4611686018427387903
  br i1 %i.am, label %bb.k, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #19
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i: ; preds = %bb.j
  %i.an = shl nuw i64 %.0.i, 2                    ; 2 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #20
  br label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit: ; preds = %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i
  %.idx.pre-phi = phi i64 [ %i.an, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ 0, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %i.ap = phi ptr [ %i.ao, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ null, %_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne180100Em.exit ] ; 5 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !118
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.d ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !119
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !120
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.pre-phi ; 3 uses
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !77
  %i.au = icmp samesign eq i64 %i.d, %.idx.pre-phi
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit
  %.not29 = icmp eq ptr %1, %i.a
  br i1 %.not29, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit.i, label %_ZNSt3__14moveB8ne180100IPiS1_EET0_T_S3_S2_.exit.i

_ZNSt3__14moveB8ne180100IPiS1_EET0_T_S3_S2_.exit.i: ; preds = %bb.l
  %i.av = ashr exact i64 %i.d, 2
  %i.aw = add nsw i64 %i.av, 1
  %.neg.i = sdiv i64 %i.aw, -2
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.neg.i
  br label %bb.n

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit.i: ; preds = %bb.l
  %i.ay = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i unwind label %bb.q ; 3 uses

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %.idx.pre-phi) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i, %_ZNSt3__14moveB8ne180100IPiS1_EET0_T_S3_S2_.exit.i, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit
  %i.ba = phi ptr [ %i.az, %bb.m ], [ %i.az, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i ], [ %i.at, %_ZNSt3__14moveB8ne180100IPiS1_EET0_T_S3_S2_.exit.i ], [ %i.at, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit ]
  %i.bb = phi ptr [ %i.ay, %bb.m ], [ %i.ay, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i.i ], [ %i.ax, %_ZNSt3__14moveB8ne180100IPiS1_EET0_T_S3_S2_.exit.i ], [ %i.aq, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit ] ; 8 uses
  %i.bc = load i32, ptr %2, align 4, !tbaa !71
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !71
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !73    ; 6 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.be
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.n
  %4 = ptrtoaddr ptr %i.bb to i64
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = add i64 %i.b, -4
  %i.bh = sub i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 44
  %5 = sub i64 %4, %i.b
  %diff.check = icmp ugt i64 %5, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bk = mul i64 %n.vec, -4                      ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.e, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bn ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.e, i64 %i.bn ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %next.gep44, i64 -16
  %i.bp = getelementptr inbounds i8, ptr %next.gep44, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bo, align 4, !tbaa !71, !noalias !195
  %wide.load45 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !71, !noalias !195
  %i.bq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.br = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bq, align 4, !tbaa !71, !noalias !195
  store <4 x i32> %wide.load45, ptr %i.br, align 4, !tbaa !71, !noalias !195
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.i.preheader47:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader47 ]
  %i.bu = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -4 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !71, !noalias !195
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -4 ; 3 uses
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !71, !noalias !195
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.be
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !193

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.n
  %.pre.i26 = phi ptr [ %i.bb, %bb.n ], [ %i.bl, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.b                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.e, i64 %i.bz, i1 false)
  br label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i: ; preds = %bb.o, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bz
  store ptr %.pre.i26, ptr %0, align 8, !tbaa !77
  store ptr %i.ca, ptr %i.f, align 8, !tbaa !77
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !77
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !77
  %.not.i27 = icmp eq ptr %i.be, null
  br i1 %.not.i27, label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.be to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ce) #21
  br label %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev.exit

_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne180100Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.cf

bb.r:                                             ; preds = %bb.c, %bb.g, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev.exit
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.g ], [ %i.bb, %_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN7nanogui13TabWidgetBase10append_tabENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(464) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !78
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call noundef i32 @_ZN7nanogui13TabWidgetBase10insert_tabEiNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(464) %0, i32 noundef %i.i, ptr %1, i64 %2)
  ret i32 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN7nanogui13TabWidgetBase17update_visibilityEv(ptr nofree nonnull readnone align 16 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

declare void @nvgFontFace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nvgFontSize(ptr noundef, float noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148)) local_unnamed_addr #1

declare void @nvgTextAlign(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @nvgTextBounds(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN7nanogui4utf8Ej(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden i64 @_ZNK7nanogui13TabWidgetBase19preferred_size_implEP10NVGcontext(ptr noundef nonnull align 16 dereferenceable(464) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load i8, ptr %i.b, align 8
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g
  tail call void @nvgFontFace(ptr noundef %1, ptr noundef %i.h)
  %i.i = tail call noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.j = sitofp i32 %i.i to float
  tail call void @nvgFontSize(ptr noundef %1, float noundef %i.j)
  tail call void @nvgTextAlign(ptr noundef %1, i32 noundef 9)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !78  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !79   ; 2 uses
  %.not16 = icmp eq ptr %i.l, %i.n
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 285
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.r = add nsw i32 %.1, 1
  %i.s = zext i32 %i.r to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  %i.t = call noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !121
  %i.y = shl nsw i32 %i.x, 1
  %i.z = add nsw i32 %i.y, %i.t
  %.sroa.2.0.insert.ext = zext i32 %i.z to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.015.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.0.lcssa
  ret i64 %.sroa.015.0.insert.insert

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.018 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]
  %.sroa.012.017 = phi ptr [ %i.l, %.lr.ph ], [ %i.ay, %bb.d ] ; 5 uses
  %i.aa = load i8, ptr %.sroa.012.017, align 8    ; 2 uses
  %i.ab = trunc i8 %i.aa to i1                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 1
  %i.af = select i1 %i.ab, ptr %i.ad, ptr %i.ae   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i8 %i.aa, 1
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = select i1 %i.ab, i64 %i.ah, i64 %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
end_hunk_1
begin_hunk_2_@_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne180100Ev:bb.a
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.4) #19
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.4) #19
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null, null}
!1 = distinct !{null, null}
!2 = distinct !{!2, !74}
!3 = distinct !{!3, !74}
!4 = distinct !{null, null}
!5 = distinct !{!5, !74}
!6 = distinct !{!6, !74}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !12, i64 0}
!20 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !19, i64 0}
!21 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !20, i64 0}
!22 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !21, i64 0}
!23 = !{!"_ZTSNSt3__16atomicImEE", !22, i64 0}
!24 = !{!"_ZTSN7nanogui6ObjectE", !23, i64 8}
!25 = !{!"any pointer", !12, i64 0}
!26 = !{!"p1 _ZTSN7nanogui6WidgetE", !25, i64 0}
!27 = !{!"p1 _ZTSN7nanogui5ThemeE", !25, i64 0}
!28 = !{!"_ZTSN7nanogui3refINS_5ThemeEEE", !27, i64 0}
!29 = !{!"p1 _ZTSN7nanogui6LayoutE", !25, i64 0}
!30 = !{!"_ZTSN7nanogui3refINS_6LayoutEEE", !29, i64 0}
!31 = !{!"_ZTSN7nanogui5ArrayIiLm2EEE", !12, i64 0}
!32 = !{!"bool", !12, i64 0}
!33 = !{!"any p2 pointer", !25, i64 0}
!34 = !{!"p2 _ZTSN7nanogui6WidgetE", !33, i64 0}
!35 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPN7nanogui6WidgetELi0ELb0EEE", !34, i64 0}
!36 = !{!"_ZTSNSt3__117__compressed_pairIPPN7nanogui6WidgetENS_9allocatorIS3_EEEE", !35, i64 0}
!37 = !{!"_ZTSNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEEE", !34, i64 0, !34, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !12, i64 0}
!39 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !38, i64 0}
!40 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !39, i64 0}
!41 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !40, i64 0}
!42 = !{!"float", !12, i64 0}
!43 = !{!"_ZTSN7nanogui6CursorE", !12, i64 0}
!44 = !{!"_ZTSN7nanogui6WidgetE", !24, i64 0, !26, i64 16, !28, i64 24, !30, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !32, i64 72, !37, i64 80, !32, i64 104, !32, i64 105, !32, i64 106, !32, i64 107, !41, i64 112, !13, i64 136, !42, i64 140, !43, i64 144}
!45 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !25, i64 0}
!46 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEE", !45, i64 0}
!47 = !{!"_ZTSNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !46, i64 0}
!48 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !45, i64 0, !45, i64 8, !47, i64 16}
!49 = !{!"p1 int", !25, i64 0}
!50 = !{!"_ZTSNSt3__122__compressed_pair_elemIPiLi0ELb0EEE", !49, i64 0}
!51 = !{!"_ZTSNSt3__117__compressed_pairIPiNS_9allocatorIiEEEE", !50, i64 0}
!52 = !{!"_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE", !49, i64 0, !49, i64 8, !51, i64 16}
!53 = !{!"p1 _ZTSN7nanogui5PopupE", !25, i64 0}
!54 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !12, i64 0}
!55 = !{!"p1 _ZTSNSt3__110__function6__baseIFviEEE", !25, i64 0}
!56 = !{!"_ZTSNSt3__110__function12__value_funcIFviEEE", !54, i64 0, !55, i64 32}
!57 = !{!"_ZTSNSt3__18functionIFviEEE", !56, i64 0}
!58 = !{!"p1 _ZTSNSt3__110__function6__baseIFPN7nanogui5PopupEiPNS2_6ScreenEEEE", !25, i64 0}
!59 = !{!"_ZTSNSt3__110__function12__value_funcIFPN7nanogui5PopupEiPNS2_6ScreenEEEE", !54, i64 0, !58, i64 32}
!60 = !{!"_ZTSNSt3__18functionIFPN7nanogui5PopupEiPNS1_6ScreenEEEE", !59, i64 0}
!61 = !{!"_ZTSN7nanogui5ArrayIfLm4EEE", !12, i64 0}
!62 = !{!"_ZTSN7nanogui5ColorE", !61, i64 0}
!63 = !{!"_ZTSN7nanogui13TabWidgetBaseE", !44, i64 0, !41, i64 152, !48, i64 176, !52, i64 200, !52, i64 224, !13, i64 248, !13, i64 252, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !32, i64 284, !32, i64 285, !53, i64 288, !13, i64 296, !13, i64 300, !57, i64 304, !57, i64 352, !60, i64 400, !62, i64 448}
!64 = !{!63, !32, i64 284}
!65 = !{!63, !32, i64 285}
!66 = !{!63, !53, i64 288}
!67 = !{!63, !13, i64 296}
!68 = !{!63, !13, i64 300}
!69 = !{!56, !55, i64 32}
!70 = !{!59, !58, i64 32}
!71 = !{!13, !13, i64 0}
!72 = !{!52, !49, i64 8}
!73 = !{!52, !49, i64 0}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!49, !49, i64 0}
!78 = !{!48, !45, i64 0}
!79 = !{!48, !45, i64 8}
!80 = !{!45, !45, i64 0}
!81 = !{!63, !13, i64 252}
!82 = !{i64 0, i64 24, !18}
!83 = !{!"p1 _ZTS10GLFWwindow", !25, i64 0}
!84 = !{!"p1 _ZTS10NVGcontext", !25, i64 0}
!85 = !{!"_ZTSN7nanogui5ArrayIfLm2EEE", !12, i64 0}
!86 = !{!"double", !12, i64 0}
!87 = !{!"p1 _ZTSNSt3__110__function6__baseIFvN7nanogui5ArrayIiLm2EEEEEE", !25, i64 0}
!88 = !{!"_ZTSNSt3__110__function12__value_funcIFvN7nanogui5ArrayIiLm2EEEEEE", !54, i64 0, !87, i64 32}
!89 = !{!"_ZTSNSt3__18functionIFvN7nanogui5ArrayIiLm2EEEEEE", !88, i64 0}
!90 = !{!"_ZTSN7nanogui7RunModeE", !12, i64 0}
!91 = !{!"p1 _ZTSN7nanogui7TextureE", !25, i64 0}
!92 = !{!"_ZTSN7nanogui3refINS_7TextureEEE", !91, i64 0}
!93 = !{!"p1 _ZTSN7nanogui16RestartableTimerE", !25, i64 0}
!94 = !{!"_ZTSN7nanogui3refINS_16RestartableTimerEEE", !93, i64 0}
!95 = !{!"long", !12, i64 0}
!96 = !{!"_ZTSN7nanogui3EMAIdEE", !12, i64 0, !86, i64 16, !95, i64 24}
!97 = !{!"p1 _ZTSN7nanogui9ColorPassE", !25, i64 0}
!98 = !{!"_ZTSN7nanogui3refINS_9ColorPassEEE", !97, i64 0}
!99 = !{!"_ZTSN7nanogui6ScreenE", !44, i64 0, !83, i64 152, !84, i64 160, !12, i64 168, !43, i64 216, !37, i64 224, !31, i64 248, !42, i64 256, !13, i64 260, !13, i64 264, !31, i64 268, !85, i64 276, !32, i64 284, !26, i64 288, !86, i64 296, !86, i64 304, !62, i64 312, !41, i64 328, !32, i64 352, !32, i64 353, !32, i64 354, !32, i64 355, !32, i64 356, !13, i64 360, !32, i64 364, !42, i64 368, !32, i64 372, !89, i64 384, !90, i64 432, !92, i64 440, !94, i64 448, !32, i64 456, !96, i64 464, !95, i64 496, !92, i64 504, !98, i64 512}
!100 = !{!99, !84, i64 160}
!101 = !{!28, !27, i64 0}
!102 = !{!"_ZTSN7nanogui5ThemeE", !24, i64 0, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !42, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !42, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !62, i64 92, !62, i64 108, !62, i64 124, !62, i64 140, !62, i64 156, !62, i64 172, !62, i64 188, !62, i64 204, !62, i64 220, !62, i64 236, !62, i64 252, !62, i64 268, !62, i64 284, !62, i64 300, !62, i64 316, !62, i64 332, !62, i64 348, !62, i64 364, !62, i64 380, !62, i64 396, !62, i64 412, !62, i64 428, !62, i64 444, !62, i64 460, !62, i64 476, !13, i64 492, !13, i64 496, !13, i64 500, !13, i64 504, !13, i64 508, !13, i64 512, !13, i64 516, !13, i64 520, !13, i64 524, !13, i64 528}
!103 = !{!102, !13, i64 84}
!104 = !{i8 0, i8 2}
!105 = !{}
!106 = !{!63, !13, i64 248}
!107 = !{!"p1 _ZTSNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEE", !25, i64 0}
!108 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb0EEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEE", !46, i64 0, !108, i64 8}
!110 = !{!"_ZTSNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEE", !45, i64 0, !45, i64 8, !45, i64 16, !109, i64 24}
!111 = !{!110, !45, i64 0}
!112 = !{!110, !45, i64 16}
!113 = !{!110, !45, i64 8}
!114 = !{!"p1 _ZTSNSt3__19allocatorIiEE", !25, i64 0}
!115 = !{!"_ZTSNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEE", !114, i64 0}
!116 = !{!"_ZTSNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEE", !50, i64 0, !115, i64 8}
!117 = !{!"_ZTSNSt3__114__split_bufferIiRNS_9allocatorIiEEEE", !49, i64 0, !49, i64 8, !49, i64 16, !116, i64 24}
!118 = !{!117, !49, i64 0}
!119 = !{!117, !49, i64 16}
!120 = !{!117, !49, i64 8}
!121 = !{!102, !13, i64 88}
!122 = !{!63, !13, i64 256}
!123 = !{!63, !13, i64 280}
!124 = !{!63, !13, i64 276}
!125 = !{!63, !13, i64 268}
!126 = !{!63, !13, i64 272}
!127 = !{!63, !13, i64 260}
!128 = !{!63, !13, i64 264}
!129 = !{!37, !34, i64 0}
!130 = !{!37, !34, i64 8}
!131 = !{!26, !26, i64 0}
!132 = !{!"p1 _ZTSNSt3__14pairIiPN7nanogui6WidgetEEE", !25, i64 0}
!133 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairIiPN7nanogui6WidgetEEELi0ELb0EEE", !132, i64 0}
!134 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEEE", !133, i64 0}
!135 = !{!"_ZTSNSt3__16vectorINS_4pairIiPN7nanogui6WidgetEEENS_9allocatorIS5_EEEE", !132, i64 0, !132, i64 8, !134, i64 16}
!136 = !{!"_ZTSN7nanogui9TabWidgetE", !63, i64 0, !135, i64 464, !32, i64 488}
!137 = !{!136, !32, i64 488}
!138 = !{!135, !132, i64 0}
!139 = !{!135, !132, i64 8}
!140 = !{!44, !32, i64 104}
!141 = !{!"_ZTSNSt3__14pairIiPN7nanogui6WidgetEEE", !13, i64 0, !26, i64 8}
!142 = !{!141, !13, i64 0}
!143 = !{!141, !26, i64 8}
!144 = !{!132, !132, i64 0}
!145 = !{i64 0, i64 4, !71, i64 8, i64 8, !131}
!146 = distinct !{!146, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!147 = distinct !{!147, !146, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!148 = distinct !{!148, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!149 = distinct !{!149, !148, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!150 = distinct !{!150, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!151 = distinct !{!151, !150, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!152 = distinct !{!152, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!153 = distinct !{!153, !152, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!154 = distinct !{!154, !74, !75, !76}
!155 = distinct !{!155, !74, !75}
!156 = !{!153, !151, !149, !147}
!157 = !{!44, !32, i64 72}
!158 = distinct !{!158, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!159 = distinct !{!159, !158, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!160 = distinct !{!160, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!161 = distinct !{!161, !160, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!162 = distinct !{!162, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!163 = distinct !{!163, !162, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!164 = distinct !{!164, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!165 = distinct !{!165, !164, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!166 = distinct !{!166, !74, !75, !76}
!167 = distinct !{!167, !74, !75}
!168 = distinct !{!168, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!169 = distinct !{!169, !168, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!170 = distinct !{!170, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!171 = distinct !{!171, !170, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!172 = distinct !{!172, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!173 = distinct !{!173, !172, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!174 = distinct !{!174, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!175 = distinct !{!175, !174, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!176 = distinct !{!176, !74, !75, !76}
!177 = distinct !{!177, !74, !75}
!178 = !{!165, !163, !161, !159}
!179 = !{!175, !173, !171, !169}
!180 = distinct !{!180, !74}
!181 = distinct !{!181, !74}
!182 = distinct !{!182, !74}
!183 = !{!107, !107, i64 0}
!184 = distinct !{!184, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!185 = distinct !{!185, !184, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!186 = distinct !{!186, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!187 = distinct !{!187, !186, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!188 = distinct !{!188, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!189 = distinct !{!189, !188, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!190 = distinct !{!190, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!191 = distinct !{!191, !190, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!192 = distinct !{!192, !74, !75, !76}
!193 = distinct !{!193, !74, !75}
!194 = !{!114, !114, i64 0}
!195 = !{!191, !189, !187, !185}
!196 = distinct !{!196, !74}
!197 = !{!42, !42, i64 0}
!198 = !{!102, !13, i64 60}
!199 = distinct !{null, null}
!200 = !{!"p1 _ZTSN7nanogui6ScreenE", !25, i64 0}
!201 = !{!200, !200, i64 0}
!202 = !{!"_ZTSN7nanogui6WindowE", !44, i64 0, !41, i64 152, !26, i64 176, !32, i64 184, !32, i64 185}
!203 = !{!"p1 _ZTSN7nanogui6WindowE", !25, i64 0}
!204 = !{!"_ZTSN7nanogui5Popup4SideE", !12, i64 0}
!205 = !{!"_ZTSN7nanogui5PopupE", !202, i64 0, !203, i64 192, !31, i64 200, !13, i64 208, !13, i64 212, !204, i64 216}
!206 = !{!205, !13, i64 208}
!207 = !{!205, !13, i64 212}
!208 = !{!30, !29, i64 0}
!209 = !{!19, !12, i64 0}
!210 = !{!"_ZTSN7nanogui6Button12IconPositionE", !12, i64 0}
!211 = !{!"p1 _ZTSNSt3__110__function6__baseIFvvEEE", !25, i64 0}
!212 = !{!"_ZTSNSt3__110__function12__value_funcIFvvEEE", !54, i64 0, !211, i64 32}
!213 = !{!"_ZTSNSt3__18functionIFvvEEE", !212, i64 0}
!214 = !{!"p1 _ZTSNSt3__110__function6__baseIFvbEEE", !25, i64 0}
!215 = !{!"_ZTSNSt3__110__function12__value_funcIFvbEEE", !54, i64 0, !214, i64 32}
!216 = !{!"_ZTSNSt3__18functionIFvbEEE", !215, i64 0}
!217 = !{!"p2 _ZTSN7nanogui6ButtonE", !33, i64 0}
!218 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPN7nanogui6ButtonELi0ELb0EEE", !217, i64 0}
!219 = !{!"_ZTSNSt3__117__compressed_pairIPPN7nanogui6ButtonENS_9allocatorIS3_EEEE", !218, i64 0}
!220 = !{!"_ZTSNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEEE", !217, i64 0, !217, i64 8, !219, i64 16}
!221 = !{!"_ZTSN7nanogui6ButtonE", !44, i64 0, !41, i64 152, !13, i64 176, !31, i64 180, !210, i64 188, !32, i64 192, !13, i64 196, !62, i64 200, !62, i64 216, !213, i64 240, !216, i64 288, !220, i64 336}
!222 = !{!221, !210, i64 188}
!223 = !{!221, !13, i64 196}
!224 = !{!44, !26, i64 16}
!225 = distinct !{!225, !74}
!226 = distinct !{!226, !74}
!227 = !{ptr @_ZN7nanogui9TabWidgetD2Ev}
!228 = distinct !{!228, !74}
end_hunk_2
