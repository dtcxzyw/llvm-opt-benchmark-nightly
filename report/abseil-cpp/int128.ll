Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/int128?download=true
inline.NumInlined: 271
inline.NumDeleted: 123
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::insert\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN4absl12lts_202605267uint128C1Ef = dso_local unnamed_addr alias void (ptr, float), ptr @_ZN4absl12lts_202605267uint128C2Ef
@_ZN4absl12lts_202605267uint128C1Ed = dso_local unnamed_addr alias void (ptr, double), ptr @_ZN4absl12lts_202605267uint128C2Ed
@_ZN4absl12lts_202605267uint128C1Ee = dso_local unnamed_addr alias void (ptr, x86_fp80), ptr @_ZN4absl12lts_202605267uint128C2Ee

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_ZN4absl12lts_202605267uint128C2Ef(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef 64) #11
  %i.b = fcmp ult float %1, %i.a
  br i1 %i.b, label %_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIfEENS0_7uint128ET_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef float @ldexpf(float noundef %1, i32 noundef -64) #11
  %i.d = fptoui float %i.c to i64                 ; 2 uses
  %i.e = uitofp i64 %i.d to float
  %i.f = tail call noundef float @ldexpf(float noundef %i.e, i32 noundef 64) #11
  %i.g = fsub float %1, %i.f
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIfEENS0_7uint128ET_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIfEENS0_7uint128ET_.exit: ; preds = %bb.a, %bb.b
  %.pn11.in.i = phi float [ %i.g, %bb.b ], [ %1, %bb.a ]
  %.pn9.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.pn11.i = fptoui float %.pn11.in.i to i64
  store i64 %.pn11.i, ptr %0, align 16, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pn9.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_ZN4absl12lts_202605267uint128C2Ed(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, double noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef 64) #11
  %i.b = fcmp ult double %1, %i.a
  br i1 %i.b, label %_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIdEENS0_7uint128ET_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @ldexp(double noundef %1, i32 noundef -64) #11
  %i.d = fptoui double %i.c to i64                ; 2 uses
  %i.e = uitofp i64 %i.d to double
  %i.f = tail call double @ldexp(double noundef %i.e, i32 noundef 64) #11
  %i.g = fsub double %1, %i.f
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIdEENS0_7uint128ET_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIdEENS0_7uint128ET_.exit: ; preds = %bb.a, %bb.b
  %.pn11.in.i = phi double [ %i.g, %bb.b ], [ %1, %bb.a ]
  %.pn9.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.pn11.i = fptoui double %.pn11.in.i to i64
  store i64 %.pn11.i, ptr %0, align 16, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pn9.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_ZN4absl12lts_202605267uint128C2Ee(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(16) initializes((0, 16)) %0, x86_fp80 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef 64) #11
  %i.b = fcmp ult x86_fp80 %1, %i.a
  br i1 %i.b, label %_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIeEENS0_7uint128ET_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef %1, i32 noundef -64) #11
  %i.d = fptoui x86_fp80 %i.c to i64              ; 2 uses
  %i.e = uitofp i64 %i.d to x86_fp80
  %i.f = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.e, i32 noundef 64) #11
  %i.g = fsub x86_fp80 %1, %i.f
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIeEENS0_7uint128ET_.exit

