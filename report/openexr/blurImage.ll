Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/blurImage?download=true
inline.NumInlined: 127
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.EnvmapImage = type { i32, %"class.Imath_3_2::Box", %"class.Imf_3_4::Array2D" }
%"class.Imath_3_2::Box" = type { %"class.Imath_3_2::Vec2", %"class.Imath_3_2::Vec2" }
%"class.Imath_3_2::Vec2" = type { i32, i32 }
%"class.Imf_3_4::Array2D" = type { i64, i64, ptr }
%"class.Imath_3_2::Vec2.0" = type { float, float }
%"class.Imath_3_2::Vec3" = type { float, float, float }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [19 x i8] c"blurring map image\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"    converting to cube-face format\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"    resizing cube faces to \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" by \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" pixels\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"    computing pixel weights\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"        face \00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"    generating blurred image\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"    copying\00", align 1
@imath_half_to_float_table = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9blurImageR11EnvmapImageb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.EnvmapImage, align 8         ; 9 uses
  %3 = alloca %"class.Imath_3_2::Box", align 4    ; 8 uses
  %4 = alloca %"class.Imath_3_2::Box", align 4    ; 12 uses
  %5 = alloca %"class.Imath_3_2::Box", align 16   ; 9 uses
  %6 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 7 uses
  %.sroa.0 = alloca float, align 4                ; 10 uses
  %.sroa.10 = alloca float, align 4               ; 10 uses
  %.sroa.17 = alloca float, align 4               ; 10 uses
  %7 = alloca %"class.Imath_3_2::Vec3", align 4   ; 6 uses
  %8 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 5 uses
  %9 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  %10 = alloca %"class.Imath_3_2::Box", align 16  ; 7 uses
  %11 = alloca %"class.Imath_3_2::Box", align 16  ; 8 uses
  %12 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 7 uses
  %13 = alloca %"class.Imath_3_2::Vec3", align 4  ; 7 uses
  %14 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 5 uses
  %15 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  %16 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 7 uses
  %17 = alloca %"class.Imath_3_2::Vec3", align 4  ; 7 uses
  %18 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 5 uses
  %19 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  %20 = alloca %"class.Imath_3_2::Box", align 16  ; 7 uses
  br i1 %1, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 18) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 6 uses
  %.not.i.i.i290 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i290, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !50
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !9
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.k, %bb.d ], [ %i.o, %bb.e ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @_ZN11EnvmapImageC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.r = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !54
  %i.u = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55
  %i.w = sub nsw i32 %i.t, %i.v
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  %i.y = invoke noundef i32 @_ZNK11EnvmapImage4typeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.i unwind label %.loopexit.split-lp421

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  br i1 %1, label %bb.k, label %_ZNSolsEPFRSoS_E.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp421 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.k
  %i.ab = load ptr, ptr @_ZSt4cout, align 8, !tbaa !26
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i291 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i291, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i292

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  invoke void @_ZSt16__throw_bad_castv() #8
          to label %.cont unwind label %.loopexit.split-lp421

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i292: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !50
  %.not.i1.i.i293 = icmp eq i8 %i.ai, 0
  br i1 %.not.i1.i.i293, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i292
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 67
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i292
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ag)
          to label %.noexc295 unwind label %.loopexit.split-lp421

.noexc295:                                        ; preds = %bb.m
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef signext i8 %i.an(ptr noundef nonnull align 8 dereferenceable(570) %i.ag, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp421, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc295, %bb.l
  %.0.i.i.i294 = phi i8 [ %i.ak, %bb.l ], [ %i.ao, %.noexc295 ]
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i294)
          to label %.noexc297 unwind label %.loopexit.split-lp421

.noexc297:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp421 ; 0 uses

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

.loopexit.split-lp421:                            ; preds = %.invoke, %bb.h, %bb.k, %bb.y, %bb.ei, %bb.hg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %bb.m, %.noexc295, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc297, %bb.aa, %.noexc317, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i314, %.noexc319, %bb.ek, %.noexc339, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336, %.noexc341
  %lpad.loopexit.split-lp423 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc297, %bb.j
  %i.as = sdiv i32 %i.x, 4                        ; 3 uses
  %i.at = mul nsw i32 %i.as, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.au = add nsw i32 %i.as, -1
  %i.av = add nsw i32 %i.at, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %3, align 4, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !57
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.av, ptr %i.ay, align 4, !tbaa !57
  invoke void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef 1.000000e+00, i32 noundef 7)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.q

bb.p:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.hs

bb.q:                                             ; preds = %bb.o, %bb.i
  %.0405 = phi ptr [ %0, %bb.o ], [ %2, %bb.i ]   ; 3 uses
  %.0403 = phi ptr [ %2, %bb.o ], [ %0, %bb.i ]   ; 3 uses
  %.0204 = phi i32 [ %i.as, %bb.o ], [ %i.x, %bb.i ] ; 3 uses
  %i.ba = icmp sgt i32 %.0204, 40
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br i1 %1, label %.lr.ph.split.us, label %_ZNSolsEPFRSoS_E.exit235

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.v
  %.1205472.us = phi i32 [ %.2206.us, %bb.v ], [ %.0204, %.lr.ph ] ; 2 uses
  %.1404471.us = phi ptr [ %.1406470.us, %bb.v ], [ %.0403, %.lr.ph ] ; 3 uses
  %.1406470.us = phi ptr [ %.1404471.us, %bb.v ], [ %.0405, %.lr.ph ] ; 3 uses
  %i.be = call i32 @llvm.umax.i32(i32 %.1205472.us, i32 80)
  %.2206.us = lshr i32 %i.be, 1                   ; 5 uses
  %i.bf = mul nuw nsw i32 %.2206.us, 6
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232.us unwind label %.loopexit420.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232.us: ; preds = %.lr.ph.split.us
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.2206.us)
          to label %bb.r unwind label %.loopexit420.split.us ; 2 uses

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232.us
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.3, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233.us unwind label %.loopexit420.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233.us: ; preds = %bb.r
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i32 noundef %.2206.us)
          to label %bb.s unwind label %.loopexit420.split.us ; 4 uses

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233.us
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.4, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234.us unwind label %.loopexit420.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234.us: ; preds = %bb.s
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !26
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i300.us = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i300.us, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i301.us

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i301.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !50
  %.not.i1.i.i302.us = icmp eq i8 %i.bs, 0
  br i1 %.not.i1.i.i302.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i301.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 67
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i303.us

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i301.us
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bq)
          to label %.noexc306.us unwind label %.loopexit420.split.us

.noexc306.us:                                     ; preds = %bb.u
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef signext i8 %i.bx(ptr noundef nonnull align 8 dereferenceable(570) %i.bq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i303.us unwind label %.loopexit420.split.us, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i303.us: ; preds = %.noexc306.us, %bb.t
  %.0.i.i.i304.us = phi i8 [ %i.bu, %bb.t ], [ %i.by, %.noexc306.us ]
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i8 noundef signext %.0.i.i.i304.us)
          to label %.noexc308.us unwind label %.loopexit420.split.us

.noexc308.us:                                     ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i303.us
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %_ZNSolsEPFRSoS_E.exit235.us unwind label %.loopexit420.split.us ; 0 uses

_ZNSolsEPFRSoS_E.exit235.us:                      ; preds = %.noexc308.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.cb = add nsw i32 %.2206.us, -1
  %i.cc = add nsw i32 %i.bf, -1
  store i32 0, ptr %4, align 4, !tbaa !56
  store i32 0, ptr %i.bc, align 4, !tbaa !57
  store i32 %i.cb, ptr %i.bb, align 4, !tbaa !56
  store i32 %i.cc, ptr %i.bd, align 4, !tbaa !57
  invoke void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48) %.1404471.us, ptr noundef nonnull align 8 dereferenceable(48) %.1406470.us, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00, i32 noundef 7)
          to label %bb.v unwind label %.split475.us

bb.v:                                             ; preds = %_ZNSolsEPFRSoS_E.exit235.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.cd = icmp samesign ugt i32 %.1205472.us, 81
  br i1 %i.cd, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !11

.loopexit420.split.us:                            ; preds = %.noexc308.us, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i303.us, %.noexc306.us, %bb.u, %bb.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233.us, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit232.us, %.lr.ph.split.us
  %lpad.loopexit422.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

