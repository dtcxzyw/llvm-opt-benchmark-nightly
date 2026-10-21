Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/SHA1?download=true
inline.NumInlined: 40
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.std::locale::id" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.OpenImageIO::v3_1::basic_string_view" = type { ptr, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s:%u: %s: Assertion '%s' failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/oiio/OpenImageIO/src/libutil/SHA1.cpp\00", align 1
@__FUNCTION__._ZN11OpenImageIO4v3_14SHA16appendEPKvm = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"!m_final && \22Called SHA1() after already getting digest\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN11OpenImageIO4v3_14SHA1C1EPKvm = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN11OpenImageIO4v3_14SHA1C2EPKvm
@_ZN11OpenImageIO4v3_14SHA1D1Ev = unnamed_addr alias void (ptr), ptr @_ZN11OpenImageIO4v3_14SHA1D2Ev
@_ZN11OpenImageIO4v3_15CSHA1C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN11OpenImageIO4v3_15CSHA1C2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_14SHA1C2EPKvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.b, ptr %i.c, align 8, !tbaa !10
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.a, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 -1009589776, ptr %i.d, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !7
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !15
  tail call void @_ZN11OpenImageIO4v3_14SHA16appendEPKvm(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN11OpenImageIO4v3_14SHA16appendEPKvm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 69, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_14SHA16appendEPKvm, ptr noundef nonnull @.str.3) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = icmp ne ptr %1, null
  %i.g = icmp ne i64 %2, 0
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.d, label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !14     ; 8 uses
  %i.i = trunc i64 %2 to i32                      ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 63                         ; 5 uses
  %i.n = shl i32 %i.i, 3                          ; 2 uses
  %i.o = add i32 %i.k, %i.n                       ; 2 uses
  store i32 %i.o, ptr %i.j, align 4, !tbaa !7
  %i.p = icmp ult i32 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %i.s = zext i1 %i.p to i32
  %i.t = lshr i32 %i.i, 29
  %i.u = add i32 %i.r, %i.t
  %i.v = add i32 %i.u, %i.s
  store i32 %i.v, ptr %i.q, align 4, !tbaa !7
  %i.w = add i32 %i.m, %i.i
  %i.x = icmp ugt i32 %i.w, 63
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = sub nuw nsw i32 64, %i.m                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.aa = zext nneg i32 %i.m to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = zext nneg i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.ac, i1 false)
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull %i.z)
  %i.ad = xor i32 %i.m, 127
  %i.ae = icmp ult i32 %i.ad, %i.i
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.023.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %i.y, %bb.e ] ; 3 uses
  %i.af = zext i32 %.023.i to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull readonly %i.ag)
  %i.ah = add i32 %.023.i, 64                     ; 2 uses
  %i.ai = add i32 %.023.i, 127
  %i.aj = icmp ult i32 %i.ai, %i.i
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.d
  %i.ak = zext nneg i32 %i.m to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.021.i = phi i64 [ %i.ak, %bb.f ], [ 0, %bb.e ], [ 0, %.lr.ph.i ]
  %.1.i = phi i32 [ 0, %bb.f ], [ %i.y, %bb.e ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %.not.i = icmp eq i32 %.1.i, %i.i
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit.i
  %i.al = sub i32 %i.i, %.1.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.021.i
  %i.ao = zext i32 %.1.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = zext i32 %i.al to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull readonly align 1 %i.ap, i64 %i.aq, i1 false)
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit

_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit:     ; preds = %bb.g, %.loopexit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN11OpenImageIO4v3_14SHA1D2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(9) dereferenceable(9) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 200) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 5 uses
  %i.e = shl i32 %2, 3                            ; 2 uses
  %i.f = add i32 %i.b, %i.e                       ; 2 uses
  store i32 %i.f, ptr %i.a, align 4, !tbaa !7
  %i.g = icmp ult i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !7
  %i.j = zext i1 %i.g to i32
  %i.k = add i32 %i.i, %i.j
  %i.l = lshr i32 %2, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = add i32 %i.k, %i.l
  store i32 %i.n, ptr %i.m, align 8, !tbaa !7
  %i.o = add i32 %i.d, %2
  %i.p = icmp ugt i32 %i.o, 63
  br i1 %i.p, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.q = sub nuw nsw i32 64, %i.d                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = zext nneg i32 %i.d to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = zext nneg i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.u, i1 false)
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  %i.v = xor i32 %i.d, 127
  %i.w = icmp ult i32 %i.v, %2
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi i32 [ %i.z, %.lr.ph ], [ %i.q, %bb.a ] ; 3 uses
  %i.x = zext i32 %.023 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %0, ptr noundef nonnull %i.y)
  %i.z = add i32 %.023, 64                        ; 2 uses
  %i.aa = add i32 %.023, 127
  %i.ab = icmp ult i32 %i.aa, %2
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !llvm.loop !0