_ZN4absl12lts_2026052612_GLOBAL__N_120MakeUint128FromFloatIeEENS0_7uint128ET_.exit: ; preds = %bb.a, %bb.b
  %.pn11.in.i = phi x86_fp80 [ %i.g, %bb.b ], [ %1, %bb.a ]
  %.pn9.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %.pn11.i = fptoui x86_fp80 %.pn11.in.i to i64
  store i64 %.pn11.i, ptr %0, align 16, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pn9.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4absl12lts_202605267uint1288ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 16, !tbaa !10
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !10
  tail call fastcc void @_ZN4absl12lts_2026052612_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias writable align 8 %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052612_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias writable align 8 %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 33 uses
  %i.a = and i32 %3, 74
  switch i32 %i.a, label %bb.c [
    i32 8, label %bb.d
    i32 64, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0103.0 = phi i64 [ -8446744073709551616, %bb.c ], [ -9223372036854775808, %bb.b ], [ 1152921504606846976, %bb.a ] ; 3 uses
  %.0 = phi i64 [ 19, %bb.c ], [ 21, %bb.b ], [ 15, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.b = load ptr, ptr %4, align 8, !tbaa !12
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  %i.f = and i32 %3, 16970
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !22
  %i.i = and i32 %i.h, -16971
  %i.j = or disjoint i32 %i.i, %i.f
  store i32 %i.j, ptr %i.g, align 8, !tbaa !56
  %i.k = zext i64 %2 to i128
  %i.l = shl nuw i128 %i.k, 64
  %i.m = zext i64 %1 to i128
  %i.n = or disjoint i128 %i.l, %i.m              ; 2 uses
  %i.o = zext i64 %.sroa.0103.0 to i128           ; 6 uses
  %i.p = icmp ult i128 %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i128 %i.n, %i.o
  br i1 %i.q, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i

_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i: ; preds = %bb.e
  %.not.i27.not.i = icmp eq i64 %2, 0             ; 2 uses
  %spec.select.i = select i1 %.not.i27.not.i, i64 %1, i64 %2
  %spec.select87.i = select i1 %.not.i27.not.i, i32 63, i32 127
  %i.r = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i, i1 true)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = xor i32 %spec.select87.i, %i.s
  %i.u = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0103.0, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = xor i32 %i.v, 63
  %i.x = sub nsw i32 %i.t, %i.w                   ; 3 uses
  %.not67.i = icmp slt i32 %i.x, 0
  br i1 %.not67.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i
  %i.y = zext nneg i32 %i.x to i128
  %i.z = shl i128 %i.o, %i.y                      ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  %i.ac = trunc i128 %i.z to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.074.i = phi i32 [ %i.ba, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.857.073.i = phi i64 [ %.sroa.857.1.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.055.072.i = phi i64 [ %.sroa.055.1.i, %.lr.ph.i ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.8.071.i = phi i64 [ %i.ak, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.042.070.i = phi i64 [ %.sroa.042.1.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.sroa.046.069.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %i.ac, %.lr.ph.preheader.i ]
  %.sroa.10.068.i = phi i64 [ %i.az, %.lr.ph.i ], [ %i.ab, %.lr.ph.preheader.i ] ; 3 uses
  %i.ad = zext i64 %.sroa.8.071.i to i128
  %i.ae = zext i64 %.sroa.042.070.i to i128
  %i.af = shl i128 %i.ad, 65
  %i.ag = shl nuw nsw i128 %i.ae, 1               ; 2 uses
  %i.ah = or disjoint i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ag to i64
  %i.aj = lshr i128 %i.ah, 64
  %i.ak = trunc nuw i128 %i.aj to i64             ; 2 uses
  %i.al = zext i64 %.sroa.857.073.i to i128
  %i.am = shl nuw i128 %i.al, 64
  %i.an = zext i64 %.sroa.055.072.i to i128
  %i.ao = or disjoint i128 %i.am, %i.an           ; 2 uses
  %i.ap = zext i64 %.sroa.10.068.i to i128
  %i.aq = shl nuw i128 %i.ap, 64
  %i.ar = zext i64 %.sroa.046.069.i to i128       ; 2 uses
  %i.as = or disjoint i128 %i.aq, %i.ar           ; 2 uses
  %.not66.i = icmp uge i128 %i.ao, %i.as          ; 3 uses
  %i.at = sub i128 %i.ao, %i.ar                   ; 2 uses
  %i.au = trunc i128 %i.at to i64
  %i.av = lshr i128 %i.at, 64
  %.tr.i.i.i = trunc nuw i128 %i.av to i64
  %.narrow.i.i.i = sub i64 %.tr.i.i.i, %.sroa.10.068.i
  %i.aw = zext i1 %.not66.i to i64
  %.sroa.042.1.i = or disjoint i64 %i.aw, %i.ai   ; 2 uses
  %.sroa.055.1.i = select i1 %.not66.i, i64 %i.au, i64 %.sroa.055.072.i ; 2 uses
  %.sroa.857.1.i = select i1 %.not66.i, i64 %.narrow.i.i.i, i64 %.sroa.857.073.i
  %i.ax = lshr i128 %i.as, 1
  %i.ay = trunc i128 %i.ax to i64
  %i.az = lshr i64 %.sroa.10.068.i, 1
  %i.ba = add nuw nsw i32 %.074.i, 1
  %exitcond.not.i = icmp eq i32 %.074.i, %i.x
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, label %.lr.ph.i, !llvm.loop !50

_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit: ; preds = %.lr.ph.i, %bb.d, %bb.e, %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i
  %.sroa.098.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i ], [ %.sroa.042.1.i, %.lr.ph.i ] ; 5 uses
  %.sroa.13.0 = phi i64 [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i ], [ %i.ak, %.lr.ph.i ] ; 4 uses
  %.sroa.097.0 = phi i64 [ 0, %bb.e ], [ %1, %bb.d ], [ %1, %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i ], [ %.sroa.055.1.i, %.lr.ph.i ]
  %i.bb = zext i64 %.sroa.13.0 to i128
  %i.bc = shl nuw i128 %i.bb, 64
  %i.bd = zext i64 %.sroa.098.0 to i128
  %i.be = or disjoint i128 %i.bc, %i.bd           ; 2 uses
  %i.bf = icmp ult i128 %i.be, %i.o
  br i1 %i.bf, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit
  %i.bg = icmp eq i128 %i.be, %i.o
  br i1 %i.bg, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread110, label %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i41

_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i41: ; preds = %bb.f
  %.not.i27.not.i42 = icmp eq i64 %.sroa.13.0, 0  ; 2 uses
  %spec.select.i43 = select i1 %.not.i27.not.i42, i64 %.sroa.098.0, i64 %.sroa.13.0
  %spec.select87.i44 = select i1 %.not.i27.not.i42, i32 63, i32 127
  %i.bh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i43, i1 true)
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = xor i32 %spec.select87.i44, %i.bi
  %i.bk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0103.0, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = xor i32 %i.bl, 63
  %i.bn = sub nsw i32 %i.bj, %i.bm                ; 3 uses
  %.not67.i48 = icmp slt i32 %i.bn, 0
  br i1 %.not67.i48, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread, label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i41
  %i.bo = zext nneg i32 %i.bn to i128
  %i.bp = shl i128 %i.o, %i.bo                    ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = trunc nuw i128 %i.bq to i64
  %i.bs = trunc i128 %i.bp to i64
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i49
  %.074.i51 = phi i32 [ %i.cj, %.lr.ph.i50 ], [ 0, %.lr.ph.preheader.i49 ] ; 2 uses
  %.sroa.857.073.i52 = phi i64 [ %.sroa.857.1.i63, %.lr.ph.i50 ], [ %.sroa.13.0, %.lr.ph.preheader.i49 ] ; 2 uses
  %.sroa.055.072.i53 = phi i64 [ %.sroa.055.1.i62, %.lr.ph.i50 ], [ %.sroa.098.0, %.lr.ph.preheader.i49 ] ; 2 uses
  %.sroa.042.070.i55 = phi i64 [ %.sroa.042.1.i61, %.lr.ph.i50 ], [ 0, %.lr.ph.preheader.i49 ]
  %.sroa.046.069.i56 = phi i64 [ %i.ch, %.lr.ph.i50 ], [ %i.bs, %.lr.ph.preheader.i49 ]
  %.sroa.10.068.i57 = phi i64 [ %i.ci, %.lr.ph.i50 ], [ %i.br, %.lr.ph.preheader.i49 ] ; 3 uses
  %i.bt = shl i64 %.sroa.042.070.i55, 1
  %i.bu = zext i64 %.sroa.857.073.i52 to i128
  %i.bv = shl nuw i128 %i.bu, 64
  %i.bw = zext i64 %.sroa.055.072.i53 to i128
  %i.bx = or disjoint i128 %i.bv, %i.bw           ; 2 uses
  %i.by = zext i64 %.sroa.10.068.i57 to i128
  %i.bz = shl nuw i128 %i.by, 64
  %i.ca = zext i64 %.sroa.046.069.i56 to i128     ; 2 uses
  %i.cb = or disjoint i128 %i.bz, %i.ca           ; 2 uses
  %.not66.i58 = icmp uge i128 %i.bx, %i.cb        ; 3 uses
  %i.cc = sub i128 %i.bx, %i.ca                   ; 2 uses
  %i.cd = trunc i128 %i.cc to i64
  %i.ce = lshr i128 %i.cc, 64
  %.tr.i.i.i59 = trunc nuw i128 %i.ce to i64
  %.narrow.i.i.i60 = sub i64 %.tr.i.i.i59, %.sroa.10.068.i57
  %i.cf = zext i1 %.not66.i58 to i64
  %.sroa.042.1.i61 = or disjoint i64 %i.bt, %i.cf ; 3 uses
  %.sroa.055.1.i62 = select i1 %.not66.i58, i64 %i.cd, i64 %.sroa.055.072.i53 ; 3 uses
  %.sroa.857.1.i63 = select i1 %.not66.i58, i64 %.narrow.i.i.i60, i64 %.sroa.857.073.i52
  %i.cg = lshr i128 %i.cb, 1
  %i.ch = trunc i128 %i.cg to i64
  %i.ci = lshr i64 %.sroa.10.068.i57, 1
  %i.cj = add nuw nsw i32 %.074.i51, 1
  %exitcond.not.i64 = icmp eq i32 %.074.i51, %i.bn
  br i1 %exitcond.not.i64, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74, label %.lr.ph.i50, !llvm.loop !50

_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74: ; preds = %.lr.ph.i50
  %.not = icmp eq i64 %.sroa.042.1.i61, 0
  br i1 %.not, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread, label %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread110

_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread110: ; preds = %bb.f, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74
  %.sroa.0.0115 = phi i64 [ %.sroa.055.1.i62, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74 ], [ 0, %bb.f ]
  %.sroa.098.1114 = phi i64 [ %.sroa.042.1.i61, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74 ], [ 1, %bb.f ]
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %.sroa.098.1114)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread110
  %i.cl = load ptr, ptr %4, align 8, !tbaa !12    ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24    ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr inbounds i8, ptr %4, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !56
  %i.cr = and i32 %i.cq, -513
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !56
  %i.cs = load i64, ptr %i.cm, align 8
  %i.ct = getelementptr inbounds i8, ptr %4, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 225 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !30, !range !31, !noundef !32
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !39
  %.not.i1.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i1.i.i.i.i, label %bb.i, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cy)
          to label %.noexc75 unwind label %bb.k

.noexc75:                                         ; preds = %bb.i
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef signext i8 %i.dd(ptr noundef nonnull align 8 dereferenceable(570) %i.cy, i8 noundef signext 32)
          to label %.noexc75._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge unwind label %bb.k, !inline_history !51 ; 0 uses

.noexc75._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge: ; preds = %.noexc75
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !12
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc75._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc75._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge ], [ %i.cl, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i ]
  store i8 1, ptr %i.cu, align 1, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.df = phi ptr [ %i.cl, %bb.g ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 224
  store i8 48, ptr %i.dg, align 8, !tbaa !40
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %4, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %.0, ptr %i.dk, align 8, !tbaa !41
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %.sroa.0.0115)
          to label %_ZNSolsEm.exit78 unwind label %bb.k ; 0 uses