.split475.us:                                     ; preds = %_ZNSolsEPFRSoS_E.exit235.us
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSolsEPFRSoS_E.exit235:                         ; preds = %.lr.ph, %bb.w
  %.1205472 = phi i32 [ %.2206, %bb.w ], [ %.0204, %.lr.ph ] ; 2 uses
  %.1404471 = phi ptr [ %.1406470, %bb.w ], [ %.0403, %.lr.ph ] ; 3 uses
  %.1406470 = phi ptr [ %.1404471, %bb.w ], [ %.0405, %.lr.ph ] ; 3 uses
  %i.cf = call i32 @llvm.umax.i32(i32 %.1205472, i32 80)
  %.2206 = lshr i32 %i.cf, 1                      ; 3 uses
  %i.cg = mul nuw nsw i32 %.2206, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ch = add nsw i32 %.2206, -1
  %i.ci = add nsw i32 %i.cg, -1
  store i32 0, ptr %4, align 4, !tbaa !56
  store i32 0, ptr %i.bc, align 4, !tbaa !57
  store i32 %i.ch, ptr %i.bb, align 4, !tbaa !56
  store i32 %i.ci, ptr %i.bd, align 4, !tbaa !57
  invoke void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48) %.1404471, ptr noundef nonnull align 8 dereferenceable(48) %.1406470, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00, i32 noundef 7)
          to label %bb.w unwind label %.split475

bb.w:                                             ; preds = %_ZNSolsEPFRSoS_E.exit235
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.cj = icmp samesign ugt i32 %.1205472, 81
  br i1 %i.cj, label %_ZNSolsEPFRSoS_E.exit235, label %._crit_edge, !llvm.loop !11

.split475:                                        ; preds = %_ZNSolsEPFRSoS_E.exit235
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.split475.us, %.split475
  %.us-phi476 = phi { ptr, i32 } [ %i.ck, %.split475 ], [ %i.ce, %.split475.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.hs

._crit_edge:                                      ; preds = %bb.w, %bb.v, %bb.q
  %.1406.lcssa = phi ptr [ %.0405, %bb.q ], [ %.1404471.us, %bb.v ], [ %.1404471, %bb.w ] ; 6 uses
  %.1404.lcssa = phi ptr [ %.0403, %bb.q ], [ %.1406470.us, %bb.v ], [ %.1406470, %bb.w ] ; 4 uses
  br i1 %1, label %bb.y, label %_ZNSolsEPFRSoS_E.exit237

bb.y:                                             ; preds = %._crit_edge
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236 unwind label %.loopexit.split-lp421 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236: ; preds = %bb.y
  %i.cm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !26
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i311 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i311, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i312

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i312: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !50
  %.not.i1.i.i313 = icmp eq i8 %i.ct, 0
  br i1 %.not.i1.i.i313, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i312
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 67
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i314

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i312
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cr)
          to label %.noexc317 unwind label %.loopexit.split-lp421

.noexc317:                                        ; preds = %bb.aa
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef signext i8 %i.cy(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i314 unwind label %.loopexit.split-lp421, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i314: ; preds = %.noexc317, %bb.z
  %.0.i.i.i315 = phi i8 [ %i.cv, %bb.z ], [ %i.cz, %.noexc317 ]
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i315)
          to label %.noexc319 unwind label %.loopexit.split-lp421

.noexc319:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i314
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %_ZNSolsEPFRSoS_E.exit237 unwind label %.loopexit.split-lp421 ; 0 uses

_ZNSolsEPFRSoS_E.exit237:                         ; preds = %.noexc319, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.dc = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNSolsEPFRSoS_E.exit237
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load <4 x i32>, ptr %i.dc, align 4, !tbaa !59
  store <4 x i32> %i.de, ptr %5, align 16, !tbaa !59
  %i.df = invoke noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.ac unwind label %bb.af     ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %.preheader414 unwind label %bb.ag ; 2 uses

.preheader414:                                    ; preds = %bb.ac
  %i.dh = icmp sgt i32 %i.df, 0
  %i.di = add nsw i32 %i.df, -1                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  br label %bb.ah

bb.ad:                                            ; preds = %._crit_edge489.split.us
  %i.dn = load <2 x i32>, ptr %i.dd, align 8, !tbaa !59
  %i.do = load <2 x i32>, ptr %5, align 16, !tbaa !59
  %i.dp = add <2 x i32> %i.dn, splat (i32 1)
  %i.dq = sub <2 x i32> %i.dp, %i.do              ; 2 uses
  %i.dr = extractelement <2 x i32> %i.dq, i64 0
  %i.ds = extractelement <2 x i32> %i.dq, i64 1
  %i.dt = mul nsw i32 %i.ds, %i.dr                ; 2 uses
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !62 ; 2 uses
  %.idx = shl nuw nsw i64 %i.du, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx
  %.not557 = icmp eq i32 %i.dt, 0
  br i1 %.not557, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.ad
  %i.dx = uitofp i64 %i.du to double
  %i.dy = fdiv double %i.dx, %.1181.lcssa
  %i.dz = fptrunc double %i.dy to float           ; 4 uses
  %i.ea = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  br label %bb.ct

bb.ae:                                            ; preds = %_ZNSolsEPFRSoS_E.exit237
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.af:                                            ; preds = %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ag:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ah:                                            ; preds = %.preheader414, %._crit_edge489.split.us
  %.0179497 = phi i32 [ 0, %.preheader414 ], [ %i.pa, %._crit_edge489.split.us ] ; 5 uses
  %.0180496 = phi double [ 0.000000e+00, %.preheader414 ], [ %.1181.lcssa, %._crit_edge489.split.us ] ; 2 uses
  br i1 %1, label %bb.ai, label %_ZNSolsEPFRSoS_E.exit239

bb.ai:                                            ; preds = %bb.ah
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %.loopexit415 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %bb.ai
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0179497)
          to label %bb.aj unwind label %.loopexit415 ; 3 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !26
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 240
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i322 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i322, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt16__throw_bad_castv() #8
          to label %.noexc327 unwind label %.loopexit.split-lp416

.noexc327:                                        ; preds = %bb.ak
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323: ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.en = load i8, ptr %i.em, align 8, !tbaa !50
  %.not.i1.i.i324 = icmp eq i8 %i.en, 0
  br i1 %.not.i1.i.i324, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 67
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.el)
          to label %.noexc328 unwind label %.loopexit415

.noexc328:                                        ; preds = %bb.am
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef signext i8 %i.es(ptr noundef nonnull align 8 dereferenceable(570) %i.el, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325 unwind label %.loopexit415, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325: ; preds = %.noexc328, %bb.al
  %.0.i.i.i326 = phi i8 [ %i.ep, %bb.al ], [ %i.et, %.noexc328 ]
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i8 noundef signext %.0.i.i.i326)
          to label %.noexc330 unwind label %.loopexit415

.noexc330:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %_ZNSolsEPFRSoS_E.exit239 unwind label %.loopexit415 ; 0 uses

.loopexit415:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %bb.ai, %bb.am, %.noexc328, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325, %.noexc330
  %lpad.loopexit417 = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

.loopexit.split-lp416:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp418 = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

_ZNSolsEPFRSoS_E.exit239:                         ; preds = %.noexc330, %bb.ah
  switch i32 %.0179497, label %default.unreachable [
    i32 0, label %bb.as
    i32 1, label %bb.an
    i32 2, label %bb.ao
    i32 3, label %bb.ap
    i32 4, label %bb.aq
    i32 5, label %bb.ar
  ]

bb.an:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.ao:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.ap:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.aq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.ar:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

default.unreachable:                              ; preds = %_ZNSolsEPFRSoS_E.exit239
  unreachable

