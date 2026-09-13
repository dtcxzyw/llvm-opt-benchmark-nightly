Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/array_interface?download=true
inline.NumInlined: 361
inline.NumDeleted: 170
begin_hunk_0
$_ZN4dmlc10StackTraceB5cxx11Emm = comdat any

$_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv = comdat any

$_ZN4dmlc8DemangleB5cxx11EPKc = comdat any

$_ZN4dmlc5ErrorD0Ev = comdat any

$_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZTIN4dmlc5ErrorE = comdat any

$_ZTSN4dmlc5ErrorE = comdat any

$_ZTVN4dmlc5ErrorE = comdat any

@.str = private unnamed_addr constant [6 x i8] c"-bit \00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"Bit field\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Unsigned integer\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Floating point\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Complex floating point\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Timedelta\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Datetime\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Unicode\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/xgboost/xgboost/src/data/array_interface.h\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Invalid type code: \00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c" in `typestr' of input array.\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"\0APlease verify the `__cuda_array_interface__/__array_interface__' \00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"of your input data complies to: \00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"https://docs.scipy.org/doc/numpy/reference/arrays.interface.html\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"\0AOr open an issue.\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local global %"struct.dmlc::LogMessageFatal::Entry" zeroinitializer, comdat, align 8
@_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.24 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN4dmlc5ErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4dmlc5ErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4dmlc5ErrorE = linkonce_odr constant [14 x i8] c"N4dmlc5ErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.31 = private unnamed_addr constant [14 x i8] c"Stack trace:\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"  [bt] (\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"basic_string::basic_string\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"DMLC_LOG_STACK_TRACE_DEPTH\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@_ZTVN4dmlc5ErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4dmlc5ErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4dmlc5ErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.40 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/xgboost/xgboost/src/data/../common/error_msg.h\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Unreachable\00", align 1
@.str.42 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/xgboost/xgboost/src/data/../common/common.h\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"XGBoost version not compiled with GPU support.\00", align 1
@switch.table._ZN7xgboost20ArrayInterfaceErrors7TypeStrEc = private unnamed_addr constant [41 x ptr] [ptr @.str.11, ptr poison, ptr @.str.12, ptr poison, ptr poison, ptr poison, ptr @.str.13, ptr poison, ptr @.str.14, ptr @.str.15, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.5, ptr @.str.9, ptr poison, ptr poison, ptr @.str.8, ptr poison, ptr poison, ptr @.str.6, ptr poison, ptr poison, ptr poison, ptr @.str.10, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.4, ptr @.str.7], align 8
@switch.table._ZN7xgboost20ArrayInterfaceErrors7TypeStrEc.2 = private unnamed_addr constant [41 x i8] [i8 8, i8 poison, i8 6, i8 poison, i8 poison, i8 poison, i8 6, i8 poison, i8 7, i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 7, i8 22, i8 poison, i8 poison, i8 14, i8 poison, i8 poison, i8 7, i8 poison, i8 poison, i8 poison, i8 9, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 9, i8 16], align 8

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %1, label %bb.n [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 16, i8 noundef signext 102)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 32, i8 noundef signext 102)
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 64, i8 noundef signext 102)
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 128, i8 noundef signext 102)
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 8, i8 noundef signext 105)
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 16, i8 noundef signext 105)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 32, i8 noundef signext 105)
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 64, i8 noundef signext 105)
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 8, i8 noundef signext 117)
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 16, i8 noundef signext 117)
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 32, i8 noundef signext 117)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef 64, i8 noundef signext 117)
  br label %bb.r

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull @.str.40, i32 noundef 144)
  %i.b = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.o

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.n
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.41, i64 noundef 11)
          to label %_ZN7xgboost5error11UnreachableEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.n
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %i.d

bb.q:                                             ; preds = %bb.o
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25
  unreachable

_ZN7xgboost5error11UnreachableEv.exit:            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.g, align 8, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %_ZN7xgboost5error11UnreachableEv.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN7xgboost21ArrayInterfaceHandler7TypeStrB5cxx11ENS0_4TypeEENK3$_0clB5cxx11Eic"(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef range(i32 8, 129) %1, i8 noundef signext range(i8 102, 118) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = icmp samesign ult i32 %1, 10
  %i.c = icmp samesign ult i32 %1, 100
  %. = select i1 %i.c, i32 2, i32 3               ; 3 uses
  %.022.i.i = select i1 %i.b, i32 1, i32 %.
  %i.d = zext nneg i32 %.022.i.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !11, !alias.scope !35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.d, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.f = load ptr, ptr %4, align 8, !tbaa !16, !alias.scope !35 ; 4 uses
  %i.g = icmp samesign ugt i32 %1, 99
  br i1 %i.g, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.h = shl nuw nsw i32 %1, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -200
  %i.l = getelementptr i8, ptr %i.j, i64 -199
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15, !noalias !35
  %6 = zext nneg i32 %. to i64
  %i.n = getelementptr i8, ptr %i.f, i64 %6
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  store i8 %i.m, ptr %i.o, align 1, !tbaa !15
  %i.p = load i8, ptr %i.k, align 2, !tbaa !15, !noalias !35
  %i.q = zext nneg i32 %. to i64
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  store i8 %i.p, ptr %i.s, align 1, !tbaa !15
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.t = icmp samesign ugt i32 %1, 9
  br i1 %i.t, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.u = shl nuw nsw i32 %1, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15, !noalias !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !15
  %i.aa = load i8, ptr %i.w, align 2, !tbaa !15, !noalias !35
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.b:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %.0.lcssa.i.i18 = phi i32 [ 1, %._crit_edge.i.i.thread ], [ %1, %._crit_edge.i.i ]
  %i.ab = trunc nuw nsw i32 %.0.lcssa.i.i18 to i8
  %i.ac = or disjoint i8 %i.ab, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.c:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i8 [ %i.ac, %bb.b ], [ %i.aa, %bb.a ]
  store i8 %storemerge.i.i, ptr %i.f, align 1, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14, !noalias !36
  %i.ah = add i64 %i.ag, -4611686018427387899
  %i.ai = icmp ult i64 %i.ah, 5
  br i1 %i.ai, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #26
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, i64 noundef 5)
          to label %.noexc9 unwind label %bb.n    ; 6 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !11, !alias.scope !36
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc9
  store ptr %i.al, ptr %3, align 8, !tbaa !16, !alias.scope !36
  %i.as = load i64, ptr %i.am, align 8, !tbaa !15
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !15, !alias.scope !36
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.at = phi i64 [ %i.ap, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.at, ptr %i.av, align 8, !tbaa !14, !alias.scope !36
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !16
  store i64 0, ptr %i.au, align 8, !tbaa !14
  store i8 0, ptr %i.am, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.aw = invoke { i64, ptr } @_ZN7xgboost20ArrayInterfaceErrors7TypeStrEc(i8 noundef signext %2)
          to label %bb.g unwind label %bb.o       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ax = extractvalue { i64, ptr } %i.aw, 0      ; 5 uses
  %i.ay = extractvalue { i64, ptr } %i.aw, 1      ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.az, ptr %5, align 8, !tbaa !11
  %i.ba = icmp eq ptr %i.ay, null
  %i.bb = icmp ne i64 %i.ax, 0
  %or.cond.i.i.i = and i1 %i.bb, %i.ba
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #26
          to label %.noexc10 unwind label %bb.p

.noexc10:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !17
  %i.bc = icmp ugt i64 %i.ax, 15
  br i1 %i.bc, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.i
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.p   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i
  store ptr %i.bd, ptr %5, align 8, !tbaa !16
  %i.be = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.be, ptr %i.az, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc11, %bb.i
  %i.bf = phi ptr [ %i.bd, %.noexc11 ], [ %i.az, %bb.i ] ; 2 uses
  switch i64 %i.ax, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !15
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.ay, i64 %i.ax, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !14
  %i.bj = load ptr, ptr %5, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.az
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.m
  %i.bn = load i64, ptr %i.az, align 8, !tbaa !15
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ak
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.ak, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.bt = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.e
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !15
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.o:                                             ; preds = %bb.f
end_hunk_0