_ZNSolsEm.exit78:                                 ; preds = %bb.j
  %i.dm = load ptr, ptr %4, align 8, !tbaa !12
  br label %.sink.split

bb.k:                                             ; preds = %.invoke, %bb.q, %.noexc88, %bb.o, %bb.l, %bb.j, %.noexc75, %bb.i, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread110
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i41, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74
  %.sroa.0.0109 = phi i64 [ %.sroa.055.1.i62, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74 ], [ %.sroa.098.0, %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit ], [ %.sroa.098.0, %_ZN4absl12lts_2026052612_GLOBAL__N_16Fls128ENS0_7uint128E.exit30.i41 ] ; 2 uses
  %.not36 = icmp eq i64 %.sroa.0.0109, 0
  br i1 %.not36, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_110DivModImplENS0_7uint128ES2_PS2_S3_.exit74.thread
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %.sroa.0.0109)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.dp = load ptr, ptr %4, align 8, !tbaa !12    ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24    ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %4, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !56
  %i.dv = and i32 %i.du, -513
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !56
  %i.dw = load i64, ptr %i.dq, align 8
  %i.dx = getelementptr inbounds i8, ptr %4, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 225 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !30, !range !31, !noundef !32
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 240
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !33 ; 5 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i83, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i84

.invoke:                                          ; preds = %bb.h, %bb.n
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i84: ; preds = %bb.n
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !39
  %.not.i1.i.i.i.i85 = icmp eq i8 %i.ee, 0
  br i1 %.not.i1.i.i.i.i85, label %bb.o, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i86

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i84
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ec)
          to label %.noexc88 unwind label %bb.k

.noexc88:                                         ; preds = %bb.o
end_hunk_0