bb.as:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sroa.0374.0 = phi float [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.aq ], [ -1.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.ap ], [ 1.000000e+00, %_ZNSolsEPFRSoS_E.exit239 ]
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.aq ], [ 0.000000e+00, %bb.an ], [ 1.000000e+00, %bb.ao ], [ -1.000000e+00, %bb.ap ], [ 0.000000e+00, %_ZNSolsEPFRSoS_E.exit239 ]
  %.sroa.19.0 = phi float [ -1.000000e+00, %bb.ar ], [ 1.000000e+00, %bb.aq ], [ 0.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.ap ], [ 0.000000e+00, %_ZNSolsEPFRSoS_E.exit239 ]
  %.0178.sroa.phi = phi ptr [ %.sroa.17, %bb.ar ], [ %.sroa.17, %bb.aq ], [ %.sroa.0, %bb.an ], [ %.sroa.10, %bb.ao ], [ %.sroa.10, %bb.ap ], [ %.sroa.0, %_ZNSolsEPFRSoS_E.exit239 ]
  %.0177.sroa.phi = phi ptr [ %.sroa.0, %bb.ar ], [ %.sroa.0, %bb.aq ], [ %.sroa.10, %bb.an ], [ %.sroa.0, %bb.ao ], [ %.sroa.0, %bb.ap ], [ %.sroa.10, %_ZNSolsEPFRSoS_E.exit239 ]
  %.0176.sroa.phi = phi ptr [ %.sroa.10, %bb.ar ], [ %.sroa.10, %bb.aq ], [ %.sroa.17, %bb.an ], [ %.sroa.17, %bb.ao ], [ %.sroa.17, %bb.ap ], [ %.sroa.17, %_ZNSolsEPFRSoS_E.exit239 ]
  br i1 %i.dh, label %.lr.ph482.us, label %._crit_edge489.split.us

.lr.ph482.us:                                     ; preds = %bb.as, %._crit_edge483.us
  %.0175486.us = phi i32 [ %i.ox, %._crit_edge483.us ], [ 0, %bb.as ] ; 4 uses
  %.1181485.us = phi double [ %i.ov, %._crit_edge483.us ], [ %.0180496, %bb.as ]
  %i.ew = icmp eq i32 %.0175486.us, 0
  %i.ex = icmp eq i32 %.0175486.us, %i.di
  %i.ey = select i1 %i.ew, i1 true, i1 %i.ex      ; 2 uses
  %i.ez = uitofp nneg i32 %.0175486.us to float
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph482.us, %_ZN9Imath_3_24halfmLEf.exit251.us
  %.0174480.us = phi i32 [ 0, %.lr.ph482.us ], [ %i.ow, %_ZN9Imath_3_24halfmLEf.exit251.us ] ; 4 uses
  %.2182479.us = phi double [ %.1181485.us, %.lr.ph482.us ], [ %i.ov, %_ZN9Imath_3_24halfmLEf.exit251.us ]
  %i.fa = icmp eq i32 %.0174480.us, 0
  %i.fb = icmp eq i32 %.0174480.us, %i.di
  %i.fc = select i1 %i.fa, i1 true, i1 %i.fb      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.fd = uitofp nneg i32 %.0174480.us to float
  store float %i.fd, ptr %6, align 8, !tbaa !67
  store float %i.ez, ptr %i.dj, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  invoke void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %7, i32 noundef %.0179497, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.au unwind label %.split.us491

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.fe = load float, ptr %7, align 4, !tbaa !71, !noalias !69 ; 6 uses
  %i.ff = load <2 x float>, ptr %i.dk, align 4, !tbaa !72, !noalias !69 ; 7 uses
  %foldExtExtBinop = fmul <2 x float> %i.ff, %i.ff
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fh = call float @llvm.fmuladd.f32(float %i.fe, float %i.fe, float %i.fg)
  %i.fi = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float %i.fh) ; 2 uses
  %i.fk = fcmp olt float %i.fj, f0x01000000
  br i1 %i.fk, label %bb.aw, label %bb.av, !prof !73

bb.av:                                            ; preds = %bb.au
  %sqrt.i.i.us = call float @llvm.sqrt.f32(float %i.fj)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us

bb.aw:                                            ; preds = %bb.au
  %i.fl = fcmp ult float %i.fe, 0.000000e+00
  %i.fm = fneg float %i.fe
  %i.fn = select i1 %i.fl, float %i.fm, float %i.fe ; 3 uses
  %i.fo = fcmp ult <2 x float> %i.ff, zeroinitializer
  %i.fp = fneg <2 x float> %i.ff
  %i.fq = select <2 x i1> %i.fo, <2 x float> %i.fp, <2 x float> %i.ff ; 3 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0 ; 2 uses
  %i.fs = fcmp olt float %i.fn, %i.fr
  %.0.i.us = select i1 %i.fs, float %i.fr, float %i.fn ; 2 uses
  %i.ft = extractelement <2 x float> %i.fq, i64 1 ; 2 uses
  %i.fu = fcmp olt float %.0.i.us, %i.ft
  %.1.i.us = select i1 %i.fu, float %i.ft, float %.0.i.us ; 4 uses
  %i.fv = fcmp oeq float %.1.i.us, 0.000000e+00
  br i1 %i.fv, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us, label %bb.ax, !prof !73

bb.ax:                                            ; preds = %bb.aw
  %i.fw = fdiv float %i.fn, %.1.i.us              ; 2 uses
  %i.fx = insertelement <2 x float> poison, float %.1.i.us, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = fdiv <2 x float> %i.fq, %i.fy           ; 3 uses
  %foldExtExtBinop669 = fmul <2 x float> %i.fz, %i.fz
  %i.ga = extractelement <2 x float> %foldExtExtBinop669, i64 0
  %i.gb = call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.ga)
  %i.gc = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  %i.gd = call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.gb)
  %sqrt.i.us = call float @llvm.sqrt.f32(float %i.gd)
  %i.ge = fmul float %.1.i.us, %sqrt.i.us
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us:        ; preds = %bb.ax, %bb.av
  %.0.i.i.us = phi float [ %sqrt.i.i.us, %bb.av ], [ %i.ge, %bb.ax ] ; 3 uses
  %i.gf = fcmp oeq float %.0.i.i.us, 0.000000e+00
  br i1 %i.gf, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us, label %bb.ay, !prof !74

bb.ay:                                            ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us
  %i.gg = fdiv float %i.fe, %.0.i.i.us
  %i.gh = insertelement <2 x float> poison, float %.0.i.i.us, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fdiv <2 x float> %i.ff, %i.gi
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us:     ; preds = %bb.ay, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us, %bb.aw
  %.sink6.i.us = phi float [ %i.gg, %bb.ay ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us ], [ 0.000000e+00, %bb.aw ] ; 2 uses
  %i.gk = phi <2 x float> [ %i.gj, %bb.ay ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us ], [ zeroinitializer, %bb.aw ] ; 2 uses
  store float %.sink6.i.us, ptr %.sroa.0, align 4, !tbaa !71, !alias.scope !69
  %i.gl = extractelement <2 x float> %i.gk, i64 0 ; 2 uses
  store float %i.gl, ptr %.sroa.10, align 4, !tbaa !75, !alias.scope !69
  %i.gm = extractelement <2 x float> %i.gk, i64 1 ; 2 uses
  store float %i.gm, ptr %.sroa.17, align 4, !tbaa !76, !alias.scope !69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.gn = load <2 x float>, ptr %6, align 8, !tbaa !72
  store <2 x float> %i.gn, ptr %9, align 8, !tbaa !72
  invoke void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %8, i32 noundef %.0179497, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dead_on_return %9)
          to label %bb.az unwind label %.split493.us

