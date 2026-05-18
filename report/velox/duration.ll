inline.NumInlined: 637
inline.NumDeleted: 183
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20240116::(anonymous namespace)::DisplayUnit" = type { %"class.std::basic_string_view", i32, double }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20240116::uint128" = type { i64, i64 }
%"class.absl::lts_20240116::Duration" = type { %"class.absl::lts_20240116::Duration::HiRep", i32 }
%"class.absl::lts_20240116::Duration::HiRep" = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [24 x i8] c"-2562047788015215h30m8s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZN4absl12lts_2024011612_GLOBAL__N_112kDisplayNanoE = internal unnamed_addr constant %"struct.absl::lts_20240116::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 2, ptr @.str.8 }, i32 2, double 1.000000e+02 }, align 8
@_ZN4absl12lts_2024011612_GLOBAL__N_113kDisplayMicroE = internal unnamed_addr constant %"struct.absl::lts_20240116::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 2, ptr @.str.9 }, i32 5, double 1.000000e+05 }, align 8
@_ZN4absl12lts_2024011612_GLOBAL__N_113kDisplayMilliE = internal unnamed_addr constant %"struct.absl::lts_20240116::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 2, ptr @.str.10 }, i32 8, double 1.000000e+08 }, align 8
@_ZN4absl12lts_2024011612_GLOBAL__N_111kDisplaySecE = internal unnamed_addr constant %"struct.absl::lts_20240116::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 1, ptr @.str.13 }, i32 11, double 1.000000e+11 }, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@_ZN4absl12lts_2024011611kuint128maxE = external local_unnamed_addr global %"class.absl::lts_20240116::uint128", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @_ZN4absl12lts_2024011613time_internal12IDivDurationEbNS0_8DurationES2_PS2_(i1 noundef zeroext %0, i64 %1, i32 %2, i64 %3, i32 %4, ptr noundef writeonly captures(none) initializes((0, 12)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, -1                       ; 2 uses
  %i.b = icmp eq i32 %4, -1                       ; 2 uses
  %or.cond192.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond192.i, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0                        ; 4 uses
  %i.d = icmp eq i32 %4, 4
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %or.cond4.i = icmp ult i64 %1, 9223372032
  br i1 %or.cond4.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = mul nuw nsw i64 %1, 1000000000
  %i.f = lshr i32 %2, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add nuw nsw i64 %i.e, %i.g
  %i.i = and i32 %2, 3
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %4, 400
  %or.cond7.i = and i1 %i.c, %i.j
  br i1 %or.cond7.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %or.cond9.i = icmp ult i64 %1, 922337203285
  br i1 %or.cond9.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.k = mul nuw nsw i64 %1, 10000000
  %i.l = udiv i32 %2, 400
  %i.m = zext nneg i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.k, %i.m
  %i.o = urem i32 %2, 400
  br label %bb.s

bb.h:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %4, 4000
  %or.cond12.i = and i1 %i.c, %i.p
  br i1 %or.cond12.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %or.cond14.i = icmp ult i64 %1, 9223372032854
  br i1 %or.cond14.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.q = mul nuw nsw i64 %1, 1000000
  %i.r = udiv i32 %2, 4000
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.q, %i.s
  %i.u = urem i32 %2, 4000
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %4, 4000000
  %or.cond17.i = and i1 %i.c, %i.v
  br i1 %or.cond17.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %or.cond19.i = icmp ult i64 %1, 9223372032854775
  br i1 %or.cond19.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.w = mul nuw nsw i64 %1, 1000
  %i.x = udiv i32 %2, 4000000
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.w, %i.y
  %i.aa = urem i32 %2, 4000000
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.ab = icmp sgt i64 %3, 0
  %i.ac = icmp eq i32 %4, 0
  %or.cond21.i = and i1 %i.ab, %i.ac
  br i1 %or.cond21.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp sgt i64 %1, -1
  br i1 %i.ad, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp eq i64 %3, 1
  br i1 %i.ae, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = udiv i64 %1, %3
  %i.ag = urem i64 %1, %3
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %.not.i = icmp ne i32 %2, 0
  %.neg198.i = sext i1 %.not.i to i64             ; 2 uses
  %spec.select.neg.i = sub i64 %.neg198.i, %1     ; 2 uses
  %i.ah = udiv i64 %spec.select.neg.i, %3
  %.neg.i = sub i64 0, %i.ah
  %i.ai = urem i64 %spec.select.neg.i, %3
  %.neg191.i = sub nsw i64 %.neg198.i, %i.ai
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.m, %bb.j, %bb.g, %bb.d
  %.0 = phi i64 [ %i.h, %bb.d ], [ %i.n, %bb.g ], [ %i.t, %bb.j ], [ %i.z, %bb.m ], [ %.neg.i, %bb.r ], [ %i.af, %bb.q ], [ %1, %bb.p ]
  %.sink199.i = phi i64 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.m ], [ %.neg191.i, %bb.r ], [ %i.ag, %bb.q ], [ 0, %bb.p ]
  %.sink.i = phi i32 [ %i.i, %bb.d ], [ %i.o, %bb.g ], [ %i.u, %bb.j ], [ %i.aa, %bb.m ], [ %2, %bb.r ], [ %2, %bb.q ], [ %2, %bb.p ]
  store i64 %.sink199.i, ptr %5, align 4
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sink.i, ptr %.sroa.463.0..sroa_idx.i, align 4, !tbaa !3
  br label %bb.ag

