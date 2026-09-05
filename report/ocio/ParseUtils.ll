Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ParseUtils?download=true
inline.NumInlined: 1104
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.131 = private unnamed_addr constant [13 x i8] c"The string '\00", align 1
@.str.132 = private unnamed_addr constant [31 x i8] c"' is not correctly formatted. \00", align 1
@.str.133 = private unnamed_addr constant [31 x i8] c"It is missing a closing quote.\00", align 1
@.str.134 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.136 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.139 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.140 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.141 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ParseUtils.cpp, ptr null }]
@switch.table._ZN16OpenColorIO_v2_520LoggingLevelToStringENS_12LoggingLevelE = private unnamed_addr constant [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 8
@switch.table._ZN16OpenColorIO_v2_516BitDepthToStringENS_8BitDepthE = private unnamed_addr constant [8 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 8
@switch.table._ZN16OpenColorIO_v2_513BitDepthToIntENS_8BitDepthE = private unnamed_addr constant [6 x i8] c"\08\0A\0C\0E\10 ", align 4
@switch.table._ZN16OpenColorIO_v2_519GpuLanguageToStringENS_11GpuLanguageE = private unnamed_addr constant [10 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.45, ptr @.str.46, ptr @.str.48], align 8
@switch.table._ZN16OpenColorIO_v2_520GradingStyleToStringENS_12GradingStyleE = private unnamed_addr constant [3 x ptr] [ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_125GRADING_STYLE_LOGARITHMICE, ptr @.str.35, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_119GRADING_STYLE_VIDEOE], align 8
@switch.table._ZN16OpenColorIO_v2_529ExposureContrastStyleToStringENS_21ExposureContrastStyleE = private unnamed_addr constant [3 x ptr] [ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_115EC_STYLE_LINEARE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_114EC_STYLE_VIDEOE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120EC_STYLE_LOGARITHMICE], align 8
@switch.table._ZN16OpenColorIO_v2_521NegativeStyleToStringENS_13NegativeStyleE = private unnamed_addr constant [4 x ptr] [ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_120NEGATIVE_STYLE_CLAMPE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121NEGATIVE_STYLE_MIRRORE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_124NEGATIVE_STYLE_PASS_THRUE, ptr @_ZN16OpenColorIO_v2_512_GLOBAL__N_121NEGATIVE_STYLE_LINEARE], align 8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_511NumberUtils6LocaleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @freelocale(ptr noundef %i.a) #24
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !16
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.134) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_array_dtor(ptr nofree readnone captures(none) %0) #4 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 200), align 8, !tbaa !20 ; 2 uses
  %i.b = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 216)
  br i1 %i.b, label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 216), align 8, !tbaa !21
  %i.d = add i64 %i.c, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.d) #26
  br label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit

_ZN16OpenColorIO_v2_57ElementD2Ev.exit:           ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 160), align 16, !tbaa !20 ; 2 uses
  %i.f = icmp eq ptr %i.e, getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 176)
  br i1 %i.f, label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 176), align 16, !tbaa !21
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #26
  br label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.1

_ZN16OpenColorIO_v2_57ElementD2Ev.exit.1:         ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 120), align 8, !tbaa !20 ; 2 uses
  %i.j = icmp eq ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 136)
  br i1 %i.j, label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.1
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 136), align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #26
  br label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.2

_ZN16OpenColorIO_v2_57ElementD2Ev.exit.2:         ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 80), align 16, !tbaa !20 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 96)
  br i1 %i.n, label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.2
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 96), align 16, !tbaa !21
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #26
  br label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.3

_ZN16OpenColorIO_v2_57ElementD2Ev.exit.3:         ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 40), align 8, !tbaa !20 ; 2 uses
  %i.r = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 56)
  br i1 %i.r, label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.3
  %i.s = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 56), align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.4

_ZN16OpenColorIO_v2_57ElementD2Ev.exit.4:         ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.u = load ptr, ptr @_ZN16OpenColorIO_v2_5L4eltsE, align 16, !tbaa !20 ; 2 uses
  %i.v = icmp eq ptr %i.u, getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 16)
  br i1 %i.v, label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5: ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.4
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 16), align 16, !tbaa !21
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #26
  br label %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.5

_ZN16OpenColorIO_v2_57ElementD2Ev.exit.5:         ; preds = %_ZN16OpenColorIO_v2_57ElementD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_528ConvertSpecialCharToXmlTokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %.not2429 = icmp samesign eq i64 %i.d, 0
  br i1 %.not2429, label %._crit_edge31, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.thread
  %.sroa.018.030 = phi ptr [ %i.ag, %.thread ], [ %i.e, %.preheader.preheader ] ; 2 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 8), align 8, !tbaa !22 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %.pre = load i8, ptr %.sroa.018.030, align 1, !tbaa !21 ; 3 uses
  br i1 %i.g, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader: ; preds = %.preheader
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 32), align 16, !tbaa !24
  %.not46 = icmp eq i8 %.pre, %i.h
  br i1 %.not46, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit._crit_edge, label %.lr.ph