bb.az:                                            ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us
  %i.go = fmul float %.sroa.11.0, %i.gl
  %i.gp = call float @llvm.fmuladd.f32(float %.sink6.i.us, float %.sroa.0374.0, float %i.go)
  %i.gq = call noundef float @llvm.fmuladd.f32(float %i.gm, float %.sroa.19.0, float %i.gp)
  %i.gr = fpext float %i.gq to double
  %i.gs = load float, ptr %.0177.sroa.phi, align 4, !tbaa !72
  %i.gt = load float, ptr %.0178.sroa.phi, align 4, !tbaa !72
  %i.gu = load float, ptr %.0176.sroa.phi, align 4, !tbaa !72
  %i.gv = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gu, i64 1
  %i.gx = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fdiv <2 x float> %i.gw, %i.gy
  %i.ha = fpext <2 x float> %i.gz to <2 x double> ; 2 uses
  %i.hb = fmul <2 x double> %i.ha, %i.ha          ; 2 uses
  %shift = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop671 = fadd <2 x double> %i.hb, %shift
  %i.hc = extractelement <2 x double> %foldExtExtBinop671, i64 0
  %i.hd = fadd double %i.hc, 1.000000e+00
  %i.he = fmul double %i.hd, %i.gr                ; 3 uses
  %or.cond.us = select i1 %i.fc, i1 %i.ey, i1 false
  br i1 %or.cond.us, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %or.cond3.us = select i1 %i.fc, i1 true, i1 %i.ey
  br i1 %or.cond3.us, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hf = fmul double %i.he, 5.000000e-01
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.hg = fdiv double %i.he, 3.000000e+00
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0173.us = phi double [ %i.hg, %bb.bc ], [ %i.hf, %bb.bb ], [ %i.he, %bb.ba ] ; 2 uses
  %21 = load ptr, ptr %i.dl, align 8, !tbaa !62
  %22 = load i64, ptr %i.dm, align 8, !tbaa !77
  %23 = load <2 x float>, ptr %8, align 8, !tbaa !72
  %24 = fadd <2 x float> %23, splat (float 5.000000e-01) ; 2 uses
  %25 = extractelement <2 x float> %24, i64 1
  %26 = fptosi float %25 to i32
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %22, %27
  %29 = getelementptr inbounds [8 x i8], ptr %21, i64 %28
  %30 = extractelement <2 x float> %24, i64 0
  %i.hh = fptosi float %30 to i32
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %29, i64 %i.hi ; 5 uses
  %i.hk = fptrunc double %.0173.us to float       ; 4 uses
  %i.hl = load i16, ptr %i.hj, align 2, !tbaa !80
  %i.hm = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  %i.hn = zext i16 %i.hl to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !51
  %i.hq = fmul float %i.hp, %i.hk                 ; 2 uses
  %i.hr = bitcast float %i.hq to i32
  %i.hs = call float @llvm.fabs.f32(float %i.hq)
  %i.ht = bitcast float %i.hs to i32              ; 10 uses
  %i.hu = lshr i32 %i.hr, 16                      ; 3 uses
  %i.hv = trunc nuw i32 %i.hu to i16
  %i.hw = and i16 %i.hv, -32768                   ; 3 uses
  %i.hx = icmp samesign ugt i32 %i.ht, 947912703
  br i1 %i.hx, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = icmp samesign ult i32 %i.ht, 855638017
  br i1 %i.hy, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hz = lshr i32 %i.ht, 23                      ; 2 uses
  %i.ia = sub nuw nsw i32 126, %i.hz
  %i.ib = and i32 %i.ht, 8388607
  %i.ic = or disjoint i32 %i.ib, 8388608          ; 2 uses
  %i.id = add nsw i32 %i.hz, -94
  %i.ie = shl i32 %i.ic, %i.id                    ; 2 uses
  %i.if = lshr i32 %i.ic, %i.ia                   ; 2 uses
  %i.ig = and i32 %i.hu, 32768
  %i.ih = or i32 %i.if, %i.ig
  %i.ii = trunc nuw i32 %i.ih to i16              ; 2 uses
  %i.ij = icmp ugt i32 %i.ie, -2147483648
  br i1 %i.ij, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = icmp ne i32 %i.ie, -2147483648
  %i.il = and i32 %i.if, 1
  %.not.i.i.i.us = icmp eq i32 %i.il, 0
  %or.cond.i.i.i.us = select i1 %i.ik, i1 true, i1 %.not.i.i.i.us
  br i1 %or.cond.i.i.i.us, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.im = add nuw i16 %i.ii, 1
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bi:                                            ; preds = %bb.bd
  %i.in = icmp samesign ugt i32 %i.ht, 2139095039
  br i1 %i.in, label %bb.bm, label %bb.bj, !prof !73

bb.bj:                                            ; preds = %bb.bi
  %i.io = icmp samesign ugt i32 %i.ht, 1199566847
  br i1 %i.io, label %bb.bl, label %bb.bk, !prof !73

bb.bk:                                            ; preds = %bb.bj
  %i.ip = add nuw nsw i32 %i.ht, 134221823
  %i.iq = lshr i32 %i.ht, 13
  %i.ir = and i32 %i.iq, 1
  %i.is = add nuw nsw i32 %i.ip, %i.ir
  %i.it = lshr i32 %i.is, 13
  %i.iu = and i32 %i.hu, 32768
  %i.iv = or i32 %i.it, %i.iu
  %i.iw = trunc i32 %i.iv to i16
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bl:                                            ; preds = %bb.bj
  %i.ix = or disjoint i16 %i.hw, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bm:                                            ; preds = %bb.bi
  %i.iy = or disjoint i16 %i.hw, 31744            ; 2 uses
  %i.iz = icmp eq i32 %i.ht, 2139095040
  br i1 %i.iz, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ja = lshr i32 %i.ht, 13
  %i.jb = and i32 %i.ja, 1023                     ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 0
  %i.jd = zext i1 %i.jc to i16
  %i.je = trunc nuw nsw i32 %i.jb to i16
  %i.jf = or i16 %i.je, %i.jd
  %i.jg = or disjoint i16 %i.jf, %i.iy
  br label %_ZN9Imath_3_24halfmLEf.exit.us

_ZN9Imath_3_24halfmLEf.exit.us:                   ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bh, %bb.bg, %bb.be
  %.033.i.i.i.us = phi i16 [ %i.hw, %bb.be ], [ %i.jg, %bb.bn ], [ %i.ix, %bb.bl ], [ %i.iw, %bb.bk ], [ %i.iy, %bb.bm ], [ %i.im, %bb.bh ], [ %i.ii, %bb.bg ]
  store i16 %.033.i.i.i.us, ptr %i.hj, align 2, !tbaa !81
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hj, i64 2 ; 2 uses
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !80
  %i.jj = zext i16 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !51
  %i.jm = fmul float %i.jl, %i.hk                 ; 2 uses
  %i.jn = bitcast float %i.jm to i32
  %i.jo = call float @llvm.fabs.f32(float %i.jm)
  %i.jp = bitcast float %i.jo to i32              ; 10 uses
  %i.jq = lshr i32 %i.jn, 16                      ; 3 uses
  %i.jr = trunc nuw i32 %i.jq to i16
  %i.js = and i16 %i.jr, -32768                   ; 3 uses
  %i.jt = icmp samesign ugt i32 %i.jp, 947912703
  br i1 %i.jt, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit.us
  %i.ju = icmp samesign ult i32 %i.jp, 855638017
  br i1 %i.ju, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jv = lshr i32 %i.jp, 23                      ; 2 uses
  %i.jw = sub nuw nsw i32 126, %i.jv
  %i.jx = and i32 %i.jp, 8388607
  %i.jy = or disjoint i32 %i.jx, 8388608          ; 2 uses
  %i.jz = add nsw i32 %i.jv, -94
  %i.ka = shl i32 %i.jy, %i.jz                    ; 2 uses
  %i.kb = lshr i32 %i.jy, %i.jw                   ; 2 uses
  %i.kc = and i32 %i.jq, 32768
  %i.kd = or i32 %i.kb, %i.kc
  %i.ke = trunc nuw i32 %i.kd to i16              ; 2 uses
  %i.kf = icmp ugt i32 %i.ka, -2147483648
  br i1 %i.kf, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kg = icmp ne i32 %i.ka, -2147483648
  %i.kh = and i32 %i.kb, 1
  %.not.i.i.i240.us = icmp eq i32 %i.kh, 0
  %or.cond.i.i.i241.us = select i1 %i.kg, i1 true, i1 %.not.i.i.i240.us
  br i1 %or.cond.i.i.i241.us, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ki = add nuw i16 %i.ke, 1
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

bb.bs:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit.us
  %i.kj = icmp samesign ugt i32 %i.jp, 2139095039
  br i1 %i.kj, label %bb.bw, label %bb.bt, !prof !73

bb.bt:                                            ; preds = %bb.bs
  %i.kk = icmp samesign ugt i32 %i.jp, 1199566847
  br i1 %i.kk, label %bb.bv, label %bb.bu, !prof !73