bb.t:                                             ; preds = %bb.a, %bb.n
  %.not.i148 = icmp eq i64 %1, 0
  br i1 %.not.i148, label %_ZN4absl12lts_20240116ltENS0_8DurationES1_.exit, label %.thread

.thread:                                          ; preds = %bb.f, %bb.i, %bb.l, %bb.c, %bb.t
  %i.aj = icmp slt i64 %1, 0
  br label %_ZN4absl12lts_20240116ltENS0_8DurationES1_.exit

_ZN4absl12lts_20240116ltENS0_8DurationES1_.exit:  ; preds = %bb.t, %.thread
  %i.ak = phi i1 [ %i.aj, %.thread ], [ false, %bb.t ] ; 5 uses
  %.not.i149 = icmp eq i64 %3, 0
  %i.al = icmp slt i64 %3, 0                      ; 2 uses
  %i.am = xor i1 %i.al, %i.ak                     ; 3 uses
  %i.an = icmp eq i32 %4, 0
  %spec.select.i = select i1 %.not.i149, i1 %i.an, i1 false
  %or.cond = select i1 %i.a, i1 true, i1 %spec.select.i
  br i1 %or.cond, label %_ZN4absl12lts_20240116ngENS0_8DurationE.exit, label %bb.u

_ZN4absl12lts_20240116ngENS0_8DurationE.exit:     ; preds = %_ZN4absl12lts_20240116ltENS0_8DurationES1_.exit
  %.sroa.068.0 = select i1 %i.ak, i64 -9223372036854775808, i64 9223372036854775807
  store i64 %.sroa.068.0, ptr %5, align 4
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %.sroa.569.0..sroa_idx, align 4, !tbaa !3
  %i.ao = select i1 %i.am, i64 -9223372036854775808, i64 9223372036854775807
  br label %bb.ag

bb.u:                                             ; preds = %_ZN4absl12lts_20240116ltENS0_8DurationES1_.exit
  br i1 %i.b, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 %1, ptr %5, align 4
  %.sroa.6142.0..0.125.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %2, ptr %.sroa.6142.0..0.125.sroa_idx, align 4, !tbaa !3
  br label %bb.ag

bb.w:                                             ; preds = %bb.u
  %i.ap = icmp slt i64 %1, 0
  %i.aq = sub i32 -294967296, %2
  %.017.i = select i1 %i.ap, i32 %i.aq, i32 %2
  %.lobit.i = ashr i64 %1, 63
  %.0.i = xor i64 %.lobit.i, %1
  %i.ar = zext i64 %.0.i to i128
  %i.as = mul nuw nsw i128 %i.ar, 4000000000
  %i.at = zext i32 %.017.i to i128
  %i.au = add nuw nsw i128 %i.as, %i.at           ; 2 uses
  %i.av = sub i32 -294967296, %4
  %.017.i151 = select i1 %i.al, i32 %i.av, i32 %4
  %.lobit.i152 = ashr i64 %3, 63
  %.0.i153 = xor i64 %.lobit.i152, %3
  %i.aw = zext i64 %.0.i153 to i128
  %i.ax = mul nuw nsw i128 %i.aw, 4000000000
  %i.ay = zext i32 %.017.i151 to i128
  %i.az = add nuw nsw i128 %i.ax, %i.ay           ; 2 uses
  %i.ba = udiv i128 %i.au, %i.az                  ; 3 uses
  %i.bb = trunc i128 %i.ba to i64
  %i.bc = and i128 %i.ba, 158456325010081931113378349056
  %i.bd = icmp samesign ugt i128 %i.ba, 9223372036854775807
  %spec.select181 = select i1 %i.am, i64 -9223372036854775808, i64 9223372036854775807
  %i.be = select i1 %0, i1 %i.bd, i1 false
  %.sroa.028.0 = select i1 %i.be, i64 %spec.select181, i64 %i.bb ; 3 uses
  %i.bf = select i1 %0, i128 0, i128 %i.bc
  %i.bg = zext i64 %.sroa.028.0 to i128
  %i.bh = or disjoint i128 %i.bf, %i.bg           ; 2 uses
  %i.bi = mul i128 %i.bh, %i.az                   ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = trunc nuw i128 %i.bj to i64             ; 2 uses
  %i.bl = and i128 %i.bi, 18446744073709551615
  %i.bm = sub nsw i128 %i.au, %i.bl               ; 3 uses
  %i.bn = trunc i128 %i.bm to i64                 ; 3 uses
  %i.bo = lshr i128 %i.bm, 64
  %.tr.i = trunc nuw i128 %i.bo to i64            ; 2 uses
  %.narrow.i = sub i64 %.tr.i, %i.bk              ; 3 uses
  %i.bp = icmp eq i64 %.tr.i, %i.bk
  br i1 %i.bp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bq = udiv i64 %i.bn, 4000000000
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.br = icmp ult i64 %.narrow.i, 2000000000
  br i1 %i.br, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = icmp eq i64 %.narrow.i, 2000000000
  %i.bt = icmp eq i64 %i.bn, 0
  %i.bu = and i1 %i.bt, %i.bs
  %or.cond3.i = and i1 %i.ak, %i.bu
  %spec.select.i163 = select i1 %i.ak, i64 -9223372036854775808, i64 9223372036854775807
  %not.or.cond3.i = xor i1 %or.cond3.i, true
  %spec.select96.i = sext i1 %not.or.cond3.i to i32
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_120MakeDurationFromU128ENS0_7uint128Eb.exit

