inline.NumInlined: 933
inline.NumDeleted: 617
begin_hunk_0
$_ZN2v84base18ContextualVariableINS_8internal6torque13SourceFileMapES4_E4top_E = comdat any

@.str = private unnamed_addr constant [13 x i8] c"Torque Error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Lint error\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-v8-root\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-m32\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"-annotate-ir\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"-strip-v8-root\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".tq\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"Unexpected command-line argument \22\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\22, expected a .tq file.\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@_ZTVN2v88internal6torque4TypeE = external unnamed_addr constant { [20 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZN2v84base18ContextualVariableINS_8internal6torque13SourceFileMapES4_E4top_E = linkonce_odr hidden thread_local local_unnamed_addr global ptr null, comdat, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal6torque14ErrorPrefixForB5cxx11ENS1_13TorqueMessage4KindE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 initializes((16, 26)) %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.a, label %._crit_edge.i.i, label %._crit_edge.i.i6

._crit_edge.i.i:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  br label %bb.b

._crit_edge.i.i6:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.1, i64 10, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i6, %._crit_edge.i.i
  %.sink17 = phi i64 [ 26, %._crit_edge.i.i6 ], [ 28, %._crit_edge.i.i ]
  %.sink = phi i64 [ 10, %._crit_edge.i.i6 ], [ 12, %._crit_edge.i.i ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink17
  store i8 0, ptr %i.c, align 2
  store ptr %i.b, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2v88internal6torque11WrappedMainEiPPKc(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.v8::internal::torque::TorqueCompilerOptions", align 8 ; 17 uses
  %3 = alloca %"class.std::vector", align 8       ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.v8::internal::torque::TorqueCompilerResult", align 8 ; 9 uses
  %10 = alloca %"struct.v8::internal::torque::TorqueCompilerOptions", align 8 ; 7 uses
  %11 = alloca %"class.v8::base::ContextualVariable<v8::internal::torque::SourceFileMap, v8::internal::torque::SourceFileMap>::Scope", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.v8::internal::torque::SourcePosition", align 8 ; 2 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.f, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.sink17.i.sroa.gep = getelementptr inbounds nuw i8, ptr %14, i64 26
  %.sink17.i.sroa.gep155 = getelementptr inbounds nuw i8, ptr %14, i64 28
  %i.g = icmp sgt i32 %0, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 69 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 67
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 19
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN2v88internal6torque21TorqueCompilerOptionsC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(70) %10, ptr noundef nonnull align 8 dereferenceable(70) %2)
          to label %bb.bb unwind label %bb.be

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %.0235 = phi i32 [ 1, %.lr.ph ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.x = sext i32 %.0235 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  store ptr %i.h, ptr %4, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #22 ; 8 uses
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp slt i64 %i.ab, 0
  br i1 %i.ad, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %.noexc.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ae = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

.noexc11.i:                                       ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc47 unwind label %.loopexit.split-lp

.noexc47:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #24
          to label %.noexc48 unwind label %.loopexit ; 2 uses

.noexc48:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ag, ptr %4, align 8
  store i64 %i.ab, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc48, %bb.d
  %i.ah = phi ptr [ %i.ag, %.noexc48 ], [ %i.h, %bb.d ] ; 3 uses
  switch i64 %i.ab, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.z, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  store i64 %i.ab, ptr %i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store i8 0, ptr %i.aj, align 1
  %i.ak = load i64, ptr %i.i, align 8             ; 11 uses
  %15 = add i64 %i.ak, -2                         ; 2 uses
  %i.al = call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 63)
  switch i64 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166 [
    i64 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51_crit_edge
    i64 1, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62_crit_edge.a
    i64 5, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64_crit_edge.a
    i64 6, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66_crit_edge
  ]

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66_crit_edge: ; preds = %bb.i
  %.pre249 = load ptr, ptr %4, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64_crit_edge.a: ; preds = %bb.i
  %.pre248.a = load ptr, ptr %4, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62_crit_edge.a: ; preds = %bb.i
  %.pre247.a = load ptr, ptr %4, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51_crit_edge: ; preds = %bb.i
  %.pre.a = load ptr, ptr %4, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.i
  %i.am = load ptr, ptr %4, align 8               ; 5 uses
  %bcmp.i = call i32 @bcmp(ptr %i.am, ptr nonnull @.str.2, i64 %i.ak)
  %i.an = icmp eq i32 %bcmp.i, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ao = add nsw i32 %.0235, 1                   ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = load i64, ptr %i.b, align 8
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #22
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.as, ptr noundef nonnull %i.ar, i64 noundef %i.at)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit172 ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