bb.bu:                                            ; preds = %bb.bt
  %i.kl = add nuw nsw i32 %i.jp, 134221823
  %i.km = lshr i32 %i.jp, 13
  %i.kn = and i32 %i.km, 1
  %i.ko = add nuw nsw i32 %i.kl, %i.kn
  %i.kp = lshr i32 %i.ko, 13
  %i.kq = and i32 %i.jq, 32768
  %i.kr = or i32 %i.kp, %i.kq
  %i.ks = trunc i32 %i.kr to i16
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

bb.bv:                                            ; preds = %bb.bt
  %i.kt = or disjoint i16 %i.js, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

bb.bw:                                            ; preds = %bb.bs
  %i.ku = or disjoint i16 %i.js, 31744            ; 2 uses
  %i.kv = icmp eq i32 %i.jp, 2139095040
  br i1 %i.kv, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kw = lshr i32 %i.jp, 13
  %i.kx = and i32 %i.kw, 1023                     ; 2 uses
  %i.ky = icmp eq i32 %i.kx, 0
  %i.kz = zext i1 %i.ky to i16
  %i.la = trunc nuw nsw i32 %i.kx to i16
  %i.lb = or i16 %i.la, %i.kz
  %i.lc = or disjoint i16 %i.lb, %i.ku
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

_ZN9Imath_3_24halfmLEf.exit243.us:                ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.br, %bb.bq, %bb.bo
  %.033.i.i.i242.us = phi i16 [ %i.js, %bb.bo ], [ %i.lc, %bb.bx ], [ %i.kt, %bb.bv ], [ %i.ks, %bb.bu ], [ %i.ku, %bb.bw ], [ %i.ki, %bb.br ], [ %i.ke, %bb.bq ]
  store i16 %.033.i.i.i242.us, ptr %i.jh, align 2, !tbaa !81
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !80
  %i.lf = zext i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !51
  %i.li = fmul float %i.lh, %i.hk                 ; 2 uses
  %i.lj = bitcast float %i.li to i32
  %i.lk = call float @llvm.fabs.f32(float %i.li)
  %i.ll = bitcast float %i.lk to i32              ; 10 uses
  %i.lm = lshr i32 %i.lj, 16                      ; 3 uses
  %i.ln = trunc nuw i32 %i.lm to i16
  %i.lo = and i16 %i.ln, -32768                   ; 3 uses
  %i.lp = icmp samesign ugt i32 %i.ll, 947912703
  br i1 %i.lp, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit243.us
  %i.lq = icmp samesign ult i32 %i.ll, 855638017
  br i1 %i.lq, label %_ZN9Imath_3_24halfmLEf.exit247.us, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lr = lshr i32 %i.ll, 23                      ; 2 uses
  %i.ls = sub nuw nsw i32 126, %i.lr
  %i.lt = and i32 %i.ll, 8388607
  %i.lu = or disjoint i32 %i.lt, 8388608          ; 2 uses
  %i.lv = add nsw i32 %i.lr, -94
  %i.lw = shl i32 %i.lu, %i.lv                    ; 2 uses
  %i.lx = lshr i32 %i.lu, %i.ls                   ; 2 uses
end_hunk_0
begin_hunk_1_@_Z9blurImageR11EnvmapImageb:bb.a
  %i.uf = shl i32 %i.ud, %i.ue                    ; 2 uses
  %i.ug = lshr i32 %i.ud, %i.ub                   ; 2 uses
  %i.uh = and i32 %i.tb, 32768
  %i.ui = or i32 %i.ug, %i.uh
  %i.uj = trunc nuw i32 %i.ui to i16              ; 2 uses
  %i.uk = icmp ugt i32 %i.uf, -2147483648
  br i1 %i.uk, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ul = icmp ne i32 %i.uf, -2147483648
  %i.um = and i32 %i.ug, 1
  %.not.i.i.i260 = icmp eq i32 %i.um, 0
  %or.cond.i.i.i261 = select i1 %i.ul, i1 true, i1 %.not.i.i.i260
  br i1 %or.cond.i.i.i261, label %_ZN9Imath_3_24halfmLEf.exit263, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.un = add nuw i16 %i.uj, 1
  br label %_ZN9Imath_3_24halfmLEf.exit263

_ZN9Imath_3_24halfmLEf.exit263:                   ; preds = %bb.dp, %bb.dq, %bb.ds, %bb.dt, %bb.du, %bb.dw, %bb.dx
  %.033.i.i.i262 = phi i16 [ %i.td, %bb.du ], [ %i.to, %bb.dq ], [ %i.tq, %bb.ds ], [ %i.ty, %bb.dt ], [ %i.tg, %bb.dp ], [ %i.un, %bb.dx ], [ %i.uj, %bb.dw ]
  store i16 %.033.i.i.i262, ptr %i.ss, align 2, !tbaa !81
  %i.uo = getelementptr inbounds nuw i8, ptr %.0172498, i64 6 ; 2 uses
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !80
  %i.uq = zext i16 %i.up to i64
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.uq
  %i.us = load float, ptr %i.ur, align 4, !tbaa !51
  %i.ut = fmul float %i.us, %i.dz                 ; 2 uses
  %i.uu = bitcast float %i.ut to i32
  %i.uv = call float @llvm.fabs.f32(float %i.ut)
  %i.uw = bitcast float %i.uv to i32              ; 10 uses
  %i.ux = lshr i32 %i.uu, 16                      ; 3 uses
  %i.uy = trunc nuw i32 %i.ux to i16
  %i.uz = and i16 %i.uy, -32768                   ; 3 uses
  %i.va = icmp samesign ugt i32 %i.uw, 947912703
  br i1 %i.va, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit263
  %i.vb = icmp samesign ugt i32 %i.uw, 2139095039
  br i1 %i.vb, label %bb.dz, label %bb.eb, !prof !73

bb.dz:                                            ; preds = %bb.dy
  %i.vc = or disjoint i16 %i.uz, 31744            ; 2 uses
  %i.vd = icmp eq i32 %i.uw, 2139095040
  br i1 %i.vd, label %_ZN9Imath_3_24halfmLEf.exit267, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ve = lshr i32 %i.uw, 13
  %i.vf = and i32 %i.ve, 1023                     ; 2 uses
  %i.vg = icmp eq i32 %i.vf, 0
  %i.vh = zext i1 %i.vg to i16
  %i.vi = trunc nuw nsw i32 %i.vf to i16
  %i.vj = or i16 %i.vi, %i.vh
  %i.vk = or disjoint i16 %i.vj, %i.vc
  br label %_ZN9Imath_3_24halfmLEf.exit267

bb.eb:                                            ; preds = %bb.dy
  %i.vl = icmp samesign ugt i32 %i.uw, 1199566847
  br i1 %i.vl, label %bb.ec, label %bb.ed, !prof !73

bb.ec:                                            ; preds = %bb.eb
  %i.vm = or disjoint i16 %i.uz, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit267

bb.ed:                                            ; preds = %bb.eb
  %i.vn = add nuw nsw i32 %i.uw, 134221823
  %i.vo = lshr i32 %i.uw, 13
  %i.vp = and i32 %i.vo, 1
  %i.vq = add nuw nsw i32 %i.vn, %i.vp
  %i.vr = lshr i32 %i.vq, 13
  %i.vs = and i32 %i.ux, 32768
  %i.vt = or i32 %i.vr, %i.vs
  %i.vu = trunc i32 %i.vt to i16
  br label %_ZN9Imath_3_24halfmLEf.exit267