bb.b:                                             ; preds = %._crit_edge
  %i.ac = zext nneg i32 %i.d to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.021 = phi i64 [ %i.ac, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i32 [ 0, %bb.b ], [ %i.q, %bb.a ], [ %i.z, %.lr.ph ] ; 3 uses
  %.not = icmp eq i32 %2, %.1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ad = sub i32 %2, %.1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.021
  %i.ag = zext i32 %.1 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = zext i32 %i.ad to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11OpenImageIO4v3_14SHA17gethashERNS1_4HashE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(20) initializes((0, 20)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @_ZN11OpenImageIO4v3_15CSHA15FinalEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
  store i8 1, ptr %i.a, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.f, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA15FinalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 5 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7    ; 4 uses
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 63                         ; 2 uses
  %i.g = add i32 %i.d, 8                          ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = icmp ugt i32 %i.d, -9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = zext i1 %i.h to i32
  %i.k = add i32 %i.c, %i.j                       ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !7
  %i.l = icmp eq i32 %i.f, 63
  br i1 %i.l, label %.loopexit.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %bb.a
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 -128, ptr %i.o, align 1
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit

.loopexit.i:                                      ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 95
  store i8 -128, ptr %i.q, align 1
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.p)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !7
  %.pre44.pre = load i32, ptr %i.i, align 8, !tbaa !7
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit

_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit:     ; preds = %.loopexit.i, %.loopexit.i.thread
  %.pre44 = phi i32 [ %.pre44.pre, %.loopexit.i ], [ %i.k, %.loopexit.i.thread ] ; 2 uses
  %i.r = phi i32 [ %.pre, %.loopexit.i ], [ %i.g, %.loopexit.i.thread ] ; 3 uses
  %i.s = and i32 %i.r, 504
  %.not36 = icmp eq i32 %i.s, 448
  br i1 %.not36, label %.loopexit.i15, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 95
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14
  %i.v = phi i32 [ %.pre44, %.lr.ph ], [ %i.ah, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ]
  %i.w = phi i32 [ %i.r, %.lr.ph ], [ %i.ag, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ] ; 3 uses
  %i.x = lshr i32 %i.w, 3
  %i.y = and i32 %i.x, 63                         ; 2 uses
  %i.z = add i32 %i.w, 8                          ; 2 uses
  store i32 %i.z, ptr %i.a, align 4, !tbaa !7
  %i.aa = icmp ugt i32 %i.w, -9
  %i.ab = zext i1 %i.aa to i32
  %i.ac = add i32 %i.v, %i.ab                     ; 2 uses
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !7
  %i.ad = icmp eq i32 %i.y, 63
  br i1 %i.ad, label %.loopexit.i10, label %.loopexit.i10.thread

.loopexit.i10.thread:                             ; preds = %bb.b
  %i.ae = zext nneg i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae
  store i8 0, ptr %i.af, align 1
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14

.loopexit.i10:                                    ; preds = %bb.b
  store i8 0, ptr %i.u, align 1
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.t)
  %.pre41 = load i32, ptr %i.i, align 8, !tbaa !7
  %.pre43 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14

_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14:   ; preds = %.loopexit.i10, %.loopexit.i10.thread
  %i.ag = phi i32 [ %.pre43, %.loopexit.i10 ], [ %i.z, %.loopexit.i10.thread ] ; 3 uses
  %i.ah = phi i32 [ %.pre41, %.loopexit.i10 ], [ %i.ac, %.loopexit.i10.thread ] ; 2 uses
  %i.ai = and i32 %i.ag, 504
  %.not = icmp eq i32 %i.ai, 448
  br i1 %.not, label %.loopexit.i15, label %bb.b, !llvm.loop !28

