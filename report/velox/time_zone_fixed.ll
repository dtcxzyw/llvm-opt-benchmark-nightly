Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/time_zone_fixed?download=true
inline.NumInlined: 133
inline.NumDeleted: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"UTC0\00", align 1
@_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_116kFixedZonePrefixE = internal constant [10 x i8] c"Fixed/UTC\00", align 1
@_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE = internal constant [11 x i8] c"0123456789\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011613time_internal4cctz19FixedOffsetFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
    i64 18, label %bb.b
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = xor i16 %i.d, 21589
  %i.f = getelementptr i8, ptr %i.c, i64 2
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i16
  %i.i = xor i16 %i.h, 67
  %i.j = or i16 %i.e, %i.i
  %i.k = icmp ne i16 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !14
  %bcmp.i33 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.1, i64 %i.b)
  %i.n = icmp eq i32 %bcmp.i33, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.b:                                             ; preds = %bb.a
  %.pre37 = load ptr, ptr %0, align 8, !tbaa !14  ; 8 uses
  %i.o = load i64, ptr %.pre37, align 1
  %i.p = xor i64 6076815380451977542, %i.o
  %i.q = getelementptr i8, ptr %.pre37, i64 8
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = xor i64 67, %i.s
  %i.u = or i64 %i.p, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not9.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not9.i.i.i.i, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.pre37, i64 9
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35 [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.pre37, i64 12
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %.not31 = icmp eq i8 %i.aa, 58
  br i1 %.not31, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre37, i64 15
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %.not32 = icmp eq i8 %i.ac, 58
  br i1 %.not32, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre37, i64 10
  %i.ae = tail call fastcc noundef i32 @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_18Parse02dEPKc(ptr noundef nonnull %i.ad) ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre37, i64 13
  %i.ah = tail call fastcc noundef i32 @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_18Parse02dEPKc(ptr noundef nonnull %i.ag) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre37, i64 16
  %i.ak = tail call fastcc noundef i32 @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_18Parse02dEPKc(ptr noundef nonnull %i.aj) ; 2 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = mul nsw i32 %i.ae, 60
  %i.an = add nsw i32 %i.ah, %i.am
  %i.ao = mul nsw i32 %i.an, 60
  %i.ap = add nsw i32 %i.ak, %i.ao                ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 86400
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i8 %i.y, 45
  %i.as = sub nsw i32 0, %i.ap
  %i.at = select i1 %i.ar, i32 %i.as, i32 %i.ap
  %i.au = sext i32 %i.at to i64
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, %bb.j
  %.sink = phi i64 [ %i.au, %bb.j ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34 ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  store i64 %.sink, ptr %1, align 8, !tbaa !16
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %bb.b, %bb.f, %bb.h, %bb.i, %bb.g, %bb.d, %bb.e, %bb.c
  %.5 = phi i1 [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34 ], [ false, %bb.h ], [ false, %bb.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35.sink.split ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_18Parse02dEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %i.b = sext i8 %i.a to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.b, i64 11) ; 2 uses
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  %i.e = sext i8 %i.d to i32
  %memchr15 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.e, i64 11)
  %memchr15.fr = freeze ptr %memchr15             ; 2 uses
  %.not16 = icmp eq ptr %memchr15.fr, null
  %i.f = ptrtoint ptr %memchr to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = sub i32 %i.g, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32)
  %i.i = mul nsw i32 %i.h, 10
  %i.j = ptrtoint ptr %memchr15.fr to i64
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.i, sub (i32 0, i32 ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32))
  %i.m = add i32 %i.l, %i.k
  %spec.select = select i1 %.not16, i32 -1, i32 %i.m
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.a
  %i.n = phi i32 [ %spec.select, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613time_internal4cctz17FixedOffsetToNameB5cxx11ERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [19 x i8], align 16               ; 8 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.f, align 1, !tbaa !15
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, -86401
  %or.cond = icmp ult i64 %i.g, -172801
  br i1 %or.cond, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.h, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.j, align 1, !tbaa !15
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nsw i64 %i.b to i32                ; 2 uses
  %i.l = icmp slt i64 %i.b, 0                     ; 2 uses
  %i.m = select i1 %i.l, i8 45, i8 43
  %i.n = sdiv i32 %i.k, 60                        ; 2 uses
  %i.o = srem i32 %i.k, 60                        ; 4 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp sgt i32 %i.o, 0                     ; 2 uses
  %i.q = add nuw nsw i32 %i.o, -60
  %.030 = select i1 %i.p, i32 %i.q, i32 %i.o
  %.neg = sext i1 %i.p to i32
  %.0.neg = sub nsw i32 %.neg, %i.n
  %i.r = sub nsw i32 0, %.030
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.131 = phi i32 [ %i.r, %bb.d ], [ %i.o, %bb.c ]
  %.1 = phi i32 [ %.0.neg, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %.lhs.trunc72 = trunc i32 %.1 to i16
  %i.s = sdiv i16 %.lhs.trunc72, 60
  %.lhs.trunc73 = trunc i32 %.1 to i16
  %i.t = srem i16 %.lhs.trunc73, 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_116kFixedZonePrefixE, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.lhs.trunc75 = trunc i32 %.1 to i16
  %i.v = sdiv i16 %.lhs.trunc75, 600
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  %.lhs.trunc77 = trunc i16 %i.s to i8
  %i.z = srem i8 %.lhs.trunc77, 10
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %.lhs.trunc = trunc nsw i16 %i.t to i8          ; 2 uses
  %i.ad = sdiv i8 %.lhs.trunc, 10
  %i.ae = sext i8 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = srem i8 %.lhs.trunc, 10
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %.lhs.trunc63 = trunc nsw i32 %.131 to i8       ; 2 uses
  %i.al = sdiv i8 %.lhs.trunc63, 10
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.aq = insertelement <8 x i8> <i8 poison, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison>, i8 %i.m, i64 0
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.y, i64 1
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ac, i64 2
  %i.at = insertelement <8 x i8> %i.as, i8 %i.ag, i64 4
  %i.au = insertelement <8 x i8> %i.at, i8 %i.ak, i64 5
  %i.av = insertelement <8 x i8> %i.au, i8 %i.ao, i64 7
  store <8 x i8> %i.av, ptr %i.u, align 1, !tbaa !15
  %i.aw = srem i8 %.lhs.trunc63, 10
  %i.ax = sext i8 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.az, ptr %i.ap, align 1, !tbaa !15
  store i8 0, ptr %i.ba, align 2, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !17
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #10 ; 8 uses
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %bb.f, label %._crit_edge.i.i47

bb.f:                                             ; preds = %bb.e
  %i.be = icmp slt i64 %i.bc, 0
  br i1 %i.be, label %.noexc.i50, label %bb.g

.noexc.i50:                                       ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #11
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bf = add nuw i64 %i.bc, 1                    ; 2 uses
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %.noexc11.i49, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48, !prof !18

.noexc11.i49:                                     ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48: ; preds = %bb.g
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #12 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !14
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !15
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48, %bb.e
  %i.bi = phi ptr [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i48 ], [ %i.bb, %bb.e ] ; 3 uses
  switch i64 %i.bc, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i47
  store i8 70, ptr %i.bi, align 1, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 16 %i.a, i64 %i.bc, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i47
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bj, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  store i8 0, ptr %i.bk, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge, %._crit_edge.i.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613time_internal4cctz17FixedOffsetToAbbrB5cxx11ERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_2024011613time_internal4cctz17FixedOffsetToNameB5cxx11ERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp eq i64 %i.b, 18
  br i1 %i.c, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) %i.e, i64 9, i1 false)
  %i.f = load i64, ptr %i.a, align 8, !tbaa !13
  %i.g = add i64 %i.f, -9                         ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !15
  %i.j = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.k = icmp ult i64 %i.j, 6
  br i1 %i.k, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.b
  %i.l = icmp ne i64 %i.j, 6
  %spec.select.i.i3 = zext i1 %i.l to i64         ; 2 uses
  %i.m = icmp ugt i64 %i.j, 7
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.n = add i64 %i.j, -7                         ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
end_hunk_0