.loopexit.split-lp:                               ; preds = %bb.c, %.noexc.i, %.noexc11.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

.loopexit172:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.av
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp173:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %bb.ax, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %16 = add i64 %i.ak, -4                         ; 2 uses
  %17 = call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 63)
  switch i64 %17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
    i64 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162
  %18 = phi ptr [ %.pre.a, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51_crit_edge ], [ %i.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162 ] ; 4 uses
  %bcmp.i50 = call i32 @bcmp(ptr %18, ptr nonnull @.str.3, i64 %i.ak)
  %i.av = icmp eq i32 %bcmp.i50, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aw = add nsw i32 %.0235, 1                   ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  store ptr %i.m, ptr %5, align 8
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #23
          to label %.noexc56 unwind label %.loopexit.split-lp168

.noexc56:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #22 ; 8 uses
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %bb.l, label %._crit_edge.i.i52

bb.l:                                             ; preds = %bb.k
  %i.bd = icmp slt i64 %i.bb, 0
  br i1 %i.bd, label %.noexc.i55, label %bb.m

.noexc.i55:                                       ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc57 unwind label %.loopexit.split-lp168

.noexc57:                                         ; preds = %.noexc.i55
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.be = add nuw i64 %i.bb, 1                    ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %.noexc11.i54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i53, !prof !5

.noexc11.i54:                                     ; preds = %bb.m
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc58 unwind label %.loopexit.split-lp168

.noexc58:                                         ; preds = %.noexc11.i54
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i53: ; preds = %bb.m
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24
          to label %.noexc59 unwind label %.loopexit167 ; 2 uses

.noexc59:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i53
  store ptr %i.bg, ptr %5, align 8
  store i64 %i.bb, ptr %i.m, align 8
  br label %._crit_edge.i.i52

