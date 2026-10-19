Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/exp?download=true
inline.NumInlined: 302
inline.NumDeleted: 96
begin_hunk_0

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

@.str = private unnamed_addr constant [46 x i8] c"bad character found while scanning hex number\00", align 1
@_ZTIN4YAML15ParserExceptionE = external constant ptr
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid unicode: \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\E2\80\A8\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"\E2\80\A9\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"unknown escape character: \00", align 1
@_ZTVN4YAML15ParserExceptionE = external constant { [5 x ptr] }, align 8
@_ZTVN4YAML9ExceptionE = external constant { [5 x ptr] }, align 8
@.str.20 = private unnamed_addr constant [25 x i8] c"yaml-cpp: error at line \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c", column \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.26 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4YAML3Exp8ParseHexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4MarkE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %.not40 = icmp samesign eq i64 %i.c, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.029.lcssa = phi i32 [ 0, %bb.a ], [ %i.r, %bb.j ]
  ret i32 %.029.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.02942 = phi i32 [ %i.r, %bb.j ], [ 0, %bb.a ]
  %.sroa.032.041 = phi ptr [ %i.s, %bb.j ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.sroa.032.041, align 1, !tbaa !15 ; 4 uses
  %i.f = sext i8 %i.e to i32
  %i.g = add i8 %i.e, -97
  %or.cond = icmp ult i8 %i.g, 6
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add i8 %i.e, -65
  %or.cond5 = icmp ult i8 %i.h, 6
  br i1 %or.cond5, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i8 %i.e, -48
  %or.cond8 = icmp ult i8 %i.i, 10
  br i1 %or.cond8, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 64) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML15ParserExceptionE, i64 16), ptr %i.j, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #12
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !13     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn38 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #11
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37 = phi { ptr, i32 } [ %.pn38, %bb.h ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn37

bb.j:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.sink = phi i32 [ -87, %.lr.ph ], [ -55, %bb.b ], [ -48, %bb.c ]
  %i.p = add nsw i32 %.sink, %i.f
  %i.q = shl i32 %.02942, 4
  %i.r = add nuw i32 %i.p, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.041, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4YAML15ParserExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML3Exp3StrB5cxx11Ej(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML3Exp6EscapeB5cxx11ERNS_6StreamEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"struct.YAML::Mark", align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %6 = alloca %"struct.YAML::Mark", align 8       ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !19
  store i64 %.sroa.01.0.copyload.i, ptr %4, align 8
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.22.0.copyload.i, ptr %.sroa.27.0..sroa_idx, align 8
  %i.e = invoke noundef i32 @_ZN4YAML3Exp8ParseHexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4MarkE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.e unwind label %bb.j       ; 16 uses

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.032221 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.a ]
  %i.f = invoke noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.b unwind label %20

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i64, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.g, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %20

.noexc:                                           ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.o = phi ptr [ %.pre.i.i, %.noexc ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 %i.f, ptr %i.p, align 1, !tbaa !15
  store i64 %i.h, ptr %i.b, align 8, !tbaa !14
  %i.q = load ptr, ptr %3, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !15
  %i.s = add nuw nsw i32 %.032221, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

20:                                               ; preds = %bb.c, %.lr.ph
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.t = and i32 %i.e, -2048
  %or.cond = icmp eq i32 %i.t, 55296
  %i.u = icmp ugt i32 %i.e, 1114111
  %or.cond3 = or i1 %i.u, %or.cond
  br i1 %or.cond3, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.1, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.x = zext i32 %i.e to i64
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.x)
          to label %_ZNSolsEj.exit unwind label %bb.l ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = call ptr @__cxa_allocate_exception(i64 64) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %.sroa.01.0.copyload.i76 = load i64, ptr %i.d, align 8, !tbaa !19
  %.sroa.22.0.copyload.i78 = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !19
  store i64 %.sroa.01.0.copyload.i76, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.22.0.copyload.i78, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %_ZNSolsEj.exit
  invoke void @_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4YAML15ParserExceptionE, i64 16), ptr %i.z, align 8, !tbaa !17
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN4YAML15ParserExceptionE, ptr nonnull @_ZN4YAML15ParserExceptionD1Ev) #12
          to label %bb.bg unwind label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.bf

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNSolsEj.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !13    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.af) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.0, label %bb.n, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.0, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn67220 = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #11
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n, %bb.l
  %.pn67.pn = phi { ptr, i32 } [ %.pn67220, %bb.n ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %bb.l ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %bb.o ], [ %i.ab, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.bf

bb.q:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i32 %i.e, 128
  br i1 %i.ai, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aj = trunc nuw nsw i32 %i.e to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %0, align 8, !tbaa !18, !alias.scope !49
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext %i.aj)
          to label %_ZN4YAML3Exp3StrB5cxx11Ej.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.t:                                             ; preds = %bb.q
  %i.am = icmp samesign ult i32 %i.e, 2048
  br i1 %i.am, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.an = lshr i32 %i.e, 6
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = or disjoint i8 %i.ao, -64
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.aq, ptr %8, align 8, !tbaa !18, !alias.scope !50
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1, i8 noundef signext %i.ap)
          to label %_ZN4YAML3Exp3StrB5cxx11Ej.exit84 unwind label %bb.w

