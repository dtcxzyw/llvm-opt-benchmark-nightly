Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/distribution_test_util?download=true
inline.NumInlined: 84
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20260526::random_internal::DistributionMoments" = type { i64, double, double, double, double }
%"class.absl::lts_20260526::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20260526::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20260526::str_format_internal::FormatArgImpl::Data" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20260526::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }

@.str = private unnamed_addr constant [45 x i8] c"mean=%f, stddev=%f, skewness=%f, kurtosis=%f\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" actual=\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" expected=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" err=\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"third_party/abseil-cpp/absl/random/internal/distribution_test_util.cc\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 16, i1 false)
  %.idx = shl i64 %2, 3                           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not29 = icmp eq i64 %2, 0
  br i1 %.not29, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %.idx, -8                        ; 4 uses
  %i.c = lshr exact i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 1
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.e = phi double [ %i.g, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.030.prol = phi ptr [ %i.h, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = load double, ptr %.030.prol, align 8, !tbaa !22
  %i.g = fadd double %i.f, %i.e                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.030.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !21

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa58.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.030.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.i = icmp ult i64 %i.b, 56
  br i1 %i.i, label %.lr.ph36, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double +qnan, ptr %i.j, align 8, !tbaa !12
  br label %._crit_edge37

.lr.ph36:                                         ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa58 = phi double [ %.lcssa58.unr, %.lr.ph.prol.loopexit ], [ %i.az, %.lr.ph ]
  %i.k = add i64 %.idx, -8
  %i.l = lshr exact i64 %i.k, 3                   ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  store i64 %i.m, ptr %0, align 8
  %i.n = uitofp nneg i64 %i.m to double           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = fdiv double %.lcssa58, %i.n              ; 4 uses
  store double %i.p, ptr %i.o, align 8, !tbaa !12
  %i.q = and i64 %i.b, 8
  %lcmp.mod60.not.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod60.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph36
  %i.r = load double, ptr %1, align 8, !tbaa !22
  %i.s = fsub double %i.r, %i.p                   ; 6 uses
  %3 = fmul double %i.s, %i.s                     ; 2 uses
  %i.t = fmul double %i.s, %i.s                   ; 2 uses
  %i.u = fmul double %i.s, %i.t
  %i.v = insertelement <2 x double> poison, double %i.t, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.u, i64 1
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.y, <2 x double> zeroinitializer) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph36
  %.lcssa57.unr = phi double [ poison, %.lr.ph36 ], [ %3, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph36 ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  %.unr62 = phi double [ 0.000000e+00, %.lr.ph36 ], [ %3, %.prol.loopexit.unr-lcssa ]
  %.02334.unr = phi ptr [ %1, %.lr.ph36 ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.unr63 = phi <2 x double> [ zeroinitializer, %.lr.ph36 ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  %i.ab = icmp eq i64 %i.b, 0
  br i1 %i.ab, label %._crit_edge37.loopexit, label %.lr.ph36.new

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.ac = phi double [ %i.az, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.030 = phi ptr [ %i.ba, %.lr.ph ], [ %.030.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ad = load double, ptr %.030, align 8, !tbaa !22
  %i.ae = fadd double %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22
  %i.ah = fadd double %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !22
  %i.ak = fadd double %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %.030, i64 24
  %i.am = load double, ptr %i.al, align 8, !tbaa !22
  %i.an = fadd double %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !22
  %i.aq = fadd double %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.030, i64 40
  %i.as = load double, ptr %i.ar, align 8, !tbaa !22
  %i.at = fadd double %i.as, %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %.030, i64 48
  %i.av = load double, ptr %i.au, align 8, !tbaa !22
  %i.aw = fadd double %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %.030, i64 56
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !22
  %i.az = fadd double %i.ay, %i.aw                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.030, i64 64 ; 2 uses
  %.not.7 = icmp eq ptr %i.ba, %i.a
  br i1 %.not.7, label %.lr.ph36, label %.lr.ph

._crit_edge37.loopexit:                           ; preds = %.lr.ph36.new, %.prol.loopexit
  %.lcssa57 = phi double [ %.lcssa57.unr, %.prol.loopexit ], [ %i.cf, %.lr.ph36.new ]
  %.lcssa = phi <2 x double> [ %.lcssa.unr, %.prol.loopexit ], [ %i.cm, %.lr.ph36.new ]
  %i.bb = uitofp nneg i64 %i.l to double
  %i.bc = fdiv double %.lcssa57, %i.bb
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %.thread
  %i.bd = phi double [ 0.000000e+00, %.thread ], [ %i.n, %._crit_edge37.loopexit ]
  %i.be = phi double [ 0.000000e+00, %.thread ], [ %i.bc, %._crit_edge37.loopexit ] ; 3 uses
  %i.bf = phi <2 x double> [ zeroinitializer, %.thread ], [ %.lcssa, %._crit_edge37.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.be, ptr %i.bg, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv <2 x double> %i.bf, %i.bj
  %i.bl = tail call double @pow(double noundef %i.be, double noundef 1.500000e+00) #13
  %i.bm = tail call double @pow(double noundef %i.be, double noundef 2.000000e+00) #13
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %i.bp = fdiv <2 x double> %i.bk, %i.bo
  store <2 x double> %i.bp, ptr %i.bh, align 8, !tbaa !22
  ret void

.lr.ph36.new:                                     ; preds = %.prol.loopexit, %.lr.ph36.new
  %i.bq = phi double [ %i.cf, %.lr.ph36.new ], [ %.unr62, %.prol.loopexit ]
  %.02334 = phi ptr [ %i.cn, %.lr.ph36.new ], [ %.02334.unr, %.prol.loopexit ] ; 3 uses
  %i.br = phi <2 x double> [ %i.cm, %.lr.ph36.new ], [ %.unr63, %.prol.loopexit ]
  %i.bs = load double, ptr %.02334, align 8, !tbaa !22
  %i.bt = fsub double %i.bs, %i.p                 ; 6 uses
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bq)
  %i.bv = fmul double %i.bt, %i.bt                ; 2 uses
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ca, <2 x double> %i.br)
  %i.cc = getelementptr inbounds nuw i8, ptr %.02334, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !22
  %i.ce = fsub double %i.cd, %i.p                 ; 6 uses
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double %i.bu) ; 2 uses
  %i.cg = fmul double %i.ce, %i.ce                ; 2 uses
  %i.ch = fmul double %i.ce, %i.cg
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1
  %i.ck = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cl, <2 x double> %i.cb) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02334, i64 16 ; 2 uses
  %.not24.1 = icmp eq ptr %i.cn, %i.a
  br i1 %.not24.1, label %._crit_edge37.loopexit, label %.lr.ph36.new
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052615random_internallsERSoRKNS1_19DistributionMomentsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [4 x %"class.absl::lts_20260526::str_format_internal::FormatArgImpl"], align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !13
  %i.d = tail call double @sqrt(double noundef %i.c) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !26
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !26
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8, !tbaa !14, !noalias !26
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.g, align 8, !tbaa !28, !noalias !26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = bitcast double %i.d to i64
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %i.h, align 8, !tbaa !14, !noalias !26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.k, align 8, !tbaa !28, !noalias !26
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i.i.i8.i = load ptr, ptr %i.e, align 8, !noalias !26
  store ptr %.sroa.0.0.copyload.i.i.i8.i, ptr %i.l, align 8, !tbaa !14, !noalias !26
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.m, align 8, !tbaa !28, !noalias !26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i.i9.i = load ptr, ptr %i.f, align 8, !noalias !26
  store ptr %.sroa.0.0.copyload.i.i.i9.i, ptr %i.n, align 8, !tbaa !14, !noalias !26
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.o, align 8, !tbaa !28, !noalias !26
  call void @_ZN4absl12lts_2026052619str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str, i64 44, ptr nonnull %2, i64 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !26
  %i.p = load ptr, ptr %3, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !29
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.t = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret ptr %i.s

bb.b:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local noundef double @_ZN4absl12lts_2026052615random_internal21InverseNormalSurvivalEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
end_hunk_0