._crit_edge.i.i52:                                ; preds = %.noexc59, %bb.k
  %i.bh = phi ptr [ %i.bg, %.noexc59 ], [ %i.m, %bb.k ] ; 3 uses
  switch i64 %i.bb, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i52
  %i.bi = load i8, ptr %i.az, align 1
  store i8 %i.bi, ptr %i.bh, align 1
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull align 1 %i.az, i64 %i.bb, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i52
  store i64 %i.bb, ptr %i.n, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store i8 0, ptr %i.bj, align 1
  %i.bk = load ptr, ptr %i.c, align 8             ; 6 uses
  %i.bl = icmp eq ptr %i.bk, %i.d
  %i.bm = load ptr, ptr %5, align 8               ; 5 uses
  %i.bn = icmp eq ptr %i.bm, %i.m                 ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.p
  br i1 %i.bn, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.p
  br i1 %i.bn, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bo = load i64, ptr %i.n, align 8             ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  switch i64 %i.bo, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bq = load i8, ptr %i.bm, align 1
  store i8 %i.bq, ptr %i.bk, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.br = load i64, ptr %i.n, align 8             ; 2 uses
  store i64 %i.br, ptr %i.e, align 8
  %i.bs = load ptr, ptr %i.c, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1
  %.pre.i = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bm, ptr %i.c, align 8
  %i.bu = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.bu, ptr %i.e, align 8
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bv = load i64, ptr %i.d, align 8
  store ptr %i.bm, ptr %i.c, align 8
  %i.bw = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.bw, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bk, ptr %5, align 8
  store i64 %i.bv, ptr %i.m, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.m, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.bx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bk, %bb.t ], [ %i.m, %bb.u ]
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.bx, align 1
  %i.by = load ptr, ptr %5, align 8               ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.m
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ca = load i64, ptr %i.m, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.loopexit167:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i53
  %lpad.loopexit169 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp168:                            ; preds = %bb.j, %.noexc.i55, %.noexc11.i54
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp168, %.loopexit167
  %lpad.phi171 = phi { ptr, i32 } [ %lpad.loopexit169, %.loopexit167 ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ba

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
  switch i64 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62_crit_edge.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163
  %19 = phi ptr [ %.pre247.a, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62_crit_edge.a ], [ %i.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162 ], [ %18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163 ] ; 3 uses
  %bcmp.i61 = call i32 @bcmp(ptr %19, ptr nonnull @.str.4, i64 %i.ak)
  %i.cc = icmp eq i32 %bcmp.i61, 0
  br i1 %i.cc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread164

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62
  store i8 1, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread164: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62
  switch i64 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166 [
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64_crit_edge.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread164
  %20 = phi ptr [ %.pre248.a, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64_crit_edge.a ], [ %i.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162 ], [ %18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163 ], [ %19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread164 ] ; 2 uses
  %bcmp.i63 = call i32 @bcmp(ptr %20, ptr nonnull @.str.5, i64 %i.ak)
  %i.cd = icmp eq i32 %bcmp.i63, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread165

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64
  store i8 1, ptr %i.k, align 4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread165: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64
  %i.ce = icmp eq i64 %i.ak, 14
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread165, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread164, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162
  %21 = phi ptr [ %.pre249, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66_crit_edge ], [ %20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread165 ], [ %19, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread164 ], [ %18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163 ], [ %i.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162 ]
  %bcmp.i65 = call i32 @bcmp(ptr %21, ptr nonnull @.str.6, i64 %i.ak)
  %i.cf = icmp eq i32 %bcmp.i65, 0
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66
  store i8 1, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread162, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51.thread163, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit62.thread164, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit64.thread165, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66
  %i.cg = load i8, ptr %i.j, align 1, !range !6, !noundef !7
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66.thread166
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ci = load i64, ptr %i.e, align 8             ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  store ptr %i.o, ptr %6, align 8, !alias.scope !8
  %i.cj = load ptr, ptr %4, align 8, !noalias !8  ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ak) ; 8 uses
  %i.ck = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ck, label %bb.x, label %._crit_edge.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cl = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.cl, label %.noexc10.i.i, label %bb.y

.noexc10.i.i:                                     ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc67 unwind label %.loopexit.split-lp178

.noexc67:                                         ; preds = %.noexc10.i.i
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.cm = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

.noexc11.i.i:                                     ; preds = %bb.y
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc68 unwind label %.loopexit.split-lp178

.noexc68:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.y
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #24
          to label %.noexc69 unwind label %.loopexit177 ; 2 uses

.noexc69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.co, ptr %6, align 8, !alias.scope !8
  store i64 %spec.select.i.i.i, ptr %i.o, align 8, !alias.scope !8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc69, %bb.w
  %i.cp = phi ptr [ %i.co, %.noexc69 ], [ %i.o, %bb.w ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i
  %i.cq = load i8, ptr %i.cj, align 1
  store i8 %i.cq, ptr %i.cp, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr align 1 %i.cj, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i.i
  store i64 %spec.select.i.i.i, ptr %i.p, align 8, !alias.scope !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %spec.select.i.i.i
  store i8 0, ptr %i.cr, align 1
  %i.cs = load i64, ptr %i.p, align 8             ; 2 uses
  %i.ct = icmp eq i64 %i.cs, %i.ci
  br i1 %i.ct, label %bb.ac, label %._crit_edge250

._crit_edge250:                                   ; preds = %bb.ab
  %.pre251 = load ptr, ptr %6, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cu = icmp eq i64 %i.ci, 0
  %.pre252 = load ptr, ptr %6, align 8            ; 3 uses
  br i1 %i.cu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.c, align 8
  %bcmp.i70 = call i32 @bcmp(ptr %.pre252, ptr %i.cv, i64 %i.ci)
  %i.cw = icmp eq i32 %bcmp.i70, 0
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge250, %bb.ad, %bb.ac
  %i.cx = phi ptr [ %.pre252, %bb.ac ], [ %.pre252, %bb.ad ], [ %.pre251, %._crit_edge250 ] ; 2 uses
  %.ph = phi i1 [ true, %bb.ac ], [ %i.cw, %bb.ad ], [ false, %._crit_edge250 ]
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i72: ; preds = %bb.ae
  %i.cz = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.cz)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.ae
  %i.da = load i64, ptr %i.o, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #25
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.ph, label %bb.af, label %.critedge.thread

bb.af:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dc = load i64, ptr %i.e, align 8
  %i.dd = add i64 %i.dc, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.de = load i64, ptr %i.i, align 8, !noalias !11 ; 4 uses
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i64 noundef %i.dd, i64 noundef %i.de) #23
          to label %.noexc79 unwind label %.loopexit.split-lp183