_ZN4YAML3Exp3StrB5cxx11Ej.exit84:                 ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.ar = trunc i32 %i.e to i8
  %i.as = and i8 %i.ar, 63
  %i.at = or disjoint i8 %i.as, -128
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.au, ptr %9, align 8, !tbaa !18, !alias.scope !51
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1, i8 noundef signext %i.at)
          to label %_ZN4YAML3Exp3StrB5cxx11Ej.exit86 unwind label %bb.x

_ZN4YAML3Exp3StrB5cxx11Ej.exit86:                 ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit84
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit86
  %i.av = load ptr, ptr %9, align 8, !tbaa !13    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.au
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.av) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.ax = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aq
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @_ZdlPv(ptr noundef %i.ax) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %_ZN4YAML3Exp3StrB5cxx11Ej.exit

bb.w:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.x:                                             ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit84
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

bb.y:                                             ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit86
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %9, align 8, !tbaa !13    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.au
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.bc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %bb.x
  %.pn64 = phi { ptr, i32 } [ %i.ba, %bb.x ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.bb, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.be = load ptr, ptr %8, align 8, !tbaa !13    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aq
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @_ZdlPv(ptr noundef %i.be) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.w
  %.pn64.pn = phi { ptr, i32 } [ %i.az, %bb.w ], [ %.pn64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.bf

bb.z:                                             ; preds = %bb.t
  %i.bg = icmp samesign ult i32 %i.e, 65536
  br i1 %i.bg, label %bb.aa, label %bb.am

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.bh = lshr i32 %i.e, 12
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = or disjoint i8 %i.bi, -32
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bk, ptr %11, align 8, !tbaa !18, !alias.scope !52
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 1, i8 noundef signext %i.bj)
          to label %_ZN4YAML3Exp3StrB5cxx11Ej.exit100 unwind label %bb.ah

_ZN4YAML3Exp3StrB5cxx11Ej.exit100:                ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.bl = lshr i32 %i.e, 6
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.bp, ptr %12, align 8, !tbaa !18, !alias.scope !53
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 1, i8 noundef signext %i.bo)
          to label %_ZN4YAML3Exp3StrB5cxx11Ej.exit102 unwind label %bb.ai

_ZN4YAML3Exp3StrB5cxx11Ej.exit102:                ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit100
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14, !noalias !54 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !14, !noalias !54 ; 4 uses
  %i.bu = add i64 %i.bt, %i.br                    ; 2 uses
  %i.bv = load ptr, ptr %11, align 8, !tbaa !13, !noalias !54 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bk
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104: ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit102
  %i.bx = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit102
  %i.by = load i64, ptr %i.bk, align 8, !tbaa !15, !noalias !54
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104
  %i.bz = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104 ]
  %i.ca = icmp ugt i64 %i.bu, %i.bz
  br i1 %i.ca, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.cb = load ptr, ptr %12, align 8, !tbaa !13, !noalias !54
  %i.cc = icmp eq ptr %i.cb, %i.bp
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.ab
  %i.cd = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.ab
  %i.ce = load i64, ptr %i.bp, align 8, !tbaa !15, !noalias !54
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.cf = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.bu, %i.cf
  br i1 %.not.i, label %bb.ad, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.cg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.bv, i64 noundef %i.br)
          to label %.noexc105 unwind label %bb.aj ; 5 uses

.noexc105:                                        ; preds = %.critedge.i
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ch, ptr %10, align 8, !tbaa !18, !alias.scope !54
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !13 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.ac:                                            ; preds = %.noexc105
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !14 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc105
  store ptr %i.ci, ptr %10, align 8, !tbaa !13, !alias.scope !54
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !15
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !15, !alias.scope !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !14, !alias.scope !54
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !13
  store i64 0, ptr %i.cq, align 8, !tbaa !14
  store i8 0, ptr %i.cj, align 8, !tbaa !15
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN4YAML3Exp6EscapeB5cxx11ERNS_6StreamEi:bb.a
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !14, !alias.scope !60
  store ptr %i.ib, ptr %i.hy, align 8, !tbaa !13
  store i64 0, ptr %i.ii, align 8, !tbaa !14
  store i8 0, ptr %i.ib, align 8, !tbaa !15
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit173

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i167
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #11
  %i.il = trunc i32 %i.e to i8
  %i.im = and i8 %i.il, 63
  %i.in = or disjoint i8 %i.im, -128
  %i.io = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  store ptr %i.io, ptr %19, align 8, !tbaa !18, !alias.scope !61
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 1, i8 noundef signext %i.in)
          to label %_ZN4YAML3Exp3StrB5cxx11Ej.exit175 unwind label %bb.bd