bb.aa:                                            ; preds = %bb.y
  %i.bv = zext nneg i64 %.narrow.i to i128
  %i.bw = shl nuw nsw i128 %i.bv, 64
  %i.bx = and i128 %i.bm, 18446744073709549568
  %i.by = or disjoint i128 %i.bw, %i.bx
  %i.bz = udiv i128 %i.by, 4000000000
  %i.ca = trunc nuw nsw i128 %i.bz to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.neg.pn.in.i = phi i64 [ %i.bq, %bb.x ], [ %i.ca, %bb.aa ] ; 4 uses
  %.neg.pn.i = mul i64 %.neg.pn.in.i, 294967296
  %.180.in.i = add i64 %.neg.pn.i, %i.bn
  %.180.i = trunc i64 %.180.in.i to i32           ; 3 uses
  br i1 %i.ak, label %bb.ac, label %_ZN4absl12lts_2024011612_GLOBAL__N_120MakeDurationFromU128ENS0_7uint128Eb.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cb = sub nsw i64 0, %.neg.pn.in.i
  %.not.i166 = icmp eq i32 %.180.i, 0
  br i1 %.not.i166, label %_ZN4absl12lts_2024011612_GLOBAL__N_120MakeDurationFromU128ENS0_7uint128Eb.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = xor i64 %.neg.pn.in.i, -1
  %i.cd = sub i32 -294967296, %.180.i
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_120MakeDurationFromU128ENS0_7uint128Eb.exit

_ZN4absl12lts_2024011612_GLOBAL__N_120MakeDurationFromU128ENS0_7uint128Eb.exit: ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad
  %.sroa.077.2.i = phi i64 [ %.neg.pn.in.i, %bb.ab ], [ %spec.select.i163, %bb.z ], [ %i.cc, %bb.ad ], [ %i.cb, %bb.ac ]
  %.sroa.578.2.i = phi i32 [ %.180.i, %bb.ab ], [ %spec.select96.i, %bb.z ], [ %i.cd, %bb.ad ], [ 0, %bb.ac ]
  store i64 %.sroa.077.2.i, ptr %5, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.578.2.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  %i.ce = icmp ne i128 %i.bh, 0
  %or.cond182.not = and i1 %i.am, %i.ce
  br i1 %or.cond182.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_120MakeDurationFromU128ENS0_7uint128Eb.exit
  %i.cf = and i64 %.sroa.028.0, 9223372036854775807
  br label %bb.ag

bb.af:                                            ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_120MakeDurationFromU128ENS0_7uint128Eb.exit
  %i.cg = sub i64 0, %.sroa.028.0
  %i.ch = or i64 %i.cg, -9223372036854775808
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4absl12lts_20240116ngENS0_8DurationE.exit, %bb.v, %bb.af, %bb.ae, %bb.s
  %.2 = phi i64 [ %.0, %bb.s ], [ %i.ao, %_ZN4absl12lts_20240116ngENS0_8DurationE.exit ], [ 0, %bb.v ], [ %i.cf, %bb.ae ], [ %i.ch, %bb.af ]
  ret i64 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202401168DurationpLES1_(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, i64 %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.222.0.copyload = load i32, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !3 ; 4 uses
  %i.a = icmp eq i32 %.sroa.222.0.copyload, -1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, -1
  br i1 %i.b, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 4                ; 3 uses
  %i.d = add i64 %i.c, %1                         ; 3 uses
  store i64 %i.d, ptr %0, align 4
  %i.e = zext i32 %.sroa.222.0.copyload to i64
  %i.f = zext i32 %2 to i64
  %i.g = sub nsw i64 4000000000, %i.f
  %.not = icmp sgt i64 %i.g, %i.e
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.h, ptr %0, align 4
  %i.i = add i32 %.sroa.222.0.copyload, 294967296
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %i.h, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.k = phi i32 [ %i.i, %bb.d ], [ %.sroa.222.0.copyload, %bb.c ]
  %i.l = add i32 %i.k, %2
  store i32 %i.l, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !7
  %i.m = icmp slt i64 %1, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i64 %i.j, %i.c
  br i1 %i.n, label %.sink.split, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = icmp slt i64 %i.j, %i.c
end_hunk_0