bb.ee:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit263
  %i.vv = icmp samesign ult i32 %i.uw, 855638017
  br i1 %i.vv, label %_ZN9Imath_3_24halfmLEf.exit267, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vw = lshr i32 %i.uw, 23                      ; 2 uses
  %i.vx = sub nuw nsw i32 126, %i.vw
  %i.vy = and i32 %i.uw, 8388607
  %i.vz = or disjoint i32 %i.vy, 8388608          ; 2 uses
  %i.wa = add nsw i32 %i.vw, -94
  %i.wb = shl i32 %i.vz, %i.wa                    ; 2 uses
  %i.wc = lshr i32 %i.vz, %i.vx                   ; 2 uses
  %i.wd = and i32 %i.ux, 32768
  %i.we = or i32 %i.wc, %i.wd
  %i.wf = trunc nuw i32 %i.we to i16              ; 2 uses
  %i.wg = icmp ugt i32 %i.wb, -2147483648
  br i1 %i.wg, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.wh = icmp ne i32 %i.wb, -2147483648
  %i.wi = and i32 %i.wc, 1
  %.not.i.i.i264 = icmp eq i32 %i.wi, 0
  %or.cond.i.i.i265 = select i1 %i.wh, i1 true, i1 %.not.i.i.i264
  br i1 %or.cond.i.i.i265, label %_ZN9Imath_3_24halfmLEf.exit267, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.wj = add nuw i16 %i.wf, 1
  br label %_ZN9Imath_3_24halfmLEf.exit267

_ZN9Imath_3_24halfmLEf.exit267:                   ; preds = %bb.dz, %bb.ea, %bb.ec, %bb.ed, %bb.ee, %bb.eg, %bb.eh
  %.033.i.i.i266 = phi i16 [ %i.uz, %bb.ee ], [ %i.vk, %bb.ea ], [ %i.vm, %bb.ec ], [ %i.vu, %bb.ed ], [ %i.vc, %bb.dz ], [ %i.wj, %bb.eh ], [ %i.wf, %bb.eg ]
  store i16 %.033.i.i.i266, ptr %i.uo, align 2, !tbaa !81
  %i.wk = getelementptr inbounds nuw i8, ptr %.0172498, i64 8 ; 2 uses
  %i.wl = icmp ult ptr %i.wk, %i.dw
  br i1 %i.wl, label %bb.ct, label %._crit_edge501, !llvm.loop !17

._crit_edge501:                                   ; preds = %_ZN9Imath_3_24halfmLEf.exit267, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br i1 %1, label %bb.ei, label %_ZNSolsEPFRSoS_E.exit269

bb.ei:                                            ; preds = %._crit_edge501
  %i.wm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268 unwind label %.loopexit.split-lp421 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268: ; preds = %bb.ei
  %i.wn = load ptr, ptr @_ZSt4cout, align 8, !tbaa !26
  %i.wo = getelementptr i8, ptr %i.wn, i64 -24
  %i.wp = load i64, ptr %i.wo, align 8
  %i.wq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 240
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i333 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i333, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit268
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 56
  %i.wu = load i8, ptr %i.wt, align 8, !tbaa !50
  %.not.i1.i.i335 = icmp eq i8 %i.wu, 0
  br i1 %.not.i1.i.i335, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 67
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336

bb.ek:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i334
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ws)
          to label %.noexc339 unwind label %.loopexit.split-lp421

.noexc339:                                        ; preds = %bb.ek
  %i.wx = load ptr, ptr %i.ws, align 8, !tbaa !26
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 48
  %i.wz = load ptr, ptr %i.wy, align 8
  %i.xa = invoke noundef signext i8 %i.wz(ptr noundef nonnull align 8 dereferenceable(570) %i.ws, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336 unwind label %.loopexit.split-lp421, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336: ; preds = %.noexc339, %bb.ej
  %.0.i.i.i337 = phi i8 [ %i.ww, %bb.ej ], [ %i.xa, %.noexc339 ]
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i337)
          to label %.noexc341 unwind label %.loopexit.split-lp421

.noexc341:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i336
  %i.xc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xb)
          to label %_ZNSolsEPFRSoS_E.exit269 unwind label %.loopexit.split-lp421 ; 0 uses

bb.el:                                            ; preds = %.loopexit415, %.loopexit.split-lp416, %bb.af, %bb.cs, %bb.ag, %bb.ae
  %.pn223.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.ae ], [ %i.ec, %bb.af ], [ %i.ed, %bb.ag ], [ %.pn223, %bb.cs ], [ %lpad.loopexit417, %.loopexit415 ], [ %lpad.loopexit.split-lp418, %.loopexit.split-lp416 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.hs

_ZNSolsEPFRSoS_E.exit269:                         ; preds = %.noexc341, %._crit_edge501
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.xd = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %bb.em unwind label %bb.et

bb.em:                                            ; preds = %_ZNSolsEPFRSoS_E.exit269
  %i.xe = load <4 x i32>, ptr %i.xd, align 4, !tbaa !59
  store <4 x i32> %i.xe, ptr %10, align 16, !tbaa !59
  %i.xf = invoke noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.en unwind label %bb.eu     ; 3 uses

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  store <4 x i32> <i32 0, i32 0, i32 99, i32 599>, ptr %11, align 16, !tbaa !59
  %i.xg = invoke noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.eo unwind label %bb.ev     ; 3 uses

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %bb.ep unwind label %bb.ev

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZN11EnvmapImage5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %bb.eq unwind label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  %i.xh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %bb.er unwind label %bb.ew     ; 2 uses

bb.er:                                            ; preds = %bb.eq
  %i.xi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %.preheader413 unwind label %bb.ex ; 2 uses

.preheader413:                                    ; preds = %bb.er
  %i.xj = icmp sgt i32 %i.xg, 0
  %i.xk = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xn = icmp sgt i32 %i.xf, 0
  %i.xo = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.xp = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.xq = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.xr = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.xs = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  br label %bb.ey

bb.es:                                            ; preds = %._crit_edge555
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %.not = icmp eq ptr %.1406.lcssa, %0
  br i1 %.not, label %bb.hq, label %bb.hf

bb.et:                                            ; preds = %_ZNSolsEPFRSoS_E.exit269
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.eu:                                            ; preds = %bb.em
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.ev:                                            ; preds = %bb.ep, %bb.eo, %bb.en
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.ew:                                            ; preds = %bb.eq
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.ex:                                            ; preds = %bb.er
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.ey:                                            ; preds = %.preheader413, %._crit_edge555
  %.0171556 = phi i32 [ 0, %.preheader413 ], [ %i.yt, %._crit_edge555 ] ; 4 uses
  br i1 %1, label %bb.ez, label %_ZNSolsEPFRSoS_E.exit271

bb.ez:                                            ; preds = %bb.ey
  %i.ya = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270: ; preds = %bb.ez
  %i.yb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0171556)
          to label %bb.fa unwind label %.loopexit ; 3 uses

bb.fa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !26
  %i.yd = getelementptr i8, ptr %i.yc, i64 -24
  %i.ye = load i64, ptr %i.yd, align 8
  %i.yf = getelementptr inbounds i8, ptr %i.yb, i64 %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 240
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i344 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i.i344, label %bb.fb, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZSt16__throw_bad_castv() #8
          to label %.noexc349 unwind label %.loopexit.split-lp

.noexc349:                                        ; preds = %bb.fb
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345: ; preds = %bb.fa
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 56
  %i.yj = load i8, ptr %i.yi, align 8, !tbaa !50
  %.not.i1.i.i346 = icmp eq i8 %i.yj, 0
  br i1 %.not.i1.i.i346, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 67
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347

bb.fd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i345
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.yh)
          to label %.noexc350 unwind label %.loopexit

.noexc350:                                        ; preds = %bb.fd
  %i.ym = load ptr, ptr %i.yh, align 8, !tbaa !26
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 48
  %i.yo = load ptr, ptr %i.yn, align 8
  %i.yp = invoke noundef signext i8 %i.yo(ptr noundef nonnull align 8 dereferenceable(570) %i.yh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347 unwind label %.loopexit, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347: ; preds = %.noexc350, %bb.fc
  %.0.i.i.i348 = phi i8 [ %i.yl, %bb.fc ], [ %i.yp, %.noexc350 ]
  %i.yq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.yb, i8 noundef signext %.0.i.i.i348)
          to label %.noexc352 unwind label %.loopexit

.noexc352:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347
  %i.yr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yq)
          to label %_ZNSolsEPFRSoS_E.exit271 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit270, %bb.ez, %bb.fd, %.noexc350, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i347, %.noexc352
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

.loopexit.split-lp:                               ; preds = %bb.fb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

_ZNSolsEPFRSoS_E.exit271:                         ; preds = %.noexc352, %bb.ey
  br i1 %i.xj, label %.preheader412, label %._crit_edge555