_ZN4YAML3Exp3StrB5cxx11Ej.exit175:                ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit173
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit175
  %i.ip = load ptr, ptr %19, align 8, !tbaa !13   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.io
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.ip) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  %i.ir = load ptr, ptr %14, align 8, !tbaa !13   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  call void @_ZdlPv(ptr noundef %i.ir) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  %i.iu = load ptr, ptr %18, align 8, !tbaa !13   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.gq
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  call void @_ZdlPv(ptr noundef %i.iu) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  %i.iw = load ptr, ptr %15, align 8, !tbaa !13   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.gx
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  call void @_ZdlPv(ptr noundef %i.iw) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  %i.iy = load ptr, ptr %17, align 8, !tbaa !13   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.es
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  call void @_ZdlPv(ptr noundef %i.iy) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.ja = load ptr, ptr %16, align 8, !tbaa !13   ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.en
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  call void @_ZdlPv(ptr noundef %i.ja) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %_ZN4YAML3Exp3StrB5cxx11Ej.exit

bb.ay:                                            ; preds = %bb.am
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

bb.az:                                            ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit135
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i140, %bb.aq, %.critedge.i146
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

bb.bb:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit154
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i159, %bb.av, %.critedge.i165
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

bb.bd:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit173
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.be:                                            ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit175
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jj = load ptr, ptr %19, align 8, !tbaa !13   ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.io
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.jj) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.jh, %bb.bd ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.ji, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  %i.jl = load ptr, ptr %14, align 8, !tbaa !13   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  call void @_ZdlPv(ptr noundef %i.jl) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %i.jg, %bb.bc ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ] ; 2 uses
  %i.jo = load ptr, ptr %18, align 8, !tbaa !13   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.gq
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  call void @_ZdlPv(ptr noundef %i.jo) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.bb
  %.pn.pn.pn = phi { ptr, i32 } [ %i.jf, %bb.bb ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  %i.jq = load ptr, ptr %15, align 8, !tbaa !13   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  call void @_ZdlPv(ptr noundef %i.jq) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.ba
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.je, %bb.ba ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ] ; 2 uses
  %i.jt = load ptr, ptr %17, align 8, !tbaa !13   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.es
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  call void @_ZdlPv(ptr noundef %i.jt) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.az
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jd, %bb.az ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.jv = load ptr, ptr %16, align 8, !tbaa !13   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.en
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  call void @_ZdlPv(ptr noundef %i.jv) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %bb.ay
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %bb.ay ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.bf

_ZN4YAML3Exp3StrB5cxx11Ej.exit:                   ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.jx = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.a
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit
  call void @_ZdlPv(ptr noundef %i.jx) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %_ZN4YAML3Exp3StrB5cxx11Ej.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void

bb.bf:                                            ; preds = %bb.j, %bb.p, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %20
  %.pn72 = phi { ptr, i32 } [ %21, %20 ], [ %.pn67.pn.pn, %bb.p ], [ %i.al, %bb.s ], [ %.pn64.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %.pn59.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.aa, %bb.j ]
  %i.jz = load ptr, ptr %3, align 8, !tbaa !13    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.a
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef %i.jz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn72

bb.bg:                                            ; preds = %bb.i
  unreachable
}

declare noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !18
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !13
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !15
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !14
  store ptr %i.v, ptr %i.s, align 8, !tbaa !13
  store i64 0, ptr %i.ac, align 8, !tbaa !14
  store i8 0, ptr %i.v, align 8, !tbaa !15
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !13
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !18
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !13
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !15
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !14
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !13
  store i64 0, ptr %i.as, align 8, !tbaa !14
  store i8 0, ptr %i.al, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML3Exp6EscapeB5cxx11ERNS_6StreamE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 4 uses
  %3 = alloca %"struct.YAML::Mark", align 8       ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.b = tail call noundef signext i8 @_ZN4YAML6Stream3getEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 3 uses
  %i.c = icmp eq i8 %i.a, 39
  %i.d = icmp eq i8 %i.b, 39
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !18
  store i8 39, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.g, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EmcRKS3_.exit

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.g [
    i8 48, label %bb.c
    i8 97, label %._crit_edge.i.i25
    i8 98, label %._crit_edge.i.i29
    i8 116, label %._crit_edge.i.i33
    i8 9, label %._crit_edge.i.i33
    i8 110, label %._crit_edge.i.i37
    i8 118, label %._crit_edge.i.i41
    i8 102, label %._crit_edge.i.i45
    i8 114, label %._crit_edge.i.i49
    i8 101, label %._crit_edge.i.i53
    i8 32, label %._crit_edge.i.i57
    i8 34, label %._crit_edge.i.i61
    i8 39, label %._crit_edge.i.i65
    i8 92, label %._crit_edge.i.i69
end_hunk_1