.noexc79:                                         ; preds = %bb.ag
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.af
  store ptr %i.q, ptr %7, align 8, !alias.scope !11
  %i.dg = load ptr, ptr %4, align 8, !noalias !11 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dd ; 2 uses
  %i.di = sub nuw i64 %i.de, %i.dd                ; 8 uses
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %bb.ah, label %._crit_edge.i.i.i75

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dk = icmp slt i64 %i.di, 0
  br i1 %i.dk, label %.noexc10.i.i78, label %bb.ai

.noexc10.i.i78:                                   ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #23
          to label %.noexc80 unwind label %.loopexit.split-lp183

.noexc80:                                         ; preds = %.noexc10.i.i78
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.dl = add nuw i64 %i.di, 1                    ; 2 uses
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %.noexc11.i.i77, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i76, !prof !5

.noexc11.i.i77:                                   ; preds = %bb.ai
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc81 unwind label %.loopexit.split-lp183

.noexc81:                                         ; preds = %.noexc11.i.i77
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i76: ; preds = %bb.ai
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #24
          to label %.noexc82 unwind label %.loopexit182 ; 2 uses

.noexc82:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i76
  store ptr %i.dn, ptr %7, align 8, !alias.scope !11
  store i64 %i.di, ptr %i.q, align 8, !alias.scope !11
  br label %._crit_edge.i.i.i75

._crit_edge.i.i.i75:                              ; preds = %.noexc82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.do = phi ptr [ %i.dn, %.noexc82 ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.di, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i75
  %i.dp = load i8, ptr %i.dh, align 1
  store i8 %i.dp, ptr %i.do, align 1
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %i.dh, i64 %i.di, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i75
  store i64 %i.di, ptr %i.r, align 8, !alias.scope !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.di
  store i8 0, ptr %i.dq, align 1
  %i.dr = icmp eq ptr %i.dg, %i.h
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89: ; preds = %bb.al
  %i.ds = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load ptr, ptr %7, align 8               ; 3 uses
  %i.du = icmp eq ptr %i.dt, %i.q
  br i1 %i.du, label %bb.am, label %.thread.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i84: ; preds = %bb.al
  %i.dv = load ptr, ptr %7, align 8               ; 3 uses
  %i.dw = icmp eq ptr %i.dv, %i.q
  br i1 %i.dw, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i85

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89
  %i.dx = phi ptr [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i84 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i89 ] ; 2 uses
  %i.dy = load i64, ptr %i.r, align 8             ; 3 uses
end_hunk_0