.preheader412:                                    ; preds = %_ZNSolsEPFRSoS_E.exit271, %._crit_edge553
  %.0170554 = phi i32 [ %i.yu, %._crit_edge553 ], [ 0, %_ZNSolsEPFRSoS_E.exit271 ] ; 2 uses
  %i.ys = uitofp nneg i32 %.0170554 to float
  br label %bb.fe

._crit_edge555:                                   ; preds = %._crit_edge553, %_ZNSolsEPFRSoS_E.exit271
  %i.yt = add nuw nsw i32 %.0171556, 1            ; 2 uses
  %exitcond575.not = icmp eq i32 %i.yt, 6
  br i1 %exitcond575.not, label %bb.es, label %bb.ey, !llvm.loop !18

._crit_edge553:                                   ; preds = %_ZN9Imath_3_24halfaSEf.exit286
  %i.yu = add nuw nsw i32 %.0170554, 1            ; 2 uses
  %exitcond574.not = icmp eq i32 %i.yu, %i.xg
  br i1 %exitcond574.not, label %._crit_edge555, label %.preheader412, !llvm.loop !19

bb.fe:                                            ; preds = %.preheader412, %_ZN9Imath_3_24halfaSEf.exit286
  %.0169551 = phi i32 [ 0, %.preheader412 ], [ %i.aif, %_ZN9Imath_3_24halfaSEf.exit286 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.yv = uitofp nneg i32 %.0169551 to float
  store float %i.yv, ptr %12, align 8, !tbaa !67
  store float %i.ys, ptr %i.xk, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  invoke void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %13, i32 noundef %.0171556, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.ff unwind label %bb.ha

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.yw = load <2 x float>, ptr %12, align 8, !tbaa !72
  store <2 x float> %i.yw, ptr %15, align 8, !tbaa !72
  invoke void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %14, i32 noundef %.0171556, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dead_on_return %15)
          to label %bb.fg unwind label %bb.hb

bb.fg:                                            ; preds = %bb.ff
  %31 = load ptr, ptr %i.xl, align 8, !tbaa !62
  %32 = load i64, ptr %i.xm, align 8, !tbaa !77
  %33 = load <2 x float>, ptr %14, align 8, !tbaa !72
  %34 = fadd <2 x float> %33, splat (float 5.000000e-01) ; 2 uses
  %35 = extractelement <2 x float> %34, i64 1
  %36 = fptosi float %35 to i32
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %32, %37
  %39 = getelementptr inbounds [8 x i8], ptr %31, i64 %38
  %40 = extractelement <2 x float> %34, i64 0
  %i.yx = fptosi float %40 to i32
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds [8 x i8], ptr %39, i64 %i.yy ; 4 uses
  br i1 %i.xn, label %.preheader411.us, label %.split545.us

.preheader411.us:                                 ; preds = %bb.fg, %._crit_edge521.split.us.us
  %.0151541.us = phi i32 [ %i.aba, %._crit_edge521.split.us.us ], [ 0, %bb.fg ] ; 3 uses
  %.0165536.us = phi double [ %.3168.us.us, %._crit_edge521.split.us.us ], [ 0.000000e+00, %bb.fg ]
  %i.za = phi <4 x double> [ %i.aax, %._crit_edge521.split.us.us ], [ zeroinitializer, %bb.fg ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge509.us.us, %.preheader411.us
  %.0150520.us.us = phi i32 [ 0, %.preheader411.us ], [ %i.aaz, %._crit_edge509.us.us ] ; 2 uses
  %.1166515.us.us = phi double [ %.0165536.us, %.preheader411.us ], [ %.3168.us.us, %._crit_edge509.us.us ]
  %i.zb = phi <4 x double> [ %i.za, %.preheader411.us ], [ %i.aax, %._crit_edge509.us.us ]
  %i.zc = uitofp nneg i32 %.0150520.us.us to float
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fl, %.preheader.us.us
  %.0507.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.aay, %bb.fl ] ; 2 uses
  %.2167502.us.us = phi double [ %.1166515.us.us, %.preheader.us.us ], [ %.3168.us.us, %bb.fl ] ; 2 uses
  %i.zd = phi <4 x double> [ %i.zb, %.preheader.us.us ], [ %i.aax, %bb.fl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #9
  %i.ze = uitofp nneg i32 %.0507.us.us to float
  store float %i.ze, ptr %16, align 8, !tbaa !67
  store float %i.zc, ptr %i.xo, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #9
  invoke void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %17, i32 noundef %.0151541.us, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(8) %16)
          to label %bb.fi unwind label %.split.us527.split.us

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #9
  %i.zf = load <2 x float>, ptr %16, align 8, !tbaa !72
  store <2 x float> %i.zf, ptr %19, align 8, !tbaa !72
  invoke void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %18, i32 noundef %.0151541.us, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dead_on_return %19)
          to label %bb.fj unwind label %.split529.us.split.us

