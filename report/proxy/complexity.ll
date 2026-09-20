Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/complexity?download=true
inline.NumInlined: 529
inline.NumDeleted: 266
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

$_ZN9benchmark17BenchmarkReporter3RunC2EOS1_ = comdat any

$_ZN9benchmark13BenchmarkNameC2EOS0_ = comdat any

$_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

@.str.1 = private unnamed_addr constant [4 x i8] c"N^2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N^3\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lgN\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"(1)\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Did you forget to call SetComplexityN?\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BigO\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden global i64 0, comdat, align 8
@constinit = private unnamed_addr constant [5 x i32] [i32 5, i32 2, i32 6, i32 3, i32 4], align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_complexity.cc, ptr null }]
@switch.table._ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE = private unnamed_addr constant [4 x double] [double 1.000000e+09, double 1.000000e+06, double 1.000000e+03, double 1.000000e+00], align 8
@switch.table._ZN9benchmark12_GLOBAL__N_114MinimalLeastSqERKSt6vectorIlSaIlEERKS1_IdSaIdEENS_4BigOE = private unnamed_addr constant [5 x ptr] [ptr @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_08__invokeEl", ptr @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_18__invokeEl", ptr @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_28__invokeEl", ptr @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_38__invokeEl", ptr @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_48__invokeEl"], align 8

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  switch i32 %1, label %._crit_edge.i.i24 [
    i32 2, label %._crit_edge.i.i
    i32 3, label %._crit_edge.i.i4
    i32 4, label %._crit_edge.i.i8
    i32 5, label %._crit_edge.i.i12
    i32 6, label %._crit_edge.i.i16
    i32 1, label %._crit_edge.i.i20
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  store i8 78, ptr %i.a, align 8, !tbaa !16
  br label %bb.b

._crit_edge.i.i4:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  br label %bb.b

._crit_edge.i.i8:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  br label %bb.b

._crit_edge.i.i12:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  br label %bb.b

._crit_edge.i.i16:                                ; preds = %bb.a
  store i32 1315400782, ptr %i.a, align 8
  br label %bb.b

._crit_edge.i.i20:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  br label %bb.b

._crit_edge.i.i24:                                ; preds = %bb.a
  store i32 692988006, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i24, %._crit_edge.i.i20, %._crit_edge.i.i16, %._crit_edge.i.i12, %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  %.sink = phi i64 [ 4, %._crit_edge.i.i24 ], [ 3, %._crit_edge.i.i20 ], [ 4, %._crit_edge.i.i16 ], [ 3, %._crit_edge.i.i12 ], [ 3, %._crit_edge.i.i8 ], [ 3, %._crit_edge.i.i4 ], [ 1, %._crit_edge.i.i ]
  %.sink34 = phi i64 [ 20, %._crit_edge.i.i24 ], [ 19, %._crit_edge.i.i20 ], [ 20, %._crit_edge.i.i16 ], [ 19, %._crit_edge.i.i12 ], [ 19, %._crit_edge.i.i8 ], [ 19, %._crit_edge.i.i4 ], [ 17, %._crit_edge.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.b, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink34
  store i8 0, ptr %i.c, align 1, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 20 uses
  %3 = alloca %"class.std::vector.8", align 8     ; 19 uses
  %4 = alloca %"class.std::vector.8", align 8     ; 14 uses
  %5 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %6 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %7 = alloca %"struct.benchmark::LeastSq", align 8 ; 6 uses
  %8 = alloca %"struct.benchmark::BenchmarkName", align 8 ; 16 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  %10 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 592
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not223 = icmp eq ptr %i.c, %i.b
  br i1 %.not223, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.bz, ptr %i.k, align 8
  store ptr %i.bx, ptr %i.l, align 8
  store ptr %i.cs, ptr %i.m, align 8
  store ptr %i.cq, ptr %i.n, align 8
  %.pre378.a = load ptr, ptr %1, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %i.cq, %._crit_edge ], [ null, %bb.b ] ; 9 uses
  %i.p = phi ptr [ %i.bd, %._crit_edge ], [ null, %bb.b ] ; 3 uses
  %i.q = phi ptr [ %.pre378.a, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.cr, %._crit_edge ], [ null, %bb.b ] ; 14 uses
  %i.s = phi ptr [ %i.by, %._crit_edge ], [ null, %bb.b ] ; 11 uses
  %i.t = phi ptr [ %i.bc, %._crit_edge ], [ null, %bb.b ] ; 8 uses
  store ptr %i.t, ptr %2, align 8
  store ptr %i.s, ptr %3, align 8
  store ptr %i.r, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 460
  %i.v = load i32, ptr %i.u, align 4, !tbaa !81   ; 3 uses
  %i.w = icmp eq i32 %i.v, 8
  br i1 %i.w, label %bb.w, label %bb.x

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.cq, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 15 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.cs, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 9 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bx, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %.sroa.0164.0224 = phi ptr [ %i.c, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.by, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 13 uses
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.cr, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 17 uses
  %i.ag = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !44

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !47
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #20
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !47 ; 2 uses
  %.not.i55 = icmp eq ptr %i.aj, null
  br i1 %.not.i55, label %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.7, i64 noundef 38)
          to label %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit unwind label %.loopexit174 ; 0 uses

_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 472 ; 2 uses
  %.not.i56 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
  %i.am = load i64, ptr %i.al, align 8, !tbaa !48
  store i64 %i.am, ptr %i.ac, align 8, !tbaa !48
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.i:                                             ; preds = %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
  %i.an = ptrtoint ptr %i.ab to i64
  %i.ao = ptrtoint ptr %i.ad to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.i, align 8
  store ptr %i.ab, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.ad, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc57 unwind label %.loopexit.split-lp175

.noexc57:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %11 = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.as = icmp ult i64 %11, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %11, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #22
          to label %.noexc58 unwind label %.loopexit174 ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ap ; 2 uses
  %i.ay = load i64, ptr %i.al, align 8, !tbaa !48
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !48
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.ad, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc58
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.h
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ab, %bb.h ] ; 6 uses
  %.pn = phi ptr [ %i.ax, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ac, %bb.h ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ad, %bb.h ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 432
  %i.bf = load double, ptr %i.be, align 8, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 392 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !49
  %i.bi = sitofp i64 %i.bh to double              ; 2 uses
  %i.bj = fdiv double %i.bf, %i.bi                ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  store double %i.bj, ptr %i.aa, align 8, !tbaa !50
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.bk = ptrtoint ptr %i.z to i64
  %i.bl = ptrtoint ptr %i.ae to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.o, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc59 unwind label %.loopexit.split-lp180

.noexc59:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %12 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.bp = icmp ult i64 %12, %i.bo
  %i.bq = tail call i64 @llvm.umin.i64(i64 %12, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #22
          to label %.noexc60 unwind label %.loopexit179 ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bm ; 2 uses
  store double %i.bj, ptr %i.bu, align 8, !tbaa !50
  %i.bv = icmp sgt i64 %i.bm, 0
  br i1 %i.bv, label %bb.p, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %.noexc60
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.ae, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %.noexc60
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.bm) #23
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  %.pre = load i64, ptr %i.bg, align 8, !tbaa !49
  %.pre384 = sitofp i64 %.pre to double
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.m
  %.pre-phi = phi double [ %.pre384, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.bi, %bb.m ]
  %i.bx = phi ptr [ %i.bw, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.m ] ; 4 uses
  %.pn275 = phi ptr [ %i.bu, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.aa, %bb.m ]
  %i.by = phi ptr [ %i.bt, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.ae, %bb.m ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn275, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 440
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !83
  %i.cc = fdiv double %i.cb, %.pre-phi            ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double %i.cc, ptr %i.y, align 8, !tbaa !50
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.cd = ptrtoint ptr %i.x to i64
  %i.ce = ptrtoint ptr %i.af to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.t, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62

bb.t:                                             ; preds = %bb.s
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.bz, ptr %i.k, align 8
  store ptr %i.bx, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.by, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %.noexc68.a unwind label %.loopexit.split-lp185

.noexc68.a:                                       ; preds = %bb.t
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.s
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %13 = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.ch ; 2 uses
  %i.ci = icmp ult i64 %13, %i.ch
  %i.cj = tail call i64 @llvm.umin.i64(i64 %13, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #22
          to label %.noexc69 unwind label %.loopexit184 ; 4 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.cf ; 2 uses
  store double %i.cc, ptr %i.cn, align 8, !tbaa !50
  %i.co = icmp sgt i64 %i.cf, 0
  br i1 %i.co, label %bb.u, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

bb.u:                                             ; preds = %.noexc69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %i.af, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65: ; preds = %bb.u, %.noexc69
  %.not.i17.i.i.i66 = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i66, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.cf) #23
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67: ; preds = %bb.v, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

_ZNSt6vectorIdSaIdEE9push_backEOd.exit70:         ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, %bb.r
  %i.cq = phi ptr [ %i.cp, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.x, %bb.r ] ; 3 uses
  %.pn276 = phi ptr [ %i.cn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.y, %bb.r ]
  %i.cr = phi ptr [ %i.cm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.af, %bb.r ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.pn276, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 592 ; 2 uses
  %.not = icmp eq ptr %i.ct, %i.b
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit174:                                     ; preds = %bb.g, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.i, align 8
  store ptr %i.ab, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.ad, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  br label %bb.bd

.loopexit.split-lp175:                            ; preds = %bb.j
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit179:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.z, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.ae, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  br label %bb.bd

.loopexit.split-lp180:                            ; preds = %bb.o
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit184:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.bz, ptr %i.k, align 8
  store ptr %i.bx, ptr %i.l, align 8
  store ptr %i.y, ptr %i.m, align 8
  store ptr %i.x, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.by, ptr %3, align 8
  store ptr %i.af, ptr %4, align 8
  br label %bb.bd

.loopexit.split-lp185:                            ; preds = %bb.t
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.w:                                             ; preds = %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 464
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !84 ; 3 uses
  %.not.i71 = icmp eq ptr %i.p, %i.t              ; 2 uses
  br i1 %.not.i71, label %.loopexit173, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.w
  %i.cw = ptrtoint ptr %i.p to i64
  %i.cx = ptrtoint ptr %i.t to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3                 ; 3 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc72.a
  %i.da = extractelement <2 x double> %i.dn, i64 0
  %i.db = extractelement <2 x double> %i.dn, i64 1
  %i.dc = fdiv double %i.db, %i.da                ; 2 uses
  br label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc72.a
  %.03240.i = phi double [ %i.dj, %.noexc72.a ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03638.i = phi i64 [ %i.do, %.noexc72.a ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.dd = phi <2 x double> [ %i.dn, %.noexc72.a ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03638.i
  %i.df = load i64, ptr %i.de, align 8, !tbaa !48, !noalias !85
  %i.dg = invoke noundef double %i.cv(i64 noundef %i.df)
          to label %.noexc72.a unwind label %.loopexit.split-lp169, !inline_history !0

.noexc72.a:                                       ; preds = %.lr.ph.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03638.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !50, !noalias !85 ; 2 uses
  %i.dj = fadd double %.03240.i, %i.di            ; 2 uses
  %i.dk = insertelement <2 x double> poison, double %i.dg, i64 0 ; 2 uses
  %i.dl = insertelement <2 x double> %i.dk, double %i.di, i64 1
  %i.dm = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dm, <2 x double> %i.dd) ; 3 uses
  %i.do = add nuw i64 %.03638.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.do, %i.cz
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %.noexc73
  %.03345.i = phi i64 [ %i.dy, %.noexc73 ], [ 0, %._crit_edge.i ] ; 3 uses
  %.03444.i = phi double [ %i.dx, %.noexc73 ], [ 0.000000e+00, %._crit_edge.i ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03345.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !48, !noalias !85
  %i.dr = invoke noundef double %i.cv(i64 noundef %i.dq)
          to label %.noexc73 unwind label %.thread, !inline_history !0

.noexc73:                                         ; preds = %.lr.ph47.i
  %i.ds = fmul double %i.dc, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.03345.i
  %i.du = load double, ptr %i.dt, align 8, !tbaa !50, !noalias !85
  %i.dv = fsub double %i.du, %i.ds
  %i.dw = tail call noundef double @pow(double noundef %i.dv, double noundef 2.000000e+00) #20, !noalias !85
  %i.dx = fadd double %.03444.i, %i.dw            ; 2 uses
  %i.dy = add nuw i64 %.03345.i, 1                ; 2 uses
  %exitcond374.not.a = icmp eq i64 %i.dy, %i.cz
  br i1 %exitcond374.not.a, label %.loopexit173.loopexit, label %.lr.ph47.i, !llvm.loop !2

.loopexit173.loopexit:                            ; preds = %.noexc73
  %.pre379.a = load ptr, ptr %1, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre379.a, i64 464
  %.pre380.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !84
  %i.dz = uitofp i64 %i.cz to double
  %i.ea = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.dx, i64 1
  br label %.loopexit173

.loopexit173:                                     ; preds = %bb.w, %.loopexit173.loopexit
  %i.ec = phi ptr [ %.pre380.a, %.loopexit173.loopexit ], [ %i.cv, %bb.w ] ; 2 uses
  %.sroa.0145.0 = phi double [ %i.dc, %.loopexit173.loopexit ], [ +qnan, %bb.w ]
  %.lcssa.i = phi double [ %i.dz, %.loopexit173.loopexit ], [ 0.000000e+00, %bb.w ]
  %i.ed = phi <2 x double> [ %i.eb, %.loopexit173.loopexit ], [ zeroinitializer, %bb.w ]
  %i.ee = insertelement <2 x double> poison, double %.lcssa.i, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fdiv <2 x double> %i.ed, %i.ef          ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 1
  %i.ei = tail call double @sqrt(double noundef %i.eh) #20, !noalias !85
  %i.ej = extractelement <2 x double> %i.eg, i64 0
  %i.ek = fdiv double %i.ei, %i.ej
  br i1 %.not.i71, label %.loopexit167, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %.loopexit173
  %i.el = ptrtoint ptr %i.p to i64
  %i.em = ptrtoint ptr %i.t to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3                 ; 3 uses
  br label %.lr.ph.i75

._crit_edge.i80:                                  ; preds = %.noexc92.a
  %i.ep = extractelement <2 x double> %i.fc, i64 0
  %i.eq = extractelement <2 x double> %i.fc, i64 1
  %i.er = fdiv double %i.eq, %i.ep                ; 2 uses
  br label %.lr.ph47.i81

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader, %.noexc92.a
  %.03240.i77 = phi double [ %i.ey, %.noexc92.a ], [ 0.000000e+00, %.lr.ph.i75.preheader ]
  %.03638.i79 = phi i64 [ %i.fd, %.noexc92.a ], [ 0, %.lr.ph.i75.preheader ] ; 3 uses
  %i.es = phi <2 x double> [ %i.fc, %.noexc92.a ], [ zeroinitializer, %.lr.ph.i75.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.03638.i79
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !48, !noalias !86
  %i.ev = invoke noundef double %i.ec(i64 noundef %i.eu)
          to label %.noexc92.a unwind label %.loopexit.split-lp, !inline_history !0

.noexc92.a:                                       ; preds = %.lr.ph.i75
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03638.i79
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !50, !noalias !86 ; 2 uses
  %i.ey = fadd double %.03240.i77, %i.ex          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt20__throw_length_errorPKc

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_08__invokeEl"(i64 noundef %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  ret double %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_18__invokeEl"(i64 noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 2.000000e+00) #20
  ret double %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_28__invokeEl"(i64 noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = tail call noundef double @pow(double noundef %i.a, double noundef 3.000000e+00) #20
  ret double %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_38__invokeEl"(i64 noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double
  %i.b = tail call noundef double @log2(double noundef %i.a) #20
  ret double %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef double @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_48__invokeEl"(i64 noundef %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = sitofp i64 %0 to double                  ; 2 uses
  %i.b = tail call double @log2(double noundef %i.a) #20
  %i.c = fmul double %i.b, %i.a
  ret double %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @"_ZZN9benchmark12_GLOBAL__N_112FittingCurveENS_4BigOEEN3$_58__invokeEl"(i64 %0) unnamed_addr #14 align 2 {
bb.a:
  ret double 1.000000e+00
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN9benchmark18GetDefaultTimeUnitEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit
  %.05 = phi ptr [ %i.x, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit ], [ %0, %bb.a ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 496
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 512
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.05, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 376 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 336 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !16
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 296 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !16
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit

_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(592) %.05) #20
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 592 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(592) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #21
  unreachable

_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 592                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 15580020332524959)
  %i.k = select i1 %i.i, i64 15580020332524959, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 592                ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #22 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  invoke void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(592) %i.p, ptr noundef nonnull align 8 dereferenceable(592) %2)
          to label %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.q = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 592
  %i.s = tail call noundef ptr @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.r, ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #23
  br label %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !23
  store ptr %i.s, ptr %i.a, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw [592 x i8], ptr %i.o, i64 %i.k
  store ptr %i.x, ptr %i.t, align 8, !tbaa !59
  ret void

bb.d:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #23
  invoke void @__cxa_rethrow() #21
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(592) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN9benchmark13BenchmarkNameC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.k, ptr %i.c, align 8, !tbaa !48
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !54
  %i.n = load i64, ptr %i.c, align 8, !tbaa !48
  store i64 %i.n, ptr %i.h, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.o = phi ptr [ %i.m, %.noexc ], [ %i.h, %bb.a ] ; 2 uses
  switch i64 %i.k, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !16
  store i8 %i.p, ptr %i.o, align 1, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %i.q, ptr %i.r, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.w = load i32, ptr %i.v, align 8, !tbaa !57
  store i32 %i.w, ptr %i.u, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !15
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !54  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !48
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i19, label %._crit_edge.i.i18

.noexc.i19:                                       ; preds = %bb.d
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc20 unwind label %bb.o   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i19
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !54
  %i.af = load i64, ptr %i.b, align 8, !tbaa !48
  store i64 %i.af, ptr %i.z, align 8, !tbaa !16
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc20, %bb.d
  %i.ag = phi ptr [ %i.ae, %.noexc20 ], [ %i.z, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i18
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !16
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i18
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !67
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !15
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.au, ptr %i.a, align 8, !tbaa !48
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i23, label %._crit_edge.i.i22

.noexc.i23:                                       ; preds = %bb.g
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.p   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !54
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !16
  br label %._crit_edge.i.i22

._crit_edge.i.i22:                                ; preds = %.noexc24, %bb.g
  %i.ay = phi ptr [ %i.aw, %.noexc24 ], [ %i.ar, %bb.g ] ; 2 uses
  switch i64 %i.au, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i22
  %i.az = load i8, ptr %i.as, align 1, !tbaa !16
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !16
end_hunk_1