.loopexit.i15:                                    ; preds = %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit
  %i.aj = phi i32 [ %.pre44, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit ], [ %i.ah, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ]
  %.lcssa = phi i32 [ %i.r, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit ], [ %i.ag, %_ZN11OpenImageIO4v3_15CSHA16UpdateEPKhj.exit14 ] ; 2 uses
  %i.ak = lshr i32 %i.c, 24
  %.sroa.0.0.insert.ext = zext nneg i32 %i.ak to i64
  %i.al = add i32 %.lcssa, 64
  store i32 %i.al, ptr %i.a, align 4, !tbaa !7
  %i.am = icmp ugt i32 %.lcssa, -65
  %i.an = zext i1 %i.am to i32
  %i.ao = add i32 %i.aj, %i.an
  store i32 %i.ao, ptr %i.i, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %trunc = zext i32 %i.d to i64
  %rev = tail call i64 @llvm.bswap.i64(i64 %trunc)
  %i.ar = shl i32 %i.c, 24
  %.sroa.6.0.insert.shift = zext i32 %i.ar to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %rev, %.sroa.6.0.insert.shift
  %i.as = shl i32 %i.c, 8
  %i.at = and i32 %i.as, 16711680
  %.sroa.5.0.insert.shift = zext nneg i32 %i.at to i64
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %i.au = lshr i32 %i.c, 8
  %i.av = and i32 %i.au, 65280
  %.sroa.4.0.insert.shift = zext nneg i32 %i.av to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.aq, align 8
  tail call void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.ap)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load i32, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.ay = lshr i32 %i.ax, 24
  %i.az = trunc nuw i32 %i.ay to i8
  store i8 %i.az, ptr %i.aw, align 8, !tbaa !19
  %i.ba = lshr i32 %i.ax, 16
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !19
  %i.bd = lshr i32 %i.ax, 8
  %i.be = trunc i32 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !19
  %i.bg = trunc i32 %i.ax to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 99
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7  ; 4 uses
  %i.bk = lshr i32 %i.bj, 24
  %i.bl = trunc nuw i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 %i.bl, ptr %i.bm, align 4, !tbaa !19
  %i.bn = lshr i32 %i.bj, 16
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 101
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !19
  %i.bq = lshr i32 %i.bj, 8
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 102
  store i8 %i.br, ptr %i.bs, align 2, !tbaa !19
  %i.bt = trunc i32 %i.bj to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 103
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !7  ; 4 uses
  %i.bx = lshr i32 %i.bw, 24
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.by, ptr %i.bz, align 8, !tbaa !19
  %i.ca = lshr i32 %i.bw, 16
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 105
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !19
  %i.cd = lshr i32 %i.bw, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.ce, ptr %i.cf, align 2, !tbaa !19
  %i.cg = trunc i32 %i.bw to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7  ; 4 uses
  %i.ck = lshr i32 %i.cj, 24
  %i.cl = trunc nuw i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 %i.cl, ptr %i.cm, align 4, !tbaa !19
  %i.cn = lshr i32 %i.cj, 16
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !19
  %i.cq = lshr i32 %i.cj, 8
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 %i.cr, ptr %i.cs, align 2, !tbaa !19
  %i.ct = trunc i32 %i.cj to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 111
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !19
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !7  ; 4 uses
  %i.cx = lshr i32 %i.cw, 24
  %i.cy = trunc nuw i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.cy, ptr %i.cz, align 8, !tbaa !19
  %i.da = lshr i32 %i.cw, 16
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !19
  %i.dd = lshr i32 %i.cw, 8
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 114
  store i8 %i.de, ptr %i.df, align 2, !tbaa !19
  %i.dg = trunc i32 %i.cw to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA17GetHashEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_14SHA16digestB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !15, !range !16, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !14
  tail call void @_ZN11OpenImageIO4v3_15CSHA15FinalEv(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
  store i8 1, ptr %i.b, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !24
  store i8 0, ptr %i.f, align 8, !tbaa !19
  %i.h = load ptr, ptr %1, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.i = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE(ptr noundef nonnull readonly align 8 dereferenceable(200) %i.h, ptr noundef nonnull %i.a, i32 noundef 2)
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.g, align 8, !tbaa !24
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef %i.k)
          to label %bb.f unwind label %bb.e       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.f, align 8, !tbaa !19
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA113ReportHashStlERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11REPORT_TYPEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.a, i32 noundef %2) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA1C2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.a, ptr %i.b, align 8, !tbaa !10
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.c, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA15ResetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(200) initializes((0, 28)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN11OpenImageIO4v3_15CSHA19TransformEPjPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !7      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 81 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 1 dereferenceable(64) %2, i64 64, i1 false)
  %i.l = xor i32 %i.g, %i.e
  %i.m = and i32 %i.l, %i.c
  %i.n = xor i32 %i.m, %i.g
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !19
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 5)
  %i.s = add i32 %i.r, 1518500249
  %i.t = add i32 %i.s, %i.i
  %i.u = add i32 %i.t, %i.n
  %i.v = add i32 %i.u, %i.q                       ; 5 uses
  %i.w = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 30) ; 4 uses
  %i.x = xor i32 %i.w, %i.e
  %i.y = and i32 %i.x, %i.a
  %i.z = xor i32 %i.y, %i.e
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac) ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !19
  %i.ae = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 5)
  %i.af = add i32 %i.g, 1518500249
  %i.ag = add i32 %i.af, %i.z
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = add i32 %i.ah, %i.ae                    ; 5 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 30) ; 4 uses
  %i.ak = xor i32 %i.w, %i.aj
  %i.al = and i32 %i.v, %i.ak
  %i.am = xor i32 %i.al, %i.w
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap) ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !19
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 5)
  %i.as = add i32 %i.e, 1518500249
  %i.at = add i32 %i.as, %i.aq
  %i.au = add i32 %i.at, %i.am
  %i.av = add i32 %i.au, %i.ar                    ; 5 uses
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.v, i32 %i.v, i32 30) ; 4 uses
  %i.ax = xor i32 %i.aw, %i.aj
  %i.ay = and i32 %i.ai, %i.ax
  %i.az = xor i32 %i.ay, %i.aj
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc) ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !19
  %i.be = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 5)
  %i.bf = add i32 %i.w, 1518500249
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = add i32 %i.bg, %i.az
  %i.bi = add i32 %i.bh, %i.be                    ; 5 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 30) ; 4 uses
  %i.bk = xor i32 %i.bj, %i.aw
  %i.bl = and i32 %i.av, %i.bk
  %i.bm = xor i32 %i.bl, %i.aw
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !19
  %i.bq = tail call i32 @llvm.bswap.i32(i32 %i.bp) ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !19
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 5)
  %i.bs = add i32 %i.aj, 1518500249
  %i.bt = add i32 %i.bs, %i.bq
  %i.bu = add i32 %i.bt, %i.bm
  %i.bv = add i32 %i.bu, %i.br                    ; 5 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 30) ; 4 uses
  %i.bx = xor i32 %i.bw, %i.bj
  %i.by = and i32 %i.bi, %i.bx
  %i.bz = xor i32 %i.by, %i.bj
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc) ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !19
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.bv, i32 %i.bv, i32 5)
  %i.cf = add i32 %i.aw, 1518500249
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = add i32 %i.cg, %i.bz
  %i.ci = add i32 %i.ch, %i.ce                    ; 5 uses
  %i.cj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 30) ; 4 uses
  %i.ck = xor i32 %i.cj, %i.bw
  %i.cl = and i32 %i.bv, %i.ck
  %i.cm = xor i32 %i.cl, %i.bw
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_15CSHA110ReportHashEPcNS1_11REPORT_TYPEE:bb.a
  %i.jc = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !19
  %i.jf = zext i8 %i.je to i32
  %i.jg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.jf) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.jh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.jh, ptr %i.ie, align 8, !tbaa !33
  %i.ji = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 102
  %i.jk = load i8, ptr %i.jj, align 2, !tbaa !19
  %i.jl = zext i8 %i.jk to i32
  %i.jm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.jl) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.jn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.jn, ptr %i.ie, align 8, !tbaa !33
  %i.jo = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !19
  %i.jr = zext i8 %i.jq to i32
  %i.js = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.jr) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.jt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.jt, ptr %i.ie, align 8, !tbaa !33
  %i.ju = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !19
  %i.jx = zext i8 %i.jw to i32
  %i.jy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.jx) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.jz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.jz, ptr %i.ie, align 8, !tbaa !33
  %i.ka = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !19
  %i.kd = zext i8 %i.kc to i32
  %i.ke = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.kd) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.kf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.kf, ptr %i.ie, align 8, !tbaa !33
  %i.kg = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ki = load i8, ptr %i.kh, align 2, !tbaa !19
  %i.kj = zext i8 %i.ki to i32
  %i.kk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.kj) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.kl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.kl, ptr %i.ie, align 8, !tbaa !33
  %i.km = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !19
  %i.kp = zext i8 %i.ko to i32
  %i.kq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.kp) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.kr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.kr, ptr %i.ie, align 8, !tbaa !33
  %i.ks = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ku = load i8, ptr %i.kt, align 4, !tbaa !19
  %i.kv = zext i8 %i.ku to i32
  %i.kw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.kv) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.kx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.kx, ptr %i.ie, align 8, !tbaa !33
  %i.ky = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !19
  %i.lb = zext i8 %i.la to i32
  %i.lc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.lb) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.ld = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.ld, ptr %i.ie, align 8, !tbaa !33
  %i.le = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 110
  %i.lg = load i8, ptr %i.lf, align 2, !tbaa !19
  %i.lh = zext i8 %i.lg to i32
  %i.li = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.lh) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.lj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.lj, ptr %i.ie, align 8, !tbaa !33
  %i.lk = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !19
  %i.ln = zext i8 %i.lm to i32
  %i.lo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.ln) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.lp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.lp, ptr %i.ie, align 8, !tbaa !33
  %i.lq = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !19
  %i.lt = zext i8 %i.ls to i32
  %i.lu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.lt) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.lv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.lv, ptr %i.ie, align 8, !tbaa !33
  %i.lw = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !19
  %i.lz = zext i8 %i.ly to i32
  %i.ma = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.lz) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.mb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.mb, ptr %i.ie, align 8, !tbaa !33
  %i.mc = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.me = load i8, ptr %i.md, align 2, !tbaa !19
  %i.mf = zext i8 %i.me to i32
  %i.mg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.mf) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.mh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.mh, ptr %i.ie, align 8, !tbaa !33
  %i.mi = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %6, i64 noundef 83) #19 ; 0 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !19
  %i.ml = zext i8 %i.mk to i32
  %i.mm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 15, ptr noundef nonnull @.str.10, i32 noundef %i.ml) #19 ; 0 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !32
  %i.mn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  store i64 %i.mn, ptr %i.ie, align 8, !tbaa !33
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.split.us.preheader, %.split.preheader, %.loopexit.loopexit26
  %.sink = phi ptr [ %6, %.loopexit.loopexit26 ], [ %4, %.split.preheader ], [ %4, %.split.us.preheader ]
  %i.mo = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef nonnull %1, ptr noundef nonnull dead_on_return %.sink, i64 noundef 83) #19 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.b
  %.019 = phi i1 [ false, %bb.b ], [ true, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i1 [ %.019, %.loopexit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcatEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #12 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !18}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"_ZTSN11OpenImageIO4v3_15CSHA1E", !5, i64 0, !5, i64 20, !5, i64 28, !5, i64 32, !5, i64 96, !5, i64 116, !5, i64 128, !8, i64 192}
!10 = !{!9, !8, i64 192}
!11 = !{!"p1 _ZTSN11OpenImageIO4v3_15CSHA1E", !8, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTSN11OpenImageIO4v3_14SHA1E", !11, i64 0, !12, i64 8}
!14 = !{!13, !11, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!5, !5, i64 0}
!20 = !{!"p1 omnipotent char", !8, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !22, i64 8, !5, i64 16}
!24 = !{!23, !22, i64 8}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{!28, !18}
!29 = !{!21, !20, i64 0}
!30 = !{!23, !20, i64 0}
!31 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !20, i64 0, !22, i64 8}
!32 = !{!31, !20, i64 0}
!33 = !{!31, !22, i64 8}
end_hunk_1