._crit_edge31:                                    ; preds = %.thread, %bb.a
  ret void

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %indvars.iv48 = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader ]
  %indvars.iv.next = add nuw i64 %indvars.iv48, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, !llvm.loop !70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %.lr.ph
  %2 = getelementptr inbounds nuw [40 x i8], ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 %indvars.iv.next ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !24
  %.not = icmp eq i8 %.pre, %i.n
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit._crit_edge, label %.lr.ph, !llvm.loop !70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader
  %.lcssa44 = phi i64 [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ] ; 2 uses
  %.lcssa = phi ptr [ @_ZN16OpenColorIO_v2_5L4eltsE, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.preheader ], [ %2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ]
  %i.o = load i64, ptr %i.b, align 8, !tbaa !22
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %.lcssa44
  br i1 %i.q, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit._crit_edge
  %i.r = load ptr, ptr %.lcssa, align 8, !tbaa !20
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.r, i64 noundef %.lcssa44)
          to label %.thread unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.t = load i64, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %._crit_edge
  %i.x = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.y = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc17 unwind label %bb.d

.noexc17:                                         ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc17
  %i.ab = phi ptr [ %.pre.i.i, %.noexc17 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  store i8 %.pre, ptr %i.ac, align 1, !tbaa !21
  store i64 %i.u, ptr %i.b, align 8, !tbaa !22
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i8 0, ptr %i.ae, align 1, !tbaa !21
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.018.030, i64 1 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !20
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %.not24 = icmp eq ptr %i.ag, %i.aj
  br i1 %.not24, label %._crit_edge31, label %.preheader, !llvm.loop !71

bb.e:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.af, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ak = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.am = load i64, ptr %i.a, align 8, !tbaa !21
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_528ConvertXmlTokenToSpecialCharERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %.not78 = icmp samesign eq i64 %i.d, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph80.preheader

.lr.ph80.preheader:                               ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  br label %.lr.ph80

._crit_edge:                                      ; preds = %bb.v, %bb.a
  ret void

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %bb.v
  %.sroa.049.079 = phi ptr [ %i.by, %bb.v ], [ %i.e, %.lr.ph80.preheader ] ; 6 uses
  %i.f = load i8, ptr %.sroa.049.079, align 1, !tbaa !21 ; 2 uses
  %cond = icmp eq i8 %i.f, 38
  br i1 %cond, label %.preheader, label %bb.s

.preheader:                                       ; preds = %.lr.ph80
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 8), align 8, !tbaa !22 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread59, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw i64 %i.m, 1          ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 %indvars.iv.next
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread59, label %.lr.ph, !llvm.loop !72

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.m = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %6 = phi i64 [ %i.k, %bb.b ], [ %i.g, %.preheader ] ; 2 uses
  %7 = getelementptr inbounds nuw [40 x i8], ptr @_ZN16OpenColorIO_v2_5L4eltsE, i64 %i.m ; 3 uses
  %i.n = load ptr, ptr %7, align 8, !tbaa !20
  %i.o = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.sroa.049.079, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef %6) #27
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.s = load i8, ptr %i.r, align 8, !tbaa !24
  %i.t = load i64, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  %i.x = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.x)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.z = phi i64 [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.aa = icmp ugt i64 %i.u, %i.z
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.f:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ac = phi ptr [ %.pre.i.i, %.noexc ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.t
  store i8 %i.s, ptr %i.ad, align 1, !tbaa !21
  store i64 %i.u, ptr %i.b, align 8, !tbaa !22
  %i.ae = load ptr, ptr %0, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.u
  store i8 0, ptr %i.af, align 1, !tbaa !21
  %i.ag = getelementptr i8, ptr %.sroa.049.079, i64 %6
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  %.pr = load i64, ptr %i.q, align 8, !tbaa !22
  %i.ai = icmp eq i64 %.pr, 0
  br i1 %i.ai, label %.thread59, label %bb.v

.thread59:                                        ; preds = %bb.f, %.preheader, %bb.b
  %.sroa.049.361 = phi ptr [ %.sroa.049.079, %bb.b ], [ %.sroa.049.079, %.preheader ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %.thread59
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.7, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %.sroa.049.361, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !22
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.h
  %i.ao = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !21
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.at = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !20
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef %i.au)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.x unwind label %bb.o

bb.k:                                             ; preds = %.thread59
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.n:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.n
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !21
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.ay, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.o
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !21
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn2664 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  call void @__cxa_free_exception(ptr %i.at) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.l
  %.pn26.pn = phi { ptr, i32 } [ %.pn2664, %bb.p ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.aw, %bb.l ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.q ], [ %i.av, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.w

bb.s:                                             ; preds = %.lr.ph80
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !22  ; 4 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.a
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43: ; preds = %bb.s
  %i.bp = icmp ult i64 %i.bl, 16
  tail call void @llvm.assume(i1 %i.bp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.s
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43
  %i.br = phi i64 [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43 ]
  %i.bs = icmp ugt i64 %i.bm, %i.br
  br i1 %i.bs, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc44 unwind label %bb.u

.noexc44:                                         ; preds = %bb.t
  %.pre.i.i42 = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41, %.noexc44
  %i.bt = phi ptr [ %.pre.i.i42, %.noexc44 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  store i8 %i.f, ptr %i.bu, align 1, !tbaa !21
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !22
  %i.bv = load ptr, ptr %0, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bm
  store i8 0, ptr %i.bw, align 1, !tbaa !21
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45, %bb.f
  %.sroa.049.4 = phi ptr [ %i.ah, %bb.f ], [ %.sroa.049.079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.049.4, i64 1 ; 2 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !20
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  %.not = icmp eq ptr %i.by, %i.cb
  br i1 %.not, label %._crit_edge, label %.lr.ph80, !llvm.loop !73

bb.w:                                             ; preds = %bb.e, %bb.r, %bb.u
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.u ], [ %.pn26.pn.pn, %bb.r ], [ %i.ab, %bb.e ]
  %i.cc = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.w
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !21
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn
end_hunk_0