bb.fj:                                            ; preds = %bb.fi
  %i.zg = load float, ptr %17, align 4, !tbaa !71
  %i.zh = load float, ptr %13, align 4, !tbaa !71
  %i.zi = load float, ptr %i.xp, align 4, !tbaa !75
  %i.zj = load float, ptr %i.xq, align 4, !tbaa !75
  %i.zk = fmul float %i.zi, %i.zj
  %i.zl = call float @llvm.fmuladd.f32(float %i.zg, float %i.zh, float %i.zk)
  %i.zm = load float, ptr %i.xr, align 4, !tbaa !76
  %i.zn = load float, ptr %i.xs, align 4, !tbaa !76
  %i.zo = call noundef float @llvm.fmuladd.f32(float %i.zm, float %i.zn, float %i.zl) ; 2 uses
  %i.zp = fcmp ugt float %i.zo, 0.000000e+00
  br i1 %i.zp, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.zq = fpext float %i.zo to double             ; 2 uses
  %41 = load ptr, ptr %i.xt, align 8, !tbaa !62
  %42 = load i64, ptr %i.xu, align 8, !tbaa !77
  %43 = load <2 x float>, ptr %18, align 8, !tbaa !72
  %44 = fadd <2 x float> %43, splat (float 5.000000e-01) ; 2 uses
  %45 = extractelement <2 x float> %44, i64 1
  %46 = fptosi float %45 to i32
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %42, %47
  %49 = getelementptr inbounds [8 x i8], ptr %41, i64 %48
  %50 = extractelement <2 x float> %44, i64 0
  %i.zr = fptosi float %50 to i32
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %49, i64 %i.zs ; 4 uses
  %i.zu = fadd double %.2167502.us.us, %i.zq
  %i.zv = load i16, ptr %i.zt, align 2, !tbaa !80
  %i.zw = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  %i.zx = zext i16 %i.zv to i64
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.zx
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !51
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zt, i64 2
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !80
  %i.aac = zext i16 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.aac
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !51
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !80
  %i.aah = zext i16 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.aah
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !51
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zt, i64 6
  %i.aal = load i16, ptr %i.aak, align 2, !tbaa !80
  %i.aam = zext i16 %i.aal to i64
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.aam
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !51
  %i.aap = insertelement <4 x float> poison, float %i.zz, i64 0
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aae, i64 1
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aaj, i64 2
  %i.aas = insertelement <4 x float> %i.aar, float %i.aao, i64 3
  %i.aat = fpext <4 x float> %i.aas to <4 x double>
  %i.aau = insertelement <4 x double> poison, double %i.zq, i64 0
  %i.aav = shufflevector <4 x double> %i.aau, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aaw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.aat, <4 x double> %i.aav, <4 x double> %i.zd)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.3168.us.us = phi double [ %i.zu, %bb.fk ], [ %.2167502.us.us, %bb.fj ] ; 4 uses
  %i.aax = phi <4 x double> [ %i.aaw, %bb.fk ], [ %i.zd, %bb.fj ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #9
  %i.aay = add nuw nsw i32 %.0507.us.us, 1        ; 2 uses
  %exitcond570.not = icmp eq i32 %i.aay, %i.xf
  br i1 %exitcond570.not, label %._crit_edge509.us.us, label %bb.fh, !llvm.loop !20

._crit_edge509.us.us:                             ; preds = %bb.fl
  %i.aaz = add nuw nsw i32 %.0150520.us.us, 1     ; 2 uses
  %exitcond571.not = icmp eq i32 %i.aaz, %i.xf
  br i1 %exitcond571.not, label %._crit_edge521.split.us.us, label %.preheader.us.us, !llvm.loop !21

._crit_edge521.split.us.us:                       ; preds = %._crit_edge509.us.us
  %i.aba = add nuw nsw i32 %.0151541.us, 1        ; 2 uses
  %exitcond572.not = icmp eq i32 %i.aba, 6
  br i1 %exitcond572.not, label %.split545.us, label %.preheader411.us, !llvm.loop !22

.split.us527.split.us:                            ; preds = %bb.fh
  %i.abb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

.split529.us.split.us:                            ; preds = %bb.fi
  %i.abc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #9
  br label %bb.hc

.split545.us:                                     ; preds = %._crit_edge521.split.us.us, %bb.fg
  %.us-phi546 = phi double [ 0.000000e+00, %bb.fg ], [ %.3168.us.us, %._crit_edge521.split.us.us ] ; 4 uses
  %i.abd = phi <4 x double> [ zeroinitializer, %bb.fg ], [ %i.aax, %._crit_edge521.split.us.us ] ; 4 uses
  %i.abe = extractelement <4 x double> %i.abd, i64 0
  %i.abf = fdiv double %i.abe, %.us-phi546
  %i.abg = fptrunc double %i.abf to float         ; 2 uses
  %i.abh = bitcast float %i.abg to i32
  %i.abi = call float @llvm.fabs.f32(float %i.abg)
  %i.abj = bitcast float %i.abi to i32            ; 10 uses
  %i.abk = lshr i32 %i.abh, 16                    ; 3 uses
  %i.abl = trunc nuw i32 %i.abk to i16
  %i.abm = and i16 %i.abl, -32768                 ; 3 uses
  %i.abn = icmp samesign ugt i32 %i.abj, 947912703
  br i1 %i.abn, label %bb.fm, label %bb.fs

bb.fm:                                            ; preds = %.split545.us
  %i.abo = icmp samesign ugt i32 %i.abj, 2139095039
  br i1 %i.abo, label %bb.fn, label %bb.fp, !prof !73

bb.fn:                                            ; preds = %bb.fm
  %i.abp = or disjoint i16 %i.abm, 31744          ; 2 uses
  %i.abq = icmp eq i32 %i.abj, 2139095040
  br i1 %i.abq, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.abr = lshr i32 %i.abj, 13
  %i.abs = and i32 %i.abr, 1023                   ; 2 uses
  %i.abt = icmp eq i32 %i.abs, 0
  %i.abu = zext i1 %i.abt to i16
  %i.abv = trunc nuw nsw i32 %i.abs to i16
  %i.abw = or i16 %i.abv, %i.abu
  %i.abx = or disjoint i16 %i.abw, %i.abp
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.fp:                                            ; preds = %bb.fm
  %i.aby = icmp samesign ugt i32 %i.abj, 1199566847
  br i1 %i.aby, label %bb.fq, label %bb.fr, !prof !73

bb.fq:                                            ; preds = %bb.fp
  %i.abz = or disjoint i16 %i.abm, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.fr:                                            ; preds = %bb.fp
  %i.aca = add nuw nsw i32 %i.abj, 134221823
  %i.acb = lshr i32 %i.abj, 13
  %i.acc = and i32 %i.acb, 1
  %i.acd = add nuw nsw i32 %i.aca, %i.acc
  %i.ace = lshr i32 %i.acd, 13
  %i.acf = and i32 %i.abk, 32768
  %i.acg = or i32 %i.ace, %i.acf
  %i.ach = trunc i32 %i.acg to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.fs:                                            ; preds = %.split545.us
  %i.aci = icmp samesign ult i32 %i.abj, 855638017
  br i1 %i.aci, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.acj = lshr i32 %i.abj, 23                    ; 2 uses
  %i.ack = sub nuw nsw i32 126, %i.acj
  %i.acl = and i32 %i.abj, 8388607
  %i.acm = or disjoint i32 %i.acl, 8388608        ; 2 uses
  %i.acn = add nsw i32 %i.acj, -94
  %i.aco = shl i32 %i.acm, %i.acn                 ; 2 uses
  %i.acp = lshr i32 %i.acm, %i.ack                ; 2 uses
  %i.acq = and i32 %i.abk, 32768
  %i.acr = or i32 %i.acp, %i.acq
  %i.acs = trunc nuw i32 %i.acr to i16            ; 2 uses
  %i.act = icmp ugt i32 %i.aco, -2147483648
  br i1 %i.act, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.acu = icmp ne i32 %i.aco, -2147483648
  %i.acv = and i32 %i.acp, 1
  %.not.i.i.i272 = icmp eq i32 %i.acv, 0
  %or.cond.i.i.i273 = select i1 %i.acu, i1 true, i1 %.not.i.i.i272
  br i1 %or.cond.i.i.i273, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.acw = add nuw i16 %i.acs, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.fn, %bb.fo, %bb.fq, %bb.fr, %bb.fs, %bb.fu, %bb.fv
  %.033.i.i.i274 = phi i16 [ %i.abm, %bb.fs ], [ %i.abx, %bb.fo ], [ %i.abz, %bb.fq ], [ %i.ach, %bb.fr ], [ %i.abp, %bb.fn ], [ %i.acw, %bb.fv ], [ %i.acs, %bb.fu ]
  store i16 %.033.i.i.i274, ptr %i.yz, align 2, !tbaa !81
  %i.acx = extractelement <4 x double> %i.abd, i64 1
  %i.acy = fdiv double %i.acx, %.us-phi546
  %i.acz = fptrunc double %i.acy to float         ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.yz, i64 2
  %i.adb = bitcast float %i.acz to i32
  %i.adc = call float @llvm.fabs.f32(float %i.acz)
  %i.add = bitcast float %i.adc to i32            ; 10 uses
  %i.ade = lshr i32 %i.adb, 16                    ; 3 uses
  %i.adf = trunc nuw i32 %i.ade to i16
  %i.adg = and i16 %i.adf, -32768                 ; 3 uses
  %i.adh = icmp samesign ugt i32 %i.add, 947912703
  br i1 %i.adh, label %bb.fw, label %bb.gc

bb.fw:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.adi = icmp samesign ugt i32 %i.add, 2139095039
  br i1 %i.adi, label %bb.fx, label %bb.fz, !prof !73

bb.fx:                                            ; preds = %bb.fw
  %i.adj = or disjoint i16 %i.adg, 31744          ; 2 uses
  %i.adk = icmp eq i32 %i.add, 2139095040
  br i1 %i.adk, label %_ZN9Imath_3_24halfaSEf.exit278, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.adl = lshr i32 %i.add, 13
  %i.adm = and i32 %i.adl, 1023                   ; 2 uses
  %i.adn = icmp eq i32 %i.adm, 0
  %i.ado = zext i1 %i.adn to i16
  %i.adp = trunc nuw nsw i32 %i.adm to i16
  %i.adq = or i16 %i.adp, %i.ado
  %i.adr = or disjoint i16 %i.adq, %i.adj
  br label %_ZN9Imath_3_24halfaSEf.exit278

bb.fz:                                            ; preds = %bb.fw
  %i.ads = icmp samesign ugt i32 %i.add, 1199566847
  br i1 %i.ads, label %bb.ga, label %bb.gb, !prof !73

bb.ga:                                            ; preds = %bb.fz
  %i.adt = or disjoint i16 %i.adg, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit278

bb.gb:                                            ; preds = %bb.fz
  %i.adu = add nuw nsw i32 %i.add, 134221823
  %i.adv = lshr i32 %i.add, 13
  %i.adw = and i32 %i.adv, 1
  %i.adx = add nuw nsw i32 %i.adu, %i.adw
  %i.ady = lshr i32 %i.adx, 13
  %i.adz = and i32 %i.ade, 32768
  %i.aea = or i32 %i.ady, %i.adz
  %i.aeb = trunc i32 %i.aea to i16
  br label %_ZN9Imath_3_24halfaSEf.exit278

bb.gc:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.aec = icmp samesign ult i32 %i.add, 855638017
end_hunk_1
